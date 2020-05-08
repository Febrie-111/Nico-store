<template>
	<div class="Illustration">
		<!-- 插画灵感组件 -->
		<div class="list">
			<div class="pic_item" v-for="(item,index) in mydata" :key="index" :style="{backgroundImage: 'url(' + item.bag + ')'}">
				<router-link :to="{name:'PictureShow', query:{ message:JSON.stringify(item.describe)}}">
					<div class="tag">
						<img src="../../assets/Picture.png">
						<!-- <img :src="item.imgsrc"> -->
						<span>{{item.type}}</span>
					</div>
					<div class="text">{{item.describe}}</div>
				</router-link>
			</div>
		</div>
	</div>
</template>

<script>
	// import b from "../../assets/video.png"
	export default {
		data() {
			return {
				mydata: [{
						imgsrc: "../../assets/Illustration.png",
						type: "插画",
						describe: "鲜花",
						bag: "https://images.gaga.me/images/2019/0408/fe15caae91901aab.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/Illustration.png",
						type: "插画",
						describe: "餐饮美食",
						bag: "https://images.gaga.me/images/2019/0806/8045d48dc95e18f9.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/Illustration.png",
						type: "插画",
						describe: "建筑空间",
						bag: "http://res.gaga.me/upload/images/2017/0922/41859c4b207e3d35.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/Illustration.png",
						type: "插画",
						describe: "自然风景",
						bag: "http://res.gaga.me/upload/images/2017/1020/06a59e96c48cc5a7.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/Illustration.png",
						type: "插画",
						describe: "动物",
						bag: "http://res.gaga.me/upload/images/2017/0922/65359c4b2363bd9d.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/Illustration.png",
						type: "插画",
						describe: "风景",
						bag: "http://res.gaga.me/upload/images/2017/0922/49359c4b42787756.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/Illustration.png",
						type: "插画",
						describe: "城市",
						bag: "http://images.gaga.me/images/2018/1116/f435bee37d803aba.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/Illustration.png",
						type: "插画",
						describe: "餐饮美食",
						bag: "http://images.gaga.me/images/2018/1025/4a65bd15dd5e4e91.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/Illustration.png",
						type: "插画",
						describe: "动物",
						bag: "http://images.gaga.me/images/2018/1012/2865bc008f7bdcb5.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					}
				]
			};
		}
	};
</script>

<style scoped="scoped">
	.Illustration {
		width: 1200px;
		height: 520px;
		margin: 0 auto;
	}
	.list {
		width: 100%;
		height: 100%;
		display: flex;
		justify-content: space-between;
		flex-wrap: wrap;
	}

	.pic_item {
		width: 394px;
		height: 164px;
		-webkit-transition: all 0.2s ease-in-out;
		transition: all 0.2s ease-in-out;
		background-size: 100%;
		background-position: center;
		background-repeat: no-repeat;
	}

	.pic_item:hover {
		background-size: 110%;
	}

	.text {
		font-size: 22px;
		color: #fff;
		text-align: center;
		line-height: 130px;
	}

	.tag {
		width: 66px;
		height: 26px;
		background-color: #eb5ad3;
		border-radius: 0px 0px 14px 0px;
		font-size: 14px;
		font-weight: 600;
		color: white;
		line-height: 26px;
	}

	.tag img {
		width: 19px;
		height: 16px;
		margin: -4px 5px;
	}

	.tag span {
		font-size: 7px;
	}

	a {
		text-decoration: none;
	}
</style>
