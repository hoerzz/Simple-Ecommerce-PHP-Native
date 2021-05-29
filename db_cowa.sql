-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Bulan Mei 2021 pada 11.43
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cowa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `category_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`category_id`, `category`) VALUES
(7, 'Pembuka'),
(8, 'Penutup');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `penjual` varchar(250) NOT NULL,
  `nproduk` varchar(255) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `penjual`, `nproduk`, `jumlah`, `alamat`, `status`) VALUES
(1, 'Ayame Mizuki', 'FILA Watches', '7', 'isekai', 'Dalam Pengiriman'),
(2, 'Chaerudin', 'Jangwe', '444', 'adasd', 'Dalam Pengiriman'),
(3, 'Ayumi Izumi', 'Contoh Nama Produk', '2', 'isekai', 'Terkirim'),
(4, 'Ayumi Izumi', 'Contoh Nama Produk', '2', 'isekai', 'Terkirim'),
(5, 'Ryuzaki Shin', 'Contoh Produk 4', '4', 'South Ogan Komering Ulu Regency\r\nSouth Ogan Komering Ulu Regency', 'Terkirim'),
(6, 'Ayumi Izumi', 'Contoh Produk 4', '5', 'isekai', 'Proses'),
(7, 'Ayumi Izumi', 'Contoh Produk', '333', 'dafas', 'Proses'),
(8, 'Ryuzaki Shin', 'Contoh Produk', '44', 'dasda', 'Proses'),
(9, 'Ayumi Izumi', 'Contoh Produk 4', '5', 'dadas', 'Proses'),
(10, 'Ryuzaki Shin', 'Contoh Produk', '55', 'dadas', 'Proses'),
(11, 'Nande', 'Contoh Produk', '666', 'nana', 'Proses'),
(12, 'Ayumi Izumi', 'Contoh Produk 4', '5', 'nana', 'Proses'),
(13, 'Ayumi Izumi', 'Contoh Produk 4', '5', 'nande', 'Proses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `product_id` int(11) NOT NULL,
  `penjual` varchar(500) NOT NULL,
  `notlp` varchar(50) NOT NULL,
  `namaproduk` varchar(100) NOT NULL,
  `harga` bigint(15) NOT NULL,
  `deskripsi` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `fldimage` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_produk`
--

INSERT INTO `tbl_produk` (`product_id`, `penjual`, `notlp`, `namaproduk`, `harga`, `deskripsi`, `kategori`, `fldimage`) VALUES
(27, 'Ryuzaki Shin', '6285886326980', 'Contoh Produk 4', 4000000, 'Donec rutrum congue leo eget malesuada. Donec rutrum congue leo eget malesuada. Donec rutrum congue leo eget malesuada. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Nulla porttitor accumsan tincidunt. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Pellentesque in ipsum id orci porta dapibus. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Vivamus suscipit tortor eget felis porttitor volutpat. Vivamus suscipit tortor eget felis porttitor volutpat. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat.<br /><br /><br /><br />\r\n<br /><br /><br /><br />\r\nPellentesque in ipsum id orci porta dapibus. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed porttitor lectus nibh. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur aliquet quam id dui posuere blandit. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Proin eget tortor risus. Nulla quis lorem ut libero malesuada feugiat. Sed porttitor lectus nibh. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem ut libero malesuada feugiat. Nulla quis lorem ut libero malesuada feugiat. Nulla porttitor accumsan tincidunt.<br /><br /><br /><br />\r\n<br /><br /><br /><br />\r\nVivamus suscipit tortor eget felis porttitor volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porttitor lectus nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus. Sed porttitor lectus nibh. Sed porttitor lectus nibh. Nulla quis lorem ut libero malesuada feugiat. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla quis lorem ut libero malesuada feugiat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Proin eget tortor risus. Pellentesque in ipsum id orci porta dapibus. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Nulla porttitor accumsan tincidunt. Donec rutrum congue leo eget malesuada.<br /><br /><br /><br />\r\n<br /><br /><br /><br />\r\nNulla porttitor accumsan tincidunt. Sed porttitor lectus nibh. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Nulla quis lorem ut libero malesuada feugiat. Donec rutrum congue leo eget malesuada. Nulla quis lorem ut libero malesuada feugiat. Donec sollicitudin molestie malesuada. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Cras ultricies ligula sed magna dictum porta. Donec rutrum congue leo eget malesuada. Donec sollicitudin molestie malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Curabitur aliquet quam id dui posuere blandit.<br /><br /><br /><br />\r\n<br /><br /><br /><br />\r\nNulla quis lorem ut libero malesuada feugiat. Cras ultricies ligula sed magna dictum porta. Vivamus suscipit tortor eget felis porttitor volutpat. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus suscipit tortor eget felis porttitor volutpat. Nulla porttitor accumsan tincidunt. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec rutrum congue leo eget malesuada. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Cras ultricies ligula sed magna dictum porta. Curabitur aliquet quam id dui posuere blandit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla quis lorem ut libero malesuada feugiat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Nulla quis lorem ut libero malesuada feugiat.', 'Penutup', 'image/produk/produkimage/spinach-salad.jpg'),
(28, 'Ayumi Izumi', '623333', 'nano', 50000, 'contoh deskripsi', 'Penutup', 'image/produk/produkimage/greek-salad.jpg'),
(29, 'Ayumi Izumi', '623333', 'Nano', 39999, 'nanna', 'Pembuka', 'image/produk/produkimage/Kepala_Ciwi.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `id` int(11) NOT NULL COMMENT 'role_id',
  `role` varchar(255) DEFAULT NULL COMMENT 'role_text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_roles`
--

INSERT INTO `tbl_roles` (`id`, `role`) VALUES
(1, 'Admin'),
(2, 'Editor'),
(3, 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(25) DEFAULT NULL,
  `roleid` tinyint(4) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT 0,
  `fld_address` varchar(500) NOT NULL,
  `fld_logo` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `email`, `password`, `mobile`, `roleid`, `isActive`, `fld_address`, `fld_logo`, `created_at`, `updated_at`) VALUES
(70, 'Ayumi Izumi', 'ayumi@gmail.com', '89bc0d68824fb24b3b917195330294b7fa2acce2', '623333', 1, 0, 'isekai', 'image/akunimage/logo_unindra.jpg', '2021-04-30 05:21:53', '2021-04-30 05:21:53'),
(71, 'Ryuzaki Shin', 'ryuzaki@gmail.com', 'b48efd22e5c53d0922b940e4f88afb588c5ed270', '6285886326980', 2, 0, 'isekai', 'image/akunimage/g3vylzcjgtiz.jpg', '2021-04-30 06:57:06', '2021-04-30 06:57:06'),
(72, 'nava', 'ayumiddd@gmail.com', '08cda0785276d1fd03c86d2442a69e53d79fe604', '546464', 2, 0, 'nana', 'image/akunimage/caesar.jpg', '2021-05-22 13:32:10', '2021-05-22 13:32:10'),
(73, 'Nande', 'nande@gmail.com', '08cda0785276d1fd03c86d2442a69e53d79fe604', '6768686745', 2, 0, 'nanana', 'image/akunimage/lobster-bisque.jpg', '2021-05-22 13:33:29', '2021-05-22 13:33:29'),
(74, 'badrul', 'badrul@gmail.com', '89bc0d68824fb24b3b917195330294b7fa2acce2', '25253634', 2, 0, 'isekai', 'image/akunimage/Kepala_Ciwi.png', '2021-05-29 05:18:46', '2021-05-29 05:18:46');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indeks untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`product_id`);

--
-- Indeks untuk tabel `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tbl_produk`
--
ALTER TABLE `tbl_produk`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'role_id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
