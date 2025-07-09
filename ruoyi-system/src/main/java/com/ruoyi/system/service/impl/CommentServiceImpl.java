package com.ruoyi.system.service.impl;

import com.ruoyi.system.domain.Comment;
import com.ruoyi.system.mapper.CommentMapper;
import com.ruoyi.system.service.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 评论服务实现
 */
@Service
public class CommentServiceImpl implements ICommentService {

    @Autowired
    private CommentMapper commentMapper;

    @Override
    public List<Comment> getCommentsByPostId(Long postId) {
        // 如果postId为null，则查所有评论
        if (postId == null) {
            return commentMapper.selectCommentList(new Comment());
        }
        return commentMapper.selectCommentsByPostId(postId);
    }

    @Override
    @Transactional
    public Comment addComment(Comment comment) {
        // 设置默认值
        if (comment.getLikes() == null) {
            comment.setLikes(0);
        }
        // 如果userId为null，设置为0（匿名用户）
        if (comment.getUserId() == null) {
            comment.setUserId(0L);
        }
        // 如果createdAt为null，设置为当前时间
        if (comment.getCreatedAt() == null) {
            comment.setCreatedAt(new java.util.Date());
        }
        commentMapper.insert(comment);
        return comment;
    }

    @Override
    @Transactional
    public Comment addReply(Comment reply) {
        if (reply.getParentId() == null) {
            throw new IllegalArgumentException("回复必须指定父评论ID");
        }
        // 设置默认值
        if (reply.getLikes() == null) {
            reply.setLikes(0);
        }
        // 如果userId为null，设置为0（匿名用户）
        if (reply.getUserId() == null) {
            reply.setUserId(0L);
        }
        commentMapper.insert(reply);
        return reply;
    }

    @Override
    @Transactional
    public void likeComment(Long commentId) {
        Comment comment = commentMapper.selectCommentById(commentId);
        if (comment == null) {
            throw new RuntimeException("评论不存在: " + commentId);
        }
        commentMapper.likeComment(commentId);
    }
}