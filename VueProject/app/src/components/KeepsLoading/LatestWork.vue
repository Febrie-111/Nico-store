<template>
	<div class="ShopPopular">
		<!-- 商店热门组件 -->
		<div class="infinite-list-wrapper" style="overflow:auto">
			<div class="list" v-infinite-scroll="load" infinite-scroll-disabled="disabled">
				<div v-for="i in count" class="list-item" :key="i">
					<router-link :to="{name:'GoodsDetail', query:{ message:JSON.stringify(mydata[i])}}">
						<img :src="mydata[i].src" >
					</router-link>
					<AddToCar :id="mydata[i].id" :type="mydata[i].type"></AddToCar>
				</div>
			</div>
			<p v-if="loading" class="loading">加载中...</p>
			<p v-if="noMore" class="nomore">没有更多了</p>
		</div>
	</div>
</template>

<script>
import AddToCar from "../AddToCar.vue"
	export default {
		data() {
			return {
				count: 8,
				loading: false
			}
		},
		props:['mydata'],
		computed: {
			noMore() {
				return this.count >= 28
			},
			disabled() {
				return this.loading || this.noMore
			}
		},
		methods: {
			load() {
				this.loading = true
				setTimeout(() => {
					this.count += 4
					this.loading = false
				}, 1200)
			}
		},
		components:{AddToCar}
	}
</script>

<style scoped>
	.ShopPopular {
		width: 1330px;
		position: relative;
		margin: auto;
		left: 0;
		right: 0;
		bottom: 0;
		top: 0;
		background: #F3F3F3;
	}

	.list {
		width: 100%;
		display: flex;
		justify-content: space-around;
		flex-wrap: wrap;

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
