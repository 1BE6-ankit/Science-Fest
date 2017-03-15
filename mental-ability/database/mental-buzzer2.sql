-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 15, 2017 at 12:04 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mental-buzzer2`
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
(1, '1 (Other all are arcs)', 'round2/1_que.png'),
(2, 'D : (The rest are the same figure rotated)', 'round2/2_que.png'),
(3, 'C) Gordon:64; Tony:48 - (when Gordon was 48, Tony was 32 - half the age Gordon is now)', 'round2/3_que.jpg'),
(4, 'C, D and B', 'round2/4_ans.png'),
(5, 'B) 698:62 [(6*9)+8=62]', 'round2/5_que.jpg'),
(6, 'D) 12546/17 = 738', 'round2/6_que.jpg'),
(7, '15', 'round2/7_que.jpg'),
(8, 'B) F', 'round2/8_que.jpg'),
(9, 'A) 224', 'round2/9_que.png'),
(10, 'C', 'round2/10_que.jpg'),
(11, 'A)47 minutes -  12 noon less 47 minutes = 11.13.  1 hour 39 minutes less than 11.13 = 9.34.  8 am plus 94 minutes (47*2) = 9.34', 'round2/11_que.jpg'),
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
(1, 'How many circles appear below', 'round2/1_que.png', NULL),
(2, 'Which is the odd one out', 'round2/2_que.png', NULL),
(3, 'Gordon is twice as old as Tony was when Gordon was as oldas Tony is now. The combined age of Gordon and Tony is 112 years. How old are Gordon and Tony now', 'round2/3_que.jpg', NULL),
(4, 'Which three of the four pieces below can be fitted together to form a perfect square', 'round2/4_que.png', NULL),
(5, '329 : 15, \n746 : 34                                Which numbers below have the same relationship to each other as the two sets of numbers above', 'round2/5_que.jpg', NULL),
(6, '32^2 + 272^2 = ?         Complete the equation by correctly identifying the missing part of the calculation from the list of options below', 'round2/6_que.jpg', NULL),
(7, '(See the image)', 'round2/7_que.jpg', NULL),
(8, '(A    B    C   D    E    F    G    H) :\n\nWhat letter comes three to the right of the letter that comes immediately to the left of the letter that comes three to the right of the letter immediately to the left of the letter B', 'round2/8_que.jpg', NULL),
(9, '(See the image)', 'round2/9_que.png', NULL),
(10, 'Use every letter of the phrase PROPOUND RARE MAGIC only once to spell out the names of three elements', 'round2/10_que.jpg', NULL),
(11, 'How many minutes is it before 12 noon if 1 hour 39 minutes ago it was as many minutes past 8 am', 'round2/11_que.jpg', NULL);

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
  MODIFY `question_no` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
