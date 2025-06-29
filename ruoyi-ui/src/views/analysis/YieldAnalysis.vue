<template>
  <div class="analysis-page">
    <div class="top-section">
      <div class="top-col top-col-1">
        <div class="top-col-1-inner">
          <div class="select-row">
            <div class="select-item">
              <label for="crop">选择作物：</label>
              <select v-model="crop" @change="onCropOrYearChange" id="crop">
                <option v-for="c in cropOptions" :key="c.value" :value="c.value">{{ c.label }}</option>
              </select>
            </div>
            <div class="select-item">
              <label for="year">选择年份：</label>
              <select v-model="year" @change="onCropOrYearChange" id="year">
                <option v-for="y in yearOptions" :key="y" :value="y">{{ y }}</option>
              </select>
            </div>
          </div>
          <div class="top-col-1-content">
            <div v-if="provinceInfo" class="province-desc">
              {{ provinceInfo.province }}在{{ year }}年共产出了{{ provinceInfo.yield }}万吨{{ getCropLabel(crop) }}，在全部省份中排名第{{ provinceInfo.rank }}。
            </div>
            <div v-else class="province-desc">
              省份产量分析
            </div>
          </div>
        </div>
      </div>
      <div class="top-col top-col-2">
        <div id="china-map" class="china-map-fixed"></div>
      </div>
      <div class="top-col top-col-3">
        <div id="radar-chart" class="radar-chart-fixed"></div>
      </div>
    </div>
    <div class="bottom-section">
      <div class="bottom-row bottom-row-1">下1</div>
      <div class="bottom-row bottom-row-2">
        <div id="line-chart" class="line-chart-fixed"></div>
      </div>
    </div>
  </div>
</template>

<script>
import * as echarts from 'echarts';
import { getYieldMapData, getAverageYield } from '@/api/analysis/yield'

export default {
  name: "YieldAnalysis",
  data() {
    return {
      chinaMapChart: null,
      radarChart: null,
      lineChart: null,
      mapData: [],
      crop: 'corn',
      cropOptions: [
        { value: 'corn', label: '玉米' },
        { value: 'cotton', label: '棉花' },
        { value: 'peanut', label: '花生' },
        { value: 'potato', label: '马铃薯' },
        { value: 'rice', label: '水稻' },
        { value: 'sorghum', label: '高粱' },
        { value: 'sugarcane', label: '甘蔗' },
        { value: 'wheat', label: '小麦' },
        { value: 'tobacco', label: '烟叶' },
        { value: 'soybean', label: '大豆' }
      ],
      year: 2023,
      yearOptions: Array.from({length: 2023-2000+1}, (_,i)=>2000+i),
      provinceInfo: null,
      radarData: [],
      provinceRadarData: null,
      cropMaxValues: {} // 新增：存储当年各作物最大产量
    };
  },
  mounted() {
    this.$nextTick(() => {
      this.initChinaMap();
      this.initRadarChart();
      this.initLineChart();
      window.addEventListener('resize', this.resizeChinaMap);
      window.addEventListener('resize', this.resizeRadarChart);
      window.addEventListener('resize', this.resizeLineChart);
      // 绑定雷达图自定义tooltip���
      const radarDom = document.getElementById('radar-chart');
      if (radarDom) {
        radarDom.addEventListener('mousemove', this.handleRadarMouseMove);
        radarDom.addEventListener('mouseleave', this.handleRadarMouseLeave);
      }
    });
  },
  beforeDestroy() {
    window.removeEventListener('resize', this.resizeChinaMap);
    window.removeEventListener('resize', this.resizeRadarChart);
    window.removeEventListener('resize', this.resizeLineChart);
    const radarDom = document.getElementById('radar-chart');
    if (radarDom) {
      radarDom.removeEventListener('mousemove', this.handleRadarMouseMove);
      radarDom.removeEventListener('mouseleave', this.handleRadarMouseLeave);
    }
    if (this.chinaMapChart) {
      this.chinaMapChart.dispose();
    }
    if (this.radarChart) {
      this.radarChart.dispose();
    }
    if (this.lineChart) {
      this.lineChart.dispose();
    }
  },
  methods: {
    async initChinaMap() {
      const chartDom = document.getElementById('china-map');
      if (!chartDom) return;
      if (this.chinaMapChart) {
        this.chinaMapChart.dispose();
      }
      const res = await fetch('/map/china.json');
      const chinaJson = await res.json();
      echarts.registerMap('china', chinaJson);
      this.chinaMapChart = echarts.init(chartDom);

      try {
        // 获取后端数据，传入当前选中的作物和年份
        console.log('请求地图数据:', this.crop, this.year);
        const result = await getYieldMapData(this.crop, this.year);
        console.log('地图数据返回:', result);

        if (result.code === 200) {
          this.mapData = result.data.map(item => ({
            name: item.province,
            value: item.yield
          }));
        } else {
          this.mapData = [];
          console.warn('获取地图数据失败:', result.msg);
        }
      } catch (error) {
        console.error('获取地图数据异常:', error);
        this.mapData = [];
      }

      // 计算最大产量
      const maxYield = this.mapData.length > 0 ? Math.max(...this.mapData.map(item => item.value)) : 100000;
      const option = {
        tooltip: {
          show: true,
          formatter: params => {
            return params.name + ': ' + (params.value || 0).toFixed(2) + '万吨';
          }
        },
        visualMap: {
          min: 0,
          max: maxYield,
          left: 'left',
          top: 'bottom',
          text: ['高','低'],
          inRange: { color: ['#fff5f5', '#ff0000'] },
          show: true
        },
        series: [
          {
            name: '产量',
            type: 'map',
            map: 'china',
            roam: true,
            label: { show: false },
            data: this.mapData
          }
        ]
      };
      this.chinaMapChart.setOption(option);
      this.chinaMapChart.off('click');
      this.chinaMapChart.on('click', params => {
        this.handleProvinceClick(params);
      });
      this.resizeChinaMap();
    },
    handleProvinceClick(params) {
      const province = params.name;
      const found = this.mapData.find(item => item.name === province);
      if (!found) {
        this.provinceInfo = null;
        this.provinceRadarData = null; // 清空省份雷达数据
        this.updateRadarChart(); // 恢复全国数据
        return;
      }
      // 排名
      const sorted = [...this.mapData].sort((a, b) => b.value - a.value);
      const rank = sorted.findIndex(item => item.name === province) + 1;
      this.provinceInfo = {
        province,
        yield: found.value,
        rank
      };
      // 获取该省份各作物产量
      this.fetchProvinceRadarData(province);
    },
    async fetchProvinceRadarData(province) {
      console.log('请求省份数据，province=', province, 'year=', this.year);
      try {
        // 先获取省份数据
        const res = await getAverageYield('', this.year, province);
        console.log('省份数据返回：', res);
        if (res && res.data && res.data.length > 0) {
          this.provinceRadarData = res.data;
          // 获取到省份数据后再获取全国数据
          await this.fetchAverageYield();
        } else {
          this.provinceRadarData = null;
          this.updateRadarChart();
        }
      } catch (e) {
        console.error('获取省份数据错误：', e);
        this.provinceRadarData = null;
        this.updateRadarChart();
      }
    },
    async fetchAverageYield() {
      console.log('获取全国平均产量');
      try {
        const res = await getAverageYield('', this.year);
        console.log('全国平均产量返回：', res);
        if (res && res.data && res.data.length > 0) {
          this.radarData = res.data;
          // 计算当年各作物最大产量
          this.cropMaxValues = {};
          for (const item of res.data) {
            this.cropMaxValues[item.crop] = item.yield * 1.5; // 设置为平均值的1.5倍，留出余量
          }
          this.updateRadarChart();
        } else {
          console.warn('全国平均产量无数据');
        }
      } catch (e) {
        console.error('获取全国平均产量异常', e);
        this.radarData = [];
      }
    },
    initRadarChart() {
      console.log('initRadarChart called');
      const dom = document.getElementById('radar-chart');
      if (!dom) {
        console.warn('未找到 radar-chart dom');
        return;
      }
      if (this.radarChart) {
        this.radarChart.dispose();
      }
      this.radarChart = echarts.init(dom);
      this.fetchAverageYield();
    },
    updateRadarChart() {
      console.log('provinceRadarData:', this.provinceRadarData);
      if (!this.radarChart) return;

      // 指标和最大值
      const indicators = (this.radarData || []).map(item => ({
        name: this.getCropLabel(item.crop),
        max: item.yield * 2 // 平均值的2倍作为最大值基准
      }));

      // 全国平均数据
      const values = (this.radarData || []).map(item => item.yield);

      // 省份数据
      let provinceValues = null;
      if (this.provinceRadarData && this.provinceRadarData.length > 0) {
        // 省份数据需与全国数据顺序对齐
        provinceValues = indicators.map(ind => {
          const cropValue = this.cropOptions.find(c => c.label === ind.name)?.value;
          const found = this.provinceRadarData.find(d => d.crop === cropValue);
          if (found) {
            // 如果省份产量超过当前最大值，更新最大值
            const index = this.radarData.findIndex(item => item.crop === found.crop);
            if (index !== -1) {
              indicators[index].max = Math.max(indicators[index].max, found.yield * 1.2);
            }
            return found.yield;
          }
          return 0;
        });
      }

      const seriesData = [
        {
          value: values,
          name: `${this.year}年全国平均`,
          lineStyle: { color: '#1976d2' },
          itemStyle: { color: '#1976d2' },
          areaStyle: { color: 'rgba(25,118,210,0.1)' }
        }
      ];

      if (provinceValues) {
        seriesData.push({
          value: provinceValues,
          name: this.provinceInfo ? this.provinceInfo.province : '',
          lineStyle: { color: 'red' },
          itemStyle: { color: 'red' },
          areaStyle: { color: 'rgba(255,0,0,0.1)' }
        });
      }

      const option = {
        title: { text: `${this.year}年主要作物产量对比` },
        tooltip: {
          trigger: 'item',
          formatter: (params) => {
            return `${params.name}<br/>${params.marker}${params.value.toFixed(2)}万吨`;
          }
        },
        legend: {
          orient: 'vertical',
          right: 0,
          top: 'middle'
        },
        radar: {
          indicator: indicators,
          splitArea: {
            show: true,
            areaStyle: {
              color: ['rgba(250,250,250,0.3)', 'rgba(200,200,200,0.3)']
            }
          }
        },
        series: [
          {
            type: 'radar',
            data: seriesData
          }
        ]
      };
      this.radarChart.setOption(option);
    },
    initLineChart() {
      const chartDom = document.getElementById('line-chart');
      if (!chartDom) return;
      if (this.lineChart) {
        this.lineChart.dispose();
      }
      this.lineChart = echarts.init(chartDom);
      const option = {
        tooltip: {
          trigger: 'axis'
        },
        legend: {
          data: ['产量']
        },
        xAxis: {
          type: 'category',
          data: ['1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月']
        },
        yAxis: {
          type: 'value'
        },
        series: [
          {
            name: '产量',
            type: 'line',
            data: [120, 132, 101, 134, 90, 230, 210, 180],
            smooth: false // 关闭平滑曲线，显示为直线
          }
        ]
      };
      this.lineChart.setOption(option);
      this.resizeLineChart();
    },
    resizeChinaMap() {
      if (this.chinaMapChart) {
        this.chinaMapChart.resize();
      }
    },
    resizeRadarChart() {
      if (this.radarChart) {
        this.radarChart.resize();
      }
    },
    resizeLineChart() {
      if (this.lineChart) {
        this.lineChart.resize();
      }
    },
    onCropOrYearChange() {
      this.provinceRadarData = null; // 清空省份数据
      this.fetchAverageYield();  // 只���新全国数据
      this.initChinaMap();
    },
    getCropLabel(crop) {
      const obj = this.cropOptions.find(c => c.value === crop);
      return obj ? obj.label : crop;
    }
  }
};

</script>

<style scoped>
.select-row {
  margin-bottom: 12px;
  display: flex;
  align-items: center;
  gap: 12px;
}
.select-item {
  display: flex;
  align-items: center;
  gap: 8px;
}
.year-select {
  margin-bottom: 12px;
}
.analysis-page {
  padding: 24px;
  display: flex;
  flex-direction: column;
  height: 100vh;
  box-sizing: border-box;
}
.top-section {
  display: flex;
  flex-direction: row;
  height: 45%;
  margin-bottom: 16px;
}
.top-col {
  height: 100%;
  margin-right: 8px;
  background: #f5f7fa;
  border-radius: 4px;
  display: flex;
  align-items: center;
  justify-content: center;
}
.top-col-1 {
  flex: 3;
}
.top-col-2 {
  flex: 4;
}
.top-col-3 {
  flex: 4;
  margin-right: 0;
}
.bottom-section {
  display: flex;
  flex-direction: row;
  height: 55%;
}
.bottom-row {
  height: 100%;
  margin-right: 8px;
  background: #e9f7ef;
  border-radius: 4px;
  display: flex;
  align-items: center;
  justify-content: center;
}
.bottom-row-1 {
  flex: 1;
}
.bottom-row-2 {
  flex: 2;
  margin-right: 0;
}
.china-map-fixed {
  width: 200%;
  height: 200%;
  min-width: 0;
  min-height: 0;
  max-width: 100%;
  max-height: 100%;
  margin: auto;
  background: #fff;
}
.radar-chart-fixed {
  width: 95%;
  height: 95%;
  min-width: 0;
  min-height: 0;
  max-width: 100%;
  max-height: 100%;
  margin: auto;
  background: #fff;
}
.line-chart-fixed {
  width: 95%;
  height: 95%;
  min-width: 0;
  min-height: 0;
  max-width: 100%;
  max-height: 100%;
  margin: auto;
  background: #fff;
}
.top-col-1-inner {
  display: flex;
  flex-direction: column;
  height: 100%;
  justify-content: space-between;
}
.select-row-vertical {
  display: flex;
  flex-direction: column;
  gap: 16px;
  margin-bottom: 12px;
}
.province-desc {
  position: absolute;
  top: 33%;
  left: 0;
  width: 100%;
  text-indent: 2em;
  font-size: 16px;
  color: #333;
}
.top-col-1-content {
  position: relative;
  flex: 1;
  display: flex;
  align-items: flex-start;
  justify-content: flex-start;
  min-height: 40px;
}
</style>
