-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.26 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.5.0.5220
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 h5 的数据库结构
CREATE DATABASE IF NOT EXISTS `h5` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_danish_ci */;
USE `h5`;

-- 导出  表 h5.car 结构
DROP TABLE IF EXISTS `car`;
CREATE TABLE IF NOT EXISTS `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_danish_ci NOT NULL DEFAULT '0',
  `phoneid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci COMMENT='购物车';

-- 正在导出表  h5.car 的数据：8 rows
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
REPLACE INTO `car` (`id`, `name`, `phoneid`) VALUES
	(17, '雾雨魔理沙', 14),
	(18, '雾雨魔理沙', 13),
	(9, '雾雨魔理沙', 20),
	(10, '雾雨魔理沙', 9),
	(11, '雾雨魔理沙', 11),
	(12, '雾雨魔理沙', 2),
	(19, '雾雨魔理沙', 18),
	(16, '雾雨魔理沙', 16);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;

-- 导出  表 h5.fruit 结构
DROP TABLE IF EXISTS `fruit`;
CREATE TABLE IF NOT EXISTS `fruit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_danish_ci DEFAULT '0',
  `img1` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `img2` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `Spec` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `date` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `location` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `price` varchar(50) COLLATE utf8_danish_ci DEFAULT '0',
  `off` varchar(50) COLLATE utf8_danish_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci COMMENT='永辉水果';

-- 正在导出表  h5.fruit 的数据：6 rows
/*!40000 ALTER TABLE `fruit` DISABLE KEYS */;
REPLACE INTO `fruit` (`id`, `name`, `img1`, `img2`, `Spec`, `date`, `location`, `price`, `off`) VALUES
	(1, '永辉农场波斯蜜瓜(1500-1700g/个)', 'https://img11.360buyimg.com/n7/jfs/t1/103771/15/14746/224937/5e688ba3E6a03d96a/a7a6995b84c92fe8.jpg', 'https://img13.360buyimg.com/n7/jfs/t1/98272/28/14523/245383/5e688baaE64bfcec6/102bfc3e06d661fb.jpg', '1500-1700g', '', '山东', '23.9', '已减14.1元'),
	(2, '半天边波斯蜜瓜(净果肉)(约450g)', 'https://img14.360buyimg.com/n7/jfs/t1/85175/37/14976/921474/5e6b39b4E41f893fa/67ce316efd6aea43.jpg', 'https://img13.360buyimg.com/n7/jfs/t1/108692/22/8690/68640/5e6b39a7E6e917f77/9607b8e20984a8c1.jpg', '450g', '', '山东', '14.9', ''),
	(3, '黑美人西瓜(4.2g-4.8kg)', 'https://img14.360buyimg.com/n7/jfs/t1/100337/1/14979/197704/5e6a5aadE37706fb3/08178e0ff96d744c.jpg', 'https://img12.360buyimg.com/n7/jfs/t1/10906/21/9258/129946/5c403d64Ef0ad107d/2eb436a76e30651c.jpg', '4.2kg-4.8kg', '', '海南', '22.8', ''),
	(4, '榴莲2.7kg-3.2kg/个', 'https://img11.360buyimg.com/n7/jfs/t24622/168/1466210857/627211/fd1957a0/5bb225e2Nb553ce4b.png', 'https://img12.360buyimg.com/n7/jfs/t1/70765/15/160/276573/5ce4aad8Eac87bad1/330244a505c10589.jpg', '2.7kg-3.2kg', '', '海南', '128', '已减40元'),
	(5, '进口山竹350g-450g', 'https://img12.360buyimg.com/n7/jfs/t28714/8/1227872042/427009/b9c1d5cd/5cda92beN7b002e68.jpg', 'https://img14.360buyimg.com/n7/jfs/t1/88895/28/17247/108283/5e85e5e9Edd076df9/dc2d82390731daae.jpg', '350g-450g', '', '泰国', '14.9', ''),
	(6, '台湾金砖凤梨[净果肉](约450g)', 'https://img10.360buyimg.com/n7/jfs/t1/29099/18/10894/432997/5c89a2cdEd9da0009/ea0e04d7bb25eba7.jpg', 'https://img11.360buyimg.com/n7/jfs/t1/76941/2/4931/212612/5d2fdb9dE98b6e9fb/a422b9a45116c2ad.jpg', '450g', '', '台湾', '16.8', '');
/*!40000 ALTER TABLE `fruit` ENABLE KEYS */;

-- 导出  表 h5.meet 结构
DROP TABLE IF EXISTS `meet`;
CREATE TABLE IF NOT EXISTS `meet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_danish_ci DEFAULT '0',
  `img1` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `Spec` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `date` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `location` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `img2` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `price` varchar(50) COLLATE utf8_danish_ci DEFAULT '0',
  `off` varchar(50) COLLATE utf8_danish_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci COMMENT='肉类';

-- 正在导出表  h5.meet 的数据：8 rows
/*!40000 ALTER TABLE `meet` DISABLE KEYS */;
REPLACE INTO `meet` (`id`, `name`, `img1`, `Spec`, `date`, `location`, `img2`, `price`, `off`) VALUES
	(1, '进口牛牛霖(400g)', 'https://img12.360buyimg.com/n7/jfs/t1/42468/27/2056/79714/5cc8edf7E55d1a767/c466dd138f583791.jpg', '400g', '', '日本', 'https://img12.360buyimg.com/n7/jfs/t1/93163/37/16587/94739/5e7d6aeeEdab2f919/db0d87b747d06b98.jpg', '31.8', ''),
	(2, '鲜鸭(1100g-1200g)', 'https://img11.360buyimg.com/n7/jfs/t1/110506/1/8098/127349/5e65aac8Ed41cd765/5f76072f832c1bc2.jpg', '1100-1200g', '', '四川', 'https://img12.360buyimg.com/n7/jfs/t1/86106/6/14429/194145/5e65aac9Ea9f997c7/242d5c2044f3ce11.jpg', '23.9', ''),
	(3, '肥瘦肉馅(鲜)约300g', 'https://img13.360buyimg.com/n7/jfs/t1/94578/15/12335/245939/5e4674d5E5d01c241/32cc5a7242990cf8.jpg', '300g', '', '四川', 'https://img10.360buyimg.com/n7/jfs/t1/7834/13/14021/70512/5c4faee2Edfbf0d64/5ea2c89a83bad044.jpg', '19.8', ''),
	(4, '后腿瘦肉约400g', 'https://img12.360buyimg.com/n7/jfs/t1/106132/24/15967/152127/5e78689eE4ab79f48/94e18152b0d6969d.jpg', '400g', '', '四川', 'https://img11.360buyimg.com/n7/jfs/t1/62561/40/7975/156209/5d5d1426E504e457f/7c2efbe310a269be.jpg', '28.8', ''),
	(5, '二刀前腿肉约500g', 'https://img13.360buyimg.com/n7/jfs/t3529/66/729289440/460663/a77ce779/58119b61N420d3971.jpg', '500g', '', '四川', 'https://img12.360buyimg.com/n7/jfs/t1/95000/7/16721/505186/5e7d4cbcE20f0b41a/8da0cb812eb31c54.jpg', '25.9', ''),
	(6, '鱿鱼须400g', 'https://img13.360buyimg.com/n7/jfs/t1/79909/13/4467/181744/5d2858eaEe0843b66/2add5c834a6a8cb6.jpg', '400g', '', '四川', 'https://img10.360buyimg.com/n7/jfs/t4423/213/356782149/100660/bb1b18f9/58ce53c4Nbe293e15.jpg', '32.8', ''),
	(7, '草鱼(默认称重后宰杀)(1.2kg-1.4kg)', 'https://img13.360buyimg.com/n7/jfs/t5041/24/329588189/209409/84764f13/58df3e93Nfecbdea2.jpg', '1.kg-1.4kg', '', '四川', 'https://img13.360buyimg.com/n7/jfs/t3130/285/6255922241/130379/353109b4/58a1d4cbNbd355c5a.jpg', '27.8', ''),
	(8, '熟虾仁约500g', 'https://img12.360buyimg.com/n7/jfs/t1/59919/33/4310/193925/5d2843c5Ec5a06abb/6b42d3d0660d0326.jpg', '500g', '', '广东', 'https://img12.360buyimg.com/n7/jfs/t1/21107/15/6915/113595/5c652651E11fa34c6/203f5f651ec80b29.jpg', '29.8', '');
/*!40000 ALTER TABLE `meet` ENABLE KEYS */;

-- 导出  表 h5.phone 结构
DROP TABLE IF EXISTS `phone`;
CREATE TABLE IF NOT EXISTS `phone` (
  `name` varchar(500) COLLATE utf8_danish_ci DEFAULT NULL COMMENT '手机名称',
  `rate` int(11) DEFAULT NULL COMMENT '好评率',
  `description` varchar(500) COLLATE utf8_danish_ci DEFAULT NULL COMMENT '手机描述',
  `cpu` varchar(500) COLLATE utf8_danish_ci DEFAULT NULL COMMENT '手机处理器',
  `ram` varchar(500) COLLATE utf8_danish_ci DEFAULT NULL COMMENT '手机内存',
  `resolution` varchar(500) COLLATE utf8_danish_ci DEFAULT NULL COMMENT '手机分辨率',
  `screen` varchar(500) COLLATE utf8_danish_ci DEFAULT NULL COMMENT '手机屏幕大小',
  `camera` varchar(500) COLLATE utf8_danish_ci DEFAULT NULL COMMENT '手机摄像头',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(500) COLLATE utf8_danish_ci DEFAULT NULL COMMENT '手机图片',
  `comments` varchar(500) COLLATE utf8_danish_ci DEFAULT NULL COMMENT '评论',
  `price` int(11) DEFAULT NULL COMMENT '手机价格',
  `brand` varchar(500) COLLATE utf8_danish_ci DEFAULT NULL COMMENT '手机厂商',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci COMMENT='手机售卖数据库';

-- 正在导出表  h5.phone 的数据：31 rows
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
REPLACE INTO `phone` (`name`, `rate`, `description`, `cpu`, `ram`, `resolution`, `screen`, `camera`, `id`, `img`, `comments`, `price`, `brand`) VALUES
	('OPPO Reno2', 96, '4800万变焦四摄 视频防抖 6.5英寸阳光护眼全面屏 8GB+128GB 深海夜光 拍照游戏智能手机', '骁龙730G', '8GB', '2400*1080', '6.5英寸', '4800万变焦四摄', 1, 'https://img11.360buyimg.com/babel/s320x320_jfs/t1/74098/2/8720/124868/5d68cbacE0b25be85/abc514c2b0c94fea.jpg!cc_320x320.webp', '31134', 2999, 'OPPO'),
	('三星 Galaxy S10', 94, '骁龙855 4G手机 8GB+128GB 皓玉白 全网通 双卡双待 游戏手机', '骁龙855', '8GB', '3040 x 1440', '6.1英寸', '后置三摄', 2, 'https://img30.360buyimg.com/babel/s320x320_jfs/t1/40269/5/14761/192059/5d5b615fE08973f49/d9418330ab754826.jpg!cc_320x320.webp', '71595', 4289, '三星'),
	('华为 HUAWEI P30 Pro ', 97, '超感光徕卡四摄10倍混合变焦麒麟980芯片屏内指纹 8GB+128GB极光色全网通版双4G手机', '麒麟980', '8GB', '2340*1080', '6.47英寸', '超感光徕卡四摄10倍混合变焦', 3, 'https://img14.360buyimg.com/babel/s320x320_jfs/t1/19261/13/12605/324178/5c98c7bcE63f668de/ca2762256ec6f931.jpg!cc_320x320.webp', '609444', 4488, '华为'),
	('华为 HUAWEI 畅享10 Plus', 97, '超高清全视屏前置悬浮式镜头4800万超广角AI三摄 8GB+128GB翡冷翠全网通双4G手机', '麒麟710F', '8GB', '2340 * 1080', '6.59英寸', '4800万超广角AI三摄 ', 4, 'https://img20.360buyimg.com/babel/s320x320_jfs/t1/98913/32/143/442886/5da84a2eEc4f98df9/3fcb4daeec17d3c2.jpg!cc_320x320.webp', '213097', 1849, '华为'),
	('realme 真我X2 Pro', 94, '6400万变焦四摄 高通骁龙855Plus 50W超级闪充 90Hz电竞屏 全网通8GB+128GB 海神 蓝色 游戏智能手机', '骁龙855', '8GB', '2400×1080', '6.5英寸', '6400万变焦四摄', 5, 'https://img14.360buyimg.com/babel/s320x320_jfs/t1/72641/32/13088/250898/5da54391E03a1ef64/cdcebb4b583d956b.jpg!cc_320x320.webp', '25673', 2899, 'realme '),
	('vivo iQOO Pro 5G', 95, '8GB+128GB 竞速黑 高通骁龙855Plus手机 4800万AI三摄 44W超快闪充 全网通手机', '骁龙855', '8GB', '2340x1080', '6.41英寸', '800万AI三摄', 6, 'https://img11.360buyimg.com/babel/s320x320_jfs/t1/81769/21/13302/187362/5da9c30cE92cdc299/e9e829353a9da764.jpg!cc_320x320.webp', '151829', 3198, 'vivo'),
	('vivo NEX 3 5G', 95, '8GB+256GB 无界瀑布屏 高通骁龙855Plus 6400万三摄 5G智慧旗舰新品手机 全网通手机', '骁龙855', '8GB', '2256x1080', '6.89英寸', '6400万三摄', 7, 'https://img13.360buyimg.com/babel/s320x320_jfs/t1/77216/13/13212/124285/5da9c3c0E91370ccd/5a318310c4e5e402.jpg!cc_320x320.webp', '24405', 4998, 'vivo'),
	('OPPO A11x', 97, '4800万四摄 5000mAh大电池 8GB+128GB 湖光绿 全网通4G 全面屏拍照游戏智能手机', '骁龙665', '8GB', '1600*720', '6.5英寸', '4800万四摄', 8, 'https://img12.360buyimg.com/babel/s320x320_jfs/t1/83174/32/10692/200714/5d82e18eE4fd9bbcf/1616292a8ff7f8d8.jpg!cc_320x320.webp', '21938', 1799, 'OPPO'),
	(' HUAWEI Mate20 X (5G)', 97, '7nm工艺5G旗舰芯片全面屏超大广角徕卡三摄8GB+256GB宝石蓝5G双模全网通手机', '麒麟980', '8GB', '1080x2244', '7.2英寸', '超大广角徕卡三摄', 9, 'https://img11.360buyimg.com/babel/s320x320_jfs/t1/45665/32/10343/183568/5d777cc9Ed48a2be7/4a68134eb7cb6d06.jpg!cc_320x320.webp', '23398', 4699, '华为'),
	('华为 HUAWEI 畅享10', 97, '极点全面屏4800万超清夜景4000mAh大电池 6GB+64GB极光蓝全网通双4G手机', 'HUAWEI Kirin 710F', '6GB', '1560*720', '6.39英寸', '4800万超清夜景', 10, 'https://img11.360buyimg.com/babel/s320x320_jfs/t1/81621/11/13285/468711/5da8527aEbd07c77a/62f32db5b6606ee2.jpg!cc_320x320.webp', '67912', 1299, '华为'),
	('iPhone 11 Pro Max ', 96, ' 64GB 金色 移动联通电信4G手机 双卡双待', 'A13仿生芯片', NULL, '2688×1242', '6.5英寸', '后置三摄', 11, 'https://img10.360buyimg.com/babel/s320x320_jfs/t1/67090/9/9895/200586/5d780d7fEd360cad9/da0eb4c6670eab20.jpg!cc_320x320.webp', '210639', 9599, '苹果'),
	(' HUAWEI Mate 30 Pro', 98, '麒麟990旗舰芯片OLED环幕屏双4000万徕卡电影四摄8GB+128GB亮黑色4G全网通游戏手机', '麒麟990', '8GB', '2400×1176', '6.53英寸', '双4000万徕卡电影四摄', 12, 'https://img13.360buyimg.com/babel/s320x320_jfs/t1/60213/36/10604/310058/5d80c205E6349a776/66447aca06daf84d.jpg!cc_320x320.webp', '155463', 5399, '华为'),
	('HUAWEI nova 5z', 97, '麒麟810芯片 4800万AI四摄 3200万人像超级夜景 6GB+64GB 幻夜黑 全网通双卡双待', '麒麟810', '6GB', '2340 * 1080', '6.26英寸', '4800万AI四摄 ', 13, 'https://img30.360buyimg.com/babel/s320x320_jfs/t1/67870/7/13409/416682/5dac1770Ec347fcd5/686cd05c0ce1f8b3.jpg!cc_320x320.webp', '308102', 1499, '华为'),
	('HUAWEI nova 5 Pro', 96, '前置3200万人像超级夜景4800万AI四摄麒麟980芯片8GB+128GB绮境森林全网通双4G手机', '麒麟980', '8GB', '2340 x 1080', '6.39英寸', '前置3200万人像超级夜景4800万AI四摄', 14, 'https://img14.360buyimg.com/babel/s320x320_jfs/t1/47193/2/3369/231278/5d11cb39Ef3674059/ba3c0a1d956429e2.jpg!cc_320x320.webp', '428028', 2369, '华为'),
	('Galaxy Note10+ 5G', 94, '骁龙855 智能S Pen 12GB+256GB 莫奈彩 双卡双待 游戏手机', '骁龙855', '12GB', '3040*1440', '6.8英寸(直角)', '后置四摄', 15, 'https://img14.360buyimg.com/babel/s320x320_jfs/t1/46683/24/11685/195522/5d88a63aE5fcd27d0/762a90a98b784bcb.jpg!cc_320x320.webp', '36527', 7998, '三星'),
	('OPPO K5', 96, '6GB+128GB 奇幻森林 6400万超清四摄 VOOC闪充4.0 高通骁龙730G 4G游戏智能手机', '骁龙730G', '6GB', '2340*1080', '6.4英寸', '6400万超清四摄', 16, 'https://img13.360buyimg.com/babel/s320x320_jfs/t1/47805/20/13675/123333/5da82ff3Eb1015e5b/3c5cccb621f496e5.jpg!cc_320x320.webp', '183864', 1699, 'OPPO'),
	('realme 真我X2', 96, ' 6400万超广角四摄 高通骁龙730G 30W VOOC4.0闪充 4000mAh大电池 全网通8GB+128GB 星图蓝 游戏智能手机', '骁龙730G', '8GB', '1080×2340', '6.4英寸', '6400万超广角四摄', 17, 'https://img10.360buyimg.com/babel/s320x320_jfs/t1/51082/25/11627/245323/5d88d217E174e92e2/92ebad1a16ddf166.jpg!cc_320x320.webp', '130352', 1849, 'realme '),
	('vivo iQOO Neo 855版', 96, '6GB+128GB 电光紫 骁龙855处理器 33W超快闪充 4500mAh大电池游戏手机 全网通4G手机', '骁龙855', '6GB', '2340x1080', '6.38英寸', '超广角', 18, 'https://img10.360buyimg.com/babel/s320x320_jfs/t1/60389/35/13400/546540/5da86307E516fe943/b30e3f912ae88fbb.jpg!cc_320x320.webp', '190461', 1998, 'vivo'),
	('Galaxy A90 5G', 92, '全息黑 疾速5G 骁龙855 8GB+128GB 全息3D格纹设计 双卡双待手机', '骁龙855', '8GB', '1080 x 2400', '6.7英寸', '后置三摄', 19, 'https://img20.360buyimg.com/babel/s320x320_jfs/t1/98197/15/214/99252/5da97650Ef1b6b3a7/528cc8b3f9ade84b.jpg!cc_320x320.webp', '23712', 3099, '三星'),
	('HUAWEI Mate 30', 97, '麒麟990旗舰芯片4000万超感光徕卡影像屏内指纹8G+128GB星河银4G全网通版游戏手机', '麒麟990', '8GB', '2340×1080', '6.62英寸', '4000万超感光徕卡影像', 20, 'https://img30.360buyimg.com/babel/s320x320_jfs/t1/75416/3/11548/695450/5d901d3fEdaaa21fa/88771c48f6f46005.jpg!cc_320x320.webp', '191640', 3999, '华为'),
	('OPPO Reno Ace', 95, '8GB+128GB 星际蓝 65W超级闪充 90Hz电竞屏 高通骁龙855Plus 4G智能游戏手机', '骁龙855', '8GB', '2400*1080', '6.55英寸', '后置四摄', 21, 'https://img20.360buyimg.com/babel/s320x320_jfs/t1/104424/36/151/205414/5da8322cEb7a979bf/cfae07a0aaa17f9d.jpg!cc_320x320.webp', '127190', 2999, 'OPPO'),
	('vivo Z5', 96, '6GB+128GB 极光幻境 4800万超广角AI三摄手机 22.5W快充 4500mAh大电池 全网通4G手机', '骁龙712', '6GB', '2340×1080', '6.38英寸', ' 4800万超广角AI三摄', 22, 'https://img12.360buyimg.com/babel/s320x320_jfs/t1/99938/4/295/171137/5dab108bEb2a57367/451ca3e9f5f42993.jpg!cc_320x320.webp', '237286', 1498, 'vivo'),
	('Redmi Note8', 97, '4800万全场景四摄 4000mAh长续航 高通骁龙665 18W快充 4GB+64GB 梦幻蓝 游戏手机 小米 红米', '骁龙665', '4GB', '2340*1080', '6.3英寸', '4800万全场景四摄', 23, 'https://img11.360buyimg.com/babel/s320x320_jfs/t1/40642/20/13344/461165/5d6748f1E4490c921/8af64bdb7bd8fd33.jpg!cc_320x320.webp', '557661', 899, '小米'),
	('荣耀Play3', 98, '6.39英寸魅眼全视屏 4000mAh大电池 真4800万AI三摄 麒麟710F自研芯片 畅玩全网通4GB+64GB 幻夜黑', '麒麟710F', '4GB', '1560x720', '6.39英寸', '真4800万AI三摄', 24, 'https://img13.360buyimg.com/babel/s320x320_jfs/t1/77144/27/11322/75232/5d9081feEb7232528/a633fd1fe55b704b.jpg!cc_320x320.webp', '248709', 899, '华为'),
	('Apple iPhone 11 Pro', 97, '64GB 深空灰色 移动联通电信4G手机 双卡双待', 'A13 仿生', NULL, '2436 x 1125', '5.8英寸', '\r\n后置三摄', 25, 'https://img14.360buyimg.com/babel/s320x320_jfs/t1/48865/8/10475/189145/5d7806a6E9b1c93fc/51f2ffe7a661bdf5.jpg!cc_320x320.webp', '215248', 8699, '苹果'),
	('Apple iPhone 11', 95, '64GB 黑色 移动联通电信4G手机 双卡双待', 'A13仿生', NULL, '1792 x 828', '6.1英寸', '后置双摄', 26, 'https://img14.360buyimg.com/babel/s320x320_jfs/t1/67822/22/9911/141808/5d7804a3E1c1796ce/a4ff0dd48086f3e4.jpg!cc_320x320.webp', '1415698', 5499, '苹果'),
	('一加 OnePlus 7 Pro', 94, '2K+90Hz 流体屏 骁龙855旗舰 4800万超广角三摄 8GB+256GB 星雾蓝 全面屏拍照游戏手机', '骁龙855', '8GB', '3120×1440', '6.67英寸', '4800万超广角三摄', 27, 'https://img11.360buyimg.com/babel/s320x320_jfs/t1/40586/1/11155/200870/5d49255fEa7738b29/b3e5895230af9915.jpg!cc_320x320.webp', '411349', 3899, '一加'),
	('荣耀9X PRO', 96, '麒麟810液冷散热 4000mAh超强续航 4800万超广角夜拍三摄 6.59英寸全网通8GB+128GB 幻夜黑', '麒麟810', '8GB', '1080*2340', '6.59英寸', '4800万超广角夜拍三摄', 28, 'https://img11.360buyimg.com/babel/s320x320_jfs/t1/39464/17/12055/280975/5d36d3b9E769629e1/e00a86236dd7b270.jpg!cc_320x320.webp', '100138', 1999, '华为'),
	('荣耀20S', 97, '李现同款 3200万人像超级夜景 4800万超广角AI三摄 麒麟810 全网通版6GB+128GB 蝶羽白', '麒麟810', '6GB', '2340×1080', '6.26英寸', '3200万人像超级夜景', 29, 'https://img10.360buyimg.com/babel/s320x320_jfs/t1/39682/23/15588/215775/5d672c3cE3097fa6f/4e94336da719e538.jpg!cc_320x320.webp', '503740', 1599, '华为'),
	('荣耀9X', 97, '麒麟810 4000mAh续航 4800万超清夜拍 6.59英寸升降全面屏 全网通6GB+64GB 魅海蓝', '麒麟810', '6GB', '1080*2340', '6.59英寸', '4800万超清夜拍', 30, 'https://img20.360buyimg.com/babel/s320x320_jfs/t1/45124/2/5820/397999/5d36c0cdEda359655/61f65ac6aae3146b.jpg!cc_320x320.webp', '1199370', 1299, '华为'),
	('iphone x', 99, NULL, NULL, NULL, NULL, NULL, NULL, 42, 'https://dss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3159575759,329221210&fm=58', '1564566', 9999, NULL);
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;

-- 导出  表 h5.specialoff 结构
DROP TABLE IF EXISTS `specialoff`;
CREATE TABLE IF NOT EXISTS `specialoff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `Spec` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `date` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `location` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `img1` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `img2` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `price` varchar(50) COLLATE utf8_danish_ci DEFAULT '0',
  `off` varchar(50) COLLATE utf8_danish_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci COMMENT='特价';

-- 正在导出表  h5.specialoff 的数据：7 rows
/*!40000 ALTER TABLE `specialoff` DISABLE KEYS */;
REPLACE INTO `specialoff` (`id`, `name`, `Spec`, `date`, `location`, `img1`, `img2`, `price`, `off`) VALUES
	(1, '农夫山泉量贩装', '380ml*12', '2年', '见包装', 'https://img12.360buyimg.com/n7/jfs/t2827/322/2934854637/125908/25b5a92a/577b971eN5bb2d5c2.jpg', 'https://img14.360buyimg.com/n7/jfs/t23332/200/2218006488/124119/8827e8c7/5b77b298N9affdd8c.jpg', '9.9', '6.6折'),
	(2, '统一鲜橙多橙汁饮料', '250ml*6', '12月', '江苏昆山', 'https://img11.360buyimg.com/n7/jfs/t1/33695/33/10802/213328/5ccf9444E99be5e80/5a6dbce6bea47b49.jpg', 'https://img13.360buyimg.com/n7/jfs/t3886/255/86827635/61160/405662bb/58ad3bf8N47490b0b.jpg', '5.9', '6.9折'),
	(3, '旺仔调制乳牛奶', '145ml*8', '15月', '广东广州', 'https://img10.360buyimg.com/n7/jfs/t1/105965/29/12662/272799/5e4bcccfE98d69b20/90fe8692f9960a74.jpg', 'https://img12.360buyimg.com/n7/jfs/t1/97444/23/10562/134144/5e1c0f53E6e2528a9/01ef0c9ac09c0601.jpg', '17.9', ''),
	(4, '珠丽雅桃花酿5度', '518ml', '36月', '吉林长春市', 'https://img14.360buyimg.com/n7/jfs/t1/45737/37/9871/86672/5d71e48bE975bdd83/393821de2e676959.jpg', 'https://img13.360buyimg.com/n7/jfs/t1/103927/29/1462/81395/5dbf8728E71e323eb/4ac3f5a55b30d83a.jpg', '19.9', '6.7折'),
	(5, '珠丽雅蓝莓酒5度', '518ml', '36月', '吉林长春市', 'https://img12.360buyimg.com/n7/jfs/t1/48699/1/15169/105472/5dbfdf66Ec0e4d24b/9e90fa5b26e0bfa0.jpg', 'https://img12.360buyimg.com/n7/jfs/t1/81015/23/2750/278085/5d117b31Ec2cf485c/76d71aa44731dcb7.jpg', '19.9', '6.7折'),
	(6, '青岛8度醉美天府500ml', '500ml', '1年', '泸州', 'https://img11.360buyimg.com/n7/jfs/t1/79847/32/5257/80620/5d3669c5Eb8cd74d3/c121e93653eadcc8.jpg', 'https://img14.360buyimg.com/n7/jfs/t1/28795/14/1038/459859/5c0f4c25E24563ae4/2d77e2311b2a71f8.jpg', '2', '4.4折'),
	(7, '士力架花生夹心巧克力全家桶', '460g', '10月', '中国北京', 'https://img12.360buyimg.com/n7/jfs/t1/5849/19/2729/107447/5b975eb0Ec615051e/eeb34950512bdada.jpg', 'https://img14.360buyimg.com/n7/jfs/t1/107357/33/10974/477212/5e82f39eEeebc6e6f/52a8117095b5b227.jpg', '30.9', '');
/*!40000 ALTER TABLE `specialoff` ENABLE KEYS */;

-- 导出  表 h5.student 结构
DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `name` varchar(500) COLLATE utf8_danish_ci DEFAULT NULL,
  `birth` varchar(500) COLLATE utf8_danish_ci DEFAULT NULL,
  `sex` varchar(500) COLLATE utf8_danish_ci DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(500) COLLATE utf8_danish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;

-- 正在导出表  h5.student 的数据：10 rows
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
REPLACE INTO `student` (`name`, `birth`, `sex`, `id`, `description`) VALUES
	('魔理沙', '不详', '女', 1, '星屑幻想'),
	('流子', '不详', '女', 2, '战维丧失'),
	('灵梦', '不详', '女', 3, '梦想天生'),
	('八云紫', '不详', '女', 4, '梦幻泡影'),
	('西行寺幽幽子', '不详', '女', 5, '西行寺无余磐涅'),
	('魂魄妖梦', '不详', '女', 6, '西行春风斩'),
	('蕾米莉亚·斯卡雷特', '不详', '女', 7, '绯红的宿命'),
	('藤原妹红', '不详', '女', 8, '徐福时空'),
	('比那名居天子', '不详', '女', 9, '全人类绯想天'),
	('任智龙', NULL, 'nan', 10, NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

-- 导出  表 h5.studentusephone 结构
DROP TABLE IF EXISTS `studentusephone`;
CREATE TABLE IF NOT EXISTS `studentusephone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usersID` int(11) NOT NULL DEFAULT '0',
  `phoneID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;

-- 正在导出表  h5.studentusephone 的数据：23 rows
/*!40000 ALTER TABLE `studentusephone` DISABLE KEYS */;
REPLACE INTO `studentusephone` (`id`, `usersID`, `phoneID`) VALUES
	(1, 1, 1),
	(2, 1, 4),
	(3, 1, 26),
	(4, 1, 23),
	(5, 2, 5),
	(6, 2, 1),
	(7, 2, 23),
	(8, 3, 4),
	(9, 3, 5),
	(10, 4, 1),
	(11, 4, 2),
	(12, 5, 3),
	(13, 5, 30),
	(14, 4, 29),
	(15, 4, 28),
	(16, 4, 27),
	(17, 4, 25),
	(18, 2, 15),
	(19, 1, 15),
	(20, 3, 27),
	(21, 5, 26),
	(22, 3, 4),
	(23, 1, 2);
/*!40000 ALTER TABLE `studentusephone` ENABLE KEYS */;

-- 导出  表 h5.user 结构
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_danish_ci NOT NULL DEFAULT '0',
  `sex` varchar(50) COLLATE utf8_danish_ci NOT NULL DEFAULT '0',
  `birth` varchar(50) COLLATE utf8_danish_ci NOT NULL DEFAULT '0',
  `img` varchar(50) COLLATE utf8_danish_ci NOT NULL DEFAULT '0',
  `password` varchar(50) COLLATE utf8_danish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;

-- 正在导出表  h5.user 的数据：25 rows
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
REPLACE INTO `user` (`id`, `name`, `sex`, `birth`, `img`, `password`) VALUES
	(40, 'asdg', 'asdg', '', 'http://localhost:82/public/user/1.jpg', '456456'),
	(39, 'asfsa', 'asdg', '', 'http://localhost:82/public/user/1.jpg', '76847984'),
	(37, '雾雨魔理沙', '女', '0001-01-01', 'undefined', '1997'),
	(26, '博丽灵梦', '女', '0001-01-01', 'http://localhost:82/public/user/1.jpg', '1997'),
	(36, '芙兰朵露', '女', '0001-01-01', 'undefined', 'asdg'),
	(38, 'febrie', '男', '1997-09-15', 'http://localhost:82/public/user/1.jpg', '123456'),
	(35, '魂魄妖梦', '女', '0001-01-01', 'undefined', '135489878/98'),
	(29, '八云紫', '女', '0001-01-01', 'http://localhost:82/public/user/1.jpg', '1454856'),
	(34, '八云蓝', '女', '0001-01-01', 'undefined', '456768'),
	(41, 'gsadgsdg', 'asdgdg', '', 'http://localhost:82/public/user/1.jpg', '456456'),
	(42, 'fghj', 'asdgdg', '', 'http://localhost:82/public/user/1.jpg', '56+5'),
	(43, 'sadga', 'asdgdg', '', 'http://localhost:82/public/user/1.jpg', 'asdgsd'),
	(44, 'sgddsgs', 'asdgdg', '', 'http://localhost:82/public/user/1.jpg', 'sgsdg'),
	(45, 'sdagsdag', 'asdgdg', '', 'http://localhost:82/public/user/1.jpg', 'gasdgsdag'),
	(46, 'sadgsdag', 'asdgdg', '', 'http://localhost:82/public/user/1.jpg', 'sadgsgd'),
	(47, 'sdgsdg', 'asdgdg', '', 'http://localhost:82/public/user/1.jpg', 'sdagdsag'),
	(48, 'asdgdsg', 'asdgdg', '', 'http://localhost:82/public/user/1.jpg', 'sadgdsag'),
	(49, 'gdasdg', 'asdgdg', '', 'http://localhost:82/public/user/1.jpg', 'sadg'),
	(50, 'asdgdsag', 'asdgdg', '', 'http://localhost:82/public/user/1.jpg', 'sadgdsa'),
	(51, 'aegsdg', 'asdgsdg', '', 'http://localhost:82/public/user/1.jpg', '4564+45'),
	(52, 'qwetwet', 'asdgsdg', '', 'http://localhost:82/public/user/1.jpg', '4564+45'),
	(53, 'eherywy', 'asdg', '0456-05-31', 'http://localhost:82/public/user/1.jpg', '45+45+'),
	(54, 'asdgds', 'asdg', '', 'http://localhost:82/public/user/1.jpg', '456879'),
	(55, 'gwreyh', 'ash', '', 'http://localhost:82/public/user/1.jpg', '45648'),
	(56, 'hdyrey', 'asdg', '', 'http://localhost:82/public/user/1.jpg', '+87+7+');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- 导出  表 h5.yh 结构
DROP TABLE IF EXISTS `yh`;
CREATE TABLE IF NOT EXISTS `yh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `Spec` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `date` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `location` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `img1` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `img2` varchar(500) COLLATE utf8_danish_ci DEFAULT '0',
  `price` varchar(50) COLLATE utf8_danish_ci DEFAULT '0',
  `off` varchar(50) COLLATE utf8_danish_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;

-- 正在导出表  h5.yh 的数据：12 rows
/*!40000 ALTER TABLE `yh` DISABLE KEYS */;
REPLACE INTO `yh` (`id`, `name`, `Spec`, `date`, `location`, `img1`, `img2`, `price`, `off`) VALUES
	(1, '香尔佳松花江雪珍珠米(非真空)(10KG)', '10KG', '1年', '东北', 'https://img11.360buyimg.com/n7/jfs/t1/105097/21/17326/336872/5e84c481E1671fb19/d6f6467387190e0a.jpg', 'https://img11.360buyimg.com/n7/jfs/t1/99716/8/13207/278663/5e548939E3c756523/794047e9ef3c7284.jpg', '82.7', '满100减20元'),
	(2, '香尔佳龙藏御米(非真空)(5KG)', '5KG', '1年', '东北', 'https://img12.360buyimg.com/n7/jfs/t1/95175/6/17048/140679/5e8467bdE0c59b5d9/f68feb851d48965b.jpg', 'https://img14.360buyimg.com/n7/jfs/t29434/230/263839868/63140/d4f3fb3f/5bed4584Ne1442861.jpg', '39.9', '满100减20元'),
	(3, '香尔佳汉王贡米(非真空)(5KG)', '5KG', '1年', '东北', 'https://img12.360buyimg.com/n7/jfs/t1/97687/32/14993/78905/5e6f25fdE2d54a108/6444390326dccec1.jpg', 'https://img10.360buyimg.com/n7/jfs/t5584/156/8364768059/55517/8a91fd8e/5979927aNed155bef.jpg', '39.9', '满100减20元'),
	(4, '鲈鱼(默认称重后宰杀)450-500g/条', '约450g', '', '四川', 'https://img10.360buyimg.com/n7/jfs/t1/102530/36/2962/211620/5dd8ef0cE547b9be3/56ff56eca260e4eb.jpg', 'https://img11.360buyimg.com/n7/jfs/t1/63805/33/11695/141610/5d9074f9Ed4df0c53/a2b265f8ef8e514b.jpg', '19.8', '已减10.1元'),
	(5, '花鲢(默认称重后宰杀)(1.5kg-1.7kg)', '约1.6kg', '', '四川', 'https://img12.360buyimg.com/n7/jfs/t1/86865/8/10407/170118/5e194cb5E37452769/0fed5493e5018d75.jpg', 'https://img14.360buyimg.com/n7/jfs/t1/89409/1/17154/223357/5e83f4feE420e2f7a/ca0467441952ec0d.jpg', '29.9', '已减12.9元'),
	(6, '农夫山泉量贩装380ml*12', '380ml', '2年', '四川', 'https://img13.360buyimg.com/n7/jfs/t1/27097/19/13894/131257/5ca2d460Ec5627ce4/0797f23ddad97db8.jpg', 'https://img12.360buyimg.com/n7/jfs/t2827/322/2934854637/125908/25b5a92a/577b971eN5bb2d5c2.jpg', '9.9', '6.6折'),
	(7, '统一鲜橙多橙汁饮料250ml*6', '250ml', '1年', '四川', 'https://img12.360buyimg.com/n7/jfs/t1/86904/17/11822/80824/5e3c0decEb1abb5ad/fbbab772cc5c3359.jpg', 'https://img14.360buyimg.com/n7/jfs/t1/89280/5/11097/210305/5e2416bbE9a2ba200/3f2fb887d4a6f93a.jpg', '5.9', '6.9折'),
	(8, '菜心约300g', '300g', '', '四川', 'https://img11.360buyimg.com/n7/jfs/t2842/269/169968447/298280/81e684a3/57057795Ncf384983.jpg', 'https://img13.360buyimg.com/n7/jfs/t1/49890/14/1721/99503/5cf7691fE51fa8cfb/25dec78ba54a47a4.jpg', '2.5', '6.6折'),
	(9, '汉菜约300g', '300g', '', '四川', 'https://img10.360buyimg.com/n7/jfs/t1/26806/9/2728/501243/5c209a46E3edee838/725bac784a4d2d5c.jpg', 'https://img10.360buyimg.com/n7/jfs/t1/20233/4/14804/114564/5cab4145Ead0ff2d4/069258a0e865877f.jpg', '3.5', '6折'),
	(10, '牛浪汉牛肉干香辣味75g', '75g', '1年', '四川', 'https://img14.360buyimg.com/n7/jfs/t7414/104/605950797/458664/7a9cbeac/5994f802Nd4950f0f.jpg', 'https://img10.360buyimg.com/n7/jfs/t7327/134/611884100/443190/b710a43d/5994f80bNf13d23e4.jpg', '12.8', '已减11.8元'),
	(11, '百乐芬抹茶味长崎蛋糕400g', '400g', '7天', '广州', 'https://img14.360buyimg.com/n7/jfs/t1/47778/27/16762/159577/5dddf8ebEf1900162/33a2c966b83fcd43.jpg', 'https://img10.360buyimg.com/n7/jfs/t1/90063/13/3167/141925/5ddc9ad6Ef9345cbf/cbf50ce8f8d8ef2c.jpg', '9.9', '5.6折'),
	(12, '黑美人西瓜4.2-4.8kg', '4.2KG-4.8KG', '', '海南', 'https://img10.360buyimg.com/n7/jfs/t1/10906/21/9258/129946/5c403d64Ef0ad107d/2eb436a76e30651c.jpg', 'https://img13.360buyimg.com/n7/jfs/t1/19713/5/11552/484582/5c90a912E30b4cb01/ccf235ed54cb83df.png', '22.8', '4.8kg');
/*!40000 ALTER TABLE `yh` ENABLE KEYS */;

-- 导出  表 h5.yhcar 结构
DROP TABLE IF EXISTS `yhcar`;
CREATE TABLE IF NOT EXISTS `yhcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(500) COLLATE utf8_danish_ci NOT NULL DEFAULT '0',
  `productid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_danish_ci;

-- 正在导出表  h5.yhcar 的数据：0 rows
/*!40000 ALTER TABLE `yhcar` DISABLE KEYS */;
REPLACE INTO `yhcar` (`id`, `openid`, `productid`) VALUES
	(16, 'oRhCM5aNZ9QR_IQSn7eQsiEQM6Hg', 8),
	(15, 'oRhCM5aNZ9QR_IQSn7eQsiEQM6Hg', 7),
	(14, 'oRhCM5aNZ9QR_IQSn7eQsiEQM6Hg', 6),
	(13, 'oRhCM5aNZ9QR_IQSn7eQsiEQM6Hg', 5),
	(12, 'oRhCM5aNZ9QR_IQSn7eQsiEQM6Hg', 3),
	(11, 'oRhCM5aNZ9QR_IQSn7eQsiEQM6Hg', 1);
/*!40000 ALTER TABLE `yhcar` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
