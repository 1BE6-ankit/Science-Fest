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
-- Database: `science-final`
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
(1, 'Glucose'),
(2, '4'),
(3, 'Haemoglobin'),
(4, 'Carboxylic acid'),
(5, 'LIGO'),
(6, 'Transistor'),
(7, 'Iodine'),
(8, 'Fluoroantimonic acid'),
(9, 'The liquid and the glass beaker have the same refractive index, so light passes unbent and it seems like it has travelled through only one medium'),
(10, 'Melanin'),
(11, 'sodium acetate (hot ice)'),
(12, 'water-plastoquinone oxidoreductase'),
(13, 'mercury thiocyante(pharoh''s serpent)'),
(14, 'Rutherford''s alfa scatter experiment'),
(15, 'Cholestrol'),
(16, 'Cesium'),
(17, 'Disruptive Selection'),
(18, 'Axon'),
(19, 'Smallpox Virus'),
(20, 'Fungus/ Mycota'),
(21, 'Microvilli (Villi or villus not accepted)'),
(22, '');

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
(1, 'What is the name of the molecule shown in the picture', 'round3/1_bio_gen_glucose.jpg'),
(2, 'In how many wasy can these resistors be connected', 'round3/1_phy_gen.png'),
(3, 'What is the name of the molecule shown in the picture', 'round3/2_bio_gen_haemoglobin.jpg'),
(4, 'What functional group is shown in the red box in picture', 'round3/2_chem_gen.jpg'),
(5, 'The building shown is a part of which recent ground breaking research project', 'round3/2_phy_gen.png'),
(6, 'What component is shown in the picutre', 'round3/3_phy_gen.jpg'),
(7, 'What gas is the name of the gas in the picture', 'round3/3_chem_gen.gif'),
(8, 'What is the name of the acid whose structure is shown in the picture', 'round3/1_chem_gen.jpg'),
(9, 'Why does the smaller glass beaker seem to disapper', 'round3/vid_7_phy3.m4v'),
(10, 'What pigment is responsible for the given phenotypic character of the eye', 'round3/6_bio3.jpg'),
(11, 'What is the white substance that is formed in the liquid', 'round3/vid_6_chem3.m4v'),
(12, 'What is the actual name of the photosystem-2 (PS-II) involved in the light dependent reactions of photosynthesis', 'round3/7_bio3.jpg'),
(13, 'What is the name of the white powder that is ignited', 'round3/vid_7_chem3.m4v'),
(14, 'What experiment is demostrated in the video', 'round3/vid_8_phy3.m4v'),
(15, 'Deposit of what causes the white ring shown in the image (Please note that the condition is Arcus senilis)', 'round3/8_bio3.jpg'),
(16, 'What is the element in the vile that reacts so violently', 'round3/vid_8_chem3.m4v'),
(17, 'What form of natural selection is shown in the image', 'round3/tie/1_tie.jpg'),
(18, 'What part of a specialized human cell is represented', 'round3/tie/2_tie.jpg'),
(19, 'What is responsible for the disease shown in the picture', 'round3/tie/3_tie.jpg'),
(20, 'According to modern taxonomy system, what kingdom of living beings is responsible for the infection shown in the image', 'round3/tie/4_tie.jpg'),
(21, 'The given image is a representation of a group of cells specialized in absorption of materials from an exterior environment. What is such a structure called', 'round3/tie/5_tie.jpg');

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
  MODIFY `question_no` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_no` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
