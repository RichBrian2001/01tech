import request from '@/utils/request';

export function getNews1() {
    return request({
        url: '/news/getNews1',
        method: 'get'
    }).then(response => response.data);
}

export function getNews2() {
    return request({
        url: '/news/getNews2',
        method: 'get'
    }).then(response => response.data);
}

export function getNews3() {
    return request({
        url: '/news/getNews3',
        method: 'get'
    }).then(response => response.data);
}

export function getNews4() {
    return request({
        url: '/news/getNews4',
        method: 'get'
    }).then(response => response.data);
}

export function getNews5() {
    return request({
        url: '/news/getNews5',
        method: 'get'
    }).then(response => response.data);
}

export function fetchNewsFromPythonAPI() {
    return request({
        url: '/news/fetchPythonNews',
        method: 'get'
    });
}

export function runPythonScript() {
    return request({
        url: '/news/runPythonScript',
        method: 'get'
    }).then(response => response.data);
}

