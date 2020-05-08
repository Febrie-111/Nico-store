<template>
  <!-- 登录注册模块 -->
  <div>
    <el-button type="text" @click="dialogFormVisible = true" v-if="!isLogin" class="user" style="font-weight: bold;
  font-size:20px;color: red;">登录/注册</el-button>
    <div v-if="isLogin" class="user">
	  
      <router-link to="/mycenter">个人中心</router-link>
      <el-button type="text" @click="LoginOut" style="color: red; font-weight: bold;font-size:20px;">退出</el-button>
    </div>
    <el-dialog :title="LogOrReg" :visible.sync="dialogFormVisible" @closed="resetForm('ruleForm')">
      <div v-if="Login">
        <el-form el-form :model="ruleForm" :rules="rules" ref="ruleForm">
          <el-form-item label="用户名" prop="name">
            <el-input placeholder="请输入用户名" v-model="ruleForm.name"></el-input>
          </el-form-item>
          <el-form-item label="密码" prop="password">
            <el-input placeholder="请输入密码" v-model="ruleForm.password" show-password></el-input>
          </el-form-item>
        </el-form>
      </div>
      <div v-if="Register">
        <el-form el-form :model="ruleForm" :rules="rules" ref="ruleForm">
          <el-form-item label="用户名" prop="name">
            <el-input placeholder="请输入用户名" v-model="ruleForm.name"></el-input>
          </el-form-item>
          <el-form-item label="密码" prop="password">
            <el-input placeholder="请输入密码" v-model="ruleForm.password" show-password></el-input>
          </el-form-item>
          <el-form-item label="确认密码" prop="checkPass">
            <el-input placeholder="请再次输入密码" v-model="ruleForm.checkPass" show-password></el-input>
          </el-form-item>
        </el-form>
      </div>

      <div slot="footer" class="dialog-footer">
        <el-button @click="LogToReg('ruleForm')" class="btn-left" v-if="NoName">没有账号?</el-button>
        <el-button @click="dialogFormVisible = false">取 消</el-button>
        <el-button type="primary" @click="submitForm('ruleForm')">{{LogOrReg}}</el-button>
      </div>
    </el-dialog>
  </div>
</template>


<script>
export default {
  name: "LogAndReg",
  data() {
    var validatePass2 = (rule, value, callback) => {
      if (value === "") {
        callback(new Error("请再次输入密码"));
      } else if (value !== this.ruleForm.password) {
        callback(new Error("两次输入密码不一致!"));
      } else {
        callback();
      }
    };
    return {
      LogOrReg: "登录",
      dialogTableVisible: false,
      dialogFormVisible: false,
      Login: true,
      Register: false,
      NoName: true,
      isLogin: this.$store.state.a.isLogin,
      ruleForm: {
        name: "",
        password: "",
        checkPass: ""
      },
      //前端验证输入信息
      rules: {
        name: [
          { required: true, message: "请输入用户名", trigger: "blur" },
          { min: 3, max: 8, message: "长度在 3 到 8 个字符", trigger: "blur" }
        ],
        password: [
          { required: true, message: "请输入密码", trigger: "blur" },
          { min: 6, max: 13, message: "长度在 6 到 13 个字符", trigger: "blur" }
        ],
        checkPass: [
          { validator: validatePass2, trigger: "blur", required: true }
        ]
      }
    };
  },
  methods: {
    //登录
    submitForm(formName) {
      if (this.LogOrReg == "登录") {
        this.$refs[formName].validate(valid => {
          if (valid) {
            this.axios
              .post(
                `http://127.0.0.1:7001/login`,{name:`${this.ruleForm.name}`,password:`${this.ruleForm.password}`}
              )
              .then(res => {
                if (res.data.code == 2000) {
                  this.dialogFormVisible = false;
                  localStorage.setItem("userName", `${this.ruleForm.name}`);
                  this.$store.commit(
                    "a/Login",
                    localStorage.getItem("userName")
                  );
                  alert(res.data.info);
                  location.reload();
                } else {
                  alert(res.data.info);
                }
              });
          } else {
            console.log("error submit!!");
            return false;
          }
        }); //注册
      } else if (this.LogOrReg == "注册") {
        this.$refs[formName].validate(valid => {
          if (valid) {
            this.axios
              .post(
                `http://127.0.0.1:7001/Register`,{name:`${this.ruleForm.name}`,password:`${this.ruleForm.password}`}
              )
              .then(res => {
                if (res.data.code == 2000) {
                  this.dialogFormVisible = false;
                  //设置缓存
                  localStorage.setItem("userName", `${this.ruleForm.name}`);
                  //传给仓库
                  this.$store.commit(
                    "a/Login",
                    localStorage.getItem("userName")
                  );
                  alert(res.data.info);
                  location.reload();
                } else {
                  alert(res.data.info);
                }
              });
          } else {
            console.log("error submit!!");
            return false;
          }
        });
      }
    },
    //模态框消失重置
    resetForm(formName) {
      this.$refs[formName].resetFields();
      this.LogOrReg = "登录";
      this.Login = true;
      this.Register = false;
      this.NoName = true;
    },
    //切换到注册重置表单
    LogToReg(formName) {
      this.$refs[formName].resetFields();
      this.Login = false;
      this.Register = true;
      this.LogOrReg = "注册";
      this.NoName = false;
    },
    //退出
    LoginOut() {
      localStorage.removeItem("userName");
      location.reload();
    }
  }
};
</script>

<style scoped>
.user {

  position: absolute;
  right: 30px;
  top: 15px;
  z-index: 1000;
  color: burlywood;
  line-height: 30px;
}
.btn-left {
  float: left;
}
a {
	color: red;
  /* color: #409eff; */
  /* font-size: 14px; */
  font-weight: bold;
  font-size:20px;
  padding: 10px;
  text-decoration-line: none;
}
</style>