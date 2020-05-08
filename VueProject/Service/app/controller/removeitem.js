'use strict';

const Controller = require('egg').Controller;

class RemoveItemController extends Controller {
  async removeitem() {
    var data = await this.service.removeitem.removeitem(this.ctx.query);
    this.ctx.body = data
  }
  async RemoveAllItem(){
    var data = await this.service.removeitem.RemoveAllItem(this.ctx.query);
    this.ctx.body = data
  }
}

module.exports = RemoveItemController;
