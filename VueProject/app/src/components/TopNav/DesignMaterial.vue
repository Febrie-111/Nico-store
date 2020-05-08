<template>
<!-- 设计素材 -->
    <div class="items_box">
        <span v-for="(items,index) in arr" :key="index" @click=fn(items.name)>{{items.name}}</span>
    </div>
</template>

<script>
export default {
    data() {
        return {
            arr:[{name:"自然风景"},{name:"人物情感"},{name:"餐饮美食"},{name:"室内家具"},{name:"建筑空间"},{name:"教育文化"},{name:"背景素材"},{name:"生活方式"},{name:"美容养生"}]
        }
    },
	methods:{
		fn(arg){
			this.$emit("maoshen",arg)
		}
	}
}
</script>


<style scoped>
    .items_box{
        width:100%;
        height:100%;
        display:flex;
        flex-direction:row;
        flex-wrap:wrap;
        justify-content:space-around;
        /* background:blue; */
        align-items: center;
    }
    .items_box span{
        width:30%;
        /* height:30%; */
    }
</style>