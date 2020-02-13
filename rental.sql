-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2020 at 04:34 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Username` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `ID_Kasir` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Username`, `Password`, `ID_Kasir`) VALUES
('FarhanOtra', 'farhan123', 'Farhan'),
('Admin', '123', 'FarhanOtra');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `ID_Mobil` varchar(25) NOT NULL,
  `Merk` varchar(50) NOT NULL,
  `Warna` varchar(25) NOT NULL,
  `NomorPolisi` varchar(15) NOT NULL,
  `Harga` int(11) NOT NULL,
  `Deskripsi` varchar(250) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`ID_Mobil`, `Merk`, `Warna`, `NomorPolisi`, `Harga`, `Deskripsi`, `Status`) VALUES
('01', 'Avanza', 'Merah', 'BA 1021 OK', 500000, 'Bensin', 'Ready');

-- --------------------------------------------------------

--
-- Table structure for table `rentalmobil`
--

CREATE TABLE `rentalmobil` (
  `No_Rental` int(11) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `No_KTP` int(11) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `No_HP` varchar(25) NOT NULL,
  `ID_Kasir` varchar(25) NOT NULL,
  `ID_Mobil` varchar(25) NOT NULL,
  `Lama` int(11) NOT NULL,
  `Status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rentalmobil`
--

INSERT INTO `rentalmobil` (`No_Rental`, `Nama`, `No_KTP`, `Alamat`, `No_HP`, `ID_Kasir`, `ID_Mobil`, `Lama`, `Status`) VALUES
(12, 'Rivaldo', 12512512, 'Rao', '085435', 'Admin', 'A03', 1, 'DONE'),
(18, 'Rivaldo', 12344567, 'Padang', '0852435781', 'Admin', 'A01', 3, 'DONE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_Kasir`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`ID_Mobil`);

--
-- Indexes for table `rentalmobil`
--
ALTER TABLE `rentalmobil`
  ADD PRIMARY KEY (`No_Rental`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rentalmobil`
--
ALTER TABLE `rentalmobil`
  MODIFY `No_Rental` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
