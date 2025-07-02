<template>
  <div class="analysis-page">
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
            {{ crawling ? '爬取中...' : '爬取最新数据' }}
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
</template>

<script>
import request from '@/utils/request'

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
      needRefresh: false
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
    this.loading = false
    this.crawling = false
    sessionStorage.removeItem('selectedCrop')
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
          const data = typeof response.data === 'string' ? JSON.parse(response.data) : response.data
          this.priceData = data.data || []
          if (data.updateTime) {
            this.$message.success(`数据更新时间：${data.updateTime}`)
          }
        } else {
          this.$message.warning(response.msg || '获取价格数据失败')
        }
      } catch (error) {
        console.error('获取价格数据出错：', error)
        this.$message.error('获取价格数据失败')
      } finally {
        this.loading = false
      }
    }
  },
  watch: {
    currentCrop: {
      handler(newVal) {
        if (newVal) {
          sessionStorage.setItem('selectedCrop', newVal)
          // 当选择新作物时，自动获取其数据
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
  padding: 20px;
}
.empty-data {
  margin: 40px 0;
  text-align: center;
}
</style>
