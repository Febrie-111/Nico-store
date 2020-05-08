<template>
	<!-- 底部友情链接合作模块 -->
	<div class="BaseLink">
		<div class="contact">
			<div class="contact_title">联系我们</div>
			<div class="contact_menu">
				<div class="contact-box">
					<img src="@/assets/QQ.svg">
					<div class="contact_type">QQ沟通</div>
					<div class="contact_time">快速套餐购买咨询</div>
				</div>
				<div class="contact-box">
					<img src="@/assets/phone.svg">
					<div class="contact_type">400-9613-900</div>
					<div class="contact_time">工作时间：9:00-20:00</div>
				</div>
				<div class="contact-box weixin">
					<div class="weixin_intro">
						<img src="@/assets/weixin.svg">
						<div class="contact_type">QQ沟通</div>
						<div class="contact_time">快速套餐购买咨询</div>
						<div class="code">
							<img src="https://static.paixin.com/paixin-vision/static/img/code.58a0739.jpg" class="codeImg">
						</div>
					</div>

				</div>
				<div class="contact-box">
					<img src="@/assets/help.svg">
					<div class="contact_type">帮助中心</div>
					<div class="contact_time">有问题点这里</div>
				</div>
			</div>
		</div>
		<div class="index__copybottom">
			<div class="index__href_wrap">
				<div class="index__about_left">
					<h1>路上晴空</h1>
					<p>中国领先的视觉版权内容平台</p>
					<p>400-9613-900</p>
				</div>
				<div class="index__about_center">
					<div class="index__about" v-for="(item,index) in titleArr" :key="index">
						<div><a href="#">{{item.text1}}</a></div>
						<div><a href="#">{{item.text2}}</a></div>
						<div><a href="#">{{item.text3}}</a></div>
						<div><a href="#">{{item.text4}}</a></div>				
					</div>
				</div>	
				<div class="index__about_right">
					<img src="https://v.paixin.com/static/img/QRcode.jpg">
					<p>添加拍信微信客服</p>
				</div>
			</div>
			<div class="index__gongshang">
				个人学习制作网站,不作任何商业用途
				<a href="#"> 图片来自拍信网</a>
				&nbsp;&nbsp;|&nbsp; 
				<a href="">图片来自拍信网</a>
			</div>
		</div>
	</div>
</template>


<script>
	export default {
	data(){
		return{
			titleArr:[
				{text1:"探索与想法",text2:"公益基金",text3:"7MX摄影社区",text4:"授权说明"},
				{text1:"拍信研究院",text2:"关于拍信",text3:"加入我们",text4:"表扬我们"},
				{text1:"拍信社群",text2:"商务合作",text3:"摄影师签约",text4:"设计师签约"},
				{text1:"拍信工具",text2:"企业定制",text3:"我要供稿"},				
			]
		}
	}
	}
</script>

<style scoped = "scoped">
	.BaseLink {
		/* position: relative; */
		width: 100%;
		margin: 0 auto;
		padding-top: 32px;
		/* position: absolute;
		top:1800; */
	}

	.contact_title {
		width: 140px;
		height: 46px;
		font-weight: bolder;
		font-size: 35px;
		margin: 0 auto;
	}

	.contact_menu {
		margin: 42px auto;
		width: 1200px;
		display: flex;
		justify-content: space-between;
	}

	.contact-box {
		width: 286px;
		text-align: center;
		height: 150px;
		cursor: pointer;
		overflow: hidden;
		border-left: 1px dotted #d3d3d3;
	}

	.contact-box:first-of-type {
		border-left: 0;
	}


	.contact_type {
		font-size: 20px;
		font-weight: 600;
		color: #333333;
		line-height: 28px;
		padding: 30px 0 11px;
	}

	.contact_time {
		font-size: 14px;
		color: #666666;
		line-height: 20px;
	}

	.contact_time:hover {
		color: black;
	}

	.contact-box img {
		border-style: none;
		vertical-align: middle;
		width: 50px;
		height: 50px;
	}

	.weixin_intro .codeImg {
		width: 160px;
		height: 160px;
		margin-top: 10px;
	}

	.weixin_intro .code {
		height: 226px;
		width: 282px;
	}

	.weixin_intro {
		transition: 0.5s;
	}

	.weixin_intro:hover {
		transform: translate(0px, -150px);
	}
	.index__copybottom {
		width: 1200px;
		margin: 0 auto;
	}
	.index__href_wrap {
		width: 1200px;
		display: flex;
		justify-content: space-between;
	}
	
	.index__about_left {
		width: 20%;
		margin-right: 70px;
	}
	.index__about_left h1{
		font-size: 50px;
		font-weight: bolder;
		font-family: "华文行楷";
	}
	.index__about_left p:nth-of-type(1){
		font-size: 16px;
		padding-top: 16px;
	}
	.index__about_left p:nth-of-type(2){
		font-size: 29px;
		padding-top: 20px;
		color: red;
		font-weight: bolder;
	}
	
	.index__about_center {
		width: 60%;
		padding-top: 10px;
		display: flex;
		justify-content: space-around;
		flex-wrap: nowrap;
	}
	 .index__about_center .index__about{
		width: 25%;
		height: 160px;
		display: flex;
		align-items: flex-start;
		flex-direction: column;
	}
	.index__about_center .index__about div {
		margin-bottom: 30px;
	}
	 .index__about_center .index__about a {
		 color: #666666;
		 font-size: 13px;
		 text-decoration: none;
	 }
	 .index__about_center .index__about a:hover {
		 color:#222222;
		 text-decoration: underline;
	 }
	 .index__about div:first-of-type a{
		 font-weight: 600;
		  font-size: 18px;
		  color: #000000;
	 }
	 .index__about div:first-of-type a:hover{
		 text-decoration: none;
		 color: black;
	 }
	.index__about_right {
		width: 20%;
		text-align: center;
		margin: 0 auto;
		
	}	
	.index__about_right img {
		width: 168px;
		height: 168px;
	}
	.index__about_right p {
		color: gray;
		font-size: 14px;
	}
	
	.index__gongshang {
		width: 100%;
		height: 60px;
		color: gray;
		line-height: 60px;
		text-align: center;
	}
	.index__gongshang a {
		color: gray;
		text-decoration: none;
	}
	.index__gongshang a:hover {
		color: #222222;
	}
</style>
