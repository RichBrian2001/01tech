import request from '@/utils/request'
import { Message } from 'element-ui'

/**
 * 获取评论列表
 */
export function getComments() {
  return request({
    url: '/system/comment/list', // 无需 postId
    method: 'get'
  }).catch(error => {
    Message.error('获取评论失败: ' + error.message);
    throw error;
  });
}

/**
 * 添加评论
 * @param {string} content - 评论内容
 * @param {number|string} userId - 用户ID
 */
export function addComment(content, userId) {
  return request({
    url: '/system/comment/add',
    method: 'post',
    data: {
      content,
      userId, // 传递用户id
      postId: 12345  // 强制传12345，保证能查到
    }
  }).catch(error => {
    Message.error('提交评论失败: ' + error.message);
    throw error;
  });
}

/**
 * 添加回复
 * @param {string} content - 回复内容
 * @param {number|string} parentId - 父评论ID
 * @param {number|string} userId - 用户ID
 */
export function addReply(content, parentId, userId) {
  return request({
    url: '/system/comment/reply',
    method: 'post',
    data: {
      content,
      parentId,
      userId, // 传递用户id
      postId: 12345 // 强制传12345
    }
  }).catch(error => {
    Message.error('提交回复失败: ' + error.message);
    throw error;
  });
}

/**
 * 点赞评论
 * @param {number|string} commentId - 评论ID
 */
export function likeComment(commentId) {
  return request({
    url: `/system/comment/like/${commentId}`,
    method: 'post'
  }).catch(error => {
    Message.error('点赞失败: ' + error.message);
    throw error;
  });
}
