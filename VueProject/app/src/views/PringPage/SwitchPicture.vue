<template>
	<!-- 组件动态切换 -->
	<div class="DynamicInspiration">
		<div class="category-options" >
			<div class="category-option" @click="fn1" :class="{clickStyle:1==choosedMovie}">{{categoryArr[0]}}</div>
			<div class="category-option" @click="fn2" :class="{clickStyle:2==choosedMovie}">{{categoryArr[1]}}</div>				 
		</div>
		<div>
			<components :is="afflatus"></components>
		</div>
	</div>
</template>

<script>
	import GenuinePicture from "./GenuinePicture.vue"
	import Design from "./Design.vue"
	export default {
		data() {
			return {
				categoryArr: ["正版图片", "设计素材"],
				afflatus:GenuinePicture,
				choosedMovie:1
			}
		},
		methods:{
			fn1(){
				this.afflatus=GenuinePicture;
				this.choosedMovie=1
			},
			fn2(){
				this.afflatus=Design;
				this.choosedMovie=2
			},
		},
		components:{
			GenuinePicture,
			Design		
		}
	}
</script>

<style scoped>
	.DynamicInspiration {
		padding: 1px 0;
		width: 80%;
		margin: 0 auto;
		
	}

	.category-option {
		display: inline-block;
		font-size: 24px;
		color: #333333;
		font-weight: 600;
		padding-right: 20px;
	}
	.clickStyle {
		color: red;
	}
	.category-option {
		cursor: pointer;
	}
	
</style>
