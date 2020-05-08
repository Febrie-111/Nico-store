const Service = require('egg').Service;
class getimgUserService extends Service {
  async getimg(obj) {
    const sql=`select * from picture where keywords="${obj.myname}"`
    console.log(sql)
    const data = await this.app.mysql.query(sql);
    console.log(data)
    return data;
  }
}
module.exports = getimgUserService;