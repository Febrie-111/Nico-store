'use strict';
const Controller = require('egg').Controller;
class changePWController extends Controller {
  async changePW() {
    const { ctx } = this;
    console.log(ctx.request.body)//收到前端的数据
    let result=await this.service.mycenter.updatePW(ctx.request.body)
    ctx.body = result;
  }
}
module.exports = changePWController;