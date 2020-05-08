<template>
	<!-- 视频组件 -->
	<div class="vido">
		<video class="video" @mouseover="videoPlayback" @mouseout="videoStopped" width="340px" height="190px">
			<source type="audio/mp4" :src="my_src">
			
		</video>
	</div>
</template>

<script>
	export default {
		data() {
			return {
				key:0
			}
		},
		created() {
			this.key=this.my_index;//传值获取下标
		},
		methods: {
			videoPlayback() {
				//获取视频标签
				let video = document.getElementsByClassName("video")[this.key]
				console.log(video)
				//给视频标签添加缓存播放---video标签属性。
				video.setAttribute("autoplay", "autoplay")
				//给视频标签添加循环播放---video标签属性。
				video.setAttribute("loop", "loop")
				//播放视频
				video.play()
			},
			videoStopped() {
				//获取视频标签
				let video = document.getElementsByClassName("video")[this.key]
				//停止播放
				video.pause()
			}
		},
		props:['my_src','my_index']
		
	}
</script>

<style scoped>
	.vido{
		margin-top: 30px;
		display:inline-block
	}
</style>
