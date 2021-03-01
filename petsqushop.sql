-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Feb 2021 pada 16.56
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petsqushop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `age` varchar(5) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`id`, `username`, `password`, `age`, `address`) VALUES
(1, 'sawramdhavi', '$2y$10$Eag6koTYP4M29vM.XdcxFe4.tNh2yvKX/pMPSW98qjPsDV66R4lEi', '19', 'tangerang'),
(3, 'hesekiel hutajulu', '$2y$10$cYInboRV3M1vbMY9/ZhHtOU9Mxmg7ahPfct8.3ORx.AHf.9MIabri', '22', 'medan'),
(5, 'dwipayana', '$2y$10$EwdKHCF8plYCcTnN1KMnyuUivmX4DWI.QS/GZV2st9WUV2zhuAoMi', '30', 'jl. persatuan  gg. duku cilengsi, jawa barat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dataadmin`
--

CREATE TABLE `dataadmin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `age` varchar(5) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dataadmin`
--

INSERT INTO `dataadmin` (`id`, `username`, `password`, `age`, `address`) VALUES
(1, 'rifki', '$2y$10$QrNRk6vndcxnd5k12yoBlO9xMLzds7O8MLe6jg6au7DuHR9SecEYK', '19', 'jakarta'),
(3, 'dhavi', '$2y$10$.vopMXZZtmzuKAtz.NlayOPzCFlag3cHPb3a..1TKaM0sKYEK9qx.', '19', 'jl. kartika gg.melati');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oderdetail`
--

CREATE TABLE `oderdetail` (
  `productid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `oderdetail`
--

INSERT INTO `oderdetail` (`productid`, `orderid`, `price`, `quantity`) VALUES
(1, 37, 100000, 3),
(2, 36, 200000, 1),
(3, 39, 300000, 4),
(4, 40, 400000, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `gambar`, `name`, `price`, `quantity`, `description`) VALUES
(1, 'makanan1.jpg', 'Chicken Liver Recipe & cheese', 25000, 25, ''),
(2, 'makanan2.jpg', 'Chicken Liver Recipe', 20000, 10, 'good'),
(3, 'makanan3.jpg', 'Loveat Dogfood Salmon', 40000, 15, 'good'),
(4, 'makanan4.jpg', 'Dogfood Chicken and Vegetable', 30000, 9, 'good'),
(5, 'makanan5.jpg', 'Zeal petmilk small 380 ml', 15000, 8, '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dataadmin`
--
ALTER TABLE `dataadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oderdetail`
--
ALTER TABLE `oderdetail`
  ADD PRIMARY KEY (`productid`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `dataadmin`
--
ALTER TABLE `dataadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
