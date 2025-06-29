<template>
  <div class="analysis-page">
    <div class="select-row">
      <label for="crop">选择作物：</label>
      <select v-model="crop" @change="onCropOrYearChange" id="crop">
        <option v-for="c in cropOptions" :key="c.value" :value="c.value">{{ c.label }}</option>
      </select>
      <label for="year">选择年份：</label>
      <select v-model="year" @change="onCropOrYearChange" id="year">
        <option v-for="y in yearOptions" :key="y" :value="y">{{ y }}</option>
      </select>
    </div>
    <div class="top-section">
      <div class="top-col top-col-1">上1</div>
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
import { getYieldMapData } from '@/api/analysis/yield'

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
      yearOptions: Array.from({length: 2023-2000+1}, (_,i)=>2000+i)
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
    });
  },
  beforeDestroy() {
    window.removeEventListener('resize', this.resizeChinaMap);
    window.removeEventListener('resize', this.resizeRadarChart);
    window.removeEventListener('resize', this.resizeLineChart);
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
      const res = await fetch('/map/china.json');
      const chinaJson = await res.json();
      echarts.registerMap('china', chinaJson);
      this.chinaMapChart = echarts.init(chartDom);
      // 获取后端数据
      const result = await getYieldMapData(this.crop, this.year);
      if (result.code === 200) {
        // 将后端 province/yield 字段映射为 ECharts 需要的 name/value
        this.mapData = result.data.map(item => ({
          name: item.province,
          value: item.yield
        }));
      }
      // 计算最大产量
      const maxYield = this.mapData.length > 0 ? Math.max(...this.mapData.map(item => item.value)) : 100000;
      const option = {
        tooltip: { show: true },
        visualMap: {
          min: 0,
          max: maxYield,
          left: 'left',
          top: 'bottom',
          text: ['高','低'],
          inRange: { color: ['#fff5f5', '#ff0000'] }, // 红色深浅
          show: true
        },
        series: [
          {
            name: '产量',
            type: 'map',
            map: 'china',
            roam: true,
            label: { show: false },
            data: this.mapData // 这里填充后端数据
          }
        ]
      };
      this.chinaMapChart.setOption(option);
      this.resizeChinaMap();
    },
    onCropOrYearChange() {
      this.initChinaMap();
    },
    resizeChinaMap() {
      if (this.chinaMapChart) {
        this.chinaMapChart.resize();
      }
    },
    initRadarChart() {
      const chartDom = document.getElementById('radar-chart');
      if (!chartDom) return;
      this.radarChart = echarts.init(chartDom);
      const option = {
        tooltip: {},
        radar: {
          indicator: [
            { name: '小麦', max: 100 },
            { name: '玉米', max: 100 },
            { name: '水稻', max: 100 },
            { name: '大豆', max: 100 },
            { name: '马铃薯', max: 100 },
            { name: '高粱', max: 100 },
            { name: '烟叶', max: 100 },
            { name: '棉花', max: 100 },
            { name: '花生', max: 100 },
            { name: '甘蔗', max: 100 }
          ],
          shape: 'polygon',
          splitNumber: 4
        },
        series: [{
          name: '作物产量对比',
          type: 'radar',
          data: [
            {
              value: [80, 90, 70, 60, 85, 75, 65, 55, 77, 68],
              name: '2024年'
            }
          ]
        }]
      };
      this.radarChart.setOption(option);
      this.resizeRadarChart();
    },
    resizeRadarChart() {
      if (this.radarChart) {
        this.radarChart.resize();
      }
    },
    initLineChart() {
      const chartDom = document.getElementById('line-chart');
      if (!chartDom) return;
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
    resizeLineChart() {
      if (this.lineChart) {
        this.lineChart.resize();
      }
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
</style>
