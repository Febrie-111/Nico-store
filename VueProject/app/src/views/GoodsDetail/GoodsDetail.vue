<template>
  <div class="mybox">
    <el-row>
      <el-col :span="12">{{goodsInfo.name}}</el-col>
      <el-col :span="12">
        <div class="itemID">素材ID--{{goodsInfo.id}}</div>
        <div class="item-other">
          <span style="color:#9999B3;font-weight: 400;">该作品可用于</span> 个人/企业商业用途
          <el-divider></el-divider>
        </div>
      </el-col>
    </el-row>
    <el-row>
      <el-col :span="12">
        <el-image style="width: 95%; height: 400px" :src="url" :preview-src-list="srcList"></el-image>
        <el-row><el-col :span="18">{{goodsInfo.describes}}</el-col> <el-col :span="4" style="color:red">关键词：{{goodsInfo.keywords}}</el-col></el-row>
      </el-col>
      <el-col :span="12" class="switch">
        <div
          @click="choosed=1"
          :class="{isClick:1==choosed}"
          style="display: inline-block;
  margin-right: 10px;
      font-size: 18px;
    font-weight: 500;
    color: balck;
    line-height: 25px;
    display: inline-block;
    cursor: pointer;"
        >标准授权</div>
        <el-row class="chossed1">
          <el-col :span="8">
            <el-radio v-model="radio" label="1" style="display:block;">大图</el-radio>
          </el-col>
          <el-col :span="8">7360 x 4912px / jpg</el-col>
          <el-col :span="8" style="color:red">套餐价格：&yen;{{goodsInfo.price}}</el-col>
        </el-row>
        <el-row class="chossed2">
          <el-col :span="8">
            <el-radio v-model="radio" label="2" style="display:block;">中图</el-radio>
          </el-col>
          <el-col :span="8">1000 x 667px / jpg</el-col>
          <el-col :span="8" style="color:red">套餐价格：&yen;{{goodsInfo.price}}</el-col>
        </el-row>
        <el-row class="foot">
          <el-col :span="18">
            <div class="block">
              <span class="demonstration">期待您的评价</span>
              <el-rate v-model="value1"></el-rate>
            </div>
          </el-col>
          <el-col :span="6"><el-button @click="addCar" type="primary">加入购物车</el-button></el-col>
        </el-row>
      </el-col>
    </el-row>
  </div>
</template>

<script>
export default {
  data() {
    return {
      goodsInfo: "",
      url: "",
      srcList: [""],
      choosed: 1,
      value1: null,
      radio: "1",
    };
  },
  props: ["mygoodsInfo"],
  created() {
    // console.log(this.mygoodsInfo,666666)
    this.goodsInfo = this.mygoodsInfo; //父组件传值给子组件并绑定DATA
    this.url = this.mygoodsInfo.src;
    let arr = [];
    arr.push(this.url);
    this.srcList = arr;
  },
  watch: {
    mygoodsInfo: function(newVal, oldVal) {
      //不能用箭头函数
      this.goodsInfo = newVal;
      this.url = this.goodsInfo.src;
      let arr = [];
      arr.push(this.url);
      this.srcList = arr;
      this.value1=null;
    }
  },
  methods: {
    addCar(){
      if (this.$store.state.a.isLogin) {
          this.axios
            .get(
              `http://127.0.0.1:7001/AddToCar?itemID=${this.goodsInfo.id}&userName=${this.$store.state.a.userName}&type=${this.goodsInfo.type}`
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
      })
      }else {
        this.$message({
          message: "请登录",
          type: "warning"
        });
      }
    }
  },
};
</script>

<style scoped>
.mybox {
  width: 80%;
  margin: 0 auto;
}
.itemID {
  font-weight: 600;
}
.item-other {
  color: #333333;
  font-weight: bolder;
}
.isClick {
  color: red;
}
.chossed1 {
  width: 100%;
  background-color: #f8f8f8;
  padding: 50px;
  margin: 15px auto;
}
.chossed2 {
  width: 100%;
  background-color: #f8f8f8;
  padding: 50px;
}
.el-radio__label {
  font-size: 20px;
}
.foot{
  margin: 20px;
}
</style>
