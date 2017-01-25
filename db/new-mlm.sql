-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2017 at 01:52 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new-mlm`
--

-- --------------------------------------------------------

--
-- Table structure for table `epin`
--

CREATE TABLE `epin` (
  `id` int(10) NOT NULL,
  `prefix` varchar(50) NOT NULL,
  `evalue` int(10) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `epin`
--

INSERT INTO `epin` (`id`, `prefix`, `evalue`, `userid`, `status`) VALUES
(1, 'EPIN', 11001, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `day_bal` int(11) NOT NULL,
  `current_bal` int(11) NOT NULL,
  `total_bal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `userid`, `day_bal`, `current_bal`, `total_bal`) VALUES
(20, 'SE011032', 250, 250, 250),
(23, 'SE011037', 250, 250, 250),
(24, 'SE011038', 250, 250, 250),
(25, 'SE011039', 250, 250, 250),
(29, 'SE011040', 0, 0, 0),
(30, 'SE011041', 0, 0, 0),
(31, 'SE011042', 0, 0, 0),
(32, 'SE011043', 0, 0, 0),
(33, 'SE011044', 0, 0, 0),
(34, 'SE011045', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pack1`
--

CREATE TABLE `pack1` (
  `sno` int(225) NOT NULL,
  `package` varchar(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `description` varchar(255) NOT NULL,
  `feathures` varchar(255) NOT NULL,
  `status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pack1`
--

INSERT INTO `pack1` (`sno`, `package`, `title`, `description`, `feathures`, `status`) VALUES
(26, 'hhh', 'hhh', 'hhh', 'hhh', 1),
(27, ' kjhggjkjjjjjjjjjjjjjjjjjkj', ' jkhjh', ' jhjk', 'p[p[p', 1),
(28, 'Package One', 'Package One TItle', '   Package One Description', '   Package One Features ', 0),
(29, ' hhh', ' hhh', ' hhh', '   hhh', 1),
(30, 'pack', ' df', ' sdf', ' sdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tree`
--

CREATE TABLE `tree` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `left` varchar(20) NOT NULL,
  `right` varchar(20) NOT NULL,
  `leftcount` int(11) NOT NULL,
  `rightcount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tree`
--

INSERT INTO `tree` (`id`, `userid`, `left`, `right`, `leftcount`, `rightcount`) VALUES
(6, 'SE011032', 'SE011037', 'SE011038', 1, 1),
(38, 'SE011037', 'SE011039', 'SE011040', 1, 1),
(39, 'SE011038', 'SE011041', 'SE011042', 1, 1),
(40, 'SE011039', 'SE011045', 'SE011044', 1, 1),
(44, 'SE011040', '', '', 0, 0),
(45, 'SE011041', '', '', 0, 0),
(46, 'SE011042', '', '', 0, 0),
(47, 'SE011043', '', '', 0, 0),
(48, 'SE011044', '', '', 0, 0),
(49, 'SE011045', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dateofbirth` date NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `fhname` varchar(50) NOT NULL,
  `nominename` varchar(50) NOT NULL,
  `nominenumber` bigint(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `mobile` int(15) NOT NULL,
  `email` varchar(70) NOT NULL,
  `alternatenum` int(15) NOT NULL,
  `paymentmode` varchar(25) NOT NULL,
  `amount` int(10) NOT NULL,
  `amountwords` varchar(100) NOT NULL,
  `idproof` varchar(1000) NOT NULL,
  `pannum` varchar(50) NOT NULL,
  `adharnum` int(25) NOT NULL,
  `bankname` varchar(50) NOT NULL,
  `branch` varchar(50) NOT NULL,
  `accnum` int(50) NOT NULL,
  `ifsccode` varchar(50) NOT NULL,
  `referalid` varchar(50) NOT NULL,
  `referalname` varchar(50) NOT NULL,
  `sponserid` int(255) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `position` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `createddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `dateofbirth`, `age`, `gender`, `fhname`, `nominename`, `nominenumber`, `address`, `mobile`, `email`, `alternatenum`, `paymentmode`, `amount`, `amountwords`, `idproof`, `pannum`, `adharnum`, `bankname`, `branch`, `accnum`, `ifsccode`, `referalid`, `referalname`, `sponserid`, `userid`, `password`, `position`, `status`, `createddate`) VALUES
(77, 'suresh', '0000-00-00', 88, 'Male', 'kalyanam', 'naveen', 9666666111, 'no:3a, usman nagar.', 2147483647, 'dreamchaser6930@gmail.com', 2147483647, '0', 4000, 'four', 'address', 'pan4545', 15151, 'state', 'vill', 265135, '15355', 'SE011031', 'surendar', 58, 'SE011032', 'admin', 0, 2, '2017-01-23'),
(98, 'arun', '0000-00-00', 45, 'Male', 'asada', 'dsadasd', 561616, 'asdad', 5166, 'arun@gmail', 1651651, '0', 500, 'five', 'asda', 'a65', 6516, 'state', 'villupuram', 15616, '15616', 'SE011032', 'surendar', 77, 'SE011037', 'iaDP@L0Z', 0, 2, '2017-01-24'),
(99, 'vijay', '0000-00-00', 45, 'Male', 'asada', 'dsadasd', 561616, 'asdad', 5166, 'vijay@gmail', 1651651, '0', 500, 'five', 'asda', 'a65', 6516, 'state', 'villupuram', 15616, '15616', 'SE011032', 'surendar', 77, 'SE011038', 'jdZ7!9yv', 1, 2, '2017-01-24'),
(100, 'naveen', '0000-00-00', 45, 'Male', 'asad', 'adsa', 16516, 'adas', 1656, 'naveen@gmail', 65656, '0', 46516, 'ten', 'no : 3a ', 'pan123', 161, 'state', 'v', 1651, '516', 'SE011037', 'arun', 98, 'SE011039', 'lKZStXPj', 0, 2, '2017-01-24'),
(101, 'ajith', '0000-00-00', 32, 'Female', 'sass', 'asas', 16516, 'no:3a villupuram', 2147483647, 'ajith@gmail.com', 1665651516, '0', 3000, 'three', 'no : 3a ', 'pan516', 516, 'state', 'vaa', 1551651, '51515', 'SE011037', 'arun', 98, 'SE011040', 'L!z4xBLC', 1, 2, '2017-01-24'),
(102, 'ajai', '0000-00-00', 45, 'Male', 'Sudhan', 'asdasda', 165161, 'adasd', 1651655, 'ajai@gmail', 1565166, '0', 1231565, 'five', 'asdasd', 'pan1233', 165651, 'state', 'villupuram', 15151, '15156', 'SE011038', 'vijay', 99, 'SE011041', 'IZX5JBjR', 0, 2, '2017-01-24'),
(103, 'anu', '0000-00-00', 45, 'Male', 'assas', 'asaas', 45651616, 'no:3a, usman nagar.', 46266515, 'anu@gmail.com', 15616516, '0', 4000, 'afsaf', 'no : 3a ', 'pan1235', 15156, 'state', 'villupuram', 12232, '12321', 'SE011038', 'vijay', 99, 'SE011042', 'h2f3lTne', 1, 2, '2017-01-24'),
(106, 'hari', '0000-00-00', 45, 'Male', 'asdasd', 'adsaasa', 2626262, 'no 2, test ', 1651616, 'hari@gmail.com', 6516666, '0', 2000, 'two', 'no : 3a ', 'PAN123', 12121, 'State', 'villupuram', 0, 'IF121', 'SE011039', 'Naveen', 100, 'SE011045', 'R6KsVENY', 0, 2, '2017-01-24');

-- --------------------------------------------------------

--
-- Table structure for table `userid`
--

CREATE TABLE `userid` (
  `id` int(10) NOT NULL,
  `prefix` varchar(50) NOT NULL,
  `value` int(50) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userid`
--

INSERT INTO `userid` (`id`, `prefix`, `value`, `status`) VALUES
(1, 'SE0', 11045, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `epin`
--
ALTER TABLE `epin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pack1`
--
ALTER TABLE `pack1`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `tree`
--
ALTER TABLE `tree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userid`
--
ALTER TABLE `userid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `epin`
--
ALTER TABLE `epin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `pack1`
--
ALTER TABLE `pack1`
  MODIFY `sno` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `tree`
--
ALTER TABLE `tree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `userid`
--
ALTER TABLE `userid`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
