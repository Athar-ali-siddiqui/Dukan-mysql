-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2021 at 10:02 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dukan`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` tinyint(4) NOT NULL,
  `cat_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(1, 'medicine'),
(2, 'cloth'),
(3, 'frozen');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `comp_id` tinyint(4) NOT NULL,
  `comp_name` varchar(20) DEFAULT NULL,
  `scale` varchar(20) DEFAULT NULL,
  `license_no` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`comp_id`, `comp_name`, `scale`, `license_no`) VALUES
(1, 'knsLRG', 'large', 'E1836B'),
(2, 'dawnSML', 'small', 'E1473B'),
(3, 'mon salwaINT', 'international', 'E0997Y'),
(4, 'levisINT', 'international', 'E0632Y'),
(5, 'oxfordINT', 'international', 'E4364Y'),
(6, 'shazaib hasanSML', 'small', 'E2347B'),
(7, 'zainabSML', 'small', ''),
(8, 'ofiveLRG', 'large', 'E1347B'),
(9, 'sanofiSML', 'small', 'E9847B'),
(10, 'abbotINT', 'international', 'E2744Y'),
(11, 'gskLRG', 'large', 'E2347B');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_id` tinyint(4) NOT NULL,
  `cust_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `cust_name`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E'),
(6, 'F'),
(7, 'G'),
(8, 'H'),
(9, 'I'),
(10, 'J'),
(11, 'K'),
(12, 'L'),
(13, 'M'),
(14, 'N'),
(15, 'O'),
(16, 'P'),
(17, 'Q'),
(18, 'R'),
(19, 'S'),
(20, 'T'),
(21, 'U'),
(22, 'V'),
(23, 'W'),
(24, 'X'),
(25, 'Y'),
(26, 'Z');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` tinyint(4) NOT NULL,
  `P_name` varchar(20) DEFAULT NULL,
  `wholesale_price` smallint(6) DEFAULT NULL,
  `retail_price` smallint(6) DEFAULT NULL,
  `quantity` smallint(6) DEFAULT NULL,
  `cat_id` tinyint(4) DEFAULT NULL,
  `comp_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `P_name`, `wholesale_price`, `retail_price`, `quantity`, `cat_id`, `comp_id`) VALUES
(1, 'Akns', 10, 15, 237, 3, 1),
(2, 'Bkns', 15, 25, 147, 3, 1),
(3, 'Adawn', 8, 15, 207, 3, 2),
(4, 'Bdawn', 13, 24, 197, 3, 2),
(5, 'Bmonsal', 18, 35, 547, 3, 3),
(6, 'Cmonsal', 30, 50, 47, 3, 3),
(7, 'Agsk', 5, 10, 1000, 1, 11),
(8, 'Bgsk', 3, 7, 1000, 1, 11),
(9, 'Cgsk', 10, 20, 1000, 1, 11),
(10, 'Bsanofi', 5, 9, 1000, 1, 9),
(11, 'Dsanofi', 1, 7, 1000, 1, 9),
(12, 'Esanofi', 15, 20, 1000, 1, 9),
(13, 'Aabbot', 7, 15, 1000, 1, 10),
(14, 'Cabbot', 15, 30, 1000, 1, 10),
(15, 'Eabbot', 14, 21, 1000, 1, 10),
(16, 'Alevis', 20, 40, 1000, 2, 4),
(17, 'Clevis', 25, 45, 1000, 2, 4),
(18, 'Elevis', 5, 10, 1000, 2, 4),
(19, 'Foxford', 3, 8, 1000, 2, 5),
(20, 'Goxford', 50, 150, 1000, 2, 5),
(21, 'Fsh', 2, 6, 1000, 2, 6),
(22, 'Csh', 20, 35, 1000, 2, 6),
(23, 'Ash', 15, 30, 1000, 2, 6),
(24, 'Azainab', 10, 20, 1000, 2, 7),
(25, 'Czainab', 15, 30, 1000, 2, 7),
(26, 'Fzainab', 1, 4, 1000, 2, 7),
(27, 'Gzainab', 45, 100, 1000, 2, 7),
(28, 'Qofive', 23, 30, 1000, 2, 8),
(29, 'Fofive', 25, 35, 1000, 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `purchased`
--

CREATE TABLE `purchased` (
  `cust_id` tinyint(4) NOT NULL,
  `p_id` tinyint(4) NOT NULL,
  `quantity` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchased`
--

INSERT INTO `purchased` (`cust_id`, `p_id`, `quantity`) VALUES
(1, 1, 4),
(1, 5, 4),
(1, 6, 2),
(1, 7, 6),
(1, 8, 4),
(1, 9, 2),
(2, 3, 1),
(2, 4, 1),
(2, 5, 2),
(2, 11, 1),
(3, 15, 1),
(3, 16, 4),
(4, 17, 2),
(4, 18, 3),
(4, 19, 2),
(4, 21, 4),
(5, 22, 2),
(6, 19, 1),
(6, 21, 4),
(6, 23, 5),
(6, 24, 2),
(7, 7, 2),
(7, 12, 2),
(7, 13, 4),
(7, 21, 3),
(8, 2, 5),
(8, 4, 4),
(8, 6, 3),
(8, 17, 2),
(8, 18, 1),
(9, 1, 3),
(9, 6, 2),
(9, 11, 4),
(9, 12, 1),
(9, 18, 2),
(10, 4, 2),
(10, 6, 2),
(10, 8, 4),
(10, 9, 2),
(10, 12, 1),
(11, 1, 1),
(11, 2, 2),
(11, 3, 2),
(11, 6, 1),
(11, 7, 2),
(11, 15, 2),
(11, 19, 3),
(12, 3, 2),
(12, 11, 3),
(12, 13, 4),
(12, 17, 3),
(12, 19, 5),
(12, 20, 5),
(12, 24, 4),
(12, 29, 5),
(13, 6, 5),
(13, 7, 2),
(13, 8, 4),
(13, 9, 2),
(13, 10, 2),
(13, 11, 3),
(13, 12, 1),
(13, 13, 1),
(13, 14, 2),
(13, 15, 3),
(13, 21, 2),
(13, 27, 5),
(14, 1, 2),
(14, 2, 2),
(14, 3, 1),
(14, 4, 1),
(14, 5, 1),
(14, 6, 2),
(14, 7, 2),
(14, 16, 3),
(14, 17, 2),
(14, 18, 3),
(14, 21, 1),
(14, 22, 2),
(15, 5, 3),
(15, 8, 3),
(15, 24, 3),
(15, 25, 6),
(15, 26, 2),
(15, 27, 2),
(15, 28, 4),
(15, 29, 2),
(16, 1, 3),
(16, 27, 5),
(16, 28, 2),
(16, 29, 2),
(17, 2, 5),
(17, 3, 4),
(17, 4, 3),
(17, 5, 5),
(17, 7, 2),
(17, 10, 4),
(18, 6, 2),
(18, 8, 7),
(18, 9, 5),
(18, 11, 4),
(18, 12, 3),
(18, 13, 5),
(18, 21, 2),
(19, 14, 4),
(19, 15, 2),
(19, 16, 3),
(19, 17, 6),
(19, 18, 6),
(19, 22, 1),
(19, 23, 3),
(19, 24, 2),
(19, 26, 6),
(20, 3, 2),
(20, 5, 3),
(20, 16, 1),
(20, 18, 1),
(20, 19, 1),
(20, 21, 1),
(21, 9, 4),
(21, 10, 6),
(21, 11, 3),
(21, 12, 3),
(21, 13, 2),
(21, 14, 1),
(21, 15, 6),
(22, 1, 1),
(22, 2, 1),
(22, 3, 2),
(22, 4, 3),
(22, 5, 2),
(22, 6, 3),
(22, 7, 3),
(22, 13, 2),
(23, 8, 1),
(23, 26, 2),
(23, 27, 5),
(23, 28, 6),
(23, 29, 3),
(24, 1, 2),
(24, 21, 3),
(24, 22, 2),
(24, 23, 3),
(24, 24, 4),
(24, 25, 3),
(25, 4, 2),
(25, 6, 2),
(25, 8, 1),
(25, 9, 5),
(25, 11, 1),
(25, 12, 5),
(25, 15, 2),
(25, 19, 4),
(26, 1, 1),
(26, 2, 2),
(26, 3, 1),
(26, 6, 1),
(26, 7, 3),
(26, 10, 1),
(26, 11, 1),
(26, 13, 1),
(26, 17, 4),
(26, 19, 2),
(26, 20, 3),
(26, 24, 1),
(26, 27, 10),
(26, 29, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `purchased`
--
ALTER TABLE `purchased`
  ADD PRIMARY KEY (`cust_id`,`p_id`),
  ADD KEY `p_id` (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `comp_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cust_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`);

--
-- Constraints for table `purchased`
--
ALTER TABLE `purchased`
  ADD CONSTRAINT `purchased_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`),
  ADD CONSTRAINT `purchased_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `products` (`p_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
