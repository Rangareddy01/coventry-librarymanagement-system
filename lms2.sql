-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2023 at 03:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(111) NOT NULL,
  `username` varchar(111) NOT NULL,
  `fullname` varchar(111) NOT NULL,
  `adminemail` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `username`, `fullname`, `adminemail`, `password`, `pic`) VALUES
(1, 'admin', 'Admin', 'admin@gmail.com', 'admin', 'user2.png');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `authorid` int(111) NOT NULL,
  `authorname` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`authorid`, `authorname`) VALUES
(9, 'Bjarne Stroustrup'),
(11, 'Marty. Alchin author.'),
(14, 'Tomas Beuzen'),
(15, 'George P. Nassos'),
(16, 'Vijay Pereira'),
(17, 'Gordon MacKay'),
(18, 'Breno Nunes'),
(19, 'Marshall T. Poe'),
(20, 'Samuel Moyn'),
(21, 'Abraham Ascher'),
(22, 'Caryl Phillips'),
(29, 'Yves J. Hilpisch'),
(30, 'Laura Cassell');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookid` int(100) NOT NULL,
  `bookpic` varchar(500) NOT NULL,
  `bookname` varchar(100) NOT NULL,
  `authorid` int(100) NOT NULL,
  `categoryid` int(100) NOT NULL,
  `ISBN` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `bookpic`, `bookname`, `authorid`, `categoryid`, `ISBN`, `price`, `quantity`, `status`) VALUES
(20, 'cplus.jpg', 'Pro Python', 11, 2, '9786613075178', 10, 8, 'Available'),
(22, 'python2.jpg', 'Python projects', 30, 2, '1-118-90889-9', 15, 3, 'Available'),
(28, 'c.jpg', 'Python packages', 14, 2, '9781003189251', 8, 7, 'Available'),
(29, 'sf1.jpg', 'Practical sustainability strategies: how to gain a competitive advantage', 15, 1, '9781119561095', 12, 6, 'Available'),
(30, 'sf2.jpg', 'Managing sustainable business relationships in a post Covid-19 era : towards a dodecahedron shaped s', 16, 1, '9783030961992', 13, 6, 'Available'),
(31, 'sf3.jpg', 'Evolving project leadership from command and control to engage and empower', 17, 1, '9781913305147', 11, 9, 'Available'),
(32, 'sf4.jpg', 'Sustainable operations management: key practices and cases', 18, 1, '9781003009375', 11, 8, 'Available'),
(33, 'nv1.jpg', 'How to Read a History Book', 19, 3, '9781780997292', 5, 8, 'Available'),
(34, 'nv2.jpg', 'Human Rights and the Uses of History', 20, 3, '9781781689004', 11, 7, 'Available'),
(35, 'nv3.jpg', 'Russia', 21, 3, '9781786071422', 11, 9, 'Available'),
(36, 'nv4.jpg', 'The Atlantic Sound', 22, 3, '9780099429968', 17, 5, 'Available'),
(40, 'java.jpg', 'Derivatives analytics with Python : data analysis, models, simulation, calibration and hedging', 29, 2, '1-119-03801-4', 15, 7, 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(111) NOT NULL,
  `categoryname` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `categoryname`) VALUES
(1, 'Business & Management'),
(2, 'Computer Science Programming'),
(3, 'History'),
(4, 'Novel');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `stdid` int(100) NOT NULL,
  `rating` int(100) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`stdid`, `rating`, `comment`, `date`) VALUES
(1, 5, 'I just love it', '2021-04-23'),
(3, 4, 'I just like it', '2021-04-23'),
(4, 3, 'It is awesome. Overall good', '2021-04-23'),
(1, 2, 'I dont like it', '2021-04-23'),
(23, 5, 'Nice Book', '2023-06-17'),
(23, 4, 'okay', '2023-06-17'),
(23, 3, 'okay', '2023-06-17');

-- --------------------------------------------------------

--
-- Table structure for table `issueinfo`
--

CREATE TABLE `issueinfo` (
  `studentid` int(100) NOT NULL,
  `bookid` int(100) NOT NULL,
  `issuedate` date NOT NULL,
  `returndate` date NOT NULL,
  `approve` varchar(200) NOT NULL,
  `fine` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issueinfo`
--

INSERT INTO `issueinfo` (`studentid`, `bookid`, `issuedate`, `returndate`, `approve`, `fine`) VALUES
(3, 20, '2023-06-17', '2023-06-24', 'Approve', 0),
(1, 22, '2021-04-19', '2021-04-21', '<p style=\"color:yellow; background-color:red;\">EXPIRED</p>', 20),
(23, 20, '2023-06-17', '2023-06-30', 'Approve', 0),
(23, 29, '2023-06-17', '2023-06-24', 'Approve', 0),
(23, 22, '2023-06-17', '2023-06-30', 'Approve', 0),
(23, 22, '2023-06-19', '2023-06-30', 'Approve', 0),
(23, 40, '0000-00-00', '0000-00-00', '', 0),
(23, 28, '2023-06-17', '2023-06-30', 'Approve', 0);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL,
  `sender` varchar(100) NOT NULL,
  `date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `username`, `message`, `status`, `sender`, `date`) VALUES
(2, 'Tahmid12', 'hello', 'yes', 'student', '04/20/2021 Tuesday, 05:08 PM'),
(3, 'Tahmid12', 'how are you??', 'yes', 'student', '04/20/2021 Tuesday, 05:08 PM'),
(4, 'Omur', 'I need a book. Can you help me??', 'yes', 'student', '04/23/2021 Friday, 12:27 PM'),
(5, 'Omur', 'Hello', 'no', 'admin', '04/23/2021 Friday, 12:58 PM'),
(6, 'Tahmid12', 'hello', 'yes', 'student', '04/23/2021 Friday, 01:00 PM'),
(7, 'Omur', 'how are you', 'no', 'admin', '04/23/2021 Friday, 02:00 PM'),
(8, 'Tahmid12', 'hello', 'yes', 'admin', '04/23/2021 Friday, 02:00 PM'),
(9, 'Tahmid12', 'hello', 'yes', 'student', '04/23/2021 Friday, 02:01 PM'),
(10, 'Tahmid12', 'how are you', 'yes', 'admin', '04/23/2021 Friday, 06:13 PM'),
(11, 'Tahmid12', 'hello i need a book', 'yes', 'student', '04/23/2021 Friday, 07:02 PM'),
(12, 'Tahmid12', 'hello', 'no', 'admin', '04/23/2021 Friday, 07:24 PM');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentid` int(111) NOT NULL,
  `student_username` varchar(111) NOT NULL,
  `FullName` varchar(111) NOT NULL,
  `Email` varchar(111) NOT NULL,
  `Password` varchar(111) NOT NULL,
  `PhoneNumber` varchar(111) NOT NULL,
  `studentpic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentid`, `student_username`, `FullName`, `Email`, `Password`, `PhoneNumber`, `studentpic`) VALUES
(23, 'Geoff', 'Geoff Boycott', 'gb123@gmail.com', 'gb123', '47546355323', 'user2.png');

-- --------------------------------------------------------

--
-- Table structure for table `timer`
--

CREATE TABLE `timer` (
  `stdid` int(100) NOT NULL,
  `bid` int(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `timer`
--

INSERT INTO `timer` (`stdid`, `bid`, `date`) VALUES
(1, 22, '2021-04-21 23:22:00'),
(3, 20, '2023-06-24 17:18:00'),
(3, 20, '2023-06-24 17:19:00'),
(23, 20, '2023-06-30 17:21:00'),
(23, 29, '2023-06-24 21:29:00'),
(23, 22, '2023-06-30 17:31:00'),
(23, 22, '2023-06-30 18:16:00'),
(23, 28, '2023-06-30 18:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `trendingbook`
--

CREATE TABLE `trendingbook` (
  `bookid` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trendingbook`
--

INSERT INTO `trendingbook` (`bookid`) VALUES
(22),
(20),
(33),
(28);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`authorid`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `authorid` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryid` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentid` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
