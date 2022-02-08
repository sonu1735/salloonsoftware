-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2022 at 08:11 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salloon`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `display_name` varchar(200) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(90) NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `country` varchar(150) NOT NULL,
  `zip` int(11) NOT NULL,
  `address1` longtext NOT NULL,
  `address2` longtext NOT NULL,
  `gst_no` varchar(50) NOT NULL,
  `adhar_no` varchar(14) NOT NULL,
  `adhar_pic` varchar(300) NOT NULL,
  `account_holder_name` varchar(120) DEFAULT NULL,
  `account_no` varchar(25) DEFAULT NULL,
  `bank_name` varchar(80) DEFAULT NULL,
  `ifsc_code` varchar(40) DEFAULT NULL,
  `branch_name` varchar(100) DEFAULT NULL,
  `userType` enum('1','0') NOT NULL COMMENT '1=vendor,0=admin',
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modify_date` datetime NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `name`, `display_name`, `company_name`, `email`, `mobile`, `password`, `city`, `state`, `country`, `zip`, `address1`, `address2`, `gst_no`, `adhar_no`, `adhar_pic`, `account_holder_name`, `account_no`, `bank_name`, `ifsc_code`, `branch_name`, `userType`, `created_date`, `modify_date`, `status`) VALUES
(1, 'admin', 'admin', 'animationmedia.org', 'admin@gmail.com', '1111111111', 'sonu', '0', '0', '0', 0, 'lko', 'lko', '0', '0', '00', NULL, NULL, NULL, NULL, NULL, '0', '2022-02-08 13:16:11', '2021-04-09 11:41:54', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
