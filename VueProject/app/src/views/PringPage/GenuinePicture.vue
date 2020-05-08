<template>
    <div>
        <LatesWork :mydata='mydata'></LatesWork>
    </div>
</template>
<script>
import LatesWork from "./LatestWork.vue"
export default {
    data() {
        return {
            mydata:[],
        }
    },
    components:{LatesWork},
    methods: {
        requestData() {
				this.axios(`http://127.0.0.1:7001/getpicture`)
					.then((results) => {
						this.mydata = results.data
					})
			}
    },
    mounted() {
        this.requestData()
    },
}
</script>
<style scoped>
    
</style>