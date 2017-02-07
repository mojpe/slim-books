-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.19-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for myslimsite
CREATE DATABASE IF NOT EXISTS `myslimsite` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `myslimsite`;

-- Dumping structure for table myslimsite.books
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `book_title` varchar(250) DEFAULT NULL,
  `author` varchar(250) DEFAULT NULL,
  `amazon_url` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table myslimsite.books: ~0 rows (approximately)
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` (`id`, `book_title`, `author`, `amazon_url`) VALUES
	(1, 'The 4-Hour Workweek', 'Timothy Ferriss', 'https://www.amazon.com/4-Hour-Workweek-Escape-Live-Anywhere/dp/0307465357'),
	(2, 'Think and Grow Rich', 'Napoleon Hill', 'https://www.amazon.com/Think-Grow-Rich-Napoleon-Hill/dp/1912032678/ref=sr_1_1?s=books&ie=UTF8&qid=1486455361&sr=1-1&keywords=think+and+go+rich'),
	(3, 'How to Win Friends & Influence People', 'Dale Carnegie', 'https://www.amazon.com/How-Win-Friends-Influence-People/dp/0671027034/ref=sr_1_1?s=books&ie=UTF8&qid=1486455453&sr=1-1&keywords=how+to+win+friends+and+influence+people');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
