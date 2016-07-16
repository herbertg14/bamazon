-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.10-log - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table bamazon.products
CREATE TABLE IF NOT EXISTS `products` (
  `ItemID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(50) DEFAULT NULL,
  `DepartmentName` varchar(50) DEFAULT NULL,
  `Price` decimal(5,2) DEFAULT NULL,
  `StockQuantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table bamazon.products: ~10 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES
	(1, 'GameBoy', 'Video Games', 79.99, 1000),
	(2, 'Flat Screen TV', 'Entertainment', 200.00, 100),
	(3, 'Pots and Pans', 'Kitchen', 49.99, 800),
	(4, 'Hammock', 'Outdoors', 79.99, 689),
	(5, 'Headphones', 'Entertainment', 19.99, 400),
	(6, 'Speakers', 'Entertainment', 199.99, 500),
	(7, 'Lamp', 'Living Room', 9.99, 500),
	(8, 'Laptop Computer', 'Entertainment', 999.99, 100),
	(9, 'Tent', 'Outdoors', 150.00, 1000),
	(10, 'Blanket', 'Living Room', 5.99, 10000);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
