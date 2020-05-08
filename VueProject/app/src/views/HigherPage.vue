<template>
<!-- 高端页 -->
    <div>
		<HigherPageTop>
			<SearchBar></SearchBar>
		</HigherPageTop> 
		 <KeepsLoading></KeepsLoading>
    </div>
</template>
<script>	
import HigherPageTop from"@/components/HigherPageTop.vue"
import SearchBar from"@/components/SearchBar.vue"
import KeepsLoading from"@/components/KeepsLoading/KeepsLoading.vue"
export default {
    components:{
			HigherPageTop,
            SearchBar,
			KeepsLoading,
        }
}
</script>

<style scoped>
    
</style>
