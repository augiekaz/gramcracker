-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Host: 127.9.170.2:3306
-- Generation Time: Jun 24, 2014 at 08:43 PM
-- Server version: 5.5.37
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `rId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(21) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(60) NOT NULL,
  `encyptedCreditCard` varchar(32) NOT NULL,
  `expirationMonth` int(11) NOT NULL,
  `expirationYear` int(11) NOT NULL,
  `CCV` varchar(6) NOT NULL,
  `fullName` varchar(80) NOT NULL,
  `billingAddress1` varchar(100) NOT NULL,
  `billingAddress2` varchar(100) NOT NULL,
  `billingCity` varchar(100) NOT NULL,
  `billingState` varchar(100) NOT NULL,
  `billingCountry` varchar(50) NOT NULL,
  `shippingAddress1` varchar(50) NOT NULL,
  `shippingAddress2` varchar(50) NOT NULL,
  `shippingCity` varchar(50) NOT NULL,
  `shippingState` varchar(50) NOT NULL,
  `shippingCountry` varchar(50) NOT NULL,
  `billingPostCode` varchar(20) NOT NULL,
  `shippingPostCode` varchar(20) NOT NULL,
  `shippingPhone` varchar(30) NOT NULL,
  `phoneNumber` varchar(30) NOT NULL,
  `timeJoined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastUpdated` datetime NOT NULL,
  `nameOnCard` varchar(60) NOT NULL,
  `passwd` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `billingZip` float NOT NULL,
  `shipName` varchar(100) NOT NULL,
  `countryC` varchar(100) NOT NULL,
  PRIMARY KEY (`rId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
