<template>
  <div id="app">
    <keep-alive :include="cachedViews">
      <router-view v-if="$route.meta.keepAlive" />
    </keep-alive>
    <router-view v-if="!$route.meta.keepAlive" />
    <theme-picker />
  </div>
</template>

<script>
import ThemePicker from "@/components/ThemePicker"
import { mapGetters } from 'vuex'

export default {
  name: "App",
  components: { ThemePicker },
  computed: {
    ...mapGetters([
      'cachedViews'
    ])
  }
}
</script>
<style scoped>
#app .theme-picker {
  display: none;
}
</style>
