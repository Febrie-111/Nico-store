<template>
	<div class="KeepsLoading">
		<!--“高端"模块里的（"热门推荐", "商店热门", "最新作品"）三个组件动态切换，滚动条下拉图片不断加载-->
		<div class="category-options">
			<div class="category-option" @click="fn1" :class="{clickStyle:1==choosedMovie}">{{categoryArr[0]}}</div>
			<div class="category-option" @click="fn2" :class="{clickStyle:2==choosedMovie}">{{categoryArr[1]}}</div>
			<div class="category-option" @click="fn3" :class="{clickStyle:3==choosedMovie}">{{categoryArr[2]}}</div>
		</div>
		<div>
			<components :is="afflatus" :mydata='mydata'></components>
		</div>

	</div>
</template>
<script>
	import HotRecommended from "./HotRecommended.vue"
	import ShopPopular from "./ShopPopular.vue"
	import LatestWork from "./LatestWork.vue"
	// import wode from "./wode.vue"
	export default {
		data() {
			return {
				categoryArr: ["热门推荐", "商店热门", "最新作品"],
				afflatus: HotRecommended,
				mydata: '',
				mynumber: 0,
				choosedMovie: 1
			}
		},
		methods: {
			fn1() {
				this.afflatus = HotRecommended;
				this.mynumber = 0
				this.requestData(this.mynumber)
				this.choosedMovie = 1
			},
			fn2() {
				this.afflatus = ShopPopular;
				this.mynumber = 31
				this.requestData(this.mynumber)
				this.choosedMovie = 2
			},
			fn3() {
				this.afflatus = LatestWork;
				this.mynumber = 66
				this.requestData(this.mynumber)
				this.choosedMovie = 3
			},
			requestData(parameter) {
				this.axios(`http://127.0.0.1:7001/goods?number=${parameter}`)
					.then((results) => {
						this.mydata = results.data
					})
			}
		},
		components: {
			HotRecommended,
			ShopPopular,
			LatestWork

		},
		mounted() {
			this.requestData(this.mynumber)
		},
	}
</script>

<style scoped>
	
	.KeepsLoading>div:last-child{
		background: #F3F3F3;
	}
	.DynamicInspiration {
		padding: 1px 0;
		/* background: #F3F3F3; */
	}

	.category-options {

		box-sizing: border-box;
		width: 800px;
		margin: 40px auto 34px;
		display: flex;
		justify-content: space-around;
		flex-wrap: nowrap;
		align-items: center;
		font-size: 24px;
		color: gray;
		font-weight: 600;
		position: relative;

	}
	.clickStyle {
		color: black;
	}
	span {
		position: absolute;
		width: 28px;
		height: 6px;
		background: #fe293f;
		border-radius: 2px;
		bottom: -13px;
		left: 50%;
		margin-left: -14px;
	}

	.category-option {
		cursor: pointer;
	}
	
</style>
