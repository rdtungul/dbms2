-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 26, 2017 at 12:30 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mydbms`
--
CREATE DATABASE `mydbms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mydbms`;

-- --------------------------------------------------------

--
-- Table structure for table `addbooks`
--

CREATE TABLE IF NOT EXISTS `addbooks` (
  `bookCode` int(9) NOT NULL,
  `bookNo` int(9) NOT NULL,
  `bookQuantity` int(9) NOT NULL,
  `bookQtystore` int(9) NOT NULL,
  `bookType` text NOT NULL,
  `bookTitle` varchar(30) NOT NULL,
  `bookAuthor` varchar(20) NOT NULL,
  PRIMARY KEY (`bookNo`),
  UNIQUE KEY `bookNo` (`bookNo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addbooks`
--

INSERT INTO `addbooks` (`bookCode`, `bookNo`, `bookQuantity`, `bookQtystore`, `bookType`, `bookTitle`, `bookAuthor`) VALUES
(0, 101, 4, 4, 'English', 'Oral Communication', 'J English'),
(0, 301, 3, 3, 'Filipino', 'Wikang Filipino', 'Fil Younghusband'),
(0, 401, 3, 3, 'Science', 'Biology', 'Mr Science'),
(0, 201, 3, 3, 'Math', 'Elementary Algebra', 'E Bamba'),
(0, 501, 1, 1, 'History', 'A History of the World', 'Von Laue'),
(0, 601, 1, 1, 'Fiction', 'El Filibusterismo', 'Jose Rizal'),
(0, 701, 2, 2, 'Biography', 'A Long Way Gone', 'Ishmael Books'),
(100, 102, 2, 2, 'English', 'Oral Communication II', 'R English'),
(100, 103, 3, 3, 'English', 'Oral Communication III', 'Eng lish');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `userid1` int(9) NOT NULL AUTO_INCREMENT,
  `uname1` varchar(20) NOT NULL,
  `pword1` varchar(20) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  PRIMARY KEY (`userid1`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userid1`, `uname1`, `pword1`, `fullname`) VALUES
(1, 'administrator', 'administrator', 'Roseph Darl');

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE IF NOT EXISTS `author` (
  `authorID` int(9) NOT NULL AUTO_INCREMENT,
  `authorName` varchar(50) NOT NULL,
  PRIMARY KEY (`authorID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`authorID`, `authorName`) VALUES
(1, 'J.K. Rowling'),
(2, 'Edilberto K. Tiempo');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `bookID` int(9) NOT NULL AUTO_INCREMENT,
  `bookName` varchar(50) NOT NULL,
  `authorID` int(9) NOT NULL,
  `bookStat` varchar(20) NOT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookID`, `bookName`, `authorID`, `bookStat`) VALUES
(3, 'Harry Potter', 1, 'Available'),
(4, 'How my brother leon''s brought home a wife', 2, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `BookID` int(9) NOT NULL,
  `BookNo` int(9) NOT NULL,
  `BookType` varchar(20) NOT NULL,
  `BookName` varchar(50) NOT NULL,
  `BookAuthor` varchar(50) NOT NULL,
  PRIMARY KEY (`BookID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BookID`, `BookNo`, `BookType`, `BookName`, `BookAuthor`) VALUES
(1, 1, 'Mathematics', 'Elementary Algebra', 'E Bamba'),
(2, 1, 'English', 'Oral Communication', 'J English'),
(3, 1, 'Filipiniana', 'Noli Me Tangere', 'Jose Rizal'),
(4, 1, 'Science', 'Cosmos', 'Carl Sagan'),
(1001, 1001, 'Filipiniana', 'Sociology', 'LN');

-- --------------------------------------------------------

--
-- Table structure for table `bookstat`
--

CREATE TABLE IF NOT EXISTS `bookstat` (
  `bookCodes` varchar(9) NOT NULL,
  `bookNos` varchar(9) NOT NULL,
  `bookStatus` varchar(10) NOT NULL,
  PRIMARY KEY (`bookCodes`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookstat`
--


-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `categoryID` int(9) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(50) NOT NULL,
  `bookID` int(9) NOT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `category`
--


-- --------------------------------------------------------

--
-- Table structure for table `librec`
--

CREATE TABLE IF NOT EXISTS `librec` (
  `Position` text NOT NULL,
  `Userid` int(9) NOT NULL,
  `Lname` varchar(20) NOT NULL,
  `Fname` varchar(20) NOT NULL,
  `Mname` varchar(20) NOT NULL,
  `Sex` text NOT NULL,
  `Bday` date NOT NULL,
  `Age` int(11) NOT NULL,
  `Uname` varchar(20) NOT NULL,
  `Pword` varchar(20) NOT NULL,
  PRIMARY KEY (`Userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librec`
--

INSERT INTO `librec` (`Position`, `Userid`, `Lname`, `Fname`, `Mname`, `Sex`, `Bday`, `Age`, `Uname`, `Pword`) VALUES
('Librarian', 5, 'Guina', 'Junie Ann', 'Bamba', 'Female', '1996-09-24', 20, 'Junieann24', 'Junieann24'),
('Student', 4, 'Cabantog', 'Jhan Edward', 'Cabrera', 'Male', '1994-12-21', 21, 'Jhanedward21', 'Jhanedward21'),
('Student', 3, 'Santos', 'Prince Denniel', 'Luna', 'Male', '1998-08-21', 18, 'Prince21', 'Prince21'),
('Student', 2, 'De dote', 'Von', 'Capa', 'Male', '1998-05-03', 18, 'Vdedote03', 'Vdedote03'),
('Admin', 1, 'Tungul', 'Roseph Darl', 'Razon', 'Male', '1995-12-17', 20, 'Rosephd17', 'Rosephd17'),
('Student', 6, 'Zapanta', 'Agustin', 'Alfonsoh', 'Male', '1999-07-01', 17, 'ChampagnePap1', 'ChampagnePap1'),
('Student', 7, 'Dela Cruz', 'Juan', 'X', 'Male', '1991-01-01', 25, 'Juandela1', 'Juandela1'),
('Student', 8, 'Dela Cruz', 'Pedro', 'Y', 'Male', '1992-02-02', 24, 'Pedrodela2', 'Pedrodela2'),
('Teacher', 9, 'Rizal', 'Jose', 'Protasio', 'Male', '1861-06-19', 155, 'Joseprizal1', 'Joseprizal1'),
('Student', 10, 'Pacquiao', 'Emmanuel', 'P', 'Male', '1978-12-17', 37, 'Mannypac1', 'Mannypac1'),
('Librarian', 11, 'Nieto', 'Ivan', 'Pancho', 'Male', '1999-09-22', 17, 'Naviredd22', 'Naviredd22'),
('Student', 12, 'Tungul', 'Karla Pearl', 'Razon', 'Female', '2005-10-07', 11, 'Kpearl2ngl', 'Kpearl2ngl'),
('Student', 92, 'Ronaldo', 'Christiano', 'Fifa', 'Male', '1999-07-07', 17, 'Cronaldo7', 'Cronaldo7'),
('Student', 91, 'Messi', 'Leo', 'Mnch', 'Male', '1999-10-10', 17, 'Leomessi10', 'Leomessi10'),
('Student', 19, 'Bolt', 'Usain', 'Flash', 'Male', '1999-01-01', 18, 'Usainbolt1', 'Usainbolt1'),
('Student', 93, 'Neymar Jr', 'Fifa', 'Fifa', 'Male', '1999-11-11', 17, 'Neymarjr11', 'Neymarjr11'),
('Student', 100, 'Jordan', 'Michael', 'MJ', 'Male', '1999-01-23', 17, 'Airjordan23', 'Airjordan23'),
('Student', 101, 'Reynolds', 'Ryan', 'Dp', 'Male', '1999-10-10', 17, 'Mutant101', 'Mutant101'),
('Librarian', 20, 'rd', 'rd', 'rd', 'Male', '1999-12-17', 17, 'Darltngl17', 'Darltngl17'),
('Student', 21, 'rt', 'rt', 'rt', 'Male', '1999-12-17', 17, 'Rdarlt17', 'Rdarlt17');

-- --------------------------------------------------------

--
-- Table structure for table `logbook`
--

CREATE TABLE IF NOT EXISTS `logbook` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL,
  `login` datetime NOT NULL,
  `logout` datetime NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=110 ;

--
-- Dumping data for table `logbook`
--

INSERT INTO `logbook` (`uid`, `uname`, `login`, `logout`) VALUES
(86, 'Rosephd17', '2017-01-19 09:40:14', '2017-01-19 09:40:18'),
(89, 'Rosephd17', '2017-01-19 09:44:35', '2017-01-19 09:44:40'),
(84, 'Rosephd17', '2017-01-19 09:34:55', '2017-01-19 09:34:59'),
(90, 'Rosephd17', '2017-01-19 12:01:00', '2017-01-19 12:01:04'),
(81, 'Rosephd17', '2017-01-19 09:26:47', '2017-01-19 09:27:00'),
(80, 'Rosephd17', '2017-01-17 14:25:59', '2017-01-17 14:26:03'),
(93, 'Rosephd17', '2017-01-20 10:00:43', '2017-01-20 10:00:58'),
(92, 'Rosephd17', '2017-01-19 13:31:24', '2017-01-19 13:31:28'),
(94, 'Rosephd17', '2017-01-20 10:01:49', '2017-01-20 10:24:37'),
(95, 'AMdizon10', '2017-01-20 13:31:18', '2017-01-20 13:32:01'),
(96, 'Rosephd17', '2017-01-22 07:20:49', '2017-01-22 07:22:47'),
(97, 'Junieann24', '2017-01-22 07:22:58', '2017-01-22 07:23:25'),
(98, 'Alvinm10', '2017-01-22 07:23:51', '2017-01-22 07:24:01'),
(99, 'Rosephd17', '2017-01-22 15:34:52', '2017-01-22 16:01:47'),
(100, 'Rosephd17', '2017-01-22 18:37:46', '2017-01-22 18:39:22'),
(101, 'Nietonavi22', '2017-01-22 18:39:33', '2017-01-22 18:39:45'),
(102, 'Rosephd17', '2017-01-23 12:55:52', '2017-01-23 12:56:41'),
(103, 'Nietonavi22', '2017-01-23 12:57:00', '2017-01-23 12:58:10'),
(104, 'Rosephd17', '2017-01-23 13:30:35', '2017-01-23 13:31:04'),
(105, 'Junieann24', '2017-01-23 13:31:12', '2017-01-23 13:31:53'),
(106, 'AMdizon10', '2017-01-23 13:32:07', '2017-01-23 13:32:19'),
(107, 'Rosephd17', '2017-01-23 14:15:04', '2017-01-23 15:54:17'),
(108, 'Rosephd17', '2017-01-23 18:22:46', '2017-01-23 18:22:54'),
(109, 'Nietonavi22', '2017-01-23 18:23:08', '2017-01-23 19:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `penalty`
--

CREATE TABLE IF NOT EXISTS `penalty` (
  `studNo` varchar(9) NOT NULL,
  `studName` varchar(20) NOT NULL,
  `Fine` int(9) NOT NULL,
  PRIMARY KEY (`studNo`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penalty`
--


-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`firstname`, `lastname`, `address`, `gender`, `age`) VALUES
('Roseph Darl', 'Tungul', 'Sasmuan', 'R', 15);

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE IF NOT EXISTS `records` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bday` date NOT NULL,
  `address` varchar(50) NOT NULL,
  `lang1` varchar(20) NOT NULL,
  `lang2` varchar(20) NOT NULL,
  `lang3` varchar(20) NOT NULL,
  `emailadd` varchar(30) NOT NULL,
  `myurl` varchar(30) NOT NULL,
  `username` varchar(40) NOT NULL,
  `pword` varchar(30) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`UserID`, `firstname`, `lastname`, `gender`, `bday`, `address`, `lang1`, `lang2`, `lang3`, `emailadd`, `myurl`, `username`, `pword`) VALUES
(1, 'Gwendel Von', 'de Dote', 'Male', '1997-05-03', 'Dau', 'English', 'Filipino', '', 'vdedote@gmail.com', 'http://www.google.com', 'vdedote', '123123'),
(2, 'Roseph Darl', 'Tungul', 'Male', '1995-12-17', 'San Nicolas 1st Sasmuan, Pampanga', 'English', 'Filipino', 'Japanese', 'thedarlknight@gmail.com', 'http://www.google.com', 'rosephdarl17', '44332211R'),
(3, 'Roseph', 'Darl', 'Male', '0000-00-00', 'Sasmuan', 'English', 'Filipino', '', 'rosephdarl@gmail.com', 'www.google.com', 'admin', 'admin'),
(4, 'Prince', 'Pogi', 'Male', '0000-00-00', 'Lubao', 'English', '', '', 'prince@gmail.com', 'www.google.com', 'prince', 'prince'),
(5, 'Ivan', 'Nieto', 'Male', '1999-08-09', 'Guagua', 'English', 'Filipino', '', 'ipanchonieto@gmail.com', 'http://www.google.com', 'ipanchonieto', '1234512'),
(6, 'Jhan', 'Cabantog', 'Male', '2016-08-03', 'Sasmuan', 'English', 'Filipino', '', 'jhan@gmail.com', 'www.google,com', 'jhan', 'jhan'),
(35, 'Roseph', 'Tungul', 'Male', '1995-12-17', '', 'English', 'Filipino', '', 'thedarlknight@gmail.com', '', 'Rdarl', 'Rdarl'),
(9, 'Navi', 'Otein', 'Male', '2016-08-22', '', 'English', 'Filipino', 'Japanese', 'navired@gmail.com', '', 'navi', 'navi'),
(10, 'Juan', 'Dela Cruz', 'Male', '2016-01-05', '', 'English', '', 'Japanese', 'juan@yahoo.com', '', 'juan', 'juan'),
(12, 'Aaron', 'Pillo', 'Male', '2016-09-07', '', 'English', '', 'Japanese', 'aaron@yahoo.com', '', 'aa', 'aa'),
(43, 'darl', 'darl', 'Male', '2016-10-03', '', '', 'Filipino', '', 'darl@gmail.com', '', 'thedarlknight', '1234567890'),
(34, 'Grace', 'Vanderwaal', 'Female', '2016-09-13', '', 'English', '', '', 'grace@gmail.com', '', 'grace', 'gracce');

-- --------------------------------------------------------

--
-- Table structure for table `registered`
--

CREATE TABLE IF NOT EXISTS `registered` (
  `studPosition` text NOT NULL,
  `studNumber` int(9) NOT NULL,
  `studLname` varchar(20) NOT NULL,
  `studFname` varchar(20) NOT NULL,
  `studMname` varchar(20) NOT NULL,
  `studSex` text NOT NULL,
  `studAddress` varchar(50) NOT NULL,
  `studGrade` text,
  `studSection` varchar(20) DEFAULT NULL,
  `studUname` varchar(20) NOT NULL,
  `studPword` varchar(20) NOT NULL,
  PRIMARY KEY (`studNumber`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registered`
--

INSERT INTO `registered` (`studPosition`, `studNumber`, `studLname`, `studFname`, `studMname`, `studSex`, `studAddress`, `studGrade`, `studSection`, `studUname`, `studPword`) VALUES
('Admin', 1, 'Tungul', 'Roseph Darl', 'Razon', 'Male', '99 San Nicolas 1st Sasmuan, Pampanga', '', '', 'Rosephd17', 'Rosephd17'),
('Librarian', 2, 'Guina', 'Junie Ann', 'Bamba', 'Female', 'Floridablanca, Pampanga', '', '', 'Junieann24', 'Junieann24'),
('Librarian', 3, 'Nieto', 'Ivan', 'Pancho', 'Male', 'St. Peter Guagua, Pampanga', '', '', 'Nietonavi22', 'Nietonavi22'),
('Student', 4, 'Dizon', 'Allyza Marie', 'G', 'Male', 'San Nicolas Guagua, Pampanga', 'Grade 10', 'St. Martin de Porres', 'AMdizon10', 'AMdizon10'),
('Teacher', 5, 'Maninang', 'Alvin', 'A', 'Male', 'Sta. Lucia Sasmuan, Pampanga', 'Grade 10', '', 'Alvinm10', 'Alvinm10');

-- --------------------------------------------------------

--
-- Table structure for table `trans`
--

CREATE TABLE IF NOT EXISTS `trans` (
  `recordNo` int(9) NOT NULL AUTO_INCREMENT,
  `transDate` datetime NOT NULL,
  `studNo` int(9) NOT NULL,
  `bookNumber` int(9) NOT NULL,
  `dateReturned` date NOT NULL,
  `fine` int(9) NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`recordNo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `trans`
--

INSERT INTO `trans` (`recordNo`, `transDate`, `studNo`, `bookNumber`, `dateReturned`, `fine`, `Status`) VALUES
(29, '2017-01-22 07:22:11', 3, 401, '2017-01-23', 0, 'Borrowed'),
(28, '2017-01-22 07:21:48', 2, 301, '2017-01-23', 0, 'Borrowed'),
(27, '2017-01-21 22:35:01', 1, 101, '2017-01-22', 0, 'Borrowed');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
