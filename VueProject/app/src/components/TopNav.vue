
<template>
<!-- 顶部导航栏 -->
    <div style=" width: 100%;z-index:1000; margin: auto;" class="myrootbox">
        <el-menu :default-active="activeIndex" class="el-menu-demo" mode="horizontal" @select="handleSelect" router>
            <!-- 导航第一项 -->
            <el-menu-item index="/" >首页</el-menu-item>

            <!-- 导航第二项 -->
            <el-menu-item index="/stock">
                <el-submenu index="2">
                    <template slot="title" >图片</template>
                    <!-- 二级菜单 -->
                    <el-menu-item index="2-1">
                    <div>
                        <span @mouseenter="pic_change" class="spt" :class="{'onmouse':index_one==1}">正版图片</span>
                        <span @mouseenter="design_change" class="spt" :class="{'onmouse':index_two==1}">素材设计</span>    
                    </div>
                    </el-menu-item>
                    <!-- 二级菜单 -->
					
                   <el-menu-item :index="{name:'PictureShow',query:{message:JSON.stringify(mysrcname)}}"  style="width:350px; height:350px" >
                        <component :is="componentId" @maoshen="fm"></component>
                    </el-menu-item>
					
                </el-submenu>
            </el-menu-item>

        <!-- 导航第三项 -->
        <el-menu-item index="/plus">
            <el-submenu index="3">
                <template slot="title" >高端</template>
                <!-- 二级菜单 -->
                <el-menu-item index="3-1">
                    <div>
                        <span @click="higher_one" class="spa">7MX</span>
                        <span @click="higher_two" class="spa">TPG</span>    
                    </div>
                </el-menu-item>
                <!-- 二级菜单 -->
                <el-menu-item :index="{name:'PictureShow',query:{message:JSON.stringify(mysrcname)}}" style="width:300px; height:350px" >
                    <component :is="componentId_two" @maoshen="fm"></component>
                </el-menu-item>
            </el-submenu>
        </el-menu-item>
  
        <el-menu-item index="/stockvideo">
            <el-submenu index="4">
                    <template slot="title" >视频</template>
                    <el-menu-item index="4-1" style="width：150px; height:150px">
                        <div class="video_items">
                            <span v-for="(items,index) in arr_video" :key="index">{{items.name}}</span>
                        </div>
                    </el-menu-item>
            </el-submenu>
        </el-menu-item>
</el-menu>
<div class="line"></div>
<el-menu
  :default-active="activeIndex2"
  class="el-menu-demo"
  mode="horizontal"
  @select="handleSelect"
  background-color="#545c64"
  text-color="#fff"
  active-text-color="#ffd04b">
  </el-menu>
	<el-row class="el-vip">
	  <el-button type="warning" round>拍性会员</el-button>
	</el-row>
    <div class="LOGO">路上晴空</div>
    </div>
</template>


<script>
export default {
   
    data() {
      return {
        activeIndex: '1',
        activeIndex2: '1',
        componentId:'OriginalImage',//动态组件的切换
        componentId_two:'Higher_pic',
        arr_video:[{name:"运动"},{name:"教育"},{name:"动物"},{name:"人物"}],
        index_one:1,
        index_two:0,
		mysrcname:''
      };
    },
    methods: {
      handleSelect(key, keyPath) {
        console.log(key, keyPath);
      },
      pic_change(){
          this.componentId="OriginalImage";//事件触发切换组件
          this.index_one=1;
          this.index_two=0;
      },
      design_change(){
          this.componentId="DesignMaterial";
          this.index_one=0;
          this.index_two=1;
      },
      higher_one(){
          this.componentId_two='Higher_pic'
      },
      higher_two(){
          this.componentId_two='Tpg'
      },
	  fm(arg){
		   this.mysrcname = arg
		  // this.mysrcname="/stock/pic_design/"+arg
		  console.log(this.mysrcname)
	  }

    },
    components:{
        OriginalImage:()=>import('./TopNav/OriginalImage.vue'),//组件的注册
        DesignMaterial:()=>import('./TopNav/DesignMaterial.vue'),
        Higher_pic:()=>import('./TopNav/Higher_pic.vue'),
        Tpg:()=>import('./TopNav/Tpg.vue'),
    },
	
  }
</script>


<style scoped>
	*{
		margin: 0;
	}
    .spt{
        margin-left:10px;
        display:inline-block;
        width:30%;
        height:45%;
        text-align:center;
    }
    /* .spt:hover{
        color:red;
    } */
    .spa{
        display:inline-block;
        width:30%;
        height:40%;
        /* background:orange; */
        margin-left:10px;
        text-align:center;
    }
    .spa:first-child{
        background:orange;
    }
    .spa:last-child{
        background:rgb(243,243,243);
    }
    .video_items{
        width:100%;
        height:100%;
        display:flex;
        flex-direction:row;
        flex-wrap:wrap;
        justify-content:space-around;
        
    }
    .video_items span{
        width:25%;
        height:30%;
    }
    .onmouse{
        background:rgb(254,41,63);
    }
	.el-submenu__icon-arrow{
		position: relative;
		top:0;
		left:0;
		
	}
	.myrootbox{
		opacity:0.5
	}
	.myrootbox ul{
		width: 80%;
		height: 100%;
		margin: auto;
		display: flex;
		flex-direction: row;
		flex-wrap: nowrap;
		justify-content:space-around;
		/* background: rgba(58,52,30,0.5); */
	}
	/* .el-submenu__title{
		color: white;
	} */
	.el-menu-item:hover{
		background: rgba(58,52,30,0.5);
	}
	.el-vip{
        position: absolute;
        top:15px;
        left: 80%;
    }
    .LOGO{
        position: absolute;
        top: 20px;
        left: 200px;
        font-size: 30px;
        font-family: 华文行楷;
        color: #0563CE;
    }
</style>