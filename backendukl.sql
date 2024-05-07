-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Bulan Mei 2024 pada 20.16
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backendukl`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `adminID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`adminID`, `name`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-05-06 14:58:31', '2024-05-06 14:58:31'),
(2, 'admin', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-05-06 15:09:54', '2024-05-06 15:09:54'),
(3, 'admin2', 'admin2@gmail.com', '202cb962ac59075b964b07152d234b70', '2024-05-06 15:09:54', '2024-05-06 15:09:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `coffes`
--

CREATE TABLE `coffes` (
  `coffeID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `coffes`
--

INSERT INTO `coffes` (`coffeID`, `name`, `size`, `price`, `image`, `createdAt`, `updatedAt`) VALUES
(6, 'kopi3', 'l', 2400, 'cover-1715061998741.png', '2024-05-07 06:06:38', '2024-05-07 06:06:38'),
(9, 'kopi20', 'l', 15, 'cover-1715066586699.png', '2024-05-07 07:23:06', '2024-05-07 07:23:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_details`
--

CREATE TABLE `order_details` (
  `detailID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `coffeID` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `order_details`
--

INSERT INTO `order_details` (`detailID`, `orderID`, `coffeID`, `quantity`, `price`, `createdAt`, `updatedAt`) VALUES
(15, 26, 9, 2, 15, '2024-05-07 13:45:33', '2024-05-07 13:45:33'),
(18, 29, 9, 2, 15, '2024-05-07 13:57:10', '2024-05-07 13:57:10'),
(19, 30, 9, 2, 15, '2024-05-07 13:57:44', '2024-05-07 13:57:44'),
(20, 30, 6, 2, 2400, '2024-05-07 13:57:44', '2024-05-07 13:57:44'),
(21, 31, 9, 2, 15, '2024-05-07 13:58:53', '2024-05-07 13:58:53'),
(22, 31, 6, 2, 2400, '2024-05-07 13:58:53', '2024-05-07 13:58:53'),
(24, 33, 9, 2, 15, '2024-05-07 14:01:35', '2024-05-07 14:01:35'),
(25, 33, 6, 2, 2400, '2024-05-07 14:01:35', '2024-05-07 14:01:35'),
(26, 34, 6, 2, 2400, '2024-05-07 14:03:12', '2024-05-07 14:03:12'),
(27, 34, 9, 1, 15, '2024-05-07 14:03:12', '2024-05-07 14:03:12'),
(28, 35, 9, 2, 15, '2024-05-07 14:04:09', '2024-05-07 14:04:09'),
(29, 35, 6, 1, 2400, '2024-05-07 14:04:09', '2024-05-07 14:04:09'),
(31, 37, 9, 2, 15, '2024-05-07 14:27:20', '2024-05-07 14:27:20'),
(32, 37, 6, 1, 2400, '2024-05-07 14:27:20', '2024-05-07 14:27:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_lists`
--

CREATE TABLE `order_lists` (
  `orderID` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `order_type` varchar(255) DEFAULT NULL,
  `order_date` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `order_lists`
--

INSERT INTO `order_lists` (`orderID`, `customer_name`, `order_type`, `order_date`, `createdAt`, `updatedAt`) VALUES
(1, 'John Doe', 'Dine In', '2024-05-01', '2024-05-07 07:17:39', '2024-05-07 07:17:39'),
(2, 'John Doe', 'Dine In', '2024-05-01', '2024-05-07 07:21:03', '2024-05-07 07:21:03'),
(3, 'John Doe', 'Dine In', '2024-05-01', '2024-05-07 07:23:49', '2024-05-07 07:23:49'),
(4, 'John Doe', 'Dine In', '2024-05-01', '2024-05-07 07:27:07', '2024-05-07 07:27:07'),
(5, 'John Doe', 'Dine In', '2024-05-01', '2024-05-07 07:28:14', '2024-05-07 07:28:14'),
(26, 'John Doe', 'Dine In', '2024-05-01', '2024-05-07 13:45:33', '2024-05-07 13:45:33'),
(29, 'John Doe', 'Dine In', '2024-05-01', '2024-05-07 13:57:10', '2024-05-07 13:57:10'),
(30, 'John Doe', 'Dine In', '2024-05-01', '2024-05-07 13:57:44', '2024-05-07 13:57:44'),
(31, 'John Doe', 'Dine In', '2024-05-01', '2024-05-07 13:58:52', '2024-05-07 13:58:52'),
(33, 'John Doe', 'Dine In', '2024-05-01', '2024-05-07 14:01:35', '2024-05-07 14:01:35'),
(34, 'John Doe', 'Dine In', '2024-05-01', '2024-05-07 14:03:12', '2024-05-07 14:03:12'),
(35, 'John Doe', 'Dine In', '2024-05-01', '2024-05-07 14:04:09', '2024-05-07 14:04:09'),
(37, 'John Doe', 'Dine In', '2024-05-01', '2024-05-07 14:27:20', '2024-05-07 14:27:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20240506004510-create-admin.js'),
('20240506004649-create-coffe.js'),
('20240506004822-create-order-list.js'),
('20240506005011-create-order-detail.js');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`adminID`);

--
-- Indeks untuk tabel `coffes`
--
ALTER TABLE `coffes`
  ADD PRIMARY KEY (`coffeID`);

--
-- Indeks untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`detailID`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `coffeID` (`coffeID`);

--
-- Indeks untuk tabel `order_lists`
--
ALTER TABLE `order_lists`
  ADD PRIMARY KEY (`orderID`);

--
-- Indeks untuk tabel `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `coffes`
--
ALTER TABLE `coffes`
  MODIFY `coffeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `order_details`
--
ALTER TABLE `order_details`
  MODIFY `detailID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `order_lists`
--
ALTER TABLE `order_lists`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `order_lists` (`orderID`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`coffeID`) REFERENCES `coffes` (`coffeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
