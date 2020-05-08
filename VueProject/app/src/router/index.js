import Vue from 'vue'
import VueRouter from 'vue-router'
import ElementUI from 'element-ui';//引入组件库
import 'element-ui/lib/theme-chalk/index.css';//全局的css样式

Vue.use(VueRouter)
Vue.use(ElementUI)

  const routes = [
  {
    path: '/',
    name: 'Home',
    component:()=>import('@/views/HomePage.vue'),
  },
  {
    path: '/stock',
    name: 'Print',
    component:()=>import('@/views/PringPage.vue'),
	
	children:[{
		path:'pic_design/:mysrcname',
		name:'pic_design1',
		component:()=>import('@/views/pic_design.vue')
	}]
		
  },
  
  {
    path: '/plus',
    name: 'Higher',
    component:()=>import('@/views/HigherPage.vue')
  },
  {
    path: '/stockvideo',
    name: 'Video',
    component:()=>import('@/views/VideoPage.vue')
  },
  {
    path: '/search',
    name: 'search',
    component:()=>import('@/views/SearchPage.vue')
  },
  {
    path: '/GoodsDetail',
    name: 'GoodsDetail',
    component:()=>import('@/views/GoodsDetail.vue')
  },
  {
    path: '/PictureShow',
    name: 'PictureShow',
    component:()=>import('@/views/PictureShow.vue')
  },
  {
  	  path:'/mycenter',
  	  name:'mycenter',
  	  component:()=>import('@/views/MycenterPage.vue'),
  	  
  	  beforeEnter:(to,from,next) =>{
  		  console.log(window.localStorage)
  		  if(to.path == '/mycenter'&& window.localStorage.userName){
  			  next()
  		  }else{
  			  alert("请先登录")
  			  next('/Home')
  		  }
  	  }
  },
  
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes,
  scrollBehavior (to, from, savedPosition) {
    return { x: 0, y: 0 }
 }
})

export default router
