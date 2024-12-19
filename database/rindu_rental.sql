-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2024 at 07:58 PM
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
-- Database: `rindu_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2018-03-28 23:34:07');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `kode_booking` varchar(11) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `durasi` int(11) NOT NULL,
  `driver` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pickup` varchar(30) NOT NULL,
  `tgl_booking` date NOT NULL,
  `bukti_bayar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`kode_booking`, `id_mobil`, `tgl_mulai`, `tgl_selesai`, `durasi`, `driver`, `status`, `email`, `pickup`, `tgl_booking`, `bukti_bayar`) VALUES
('TRX00001', 13, '2024-12-26', '2024-12-26', 1, 450000, 'Menunggu Pembayaran', 'amelia.a2293@gmail.com', 'Pickup Sesuai Alamat', '2024-12-19', '');

-- --------------------------------------------------------

--
-- Table structure for table `cek_booking`
--

CREATE TABLE `cek_booking` (
  `kode_booking` varchar(8) NOT NULL,
  `id_mobil` int(11) NOT NULL,
  `tgl_booking` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cek_booking`
--

INSERT INTO `cek_booking` (`kode_booking`, `id_mobil`, `tgl_booking`, `status`) VALUES
('TRX00001', 8, '2019-05-26', 'Sudah Dibayar'),
('TRX00002', 9, '2019-05-26', 'Menunggu Pembayaran'),
('TRX00002', 9, '2019-05-27', 'Menunggu Pembayaran'),
('TRX00000', 11, '2022-09-08', 'Menunggu Pembayaran'),
('TRX00000', 11, '2022-09-09', 'Menunggu Pembayaran'),
('TRX00001', 8, '2019-05-26', 'Sudah Dibayar'),
('TRX00002', 9, '2019-05-26', 'Menunggu Pembayaran'),
('TRX00002', 9, '2019-05-27', 'Menunggu Pembayaran'),
('TRX00000', 11, '2022-09-08', 'Menunggu Pembayaran'),
('TRX00000', 11, '2022-09-09', 'Menunggu Pembayaran'),
('TRX00003', 13, '2024-12-19', 'Menunggu Pembayaran'),
('TRX00003', 13, '2024-12-20', 'Menunggu Pembayaran'),
('TRX00004', 16, '2024-12-21', 'Menunggu Pembayaran'),
('TRX00004', 16, '2024-12-22', 'Menunggu Pembayaran'),
('TRX00005', 16, '2024-12-21', 'Menunggu Pembayaran'),
('TRX00005', 16, '2024-12-22', 'Menunggu Pembayaran'),
('TRX00006', 18, '2024-12-19', 'Menunggu Pembayaran'),
('TRX00006', 18, '2024-12-20', 'Menunggu Pembayaran'),
('TRX00007', 21, '2024-12-20', 'Menunggu Pembayaran'),
('TRX00007', 21, '2024-12-21', 'Menunggu Pembayaran'),
('TRX00008', 13, '2024-12-21', 'Menunggu Pembayaran'),
('TRX00008', 13, '2024-12-22', 'Menunggu Pembayaran'),
('TRX00009', 19, '2024-12-22', 'Menunggu Pembayaran'),
('TRX00009', 19, '2024-12-23', 'Menunggu Pembayaran'),
('TRX00001', 13, '2024-12-26', 'Menunggu Pembayaran'),
('TRX00001', 13, '2024-12-27', 'Menunggu Pembayaran');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id_cu` int(11) NOT NULL,
  `nama_visit` varchar(100) DEFAULT NULL,
  `email_visit` varchar(120) DEFAULT NULL,
  `telp_visit` char(16) DEFAULT NULL,
  `pesan` longtext DEFAULT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id_cu`, `nama_visit`, `email_visit`, `telp_visit`, `pesan`, `tgl_posting`, `status`) VALUES
(1, 'Anuj Kumar', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1),
(2, 'kjk', 'jlkl@gmail.com', '98989898', 'kjlkjkljklj', '2018-03-06 14:01:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contactusinfo`
--

CREATE TABLE `contactusinfo` (
  `id_info` int(11) NOT NULL,
  `alamat_kami` tinytext DEFAULT NULL,
  `email_kami` varchar(255) DEFAULT NULL,
  `telp_kami` char(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contactusinfo`
--

INSERT INTO `contactusinfo` (`id_info`, `alamat_kami`, `email_kami`, `telp_kami`) VALUES
(1, 'Rindu Rental\r\nJl. Tugu Pahlawan No. 40, Bukit Cermin, Kecamatan Tanjungpinang Barat, Kota Tanjungpinang, Kepulauan Riau', 'rosarindu08@gmail.com', '085355770003');

-- --------------------------------------------------------

--
-- Table structure for table `merek`
--

CREATE TABLE `merek` (
  `id_merek` int(11) NOT NULL,
  `nama_merek` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `merek`
--

INSERT INTO `merek` (`id_merek`, `nama_merek`, `CreationDate`, `UpdationDate`) VALUES
(17, 'Toyota', '2024-12-13 07:57:35', NULL),
(18, 'Honda', '2024-12-13 08:24:09', NULL),
(19, 'Yamaha', '2024-12-13 08:34:25', NULL),
(20, 'Mitsubishi', '2024-12-13 08:44:32', NULL),
(21, 'Suzuki', '2024-12-13 08:53:23', NULL),
(22, 'Daihatsu', '2024-12-13 09:15:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` int(11) NOT NULL,
  `nama_mobil` varchar(150) DEFAULT NULL,
  `id_merek` int(11) DEFAULT NULL,
  `nopol` varchar(20) NOT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `bb` varchar(100) DEFAULT NULL,
  `tahun` int(6) DEFAULT NULL,
  `seating` int(11) DEFAULT NULL,
  `image1` varchar(120) DEFAULT NULL,
  `image2` varchar(120) DEFAULT NULL,
  `image3` varchar(120) DEFAULT NULL,
  `image4` varchar(120) DEFAULT NULL,
  `image5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `nama_mobil`, `id_merek`, `nopol`, `deskripsi`, `harga`, `bb`, `tahun`, `seating`, `image1`, `image2`, `image3`, `image4`, `image5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(13, 'Agya', 17, 'BP 1019 YY', '-', 350000, 'Bensin', 0, 5, 'agya1019(8).jpg', 'agya1019(5).jpg', 'agya1019(3).jpg', 'agya1019(10).jpg', 'agya1019(2).jpg', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 08:00:30', NULL),
(14, 'Agya', 17, 'BP 1436 TJ', '-', 250000, 'Bensin', 0, 4, 'agya1436.jpg', 'agya1436(4).jpg', 'agya1436(6).jpg', 'agya1436(2).jpg', 'agya1436(5).jpg', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 08:10:22', NULL),
(15, 'Avanza', 17, 'BP 1124 YY', '-', 350000, 'Bensin', 0, 6, 'avanza1124(1).jpg', 'avanza1124(7).jpg', 'avanza1124(8).jpg', 'avanza1124(2).jpg', 'avanza1124(5).jpg', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 08:15:35', NULL),
(16, 'Avanza', 17, 'BP 1564 TP', '-', 250000, 'Bensin', 0, 5, 'avanza1564(2).jpg', 'avanza1564(5).jpg', 'avanza1564(7).jpg', 'avanza1564(6).jpg', 'avanza1564(8).jpg', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 08:19:27', NULL),
(17, 'Avanza', 17, 'B 2376 KI', '-', 200000, 'Bensin', 0, 6, 'avanza2376.jpg', 'avanza2376(2).jpg', 'avanza2376(3).jpg', 'avanza2376(4).jpg', 'avanza2376(5).jpg', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 08:22:08', NULL),
(18, 'Brio', 18, 'BP 1151 RY', '-', 300000, 'Bensin', 0, 4, 'honda_brio1151(1).png', 'honda_brio1151(2).png', 'honda_brio1151(3).png', 'honda_brio1151(4).png', 'honda_brio1151(1).png', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 08:26:22', NULL),
(19, 'CBR', 18, 'BP 2624 QJ', 'Motor Sport', 170000, 'Bensin', 0, 2, 'honda_cbr2624(1).jpg', 'honda_cbr2624(2).jpg', 'honda_cbr2624(3).jpg', 'honda_cbr2624(4).jpg', 'honda_cbr2624(5).jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 08:29:38', NULL),
(20, 'InnovaReborn', 17, 'BP 1340 AR', '-', 500000, 'Bensin', 0, 5, 'innova1340.jpg', 'innova1340(2).jpg', 'innova1340(3).jpg', 'innova1340(4).jpg', 'innova1340.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 08:32:56', NULL),
(21, 'MioJ', 19, 'BP 4359 BR', 'Schooter Metic', 90000, 'Bensin', 0, 2, 'mio_j4359(1).jpg', 'mio_j4359(3).jpg', 'mio_j4359(1).jpg', 'mio_j4359(3).jpg', 'mio_j4359(1).jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 08:36:40', '2024-12-13 08:40:13'),
(22, 'MioJ', 19, 'BP 5272 TF', 'Scooter Matic', 70000, 'Bensin', 0, 2, 'mio5272(2).jpg', 'mio5272(3).jpg', 'mio5272(4).jpg', 'mio5272(2).jpg', 'mio5272(3).jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 08:38:49', '2024-12-13 08:39:47'),
(23, 'Mio', 19, 'BP 5744 IB', 'Scooter Metic', 70000, 'Bensin', 0, 2, 'mio5744(2).jpg', 'mio5744(3).jpg', 'mio5744(2).jpg', 'mio5744(3).jpg', 'mio5744(2).jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 08:41:58', NULL),
(24, 'Xpander', 20, 'BP 1642 MJ', '-', 400000, 'Bensin', 0, 6, 'mitsubishi_xpander_1642.jpg', 'mitsubishi_xpander_1642(2).jpg', 'mitsubishi_xpander_1642(3).jpg', 'mitsubishi_xpander_1642(7).jpg', 'mitsubishi_xpander_1642(10).jpg', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 08:45:57', NULL),
(25, 'Xpander', 20, 'BP 1294 MO', '-', 400000, 'Bensin', 0, 6, 'mitsubishi1294(2).jpg', 'mitsubishi1294(3).jpg', 'mitsubishi1294(4).jpg', 'mitsubishi1294(7).jpg', 'mitsubishi1294(8).jpg', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 08:48:31', NULL),
(26, 'SoulGT', 19, 'BP 5175 MR', 'Motor Metic', 110000, 'Bensin', 0, 2, 'soul_gt5175(1).jpg', 'soul_gt5175(2).jpg', 'soul_gt5175(3).jpg', 'soul_gt5175(1).jpg', 'soul_gt5175(2).jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 08:51:32', NULL),
(27, 'PickUp', 21, 'BP 8967 JF', '-', 250000, 'Bensin', 2015, 2, 'suzuki_pickup2015.jpg', 'suzuki_pickup2015(2).jpg', 'suzuki_pickup2015(3).jpg', 'suzuki_pickup2015(4).jpg', 'suzuki_pickup2015.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 08:55:56', NULL),
(28, 'Swift', 21, 'BP 1294 YT', '-', 249998, 'Bensin', 0, 4, 'suzuki_swift1294(1).jpg', 'suzuki_swift1294(2).jpg', 'suzuki_swift1294(3).jpg', 'suzuki_swift1294(5).jpg', 'suzuki_swift1294(1).jpg', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 08:59:16', NULL),
(29, 'Avanza', 17, '0', '-', 200000, 'Bensin', 0, 6, 'toyota_avanza(1).jpg', 'toyota_avanza(2).jpg', 'toyota_avanza(3).jpg', 'toyota_avanza(6).jpg', 'toyota_avanza(7).jpg', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 09:11:15', NULL),
(30, 'Xenia', 22, 'BP 1315 MO', 'Autometic', 250000, 'Bensin', 0, 5, 'xenia_automatic.jpg', 'xenia_automatic.jpg', 'xenia_automatic.jpg', 'xenia_automatic.jpg', 'xenia_automatic.jpg', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 09:17:01', NULL),
(31, 'Xenia', 22, 'BP 1329 RJ', '-', 350000, 'Bensin', 0, 6, 'xenia1329(1).jpg', 'xenia1329(2).jpg', 'xenia1329(3).jpg', 'xenia1329(8).jpg', 'xenia1329(9).jpg', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 09:20:12', NULL),
(32, 'XRide', 19, 'BP 4284 GT', 'Scooter Metic', 110000, 'Bensin', 0, 2, 'xride_4284(2).jpg', 'xride_4284(3).jpg', 'xride_4284(2).jpg', 'xride_4284(3).jpg', 'xride_4284(2).jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 09:23:55', NULL),
(33, 'XRide', 19, 'BP 4639 BR', 'Scooter Metic', 90000, 'Bensin', 0, 2, 'yamaha4639(2).jpg', 'yamaha4639(3).jpg', 'yamaha4639(2).jpg', 'yamaha4639(3).jpg', 'yamaha4639(2).jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2024-12-13 09:27:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `motor`
--

CREATE TABLE `motor` (
  `id_motor` int(11) NOT NULL,
  `nama_motor` varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `id_merk` int(11) DEFAULT NULL,
  `nopol` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `deskripsi` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `bb` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `tahun` int(6) DEFAULT NULL,
  `seating` int(11) DEFAULT NULL,
  `image1` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `image2` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `image3` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `image4` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `image5` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrackingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																																	<h2><font size=\"3\" style=\"font-weight: bold;\"><span class=\"purple\">Syarat</span> Ketentuan Penyewaan Kendaraan</font></h2><div><h4>\r\n	<span data-scayt_word=\"Persyaratan\" data-scaytid=\"1\">Persyaratan</span> Rental Kendaraan&nbsp;<span data-scayt_word=\"untuk\" data-scaytid=\"2\">untuk</span> <span data-scayt_word=\"Perusahaan\" data-scaytid=\"3\">Perusahaan</span></h4>\r\n<ul><li><li data-pm-slice=\"2 4 [&quot;ordered_list&quot;,{&quot;spread&quot;:false,&quot;startingNumber&quot;:1,&quot;start&quot;:114,&quot;end&quot;:835}]\"><li data-pm-slice=\"2 4 [&quot;ordered_list&quot;,{&quot;spread&quot;:false,&quot;startingNumber&quot;:1,&quot;start&quot;:883,&quot;end&quot;:1408}]\"><p>Dokumen yang harus dilampirkan:</p><ul data-spread=\"false\"><li><p>Fotokopi SIUP dan NPWP.</p></li><li><p>Fotokopi akte pendirian perusahaan.</p></li><li><p>Fotokopi Tanda Daftar Perusahaan (TDP).</p></li><li><p>Surat keterangan domisili perusahaan.</p></li><li><p>Surat pengesahan keputusan Menteri Hukum dan HAM.</p></li><li><p>Fotokopi KTP direksi dan pejabat yang bertanggung jawab terhadap unit kendaraan.</p></li><li><p>Surat kuasa (jika bukan direktur perusahaan yang bertanggung jawab).</p></li><li><p>Fotokopi SIM pengemudi.</p></li></ul></li><ul data-spread=\"false\"><li><p>===</p></li></ul></li></li></ul>\r\n<h4>\r\n	<span data-scayt_word=\"Persyaratan\" data-scaytid=\"53\">Persyaratan</span> Rental Kendaraan&nbsp;<span data-scayt_word=\"untuk\" data-scaytid=\"54\">untuk</span> <span data-scayt_word=\"Perorangan\" data-scaytid=\"85\">Perorangan</span></h4>\r\n<ul><li><p>Dokumen yang harus dilampirkan:</p><ul data-spread=\"false\"><li><p>Fotokopi KTP atau KITAS (pemohon dan penjamin).</p></li><li><p>Fotokopi SIM pemohon.</p></li><li><p>Fotokopi KK (Kartu Keluarga).</p></li><li><p>Fotokopi bukti kepemilikan rumah atau tempat tinggal.</p></li><li><p>Fotokopi PBB.</p></li><li><p>Foto kopi ID Card tempat bekerja (jika ada).</p></li><li><p>Kartu nama (jika ada).</p></li><li><p><br></p></li></ul></li></ul>\r\n<div style=\"padding:15px; background:#efefef\">\r\n	<h3 data-pm-slice=\"1 5 []\">Ketentuan Umum Penyewaan</h3><h4><ol data-spread=\"false\" start=\"1\"><li><p><strong>Durasi Rental:</strong></p><ul data-spread=\"false\"><li><p>Penyewaan kendaraan dihitung 1x24 jam.</p></li><li><p>Keterlambatan pengembalian kendaraan dikenakan charge Rp35.000 per jam (maksimal 5 jam). Jika keterlambatan lebih dari 5 jam, dikenakan tarif sewa per hari penuh.</p></li></ul></li><li><p><strong>Penggunaan Kendaraan:</strong></p><ul data-spread=\"false\"><li><p>Harga sewa lepas kunci sesuai dengan katalog.</p></li><li><p>Penggunaan dengan driver dikenakan biaya tambahan mulai dari Rp450.000 per hari (harga tergantung jenis mobil dan apakah termasuk bensin).</p></li><li><p>Paket harga bulanan lebih murah dibandingkan harga harian (contoh: Rp250.000/hari menjadi Rp5.200.000/bulan).</p></li><li><p>Kendaraan hanya boleh dikemudikan oleh orang yang memiliki SIM nasional Indonesia atau SIM internasional.</p></li></ul></li><li><p><strong>Pengisian Bahan Bakar:</strong></p><ul data-spread=\"false\"><li><p>Bensin menjadi tanggung jawab penyewa.</p></li><li><p>Kendaraan dikembalikan dengan kondisi bahan bakar seperti saat diterima.</p></li></ul></li><li><p><strong>Pengantaran Kendaraan:</strong></p><ul data-spread=\"false\"><li><p>Gratis pengantaran ke lokasi dalam wilayah Tepi Laut hingga Batu 11.</p></li><li><p>Di atas Batu 11 dikenakan charge untuk pengantaran kendaraan (menggunakan jasa Gojek dari Rindu Rental).</p></li></ul></li><li><p><strong>Deposit dan Jaminan:</strong></p><ul data-spread=\"false\"><li><p>Penyewa wajib memberikan jaminan berupa SIM dan KTP.</p></li><li><p>Uang deposit diperlukan sebagai jaminan asuransi dan dikembalikan di akhir masa sewa jika tidak ada pelanggaran ketentuan.</p></li></ul></li><li><p><strong>Kondisi Kendaraan:</strong></p><ul data-spread=\"false\"><li><p>Kendaraan harus dirawat dengan baik oleh penyewa.</p></li><li><p>Dilarang meninggalkan STNK, kunci kontak, dan karcis parkir di dalam kendaraan yang sedang diparkir.</p></li><li><p>Penggantian kendaraan tidak berlaku jika kerusakan atau kecelakaan disebabkan kelalaian penyewa.</p></li></ul></li></ol></h4>\r\n</div>\r\n<p>&nbsp;</p></div>																																	'),
(5, 'Rekening', 'rekening', '0218532950 Bank BNI a/n HEMILTA ROZA&nbsp;<div>3801369381 Bank BCA a/n HEMILTA ROZA<!-- notionvc: a87af1da-8737-4a6a-8ba0-ab9a83a77e38 -->																						</div>'),
(0, 'Driver', 'driver', '450000'),
(2, 'Privacy Policy', 'privacy', '<p>Kami menghargai privasi Anda dan berkomitmen melindungi data pribadi yang Anda berikan, termasuk nama, nomor telepon, KTP, SIM, dan data transaksi. Informasi ini digunakan hanya untuk memproses pemesanan, memberikan layanan, serta meningkatkan pengalaman Anda. Data disimpan dengan aman dan tidak dibagikan kepada pihak ketiga tanpa izin Anda, kecuali jika diwajibkan oleh hukum.</p><p>Kami juga menggunakan cookies untuk meningkatkan kinerja situs dan memberikan layanan yang lebih baik. Anda memiliki hak untuk mengakses, memperbarui, atau menghapus data Anda kapan saja.</p><p>Jika ada pertanyaan atau membutuhkan bantuan, hubungi kami melalui:</p><ul><li>Email: <a rel=\"noopener\">rosarindu08@gmail.com</a></li><li>Telepon: +62 853-5577-0003</li><li>Alamat: Jl. Tugu Pahlawan No.40, Tanjungpinang, Kepulauan Riau.</li></ul>'),
(3, 'Tentang Kami', 'aboutus', '<blockquote>\r\n<p>Selamat datang di <strong>Rindu Rental</strong>, solusi terbaik untuk kebutuhan transportasi Anda di Tanjungpinang! Kami hadir untuk memberikan pengalaman berkendara yang nyaman, fleksibel, dan terpercaya bagi masyarakat maupun wisatawan. Dengan layanan sewa kendaraan 24 jam, kami memastikan mobilitas Anda tetap lancar tanpa hambatan.</p>\r\n<p>Layanan Kami</p>\r\n<ol>\r\n<li>Sewa Kendaraan dengan Fleksibilitas:</li>\r\n</ol>\r\n<ul>\r\n<li>Lepas Kunci: Nikmati kebebasan berkendara dengan harga sesuai katalog tanpa tambahan biaya tersembunyi.</li>\r\n<li>Dengan Driver: Untuk kenyamanan ekstra, kami menyediakan driver profesional dengan harga Rp450.000/hari. Termasuk bahan bakar? Hanya Rp650.000/hari (harga dapat bervariasi sesuai jenis kendaraan).</li>\r\n</ul>\r\n<ol start=\"2\">\r\n<li>Sistem Pengantaran Kendaraan:</li>\r\n</ol>\r\n<p>Kami menawarkan pengantaran gratis di area Tepi Laut hingga Batu 11. Untuk lokasi di atas Batu 11, dikenakan biaya tambahan menggunakan layanan ojek.</p>\r\n<ol start=\"3\">\r\n<li>Harga Kompetitif:</li>\r\n</ol>\r\n<ul>\r\n<li>Sewa harian, mingguan, hingga bulanan tersedia dengan diskon khusus untuk paket bulanan. Contoh: Sewa Rp250.000/hari dapat menjadi Rp5.200.000/bulan (hanya sekitar Rp175.000/hari).</li>\r\n<li>Dikenakan biaya tambahan Rp35.000/jam untuk keterlambatan pengembalian hingga 5 jam. Di atas 5 jam, berlaku tarif sewa per hari.</li>\r\n</ul>\r\n<hr>\r\n<h3>Jaminan dan Persyaratan</h3>\r\n<p>Untuk menyewa kendaraan, cukup siapkan:</p>\r\n<ul>\r\n<li>KTP dan SIM sebagai jaminan. Kami pastikan proses penyewaan sederhana dan mudah.</li>\r\n</ul>\r\n<hr>\r\n<p>Rindu Rental adalah pilihan tepat untuk perjalanan aman, hemat, dan nyaman di Tanjungpinang. Hubungi kami sekarang juga dan rasakan pengalaman terbaik bersama layanan kami!</p>\r\n</blockquote>\r\n<!-- notionvc: c7222300-7503-4899-9997-1a272c92cb92 -->'),
(11, 'FAQs', 'faqs', '																																												<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: medium;\">Q : Bagaimana cara menyewa motor di Rindu Rental?</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: medium;\">A : Pertama anda harus mendaftar terlebih dahulu sebagai user melalui menu yang telah disediakan.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: verdana; font-size: medium;\"><br></span></div><div style=\"text-align: justify;\"><span style=\"font-family: verdana; font-size: medium;\">Q: Apakah Rindu Rental menyediakan layanan Driver?&nbsp;</span></div><div style=\"text-align: justify;\"><span style=\"font-family: verdana; font-size: medium;\">A: Ya, kami menyediakan layanan Driver berpengalaman dengan biaya tambahan.</span><!-- notionvc: 8e409560-0ff1-450f-9c75-b46121c46400 --><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: verdana;\"></span></div>																																												');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(120) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `telp` char(11) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `ktp` varchar(120) NOT NULL,
  `kk` varchar(120) NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama_user`, `email`, `password`, `telp`, `alamat`, `ktp`, `kk`, `RegDate`, `UpdationDate`) VALUES
(10, 'Amelia', 'amelia.a2293@gmail.com', '2a1c895a72d8f899852bcecae26e52dc', '08127797515', 'Jalan Sunaryo KM. 4 RT 002 RW 003', '15122024135625MySkill x Deloitte - Time Management Mini Task-1.png', '15122024135625adverb.png', '2024-12-15 12:56:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`kode_booking`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id_cu`);

--
-- Indexes for table `contactusinfo`
--
ALTER TABLE `contactusinfo`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `merek`
--
ALTER TABLE `merek`
  ADD PRIMARY KEY (`id_merek`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `motor`
--
ALTER TABLE `motor`
  ADD PRIMARY KEY (`id_motor`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id_cu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contactusinfo`
--
ALTER TABLE `contactusinfo`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `merek`
--
ALTER TABLE `merek`
  MODIFY `id_merek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `motor`
--
ALTER TABLE `motor`
  MODIFY `id_motor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
