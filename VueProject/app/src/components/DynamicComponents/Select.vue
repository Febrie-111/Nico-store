<template>
	<div class="select">
		<!-- 精选灵感组件  -->
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
						imgsrc: "../../assets/video.png",
						type: "图片",
						describe: "自然风景",
						bag:"http://res.gaga.me/upload/images/2017/0719/0b0596efd2303c2e.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/video.png",
						type: "图片",
						describe: "城市",
						bag:"https://images.gaga.me/images/2019/0806/a9b5d48ddf5d1a98.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/video.png",
						type: "图片",
						describe: "鲜花",
						bag:"https://images.gaga.me/images/2019/0513/8fe5cd937fc06296.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/video.png",
						type: "图片",
						describe: "建筑空间",
						bag:"https://q-extra.paixin.com/admin/1582508208111.png?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/video.png",
						type: "图片",
						describe: "室内家具",
						bag:"https://q-extra.paixin.com/admin/1583152297907.png?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/video.png",
						type: "图片",
						describe: "风景",
						bag:"https://images.gaga.me/images/2019/0814/71e5d537abee329c.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/video.png",
						type: "图片",
						describe: "餐饮美食",
						bag:"https://q-extra.paixin.com/admin/1587635908423.png?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/video.png",
						type: "图片",
						describe: "鲜花",
						bag:"https://images.gaga.me/images/2019/0806/33d5d48def7c47d3.jpeg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/video.png",
						type: "图片",
						describe: "动物",
						bag:"http://images.gaga.me/insets/2018/1205/e535c0768f3df10d.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					}
				]

			}
		},

	}
</script>

<style scoped>
	.select {
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
		background-image: url("https://q-extra.paixin.com/admin/1583152297907.png?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim");
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
		background-color: #62DA9C;
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
