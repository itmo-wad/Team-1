-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 07, 2021 at 12:29 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', '2021-05-01 16:21:18', '06-05-2021 01:35:37 AM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Books', 'Test', '2021-05-04 19:17:37', '2021-05-05 00:47:37'),
(4, 'Electronics', 'Electronic Products', '2021-05-04 19:17:37', '2021-05-05 00:47:37'),
(5, 'Furniture', 'test', '2021-05-04 19:17:37', '2021-05-05 00:47:37'),
(6, 'Fashion', 'Fashion', '2021-05-04 19:17:37', '2021-05-05 00:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(7, 4, '21', 1, '2021-05-05 20:16:02', 'Internet Banking', NULL),
(8, 4, '21', 1, '2021-05-06 10:33:46', 'COD', NULL),
(9, 4, '22', 2, '2021-05-06 10:33:46', 'COD', NULL),
(10, 4, '25', 1, '2021-05-06 10:33:46', 'COD', NULL),
(11, 4, '26', 1, '2021-05-06 23:03:53', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

DROP TABLE IF EXISTS `ordertrackhistory`;
CREATE TABLE IF NOT EXISTS `ordertrackhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(5, 6, 'Delivered', 'done', '2021-05-05 20:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

DROP TABLE IF EXISTS `productreviews`;
CREATE TABLE IF NOT EXISTS `productreviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(21, 3, 8, 'boku no hero academia', 'dasdas', 9, 11, 'comic<br>', 'comic2.1.jpg', 'comic2.2.png', 'comic2.3.jpg', 1, 'In Stock', '2021-05-05 20:13:44', NULL),
(22, 3, 8, 'Nanatsu no Taizai', 'cc-by-sa', 9, 11, 'comic<br>', 'comic1.3.jpg', 'comic1.jpg', 'comic1.1.jpg', 1, 'In Stock', '2021-05-06 10:04:17', NULL),
(23, 4, 6, 'Alienware 17 R4', 'DELL - ALIENWARE', 354000, 380000, 'Laptop<br>', 'alienware17_1.jpg', 'alienware17_2.jpg', 'alienware17_3.jpg', 0, 'In Stock', '2021-05-06 10:09:26', NULL),
(24, 5, 11, 'Table Test', 'Alter-woods', 10000, 50000, 'Its a dining table<br>', 'dining1.jpg', 'dining2.jpg', 'dining3.jpg', 0, 'In Stock', '2021-05-06 10:12:22', NULL),
(25, 6, 12, 'Nike jordan 1 retro', 'Nike', 9000, 9500, 'Shoes<br>', 'nike1.jpg', 'nike2.png', 'nike3.png', 0, 'In Stock', '2021-05-06 10:16:33', NULL),
(26, 3, 8, 'Attack on Titan', 'wish it were mine', 9, 10, 'manga', 'aot1.png', 'aot2.jpeg', 'aot3.jpeg', 1, 'Out of Stock', '2021-05-06 22:28:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'Led Television', '2021-05-04 19:17:37', '2021-05-05 00:47:37'),
(3, 4, 'Television', '2021-05-04 19:17:37', '2021-05-05 00:47:37'),
(4, 4, 'Mobiles', '2021-05-04 19:17:37', '2021-05-05 00:47:37'),
(5, 4, 'Mobile Accessories', '2021-05-04 19:17:37', '2021-05-05 00:47:37'),
(6, 4, 'Laptops', '2021-05-04 19:17:37', '2021-05-05 00:47:37'),
(7, 4, 'Computers', '2021-05-04 19:17:37', '2021-05-05 00:47:37'),
(8, 3, 'Comics', '2021-05-04 19:17:37', '2021-05-05 00:47:37'),
(9, 5, 'Beds', '2021-05-04 19:17:37', '2021-05-05 00:47:37'),
(10, 5, 'Sofas', '2021-05-04 19:17:37', '2021-05-05 00:47:37'),
(11, 5, 'Dining Tables', '2021-05-04 19:17:37', '2021-05-05 00:47:37'),
(12, 6, 'Men Footwears', '2021-05-04 19:17:37', '2021-05-05 00:47:37');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'parthchawla65@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-05 20:15:39', '06-05-2021 02:21:37 AM', 1),
(25, 'parthchawla65@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-06 10:33:43', '06-05-2021 04:06:05 PM', 1),
(26, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2021-05-06 22:24:22', NULL, 0),
(27, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2021-05-06 22:24:33', NULL, 0),
(28, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2021-05-06 22:24:40', NULL, 0),
(29, 'admin@admin.com', 0x3a3a3100000000000000000000000000, '2021-05-06 22:24:46', NULL, 0),
(30, 'parthchawla65@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-06 23:03:49', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'parth chawla', 'parthchawla65@gmail.com', 123456789, '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-05 20:15:29', NULL),
(5, 'omar', 'omar@gmail.com', 123456789, '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-06 10:36:30', NULL),
(6, 'makire', 'max@gmail.com', 987654321, '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-06 10:37:29', NULL),
(7, 'maher', 'maher@gmail.com', 543216789, '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-06 10:37:54', NULL),
(8, 'asim', 'asim@gmail.com', 678954321, '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-06 10:38:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
