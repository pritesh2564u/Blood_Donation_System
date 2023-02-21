-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2023 at 01:59 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_bank_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_event`
--

CREATE TABLE `blood_event` (
  `EVENT_ID` varchar(6) NOT NULL,
  `BRANCH_NO` varchar(6) DEFAULT NULL,
  `EVENT_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_event`
--

INSERT INTO `blood_event` (`EVENT_ID`, `BRANCH_NO`, `EVENT_DATE`) VALUES
('1', '1', '2023-12-16'),
('10', '10', '2023-01-03'),
('11', '11', '2023-02-16'),
('12', '12', '2023-03-25'),
('2', '2', '2023-04-21'),
('3', '3', '2023-06-25'),
('4', '4', '2023-12-16'),
('5', '5', '2023-05-08'),
('6', '6', '2023-05-06'),
('7', '7', '2023-09-24'),
('8', '8', '2023-07-15'),
('9', '9', '2023-10-09');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `BRANCH_NO` varchar(6) NOT NULL,
  `STREET` varchar(60) NOT NULL,
  `CITY` varchar(15) NOT NULL,
  `PINCODE` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BRANCH_NO`, `STREET`, `CITY`, `PINCODE`) VALUES
('1', 'Naroda', 'Ahmedabad', 388450),
('10', 'Sardar Bank road', 'Junagadh', 388121),
('11', 'Panwadi', 'Bhavnagar', 380052),
('12', 'D.N. high school', 'Anand', 394181),
('2', 'Bhatiya', 'Dwarka', 390019),
('3', 'Modasa', 'Arvalli', 388120),
('4', 'Samved voluntary blood', 'Jamanagar', 380051),
('5', 'Rajkot voluntary blood', 'Rajkot', 394180),
('6', 'Raktdan kendra', 'Surat', 363510),
('7', 'College road', 'Kheda', 382845),
('8', 'Bhuj', 'Kutch', 388451),
('9', 'Patadi', 'Porbandar', 390020);

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `DONOR_ID` int(11) NOT NULL,
  `DONOR_NAME` varchar(20) NOT NULL,
  `DONOR_BLOOD_TYPE` varchar(4) DEFAULT NULL,
  `DONOR_ADDRESS` varchar(100) NOT NULL,
  `DONOR_PHONENO` bigint(10) DEFAULT NULL,
  `DONOR_EMAIL` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`DONOR_ID`, `DONOR_NAME`, `DONOR_BLOOD_TYPE`, `DONOR_ADDRESS`, `DONOR_PHONENO`, `DONOR_EMAIL`) VALUES
(1, 'Pritesh Umraniya', 'O-', 'Petlad', 9574180580, 'pritesh2564@gmail.com'),
(2, 'Yash Vataliya', 'B+', 'Bareja', 9327528083, 'yash65@gmail.com'),
(3, 'Gautam Kanjariya', 'A-', 'Vadodara', 8799165998, 'gautam2104@gmail.com'),
(4, 'Fenil Modi', 'A+', 'Ahmedabad', 7990850583, 'fenil085@gmail.com'),
(5, 'Aryan Mehta', 'AB-', 'Ahmedabad', 8128740053, 'aryan12@gmail.com'),
(6, 'Vishal shah', 'B-', 'Vadodara', 9574180582, 'vishal23@gmail.com'),
(7, 'Axar Patel', 'A-', 'Petlad', 8325941530, 'axarpatel@gmail.com'),
(8, 'Jay Parmar', 'O+', 'Vadodara', 8325942916, 'jayparmar123@gmail.com'),
(9, 'Krunal Pitroda', 'B-', 'Surat', 8225933590, 'krunal109@gmail.com'),
(10, 'Smit Solanki', 'AB+', 'Surat', 8055227650, 'smit2111@gmail.com'),
(11, 'Amrut Umraniya', 'A-', 'Petlad', 6894948393, 'amrut1608@gmail.com'),
(12, 'Shailesh Rathod', 'A+', 'Bareja', 9647494753, 'shailesh123@gmail.com'),
(13, 'Rajan Patel', 'B-', 'Vadodara', 8785497589, 'rajan24@gmail.com'),
(14, 'Aman raval', 'AB+', 'Ahmedabad', 7990889467, 'amanraval@gmail.com'),
(15, 'Rajesh Vataliya', 'B-', 'Ahmedabad', 8128733376, 'rajesh@gmail.com'),
(16, 'Jigna sheth', 'B+', 'Vadodara', 9574180383, 'jigna@gmail.com'),
(17, 'Axar Patel', 'AB+', 'Petlad', 8325941862, 'axarpatel@gmail.com'),
(18, 'Axay Kumar', 'O-', 'Vadodara', 8325947738, 'axaykumar123@gmail.com'),
(19, 'Manish Pitroda', 'AB+', 'Surat', 8229573590, 'manish018@gmail.com'),
(20, 'Ajit Solanki', 'A+', 'Surat', 8000227650, 'ajit999@gmail.com'),
(21, 'Ruchit Desai', 'O+', 'Anand', 6574180580, 'ruchit221@gmail.com'),
(22, 'Dhruvi Raval', 'B+', 'Gandhinagar', 7327528083, 'dhruvi65@gmail.com'),
(23, 'Ashwin Maheswari', 'A-', 'Gandhinagar', 9099165998, 'ashwin4021@gmail.com'),
(24, 'Rajat Bhatiya', 'A+', 'Anand', 7922850583, 'rajat105@gmail.com'),
(25, 'Smita Singh', 'AB-', 'Anand', 7128740053, 'smita009@gmail.com'),
(26, 'Arjun Kumar', 'B-', 'Gandhinagar', 8274180582, 'arjunkumar23@gmail.com'),
(27, 'Hetvi Umraniya', 'O-', 'Surendranagar', 6025941530, 'hetvi2134@gmail.com'),
(28, 'Siddharth Mehta', 'O+', 'Surendranagar', 9925942916, 'siddharth123@gmail.com'),
(29, 'Varun Rathod', 'B-', 'Surendranagar', 8925933590, 'varun09@gmail.com'),
(30, 'Divya Bhaskar', 'AB+', 'Surendranagar', 9805227650, 'divya657@gmail.com'),
(34, 'Amrut', 'O-', 'petlad', 9998880001, 'priteshumraniya2564@gmail.com'),
(35, 'Pritesh', 'O+', 'petlad', 9995552221, 'priteshumraniya2564@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PATIENT_ID` varchar(6) NOT NULL,
  `PATIENT_NAME` varchar(20) NOT NULL,
  `PATIENT_BLOOD_TYPE` varchar(4) NOT NULL,
  `PATIENT_ADDRESS` varchar(100) NOT NULL,
  `PATIENT_PHONENO` bigint(10) DEFAULT NULL,
  `PATIENT_EMAIL` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PATIENT_ID`, `PATIENT_NAME`, `PATIENT_BLOOD_TYPE`, `PATIENT_ADDRESS`, `PATIENT_PHONENO`, `PATIENT_EMAIL`) VALUES
('P00001', 'Rakesh Sharma', 'A-', 'Petlad', 9574016525, 'rakesh64@gmail.com'),
('P00002', 'Rajat Sharma', 'A+', 'Bareja', 8206497355, 'rajat2@gmail.com'),
('P00003', 'Mohan Kumar', 'B-', 'Vadodara', 8105639588, 'mohan123@gmail.com'),
('P00004', 'Rohan Shah', 'B+', 'Ahmedabad', 6352929451, 'rohan648@gmail.com'),
('P00005', 'Shiv Mehta', 'AB-', 'Petlad', 9574016229, 'shivmehta64@gmail.com'),
('P00006', 'Rahul Patel', 'AB-', 'Bareja', 8206494525, 'patelrahul@gmail.com'),
('P00007', 'Dhruv Modi', 'AB+', 'Vadodara', 8105639659, 'dhruv121@gmail.com'),
('P00008', 'Soham Patel', 'AB+', 'Ahmedabad', 6352929145, 'sohampatel@gmail.com'),
('P00009', 'Sujal Khakhi', 'O-', 'Surat', 9428332666, 'sujal89@gmail.com'),
('P00010', 'Raiyan Mansuri', 'O+', 'Surat', 8200029500, 'raiyan456@gmail.com'),
('P00011', 'Avni Bhatt', 'AB-', 'Petlad', 9378376525, 'avni785@gmail.com'),
('P00012', 'Rinku Singh', 'AB+', 'Bareja', 6068497355, 'rinku321@gmail.com'),
('P00013', 'Vaishali Sharma', 'A-', 'Vadodara', 8000023588, 'vaishali@gmail.com'),
('P00014', 'Vidhi Patel', 'B-', 'Ahmedabad', 6355559739, 'vidhi94@gmail.com'),
('P00015', 'Riya Dalal', 'O-', 'Petlad', 9999668389, 'riya124@gmail.com'),
('P00016', 'Vijay Rathod', 'O+', 'Bareja', 81126494525, 'vijayrathod83@gmail.com'),
('P00017', 'Nayan Desai', 'A+', 'Vadodara', 7654639659, 'desainayan@gmail.com'),
('P00018', 'Ravi Parmar', 'B-', 'Ahmedabad', 6985469145, 'parmarravi78@gmail.com'),
('P00019', 'Nilesh Kumar', 'A+', 'Surat', 9079968666, 'nilesh890@gmail.com'),
('P00020', 'Manav Bhatt', 'B+', 'Surat', 8235289500, 'manav@gmail.com'),
('P00021', 'Kuldeep Maheswari', 'AB-', 'Anand', 8078376521, 'kuldeep587@gmail.com'),
('P00022', 'Kishan Sharma', 'AB+', 'Anand', 8068497350, 'kishansharma21@gmail.com'),
('P00023', 'Dhaval Patel', 'A-', 'Anand', 8111023588, 'dhaval@gmail.com'),
('P00024', 'Sanjay Raval', 'B-', 'Surendranagar', 6932159739, 'sanjay59@gmail.com'),
('P00025', 'Vrunda Khakhi', 'O-', 'Surendranagar', 8879668389, 'vrunda22@gmail.com'),
('P00026', 'Viral Joshi', 'O+', 'Surendranagar', 8110005250, 'viraljoshi83@gmail.com'),
('P00027', 'Ajit Parmar', 'A+', 'Gandhinagar', 7894639659, 'ajitparmar@gmail.com'),
('P00028', 'Ankita Parmar', 'B-', 'Gandhinagar', 6980019145, 'parmarankita90@gmail.com'),
('P00029', 'Pradeep Sharma', 'A+', 'Gandhinagar', 9079968555, 'pradeep50@gmail.com'),
('P00030', 'Varshil Bhatt', 'B+', 'Surendranagar', 8235266599, 'varshil290@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users_db`
--

CREATE TABLE `users_db` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phoneno` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_db`
--

INSERT INTO `users_db` (`id`, `username`, `fullname`, `email`, `password`, `phoneno`) VALUES
(1, 'yashvataliya65', 'Vataliya Yash Rajeshkumar', 'yashvataliya65@gmail.com', 'yash123', 9327528083),
(2, 'pritesh567', 'pritesh umraniya', 'pritesh123@gmail.com', 'pritesh123', 1234567890),
(3, 'pritesh_2564u', 'pritesh umraniya', 'priteshumraniya2564@gmail.com', 'pritesh', 928797957);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_event`
--
ALTER TABLE `blood_event`
  ADD PRIMARY KEY (`EVENT_ID`),
  ADD KEY `BRANCH_NO` (`BRANCH_NO`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`BRANCH_NO`),
  ADD UNIQUE KEY `PINCODE` (`PINCODE`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`DONOR_ID`),
  ADD UNIQUE KEY `DONOR_PHONENO` (`DONOR_PHONENO`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PATIENT_ID`),
  ADD UNIQUE KEY `PATIENT_PHONENO` (`PATIENT_PHONENO`);

--
-- Indexes for table `users_db`
--
ALTER TABLE `users_db`
  ADD PRIMARY KEY (`id`,`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `DONOR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users_db`
--
ALTER TABLE `users_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blood_event`
--
ALTER TABLE `blood_event`
  ADD CONSTRAINT `blood_event_ibfk_1` FOREIGN KEY (`BRANCH_NO`) REFERENCES `branch` (`BRANCH_NO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
