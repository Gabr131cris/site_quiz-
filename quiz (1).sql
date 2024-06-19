-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 29, 2022 at 02:46 PM
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
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

DROP TABLE IF EXISTS `note`;
CREATE TABLE IF NOT EXISTS `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `score` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
CREATE TABLE IF NOT EXISTS `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question_number` int(11) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `coption` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_number`, `is_correct`, `coption`) VALUES
(5, 1, 0, '15'),
(6, 1, 0, '5'),
(7, 1, 1, '10'),
(8, 2, 1, '25'),
(9, 2, 0, '30'),
(10, 2, 0, '21'),
(11, 3, 1, '5'),
(12, 3, 0, '7'),
(13, 3, 0, '10'),
(15, 4, 0, '2200'),
(16, 4, 0, '2240'),
(17, 4, 0, '2400'),
(18, 4, 1, '2420'),
(19, 5, 0, '20'),
(20, 5, 1, '8'),
(21, 5, 0, '4'),
(22, 5, 0, '40'),
(31, 9, 0, 'FALSE'),
(32, 10, 1, '/*..... */'),
(33, 10, 0, '<comment>....</comment>');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `question_number` int(11) NOT NULL,
  `question_text` text NOT NULL,
  PRIMARY KEY (`question_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_number`, `question_text`) VALUES
(1, 'Suma primilor trei termeni ai progresiei aritmetice este egala cu 30 . Atunci a2 este ?'),
(2, 'Cate numere naturale de doua cifre distincte se pot forma cu elementele multimii\n{0,1,2,3,4,5} ? \n'),
(3, ' Se considera functia f : R -> R, f(x) =x + 5. Determinati numarul real m pentru care\nf(m)=f(1) + f(-1).'),
(4, 'Un obiect costa 2000 de lei. Determinati pretul obiectului dupa ce acesta se scumpeste de doua ori,\nsuccesiv, cu cate 10% .'),
(5, 'In reperul cartezian xOy se considera punctele A(1,1),B(-1,1),C(-1,1) si D(1,-1 ) . Calculati\nperimetrul patrulaterului ABCD . ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(80) NOT NULL,
  `name` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `password`) VALUES
(1, 'admin', 'Admin', 'admin'),
(2, 'elev', 'Elev', 'elev');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
