-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2024 at 04:59 AM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `public art and monuments`
--

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `Location_Id` int(11) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Ward` int(11) DEFAULT NULL,
  `Ward_Name` varchar(100) DEFAULT NULL,
  `Postal_Code` varchar(10) DEFAULT NULL,
  `Artist_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`Location_Id`, `Address`, `Ward`, `Ward_Name`, `Postal_Code`, `Artist_Id`) VALUES
(1, '9 KING\'S COLLEGE CRCL', 11, 'University-Rosedale', 'M7A 1A5', 1),
(2, '11 COLBORNE LODGE DR', 4, 'Parkdale-High Park', 'M6R 2Z3', 2),
(3, '1 YUKON PL', 10, 'Spadina-Fort York', 'M6K 3C3', 3),
(4, '60 QUEEN ST W', 13, 'Toronto Centre', 'M5H 2M3', 4),
(5, '19 HORTICULTURAL AVE', 13, 'Toronto Centre', 'M5A 2P2', 5),
(6, '10 NIAGARA ST', 10, 'Spadina-Fort York', 'M5V 1C2', 6),
(7, '360 UNIVERSITY AVE.', 10, 'Spadina-Fort York', 'M5G 1S4', 7),
(8, '220 WEST RD', 4, 'Parkdale-High Park', 'M6S 2T9', 8),
(9, '59 LEE AVE', 19, 'Beaches-East York', 'M4E 2P1', 9),
(10, '58 GLEN EVEREST RD', 20, 'Scarborough Southwest', 'M1N 1J3', 10),
(11, '522 UNIVERSITY AVE', 11, 'University-Rosedale', 'M5G 2A2', 11),
(12, '78 QUEEN\'S PARK', 11, 'University-Rosedale', 'M5S 2C5', 12),
(13, '50 QUEEN ST W', 13, 'Toronto Centre', 'M5H 2Y4', 13),
(14, '800 LAKESHORE AVE', 10, 'Spadina-Fort York', 'M5V 1A1', 14),
(15, '1 STRACHAN AVE', 10, 'Spadina-Fort York', 'M6K 3C3', 15),
(16, '150 ST CLAIR AVE W', 12, 'Toronto-St. Paul\'s', 'M4V 1P6', 16),
(17, '100 PRINCES\' BLVD', 10, 'Spadina-Fort York', 'M6K 3C3', 17),
(18, '480 AVENUE RD', 12, 'Toronto-St. Paul\'s', 'M4V 2J4', 18),
(19, '12 QUEEN\'S PARK CRES W', 11, 'University-Rosedale', 'M5S 1S8', 19),
(20, '50 PRINCE EDWARD ISLAND CRES', 10, 'Spadina-Fort York', 'M6K 3C3', 20),
(21, '250 UNIVERSITY AVE', 10, 'Spadina-Fort York', 'M5H 3E5', 21),
(22, '82 BOND ST', 13, 'Toronto Centre', 'M5B 1X2', 22),
(23, '276 ST CLAIR AVE E', 11, 'University-Rosedale', 'M4T 1P3', 23),
(24, '1751 LAKE SHORE BLVD W', 4, 'Parkdale-High Park', 'M6S 5A3', 24),
(25, '155 OAKMOUNT RD', 4, 'Parkdale-High Park', 'M6P 2M3', 25),
(26, '850 COXWELL AVE', 14, 'Toronto-Danforth', 'M4C 5R1', 26),
(27, '671 UNIVERSITY AVE', 11, 'University-Rosedale', 'M5G 0A3', 27),
(28, '375 COLBORNE LODGE DR', 4, 'Parkdale-High Park', 'M6R 2Z3', 28),
(29, '100 QUEEN ST W', 10, 'Spadina-Fort York', 'M5H 2N2', 29),
(30, '375 COLBORNE LODGE DR', 4, 'Parkdale-High Park', 'M6R 2Z3', 30),
(31, '84 ELIZABETH ST', 10, 'Spadina-Fort York', 'M5G 1P5', 31),
(32, '1955 LAKE SHORE BLVD W', 4, 'Parkdale-High Park', 'M6S 5A3', 32),
(33, '399 THE WEST MALL', 2, 'Etobicoke Centre', 'M9C 2Y2', 33),
(34, '100 QUEEN ST W', 10, 'Spadina-Fort York', 'M5H 2N2', 34),
(35, '110 WELLESLEY ST W', 11, 'University-Rosedale', 'M7A 1A2', 35),
(36, '250 FORT YORK BLVD', 10, 'Spadina-Fort York', 'M5V 3K9', 36),
(37, '195 PRINCES\' BLVD', 10, 'Spadina-Fort York', 'M6K 3C3', 37),
(38, '1751 LAKE SHORE BLVD W', 4, 'Parkdale-High Park', 'M6S 5A3', 38),
(39, '47 STATION RD', 3, 'Etobicoke-Lakeshore', 'M8V 2R1', 39);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`Location_Id`),
  ADD KEY `Artist_Id` (`Artist_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `Location_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`Artist_Id`) REFERENCES `artists` (`Artist_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
