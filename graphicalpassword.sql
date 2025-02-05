-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 23, 2023 at 11:20 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `graphicalpassword`
--
CREATE DATABASE IF NOT EXISTS `graphicalpassword` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `graphicalpassword`;

-- --------------------------------------------------------

--
-- Table structure for table `colorpattern`
--

CREATE TABLE IF NOT EXISTS `colorpattern` (
  `UserId` varchar(50) NOT NULL,
  `ColorSelection` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colorpattern`
--

INSERT INTO `colorpattern` (`UserId`, `ColorSelection`) VALUES
('amsasi', 'blue,green,red,'),
('prem', 'red,green,blue,');

-- --------------------------------------------------------

--
-- Table structure for table `imagepattern`
--

CREATE TABLE IF NOT EXISTS `imagepattern` (
  `UserId` varchar(50) NOT NULL,
  `ImageName` varchar(50) NOT NULL,
  `X_Axis` int(11) NOT NULL,
  `Y_Axis` int(11) NOT NULL,
  `ImageId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `imagepattern`
--

INSERT INTO `imagepattern` (`UserId`, `ImageName`, `X_Axis`, `Y_Axis`, `ImageId`) VALUES
('amsasi', 'ayyappan.gif', 186, 173, 1),
('amsasi', 'ayyappan.jpg', 232, 194, 2),
('amsasi', 'harini.jpg', 63, 82, 3),
('amsasi', 'Computer.jpg', 127, 130, 4),
('amsasi', 'Camera1.gif', 45, 52, 5),
('prem', 'ayyappan.gif', 185, 176, 1),
('prem', 'Camera1.gif', 48, 53, 2),
('prem', 'Computer.jpg', 126, 132, 3),
('prem', 'harini.jpg', 64, 82, 4),
('prem', 'ayyappan.jpg', 233, 190, 5);

-- --------------------------------------------------------

--
-- Table structure for table `uploadfiles`
--

CREATE TABLE IF NOT EXISTS `uploadfiles` (
  `FileId` int(11) NOT NULL,
  `FileName` varchar(50) NOT NULL,
  `FileKey` varchar(18) NOT NULL,
  `UploadedDate` date NOT NULL,
  `FileOwner` varchar(50) NOT NULL,
  PRIMARY KEY (`FileId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploadfiles`
--

INSERT INTO `uploadfiles` (`FileId`, `FileName`, `FileKey`, `UploadedDate`, `FileOwner`) VALUES
(1, 'C Theory_New.doc', '2a447bf8', '2023-02-23', 'amsasi'),
(2, 'PythonNotes.txt', 'd08deeed', '2023-02-23', 'amsasi'),
(3, 'CRM_DFD.docx', '617b9185', '2023-02-23', 'prem'),
(4, 'Tulips.jpg', '3b83d978', '2023-02-23', 'prem');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `MailId` varchar(65) NOT NULL,
  `UserId` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`FirstName`, `LastName`, `MailId`, `UserId`, `Password`) VALUES
('SasiKumar', 'MuthuPalani', 'amsasi78@gmail.com', 'amsasi', 'sasirani'),
('PremKumar', 'MuthuPalani', 'prem@gmail.com', 'prem', 'prem');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
