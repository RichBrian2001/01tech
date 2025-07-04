<script>
import { getNews1, getNews2, getNews3, getNews4, getNews5, runPythonScript,getNewsPic } from '@/api/news/news';

export default {
  name: "News",
  data() {
    return {
      newsData: {
        news1: [],
        news2: [],
        news3: [],
        // news4: [],
        // news5: []
        newsPic: []
      },
      loading: false,
      currentSlide: 0,
      slideInterval: null,
      showSlideshow: true,
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

        // const response4 = await getNews4();
        // this.newsData.news4 = response4 || [];

        // const response5 = await getNews5();
        // this.newsData.news5 = response5 || [];

        const responsePic = await getNewsPic();
        this.newsData.newsPic = responsePic || [];

        console.log(this.newsData);
      } catch (error) {
        console.error('Error fetching news data:', error);
      }
    },
    async runPythonScript() {
      this.loading = true;
      try {
        await runPythonScript();
        this.$message.success('已更新新闻数据！');
        await this.fetchNews();
      } finally {
        this.loading = false;
      }
    },
    startSlideshow() {
      if (this.slideInterval) clearInterval(this.slideInterval);
      this.slideInterval = setInterval(() => {
        if (this.newsData.newsPic.length > 0) {
          this.currentSlide = (this.currentSlide + 1) % this.newsData.newsPic.length;
        }
      }, 3000);
    },
    stopSlideshow() {
      if (this.slideInterval) clearInterval(this.slideInterval);
      this.slideInterval = null;
    },
    initSlideshow() {
      this.$nextTick(() => {
        const slides = document.querySelectorAll('.slideshow img');
        let currentSlide = 0;
        if (slides.length === 0) return;
        slides[0].classList.add('active');
        setInterval(() => {
          slides[currentSlide].classList.remove('active');
          currentSlide = (currentSlide + 1) % slides.length;
          slides[currentSlide].classList.add('active');
        }, 3000);
      });
    },
    prevSlide() {
      if (this.newsData.newsPic.length > 0) {
        this.currentSlide = (this.currentSlide - 1 + this.newsData.newsPic.length) % this.newsData.newsPic.length;
      }
    },
    nextSlide() {
      if (this.newsData.newsPic.length > 0) {
        this.currentSlide = (this.currentSlide + 1) % this.newsData.newsPic.length;
      }
    }
  },
  watch: {
    'newsData.newsPic'(val) {
      if (val && val.length > 0) {
        this.currentSlide = 0;
        this.startSlideshow();
      } else {
        this.stopSlideshow();
      }
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
    // 保持状态，不清空数���
  },
  // 组件被销毁前
  beforeDestroy() {
    // 清理资源
    this.newsData = {
      news1: [],
      news2: [],
      news3: [],
      // news4: [],
      // news5: []
    };
    this.stopSlideshow();
  },
  async mounted() {
    await this.fetchNews(); // 页面载完成时直接读取新闻数据
    await this.runPythonScript(); // 页面加载完成时调用 Python 脚本
    // 幻灯片自动切换逻辑
    this.initSlideshow();
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
      <!-- <div class="box">
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
      </div> -->
    </div>
    <div class="right-float-container" v-show="showSlideshow">
      <div class="slideshow">
        <div v-if="newsData.newsPic.length" class="pic_box">
          <a :href="newsData.newsPic[currentSlide].href" class="img-tu" target="_blank" rel="noopener noreferrer">
            <img :src="newsData.newsPic[currentSlide].pic_href"/>
            <span>{{ newsData.newsPic[currentSlide].title }}</span>
          </a>
          <button class="slide-btn left" @click="prevSlide" aria-label="上一张">&#8592;</button>
          <button class="slide-btn right" @click="nextSlide" aria-label="下一张">&#8594;</button>
        </div>
        <button class="hide-slideshow-btn" @click="showSlideshow = false">隐藏幻灯片</button>
      </div>
    </div>
    <button v-if="!showSlideshow" class="show-slideshow-btn" @click="showSlideshow = true" style="position:fixed;right:50px;top:50%;transform:translateY(-50%);z-index:1001;">显示幻灯片</button>
  </div>
</template>

<style scoped lang="scss">
.news-page {
  display: flex;
  flex-direction: column;
  align-items: flex-start; // 靠左对齐
  justify-content: flex-start;
  padding: 24px;
  position: relative;
}

.boxes-container {
  width: 10vw; // 占页面宽度的1/10
  min-width: 200px; // 最小宽度，防止过窄
  max-width: 720px;
  display: flex;
  flex-direction: column;
  gap: 50px;
  align-items: flex-start; // 靠左对齐

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
.right-float-container {
  position: fixed;
  right: 50px;
  top: 50%;
  transform: translateY(-50%);
  z-index: 1000;
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 216px;
  height: 406px;
}

.slideshow {
  position: relative;
  width: 216px;
  height: 406px;
  margin: 0 auto 32px auto;

  .pic_box {
    position: absolute;
    top: 0;
    left: 0;
    width: 216px;
    height: 406px;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: flex-end;
    background: #fff;
    border-radius: 20px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.15);
    overflow: hidden;
    z-index: 2;
    a.img-tu {
      display: flex;
      flex-direction: column;
      align-items: center;
      width: 100%;
      height: 100%;
      text-decoration: none;
      position: relative;
      img {
        width: 216px;
        height: 406px;
        object-fit: cover;
        display: block;
      }
      span {
        width: 100%;
        min-height: 60px;
        background: rgba(255,255,255,0.85);
        color: #333;
        font-size: 16px;
        text-align: center;
        margin-top: 0;
        padding: 16px 0 12px 0;
        position: absolute;
        left: 0;
        bottom: 0;
        z-index: 3;
        border-bottom-left-radius: 20px;
        border-bottom-right-radius: 20px;
        box-shadow: 0 2px 8px rgba(0,0,0,0.08);
        line-height: 1.4;
        display: flex;
        align-items: center;
        justify-content: center;
        word-break: break-all;
        overflow: hidden;
      }
    }
    .slide-btn {
      position: absolute;
      top: 50%;
      transform: translateY(-50%);
      background: rgba(0,0,0,0.3);
      color: #fff;
      border: none;
      border-radius: 50%;
      width: 36px;
      height: 36px;
      font-size: 22px;
      cursor: pointer;
      z-index: 10;
      transition: background 0.2s;
      &:hover {
        background: rgba(0,0,0,0.6);
      }
    }
    .slide-btn.left {
      left: 10px;
    }
    .slide-btn.right {
      right: 10px;
    }
  }
}

.pic-boxes-container-float {
  display: flex;
  flex-wrap: wrap;
  gap: 30px;
  justify-content: flex-start;
  margin-bottom: 32px;

  .pic_box {
    background: #fff;
    border-radius: 20px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
    overflow: hidden;
    width: 406px;
    height: 216px;
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-bottom: 0;
    text-decoration: none;

    img {
      width: 406px;
      height: 216px;
      object-fit: cover;
    }

    span {
      display: block;
      margin-top: 10px;
      color: #333;
      font-size: 16px;
      text-align: center;
    }
  }
}

.title {
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

.hide-slideshow-btn {
  margin-top: 10px;
  width: 100%;
  background: #f56c6c;
  color: #fff;
  border: none;
  border-radius: 8px;
  padding: 6px 0;
  cursor: pointer;
  font-size: 14px;
  transition: background 0.2s;
}
.hide-slideshow-btn:hover {
  background: #d9534f;
}
.show-slideshow-btn {
  background: #67c23a;
  color: #fff;
  border: none;
  border-radius: 8px;
  padding: 10px 20px;
  cursor: pointer;
  font-size: 16px;
  box-shadow: 0 2px 8px rgba(0,0,0,0.15);
  transition: background 0.2s;
}
.show-slideshow-btn:hover {
  background: #529b2e;
}
</style>
