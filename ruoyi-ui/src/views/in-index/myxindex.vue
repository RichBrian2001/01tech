<template>
  <div class="flex flex-col min-h-screen bg-gradient-to-br from-gray-100 to-gray-300">
    <!-- 欢迎页容器，只占上面五分之二页面 -->
    <div class="welcome">
      <div class="bgimg">
        welcome
<!--        <div class="ltext">w</div>-->
<!--        <div class="ltext">e</div>-->
<!--        <div class="ltext">l</div>-->
<!--        <div class="ltext">c</div>-->
<!--        <div class="ltext">o</div>-->
<!--        <div class="ltext">m</div>-->
<!--        <div class="ltext">e</div>-->
      </div>
    </div>

    <!-- 功能介绍卡片（重写为div布局，两行两列） -->
    <div class="features-section">
      <h2 class="features-title">农业产品数据分析系统</h2>
      <div class="features-grid">
        <div v-for="(feature, index) in features" :key="index" class="feature-card" @click="goFeature(feature.link)">
          <div class="feature-icon">
            <i :class="feature.icon"></i>
          </div>
          <div class="feature-content">
            <h3 class="feature-title">{{ feature.title }}</h3>
            <p class="feature-desc">{{ feature.description }}</p>
          </div>
        </div>
        <!-- 新增：天气查询卡片 -->
        <div class="feature-card" @click="goFeature('/weather/query')">
          <div class="feature-icon">
            <i class="el-icon-sunny"></i>
          </div>
          <div class="feature-content">
            <h3 class="feature-title">天气查询</h3>
            <p class="feature-desc">实时获取城市天气信息，AI智能推荐适宜农作物。</p>
          </div>
        </div>
        <!-- 新增：评论互动卡片 -->
        <div class="feature-card" @click="goFeature('/comment/index')">
          <div class="feature-icon">
            <i class="el-icon-chat-dot-square"></i>
          </div>
          <div class="feature-content">
            <h3 class="feature-title">评论互动</h3>
            <p class="feature-desc">畅所欲言，参与农业话题评论与互动。</p>
          </div>
        </div>
      </div>
    </div>

    <!-- 页脚 -->
    <footer class="py-6 text-center bg-white/80 rounded-t-[32px] shadow-inner border-t border-gray-200 mt-10" >
      <p class="footer-text">© 2025 智慧农业平台 版权所有</p>
    </footer>
  </div>
</template>

<script>
export default {
  name: 'MyXIndex',
  data() {
    return {
      features: [
        {
          title: '产地分析',
          description: '可视化展示全国各地主要农作物产地分布，助力科学选址与区域规划。',
          icon: 'el-icon-location',
          link: '/analysis/origin'
        },
        {
          title: '产量趋势',
          description: '多维度分析作物产量变化趋势，支持历史数据对比与预测。',
          icon: 'el-icon-data-analysis',
          link: '/analysis/yield'
        },
        {
          title: '价格监测',
          description: '实时监测农产品市场价格波动，辅助农户和企业决策。',
          icon: 'el-icon-money',
          link: '/analysis/price'
        },
        {
          title: '农业资讯',
          description: '聚合最新农业政策、行业动态与技术资讯，助力信息获取。',
          icon: 'el-icon-news',
          link: '/news/news'
        }
      ]
    }
  },
  computed: {
    welcomeStyle() {
      // 只占页面五分之二高度
      return {
        height: '40vh',
        minHeight: '260px',
        maxHeight: '420px',
        position: 'relative',
        overflow: 'hidden',
      };
    }
  },
  methods: {
    goFeature(link) {
      if (link) {
        // window.location.href = link;
        this.$router.push(link);  //无刷新跳转
      }
    }
  }
}
</script>

<style scoped>
html, body {
  background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%);
}

.welcome{
  height: 40vh;
  display: flex;          /* 启用 Flexbox */
  justify-content: center; /* 水平居中 */
  align-items: center;     /* 垂直居中 */
  background: #FFFFFF url("img.png") no-repeat center center ;
  background-size: 160% 100%;
  border-radius: 3vh 3vh 3vh 3vh; /* 圆角 */
}

.bgimg {
  height: 40vh;
  padding-top: 14vh;
  font-size: 8vh;
  font-weight: 300;
  /*font-family: 'Playfair Display', serif;         */
  font-family: "Levibrush", fantasy;
  color: #3b2f2f;
  letter-spacing: 1px;
}

.features-section {
  padding: 10px 0;
  margin-bottom: 13vh;
  text-align: center;
}

.features-title {
  font-size: 28px;
  font-weight: 600;
  text-align: center;
  margin-bottom: 30px;
}

.features-grid {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  gap: 40px 80px;
}

.feature-card {
  background: white;
  border-radius: 16px;
  width: 520px;
  padding: 50px;
  text-align: center;
  cursor: pointer;
  transition: transform 0.3s, box-shadow 0.3s;
}

.feature-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.feature-icon {
  font-size: 36px;
  margin-bottom: 15px;
}

.feature-title {
  font-size: 18px;
  font-weight: 500;
  margin-bottom: 10px;
}

.feature-desc {
  font-size: 14px;
  color: #666;
}

.footer-text {
  color: #aaa;
  font-size: 10px;
  letter-spacing: 1px;
  margin: 0;
}
</style>
