<template>
  <div class="app-container">
    <div class="news-container">
      <el-card class="news-header">
        <h2>农业新闻</h2>
      </el-card>
      <el-card class="news-list" v-loading="loading">
        <div v-for="(item, index) in newsList" :key="index" class="news-item">
          <el-card shadow="hover">
            <div class="news-title">
              <h3>{{ item.title }}</h3>
            </div>
            <div class="news-content">
              <p>{{ item.content }}</p>
            </div>
            <div class="news-footer">
              <span class="news-time">{{ item.publishTime }}</span>
              <span class="news-source">来源：{{ item.source }}</span>
            </div>
          </el-card>
        </div>
        <div class="pagination-container" v-if="total > 0">
          <el-pagination
            background
            @size-change="handleSizeChange"
            @current-change="handleCurrentChange"
            :current-page="queryParams.pageNum"
            :page-sizes="[10, 20, 30, 40]"
            :page-size="queryParams.pageSize"
            layout="total, sizes, prev, pager, next, jumper"
            :total="total">
          </el-pagination>
        </div>
      </el-card>
    </div>
  </div>
</template>

<script>
export default {
  name: 'News',
  data() {
    return {
      loading: true,
      // 遍历新闻列表
      newsList: [],
      // 总条数
      total: 0,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10
      }
    }
  },
  created() {
    this.getList()
  },
  methods: {
    /** 查询新闻列表 */
    getList() {
      this.loading = true
      // TODO: 这里需要调用后端API获取真实数据
      // 目前使用模拟数据
      setTimeout(() => {
        this.newsList = Array(10).fill(null).map((_, index) => ({
          id: index + 1,
          title: `农业新闻标题 ${index + 1}`,
          content: '这里是新闻内容的预览，包含农业相关的重要信息...',
          publishTime: '2023-06-30',
          source: '农业新闻网'
        }))
        this.total = 100
        this.loading = false
      }, 1000)
    },
    /** 每页数量改变 */
    handleSizeChange(val) {
      this.queryParams.pageSize = val
      this.getList()
    },
    /** 当前页改变 */
    handleCurrentChange(val) {
      this.queryParams.pageNum = val
      this.getList()
    }
  }
}
</script>

<style scoped>
.news-container {
  padding: 20px;
}

.news-header {
  margin-bottom: 20px;
}

.news-header h2 {
  margin: 0;
  color: #333;
}

.news-list {
  min-height: 300px;
}

.news-item {
  margin-bottom: 20px;
}

.news-item:last-child {
  margin-bottom: 0;
}

.news-title h3 {
  margin: 0;
  color: #1890ff;
  cursor: pointer;
}

.news-title h3:hover {
  color: #40a9ff;
}

.news-content {
  margin: 10px 0;
  color: #666;
}

.news-footer {
  color: #999;
  font-size: 12px;
}

.news-time {
  margin-right: 20px;
}

.pagination-container {
  margin-top: 20px;
  text-align: center;
}
</style>
