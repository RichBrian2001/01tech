<template>
  <div class="weather-query">
    <div class="weather-header-row">
      <div class="weather-header-left">
        <div class="header-title">高德地图实时天气</div>
        <div class="gaode-logo-container">
          <img src="@/assets/images/高德地图logo.png" alt="高德地图" class="gaode-logo-img" />
        </div>
      </div>
      <div class="weather-header-right">
        <div class="header-title">spark-lite模型</div>
        <div class="spark-logo-container">
          <img src="@/assets/images/讯飞星火logo.png" alt="spark-lite" class="spark-logo-img" />
        </div>
      </div>
    </div>
    <div class="weather-form-top">
      <el-form :inline="true" :model="query" class="weather-form">
        <el-form-item label="城市">
          <el-input v-model="query.city" placeholder="请输入城市名称"></el-input>
        </el-form-item>
        <el-form-item>
          <el-button type="primary" @click="fetchWeather">查询</el-button>
        </el-form-item>
      </el-form>
    </div>
    <div class="weather-top">
      <div v-if="!weather" class="placeholder">
        <h2>实时天气数据</h2>
        <p>请在上方输入城市名称并点击查询，获取最新天气信息。</p>
      </div>
      <div v-if="weather">
        <el-card class="weather-result">
          <el-table :data="[weather]" border stripe style="width: 100%; min-width: 900px;" :header-cell-style="{background:'#f5f7fa',color:'#333',fontWeight:'bold'}" :cell-style="{fontSize:'15px'}">
            <el-table-column prop="city" label="城市" align="center" width="100" />
            <el-table-column prop="weather" label="天气" align="center" width="100" />
            <el-table-column prop="temperature" label="温度(℃)" align="center" width="100" />
            <el-table-column prop="winddirection" label="风向" align="center" width="100" />
            <el-table-column prop="windpower" label="风力" align="center" width="100" />
            <el-table-column prop="humidity" label="湿度" align="center" width="100" />
            <el-table-column prop="reporttime" label="报告时间" align="center" min-width="200" />
          </el-table>
        </el-card>
      </div>
    </div>
    <div class="weather-bottom">
      <div v-if="!aiSuggest.length && !weather" class="placeholder">
        <h2>AI推荐</h2>
        <p>AI将根据天气数据为您推荐适宜种植的农作物。</p>
      </div>
      <div v-else-if="aiLoading && weather" class="placeholder">
        <h2>AI推荐</h2>
        <p>AI推荐内容生成中，请稍候...</p>
      </div>
      <div v-else-if="aiSuggest.length">
        <div class="ai-suggest-card ai-suggest-white">
          <div class="el-card__body">
            <h3>AI推荐农作物</h3>
            <div v-for="(item, index) in aiSuggest" :key="index" class="suggest-item">
              <div class="suggest-title">{{ item.crop }}</div>
              <div class="suggest-reason">{{ item.reason }}</div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'WeatherQuery',
  data() {
    return {
      query: { city: '' },
      weather: null,
      aiSuggest: [],
      aiLoading: false // 新增，AI推荐生成中状态
    };
  },
  methods: {
    async fetchWeather() {
      if (!this.query.city) {
        this.$message.warning('请输入城市名称');
        return;
      }
      try {
        // 先通过高德API获取城市adcode
        const cityRes = await axios.get('https://restapi.amap.com/v3/config/district', {
          params: {
            key: 'fd6699c45dd8e1651be13b02f21f6a89',
            keywords: this.query.city,
            subdistrict: 0
          }
        });
        const adcode = cityRes.data.districts && cityRes.data.districts[0] && cityRes.data.districts[0].adcode;
        if (!adcode) {
          this.$message.error('未找到该城市，请检查名称');
          return;
        }
        // 查询天气
        const weatherRes = await axios.get('https://restapi.amap.com/v3/weather/weatherInfo', {
          params: {
            key: 'fd6699c45dd8e1651be13b02f21f6a89',
            city: adcode,
            extensions: 'base',
            output: 'JSON'
          }
        });
        const lives = weatherRes.data.lives;
        if (lives && lives.length > 0) {
          this.weather = lives[0];
          console.log('天气数据:', this.weather); // 移到赋值后
          this.getAISuggest();
        } else {
          this.weather = null;
          this.aiSuggest = [];
          this.$message.error('未查询到天气数据');
        }
      } catch (e) {
        this.$message.error('查询失败，请稍后重试');
      }
    },
    async getAISuggest() {
      if (!this.weather) return;
      this.aiSuggest = [];
      this.aiLoading = true; // 开始生成时设为true
      const weatherData = {
        city: this.weather.city,
        weather: this.weather.weather,
        temperature: this.weather.temperature,
        winddirection: this.weather.winddirection,
        windpower: this.weather.windpower,
        humidity: this.weather.humidity
      };
      try {
        const res = await axios.post('/system/crawler/aiSuggest', weatherData);
        // 直接展示AI返回的纯文本
        const aiText = res.data && res.data.msg ? res.data.msg : (res.data && res.data.data ? res.data.data : '');
        this.aiSuggest = [{ crop: 'AI推荐', reason: aiText }];
      } catch (e) {
        this.aiSuggest = [];
        this.$message.error('AI推荐服务异常');
      } finally {
        this.aiLoading = false; // 结束时设为false
      }
    }
  }
};
</script>

<style scoped>
.weather-query {
  max-width: 1200px;
  margin: 30px auto;
  height: 90vh;
  display: flex;
  flex-direction: column;
}
.weather-header-row {
  display: flex;
  flex-direction: row;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 18px;
}
.weather-header-left, .weather-header-right {
  flex: 1;
  display: flex;
  flex-direction: column;
  align-items: center;
  min-width: 0;
}
.weather-header-left {
  margin-right: 24px;
}
.header-title {
  font-size: 18px;
  font-weight: bold;
  margin-bottom: 8px;
  color: #409EFF;
  letter-spacing: 2px;
}
.gaode-logo-container {
  width: 220px;
  height: 120px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #f5f7fa;
  border-radius: 8px;
  box-shadow: 0 2px 8px #f0f1f2;
}
.gaode-logo-img {
  max-width: 180px;
  max-height: 80px;
  object-fit: contain;
}
.weather-header-right {
  margin-left: 24px;
}
.spark-logo-container {
  width: 220px;
  height: 120px;
  display: flex;
  align-items: center;
  justify-content: center;
  background: #f5f7fa;
  border-radius: 8px;
  box-shadow: 0 2px 8px #f0f1f2;
}
.spark-logo-img {
  max-width: 180px;
  max-height: 80px;
  object-fit: contain;
}
.weather-form-top {
  margin-bottom: 0;
  background: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 8px #f0f1f2;
  padding: 16px 32px 0 32px;
  z-index: 2;
}
.weather-top, .weather-bottom {
  flex: 1;
  min-height: 0;
  display: flex;
  flex-direction: column;
  justify-content: center;
  background: #fff;
  border-radius: 8px;
  margin-bottom: 16px;
  box-shadow: 0 2px 8px #f0f1f2;
  padding: 24px 32px;
}
.weather-bottom {
  margin-bottom: 0;
}
.placeholder {
  text-align: center;
  color: #aaa;
  margin: auto;
}
.weather-form { margin-bottom: 0; }
.weather-result { margin-top: 20px; }
.ai-suggest-card { background: #f8fff8; border-left: 4px solid #67c23a; }
.ai-suggest-white { background: #fff !important; border-left: 4px solid #67c23a; }
.suggest-item { margin-bottom: 10px; }
.suggest-title { font-weight: bold; }
::v-deep .el-table th.el-table__cell { background: #f5f7fa; color: #333; font-weight: bold; }
::v-deep .el-table .el-table__cell { font-size: 15px; }
</style>
