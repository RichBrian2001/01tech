import request from '@/utils/request'

// 获取价格数据
export function getPriceData() {
  return request({
    url: '/system/crawler/price',
    method: 'get'
  })
}

// 手动触发爬虫
export function runCrawler() {
  return request({
    url: '/system/crawler/run',
    method: 'post'
  })
}
