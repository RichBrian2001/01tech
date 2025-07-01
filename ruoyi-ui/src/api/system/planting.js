import request from '@/utils/request'

// 获取指定年份的农作物种植数据
export function getPlantingDataByYear(year) {
  return request({
    url: '/system/planting/data/' + year,
    method: 'get'
  })
}
