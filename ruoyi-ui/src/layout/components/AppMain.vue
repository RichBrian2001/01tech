<template>
  <section class="app-main">
    <keep-alive>
      <router-view :key="!$route.path.includes('/analysis/price') ? $route.path : 'PriceAnalysis'" />
    </keep-alive>
  </section>
</template>

<script>
export default {
  name: 'AppMain',
  data() {
    return {
      refreshFlag: false
    }
  },
  beforeRouteUpdate(to, from, next) {
    if (to.path.includes('/analysis/price')) {
      this.refreshFlag = false
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
