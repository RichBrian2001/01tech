<template>
  <div class="analysis-page">
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

export default {
  name: "YieldAnalysis",
  data() {
    return {
      chinaMapChart: null,
      radarChart: null,
      lineChart: null
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
      const option = {
        tooltip: {
          show: false
        },
        visualMap: {
          min: 0,
          max: 100,
          left: 'left',
          top: 'bottom',
          text: ['高','低'],
          inRange: {
            color: ['#e0ffff', '#006edd']
          },
          show: false
        },
        series: [
          {
            name: '产量',
            type: 'map',
            map: 'china',
            roam: true,
            label: {
              show: false
            },
            data: []
          }
        ]
      };
      this.chinaMapChart.setOption(option);
      this.resizeChinaMap();
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
