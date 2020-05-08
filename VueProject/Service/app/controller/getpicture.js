'use strict';

const Controller = require('egg').Controller;

class GetPicturehController extends Controller {
  async getpicture() {
    var data = await this.service.getpicture.getpicture();
    this.ctx.body = data
  }
  async getpictures() {
    var data = await this.service.getpicture.getpictures();
    this.ctx.body = data
  }
}

module.exports = GetPicturehController;
