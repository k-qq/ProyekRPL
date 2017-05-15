-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15 Mei 2017 pada 03.25
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 7.1.1

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
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `idAdmin` char(6) COLLATE utf8_bin NOT NULL,
  `userName` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(6) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi_pembayaran`
--

CREATE TABLE `konfirmasi_pembayaran` (
  `idKonfirm` char(6) COLLATE utf8_bin NOT NULL,
  `idTamu` char(6) COLLATE utf8_bin NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(60) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `email`, `password`) VALUES
(7, 'k@k.k', '$2y$10$TjeTBjz7hA5/1.BU5bSeremntzjNo0.NwWq8wb.uhWq'),
(8, 'a@a.a', '$2y$10$12SUrbSxMonjDNDoqMz0l.EGXll5kOjofyZOL9ipya5'),
(10, 'q@q.q', '$2y$10$ZcPaqxLfQbotZNfAP8RqAeyicHBoyGDSKp43aivUuMwenyqUzhrjm'),
(11, 'qw@qw.q', '$2y$10$h4cmSraRazBszJMxADCgHuQWyBt2phmtSBPfI9vgTfgcFKruVVgMq'),
(12, 'admin', '$2y$10$uTG0PPMHY1wObrcDmFSFeu9NLcf5pLpF8WUFO9rz5kXD5t8Dy6Wb.'),
(13, 'zaki', '$2y$10$1hPgamfl4sjEM3aKFxwOPeDdL2kexojLZ8uldttAKLwDkodo8Fr9S');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengunjung`
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
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `nama` varchar(20) COLLATE utf8_bin NOT NULL,
  `alamat` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(20) COLLATE utf8_bin NOT NULL,
  `pesan` varchar(250) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`nama`, `alamat`, `email`, `pesan`) VALUES
('qwd', 'qwdq', 'wdq', NULL),
('q', 'qq', 'q', NULL),
('qwd', 'qdw', 'qwd', 'dqw'),
('qwf', 'qwf', 'qwf', 'wf'),
('wfq', 'w', 'q', 'w'),
('nama', 'asem', 'as@em.com', 'jdfaokdoaskcoakovfakwofdka'),
('hendra', 'hendrahhh', 'hendra@aa.com', 'hei kamu yang manis'),
('aa', 'aa', 'aa@ss', 'aa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi_kamar`
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
-- Struktur dari tabel `room`
--

CREATE TABLE `room` (
  `noKamar` char(6) COLLATE utf8_bin NOT NULL,
  `hargaKamar` decimal(10,0) NOT NULL,
  `tipeKamar` varchar(10) COLLATE utf8_bin NOT NULL,
  `statusKamar` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktur dari tabel `validasi_pembayaran`
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
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD CONSTRAINT `konfirmasi_pembayaran_ibfk_1` FOREIGN KEY (`idTamu`) REFERENCES `pengunjung` (`idTamu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reservasi_kamar`
--
ALTER TABLE `reservasi_kamar`
  ADD CONSTRAINT `reservasi_kamar_ibfk_1` FOREIGN KEY (`noKamar`) REFERENCES `room` (`noKamar`),
  ADD CONSTRAINT `reservasi_kamar_ibfk_2` FOREIGN KEY (`idTamu`) REFERENCES `pengunjung` (`idTamu`);

--
-- Ketidakleluasaan untuk tabel `validasi_pembayaran`
--
ALTER TABLE `validasi_pembayaran`
  ADD CONSTRAINT `validasi_pembayaran_ibfk_1` FOREIGN KEY (`idKonfirm`) REFERENCES `konfirmasi_pembayaran` (`idKonfirm`),
  ADD CONSTRAINT `validasi_pembayaran_ibfk_2` FOREIGN KEY (`idAdmin`) REFERENCES `admin` (`idAdmin`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
