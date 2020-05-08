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

-- 导出  表 vue.car 结构
CREATE TABLE IF NOT EXISTS `car` (
  `userName` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemID` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  vue.car 的数据：30 rows
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
REPLACE INTO `car` (`userName`, `type`, `itemID`) VALUES
	('Febrie', 'picture', 60),
	('123456', 'picture', 90),
	('123456', 'picture', 12),
	('123456', 'picture', 11),
	('123456', 'picture', 8),
	('Febrie', 'picture', 93),
	('Febrie', 'picture', 94),
	('Febrie', 'picture', 95),
	('Febrie', 'picture', 96),
	('Febrie', 'picture', 52),
	('Febrie', 'picture', 18),
	('Febrie', 'picture', 11),
	('Febrie', 'picture', 7),
	('Febrie', 'picture', 15),
	('Febrie', 'picture', 19),
	('Febrie', 'picture', 24),
	('Febrie', 'picture', 6),
	('Febrie', 'picture', 38),
	('Febrie', 'picture', 46),
	('Febrie', 'picture', 5),
	('Febrie', 'picture', 4),
	('Febrie', 'picture', 1),
	('Febrie', 'picture', 2),
	('Febrie', 'picture', 35),
	('Febrie', 'picture', 32),
	('Febrie', 'picture', 26),
	('Febrie', 'picture', 16),
	('Febrie', 'picture', 8),
	('Febrie', 'picture', 12),
	('Febrie', 'picture', 3);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
