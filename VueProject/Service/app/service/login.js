const Service = require('egg').Service;
class UserService extends Service {
  async login(res) {
    let name = res.name;
    let password = res.password
    let sql = `select name,password from user where name="${name}" and password="${password}"`
    const data = await this.app.mysql.query(sql);
    return data;
  }
  
}
module.exports = UserService;