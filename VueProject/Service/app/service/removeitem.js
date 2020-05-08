const Service = require('egg').Service;
class UserService extends Service {
  async removeitem(res) {
    let itemID = res.itemID;
    let userName = res.userName;
    let sql = `delete from car where itemID="${itemID}" and userName="${userName}"`
    const data1 = await this.app.mysql.query(sql)
    return data1
  }
  async RemoveAllItem(res){
    let userName = res.userName;
    let sql = `delete from car where userName="${userName}"`
    const data1 = await this.app.mysql.query(sql)
    return data1
  }
}
module.exports = UserService;