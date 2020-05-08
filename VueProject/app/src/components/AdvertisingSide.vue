<template>
  <div class="AdvertisingSide" v-if="!this.$store.state.a.isLogin">
    <!-- 侧边悬停广告，点击“X”关闭-->
    <div
      role="alert"
      class="el-notification right"
      style="top: 16px; z-index: 2002;"
      :class="{clickStyle:1==choosedMovie}"
    >
      <!---->
      <div class="el-notification__group">
        <div class="el-notification__closeBtn el-icon-close" @click="close()"></div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      choosedMovie: -1
    };
  },
  methods: {
    close() {
      this.choosedMovie = 1;
      this.$notify({
        title: "提示",
        message: "登录后可永久关闭广告",
        type: "success"
      });
    }
  }
};
</script>
<style scoped>
.el-notification {
  width: 219px;
  height: 218px;
  background-size: cover;
  background-color: transparent;
  background-image: url(../assets/Advertising.png);
  border: 1px solid transparent;
  box-shadow: 0 0px 0px 0 transparent;
  margin-top: 145px;
}
.clickStyle {
  display: none;
}
</style>
