<template>
  <!-- 搜索栏模块 -->
  <div class="searchModel">
    <el-input
      placeholder="输入关键字进行搜索"
      v-model="input1"
      class="input-with-select"
      style="width:100%;"
    >
      <el-select v-model="select" slot="prepend" placeholder="请选择类别" class="selectbutton">
        <el-option label="图片" value="picture"></el-option>
        <el-option label="视频" value="media"></el-option>
      </el-select>
      <el-button slot="append" icon="el-icon-search" @click="Tosearch" class="tosearch"></el-button>
    </el-input>
    <div class="hotSearch">
      热门搜索:
      <ul class="hotItems">
          <router-link to="/search?keywords=狗">狗</router-link>
          <router-link to="/search?keywords=风景">风景</router-link>
          <router-link to="/search?keywords=自然风光">自然风光</router-link>
          <router-link to="/search?keywords=人物">人物</router-link>
          <router-link to="/search?keywords=樱之物语">樱之物语</router-link>
          <router-link to="/search?keywords=古风建筑">古风建筑</router-link>
      </ul>
    </div>
  </div>
</template>


<script>
export default {
  name: "SearchBar",
  data() {
    return {
      input1: "",
      select: "picture"
    };
  },
  methods: {
    Tosearch() {
      if (this.input1 == "" || this.select == "") {
        if (this.select == "") {
          this.$message("请选择类别");
        } else if (this.input1 == "") {
          this.$message("请输入关键词");
        }
      } else {
        this.$router.push({
          name: "search",
          params: { type: `${this.select}`, keywords: `${this.input1}` }
        });
      }
    }
  }
};
</script>

<style scoped>
.searchModel {
  top: 80px;
  margin: 0 auto;
  margin-bottom: 50px;
  padding: 1px;
  width: 80%;
  position: relative;
}
.selectbutton {
  width: 130px;
  background-color: #434d65;
  color: white;
  font-size: 16px;
}
.tosearch {
  background-color: #434d65;
  color: white;
  font-size: 16px;
  border: 0;
}
.hotSearch {
  margin-top: 20px;
  color: white;
}
.hotItems{
  display: inline-block;
  padding: 20px;
}
.hotItems a{
  color: #EDEEF0;
  text-decoration: none;
  margin: 0 20px;
}
.hotItems a:hover{
  color: white;
}
</style>