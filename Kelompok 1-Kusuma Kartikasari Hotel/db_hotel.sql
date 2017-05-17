-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2017 at 06:39 AM
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

CREATE TABLE IF NOT EXISTS `admin` (
  `idAdmin` char(6) COLLATE utf8_bin NOT NULL,
  `userName` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(6) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idAdmin`),
  UNIQUE KEY `userName` (`userName`),
  KEY `idAdmin` (`idAdmin`),
  KEY `idAdmin_2` (`idAdmin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idAdmin`, `userName`, `password`, `email`) VALUES
('123', 'ngad-min', 'adm12.', 'admin@kusuma.com');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi_pembayaran`
--

CREATE TABLE IF NOT EXISTS `konfirmasi_pembayaran` (
  `idKonfirm` char(6) COLLATE utf8_bin NOT NULL,
  `idTamu` char(6) COLLATE utf8_bin NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`idKonfirm`),
  KEY `idTamu` (`idTamu`),
  KEY `idTamu_2` (`idTamu`),
  KEY `idKonfirm` (`idKonfirm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(60) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`) VALUES
(7, 'k@k.k', '$2y$10$TjeTBjz7hA5/1.BU5bSeremntzjNo0.NwWq8wb.uhWq'),
(8, 'a@a.a', '$2y$10$12SUrbSxMonjDNDoqMz0l.EGXll5kOjofyZOL9ipya5'),
(10, 'q@q.q', '$2y$10$ZcPaqxLfQbotZNfAP8RqAeyicHBoyGDSKp43aivUuMwenyqUzhrjm'),
(11, 'qw@qw.q', '$2y$10$h4cmSraRazBszJMxADCgHuQWyBt2phmtSBPfI9vgTfgcFKruVVgMq'),
(12, '1@1.143', '$2y$10$wquE22Lw07QelhIldt1yA.577QUQD6B/2lv.Pdb.S5AwJPBl3.Ut6'),
(13, 'k@q.q', '$2y$10$xlpTImnhJBsM27W5vWJkE.rju1X5e5ftG6UVux87VtAs9x5CBeaUO');

-- --------------------------------------------------------

--
-- Table structure for table `order1`
--

CREATE TABLE IF NOT EXISTS `order1` (
  `idOrder` int(11) NOT NULL AUTO_INCREMENT,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `tipeKamar` varchar(20) COLLATE utf8_bin NOT NULL,
  `jumlahKamar` int(11) NOT NULL,
  `idGuest` int(11) NOT NULL,
  PRIMARY KEY (`idOrder`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `order1`
--

INSERT INTO `order1` (`idOrder`, `check_in`, `check_out`, `tipeKamar`, `jumlahKamar`, `idGuest`) VALUES
(4, '2017-05-24', '2017-05-26', 'Executive Suite 1', 1, 10),
(5, '0000-00-00', '0000-00-00', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order2`
--

CREATE TABLE IF NOT EXISTS `order2` (
  `idOrder` int(11) NOT NULL,
  `nama` varchar(30) COLLATE utf8_bin NOT NULL,
  `noId` varchar(20) COLLATE utf8_bin NOT NULL,
  `alamat` varchar(50) COLLATE utf8_bin NOT NULL,
  `negara` varchar(20) COLLATE utf8_bin NOT NULL,
  `kota` varchar(20) COLLATE utf8_bin NOT NULL,
  `provisni` varchar(20) COLLATE utf8_bin NOT NULL,
  `kodePos` int(10) NOT NULL,
  `noTelp` int(15) NOT NULL,
  `email` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`noId`),
  UNIQUE KEY `idOrder` (`idOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `order2`
--

INSERT INTO `order2` (`idOrder`, `nama`, `noId`, `alamat`, `negara`, `kota`, `provisni`, `kodePos`, `noTelp`, `email`) VALUES
(5, '1', '1', '1', 'Indonesia', '1', '1', 1, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE IF NOT EXISTS `pengunjung` (
  `idTamu` char(6) COLLATE utf8_bin NOT NULL,
  `userName` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(6) COLLATE utf8_bin NOT NULL,
  `alamat` varchar(50) COLLATE utf8_bin NOT NULL,
  `noTelp` int(13) NOT NULL,
  `email` varchar(5) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idTamu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE IF NOT EXISTS `pesan` (
  `idPesan` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(20) COLLATE utf8_bin NOT NULL,
  `alamat` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(20) COLLATE utf8_bin NOT NULL,
  `pesan` varchar(250) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idPesan`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`idPesan`, `nama`, `alamat`, `email`, `pesan`) VALUES
(2, 'q', 'qq', 'q', NULL),
(6, 'nama', 'asem', 'as@em.com', 'jdfaokdoaskcoakovfakwofdka');

-- --------------------------------------------------------

--
-- Table structure for table `reservasi_kamar`
--

CREATE TABLE IF NOT EXISTS `reservasi_kamar` (
  `idReservasi` char(6) COLLATE utf8_bin NOT NULL,
  `noKamar` char(6) COLLATE utf8_bin NOT NULL,
  `idTamu` char(6) COLLATE utf8_bin NOT NULL,
  `jumKamar` int(3) NOT NULL,
  `tglCheckIn` date NOT NULL,
  `tglCheckOut` date NOT NULL,
  `tanggalReservasi` date NOT NULL,
  PRIMARY KEY (`idReservasi`),
  KEY `noKamar` (`noKamar`),
  KEY `idTamu` (`idTamu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `noKamar` char(6) COLLATE utf8_bin NOT NULL,
  `hargaKamar` decimal(10,0) NOT NULL,
  `tipeKamar` varchar(20) COLLATE utf8_bin NOT NULL,
  `statusKamar` tinyint(1) NOT NULL,
  PRIMARY KEY (`noKamar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`noKamar`, `hargaKamar`, `tipeKamar`, `statusKamar`) VALUES
('102', '550000', ' Executive Suite 1', 0),
('103', '550000', ' Executive Suite 1', 0),
('104', '550000', ' Executive Suite 1', 0),
('111', '250000', 'Executive Cottage', 0),
('12', '550000', 'Executive Suite 1', 0),
('122', '200000', 'Deluxe', 0),
('133', '550000', 'Executive Suite 1', 0),
('222', '175000', 'Bussines Standard', 0),
('321', '275000', 'Executive', 0),
('33', '385000', 'Executive Suite', 0);

-- --------------------------------------------------------

--
-- Table structure for table `validasi_pembayaran`
--

CREATE TABLE IF NOT EXISTS `validasi_pembayaran` (
  `idValidasi` char(6) COLLATE utf8_bin NOT NULL,
  `idKonfirm` char(6) COLLATE utf8_bin NOT NULL,
  `idAdmin` char(6) COLLATE utf8_bin NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`idValidasi`),
  KEY `idKonfirm` (`idKonfirm`),
  KEY `idAdmin` (`idAdmin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
