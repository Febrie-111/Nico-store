// pages/car/car.js
const app=getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {
    view:false,
    product:[]
  },
  toLogin:function(){
    wx.switchTab({
      url: '../login/login',
    })
  },
  getCar:function(){
    var _this=this;
    let openid = wx.getStorageSync('openid');
    wx.request({
      url: `http://192.168.0.103:82/getCar?openid=${openid}`,
      method: "GET",
      header: {
        'content-type': 'application/json' // 默认值
      },
      success(res) {
        console.log(res.data)
        _this.setData({
          product:res.data
        })
      }
    })
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {

  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    var _this = this;
    if(app.globalData.userInfo){
     _this.setData({
       view:true
     })
    }
    this.getCar()
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})