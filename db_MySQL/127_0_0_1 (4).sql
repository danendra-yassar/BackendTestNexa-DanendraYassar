-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Agu 2023 pada 04.22
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend_test_db`
--
CREATE DATABASE IF NOT EXISTS `backend_test_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `backend_test_db`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--
-- Pembuatan: 03 Agu 2023 pada 11.22
-- Pembaruan terakhir: 04 Agu 2023 pada 02.18
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `refresh_token`, `createdAt`, `updatedAt`) VALUES
(1, 'Admin', 'admin@mail.com', '$2b$10$wrgu1bZagVYUh3SAQxzL/uXfDoMwZo/eZC99.MnjJuUBQhYvGrnIO', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm5hbWUiOiJBZG1pbiIsImVtYWlsIjoiYWRtaW5AbWFpbC5jb20iLCJpYXQiOjE2OTExMTE2NDMsImV4cCI6MTY5MTE5ODA0M30.d4S9iV77aC0SHwdNG5h-RDcr7qr1xG9Ei9z6NZlnhxA', '2023-08-03 12:06:42', '2023-08-04 01:14:03'),
(2, 'karyawan test', 'test@mail.com', '$2b$10$UiFiz4dUKFJgKL/Ja9ZDieNb0MY/UUBep3UdsdsBTIpU0uydVZBWy', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjIsIm5hbWUiOiJrYXJ5YXdhbiB0ZXN0IiwiZW1haWwiOiJ0ZXN0QG1haWwuY29tIiwiaWF0IjoxNjkxMTE1MzI5LCJleHAiOjE2OTEyMDE3Mjl9.a1aHk4aPuf7HqRuEZBe95ZCw2oxdO2G77Al5Hqf1LN4', '2023-08-03 17:41:43', '2023-08-04 02:15:29'),
(3, 'jhon doe', 'jhon@mail.com', '$2b$10$zl6bcGFrk7a9pJ/b87ByTeWgdpKR.vUq399A6gtkwQuj3PwtieGpu', NULL, '2023-08-04 00:46:26', '2023-08-04 00:46:26');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
