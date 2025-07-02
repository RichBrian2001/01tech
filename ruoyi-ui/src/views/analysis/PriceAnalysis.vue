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
      priceData: []
    }
  },
  beforeRouteEnter(to, from, next) {
    // 进入路由时禁止自动刷新
    next(vm => {
      vm.$nextTick(() => {
        document.querySelector('#app')?.classList.remove('loading')
      })
    })
  },
  beforeRouteLeave(to, from, next) {
    // 离开路由时确保清理所有加载状态
    this.loading = false
    this.crawling = false
    document.querySelector('#app')?.classList.remove('loading')
    document.querySelector('#loader-wrapper')?.classList.remove('loading')
    next()
  },
  mounted() {
    // 组件挂载时确保移除所有加载状态
    this.$nextTick(() => {
      document.querySelector('#app')?.classList.remove('loading')
      document.querySelector('#loader-wrapper')?.classList.remove('loading')
    })
  },
  activated() {
    // 被 keep-alive 激活时禁止自动刷新
    this.$nextTick(() => {
      document.querySelector('#app')?.classList.remove('loading')
      document.querySelector('#loader-wrapper')?.classList.remove('loading')
    })
  },
  deactivated() {
    // 被 keep-alive 停用时清理状态
    this.loading = false
    this.crawling = false
  },
  created() {
    // 只加载作物列表，不自动刷新数据
    this.loadCrops()

    // 从 sessionStorage 恢复选中的作物，但不自动刷新数据
    const savedCrop = sessionStorage.getItem('selectedCrop')
    if (savedCrop) {
      this.currentCrop = savedCrop
    }
  },
  methods: {
    // 加载支持的作物列表
    loadCrops() {
      request({
        url: '/system/crawler/crops',
        method: 'get',
        headers: {
          'repeatSubmit': false,  // 禁用防重复提交检查
          'isToken': true         // 保持token检查
        }
      }).then(response => {
        if (response.code === 200) {
          this.crops = response.data || []
        }
      })
    },
    // 运行爬虫获取最新数据
    async runCrawlerData(e) {
      if (e) {
        e.preventDefault()
        e.stopPropagation()
      }

      if (!this.currentCrop) {
        this.$message.warning('请先选择作物')
        return false
      }

      try {
        this.crawling = true

        // 发送爬虫请求
        const response = await request({
          url: `/system/crawler/run/${encodeURIComponent(this.currentCrop)}`,
          method: 'post',
          headers: {
            'Content-Type': 'application/json',
            'X-Requested-With': 'XMLHttpRequest',
            'X-No-Refresh': 'true',  // 添加禁止刷新的标记
            'repeatSubmit': false
          }
        })

        // 根据爬虫执行结果显示相应消息
        if (response.code === 200) {
          this.$message({
            message: '数据爬取成功，请点击"刷新显示"按钮查看最新数据',
            type: 'success',
            duration: 3000,
            showClose: true
          })
        } else {
          this.$message.error(response.msg || '数据爬取失败')
        }
      } catch (error) {
        console.error('运行爬虫出错：', error)
        this.$message.error(error.message === 'Network Error' ? '网络连接超时，请稍后重试' : '爬虫运行失败')
      } finally {
        this.crawling = false
        // 确保清除所有可能导致刷新的状态
        document.querySelector('#app')?.classList.remove('loading')
        document.querySelector('#loader-wrapper')?.classList.remove('loading')
      }
    },

    // 刷新价格数据显示
    async refreshData() {
      if (!this.currentCrop) return false

      try {
        this.loading = true
        this.priceData = []

        const response = await request({
          url: `/system/crawler/price/${encodeURIComponent(this.currentCrop)}`,
          method: 'get',
          headers: {
            'X-No-Refresh': 'true',  // 添加禁止刷新的标记
            'repeatSubmit': false,
            'isToken': true
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
        // 确保清除所有可能导致刷新的状态
        document.querySelector('#app')?.classList.remove('loading')
        document.querySelector('#loader-wrapper')?.classList.remove('loading')
      }
    },
  },
  watch: {
    currentCrop: {
      handler(newVal) {
        if (newVal) {
          // 仅保存选择到 sessionStorage，不自动刷新数据
          sessionStorage.setItem('selectedCrop', newVal)
        } else {
          sessionStorage.removeItem('selectedCrop')
          this.priceData = []
        }
      },
      immediate: true
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
