<template>
	<!-- 首页的"精选灵感", "图片灵感", "插画灵感", "视频灵感"四个组件动态切换 -->
	<div class="DynamicInspiration">
		<div class="category-options" >
			<div class="category-option" @click="fn1" :class="{clickStyle:1==choosedMovie}">{{categoryArr[0]}}</div>
			<div class="category-option" @click="fn2" :class="{clickStyle:2==choosedMovie}">{{categoryArr[1]}}</div>
			<div class="category-option" @click="fn3" :class="{clickStyle:3==choosedMovie}">{{categoryArr[2]}}</div>
			<div class="category-option" @click="fn4" :class="{clickStyle:4==choosedMovie}">{{categoryArr[3]}}</div>					 
		</div>
		<div>
			<components :is="afflatus"></components>
		</div>
		
	</div>
</template>

<script>
	import Select from "./Select.vue"
	import Picture from "./Picture.vue"
	import Illustration from "./Illustration.vue"
	import Video from "./Video.vue"
	export default {
		data() {
			return {
				categoryArr: ["精选灵感", "图片灵感", "插画灵感", "视频灵感"],
				afflatus:Select,
				choosedMovie:1
			}
		},
		methods:{
			fn1(){
				this.afflatus=Select;
				this.choosedMovie=1
			},
			fn2(){
				this.afflatus=Picture;
				this.choosedMovie=2
			},
			fn3(){
				this.afflatus=Illustration;
				this.choosedMovie=3
			},
			fn4(){
				this.afflatus=Video;
				this.choosedMovie=4
			}
			
		},
		components:{
			Select,
			Picture,
			Illustration,
			Video
					
		}
	}
</script>

<style scoped>
	.DynamicInspiration {
		padding: 1px 0;
		background: #E9EBDB;
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
		color: #333333;
		font-weight: 600;
		
	}
	.clickStyle {
		color: red;
	}
	.category-option {
		cursor: pointer;
	}
	
</style>
