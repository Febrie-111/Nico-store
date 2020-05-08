// pages/login/login.js
const app = getApp()
Page({
  /**
   * 页面的初始数据
   */
  data: {
    view:false,
    name:"",
    img:"",
  },
  getUserInfo:function(event){
    app.globalData.userInfo=event.detail.userInfo
    let myAppID="wxac19122a93486a3f";
    let myAppSecret="08aa325f9126ab1a3e3becb80b22652c";
    wx.login({
      success: function(res) {
        let myCode = res.code
        wx.request({
          url: `https://api.weixin.qq.com/sns/jscode2session?appid=${myAppID}&secret=${myAppSecret}&js_code=${myCode}&grant_type=authorization_code`,
          method: "GET",
          header: {
        'content-type': 'application/json' // 默认值
        },
        success(res) {
        wx.setStorageSync('openid', res.data.openid)
        }
        })
      },
    })
   wx.showToast({
     title: '登录成功',
     success(res){
      wx.reLaunch({
        url: '../home/home',
      })
     }
   })
  },
  getUser:function(){
  var id= wx.getStorageSync('openid');
  console.log(id)
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
       view:true,
       name:app.globalData.userInfo.nickName,
      img:app.globalData.userInfo.avatarUrl,
     })
    }
    this.getUser()
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