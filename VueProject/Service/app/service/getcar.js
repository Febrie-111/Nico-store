const Service = require('egg').Service;
class UserService extends Service {
  async getcar(res) {
    let arr = [];
    let userName = res.userName;
    let sql = `select * from car where userName="${userName}"`
    const data1 = await this.app.mysql.query(sql)
    for(let i = 0;i<data1.length;i++){
        let id = data1[i].itemID;
        let sql = `select * from picture where id="${id}"`
        const data2 = await this.app.mysql.query(sql)
        arr.push(data2[0])
    }
    return arr
  }
}
module.exports = UserService;