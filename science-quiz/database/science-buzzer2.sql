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
-- Database: `science-buzzer2`
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
(1, 'Arthritis'),
(2, 'Fracture'),
(3, 'Silicon'),
(4, 'Columnar Basalt'),
(5, 'Gyration'),
(6, 'Gluon'),
(7, 'DNA polymerase clamp'),
(8, 'The evaporated wax due to the candle burning previously provides a way for the flame to burn through it and reach the fuse'),
(9, 'Right'),
(10, 'Ecell=-0.0591*log(A/B)'),
(11, '0A'),
(12, 'Teflon'),
(13, 'RBC (Red Blood Cells)'),
(14, 'Cubli');

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
(1, 'Given image is an X-Ray of a very common disease associated with ageing. Which disease is this', 'round2/3_bio2.jpg'),
(2, 'Small blood vessels in the bone and surrounding muscle tissues often rupture during a condition of the highlighted bone, causing hematoma. Which condition is this', 'round2/4_bio2.jpg'),
(3, 'Which element is the wafer made up of', 'round2/vid_5_chem2.m4v'),
(4, 'This image is a rock formation in Iceland. These unique formations are a result of lava flows cracking as they cool, in a perpendicular direction to the original flow. What are they called', 'round2/4_chem2.jpg'),
(5, 'What is the phenomenon demostrated by the device in the video', 'round2/vid_5_phy2.m4v'),
(6, 'What elementary particle is circled in red in the picture', 'round2/4_phy2.png'),
(7, 'The image shows a protein involved in eukaryotic dna replication that binds DNA polymerase and prevents this enzyme from dissociating from the template DNA strand. What is the protein', 'round2/5_bio2.jpg'),
(8, 'How does the candle relight, when the flame is not put over the fuse, but besides it', 'round2/vid_6_phy2.m4v'),
(9, 'Where is the north pole of the solenoid if the arrows indicate the direction of flow of current', 'round2/1_tie.bmp'),
(10, 'If the gradient/slope of the line is -0.0591, what might the relation between Ecell and log(A/B)', 'round2/2_tie.png'),
(11, 'What is the ammeter reading in the circuit', 'round2/3_tie.bmp'),
(12, 'What is the name of the polymer shown in the figure', 'round2/4_tie.gif'),
(13, 'The given image is a false colour image of a certain cell in humans. Identify this cell', 'round2/5_tie.jpg'),
(14, 'What is the device shown', 'round2/vid_6_tie.m4v');

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
