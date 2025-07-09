package com.ruoyi.web.controller.system;

import com.ruoyi.system.domain.Comment;
import com.ruoyi.system.service.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/system/comment")
public class CommentController {

    @Autowired
    private ICommentService commentService;

    /**
     * 获取评论列表
     */
    @GetMapping("/list")
    public List<Comment> list() {
        // 使用固定的 postId
        Long postId = 12345L;  // 或者从数据库/全局状态中获取
        return commentService.getCommentsByPostId(postId);
    }

    /**
     * 发布评论
     * @param comment 评论内容
     */
    @PostMapping("/add")
    public Comment addComment(@RequestBody Comment comment) {
        return commentService.addComment(comment);
    }

    /**
     * 发布回复
     * @param reply 回复内容
     */
    @PostMapping("/reply")
    public Comment addReply(@RequestBody Comment reply) {
        return commentService.addReply(reply);
    }

    /**
     * 点赞评论
     * @param commentId 评论ID
     */
    @PostMapping("/like/{commentId}")
    public void likeComment(@PathVariable Long commentId) {
        commentService.likeComment(commentId);
    }
}
