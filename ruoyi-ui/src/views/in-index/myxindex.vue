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

    <!-- 功能介绍卡片 -->
    <main class="flex-grow py-20 bg-gradient-to-br from-white to-gray-100">
      <div class="container mx-auto px-4">
        <h2 class="text-4xl font-bold text-gray-800 mb-14 text-center tracking-wide">平台核心功能</h2>
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-10">
          <div v-for="(feature, index) in features" :key="index" class="bg-white/90 rounded-[28px] p-10 text-center shadow-xl hover:shadow-2xl transform hover:-translate-y-2 transition-all border border-gray-100 flex flex-col items-center">
            <div class="flex items-center justify-center mb-6 rounded-full bg-gradient-to-br from-green-100 to-green-300 w-20 h-20 shadow-lg">
              <i :class="feature.icon" class="text-4xl text-green-600"></i>
            </div>
            <h3 class="text-2xl font-semibold text-gray-800 mb-3">{{ feature.title }}</h3>
            <p class="text-gray-600 mb-6 text-base min-h-[56px]">{{ feature.description }}</p>
            <a v-if="feature.link" :href="feature.link" class="inline-block px-6 py-2 bg-gradient-to-r from-green-500 to-green-400 text-white font-semibold rounded-full shadow hover:from-green-600 hover:to-green-500 transition-all duration-200">
              了解更多
            </a>
          </div>
        </div>
      </div>
    </main>

    <!-- 页脚 -->
    <footer class="py-6 text-center bg-white/80 rounded-t-[32px] shadow-inner border-t border-gray-200 mt-10">
      <p class="text-base text-gray-500 tracking-wide">© 2025 智慧农业平台 版权所有</p>
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
          link: '#/origin-analysis'
        },
        {
          title: '产量趋势',
          description: '多维度分析作物产量变化趋势，支持历史数据对比与预测。',
          icon: 'el-icon-data-analysis',
          link: '#/yield-analysis'
        },
        {
          title: '价格监测',
          description: '实时监测农产品市场价格波动，辅助农户和企业决策。',
          icon: 'el-icon-money',
          link: '#/price-analysis'
        },
        {
          title: '农业资讯',
          description: '聚合最新农业政策、行业动态与技术资讯，助力信息获取。',
          icon: 'el-icon-news',
          link: '#/news'
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

.ltext{
    font-family: 'Brush Script Std', 'Dancing Script', 'Pacifico', cursive;

}
</style>
