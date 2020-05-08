'use strict';

const Controller = require('egg').Controller;

class HomeController extends Controller {
  async register() {
    var data = await this.service.register.register(this.ctx.request.body);
    this.ctx.body = data
  }
  async login() {
    var data = await this.service.login.login(this.ctx.request.body);
    if (data=="") {
      this.ctx.body = { code: 4004,info: "用户名或密码错误"}
    } else {
      this.ctx.body = { code: 2000,info: "登录成功"}
    }
  } 
  async goods() {
    var data = await this.service.goods.goods(this.ctx.query);
    this.ctx.body = data
  }
  async SimilarImg() {
    var data = await this.service.goods.SimilarImg(this.ctx.query);
    this.ctx.body = data
  }

  async getlunbopic(){
    let data = await this.service.home.getlunbopic();
    this.ctx.body = data
  }
  
}

module.exports = HomeController;
