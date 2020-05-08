<template><video id="v1" autoplay loop muted>
    <source
      src="http://bpic.588ku.com/video_listen/588ku_video/20/03/23/11/59/30/video5e78342249f2b.mp4"
      type="video/mp4"
    />
  </video>
 
</template>
<script>
export default {};
</script>
<style scoped>
video {
  position: relative;
  right: 0px;
  bottom: 300px;
  min-width: 100%;
  min-height: 100%;
  height: auto;
  width: auto;
  /*加滤镜*/
  /*filter: blur(15px); //背景模糊设置 */
  /*-webkit-filter: grayscale(100%);*/
  /*filter:grayscale(100%); //背景灰度设置*/
  z-index: -11;
}
source {
  min-width: 100%;
  min-height: 100%;
  height: auto;
  width: auto;
}
</style>