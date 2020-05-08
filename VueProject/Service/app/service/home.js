const Service = require('egg').Service;
class HomeService extends Service {
  async getlunbopic() {
    
    const sql=`select * from picture order by id limit 0,6;`
    const data = await this.app.mysql.query(sql);
    console.log(data)
    return data;
  }
}
module.exports = HomeService;