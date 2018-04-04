-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2018 at 06:29 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `organ_donation`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contactno` varchar(20) NOT NULL,
  `message` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`name`, `email`, `contactno`, `message`) VALUES
('muhsina', 'jhiuiy@gmail.com', '46547878', 'helloooooooooooo'),
('muhsina', 'jhiuiy@gmail.com', '46547878', 'helloooooooooooo'),
('muhsina', 'jhiuiy@gmail.com', '46547878', 'helloooooooooooo'),
('subi', 'jyuyy@gmail.com', '69898655', 'hellooo'),
('musi', 'fff@gmail.com', '45454', 'fyugf'),
('hello', 'bih@gmail.com', 'hv', 'hh'),
('hello', 'bih@gmail.com', 'hv', 'hh'),
('subiiiii', 'jhuhu@gmail.com', '98555562', 'dfghjkml');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Doc id` int(6) NOT NULL,
  `Dname` varchar(50) NOT NULL,
  `Specialization` varchar(100) NOT NULL,
  `hid` int(50) NOT NULL,
  `organid` int(10) NOT NULL,
  `status` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Doc id`, `Dname`, `Specialization`, `hid`, `organid`, `status`) VALUES
(1, 'Dr.Sanjeev', 'huuhuh', 0, 0, 0),
(2, 'Dr.manoj', 'mbbs', 0, 0, 0),
(3, 'Dr.manoj', 'mbbs', 0, 0, 0),
(4, 'Dr.pavithra', 'mbbs', 66, 3, 0),
(5, 'Dr.saneesh', 'mbbs', 66, 3, 0),
(6, 'dr.sanoj', 'mbbs', 68, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `fd_id` int(11) NOT NULL,
  `reg_id` int(11) NOT NULL,
  `description` varchar(60) NOT NULL,
  `status` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fd_id`, `reg_id`, `description`, `status`) VALUES
(1, 19, 'sdgd', 0),
(2, 19, 'hellooooooooooo', 0),
(3, 40, 'haiiiiiiiiiiiiiiiiiiiii', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `hid` int(6) NOT NULL,
  `hname` varchar(30) NOT NULL,
  `loc_id` int(8) NOT NULL,
  `address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`hid`, `hname`, `loc_id`, `address`) VALUES
(3, 'carthas', 0, ''),
(4, 'carthas', 0, ''),
(5, 'lakshore', 0, ''),
(6, 'dfygh', 0, ''),
(7, 'dfygh', 70, ''),
(8, 'vidyasarathi', 66, ''),
(9, 'appolo', 66, ''),
(10, 'lakshore', 66, ''),
(11, 'ddddddr', 109, 'dtfyghjk'),
(66, 'carithas hospital', 111, ''),
(67, 'appolo hsptl', 109, 'asdfdf'),
(68, 'columbia asia hospital', 69, 'columbia asia hospital');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `loc id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`loc id`, `name`, `status`) VALUES
(1, 'kottayam', 0);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `reg_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `log_stat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `reg_id`, `username`, `password`, `user_type`, `log_stat`) VALUES
(1, 19, 'muhsina', 'muhsina', 'user', 1),
(2, 20, 'tony', 'tonymon', 'doner', 1),
(3, 21, 'musi', 'musi', 'user', 1),
(4, 22, 'rinu', 'rinu', 'user', 0),
(5, 22, 'rinu', '', 'user', 1),
(6, 22, 'rinu', 'e8e5029c79dcaa7fd12578ad70688c4ff33902d1', 'user', 0),
(7, 25, 'liyo', '005ce4f9e24074040f771ece8b6a1f04573f730b', 'user', 0),
(8, 26, 'teena', '81e91a2e07bb47431ddfb45c5f8eeaad4d892f53', 'user', 0),
(9, 27, 'admin', 'ejLTSRCz3tadrwoc3J29oeLAFzmdZqgzjcXh2EXN6zY', 'admin', 1),
(10, 28, 'suhara', 'b5c3e091851f50070f5d8e12c5d3baec5c728043', 'user', 0),
(11, 28, 'suhara', 'b5c3e091851f50070f5d8e12c5d3baec5c728043', 'user', 0),
(12, 28, 'suhara', 'b5c3e091851f50070f5d8e12c5d3baec5c728043', 'user', 0),
(13, 31, 'hbb', '5be9d74beeb590c6112b04bea7c320256681db2d', 'user', 0),
(14, 32, 'muhsina', 'b5c3e091851f50070f5d8e12c5d3baec5c728043', 'user', 0),
(15, 33, 'tonymon', '1001e8702733cced254345e193c88aaa47a4f5de', 'user', 0),
(16, 34, 'muhsina', 'b5c3e091851f50070f5d8e12c5d3baec5c728043', 'user', 0),
(17, 35, 'albin', '6c590f28b470d75c9f573dd04f8399d9269a06d3', 'doner', 0),
(18, 36, 'rinuvraju', 'e8e5029c79dcaa7fd12578ad70688c4ff33902d1', 'doner', 0),
(19, 37, 'albin', '2dfb76cde488b0df3829f37d80a7e16005123790', 'doner', 0),
(20, 38, 'albin', '6c590f28b470d75c9f573dd04f8399d9269a06d3', 'user', 0),
(21, 39, 'albi123', '5uNovoqs3Aa2/pY+zpElsOMEnkyYuer4XVGOojEbPZs=', 'user', 1),
(22, 40, 'muhsina', 'ejLTSRCz3tadrwoc3J29oeLAFzmdZqgzjcXh2EXN6zY=', 'doner', 1),
(23, 41, 'reshu', 'kcvHVJHy0DYrzLCaf6oGpt+0XQ/S19uALIt262U1/gE=', 'doner', 1),
(24, 42, 'liyopaul', 'inekOXGbo9DdJkYhEY2lTZdd3EC62PYVk7AHRsxCEx8=', 'user', 1),
(25, 43, 'bainu', '6qIXyWA/gy9iNuTmI+xzw3BHupJBP9QDzNTCxkfnjYQ=', 'doner', 1),
(26, 44, 'rini', '4E1QHepRGFxlvrEVczUu52w27leYKyHM5x5cIzT/3Z4=', 'user', 1),
(27, 45, 'gopik', 'yXa5hTXxU2aWnCN9CfxR3igXqgg9h6TQs8K7DsPnMqg=', 'doner', 1),
(28, 46, 'muhsina', 'ejLTSRCz3tadrwoc3J29oeLAFzmdZqgzjcXh2EXN6zY=', 'user', 0),
(29, 47, 'bainul', 'e7lfFB5ZoUwWVr9lm+9nLkJmvxzD0mzYQ0tYRe8VbDU=', 'user', 1),
(30, 48, 'thushara', '+rIBxjHSCc5pteoPnC8OhdzMVqPTvnZeMfQ2DL6qwJA=', 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `organdonation1`
--

CREATE TABLE `organdonation1` (
  `id` int(20) NOT NULL,
  `reg_id` int(20) NOT NULL,
  `certificate` varchar(500) NOT NULL,
  `heart` varchar(20) NOT NULL,
  `kidney` varchar(20) NOT NULL,
  `lungs` varchar(20) NOT NULL,
  `cornea` varchar(20) NOT NULL,
  `status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organdonation1`
--

INSERT INTO `organdonation1` (`id`, `reg_id`, `certificate`, `heart`, `kidney`, `lungs`, `cornea`, `status`) VALUES
(1, 20, '1506166605brush.jpg', '0', '0', '0', '0', 0),
(2, 20, '1506166605brush.jpg', '0', '0', '0', '0', 0),
(3, 20, '1506166058ab4.jpg', '0', '0', '1', '0', 0),
(4, 20, '1506166058ab4.jpg', '0', '0', '1', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `organs`
--

CREATE TABLE `organs` (
  `or id` int(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `status` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organs`
--

INSERT INTO `organs` (`or id`, `name`, `status`) VALUES
(1, 'Liver', 0),
(2, 'Kidney', 0),
(3, 'Heart', 0),
(4, 'Lungs', 0),
(5, 'Intestine', 0),
(6, 'Pancrease', 0);

-- --------------------------------------------------------

--
-- Table structure for table `organ_donation`
--

CREATE TABLE `organ_donation` (
  `id` int(20) NOT NULL,
  `reg_id` int(20) NOT NULL,
  `certificate` varchar(500) NOT NULL,
  `heart` varchar(20) NOT NULL,
  `kidney` varchar(20) NOT NULL,
  `lungs` varchar(20) NOT NULL,
  `cornea` varchar(20) NOT NULL,
  `status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organ_donation`
--

INSERT INTO `organ_donation` (`id`, `reg_id`, `certificate`, `heart`, `kidney`, `lungs`, `cornea`, `status`) VALUES
(1, 40, '8 lives.jpg', '1', '0', '0', '1', 0),
(2, 47, '8 lives.jpg', '0', '1', '0', '0', 0),
(3, 48, '8 lives.jpg', '0', '0', '1', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `bank_id` int(15) NOT NULL,
  `amount` int(15) NOT NULL,
  `bank` varchar(20) NOT NULL,
  `cardholder` varchar(50) NOT NULL,
  `cardno` int(50) NOT NULL,
  `ccv` int(6) NOT NULL,
  `validity` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(4) NOT NULL,
  `state` varchar(20) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(150) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(8) NOT NULL,
  `bloodgroup` varchar(5) NOT NULL,
  `address` varchar(80) NOT NULL,
  `city` varchar(20) NOT NULL,
  `pincode` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone1` bigint(20) NOT NULL,
  `emailid` varchar(20) NOT NULL,
  `address1` varchar(40) NOT NULL,
  `status` int(11) NOT NULL,
  `process` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `state`, `firstname`, `lastname`, `username`, `password`, `dob`, `gender`, `bloodgroup`, `address`, `city`, `pincode`, `email`, `phone`, `name`, `phone1`, `emailid`, `address1`, `status`, `process`) VALUES
(32, 'kerala', 'muhsina', 'rafi', 'muhsina', 'b5c3e091851f50070f5d8e12c5d3baec5c728043', '1999-12-23', 'Female', 'A+', 'yfyygjio', 'hyhgiy', 45465, 'mkjih@gmail.com', 6546565523, 'manu', 5474561239, 'hgy@gmail.com', 'yfyygjio', 0, ''),
(33, 'Thamilnadu', 'tony', 'philip', 'tonymon', '1001e8702733cced254345e193c88aaa47a4f5de', '1999-12-16', 'Female', 'B-', 'fyyfiy', 'yfghjk', 559598, 'gyi7iy@gmail.com', 5989898785, 'uhuyy', 5655659789, 'jiu@gmail.com', 'fyyfiy', 0, ''),
(34, 'Thamilnadu', 'muhsi', 'rafi', 'muhsina', 'b5c3e091851f50070f5d8e12c5d3baec5c728043', '1999-12-03', 'Female', 'AB+', 'rdfghj', 'fghjk', 265556, 'nhug@gmail.com', 9846660823, 'buyft', 6556555785, 'juygyg@gmail.com', 'rdfghj', 0, ''),
(35, 'kerala', 'albin', 'tom', 'albin', '6c590f28b470d75c9f573dd04f8399d9269a06d3', '1999-12-03', 'Female', 'B-', 'huutygyg', 'cghjk', 565959, 'muhsi@gmail.com', 6599485568, 'musi', 9852255544, 'manu@gmail.com', 'huutygyg', 0, ''),
(36, 'kerala', 'rinu', 'raju', 'rinuvraju', 'e8e5029c79dcaa7fd12578ad70688c4ff33902d1', '1999-12-18', 'Female', 'B+', 'tfghjk', 'fghjk', 559996, 'mjuh@gmail.com', 6451215454, 'musi', 6544945598, 'jiuyy@gmail.com', 'tfghjk', 0, ''),
(37, 'kerala', 'albin', 'tom', 'albin', '2dfb76cde488b0df3829f37d80a7e16005123790', '1995-08-08', 'Male', 'B+', 'kannur', 'kannur', 670631, 'albintom@gmail.com', 9446407273, 'albin', 9446407273, 'albintom@gmail.com', 'kannur', 0, ''),
(38, 'Thamilnadu', 'albin', 'tom', 'albin', '6c590f28b470d75c9f573dd04f8399d9269a06d3', '1999-12-09', 'Female', 'AB+', 'efrgrg', 'ghujk', 2665555, 'nhyy@gmail.com', 9846660823, 'musi', 6523332222, 'kuu@gmail.com', 'efrgrg', 0, ''),
(39, 'Thamilnadu', 'albi', 'albi', 'albi123', '5uNovoqs3Aa2/pY+zpElsOMEnkyYuer4XVGOojEbPZs=', '1995-08-08', 'Male', 'B+', 'knr', 'lkk', 670631, 'albi@gmai.com', 9446407273, 'albi', 9446407273, 'albi@gmail.com', 'knr', 0, ''),
(40, 'Thamilnadu', 'muhsina', 'rafi', 'muhsina', 'ejLTSRCz3tadrwoc3J29oeLAFzmdZqgzjcXh2EXN6zY=', '1999-12-08', 'Female', 'B+', 'ertgyhuu', 'ghjk', 54546, 'ghjkl@gmail.com', 4563266665, 'muhsi', 5454646785, 'musi@gmail.com', 'ertgyhuu', 0, ''),
(41, 'kerala', 'reshma', 'suresh', 'reshu', 'kcvHVJHy0DYrzLCaf6oGpt+0XQ/S19uALIt262U1/gE=', '1999-12-23', 'Female', 'AB-', 'gfugu', 'xcvbn', 4545466, 'gcgvh@gmail.com', 5454545464, 'fygy', 5545464565, 'hhjygy@gmail.com', 'gfugu', 0, ''),
(42, 'Thamilnadu', 'liyo', 'paul', 'liyopaul', 'inekOXGbo9DdJkYhEY2lTZdd3EC62PYVk7AHRsxCEx8=', '1999-12-16', 'Female', 'B-', 'jgfft', 'hghgyg', 445456, 'ggyu@gmail.com', 7657676763, 'jhiuy', 7678676673, 'hg@gmail.com', 'jgfft', 0, ''),
(43, 'Thamilnadu', 'bainu', 'nushi', 'bainu', '6qIXyWA/gy9iNuTmI+xzw3BHupJBP9QDzNTCxkfnjYQ=', '1999-12-10', 'Female', 'AB+', 'yg8ygy', 'ghh', 676878, 'grg@gmail.com', 2656489798, 'huy', 6598777777, 'hu7y@gmail.com', 'yg8ygy', 0, ''),
(44, 'Thamilnadu', 'rini', 'kurian', 'rini', '4E1QHepRGFxlvrEVczUu52w27leYKyHM5x5cIzT/3Z4=', '1999-12-23', 'Female', 'B-', 'egrgg', 'gvgv', 657689, 'mjhu@gmail.com', 5655555789, 'sd', 3454646645, 'jhuh@gmail.com', 'egrgg', 0, ''),
(45, 'Thamilnadu', 'gopi', 'asd', 'gopik', 'yXa5hTXxU2aWnCN9CfxR3igXqgg9h6TQs8K7DsPnMqg=', '1999-12-29', 'Female', 'AB-', 'mvyut', 'giygy', 454544, 'bhigyig@gmail.com', 5468546812, 'mkuo', 6565989514, 'huy7@gmail.com', 'mvyut', 0, ''),
(46, 'kerala', 'musi', 'rafi', 'muhsina', 'ejLTSRCz3tadrwoc3J29oeLAFzmdZqgzjcXh2EXN6zY=', '1999-12-10', 'Female', 'A+', 'hyg8yt', 'hgyt', 589898, 'kjhiuy@gmail.com', 5685555785, 'ygy', 5888555322, 'hguyg@gmail.com', 'hyg8yt', 0, ''),
(47, 'Thamilnadu', 'bainu', 'nushiya', 'bainul', 'e7lfFB5ZoUwWVr9lm+9nLkJmvxzD0mzYQ0tYRe8VbDU=', '1999-12-14', 'Female', 'A+', 'gfyuf', 'ygyt', 548887, 'jgy@gmail.com', 6599787877, 'iuuyu', 6565656578, 'jiu@gmail.com', 'gfyuf', 0, ''),
(48, 'Thamilnadu', 'thush', 'hgyg', 'thushara', '+rIBxjHSCc5pteoPnC8OhdzMVqPTvnZeMfQ2DL6qwJA=', '1999-12-17', 'Female', 'AB-', 'hgygy', 'gftuy', 546847, 'guytyt@gmail.com', 5659587889, 'khuy', 9845547853, 'jhy@gmail.com', 'hgygy', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE `upload` (
  `reg_id` int(11) NOT NULL,
  `certificate` varchar(100) NOT NULL,
  `organ` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`reg_id`, `certificate`, `organ`) VALUES
(19, '1506166058ab4.jpg', ''),
(19, '1506166036ab4.jpg', 'Array'),
(19, '1506166036ab4.jpg', 'Array'),
(19, '1506166036ab4.jpg', 'Array'),
(19, '1506166058ab4.jpg', ''),
(19, '1506166058ab4.jpg', ''),
(19, '1506166036ab4.jpg', ''),
(19, '1506164591ab6 - Copy.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Doc id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fd_id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`loc id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `organdonation1`
--
ALTER TABLE `organdonation1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `organs`
--
ALTER TABLE `organs`
  ADD PRIMARY KEY (`or id`);

--
-- Indexes for table `organ_donation`
--
ALTER TABLE `organ_donation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `Doc id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `fd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `hid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `loc id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `organdonation1`
--
ALTER TABLE `organdonation1`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `organs`
--
ALTER TABLE `organs`
  MODIFY `or id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `organ_donation`
--
ALTER TABLE `organ_donation`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `bank_id` int(15) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
