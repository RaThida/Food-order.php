-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 18, 2022 at 08:38 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `add-admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `user_name`, `password`, `status`) VALUES
(35, 'vat', 'vat', 'c4ca4238a0b923820dcc509a6f75849b', 0),
(36, 'c', 'c', '4a8a08f09d37b73795649038408b5f33', 1),
(37, 'd', 'd', '8277e0910d750195b448797616e091ad', 1),
(34, 'bii', 'bii', 'd2e4c4af45a3ad7091bc632c7af8dea6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
CREATE TABLE IF NOT EXISTS `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(30, 'ice-cream', 'Food_Category_759.jpg', 'yes', 'yes'),
(22, 'snack', 'Food_Category_605.jpg', 'Yes', 'Yes'),
(23, 'Food', 'Food_Category_103.jpg', 'Yes', 'Yes'),
(29, 'fast food', 'Food_Category_851.jpg', 'yes', 'yes'),
(26, 'Drink', 'Food_Category_672.png', 'Yes', 'Yes'),
(27, 'sweet', 'Food_Category_171.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

DROP TABLE IF EXISTS `tbl_food`;
CREATE TABLE IF NOT EXISTS `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(250) NOT NULL,
  `category_id` int(10) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(22, 'ice-cream', 'France fast food.', '3.00', 'Food_name361.jpg', 23, 'Yes', 'Yes'),
(21, 'mochi', 'fast food ', '3.00', 'Food_name766.jpg', 23, 'Yes', 'Yes'),
(20, 'rice cake', 'popular chinese food.', '2.00', 'Food_name802.jpg', 24, 'Yes', 'Yes'),
(19, 'potato croquettes', 'made in US. This pizza name is sea food pizza.', '5.00', 'Food_name59.jpg', 22, 'Yes', 'Yes'),
(23, 'pizza', 'food', '1.00', 'Food_name29.jpg', 22, 'Yes', 'Yes'),
(24, 'burger', 'a snack that have a sweet taste from the chocolate on it.', '3.00', 'Food_name794.jpg', 24, 'Yes', 'Yes'),
(25, 'potato', 'ice-cream with fresh strawberry', '2.00', 'Food_name649.png', 24, 'Yes', 'Yes'),
(26, 'koi', 'Made in Italian.', '5.00', 'Food_name135.jpg', 22, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(15) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(250) NOT NULL,
  `customer_address` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(25, 'France food', '3.00', 1, '3.00', '2022-10-13 04:40:08', 'Ordered', 'Thida Ra', '1232343', 'rathida134@gmail.com', 'Koh Dach'),
(26, 'Momo', '2.00', 1, '2.00', '2022-10-13 11:40:52', 'Ordered', 'Thida Ra', '2434564', 'rathida134@gmail.com', 'Koh Dach'),
(27, 'Momo', '2.00', 1, '2.00', '2022-10-13 11:41:24', 'Ordered', 'Thida Ra', '2434564', 'rathida134@gmail.com', 'Koh Dach'),
(28, 'donut', '3.00', 3, '9.00', '2022-10-13 11:41:41', 'Ordered', 'Thida Ra', '1232343', 'rathida134@gmail.com', 'Koh Dach'),
(29, 'US pizza', '5.00', 3, '15.00', '2022-10-13 11:43:51', 'delivered', 'hannah', '096453211', 'rathida134@gmail.com', 'Phnom Penh  '),
(30, 'France food', '3.00', 1, '3.00', '2022-10-13 11:45:53', 'Ordered', 'yuki', '423234', 'rathida134@gmail.com', 'Olampia'),
(31, 'France food', '3.00', 3, '9.00', '2022-10-13 11:46:44', 'Ordered', 'Thida Ra', '9087867', 'rathida134@gmail.com', 'Koh Dach');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
