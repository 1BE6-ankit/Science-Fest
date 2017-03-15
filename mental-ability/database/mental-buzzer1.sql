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
-- Database: `mental-buzzer1`
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
(1, 'A) 88 and 55 (deduct 5,7,9,11..)', 'round1/1_que.png'),
(2, 'ADHESIVE', 'round1/2_que.jpg'),
(3, '64 (add 1,3,5,7..)', 'round1/3_que.jpg'),
(4, 'Arteriole, Arthopod, Articular, Artillery', 'round1/4_que.jpg'),
(5, '4 Stages', 'round1/5_ans.png'),
(6, '6 :(19+11)/5=6;(13+5)/3 = 6', 'round1/6_que.jpg'),
(7, 'B', 'round1/7_que.png'),
(8, 'C : ( A is same as E , B is same as D  )', 'round1/8_que.png'),
(9, 'E  -the black dot is moving one corner clockwise at each stage and the white dot is moving one corner anti-clockwise at each stage.', 'round1/9_que.png'),
(10, 'E: the last five symbols are the mirror image of the first five symbols', 'round1/10_que.png'),
(11, 'B: The fruits are apricot (rip coat), avocado (ova coda), blueberry (burly beer), pineapple (pipe panel), watermelon (alert women) and grapefruit (part figure)', 'round1/11_que.jpg'),
(12, '', NULL),
(13, '', NULL),
(14, '', NULL),
(15, '', NULL),
(16, '', NULL),
(17, '', NULL);

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
(1, 'Which numbers should replace the question marks', 'round1/1_que.png', NULL),
(2, 'Which word has the meaning closest to GLUTINOUS', 'round1/2_que.jpg', NULL),
(3, 'Complete the sequence', 'round1/3_que.jpg', NULL),
(4, 'Put the following words into alphabetical order:', 'round1/4_que.jpg', NULL),
(5, 'The white dot moves two places anti-clockwise at each stage and the black dot moves one place clockwise at each stage. After how many stages will they be together in the same corner', 'round1/5_que.png', NULL),
(6, 'What number should replace the question mark', 'round1/6_que.jpg', NULL),
(7, 'Which is the missing square', 'round1/7_que.png', NULL),
(8, 'Which is the odd one out', 'round1/8_que.png', NULL),
(9, 'Which is the odd one out', 'round1/9_que.png', NULL),
(10, 'What comes next in the given sequence', 'round1/10_que.png', NULL),
(11, 'Which of the following is not an anagram of a fruit', 'round1/11_que.jpg', NULL);

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
  MODIFY `question_no` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_no` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
