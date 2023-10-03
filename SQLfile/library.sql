-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2023 at 09:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'imtiaz', 'admin@gmail.com', 'admin', 'f4e8142413392e18d6a27f95baf6d965', '2023-10-03 19:32:48'),
(2, 'imtiaz', 'imtiaz123@gmail.com', 'imtiaz', '7201dbe0965bb4cbbd40ea8a69a65968', '0000-00-00 00:00:00'),
(5, 'imtia', 'jkr@gmail.com', 'imtiaz', '827ccb0eea8a706c4c34a16891f84e7b', '2023-10-03 19:31:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(17, 'bimal jalal', '2023-08-26 07:09:00', '2023-08-29 16:42:36'),
(18, 'Ruskin Bond.', '2023-08-26 07:16:26', '2023-08-29 16:42:44'),
(20, '	Vinit Karnik', '2023-08-26 07:21:03', NULL),
(21, 'Preeti Shenoy', '2023-08-26 07:21:20', NULL),
(23, 'Ex-IPS Prakash Singh', '2023-08-26 07:21:54', NULL),
(24, 'Rajnath Singh', '2023-08-26 07:22:12', NULL),
(25, 'Rasheed Kidwai ', '2023-08-26 07:22:32', NULL),
(26, 'Prof. Alok Chakrawal', '2023-08-26 07:22:46', NULL),
(27, 'willlam shakespeare', '2023-08-26 07:37:03', NULL),
(28, 'stephen hawking', '2023-08-26 07:51:34', NULL),
(29, 'ribecca demarino', '2023-08-26 07:53:53', NULL),
(30, 'guido van rossum', '2023-08-26 07:59:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` varchar(25) DEFAULT NULL,
  `BookPrice` decimal(10,2) DEFAULT NULL,
  `bookImage` varchar(250) NOT NULL,
  `isIssued` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `bookImage`, `isIssued`, `RegDate`, `UpdationDate`) VALUES
(8, 'Rich Dad Poor Dad: What the Rich Teach Their Kids About Money That the Poor and Middle Class Do Not', 8, 12, 'B07C7M8SX9', '120.00', '52411b2bd2a6b2e0df3eb10943a5b640.jpg', NULL, '2022-01-22 07:20:39', NULL),
(15, 'The india story', 8, 17, '332', '23.00', '22e6df1c043a5b2bb882fbd9b612049ajpeg', 1, '2023-08-26 07:41:30', '2023-08-26 08:04:10'),
(16, 'Listen to Your Heart: The London Adventure', 14, 18, '245', '10.00', 'ec77f7cbd5bc8e3c6702aa343fd320a9jpeg', 1, '2023-08-26 07:43:40', '2023-08-26 08:05:32'),
(17, 'Business of Sports: The Winning Formula for Success', 7, 20, '146', '14.00', 'f28db11824f8f24844be0e84978c7609jpeg', 1, '2023-08-26 07:45:12', '2023-08-26 08:05:59'),
(18, 'A Place Called Home', 8, 21, '678', '13.00', '2d94e73b9eab62bdca332c1189be8ae8jpeg', 0, '2023-08-26 07:46:27', '2023-08-26 08:09:53'),
(19, 'The Struggle for Police Reforms in India', 13, 23, '232', '12.00', '83d6694b09982ba1fa63742fbfe79eafjpeg', NULL, '2023-08-26 07:47:48', NULL),
(20, 'INDO-PAK WAR 1971- Reminiscences of Air Warriors', 13, 24, '456', '14.00', '6a35ebaa4f968b3e505514e06eea999djpeg', NULL, '2023-08-26 07:49:07', NULL),
(21, 'INDO-PAK WAR 1971- Reminiscences of Air Warrior', 8, 25, '253', '12.00', 'ea3499bc05645a5be5534427d2bcf36ajpeg', NULL, '2023-08-26 07:50:18', NULL),
(22, ' A Brief History of Time', 6, 28, '198', '15.00', '14c512b9ef233a0b18b4762f598da77bjpeg', 0, '2023-08-26 07:52:23', '2023-08-26 08:09:36'),
(23, 'To Capture Her Heart', 4, 29, '365', '15.00', '2875628292bdfa47c219a954162fa8afjpeg', 0, '2023-08-26 07:55:05', '2023-08-26 08:09:46'),
(24, 'python', 9, 30, '378', '14.00', '42cb4117329244017e6161b374eb3025jpeg', 1, '2023-08-26 08:00:25', '2023-08-26 08:02:31');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Romantic', 1, '2022-01-22 07:23:03', '2022-01-22 07:23:03'),
(5, 'Technology', 1, '2022-01-22 07:23:03', '2022-01-22 07:23:03'),
(6, 'Science', 1, '2022-01-22 07:23:03', '2022-01-22 16:24:37'),
(7, 'Management', 1, '2022-01-22 07:23:03', '2022-01-22 16:24:35'),
(8, 'General', 1, '2022-01-22 07:23:03', '2022-01-22 16:24:40'),
(9, 'Programming', 1, '2022-01-22 07:23:03', '2022-01-22 16:24:42'),
(13, 'other', 1, '2023-08-26 07:42:22', NULL),
(14, 'Adventure', 1, '2023-08-26 07:42:46', NULL),
(15, 'sports', 1, '2023-08-26 07:44:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(7, 5, 'SID011', '2022-01-22 05:45:57', NULL, NULL, NULL),
(8, 1, 'SID002', '2022-01-22 05:59:17', '2022-01-22 06:18:08', 1, 0),
(9, 10, 'SID009', '2022-01-22 07:38:09', '2022-01-22 07:38:54', 1, 0),
(10, 11, 'SID009', '2022-01-22 08:15:02', '2022-01-22 08:15:23', 1, 0),
(11, 1, 'SID012', '2022-01-22 08:17:15', NULL, NULL, NULL),
(12, 10, 'SID012', '2022-01-22 08:18:08', '2022-01-22 08:18:22', 1, 5),
(13, 7, 'SID019', '2023-08-24 20:27:31', NULL, NULL, NULL),
(14, 24, 'SID012', '2023-08-26 08:02:31', NULL, NULL, NULL),
(15, 15, 'SID017', '2023-08-26 08:04:10', NULL, NULL, NULL),
(16, 16, 'SID018', '2023-08-26 08:05:32', NULL, NULL, NULL),
(17, 17, 'SID010', '2023-08-26 08:05:59', NULL, NULL, NULL),
(18, 18, 'SID009', '2023-08-26 08:06:26', '2023-08-26 08:09:53', 1, 4),
(19, 23, 'SID002', '2023-08-26 08:07:41', '2023-08-26 08:09:46', 1, 0),
(20, 22, 'SID005', '2023-08-26 08:08:41', '2023-08-26 08:09:36', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID002', 'Anuj kumar', 'anujk@gmail.com', '9865472555', 'f925916e2754e5e03f75dd58a5733251', 1, '2022-01-02 07:23:03', '2022-01-22 16:25:45'),
(4, 'SID005', 'sdfsd', 'csfsd@dfsfks.com', '8569710025', '92228410fc8b872914e023160cf4ae8f', 1, '2022-01-02 07:23:03', '2022-01-22 16:25:53'),
(8, 'SID009', 'test', 'test@gmail.com', '2359874527', 'f925916e2754e5e03f75dd58a5733251', 1, '2022-01-02 07:23:03', '2022-01-22 16:25:58'),
(9, 'SID010', 'Amit', 'amit@gmail.com', '8585856224', 'f925916e2754e5e03f75dd58a5733251', 1, '2022-01-02 07:23:03', '2022-01-22 16:26:02'),
(10, 'SID011', 'Sarita Pandey', 'sarita@gmail.com', '4672423754', 'f925916e2754e5e03f75dd58a5733251', 1, '2022-01-02 07:23:03', '2022-01-22 16:26:04'),
(11, 'SID012', 'John Doe', 'john@test.com', '1234569870', 'f925916e2754e5e03f75dd58a5733251', 1, '2022-01-22 08:16:18', NULL),
(13, 'SID017', 'imtiaz', 'iimt@gmail.com', '1234567890', '202cb962ac59075b964b07152d234b70', 1, '2023-08-18 11:37:10', NULL),
(14, 'SID018', 'imt', 'imt@gmail.com', '1234567890', '202cb962ac59075b964b07152d234b70', 1, '2023-08-19 05:39:08', '2023-08-20 07:09:36'),
(15, 'SID019', 'S', 's@gmail.comm', '1234567890', '202cb962ac59075b964b07152d234b70', 1, '2023-08-20 06:58:53', '2023-08-20 07:07:21'),
(16, 'SID020', 'ruhtu', 'imti@gmail.com', '123456789', '162c15a41e2f00002d718030952f991f', 1, '2023-08-31 02:25:35', NULL),
(17, 'SID021', 'ashin', 'ash@gmail.com', '123456780', '18a39a80772f937523e29ba93e0d3ce2', 1, '2023-08-31 02:28:38', NULL),
(18, 'SID022', 'imtiaz', 'imtiaz@gmail.com', '1234567890', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2023-08-31 10:11:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `AuthorName` (`AuthorName`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `CategoryName` (`CategoryName`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
