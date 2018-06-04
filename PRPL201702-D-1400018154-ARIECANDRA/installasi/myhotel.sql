-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2013 at 02:26 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `myhotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `idclass` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `price` varchar(20) NOT NULL,
  `description` longtext NOT NULL,
  `photoclass` varchar(50) NOT NULL,
  PRIMARY KEY (`idclass`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`idclass`, `title`, `price`, `description`, `photoclass`) VALUES
(1, 'Single Room', '400000', '<p><a href="http://www.webusahaku.com">LINK</a></p>\r\n\r\n<p><br />\r\n<img alt="" src="/hotel/uploads/images/3_Kesalahan_Menabung_1375715639.jpg" style="height:307px; width:438px" /></p>\r\n', 'singleroom.jpg'),
(2, 'Double Room', '600000', '<p>sdasdasdd</p>\r\n', 'doubleroom.jpg'),
(3, 'Suite Room', '15000000', '<p>asdasdasd</p>\r\n', 'suiteroom.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE IF NOT EXISTS `facilities` (
  `idclass` varchar(10) NOT NULL,
  `fac` varchar(40) NOT NULL,
  `title` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`idclass`, `fac`, `title`, `status`) VALUES
('1', 'lcd', 'LCD', '1'),
('1', 'wifi', 'Free WIFI', '1'),
('1', 'breakfast', 'Sarapan', '1'),
('1', 'safe', 'Kenyamanan', '0'),
('1', 'bath', 'Kamar Mandi', '1'),
('1', 'dinner', 'Makan Malam', '0'),
('1', 'parking', 'Tempat Parkir', '1'),
('1', 'laundry', 'Cuci Gratis', '0'),
('2', 'lcd', 'LCD', '1'),
('2', 'wifi', 'Free WIFI', '1'),
('2', 'breakfast', 'Sarapan', '0'),
('2', 'safe', 'Kenyamanan', '0'),
('2', 'bath', 'Kamar Mandi', '1'),
('2', 'dinner', 'Makan Malam', '0'),
('2', 'parking', 'Tempat Parkir', '1'),
('2', 'laundry', 'Cuci Gratis', '0'),
('3', 'lcd', 'LCD', '1'),
('3', 'wifi', 'Free WIFI', '1'),
('3', 'breakfast', 'Sarapan', '1'),
('3', 'safe', 'Kenyamanan', '1'),
('3', 'bath', 'Kamar Mandi', '1'),
('3', 'dinner', 'Makan Malam', '1'),
('3', 'parking', 'Tempat Parkir', '1'),
('3', 'laundry', 'Cuci Gratis', '1');

-- --------------------------------------------------------

--
-- Table structure for table `identification`
--

CREATE TABLE IF NOT EXISTS `identification` (
  `identify_kinds` int(20) NOT NULL AUTO_INCREMENT,
  `identify_name` varchar(40) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`identify_kinds`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `identification`
--

INSERT INTO `identification` (`identify_kinds`, `identify_name`, `status`) VALUES
(1, 'Passport', '1'),
(2, 'KTP/ID Card/Civilian Card', '1');

-- --------------------------------------------------------

--
-- Table structure for table `login_cat`
--

CREATE TABLE IF NOT EXISTS `login_cat` (
  `cat_login_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_login_name` varchar(40) NOT NULL,
  `cat_login_hash` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_login_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `login_cat`
--

INSERT INTO `login_cat` (`cat_login_id`, `cat_login_name`, `cat_login_hash`) VALUES
(1, 'Administrator', '#admin#');

-- --------------------------------------------------------

--
-- Table structure for table `login_web`
--

CREATE TABLE IF NOT EXISTS `login_web` (
  `login_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_login_id` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(80) NOT NULL,
  `recent_login` date NOT NULL,
  `email` varchar(60) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `login_web`
--

INSERT INTO `login_web` (`login_id`, `cat_login_id`, `username`, `password`, `recent_login`, `email`, `name`, `phone`, `status`) VALUES
(1, '1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2013-08-05', 'herurahmat31@yahoo.co.id', 'Heru Rahmat Akhnuari', '1231231', '1');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `idoptions` int(10) NOT NULL AUTO_INCREMENT,
  `options_name` varchar(40) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`idoptions`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`idoptions`, `options_name`, `value`) VALUES
(1, 'company_name', 'Hotel Jaya Tujuh'),
(2, 'company_address', 'Jl. Aplikasi No. 133'),
(3, 'company_number', '09876554333'),
(4, 'currency', 'Rp');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `id_page` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `post_entry` longtext NOT NULL,
  PRIMARY KEY (`id_page`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id_page`, `title`, `post_entry`) VALUES
(1, 'About', 'Ini tentang about'),
(2, 'Contact Us', 'Ini Tentang Contact');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_kinds` int(20) NOT NULL AUTO_INCREMENT,
  `payment_name` varchar(40) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`payment_kinds`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_kinds`, `payment_name`, `status`) VALUES
(1, 'Credit Card', '0'),
(2, 'Paypal', '1');

-- --------------------------------------------------------

--
-- Table structure for table `post_article`
--

CREATE TABLE IF NOT EXISTS `post_article` (
  `post_id` int(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `featurephoto` varchar(100) NOT NULL,
  `post_entry` longtext NOT NULL,
  `create_date` date NOT NULL,
  `hit` int(10) NOT NULL,
  `create_by` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_article`
--

INSERT INTO `post_article` (`post_id`, `title`, `featurephoto`, `post_entry`, `create_date`, `hit`, `create_by`) VALUES
(0, 'Ini adalah artikel pertama', 'computer-virus-character-hi_1375739973.png', '<p>VIRUS 2</p>\r\n\r\n<p><img alt="" src="/hotel/uploads/images/computer-virus-character-hi_1375715930.png" style="height:258px; width:300px" /></p>\r\n', '2013-08-06', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `promote`
--

CREATE TABLE IF NOT EXISTS `promote` (
  `idpromo` int(10) NOT NULL AUTO_INCREMENT,
  `idclass` varchar(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `discount` varchar(3) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`idpromo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `promote`
--

INSERT INTO `promote` (`idpromo`, `idclass`, `title`, `start_date`, `end_date`, `discount`, `description`) VALUES
(1, '1', 'PROMO 1', '2013-08-01', '2013-08-15', '10', '<p>TADASDASDASD</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE IF NOT EXISTS `reservations` (
  `idreservation` int(10) NOT NULL AUTO_INCREMENT,
  `resv_date` date NOT NULL,
  `resv_date2` date NOT NULL,
  `title` varchar(5) NOT NULL,
  `name` varchar(60) NOT NULL,
  `identify_kinds` varchar(20) DEFAULT NULL,
  `identify_value` varchar(40) DEFAULT NULL,
  `payment_kinds` varchar(20) DEFAULT NULL,
  `payment_value` varchar(60) DEFAULT NULL,
  `idclass` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idreservation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE IF NOT EXISTS `rooms` (
  `idrooms` int(10) NOT NULL AUTO_INCREMENT,
  `numbers` varchar(10) NOT NULL,
  `idclass` varchar(10) NOT NULL,
  `status` varchar(1) NOT NULL,
  `namespace` varchar(50) NOT NULL,
  PRIMARY KEY (`idrooms`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=254 ;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`idrooms`, `numbers`, `idclass`, `status`, `namespace`) VALUES
(84, 'Pantai1', '3', '0', 'Pantai'),
(85, 'Pantai2', '3', '0', 'Pantai'),
(86, 'Pantai3', '3', '0', 'Pantai'),
(87, 'Pantai4', '3', '0', 'Pantai'),
(88, 'Pantai5', '3', '0', 'Pantai'),
(89, 'Pantai6', '3', '0', 'Pantai'),
(90, 'Pantai7', '3', '0', 'Pantai'),
(91, 'Pantai8', '3', '0', 'Pantai'),
(92, 'Pantai9', '3', '0', 'Pantai'),
(93, 'Pantai10', '3', '0', 'Pantai'),
(94, 'Pantai11', '3', '0', 'Pantai'),
(95, 'Pantai12', '3', '0', 'Pantai'),
(96, 'Pantai13', '3', '0', 'Pantai'),
(97, 'Pantai14', '3', '0', 'Pantai'),
(98, 'Pantai15', '3', '0', 'Pantai'),
(99, 'Pantai16', '3', '0', 'Pantai'),
(100, 'Pantai17', '3', '0', 'Pantai'),
(101, 'Pantai18', '3', '0', 'Pantai'),
(102, 'Pantai19', '3', '0', 'Pantai'),
(103, 'Pantai20', '3', '0', 'Pantai'),
(104, 'Pantai21', '3', '0', 'Pantai'),
(105, 'Pantai22', '3', '0', 'Pantai'),
(106, 'Pantai23', '3', '0', 'Pantai'),
(107, 'Pantai24', '3', '0', 'Pantai'),
(108, 'Pantai25', '3', '0', 'Pantai'),
(109, 'Pantai26', '3', '0', 'Pantai'),
(110, 'Pantai27', '3', '0', 'Pantai'),
(111, 'Pantai28', '3', '0', 'Pantai'),
(112, 'Pantai29', '3', '0', 'Pantai'),
(113, 'Pantai30', '3', '0', 'Pantai'),
(114, 'GAPUAH1', '2', '0', 'GAPUAH'),
(115, 'GAPUAH2', '2', '0', 'GAPUAH'),
(116, 'GAPUAH3', '2', '0', 'GAPUAH'),
(117, 'GAPUAH4', '2', '0', 'GAPUAH'),
(118, 'GAPUAH5', '2', '0', 'GAPUAH'),
(119, 'GAPUAH6', '2', '0', 'GAPUAH'),
(120, 'GAPUAH7', '2', '0', 'GAPUAH'),
(121, 'GAPUAH8', '2', '0', 'GAPUAH'),
(122, 'GAPUAH9', '2', '0', 'GAPUAH'),
(123, 'GAPUAH10', '2', '0', 'GAPUAH'),
(124, 'GAPUAH11', '2', '0', 'GAPUAH'),
(125, 'GAPUAH12', '2', '0', 'GAPUAH'),
(126, 'GAPUAH13', '2', '0', 'GAPUAH'),
(127, 'GAPUAH14', '2', '0', 'GAPUAH'),
(128, 'GAPUAH15', '2', '0', 'GAPUAH'),
(129, 'GAPUAH16', '2', '0', 'GAPUAH'),
(130, 'GAPUAH17', '2', '0', 'GAPUAH'),
(131, 'GAPUAH18', '2', '0', 'GAPUAH'),
(132, 'GAPUAH19', '2', '0', 'GAPUAH'),
(133, 'GAPUAH20', '2', '0', 'GAPUAH'),
(134, 'GAPUAH21', '2', '0', 'GAPUAH'),
(135, 'GAPUAH22', '2', '0', 'GAPUAH'),
(136, 'GAPUAH23', '2', '0', 'GAPUAH'),
(137, 'GAPUAH24', '2', '0', 'GAPUAH'),
(138, 'GAPUAH25', '2', '0', 'GAPUAH'),
(139, 'GAPUAH26', '2', '0', 'GAPUAH'),
(140, 'GAPUAH27', '2', '0', 'GAPUAH'),
(141, 'GAPUAH28', '2', '0', 'GAPUAH'),
(142, 'GAPUAH29', '2', '0', 'GAPUAH'),
(143, 'GAPUAH30', '2', '0', 'GAPUAH'),
(144, 'GAPUAH31', '2', '0', 'GAPUAH'),
(145, 'GAPUAH32', '2', '0', 'GAPUAH'),
(146, 'GAPUAH33', '2', '0', 'GAPUAH'),
(147, 'GAPUAH34', '2', '0', 'GAPUAH'),
(148, 'GAPUAH35', '2', '0', 'GAPUAH'),
(149, 'GAPUAH36', '2', '0', 'GAPUAH'),
(150, 'GAPUAH37', '2', '0', 'GAPUAH'),
(151, 'GAPUAH38', '2', '0', 'GAPUAH'),
(152, 'GAPUAH39', '2', '0', 'GAPUAH'),
(153, 'GAPUAH40', '2', '0', 'GAPUAH'),
(154, 'Garuda1', '1', '0', 'Garuda'),
(155, 'Garuda2', '1', '0', 'Garuda'),
(156, 'Garuda3', '1', '0', 'Garuda'),
(157, 'Garuda4', '1', '0', 'Garuda'),
(158, 'Garuda5', '1', '0', 'Garuda'),
(159, 'Garuda6', '1', '0', 'Garuda'),
(160, 'Garuda7', '1', '0', 'Garuda'),
(161, 'Garuda8', '1', '0', 'Garuda'),
(162, 'Garuda9', '1', '0', 'Garuda'),
(163, 'Garuda10', '1', '0', 'Garuda'),
(164, 'Garuda11', '1', '0', 'Garuda'),
(165, 'Garuda12', '1', '0', 'Garuda'),
(166, 'Garuda13', '1', '0', 'Garuda'),
(167, 'Garuda14', '1', '0', 'Garuda'),
(168, 'Garuda15', '1', '0', 'Garuda'),
(169, 'Garuda16', '1', '0', 'Garuda'),
(170, 'Garuda17', '1', '0', 'Garuda'),
(171, 'Garuda18', '1', '0', 'Garuda'),
(172, 'Garuda19', '1', '0', 'Garuda'),
(173, 'Garuda20', '1', '0', 'Garuda'),
(174, 'Garuda21', '1', '0', 'Garuda'),
(175, 'Garuda22', '1', '0', 'Garuda'),
(176, 'Garuda23', '1', '0', 'Garuda'),
(177, 'Garuda24', '1', '0', 'Garuda'),
(178, 'Garuda25', '1', '0', 'Garuda'),
(179, 'Garuda26', '1', '0', 'Garuda'),
(180, 'Garuda27', '1', '0', 'Garuda'),
(181, 'Garuda28', '1', '0', 'Garuda'),
(182, 'Garuda29', '1', '0', 'Garuda'),
(183, 'Garuda30', '1', '0', 'Garuda'),
(184, 'Garuda31', '1', '0', 'Garuda'),
(185, 'Garuda32', '1', '0', 'Garuda'),
(186, 'Garuda33', '1', '0', 'Garuda'),
(187, 'Garuda34', '1', '0', 'Garuda'),
(188, 'Garuda35', '1', '0', 'Garuda'),
(189, 'Garuda36', '1', '0', 'Garuda'),
(190, 'Garuda37', '1', '0', 'Garuda'),
(191, 'Garuda38', '1', '0', 'Garuda'),
(192, 'Garuda39', '1', '0', 'Garuda'),
(193, 'Garuda40', '1', '0', 'Garuda'),
(194, 'Garuda41', '1', '0', 'Garuda'),
(195, 'Garuda42', '1', '0', 'Garuda'),
(196, 'Garuda43', '1', '0', 'Garuda'),
(197, 'Garuda44', '1', '0', 'Garuda'),
(198, 'Garuda45', '1', '0', 'Garuda'),
(199, 'Garuda46', '1', '0', 'Garuda'),
(200, 'Garuda47', '1', '0', 'Garuda'),
(201, 'Garuda48', '1', '0', 'Garuda'),
(202, 'Garuda49', '1', '0', 'Garuda'),
(203, 'Garuda50', '1', '0', 'Garuda'),
(204, 'Garuda51', '1', '0', 'Garuda'),
(205, 'Garuda52', '1', '0', 'Garuda'),
(206, 'Garuda53', '1', '0', 'Garuda'),
(207, 'Garuda54', '1', '0', 'Garuda'),
(208, 'Garuda55', '1', '0', 'Garuda'),
(209, 'Garuda56', '1', '0', 'Garuda'),
(210, 'Garuda57', '1', '0', 'Garuda'),
(211, 'Garuda58', '1', '0', 'Garuda'),
(212, 'Garuda59', '1', '0', 'Garuda'),
(213, 'Garuda60', '1', '0', 'Garuda'),
(214, 'Garuda61', '1', '0', 'Garuda'),
(215, 'Garuda62', '1', '0', 'Garuda'),
(216, 'Garuda63', '1', '0', 'Garuda'),
(217, 'Garuda64', '1', '0', 'Garuda'),
(218, 'Garuda65', '1', '0', 'Garuda'),
(219, 'Garuda66', '1', '0', 'Garuda'),
(220, 'Garuda67', '1', '0', 'Garuda'),
(221, 'Garuda68', '1', '0', 'Garuda'),
(222, 'Garuda69', '1', '0', 'Garuda'),
(223, 'Garuda70', '1', '0', 'Garuda'),
(224, 'Garuda71', '1', '0', 'Garuda'),
(225, 'Garuda72', '1', '0', 'Garuda'),
(226, 'Garuda73', '1', '0', 'Garuda'),
(227, 'Garuda74', '1', '0', 'Garuda'),
(228, 'Garuda75', '1', '0', 'Garuda'),
(229, 'Garuda76', '1', '0', 'Garuda'),
(230, 'Garuda77', '1', '0', 'Garuda'),
(231, 'Garuda78', '1', '0', 'Garuda'),
(232, 'Garuda79', '1', '0', 'Garuda'),
(233, 'Garuda80', '1', '0', 'Garuda'),
(234, 'Garuda81', '1', '0', 'Garuda'),
(235, 'Garuda82', '1', '0', 'Garuda'),
(236, 'Garuda83', '1', '0', 'Garuda'),
(237, 'Garuda84', '1', '0', 'Garuda'),
(238, 'Garuda85', '1', '0', 'Garuda'),
(239, 'Garuda86', '1', '0', 'Garuda'),
(240, 'Garuda87', '1', '0', 'Garuda'),
(241, 'Garuda88', '1', '0', 'Garuda'),
(242, 'Garuda89', '1', '0', 'Garuda'),
(243, 'Garuda90', '1', '0', 'Garuda'),
(244, 'Garuda91', '1', '0', 'Garuda'),
(245, 'Garuda92', '1', '0', 'Garuda'),
(246, 'Garuda93', '1', '0', 'Garuda'),
(247, 'Garuda94', '1', '0', 'Garuda'),
(248, 'Garuda95', '1', '0', 'Garuda'),
(249, 'Garuda96', '1', '0', 'Garuda'),
(250, 'Garuda97', '1', '0', 'Garuda'),
(251, 'Garuda98', '1', '0', 'Garuda'),
(252, 'Garuda99', '1', '0', 'Garuda'),
(253, 'Garuda100', '1', '0', 'Garuda');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
