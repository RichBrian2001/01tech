import request from '@/utils/request'

// 获取地图数据
export function getYieldMapData(crop, year) {
  return request({
    url: '/api/analysis/yield/mapData',
    method: 'get',
    params: {
      crop,
      year
    }
  })
}

// 获取平均产量数据
export function getAverageYield(crop, year, province) {
  return request({
    url: '/api/analysis/yield/averageYield',
    method: 'get',
    params: {
      crop,
      year,
      province
    }
  })
}

// 获取历年产量数据
export function getYieldHistory(crop, startYear, endYear, province) {
  return request({
    url: '/api/analysis/yield/history',
    method: 'get',
    params: {
      crop,
      startYear,
      endYear,
      province
    }
  })
}
