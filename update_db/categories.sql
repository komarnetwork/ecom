-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Agu 2021 pada 06.17
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
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `level`, `name`, `order_level`, `commision_rate`, `banner`, `icon`, `featured`, `top`, `digital`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 0, 0, 'Papan Bunga', 0, 0.00, '14', '14', 1, 0, 0, 'papan-bunga', 'papan bunga', 'kami menjual papan bunga, karangan bunga berkualitas dengan harga terjangkau. bunga kami asli dan premium serta bisa bertahan lama, kami melayani online 24 jam', '2021-08-07 06:04:14', '2021-08-07 06:04:14'),
(2, 1, 1, 'Ucapan Selamat', 0, 0.00, NULL, NULL, 0, 0, 0, 'ucapan-selamat', 'Bunga Papan Ucapan Selamat', 'bunga papan ucapan selamat berkualitas dan harga terjangkau, dengan bunga premium yang dapat bertahan lama', '2021-08-07 06:04:14', '2021-08-07 06:04:14'),
(3, 2, 2, 'Bunga Papan Ucapan Selamat', 0, 0.00, NULL, NULL, 0, 0, 0, 'bunga-papan-ucapan-selamat', 'Bunga Papan Ucapan Selamat', 'bunga papan ucapan selamat berkualitas dan harga terjangkau, dengan bunga premium yang dapat bertahan lama', '2021-08-07 06:04:14', '2021-08-07 06:04:14'),
(4, 1, 1, 'Ucapan Wedding', 0, 0.00, NULL, NULL, 0, 0, 0, 'ucapan-wedding', 'Ucapan Wedding', 'bunga papan wedding berkualitas dan harga terjangkau, dengan bunga premium yang dapat bertahan lama', '2021-08-07 06:04:14', '2021-08-07 06:04:14'),
(5, 4, 2, 'Bunga Papan Wedding', 0, 0.00, NULL, NULL, 0, 0, 0, 'bunga-papan-ucapan-wedding', 'Bunga Papan Wedding', 'Bunga Papan Wedding berkualitas dan harga terjangkau, dengan bunga premium yang dapat bertahan lama', '2021-08-07 06:04:14', '2021-08-07 06:04:14'),
(6, 1, 1, 'Ucapan Duka Cita', 0, 0.00, NULL, NULL, 0, 0, 0, 'ucapan-duka-cita', 'Ucapan Duka Cita', 'Ucapan Duka Cita dengan bunga berkualitas dan harga terjangkau, bunga papan duka cita termurah, bunga papan, papan bunga, bunga papan murah, bunga duka cita murah berkualitas, bunga duka cita jakarta', '2021-08-07 06:04:14', '2021-08-07 06:04:14'),
(7, 6, 2, 'Bunga Papan Duka Cita', 0, 0.00, NULL, NULL, 0, 0, 0, 'bunga-papan-duka-cita', 'Bunga Papan Duka Cita', 'bunga papan duka cita berkualitas dan harga terjangkau, dengan bunga premium yang dapat bertahan lama', '2021-08-07 06:06:43', '2021-08-07 06:04:14'),
(8, 0, 0, 'Semua Bunga', 0, 0.00, '8', '8', 1, 0, 0, 'semua-bunga', 'Semua Bunga Hand Bucket, Bunga Tangan, Bunga Meja', 'hand bucket premium berkualitas dan harga terjangkau, bunga bucket wisuda termurah, bunga tangan, bunga meja, bunga meja murah, bunga tangan murah berkualitas, bunga tangan jakarta', '2021-08-07 06:04:14', '2021-08-07 06:04:14'),
(9, 8, 2, 'Hand Bucket', 0, 0.00, NULL, NULL, 0, 0, 0, 'hand-bucket', 'Hand Bucket', 'hand bucket premium berkualitas dan harga terjangkau, bunga bucket wisuda termurah, bunga tangan, bunga meja, bunga meja murah, bunga tangan murah berkualitas, bunga tangan jakarta', '2021-08-07 06:04:14', '2021-08-07 06:04:14'),
(10, 9, 3, 'Bunga Tangan', 0, 0.00, NULL, NULL, 0, 0, 0, 'bunga-tangan', 'Bunga Bucket', 'kami menyediakan bunga tangan untuk gift kepada orang yang mencitai kamu, berikan secara romantis dengan membeli product bunga tangan berkualitas dari kami', '2021-08-07 06:04:14', '2021-08-07 06:04:14'),
(11, 9, 3, 'Bunga Meja', 0, 0.00, NULL, NULL, 0, 0, 0, 'bunga-meja', 'Jual Flower Box - Buket Bunga Box, Bunga Asli Bunda Florist', 'Kado cantik untuk orang terkasih. Bunga box ini cocok untuk kejutan ulang tahun, valentine dan wisuda. Bisa pesan custom. Kami Buka 24 jam', '2021-08-07 06:04:14', '2021-08-07 06:04:14'),
(12, 0, 0, 'Bunga Box', 0, 0.00, '12', '12', 0, 0, 0, 'bunga-box', 'Jual Flower Box - Buket Bunga Box, Bunga Asli Bunda Florist', 'Kado cantik untuk orang terkasih. Bunga box ini cocok untuk kejutan ulang tahun, valentine dan wisuda. Bisa pesan custom. Kami Buka 24 jam', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(13, 0, 0, 'Aneka Parcel', 0, 0.00, '15', '15', 1, 0, 0, 'bunga-box', 'Aneka Parcel, Parcel Buah dan Parcel Lebaran Murah', 'sebuah hari raya yang indah dengan memberikan parcel lebaran kepada keluarga atau rekan anda, kami juga menjual parcel buah jakarta buka 24 jam', '2021-08-07 06:11:55', '2021-08-07 06:04:15'),
(14, 13, 1, 'Parcel', 0, 0.00, NULL, NULL, 0, 0, 0, 'parcel', 'Aneka Parcel, Parcel Buah dan Parcel Lebaran Murah', 'Jual Parcel Buah, Parcel lebaran, parcel pecah belah online di Bunda Florist buka 24jam, Harga terbaik dan pilihan Parcel Buah terlengkap Pengiriman Cepat Seluruh Indonesia', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(15, 14, 2, 'Parcel Buah', 0, 0.00, NULL, NULL, 0, 0, 0, 'Parcel-Buah', 'Parcel Buah dan Parcel Lebaran Murah', 'sebuah hari raya yang indah dengan memberikan parcel buah kepada keluarga atau rekan anda', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(16, 14, 2, 'Parcel lebaran', 0, 0.00, NULL, NULL, 0, 0, 0, 'Parcel-lebaran', 'Parcel Buah dan Parcel Lebaran Murah', 'sebuah hari raya yang indah dengan memberikan parcel lebaran kepada keluarga atau rekan anda', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(17, 14, 2, 'Parcel Pecah Belah', 0, 0.00, NULL, NULL, 0, 0, 0, 'Parcel-Pecah-Belah', 'Aneka parcel dan Parcel Pecah Belah Murah', 'sebuah hari raya yang indah dengan memberikan parcel Pecah Belah kepada keluarga atau rekan anda', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(18, 0, 0, 'Bunga Uang', 0, 0.00, '9', '9', 1, 0, 0, 'bunga-uang', 'Bunga Uang', 'Kami menjual Bunga Uang murah, bunga bucket uang, bucket uang, bunga uang jakarta, bunga uang asli', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(19, 0, 0, 'Semua Kue', 0, 0.00, '10', '10', 1, 0, 0, 'semua-kue', 'Semua Kue', 'Kami menjual kue, berbagai kue seperti kue ulang tahun, kue coklat, kue decor, kami menjual dengan harga bervariatif tergantung kebutuhan anda, segera pesan sekarang', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(20, 19, 1, 'Ulang Tahun', 0, 0.00, NULL, NULL, 0, 0, 0, 'semua-kue', 'Semua Kue', 'Kami menjual kue, berbagai kue seperti kue ulang tahun, kue coklat, kue decor, kami menjual dengan harga bervariatif tergantung kebutuhan anda, segera pesan sekarang', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(21, 20, 2, 'Kue Ulang Tahun', 0, 0.00, NULL, NULL, 0, 0, 0, 'Kue-Ulang-Tahun', 'Kue Ulang Tahun', 'Kue ulang tahun - Jual custom kue 3D untuk Ulang tahun. Tersedia dalam berbagai varian bentuk dan rasa. Pengiriman ke seluruh Indonesia hanya di Bunda Florist', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(22, 19, 1, 'Romance', 0, 0.00, NULL, NULL, 0, 0, 0, 'Romance', 'Kue Romance', 'Kue Romance, Kue Romance untuk pernikahan, jual Kue Romance, Kue Romance jakarta', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(23, 22, 2, 'Kue Percintaan', 0, 0.00, NULL, NULL, 0, 0, 0, 'Kue-Percintaan', 'Kue Percintaan', 'Kue Percintaan, Kue Percintaan murah, Kue Percintaan jakarta, kue pernikahan', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(24, 19, 1, 'Kue Aneka Rasa', 0, 0.00, NULL, NULL, 0, 0, 0, 'Kue-Aneka-Rasa', 'Kue Aneka Rasa', 'Kami jual kue dengan berbagai rasa, mulai dari rasa coklat, rasa strawberry dsb', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(25, 24, 2, 'Kue Coklat', 0, 0.00, NULL, NULL, 0, 0, 0, 'Kue-Coklat', 'Kue Coklat', 'Kami jual kue dengan berbagai rasa Kue Coklat, mulai dari rasa coklat, rasa strawberry dsb', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(26, 24, 2, 'Kue Strawberry', 0, 0.00, NULL, NULL, 0, 0, 0, 'Kue-Strawberry', 'Kue Strawberry', 'Kami jual kue dengan berbagai rasa Kue Strawberry, mulai dari rasa Strawberry, rasa strawberry dsb', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(27, 24, 2, 'Kue Red Velvet', 0, 0.00, NULL, NULL, 0, 0, 0, 'Kue-Red-Velvet', 'Kue Red Velvet', 'Kami jual kue dengan berbagai rasa Kue Red Velvet, mulai dari rasa Kue Red Velvet, rasa Kue Red Velvet dsb', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(28, 24, 2, 'Kue Starwhite', 0, 0.00, NULL, NULL, 0, 0, 0, 'Kue-Starwhite', 'Kue Starwhite', 'Kami jual kue dengan berbagai rasa Kue Starwhite, mulai dari rasa Kue Starwhite, rasa Kue Starwhite dsb', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(29, 24, 2, 'Kue Rainbow', 0, 0.00, NULL, NULL, 0, 0, 0, 'Kue-Rainbow', 'Kue Rainbow', 'Kami jual kue dengan berbagai rasa Kue Rainbow, mulai dari rasa Kue Rainbow, rasa Kue Rainbow dsb', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(30, 19, 1, 'Aneka Kue Dekorasi', 0, 0.00, NULL, NULL, 0, 0, 0, 'Aneka-Kue-Dekorasi', 'Aneka Kue Dekorasi', 'Aneka Kue Dekorasi', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(31, 30, 2, 'Dekorasi Kue', 0, 0.00, NULL, NULL, 0, 0, 0, 'Dekorasi-Kue', 'Dekorasi Kue', 'Dekorasi Kue', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(32, 0, 0, 'Gift', 0, 0.00, '28', '28', 1, 0, 0, 'Gift', 'Gift', 'berikan gift untuk orang yang anda cintai, kasih kesempatan untuk mereka agar selalu mencaimu sepanjang hari. segera pesan gift murah di bunda florist', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(33, 32, 1, 'Bunda Florist Gifts', 0, 0.00, NULL, NULL, 0, 0, 0, 'Bunda-Florist-Gifts', 'Bunda Florist Gifts', 'Bunda Florist Gifts', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(34, 33, 2, 'Hand Sanitizer', 0, 0.00, NULL, NULL, 0, 0, 0, 'Hand-Sanitizer', 'Hand Sanitizer', 'Hand Sanitizer', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(35, 32, 1, 'Romantic & Sweets', 0, 0.00, NULL, NULL, 0, 0, 0, 'Bunda-Florist-Gifts', 'Romantic & Sweets', 'Romantic & Sweets', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(36, 35, 2, 'Gift Set', 0, 0.00, NULL, NULL, 0, 0, 0, 'gift-set', 'Gift Set', 'Gift Set', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(37, 35, 2, 'Couple Gift', 0, 0.00, NULL, NULL, 0, 0, 0, 'Couple-Gift', 'Couple Gift', 'Couple Gift', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(38, 35, 2, 'Parfum', 0, 0.00, NULL, NULL, 0, 0, 0, 'Couple-Gift', 'Parfum', 'Parfum', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(39, 0, 0, 'Standing Flowers', 0, 0.00, '7', '7', 1, 0, 0, 'Couple-Gift', 'Parfum', 'Parfum', '2021-08-07 06:14:23', '2021-08-07 06:04:15'),
(40, 39, 1, 'Krans', 0, 0.00, '7', '7', 0, 0, 0, 'Krans', 'Aneka Krans', 'Kami menjual aneka krans, yaitu krans duka cita, krans ucapan selemat, dan krans wedding', '2021-08-07 06:04:15', '2021-08-07 06:04:15'),
(41, 40, 2, 'Krans Duka Cita', 0, 0.00, NULL, NULL, 0, 0, 0, 'Krans-duka-cita', 'Aneka Krans', 'Kami menjual aneka krans, yaitu krans duka cita, krans ucapan selemat, dan krans wedding', '2021-08-07 06:07:58', '2021-08-07 06:04:15'),
(42, 40, 2, 'Krans Ucapan Selamat', 0, 0.00, NULL, NULL, 0, 0, 0, 'Krans-ucapan-selamat', 'Aneka Krans', 'Kami menjual aneka krans, yaitu krans ucapan selamat, krans ucapan selemat, dan krans ucapan selamat', '2021-08-07 06:08:01', '2021-08-07 06:04:15'),
(43, 40, 2, 'Krans Ucapan Wedding', 0, 0.00, NULL, NULL, 0, 0, 0, 'Krans-ucapan-wedding', 'Aneka Krans', 'Kami menjual aneka krans, yaitu krans ucapan wedding, krans ucapan selemat, dan krans ucapan wedding', '2021-08-07 06:08:03', '2021-08-07 06:04:15');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
