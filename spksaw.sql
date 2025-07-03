-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 02, 2025 at 04:39 AM
-- Server version: 10.3.39-MariaDB-0ubuntu0.20.04.2
-- PHP Version: 8.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aurelia_saw`
--

-- --------------------------------------------------------

--
-- Table structure for table `analisis_sensitivitas`
--

CREATE TABLE `analisis_sensitivitas` (
  `id_analisis` int(11) NOT NULL,
  `Id_admin` int(11) NOT NULL,
  `id_bobotkriteria` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `skor_skw` float NOT NULL,
  `peringkat` int(11) NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `analisis_sensitivitas`
--

INSERT INTO `analisis_sensitivitas` (`id_analisis`, `Id_admin`, `id_bobotkriteria`, `id_supplier`, `skor_skw`, `peringkat`, `timestamp`) VALUES
(1, 1, 1, 21, 2.146, 1, '2025-07-02 04:31:23'),
(2, 1, 1, 22, 1.64625, 2, '2025-07-02 04:31:23'),
(3, 1, 1, 23, 2.62525, 3, '2025-07-02 04:31:23'),
(4, 1, 1, 24, 2.396, 4, '2025-07-02 04:31:23'),
(5, 1, 1, 25, 2.43775, 5, '2025-07-02 04:31:23'),
(6, 1, 1, 26, 2.9585, 6, '2025-07-02 04:31:23'),
(7, 1, 1, 11, 2.5835, 1, '2025-07-02 04:31:24'),
(8, 1, 1, 12, 2.3335, 2, '2025-07-02 04:31:24'),
(9, 1, 1, 13, 1.271, 3, '2025-07-02 04:31:24'),
(10, 1, 1, 46, 3.0625, 4, '2025-07-02 04:31:24');

-- --------------------------------------------------------

--
-- Table structure for table `bobot_kriteria`
--

CREATE TABLE `bobot_kriteria` (
  `id_bobotkriteria` int(11) NOT NULL,
  `id_jenisbarang` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bobot_kriteria`
--

INSERT INTO `bobot_kriteria` (`id_bobotkriteria`, `id_jenisbarang`, `id_kriteria`, `bobot`) VALUES
(1, 1, 1, 0.5),
(2, 1, 2, 0.25),
(3, 1, 3, 1),
(4, 1, 4, 0.5),
(5, 1, 5, 0.75),
(6, 1, 6, 0.25),
(7, 2, 1, 0.5),
(8, 2, 2, 0.25),
(9, 2, 3, 1),
(10, 2, 4, 0.5),
(11, 2, 5, 0.75),
(12, 2, 6, 0.5),
(13, 3, 1, 0.5),
(14, 3, 2, 0.25),
(15, 3, 3, 0.75),
(16, 3, 4, 0.5),
(17, 3, 5, 0.75),
(18, 3, 6, 0.5),
(19, 4, 1, 0.5),
(20, 4, 2, 0.25),
(21, 4, 3, 0.75),
(22, 4, 4, 0.5),
(23, 4, 5, 0.75),
(24, 4, 6, 0.5),
(25, 5, 1, 0.5),
(26, 5, 2, 0.25),
(27, 5, 3, 0.75),
(28, 5, 4, 0.5),
(29, 5, 5, 0.75),
(30, 5, 6, 0.5),
(31, 6, 1, 0.5),
(32, 6, 2, 0.25),
(33, 6, 3, 0.75),
(34, 6, 4, 0.5),
(35, 6, 5, 0.75),
(36, 6, 6, 0.5),
(37, 7, 1, 0.5),
(38, 7, 2, 0.25),
(39, 7, 3, 0.75),
(40, 7, 4, 0.5),
(41, 7, 5, 0.75),
(42, 7, 6, 0.5),
(43, 8, 1, 0.5),
(44, 8, 2, 0.25),
(45, 8, 3, 0.75),
(46, 8, 4, 0.5),
(47, 8, 5, 0.75),
(48, 8, 6, 0.5),
(49, 9, 1, 0.5),
(50, 9, 2, 0.25),
(51, 9, 3, 0.75),
(52, 9, 4, 0.5),
(53, 9, 5, 0.75),
(54, 9, 6, 0.5),
(55, 10, 1, 0.75),
(56, 10, 2, 0.5),
(57, 10, 3, 1),
(58, 10, 4, 0.75),
(59, 10, 5, 0.75),
(60, 10, 6, 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_jenisbarang` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `hasil` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_jenisbarang`, `id_supplier`, `hasil`) VALUES
(72, 1, 1, 3.16675),
(73, 1, 2, 1.771),
(74, 1, 7, 0),
(75, 4, 3, 0),
(76, 4, 10, 1.5835),
(77, 2, 1, 0),
(78, 2, 2, 0),
(79, 2, 8, 0),
(80, 5, 4, 0),
(81, 6, 4, 0),
(82, 2, 3, 3.5),
(83, 2, 4, 2.5415),
(84, 3, 5, 1.7915),
(85, 3, 6, 2.146),
(86, 3, 7, 3),
(87, 3, 44, 2.0835),
(88, 4, 8, 3),
(89, 4, 9, 2.2085),
(90, 4, 45, 2.396),
(91, 4, 50, 2.271),
(92, 8, 21, 2.146),
(93, 8, 22, 1.64625),
(94, 8, 23, 2.62525),
(95, 8, 24, 2.396),
(96, 8, 25, 2.43775),
(97, 8, 26, 2.9585),
(98, 10, 35, 2.54225),
(99, 10, 36, 2.35475),
(100, 10, 37, 2.9375),
(101, 10, 38, 3.04225),
(102, 10, 39, 3.25025),
(103, 10, 40, 4.25),
(104, 10, 41, 2.54225),
(105, 10, 42, 2.47975),
(106, 10, 43, 1.95825),
(107, 5, 11, 2.5835),
(108, 5, 12, 2.3335),
(109, 5, 13, 1.271),
(110, 5, 46, 3.0625),
(111, 6, 14, 3.04175),
(112, 6, 15, 2.646),
(113, 6, 16, 1.62475),
(114, 6, 47, 2.25025),
(115, 9, 27, 2.9585),
(116, 9, 28, 2.27125),
(117, 9, 29, 2.9585),
(118, 9, 30, 2.9585),
(119, 9, 31, 2.87525),
(120, 9, 32, 2.9585),
(121, 9, 33, 2.45875),
(122, 9, 34, 2.70875),
(123, 9, 49, 2.52125),
(124, 7, 17, 1.54125),
(125, 7, 18, 3.25),
(126, 7, 19, 2.58375),
(127, 7, 20, 1.89625),
(128, 7, 48, 2.56275);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_barang`
--

CREATE TABLE `jenis_barang` (
  `id_jenisbarang` int(11) NOT NULL,
  `namaBarang` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jenis_barang`
--

INSERT INTO `jenis_barang` (`id_jenisbarang`, `namaBarang`) VALUES
(1, 'Televisi'),
(2, 'Kulkas'),
(3, 'Mesin Cuci'),
(4, 'AC'),
(5, 'Speaker'),
(6, 'Rice Cooker'),
(7, 'Blender'),
(8, 'Dispenser'),
(9, 'Kipas Angin'),
(10, 'Laptop');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `namaKriteria` varchar(30) NOT NULL,
  `sifat` enum('Benefit','Cost') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `namaKriteria`, `sifat`) VALUES
(1, 'kecepatan pengiriman', 'Benefit'),
(2, 'Tingkat Diskon', 'Benefit'),
(3, 'Pelayanan', 'Benefit'),
(4, 'garansi', 'Benefit'),
(5, 'keaslian barang', 'Benefit'),
(6, 'tempo pembayaran', 'Benefit');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_kriteria`
--

CREATE TABLE `nilai_kriteria` (
  `id_nilaikriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nilai_kriteria`
--

INSERT INTO `nilai_kriteria` (`id_nilaikriteria`, `id_kriteria`, `nilai`, `keterangan`) VALUES
(1, 2, 0.25, '0 % (Tidak ada)'),
(2, 2, 0.5, '1% - 10%'),
(3, 2, 1, '20 % lebih'),
(4, 3, 0.5, 'cukup'),
(5, 3, 0.75, 'puas'),
(6, 4, 0.25, 'tidak ada'),
(7, 4, 0.5, 'kurang dari 1 tahun'),
(8, 5, 1, 'Original / Asli'),
(9, 6, 1, 'Kurang dari 1 Minggu'),
(10, 6, 0.75, '1 minggu s/d 2 minggu'),
(11, 6, 0.5, '3 minggu s/d 4 minggu'),
(12, 1, 1, '1 Hari'),
(13, 1, 0.5, '7 hari - 1 bulan'),
(14, 1, 0.25, '1 bulan lebih'),
(15, 3, 1, 'sangat memuaskan'),
(16, 6, 0.25, '1 bulan lebih'),
(17, 5, 0.25, 'KW'),
(18, 5, 0.75, 'Original Plus'),
(19, 2, 0.75, '11% - 20%'),
(20, 3, 0, 'Sangat Buruk'),
(21, 3, 0.25, 'Buruk'),
(22, 4, 0.75, '1 Tahun - 2 Tahun'),
(23, 4, 1, '2 Tahun Lebih'),
(24, 5, 0.5, 'KW Super'),
(25, 1, 0.75, '2 Hari – 7 Hari');

-- --------------------------------------------------------

--
-- Table structure for table `nilai_supplier`
--

CREATE TABLE `nilai_supplier` (
  `id_nilaisupplier` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `id_jenisbarang` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `id_nilaikriteria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nilai_supplier`
--

INSERT INTO `nilai_supplier` (`id_nilaisupplier`, `id_supplier`, `id_jenisbarang`, `id_kriteria`, `id_nilaikriteria`) VALUES
(1, 1, 1, 1, 12),
(2, 1, 1, 2, 2),
(3, 1, 1, 3, 15),
(4, 1, 1, 4, 22),
(5, 1, 1, 5, 8),
(6, 1, 1, 6, 9),
(7, 2, 1, 1, 14),
(8, 2, 1, 2, 19),
(9, 2, 1, 3, 4),
(10, 2, 1, 4, 7),
(11, 2, 1, 5, 24),
(12, 2, 1, 6, 10),
(13, 3, 2, 1, 25),
(14, 3, 2, 2, 1),
(15, 3, 2, 3, 4),
(16, 3, 2, 4, 7),
(17, 3, 2, 5, 8),
(18, 3, 2, 6, 9),
(19, 4, 2, 1, 14),
(20, 4, 2, 2, 1),
(21, 4, 2, 3, 4),
(22, 4, 2, 4, 6),
(23, 4, 2, 5, 8),
(24, 4, 2, 6, 16),
(25, 5, 3, 1, 13),
(26, 5, 3, 2, 1),
(27, 5, 3, 3, 4),
(28, 5, 3, 4, 6),
(29, 5, 3, 5, 18),
(30, 5, 3, 6, 10),
(31, 6, 3, 1, 14),
(32, 6, 3, 2, 3),
(33, 6, 3, 3, 4),
(34, 6, 3, 4, 7),
(35, 6, 3, 5, 18),
(36, 6, 3, 6, 9),
(37, 7, 3, 1, 12),
(38, 7, 3, 2, 2),
(39, 7, 3, 3, 15),
(40, 7, 3, 4, 22),
(41, 7, 3, 5, 8),
(42, 7, 3, 6, 10),
(43, 8, 4, 1, 12),
(44, 8, 4, 2, 2),
(45, 8, 4, 3, 15),
(46, 8, 4, 4, 22),
(47, 8, 4, 5, 8),
(48, 8, 4, 6, 10),
(49, 9, 4, 1, 13),
(50, 9, 4, 2, 3),
(51, 9, 4, 3, 5),
(52, 9, 4, 4, 7),
(53, 9, 4, 5, 18),
(54, 9, 4, 6, 11),
(55, 10, 4, 1, 14),
(56, 10, 4, 2, 1),
(57, 10, 4, 3, 4),
(58, 10, 4, 4, 7),
(59, 10, 4, 5, 17),
(60, 10, 4, 6, 9),
(61, 11, 5, 1, 12),
(62, 11, 5, 2, 2),
(63, 11, 5, 3, 15),
(64, 11, 5, 4, 7),
(65, 11, 5, 5, 8),
(66, 11, 5, 6, 16),
(67, 12, 5, 1, 25),
(68, 12, 5, 2, 2),
(69, 12, 5, 3, 5),
(70, 12, 5, 4, 7),
(71, 12, 5, 5, 18),
(72, 12, 5, 6, 10),
(73, 13, 5, 1, 14),
(74, 13, 5, 2, 1),
(75, 13, 5, 3, 21),
(76, 13, 5, 4, 7),
(77, 13, 5, 5, 17),
(78, 13, 5, 6, 10),
(79, 14, 6, 1, 12),
(80, 14, 6, 2, 2),
(81, 14, 6, 3, 15),
(82, 14, 6, 4, 22),
(83, 14, 6, 5, 8),
(84, 14, 6, 6, 10),
(85, 15, 6, 1, 25),
(86, 15, 6, 2, 19),
(87, 15, 6, 3, 5),
(88, 15, 6, 4, 7),
(89, 15, 6, 5, 8),
(90, 15, 6, 6, 10),
(91, 16, 6, 1, 14),
(92, 16, 6, 2, 1),
(93, 16, 6, 3, 21),
(94, 16, 6, 4, 6),
(95, 16, 6, 5, 18),
(96, 16, 6, 6, 9),
(97, 17, 7, 1, 14),
(98, 17, 7, 2, 1),
(99, 17, 7, 3, 21),
(100, 17, 7, 4, 6),
(101, 17, 7, 5, 24),
(102, 17, 7, 6, 9),
(103, 18, 7, 1, 12),
(104, 18, 7, 2, 2),
(105, 18, 7, 3, 5),
(106, 18, 7, 4, 22),
(107, 18, 7, 5, 8),
(108, 18, 7, 6, 9),
(109, 19, 7, 1, 13),
(110, 19, 7, 2, 2),
(111, 19, 7, 3, 4),
(112, 19, 7, 4, 7),
(113, 19, 7, 5, 8),
(114, 19, 7, 6, 9),
(115, 20, 7, 1, 13),
(116, 20, 7, 2, 2),
(117, 20, 7, 3, 4),
(118, 20, 7, 4, 7),
(119, 20, 7, 5, 17),
(120, 20, 7, 6, 10),
(121, 21, 8, 1, 13),
(122, 21, 8, 2, 2),
(123, 21, 8, 3, 5),
(124, 21, 8, 4, 7),
(125, 21, 8, 5, 17),
(126, 21, 8, 6, 9),
(127, 22, 8, 1, 14),
(128, 22, 8, 2, 2),
(129, 22, 8, 3, 4),
(130, 22, 8, 4, 7),
(131, 22, 8, 5, 17),
(132, 22, 8, 6, 10),
(133, 23, 8, 1, 13),
(134, 23, 8, 2, 3),
(135, 23, 8, 3, 4),
(136, 23, 8, 4, 22),
(137, 23, 8, 5, 8),
(138, 23, 8, 6, 10),
(139, 24, 8, 1, 13),
(140, 24, 8, 2, 2),
(141, 24, 8, 3, 5),
(142, 24, 8, 4, 7),
(143, 24, 8, 5, 18),
(144, 24, 8, 6, 10),
(145, 25, 8, 1, 13),
(146, 25, 8, 2, 2),
(147, 25, 8, 3, 4),
(148, 25, 8, 4, 22),
(149, 25, 8, 5, 18),
(150, 25, 8, 6, 9),
(151, 26, 8, 1, 12),
(152, 26, 8, 2, 2),
(153, 26, 8, 3, 5),
(154, 26, 8, 4, 7),
(155, 26, 8, 5, 8),
(156, 26, 8, 6, 9),
(157, 27, 9, 1, 13),
(158, 27, 9, 2, 2),
(159, 27, 9, 3, 5),
(160, 27, 9, 4, 7),
(161, 27, 9, 5, 8),
(162, 27, 9, 6, 10),
(163, 28, 9, 1, 13),
(164, 28, 9, 2, 2),
(165, 28, 9, 3, 4),
(166, 28, 9, 4, 7),
(167, 28, 9, 5, 17),
(168, 28, 9, 6, 9),
(169, 29, 9, 1, 13),
(170, 29, 9, 2, 2),
(171, 29, 9, 3, 5),
(172, 29, 9, 4, 7),
(173, 29, 9, 5, 8),
(174, 29, 9, 6, 10),
(175, 30, 9, 1, 13),
(176, 30, 9, 2, 2),
(177, 30, 9, 3, 5),
(178, 30, 9, 4, 7),
(179, 30, 9, 5, 8),
(180, 30, 9, 6, 10),
(181, 31, 9, 1, 13),
(182, 31, 9, 2, 2),
(183, 31, 9, 3, 4),
(184, 31, 9, 4, 22),
(185, 31, 9, 5, 8),
(186, 31, 9, 6, 10),
(187, 32, 9, 1, 13),
(188, 32, 9, 2, 2),
(189, 32, 9, 3, 5),
(190, 32, 9, 4, 7),
(191, 32, 9, 5, 8),
(192, 32, 9, 6, 10),
(193, 33, 9, 1, 14),
(194, 33, 9, 2, 2),
(195, 33, 9, 3, 4),
(196, 33, 9, 4, 7),
(197, 33, 9, 5, 8),
(198, 33, 9, 6, 10),
(199, 34, 9, 1, 13),
(200, 34, 9, 2, 2),
(201, 34, 9, 3, 4),
(202, 34, 9, 4, 7),
(203, 34, 9, 5, 8),
(204, 34, 9, 6, 10),
(205, 35, 10, 1, 14),
(206, 35, 10, 2, 2),
(207, 35, 10, 3, 4),
(208, 35, 10, 4, 7),
(209, 35, 10, 5, 18),
(210, 35, 10, 6, 10),
(211, 36, 10, 1, 13),
(212, 36, 10, 2, 2),
(213, 36, 10, 3, 4),
(214, 36, 10, 4, 7),
(215, 36, 10, 5, 17),
(216, 36, 10, 6, 10),
(217, 37, 10, 1, 13),
(218, 37, 10, 2, 2),
(219, 37, 10, 3, 5),
(220, 37, 10, 4, 22),
(221, 37, 10, 5, 17),
(222, 37, 10, 6, 10),
(223, 38, 10, 1, 13),
(224, 38, 10, 2, 2),
(225, 38, 10, 3, 4),
(226, 38, 10, 4, 7),
(227, 38, 10, 5, 8),
(228, 38, 10, 6, 9),
(229, 39, 10, 1, 13),
(230, 39, 10, 2, 2),
(231, 39, 10, 3, 5),
(232, 39, 10, 4, 7),
(233, 39, 10, 5, 8),
(234, 39, 10, 6, 10),
(235, 40, 10, 1, 12),
(236, 40, 10, 2, 3),
(237, 40, 10, 3, 5),
(238, 40, 10, 4, 22),
(239, 40, 10, 5, 8),
(240, 40, 10, 6, 9),
(241, 41, 10, 1, 14),
(242, 41, 10, 2, 2),
(243, 41, 10, 3, 4),
(244, 41, 10, 4, 7),
(245, 41, 10, 5, 18),
(246, 41, 10, 6, 10),
(247, 42, 10, 1, 13),
(248, 42, 10, 2, 19),
(249, 42, 10, 3, 4),
(250, 42, 10, 4, 7),
(251, 42, 10, 5, 17),
(252, 42, 10, 6, 10),
(253, 43, 10, 1, 14),
(254, 43, 10, 2, 2),
(255, 43, 10, 3, 21),
(256, 43, 10, 4, 7),
(257, 43, 10, 5, 17),
(258, 43, 10, 6, 9),
(259, 44, 3, 1, 13),
(260, 44, 3, 2, 19),
(261, 44, 3, 3, 4),
(262, 44, 3, 4, 7),
(263, 44, 3, 5, 18),
(264, 44, 3, 6, 10),
(265, 45, 4, 1, 13),
(266, 45, 4, 2, 19),
(267, 45, 4, 3, 4),
(268, 45, 4, 4, 7),
(269, 45, 4, 5, 8),
(270, 45, 4, 6, 9),
(271, 46, 5, 1, 12),
(272, 46, 5, 2, 3),
(273, 46, 5, 3, 5),
(274, 46, 5, 4, 22),
(275, 46, 5, 5, 8),
(276, 46, 5, 6, 9),
(277, 47, 6, 1, 13),
(278, 47, 6, 2, 2),
(279, 47, 6, 3, 4),
(280, 47, 6, 4, 7),
(281, 47, 6, 5, 8),
(282, 47, 6, 6, 10),
(283, 48, 7, 1, 13),
(284, 48, 7, 2, 2),
(285, 48, 7, 3, 4),
(286, 48, 7, 4, 22),
(287, 48, 7, 5, 18),
(288, 48, 7, 6, 9),
(289, 49, 9, 1, 13),
(290, 49, 9, 2, 2),
(291, 49, 9, 3, 4),
(292, 49, 9, 4, 7),
(293, 49, 9, 5, 18),
(294, 49, 9, 6, 10),
(295, 50, 4, 1, 13),
(296, 50, 4, 2, 19),
(297, 50, 4, 3, 4),
(298, 50, 4, 4, 7),
(299, 50, 4, 5, 8),
(300, 50, 4, 6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `namaSupplier` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `namaSupplier`) VALUES
(1, 'CV. Sinar Elektronik'),
(2, 'CV. Mega Teknologi'),
(3, 'CV. Cipta Abadi'),
(4, 'CV. Jaya Sejahtera'),
(5, 'CV. Global Elektronik'),
(6, 'CV. Elektronik Sejahtera'),
(7, 'CV. Jaya Elektronik'),
(8, 'CV. Max Jaya Putra'),
(9, 'CV. Putra Elektronik'),
(10, 'CV. Media Jaya Elektronik'),
(11, 'CV. Gajah Mada Elektronik '),
(12, 'CV. Tera Jaya Teknologi '),
(13, 'CV. Citra Abadi '),
(14, 'CV. Sinar Sejahtera '),
(15, 'CV. One Elektronik '),
(16, 'CV. Sejahtera '),
(17, 'CV. Mumu Elektronik'),
(18, 'CV. Bina Jaya '),
(19, 'CV. Mitra Elektronik '),
(20, 'CV. Meme Elektronik'),
(21, 'CV. Tirta Elektronik '),
(22, 'CV. Paus Teknologi'),
(23, 'CV. Tahta Jaya Abadi'),
(24, 'CV. Star Abadi Jaya'),
(25, 'CV. Eye Elektronik'),
(26, 'CV. Elektronik Tirta '),
(27, 'CV. Jaya Tirta'),
(28, 'CV. Elektronik Putra'),
(29, 'CV. Bunga Elektronik '),
(30, 'CV. Bina Elektronik'),
(31, 'CV. Jira Elektronik'),
(32, 'CV. Tirta Teknologi'),
(33, 'CV. Cahyo Abadi '),
(34, 'CV. Elektronik Jaya Putra'),
(35, 'CV. Leon Elektronik'),
(36, 'CV. Kuma Sejahtera'),
(37, 'CV. Jaya Sejahtera Elektronik'),
(38, 'CV. Elektra Putra'),
(39, 'CV. Nusantara Elektronik '),
(40, 'CV. Media Tirta Elektronik'),
(41, 'CV. Nur Elektronik'),
(42, 'CV. Jaya Mitra Teknologi'),
(43, 'CV. Zena Abadi'),
(44, 'CV. Jaya Merdeka Elektronik'),
(45, 'CV. Han Elektronik'),
(46, 'CV. Elektronik Jaya '),
(47, 'CV. Duo Elektronik'),
(48, 'CV. Coki Putra Elektronik'),
(49, 'CV. Nusa Elektronik Jaya'),
(50, 'CV. Media Elektronik');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id_admin` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id_admin`, `username`, `password`) VALUES
(1, 'user', '$2y$10$y2kM8AT/U3Tmb58Hgwi9Q.32iRKcxIfHRJWUzARdPScC0MfL04HVi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `analisis_sensitivitas`
--
ALTER TABLE `analisis_sensitivitas`
  ADD PRIMARY KEY (`id_analisis`),
  ADD KEY `Id_admin` (`Id_admin`),
  ADD KEY `id_bobotkriteria` (`id_bobotkriteria`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `bobot_kriteria`
--
ALTER TABLE `bobot_kriteria`
  ADD PRIMARY KEY (`id_bobotkriteria`),
  ADD KEY `id_jenisbarang` (`id_jenisbarang`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_jenisbarang` (`id_jenisbarang`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `jenis_barang`
--
ALTER TABLE `jenis_barang`
  ADD PRIMARY KEY (`id_jenisbarang`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `nilai_kriteria`
--
ALTER TABLE `nilai_kriteria`
  ADD PRIMARY KEY (`id_nilaikriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indexes for table `nilai_supplier`
--
ALTER TABLE `nilai_supplier`
  ADD PRIMARY KEY (`id_nilaisupplier`),
  ADD KEY `id_supplier` (`id_supplier`),
  ADD KEY `id_jenisbarang` (`id_jenisbarang`),
  ADD KEY `id_kriteria` (`id_kriteria`),
  ADD KEY `id_nilaikriteria` (`id_nilaikriteria`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `analisis_sensitivitas`
--
ALTER TABLE `analisis_sensitivitas`
  MODIFY `id_analisis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bobot_kriteria`
--
ALTER TABLE `bobot_kriteria`
  MODIFY `id_bobotkriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=223;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `jenis_barang`
--
ALTER TABLE `jenis_barang`
  MODIFY `id_jenisbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nilai_kriteria`
--
ALTER TABLE `nilai_kriteria`
  MODIFY `id_nilaikriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `nilai_supplier`
--
ALTER TABLE `nilai_supplier`
  MODIFY `id_nilaisupplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `analisis_sensitivitas`
--
ALTER TABLE `analisis_sensitivitas`
  ADD CONSTRAINT `analisis_sensitivitas_ibfk_1` FOREIGN KEY (`Id_admin`) REFERENCES `user` (`Id_admin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `analisis_sensitivitas_ibfk_2` FOREIGN KEY (`id_bobotkriteria`) REFERENCES `bobot_kriteria` (`id_bobotkriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `analisis_sensitivitas_ibfk_3` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bobot_kriteria`
--
ALTER TABLE `bobot_kriteria`
  ADD CONSTRAINT `bobot_kriteria_ibfk_1` FOREIGN KEY (`id_jenisbarang`) REFERENCES `jenis_barang` (`id_jenisbarang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bobot_kriteria_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `hasil_ibfk_1` FOREIGN KEY (`id_jenisbarang`) REFERENCES `jenis_barang` (`id_jenisbarang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hasil_ibfk_2` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nilai_kriteria`
--
ALTER TABLE `nilai_kriteria`
  ADD CONSTRAINT `nilai_kriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nilai_supplier`
--
ALTER TABLE `nilai_supplier`
  ADD CONSTRAINT `nilai_supplier_ibfk_1` FOREIGN KEY (`id_jenisbarang`) REFERENCES `jenis_barang` (`id_jenisbarang`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_supplier_ibfk_2` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_supplier_ibfk_3` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_supplier_ibfk_4` FOREIGN KEY (`id_nilaikriteria`) REFERENCES `nilai_kriteria` (`id_nilaikriteria`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
