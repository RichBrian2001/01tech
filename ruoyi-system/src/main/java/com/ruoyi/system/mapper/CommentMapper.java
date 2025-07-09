package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.Comment;

import java.util.List;

public interface CommentMapper {
    // 原有方法保持不变
    List<Comment> selectCommentList(Comment comment);
    Comment selectCommentById(Long id);
    int insertComment(Comment comment);
    int updateComment(Comment comment);
    int deleteCommentById(Long id);
    int deleteCommentByIds(Long[] ids);

    // 新增评论功能专用方法
    /**
     * 根据文章ID查询评论列表
     */
    List<Comment> selectCommentsByPostId(Long postId);

    /**
     * 点赞评论
     */
    int likeComment(Long commentId);

    /**
     * 新增评论（与原有insertComment区别在于返回值）
     */
    int insert(Comment comment);
}