<template>
  <div class="analysis-page">
    <!-- 数据来源和Redis Key展示区 -->
    <div v-if="dataSource" style="color: #409EFF; font-weight: bold; margin-bottom: 10px;">数据来源：{{ dataSource === 'redis' ? 'Redis缓存' : '数据库' }}</div>
    <div v-if="redisKey" style="color: #67C23A; margin-bottom: 16px; word-break: break-all;">Redis Key: {{ redisKey }}</div>
    <div class="columns">
      <div class="column">
        <div class="section section-top chart-container">
          <div id="cycle-chart" class="chart-area"></div>
          <div v-if="!selectedCrop" class="placeholder-text">
            点击左侧农作物查看生长周期
          </div>
        </div>
        <div class="section section-bottom">
          <div v-if="selectedCrop && cropRecommendations[selectedCrop]" class="recommendation-box">
            <h3>{{ selectedCrop }}种植推荐</h3>
            <div class="recommendation-content">
              <p><strong>推荐播种时间：</strong>{{ cropRecommendations[selectedCrop].recommendMonths }}</p>
              <p><strong>适宜种植区域：</strong>{{ cropRecommendations[selectedCrop].suitableRegions }}</p>
              <p><strong>种植建议：</strong>{{ cropRecommendations[selectedCrop].description }}</p>
            </div>
          </div>
          <div v-else class="placeholder-text">
            点击左侧农作物查看种植推荐
          </div>
        </div>
      </div>
      <div class="column center-column">
        <div class="year-selector">
          <span class="year-label">选择年份：</span>
          <el-select v-model="selectedYear" placeholder="请选择年份" @change="handleYearChange">
            <el-option
              v-for="year in years"
              :key="year"
              :label="year + '年'"
              :value="year"
            />
          </el-select>
        </div>
        <div class="section center-section">
          <div id="sankey-chart" style="width: 100%; height: 100%;"></div>
        </div>
      </div>
      <div class="column">
        <div class="section section-top chart-container">
          <div id="region-pie-chart" class="chart-area"></div>
          <div v-if="!selectedRegion" class="placeholder-text">
            点击右侧地区查看种植作物占比
          </div>
        </div>
        <div class="section section-bottom">
          <div v-if="selectedRegion && regionSummary" class="region-summary">
            <h3>{{ selectedRegion }}主要农作物种植情况</h3>
            <div class="summary-content">
              <p>主要种植作物：<strong>{{ regionSummary.topCrop }}</strong></p>
              <p>播种面积：<strong>{{ regionSummary.area.toFixed(2) }}万亩</strong></p>
              <p>占该地区总播种面积的 <strong>{{ regionSummary.percentage }}%</strong></p>
            </div>
          </div>
          <div v-else class="placeholder-text">
            点击右侧地区查看种植概况
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import * as echarts from 'echarts';
import { getPlantingDataByYear } from "@/api/system/planting";
import { cropGrowthCycles, cropRecommendations } from "@/utils/cropData";

export default {
  name: "OriginAnalysis",
  data() {
    return {
      sankeyChart: null,
      cycleChart: null,
      regionPieChart: null,
      selectedCrop: null,
      selectedYear: 2023,
      years: Array.from({length: 24}, (_, i) => 2023 - i),
      loading: false,
      cropRecommendations,
      currentData: null, // 存储当前年份的完整数据
      selectedRegion: null,
      regionSummary: null,
      dataSource: '', // 新增：数据来源（redis/数据库）
      redisKey: ''    // 新增：redis key
    };
  },
  mounted() {
    this.$nextTick(() => {
      // 初始化所有图表
      this.initCharts();
      this.loadData(this.selectedYear);
      window.addEventListener('resize', this.resizeCharts);
    });
  },
  methods: {
    initCharts() {
      this.initSankeyChart();

      // ���始化生长周期图表
      const cycleChartDom = document.getElementById('cycle-chart');
      if (cycleChartDom) {
        this.cycleChart = echarts.init(cycleChartDom);
        this.cycleChart.setOption({
          title: {
            text: '作物生长周期',
            left: 'center'
          }
        });
      }

      // 初始化地区饼图
      const regionPieChartDom = document.getElementById('region-pie-chart');
      if (regionPieChartDom) {
        this.regionPieChart = echarts.init(regionPieChartDom);
        this.regionPieChart.setOption({
          title: {
            text: '地区种植占比',
            left: 'center'
          }
        });
      }
    },
    handleYearChange(year) {
      this.loadData(year);
    },
    async loadData(year) {
      try {
        this.loading = true;
        const response = await getPlantingDataByYear(year);
        // 新增：兼容后端返回结构，提取source和redisKey
        let dataArr = response.data;
        let source = '';
        let redisKey = '';
        if (response.data && typeof response.data === 'object' && (response.data.data || response.data.source || response.data.redisKey)) {
          dataArr = response.data.data || [];
          source = response.data.source || '';
          redisKey = response.data.redisKey || '';
        }
        this.dataSource = source;
        this.redisKey = redisKey;
        this.currentData = dataArr; // 保存当前数据

        // 处理数据为桑基图所需格式
        const nodes = new Set();
        const links = [];

        // 收集所有节点
        dataArr.forEach(item => {
          nodes.add(item.productName);
          nodes.add(item.region);
        });

        // 转换数据格式
        const sankeyData = {
          data: Array.from(nodes).map(name => ({ name })),
          links: dataArr.map(item => ({
            source: item.productName,
            target: item.region,
            value: item.area
          }))
        };

        this.updateChartData(year, sankeyData);
      } catch (error) {
        console.error("加载数据失败：", error);
        this.$message.error("加载数据失败");
      } finally {
        this.loading = false;
      }
    },
    initSankeyChart() {
      const chartDom = document.getElementById('sankey-chart');
      if (!chartDom) return;

      this.sankeyChart = echarts.init(chartDom);
      const option = {
        title: {
          text: '全国农产品种植分布',
          left: 'center',
          top: 20
        },
        tooltip: {
          trigger: 'item',
          triggerOn: 'mousemove'
        },
        series: {
          type: 'sankey',
          layout: 'none',
          focusNodeAdjacency: true,
          emphasis: {
            focus: 'adjacency'
          },
          nodeAlign: 'left',
          data: [
            // 农作物节点
            { name: '小麦' },
            { name: '玉米' },
            { name: '水稻' },
            { name: '大豆' },
            // 地区节点
            { name: '东北地区' },
            { name: '西北地区' },
            { name: '中部地区' },
            { name: '西南地区' },
            { name: '东南地区' }
          ],
          links: [
            // 小麦种植分布
            { source: '小麦', target: '中部地区', value: 800 },
            { source: '小麦', target: '东南地区', value: 750 },
            { source: '小麦', target: '西北地区', value: 600 },

            // 玉米种植分布
            { source: '玉米', target: '东北地区', value: 900 },
            { source: '玉米', target: '中部地区', value: 650 },
            { source: '玉米', target: '西北地区', value: 500 },

            // 水稻种植分布
            { source: '��稻', target: '东南地区', value: 850 },
            { source: '水稻', target: '西南地区', value: 620 },
            { source: '水稻', target: '中部地区', value: 580 },

            // 大豆种植分布
            { source: '大豆', target: '东北地区', value: 750 },
            { source: '大豆', target: '西北地区', value: 380 },
            { source: '大豆', target: '中部地区', value: 320 }
          ]
        }
      };

      // 添加点击事件
      this.sankeyChart.on('click', (params) => {
        if (params.dataType === 'node') {
          const seriesModel = this.sankeyChart.getModel().getSeriesByIndex(0);
          const data = seriesModel.getData();

          if (this.activeNode === params.dataIndex) {
            // 如果点击的是已经高亮的节点，恢复所有节点
            data.setItemVisual(params.dataIndex, 'opacity', 1);
            data.each((idx) => {
              data.setItemVisual(idx, 'opacity', 1);
            });
            this.activeNode = null;
          } else {
            // 高亮点击的节点及其相关节点，其他节点变暗
            data.each((idx) => {
              data.setItemVisual(idx, 'opacity', 0.1);
            });

            // 高亮选中的节点
            data.setItemVisual(params.dataIndex, 'opacity', 1);

            // 高亮相关的边和节点
            const edgeData = seriesModel.getEdgeData();
            edgeData.each((idx) => {
              const edge = edgeData.getItemModel(idx);
              const source = edge.get('source');
              const target = edge.get('target');
              if (source === params.name || target === params.name) {
                edgeData.setItemVisual(idx, 'opacity', 1);
                if (source === params.name) {
                  data.each((nodeIdx) => {
                    if (data.getName(nodeIdx) === target) {
                      data.setItemVisual(nodeIdx, 'opacity', 1);
                    }
                  });
                }
                if (target === params.name) {
                  data.each((nodeIdx) => {
                    if (data.getName(nodeIdx) === source) {
                      data.setItemVisual(nodeIdx, 'opacity', 1);
                    }
                  });
                }
              } else {
                edgeData.setItemVisual(idx, 'opacity', 0.1);
              }
            });

            this.activeNode = params.dataIndex;
          }

          this.sankeyChart.setOption({}, true);
        }
      });

      this.sankeyChart.setOption(option);
    },
    initCycleChart() {
      const chartDom = document.getElementById('cycle-chart');
      if (!chartDom) return;
      this.cycleChart = echarts.init(chartDom);

      // 设置初始提示信息
      const option = {
        title: {
          text: '作物生长周期',
          left: 'center'
        },
        graphic: {
          type: 'text',
          left: 'center',
          top: 'middle',
          style: {
            text: '点击左侧农作物查看生长周期',
            fontSize: 14,
            fill: '#999'
          }
        }
      };
      this.cycleChart.setOption(option);
    },
    updateCycleChart(cropName) {
      if (!this.cycleChart || !cropName || !cropGrowthCycles[cropName]) return;

      const cycleData = cropGrowthCycles[cropName];
      const option = {
        title: {
          text: cropName + '生长周期',
          left: 'center'
        },
        tooltip: {
          trigger: 'item',
          formatter: '{b}: {c}个月'
        },
        // 清除提示信息
        graphic: null,
        series: [
          {
            name: '生长周期',
            type: 'pie',
            radius: ['40%', '70%'],
            avoidLabelOverlap: false,
            label: {
              show: true,
              position: 'outside',
              formatter: '{b}\n{c}个月'
            },
            emphasis: {
              label: {
                show: true,
                fontSize: '18',
                fontWeight: 'bold'
              }
            },
            data: [
              {
                value: cycleData.sowingPeriod.length,
                name: '播种期',
                itemStyle: { color: '#91cc75' }
              },
              {
                value: cycleData.growthPeriod.length,
                name: '生长期',
                itemStyle: { color: '#fac858' }
              },
              {
                value: cycleData.maturityPeriod.length,
                name: '成熟期',
                itemStyle: { color: '#ee6666' }
              }
            ]
          }
        ]
      };

      this.cycleChart.setOption(option);
    },
    initRegionPieChart() {
      const chartDom = document.getElementById('region-pie-chart');
      if (!chartDom) return;
      this.regionPieChart = echarts.init(chartDom);

      // 设置初始提示信息
      const option = {
        title: {
          text: '地区种植占比',
          left: 'center'
        },
        graphic: {
          type: 'text',
          left: 'center',
          top: 'middle',
          style: {
            text: '点击右侧地区查看种植作物占比',
            fontSize: 14,
            fill: '#999'
          }
        }
      };
      this.regionPieChart.setOption(option);
    },

    updateRegionPieChart(region) {
      if (!this.regionPieChart || !this.currentData) return;

      // 筛选当前地区的数据
      const regionData = this.currentData.filter(item => item.region === region);
      const totalArea = regionData.reduce((sum, item) => sum + item.area, 0);
      const pieData = regionData.map(item => ({
        name: item.productName,
        value: item.area,
        percentage: ((item.area / totalArea) * 100).toFixed(2)
      }));

      const option = {
        title: {
          text: region + '农作物播种占比',
          left: 'center',
          top: 10
        },
        tooltip: {
          trigger: 'item',
          formatter: function(params) {
            return `${params.name}<br />播种面积: ${params.data.value.toFixed(2)}万亩<br />占比: ${params.data.percentage}%`;
          }
        },
        legend: {
          orient: 'vertical',
          right: '5%',
          top: 'middle',
          itemWidth: 10,
          itemHeight: 10,
          textStyle: {
            fontSize: 12
          },
          formatter: function(name) {
            // 截断过长的文本
            return name.length > 4 ? name.substring(0, 4) + '...' : name;
          }
        },
        series: [
          {
            name: '播种面积占比',
            type: 'pie',
            center: ['40%', '50%'],  // 将图表主体向左移动
            radius: ['40%', '65%'],  // 适当缩小半径
            avoidLabelOverlap: true,
            itemStyle: {
              borderRadius: 6,
              borderColor: '#fff',
              borderWidth: 2
            },
            label: {
              show: true,
              position: 'outside',
              formatter: '{b}\n{d}%',
              fontSize: 11,
              lineHeight: 14
            },
            labelLine: {
              length: 10,
              length2: 5,
              maxSurfaceAngle: 80
            },
            emphasis: {
              label: {
                show: true,
                fontSize: 12,
                fontWeight: 'bold'
              }
            },
            data: pieData
          }
        ]
      };

      this.regionPieChart.setOption(option);
    },

    resizeCharts() {
      if (this.sankeyChart) {
        this.sankeyChart.resize();
      }
      if (this.cycleChart) {
        this.cycleChart.resize();
      }
      if (this.regionPieChart) {
        this.regionPieChart.resize();
      }
    },
    handleSankeyClick(params) {
      if (params.dataType === 'node') {
        const nodeName = params.name;
        const isRegion = params.name.includes('地区');

        // 添加地区名称的反向映射
        const reverseRegionMapping = {
          '东南地区': '东部地区'
        };

        if (!isRegion) {
          // 点击农作物节点时，只更新左侧数据，不影响右侧
          this.selectedCrop = nodeName;
          if (this.cycleChart && cropGrowthCycles[nodeName]) {
            const cycleData = cropGrowthCycles[nodeName];
            this.cycleChart.setOption({
              title: { text: nodeName + '生长周期' },
              tooltip: {
                trigger: 'item',
                formatter: '{b}: {c}个月'
              },
              series: [{
                type: 'pie',
                radius: ['40%', '70%'],
                data: [
                  { value: cycleData.sowingPeriod.length, name: '播种期', itemStyle: { color: '#91cc75' } },
                  { value: cycleData.growthPeriod.length, name: '生长期', itemStyle: { color: '#fac858' } },
                  { value: cycleData.maturityPeriod.length, name: '成熟期', itemStyle: { color: '#ee6666' } }
                ]
              }]
            });
          }
        } else {
          // 点击地区节点时，根据映射关系获取正确的地区名称
          const queryRegion = reverseRegionMapping[nodeName] || nodeName;
          this.selectedRegion = nodeName;

          if (this.regionPieChart && this.currentData) {
            // 使用映射后的地区名称查询数据
            const regionData = this.currentData.filter(item => item.region === queryRegion);
            const totalArea = regionData.reduce((sum, item) => sum + item.area, 0);
            const pieData = regionData.map(item => ({
              name: item.productName,
              value: item.area,
              percentage: ((item.area / totalArea) * 100).toFixed(2)
            }));

            this.regionPieChart.setOption({
              title: { text: nodeName + '农作物播种占比', left: 'center', top: 10 },
              tooltip: {
                trigger: 'item',
                formatter: function(params) {
                  return `${params.name}<br />播种面积: ${params.data.value.toFixed(2)}万亩<br />占比: ${params.data.percentage}%`;
                }
              },
              legend: {
                orient: 'vertical',
                right: '5%',
                top: 'middle',
                itemWidth: 10,
                itemHeight: 10,
                textStyle: { fontSize: 12 },
                formatter: name => name.length > 4 ? name.substring(0, 4) + '...' : name
              },
              series: [{
                type: 'pie',
                radius: ['40%', '65%'],
                center: ['40%', '50%'],
                data: pieData,
                itemStyle: {
                  borderRadius: 6,
                  borderColor: '#fff',
                  borderWidth: 2
                },
                label: {
                  show: true,
                  position: 'outside',
                  formatter: '{b}\n{d}%',
                  fontSize: 11,
                  lineHeight: 14
                }
              }]
            });
          }
          // 使用映射后的地区名称计算汇总信息
          this.regionSummary = this.calculateRegionSummary(queryRegion);
        }

        // 高亮相关节点的逻辑保持不变
        const seriesModel = this.sankeyChart.getModel().getSeriesByIndex(0);
        const data = seriesModel.getData();
        const edgeData = seriesModel.getEdgeData();

        const option = {
          series: [{
            data: data.map((item, idx) => ({
              opacity: nodeName === data.getName(idx) || this.isRelatedNode(nodeName, data.getName(idx), edgeData) ? 1 : 0.1
            })),
            links: edgeData.map((item, idx) => {
              const edge = edgeData.getItemModel(idx);
              const source = edge.get('source');
              const target = edge.get('target');
              return {
                opacity: source === nodeName || target === nodeName ? 1 : 0.1
              };
            })
          }]
        };

        this.sankeyChart.setOption(option);
      }
    },

    // 判断节点是否与选中节点相关
    isRelatedNode(selectedName, nodeName, edgeData) {
      let isRelated = false;
      edgeData.each((idx) => {
        const edge = edgeData.getItemModel(idx);
        const source = edge.get('source');
        const target = edge.get('target');
        if ((source === selectedName && target === nodeName) ||
            (target === selectedName && source === nodeName)) {
          isRelated = true;
        }
      });
      return isRelated;
    },
    updateChartData(year, sankeyData) {
      // 确保使用正确的地区名称
      const regionMapping = {
        '东部地区': '东南地区',
        '东部': '东南地区'
      };

      const mappedData = sankeyData.data.map(item => ({
        name: regionMapping[item.name] || item.name,
        itemStyle: {
          color: item.name.includes('地区') ? '#b3cde3' : '#fbb4ae'
        }
      }));

      const mappedLinks = sankeyData.links.map(link => ({
        source: link.source,
        target: regionMapping[link.target] || link.target,
        value: link.value
      }));

      const option = {
        title: {
          text: year + '年全国农产品种植区域分布',
          left: 'center',
          top: 10
        },
        tooltip: {
          trigger: 'item',
          triggerOn: 'mousemove',
          formatter: function(params) {
            if (params.dataType === 'edge') {
              return `${params.data.source} -> ${params.data.target}<br />播种面积: ${params.data.value.toFixed(2)}万亩`;
            }
            return params.name;
          }
        },
        series: {
          type: 'sankey',
          left: '8%',
          right: '12%',
          top: '12%',
          bottom: '8%',
          emphasis: {
            focus: 'adjacency'
          },
          layoutIterations: 64,
          nodeAlign: 'justify',
          nodeWidth: 20,
          nodePadding: 30,
          label: {
            position: 'right',
            fontSize: 12,
            distance: 5
          },
          data: mappedData,
          links: mappedLinks
        }
      };

      this.sankeyChart.setOption(option, true);
      this.sankeyChart.off('click');
      this.sankeyChart.on('click', this.handleSankeyClick);
    },

    // 计算地区种植概况
    calculateRegionSummary(region) {
      if (!this.currentData) return null;

      // 获取该地区的所有种植数据
      const regionData = this.currentData.filter(item => item.region === region);
      if (regionData.length === 0) return null;

      // 按播种面积降序排序
      regionData.sort((a, b) => b.area - a.area);

      // 获取播种面积最大的作物数据
      const topCropData = regionData[0];

      // 计算���地区总播种面积
      const totalArea = regionData.reduce((sum, item) => sum + item.area, 0);

      // 计算最大作物的占比
      const percentage = ((topCropData.area / totalArea) * 100).toFixed(2);

      return {
        topCrop: topCropData.productName,
        area: topCropData.area,
        percentage: percentage
      };
    },
  }
};
</script>

<style scoped>
.analysis-page {
  padding: 24px;
}
.columns {
  display: flex;
  width: 100%;
  height: 80vh;
  gap: 24px;
}
.column {
  flex: 1;
  display: flex;
  flex-direction: column;
  gap: 24px;
}
.center-column {
  justify-content: center;
}
.center-section {
  flex: 1 1 auto;
  height: 100%;
  background: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0,0,0,0.08);
  padding: 16px;
  box-sizing: border-box;
  display: flex;
  align-items: center;
  justify-content: center;
}
.section {
  background: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0,0,0,0.08);
  padding: 16px;
  box-sizing: border-box;
}
.section-top {
  position: relative;
  flex: 2;
  min-height: 0;
}
.section-bottom {
  flex: 1;
  min-height: 0;
}
.year-selector {
  margin-bottom: 20px;
  text-align: center;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
}
.year-label {
  color: #606266;
  font-size: 14px;
}
.year-selector .el-select {
  width: 200px;
}
.recommendation-box {
  height: 100%;
  padding: 10px;
}

.recommendation-box h3 {
  color: #333;
  margin-bottom: 15px;
  text-align: center;
}

.recommendation-content {
  font-size: 14px;
}

.recommendation-content p {
  margin: 10px 0;
  line-height: 1.5;
}

.recommendation-content strong {
  color: #409EFF;
}

.chart-container {
  position: relative;
  width: 100%;
  height: 100%;
}

.chart-area {
  width: 100%;
  height: 100%;
}

.placeholder-text {
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #909399;
  font-size: 14px;
  text-align: center;
  background-color: #fff;
  z-index: 1;
}

.section-bottom .placeholder-text {
  position: relative;
  height: 100%;
}

.region-summary {
  height: 100%;
  padding: 10px;
}

.region-summary h3 {
  color: #333;
  margin-bottom: 15px;
  text-align: center;
  font-size: 16px;
}

.summary-content {
  font-size: 14px;
}

.summary-content p {
  margin: 12px 0;
  line-height: 1.6;
}

.summary-content strong {
  color: #409EFF;
  margin: 0 4px;
}
</style>
