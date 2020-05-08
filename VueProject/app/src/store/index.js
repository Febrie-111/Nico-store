import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)
//任智龙的仓库
let ModuleA={
	namespaced: true,//局部命名空间(让state的中变量与其他模块中的同名变量不冲突)
	state:{//缓存用户登录信息
    userName:null,
    isLogin:false
	},
	mutations:{
    //获取缓存中的用户名并设置
    Login(state,name){
      state.userName= name
    }
	},
	actions:{
	
	},
	getters:{
		
	}
}
//张献喆的仓库
let ModuleB={
	//this.$store.state.b.updata_detail
	updata_detail:{src:''}
}
export default new Vuex.Store({
	modules: {
		a:ModuleA,
		b:ModuleB
	}
})
