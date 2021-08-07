-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Agu 2021 pada 04.33
-- Versi server: 5.7.33
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

--
-- Dumping data untuk tabel `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'Papan Bunga', 'id', '2021-08-07 00:20:23', '2021-08-07 00:20:23'),
(2, 2, 'Ucapan Selamat', 'id', '2021-08-07 00:21:12', '2021-08-07 00:21:12'),
(3, 3, 'Bunga Papan Ucapan Selamat', 'id', '2021-08-07 00:21:46', '2021-08-07 00:21:46'),
(4, 4, 'Ucapan Wedding', 'id', '2021-08-07 00:22:44', '2021-08-07 00:22:44'),
(5, 5, 'Bunga Papan Wedding', 'id', '2021-08-07 00:23:46', '2021-08-07 00:23:46'),
(6, 6, 'Ucapan Duka Cita', 'id', '2021-08-07 00:24:35', '2021-08-07 00:33:46'),
(7, 7, 'Bunga Papan Duka Cita', 'id', '2021-08-07 00:28:37', '2021-08-07 00:49:36'),
(8, 8, 'Semua Bunga', 'id', '2021-08-07 00:37:27', '2021-08-07 00:51:02'),
(9, 9, 'Hand Bucket', 'id', '2021-08-07 00:40:08', '2021-08-07 00:40:08'),
(10, 10, 'Bunga Tangan', 'id', '2021-08-07 00:43:51', '2021-08-07 00:43:51'),
(11, 11, 'Bunga Meja', 'id', '2021-08-07 00:47:00', '2021-08-07 00:55:11'),
(12, 12, 'Bunga Box', 'id', '2021-08-07 00:53:27', '2021-08-07 00:55:55'),
(13, 13, 'Aneka Parcel', 'id', '2021-08-07 00:59:05', '2021-08-07 00:59:05'),
(14, 14, 'Parcel', 'id', '2021-08-07 01:01:34', '2021-08-07 01:01:34'),
(15, 15, 'Parcel Buah', 'id', '2021-08-07 01:02:31', '2021-08-07 01:02:31'),
(16, 16, 'Parcel Lebaran', 'id', '2021-08-07 01:03:07', '2021-08-07 01:03:07'),
(17, 17, 'Parcel Pecah Belah', 'id', '2021-08-07 01:05:55', '2021-08-07 01:05:55'),
(18, 18, 'Bunga Uang', 'id', '2021-08-07 01:12:08', '2021-08-07 01:12:08'),
(19, 19, 'Semua Kue', 'id', '2021-08-07 01:16:45', '2021-08-07 01:18:39'),
(20, 20, 'Ulang Tahun', 'id', '2021-08-07 01:20:53', '2021-08-07 01:24:13'),
(21, 21, 'Kue Ulang Tahun', 'id', '2021-08-07 01:23:18', '2021-08-07 01:23:18'),
(22, 22, 'Romance', 'id', '2021-08-07 01:26:21', '2021-08-07 01:26:21'),
(23, 23, 'Kue Percintaan', 'id', '2021-08-07 01:27:33', '2021-08-07 01:27:33'),
(24, 24, 'Kue Aneka Rasa', 'id', '2021-08-07 01:29:16', '2021-08-07 01:29:16'),
(25, 25, 'Kue Coklat', 'id', '2021-08-07 01:29:48', '2021-08-07 01:29:48'),
(26, 26, 'Kue Strawberry', 'id', '2021-08-07 01:31:06', '2021-08-07 01:34:20'),
(27, 27, 'Kue Red Velvet', 'id', '2021-08-07 01:34:57', '2021-08-07 01:34:57'),
(28, 28, 'Kue Starwhite', 'id', '2021-08-07 01:35:33', '2021-08-07 01:35:33'),
(29, 29, 'Kue Rainbow', 'id', '2021-08-07 01:36:10', '2021-08-07 01:36:10'),
(30, 30, 'Aneka Kue Dekorasi', 'id', '2021-08-07 01:37:04', '2021-08-07 01:37:04'),
(31, 31, 'Dekorasi Kue', 'id', '2021-08-07 01:38:12', '2021-08-07 01:38:12'),
(32, 32, 'Gift', 'id', '2021-08-07 01:45:09', '2021-08-07 01:45:09'),
(33, 33, 'Bunda Florist Gifts', 'id', '2021-08-07 01:45:48', '2021-08-07 01:45:48'),
(34, 34, 'Hand Sanitizer', 'id', '2021-08-07 01:47:06', '2021-08-07 01:47:06'),
(35, 35, 'Romantic & Sweets', 'id', '2021-08-07 01:48:10', '2021-08-07 01:48:10'),
(36, 36, 'Gift Set', 'id', '2021-08-07 01:48:56', '2021-08-07 01:48:56'),
(37, 37, 'Couple Gift', 'id', '2021-08-07 01:49:50', '2021-08-07 01:49:50'),
(38, 38, 'Parfum', 'id', '2021-08-07 01:51:32', '2021-08-07 01:51:32');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
