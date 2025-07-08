// 农作物生长周期数据（月份）
export const cropGrowthCycles = {
  '小麦': {
    sowingPeriod: [9, 10], // 播种期
    growthPeriod: [11, 12, 1, 2, 3, 4], // 生长期
    maturityPeriod: [5, 6] // 成熟期
  },
  '玉米': {
    sowingPeriod: [4, 5],
    growthPeriod: [6, 7, 8],
    maturityPeriod: [9]
  },
  '水稻': {
    sowingPeriod: [4, 5],
    growthPeriod: [6, 7, 8],
    maturityPeriod: [9, 10]
  },
  '大豆': {
    sowingPeriod: [5, 6],
    growthPeriod: [7, 8],
    maturityPeriod: [9, 10]
  },
  '甘蔗': {
    sowingPeriod: [2, 3],
    growthPeriod: [4, 5, 6, 7, 8, 9, 10],
    maturityPeriod: [11, 12, 1]
  },
  '高粱': {
    sowingPeriod: [4, 5],
    growthPeriod: [6, 7, 8],
    maturityPeriod: [9]
  },
  '谷子': {
    sowingPeriod: [5, 6],
    growthPeriod: [7, 8],
    maturityPeriod: [9]
  },
  '花生': {
    sowingPeriod: [4, 5],
    growthPeriod: [6, 7, 8],
    maturityPeriod: [9]
  },
  '马铃薯': {
    sowingPeriod: [3, 4],
    growthPeriod: [5, 6, 7],
    maturityPeriod: [8, 9]
  },
  '棉花': {
    sowingPeriod: [3, 4],
    growthPeriod: [5, 6, 7, 8],
    maturityPeriod: [9, 10]
  },
  '烟叶': {
    sowingPeriod: [3, 4],
    growthPeriod: [5, 6, 7],
    maturityPeriod: [8, 9]
  }
};

// 农作物种植推荐信息
export const cropRecommendations = {
  '小麦': {
    recommendMonths: '9-10月',
    suitableRegions: '华北平原（河北、山东、河南）、长江中下游平原（江苏、安徽）等地区',
    description: '小麦适宜在秋季播种，主要在9-10月份进行。华北平原土壤肥沃、光照充足，适合小麦生长。建议在降雨后即时播种，以保证出苗整齐。'
  },
  '玉米': {
    recommendMonths: '4-5月',
    suitableRegions: '东北平原（黑龙江、吉林）、华北平原（河北、山东）等地区',
    description: '玉米适宜在春季播种，主要在4-5月份进行。东北地区光照充足、昼夜温差大，有利于玉米生长。注意播种深度控制在3-5厘米为宜。'
  },
  '水稻': {
    recommendMonths: '4-5月',
    suitableRegions: '长江流域（湖南、江西）、东南沿海（浙江、广东）等地区',
    description: '水稻适宜在春季播种，主要在4-5月份进行。长江流域降水充沛，温度适宜，非常适合水稻种植。建议采用科学育秧方法，培育壮秧。'
  },
  '大豆': {
    recommendMonths: '5-6月',
    suitableRegions: '东北平原（黑龙江、吉林）、黄淮海平原（河南、山东）等地区',
    description: '大豆适宜在晚春初夏播种，主要在5-6月份进行。东北地区气候凉爽，光照充足，特别适合大豆生长。播种时注意选择适宜品种。'
  },
  '甘蔗': {
    recommendMonths: '2-3月',
    suitableRegions: '华南地区（广西、云南）、西南地区（四川）等地区',
    description: '甘蔗适宜在早春播种，主要在2-3月份进行。华南地区气候温暖湿润，非常适合甘蔗生长。建议选用优质蔗种，确保种植质量。'
  },
  '高粱': {
    recommendMonths: '4-5月',
    suitableRegions: '东北地区（辽宁）、西北地区（陕西、甘肃）等地区',
    description: '高粱适宜在春季播种，主要在4-5月份进行。西北地区光照充足，昼夜温差大，适合高粱生长。注意控制适宜的播种密度。'
  },
  '谷子': {
    recommendMonths: '5-6月',
    suitableRegions: '北方旱地区域（内蒙古、山西）等地区',
    description: '谷子适宜在晚春播种，主要在5-6月份进行。北方旱地区域降水较少，但谷子抗旱性强，适合在这些地区种植。'
  },
  '花生': {
    recommendMonths: '4-5月',
    suitableRegions: '山东半岛、河南省等地区',
    description: '花生适宜在春季播种，主要在4-5月份进行。山东、河南等地土壤疏松，排水良好，适合花生生长。注意播种前进行种子处理。'
  },
  '马铃薯': {
    recommendMonths: '3-4月',
    suitableRegions: '西南高原（云南、贵州）、甘肃定西等地区',
    description: '马铃薯适宜在早春播种，主要在3-4月份进行。西南高原气候凉爽，昼夜温差大，特别适合马铃薯生长。'
  },
  '棉花': {
    recommendMonths: '3-4月',
    suitableRegions: '黄河流域（山东、河南）、西北地区（新疆）等地区',
    description: '棉花适宜在春季播种，主要在3-4月份进行。西北地区光照充足，昼夜温差大，适合棉花生长。建议采用地膜覆盖种植技术。'
  },
  '烟叶': {
    recommendMonths: '3-4月',
    suitableRegions: '云贵高原（云南、贵州）、山东等地区',
    description: '烟叶适宜在早春播种，主要在3-4月份进行。云贵高原气候适宜，光照充足，特别适合优质烟叶生长。建议采用大棚育苗技术。'
  }
};
