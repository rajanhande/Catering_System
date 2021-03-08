-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2019 at 09:13 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catering`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_food`
--

CREATE TABLE `add_food` (
  `ID` int(11) NOT NULL,
  `Item_Type` varchar(30) DEFAULT NULL,
  `Item_Name` varchar(30) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_food`
--

INSERT INTO `add_food` (`ID`, `Item_Type`, `Item_Name`, `Price`) VALUES
(1, 'Item 1', 'Item 2', 200),
(2, 'Pestree', 'Cake', 324),
(3, 'Pestree', 'Ice Cream', 324),
(4, 'Item 1', 'nava', 200),
(5, 'Non_veg', 'Biryani', 270),
(6, 'Item 1', 'ice creame', 250),
(7, 'veg ', 'pulava', 56),
(8, 'Cofee', 'hot cofee', 40);

-- --------------------------------------------------------

--
-- Table structure for table `add_material`
--

CREATE TABLE `add_material` (
  `ID` int(11) NOT NULL,
  `Item_Type` varchar(30) DEFAULT NULL,
  `Item_Name` varchar(30) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_material`
--

INSERT INTO `add_material` (`ID`, `Item_Type`, `Item_Name`, `Quantity`, `Price`) VALUES
(1, 'Item 1', 'Item 1', 2, 200),
(2, 'spoon', 'Basic', 6, 300),
(3, 'spoon', 'kata6', 8, 300),
(4, 'pot', 'pot', 5, 500),
(5, 'spoon', 'basic', 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `breakage`
--

CREATE TABLE `breakage` (
  `ID` int(11) NOT NULL,
  `Item_Type` varchar(30) DEFAULT NULL,
  `Item_Name` varchar(30) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Brk_Quantity` int(11) DEFAULT NULL,
  `Brk_Price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breakage`
--

INSERT INTO `breakage` (`ID`, `Item_Type`, `Item_Name`, `Price`, `Brk_Quantity`, `Brk_Price`) VALUES
(1, 'Item 2', 'Item 1', 300, 2, 600),
(2, 'spoon', 'kata', 20, 3, 60),
(3, 'spoon', 'basic', 10, 2, 20);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `MobNo` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Id`, `Name`, `Address`, `MobNo`) VALUES
(1, 'rajan', 'donwade', 9923067058),
(2, 'ajinkya', 'arli', 7744027300),
(3, 'amit', 'at :tasgaon tal: tasgaon', 8766556707);

-- --------------------------------------------------------

--
-- Table structure for table `food_details`
--

CREATE TABLE `food_details` (
  `Id` int(11) DEFAULT NULL,
  `BillId` int(11) DEFAULT NULL,
  `ProdId` int(11) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL,
  `Amt` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `food_master`
--

CREATE TABLE `food_master` (
  `Id` int(11) NOT NULL,
  `CustId` int(11) DEFAULT NULL,
  `TotalAmount` float DEFAULT NULL,
  `Discount` float DEFAULT NULL,
  `FinalAmount` float DEFAULT NULL,
  `Date` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `material`
--

CREATE TABLE `material` (
  `Customer_Name` varchar(30) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Mobile_no` bigint(20) DEFAULT NULL,
  `Item_Name` varchar(30) DEFAULT NULL,
  `Item_Type` varchar(30) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Net_Amount` double DEFAULT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_food`
--
ALTER TABLE `add_food`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `add_material`
--
ALTER TABLE `add_material`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `breakage`
--
ALTER TABLE `breakage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `food_master`
--
ALTER TABLE `food_master`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
