<template>
  <!-- 首页 -->
  <div>
    <SearchBar></SearchBar>
	<div style="position: relative;height:900px;width: 100%;" >
		<VideoPic></VideoPic>
		<Lunbo></Lunbo>
	</div>
    <AdvertisingSide></AdvertisingSide>
    <AdvertisingCenter></AdvertisingCenter>
    <DynamicComponents></DynamicComponents>
    <KeepsLoading></KeepsLoading>
  </div>
</template>


<script>
import SearchBar from '@/components/SearchBar.vue'
export default {
  name: "HomePage",
  components: {
    SearchBar,
    AdvertisingSide: () => import("@/components/AdvertisingSide.vue"),
    AdvertisingCenter: () => import("@/components/AdvertisingCenter.vue"),
    KeepsLoading: () => import("@/components/KeepsLoading/KeepsLoading.vue"),
    DynamicComponents: () =>import("@/components/DynamicComponents/DynamicComponents.vue"),
	Lunbo:()=>import("./HomePage/lunbo.vue"),
	VideoPic:()=>import('./HomePage/BackgroundMedia.vue')
  },
  
};
</script>

<style scoped="scoped">
	
</style>

