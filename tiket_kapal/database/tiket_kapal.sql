-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 01:42 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tiket_kapal`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_pemesanan`
--

CREATE TABLE `detail_pemesanan` (
  `id_detail_pemesanan` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `id_oemesanan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nomor_hp` int(11) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'Penumpang', 'Penumpang Kapal'),
(32, 'Kasir', 'Ticketing'),
(33, 'Pemilik', 'Pemilik Perusahaan');

-- --------------------------------------------------------

--
-- Table structure for table `groups_menu`
--

CREATE TABLE `groups_menu` (
  `id_groups` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups_menu`
--

INSERT INTO `groups_menu` (`id_groups`, `id_menu`) VALUES
(1, 40),
(1, 8),
(1, 89),
(1, 91),
(4, 91),
(1, 93),
(1, 94),
(1, 43),
(1, 42),
(1, 1),
(2, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(1, 3),
(2, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(1, 125),
(2, 125),
(7, 125),
(8, 125),
(17, 125),
(18, 125),
(24, 125),
(26, 125),
(28, 125),
(29, 125),
(1, 127),
(2, 127),
(1, 114),
(32, 122),
(2, 120),
(32, 120),
(2, 121),
(32, 121),
(2, 119),
(32, 119),
(1, 44);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `tanggal_keberangkatan` date NOT NULL,
  `tanggal_sampai` date NOT NULL,
  `harga_tiket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 99,
  `level` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `icon` varchar(125) NOT NULL,
  `label` varchar(25) NOT NULL,
  `link` varchar(125) NOT NULL,
  `id` varchar(25) NOT NULL DEFAULT '#',
  `id_menu_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `sort`, `level`, `parent_id`, `icon`, `label`, `link`, `id`, `id_menu_type`) VALUES
(1, 0, 1, 0, 'empty', 'MAIN NAVIGATION', '#', '#', 1),
(3, 1, 2, 1, 'fas fa-tachometer-alt', 'Dashboard', 'dashboard', '#', 1),
(4, 15, 2, 40, 'fas fa-table', 'CRUD Generator', 'crudbuilder', '1', 1),
(8, 13, 2, 40, 'fas fa-bars', 'Menu', 'cms/menu/side-menu', 'navMenu', 1),
(40, 11, 1, 0, 'empty', 'DEV', '#', '#', 1),
(42, 8, 2, 92, 'fas fa-users-cog', 'User', '#', '1', 1),
(43, 9, 3, 42, 'fas fa-angle-double-right', 'Users', 'users', '1', 1),
(44, 10, 3, 42, 'fas fa-angle-double-right', 'Hak Akses', 'groups', '2', 1),
(89, 14, 2, 40, 'fas fa-th-list', 'Menu Type', 'menu_type', 'menu_type', 1),
(92, 6, 1, 0, 'empty', 'MASTER DATA', '#', 'masterdata', 1),
(107, 12, 2, 40, 'fas fa-cog', 'Setting', 'setting', 'setting', 1),
(114, 7, 2, 92, 'far fa-calendar-alt', 'Jadwal Keberangkatan', 'jadwal', '1', 1),
(119, 2, 2, 1, 'fas fa-ship', 'Pemesanan', '#', '1', 1),
(120, 3, 3, 119, 'fas fa-ticket-alt', 'Pesan Tiket', '#', '1', 1),
(121, 4, 3, 119, 'fas fa-history', 'History Pemesanan', '#', '1', 1),
(122, 5, 2, 1, 'far fa-file', 'Laporan', '#', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `menu_type`
--

CREATE TABLE `menu_type` (
  `id_menu_type` int(11) NOT NULL,
  `type` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_type`
--

INSERT INTO `menu_type` (`id_menu_type`, `type`) VALUES
(1, 'Side menu');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pemesanan` int(11) NOT NULL,
  `metode` varchar(50) NOT NULL,
  `tanggal_bayar` date NOT NULL,
  `status_bayar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_pemesanan` varchar(50) NOT NULL,
  `tanggal_pemesanan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `penumpang`
--

CREATE TABLE `penumpang` (
  `id_penumpang` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jens_kelamin` varchar(50) NOT NULL,
  `nomor_hp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nilai` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `kode`, `nama`, `nilai`) VALUES
(1, 'logo_tiket_kapal.jpg', 'Tiket Kapal', 'Danau Toba');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `image` varchar(128) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `image`) VALUES
(1, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@muhakbar.com', '', 'm0vyKu2zW7L8PTG20bquF.707e055aeea8a30aca', 1541329145, 'WcHCQ5vcXwT1z99BvJUWnu', 1268889823, 1624966587, 1, 'Akbar', 'Admin', 'ADMIN', '0', 'akbr_pp_2.jpg'),
(13, '::1', 'penumpang01@gmail.com', '$2y$08$GFbtgOEJDsBjS3BXQq2cg.npg9mumOeqKEMWVAfKfdjH5L9lXmWiS', NULL, 'penumpang01@gmail.com', NULL, NULL, NULL, NULL, 1624966650, NULL, 1, 'Penumpang', '01', 'Asal', '089999999', 'default.jpg'),
(14, '::1', 'admin01@gmail.com', '$2y$08$Mmx4Lc4eSqoJCo5x9XvL3OnXtuUtUfzrfsLhv9EqNfOItj1T71vnC', NULL, 'admin01@gmail.com', NULL, NULL, NULL, NULL, 1624966675, NULL, 1, 'admin', '01', 'asal', '08999999999', 'default.jpg'),
(15, '::1', 'kasir01@gmail.com', '$2y$08$0oAIatoQAr1hOycODs.04uMCXx4kiFevoHJFuUWFTDE8F1ZMF37tG', NULL, 'kasir01@gmail.com', NULL, NULL, NULL, NULL, 1624966704, NULL, 1, 'Kasir', '01', 'asal', '089999999', 'default.jpg'),
(16, '::1', 'pemilik01@gmail.com', '$2y$08$hoTaK2Gtln6lQk8MDpjfOOFBotvB3bMc2prWhxchP/2dduEnlLyfS', NULL, 'pemilik01@gmail.com', NULL, NULL, NULL, NULL, 1624966749, NULL, 1, 'Pemilik', '01', 'asal', '089999999', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(24, 1, 1),
(11, 3, 2),
(10, 4, 2),
(13, 5, 8),
(17, 6, 5),
(19, 7, 6),
(21, 8, 7),
(1, 9, 17),
(91, 13, 2),
(64, 13, 18),
(95, 14, 1),
(96, 15, 32),
(97, 16, 33),
(75, 17, 17),
(76, 18, 17),
(77, 19, 17),
(84, 20, 17),
(78, 21, 17),
(81, 22, 28),
(85, 23, 17),
(60, 24, 28),
(73, 25, 28),
(79, 26, 28),
(80, 27, 28),
(82, 28, 28),
(72, 29, 28),
(83, 30, 28),
(59, 31, 17),
(86, 32, 26),
(65, 33, 7),
(69, 34, 7),
(71, 35, 7),
(61, 36, 29),
(62, 37, 2),
(63, 38, 2),
(88, 39, 31),
(89, 40, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  ADD PRIMARY KEY (`id_detail_pemesanan`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`id_menu_type`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `penumpang`
--
ALTER TABLE `penumpang`
  ADD PRIMARY KEY (`id_penumpang`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  MODIFY `id_detail_pemesanan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `id_menu_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penumpang`
--
ALTER TABLE `penumpang`
  MODIFY `id_penumpang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
