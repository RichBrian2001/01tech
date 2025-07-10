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
        newsPic: [],
        newsPic_left: [],
        newsPic_right: []
      },
      loading: false,
      currentSlide: 0,
      slideInterval: null,
      showSlideshow: true,
      leftSlideIndex: 0,
      leftSlideInterval: null,
      showLeftSlider: true,
      boxTitles: ['要闻速览', '惠农政策', '各地动态'],
      focus: {
        visible: false,
        title: '',
        style: {},
      },
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


        const responsePic = await getNewsPic();
        const allPics = responsePic || [];
        const half = Math.ceil(allPics.length / 2);
        const responsePic_left = allPics.slice(0, half);
        const responsePic_right = allPics.slice(half);
        this.newsData.newsPic_left = responsePic_left;
        this.newsData.newsPic_right = responsePic_right;
        this.newsData.newsPic = allPics; // 保持原有数据兼容性

        console.log(this.newsData);
      } catch (error) {
        console.error('Error fetching news data:', error);
      }
    },
    async runPythonScript() {
      this.loading = true;
      try {
        await runPythonScript();
        this.$message.success('已获取最新新闻数据！');
        await this.fetchNews();
      } finally {
        this.loading = false;
      }
    },
    // 右侧幻灯片自动切换
    startSlideshow() {
      if (this.slideInterval) clearInterval(this.slideInterval);
      this.slideInterval = setInterval(() => {
        if (this.newsData.newsPic_right.length > 0) {
          this.currentSlide = (this.currentSlide + 1) % this.newsData.newsPic_right.length;
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
      if (this.newsData.newsPic_right.length > 0) {
        this.currentSlide = (this.currentSlide - 1 + this.newsData.newsPic_right.length) % this.newsData.newsPic_right.length;
        this.resetSlideshowInterval();
      }
    },
    nextSlide() {
      if (this.newsData.newsPic_right.length > 0) {
        this.currentSlide = (this.currentSlide + 1) % this.newsData.newsPic_right.length;
        this.resetSlideshowInterval();
      }
    },
    resetSlideshowInterval() {
      this.stopSlideshow();
      this.startSlideshow();
    },
    // 左侧独立幻灯片自动切换
    startLeftSlider() {
      if (this.leftSlideInterval) clearInterval(this.leftSlideInterval);
      this.leftSlideInterval = setInterval(() => {
        if (this.newsData.newsPic_left.length > 0) {
          this.leftSlideIndex = (this.leftSlideIndex + 1) % this.newsData.newsPic_left.length;
        }
      }, 3000);
    },
    stopLeftSlider() {
      if (this.leftSlideInterval) clearInterval(this.leftSlideInterval);
      this.leftSlideInterval = null;
    },
    prevLeftSlider() {
      if (this.newsData.newsPic_left.length > 0) {
        this.leftSlideIndex = (this.leftSlideIndex - 1 + this.newsData.newsPic_left.length) % this.newsData.newsPic_left.length;
        this.resetLeftSliderInterval();
      }
    },
    nextLeftSlider() {
      if (this.newsData.newsPic_left.length > 0) {
        this.leftSlideIndex = (this.leftSlideIndex + 1) % this.newsData.newsPic_left.length;
        this.resetLeftSliderInterval();
      }
    },
    resetLeftSliderInterval() {
      this.stopLeftSlider();
      this.startLeftSlider();
    },
    focusBox(idx) {
      // 只取前三个栏目
      const newsList = [this.newsData.news1, this.newsData.news2, this.newsData.news3/*, this.newsData.news4, this.newsData.news5*/][idx];
      if (!newsList.length) return;
      this.focus = {
        visible: true,
        boxTitle: this.boxTitles[idx],
        newsList,
      };
    },
    closeFocus() {
      this.focus.visible = false;
    },
  },
  watch: {
    // 监听左右幻灯片数据变化
    'newsData.newsPic_right'(val) {
      if (val && val.length > 0) {
        this.currentSlide = 0;
        this.startSlideshow();
      } else {
        this.stopSlideshow();
      }
    },
    'newsData.newsPic_left'(val) {
      if (val && val.length > 0) {
        this.leftSlideIndex = 0;
        this.startLeftSlider();
      } else {
        this.stopLeftSlider();
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
    this.stopSlideshow();
    this.stopLeftSlider();
  },
  async mounted() {
    await this.fetchNews(); // 页面载完成时直接读取新闻数据
    await this.runPythonScript(); // 页面加载完成时调用 Python 脚本
    // 幻灯片自动切换逻辑
    this.initSlideshow();
    this.startLeftSlider();
  }
};
</script>

<template>
  <div class="news-page">
    <div class="boxes-container">
      <div
        class="box"
        v-for="(newsList, idx) in [newsData.news1, newsData.news2, newsData.news3]"
        :key="idx"
        @click="focusBox(idx)"
      >
        <div class="box-title">{{ boxTitles[idx] }}</div>
        <ul>
          <li v-for="item in newsList" :key="item.href">
            <a :href="item.href" class="title" target="_blank" @click.stop>{{ item.title }}</a>
          </li>
        </ul>
      </div>
    </div>
    <!-- 聚焦对话框 -->
    <div v-if="focus.visible" class="focus-dialog-mask">
      <div class="focus-dialog">
        <button class="focus-close-btn" @click="closeFocus">×</button>
        <div class="focus-dialog-title">{{ focus.boxTitle }}</div>
        <ul class="focus-news-list">
          <li v-for="item in focus.newsList" :key="item.href">
            <a :href="item.href" target="_blank">{{ item.title }}</a>
          </li>
        </ul>
      </div>
    </div>


    <!-- 右侧幻灯片，数据源改为 newsPic_right -->
    <div class="right-float-container" v-show="showSlideshow">
      <div class="slideshow">
        <div v-if="newsData.newsPic_right.length" class="pic_box">
          <button class="hide-slideshow-circle-btn" @click="showSlideshow = false" aria-label="隐藏幻灯片">×</button>
          <a :href="newsData.newsPic_right[currentSlide].href" class="img-tu" target="_blank" rel="noopener noreferrer">
            <img :src="newsData.newsPic_right[currentSlide].pic_href"/>
            <span>{{ newsData.newsPic_right[currentSlide].title }}</span>
          </a>
          <button class="slide-btn left" @click="prevSlide" aria-label="上一张">&#8592;</button>
          <button class="slide-btn right" @click="nextSlide" aria-label="下一张">&#8594;</button>
        </div>
      </div>
    </div>
    <button v-if="!showSlideshow" class="show-slideshow-btn" @click="showSlideshow = true" style="position:fixed;right:50px;top:50%;transform:translateY(-50%);z-index:1001;">显示图片</button>

    <!-- 左侧幻灯片，数据源改为 newsPic_left -->
    <div class="left-slider-container" v-show="showLeftSlider">
      <div class="left-slider">
        <div v-if="newsData.newsPic_left.length" class="left-slider-pic-box">
          <button class="hide-left-slider-btn" @click="showLeftSlider = false" aria-label="隐藏左侧幻灯片">×</button>
          <a :href="newsData.newsPic_left[leftSlideIndex].href" class="left-slider-img-tu" target="_blank" rel="noopener noreferrer">
            <img :src="newsData.newsPic_left[leftSlideIndex].pic_href"/>
            <span>{{ newsData.newsPic_left[leftSlideIndex].title }}</span>
          </a>
          <button class="left-slider-btn left" @click="prevLeftSlider" aria-label="上一张">&#8592;</button>
          <button class="left-slider-btn right" @click="nextLeftSlider" aria-label="下一张">&#8594;</button>
        </div>
      </div>
    </div>
    <button v-if="!showLeftSlider" class="show-left-slider-btn" @click="showLeftSlider = true" style="position:fixed;left:50px;top:50%;transform:translateY(-50%);z-index:1001;">显示图片</button>
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
  width: 720px;
  display: flex;
  flex-direction: column;
  gap: 50px;
  align-items: center; /* 居中对齐 */
  margin: 0 auto; /* 水平居中 */

  .box {
    width: 720px; /* Fixed width */
    height: 375px; /* 45px * 7 +60px */
    background-color: #ffffff;
    border-radius: 50px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.5);
    overflow: auto;
    color: #5886c8;
    cursor: pointer; /* 鼠标悬停变为手指 */

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

.hide-slideshow-circle-btn {
  position: absolute;
  top: 12px;
  right: 12px;
  width: 32px;
  height: 32px;
  border-radius: 50%;
  background: #e0e0e0;
  color: #666;
  border: none;
  font-size: 22px;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  z-index: 20;
  box-shadow: 0 2px 8px rgba(0,0,0,0.10);
  transition: background 0.2s;
}
.hide-slideshow-circle-btn:hover {
  background: #bdbdbd;
  color: #333;
}

.focus-dialog-mask {
  position: fixed;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh;
  background: rgba(0, 0, 0, 0.7);
  z-index: 3000;
  display: flex;
  align-items: center;
  justify-content: center;
}

.focus-dialog {
  background: #fff;
  border-radius: 12px;
  box-shadow: 0 4px 16px rgba(0, 0, 0, 0.2);
  padding: 32px;
  width: 90%;
  max-width: 800px;
  position: relative;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;

  .focus-close-btn {
    position: absolute;
    top: 16px;
    right: 16px;
    background: transparent;
    border: none;
    font-size: 36px;
    color: #888;
    cursor: pointer;
    z-index: 10;
  }
  .focus-close-btn:hover {
    color: #d9534f;
  }
  .focus-dialog-title {
    font-size: 40px;
    font-weight: bold;
    margin-bottom: 32px;
    color: #2d2d2d;
    text-align: center;
    width: 100%;
  }
  .focus-news-list {
    list-style: none;
    padding: 0;
    margin: 0;
    width: 100%;
    display: block;

    li {
      margin-bottom: 24px;
      font-size: 26px;
      text-align: left;
      width: 100%;
      a {
        color: #337ab7;
        text-decoration: none;
        transition: color 0.2s;
        font-size: 26px;
      }
      a:hover {
        color: #d9534f;
        text-decoration: underline;
      }
    }
  }
}

/* 左侧幻灯片样式 */
.left-slider-container {
  position: fixed;
  left: 50px;
  top: 50%;
  transform: translateY(-50%);
  z-index: 1000;
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 216px;
  height: 406px;
}
.left-slider {
  position: relative;
  width: 216px;
  height: 406px;
  margin: 0 auto 32px auto;
  .left-slider-pic-box {
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
    a.left-slider-img-tu {
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
    .left-slider-btn {
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
    .left-slider-btn.left {
      left: 10px;
    }
    .left-slider-btn.right {
      right: 10px;
    }
  }
}
.show-left-slider-btn {
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
.show-left-slider-btn:hover {
  background: #529b2e;
}
.hide-left-slider-btn {
  position: absolute;
  top: 12px;
  right: 12px;
  width: 32px;
  height: 32px;
  border-radius: 50%;
  background: #e0e0e0;
  color: #666;
  border: none;
  font-size: 22px;
  display: flex;
  align-items: center;
  justify-content: center;
  cursor: pointer;
  z-index: 20;
  box-shadow: 0 2px 8px rgba(0,0,0,0.10);
  transition: background 0.2s;
}
.hide-left-slider-btn:hover {
  background: #bdbdbd;
  color: #333;
}
</style>
