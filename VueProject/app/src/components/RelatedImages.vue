<template>
	<div class="ShopPopular">
		<!-- 商店热门组件 -->
		<div v-show="title.exhibition" class="mytitle">{{title.text}}</div>
		<div class="infinite-list-wrapper" style="overflow:auto">
			<div class="list" >
				<div v-for="(item,index) in mydata" class="list-item" :key="index">
						<img :src="item.src" @click="fn1(item)">
					<AddToCar :id="item.id" :type="item.type"></AddToCar>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
import AddToCar from "./AddToCar.vue"
	export default {
		data() {
			return {
				
			}
		},
		props:['mydata',"title"],
		methods: {
			fn1(item){
				this.$emit("change",item)
			}
		},
		
		components:{AddToCar}
	}
</script>

<style scoped>
	.ShopPopular {
		width: 1330px;
		margin: 50px auto 100px;
	}
	.mytitle {
		height: 60px;
		width: 100%;
		line-height: 60px;
		font-size: 22px;
	}
	.list {
		width: 100%;
		display: flex;
		justify-content: space-around;
		flex-wrap: wrap;

	}
	.list:after{
			content:' ';
			width: 322px; 
			height:0px;
			display:block;
		}

	.list-item {
		width: 322px;
		position: relative;
	}
	img {
		width: 100%;
		height: 260px;
	}
	.loading {
		width: 100%;
		height: 50px;
		line-height: 50px;
		text-align: center;
		font-size: 16px;
		margin: 20px auto;
	}
	.nomore {
		width: 100%;
		height: 50px;
		line-height: 50px;
		text-align: center;
		font-weight: 600;
		font-size: 14px;
		margin: 20px auto;
	}
</style>
