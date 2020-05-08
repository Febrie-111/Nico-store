'use strict';

const Controller = require('egg').Controller;

class AddToCarhController extends Controller {
  async addtocar() {
    var data = await this.service.addtocar.addtocar(this.ctx.query);
    this.ctx.body = data
  }
}

module.exports = AddToCarhController;
