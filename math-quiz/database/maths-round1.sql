-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 15, 2017 at 12:02 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maths-round1`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `question_no` tinyint(4) NOT NULL,
  `option_1` char(200) NOT NULL,
  `media` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`question_no`, `option_1`, `media`) VALUES
(1, '_', 'round1/round1_ans.png'),
(2, '1 units', ''),
(3, '(1-i) or (-1+i)', ''),
(4, '0.00', ''),
(5, '|2x-3| or |3-2x|', 'round1/4_que.png'),
(6, '148 degrees', 'round1/5_que.png'),
(7, '30 toys', 'round1/6_que.png'),
(8, '210', ''),
(9, '2', 'round1/8_que.png');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_no` tinyint(4) NOT NULL,
  `question` varchar(500) NOT NULL,
  `media` varchar(255) DEFAULT NULL,
  `media2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_no`, `question`, `media`, `media2`) VALUES
(1, '(SEE the image)', 'round1/round1_que.png', NULL),
(2, 'Find the perpendicular distance between the point (3,1,-2) from the plane 2x+y-2z=8', '', NULL),
(3, 'Give any one square root of (-2i) [where i is the square root of (-1)]', '', NULL),
(4, 'If sinx+cosx= 1\nFind sin(2x)', '', NULL),
(5, 'What is the equation of the given curve', 'round1/4_que.png', NULL),
(6, 'ABC is a right triangle with the size of angle ACB equal to 74 degrees. The lengths of the sides AM, MQ and QP are all equal. Find the measure of angle QPB', 'round1/5_que.png', NULL),
(7, '(See the image)', 'round1/6_que.png', NULL),
(8, 'Out of 7 consonants and 4 vowels, how many words of 3 consonants and 2 vowels can be formed', '', NULL),
(9, 'What is the sum', 'round1/8_que.png', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`question_no`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `question_no` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_no` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
