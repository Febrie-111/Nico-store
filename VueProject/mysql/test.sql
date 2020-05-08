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

-- 导出  表 vue.test 结构
CREATE TABLE IF NOT EXISTS `test` (
  `name` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  vue.test 的数据：24 rows
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
REPLACE INTO `test` (`name`, `sex`, `id`) VALUES
	('nico', '女', 1),
	('febrie', '女', 2),
	('nico', '女', 3),
	('febrie', '女', 4),
	('nico', '女', 5),
	('febrie', '女', 6),
	('nico', '女', 7),
	('febrie', '女', 8),
	('nico', '女', 9),
	('febrie', '女', 10),
	('nico', '女', 11),
	('febrie', '女', 12),
	('nico', '女', 13),
	('febrie', '女', 14),
	('nico', '女', 15),
	('febrie', '女', 16),
	('nico', '女', 17),
	('febrie', '女', 18),
	('nico', '女', 19),
	('febrie', '女', 20),
	('nico', '女', 21),
	('febrie', '女', 22),
	('nico', '女', 23),
	('febrie', '女', 24);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
