<template>
  <div class="comment-container">
    <!-- 评论输入框 -->
    <div class="comment-input">
      <textarea v-model="newComment" placeholder="发表评论..." />
      <button @click="submitComment">提交评论</button>
    </div>
    <!-- 评论内容展示区 -->
    <div class="comment-content-list">
      <div class="comment-list-header">
        <span class="comment-list-title">评论
          <span class="comment-list-count-pink">{{ comments.length }}</span>
        </span>
      </div>
      <div v-for="comment in comments" :key="comment.id" class="comment-content-item">
        <div class="comment-content-header">
          <img class="comment-avatar" :src="comment.avatar ? comment.avatar : 'https://static.hdslb.com/images/favicon.ico'" alt="avatar" />
          <span class="comment-content-username">
            {{ comment.nickname ? comment.nickname : '*' }}
          </span>
          <span class="comment-content-time">{{ formatTime(comment.createdAt) }}</span>
        </div>
        <div class="comment-content-body">{{ comment.content }}</div>
        <div class="comment-content-actions">
          <span class="like-btn" @click="handleLike(comment)" :class="{ liked: comment.liked }">
            👍 <span>{{ comment.likeCount || comment.likes || 0 }}</span>
          </span>
          <span class="reply-btn" @click="showReplyBox(comment.id)">回复</span>
        </div>
        <div v-if="replyBoxVisible && replyTargetId === comment.id" class="reply-box">
          <textarea v-model="replyContent" placeholder="回复评论..." />
          <button @click="submitReply(comment.id)">提交回复</button>
          <button class="cancel-btn" @click="cancelReply">取消</button>
        </div>
        <div v-if="comment.replies && comment.replies.length" class="comment-reply-list">
          <div v-for="reply in comment.replies" :key="reply.id" class="comment-reply-item">
            <img class="comment-avatar" :src="reply.avatar ? reply.avatar : 'https://static.hdslb.com/images/favicon.ico'" alt="avatar" />
            <span class="comment-reply-username">
              {{ reply.nickname ? reply.nickname : '*' }}
            </span>
            <span class="comment-reply-time">{{ formatTime(reply.createdAt) }}</span>
            <span class="comment-reply-content">{{ reply.content }}</span>
            <span class="like-btn" @click="handleLike(reply)" :class="{ liked: reply.liked }">
              👍 <span>{{ reply.likeCount || reply.likes || 0 }}</span>
            </span>
            <span class="reply-btn" @click="showReplyBox(reply.id)">回复</span>
            <div v-if="replyBoxVisible && replyTargetId === reply.id" class="reply-box">
              <textarea v-model="replyContent" placeholder="回复评论..." />
              <button @click="submitReply(reply.id)">提交回复</button>
              <button class="cancel-btn" @click="cancelReply">取消</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import { getComments, addComment, addReply, likeComment } from "@/api/comment/comment";

export default {
  data() {
    return {
      comments: [],
      newComment: "",
      likeLoading: false,
      replyBoxVisible: false,
      replyTargetId: null,
      replyContent: ""
    };
  },
  methods: {
    async fetchComments() {
      const res = await getComments();
      // 兼容后端返回数组或对象
      if (Array.isArray(res)) {
        this.comments = this.formatComments(res);
      } else if (Array.isArray(res.data)) {
        this.comments = this.formatComments(res.data);
      }
    },
    formatComments(list) {
      // 递归分组，主评论parentId为null，回复parentId为主评论id
      const map = {};
      const userMap = {};
      const roots = [];
      // 先建立userId到nickname/avatar的映射
      list.forEach(item => {
        if (item.userId) {
          userMap[item.userId] = userMap[item.userId] || { nickname: item.nickname, avatar: item.avatar };
        }
      });
      list.forEach(item => {
        item.replies = [];
        map[item.id] = item;
      });
      list.forEach(item => {
        // 让每个item都强制带上userMap映射的nickname/avatar
        if (item.userId && userMap[item.userId]) {
          item.nickname = userMap[item.userId].nickname;
          item.avatar = userMap[item.userId].avatar;
        }
        if (item.parentId) {
          if (map[item.parentId]) {
            map[item.parentId].replies.push(item);
          }
        } else {
          roots.push(item);
        }
      });
      return roots;
    },
    async submitComment() {
      if (!this.newComment.trim()) return;
      // 假设登录用户id存储在localStorage.userId
      const userId = localStorage.getItem('userId');
      await addComment(this.newComment, userId);
      this.newComment = "";
      await this.fetchComments();
    },
    showReplyBox(targetId) {
      this.replyBoxVisible = true;
      this.replyTargetId = targetId;
      this.replyContent = "";
    },
    cancelReply() {
      this.replyBoxVisible = false;
      this.replyTargetId = null;
      this.replyContent = "";
    },
    async submitReply(parentId) {
      if (!this.replyContent.trim()) return;
      const userId = localStorage.getItem('userId');
      await addReply(this.replyContent, parentId, userId);
      this.replyContent = "";
      this.replyBoxVisible = false;
      this.replyTargetId = null;
      await this.fetchComments();
    },
    async handleLike(item) {
      if (this.likeLoading) return;
      this.likeLoading = true;
      try {
        await likeComment(item.id);
        await this.fetchComments();
      } finally {
        this.likeLoading = false;
      }
    },
    formatTime(timestamp) {
      if (!timestamp) return '';
      const date = new Date(timestamp);
      return `${date.getFullYear()}-${date.getMonth() + 1}-${date.getDate()} ${date.getHours()}:${date.getMinutes()}`;
    }
  },
  created() {
    this.fetchComments();
  }
};
</script>

<style scoped>
.comment-container {
  padding: 40px 0;
  max-width: 980px;
  margin: 0 auto;
}
.comment-input {
  margin-bottom: 30px;
  background: #ffe4ec; /* 粉色 */
  border-radius: 8px;
  box-shadow: 0 2px 8px rgba(0,0,0,0.07);
  padding: 24px 24px 16px 24px;
  border: 1px solid #f8b6d2;
}
.comment-input textarea {
  width: 100%;
  height: 100px;
  padding: 14px;
  font-size: 16px;
  border: 1px solid #ddd;
  border-radius: 6px;
  resize: vertical;
  margin-bottom: 10px;
  background: #fff0f6;
}
.comment-input button {
  background-color: #409eff;
  color: white;
  border: none;
  padding: 8px 28px;
  font-size: 16px;
  border-radius: 6px;
  cursor: pointer;
  transition: background 0.2s;
}
.comment-input button:hover {
  background-color: #3076c9;
}
.comment-content-list {
  margin-bottom: 30px;
  color: #333;
  max-height: 600px;
  min-height: 300px;
  overflow-y: auto;
  background: #e6f0ff; /* 蓝色 */
  border-radius: 8px;
  border: 1px solid #b3d1ff;
  padding: 24px;
  box-shadow: 0 2px 8px rgba(0,0,0,0.04);
}
.comment-list-header {
  display: flex;
  justify-content: center;
  align-items: flex-start;
  margin-bottom: 16px;
  position: relative;
}
.comment-list-title {
  font-size: 18px;
  font-weight: bold;
  color: #222;
  flex: 1;
  text-align: center;
  position: relative;
  display: inline-block;
}
.comment-list-count-pink {
  display: inline-block;
  background: #ffb6d5;
  color: #ff4081;
  border-radius: 50%;
  font-size: 12px;
  font-weight: bold;
  min-width: 18px;
  height: 18px;
  line-height: 18px;
  text-align: center;
  position: absolute;
  top: -8px;
  right: -14px;
  margin-left: 0;
  vertical-align: top;
  box-shadow: 0 2px 6px rgba(255,182,213,0.15);
  border: 2px solid #fff0f6;
}
.comment-content-item {
  background: #fff;
  border-radius: 8px;
  box-shadow: 0 2px 4px rgba(0,0,0,0.04);
  margin-bottom: 20px;
  padding: 18px 18px 12px 18px;
  border: 1px solid #f0f0f0;
  min-width: 60px;
  min-height: 60px;
  color: #1677ff;
}
.comment-content-header {
  display: flex;
  align-items: center;
  margin-bottom: 10px;
}
.comment-avatar {
  width: 32px;
  height: 32px;
  border-radius: 50%;
  margin-right: 10px;
  vertical-align: middle;
  background: #fff;
  border: 1px solid #eee;
}
.comment-content-username {
  font-weight: bold;
  color: #222;
  margin-right: 14px;
  font-size: 16px;
}
.comment-content-time {
  font-size: 13px;
  color: #aaa;
}
.comment-content-body {
  font-size: 15px;
  color: #333;
  line-height: 1.7;
  margin-bottom: 6px;
}
.comment-content-actions {
  margin-top: 8px;
  font-size: 14px;
}
.like-btn {
  cursor: pointer;
  color: #888;
  margin-right: 18px;
  user-select: none;
  transition: color 0.2s;
}
.like-btn.liked {
  color: #ff6699;
  font-weight: bold;
}
.reply-btn {
  cursor: pointer;
  color: #409eff;
  margin-right: 10px;
  user-select: none;
}
.reply-box {
  margin: 10px 0 10px 0;
  background: #fff0f6;
  border-radius: 6px;
  padding: 12px;
  border: 1px solid #f8b6d2;
}
.reply-box textarea {
  width: 100%;
  height: 60px;
  padding: 8px;
  font-size: 14px;
  border: 1px solid #ddd;
  border-radius: 4px;
  resize: vertical;
  margin-bottom: 8px;
  background: #fff;
}
.reply-box button {
  background-color: #409eff;
  color: white;
  border: none;
  padding: 4px 16px;
  font-size: 14px;
  border-radius: 4px;
  cursor: pointer;
  margin-right: 8px;
}
.reply-box .cancel-btn {
  background: #eee;
  color: #888;
}
.comment-reply-list {
  margin-top: 12px;
  padding-left: 24px;
  border-left: 2px solid #f0f0f0;
}
.comment-reply-item {
  margin-bottom: 10px;
  font-size: 14px;
  color: #666;
}
.comment-reply-item-wrapper {
  position: relative;
}
.child-reply-list {
  margin-left: 40px;
  margin-top: 4px;
  border-left: 2px solid #ffe4ec;
  padding-left: 16px;
}
.comment-reply-item .comment-avatar {
  width: 24px;
  height: 24px;
  margin-right: 6px;
}
.comment-reply-username {
  font-weight: bold;
  color: #888;
  margin-right: 8px;
}
.comment-reply-time {
  font-size: 12px;
  color: #bbb;
  margin-right: 8px;
}
.comment-reply-content {
  color: #444;
}
</style>
