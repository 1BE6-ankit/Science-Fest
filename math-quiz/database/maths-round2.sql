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
-- Database: `maths-round2`
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
(0, '', 'round2/round2_ans.png'),
(2, 'x=5, y=2', 'round2/1_ans.png'),
(3, '144', 'round2/2_que.png'),
(4, '5000', ''),
(5, '47 days', ''),
(6, '9/100', 'round2/5_que.png'),
(7, '3+4i and 4+3i', ''),
(8, 'x = 3', 'round2/7_que.png'),
(9, '270 sq.cm', 'round2/8_que.png');

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
(1, '(See the image)', 'round2/round2_ans.png', NULL),
(2, 'In the given rectangle, length of diagonals=36in. Find x and y', 'round2/1_que.png', NULL),
(3, 'What is the area of the cyclic quadrilateral shown given', 'round2/2_que.png', NULL),
(4, 'The semicircle of area 1250 pi centimeters is inscribed inside a rectangle. The diameter of the semicircle coincides with the length of the rectangle. What is the area of the rectangle', '', NULL),
(5, 'In a lake, there is a patch of lily pads. Every day, the patch doubles in size. If it takes 48 days for the patch to cover the entire lake, how long would it take for the patch to cover half of the lake', '', NULL),
(6, 'Evaluate the expression in the image', 'round2/5_que.png', NULL),
(7, 'Find all complex numbers of the form z = a + bi , where a and b are real numbers such that z z'' = 25 and a + b = 7, where z'' is the complex conjugate of z.', '', NULL),
(8, 'Digdarshan can solve this, can you', 'round2/7_que.png', NULL),
(9, 'What is the area of the given shape', 'round2/8_que.png', NULL);

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
