'use strict';

const Controller = require('egg').Controller;

class GetCarhController extends Controller {
  async getcar() {
    var data = await this.service.getcar.getcar(this.ctx.query);
    this.ctx.body = data
  }
}

module.exports = GetCarhController;
