<template>
  <div class="analysis-page">
    <div class="page-container">
      <!-- 左侧价格表格区域 -->
      <div class="left-section">
        <el-card class="box-card">
          <div slot="header" class="clearfix">
            <span>作物价格分析</span>
            <div style="float: right;">
              <el-select v-model="currentCrop" placeholder="请选择作物" style="margin-right: 10px;">
                <el-option
                  v-for="crop in crops"
                  :key="crop"
                  :label="crop"
                  :value="crop">
                </el-option>
              </el-select>
              <el-button
                type="button"
                size="small"
                @click.prevent="runCrawlerData"
                :loading="crawling"
                :disabled="!currentCrop">
                {{ crawling ? '爬取中...' : '获取最新数据' }}
              </el-button>
              <el-button
                type="button"
                style="margin-left: 10px;"
                @click.prevent="refreshData"
                :disabled="!currentCrop">刷新显示</el-button>
            </div>
          </div>

          <!-- 价格数据展示区域 -->
          <div v-loading="loading">
            <template v-if="!currentCrop">
              <div class="empty-data">
                <el-empty description="请选择要查看的作物"></el-empty>
              </div>
            </template>
            <template v-else>
              <el-table v-if="priceData.length > 0" :data="priceData" style="width: 100%">
                <el-table-column prop="产品" label="产品" width="120"></el-table-column>
                <el-table-column prop="价格" label="价格" width="120"></el-table-column>
                <el-table-column prop="产地" label="产地"></el-table-column>
                <el-table-column prop="日期" label="日期" width="180"></el-table-column>
                <el-table-column prop="单位" label="单位" width="100"></el-table-column>
              </el-table>
              <div v-else class="empty-data">
                <el-empty :description="loading ? '加载中...' : '暂无价格数据'"></el-empty>
              </div>
            </template>
          </div>
        </el-card>
      </div>
      <!-- 右侧区域（价格偏差分析） -->
      <div class="right-section">
        <el-card class="box-card">
          <div slot="header" class="clearfix">
            <span>价格偏差分析</span>
            <div class="average-price" v-if="averagePrice">
              平均价格：{{ averagePrice.toFixed(2) }}
            </div>
          </div>
          <div class="chart-container" ref="priceDeviationChart"></div>
        </el-card>
      </div>
    </div>
    <div v-if="dataSource" style="color: #409EFF; font-weight: bold; margin-top: 10px;">当前数据来源：{{ dataSource }}</div>
    <div v-if="redisKey" style="color: #67C23A; margin-top: 6px; word-break: break-all;">Redis Key: {{ redisKey }}</div>
    <div v-if="redisValue" style="color: #909399; margin-top: 2px; word-break: break-all; max-width: 100%; white-space: pre-wrap;">Redis Value: {{ redisValue }}</div>
    <div v-if="errorDetail" style="color: red; margin-top: 10px; white-space: pre-wrap;">
      <strong>详细错误信息：</strong>
      <div>{{ errorDetail }}</div>
    </div>
  </div>
</template>

<script>
import request from '@/utils/request'
import * as echarts from 'echarts'  // 添加 ECharts 导入

export default {
  name: 'PriceAnalysis',
  data() {
    return {
      loading: false,
      crawling: false,
      currentCrop: '',
      crops: [],
      priceData: [],
      // 添加状态控制
      isFirstActivation: true,
      needRefresh: false,
      deviationChart: null, // 价格偏差图表实例
      averagePrice: 0, // 平均价格
      errorDetail: '', // 新增：用于显示详细错误信息
      dataSource: '', // 数据来源
      redisKey: '',   // Redis的key
      redisValue: '', // Redis的value
    }
  },
  // 组件被 keep-alive 缓存时调用
  activated() {
    // 只在第一次激活时加载数据
    if (this.isFirstActivation) {
      this.loadCrops()
      // 从 sessionStorage 恢复选中的作物
      const savedCrop = sessionStorage.getItem('selectedCrop')
      if (savedCrop) {
        this.currentCrop = savedCrop
      }
      this.isFirstActivation = false
    }
    // 如果标记了需要刷新，则刷新数据
    if (this.needRefresh && this.currentCrop) {
      this.refreshData()
      this.needRefresh = false
    }
  },
  // 组件被 keep-alive 停用时调用
  deactivated() {
    // 保存当前状态
    if (this.currentCrop) {
      sessionStorage.setItem('selectedCrop', this.currentCrop)
    }
  },
  // 组件即将被销毁时调用
  beforeDestroy() {
    // 清理资源
    this.loading = false;
    this.crawling = false;
    sessionStorage.removeItem('selectedCrop');
    window.removeEventListener('resize', this.handleResize);
    if (this.deviationChart) {
      this.deviationChart.dispose();
    }
  },
  methods: {
    // 加载作物列表
    async loadCrops() {
      try {
        const response = await request({
          url: '/system/crawler/crops',
          method: 'get',
          headers: {
            'X-No-Refresh': 'true',
            'repeatSubmit': false
          }
        })
        if (response.code === 200) {
          this.crops = response.data || []
        }
      } catch (error) {
        console.error('加载作物列表失败:', error)
      }
    },
    // 运行爬虫获取最新数据
    async runCrawlerData(e) {
      if (e) {
        e.preventDefault()
        e.stopPropagation()
      }

      if (!this.currentCrop) {
        this.$message.warning('请先选择作物')
        return
      }

      if (this.crawling) return

      this.crawling = true
      try {
        const response = await request({
          url: `/system/crawler/run/${encodeURIComponent(this.currentCrop)}`,
          method: 'post',
          headers: {
            'X-No-Refresh': 'true',
            'repeatSubmit': false
          }
        })

        if (response.code === 200) {
          this.$message.success('数据爬取成功，请点击"刷新显示"按钮查看最新数据')
          // 标记需要刷新，但不立即刷新
          this.needRefresh = true
        } else {
          this.$message.error(response.msg || '数据爬取失败')
        }
      } catch (error) {
        console.error('运行爬虫出错：', error)
        this.$message.error(error.message || '爬虫运行失败')
      } finally {
        this.crawling = false
      }
    },
    // 刷新价格数据显示
    async refreshData() {
      if (!this.currentCrop || this.loading) return

      this.loading = true
      try {
        const response = await request({
          url: `/system/crawler/price/${encodeURIComponent(this.currentCrop)}`,
          method: 'get',
          headers: {
            'X-No-Refresh': 'true',
            'repeatSubmit': false,
            'Cache-Control': 'no-cache'
          }
        })

        if (response.code === 200 && response.data) {
          const data = typeof response.data === 'string' ? JSON.parse(response.data) : response.data;

          // 1. 先处理原始数据
          let rawData = (data.data && data.data.data) ? data.data.data : [];
          // 兼容后端返回字符串或对象
          if (typeof rawData === 'string') {
            try {
              rawData = JSON.parse(rawData);
            } catch (e) {
              this.$message.error('价格数据内容解析失败');
              console.error('价格数据内容解析失败', e)
              rawData = [];
            }
          }
          if (!Array.isArray(rawData)) {
            this.$message.error('价格数据格式异常，无法显示');
            console.error('价格数据格式异常，data:', data, 'rawData:', rawData);
            rawData = [];
          }
          if (rawData.length === 0) {
            this.$message.warning('价格数据为空，文件路径已在日志中显示');
            console.error('价格数据为空，文件路径已在日志中显示');
            console.log('后端返回的data内容:', data);
          }

          // 数据来源弹窗提示
          if (data.source) {
            this.$message.success('数据来源：' + (data.source === 'redis' ? 'Redis缓存' : 'JSON文件'));
            this.dataSource = data.source === 'redis' ? 'Redis缓存' : 'JSON文件';
            this.redisKey = data.redisKey || (data.data && data.data.redisKey) || '';
            this.redisValue = data.redisValue || (data.data && data.data.redisValue) || '';
          } else {
            this.dataSource = '';
            this.redisKey = '';
            this.redisValue = '';
          }

          // 2. 计算平均价格
          const prices = rawData.map(item => parseFloat(item.价格));
          this.averagePrice = prices.reduce((a, b) => a + b, 0) / prices.length;

          // 3. 按产地分组数据，并计算每个产地的平均偏差
          const locationGroups = {};
          rawData.forEach(item => {
            if (!locationGroups[item.产地]) {
              locationGroups[item.产地] = {
                items: [],
                totalDeviation: 0,
                count: 0
              };
            }
            const group = locationGroups[item.产地];
            const price = parseFloat(item.价格);
            const deviation = price - this.averagePrice;

            group.items.push(item);
            group.totalDeviation += deviation;
            group.count++;
          });

          // 4. 计算每个产地的平均偏差并排序
          const sortedLocations = Object.entries(locationGroups)
            .map(([location, data]) => ({
              location,
              avgDeviation: data.totalDeviation / data.count,
              items: data.items
            }))
            .sort((a, b) => Math.abs(a.avgDeviation) - Math.abs(b.avgDeviation))

          // 5. 按偏差排序重组数据
          this.priceData = sortedLocations.flatMap(group => group.items);

          if (data.updateTime) {
            this.$message.success(`数据更新时间：${data.updateTime}`);
          }

          // 6. 更新图表
          this.$nextTick(() => {
            this.updateDeviationChart(sortedLocations);
          });
        } else {
          this.$message.warning(response.msg || '获取价格数据失败')
        }
      } catch (error) {
        console.error('获取价格数据出错：', error)
        this.$message.error('获取价格数据失败')
        // 新增：将详细错误信息输出到页面下方
        this.errorDetail = error && error.stack ? error.stack : (error && error.message ? error.message : String(error));
      } finally {
        this.loading = false
      }
    },

    updateDeviationChart(sortedLocations) {
      if (!sortedLocations || !sortedLocations.length) return;

      if (!this.$refs.priceDeviationChart) return;

      if (!this.deviationChart) {
        this.deviationChart = echarts.init(this.$refs.priceDeviationChart);
      }

      const option = {
        tooltip: {
          trigger: 'axis',
          axisPointer: { type: 'shadow' },
          formatter: function(params) {
            const param = params[0];
            return `${param.name}<br/>平均价格偏差：${param.value.toFixed(2)}`;
          }
        },
        grid: {
          top: '5%',
          left: '8%',
          right: '8%',
          bottom: '3%',
          containLabel: true
        },
        xAxis: {
          type: 'value',
          name: '偏差',
          position: 'bottom',
          nameTextStyle: {
            fontSize: 12,
            padding: [0, 0, 5, 0]
          },
          splitLine: {
            show: true,
            lineStyle: {
              type: 'dashed',
              color: '#E0E0E0'
            }
          },
          axisLabel: {
            formatter: (value) => value.toFixed(2),
            fontSize: 12,
            margin: 8
          }
        },
        yAxis: {
          type: 'category',
          data: sortedLocations.map(item => item.location).reverse(), // 移除reverse()，保持自然顺序
          axisLabel: {
            fontSize: 12,
            margin: 16,
            color: '#606266'
          },
          axisTick: {
            show: false
          },
          axisLine: {
            show: true,
            lineStyle: {
              color: '#E0E0E0'
            }
          }
        },
        series: [{
          name: '价格偏差',
          type: 'bar',
          barWidth: '45%',
          data: sortedLocations.map(item => ({
            value: item.avgDeviation,
            itemStyle: {
              color: item.avgDeviation >= 0 ? '#67C23A' : '#F56C6C',
              borderRadius: item.avgDeviation >= 0 ? [0, 4, 4, 0] : [4, 0, 0, 4]
            }
          })),
          label: {
            show: true,
            position: function(params) {
              return params.value >= 0 ? 'right' : 'left';
            },
            distance: 15,
            fontSize: 12,
            color: '#000000', // 黑色
            fontWeight: 'bold',
            formatter: (params) => params.value.toFixed(2)
          }
        }]
      };

      this.deviationChart.setOption(option, true);

      this.$nextTick(() => {
        this.deviationChart.resize();
      });
    },
    // 添加窗口大小变化时更新图��的方法
    handleResize() {
      if (this.deviationChart) {
        this.deviationChart.resize();
      }
    }
  },
  mounted() {
    window.addEventListener('resize', this.handleResize);
  },
  beforeDestroy() {
    // 清理资源
    this.loading = false;
    this.crawling = false;
    sessionStorage.removeItem('selectedCrop');
    window.removeEventListener('resize', this.handleResize);
    if (this.deviationChart) {
      this.deviationChart.dispose();
    }
  },
  watch: {
    currentCrop: {
      handler(newVal) {
        if (newVal) {
          sessionStorage.setItem('selectedCrop', newVal)
          // 当选择新作物时��自动获��其数据
          this.refreshData()
        } else {
          sessionStorage.removeItem('selectedCrop')
          this.priceData = []
        }
      }
    }
  }
}
</script>

<style scoped>
.analysis-page {
  padding: 10px;  /* 减小内边距 */
  height: calc(100vh - 84px);
  overflow: hidden;  /* 防止出现滚动条 */
}

.page-container {
  display: flex;
  height: 100%;
  gap: 10px;  /* 减小间距 */
}

.left-section,
.right-section {
  min-width: 0;
  display: flex;
  flex-direction: column;
  overflow: hidden;  /* 防止溢出 */
}

.left-section {
  flex: 5;  /* 从2改为5 */
}

.right-section {
  flex: 3;  /* 从1改为3 */
}

.box-card {
  height: 100%;
  display: flex;
  flex-direction: column;
}

/* 减小卡片标题区��的高度 */
.box-card >>> .el-card__header {
  padding: 10px;
  min-height: 20px;
  line-height: 1.2;
}

/* 优化表格容器 */
.box-card >>> .el-card__body {
  flex: 1;
  padding: 8px;
  overflow: auto;
}

/* 优化表格样式 */
.el-table {
  font-size: 12px;
  .el-table__header th {
    padding: 6px 0;
    height: 28px;  /* 减小表头高度 */
  }
  .el-table__body td {
    padding: 4px 0;
    height: 28px;  /* 减小单元格高度 */
  }
}

/* 优化图表容器 */
.chart-container {
  width: 100%;
  height: calc(100% - 20px);  /* 增加图表密度 */
  min-height: 200px;  /* 增加最小高度 */
  margin-top: 10px;  /* 增加顶部间距 */
}

/* 优化按钮和选择器 */
.el-select {
  width: 120px;  /* 限制选择器���度 */
}

.el-button--small {
  padding: 8px 12px;
  font-size: 12px;
}

.average-price {
  float: right;
  color: #606266;
  font-size: 12px;
  line-height: 24px;
  margin-right: 8px;
}
</style>
