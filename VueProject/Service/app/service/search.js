const Service = require('egg').Service;
class UserService extends Service {
  async search(res) {
    let keywords = res.keywords;
    let type = res.type;
    let sql = `select * from ${type} where keywords = "${keywords}"`
    const data1 = await this.app.mysql.query(sql)
    return data1
  }
}
module.exports = UserService;