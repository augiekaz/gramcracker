-- phpMyAdmin SQL Dump
-- version 3.4.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 24, 2014 at 05:35 PM
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
-- Table structure for table `myCollection`
--

CREATE TABLE IF NOT EXISTS `myCollection` (
  `rId` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `photoId` varchar(200) NOT NULL,
  `userId` varchar(100) NOT NULL,
  `photoName` varchar(200) NOT NULL,
  `photoDesc` text NOT NULL,
  `removed` varchar(20) NOT NULL DEFAULT 'false',
  `instagramId` varchar(40) NOT NULL,
  `photoURL` text NOT NULL,
  `action` varchar(100) NOT NULL,
  PRIMARY KEY (`rId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `myCollection`
--

INSERT INTO `myCollection` (`rId`, `timestamp`, `photoId`, `userId`, `photoName`, `photoDesc`, `removed`, `instagramId`, `photoURL`, `action`) VALUES
(1, '2014-04-18 07:09:55', '', '1', 'mike idea', '', 'false', '', '', ''),
(2, '2014-04-21 13:07:04', 'm7BwdevY3D', 'zL8X7BtTdoZnU4a', 'm7BwdevY3D', '', 'false', '', 'http://origincache-prn.fbcdn.net/10009865_269043333275132_2011070340_a.jpg', 'add'),
(3, '2014-04-21 13:54:01', 'm4f0I1PYyY', 'zL8X7BtTdoZnU4a', 'm4f0I1PYyY', '', 'false', '', 'http://distilleryimage8.s3.amazonaws.com/ca090174c60111e39abb0002c9d39528_6.jpg', 'add'),
(4, '2014-04-21 13:56:12', 'm7BwdevY3D', 'zL8X7BtTdoZnU4a', 'm7BwdevY3D', '', 'false', '', 'http://origincache-prn.fbcdn.net/10009865_269043333275132_2011070340_a.jpg', 'add'),
(5, '2014-04-21 13:59:53', 'm7BwdevY3D', 'zL8X7BtTdoZnU4a', 'm7BwdevY3D', '', 'false', '', 'http://origincache-prn.fbcdn.net/10009865_269043333275132_2011070340_a.jpg', 'add'),
(6, '2014-04-21 14:05:06', 'm7BwdevY3D', 'zL8X7BtTdoZnU4a', 'm7BwdevY3D', '', 'false', '', 'http://origincache-prn.fbcdn.net/10009865_269043333275132_2011070340_a.jpg', 'add'),
(7, '2014-04-21 14:05:40', 'm7BwdevY3D', 'zL8X7BtTdoZnU4a', 'm7BwdevY3D', '', 'false', '', 'http://origincache-prn.fbcdn.net/10009865_269043333275132_2011070340_a.jpg', 'add'),
(8, '2014-04-21 14:11:02', 'm7BwdevY3D', 'zL8X7BtTdoZnU4a', 'm7BwdevY3D', '', 'false', '', 'http://origincache-prn.fbcdn.net/10009865_269043333275132_2011070340_a.jpg', 'add'),
(9, '2014-04-21 14:20:58', 'ml0f3IvY6Y', 'zL8X7BtTdoZnU4a', 'ml0f3IvY6Y', '', 'false', '', 'http://distilleryimage8.s3.amazonaws.com/f6a55bc8c04e11e389db0002c9924354_6.jpg', 'add'),
(10, '2014-04-21 14:57:39', 'mNPyGdPYy2', 'zL8X7BtTdoZnU4a', 'mNPyGdPYy2', '', 'false', '', 'http://distilleryimage2.s3.amazonaws.com/a7af1d2eb8ce11e3bc0e1294a77d28ea_6.jpg', 'add'),
(11, '2014-04-21 18:04:39', 'mg6QLYvY9h', 'notYetSignedUp', 'mg6QLYvY9h', '', 'false', '', 'http://distilleryimage4.s3.amazonaws.com/7f8b4ef6becf11e3a2380002c99c2b64_6.jpg', 'add'),
(12, '2014-04-21 18:04:42', 'mjRVuBvY9V', 'notYetSignedUp', 'mjRVuBvY9V', '', 'false', '', 'http://distilleryimage8.s3.amazonaws.com/bea9fbf2bf8611e3a04f0002c953300c_6.jpg', 'add'),
(13, '2014-04-21 18:04:48', 'mmF6TtPY-L', 'notYetSignedUp', 'mmF6TtPY-L', '', 'false', '', 'http://distilleryimage0.s3.amazonaws.com/594ef2e2c06411e393580002c954d880_6.jpg', 'add'),
(14, '2014-04-21 18:16:50', 'mPQE-HvYzW', 'LMdbAXzPJOr2Ys6', 'mPQE-HvYzW', '', 'false', '', 'http://origincache-ash.fbcdn.net/10013154_659035744162369_956546998_a.jpg', 'add'),
(15, '2014-04-21 18:16:59', 'mR7VxwvY3Y', 'LMdbAXzPJOr2Ys6', 'mR7VxwvY3Y', '', 'false', '', 'http://origincache-frc.fbcdn.net/914216_231551050383191_1030976159_a.jpg', 'add'),
(16, '2014-04-22 14:45:36', 'nFg10KPY89', 'LMdbAXzPJOr2Ys6', 'nFg10KPY89', '', 'false', '', 'http://origincache-prn.fbcdn.net/10246025_1462315800670475_500835998_a.jpg', 'add'),
(17, '2014-04-25 23:33:50', 'nMtkXSPY7C', 'notYetSignedUp', 'nMtkXSPY7C', '', 'false', '', 'http://origincache-prn.fbcdn.net/10175264_229210420612557_122821766_a.jpg', 'add'),
(18, '2014-04-26 14:45:27', 'm7BwdevY3D', 'notYetSignedUp', 'm7BwdevY3D', '', 'false', '', 'http://origincache-prn.fbcdn.net/10009865_269043333275132_2011070340_a.jpg', 'add'),
(19, '2014-04-26 15:17:19', 'nMtkXSPY7C', 'notYetSignedUp', 'nMtkXSPY7C', '', 'false', '', 'http://origincache-prn.fbcdn.net/10175264_229210420612557_122821766_a.jpg', 'add'),
(20, '2014-04-26 19:58:00', 'nMtkXSPY7C', 'notYetSignedUp', 'nMtkXSPY7C', '', 'false', '', 'http://origincache-prn.fbcdn.net/10175264_229210420612557_122821766_a.jpg', 'add'),
(21, '2014-04-27 00:15:58', 'nMtkXSPY7C', 'notYetSignedUp', 'nMtkXSPY7C', '', 'false', '', 'http://origincache-prn.fbcdn.net/10175264_229210420612557_122821766_a.jpg', 'add'),
(22, '2014-04-27 04:53:46', 'nMtkXSPY7C', 'notYetSignedUp', 'nMtkXSPY7C', '', 'false', '', 'http://origincache-prn.fbcdn.net/10175264_229210420612557_122821766_a.jpg', 'add'),
(23, '2014-04-27 06:45:34', 'nMtkXSPY7C', 'notYetSignedUp', 'nMtkXSPY7C', '', 'false', '', 'http://origincache-prn.fbcdn.net/10175264_229210420612557_122821766_a.jpg', 'add'),
(24, '2014-04-27 21:00:45', 'nMtkXSPY7C', 'notYetSignedUp', 'nMtkXSPY7C', '', 'false', '', 'http://origincache-prn.fbcdn.net/10175264_229210420612557_122821766_a.jpg', 'add'),
(25, '2014-04-27 21:01:03', 'l2OJNhPY6-', 'notYetSignedUp', 'l2OJNhPY6-', '', 'false', '', 'http://distilleryimage1.s3.amazonaws.com/941659bab1c811e39f7a1282bf652d05_6.jpg', 'add'),
(26, '2014-04-27 21:02:02', 'mHgDIyPY3S', 'notYetSignedUp', 'mHgDIyPY3S', '', 'false', '', 'http://origincache-prn.fbcdn.net/924280_301187580028461_628258973_a.jpg', 'add'),
(27, '2014-04-28 09:27:00', 'nMtkXSPY7C', 'notYetSignedUp', 'nMtkXSPY7C', '', 'false', '', 'http://origincache-prn.fbcdn.net/10175264_229210420612557_122821766_a.jpg', 'add'),
(28, '2014-04-28 09:27:21', 'm7BwdevY3D', 'notYetSignedUp', 'm7BwdevY3D', '', 'false', '', 'http://origincache-prn.fbcdn.net/10009865_269043333275132_2011070340_a.jpg', 'add'),
(29, '2014-04-28 09:28:22', 'mucKSNvY2S', 'notYetSignedUp', 'mucKSNvY2S', '', 'false', '', 'http://distilleryimage4.s3.amazonaws.com/5c0f0524c2f011e3b1900002c9d5244c_6.jpg', 'add'),
(30, '2014-04-28 11:40:32', 'nMtkXSPY7C', 'notYetSignedUp', 'nMtkXSPY7C', '', 'false', '', 'http://origincache-prn.fbcdn.net/10175264_229210420612557_122821766_a.jpg', 'add'),
(31, '2014-04-28 12:36:50', 'nMtkXSPY7C', 'notYetSignedUp', 'nMtkXSPY7C', '', 'false', '', 'http://origincache-prn.fbcdn.net/10175264_229210420612557_122821766_a.jpg', 'add'),
(32, '2014-04-29 05:39:29', 'mhcnvBvYzj', 'zL8X7BtTdoZnU4a', 'mhcnvBvYzj', '', 'false', '', 'http://origincache-prn.fbcdn.net/1170104_287892478037377_1050614672_a.jpg', 'add'),
(33, '2014-04-30 03:02:01', 'nZcQAvvY3v', 'notYetSignedUp', 'nZcQAvvY3v', '', 'false', '', 'http://origincache-frc.fbcdn.net/10251481_683511665042402_1835102519_a.jpg', 'add'),
(34, '2014-04-30 03:05:12', 'nVY3KlPYwQ', 'notYetSignedUp', 'nVY3KlPYwQ', '', 'false', '', 'http://distilleryimage8.s3.amazonaws.com/a978d292ced311e3a0770002c998b574_6.jpg', 'add'),
(35, '2014-04-30 12:47:27', 'nZcQAvvY3v', 'notYetSignedUp', 'nZcQAvvY3v', '', 'false', '', 'http://origincache-frc.fbcdn.net/10251481_683511665042402_1835102519_a.jpg', 'add'),
(36, '2014-05-01 15:12:50', 'l6ZHKTPY5z', 'notYetSignedUp', 'l6ZHKTPY5z', '', 'false', '', 'http://distilleryimage6.s3.amazonaws.com/f65ed890b30d11e3b258123a16f0fe82_6.jpg', 'add'),
(37, '2014-05-01 18:06:04', 'l7cf7JPYyC', 'notYetSignedUp', 'l7cf7JPYyC', '', 'false', '', 'http://distilleryimage9.s3.amazonaws.com/c90c2d74b35e11e39f7a1282bf652d05_6.jpg', 'add'),
(38, '2014-05-02 10:18:05', 'mucKSNvY2S', 'nLicF8PcJtHayCm', 'mucKSNvY2S', '', 'false', '', 'http://origincache-ash.fbcdn.net/10246104_1491567711066538_1193245084_a.jpg', 'add'),
(39, '2014-05-02 10:18:14', 'mrvWTIvY1k', 'nLicF8PcJtHayCm', 'mrvWTIvY1k', '', 'false', '', 'http://origincache-ash.fbcdn.net/1390014_459113630888320_413167749_a.jpg', 'add'),
(40, '2014-05-02 16:48:17', 'ndJuYkvY4b', 'notYetSignedUp', 'ndJuYkvY4b', '', 'false', '', 'http://origincache-frc.fbcdn.net/10296847_1388620148089878_745637703_a.jpg', 'add'),
(41, '2014-05-02 16:50:13', 'mHXRzhvYwN', 'notYetSignedUp', 'mHXRzhvYwN', '', 'false', '', 'http://distilleryimage8.s3.amazonaws.com/e1c09768b70211e3bcf812bd61fee7e8_6.jpg', 'add'),
(42, '2014-05-03 19:04:02', 'mAds8qPYw5', 'notYetSignedUp', 'mAds8qPYw5', '', 'false', '', 'http://distilleryimage4.s3.amazonaws.com/f3209e52b4e811e3aef612141806e92c_6.jpg', 'add'),
(43, '2014-05-03 19:04:12', 'mCqCk7vY2L', 'notYetSignedUp', 'mCqCk7vY2L', '', 'false', '', 'http://origincache-prn.fbcdn.net/10004132_612966555456993_228223407_a.jpg', 'add'),
(44, '2014-05-06 06:26:45', 'm4f0I1PYyY', 'notYetSignedUp', 'm4f0I1PYyY', '', 'false', '', 'http://origincache-frc.fbcdn.net/10246228_643356272386210_655012351_a.jpg', 'add'),
(45, '2014-05-06 06:27:54', 'mucKSNvY2S', 'notYetSignedUp', 'mucKSNvY2S', '', 'false', '', 'http://origincache-ash.fbcdn.net/10246104_1491567711066538_1193245084_a.jpg', 'add'),
(46, '2014-05-06 06:28:40', 'mmF6TtPY-L', 'notYetSignedUp', 'mmF6TtPY-L', '', 'false', '', 'http://distilleryimage0.s3.amazonaws.com/594ef2e2c06411e393580002c954d880_6.jpg', 'add'),
(47, '2014-05-06 06:28:44', 'ml0f3IvY6Y', 'notYetSignedUp', 'ml0f3IvY6Y', '', 'false', '', 'http://origincache-prn.fbcdn.net/1530749_512531458857481_1627496884_a.jpg', 'add'),
(48, '2014-05-06 06:35:15', 'meBRa2PYy6', 'notYetSignedUp', 'meBRa2PYy6', '', 'false', '', 'http://origincache-prn.fbcdn.net/10011214_277602049073154_1599157448_a.jpg', 'add'),
(49, '2014-05-11 07:03:47', 'nxNVvKPY9r', 'notYetSignedUp', 'nxNVvKPY9r', '', 'false', '', 'http://origincache-prn.fbcdn.net/926185_712106518836221_1762042189_a.jpg', 'add'),
(50, '2014-05-13 05:16:21', 'nxNVvKPY9r', 'nLicF8PcJtHayCm', 'nxNVvKPY9r', '', 'false', '', 'http://origincache-prn.fbcdn.net/926185_712106518836221_1762042189_a.jpg', 'add'),
(51, '2014-05-13 05:21:14', 'nKK7lvPY30', 'nLicF8PcJtHayCm', 'nKK7lvPY30', '', 'false', '', 'http://origincache-frc.fbcdn.net/10311292_456020171195678_798118863_a.jpg', 'add'),
(52, '2014-05-13 05:21:17', 'nMtkXSPY7C', 'nLicF8PcJtHayCm', 'nMtkXSPY7C', '', 'false', '', 'http://origincache-prn.fbcdn.net/10175264_229210420612557_122821766_a.jpg', 'add'),
(53, '2014-05-13 05:21:19', 'nVY3KlPYwQ', 'nLicF8PcJtHayCm', 'nVY3KlPYwQ', '', 'false', '', 'http://origincache-ash.fbcdn.net/10268739_1442905312616146_1288798476_a.jpg', 'add'),
(54, '2014-05-13 05:59:47', 'nzb9FOvY-q', 'nLicF8PcJtHayCm', 'nzb9FOvY-q', '', 'false', '', 'http://origincache-frc.fbcdn.net/10326517_1501392350081846_1262655909_a.jpg', 'add'),
(55, '2014-05-13 06:48:47', 'm7BwdevY3D', 'nLicF8PcJtHayCm', 'm7BwdevY3D', '', 'false', '', 'http://origincache-prn.fbcdn.net/10009865_269043333275132_2011070340_a.jpg', 'add'),
(56, '2014-05-13 07:42:38', 'k1qm1EPY3e', 'notYetSignedUp', 'k1qm1EPY3e', '', 'false', '', 'http://origincache-frc.fbcdn.net/1688119_631645600240849_1765919771_a.jpg', 'add'),
(57, '2014-05-13 11:00:20', 'n7BvtivY8Y', 'notYetSignedUp', 'n7BvtivY8Y', '', 'false', '', 'http://origincache-prn.fbcdn.net/10261180_686726251385429_776979364_a.jpg', 'add'),
(58, '2014-05-14 08:46:01', 'n5moTJPY43', 'notYetSignedUp', 'n5moTJPY43', '', 'false', '', 'http://origincache-frc.fbcdn.net/10354312_578040342309474_1385832352_a.jpg', 'add'),
(59, '2014-05-15 14:48:28', 'mmF6TtPY-L', 'nLicF8PcJtHayCm', 'mmF6TtPY-L', '', 'false', '', 'http://origincache-frc.fbcdn.net/1963180_291446841014105_1449713512_a.jpg', 'add'),
(60, '2014-05-25 03:04:21', 'oXl8xxPY9E', 'notYetSignedUp', 'oXl8xxPY9E', '', 'false', '', 'http://scontent-a.cdninstagram.com/hphotos-prn/t51.2885-15/10349771_1471698849733278_780466007_a.jpg', 'add'),
(61, '2014-05-28 14:07:53', 'oh0hX7vYyi', 'notYetSignedUp', 'oh0hX7vYyi', '', 'false', '', 'http://scontent-a.cdninstagram.com/hphotos-prn/t51.2885-15/10349615_500775946716051_1506779121_a.jpg', 'add'),
(62, '2014-05-30 14:58:18', 'okY6ybvYze', 'notYetSignedUp', 'okY6ybvYze', '', 'false', '', 'http://scontent-a.cdninstagram.com/hphotos-frc/t51.2885-15/10354411_699291800129876_1132396223_a.jpg', 'add'),
(63, '2014-06-08 18:41:22', 'o7pogjvY2q', 'notYetSignedUp', 'o7pogjvY2q', '', 'false', '', 'http://scontent-a.cdninstagram.com/hphotos-xpf1/t51.2885-15/10401635_241056906088958_1402859188_a.jpg', 'add'),
(64, '2014-06-17 07:47:43', 'pTRlV9vY1V', 'notYetSignedUp', 'pTRlV9vY1V', '', 'false', '', 'http://scontent-b.cdninstagram.com/hphotos-xfp1/t51.2885-15/10483488_246862118841471_2123456378_a.jpg', 'add');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
