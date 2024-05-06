-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 07:34 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galerifoto`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(2, 'Irawan', 'irawan', 'adminirawan', '085774137284', 'irawan@gmail.com', 'Jl. Raya Kadu Seungit'),
(3, 'Diana', 'diana', '1234', '085788992919', 'Diana@gmail.com', 'Suka Seneng Cikeusik'),
(4, 'Hazwan', 'hazwan', '123', '085787778811', 'hazwan@gmail.com', 'Cikeusik Pandeglang'),
(5, 'Kei', 'kei', '123', '1234567890', 'kei@gmail.com', 'Cibinong');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(14, 'Agenda Sekolah'),
(15, 'Informasi Terkini'),
(16, 'Galeri Sekolah');

-- --------------------------------------------------------

--
-- Table structure for table `tb_image`
--

CREATE TABLE `tb_image` (
  `image_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `image_description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_image`
--

INSERT INTO `tb_image` (`image_id`, `category_id`, `category_name`, `admin_id`, `admin_name`, `image_name`, `image_description`, `image`, `image_status`, `date_created`) VALUES
(44, 15, 'Informasi Terkini', 4, 'Hazwan', 'UJIAN SEKOLAH', '<p><strong>ujian sekolah</strong>&nbsp;di tingkat satuan pendidikan tetap dilaksanakan kendati&nbsp;<strong>Ujian Nasional Berbasis Komputer (UNBK)</strong>&nbsp;telah ditiadakan dan digantikan dengan&nbsp;<a href=\"https://www.smpn4kra.sch.id/2021/03/asesmen-nasional-dorong-pengembangan.html\" target=\"_blank\">Asesmen Nasional</a>&nbsp;yang terdiri dari&nbsp;<a href=\"https://www.smpn4kra.sch.id/2021/03/akm-dan-implikasinya-pada-pembelajaran.html\" target=\"_blank\">AKM (Asesmen Kompetensi Minimum)</a>,&nbsp;<a href=\"https://www.smpn4kra.sch.id/2021/03/survei-karakter-bagi-pelajar-indonesia.html\" target=\"_blank\">Survei Karakter</a>, dan&nbsp;<a href=\"https://www.smpn4kra.sch.id/2021/03/survei-lingkungan-belajar-di-asesmen.html\" target=\"_blank\">Survei Lingkungan Belajar</a>.</p>\r\n\r\n<p><strong>Ujian Sekolah (US)</strong>&nbsp;menjadi salah satu faktor penting untuk melakukan&nbsp;<a href=\"https://www.smpn4kra.sch.id/2021/01/penilaian-oleh-satuan-pendidikan.html\" target=\"_blank\">penilaian</a>&nbsp;terhadap pencapaian standar kompetensi lulusan (SKL). Ujian sekolah menjadi kewenangan setiap satuan pendidikan untuk melaksanakannya sesuai&nbsp;<strong>SOP Ujian Sekolah</strong>&nbsp;yang telah ditentukan.</p>\r\n\r\n<h3>A. Pengertian Ujian Sekolah</h3>\r\n\r\n<p><strong>Ujian sekolah</strong>&nbsp;adalah ujian yang diselenggarakan oleh Satuan Pendidikan pada akhir jenjang dengan tujuan untuk menilai pencapaian standar kompetensi lulusan untuk semua mata pelajaran sesuai dengan&nbsp;<a href=\"https://www.smpn4kra.sch.id/2022/10/kurikulum-operasional-satuan-pendidikan.html\" target=\"_blank\">kurikulum</a>&nbsp;yang berlaku.</p>\r\n\r\n<h3>B. Target Ujian Sekolah</h3>\r\n\r\n<p>Seluruh siswa pada akhir jenjang yang memenuhi persyaratan sebagai berikut:</p>\r\n\r\n<ol>\r\n	<li>telah berada pada tahun terakhir di masing-masing jenjang atau program paket kesetaraan.</li>\r\n	<li>memiliki laporan lengkap penilaian hasil belajar seluruh program pembelajaran yang telah ditempuh pada jenjang pendidikan tersebut.</li>\r\n</ol>\r\n\r\n<h3>C. Kompetensi Yang Diujikan</h3>\r\n\r\n<p><strong>Ujian Sekolah</strong>&nbsp;mengukur dan menilai kompetensi peserta didik terhadap Standar Kompetensi Lulusan (SKL) sesuai Permendikbud Nomor 21 Tahun 2016 dan SKL tambahan yang ditetapkan sekolah.</p>\r\n\r\n<h3>D. Bentuk-bentuk Ujian Sekolah</h3>\r\n\r\n<p>Berikut ini dalah beberapa bentuk ujian sekolah yang dapat dipilih oleh satuan pendidikan, yaitu :</p>\r\n\r\n<ol>\r\n	<li><a href=\"https://www.smpn4kra.sch.id/2021/01/bentuk-ujian-portofolio.html\" target=\"_blank\"><strong>Portofolio</strong></a>\r\n\r\n	<ul>\r\n		<li>Portofolio Kerja</li>\r\n		<li>Portofolio Dokumentasi</li>\r\n		<li>Portofolio Pilihan</li>\r\n	</ul>\r\n	</li>\r\n	<li><a href=\"https://www.smpn4kra.sch.id/2021/01/bentuk-ujian-tes-tertulis.html\" target=\"_blank\"><strong>Tes Tertulis</strong></a>\r\n	<ul>\r\n		<li>Pilihan Ganda</li>\r\n		<li>Benar-Salah</li>\r\n		<li>Menjodohkan</li>\r\n		<li>Jawaban Singkat</li>\r\n		<li>Soal Uraian</li>\r\n		<li>Pilihan Ganda dengan Alasan</li>\r\n	</ul>\r\n	</li>\r\n	<li><a href=\"https://www.smpn4kra.sch.id/2021/02/bentuk-ujian-tugas-proyek.html\" target=\"_blank\"><strong>Tugas Proyek</strong></a></li>\r\n	<li><a href=\"https://www.smpn4kra.sch.id/2021/02/bentuk-ujian-tugas-produk.html\" target=\"_blank\"><strong>Tugas Produk</strong></a></li>\r\n	<li><a href=\"https://www.smpn4kra.sch.id/2021/02/bentuk-ujian-tes-praktik.html\" target=\"_blank\"><strong>Tes Praktik</strong></a></li>\r\n	<li><a href=\"https://www.smpn4kra.sch.id/2021/02/bentuk-ujian-tes-kinerja.html\" target=\"_blank\"><strong>Tes Kinerja</strong></a></li>\r\n	<li><a href=\"https://www.smpn4kra.sch.id/2021/02/bentuk-ujian-tes-lisan.html\" target=\"_blank\"><strong>Tes Lisan</strong></a></li>\r\n</ol>\r\n', 'foto1713925862.jpg', 1, '2024-04-24 03:13:01'),
(45, 16, 'Galeri Sekolah', 4, 'Hazwan', 'PETA SEKOLAH', '12', 'foto1713926002.jpg', 1, '2024-04-24 02:33:22'),
(53, 16, 'Galeri Sekolah', 3, 'Diana', 'RANDOM', 'saf', 'foto1713928839.png', 1, '2024-04-24 03:20:39'),
(54, 14, 'Agenda Sekolah', 5, 'Kei', 'UJIAN SEKOLAH', '<p>rgre</p>\r\n', 'foto1713931719.jpg', 1, '2024-04-24 04:08:39'),
(55, 15, 'Informasi Terkini', 5, 'Kei', 'PETA SEKOLAH', 'ghjgf', 'foto1713930016.jpg', 1, '2024-04-24 03:40:16'),
(56, 15, 'Informasi Terkini', 5, 'Kei', 'SIDANG PKL MANDIRI', '<p>jgdfc</p>\r\n', 'foto1713931944.jpg', 1, '2024-04-24 04:12:24'),
(57, 14, 'Agenda Sekolah', 5, 'Kei', 'uyrtddrd', 'utr', 'foto1713931657.jpg', 1, '2024-04-24 04:07:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tb_image`
--
ALTER TABLE `tb_image`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_image`
--
ALTER TABLE `tb_image`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_image`
--
ALTER TABLE `tb_image`
  ADD CONSTRAINT `tb_image_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `tb_admin` (`admin_id`),
  ADD CONSTRAINT `tb_image_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `tb_category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
