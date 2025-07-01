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
      <div class="bottom-row bottom-row-1">
        <div class="control-panel">
          <div class="control-item">
            <el-select v-model="lineChartCrop" placeholder="选择作物" @change="handleLineChartCropChange" style="width: 120px">
              <el-option
                v-for="c in cropOptions"
                :key="c.value"
                :label="c.label"
                :value="c.value">
              </el-option>
            </el-select>
          </div>
          <div class="control-item">
            <el-select v-model="lineChartProvince" placeholder="选择省份" clearable @change="handleLineChartProvinceChange" style="width: 120px">
              <el-option
                v-for="province in provinceOptions"
                :key="province"
                :label="province"
                :value="province">
              </el-option>
            </el-select>
          </div>
          <div class="year-slider">
            <div class="year-range-display">
              <span class="year-label">{{ lineChartYearRange[0] }}</span>
              <el-slider
                v-model="lineChartYearRange"
                range
                :min="2000"
                :max="2023"
                @change="handleLineChartYearRangeChange"
                style="margin: 0 10px">
              </el-slider>
              <span class="year-label">{{ lineChartYearRange[1] }}</span>
            </div>
          </div>
        </div>
      </div>
      <div class="bottom-row bottom-row-2">
        <div id="line-chart" class="line-chart-fixed"></div>
      </div>
    </div>
  </div>
</template>

<script>
import * as echarts from 'echarts';
import { getYieldMapData, getAverageYield, getYieldHistory } from '@/api/analysis/yield'

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
        { value: 'tobacco', label: '烟叶' },
        { value: 'wheat', label: '小麦' },
        { value: 'soybean', label: '大豆' }
      ],
      year: 2023,
      yearRange: [2000, 2023],
      selectedYear: 2023,
      yearOptions: Array.from({length: 2023-2000+1}, (_,i)=>2000+i),
      provinceInfo: null,
      historyData: [], // 存储历年产量数据
      loading: false,
      lineChartCrop: 'corn', // 折线图用的作物选择
      lineChartProvince: '黑龙江省', // 折线图专用的省份选择，默认显示黑龙江省
      lineChartYearRange: [2000, 2023], // 折线图专用的年份范围
      provinceOptions: [
        '北京市', '天津市', '河北省', '山西省', '内蒙古自治区',
        '辽宁省', '吉林省', '黑龙江省', '上海市', '江苏省',
        '浙江省', '安徽省', '福建省', '江西省', '山东省',
        '��南省', '湖北省', '湖南省', '广东省', '广西壮族自治区',
        '海南省', '重庆市', '四川省', '贵州省', '云南省',
        '西藏自治区', '陕西省', '甘肃省', '青海省', '宁夏回族自治区',
        '新疆维吾尔自治区'
      ].sort(),
    };
  },
  mounted() {
    this.fetchData();
    this.$nextTick(() => {
      if (!this.chinaMapChart) this.initChinaMap();
      if (!this.radarChart) this.initRadarChart();
      if (!this.lineChart) this.initLineChart();
      window.addEventListener('resize', this.resizeChinaMap);
      window.addEventListener('resize', this.resizeRadarChart);
      window.addEventListener('resize', this.resizeLineChart);
      // 绑定雷达图自定义tooltip
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
        this.provinceRadarData = null;
        this.updateRadarChart();
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

      // 获取该省份各作物产量数据并更新雷达图
      this.fetchProvinceRadarData(province);
    },

    async fetchProvinceRadarData(province) {
      try {
        // 先获取省份数据
        const res = await getAverageYield(this.crop, this.year, province);
        if (res && res.code === 200 && res.data && res.data.length > 0) {
          this.provinceRadarData = res.data;
          // 获取全国数据进行��比
          const nationalRes = await getAverageYield(this.crop, this.year);
          if (nationalRes && nationalRes.code === 200 && nationalRes.data) {
            this.radarData = nationalRes.data;
            this.updateRadarChart();
          }
        } else {
          this.provinceRadarData = null;
          this.updateRadarChart();
        }
      } catch (e) {
        console.error('获取省份或全国数据错误：', e);
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
          // 计算各年各作物最大产量
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
    handleLineChartCropChange() {
      // 只更新折线图
      this.initLineChart();
    },
    handleLineChartProvinceChange() {
      // 只更新折线图
      this.initLineChart();
    },
    handleLineChartYearRangeChange() {
      // 只更新折线图
      this.initLineChart();
    },
    async initLineChart() {
      const chartDom = document.getElementById('line-chart');
      if (!chartDom) return;
      if (this.lineChart) {
        this.lineChart.dispose();
      }
      this.lineChart = echarts.init(chartDom);
      this.loading = true;

      try {
        const result = await getYieldHistory(
          this.lineChartCrop,
          this.lineChartYearRange[0],
          this.lineChartYearRange[1],
          this.lineChartProvince
        );

        if (result.code === 200 && result.data) {
          this.historyData = result.data;
          // 处理日期格式，确保只显示年份
          const sortedData = result.data.map(item => ({
            ...item,
            year: typeof item.year === 'string' ? item.year.substring(0, 4) : item.year
          })).sort((a, b) => a.year - b.year);

          const years = sortedData.map(item => item.year);
          const data = sortedData.map(item => item.yield);

          const option = {
            title: {
              text: `${this.getCropLabel(this.lineChartCrop)}历年产量趋势${this.lineChartProvince ? ` - ${this.lineChartProvince}` : ''}`,
              left: 'center'
            },
            tooltip: {
              trigger: 'axis',
              formatter: '{b}年\n{a}: {c}万吨'
            },
            grid: {
              left: '3%',
              right: '4%',
              bottom: '3%',
              top: '15%',
              containLabel: true
            },
            xAxis: {
              type: 'category',
              name: '年份',
              data: years,
              axisTick: {
                alignWithLabel: true
              },
              axisLabel: {
                interval: 0,
                formatter: (value) => {
                  // 确保只显示年份数字
                  return typeof value === 'string' ? value.substring(0, 4) : value;
                }
              }
            },
            yAxis: {
              type: 'value',
              name: '产量(万吨)',
              nameLocation: 'end',
              nameGap: 15,
              nameTextStyle: {
                align: 'right'
              },
              splitLine: {
                show: true,
                lineStyle: {
                  type: 'dashed'
                }
              }
            },
            series: [
              {
                name: '产量',
                type: 'line',
                data: data,
                smooth: true,
                symbol: 'circle',
                symbolSize: 6,
                itemStyle: {
                  color: '#1890ff'
                },
                lineStyle: {
                  width: 2
                },
                markPoint: {
                  data: [
                    { type: 'max', name: '最大值' },
                    { type: 'min', name: '最小值' }
                  ]
                },
                markLine: {
                  data: [
                    { type: 'average', name: '平均值' }
                  ]
                }
              }
            ]
          };
          this.lineChart.setOption(option);
        }
      } catch (error) {
        console.error('获取历年产量数据异常:', error);
      } finally {
        this.loading = false;
      }

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
      // 只更新地图和雷达图
      this.initChinaMap();
      this.initRadarChart();
    },
    handleYearChange(newYear) {
      this.selectedYear = newYear;
      this.year = newYear;
      this.yearRange = [newYear, newYear];
      this.onCropOrYearChange();
      this.initLineChart();
    },
    handleYearRangeChange(newRange) {
      this.yearRange = newRange;
      this.year = newRange[1];
      this.selectedYear = newRange[1];
      this.onCropOrYearChange();
      this.initLineChart();
    },
    getCropLabel(crop) {
      const obj = this.cropOptions.find(c => c.value === crop);
      return obj ? obj.label : crop;
    },
    async fetchData() {
      try {
        // 调用爬取数据的接口
        await this.crawlLatestData();
        // 确保页面不会初始化
        console.log('数据爬取成功，无需初始化页面');
      } catch (error) {
        console.error('数据爬取失败:', error);
      }
    },
    async crawlLatestData() {
      // 模拟爬取数据的接口调用
      return new Promise((resolve) => {
        setTimeout(() => {
          console.log('数据爬取成功');
          resolve();
        }, 1000);
      });
    },
    initializePage() {
      // 页面初始化逻辑
      console.log('页面初始化完成');
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
  padding: 16px;
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: center;
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
  width: 100%;
  height: 100%;
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
.year-selector-container {
  display: flex;
  flex-direction: column;
  width: 100%;
  padding: 0 16px;
  box-sizing: border-box;
}
.year-dropdown {
  margin-bottom: 8px;
}
.year-slider {
  margin-top: 8px;
  padding: 0 8px;
}
.line-chart-controls {
  width: 100%;
  padding: 16px;
  display: flex;
  flex-direction: column;
  gap: 16px;
}

.control-panel {
  padding: 16px;
  background: #f5f7fa;
  border-radius: 4px;
  margin-bottom: 16px;
  width: 100%;
  box-sizing: border-box;
}

.control-item {
  display: flex;
  align-items: center;
  margin-bottom: 12px;
}

.control-item:last-child {
  margin-bottom: 0;
}

.year-range-display {
  display: flex;
  align-items: center;
  width: 100%;
}

.year-label {
  min-width: 40px;
  text-align: center;
  color: #606266;
  font-size: 14px;
}

.el-slider {
  flex: 1;
}
</style>
