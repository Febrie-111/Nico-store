<template>
	<div class="Picture">
		<!-- 图片灵感 组件 -->
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
						imgsrc: "../../assets/Picture.png",
						type: "图片",
						describe: "动物",
						bag:"https://q-extra.paixin.com/admin/1587634950040.png?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/Picture.png",
						type: "图片",
						describe: "鲜花",
						bag:"https://q-extra.paixin.com/admin/1582249391367.png?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/Picture.png",
						type: "图片",
						describe: "餐饮美食",
						bag:"https://images.gaga.me/images/2019/0516/f555cdd23af20cb4.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/Picture.png",
						type: "图片",
						describe: "风景",
						bag:"http://images.gaga.me/insets/2018/0510/c7b5af3a6b461f96.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/Picture.png",
						type: "图片",
						describe: "室内家具",
						bag:"http://images.gaga.me/images/2018/0206/e8e5a7917426d8e7.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/Picture.png",
						type: "图片",
						describe: "建筑空间",
						bag:"https://images.gaga.me/images/2019/0628/a2c5d1578981902c.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/Picture.png",
						type: "图片",
						describe: "餐饮美食",
						bag:"http://images.gaga.me/insets/2018/0810/10d5b6d597b72980.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/Picture.png",
						type: "图片",
						describe: "鲜花",
						bag:"http://images.gaga.me/insets/2018/1009/dbf5bbc47e21c9b8.jpeg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/Picture.png",
						type: "图片",
						describe: "动物",
						bag:"http://images.gaga.me/images/2018/0807/40e5b693a998fbb9.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					}
				]

			}
		},

	}
</script>

<style scoped>
	.Picture {
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
		background-image: url("https://images.gaga.me/images/2019/0628/a2c5d1578981902c.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim");
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
		background-color: #FF738B;
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
