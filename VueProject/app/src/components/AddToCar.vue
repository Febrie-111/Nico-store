<template>
  <i class="el-icon-shopping-cart-1" @click="switch1"></i>
</template>
<script>
export default {
  name: "AddToCar",
  data() {
    return {
      isClick: "el-icon-star-off",
    };
  },
  props: ["id","type"],
  methods: {
    switch1() {
      if (this.$store.state.a.isLogin) {
        if (this.isClick == "el-icon-star-off") {
          this.isClick = "el-icon-star-on";
          this.axios
            .get(
              `http://127.0.0.1:7001/AddToCar?itemID=${this.id}&userName=${this.$store.state.a.userName}&type=${this.type}`
            )
            .then(res => {
              if (res.data.code == 2000) {
                this.$message({
                  message: res.data.info,
                  type: "success"
                });
              }else if(res.data.code==4005){
                   this.$message.error(res.data.info);
              }
            });
        } else if (this.isClick == "el-icon-star-on") {
          this.isClick = "el-icon-star-off";
        }
      } else {
        this.$message({
          message: "请登录",
          type: "warning"
        });
      }
    }
  }
};
</script>
<style scoped>
i {
  width: 100%;
  font-size: 30px;
  position: absolute;
  bottom: 0;
  right: 0;
  background: linear-gradient(
    -180deg,
    rgba(0, 0, 0, 0) 0,
    rgba(0, 0, 0, 0.9) 100%
  );
}
.el-icon-shopping-cart-1 {
  color: white;
  cursor: pointer;
}
</style>