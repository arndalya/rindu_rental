-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2024 at 12:10 AM
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
  `kode_booking` varchar(8) NOT NULL,
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
('TRX00000', 11, '2022-09-08', '2022-09-09', 2, 900000, 'Menunggu Pembayaran', 'yusuf@gmail.com', 'Ambil Sendiri', '2022-09-07', ''),
('TRX00001', 8, '2019-05-26', '2019-05-26', 1, 200000, 'Sudah Dibayar', 'test@gmail.com', 'Pickup Sesuai Alamat', '2019-05-25', '2505201920111034788684_10209405168685237_8233778212845387776_n.JPEG'),
('TRX00002', 9, '2019-05-26', '2019-05-27', 2, 0, 'Menunggu Pembayaran', 'rizalit2@gmail.com', 'Ambil Sendiri', '2019-05-25', '');

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
('TRX00000', 11, '2022-09-09', 'Menunggu Pembayaran');

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
  `telp_kami` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contactusinfo`
--

INSERT INTO `contactusinfo` (`id_info`, `alamat_kami`, `email_kami`, `telp_kami`) VALUES
(1, 'Rindu Rental\r\nJl. Tugu Pahlawan No.40, Tanjungpinang, Kepulauan Riau, Indonesia.', 'rosarindu08@gmail.com', '08535577000');

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
(14, 'Honda', '2019-06-07 18:05:23', NULL),
(15, 'MercedesBenz', '2019-06-07 18:29:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `merk`
--

CREATE TABLE `merk` (
  `id_merk` int(11) NOT NULL,
  `nama_merk` varchar(120) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date_motor` timestamp NULL DEFAULT current_timestamp(),
  `upDate_motor` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(10, 'hondafreed', 14, 'B 7730 NSP', 'Honda Freed 1500 cc transmision automatic seating capacity 6', 450000, 'Bensin', 2012, 6, 'Honda-Freed-front.jpg', 'Honda-Freed-front.jpg', 'Honda-Freed-Interior.jpg', 'Honda-Freed-front.jpg', 'Honda-Freed-Interior.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2019-06-07 18:09:49', '2019-06-07 18:19:29'),
(11, 'HondaCrv', 14, 'B 9990 RXY', 'Honda CRV Tahun 2011', 1000000, 'Bensin', 2011, 5, 'Honda-CRV-2011-Front.jpg', 'Honda-CRV-2011-Rear.jpg', 'Honda-CRV-2011-Interior.jpg', 'Honda-CRV-2011-Rear.jpg', 'Honda-CRV-2011-Front.jpg', 1, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, '2019-06-07 18:27:37', NULL),
(12, 'MercedesBenzC', 15, 'B 56789 OPX', 'Mercedes Benz C Class 1800 CC', 1850000, 'Bensin', 2012, 5, 'Merci-Cclass-service1.jpg', 'Merci-Cclass-service2.jpg', 'Merci-Cclass-service3.jpg', 'Merci-Cclass-service3.jpg', 'Merci-Cclass-service1.jpg', 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, '2019-06-07 18:32:21', NULL);

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
(1, 'Terms and Conditions', 'terms', '																																																							<h2><font size=\"3\" style=\"font-style: italic; font-weight: bold;\"><span class=\"purple\">Syarat</span> Ketentuan Penyewaan Mobil</font></h2><div><h4>\r\n	<span style=\"text-decoration-line: underline;\"><span data-scayt_word=\"Persyaratan\" data-scaytid=\"1\">Persyaratan</span> Rental Mobil <span data-scayt_word=\"untuk\" data-scaytid=\"2\">untuk</span> </span><span data-scayt_word=\"Perusahaan\" data-scaytid=\"3\"><span style=\"text-decoration-line: underline;\">Perusahaan</span>:</span></h4>\r\n<ol><li>Fotokopi SIUP dan NPWP.</li><li>Fotokopi akte pendirian perusahaan.</li><li>Fotokopi Tanda Daftar Perusahaan (TDP).</li><li>Surat keterangan domisili perusahaan.</li><li>Surat pengesahan keputusan Menteri Hukum dan HAM.</li><li>Fotokopi KTP direksi atau pejabat yang bertanggung jawab terhadap unit kendaraan.</li><li>Surat kuasa bila bukan direktur perusahaan yang bertanggung jawab.</li><li>Fotokopi SIM pengemudi.</li><li>Survey lokasi domisili perusahaan.</li></ol><span style=\"text-decoration-line: underline;\"><span style=\"font-size: 1em;\">Persyaratan</span><span style=\"font-size: 1em;\"> Rental Mobil </span><span data-scayt_word=\"untuk\" data-scaytid=\"54\" style=\"font-size: 1em;\">untuk</span><span style=\"font-size: 1em;\"> </span></span><span data-scayt_word=\"Perorangan\" data-scaytid=\"85\" style=\"font-size: 1em;\"><span style=\"text-decoration-line: underline;\">Perorangan</span>:</span><br><ol><li><span style=\"font-size: 1em;\">Fotokopi KTP dan SIM sebagai jaminan.</span></li><li><span style=\"font-size: 1em;\">Menyetujui ketentuan pembayaran biaya tambahan jika kendaraan diantarkan ke lokasi di atas Batu 11.</span></li><li><span style=\"font-size: 1em;\">Menjamin pengembalian kendaraan sesuai dengan ketentuan waktu sewa.</span></li></ol>\r\n\r\n<ul><li></li><li><br></li></ul>\r\n<div style=\"padding:15px; background:#efefef\">\r\n	<h4>*Note</h4>\r\n	<ul><li></li><li><strong>Waktu Sewa:</strong><ul><li>Penyewaan berlaku 1x24 jam per hari.</li><li>Keterlambatan pengembalian dikenakan biaya tambahan Rp35.000/jam untuk maksimal 5 jam. Di atas 5 jam, berlaku tarif sewa per hari.</li></ul></li><li><strong>Pilihan Sewa Kendaraan:</strong></li><li><strong style=\"font-size: 1em;\">Lepas Kunci:</strong><span style=\"font-size: 1em;\"> Harga sesuai katalog tanpa biaya tambahan.</span></li><li><strong style=\"font-size: 1em;\">Dengan Driver:</strong><span style=\"font-size: 1em;\">&nbsp;Misalnya, biaya Rp450.000/hari (tanpa bahan bakar) atau Rp650.000/hari (termasuk bahan bakar).</span></li><li><strong>Pengantaran Kendaraan:</strong><ul><li>Gratis untuk area Tepi Laut hingga Batu 11.</li><li>Lokasi di atas Batu 11 dikenakan biaya tambahan menggunakan layanan ojek.</li></ul></li><li><strong>Harga Paket:</strong><ul><li>Harga sewa untuk bulanan lebih hemat. Misalnya, Rp250.000/hari menjadi Rp5.200.000/bulan (sekitar Rp175.000/hari).</li></ul></li><li><strong>Ketentuan Bahan Bakar:</strong><ul><li>Kendaraan wajib dikembalikan dengan jumlah bahan bakar yang sama seperti saat diterima.</li></ul></li></ul>\r\n</div>\r\n<p>&nbsp;\r\n	<br></p><h4><strong>Ketentuan Umum:</strong></h4><ol><li>Semua dokumen yang disertakan harus berupa fotokopi dan wajib menunjukkan dokumen asli.</li><li>Kendaraan hanya boleh dikemudikan oleh penyewa atau driver tambahan yang memiliki SIM Nasional Indonesia atau SIM Internasional.</li><li>Penyewa bertanggung jawab atas penggantian kerusakan kendaraan yang disebabkan oleh kelalaian.</li><li>Dilarang meninggalkan STNK, kunci kontak, dan karcis parkir di dalam kendaraan.</li><li>Penyewa bertanggung jawab untuk memonitor perawatan kendaraan selama masa sewa (untuk lepas kunci).</li></ol></div><p align=\"justify\" style=\"text-align: left;\"><br></p>																																																							'),
(5, 'Rekening', 'rekening', '																																												0218532950 Bank BNI a/n HEMILTA ROZA<div>3801369381 Bank BCA a/n HEMILTA ROZA<br><div><div><div><br></div></div></div></div>'),
(0, 'Driver', 'driver', '450.000'),
(2, 'Privacy Policy', 'privacy', '<p>Kami menghargai privasi Anda dan berkomitmen melindungi data pribadi yang Anda berikan, termasuk nama, nomor telepon, KTP, SIM, dan data transaksi. Informasi ini digunakan hanya untuk memproses pemesanan, memberikan layanan, serta meningkatkan pengalaman Anda. Data disimpan dengan aman dan tidak dibagikan kepada pihak ketiga tanpa izin Anda, kecuali jika diwajibkan oleh hukum.</p><p>Kami juga menggunakan cookies untuk meningkatkan kinerja situs dan memberikan layanan yang lebih baik. Anda memiliki hak untuk mengakses, memperbarui, atau menghapus data Anda kapan saja.&nbsp;</p><p>Jika ada pertanyaan atau membutuhkan bantuan, hubungi kami melalui:</p><ul><li><strong>Email:</strong> <a rel=\"noopener\">rosarindu08@gmail.com</a></li><li><strong>Telepon:</strong> +62 853-5577-0003</li><li><strong>Alamat:</strong> Jl. Tugu Pahlawan No.40, Tanjungpinang, Kepulauan Riau.</li></ul><p><br></p>'),
(3, 'Tentang Kami', 'aboutus', '											Selamat datang di <strong>Rindu Rental</strong>, solusi terbaik untuk kebutuhan transportasi Anda di Tanjungpinang! Kami hadir untuk memberikan pengalaman berkendara yang nyaman, fleksibel, dan terpercaya bagi masyarakat maupun wisatawan. Dengan layanan sewa kendaraan 24 jam, kami memastikan mobilitas Anda tetap lancar tanpa hambatan.<div><br></div><div><span style=\"font-style: italic;\"><strong>Rindu Rental</strong> adalah pilihan tepat untuk perjalanan aman, hemat, dan nyaman di Tanjungpinang. Hubungi kami sekarang juga dan rasakan pengalaman terbaik bersama layanan kami!</span><br><div><br></div></div>											'),
(11, 'FAQs', 'faqs', '																																	<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Q : Bagaimana cara menyewa mobil maupun motor di&nbsp; Rindu Rental?</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">A : Pertama anda harus mendaftar terlebih dahulu sebagai user melalui menu yang telah disediakan.</span></div>																																	');

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
(7, 'Yusuf', 'yusuf@gmail.com', 'dd2eb170076a5dec97cdbbbbff9a4405', '08122233343', 'Jl. Sukosemolo', '07092022132814id.png', '07092022132814id (1).png', '2022-09-07 11:28:14', NULL),
(8, 'Widya Prastika', 'widya@gmail.com', '9146bfc09df862ee46fa9b512c72f9a6', '08977788898', 'Jl. Ahmad Yani', '07092022132849id.png', '07092022132849id (1).png', '2022-09-07 11:28:49', NULL),
(9, 'Alvian Andhi', 'alvian@gmail.com', 'e8cb77839eba5ec65525e642c3899b3b', '08766655567', 'Jl. Rowo Jombor', '07092022132925id.png', '07092022132925id (1).png', '2022-09-07 11:29:25', NULL);

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
-- Indexes for table `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`id_merk`);

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
  MODIFY `id_merek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `merk`
--
ALTER TABLE `merk`
  MODIFY `id_merk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
