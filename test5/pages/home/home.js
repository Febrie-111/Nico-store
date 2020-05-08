// pages/home/home.js
const app=getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {
    product:[],
    fruit:[],
    meet:[],
    specialOff:[],
    currentTab: 0,//tab默认为0，也就是默认第一项
    location:"",
    add:false,
    openid:"",
  },
//点击切换tab
  switchNav: function (res) {
    var _this = this;
    if (this.data.currentTab === res.target.dataset.current) {
      return false;
    } else {
      _this.setData({
        currentTab: res.target.dataset.current
      });
    }
  },
  toSearch:function(event){
    wx.navigateTo({
      url: '../search/search',
    })
  },
  getProdcut:function(){
    var that = this;
    wx.request({
      url: "http://192.168.0.103:82/getProduct",
      method: "GET",
      header: {
        'content-type': 'application/json' // 默认值
      },
      success(res) {
        that.setData({
          product:res.data 
        })
      }
    })
  },
  getFruit:function(){
    var that = this;
    wx.request({
      url: "http://192.168.0.103:82/getFruit",
      method: "GET",
      header: {
        'content-type': 'application/json' // 默认值
      },
      success(res) {
        that.setData({
          fruit:res.data 
        })
      }
    })
  }, 
  getMeet:function(){
    var that = this;
    wx.request({
      url: "http://192.168.0.103:82/getMeet",
      method: "GET",
      header: {
        'content-type': 'application/json' // 默认值
      },
      success(res) {
        that.setData({
          meet:res.data 
        })
      }
    })
  },
  getSpecialOff:function(){
    var that = this;
    wx.request({
      url: "http://192.168.0.103:82/getSpecialOff",
      method: "GET",
      header: {
        'content-type': 'application/json' // 默认值
      },
      success(res) {
        that.setData({
          specialOff:res.data 
        })
      }
    })
  },
  commTo:function(event){
    let id = event.currentTarget.dataset.id;
    wx.navigateTo({
      url: `../common/common?id=${id}`,
    })
    
  },
  fruitTo:function(event){
    let id = event.currentTarget.dataset.id;
    wx.navigateTo({
      url: `../fruit/fruit?id=${id}`,
    })
  },
  meetTo:function(event){
    let id = event.currentTarget.dataset.id;
    wx.navigateTo({
      url: `../meet/meet?id=${id}`,
    })
  },
  offTo:function(event){
    let id = event.currentTarget.dataset.id;
    wx.navigateTo({
      url: `../specialOff/specialOff?id=${id}`,
    })
  },
  getLocation:function(event){
    wx.chooseLocation({
      complete: (res) => {
        console.log(res);
      },
    })
  },
  add:function(event){
    if(!app.globalData.userInfo){
      wx.switchTab({
        url: '../login/login',
      })
    }
    else{
    let productid = event.currentTarget.dataset.id;
    let openid = wx.getStorageSync('openid');
      wx.request({
        url: `http://192.168.0.103:82/add?productid=${productid}&openid=${openid}`,
        method: "GET",
        header: {
          'content-type': 'application/json' // 默认值
        },
        success(res) {
          console.log(res.data,333)
        }
      })
    }
  },
  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    let that = this
    this.getProdcut();
    this.getFruit();
    this.getMeet();
    this.getSpecialOff();
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
       add:true
     })
    }
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