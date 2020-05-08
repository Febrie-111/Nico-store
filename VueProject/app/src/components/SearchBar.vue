<template>
	<!-- 搜索栏模块 -->
	<div class="searchModel">
		<el-input placeholder="输入关键字进行搜索" v-model="input1" class="input-with-select" style="width:500px">
			<el-select v-model="select" slot="prepend" placeholder="请选择类别" style="width:130px;color:black;font-size:16px">
				<el-option label="图片" value="picture"></el-option>
				<el-option label="视频" value="media"></el-option>
			</el-select>
			<el-button slot="append" icon="el-icon-search" style="background-color:#FE293F;color:white;font-size:16px" @click="Tosearch"></el-button>
		</el-input>
		
		
		<div class="keyWordsSearch">
			<div class="hotSearch">热门搜索:</div>
		<ul>
			<li v-for="(item,index) in keywords" :key="index" @click="hotSearch(item)" v-show="mytype=='picture'">
				{{item}}
			</li>
			<li v-for="(item,index) in mediaArr" :key="index" @click="hotSearch(item)" v-show="mytype=='media'">
				{{item}}
			</li>
		</ul>
		</div>
	</div>
</template>


<script>
	export default {
		name: "SearchBar",
		data() {
			return {
				input1: '',
				select: '',
				mytype:'picture',
				keywords:["古风建筑","风景","美食","樱之物语","狗","人物"],
				mediaArr:["自然","延时","航拍","水下摄影"]
			}
		},
		props:["mytype1"],
		created() {
			if(this.mytype1==undefined){
				this.mytype="picture"
			}else if(this.mytype1=="media"){
				this.mytype="media"
			}
		},
		methods: {
			Tosearch() {
				if (this.input1 == "" || this.select == "") {
					if (this.select == "") {
						this.$message('请选择类别');
					} else if (this.input1 == "") {
						this.$message('请输入关键词');
					}
				} else {
					this.$router.push({
						name: 'search',
						params: {
							type: `${this.select}`,
							keywords: `${this.input1}`
						}
					})
				}
			},
			hotSearch(parameter){
				this.$router.push({
						name: 'search',
						params: {
							type: `${this.mytype}`,
							keywords: `${parameter}`
						}
					})
			}
		},
		
	};
</script>

<style scoped>
	.searchModel {
		top: 80px;
		margin: 0 auto;
		margin-bottom: 50px;
		padding: 1px;
		width: 500px;
		position: relative;
	}

	.keyWordsSearch {
		width: 100%;
		height: 80px;
		display: flex;
		justify-content: center;
		align-items: center;
		font-size: 16px;
		color: #FFFFFF;
	}
	.keyWordsSearch li {
		display: inline-block;
		list-style: none;
		margin-right: 20px;
		cursor: pointer;
		
		
	}
</style>
