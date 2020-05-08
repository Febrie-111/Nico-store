<template>
<!-- 7KM -->
    <div class="items_box">
        <span v-for="(items,index) in arr" :key="index" @click=fn(items.name)>{{items.name}}</span>
    </div>
</template>

<script>
export default {
    data() {
        return {
            arr:[{name:"抽象创意"},{name:"汽车交通"},{name:"电子科技"},{name:"动物"},{name:"风景"},{name:"鲜花"},{name:"城市"},{name:"背景素材"},{name:"教育文化"}]
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
    }
    .items_box span{
        width:30%;
        /* height:30%; */
    }
</style>