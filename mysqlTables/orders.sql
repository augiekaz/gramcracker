-- phpMyAdmin SQL Dump
-- version 3.4.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 24, 2014 at 05:36 PM
-- Server version: 5.5.33
-- PHP Version: 5.4.19

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `marknad`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `rId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(60) NOT NULL,
  `itemId` varchar(100) NOT NULL,
  `itemName` varchar(140) NOT NULL,
  `itemDesc` text NOT NULL,
  `amount` int(11) NOT NULL,
  `pricePaid` double NOT NULL,
  `shippingPrice` double NOT NULL,
  `timeOrdered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `timezone` varchar(40) NOT NULL,
  `shippingDesc` varchar(200) NOT NULL DEFAULT 'regular',
  `timeDelivered` datetime NOT NULL,
  `status` varchar(60) NOT NULL DEFAULT 'notOrdered',
  `userFeedback` longtext NOT NULL,
  `currency` varchar(40) NOT NULL DEFAULT 'won',
  `action` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `encyptedCreditCard` varchar(60) NOT NULL,
  `expirationMonth` varchar(60) NOT NULL,
  `expirationYear` varchar(20) NOT NULL,
  `CCV` float NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `billingAddress1` varchar(100) NOT NULL,
  `billingAddress2` float NOT NULL,
  `billingCity` varchar(100) NOT NULL,
  `billingState` varchar(100) NOT NULL,
  `billingCountry` varchar(100) NOT NULL,
  `shippingAddress1` varchar(100) NOT NULL,
  `shippingAddress2` varchar(100) NOT NULL,
  `shippingCity` varchar(100) NOT NULL,
  `shippingState` varchar(100) NOT NULL,
  `shippingCountry` varchar(100) NOT NULL,
  `billingPostCode` varchar(100) NOT NULL,
  `shippingPostCode` varchar(100) NOT NULL,
  `shippingPhone` varchar(100) NOT NULL,
  `phoneNumber` varchar(100) NOT NULL,
  `timeJoined` varchar(100) NOT NULL,
  `lastUpdated` varchar(100) NOT NULL,
  `nameOnCard` varchar(100) NOT NULL,
  `passwd` varchar(100) NOT NULL,
  `billingZip` float NOT NULL,
  PRIMARY KEY (`rId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`rId`, `userId`, `itemId`, `itemName`, `itemDesc`, `amount`, `pricePaid`, `shippingPrice`, `timeOrdered`, `timezone`, `shippingDesc`, `timeDelivered`, `status`, `userFeedback`, `currency`, `action`, `email`, `password`, `encyptedCreditCard`, `expirationMonth`, `expirationYear`, `CCV`, `fullName`, `billingAddress1`, `billingAddress2`, `billingCity`, `billingState`, `billingCountry`, `shippingAddress1`, `shippingAddress2`, `shippingCity`, `shippingState`, `shippingCountry`, `billingPostCode`, `shippingPostCode`, `shippingPhone`, `phoneNumber`, `timeJoined`, `lastUpdated`, `nameOnCard`, `passwd`, `billingZip`) VALUES
(17, '0uHUTnIcNsrk8Ij', '6', '', '', 0, 0, 0, '2014-05-01 09:52:58', '', 'regular', '0000-00-00 00:00:00', 'notOrdered', '', 'won', 'add', '', '', '', '', '', 0, '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
