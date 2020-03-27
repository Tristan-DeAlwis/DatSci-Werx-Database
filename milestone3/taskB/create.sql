-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 26, 2020 at 03:45 AM
-- Server version: 8.0.19
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `DatSci Werx`
--

-- --------------------------------------------------------
--
-- Dropping tables if already created for refresh
--

DROP TABLE IF EXISTS authors;
DROP TABLE IF EXISTS citations;
DROP TABLE IF EXISTS keywords;
DROP TABLE IF EXISTS publishers;
DROP TABLE IF EXISTS research_papers;
DROP TABLE IF EXISTS writes;

-- --------------------------------------------------------

--
-- Table structure for table `research_papers`
--

CREATE TABLE `research_papers` (
  `DOI` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Digital Object Identifier',
  `Title` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Publisher_ISSN` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Publication_Date` varchar(10) DEFAULT NULL,
  `Cited_Times` int DEFAULT '0',
  `Citing_Times` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Authors`
--

CREATE TABLE `authors` (
  `ORCID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Open Researcher and Contributor ID',
  `Author_Name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Affiliated_Organization` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Sum_of_Cited_Times` int DEFAULT '0',
  `Sum_of_Citing_Times` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Publisher`
--

CREATE TABLE `publishers` (
  `ISSN` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Publisher_Name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Research_Domain` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Impact_Factor` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------
--
-- Table structure for table `Citations`
--

CREATE TABLE `citations` (
  `Citor_DOI` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Citee_DOI` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Keywords`
--

CREATE TABLE `keywords` (
  `Paper_DOI` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Keyword` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Writes`
--

CREATE TABLE `writes` (
  `Author_ORCID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Paper_DOI` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`ORCID`);

--
-- Indexes for table `Citations`
--
ALTER TABLE `citations`
  ADD PRIMARY KEY (`Citor_DOI`,`Citee_DOI`),
  ADD KEY `Citee DOI Constraint` (`Citee_DOI`);

--
-- Indexes for table `Keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`Paper_DOI`,`Keyword`);

--
-- Indexes for table `Publisher`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`ISSN`);

--
-- Indexes for table `research_papers`
--
ALTER TABLE `research_papers`
  ADD PRIMARY KEY (`DOI`),
  ADD KEY `ISSN Constraint` (`Publisher_ISSN`);

--
-- Indexes for table `Writes`
--
ALTER TABLE `writes`
  ADD PRIMARY KEY (`Author_ORCID`,`Paper_DOI`),
  ADD KEY `DOI Constraint` (`Paper_DOI`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Citations`
--
ALTER TABLE `citations`
  ADD CONSTRAINT `Citee DOI Constraint` FOREIGN KEY (`Citee_DOI`) REFERENCES `Research_Paper` (`DOI`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Citor DOI Constraint` FOREIGN KEY (`Citor_DOI`) REFERENCES `Research_Paper` (`DOI`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Keywords`
--
ALTER TABLE `keywords`
  ADD CONSTRAINT `Keywords DOI Constraint` FOREIGN KEY (`Paper_DOI`) REFERENCES `Research_Paper` (`DOI`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `research_papers`
--
ALTER TABLE `research_papers`
  ADD CONSTRAINT `ISSN Constraint` FOREIGN KEY (`Publisher_ISSN`) REFERENCES `Publisher` (`ISSN`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `Writes`
--
ALTER TABLE `writes`
  ADD CONSTRAINT `DOI Constraint` FOREIGN KEY (`Paper_DOI`) REFERENCES `Research_Papers` (`DOI`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ORCID Constraint` FOREIGN KEY (`Author_ORCID`) REFERENCES `Authors` (`ORCID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
