-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2019 at 03:55 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `id_galeri` int(11) NOT NULL,
  `nama_galeri` varchar(25) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `kategori_galeri_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`id_galeri`, `nama_galeri`, `gambar`, `kategori_galeri_id`) VALUES
(2, 'Kolam Renang', 'hilton-bayfront-best-san-diego-hotel-pools.jpg', 3),
(3, 'Caffe', 'caffe2.jpg', 2),
(6, 'Ballroom', 'ballroom.jpg', 4),
(7, 'Sport Center', 'galeri-gymm.jpg', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kamar`
--

CREATE TABLE `tbl_kamar` (
  `id_kamar` int(11) NOT NULL,
  `nomer_kamar` char(5) NOT NULL,
  `harga_kamar` bigint(15) NOT NULL,
  `fasilitas_kamar` text NOT NULL,
  `status_kamar` int(2) NOT NULL,
  `kelas_kamar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kamar`
--

INSERT INTO `tbl_kamar` (`id_kamar`, `nomer_kamar`, `harga_kamar`, `fasilitas_kamar`, `status_kamar`, `kelas_kamar_id`) VALUES
(1, 'A09', 750000, 'Tempat tidur, Sofa, AC, TV, Lemari, kamar mandi, desain kamar mewah. (termasuk sarapan pagi).', 0, 1),
(2, 'A08', 750000, 'Tempat tidur, Sofa, AC, TV, Lemari, kamar mandi, desain kamar mewah. (termasuk sarapan pagi).', 0, 1),
(3, 'A07', 750000, 'Tempat tidur, Sofa, AC, TV, Lemari, kamar mandi, desain kamar mewah. (termasuk sarapan pagi).', 0, 1),
(4, 'A06', 500000, 'Tempat tidur, Sofa, AC, TV, Lemari, kamar mandi, desain kamar mewah. (termasuk sarapan pagi).', 0, 1),
(5, 'A05', 500000, 'Tempat tidur, Sofa, AC, TV, Lemari, kamar mandi, desain kamar mewah. (termasuk sarapan pagi).', 0, 1),
(6, 'A04', 750000, 'Tempat tidur, Sofa, AC, TV, Lemari, kamar mandi, desain kamar mewah. (termasuk sarapan pagi).', 0, 1),
(7, 'A03', 750000, 'Tempat tidur, Sofa, AC, TV, Lemari, kamar mandi, desain kamar mewah. (termasuk sarapan pagi).', 0, 1),
(8, 'A02', 750000, 'Tempat tidur, Sofa, AC, TV, Lemari, kamar mandi, desain kamar mewah. (termasuk sarapan pagi).', 0, 1),
(9, 'A01', 750000, 'Tempat tidur, Sofa, AC, TV, Lemari, kamar mandi, desain kamar mewah. (termasuk sarapan pagi).', 0, 1),
(10, 'B09', 600000, 'Tempat tidur, AC, TV, Lemari, Kamar mandi. (termasuk sarapan pagi).', 0, 2),
(11, 'B08', 600000, 'Tempat tidur, AC, TV, Lemari, Kamar mandi. (termasuk sarapan pagi).', 0, 2),
(12, 'B07', 600000, 'Tempat tidur, AC, TV, Lemari, Kamar mandi. (termasuk sarapan pagi).', 0, 2),
(13, 'B06', 600000, 'Tempat tidur, AC, TV, Lemari, Kamar mandi. (termasuk sarapan pagi).', 0, 2),
(14, 'B05', 600000, 'Tempat tidur, AC, TV, Lemari, Kamar mandi. (termasuk sarapan pagi).', 0, 2),
(15, 'B04', 600000, 'Tempat tidur, AC, TV, Lemari, Kamar mandi. (termasuk sarapan pagi).', 0, 2),
(16, 'B03', 600000, 'Tempat tidur, AC, TV, Lemari, Kamar mandi. (termasuk sarapan pagi).', 0, 2),
(17, 'B02', 600000, 'Tempat tidur, AC, TV, Lemari, Kamar mandi. (termasuk sarapan pagi).', 0, 2),
(18, 'B01', 600000, 'Tempat tidur, AC, TV, Lemari, Kamar mandi. (termasuk sarapan pagi).', 0, 2),
(19, 'C09', 450000, 'Tempat tidur, AC, TV, Lemari, kamar mandi ', 0, 3),
(20, 'C08', 450000, 'Tempat tidur, AC, TV, Lemari, kamar mandi.', 0, 3),
(21, 'C07', 450000, 'Tempat tidur, AC, TV, Lemari, kamar mandi.', 0, 3),
(22, 'C06', 450000, 'Tempat tidur, AC, TV, Lemari, kamar mandi.', 0, 3),
(23, 'C05', 450000, 'Tempat tidur, AC, TV, Lemari, kamar mandi.', 0, 3),
(24, 'C04', 450000, 'Tempat tidur, AC, TV, Lemari, kamar mandi.', 0, 3),
(25, 'C03', 450000, 'Tempat tidur, AC, TV, Lemari, kamar mandi.', 0, 3),
(26, 'C02', 450000, 'Tempat tidur, AC, TV, Lemari, kamar mandi.', 0, 3),
(27, 'C01', 450000, 'Tempat tidur, AC, TV, Lemari, kamar mandi.', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kamar_gambar`
--

CREATE TABLE `tbl_kamar_gambar` (
  `id_kamar_gambar` int(11) NOT NULL,
  `nama_kamar_gambar` varchar(50) NOT NULL,
  `kamar_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kamar_gambar`
--

INSERT INTO `tbl_kamar_gambar` (`id_kamar_gambar`, `nama_kamar_gambar`, `kamar_id`) VALUES
(1, 'jhtdcvbnkjyt.jpg', 1),
(2, 'jhtdcvbnkjyt.jpg', 2),
(3, 'jhtdcvbnkjyt.jpg', 3),
(4, 'desain-kamar-ala-hotel-bintang-5.jpg', 4),
(5, 'desain-kamar-ala-hotel-bintang-5.jpg', 5),
(6, 'desain-kamar-ala-hotel-bintang-5.jpg', 6),
(7, '198111289_orig.jpg', 7),
(8, '198111289_orig.jpg', 8),
(9, '198111289_orig.jpg', 9),
(10, 'kamarkerenlah.jpg', 10),
(11, 'kamarkerenlah.jpg', 11),
(12, 'kamarkerenlah.jpg', 12),
(13, 'Hotel-Room-Design-1.jpg', 13),
(14, 'Hotel-Room-Design-1.jpg', 14),
(15, 'Hotel-Room-Design-1.jpg', 15),
(16, 'hotel-bintang-empat.jpg', 16),
(17, 'hotel-bintang-empat.jpg', 17),
(18, 'hotel-bintang-empat.jpg', 18);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori_galeri`
--

CREATE TABLE `tbl_kategori_galeri` (
  `id_kategori_galeri` int(11) NOT NULL,
  `nama_kategori_galeri` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori_galeri`
--

INSERT INTO `tbl_kategori_galeri` (`id_kategori_galeri`, `nama_kategori_galeri`) VALUES
(2, 'Category First'),
(3, 'Category Second'),
(4, 'Category  Three'),
(5, 'Category Four'),
(6, 'Category  Six'),
(7, 'Category  Seven');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas_kamar`
--

CREATE TABLE `tbl_kelas_kamar` (
  `id_kelas_kamar` int(11) NOT NULL,
  `nama_kelas_kamar` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelas_kamar`
--

INSERT INTO `tbl_kelas_kamar` (`id_kelas_kamar`, `nama_kelas_kamar`) VALUES
(1, 'KELAS A'),
(2, 'KELAS B');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reservasi`
--

CREATE TABLE `tbl_reservasi` (
  `id_reservasi` int(11) NOT NULL,
  `nama_reservasi` varchar(25) NOT NULL,
  `telp_reservasi` varchar(12) NOT NULL,
  `alamat_reservasi` text NOT NULL,
  `tgl_reservasi_masuk` date NOT NULL,
  `tgl_reservasi_keluar` date NOT NULL,
  `kamar_id` int(11) NOT NULL,
  `status_reservasi` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reservasi`
--

INSERT INTO `tbl_reservasi` (`id_reservasi`, `nama_reservasi`, `telp_reservasi`, `alamat_reservasi`, `tgl_reservasi_masuk`, `tgl_reservasi_keluar`, `kamar_id`, `status_reservasi`) VALUES
(1, 'sudirman', '085361537966', 'jl.jamin ginting', '0000-00-00', '2019-06-12', 9, 0),
(2, 'uwak', '1234567', 'medan', '0000-00-00', '2019-06-15', 10, 0),
(3, 'uwak', '085361537966', 'hshdusd', '0000-00-00', '2019-06-15', 10, 0),
(4, 'uwak', '1234567', 'ertyuijhbvdfgh', '0000-00-00', '2019-06-12', 10, 0),
(5, 'uwak', '987654ew', 'jhgbfvdc', '0000-00-00', '2019-06-15', 10, 0),
(6, 'haechan', '085361537965', 'surga', '2019-06-13', '2019-06-17', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reservasi_pembayaran`
--

CREATE TABLE `tbl_reservasi_pembayaran` (
  `id_reservasi_pembayaran` int(11) NOT NULL,
  `tgl_pembayaran` date NOT NULL,
  `nominal_pembayaran` int(11) NOT NULL,
  `uang_bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `reservasi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_saran`
--

CREATE TABLE `tbl_saran` (
  `id_saran` int(11) NOT NULL,
  `nama_saran` varchar(20) NOT NULL,
  `email_saran` varchar(25) NOT NULL,
  `telp_saran` bigint(15) NOT NULL,
  `isi_saran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_saran`
--

INSERT INTO `tbl_saran` (`id_saran`, `nama_saran`, `email_saran`, `telp_saran`, `isi_saran`) VALUES
(1, 'sasdindah', 'sasdindah03@gamil.com', 81370494546, 'wahhhhh...biasa saja');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tentang_hotel`
--

CREATE TABLE `tbl_tentang_hotel` (
  `id_tentang_hotel` int(11) NOT NULL,
  `nama_hotel` varchar(20) NOT NULL,
  `alamat_tentang_hotel` varchar(35) NOT NULL,
  `email_tentang_hotel` varchar(25) NOT NULL,
  `telp_tentang_hotel` bigint(15) NOT NULL,
  `isi_tentang_hotel` text NOT NULL,
  `logo` varchar(50) NOT NULL,
  `fb` varchar(50) NOT NULL,
  `tw` varchar(50) NOT NULL,
  `gp` varchar(50) NOT NULL,
  `ig` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tentang_hotel`
--

INSERT INTO `tbl_tentang_hotel` (`id_tentang_hotel`, `nama_hotel`, `alamat_tentang_hotel`, `email_tentang_hotel`, `telp_tentang_hotel`, `isi_tentang_hotel`, `logo`, `fb`, `tw`, `gp`, `ig`) VALUES
(1, 'Hotel kelompok 1', 'Fifth Avenue, New York', 'theritz_carlton@gmail.com', 11889900, '<p align=justify><Hotel Gran Mahakam adalah hotel yang </p>', '68fa8507274f9b0c15d1d3da8825ade4.png', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(20) NOT NULL,
  `email_user` varchar(20) NOT NULL,
  `telp_user` bigint(15) NOT NULL,
  `username_user` varchar(10) NOT NULL,
  `password_user` varchar(50) NOT NULL,
  `user_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `email_user`, `telp_user`, `username_user`, `password_user`, `user_group_id`) VALUES
(1, 'admin', 'admin@gmail.com', 1234567890, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'operator', 'operator@gmail.com', 123456, 'operator', '2407bd807d6ca01d1bcd766c730cec9a', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_group`
--

CREATE TABLE `tbl_user_group` (
  `id_user_group` int(11) NOT NULL,
  `nama_user_group` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_group`
--

INSERT INTO `tbl_user_group` (`id_user_group`, `nama_user_group`) VALUES
(1, 'admin'),
(2, 'operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `tbl_kamar_gambar`
--
ALTER TABLE `tbl_kamar_gambar`
  ADD PRIMARY KEY (`id_kamar_gambar`);

--
-- Indexes for table `tbl_kategori_galeri`
--
ALTER TABLE `tbl_kategori_galeri`
  ADD PRIMARY KEY (`id_kategori_galeri`);

--
-- Indexes for table `tbl_kelas_kamar`
--
ALTER TABLE `tbl_kelas_kamar`
  ADD PRIMARY KEY (`id_kelas_kamar`);

--
-- Indexes for table `tbl_reservasi`
--
ALTER TABLE `tbl_reservasi`
  ADD PRIMARY KEY (`id_reservasi`);

--
-- Indexes for table `tbl_reservasi_pembayaran`
--
ALTER TABLE `tbl_reservasi_pembayaran`
  ADD PRIMARY KEY (`id_reservasi_pembayaran`);

--
-- Indexes for table `tbl_saran`
--
ALTER TABLE `tbl_saran`
  ADD PRIMARY KEY (`id_saran`);

--
-- Indexes for table `tbl_tentang_hotel`
--
ALTER TABLE `tbl_tentang_hotel`
  ADD PRIMARY KEY (`id_tentang_hotel`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tbl_user_group`
--
ALTER TABLE `tbl_user_group`
  ADD PRIMARY KEY (`id_user_group`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_kamar`
--
ALTER TABLE `tbl_kamar`
  MODIFY `id_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_kamar_gambar`
--
ALTER TABLE `tbl_kamar_gambar`
  MODIFY `id_kamar_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_kategori_galeri`
--
ALTER TABLE `tbl_kategori_galeri`
  MODIFY `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_kelas_kamar`
--
ALTER TABLE `tbl_kelas_kamar`
  MODIFY `id_kelas_kamar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_reservasi`
--
ALTER TABLE `tbl_reservasi`
  MODIFY `id_reservasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_reservasi_pembayaran`
--
ALTER TABLE `tbl_reservasi_pembayaran`
  MODIFY `id_reservasi_pembayaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_saran`
--
ALTER TABLE `tbl_saran`
  MODIFY `id_saran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_tentang_hotel`
--
ALTER TABLE `tbl_tentang_hotel`
  MODIFY `id_tentang_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user_group`
--
ALTER TABLE `tbl_user_group`
  MODIFY `id_user_group` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
