-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Agu 2021 pada 04.34
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
-- Dumping data untuk tabel `manual_payment_methods`
--

INSERT INTO `manual_payment_methods` (`id`, `type`, `heading`, `description`, `bank_info`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'bank_payment', 'BCA', '<p><b>BANK TRANSFER (VERIFIKASI MANUAL) UNTUK CORPORATE PAYMENT</b></p><p>Pengiriman hanya akan diproses bila Anda telah melakukan konfirmasi pembayaran via Form Konfirmasi Bila Anda melakukan transfer melalui ATM, kami sangat menyarankan Anda untuk melakukan transfer melalui Mobile Banking demi kenyamanan Anda. Pastikan Anda selalu memasukan kode pemesanan sehingga layanan pelanggan kami dapat mengonfirmasi pembayaran dan proses pemesanan dengan mudah. Untuk konfirmasi pembayaran transfer tunai Anda, kirim email ke info@bundaflorist.id dengan mencantumkan nama pemesan dan total yang ditransfer.</p>', '[{\"bank_name\":\"BCA\",\"account_name\":\"Hidayat Maulana\",\"account_number\":\"740-1383-879\",\"routing_number\":\"CENAIDJA\"}]', '3', '2021-08-07 03:39:13', '2021-08-07 03:40:48'),
(2, 'bank_payment', 'MANDIRI', '<p>BANK TRANSFER (VERIFIKASI MANUAL) UNTUK CORPORATE PAYMENT\r\n</p><p>Pengiriman hanya akan diproses bila Anda telah melakukan konfirmasi pembayaran via Form Konfirmasi Bila Anda melakukan transfer melalui ATM, kami sangat menyarankan Anda untuk melakukan transfer melalui Mobile Banking demi kenyamanan Anda. Pastikan Anda selalu memasukan kode pemesanan sehingga layanan pelanggan kami dapat mengonfirmasi pembayaran dan proses pemesanan dengan mudah. Untuk konfirmasi pembayaran transfer tunai Anda, kirim email ke info@bundaflorist.id dengan mencantumkan nama pemesan dan total yang ditransfer.</p><p>\r\n</p>', '[{\"bank_name\":\"MANDIRI\",\"account_name\":\"Hidayat Maulana\",\"account_number\":\"00-600-1011-9067\",\"routing_number\":\"BMRIIDJA852\"}]', '4', '2021-08-07 03:41:40', '2021-08-07 03:41:40');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
