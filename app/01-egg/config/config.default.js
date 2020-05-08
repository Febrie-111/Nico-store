/* eslint valid-jsdoc: "off" */

'use strict';

/**
 * @param {Egg.EggAppInfo} appInfo app info
 */
module.exports = appInfo => {
  /**
   * built-in config
   * @type {Egg.EggAppConfig}
   **/
  const config = exports = {};
  config.cluster = {
    listen: {
      path: '',
      port: 82,
      hostname: '',//默认localhost和ip地址,上线时用0.0.0.0
    }
  };
  config.security={
    csrf:{
      enable:false
    }
  }

  config.multipart = {
    mode: 'file',
  };
  config.cors = {
    origin: '*',
    allowMethods: 'GET,HEAD,PUT,POST,DELETE,PATCH,OPTIONS'
};


  // use for cookie sign key, should change to your own and keep security
  config.keys = appInfo.name + '_1584410452548_6213';

  // add your middleware config here
  config.middleware = [];

  // add your user config here
  const userConfig = {
    // myAppName: 'egg',
  };

  return {
    ...config,
    ...userConfig,
  };
};
