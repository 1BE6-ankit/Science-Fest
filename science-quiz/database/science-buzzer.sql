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
-- Database: `science-buzzer`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `question_no` tinyint(4) NOT NULL,
  `option_1` char(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`question_no`, `option_1`) VALUES
(1, '2nd degree burn'),
(2, 'Butane'),
(3, 'Bioluminiscence'),
(4, 'PAM sequence'),
(5, 'Ammonia'),
(6, 'Diamagnetic'),
(7, 'Capacitor'),
(8, 'Faraday''s cage'),
(9, 'Relay (magnetic relay)'),
(10, 'Black peppered moth/ (Biston Betularia)'),
(11, 'The particle at the open end of the tube has no displacement'),
(12, 'Surface Condensor(Condensor)'),
(13, 'Sundew(Drosera)'),
(14, '0A');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_no` tinyint(4) NOT NULL,
  `question` varchar(500) NOT NULL,
  `media` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_no`, `question`, `media`) VALUES
(1, 'What is the condition of the skin in the image', 'round1/1_bio1.jpg'),
(2, 'The foam is formed up of dishwashing fluid and a gas. Which gas is this', 'round1/vid_3_chem1.m4v'),
(3, 'What phenomenon is shown', 'round1/vid_1_chem1.m4v'),
(4, 'This sequence comes after the target DNA in CAS-9 gene editing. What is this sequence called', 'round1/2_bio1.jpg'),
(5, 'The given effect is caused by wet cardboard placed in a solution of four compunds- Salt, Water and Blue dye. What  is the fourth compound', 'round1/vid_2_chem1.m4v'),
(6, 'What are the substances showing, such magnetic properties called', 'round1/vid_2_phy1.m4v'),
(7, 'What is the name of the component shown in the picture', 'round1/1_phy1.jpg'),
(8, 'In terms of electrostatics, what is the bigger bubble acting as', 'round1/vid_3_phy1.m4v'),
(9, 'In the picture, the symbol shown is of', 'round1/1_tie.png'),
(10, 'What is the name of the insect shown in the picture', 'round1/2_tie.jpg'),
(11, 'What is wrong about the pressure-position graph of a wave shown in the figure', 'round1/3_tie.bmp'),
(12, 'What is the name of the device shown in the diagram', 'round1/4_tie.png'),
(13, 'What is the name of the plant shown in the picture', 'round1/5_tie.jpg'),
(14, 'What is the ammeter reading in the circuit', 'round1/6_tie.bmp');

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
  MODIFY `question_no` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_no` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
