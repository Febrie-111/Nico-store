const Service = require('egg').Service;
class UserService extends Service {
  async goods(param) {
    const sql=`select * from picture limit ${param.number},30`
    const data = await this.app.mysql.query(sql);
    return data;
  }
  async  SimilarImg(paramObj) {
    const sql=`select * from picture where species = "${paramObj.species}"`
    const data = await this.app.mysql.query(sql);
    return data;
  }
}
module.exports = UserService;