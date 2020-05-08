const Service = require('egg').Service;
class UserService extends Service {
  async register(res) {
    let name = res.name;
    let password = res.password
    let sql = `select name from user where name = "${name}"`
    const data1 = await this.app.mysql.query(sql)
    if(data1==""){
      let sql = `insert into user(name,password) values("${name}",'${password}')`
      const data = await this.app.mysql.query(sql);
      return {code:2000,info:"注册成功"};
    }else{
      return{code:4002,info:"用户名已存在"}
    }
  }
  
}
module.exports = UserService;