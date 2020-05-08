const Service = require('egg').Service;
class UserService extends Service {
  async getMedia() {
    const sql=`select * from media order by id limit 1,20;`
    const data = await this.app.mysql.query(sql);
    return data;
  }
}
module.exports = UserService;