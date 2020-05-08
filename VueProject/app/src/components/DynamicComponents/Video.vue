<template>
	<div class="Video">
		<!-- 视频灵感组件  -->
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
	export default {
		data() {
			return {
				mydata: [{
						imgsrc: "../../assets/video.png",
						type: "视频",
						describe: "动物",
						bag:"https://q-extra.paixin.com/admin/1582257595180.png?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/video.png",
						type: "视频",
						describe: "自然风景",
						bag:"https://images.gaga.me/images/2019/0806/a9b5d48ddf5d1a98.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/video.png",
						type: "视频",
						describe: "建筑空间",
						bag:"https://images.gaga.me/images/2019/0709/a505d2463ead20ee.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/video.png",
						type: "视频",
						describe: "餐饮美食",
						bag:"https://images.gaga.me/images/2019/0723/a385d366d66bb907.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/video.png",
						type: "视频",
						describe: "动物",
						bag:"https://images.gaga.me/images/2019/0726/d075d3ab60755cb9.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/video.png",
						type: "视频",
						describe: "风景",
						bag:"https://images.gaga.me/images/2019/0726/45f5d3ab5b931e89.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/video.png",
						type: "视频",
						describe: "人物情感",
						bag:"https://images.gaga.me/images/2019/0726/a785d3ab47aa84a3.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/video.png",
						type: "视频",
						describe: "动物",
						bag:"https://images.gaga.me/images/2019/0726/28c5d3ab527eab6a.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					},
					{
						imgsrc: "../../assets/video.png",
						type: "视频",
						describe: "鲜花",
						bag:"https://images.gaga.me/images/2019/0709/f8c5d2465b15d202.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim"
					}
				]

			}
		},

	}
</script>

<style scoped>
	.Video {
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
		background-image: url("https://images.gaga.me/images/2019/0726/a785d3ab47aa84a3.jpg?imageMogr2/sharpen/1|imageView2/2/interlace/1/w/400/h/400|imageslim");
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
