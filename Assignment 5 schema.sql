-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03. Des, 2017 20:00 PM
-- Server-versjon: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task2`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `belongs_to`
--

CREATE TABLE `belongs_to` (
  `userName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `clubID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `season` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `totalDistance` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `skier`
--

CREATE TABLE `skier` (
  `userName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `firstName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `LastName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dateOfBirth` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `skiing_club`
--

CREATE TABLE `skiing_club` (
  `ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `clubName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `City` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Country` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `belongs_to`
--
ALTER TABLE `belongs_to`
  ADD PRIMARY KEY (`userName`,`clubID`),
  ADD KEY `clubID` (`clubID`);

--
-- Indexes for table `skier`
--
ALTER TABLE `skier`
  ADD PRIMARY KEY (`userName`);

--
-- Indexes for table `skiing_club`
--
ALTER TABLE `skiing_club`
  ADD PRIMARY KEY (`ID`);

--
-- Begrensninger for dumpede tabeller
--

--
-- Begrensninger for tabell `belongs_to`
--
ALTER TABLE `belongs_to`
  ADD CONSTRAINT `belongs_to_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `skier` (`userName`) ON UPDATE CASCADE,
  ADD CONSTRAINT `belongs_to_ibfk_2` FOREIGN KEY (`clubID`) REFERENCES `skiing_club` (`ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
