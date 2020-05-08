// pages/search/search.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    product:[],
    name:""
  },
  search:function(event){
    var that = this;
    let name1 = event.detail.value.name1;
    this.setData({
      name:name1
    })
  },
  toSearch:function(event){
    let name = this.data.name;
    var that = this;
    wx.request({
      url: `http://192.168.0.103:82/search?name=${name}`,
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