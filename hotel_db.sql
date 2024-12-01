-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2024 at 02:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `identitas` varchar(16) DEFAULT NULL,
  `tipe` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `durasi` int(11) DEFAULT NULL,
  `breakfast` tinyint(1) DEFAULT NULL,
  `total` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `nama`, `gender`, `identitas`, `tipe`, `tanggal`, `durasi`, `breakfast`, `total`) VALUES
(5, 'udin', 'Laki-laki', '8887868689', 300000, '2024-11-01', 4, 1, 'Rp 1.160.000'),
(6, 'ucup', 'Laki-laki', '23131243411231', 500000, '2024-11-02', 4, 0, 'Rp 1.800.000'),
(7, 'intan ', 'Perempuan', '999291921010', 300000, '2024-11-16', 3, 1, 'Rp 900.000'),
(8, 'fadil', 'Laki-laki', '23123213244', 500000, '2024-11-14', 3, 1, 'Rp 1.580.000'),
(9, 'fauzan', 'Laki-laki', '31217238238', 500000, '2024-11-29', 4, 1, 'Rp 1.880.000'),
(10, 'fauzan', 'Laki-laki', '1234567891', 300000, '2024-11-16', 4, 0, 'Rp 1.080.000'),
(11, 'pratiwi', 'Perempuan', '3201295507020001', 300000, '2024-12-04', 2, 1, '680000'),
(12, 'jojo', 'Laki-laki', '3201295507020002', 300000, '2024-12-02', 4, 1, '1160000'),
(13, 'jojo', 'Laki-laki', '3201295507020088', 500000, '2024-12-06', 4, 1, '1880000'),
(14, 'edwaeawe', 'Laki-laki', '1122321312321312', 500000, '2024-12-01', 1, 0, '500000'),
(15, 'hhjkkh', 'Laki-laki', '4524242474534535', 300000, '2024-12-01', 4, 1, '1160000'),
(16, 'fauzan nf', 'Laki-laki', '1234567891111111', 300000, '2024-12-05', 4, 0, '1080000'),
(17, 'sdfghj', 'Laki-laki', '1234567891111111', 500000, '2024-12-01', 4, 0, '1800000'),
(18, 'sdfghj', 'Laki-laki', '1234567891111111', 300000, '2024-12-25', 4, 0, '1080000'),
(19, 'sdfghj', 'Laki-laki', '1234567891111111', 300000, '2024-12-13', 4, 0, '1080000'),
(20, 'sdfghj', 'Laki-laki', '1234567891111111', 300000, '2024-12-05', 4, 0, '1080000'),
(21, 'sdfghj', 'Laki-laki', '1234567891111111', 300000, '2024-12-25', 4, 0, '1080000'),
(22, 'sdfghj', 'Laki-laki', '1234567891111111', 300000, '2024-12-25', 4, 0, '1080000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
