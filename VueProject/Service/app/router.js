'use strict';

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = app => {
  const { router, controller } = app;
  router.post('/Register', controller.home.register);//注册
  router.post('/login', controller.home.login);//登录
  router.get('/search', controller.search.search);//请求搜索数据
  router.get('/goods', controller.home.goods);//请求商品数据
  router.get('/SimilarImg', controller.home.SimilarImg);//请求图片
  router.get('/AddToCar', controller.addtocar.addtocar);//加入购物车
  router.get('/GetCar', controller.getcar.getcar);//获取购物车中的数据
  router.get('/RemoveItem',controller.removeitem.removeitem)//删除购物车中的一件商品
  router.get('/RemoveAllItem',controller.removeitem.RemoveAllItem)//删除购物车中所有的商品
  router.get('/getMedia', controller.video.getMedia);//获取视频
  router.get('/getlunbopic', controller.home.getlunbopic);//获取轮播图片
  router.post('/changePW', controller.mycenter.changePW);//改变密码
  router.get('/getimg', controller.getimg.getimg);//得到图片
  router.get('/getpicture', controller.getpicture.getpicture);//得到所有图片。升序排列
  router.get('/getpictures', controller.getpicture.getpictures);//得到所有图片。降序排列
};
