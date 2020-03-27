-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 26, 2020 at 03:48 AM
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

--
-- Dumping data for table `Keywords`
--

INSERT INTO `Keywords` (`Paper_DOI`, `Keyword`) VALUES
('10.1002/eap.2056', ' area of occurrence'),
('10.1002/eap.2056', ' biodiversity monitoring'),
('10.1002/eap.2056', ' bird distributions'),
('10.1002/eap.2056', ' bird migration'),
('10.1002/eap.2056', ' citizen science'),
('10.1002/eap.2056', ' eBird'),
('10.1002/eap.2056', ' full annual cycle'),
('10.1002/eap.2056', ' population trends'),
('10.1002/eap.2056', ' Wood Thrush'),
('10.1002/eap.2056', 'abundance'),
('10.1007/s10479-017-2584-2', 'Bigdataanalytics'),
('10.1007/s10479-017-2584-2', 'Disastermanagement'),
('10.1007/s10479-017-2584-2', 'Emergencyservices'),
('10.1007/s10479-017-2584-2', 'Humanitarianservices'),
('10.1007/s10479-017-2584-2', 'Systematicliteraturereview'),
('10.1007/s10479-017-2607-z', ' Big data analytics'),
('10.1007/s10479-017-2607-z', ' Data science'),
('10.1007/s10479-017-2607-z', ' Decision tree'),
('10.1007/s10479-017-2607-z', ' Embedded analytics'),
('10.1007/s10479-017-2607-z', ' Humanitarian logistics'),
('10.1007/s10479-017-2607-z', 'Businessanalytics'),
('10.1007/s10530-019-02147-x', 'Biosecurity'),
('10.1007/s10530-019-02147-x', 'Diagnostics'),
('10.1007/s10530-019-02147-x', 'Earlydetectionandrapidresponse(EDRR)'),
('10.1007/s10530-019-02147-x', 'Identification'),
('10.1007/s10530-019-02147-x', 'Invasivespecies'),
('10.1007/s10530-019-02147-x', 'Pests'),
('10.1007/s10530-019-02147-x', 'Taxonomy'),
('10.1016/j.csbj.2019.03.002', ' Conformational sampling'),
('10.1016/j.csbj.2019.03.002', ' distance education and online learning'),
('10.1016/j.csbj.2019.03.002', ' Drug-drug interactions'),
('10.1016/j.csbj.2019.03.002', ' evaluation methodologies'),
('10.1016/j.csbj.2019.03.002', ' Fold-recognition'),
('10.1016/j.csbj.2019.03.002', ' Molecular modeling'),
('10.1016/j.csbj.2019.03.002', ' Open data'),
('10.1016/j.csbj.2019.03.002', ' Selectivity'),
('10.1016/j.csbj.2019.03.002', ' Uptake transporters'),
('10.1016/j.csbj.2019.03.002', 'datascienceapplicationsineducation'),
('10.1016/j.csbj.2019.03.002', 'SLCtransporters'),
('10.1016/j.im.2018.10.007', ' Affordance actualization'),
('10.1016/j.im.2018.10.007', ' Affordance theory'),
('10.1016/j.im.2018.10.007', ' Organizational benefits'),
('10.1016/j.im.2018.10.007', ' Organizational transformation'),
('10.1016/j.im.2018.10.007', ' Socio-technical approach'),
('10.1016/j.im.2018.10.007', 'Bigdataanalytics'),
('10.1016/j.wneu.2019.09.092', ' Data science'),
('10.1016/j.wneu.2019.09.092', ' Machine learning'),
('10.1016/j.wneu.2019.09.092', ' Registry'),
('10.1016/j.wneu.2019.09.092', 'Clinicalpractice'),
('10.1017/S0032247419000093', ' Antarctica'),
('10.1017/S0032247419000093', ' climate change'),
('10.1017/S0032247419000093', ' SciArt'),
('10.1017/S0032247419000093', ' science communication'),
('10.1017/S0032247419000093', ' sea ice'),
('10.1017/S0032247419000093', ' transdiscipline'),
('10.1017/S0032247419000093', 'art'),
('10.1038/nature06341', 'ADAPTIVE PROTEIN EVOLUTION'),
('10.1038/nature06341', 'AMINO-ACID SUBSTITUTION'),
('10.1088/1674-4527/19/11/162', ' Sun: flares'),
('10.1088/1674-4527/19/11/162', ' Sun: solar wind'),
('10.1088/1674-4527/19/11/162', ' techniques: calibration'),
('10.1088/1674-4527/19/11/162', 'Sun:coronalmassejections(CMEs)'),
('10.1088/1674-4527/19/11/164', ' methods: data analysis'),
('10.1088/1674-4527/19/11/164', ' techniques: image processing'),
('10.1088/1674-4527/19/11/164', 'spacevehicles:instruments'),
('10.1093/bib/bby117', ' graph embedding'),
('10.1093/bib/bby117', ' network-based learning'),
('10.1093/bib/bby117', 'biomedicalinformatics'),
('10.1093/bib/bby117', 'biomedicalknowledgegraphs'),
('10.1093/bib/bby117', 'biomedicalnetworks'),
('10.1093/bib/bby117', 'network embedding'),
('10.1177/0894439318788314', ' artificial intelligence'),
('10.1177/0894439318788314', ' Big Data'),
('10.1177/0894439318788314', ' domain experts'),
('10.1177/0894439318788314', ' ethics'),
('10.1177/0894439318788314', ' gang violence'),
('10.1177/0894439318788314', ' inclusion'),
('10.1177/0894439318788314', ' law enforcement'),
('10.1177/0894439318788314', ' natural language processing'),
('10.1177/0894439318788314', ' qualitative methods'),
('10.1177/0894439318788314', 'socialmedia');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
