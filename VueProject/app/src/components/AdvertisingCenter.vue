<template>
  <div class="AdvertisingCenter" v-if="!this.$store.state.a.isLogin">
    <!-- 打开首页，页面中央弹出广告组件 -->
    <div
      tabindex="-1"
      role="dialog"
      aria-modal="true"
      aria-label="HTML 片段"
      class="el-message-box__wrapper"
      style="z-index: 2001;"
      :class="{clickStyle:1==choosedMovie}"
    >
      <div class="el-message-box__header">
        <button type="button" aria-label="Close" class="el-message-box__headerbtn">
          <i class="el-message-box__close el-icon-close" @click="close()"></i>
        </button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      choosedMovie: 1
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
    },
    toshow() {
      setTimeout(() => {
        this.choosedMovie = -1;
      }, 10000);
    }
  },
  created() {
    this.toshow();
  }
};
</script>
<style scoped>
.el-message-box__wrapper {
  width: 600px;
  height: 260px;
  margin: 170px auto 0px;
  background-color: #faebd7;
  line-height: 260px;
  background-image: url(https://static.paixin.com/paixin-vision/static/img/banner1.4997457.png);
}

.clickStyle {
  display: none;
}
</style>
