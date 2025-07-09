package com.ruoyi.system.service;

import com.ruoyi.system.domain.Comment;

import java.util.List;

public interface ICommentService {
    List<Comment> getCommentsByPostId(Long postId);
    Comment addComment(Comment comment);
    Comment addReply(Comment reply);
    void likeComment(Long commentId);
}
