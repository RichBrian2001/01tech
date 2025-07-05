<template>
  <div class="analysis-page">
    <div class="top-section">
      <div class="top-col top-col-1">
        <div class="top-col-1-inner">
          <div class="select-row">
            <div class="select-item">
              <label for="crop">选择作物</label>
              <select v-model="crop" @change="onCropOrYearChange" id="crop">
                <option v-for="c in cropOptions" :key="c.value" :value="c.value">{{ c.label }}</option>
              </select>
            </div>
            <div class="select-item">
              <label for="year">选择年份</label>
              <select v-model="year" @change="onCropOrYearChange" id="year">
                <option v-for="y in yearOptions" :key="y" :value="y">{{ y }}</option>
              </select>
            </div>
          </div>
          <div class="top-col-1-content">
            <div v-if="provinceInfo" class="province-info">
              <h3 class="info-title"><i class="el-icon-data-analysis"></i> 省份产量分析</h3>
              <div class="info-content">
                <p class="info-item">
                  <i class="el-icon-location"></i>
                  <strong>{{ provinceInfo.province }}{{ year }}年</strong>
                </p>
                <p class="info-item">
                  <i class="el-icon-box"></i>
                  共产出 <strong class="highlight">{{ provinceInfo.yield }}</strong> 万吨{{ getCropLabel(crop) }}
                </p>
                <p class="info-item">
                  <i class="el-icon-trophy"></i>
                  在全国排名第 <strong class="highlight">{{ provinceInfo.rank }}</strong> 位
                </p>
              </div>
            </div>
            <div v-else class="province-placeholder">
              <i class="el-icon-map-location"></i>
              <span>点击地图查看省份详细数据</span>
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
        <div class="bottom-col-inner">
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
                <span class="year-label"><i class="el-icon-date"></i> {{ lineChartYearRange[0] }}</span>
                <el-slider
                  v-model="lineChartYearRange"
                  range
                  :min="2000"
                  :max="2023"
                  @change="handleLineChartYearRangeChange"
                  style="margin: 0 10px">
                </el-slider>
                <span class="year-label"><i class="el-icon-date"></i> {{ lineChartYearRange[1] }}</span>
              </div>
            </div>
          </div>
          <div v-if="historyData.length > 0" class="trend-info">
            <h3 class="info-title"><i class="el-icon-data-analysis"></i> 产量趋势分析</h3>
            <div class="info-content">
              <p class="info-item">
                <i class="el-icon-top"></i>
                <strong>历史最高：</strong>
                <strong class="highlight">{{ getMaxYield.value.toFixed(2) }}</strong> 万吨
                <span class="sub-text">（{{ formatYear(getMaxYield.year) }}年）</span>
              </p>
              <p class="info-item">
                <i class="el-icon-bottom"></i>
                <strong>历史最低：</strong>
                <strong class="highlight">{{ getMinYield.value.toFixed(2) }}</strong> 万吨
                <span class="sub-text">（{{ formatYear(getMinYield.year) }}年）</span>
              </p>
              <p class="info-item">
                <i class="el-icon-top-right"></i>
                <strong>最大增速：</strong>
                <strong class="highlight">{{ (getMaxGrowthRate.rate * 100).toFixed(2) }}</strong>%
                <span class="sub-text">（{{ formatYear(getMaxGrowthRate.year) }}年）</span>
              </p>
              <p class="info-item">
                <i class="el-icon-bell"></i>
                <strong>产量预测：</strong>
                <strong class="highlight">{{ getPredictedYield.toFixed(2) }}</strong> 万吨
                <span class="sub-text">（2024年）</span>
              </p>
            </div>
          </div>
          <div v-else class="trend-info empty-panel">
            <i class="el-icon-data-line"></i>
            <span>请选择作物和地区查看趋势分析</span>
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
        '河南省', '湖北省', '湖南省', '广东省', '广西壮族自治区',
        '海南省', '重庆市', '四川省' , '贵州省', '云南省',
        '西藏自治区', '陕西省', '甘肃省', '青海省', '宁夏回族自治区',
        '新疆维吾尔自治区'
      ].sort(),
    };
  },
  computed: {
    getMaxYield() {
      if (!this.historyData.length) return { value: 0, year: 0 };
      const sortedData = [...this.historyData].sort((a, b) => b.yield - a.yield);
      return {
        value: sortedData[0].yield,
        year: sortedData[0].year
      };
    },
    getMinYield() {
      if (!this.historyData.length) return { value: 0, year: 0 };
      const sortedData = [...this.historyData].sort((a, b) => a.yield - b.yield);
      return {
        value: sortedData[0].yield,
        year: sortedData[0].year
      };
    },
    getMaxGrowthRate() {
      if (this.historyData.length < 2) return { rate: 0, year: 0 };

      let maxRate = -Infinity;
      let maxRateYear = 0;

      // 按年份排序
      const sortedData = [...this.historyData]
        .sort((a, b) => a.year - b.year);

      // 计算每年的增长率
      for (let i = 1; i < sortedData.length; i++) {
        const prevYear = sortedData[i - 1];
        const currentYear = sortedData[i];
        const growthRate = (currentYear.yield - prevYear.yield) / prevYear.yield;

        if (growthRate > maxRate) {
          maxRate = growthRate;
          maxRateYear = currentYear.year;
        }
      }

      return {
        rate: maxRate,
        year: maxRateYear
      };
    },
    getPredictedYield() {
      if (this.historyData.length < 4) return 0;

      // 获取2020-2023年的数据
      const recentData = this.historyData
        .filter(item => {
          const year = parseInt(item.year);
          return year >= 2020 && year <= 2023;
        })
        .sort((a, b) => a.year - b.year);

      if (recentData.length < 4) return 0;

      // 计算平均增长率
      let totalGrowthRate = 0;
      for (let i = 1; i < recentData.length; i++) {
        const prevYear = recentData[i - 1];
        const currentYear = recentData[i];
        const growthRate = (currentYear.yield - prevYear.yield) / prevYear.yield;
        totalGrowthRate += growthRate;
      }
      const avgGrowthRate = totalGrowthRate / (recentData.length - 1);

      // 使用2023年的产量和平均增长率预测2024年产量
      const latestYield = recentData[recentData.length - 1].yield;
      return latestYield * (1 + avgGrowthRate);
    }
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
          console.log('原始数据:', result.data);
          this.mapData = result.data.map(item => ({
            name: item.province,
            value: item.yield
          }));
          console.log('处理后数据:', this.mapData);

          // 检查是否有非零数据
          const hasNonZeroData = this.mapData.some(item => item.value > 0);
          console.log('是否存在非零数据:', hasNonZeroData);
        }

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
          // 获取全国数据进行对比
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
        console.error('获取全��平均产量异常', e);
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
            year: typeof item.year === 'string' ?
              (item.year.includes('-') ? item.year.split('-')[0] : item.year) :
              item.year.toString()
          })).sort((a, b) => a.year - b.year);

          const years = sortedData.map(item => item.year);
          const data = sortedData.map(item => item.yield);

          // 检查是否符合预测条件：左侧<=2020且右侧==2023
          const showPrediction =
            this.lineChartYearRange[0] <= 2020 &&
            this.lineChartYearRange[1] === 2023;

          // 添加2024年预测数据（仅在符合条件时）
          let predictionData = [];
          if (showPrediction) {
            const predictedValue = this.getPredictedYield;
            if (predictedValue > 0) {
              years.push('2024');
              data.push(predictedValue);

              // 构建预测数据数组：前面为空，最后两个点为实际值和预测值
              predictionData = new Array(data.length - 2).fill('-')
                .concat([data[data.length - 2], data[data.length - 1]]);
            }
          }

          // 实际数据系列（始终显示）
          const actualData = showPrediction
            ? data.slice(0, -1) // 包含预测时去除最后一个预测值
            : data;             // 不包含预测时使用全部数据

          const option = {
            title: {
              text: `${this.getCropLabel(this.lineChartCrop)}历年产量趋势${this.lineChartProvince ? ` - ${this.lineChartProvince}` : ''}`,
              left: 'center'
            },
            tooltip: {
              trigger: 'axis',
              formatter: (params) => {
                const dataPoint = Array.isArray(params) ? params[0] : params;
                const year = dataPoint.name;
                // 2024年显示预测提示
                if (year === '2024') {
                  return `${year}年\n预测产量: ${dataPoint.value.toFixed(2)}万吨`;
                }
                return `${year}年\n实际产量: ${dataPoint.value.toFixed(2)}万吨`;
              }
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
              // 预测系列（仅在符合条件时显示）
              ...(showPrediction ? [
                {
                  name: '预测产量',
                  type: 'line',
                  data: predictionData,
                  smooth: false,
                  symbol: 'circle',
                  symbolSize: 6,
                  lineStyle: {
                    type: 'dashed',
                    width: 2,
                    color: '#ff4d4f'
                  },
                  itemStyle: {
                    color: '#ff4d4f'
                  },
                  z: 1
                }
              ] : []),
              // 实际数据系列（始终显示）
              {
                name: '实际产量',
                type: 'line',
                data: actualData,
                smooth: false,
                symbol: 'circle',
                symbolSize: 6,
                itemStyle: {
                  color: '#1890ff'
                },
                lineStyle: {
                  width: 2
                },
                markLine: {
                  data: [
                    { type: 'average', name: '平均值' }
                  ]
                },
                z: 2
              }
            ]
          };
          this.lineChart.setOption(option);
        }
      } catch (error) {
        console.error('获取历���产量数据异常:', error);
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
    },
    formatYear(year) {
      if (!year) return '';
      // 处理带有日期格式的年份
      if (typeof year === 'string') {
        return year.split('-')[0];
      }
      return year.toString();
    }
  }
};

</script>

<style scoped>
.select-item {
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  margin: 10px 0;
}

.select-item label {
  margin-bottom: 8px;
  color: #606266;
  white-space: nowrap;
}

.select-item select {
  width: 120px;
  height: 32px;
  border: 1px solid #dcdfe6;
  border-radius: 4px;
  padding: 0 8px;
  color: #606266;
  background-color: #fff;
}

.select-row {
  margin-bottom: 16px;
  display: flex;
  align-items: flex-start;
  gap: 20px;
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
  background: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.1);
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
  background: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.1);
  display: flex;
  align-items: center;
  justify-content: center;
}
.bottom-row-1 {
  flex: 1;
  padding: 12px;
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
  align-items: center;
}
.bottom-row-2 {
  flex: 2;
  margin-right: 0;
}
.china-map-fixed, .radar-chart-fixed, .line-chart-fixed {
  width: 100%;
  height: 100%;
  min-width: 0;
  min-height: 0;
  max-width: 100%;
  max-height: 100%;
  margin: auto;
  background: #fff;
  border-radius: 8px;
}
.top-col-1-inner {
  display: flex;
  flex-direction: column;
  height: 100%;
  justify-content: flex-start;
  padding: 20px;
  box-sizing: border-box;
}
.select-row-vertical {
  display: flex;
  flex-direction: column;
  gap: 16px;
  margin-bottom: 12px;
}
.province-info {
  padding: 15px;
  background-color: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.1);
}

.info-title {
  color: #303133;
  font-size: 16px;
  margin-bottom: 12px;
  text-align: center;
}

.info-content {
  font-size: 14px;
}

.info-item {
  margin: 8px 0;
  line-height: 1.6;
  color: #606266;
}

.info-item i {
  margin-right: 8px;
  color: #409EFF;
}

.info-item strong {
  color: #303133;
  margin: 0 4px;
}

.info-item strong.highlight {
  color: #409EFF;
  font-size: 16px;
}

.province-placeholder {
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  color: #909399;
  font-size: 14px;
}

.province-placeholder i {
  font-size: 24px;
  margin-bottom: 8px;
}

.year-slider {
  margin: 15px 0;
}

.year-range-display {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.year-label {
  color: #606266;
  display: flex;
  align-items: center;
}

.year-label i {
  margin-right: 5px;
  color: #409EFF;
}

.el-slider {
  flex: 1;
}

.control-panel {
  background: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.1);
  padding: 12px;
  width: 100%;
  box-sizing: border-box;
}

.control-item {
  margin-bottom: 12px;
}

.control-item:last-child {
  margin-bottom: 0;
}

.trend-info {
  background: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 12px rgba(0, 0, 0, 0.1);
  padding: 12px;
  width: 100%;
  box-sizing: border-box;
  margin-top: -4px;
}

.trend-info .info-title {
  color: #303133;
  font-size: 16px;
  margin-bottom: 8px;
  text-align: center;
  display: flex;
  align-items: center;
  justify-content: center;
}

.trend-info .info-content {
  font-size: 14px;
  margin-top: -4px;
}

.trend-info .info-item {
  margin: 8px 0;
  line-height: 1.5;
  color: #606266;
  display: flex;
  align-items: center;
}

.trend-info .info-item i {
  margin-right: 8px;
  color: #409EFF;
  font-size: 16px;
}

.trend-info .info-item strong {
  color: #303133;
  margin: 0 4px;
}

.trend-info .info-item strong.highlight {
  color: #409EFF;
  font-size: 16px;
}

.trend-info .sub-text {
  color: #909399;
  font-size: 12px;
  margin-left: 4px;
}

.trend-info.empty-panel {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  color: #909399;
  min-height: 120px;
}

.trend-info.empty-panel i {
  font-size: 24px;
  margin-bottom: 8px;
}
</style>
