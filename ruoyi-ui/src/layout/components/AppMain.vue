<template>
  <section class="app-main">
    <keep-alive :include="cachedViews">
      <router-view :key="key" v-if="!$route.meta.link" />
    </keep-alive>
    <router-view v-if="$route.meta.link" />
  </section>
</template>

<script>
import { mapGetters } from 'vuex'

export default {
  name: 'AppMain',
  computed: {
    ...mapGetters([
      'cachedViews'
    ]),
    key() {
      // 特殊处理需要缓存的页面
      const specialRoutes = ['/analysis/price', '/news']
      if (specialRoutes.some(route => this.$route.path.includes(route))) {
        return this.$route.name || this.$route.path
      }
      return this.$route.path
    }
  },
  beforeRouteUpdate(to, from, next) {
    // 如果是爬虫相关页面，不触发刷新
    if (to.path.includes('/analysis/price') || to.path.includes('/news')) {
      to.meta.keepAlive = true
    }
    next()
  }
}
</script>

<style lang="scss" scoped>
.app-main {
  /* 50= navbar  50  */
  min-height: calc(100vh - 50px);
  width: 100%;
  position: relative;
  overflow: hidden;
}

.app-main:has(.copyright) {
  padding-bottom: 36px;
}

.fixed-header + .app-main {
  padding-top: 50px;
}

.hasTagsView {
  .app-main {
    /* 84 = navbar + tags-view = 50 + 34 */
    min-height: calc(100vh - 84px);
  }

  .fixed-header + .app-main {
    padding-top: 84px;
  }
}

.fade-transform-enter-active,
.fade-transform-leave-active {
  transition: all .5s;
}
</style>

<style lang="scss">
// fix css style bug in open el-dialog
.el-popup-parent--hidden {
  .fixed-header {
    padding-right: 6px;
  }
}

::-webkit-scrollbar {
  width: 6px;
  height: 6px;
}

::-webkit-scrollbar-track {
  background-color: #f1f1f1;
}

::-webkit-scrollbar-thumb {
  background-color: #c0c0c0;
  border-radius: 3px;
}
</style>
