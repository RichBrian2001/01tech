<script>
import { getNews1, getNews2, getNews3, getNews4, getNews5, runPythonScript } from '@/api/news/news';

export default {
  name: "News",
  data() {
    return {
      newsData: {
        news1: [],
        news2: [],
        news3: [],
        news4: [],
        news5: []
      },
      pythonScriptOutput: "", // 用于存储 Python 脚本的输出
      isFirstActivation: true,
      loading: false
    };
  },
  methods: {
    async fetchNews() {
      try {
        const response1 = await getNews1();
        this.newsData.news1 = response1 || [];

        const response2 = await getNews2();
        this.newsData.news2 = response2 || [];

        const response3 = await getNews3();
        this.newsData.news3 = response3 || [];

        const response4 = await getNews4();
        this.newsData.news4 = response4 || [];

        const response5 = await getNews5();
        this.newsData.news5 = response5 || [];

        console.log(this.newsData);
      } catch (error) {
        console.error('Error fetching news data:', error);
      }
    },
    async runPythonScript() {
      try {
        const response = await runPythonScript();
        this.pythonScriptOutput = response || "";
        console.log('Python Script Running');
      } catch (error) {
        console.error('Error running Python script:', error);
      }
    },
    async refreshPage() {
      await this.fetchNews(); // 刷新时重新获取新闻数据
      this.$message.success('页面已刷新，新闻数据已更新！');
    }
  },
  // 组件第一次创建时
  created() {
    // 仅初始化数据结构，不加载数据
  },
  // 组件被激活时（使用 keep-alive 后）
  activated() {
    if (this.isFirstActivation) {
      this.fetchNews();
      this.isFirstActivation = false;
    }
  },
  // 组件被停用时（使用 keep-alive 后）
  deactivated() {
    // 保持状态，不清空数据
  },
  // 组件被销毁前
  beforeDestroy() {
    // 清理资源
    this.newsData = {
      news1: [],
      news2: [],
      news3: [],
      news4: [],
      news5: []
    };
    this.pythonScriptOutput = "";
  },
  async mounted() {
    await this.fetchNews(); // 页面加载完成时直接读取新闻数据
    await this.runPythonScript(); // 页面加载完成时调用 Python 脚本
  }
};
</script>

<template>
  <div class="news-page">
    <div class="boxes-container">
      <div class="box">
        <div class="box-title">要闻速览</div>
        <ul>
          <li v-for="item in newsData.news1" :key="item.href">
            <a :href="item.href" class="title" target="_blank">{{ item.title }}</a>
          </li>
        </ul>
      </div>
      <div class="box">
        <div class="box-title">惠农政策</div>
        <ul>
          <li v-for="item in newsData.news2" :key="item.href">
            <a :href="item.href" class="title" target="_blank">{{ item.title }}</a>
          </li>
        </ul>
      </div>
      <div class="box">
        <div class="box-title">各地动态</div>
        <ul>
          <li v-for="item in newsData.news3" :key="item.href">
            <a :href="item.href" class="title" target="_blank">{{ item.title }}</a>
          </li>
        </ul>
      </div>
      <div class="box">
        <div class="box-title">农业科技</div>
        <ul>
          <li v-for="item in newsData.news4" :key="item.href">
            <a :href="item.href" class="title" target="_blank">{{ item.title }}</a>
          </li>
        </ul>
      </div>
      <div class="box">
        <div class="box-title">聚焦杨凌</div>
        <ul>
          <li v-for="item in newsData.news5" :key="item.href">
            <a :href="item.href" class="title" target="_blank">{{ item.title }}</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</template>

<style scoped lang="scss">
.news-page {
  padding: 24px;

  .boxes-container {
    display: flex;
    flex-wrap: wrap; /* Allow wrapping to next line */
    gap: 50px; /* Space between boxes */
    justify-content: center; /* Center the boxes */

    .box {
      width: 720px; /* Fixed width */
      height: 375px; /* 45px * 7 +60px */
      background-color: #d3e3a9;
      border-radius: 50px;
      box-shadow: 0 2px 8px rgba(0, 0, 0, 0.5);
      overflow: auto;
      color: #5886c8;

      .box-title {
        text-align: center;
        font-weight: bold;
        color: #4a89cf;
        padding: 16px;
        font-size: 20px;
      }
    }
  }
}
.title{
  height: 45px;
  line-height: 35px;
  padding: 0 16px;
  color: #333;
  text-decoration: none;
  &:hover {
    color: #4a89cf;
    text-decoration: underline;
  }
  &:active {
    color: #4a89cf;
  }
  &:focus {
    outline: none;
    color: #4a89cf;
  }


}
</style>
