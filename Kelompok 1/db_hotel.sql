-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2017 at 02:29 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` char(6) COLLATE utf8_bin NOT NULL,
  `userName` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(6) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi_pembayaran`
--

CREATE TABLE `konfirmasi_pembayaran` (
  `idKonfirm` char(6) COLLATE utf8_bin NOT NULL,
  `idTamu` char(6) COLLATE utf8_bin NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `idTamu` char(6) COLLATE utf8_bin NOT NULL,
  `userName` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(6) COLLATE utf8_bin NOT NULL,
  `alamat` varchar(50) COLLATE utf8_bin NOT NULL,
  `noTelp` int(13) NOT NULL,
  `email` varchar(5) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `reservasi_kamar`
--

CREATE TABLE `reservasi_kamar` (
  `idReservasi` char(6) COLLATE utf8_bin NOT NULL,
  `noKamar` char(6) COLLATE utf8_bin NOT NULL,
  `idTamu` char(6) COLLATE utf8_bin NOT NULL,
  `jumKamar` int(3) NOT NULL,
  `tglCheckIn` date NOT NULL,
  `tglCheckOut` date NOT NULL,
  `tanggalReservasi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `noKamar` char(6) COLLATE utf8_bin NOT NULL,
  `hargaKamar` decimal(10,0) NOT NULL,
  `tipeKamar` varchar(10) COLLATE utf8_bin NOT NULL,
  `statusKamar` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `validasi_pembayaran`
--

CREATE TABLE `validasi_pembayaran` (
  `idValidasi` char(6) COLLATE utf8_bin NOT NULL,
  `idKonfirm` char(6) COLLATE utf8_bin NOT NULL,
  `idAdmin` char(6) COLLATE utf8_bin NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`),
  ADD KEY `idAdmin` (`idAdmin`),
  ADD KEY `idAdmin_2` (`idAdmin`);

--
-- Indexes for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD PRIMARY KEY (`idKonfirm`),
  ADD KEY `idTamu` (`idTamu`),
  ADD KEY `idTamu_2` (`idTamu`),
  ADD KEY `idKonfirm` (`idKonfirm`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`idTamu`);

--
-- Indexes for table `reservasi_kamar`
--
ALTER TABLE `reservasi_kamar`
  ADD PRIMARY KEY (`idReservasi`),
  ADD KEY `noKamar` (`noKamar`),
  ADD KEY `idTamu` (`idTamu`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`noKamar`);

--
-- Indexes for table `validasi_pembayaran`
--
ALTER TABLE `validasi_pembayaran`
  ADD PRIMARY KEY (`idValidasi`),
  ADD KEY `idKonfirm` (`idKonfirm`),
  ADD KEY `idAdmin` (`idAdmin`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD CONSTRAINT `konfirmasi_pembayaran_ibfk_1` FOREIGN KEY (`idTamu`) REFERENCES `pengunjung` (`idTamu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reservasi_kamar`
--
ALTER TABLE `reservasi_kamar`
  ADD CONSTRAINT `reservasi_kamar_ibfk_1` FOREIGN KEY (`noKamar`) REFERENCES `room` (`noKamar`),
  ADD CONSTRAINT `reservasi_kamar_ibfk_2` FOREIGN KEY (`idTamu`) REFERENCES `pengunjung` (`idTamu`);

--
-- Constraints for table `validasi_pembayaran`
--
ALTER TABLE `validasi_pembayaran`
  ADD CONSTRAINT `validasi_pembayaran_ibfk_1` FOREIGN KEY (`idKonfirm`) REFERENCES `konfirmasi_pembayaran` (`idKonfirm`),
  ADD CONSTRAINT `validasi_pembayaran_ibfk_2` FOREIGN KEY (`idAdmin`) REFERENCES `admin` (`idAdmin`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
