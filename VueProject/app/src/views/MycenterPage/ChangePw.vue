<template>
	<div class="mybox">
		<div style="font-size: 30px;font-weight:bold;">修改您的个人信息</div>
		<div>
			<span style="font-weight: bold;">请输入新的用户名:</span>
			<input v-model="changeName" type="text" placeholder="例如:张三"></input>
		</div>
		<div>
			<span style="font-weight: bold;">请输入新的密码:</span>
			<input v-model="changePassword" type="password" placeholder="例如:123456"></input>	
		</div>
		<button @click="updatePassword">保存</button>
	</div>
</template>

<script>
	export default{
		data() {
			return {
				changePassword:"",
				changeName:""
			}
		},
		methods:{
			updatePassword(){
				let that = this
				// console.log(this.changePassword)
				// console.log(this.$store.state.a.isLogin)
				//^\d{m,n}$
				//验证格式
				let RegExp = /^\d{6,13}$/
				if(RegExp.test(this.changePassword)==true&&this.changeName!=""){
					this.axios.post('http://localhost:7001/changePW',{changeword:this.changePassword,myusername:this.$store.state.a.userName,changeName:this.changeName}).then((response)=>{
						console.log(that.changeName)//打印修改后的数据
						alert("修改成功")
	
						this.$emit("change",that.changeName);
						setTimeout(function(){location.reload()},500);
						
					})
				}else if(RegExp.test(this.changePassword)==false){
					alert("请输入6~13位数字！！")
				}else if(this.changeName==""){
					alert("请输入用户名")
				}
			}
		}
	}
</script>

<style scoped = "scoped">
	.mybox{
		width: 65%;
		height: 600px!important;
		background: whitesmoke;
		display: flex;
		flex-wrap: wrap;
		flex-direction: column;
		justify-content: space-around;
		align-items: center;
	}
	.mybox>div{
		width: 60%;
		height: 30%;
		display: flex;
		flex-wrap: nowrap;
		flex-direction: row;
		justify-content: space-around;
		align-items: center;
	}
</style>
