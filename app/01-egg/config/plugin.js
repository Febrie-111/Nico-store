'use strict';

/** @type Egg.EggPlugin */
module.exports = {
  // had enabled by egg
  // static: {
  //   enable: true,
  // } 

};
config.cors = {
  origin:'http://ip:port',
  credentials: true,
  allowMethods: 'GET,HEAD,PUT,POST,DELETE,PATCH'
};
