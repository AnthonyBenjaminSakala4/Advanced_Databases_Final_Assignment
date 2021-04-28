-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 25, 2021 at 10:01 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_alu_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `Address`
--

CREATE TABLE `Address` (
  `Address_ID` int(11) NOT NULL,
  `Country` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Street` varchar(50) DEFAULT NULL,
  `House` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Address`
--

INSERT INTO `Address` (`Address_ID`, `Country`, `City`, `Street`, `House`) VALUES
(1, 'Rwanda', 'Kigali', 'KG-1', 6),
(2, 'Rwanda', 'Kigali', 'KG-2', 13),
(3, 'Rwanda', 'Kigali', 'KG-3', 7),
(4, 'Rwanda', 'Kigali', 'KG-4', 1),
(5, 'Rwanda', 'Kigali', 'KG-5', 3),
(6, 'Rwanda', 'Kigali', 'KG-6', 9),
(7, 'Rwanda', 'Kigali', 'KG-7', 10),
(8, 'Rwanda', 'Kigali', 'KG-8', 16),
(9, 'Rwanda', 'Kigali', 'KG-9', 2),
(10, 'Rwanda', 'Kigali', 'KG-10', 4);

-- --------------------------------------------------------

--
-- Table structure for table `Club`
--

CREATE TABLE `Club` (
  `Club_ID` int(11) NOT NULL,
  `Club_Name` varchar(100) DEFAULT NULL,
  `Number_Of_Members` int(11) DEFAULT NULL,
  `Facilitator_ID` int(11) DEFAULT NULL,
  `Department_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Club`
--

INSERT INTO `Club` (`Club_ID`, `Club_Name`, `Number_Of_Members`, `Facilitator_ID`, `Department_ID`) VALUES
(1, 'Robotics and AI Club', 10, 1, 1),
(2, 'IoT Junoirs', 11, 2, 1),
(3, 'LEAP Club', 12, 3, 1),
(4, 'Diversity Club', 13, 4, 2),
(5, 'Consulting Club', 14, 5, 2),
(6, 'Community Service Lab', 15, 6, 1),
(7, 'Women & Children’s health Society', 16, 7, 3),
(8, 'Books Sharing Society', 17, 8, 4),
(9, 'Model United Nations', 18, 9, 4),
(10, 'Debating Club', 19, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `Course`
--

CREATE TABLE `Course` (
  `Course_ID` int(11) NOT NULL,
  `Course_Name` varchar(100) NOT NULL,
  `Year_Taught` int(11) NOT NULL,
  `Term_Taught` int(11) NOT NULL,
  `Degree_ID` int(11) DEFAULT NULL,
  `Facilitator_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Course`
--

INSERT INTO `Course` (`Course_ID`, `Course_Name`, `Year_Taught`, `Term_Taught`, `Degree_ID`, `Facilitator_ID`) VALUES
(1, 'Data Mining', 4, 2, 1, 1),
(2, 'Databases Systems', 2, 1, 1, 9),
(3, 'Programming I - Python', 2, 1, 1, 8),
(4, 'Programming II - Java', 2, 2, 1, 8),
(5, 'Advanced Databases', 4, 2, 3, 10),
(6, 'Micro Economics', 3, 1, 3, 10),
(7, 'Data & Decision', 2, 1, 6, 10),
(8, 'Chemistry', 3, 1, 1, 5),
(9, 'Advance Physics', 4, 1, 1, 2),
(10, 'Networks', 4, 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Degree_Program`
--

CREATE TABLE `Degree_Program` (
  `Degree_ID` int(11) NOT NULL,
  `Degree_Name` varchar(100) NOT NULL,
  `Degree_Duration` int(11) DEFAULT NULL,
  `Department_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Degree_Program`
--

INSERT INTO `Degree_Program` (`Degree_ID`, `Degree_Name`, `Degree_Duration`, `Department_ID`) VALUES
(1, 'Computer Science', 4, 1),
(2, 'Global Challenges', 4, 2),
(3, 'International Business & Trade', 6, 1),
(4, 'Machinery & Engineering', 6, 1),
(5, 'Chemical Engineering', 1, 1),
(6, 'Accounts & Finance', 1, 1),
(7, 'Robotics', 1, 1),
(8, 'Africana Science', 1, 1),
(9, 'Social Science', 3, 1),
(10, 'Entreprenuership', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `Department_ID` int(11) NOT NULL,
  `Department_Name` varchar(50) DEFAULT NULL,
  `Number_Of_Faculty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`Department_ID`, `Department_Name`, `Number_Of_Faculty`) VALUES
(1, 'Humanities', 10),
(2, 'Enterpreneurship', 5),
(3, 'Global Academics', 15),
(4, 'Robotics and Automation', 6),
(5, 'Business and Finance', 20),
(6, 'Computing', 30),
(7, 'Chemical Engineering', 10),
(8, 'Architecture', 5),
(9, 'Applied Physics and Mathematics', 10),
(10, 'Africana Studies', 10);

-- --------------------------------------------------------

--
-- Table structure for table `Facilitator`
--

CREATE TABLE `Facilitator` (
  `Facilitator_ID` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Birth_date` date NOT NULL,
  `Address_ID` int(11) DEFAULT NULL,
  `Department_ID` int(11) DEFAULT NULL,
  `Staff_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Facilitator`
--

INSERT INTO `Facilitator` (`Facilitator_ID`, `First_Name`, `Last_Name`, `Email`, `Gender`, `Birth_date`, `Address_ID`, `Department_ID`, `Staff_ID`) VALUES
(1, 'Ruti', 'Dolphin', 'ruti@alueducation.com', 'Male', '1985-04-01', 1, 1, 1),
(2, 'Thadee', 'Gatera', 'thadee@alueducation.com', 'Male', '1987-02-01', 2, 1, 2),
(3, 'Robert', 'Wekesa', 'robert@alueducation.com', 'Male', '1985-03-01', 3, 1, 3),
(4, 'Donart', 'Ngarambe', 'donart@alueducation.com', 'Male', '1964-06-01', 4, 1, 4),
(5, 'Lucy', 'Cherono', 'lucy@alueducation.com', 'Female', '1985-05-01', 5, 1, 5),
(6, 'Clovis', 'Doe', 'clovis@alueducation.com', 'Male', '1989-01-01', 6, 1, 6),
(7, 'Obed', 'Nsya', 'obed@alueducation.com', 'Male', '1992-07-01', 7, 1, 7),
(8, 'Ellen', 'Doe', 'ellen@alueducation.com', 'Female', '1973-08-01', 8, 1, 8),
(9, 'Jame', 'Williams', 'williams@alueducation.com', 'Male', '1990-09-01', 9, 1, 9),
(10, 'Dave', 'Banda', 'dave@alueducation.com', 'Male', '1981-01-01', 10, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Grade`
--

CREATE TABLE `Grade` (
  `Grade_ID` int(11) NOT NULL,
  `GPA` int(11) NOT NULL,
  `Passed` tinyint(1) DEFAULT NULL,
  `Student_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Staff`
--

CREATE TABLE `Staff` (
  `Staff_ID` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Staff_Position` varchar(100) NOT NULL,
  `Address_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Staff`
--

INSERT INTO `Staff` (`Staff_ID`, `First_Name`, `Last_Name`, `Staff_Position`, `Address_ID`) VALUES
(1, 'Jame', 'Williams', 'Facilitator', 1),
(2, 'Gwen', 'Tembo', 'accountant', 2),
(3, 'Dorothy', 'Tutamu', 'accountant', 3),
(4, 'Donart', 'Ngarambe', 'Facilitator', 4),
(5, 'Anderson', 'James', 'Engineer', 5),
(6, 'Dave', 'Banda', 'Facilitator', 6),
(7, 'Obed', 'Nsya', 'Facilitator', 7),
(8, 'Ruth', 'Chin', 'accountant', 8),
(9, 'David', 'Lastman', 'Chemisty', 9),
(10, 'Ellen', 'Doe', 'Facilitator', 10);

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `Student_ID` int(11) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Birthdate` date NOT NULL,
  `Course_ID` int(11) DEFAULT NULL,
  `Address_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`Student_ID`, `First_Name`, `Last_Name`, `Email`, `Gender`, `Birthdate`, `Course_ID`, `Address_ID`) VALUES
(1, 'Anthony', 'Sakala', 'asakala@alustudent.com', 'Male', '1996-01-01', 1, 1),
(2, 'David', 'Masupa', 'dmasupa@alustudent.com', 'Male', '1998-04-01', 1, 1),
(3, 'Musa', 'Sherif', 'msherif@alustudent.com', 'Male', '1995-02-01', 1, 1),
(4, 'Ephraim', 'Mulilo', 'emulilo@alustudent.com', 'Male', '1999-05-01', 2, 1),
(5, 'Diane', 'Kwizera', 'dkwizera@alustudent.com', 'Female', '1996-05-01', 2, 1),
(6, 'Mamady', 'Kante', 'mkante@alustudent.com', 'Male', '1997-08-01', 2, 2),
(7, 'Judith', 'Chatiza', 'jchatiza@alustudent.com', 'Female', '1999-07-01', 3, 2),
(8, 'Bennedict', 'Okolie', 'bokolie@alustudent.com', 'Male', '1999-09-01', 3, 3),
(9, 'Samiratu', 'Ntohsi', 'sntohsi@alustudent.com', 'Female', '1998-05-01', 3, 3),
(10, 'Jamaima', 'Tembo', 'jtembo@alustudent.com', 'Female', '1995-10-01', 4, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Address`
--
ALTER TABLE `Address`
  ADD PRIMARY KEY (`Address_ID`);

--
-- Indexes for table `Club`
--
ALTER TABLE `Club`
  ADD PRIMARY KEY (`Club_ID`),
  ADD KEY `Facilitator_ID` (`Facilitator_ID`),
  ADD KEY `Department_ID` (`Department_ID`);

--
-- Indexes for table `Course`
--
ALTER TABLE `Course`
  ADD PRIMARY KEY (`Course_ID`),
  ADD KEY `Degree_ID` (`Degree_ID`),
  ADD KEY `Facilitator_ID` (`Facilitator_ID`);

--
-- Indexes for table `Degree_Program`
--
ALTER TABLE `Degree_Program`
  ADD PRIMARY KEY (`Degree_ID`),
  ADD KEY `Department_ID` (`Department_ID`);

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`Department_ID`);

--
-- Indexes for table `Facilitator`
--
ALTER TABLE `Facilitator`
  ADD PRIMARY KEY (`Facilitator_ID`),
  ADD KEY `Address_ID` (`Address_ID`),
  ADD KEY `Department_ID` (`Department_ID`),
  ADD KEY `Staff_ID` (`Staff_ID`);

--
-- Indexes for table `Grade`
--
ALTER TABLE `Grade`
  ADD PRIMARY KEY (`Grade_ID`),
  ADD KEY `Student_ID` (`Student_ID`);

--
-- Indexes for table `Staff`
--
ALTER TABLE `Staff`
  ADD PRIMARY KEY (`Staff_ID`),
  ADD KEY `Address_ID` (`Address_ID`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`Student_ID`),
  ADD KEY `Course_ID` (`Course_ID`),
  ADD KEY `Address_ID` (`Address_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Club`
--
ALTER TABLE `Club`
  ADD CONSTRAINT `club_ibfk_1` FOREIGN KEY (`Facilitator_ID`) REFERENCES `Facilitator` (`Facilitator_ID`),
  ADD CONSTRAINT `club_ibfk_2` FOREIGN KEY (`Department_ID`) REFERENCES `Department` (`Department_ID`);

--
-- Constraints for table `Course`
--
ALTER TABLE `Course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`Degree_ID`) REFERENCES `Degree_Program` (`Degree_ID`),
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`Facilitator_ID`) REFERENCES `Facilitator` (`Facilitator_ID`);

--
-- Constraints for table `Degree_Program`
--
ALTER TABLE `Degree_Program`
  ADD CONSTRAINT `degree_program_ibfk_1` FOREIGN KEY (`Department_ID`) REFERENCES `Department` (`Department_ID`);

--
-- Constraints for table `Facilitator`
--
ALTER TABLE `Facilitator`
  ADD CONSTRAINT `facilitator_ibfk_1` FOREIGN KEY (`Address_ID`) REFERENCES `Address` (`Address_ID`),
  ADD CONSTRAINT `facilitator_ibfk_2` FOREIGN KEY (`Department_ID`) REFERENCES `Department` (`Department_ID`),
  ADD CONSTRAINT `facilitator_ibfk_3` FOREIGN KEY (`Staff_ID`) REFERENCES `Staff` (`Staff_ID`);

--
-- Constraints for table `Grade`
--
ALTER TABLE `Grade`
  ADD CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`Student_ID`) REFERENCES `Student` (`Student_ID`);

--
-- Constraints for table `Staff`
--
ALTER TABLE `Staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`Address_ID`) REFERENCES `Address` (`Address_ID`);

--
-- Constraints for table `Student`
--
ALTER TABLE `Student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Course_ID`) REFERENCES `Course` (`Course_ID`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`Address_ID`) REFERENCES `Address` (`Address_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
