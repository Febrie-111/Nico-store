<template>
  <div>
    <div class="shopping-car" v-if="emptyCar">
      <el-row class="car-head">
        <el-col :span="4">
          <el-checkbox v-model="checkAll" @change="selectAll">全选</el-checkbox>
        </el-col>
        <el-col :span="10">商品</el-col>
        <el-col :span="2">单价</el-col>
        <el-col :span="2" class="text-center">数量</el-col>
        <el-col :span="2" :offset="2">小计</el-col>
        <el-col :span="1">操作</el-col>
      </el-row>
      <el-row class="car-body" v-for="(item,index) in arr" :key="index">
        <el-col :span="2">
          <el-checkbox v-model="item.isSelected"></el-checkbox>
        </el-col>
        <el-col :span="12">
          <el-col :span="7" :offset="3">
            <router-link :to="{name:'GoodsDetail', query:{ message:JSON.stringify(item)}}">
              <img :src="item.src" alt />
            </router-link>
          </el-col>
          <el-col :span="4" :offset="2">
            <router-link :to="{name:'GoodsDetail', query:{ message:JSON.stringify(item)}}">{{item.name}}</router-link>
          </el-col>
        </el-col>
        <el-col :span="2">&yen;{{item.price}}</el-col>
        <el-col :span="4">
          <el-input-number
            v-model="item.amount"
            @change="handleChange"
            :min="1"
            :max="50"
            label="描述文字"
            size="mini"
          ></el-input-number>
        </el-col>
        <el-col :span="2">{{ item.amount * item.price | fixed() }}</el-col>
        <el-col :span="1">
          <el-button type="danger" icon="el-icon-delete" circle @click="removeItem(index)"></el-button>
        </el-col>
      </el-row>
      <el-row class="car-footer">
        <el-col :span="8">
          <el-button type="danger" circle @click="removeAll">删除选中商品</el-button>
        </el-col>
        <el-col :span="14">总价:{{summary}}</el-col>
        <el-col :span="2">
          <el-button type="primary" round>去结算</el-button>
        </el-col>
      </el-row>
    </div>
    <div class="emptyCar" v-if="!emptyCar">
      <div class="info" style="position: relative; top:460px;left:-600px;">购物车空空如也(⊙﹏⊙)</div>
      <router-link to="/" style="color:red;font-size:26px;position: relative; top:520px;left:-615px;">(>▽<)&nbsp;现在就去购物吧</router-link>
    </div>
  </div>
</template>
<script>
export default {
  filters: {
    fixed(value, num) {
      return "￥" + value.toFixed(num) + "元";
    }
  },
  data() {
    return {
      checkAll: false,
      isIndeterminate: true,
      arr: [],
      emptyCar: true
    };
  },
  methods: {
    handleChange(value) {
      console.log(value);
    },
    selectAll() {
      //forEach() 遍历数组 将所有的
      this.arr.forEach(item => {
        item.isSelected = this.checkAll; //将 数组内数据的 所有复选框的状态 定义成全选框状态
      });
    },
    removeItem(index) {
      this.$confirm("确定将该商品移出购物车吗, 是否继续?", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      })
        .then(() => {
          if(index==0){
              this.axios
            .get(
              `http://127.0.0.1:7001/RemoveItem?userName=${this.$store.state.a.userName}&itemID=${this.arr[index].id}`
            )
            .then(res => {
              this.$message({
                type: "success",
                message: "删除成功!"
              });
              this.arr.shift();
            });
          }else if(index==this.arr.length-1){
             
              this.axios
            .get(
              `http://127.0.0.1:7001/RemoveItem?userName=${this.$store.state.a.userName}&itemID=${this.arr[index].id}`
            )
            .then(res => {
              this.$message({
                type: "success",
                message: "删除成功!"
              }); this.arr.pop();
            });
          }else{
          this.arr.splice(index, 1);
          //从下标index开始删除products数组的1条数据
          this.axios
            .get(
              `http://127.0.0.1:7001/RemoveItem?userName=${this.$store.state.a.userName}&itemID=${this.arr[index].id}`
            )
            .then(res => {
              this.$message({
                type: "success",
                message: "删除成功!"
              });
            });
          }
        })
        .catch(() => {
          this.$message({
            type: "info",
            message: "已取消删除"
          });
        })
    },
    removeAll() {
      let select = -1;
      this.arr.forEach(item => {
        if (item.isSelected == true) {
          select = 1;
        } else {
          select = -1;
        }
      });
      if (select == 1) {
        this.$confirm("确定将这些商品都移出购物车吗, 是否继续?", "提示", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        })
          .then(() => {
            this.axios
              .get(
                `http://127.0.0.1:7001/RemoveAllItem?userName=${this.$store.state.a.userName}`
              )
              .then(res => {
                var newArr = this.arr.filter(item => {
                  if (item.isSelected != true) {
                    return true;
                  }
                });
                this.arr = newArr;
                this.$message({
                  type: "success",
                  message: "删除成功!"
                });
              });
            location.reload();
            this.scrollTop = 0;
          })
          .catch(() => {
            this.$message({
              type: "info",
              message: "已取消删除"
            });
          });
      } else if (select == -1) {
        this.$alert("请至少选中一个商品", "提示", {
          confirmButtonText: "确定"
        });
      }
    }
  },
  computed: {
    summary() {
      //reduce() //数组求和方法   (pre,next) pre表示总和 next表示数组下标
      return this.arr.reduce((pre, next) => {
        return pre + (next.isSelected ? next.price * next.amount : 0);
      }, 0); //0 表示pre初始为0
    }
  },
  created() {
    this.axios
      .get(
        `http://127.0.0.1:7001/GetCar?userName=${this.$store.state.a.userName}`
      )
      .then(res => {
        this.arr = res.data;
        this.emptyCar = true;
      });
    if (this.arr.length == 0) {
      this.emptyCar = false;
    }
  },
  mounted() {
    this.axios
      .get(
        `http://127.0.0.1:7001/GetCar?userName=${this.$store.state.a.userName}`
      )
      .then(res => {
        this.arr = res.data;
      });
  },
  beforeUpdate() {
    if (this.arr.length == 0) {
      this.emptyCar = false;
    } else {
      this.emptyCar = true;
    }
  }
};
</script>
<style scoped = "scoped">
.car-head {
  padding-bottom: 20px;
  border-bottom: 1px solid gray;
  margin-bottom: 20px;
}
img {
  width: 130px;
  height: 100px;
}
a {
  text-decoration: none;
  color: gray;
}
a:hover {
  color: black;
}
.text-center {
  text-align: center;
}
.emptyCar {
  text-align: right;
  background: url(../assets/emptyCar.jpg) no-repeat;
  width: 100%;
  height: 1000px;
}
.info {
  margin-bottom: 30px;
  font-size: 26px;
}
.car-footer{
  margin: 20px 10px;
}
</style>