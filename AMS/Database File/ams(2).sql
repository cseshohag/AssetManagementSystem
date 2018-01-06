-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2017 at 11:49 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams`
--

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `asset_id` int(10) NOT NULL,
  `asset_name` varchar(40) DEFAULT NULL,
  `u_id` int(20) DEFAULT NULL,
  `asset_catagory_id` int(10) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `model_number` varchar(40) DEFAULT NULL,
  `serial_number` varchar(40) DEFAULT NULL,
  `brand_name` varchar(40) DEFAULT NULL,
  `purchase_date` varchar(40) DEFAULT NULL,
  `pruchase_price` varchar(40) DEFAULT NULL,
  `warenty` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`asset_id`, `asset_name`, `u_id`, `asset_catagory_id`, `status`, `model_number`, `serial_number`, `brand_name`, `purchase_date`, `pruchase_price`, `warenty`) VALUES
(1, 'Laptop', 1, 1, 'OK', 'HP-Core-i7', '10000001', 'HP', '10-02-2015', '80000', '3y'),
(2, 'Projector', 1, 1, 'OK', 'HITACHI-220', '10000002', 'HITACHI', '10-02-2015', '75000', '3y');

-- --------------------------------------------------------

--
-- Table structure for table `asset_catagory`
--

CREATE TABLE `asset_catagory` (
  `asset_catagory_id` int(10) NOT NULL,
  `asset_catagory` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `asset_catagory`
--

INSERT INTO `asset_catagory` (`asset_catagory_id`, `asset_catagory`) VALUES
(1, 'Electronics'),
(2, 'Table'),
(3, 'Chair');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE `maintenance` (
  `maintenance_id` int(10) NOT NULL,
  `asset_id` int(10) DEFAULT NULL,
  `maintenance_date` varchar(40) DEFAULT NULL,
  `maintenance_description` varchar(100) DEFAULT NULL,
  `maintenance_by` varchar(40) DEFAULT NULL,
  `maintenance_cost` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`maintenance_id`, `asset_id`, `maintenance_date`, `maintenance_description`, `maintenance_by`, `maintenance_cost`) VALUES
(1, 1, '25-08-2017', 'Keystone Change', 'HP', 200);

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `u_id` int(20) NOT NULL,
  `U_Name` varchar(40) NOT NULL,
  `U_mail` varchar(40) NOT NULL,
  `u_pass` varchar(40) NOT NULL,
  `cell_no` varchar(14) NOT NULL,
  `Dept` varchar(40) NOT NULL,
  `Post` varchar(40) NOT NULL,
  `room` varchar(40) NOT NULL,
  `privilege` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`u_id`, `U_Name`, `U_mail`, `u_pass`, `cell_no`, `Dept`, `Post`, `room`, `privilege`) VALUES
(1, 'Md. Solaiman Shohag', 'shohag@gmail.com', '123', '+8801558660839', 'Computer Science and Engineering', 'System Engineer', '604', 3),
(2, 'Sadiya', 'sadiya@gmail.com', '123', '01558558525', 'CSE', 'IT Officer', '705', 1),
(4, 'Jinat', 'jinat@gmail.com', '123', '01558525252', 'EEE', 'Lecturer', '202', 1),
(3, 'Md. Alamin', 'alamin@gmail.com', 'asdfg1234', '01558008808', 'CSE', 'Support Engineer', '502', 1),
(6, 'Md. Jewel', 'jewel@gmail.com', '123456asdf', '01558554585', 'CSE', 'Support Engineer', '503', 1),
(5, 'Chanchal', 'chanchal@gmail.com', 'asdfg1234', '01558008809', 'CSE', 'Support Engineer', '505', 1),
(7, 'Himo', 'himo@gmail.com', 'asdfg1234', '01558554566', 'LAW', 'Ligal Adviser', '708', 1),
(9, 'Bobita', 'bobita@gmail.com', 'asdfg1234', '01558554599', 'CSE', 'Student', '110', 1),
(10, 'Jashim', 'jashim@mail.com', 'asdfg1234', '01558554577', 'CSE', 'Support Engineer', '110', 1),
(15, 'Rakib', 'rakib@gmail.com', 'rakib1234', '01822222222', 'TEXTILE', 'Professor', '301', 1),
(11, 'Khorshed', 'khorshed@gmail.com', 'khorshed123', '01822222233', 'ADMIN', 'Jr. Officer', '301', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`asset_id`),
  ADD UNIQUE KEY `asset_id` (`asset_id`);

--
-- Indexes for table `asset_catagory`
--
ALTER TABLE `asset_catagory`
  ADD PRIMARY KEY (`asset_catagory_id`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`maintenance_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asset`
--
ALTER TABLE `asset`
  MODIFY `asset_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `asset_catagory`
--
ALTER TABLE `asset_catagory`
  MODIFY `asset_catagory_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `maintenance_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
