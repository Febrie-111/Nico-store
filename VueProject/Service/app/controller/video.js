'use strict';
const Controller = require('egg').Controller;
class videoController extends Controller {
  async getMedia() {
    const { ctx } = this;
    let data =await this.service.video.getMedia()
    console.log(data)
    this.ctx.body = data
  }
}
module.exports = videoController;