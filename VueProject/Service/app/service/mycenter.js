const Service = require('egg').Service;
class updatePWUserService extends Service {
  async updatePW(changePW) {
      //UPDATE <表名> SET pasword=值  where name=“XXX”
     const sql=`UPDATE user SET password='${changePW.changeword}',name='${changePW.changeName}' where name='${changePW.myusername}'`
     console.log(sql)
    const data = await this.app.mysql.query(sql);
    return data;
  }
}
module.exports = updatePWUserService;