-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 01, 2012 at 03:59 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `evoting`
--

-- --------------------------------------------------------

--
-- Table structure for table `contestant`
--

CREATE TABLE IF NOT EXISTS `contestant` (
  `cont_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `post` int(11) NOT NULL,
  `nickname` varchar(25) NOT NULL,
  `photo` varchar(30) NOT NULL,
  PRIMARY KEY (`cont_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `contestant`
--

INSERT INTO `contestant` (`cont_id`, `name`, `post`, `nickname`, `photo`) VALUES
(1, 'Yusuf Ishola Tajudeen', 1, 'Tee Cee Link', '1340959994'),
(3, 'Excellent', 1, 'Oga Bello', '1340960262'),
(4, 'Isiaq Adam', 2, 'Adamson', '1340960375'),
(5, 'Olatunji Yusuf', 2, 'YS', '1340960413'),
(6, 'Olwafemi Fadesewa', 3, 'Sewa', '1340969900'),
(8, 'Abdulazeez Abdulmajeed', 3, 'Olofa', '1341032134'),
(9, 'Amuzat Abdulakeem', 4, 'HayKay 99', '1341033367'),
(10, 'Abdulsalam Wasiu', 1, 'Waslamk1', '1341033439'),
(11, 'OMOTOLA SOLAPE', 3, 'SHOLAY', '1341077530'),
(12, 'Meddy Yanky', 4, 'meddy', '1341113327');

-- --------------------------------------------------------

--
-- Table structure for table `log_details`
--

CREATE TABLE IF NOT EXISTS `log_details` (
  `userid` int(3) NOT NULL,
  `date` varchar(30) NOT NULL,
  `log` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_details`
--

INSERT INTO `log_details` (`userid`, `date`, `log`) VALUES
(9, '30/06/12 04:27:36', 0),
(6, '30/06/12 04:28:29', 1),
(6, '30/06/12 04:50:40', 0),
(7, '30/06/12 04:51:02', 1),
(7, '30/06/12 05:18:12', 0),
(13, '30/06/12 05:24:32', 1),
(13, '30/06/12 05:26:21', 0),
(13, '30/06/12 05:26:31', 1),
(13, '30/06/12 05:27:20', 0),
(1, '30/06/12 05:27:25', 1),
(1, '30/06/12 06:18:42', 0),
(3, '30/06/12 06:19:05', 1),
(3, '30/06/12 06:19:57', 0),
(4, '30/06/12 06:20:03', 1),
(14, '30/06/12 05:30:47', 1),
(0, '30/06/12 08:00:21', 0),
(15, '30/06/12 08:03:26', 1),
(15, '30/06/12 08:04:43', 0),
(16, '01/07/12 03:27:21', 1),
(16, '01/07/12 03:31:35', 0);

-- --------------------------------------------------------

--
-- Table structure for table `password`
--

CREATE TABLE IF NOT EXISTS `password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `password`
--

INSERT INTO `password` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postname` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `postname`) VALUES
(1, 'President'),
(2, 'General Secretary'),
(3, 'Treasurer'),
(4, 'Financial Secretary'),
(5, 'Welfare Director');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matric_no` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `matric_no`, `password`, `status`) VALUES
(1, '10/52ha109', 'ola', 1),
(2, '10/52ha110', 'welcome', 0),
(3, '09/52ha001', 'olajide', 1),
(4, '09/52ha002', 'kasali', 1),
(5, '09/52ha003', 'jacob', 0),
(6, '09/52hj001', 'mathew', 0),
(7, '09/52hp004', 'oladele', 0),
(8, '09/52hn010', 'Rufai', 0),
(9, '10/52ha115', 'Raheem', 0),
(10, '09/52ha102', 'Udeaja', 0),
(11, '09/52hn009', 'adewale', 0),
(12, 'nd/07/com/088', 'waslam', 0),
(13, 'HND/08/STA/223', '1234', 0),
(14, '08/52HA048', 'HARUN', 1),
(15, '07/52ha154', 'abiodun', 1),
(16, '1234HA', '1234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE IF NOT EXISTS `voters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post` int(4) NOT NULL,
  `userid` int(4) NOT NULL,
  `cont_id` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `post`, `userid`, `cont_id`) VALUES
(47, 4, 3, 9),
(46, 3, 3, 8),
(45, 2, 3, 5),
(44, 1, 3, 3),
(43, 4, 1, 9),
(42, 3, 1, 6),
(41, 2, 1, 4),
(40, 1, 1, 1),
(39, 4, 13, 9),
(38, 3, 13, 6),
(37, 2, 13, 4),
(65, 2, 16, 5),
(64, 1, 16, 1),
(63, 4, 15, 9),
(62, 3, 15, 8),
(61, 2, 15, 4),
(60, 1, 15, 1),
(59, 4, 14, 0),
(58, 3, 14, 8),
(57, 2, 14, 5),
(56, 1, 14, 1),
(55, 4, 4, 0),
(54, 3, 4, 0),
(53, 2, 4, 0),
(52, 1, 4, 0),
(51, 4, 4, 0),
(50, 3, 4, 6),
(49, 2, 4, 5),
(48, 1, 4, 10),
(36, 1, 13, 1),
(66, 3, 16, 6),
(67, 4, 16, 9);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
