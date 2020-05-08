// pages/register/register.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    username:"",
    password:"",
    imgsrc:"../../img/close.png",
    showEye:true,
    show:true
  },
  eyeSwitch:function(event){
    if(this.data.showEye){
      this.setData({
        imgsrc:"../../img/open.png",
        showEye:false
      })
     
    }else{
      this.setData({
        imgsrc:"../../img/close.png",
        showEye:true
      })
    }
  },
  getUserName:function(event){
    var USERNAME = event.detail.value;
    this.setData({
      username:USERNAME
    })
    this.show()
  },
  getPassword:function(event){
    var PASSWORD = event.detail.value;
    this.setData({
      password:PASSWORD
    })
    this.show()
  },
  login:function(event){
    console.log(event.detail.value)
  },
  show:function(){
    if(this.data.password==""||this.data.username==""){
      this.setData({
        show:true
      })
    }else{
      this.setData({
        show:false
      })
    }
  },
  loginSuccess:function(){
    wx.redirectTo({
      url: '../home/home'
    })
  },
  register:function(){
    wx.navigateTo({
      url: '../register/register',
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