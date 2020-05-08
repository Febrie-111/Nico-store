<template>
	<div class="PictureShow">
		<div class="mybox">
			<div class="title_box">
				<img :src="mydata[0].src">
				<div class="list-info">
					<div>{{message}}</div>
					<div>共{{count}}个素材</div>
				</div>
			</div>
		</div>
		<div class="picBox">
			<div class="type">
				<div class="tag-tit">推荐关键词:</div>
				<ul>
					<li v-for="(item,index) in ArrList" :key='index'>
						<span class="mytype" @click="fn(item)">{{item}}</span>
						<span class="slash">/</span>
					</li>
				</ul>
			</div>
			<div class="picwallAuth ">
				<LatestWork :mydata='mydata'></LatestWork>

			</div>
		</div>

	</div>
</template>

<script>
	import LatestWork from "@/views/PringPage/LatestWork.vue"
	export default {
		data() {
			return {
				ArrList: ["自然风景", "建筑", "鲜花", "人物情感", "动物", "教育文化", "生活方式", "风景"],
				mydata: '',
				message: '',
				count: ''
			}
		},
		methods: {
			fn(keyword) {
				this.requetMassage(keyword)
			},
			//根据传递的参数请求数据
			requetMassage(parameter){
				this.axios(`http://127.0.0.1:7001/SimilarImg?species=${parameter}`)
				.then(
				  results => {
				    this.mydata = results.data;
					this.count=results.data.length
					this.message=parameter
				  });
			}
		},
		components: {
			LatestWork
		},
		mounted() {
			//跳转页面传过来的参数
			this.message = JSON.parse(this.$route.query.message);
			console.log(this.message, "5555")
			this.requetMassage(this.message)
		},
		watch:{
			
			  $route(to,from){
			    console.log(to);
				let a = JSON.parse( to.query.message)
				let b = JSON.parse( from.query.message)
				if(a!=b){
					location.reload()
				}
			}
		}

	}
</script>

<style scoped="scoped">
	.PictureShow {
		width: 100%;
	}

	.mybox {
		width: 100%;
		background-color: slategray;
	}

	.title_box {
		width: 1200px;
		height: 250px;
		margin: 0 auto;
		display: flex;
		justify-content: flex-start;
		align-items: center;
	}

	.title_box img {
		width: 390px;
		height: 168px;
		border-radius: 10px;
		margin-right: 30px;
	}

	.list-info div:nth-of-type(1) {
		font-size: 32px;
		color: #FFFFFF;
	}

	.list-info div:nth-of-type(2) {
		font-size: 18px;
		color: #FFFFFF;
		padding-top: 20px;
	}

	.picBox {
		width: 1200px;
		margin: 0 auto;
		line-height: 60px;
	}

	.picBox .tag-tit {
		display: inline-block;
		font-size: 18px;
		font-weight: 600;
		color: #333333;
		line-height: 25px;
	}

	.picBox ul {
		display: inline-block;
	}

	.picBox ul li {
		list-style: none;
		display: inline-block;
		margin-right: 20px;
	}

	.picBox ul li:last-of-type .slash {
		display: none;
	}

	ul li {
		font-size: 18px;
		color: gray;
		text-decoration: none;
	}

	ul li:hover .mytype {
		color: red;
		cursor: pointer;
	}

	.type .slash {
		width: 1px;
		height: 10px;
		margin-left: 20px;
	}
</style>
