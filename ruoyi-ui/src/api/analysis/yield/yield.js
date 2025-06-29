import request from '@/utils/request'

export function getYieldMapData(year) {
  return request({
    url: '/api/analysis/yield/mapData',
    method: 'get',
    params: { year }
  })
}
