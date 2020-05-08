<template>
	<div>
		<img v-for="(item,index) in myresouce" :key="index" :src="item.src">
	</div>
</template>

<script>
	export default {
		data() {
			return {
				myresouce: ""
			}
		},
		created() {
			console.log(this.$route.params.mysrcname,66666666666666666)
			//做网络请求把关键字的数据拿过来
			this.axios(`http://localhost:7001/getimg?myname=${this.$route.params.mysrcname}`).then((response)=>{
				console.log(response)
				this.myresouce = response.data;
				
			})
		}
	}
</script>

<style scoped>
</style>
