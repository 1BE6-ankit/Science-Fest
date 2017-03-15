-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 15, 2017 at 12:03 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maths-final`
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
(1, '100Pi', 'round3/1_que.png'),
(2, 'AQ=8', 'round3/2_que.png'),
(3, '5000', ''),
(4, ':', 'round3/4_ans.png'),
(5, '-5 and -1/3', 'round3/5_que.png'),
(6, '24', 'round3/6_que.png'),
(7, 'r = 3 - 2*sqrt(2)', 'round3/7_que.jpg'),
(8, '12 - 8*sqrt(2)', 'round3/8_que.jpg'),
(9, '', NULL),
(10, '', NULL),
(11, '', NULL),
(12, '', NULL),
(13, '', NULL),
(14, '', NULL),
(15, '', NULL),
(16, '', NULL),
(17, '', NULL),
(18, '', NULL),
(19, '', NULL),
(20, '', NULL);

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
(1, 'The two circles below are concentric (have same center). The length of the chord tangent to the smaller circle is equal to 20 mm. What is the area of the ring (shaded area) between the two circles', 'round3/1_que.png', NULL),
(2, 'An isosceles trapezoid BEAR is shown. What is the length of AQ', 'round3/2_que.png', NULL),
(3, 'The semicircle of area 1250pi sq.centimeters is inscribed inside a rectangle. The diameter of the semicircle coincides with the length of the rectangle. What is the area of the rectangle', '', NULL),
(4, '(See the image)', 'round3/4_que.png', NULL),
(5, '(See the image)', 'round3/5_que.png', NULL),
(6, '(See the image)', 'round3/6_que.png', NULL),
(7, 'A circle with a radius of 1 is inscribed within a 2-by-2 square. A smaller circle is inscribed in the corner such that it is tangent to two adjacent sides of the square and the larger circle. What is the radius of this smaller circle', 'round3/7_que.jpg', NULL),
(8, 'A circle is inscribed within a quarter-circle sector. It is tangent to the arc of the sector and the two perpendicular radii of the sector. What is the ratio of the area of the circle to the area of the sector', 'round3/8_que.jpg', NULL),
(9, '', NULL, NULL),
(10, '', NULL, NULL);

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
  MODIFY `question_no` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_no` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
