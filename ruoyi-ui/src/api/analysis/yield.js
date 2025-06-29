import request from '@/utils/request'

// 获取地图数据
export function getYieldMapData(crop, year) {
  return request({
    url: '/api/analysis/yield/mapData',
    method: 'get',
    params: { crop, year }
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
