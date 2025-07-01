<template>
  <div class="analysis-page">
    <div class="columns">
      <div class="column">
        <div class="section section-top">
          <div id="cycle-chart" style="width: 100%; height: 100%;"></div>
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
        <div class="section section-top">
          <div id="region-pie-chart" style="width: 100%; height: 100%;"></div>
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
      regionSummary: null
    };
  },
  mounted() {
    this.$nextTick(() => {
      this.initSankeyChart();
      this.initCycleChart();
      this.initRegionPieChart();
      this.loadData(this.selectedYear);
      window.addEventListener('resize', this.resizeCharts);
    });
  },
  beforeDestroy() {
    window.removeEventListener('resize', this.resizeCharts);
    if (this.sankeyChart) {
      this.sankeyChart.dispose();
    }
    if (this.cycleChart) {
      this.cycleChart.dispose();
    }
    if (this.regionPieChart) {
      this.regionPieChart.dispose();
    }
  },
  methods: {
    handleYearChange(year) {
      this.loadData(year);
    },
    async loadData(year) {
      try {
        this.loading = true;
        const response = await getPlantingDataByYear(year);
        if (response.code === 200) {
          this.currentData = response.data; // 保存当前数据

          // 处理数据为桑基图所需格式
          const nodes = new Set();
          const links = [];

          // 收集所有节点
          response.data.forEach(item => {
            nodes.add(item.productName);
            nodes.add(item.region);
          });

          // 转换数据格式
          const sankeyData = {
            data: Array.from(nodes).map(name => ({ name })),
            links: response.data.map(item => ({
              source: item.productName,
              target: item.region,
              value: item.area
            }))
          };

          this.updateChartData(year, sankeyData);
        } else {
          this.$message.error("获取数据失败");
        }
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
          focusNodeAdjacency: true, // 鼠标移入高亮相邻节点
          emphasis: {
            focus: 'adjacency'
          },
          nodeAlign: 'left', // 节点水平对齐方式
          data: [
            { name: '小麦' },
            { name: '玉米' },
            { name: '水稻' },
            { name: '大豆' },
            // 省份节点
            { name: '河南' },
            { name: '山东' },
            { name: '河北' },
            { name: '四川' },
            { name: '安徽' },
            { name: '江苏' },
            { name: '湖南' },
            { name: '黑龙江' }
          ],
          links: [
            { source: '小麦', target: '河南', value: 800 },
            { source: '小麦', target: '山东', value: 750 },
            { source: '小麦', target: '河北', value: 600 },
            { source: '小麦', target: '安徽', value: 450 },
            { source: '玉米', target: '黑龙江', value: 900 },
            { source: '玉米', target: '吉林', value: 750 },
            { source: '玉米', target: '山东', value: 650 },
            { source: '玉米', target: '河南', value: 500 },
            { source: '水稻', target: '湖南', value: 680 },
            { source: '水稻', target: '江苏', value: 620 },
            { source: '水稻', target: '四川', value: 580 },
            { source: '水稻', target: '安徽', value: 520 },
            { source: '大豆', target: '黑龙江', value: 450 },
            { source: '大豆', target: '内蒙古', value: 380 },
            { source: '大豆', target: '河南', value: 320 }
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
    },

    updateRegionPieChart(region) {
      if (!this.regionPieChart || !this.currentData) return;

      // 筛选当前地区的数据
      const regionData = this.currentData.filter(item => item.region === region);

      // 计算总播种面积
      const totalArea = regionData.reduce((sum, item) => sum + item.area, 0);

      // 准备饼图数据
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

        if (!nodeName.includes('地区')) {
          // 点击农作物节点的逻辑保持不变
          this.selectedCrop = nodeName;
          this.updateCycleChart(nodeName);
          this.selectedRegion = null;
          this.regionSummary = null;
        } else {
          // 点击地区节点时更新右侧的图表和信息
          this.updateRegionPieChart(nodeName);
          this.selectedRegion = nodeName;
          this.regionSummary = this.calculateRegionSummary(nodeName);
          this.selectedCrop = null;
        }

        // 获取当前图表的所有数据
        const seriesModel = this.sankeyChart.getModel().getSeriesByIndex(0);
        const data = seriesModel.getData();
        const edgeData = seriesModel.getEdgeData();

        // 使用动画过渡更新透明度
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
          left: '8%',    // 增加左边距
          right: '12%',  // 增加右边距，给右侧文字留更多空间
          top: '12%',    // 从顶部开始的距离
          bottom: '8%',  // 距底部的距离
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
            distance: 5  // 增加标签与节点的距离
          },
          data: sankeyData.data.map(item => ({
            name: item.name,
            itemStyle: {
              color: item.name.includes('地区') ? '#b3cde3' : '#fbb4ae'
            }
          })),
          links: sankeyData.links
        }
      };

      this.sankeyChart.setOption(option, true);

      // 更新事件绑定
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

      // 计算该地区总播种面积
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

.placeholder-text {
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #909399;
  font-size: 14px;
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
