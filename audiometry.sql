-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2018 at 11:09 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `audiometry`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_audiogram`
--

CREATE TABLE `t_audiogram` (
  `aid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pta` varchar(20) NOT NULL,
  `audiogram` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_login`
--

CREATE TABLE `t_login` (
  `uid` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_login`
--

INSERT INTO `t_login` (`uid`, `email`, `password`) VALUES
(22, 'anju@gmail.com', '9abfae448bc00ea3214033a3086e6539'),
(7, 'f@gmail.com', 'fd2cc6c54239c40'),
(8, 'hima@gmail.com', '514b0024591fa5b'),
(9, 'fg@j.jhk', 'eea3877c54230f9'),
(10, 'gg@jk.ggh', '2e65f2f2fdaf6c6'),
(11, 'gg@hh.hh', '22c276a05aa7c90'),
(12, 'h@th.dfg', '4eae18cf9e54a0f'),
(13, 'd@gmail.com', '1c1d4df596d01da'),
(14, 's@gg.ff', '7815696ecbf1c96'),
(15, 'a@g.j', '76d80224611fc91'),
(16, 'a@g.c', '2e65f2f2fdaf6c6'),
(17, 'ad@hh.ff', '2e65f2f2fdaf6c6'),
(18, 'd@d,f', '5ec91aac30eae62'),
(19, 'a@w.k', 'a1d33d0dfec820b'),
(20, 'fara@gmail.com', 'a67d56672f2b5fb'),
(21, 'junu@gmail.com', 'junu1'),
(23, 'arya@gmail.com', '5882985c8b1e2dce2763072d56a1d6e5'),
(24, 'indran@gmail.com', '5109762146a1d8759da813ac222bc7e0'),
(0, '', ''),
(25, 'farah@gmail.com', 'be6b422eea913402a42740d294ece645'),
(26, 'gee@gmail.com', '47de9de97f04843d5dad246beb6f8a83'),
(27, 'diya@gmail.com', '436e97532fa8c80ca6e94a8435781b5a'),
(28, 'raju@gmail.com', '03c017f682085142f3b60f56673e22dc'),
(29, 'jassirlink@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `t_pta`
--

CREATE TABLE `t_pta` (
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `total` int(20) NOT NULL,
  `pta` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_register`
--

CREATE TABLE `t_register` (
  `uid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_register`
--

INSERT INTO `t_register` (`uid`, `name`, `dob`, `gender`, `address`, `city`, `state`) VALUES
(8, 'hima', '1996-03-01', 'Female', 'pala', 'pala', 'Kerala'),
(7, 'hki', '2014-06-02', 'Male', 'f', 'g', 'Orissa'),
(6, 'geetha', '2018-11-05', 'Female', 'tgn', 'ujn', 'Haryana'),
(5, 'arya', '2018-11-07', 'Female', 'fghj', 'hjkl', 'Manipur'),
(9, 'arta', '2018-11-06', 'Female', 'ghjk', 'tyu', 'Madya Pradesh'),
(10, 'fghj', '2018-11-08', 'Female', 'ghj', 'ghj', 'Karnataka'),
(11, 'pl', '1996-08-05', 'Male', 'hj', 'j', 'Haryana'),
(12, 'fg', '1990-04-05', 'Male', 'jk', 'ewr', 'Goa'),
(13, 'okm', '2010-05-05', 'Male', 'kk', 'jj', 'Jharkhandr'),
(14, 'lk', '2000-04-05', 'Male', 'g', 'd', 'Haryana'),
(15, 'ok', '1999-09-08', 'Male', 'j', 'j', 'Nagaland'),
(16, 'ijjnn', '1999-05-08', 'Male', 'g', 'h', 'Haryana'),
(17, '123', '2018-11-01', 'Female', 'df', 'hh', 'Karnataka'),
(18, 'ff', '1999-08-05', 'Male', 'gg', 'aa', 'Goa'),
(19, 'pl', '1999-06-07', 'Male', 'gg', 'as', 'Sikkim'),
(20, 'fara', '1991-11-11', 'Female', 'p', 't', 'Haryana'),
(21, 'junu', '2001-02-05', 'Male', 'ju', 'nu', 'Kerala'),
(22, 'anju', '2018-11-30', 'Female', 'tvm', 'nedumangadu', 'Kerala'),
(23, 'arya', '1995-07-31', 'Female', 'th', 'pta', 'Kerala'),
(24, 'indran', '1995-09-05', 'Male', 'ko', 'kodumon', 'Kerala'),
(25, 'fara', '1995-09-26', 'Female', 'ckdwjfkegj', 'calicut', 'Kerala'),
(26, 'geetha', '2018-11-01', 'Female', 'hh', 'jj', 'Karnataka'),
(27, 'diya', '2018-11-13', 'Female', 'ss', 'dd', 'Sikkim'),
(28, 'RAJU', '2018-11-15', 'Male', 'KOLLAM', 'KOLLAM', 'Kerala'),
(29, 'jassir', '2018-11-06', 'Male', 'kasjdksad', 'kollam', 'Kerala');

-- --------------------------------------------------------

--
-- Table structure for table `t_test`
--

CREATE TABLE `t_test` (
  `testid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `date` date NOT NULL,
  `outbox` varchar(20) NOT NULL,
  `ear` varchar(20) NOT NULL,
  `125Hz` varchar(20) NOT NULL,
  `250Hz` varchar(20) NOT NULL,
  `500Hz` varchar(20) NOT NULL,
  `1KHz` varchar(20) NOT NULL,
  `2KHz` varchar(20) NOT NULL,
  `4KHz` varchar(20) NOT NULL,
  `8KHz` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t_test`
--

INSERT INTO `t_test` (`testid`, `uid`, `date`, `outbox`, `ear`, `125Hz`, `250Hz`, `500Hz`, `1KHz`, `2KHz`, `4KHz`, `8KHz`) VALUES
(48, 28, '2018-11-22', 'Speaker', 'Right', '10', '20', '30', '40', '50', '60', '70'),
(47, 28, '2018-11-21', 'Headphone', 'Right', '10', '20', '30', '40', '50', '60', '70'),
(46, 22, '2018-11-21', 'Headphone', 'Left', '20', '30', '40', '50', '60', '30', '30'),
(49, 24, '2018-11-22', 'Speaker', 'Left', '30', '30', '30', '40', '50', '20', '50'),
(50, 28, '2018-11-22', 'Headphone', 'Right', '30', '20', '40', '20', '30', '40', '50'),
(51, 22, '2018-11-22', 'Headphone', 'Left', '30', '50', '60', '70', '60', '', ''),
(52, 22, '2018-11-22', 'Speaker', 'Left', '0', '00', '0', '80', '20', '30', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_audiogram`
--
ALTER TABLE `t_audiogram`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `t_login`
--
ALTER TABLE `t_login`
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `t_pta`
--
ALTER TABLE `t_pta`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `t_register`
--
ALTER TABLE `t_register`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `t_test`
--
ALTER TABLE `t_test`
  ADD PRIMARY KEY (`testid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_audiogram`
--
ALTER TABLE `t_audiogram`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_pta`
--
ALTER TABLE `t_pta`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_register`
--
ALTER TABLE `t_register`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `t_test`
--
ALTER TABLE `t_test`
  MODIFY `testid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
