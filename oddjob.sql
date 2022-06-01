-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2022 at 04:16 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oddjob`
--

-- --------------------------------------------------------

--
-- Table structure for table `activejob`
--

CREATE TABLE `activejob` (
  `Name` varchar(25) NOT NULL,
  `Title` varchar(25) NOT NULL,
  `Deadline` varchar(25) NOT NULL,
  `Freelancer` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `completedjobs`
--

CREATE TABLE `completedjobs` (
  `Title` varchar(25) NOT NULL,
  `Deadline` varchar(25) NOT NULL,
  `Status` enum('completed','pending','extended') NOT NULL,
  `Employer` varchar(25) NOT NULL,
  `Freelancer` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `completedjobs`
--

INSERT INTO `completedjobs` (`Title`, `Deadline`, `Status`, `Employer`, `Freelancer`) VALUES
('oddjobs application', '01/06/2022', 'completed', 'lenos', 'aggeliki'),
('oddjobs1', '01/06/2022', 'completed', 'lenos', 'aggeliki'),
('oddjobs3', '01/05/2022', 'completed', 'lenos', 'aggeliki');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `Title` varchar(25) NOT NULL,
  `Grade` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`Title`, `Grade`) VALUES
('oddjobs3', '10'),
('oddjobs1', '3');

-- --------------------------------------------------------

--
-- Table structure for table `helprequest`
--

CREATE TABLE `helprequest` (
  `Name` varchar(25) NOT NULL,
  `Problem` varchar(25) NOT NULL,
  `Date` varchar(25) NOT NULL,
  `Cancel` tinyint(1) NOT NULL,
  `Warning` tinyint(1) NOT NULL,
  `Fine` tinyint(1) NOT NULL,
  `Exclusion` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `helprequest`
--

INSERT INTO `helprequest` (`Name`, `Problem`, `Date`, `Cancel`, `Warning`, `Fine`, `Exclusion`) VALUES
('giorgos', 'help', '02/02/2022', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jobapply`
--

CREATE TABLE `jobapply` (
  `Name` varchar(25) NOT NULL,
  `Title` varchar(25) NOT NULL,
  `Deadline` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobapply`
--

INSERT INTO `jobapply` (`Name`, `Title`, `Deadline`) VALUES
('aggeliki', 'oddjobs1', '31/05/2022'),
('aggeliki', 'oddjobs2', '31/05/2022');

-- --------------------------------------------------------

--
-- Table structure for table `messege`
--

CREATE TABLE `messege` (
  `Sender` varchar(25) NOT NULL,
  `Receiver` varchar(25) NOT NULL,
  `Messege` varchar(100) NOT NULL,
  `Date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messege`
--

INSERT INTO `messege` (`Sender`, `Receiver`, `Messege`, `Date`) VALUES
('lenos', 'aggeliki', 'hi', '30/05/2022'),
('lenos', 'aggeliki', 'hi', '30/05/2022'),
('lenos', 'aggeliki', 'hello', '30/05/2022'),
('lenos', 'aggeliki', 'hello', '30/05/2022'),
('aggeliki', 'lenos', 'yo', '30/05/2022'),
('lenos', 'aggeliki', 'oddjobs done', '01/06/2022');

-- --------------------------------------------------------

--
-- Table structure for table `openadsform`
--

CREATE TABLE `openadsform` (
  `Name` varchar(25) NOT NULL,
  `Deadline` varchar(25) NOT NULL,
  `Title` varchar(25) NOT NULL,
  `Category` varchar(25) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `openadsform`
--

INSERT INTO `openadsform` (`Name`, `Deadline`, `Title`, `Category`, `Description`) VALUES
('lenos', '31/05/2022', 'oddjobs1', 'oddjobs', 'this is oddjobs'),
('lenos', '31/05/2022', 'oddjobs1', 'oddjobs', 'this is oddjobs'),
('lenos', '31/05/2022', 'oddjobs1', 'oddjobs', 'this is oddjobs'),
('lenos', '31/05/2022', 'oddjobs2', 'oddjobs2', 'this is oddjobs2'),
('lenos', '31/05/2022', 'oddjobs2', 'oddjobs2', 'this is oddjobs2'),
('lenos', '31/05/2022', 'oddjobs3', 'oddjobs3', 'this is oddjobs3'),
('lenos', '02/06/2022', 'oddjobs application', 'oddjobs', 'this is an oddjobs application');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Receiver` varchar(25) NOT NULL,
  `Payer` varchar(25) NOT NULL,
  `Amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Receiver`, `Payer`, `Amount`) VALUES
('aggeliki', 'lenos', 100);

-- --------------------------------------------------------

--
-- Table structure for table `punishment`
--

CREATE TABLE `punishment` (
  `Name` varchar(25) NOT NULL,
  `Punish` enum('Warning','Fine','Ban') NOT NULL,
  `Reason` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `punishment`
--

INSERT INTO `punishment` (`Name`, `Punish`, `Reason`) VALUES
('giorgos', 'Warning', 'help'),
('giorgos', 'Ban', 'help'),
('giorgos', 'Ban', 'help');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Name` varchar(25) NOT NULL,
  `Surname` varchar(25) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Job` enum('Admin','Freelancer','Employer') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `Surname`, `Username`, `Password`, `Job`) VALUES
('Feidias', 'Gedeon', 'Fedeas', 'aelakaole99', 'Admin'),
('Aggeliki', 'Sokratous', 'Aggeliki', 'aggeliki1', 'Freelancer'),
('Lenos', 'Christou', 'Lenos', 'lenos1', 'Employer'),
('Antreas', 'Antreou', 'Antreas', 'antreas1', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activejob`
--
ALTER TABLE `activejob`
  ADD PRIMARY KEY (`Title`);

--
-- Indexes for table `completedjobs`
--
ALTER TABLE `completedjobs`
  ADD PRIMARY KEY (`Title`);

--
-- Indexes for table `helprequest`
--
ALTER TABLE `helprequest`
  ADD PRIMARY KEY (`Problem`);

--
-- Indexes for table `jobapply`
--
ALTER TABLE `jobapply`
  ADD PRIMARY KEY (`Title`);

--
-- Indexes for table `openadsform`
--
ALTER TABLE `openadsform`
  ADD KEY `Title` (`Title`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jobapply`
--
ALTER TABLE `jobapply`
  ADD CONSTRAINT `jobapply_ibfk_1` FOREIGN KEY (`Title`) REFERENCES `openadsform` (`Title`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
