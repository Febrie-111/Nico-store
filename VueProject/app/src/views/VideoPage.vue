<template>
<!-- 视频页 -->
    <div>
        <div class="searchBar"><SearchBar :mytype1="media1"></SearchBar></div>
        <BackgroundMedia></BackgroundMedia>
		<div class="mybox" style="width: 100%; height: 800px;">
		<Videopic v-for="(item,index) in arr_video" :key="index" :my_src="item.src" :my_index="index"></Videopic>
		</div>
    </div>
</template>


<script>
import SearchBar from"@/components/SearchBar.vue"
import BackgroundMedia from "@/components/BackgroundMedia.vue"
import Videopic from "./VideoPage/Video_pic.vue"
export default {
    components:{
            SearchBar,
            BackgroundMedia,
			Videopic
        },
		data() {
			return {
				arr_video:"",
				media1:"media"
			}
		},
		created() {
			let that = this;
			this.axios("http://localhost:7001/getMedia").then((res)=>{
				console.log(res.data)
				that.arr_video = res.data
			})
		}
}
</script>

<style scoped>
    .vido{
		margin-top: 10px;
	}
	.mybox{
		width: 60%;
		position: relative;
		top: -230px;
		display: flex;
		flex-wrap: wrap;
		flex-direction: row;
		justify-content: space-around;
	}
</style>