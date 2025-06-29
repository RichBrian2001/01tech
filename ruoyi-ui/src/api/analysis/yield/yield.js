import request from '@/utils/request'

export function getYieldMapData(crop, year) {
  return request({
    url: '/api/analysis/yield/mapData',
    method: 'get',
    params: { crop, year }
  })
}
