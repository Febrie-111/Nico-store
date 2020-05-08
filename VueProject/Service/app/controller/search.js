'use strict';

const Controller = require('egg').Controller;

class SearchController extends Controller {
  async search() {
    var data = await this.service.search.search(this.ctx.query);
    this.ctx.body = data
  }
}

module.exports = SearchController;
