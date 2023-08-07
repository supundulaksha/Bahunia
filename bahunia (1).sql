-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 07:02 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bahunia`
--
CREATE DATABASE IF NOT EXISTS `bahunia` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bahunia`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '30-10-2022 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) NOT NULL,
  `p_featured_photo` varchar(100) NOT NULL,
  `p_price` decimal(20,2) DEFAULT NULL,
  `size` varchar(100) NOT NULL,
  `colour` varchar(100) NOT NULL,
  `qty` int(100) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `features_product`
--

CREATE TABLE IF NOT EXISTS `features_product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) NOT NULL,
  `p_featured_photo` varchar(100) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_new_price` decimal(20,2) DEFAULT NULL,
  `p_qty` int(10) NOT NULL,
  `p_description` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `features_product`
--

INSERT INTO `features_product` (`p_id`, `p_name`, `p_featured_photo`, `p_old_price`, `p_new_price`, `p_qty`, `p_description`, `p_condition`, `p_return_policy`) VALUES
(1, 'Women Fashionable Dress', 'product-featured-90.jpg', 'Rs.5500.00', '4500.00', 85, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(2, 'Men POLO T-Shirt', '127.jpg', 'Rs.2200.00', '2000.00', 26, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(3, 'Women Night Dress', '114.jpg', 'Rs.3200.00', '2950.00', 37, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(4, 'Women Jacket', '121.jpg', 'Rs.2600.00', '2250.00', 50, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(5, 'Men Fashionable Jeans', 'product-featured-89.jpg', 'Rs.5500.00', '5350.00', 38, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `kids_collection`
--

CREATE TABLE IF NOT EXISTS `kids_collection` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) NOT NULL,
  `p_featured_photo` varchar(100) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_new_price` decimal(20,2) DEFAULT NULL,
  `p_qty` int(10) NOT NULL,
  `p_description` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `kids_collection`
--

INSERT INTO `kids_collection` (`p_id`, `p_name`, `p_featured_photo`, `p_old_price`, `p_new_price`, `p_qty`, `p_description`, `p_condition`, `p_return_policy`) VALUES
(1, 'Kids Fashanable Dress', '114.jpg', 'Rs 3200.00', '2900.00', 321, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(2, 'Kids Night dress', '115.jpg', 'Rs.2200', '1950.00', 31, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(3, 'Kids Frock', 'kid1.jpeg', 'Rs.1250.00', '980.00', 78, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(4, 'Baby girl dress', 'kid2.jpeg', 'Rs.2500.00', '2250.00', 67, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(5, 'Baby Boys Batman Dress', 'kid3.jpg', 'Rs.2600.00', '2350.00', 89, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(6, 'Baby boy summer cloth', 'kid4.jpg', 'Rs.3400.00', '3200.00', 77, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(7, 'Baby boy cloth', 'kid5.jpg', 'Rs.2200.00', '2150.00', 90, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(8, 'Baby jacket', 'kid6.jpeg', 'Rs.4300.00', '4150.00', 88, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(9, 'Boys Fashanable Dress', 'kid7.jpeg', 'Rs.2500.00', '2300.00', 65, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `latest_product`
--

CREATE TABLE IF NOT EXISTS `latest_product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) NOT NULL,
  `p_featured_photo` varchar(100) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_new_price` decimal(20,2) DEFAULT NULL,
  `p_qty` varchar(10) NOT NULL,
  `p_description` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `latest_product`
--

INSERT INTO `latest_product` (`p_id`, `p_name`, `p_featured_photo`, `p_old_price`, `p_new_price`, `p_qty`, `p_description`, `p_condition`, `p_return_policy`) VALUES
(3, 'Men Underamor T-shirt', '106.jpg', 'Rs.2500.00', '2350.00', '100', '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(4, 'Women Frock', '132.jpg', 'Rs.4500.00', '4320.00', '30', '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(5, 'Men POLO Shirt', 'shirt.jpeg', 'Rs.4500.00', '4150.00', '35', '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(6, 'Women Skirt', 'OIP (1).jpeg', 'Rs.4500.00', '4400.00', '25', '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(7, 'Women fashionable dress', '109.jpg', 'Rs.4600.00', '3950.00', '40', '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(8, 'Kid Nght dress', '115.jpg', 'Rs.2200.00', '2100.00', '50', '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(9, 'Moose T-shirt', '107.jpg', 'Rs.2300.00', '2150.00', '80', '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(10, 'Nike Sport T-Shirt', 'lateset 2.jpg', '2400.00', '2100.00', '11', 'good', 'Very Good', 'So good');

-- --------------------------------------------------------

--
-- Table structure for table `loginsch`
--

CREATE TABLE IF NOT EXISTS `loginsch` (
  `LogSerial` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Login` datetime NOT NULL,
  `Logout` datetime NOT NULL,
  PRIMARY KEY (`LogSerial`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Dumping data for table `loginsch`
--

INSERT INTO `loginsch` (`LogSerial`, `Username`, `Login`, `Logout`) VALUES
(31, 'Supun', '2023-06-27 14:58:32', '0000-00-00 00:00:00'),
(32, 'Supun', '2023-06-27 14:59:36', '0000-00-00 00:00:00'),
(33, 'Supun', '2023-06-27 15:00:02', '0000-00-00 00:00:00'),
(34, 'Supun', '2023-06-27 15:00:46', '0000-00-00 00:00:00'),
(35, 'Supun', '2023-06-27 19:56:16', '0000-00-00 00:00:00'),
(36, 'Supun', '2023-06-27 19:58:57', '0000-00-00 00:00:00'),
(37, 'Supun', '2023-06-27 20:01:21', '0000-00-00 00:00:00'),
(38, 'Supun', '2023-06-27 20:09:13', '0000-00-00 00:00:00'),
(39, 'Supun', '2023-06-27 20:18:20', '0000-00-00 00:00:00'),
(40, 'Supun', '2023-06-27 22:41:29', '0000-00-00 00:00:00'),
(41, 'Supun', '2023-06-27 22:42:56', '0000-00-00 00:00:00'),
(42, 'Supun', '2023-06-27 22:43:53', '0000-00-00 00:00:00'),
(43, 'Supun', '2023-06-27 22:44:32', '0000-00-00 00:00:00'),
(44, 'Supun', '2023-06-27 23:59:14', '0000-00-00 00:00:00'),
(45, 'Supun', '2023-07-01 14:30:41', '0000-00-00 00:00:00'),
(46, 'Supun', '2023-07-01 22:54:36', '0000-00-00 00:00:00'),
(47, 'Niluminda', '2023-07-01 23:24:38', '0000-00-00 00:00:00'),
(48, 'Supun', '2023-07-03 22:40:42', '0000-00-00 00:00:00'),
(49, 'Supun', '2023-07-04 00:30:46', '0000-00-00 00:00:00'),
(50, 'Niluminda', '2023-07-04 00:31:20', '0000-00-00 00:00:00'),
(51, 'Supun', '2023-07-04 07:21:22', '0000-00-00 00:00:00'),
(52, 'Supun', '2023-07-04 07:21:57', '0000-00-00 00:00:00'),
(53, 'Supun', '2023-07-04 07:22:22', '0000-00-00 00:00:00'),
(54, 'Supun', '2023-07-04 12:51:24', '0000-00-00 00:00:00'),
(55, 'Supun', '2023-07-04 14:37:24', '0000-00-00 00:00:00'),
(56, 'Supun', '2023-07-04 14:59:47', '0000-00-00 00:00:00'),
(57, 'Supun', '2023-07-04 15:05:05', '0000-00-00 00:00:00'),
(58, 'Supun', '2023-07-07 12:49:09', '0000-00-00 00:00:00'),
(59, 'Supun', '2023-07-07 20:04:34', '0000-00-00 00:00:00'),
(60, 'Supun', '2023-07-11 10:30:48', '0000-00-00 00:00:00'),
(61, 'Supun', '2023-07-12 13:12:40', '0000-00-00 00:00:00'),
(62, 'Supun', '2023-07-12 13:13:02', '0000-00-00 00:00:00'),
(63, 'Supun', '2023-07-13 23:40:56', '0000-00-00 00:00:00'),
(64, 'Supun', '2023-07-15 18:47:37', '0000-00-00 00:00:00'),
(65, 'Supun', '2023-07-15 21:07:03', '0000-00-00 00:00:00'),
(66, 'Niluminda', '2023-07-16 19:03:48', '0000-00-00 00:00:00'),
(67, 'Niluminda', '2023-07-16 21:45:56', '0000-00-00 00:00:00'),
(68, 'Niluminda', '2023-07-17 00:35:18', '0000-00-00 00:00:00'),
(69, 'Niluminda', '2023-07-17 18:21:04', '0000-00-00 00:00:00'),
(70, 'Niluminda', '2023-07-17 19:08:20', '0000-00-00 00:00:00'),
(71, 'Niluminda', '2023-07-18 10:47:58', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mens_collection`
--

CREATE TABLE IF NOT EXISTS `mens_collection` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) NOT NULL,
  `p_featured_photo` varchar(100) NOT NULL,
  `p_old_price` varchar(100) NOT NULL,
  `p_new_price` decimal(20,2) DEFAULT NULL,
  `p_qty` int(10) NOT NULL,
  `p_description` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `mens_collection`
--

INSERT INTO `mens_collection` (`p_id`, `p_name`, `p_featured_photo`, `p_old_price`, `p_new_price`, `p_qty`, `p_description`, `p_condition`, `p_return_policy`) VALUES
(1, 'Addidas T-shirt', 't-shirt.png', 'Rs 2100.00', '1850.00', 68, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(2, 'Men POLO T-Shirt', '127.jpg', 'Rs.2200', '1980.00', 78, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(3, 'LICC Jeans', 'R.png', 'Rs.6500.00', '6300.00', 56, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(4, 'Underamor T-Shirt', '117.jpg', 'Rs.3500.00', '3150.00', 32, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(5, 'Emerald Shirt', 'png.png', 'Rs.6200.00', '5850.00', 55, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(6, 'Men Short', '119.jpg', 'Rs.1800.00', '1550.00', 33, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(7, 'Vantage Shirt', 'shirt.jpeg', 'Rs.4200.00', '3800.00', 89, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(8, 'Men Moose Jeans', 'Jeans.jpeg', 'Rs.4200.00', '3850.00', 45, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(9, 'Men Underamor T-Shirt', '106.jpg', 'Rs.2500.00', '2100.00', 35, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(10, 'Addidas shirt', '', '4500', '4100.00', 10, 'Good', 'Very good', 'Return 7-14 days');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `p_id` varchar(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_featured_photo` varchar(100) NOT NULL,
  `p_price` int(100) NOT NULL,
  `colour` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `qty` int(100) NOT NULL,
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) NOT NULL,
  `cus_add` varchar(100) NOT NULL,
  `card_number` int(16) NOT NULL,
  `exp_month` date NOT NULL,
  `exp_year` int(4) NOT NULL,
  `cvc` int(3) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`p_id`, `p_name`, `p_featured_photo`, `p_price`, `colour`, `size`, `qty`, `customer_id`, `customer_name`, `cus_add`, `card_number`, `exp_month`, `exp_year`, `cvc`) VALUES
('', 'Men POLO Shirt', 'shirt.jpeg', 4150, 'Blue', 'Large', 2, 1, 'Kamal Perera', 'Yakkalamulla', 2147483647, '0000-00-00', 2024, 456),
('', 'Moose T-shirt', '107.jpg', 2150, 'Blue', 'Medium', 2, 2, 'John Doe', '345/A Morris Road,Galle', 2147483647, '0000-00-00', 2025, 456),
('', 'Women Skirt', 'OIP (1).jpeg', 4400, 'Red', 'Small', 1, 3, 'Romanie Wills', '346/A Piyasamara,Thellambura,Nakiyadeniya', 2147483647, '0000-00-00', 2025, 789),
('', 'Men POLO Shirt', 'shirt.jpeg', 4150, 'Blue', 'Medium', 2, 4, 'Supun dulaksha', 'Galle', 2147483647, '0000-00-00', 2025, 456);

-- --------------------------------------------------------

--
-- Table structure for table `popular_product`
--

CREATE TABLE IF NOT EXISTS `popular_product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) NOT NULL,
  `p_featured_photo` varchar(100) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_new_price` decimal(20,2) DEFAULT NULL,
  `p_qty` int(10) NOT NULL,
  `p_description` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `popular_product`
--

INSERT INTO `popular_product` (`p_id`, `p_name`, `p_featured_photo`, `p_old_price`, `p_new_price`, `p_qty`, `p_description`, `p_condition`, `p_return_policy`) VALUES
(1, 'Women POLO Jacket', '120.jpg', 'Rs.2200', '1850.00', 45, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(2, 'Mens Moose Jeans', 'OIP.jpeg', 'Rs.4200.00', '3900.00', 78, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(3, 'Men Short', '119.jpg', 'Rs.1850.00', '1550.00', 42, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(4, 'Men Underamaor T-Shirt', '117.jpg', 'Rs.2800.00', '2550.00', 67, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(5, 'Women Jacket', '121.jpg', 'Rs.2600.00', '2300.00', 56, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `staff_registration`
--

CREATE TABLE IF NOT EXISTS `staff_registration` (
  `empID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `contactNo` int(10) NOT NULL,
  `dob` date NOT NULL,
  `nationalID` int(12) NOT NULL,
  `address` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` int(10) NOT NULL,
  `position` varchar(50) NOT NULL,
  PRIMARY KEY (`empID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_registration`
--

INSERT INTO `staff_registration` (`empID`, `name`, `contactNo`, `dob`, `nationalID`, `address`, `address2`, `city`, `state`, `zip`, `position`) VALUES
(1, 'Niluminda', 771909670, '2023-07-03', 2147483647, 'Matara', 'Thellambura', 'Galle', 'Southern Province', 80064, 'Clerk'),
(2, 'Supun Dulaksha Niluminda', 771909670, '2023-07-12', 3463653, 'Yakkalamulla', 'Thellambura', 'sdf', 'Southern Province', 80064, 'Software Enginner'),
(3, 'Mr.Dimuth', 2147483647, '1999-06-09', 2147483647, 'Weligama,Matara', 'Galle', 'Galle', 'Southern Province', 456388, 'Senior Software enginner'),
(5, 'Niluminda', 771234567, '2001-02-02', 2147483647, '345/A Morris Road,Galle', 'Galle', 'Galle', 'Southern Province', 80064, 'Software Enginner');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE IF NOT EXISTS `tbl_customers` (
  `serialNo` int(11) NOT NULL AUTO_INCREMENT,
  `cus_id` varchar(10) NOT NULL,
  `names` varchar(100) NOT NULL,
  `con_no` varchar(20) DEFAULT NULL,
  `mobile_no` varchar(15) DEFAULT NULL,
  `adress` varchar(100) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `states` varchar(100) NOT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `passwords` varchar(15) NOT NULL,
  `comfirm_password` int(15) NOT NULL,
  PRIMARY KEY (`serialNo`),
  UNIQUE KEY `serialNo` (`serialNo`),
  UNIQUE KEY `cus_id` (`cus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`serialNo`, `cus_id`, `names`, `con_no`, `mobile_no`, `adress`, `city`, `states`, `zip_code`, `email`, `passwords`, `comfirm_password`) VALUES
(1, '10', 'Supun', '0771909670', '0771909670', '346/A Piyasamara,Thellambura,Nakiyadeniya', 'Galle', 'Southern Province', '80064', 'supundulaksha16@gmail.com', 'supun17092', 0),
(2, '12', 'Kamal Perera', '0783937282', '0378672826', 'Yakkalamulla', 'Galle', 'Southern Province', '80064', 'kamal12@gmail.com', '123', 123),
(3, '13', 'john wick', '0712345678', '07845672541', '345/A Morris Road,Galle', 'Colombo', '345/A', '678437', 'johnwick13@gmail.com', '2001', 2001),
(4, '14', 'Kasun Kalahara', '0783456725', '07734627252', '345/A Morris Road,Galle', 'Galle', '234', '80064', 'kasun23@gmail.com', 'kasun', 0),
(5, '45', 'Supun ', '0771909670', '078456123', '345/A Morris Road,Galle', 'Galle', 'Southern Province', '80064', 'supundulaksha16@gmail.com', '123', 123);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE IF NOT EXISTS `tbl_product` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_new_price` varchar(10) NOT NULL,
  `p_qty` int(10) NOT NULL,
  `p_description` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  `p_featured_photo` varchar(255) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`p_id`, `p_name`, `p_old_price`, `p_new_price`, `p_qty`, `p_description`, `p_condition`, `p_return_policy`, `p_featured_photo`) VALUES
(1, 'Men''s Underamor T-shirt', '2500.00', '2100.00', 100, '<p style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">Solids: 100% Cotton; Sport Grey And Antique Heather: 90% Cotton, 10% Polyester; Safety Colors And Heather: 50% Cotton, 50% Polyester.</span></p><p style="list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="overflow-wrap: break-word; display: block;">\r\nUnder Armour is a popular sportswear brand known for its innovative, high-performance apparel. The Under Armour T-Shirt is a classic and versatile piece of clothing suitable for various activities and casual wear. It features a combination of quality materials and advanced technologies to provide comfort, durability, and moisture-wicking properties.</span></p>', '<p>This is a sample text for conditions.</p>', '<p><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">Offers aÂ </span><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">15 to 30-day window</span><span style="color: rgb(32, 33, 36); font-family: arial, sans-serif; font-size: 16px;">Â in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</span><br></p>', '106.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE IF NOT EXISTS `tbl_settings` (
  `latest_products` int(11) NOT NULL,
  `features_products` int(11) NOT NULL,
  `popular_products` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE IF NOT EXISTS `tbl_social` (
  `social_id` int(11) NOT NULL AUTO_INCREMENT,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL,
  PRIMARY KEY (`social_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', 'https://www.facebook.com/#', 'fa fa-facebook'),
(2, 'Twitter', 'https://www.twitter.com/#', 'fa fa-twitter');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cust_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card_number` bigint(20) NOT NULL,
  `card_cvc` int(5) NOT NULL,
  `card_exp_month` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `card_exp_year` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_number` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item_price` float(10,2) NOT NULL,
  `item_price_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'usd',
  `paid_amount` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `paid_amount_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usertbl`
--

CREATE TABLE IF NOT EXISTS `usertbl` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Realname` varchar(50) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertbl`
--

INSERT INTO `usertbl` (`Username`, `Password`, `Realname`) VALUES
('Supun', '12345678', 'Johnwick');

-- --------------------------------------------------------

--
-- Table structure for table `womens_collection`
--

CREATE TABLE IF NOT EXISTS `womens_collection` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(100) NOT NULL,
  `p_featured_photo` varchar(100) NOT NULL,
  `p_old_price` varchar(10) NOT NULL,
  `p_new_price` decimal(20,2) DEFAULT NULL,
  `p_qty` int(10) NOT NULL,
  `p_description` text NOT NULL,
  `p_condition` text NOT NULL,
  `p_return_policy` text NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `womens_collection`
--

INSERT INTO `womens_collection` (`p_id`, `p_name`, `p_featured_photo`, `p_old_price`, `p_new_price`, `p_qty`, `p_description`, `p_condition`, `p_return_policy`) VALUES
(1, 'Women Fashanable Dress', '108.jpg', 'Rs 4600.00', '4350.00', 45, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(2, 'Women Fashanoble Frock', '128.jpg', 'Rs.2200', '2050.00', 78, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(3, 'Women Frock', '132.jpg', 'Rs.4500.00', '4150.00', 32, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(4, 'Women Skirt', 'OIP (1).jpeg', 'Rs.4500.00', '4400.00', 22, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(5, 'Women Jacket', 'product-featured-91.jpg', 'Rs.2600.00', '2300.00', 35, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(6, 'Women Fashanable Dress', '120.jpg', 'Rs.5500.00', '5210.00', 89, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(7, 'Long Sleeve Frock', 'product-featured-84.jpg', 'Rs.4200.00', '3800.00', 240, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(8, 'Women Dress', 'product-featured-98.jpg', 'Rs.5100.00', '4850.00', 211, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>'),
(9, 'Women Underamor T-Shirt', '106.jpg', 'Rs.2500.00', '2380.00', 245, '<p>Since 1889, Carhartt has made durable workwear you can count on as you tackle the toughest jobs. This men''s long-sleeve t-shirt bears our logo proudly on the chest pocket. It''s made of heavyweight cotton jersey and cut generously for a roomy fit.</p>', '<p>100% cotton (fiber content varies by color)\r\nRib-knit crewneck and cuffs\r\nLeft-chest pocket with sewn on Carhartt label\r\nLoose Fit t-shirts are cut larger with a roomier fit in the chest and shoulders\r\nLoose Fit, previously known as Original Fit, is a label update in name only.  Loose and Original size and fit remains the same. Stock may vary in labeling\r\nPrevious Product Name: K126 Workwear Pocket Long-Sleeve T-shirt</p>', '<p>Offers a 15 to 30-day window in which customers can return a product and ask for a refund. Some businesses extend that period up to 90 days. Regardless of the time frame you choose, ensuring that you actually have a time frame is essential.</p>');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
