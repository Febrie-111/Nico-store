<template>
	<div class="HigherPageTop">
		<div class="banner" :style="{backgroundImage: 'url(' + bannerBag + ')'}">
			<h1 class="imgtitle">{{imgtitle}}</h1>
			<div class="subtitle">{{text}}</div>
			 <slot></slot>
		</div>
		<div class="detail">
			<div class="detail_wrap">
				<div class="detail_item" v-for="(item,index) in textArr" :key='index'>
					<div class="detail_title">{{item.text1}}</div>
					<div class="detail_subtitle">{{item.text2}}</div>
				</div>
			</div>

		</div>

	</div>
</template>

<script>
	export default {
		data() {
			return {
				bannerBag: "https://static.paixin.com/paixin-vision/static/img/bg.4294f60.jpg",
				imgtitle: 'PAIXIN PLUS',
				text: "拍信Plus，汇集来自全球的优质供稿人，直营拍信特供的顶尖创意图片",
				textArr: [{
						text1: '300+',
						text2: '覆盖全国200+城市团队'
					},
					{
						text1: '20000+',
						text2: '超过12000+合作伙伴'
					},
					{
						text1: 'ZRZ',
						text2: 'ZRZ资本注资，值得信赖'
					},
				]
			}
		}
	}
</script>

<style scoped>
	.HigherPageTop {
		width: 100%;
		height: 620px;
	}

	.banner {
		height: 400px;
		background-repeat: no-repeat;
		background-size: cover;
		background-position: center;
		display: flex;
		flex-direction: column;
		align-items: center;
		align-content: center;
		justify-content: center;

	}

	.banner .imgtitle {
		color: white;
		margin-bottom: 10px;
	}

	.banner .subtitle {
		color: #FFFFFF;
		font-size: 17px;
	}

	.detail {
		width: 100%;
		height: 180px;
	}

	.detail .detail_wrap {
		width: 1000px;
		height: 100%;
		margin: 0 auto;
		padding-top: 40px;
		display: flex;
		box-sizing: border-box;
		justify-content: space-between;
	}

	.detail_wrap .detail_item {
		width: 30%;
		height: 140px;
		text-align: center;
	}

	.detail_item .detail_title {
		padding-top: 20px;
		font-size: 40px;

	}

	.detail_item .detail_subtitle {
		margin-top: 16px;
		font-size: 14px;
	}
</style>
