const Service = require('egg').Service;
class UserService extends Service {
  async getpicture() {
    let sql = `select * from picture order by price`
    const data = await this.app.mysql.query(sql)
    return data
  }
  async getpictures() {
    let sql = `select * from picture order by price DESC`
    const data = await this.app.mysql.query(sql)
    return data
  }
}
module.exports = UserService;