<template>
<!-- 正版图片 -->
    <div class="items_box">
        <div v-for="(items,index) in arr" :key="index">
            <img :src="items.img" class="items_img">
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            arr:[{img:'http://res.gaga.me/upload/images/2017/0922/65359c4b2363bd9d.jpg'},
            {img:'http://res.gaga.me/upload/images/2017/0921/d6959c35d2028032.jpg'},
            {img:'http://images.gaga.me/insets/2018/0313/d305aa78d8400729.jpg'},
            {img:'http://images.gaga.me/insets/2018/0403/8d35ac31c81c6ce3.jpg'},
            {img:'http://images.gaga.me/insets/2018/0507/fcd5af022908031a.jpg'},
            {img:'http://images.gaga.me/insets/2018/0424/6175aded4f17fdae.jpg'},
            {img:'http://images.gaga.me/insets/2018/0508/3985af170180259c.jpg'},
            {img:'http://images.gaga.me/insets/2018/0619/1ca5b28a5c2dae6c.jpg'},
            {img:'//images.gaga.me/images/2019/0506/0df5ccfe8a240dec.jpg'}]
        }
    },
}
</script>


<style scoped>
    .items_box{
        width:100%;
        height:100%;
        /* background:yellow; */
        display:flex;
        flex-direction:row;
        flex-wrap:wrap;
        justify-content:space-around;
        align-items: center;
    }
    .items_box div{
        width:30%;
        height:30%;
        background:red;
    }
    .items_img{
        width:100%;
        height:100%;
    }
</style>