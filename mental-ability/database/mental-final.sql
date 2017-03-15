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
-- Database: `mental-final`
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
(1, '', 'round3/1_ans.jpg'),
(2, '', 'round3/2_ans.png'),
(3, '', 'round3/3_ans.png'),
(4, '', 'round3/4_ans.png'),
(5, '', 'round3/jumble/1_3.jpg'),
(6, '', 'round3/jumble/2_3.jpg'),
(7, '', 'round3/jumble/3_3.jpg'),
(8, '', 'round3/jumble/4_3.jpg'),
(9, '', 'round3/zoom/z1_ans.jpg'),
(10, '', 'round3/zoom/z2_ans.jpg'),
(11, '', 'round3/zoom/z3_ans.jpg'),
(12, '', 'round3/zoom/z4_ans.jpg'),
(13, '', 'round3/zoom/z5_ans.jpg'),
(14, '', 'round3/zoom/z6_ans.jpg'),
(15, '', 'round3/zoom/z7_ans.jpg'),
(16, '', 'round3/zoom/z8_ans.jpg'),
(17, 'E', NULL),
(18, '91 (Add 11, 12, 13, 14, 15..)', NULL),
(19, 'Joe-36, Ram-24, Sara-16', NULL),
(20, '1 hour 35 minutes 0 seconds', NULL);

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
(1, 'What is the hidden meaning', 'round3/1_que.jpg', ''),
(2, 'What is the hidden meaning', 'round3/2_que.png', ''),
(3, 'What is the hidden meaning', 'round3/3_que.jpg', ''),
(4, 'What is the hidden meaning', 'round3/4_que.png', ''),
(5, 'Which items were exchanged', 'round3/jumble/1_1.jpg', 'round3/jumble/1_2.jpg'),
(6, 'Which items were exchanged', 'round3/jumble/2_1.jpg', 'round3/jumble/2_2.jpg'),
(7, 'Which items were exchanged', 'round3/jumble/3_1.jpg', 'round3/jumble/3_2.jpg'),
(8, 'Which items were exchanged', 'round3/jumble/4_1.jpg', 'round3/jumble/4_2.jpg'),
(9, 'Guess the Big Picture', 'round3/zoom/z1_que.jpg', NULL),
(10, 'Guess the Big Picture', 'round3/zoom/z2_que.jpg', NULL),
(11, 'Guess the Big Picture', 'round3/zoom/z3_que.jpg', NULL),
(12, 'Guess the Big Picture', 'round3/zoom/z4_que.jpg', NULL),
(13, 'Guess the Big Picture', 'round3/zoom/z5_que.jpg', NULL),
(14, 'Guess the Big Picture', 'round3/zoom/z6_que.jpg', NULL),
(15, 'Guess the Big Picture', 'round3/zoom/z7_que.jpg', NULL),
(16, 'Guess the Big Picture', 'round3/zoom/z8_que.jpg', NULL),
(17, 'What letter is three to the right of the letter immediately to the left of the letter which is four to the left of the letter G', '', NULL),
(18, 'What number should replace the question mark? - 10, 21, 33, 46, 60, 75, ?', '', NULL),
(19, 'Joe has one and half times as many as Ram, and Ram has one and a half times as many as Sara. Altogether they have 76. How many has each', '', NULL),
(20, 'If my taxi journey takes 23 minutes and my train journey takes 49 minutes longer, what is my total travelling time in hour, minutes and seconds', '', NULL);

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
  MODIFY `question_no` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
