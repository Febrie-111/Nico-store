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

-- 导出  表 vue.media 结构
CREATE TABLE IF NOT EXISTS `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `keywords` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `type` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `src` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- 正在导出表  vue.media 的数据：21 rows
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
REPLACE INTO `media` (`id`, `name`, `keywords`, `type`, `src`, `price`) VALUES
	(1, 'Beautiful nature forest trees trunks green grass flickering sun woods sunset', '自然', 'media', '//d301.paixin.com/thumbs/2000559/57576715/api_thumb_600.mp4', 790),
	(2, 'Wild Horses Herd Running On Meadow Aerial Fly Over Spring Mountains Nature Wild', '自然', 'media', '//d301.paixin.com/thumbs/2501519/72397783/api_thumb_600.mp4', 790),
	(3, 'Planting the trees, protect nature, sustainability, sustainable', '自然', 'media', '//d300.paixin.com/thumbs/3069697/41731149/api_thumb_600.mp4', 790),
	(4, 'breathtaking ice crystals growing, timelapse of snow crystals', '动物', 'media', '//d302.paixin.com/thumbs/29833790/320751712/api_thumb_600.mp4', 690),
	(5, '4k hyperlapse, motion timelapse, video of downtown Melbourne, Australia', '动物', 'media', '//d303.paixin.com/thumbs/1273690/256732174/api_thumb_600.mp4', 690),
	(6, 'breathtaking ice crystals growing, timelapse of snow crystals', '动物', 'media', '//d303.paixin.com/thumbs/27120630/291027272/api_thumb_600.mp4', 690),
	(7, 'Beautiful Sunrise Sky Time', '动物', 'media', '//d303.paixin.com/thumbs/5448496/285609800/api_thumb_600.mp4', 690),
	(8, 'Timelapse with George Washington Bridge traffic', '动物', 'media', '//d303.paixin.com/thumbs/16095826/273788624/api_thumb_600.mp4', 690),
	(9, 'Sunset in the nature. Woman in a car, hand playing in the air. Sunset rays', '自然', 'media', '//d302.paixin.com/thumbs/32957300/364469240/api_thumb_600.mp4', 790),
	(10, 'Male farmers hands in soybean field, responsible farming and dedicated', '自然', 'media', '//d302.paixin.com/thumbs/3974537/126218812/api_thumb_600.mp4', 790),
	(11, 'A dreamy underwater world', '运动', 'media', '//d303.paixin.com/thumbs/1034372/264607844/api_thumb_600.mp4', 890),
	(12, 'Under the water, the Indian Ocean. Maldives video.', '运动', 'media', '//d302.paixin.com/thumbs/1750160/153115086/api_thumb_600.mp4', 890),
	(13, 'Underwater Scene With Sunrays', '运动', 'media', '//d302.paixin.com/thumbs/1000998/179765300/api_thumb_600.mp4', 890),
	(14, 'https://p5-v1.xpccdn.com/116005310_main_xl.mp4', '运动', 'media', '//d302.paixin.com/thumbs/16837622/193777158/api_thumb_600.mp4', 890),
	(15, 'underwater bubbles', '运动', 'media', '//d301.paixin.com/thumbs/1011158/104396396/api_thumb_600.mp4', 890),
	(16, 'Aerial view male and female climbing team on Alaska mountain range', '旅游', 'media', '//d302.paixin.com/thumbs/1006220/342472040/api_thumb_600.mp4', 990),
	(17, 'Japan Tokyo Aerial v20 Vertical birdseye flying low over famous Shibuya night', '旅游', 'media', '//d301.paixin.com/thumbs/6649010/114917530/api_thumb_600.mp4', 990),
	(18, 'Aerial: Sacramento Tower bridge on the Sacramento River', '旅游', 'media', '//d302.paixin.com/thumbs/1009645/181854428/api_thumb_600.mp4', 990),
	(19, 'Epic Aerial Shot Over Mist Forrest Sunset Beautiful Fall Season Forrest Early', '旅游', 'media', '//d301.paixin.com/thumbs/3038569/92571930/api_thumb_600.mp4', 990),
	(20, '4K aerial drone footage self-driving autopilot cars driving with traffic passing', '旅游', 'media', '//d301.paixin.com/thumbs/6649010/114930184/api_thumb_600.mp4', 990),
	(21, 'tree and man', '自然', 'media', '//d300.paixin.com/thumbs/1045223/37781397/api_thumb_600.mp4', 100);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
