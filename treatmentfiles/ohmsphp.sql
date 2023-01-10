-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2023 at 07:42 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ohmsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`adminid` int(10) NOT NULL,
  `adminname` varchar(25) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `usertype` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminname`, `loginid`, `password`, `status`, `usertype`) VALUES
(1, 'Joseph Spector', 'admin', 'Password@123', 'Active', '');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
`appointmentid` int(10) NOT NULL,
  `appointmenttype` varchar(25) NOT NULL,
  `patientid` int(10) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `appointmentdate` date NOT NULL,
  `appointmenttime` time NOT NULL,
  `doctorid` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `app_reason` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointmentid`, `appointmenttype`, `patientid`, `departmentid`, `appointmentdate`, `appointmenttime`, `doctorid`, `status`, `app_reason`) VALUES
(1, '', 1, 1, '2019-06-17', '03:00:00', 1, 'Approved', 'Fever'),
(2, '', 3, 2, '2021-06-25', '09:22:00', 2, 'Approved', 'this is a demo test'),
(4, '', 5, 4, '2021-06-24', '14:28:00', 5, 'Approved', 'demo demo demo'),
(5, '', 6, 7, '2021-06-24', '11:18:00', 7, 'Approved', 'Demo Test, Demo Reason!!'),
(6, '', 1, 1, '2023-01-06', '08:24:00', 1, 'Approved', ''),
(7, '', 7, 1, '2023-01-05', '22:47:00', 1, 'Approved', 'oasbva'),
(8, '', 8, 2, '2023-01-06', '23:45:00', 1, 'Approved', ''),
(9, '', 10, 1, '2023-01-10', '23:14:00', 1, 'Approved', 'abvdakjgda'),
(10, '', 11, 1, '2023-01-10', '23:26:00', 1, 'Approved', '');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE IF NOT EXISTS `billing` (
`billingid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `billingdate` date NOT NULL,
  `billingtime` time NOT NULL,
  `discount` float(10,2) NOT NULL,
  `taxamount` float(10,2) NOT NULL,
  `discountreason` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`billingid`, `patientid`, `appointmentid`, `billingdate`, `billingtime`, `discount`, `taxamount`, `discountreason`) VALUES
(1, 0, 0, '2019-06-15', '18:53:38', 0.00, 0.00, ''),
(2, 1, 1, '2019-06-15', '19:56:20', 0.00, 0.00, ''),
(3, 3, 2, '2021-06-24', '14:39:11', 0.00, 0.00, ' ,  , none , '),
(4, 5, 4, '2021-06-24', '18:48:00', 0.00, 0.00, 'none , '),
(5, 6, 5, '2021-06-24', '19:36:12', 0.00, 0.00, 'no discounts , '),
(6, 1, 6, '2023-01-05', '15:59:22', 0.00, 0.00, ''),
(7, 7, 7, '2023-01-05', '18:20:58', 0.00, 0.00, ''),
(8, 8, 8, '2023-01-06', '19:15:52', 0.00, 0.00, ' ,  , '),
(9, 10, 9, '2023-01-10', '18:47:24', 0.00, 0.00, ''),
(10, 11, 10, '2023-01-10', '18:54:25', 0.00, 0.00, ' , ');

-- --------------------------------------------------------

--
-- Table structure for table `billing_records`
--

CREATE TABLE IF NOT EXISTS `billing_records` (
`billingservice_id` int(10) NOT NULL,
  `billingid` int(10) NOT NULL,
  `bill_type_id` int(10) NOT NULL COMMENT 'id of service charge or treatment charge',
  `bill_type` varchar(250) NOT NULL,
  `bill_amount` float(10,2) NOT NULL,
  `bill_date` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing_records`
--

INSERT INTO `billing_records` (`billingservice_id`, `billingid`, `bill_type_id`, `bill_type`, `bill_amount`, `bill_date`, `status`) VALUES
(1, 2, 1, 'Consultancy Charge', 45.00, '2019-06-15', 'Active'),
(2, 2, 20, 'Treatment', 300.00, '2019-06-15', 'Active'),
(3, 2, 1, 'Prescription Charge', 45.00, '2019-06-15', 'Active'),
(4, 3, 2, 'Consultancy Charge', 55.00, '2021-06-24', 'Active'),
(5, 3, 20, 'Treatment', 300.00, '2021-06-24', 'Active'),
(6, 4, 5, 'Consultancy Charge', 75.00, '2021-06-24', 'Active'),
(7, 4, 20, 'Treatment', 179.00, '2021-06-24', 'Active'),
(8, 4, 2, 'Prescription Charge', 55.00, '2021-06-24', 'Active'),
(9, 5, 7, 'Consultancy Charge', 995.00, '2021-06-24', 'Active'),
(10, 5, 33, 'Treatment', 4850.00, '2021-06-24', 'Active'),
(11, 5, 3, 'Prescription Charge', 231.00, '2021-06-24', 'Active'),
(12, 6, 4, 'Prescription Charge', 15.00, '2023-01-05', 'Active'),
(13, 7, 1, 'Consultancy Charge', 7.00, '2023-01-05', 'Active'),
(14, 7, 21, 'Treatment', 70.00, '2023-01-05', 'Active'),
(15, 7, 21, 'Treatment', 70.00, '2023-01-05', 'Active'),
(16, 8, 1, 'Consultancy Charge', 7.00, '2023-01-06', 'Active'),
(17, 8, 20, 'Treatment', 179.00, '2023-01-06', 'Active'),
(18, 7, 5, 'Prescription Charge', 0.00, '2023-01-07', 'Active'),
(19, 7, 6, 'Prescription Charge', 0.00, '2023-01-07', 'Active'),
(20, 7, 7, 'Prescription Charge', 0.00, '2023-01-08', 'Active'),
(21, 8, 8, 'Prescription Charge', 84.00, '2023-01-08', 'Active'),
(22, 7, 21, 'Treatment', 70.00, '2023-01-08', 'Active'),
(23, 7, 9, 'Prescription Charge', 15.00, '2023-01-08', 'Active'),
(24, 9, 1, 'Consultancy Charge', 7.00, '2023-01-10', 'Active'),
(25, 9, 26, 'Treatment', 97560.00, '2023-01-10', 'Active'),
(26, 9, 26, 'Treatment', 97560.00, '2023-01-10', 'Active'),
(27, 10, 1, 'Consultancy Charge', 7.00, '2023-01-10', 'Active'),
(28, 10, 22, 'Treatment', 1750.00, '2023-01-10', 'Active'),
(29, 7, 20, 'Treatment', 179.00, '2023-01-10', 'Active'),
(30, 7, 22, 'Treatment', 1750.00, '2023-01-10', 'Active'),
(31, 7, 22, 'Treatment', 1750.00, '2023-01-10', 'Active'),
(32, 7, 22, 'Treatment', 1750.00, '2023-01-10', 'Active'),
(33, 7, 21, 'Treatment', 70.00, '2023-01-10', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
`departmentid` int(10) NOT NULL,
  `departmentname` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`departmentid`, `departmentname`, `description`, `status`) VALUES
(1, 'Medicine', 'Medicine', 'Active'),
(2, 'Cardiology', 'Provides medical care to patients who have problems with their heart or circulation.', 'Active'),
(3, 'Gynecology', 'Investigates and treats problems relating to the female urinary tract and reproductive organs, such as Endometriosis, infertility and incontinence', 'Active'),
(4, 'Haematology', 'These hospital services work with the laboratory. In addition doctors treat blood diseases and malignancies related to the blood', 'Active'),
(5, 'Maternity', 'Maternity wards provide antenatal care, delivery of babies and care during childbirth, and postnatal support', 'Active'),
(6, 'Nephrology', 'Monitors and assesses patients with various kidney (renal) problems and conditions', 'Active'),
(7, 'Oncology', 'A branch of medicine that deals with cancer and tumors. A medical professional who practices oncology is an oncologist. The Oncology department provides treatments, including radiotherapy and chemotherapy, for cancerous tumors and blood disorders', 'Active'),
(8, 'Orthopaedics', 'Treats conditions related to the musculoskeletal system, including joints, ligaments, bones, muscles, tendons and nerves', 'Active'),
(9, 'Radiology', 'Deals with the study and application of imaging technology like XRay', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
`doctorid` int(10) NOT NULL,
  `doctorname` varchar(50) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `departmentid` int(10) NOT NULL,
  `loginid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `education` varchar(25) NOT NULL,
  `experience` float(11,1) NOT NULL,
  `consultancy_charge` float(10,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctorid`, `doctorname`, `mobileno`, `departmentid`, `loginid`, `password`, `status`, `education`, `experience`, `consultancy_charge`) VALUES
(1, 'Carol Bosworth', '7002225650', 1, 'carol', 'password', 'Active', 'MBBS', 7.0, 7.00),
(2, 'Sirena S Rivera', '7023695696', 2, 'rivera', 'password', 'Active', 'DM', 4.0, 400.00),
(3, 'Will Williams', '7014545470', 2, 'wiliams', 'password', 'Active', 'DM', 7.0, 500.00),
(4, 'Thomas Borkowski', '7025558690', 3, 'thomas', 'password', 'Active', 'MD', 4.0, 155.00),
(5, 'Jason Graham', '7854025410', 4, 'jason', 'password', 'Active', 'DM', 5.0, 75.00),
(6, 'Viola McRoy', '7410002540', 5, 'viola', 'password', 'Active', 'MD', 8.0, 4200.00),
(7, 'Logan Fletcher', '7012569990', 7, 'logan', 'password', 'Active', 'MD', 5.0, 995.00),
(8, 'Ben Bernier', '7012225470', 6, 'ben', 'password', 'Active', 'DM', 3.0, 689.00);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_timings`
--

CREATE TABLE IF NOT EXISTS `doctor_timings` (
`doctor_timings_id` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_timings`
--

INSERT INTO `doctor_timings` (`doctor_timings_id`, `doctorid`, `start_time`, `end_time`, `status`) VALUES
(17, 35, '09:30:00', '13:00:00', 'Active'),
(18, 36, '13:30:00', '17:00:00', 'Active'),
(19, 37, '14:00:00', '18:00:00', 'Active'),
(20, 38, '17:00:00', '21:00:00', 'Active'),
(21, 39, '13:00:00', '19:00:00', 'Active'),
(22, 40, '07:00:00', '11:00:00', 'Active'),
(23, 41, '13:30:00', '16:30:00', 'Active'),
(24, 42, '11:30:00', '14:30:00', 'Active'),
(25, 43, '12:30:00', '16:30:00', 'Active'),
(26, 44, '21:30:00', '12:30:00', 'Active'),
(27, 36, '01:03:00', '13:03:00', 'Active'),
(28, 61, '11:11:00', '19:07:00', 'Active'),
(29, 35, '11:11:00', '16:44:00', 'Active'),
(30, 35, '01:10:00', '16:11:00', 'Active'),
(31, 35, '01:02:00', '15:04:00', 'Active'),
(32, 35, '16:25:00', '01:00:00', 'Active'),
(33, 1, '18:00:00', '00:02:00', 'Active'),
(34, 2, '07:36:00', '15:37:00', 'Active'),
(35, 7, '09:24:00', '16:24:00', 'Active'),
(36, 1, '04:00:00', '06:00:00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE IF NOT EXISTS `medicine` (
`medicineid` int(10) NOT NULL,
  `medicinename` varchar(25) NOT NULL,
  `medicinecost` float(10,2) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`medicineid`, `medicinename`, `medicinecost`, `description`, `status`) VALUES
(1, 'Paracetamol', 3.00, 'For fever per day 1 pc', 'Active'),
(2, 'Clotrimazole', 14.00, 'Clotrimazole is an antifungal, prescribed for local fungal infections', 'Active'),
(3, 'Miconazole', 26.00, 'Prescribed for various skin infections such as jockitch and also for vaginal yeast infections', 'Active'),
(4, 'Nystatin', 6.00, 'Antifungal drug, prescribed for fungal infections of the skin mouth vagina and intestinal tract', 'Active'),
(5, 'Lotensin', 3.00, 'prevent your body from forming angiotensin', 'Active'),
(6, 'Cozaan', 5.00, 'ARBs block the effects of angiotensin on your heart.', 'Active'),
(7, 'Lovenox', 59.00, 'may prescribe an anticoagulant to prevent heart attack, stroke, or other serious health problems', 'Active'),
(8, 'Abemaciclib', 278.00, 'drug for the treatment of advanced or metastatic breast cancers.', 'Active'),
(9, 'Cyclophosphamide', 231.00, ' to treat lymphoma, multiple myeloma, leukemia, ovarian cancer, breast cancer, small cell lung cancer', 'Active'),
(10, 'Captopril', 92.00, 'used alone or in combination with other medications to treat high blood pressure and heart failure.', 'Active'),
(11, 'Enalapril', 18.00, 'to treat high blood pressure, diabetic kidney disease, and heart failure', 'Active'),
(12, 'Ramipril', 31.00, 'to treat high blood pressure, diabetic kidney disease', 'Active'),
(13, 'Hydroxyurea', 55.00, 'used in sickle-cell disease, essential thrombocythemia, chronic myelogenous leukemia and cervical cancer', 'Active'),
(14, 'Phenprocoumon', 258.00, 'Used for prevention of thrombosis', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
`patientid` int(10) NOT NULL,
  `patientname` varchar(50) NOT NULL,
  `admissiondate` date NOT NULL,
  `admissiontime` time NOT NULL,
  `address` varchar(250) NOT NULL,
  `mobileno` varchar(15) NOT NULL,
  `city` varchar(25) NOT NULL,
  `pincode` varchar(20) NOT NULL,
  `loginid` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `bloodgroup` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patientid`, `patientname`, `admissiondate`, `admissiontime`, `address`, `mobileno`, `city`, `pincode`, `loginid`, `password`, `bloodgroup`, `gender`, `dob`, `status`) VALUES
(1, 'Johnny', '2019-06-15', '18:47:22', 'Dhanmondi', '2125798361', 'Dhaka', '1207', 'admin', '123456789', 'O+', 'MALE', '1990-01-01', 'Active'),
(3, 'Christine Moore', '2021-06-24', '14:38:04', '4327 Â Pride Avenue', '7012225690', 'Elmhurst', '63520', 'christine', 'password', 'A-', 'Female', '1992-02-12', 'Active'),
(4, 'Demoname', '2021-06-24', '15:26:32', 'demo address', '7474747474', 'demo city', '', 'demo', 'password', '', 'Male', '1995-02-02', 'Active'),
(5, 'Thomas Walters', '2021-06-24', '18:44:22', '1723  Cinnamon Lane', '7023658800', 'San Antonio', '', 'thomas', 'password', '', 'Female', '1992-03-12', 'Active'),
(6, 'Eryn Carlos', '2021-06-24', '19:34:27', '2649 Wayside Lane', '7012225896', 'San Jose', '', 'carlos', 'password', '', 'Female', '1994-03-12', 'Active'),
(7, 'abc', '2023-01-05', '18:18:01', 'xyz', '33522', 'xxyz', '', 'carol', '123456789', '', 'Male', '1984-01-07', 'Active'),
(8, 'abc', '2023-01-06', '19:14:25', 'xyz', '33522', 'xxyz', '', 'abc', '123456789', '', 'Male', '2023-01-06', 'Active'),
(9, 'sac', '2023-01-08', '19:54:04', 'acs', '242434242424', 'dvd', '4522', '12345', '12345', 'B-', 'MALE', '2023-01-07', 'Active'),
(10, 'Johnny', '2023-01-10', '18:43:45', 'Dhanmondi', '2125798361', 'Dhaka', '', 'admin', '123456789', '', 'Male', '1990-01-01', 'Active'),
(11, 'Johnny', '2023-01-10', '18:53:21', 'Dhanmondi', '2125798361', 'Dhaka', '', 'admin', '123456789', '', 'Male', '1990-01-01', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
`paymentid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `paiddate` date NOT NULL,
  `paidtime` time NOT NULL,
  `paidamount` float(10,2) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentid`, `patientid`, `appointmentid`, `paiddate`, `paidtime`, `paidamount`, `status`) VALUES
(1, 5, 4, '2021-06-24', '19:26:51', 324.45, 'Active'),
(2, 6, 5, '2021-06-24', '19:54:23', 6379.80, 'Active'),
(3, 3, 2, '2021-06-24', '19:56:33', 372.75, 'Active'),
(4, 3, 2, '2023-01-05', '15:55:25', 0.00, 'Active'),
(5, 3, 2, '2023-01-05', '18:13:08', 0.00, 'Active'),
(6, 8, 8, '2023-01-07', '19:26:52', 195.30, 'Active'),
(7, 8, 8, '2023-01-09', '19:50:05', 88.20, 'Active'),
(8, 11, 10, '2023-01-10', '18:59:59', 1844.85, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE IF NOT EXISTS `prescription` (
`prescriptionid` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `prescriptiondate` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `appointmentid` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescriptionid`, `doctorid`, `patientid`, `prescriptiondate`, `status`, `appointmentid`) VALUES
(1, 1, 1, '2019-06-17', 'Active', 1),
(2, 5, 5, '2021-06-25', 'Active', 4),
(3, 7, 6, '2021-06-25', 'Active', 5),
(4, 1, 1, '0000-00-00', 'Active', 6),
(5, 1, 7, '0000-00-00', 'Active', 7),
(6, 1, 7, '0000-00-00', 'Active', 7),
(7, 1, 7, '0000-00-00', 'Active', 7),
(8, 1, 8, '0000-00-00', 'Active', 8),
(9, 1, 7, '2023-01-12', 'Active', 7);

-- --------------------------------------------------------

--
-- Table structure for table `prescription_records`
--

CREATE TABLE IF NOT EXISTS `prescription_records` (
`prescription_record_id` int(10) NOT NULL,
  `prescription_id` int(10) NOT NULL,
  `medicine_name` varchar(25) NOT NULL,
  `cost` float(10,2) NOT NULL,
  `unit` int(10) NOT NULL,
  `dosage` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription_records`
--

INSERT INTO `prescription_records` (`prescription_record_id`, `prescription_id`, `medicine_name`, `cost`, `unit`, `dosage`, `status`) VALUES
(1, 1, '1', 3.00, 15, '1-1-1', 'Active'),
(2, 2, '13', 55.00, 1, '0-1-1', 'Active'),
(3, 3, '9', 231.00, 1, '1-0-1', 'Active'),
(4, 4, '1', 3.00, 5, '1-1-1', 'Active'),
(5, 8, '2', 14.00, 6, '0-1-1', 'Active'),
(8, 9, '1', 3.00, 5, '1-1-1', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `service_type`
--

CREATE TABLE IF NOT EXISTS `service_type` (
`service_type_id` int(10) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `servicecharge` float(10,2) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_type`
--

INSERT INTO `service_type` (`service_type_id`, `service_type`, `servicecharge`, `description`, `status`) VALUES
(10, 'X-ray', 250.00, 'To take fractured photo copy', 'Active'),
(11, 'Scanning', 450.00, 'To scan body from injury', 'Active'),
(12, 'MRI', 300.00, 'Regarding body scan', 'Active'),
(13, 'Blood Testing', 150.00, 'To detect the type of disease', 'Active'),
(14, 'Diagnosis', 210.00, 'To analyse the diagnosis', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE IF NOT EXISTS `treatment` (
`treatmentid` int(10) NOT NULL,
  `treatmenttype` varchar(25) NOT NULL,
  `treatment_cost` decimal(10,2) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treatmentid`, `treatmenttype`, `treatment_cost`, `note`, `status`) VALUES
(20, 'Blood Test', '179.00', 'test checks for levels of 10 different components of every major cell in your blood', 'Active'),
(21, 'Electrocardiogram', '70.00', 'Records the electrical activity of the heart', 'Active'),
(22, 'Echocardiogram', '1750.00', 'Provides an ultrasound picture that shows the structure of the heart chambers and surrounding areas, and it can show how well the heart is working.', 'Active'),
(23, 'Nuclear cardiology', '530.00', 'Nuclear imaging techniques use radioactive materials to study cardiovascular disorders and diseases in a noninvasive way.', 'Active'),
(24, 'Colposcopy', '318.00', 'procedure to visually examine the cervix as well as the vagina and vulva using a colposcope.', 'Active'),
(25, 'Colporrhaphy', '5518.00', 'surgical procedure in humans that repairs a defect in the wall of the vagina.', 'Active'),
(26, 'Spine Surgery', '97560.00', 'This entails opening the operative site with a long incision so the surgeon can view and access the spinal anatomy', 'Active'),
(27, 'Trauma surgery', '25448.00', 'surgical specialty that utilizes both operative and non-operative management to treat traumatic injuries, typically in an acute setting', 'Active'),
(28, 'Diagnostic Tests', '989.00', 'may include MRI, CT, Bone Scan, Ultra sound, blood tests', 'Active'),
(29, 'Chest XRay', '258.00', ' projection radiograph of the chest used to diagnose conditions affecting the chest, its contents, and nearby structures', 'Active'),
(30, 'Ultrasound of the Abdomen', '560.00', 'noninvasive procedure used to assess the organs and structures within the abdomen', 'Active'),
(31, 'Exercise Stress Test', '198.00', 'This test is good for evaluating chest pain to see if your heart is the cause.', 'Active'),
(32, 'Ultrasound of the Pelvis', '520.00', 'noninvasive diagnostic exam that produces images that are used to assess organs and structures within the female pelvis', 'Active'),
(33, 'Chemotherapy and Radiatio', '4850.00', 'Most common types of cancer treatment. They work by destroying these fast-growing cells.', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_records`
--

CREATE TABLE IF NOT EXISTS `treatment_records` (
`treatment_records_id` int(10) NOT NULL,
  `treatmentid` int(10) NOT NULL,
  `appointmentid` int(10) NOT NULL,
  `patientid` int(10) NOT NULL,
  `doctorid` int(10) NOT NULL,
  `treatment_description` text NOT NULL,
  `uploads` varchar(100) NOT NULL,
  `treatment_date` date NOT NULL,
  `treatment_time` time NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatment_records`
--

INSERT INTO `treatment_records` (`treatment_records_id`, `treatmentid`, `appointmentid`, `patientid`, `doctorid`, `treatment_description`, `uploads`, `treatment_date`, `treatment_time`, `status`) VALUES
(1, 20, 1, 1, 1, 'Fever \r\ntake paracitamol', '1746614148', '2019-06-15', '17:00:00', 'Active'),
(2, 20, 2, 3, 2, 'Demo Treatment Description...', '20245sample_image.jpg', '2021-06-24', '18:24:00', 'Active'),
(3, 20, 4, 5, 5, 'to study the morphology of blood and blood-forming tissues', '853sample_image.jpg', '2021-06-24', '16:40:00', 'Active'),
(4, 33, 5, 6, 7, 'based on small cell lung cancer', '25208sample_image.jpg', '2021-06-24', '15:22:00', 'Active'),
(5, 20, 8, 8, 1, '123', '24422', '2023-01-06', '23:47:00', 'Active'),
(6, 21, 7, 7, 1, 'abcd', '546601 LOGIN DETAILS & PROJECT INFO.txt', '2023-01-08', '22:13:00', 'Active'),
(9, 22, 10, 11, 1, 'whwhw', '1438301 LOGIN DETAILS & PROJECT INFO.txt', '2023-01-10', '23:26:00', 'Active'),
(10, 20, 7, 7, 1, 'gdggs', '30146ohmsphp.sql', '2023-01-10', '23:46:00', 'Active'),
(11, 22, 7, 7, 1, 'sfbsb', '28220ohmsphp.sql', '2023-01-10', '23:56:00', 'Active'),
(12, 22, 7, 7, 1, 'sfbsb', '6945ohmsphp.sql', '2023-01-10', '23:56:00', 'Active'),
(13, 22, 7, 7, 1, 'sfbsb', '26565ohmsphp.sql', '2023-01-10', '23:56:00', 'Active'),
(14, 21, 7, 7, 1, 'dsbs', '19270ohmsphp.sql', '2023-01-10', '23:57:00', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`adminid`), ADD UNIQUE KEY `adminname` (`adminname`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
 ADD PRIMARY KEY (`appointmentid`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
 ADD PRIMARY KEY (`billingid`);

--
-- Indexes for table `billing_records`
--
ALTER TABLE `billing_records`
 ADD PRIMARY KEY (`billingservice_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
 ADD PRIMARY KEY (`departmentid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
 ADD PRIMARY KEY (`doctorid`);

--
-- Indexes for table `doctor_timings`
--
ALTER TABLE `doctor_timings`
 ADD PRIMARY KEY (`doctor_timings_id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
 ADD PRIMARY KEY (`medicineid`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
 ADD PRIMARY KEY (`patientid`), ADD KEY `loginid` (`loginid`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
 ADD PRIMARY KEY (`paymentid`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
 ADD PRIMARY KEY (`prescriptionid`);

--
-- Indexes for table `prescription_records`
--
ALTER TABLE `prescription_records`
 ADD PRIMARY KEY (`prescription_record_id`);

--
-- Indexes for table `service_type`
--
ALTER TABLE `service_type`
 ADD PRIMARY KEY (`service_type_id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
 ADD PRIMARY KEY (`treatmentid`);

--
-- Indexes for table `treatment_records`
--
ALTER TABLE `treatment_records`
 ADD PRIMARY KEY (`treatment_records_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `adminid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
MODIFY `appointmentid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
MODIFY `billingid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `billing_records`
--
ALTER TABLE `billing_records`
MODIFY `billingservice_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
MODIFY `departmentid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
MODIFY `doctorid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `doctor_timings`
--
ALTER TABLE `doctor_timings`
MODIFY `doctor_timings_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
MODIFY `medicineid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
MODIFY `patientid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
MODIFY `paymentid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
MODIFY `prescriptionid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `prescription_records`
--
ALTER TABLE `prescription_records`
MODIFY `prescription_record_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `service_type`
--
ALTER TABLE `service_type`
MODIFY `service_type_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
MODIFY `treatmentid` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `treatment_records`
--
ALTER TABLE `treatment_records`
MODIFY `treatment_records_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
