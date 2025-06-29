import request from '@/utils/request'

export function getYieldMapData(province, year) {
  return request({
    url: '/api/analysis/yield/mapData',
    method: 'get',
    params: { province, year }
  })
}

export function getAverageYield(crop, year) {
  return request({
    url: '/api/analysis/yield/averageYield',
    method: 'get',
    params: { crop, year }
  })
}
