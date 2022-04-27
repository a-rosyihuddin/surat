-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2021 at 06:57 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_surat`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengajuan`
--

CREATE TABLE `tb_pengajuan` (
  `id_pengajuan` int(11) NOT NULL,
  `nik_user` varchar(20) NOT NULL,
  `kode_surat` enum('SKTM','SPA','SKK','SPK','SKM','SL') NOT NULL,
  `waktu_pengajuan` datetime NOT NULL,
  `keperluan` varchar(225) NOT NULL,
  `status_pengajuan` enum('Di Terima','Di Tolak','Menunggu') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pengajuan`
--

INSERT INTO `tb_pengajuan` (`id_pengajuan`, `nik_user`, `kode_surat`, `waktu_pengajuan`, `keperluan`, `status_pengajuan`) VALUES
(110, '123456789', 'SKTM', '2021-12-12 10:35:51', '', 'Di Terima'),
(111, '123456789', 'SPA', '2021-12-12 10:36:08', '', 'Di Tolak'),
(112, '123456789', 'SKK', '2021-12-12 10:36:14', '', 'Menunggu');

-- --------------------------------------------------------

--
-- Table structure for table `tb_skk`
--

CREATE TABLE `tb_skk` (
  `id_pengajuan_skk` int(11) NOT NULL,
  `nik_user` varchar(20) NOT NULL,
  `kode_surat` enum('SKK') NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `gender` enum('Laki-Laki','Perempuan') NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `hari_meninggal` varchar(10) NOT NULL,
  `tgl_meninggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_skk`
--

INSERT INTO `tb_skk` (`id_pengajuan_skk`, `nik_user`, `kode_surat`, `nama`, `tempat_lahir`, `tgl_lahir`, `gender`, `pekerjaan`, `alamat`, `hari_meninggal`, `tgl_meninggal`) VALUES
(112, '123456789', 'SKK', '', '', '0000-00-00', '', '', '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_skm`
--

CREATE TABLE `tb_skm` (
  `id_pengajuan_skm` int(11) NOT NULL,
  `nik_user` varchar(20) NOT NULL,
  `kode_surat` enum('SKM') NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gender` enum('Laki-Laki','Perempuan') NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `kewarganegaraan` varchar(20) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `nama_pasangan` varchar(100) NOT NULL,
  `gender_pasangan` enum('Laki-Laki','Perempuan') NOT NULL,
  `tempat_lahir_pasangan` varchar(20) NOT NULL,
  `tgl_lahir_pasangan` date NOT NULL,
  `kewarganegaraan_pasangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sktm`
--

CREATE TABLE `tb_sktm` (
  `id_pengajuan_sktm` int(11) NOT NULL,
  `nik_user` varchar(20) NOT NULL,
  `kode_surat` enum('SKTM') NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `gender` enum('Laki - Laki','Perempuan') NOT NULL,
  `status` varchar(50) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_sktm`
--

INSERT INTO `tb_sktm` (`id_pengajuan_sktm`, `nik_user`, `kode_surat`, `nama`, `tempat_lahir`, `tgl_lahir`, `gender`, `status`, `pekerjaan`, `alamat`) VALUES
(110, '123456789', 'SKTM', '', '', '0000-00-00', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sl`
--

CREATE TABLE `tb_sl` (
  `id_pengajuan_sl` int(11) NOT NULL,
  `nik_user` varchar(20) NOT NULL,
  `kode_surat` enum('SL') NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `gender` enum('Laki-Laki','Perempuan') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `foto_ktp` varchar(225) NOT NULL,
  `foto_kk` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_spa`
--

CREATE TABLE `tb_spa` (
  `id_pengajuan_spa` int(11) NOT NULL,
  `nik_user` varchar(20) NOT NULL,
  `kode_surat` enum('SPA') NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `gender` enum('Laki-Laki','Perempuan') NOT NULL,
  `agama` varchar(20) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `hubungan` varchar(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `nama_anak` varchar(100) NOT NULL,
  `gender_anak` enum('Laki-Laki','Perempuan') NOT NULL,
  `tempat_lahir_anak` varchar(20) NOT NULL,
  `tgl_lahir_anak` date NOT NULL,
  `waktu_lahir_anak` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_spa`
--

INSERT INTO `tb_spa` (`id_pengajuan_spa`, `nik_user`, `kode_surat`, `nama_ayah`, `nama_ibu`, `gender`, `agama`, `tempat_lahir`, `tgl_lahir`, `hubungan`, `pekerjaan`, `alamat`, `nama_anak`, `gender_anak`, `tempat_lahir_anak`, `tgl_lahir_anak`, `waktu_lahir_anak`) VALUES
(111, '123456789', 'SPA', '', '', '', '', '', '0000-00-00', 'Pilih', '', '', '', '', '', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_spk`
--

CREATE TABLE `tb_spk` (
  `id_pengajuan_spk` int(11) NOT NULL,
  `nik_user` varchar(20) NOT NULL,
  `kode_surat` enum('SPK') NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `gender` enum('Laki-Laki','Perempuan') NOT NULL,
  `gol_darah` varchar(5) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `rt` int(11) NOT NULL,
  `rw` int(11) NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_surat`
--

CREATE TABLE `tb_surat` (
  `kode_surat` enum('SKTM','SPA','SKK','SPK','SKM','SL') NOT NULL,
  `jenis_surat` varchar(50) NOT NULL,
  `surat_keluar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_surat`
--

INSERT INTO `tb_surat` (`kode_surat`, `jenis_surat`, `surat_keluar`) VALUES
('SKTM', 'Surat Keterangan Tidak Mampu', 1),
('SPA', 'Surat Pengantar Akta', 0),
('SKK', 'Surat Keterangan Kematian', 0),
('SPK', 'Surat Pengantar KTP', 0),
('SKM', 'Surat Keterangan Menikah', 0),
('SL', 'Surat Lainnya', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_surat_keluar`
--

CREATE TABLE `tb_surat_keluar` (
  `nomor_surat` varchar(30) NOT NULL,
  `id_pengajuan` int(11) NOT NULL,
  `kode_surat` enum('SKTM','SPA','SKK','SPK','SKM','SL') NOT NULL,
  `nik_user` varchar(20) NOT NULL,
  `file_surat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_surat_keluar`
--

INSERT INTO `tb_surat_keluar` (`nomor_surat`, `id_pengajuan`, `kode_surat`, `nik_user`, `file_surat`) VALUES
('01/SKTM/DesaPare/12/2021', 110, 'SKTM', '123456789', '110-Ahmad-Surat Keterangan Tidak Mampu.docx');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `nik` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `rt` int(11) NOT NULL,
  `rw` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`nik`, `nama`, `rt`, `rw`) VALUES
('1234567', 'Ahmad', 2, 1),
('123456789', 'Ahmad', 2, 1),
('admin', 'admin', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pengajuan`
--
ALTER TABLE `tb_pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`),
  ADD KEY `nik_user` (`nik_user`),
  ADD KEY `kode_surat` (`kode_surat`);

--
-- Indexes for table `tb_skk`
--
ALTER TABLE `tb_skk`
  ADD PRIMARY KEY (`id_pengajuan_skk`),
  ADD KEY `nik_user` (`nik_user`),
  ADD KEY `kode_surat` (`kode_surat`);

--
-- Indexes for table `tb_skm`
--
ALTER TABLE `tb_skm`
  ADD PRIMARY KEY (`id_pengajuan_skm`),
  ADD KEY `nik_user` (`nik_user`),
  ADD KEY `kode_surat` (`kode_surat`);

--
-- Indexes for table `tb_sktm`
--
ALTER TABLE `tb_sktm`
  ADD PRIMARY KEY (`id_pengajuan_sktm`),
  ADD KEY `nik_user` (`nik_user`),
  ADD KEY `kode_surat` (`kode_surat`);

--
-- Indexes for table `tb_sl`
--
ALTER TABLE `tb_sl`
  ADD PRIMARY KEY (`id_pengajuan_sl`),
  ADD KEY `nik_user` (`nik_user`),
  ADD KEY `kode_surat` (`kode_surat`);

--
-- Indexes for table `tb_spa`
--
ALTER TABLE `tb_spa`
  ADD PRIMARY KEY (`id_pengajuan_spa`),
  ADD KEY `nik_user` (`nik_user`),
  ADD KEY `kode_surat` (`kode_surat`);

--
-- Indexes for table `tb_spk`
--
ALTER TABLE `tb_spk`
  ADD PRIMARY KEY (`id_pengajuan_spk`),
  ADD KEY `nik_user` (`nik_user`),
  ADD KEY `kode_surat` (`kode_surat`);

--
-- Indexes for table `tb_surat`
--
ALTER TABLE `tb_surat`
  ADD PRIMARY KEY (`kode_surat`);

--
-- Indexes for table `tb_surat_keluar`
--
ALTER TABLE `tb_surat_keluar`
  ADD PRIMARY KEY (`nomor_surat`),
  ADD KEY `id_surat` (`id_pengajuan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`nik`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_pengajuan`
--
ALTER TABLE `tb_pengajuan`
  MODIFY `id_pengajuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tb_skk`
--
ALTER TABLE `tb_skk`
  MODIFY `id_pengajuan_skk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tb_sktm`
--
ALTER TABLE `tb_sktm`
  MODIFY `id_pengajuan_sktm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `tb_spa`
--
ALTER TABLE `tb_spa`
  MODIFY `id_pengajuan_spa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `tb_spk`
--
ALTER TABLE `tb_spk`
  MODIFY `id_pengajuan_spk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_pengajuan`
--
ALTER TABLE `tb_pengajuan`
  ADD CONSTRAINT `tb_pengajuan_ibfk_1` FOREIGN KEY (`kode_surat`) REFERENCES `tb_surat` (`kode_surat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_skk`
--
ALTER TABLE `tb_skk`
  ADD CONSTRAINT `tb_skk_ibfk_1` FOREIGN KEY (`id_pengajuan_skk`) REFERENCES `tb_pengajuan` (`id_pengajuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_skk_ibfk_2` FOREIGN KEY (`nik_user`) REFERENCES `tb_user` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_skk_ibfk_3` FOREIGN KEY (`kode_surat`) REFERENCES `tb_surat` (`kode_surat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_skm`
--
ALTER TABLE `tb_skm`
  ADD CONSTRAINT `tb_skm_ibfk_2` FOREIGN KEY (`nik_user`) REFERENCES `tb_user` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_skm_ibfk_3` FOREIGN KEY (`id_pengajuan_skm`) REFERENCES `tb_pengajuan` (`id_pengajuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_skm_ibfk_4` FOREIGN KEY (`kode_surat`) REFERENCES `tb_surat` (`kode_surat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_sktm`
--
ALTER TABLE `tb_sktm`
  ADD CONSTRAINT `tb_sktm_ibfk_1` FOREIGN KEY (`nik_user`) REFERENCES `tb_user` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_sktm_ibfk_2` FOREIGN KEY (`id_pengajuan_sktm`) REFERENCES `tb_pengajuan` (`id_pengajuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_sktm_ibfk_3` FOREIGN KEY (`kode_surat`) REFERENCES `tb_surat` (`kode_surat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_sl`
--
ALTER TABLE `tb_sl`
  ADD CONSTRAINT `tb_sl_ibfk_1` FOREIGN KEY (`id_pengajuan_sl`) REFERENCES `tb_pengajuan` (`id_pengajuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_sl_ibfk_2` FOREIGN KEY (`nik_user`) REFERENCES `tb_user` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_sl_ibfk_3` FOREIGN KEY (`kode_surat`) REFERENCES `tb_surat` (`kode_surat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_spa`
--
ALTER TABLE `tb_spa`
  ADD CONSTRAINT `tb_spa_ibfk_1` FOREIGN KEY (`nik_user`) REFERENCES `tb_user` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_spa_ibfk_2` FOREIGN KEY (`id_pengajuan_spa`) REFERENCES `tb_pengajuan` (`id_pengajuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_spa_ibfk_3` FOREIGN KEY (`kode_surat`) REFERENCES `tb_surat` (`kode_surat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_spk`
--
ALTER TABLE `tb_spk`
  ADD CONSTRAINT `tb_spk_ibfk_1` FOREIGN KEY (`id_pengajuan_spk`) REFERENCES `tb_pengajuan` (`id_pengajuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_spk_ibfk_2` FOREIGN KEY (`nik_user`) REFERENCES `tb_user` (`nik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_spk_ibfk_3` FOREIGN KEY (`kode_surat`) REFERENCES `tb_surat` (`kode_surat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_surat_keluar`
--
ALTER TABLE `tb_surat_keluar`
  ADD CONSTRAINT `tb_surat_keluar_ibfk_1` FOREIGN KEY (`id_pengajuan`) REFERENCES `tb_pengajuan` (`id_pengajuan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
