<template>
  <!-- 个人中心页 -->
  <div class="mybox">
	  
    <!-- <button @click="test">点击打印用户名</button> -->
	<!-- <SearchBar></SearchBar> -->
    <el-container>
      <!-- 头像部分 -->
      <el-header >
        <el-row :gutter="20">
          <el-col :span="2">
            <div class="grid-content bg-purple">
              <span style="display: block; width:150px;height:100px;z-index: 99999;"><span>普通用户:</span>{{myid}}</span>
              <!-- 头像展示 -->
              <el-avatar src="https://cube.elemecdn.com/0/88/03b0d39583f48206768a7534e55bcpng.png" style="position: relative;top: -90px;left: 0;"></el-avatar>
            </div>
          </el-col>
		  <!-- 日期+广告 -->
          <el-col :span="22">
			  <!-- <div class="my_date">{{gettime}}</div> -->
			  <el-row>
			    <el-col :span="4" style=" margin-left: 80px;"><div class="grid-content bg-purple"></div></el-col>
			    <el-col :span="8"><div class="grid-content bg-purple-light"></div></el-col>
			    <el-col :span="8">
					<div class="grid-content bg-purple">
						<el-row>
					
							  <!-- 日历部分 -->
						  <el-col :span="24">
							  <div class="grid-content bg-purple-light">
								  <div style="width: 100%;height: 30%; background: #6EC884;line-height:60px;font-size: 30px;color: white;font-weight:bold;">日历</div>
								  <div style="width: 100%;height: 70%;background: #F8FFFA;">{{gettime}}</div>
							  </div>
						  </el-col>
						</el-row>
					</div>
				</el-col>
			  </el-row>
          </el-col>
        </el-row>
      </el-header>
      <el-container>
		  
        <!-- 侧边栏 -->
        <el-aside width="200px">
          <el-row class="tac">
            <el-col :span="12" class="aside_items">
              <el-menu
                default-active="2"
                class="el-menu-vertical-demo"
                @open="handleOpen"
                @close="handleClose"
              >
                <el-menu-item index="2" @click="myCollect">
                  <i class="el-icon-menu"></i>
                  <span slot="title">我的购物车</span>
                </el-menu-item>

                <el-menu-item index="4" @click="changePassword">
                  <i class="el-icon-setting"></i>
                  <span slot="title">重置个人信息</span>
                </el-menu-item>
              </el-menu>
            </el-col>
          </el-row>
        </el-aside>
		
        <el-container>
          <el-main>
            <!-- 点击切换组件 -->
            <component :is="subassembly" @change="getnewInfo"></component>
          </el-main>
          <!-- <el-footer>Footer</el-footer> -->
        </el-container>
      </el-container>
    </el-container>
  </div>
</template>


<script>
import Mygoods from "./MycenterPage/Mygoods.vue";
import ChangePw from "./MycenterPage/ChangePw.vue";
import SearchBar from '@/components/SearchBar.vue'
export default {
  data() {
    return {
      subassembly: "Mygoods",
      myid: "username",
	  imageUrl: "",
	  value: new Date(),
	  gettime:'',//当前时间
    };
  },
  // 获取登录用户的name然后给data
  created() {
    this.myid = this.$store.state.a.userName;
	this.currentTime();
  },
  methods: {
    test() {
      console.log(this.$store.state.a.isLogin, this.$store.state.a.userName);
    },
    myCollect() {
      console.log(123);
      this.subassembly = "Mygoods";
    },
    changePassword() {
      console.log(456);
      this.subassembly = "ChangePw";
    },
	getTime(){
		 var _this = this;
		      let yy = new Date().getFullYear();
		      let mm = new Date().getMonth()+1;
		      let dd = new Date().getDate();
		      let hh = new Date().getHours();
		      let mf = new Date().getMinutes()<10 ? '0'+new Date().getMinutes() : new Date().getMinutes();
		      let ss = new Date().getSeconds()<10 ? '0'+new Date().getSeconds() : new Date().getSeconds();
		      _this.gettime = yy+'-'+mm+'-'+dd+' '+hh+':'+mf+':'+ss;
	},
	currentTime(){
	      setInterval(this.getTime,500)
	    },
	getnewInfo(res){
		console.log(res)
		localStorage.userName = res
	}
  },
  updated() {
  	console.log(localStorage)
	this.myid = localStorage.userName
  },
  components: {
    Mygoods,
    ChangePw,
	SearchBar
  }
};
</script>

<style scoped>
* {
  margin: 0;
 /* padding:0 ; */
}
.mybox {
  position: relative;
  top: 100px;
  width: 80%;
  height: 1400px;
  margin: auto;
  /* margin-top: 200px; */
}

/* 容器布局样式 */
.el-header {
  width: 100%;
  height: 20% !important;
}
.el-header,
.el-footer {
  background-color: #d3dce6;
  color: #333;
  text-align: center;
  line-height: 150px;
}

.el-aside {
  background-color: #fffacd;
  color: #333;
  text-align: center;
  line-height: 200px;
}

.el-main {
  background-color: #eeeeee;
  color: #333;
  text-align: center;
  line-height: 160px;
}

.el-container {
  height: 1000px;
  margin-bottom: 40px;
}

.el-container:nth-child(5) .el-aside,
.el-container:nth-child(6) .el-aside {
  line-height: 260px;
}

.el-container:nth-child(7) .el-aside {
  line-height: 320px;
}
/* .el-col .el-col-12{
		  width: 100%;
	  } */
.aside_items {
  width: 100%;
  height: 100%;
}
.tac {
  height: 500px;
}
.el-menu-vertical-demo {
  height: 100%;
}
.el-menu-item {
  margin-top: 50px;
}

.el-row {
  margin-bottom: 20px;
  &:last-child {
    margin-bottom: 0;
  }
}
.el-col {
  border-radius: 4px;
}
.bg-purple-dark {
  background: #99a9bf;
}
.bg-purple {
  background: #d3dce6;
}
.bg-purple-light {
  background: #e5e9f2;
}
.grid-content {
  border-radius: 4px;
  min-height: 36px;
}
.row-bg {
  padding: 10px 0;
  background-color: #f9fafc;
}

/* 头部分栏样式 */
.el-row {
  margin-bottom: 20px;
  &:last-child {
    margin-bottom: 0;
  }
}
.el-col {
  border-radius: 4px;
}
.bg-purple-dark {
  background: #99a9bf;
}
.bg-purple {
  background: #d3dce6;
}
.bg-purple-light {
  background: #e5e9f2;
}
.grid-content {
  border-radius: 4px;
  min-height: 36px;
}
.row-bg {
  padding: 10px 0;
  background-color: #f9fafc;
}

.grid-content {
  height: 200px;
}

/*头像部分样式*/
.el-avatar {
  /* position: relative;
		left: 0;
		top: 0; */
  float: left;
}
.el-menu {
  background-color: #fffacd;
}

/*日期*/
/* .my_date{
	width: 100px;
	height: 50px;
} */
.my_date{
	position: relative;
	right: 0;
	top: 0;
}
.searchModel{
	position: relative;
	top:0
}


.index__href_wrap{
	position: relative;
	top: 200px;
}
</style>