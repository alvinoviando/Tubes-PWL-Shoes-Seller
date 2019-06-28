-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2019 pada 16.24
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Superstar 80s Recon Shoes', 'Pria Original', 'Sepatu Pria', 2500000, 37, 'sepatu.jpg'),
(2, 'LXCON Shoes', 'Pria Original', 'Sepatu Pria', 1900000, 23, 'lxcon.jpg'),
(3, 'adidas Sleek Super Shoes ', 'Wanita Original', 'Sepatu Wanita', 1800000, 42, 'sleek.jpg'),
(4, 'Falcon Zip Shoes', 'Wanita Original', 'Sepatu Wanita', 1900000, 13, 'falcon.jpg'),
(9, 'Yung-96 Chasm Shoes', 'Pria Originals', 'Sepatu Pria', 1500000, 23, 'chasm2.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(1, 'Bram Musuko', 'Jln Terompet no 22 Medan', '2019-06-12 23:32:13', '2019-06-13 23:32:13'),
(2, 'Angeli Rinawati', 'Jln Angkasa Raya Medan', '2019-06-12 23:56:14', '2019-06-13 23:56:14'),
(3, 'Jessica Elizabeth R', 'Jln Angkasa Raya', '2019-06-13 12:29:13', '2019-06-14 12:29:13'),
(4, 'Rini Royanti Marbun', 'Jl. Terompet no 122', '2019-06-13 12:31:10', '2019-06-14 12:31:10'),
(5, 'Bram Musuko', 'Jln. Mana saja', '2019-06-13 17:34:38', '2019-06-14 17:34:38'),
(6, 'Jessica Elizabeth R', 'Jl. Terompet no 122', '2019-06-14 14:53:06', '2019-06-15 14:53:06'),
(7, 'Alvino', 'Medan', '2019-06-16 13:18:04', '2019-06-17 13:18:04'),
(8, 'Alvino', 'Medan', '2019-06-18 09:10:34', '2019-06-19 09:10:34'),
(9, 'Alvino', 'Medan', '2019-06-18 10:47:13', '2019-06-19 10:47:13'),
(10, 'Zhafar Salim', 'Bekasi', '2019-06-24 19:23:56', '2019-06-25 19:23:56'),
(11, 'Zhafar Salim', 'Bekasi', '2019-06-24 19:24:10', '2019-06-25 19:24:10'),
(12, 'Zhafar Salim', 'Bekasi', '2019-06-24 19:24:24', '2019-06-25 19:24:24'),
(13, 'Alvino', 'Medan', '2019-06-25 15:22:18', '2019-06-26 15:22:18'),
(14, 'Alvino', 'Bekasi', '2019-06-26 11:55:05', '2019-06-27 11:55:05'),
(15, 'Alvino', 'Medan', '2019-06-26 12:12:33', '2019-06-27 12:12:33'),
(16, 'Alvino', 'Medan', '2019-06-26 15:17:48', '2019-06-27 15:17:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 2, 'LXCON Shoes', 1, 1900000, ''),
(2, 1, 3, 'adidas Sleek Super Shoes ', 1, 1800000, ''),
(3, 2, 1, 'Superstar 80s Recon Shoes', 1, 2500000, ''),
(4, 2, 9, 'Yung-96 Chasm Shoes', 1, 1500000, ''),
(5, 2, 4, 'Falcon Zip Shoes', 1, 1900000, ''),
(6, 3, 1, 'Superstar 80s Recon Shoes', 2, 2500000, ''),
(7, 3, 2, 'LXCON Shoes', 1, 1900000, ''),
(8, 3, 3, 'adidas Sleek Super Shoes ', 1, 1800000, ''),
(9, 4, 1, 'Superstar 80s Recon Shoes', 2, 2500000, ''),
(10, 4, 3, 'adidas Sleek Super Shoes ', 1, 1800000, ''),
(11, 5, 1, 'Superstar 80s Recon Shoes', 1, 2500000, ''),
(12, 5, 4, 'Falcon Zip Shoes', 1, 1900000, ''),
(13, 5, 3, 'adidas Sleek Super Shoes ', 1, 1800000, ''),
(14, 6, 1, 'Superstar 80s Recon Shoes', 1, 2500000, ''),
(15, 6, 2, 'LXCON Shoes', 1, 1900000, ''),
(16, 7, 1, 'Superstar 80s Recon Shoes', 1, 2500000, ''),
(17, 8, 4, 'Falcon Zip Shoes', 1, 1900000, ''),
(18, 9, 1, 'Superstar 80s Recon Shoes', 1, 2500000, ''),
(19, 10, 1, 'Superstar 80s Recon Shoes', 2, 2500000, ''),
(20, 13, 9, 'Yung-96 Chasm Shoes', 1, 1500000, ''),
(21, 14, 1, 'Superstar 80s Recon Shoes', 1, 2500000, ''),
(22, 14, 9, 'Yung-96 Chasm Shoes', 1, 1500000, ''),
(23, 15, 1, 'Superstar 80s Recon Shoes', 1, 2500000, ''),
(24, 16, 1, 'Superstar 80s Recon Shoes', 1, 2500000, '');

--
-- Trigger `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin123', 'admin123', 1),
(2, 'user', 'user123', 'user123', 2),
(3, 'Bram Musuko', 'bram123', 'bram123', 2),
(4, 'Anita Sari', 'Anita', '12345', 2),
(5, 'Felix', 'Felix123', 'felix123', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
