-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 06, 2019 at 06:05 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Nissan_ramen`
--

-- --------------------------------------------------------

--
-- Table structure for table `ramenstats`
--

CREATE TABLE `ramenstats` (
  `ID` tinyint(11) NOT NULL,
  `sort` float NOT NULL,
  `rate` float NOT NULL,
  `prize` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ramenstats`
--

INSERT INTO `ramenstats` (`ID`, `sort`, `rate`, `prize`) VALUES
(1, 41, 4.5, 'none'),
(2, 32, 4.3, 'none'),
(3, 4, 4.9, 'Yakisoba Noodles Karashi, 2013 Top 3'),
(4, 34, 3.9, 'none'),
(1, 41, 4.5, 'none'),
(2, 32, 4.3, 'none'),
(3, 4, 4.9, 'Yakisoba Noodles Karashi, 2013 Top 3'),
(4, 34, 3.9, 'none');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
