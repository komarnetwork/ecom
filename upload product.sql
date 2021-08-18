-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 18 Agu 2021 pada 13.26
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unique_identifier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated` int(1) NOT NULL DEFAULT '1',
  `image` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `addons`
--

INSERT INTO `addons` (`id`, `name`, `unique_identifier`, `version`, `activated`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Offline Payment', 'offline_payment', '1.3', 1, 'offline_banner.jpg', '2021-08-07 02:24:51', '2021-08-07 02:24:51'),
(2, 'club_point', 'club_point', '1.3', 1, 'club_points.png', '2021-08-07 12:16:23', '2021-08-07 12:16:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `set_default` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `address`, `country`, `city`, `longitude`, `latitude`, `postal_code`, `phone`, `set_default`, `created_at`, `updated_at`) VALUES
(1, 8, 'Jl. Raya Bogor No. 50, RT/RW: 002/07', 'Indonesia', 'Jakarta', NULL, NULL, '14544', '08522222222', 0, '2021-08-07 09:37:20', '2021-08-07 09:37:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `currency_format` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `app_settings`
--

INSERT INTO `app_settings` (`id`, `name`, `logo`, `currency_id`, `currency_format`, `facebook`, `twitter`, `instagram`, `youtube`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, 'Active eCommerce', 'uploads/logo/matggar.png', 1, 'symbol', 'https://facebook.com', 'https://twitter.com', 'https://instagram.com', 'https://youtube.com', 'https://google.com', '2019-08-04 16:39:15', '2019-08-04 16:39:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Size', '2020-02-24 05:55:07', '2020-02-24 05:55:07'),
(2, 'Fabric', '2020-02-24 05:55:13', '2020-02-24 05:55:13'),
(3, 'Waktu Pengiriman', '2021-08-07 08:30:14', '2021-08-07 08:30:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `attribute_translations`
--

CREATE TABLE `attribute_translations` (
  `id` bigint(20) NOT NULL,
  `attribute_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `attribute_translations`
--

INSERT INTO `attribute_translations` (`id`, `attribute_id`, `name`, `lang`, `created_at`, `updated_at`) VALUES
(1, 3, 'Waktu Pengiriman', 'id', '2021-08-07 08:30:14', '2021-08-07 08:30:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `attribute_value_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `attribute_id`, `value`, `attribute_value_name`, `color_code`, `created_at`, `updated_at`) VALUES
(1, 1, '30x30', '', NULL, '2021-08-07 08:33:40', '2021-08-07 08:33:40'),
(2, 1, '30x50', '', NULL, '2021-08-07 08:33:40', '2021-08-07 08:33:40'),
(3, 1, '50x50', '', NULL, '2021-08-07 08:33:40', '2021-08-07 08:33:40'),
(4, 1, '50x80', '', NULL, '2021-08-07 08:33:40', '2021-08-07 08:33:40'),
(5, 1, '50x100', '', NULL, '2021-08-07 08:33:40', '2021-08-07 08:33:40'),
(6, 1, '100x100', '', NULL, '2021-08-07 08:33:40', '2021-08-07 08:33:40'),
(7, 1, '100x150', '', NULL, '2021-08-07 08:33:40', '2021-08-07 08:33:40'),
(8, 1, '100x200', '', NULL, '2021-08-07 08:33:40', '2021-08-07 08:33:40'),
(9, 1, '150x200', '', NULL, '2021-08-07 08:33:40', '2021-08-07 08:33:40'),
(10, 1, '200x250', '', NULL, '2021-08-07 08:33:40', '2021-08-07 08:33:40'),
(11, 1, '200x300', '', NULL, '2021-08-07 08:33:40', '2021-08-07 08:33:40'),
(12, 1, '250x300', '', NULL, '2021-08-07 08:33:40', '2021-08-07 08:33:40'),
(13, 3, 'Pagi (08:00 - 13:00)', '', NULL, '2021-08-07 08:33:40', '2021-08-07 08:33:40'),
(14, 3, 'Siang (13:00 - 18:00)', '', NULL, '2021-08-07 08:33:40', '2021-08-07 08:33:40'),
(15, 3, 'Malam (18:00 - 23:00)', '', NULL, '2021-08-07 08:33:41', '2021-08-07 08:33:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '1',
  `published` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `banners`
--

INSERT INTO `banners` (`id`, `photo`, `url`, `position`, `published`, `created_at`, `updated_at`) VALUES
(4, 'uploads/banners/banner.jpg', '#', 1, 1, '2019-03-12 05:58:23', '2019-06-11 04:56:50'),
(5, 'uploads/banners/banner.jpg', '#', 1, 1, '2019-03-12 05:58:41', '2019-03-12 05:58:57'),
(6, 'uploads/banners/banner.jpg', '#', 2, 1, '2019-03-12 05:58:52', '2019-03-12 05:58:57'),
(7, 'uploads/banners/banner.jpg', '#', 2, 1, '2019-05-26 05:16:38', '2019-05-26 05:17:34'),
(8, 'uploads/banners/banner.jpg', '#', 2, 1, '2019-06-11 05:00:06', '2019-06-11 05:00:27'),
(9, 'uploads/banners/banner.jpg', '#', 1, 1, '2019-06-11 05:00:15', '2019-06-11 05:00:29'),
(10, 'uploads/banners/banner.jpg', '#', 1, 0, '2019-06-11 05:00:24', '2019-06-11 05:01:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `photo` int(11) DEFAULT NULL,
  `source` varchar(191) COLLATE utf8_unicode_ci DEFAULT 'www.bundaflorist.id',
  `views` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `meta_title` varchar(199) COLLATE utf8_unicode_ci NOT NULL,
  `meta_img` int(11) DEFAULT NULL,
  `meta_tag` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `tags` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'bunga ucapan selemat', 'bunga-ucapan-selemat', '2021-08-14 17:03:47', '2021-08-14 17:03:47', NULL),
(2, 'bunga duka cita', 'bunga-duka-cita', '2021-08-14 17:05:04', '2021-08-14 17:05:04', NULL),
(3, 'toko bunga murah', 'toko-bunga-murah', '2021-08-14 17:07:25', '2021-08-14 17:07:25', NULL),
(4, 'toko-bunga-jakarta', 'toko-bunga-jakarta', '2021-08-14 17:07:39', '2021-08-14 17:07:39', NULL),
(5, 'Ee', 'ee', '2021-08-14 17:44:13', '2021-08-14 17:44:13', NULL),
(6, 'ff', 'ff', '2021-08-14 17:49:16', '2021-08-14 17:49:16', NULL),
(7, 'Gg', 'gg', '2021-08-14 17:50:08', '2021-08-14 17:50:08', NULL),
(8, 'hh', 'hh', '2021-08-14 17:50:54', '2021-08-14 17:50:54', NULL),
(9, 'asd', 'asd', '2021-08-14 17:51:22', '2021-08-14 17:51:22', NULL),
(10, 'www', 'www', '2021-08-14 18:01:35', '2021-08-14 18:01:35', NULL),
(11, 'dfd', 'dfd', '2021-08-14 18:02:04', '2021-08-14 18:02:04', NULL),
(12, 'dfb', 'dfb', '2021-08-14 18:20:12', '2021-08-14 18:20:12', NULL),
(13, 'jt', 'jt', '2021-08-14 18:22:37', '2021-08-14 18:22:37', NULL),
(14, 'ftjftj', 'ftjftj', '2021-08-14 18:55:38', '2021-08-14 18:55:38', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `top` int(1) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `brands`
--

INSERT INTO `brands` (`id`, `name`, `logo`, `top`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Bunga Bunda Florist', '1', 1, 'bunga-bunda-florist', 'Toko Bunga Bunda Florist Indonesia', 'Toko bunga papan murah di jakarta, bunga papan ucapan selamat, bunga papan, papan bunga, bunga papan murah terbaik, bunga papan jakarta, toko bunga, toko bunga papan, toko bunga terbaik', '2021-08-06 12:19:57', '2021-08-06 12:19:57'),
(2, 'Product Penjual', '25', 1, 'product-penjual', 'Toko Bunga Bunda Florist Indonesia', 'Toko bunga papan murah di jakarta, bunga papan ucapan selamat, bunga papan, papan bunga, bunga papan murah terbaik, bunga papan jakarta, toko bunga, toko bunga papan, toko bunga terbaik', '2021-08-06 12:19:57', '2021-08-06 12:19:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `brand_translations`
--

CREATE TABLE `brand_translations` (
  `id` bigint(20) NOT NULL,
  `brand_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `business_settings`
--

CREATE TABLE `business_settings` (
  `id` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci,
  `lang` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `business_settings`
--

INSERT INTO `business_settings` (`id`, `type`, `value`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'home_default_currency', '1', NULL, '2018-10-16 01:35:52', '2019-01-28 01:26:53'),
(2, 'system_default_currency', '2', NULL, '2018-10-16 01:36:58', '2021-08-06 02:36:14'),
(3, 'currency_format', '1', NULL, '2018-10-17 03:01:59', '2018-10-17 03:01:59'),
(4, 'symbol_format', '1', NULL, '2018-10-17 03:01:59', '2019-01-20 02:10:55'),
(5, 'no_of_decimals', '0', NULL, '2018-10-17 03:01:59', '2021-08-06 02:31:43'),
(6, 'product_activation', '1', NULL, '2018-10-28 01:38:37', '2019-02-04 01:11:41'),
(7, 'vendor_system_activation', '1', NULL, '2018-10-28 07:44:16', '2019-02-04 01:11:38'),
(8, 'show_vendors', '1', NULL, '2018-10-28 07:44:47', '2019-02-04 01:11:13'),
(9, 'paypal_payment', '1', NULL, '2018-10-28 07:45:16', '2021-08-06 09:40:44'),
(10, 'stripe_payment', '0', NULL, '2018-10-28 07:45:47', '2018-11-14 01:51:51'),
(11, 'cash_payment', '0', NULL, '2018-10-28 07:46:05', '2021-08-06 09:40:53'),
(12, 'payumoney_payment', '0', NULL, '2018-10-28 07:46:27', '2019-03-05 05:41:36'),
(13, 'best_selling', '1', NULL, '2018-12-24 08:13:44', '2019-02-14 05:29:13'),
(14, 'paypal_sandbox', '0', NULL, '2019-01-16 12:44:18', '2019-01-16 12:44:18'),
(15, 'sslcommerz_sandbox', '1', NULL, '2019-01-16 12:44:18', '2019-03-14 00:07:26'),
(16, 'sslcommerz_payment', '0', NULL, '2019-01-24 09:39:07', '2019-01-29 06:13:46'),
(17, 'vendor_commission', '1', NULL, '2019-01-31 06:18:04', '2021-08-07 17:39:56'),
(18, 'verification_form', '[{\"type\":\"text\",\"label\":\"Nama Kamu\"},{\"type\":\"text\",\"label\":\"Nama Toko\"},{\"type\":\"text\",\"label\":\"Email\"},{\"type\":\"text\",\"label\":\"Alamat Toko Lengkap\"},{\"type\":\"text\",\"label\":\"Nomor Telepon Aktif\"},{\"type\":\"file\",\"label\":\"Photo Identitas ID (KTP)\"}]', NULL, '2019-02-03 11:36:58', '2021-08-07 14:36:41'),
(19, 'google_analytics', '0', NULL, '2019-02-06 12:22:35', '2019-02-06 12:22:35'),
(20, 'facebook_login', '0', NULL, '2019-02-07 12:51:59', '2019-02-08 19:41:15'),
(21, 'google_login', '0', NULL, '2019-02-07 12:52:10', '2019-02-08 19:41:14'),
(22, 'twitter_login', '0', NULL, '2019-02-07 12:52:20', '2019-02-08 02:32:56'),
(23, 'payumoney_payment', '1', NULL, '2019-03-05 11:38:17', '2019-03-05 11:38:17'),
(24, 'payumoney_sandbox', '1', NULL, '2019-03-05 11:38:17', '2019-03-05 05:39:18'),
(36, 'facebook_chat', '0', NULL, '2019-04-15 11:45:04', '2019-04-15 11:45:04'),
(37, 'email_verification', '0', NULL, '2019-04-30 07:30:07', '2019-04-30 07:30:07'),
(38, 'wallet_system', '1', NULL, '2019-05-19 08:05:44', '2021-08-07 12:19:00'),
(39, 'coupon_system', '1', NULL, '2019-06-11 09:46:18', '2021-08-07 12:18:01'),
(40, 'current_version', '4.9', NULL, '2019-06-11 09:46:18', '2019-06-11 09:46:18'),
(41, 'instamojo_payment', '0', NULL, '2019-07-06 09:58:03', '2019-07-06 09:58:03'),
(42, 'instamojo_sandbox', '1', NULL, '2019-07-06 09:58:43', '2019-07-06 09:58:43'),
(43, 'razorpay', '0', NULL, '2019-07-06 09:58:43', '2019-07-06 09:58:43'),
(44, 'paystack', '0', NULL, '2019-07-21 13:00:38', '2019-07-21 13:00:38'),
(45, 'pickup_point', '0', NULL, '2019-10-17 11:50:39', '2019-10-17 11:50:39'),
(46, 'maintenance_mode', '0', NULL, '2019-10-17 11:51:04', '2019-10-17 11:51:04'),
(47, 'voguepay', '0', NULL, '2019-10-17 11:51:24', '2019-10-17 11:51:24'),
(48, 'voguepay_sandbox', '0', NULL, '2019-10-17 11:51:38', '2019-10-17 11:51:38'),
(50, 'category_wise_commission', '0', NULL, '2020-01-21 07:22:47', '2020-01-21 07:22:47'),
(51, 'conversation_system', '1', NULL, '2020-01-21 07:23:21', '2020-01-21 07:23:21'),
(52, 'guest_checkout_active', '1', NULL, '2020-01-22 07:36:38', '2020-01-22 07:36:38'),
(53, 'facebook_pixel', '0', NULL, '2020-01-22 11:43:58', '2020-01-22 11:43:58'),
(55, 'classified_product', '0', NULL, '2020-05-13 13:01:05', '2020-05-13 13:01:05'),
(56, 'pos_activation_for_seller', '1', NULL, '2020-06-11 09:45:02', '2020-06-11 09:45:02'),
(57, 'shipping_type', 'product_wise_shipping', NULL, '2020-07-01 13:49:56', '2020-07-01 13:49:56'),
(58, 'flat_rate_shipping_cost', '0', NULL, '2020-07-01 13:49:56', '2020-07-01 13:49:56'),
(59, 'shipping_cost_admin', '0', NULL, '2020-07-01 13:49:56', '2020-07-01 13:49:56'),
(60, 'payhere_sandbox', '0', NULL, '2020-07-30 18:23:53', '2020-07-30 18:23:53'),
(61, 'payhere', '0', NULL, '2020-07-30 18:23:53', '2020-07-30 18:23:53'),
(62, 'google_recaptcha', '0', NULL, '2020-08-17 07:13:37', '2020-08-17 07:13:37'),
(63, 'ngenius', '0', NULL, '2020-09-22 10:58:21', '2020-09-22 10:58:21'),
(64, 'header_logo', '1', NULL, '2020-11-16 07:26:36', '2021-08-06 09:44:27'),
(65, 'show_language_switcher', 'on', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(66, 'show_currency_switcher', 'on', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(67, 'header_stikcy', 'on', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(68, 'footer_logo', '1', NULL, '2020-11-16 07:26:36', '2021-08-06 09:45:13'),
(69, 'about_us_description', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(70, 'contact_address', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(71, 'contact_phone', '085772220184', NULL, '2020-11-16 07:26:36', '2021-08-06 09:45:24'),
(72, 'contact_email', 'info@bundaflorist.id', NULL, '2020-11-16 07:26:36', '2021-08-06 09:45:31'),
(73, 'widget_one_labels', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(74, 'widget_one_links', '[\"#\",\"#\",\"#\"]', NULL, '2020-11-16 07:26:36', '2021-08-06 09:47:08'),
(75, 'widget_one', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(76, 'frontend_copyright_text', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(77, 'show_social_links', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(78, 'facebook_link', '#', NULL, '2020-11-16 07:26:36', '2021-08-06 09:47:48'),
(79, 'twitter_link', '#', NULL, '2020-11-16 07:26:36', '2021-08-06 09:47:48'),
(80, 'instagram_link', '#', NULL, '2020-11-16 07:26:36', '2021-08-06 09:47:48'),
(81, 'youtube_link', '#', NULL, '2020-11-16 07:26:36', '2021-08-06 09:47:49'),
(82, 'linkedin_link', '#', NULL, '2020-11-16 07:26:36', '2021-08-06 09:47:49'),
(83, 'payment_method_images', '6', NULL, '2020-11-16 07:26:36', '2021-08-06 09:47:49'),
(84, 'home_slider_images', '[\"18\",\"19\"]', NULL, '2020-11-16 07:26:36', '2021-08-06 09:49:39'),
(85, 'home_slider_links', '[null,null]', NULL, '2020-11-16 07:26:36', '2021-08-06 09:49:39'),
(86, 'home_banner1_images', '[\"22\",\"24\",\"23\"]', NULL, '2020-11-16 07:26:36', '2021-08-06 09:51:59'),
(87, 'home_banner1_links', '[null,null,null]', NULL, '2020-11-16 07:26:36', '2021-08-06 09:51:59'),
(88, 'home_banner2_images', '[]', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(89, 'home_banner2_links', '[]', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(90, 'home_categories', '[]', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(91, 'top10_categories', '[]', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(92, 'top10_brands', '[]', NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(93, 'website_name', 'Bunda Florist', NULL, '2020-11-16 07:26:36', '2021-08-06 09:54:15'),
(94, 'site_motto', 'Toko Bunga Online 24 Jam Se Indonesia', NULL, '2020-11-16 07:26:36', '2021-08-06 09:54:15'),
(95, 'site_icon', '2', NULL, '2020-11-16 07:26:36', '2021-08-06 09:54:15'),
(96, 'base_color', '#e25e9e', NULL, '2020-11-16 07:26:36', '2021-08-06 09:58:13'),
(97, 'base_hov_color', '#df4e93', NULL, '2020-11-16 07:26:36', '2021-08-06 09:55:58'),
(98, 'meta_title', 'Bunda Florist Indonesia Toko Bunga Online 24 Jam Se Indonesia', NULL, '2020-11-16 07:26:36', '2021-08-06 10:06:07'),
(99, 'meta_description', 'Bunda Florist adalah distributor toko bunga terpercaya, melayani order bunga 24 jam. kami melayani penjualan bunga online di kota kota besar di indonesia dengan harga terjangkau dan product berkualitas', NULL, '2020-11-16 07:26:36', '2021-08-06 10:06:08'),
(100, 'meta_keywords', 'toko bunga, toko bunga murah, toko bunga termurah, toko bunga terbaik, toko bunga jakarta, bunga papan, bunga papan murah, bunga papan jakarta, toko bunga online', NULL, '2020-11-16 07:26:36', '2021-08-06 10:06:08'),
(101, 'meta_image', '1', NULL, '2020-11-16 07:26:36', '2021-08-06 10:06:08'),
(102, 'site_name', 'Bunda Florist', NULL, '2020-11-16 07:26:36', '2021-08-06 02:40:02'),
(103, 'system_logo_white', '1', NULL, '2020-11-16 07:26:36', '2021-08-06 02:40:02'),
(104, 'system_logo_black', '1', NULL, '2020-11-16 07:26:36', '2021-08-06 02:40:02'),
(105, 'timezone', NULL, NULL, '2020-11-16 07:26:36', '2020-11-16 07:26:36'),
(106, 'admin_login_background', '17', NULL, '2020-11-16 07:26:36', '2021-08-06 02:40:02'),
(107, 'iyzico_sandbox', '1', NULL, '2020-12-30 16:45:56', '2020-12-30 16:45:56'),
(108, 'iyzico', '0', NULL, '2020-12-30 16:45:56', '2021-08-06 09:40:46'),
(109, 'decimal_separator', '1', NULL, '2020-12-30 16:45:56', '2020-12-30 16:45:56'),
(110, 'nagad', '0', NULL, '2021-01-22 10:30:03', '2021-01-22 10:30:03'),
(111, 'bkash', '0', NULL, '2021-01-22 10:30:03', '2021-01-22 10:30:03'),
(112, 'bkash_sandbox', '1', NULL, '2021-01-22 10:30:03', '2021-01-22 10:30:03'),
(113, 'header_menu_labels', '[\"Home\",\"Flash Sale\",\"Blogs\",\"Semua Brands\",\"Semua Kategori\"]', NULL, '2021-02-16 02:43:11', '2021-08-06 09:44:28'),
(114, 'header_menu_links', '[\"http:\\/\\/ecom.test\",\"http:\\/\\/ecom.test\\/flash-deals\",\"http:\\/\\/ecom.test\\/blog\",\"http:\\/\\/ecom.test\\/brands\",\"http:\\/\\/ecom.test\\/categories\"]', NULL, '2021-02-16 02:43:11', '2021-08-06 09:44:28'),
(115, 'proxypay', '0', NULL, '2021-06-20 11:25:42', '2021-08-06 09:40:47'),
(116, 'proxypay_sandbox', '1', NULL, '2021-06-20 11:25:42', '2021-06-20 11:25:42'),
(117, 'google_map', '0', NULL, '2021-07-27 15:49:39', '2021-07-27 15:49:39'),
(118, 'google_firebase', '0', NULL, '2021-07-27 15:49:39', '2021-07-27 15:49:39'),
(119, 'topbar_banner', '5', NULL, '2021-08-06 09:44:28', '2021-08-06 09:44:28'),
(120, 'topbar_banner_link', NULL, NULL, '2021-08-06 09:44:28', '2021-08-06 09:44:28'),
(121, 'about_us_description', 'Kami Adalah Distributor Papan Bunga,\r\n                                        \r\n                                    <div>Karangan Bunga, Hand Bucket dsb\r\n</div><div>Segera Dapatkan Penawaran Terbaik Dari Kami.</div>', 'id', '2021-08-06 09:45:13', '2021-08-06 09:45:13'),
(122, 'play_store_link', NULL, NULL, '2021-08-06 09:45:13', '2021-08-06 09:45:13'),
(123, 'app_store_link', NULL, NULL, '2021-08-06 09:45:13', '2021-08-06 09:45:13'),
(124, 'contact_address', 'Jakarta', 'id', '2021-08-06 09:45:24', '2021-08-06 09:45:24'),
(125, 'widget_one', 'Tautan Langsung', 'id', '2021-08-06 09:47:08', '2021-08-06 09:47:08'),
(126, 'widget_one_labels', '[\"Bantuan\",\"Dukungan\",\"Tentang Kami\"]', 'id', '2021-08-06 09:47:08', '2021-08-06 09:47:08'),
(127, 'frontend_copyright_text', '© Bunda Florist 2021', 'id', '2021-08-06 09:47:48', '2021-08-06 09:47:48'),
(128, 'club_point_convert_rate', '1', NULL, '2019-03-12 05:58:23', '2021-08-07 12:42:14'),
(129, 'product_approve_by_admin', '1', NULL, '2021-08-07 12:18:26', '2021-08-07 12:18:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` int(11) UNSIGNED NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `temp_user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) DEFAULT NULL,
  `variation` text COLLATE utf8_unicode_ci,
  `price` double(8,2) DEFAULT '0.00',
  `tax` double(8,2) DEFAULT '0.00',
  `shipping_cost` double(8,2) DEFAULT '0.00',
  `shipping_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pickup_point` int(11) DEFAULT NULL,
  `discount` double(10,2) NOT NULL DEFAULT '0.00',
  `product_referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `coupon_applied` tinyint(4) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `order_level` int(11) NOT NULL DEFAULT '0',
  `commision_rate` double(8,2) NOT NULL DEFAULT '0.00',
  `banner` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `featured` int(1) NOT NULL DEFAULT '0',
  `top` int(1) NOT NULL DEFAULT '0',
  `digital` int(1) NOT NULL DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(32, 0, 0, 'Gift', 0, 0.00, '28', '28', 0, 0, 0, 'Gift', 'Gift', 'berikan gift untuk orang yang anda cintai, kasih kesempatan untuk mereka agar selalu mencaimu sepanjang hari. segera pesan gift murah di bunda florist', '2021-08-07 06:20:46', '2021-08-07 06:04:15'),
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `category_translations`
--

CREATE TABLE `category_translations` (
  `id` bigint(20) NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cost` double(20,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `cities`
--

INSERT INTO `cities` (`id`, `country_id`, `name`, `cost`, `created_at`, `updated_at`) VALUES
(1, 1, 'Jakarta', 0.00, '2021-08-07 02:23:07', '2021-08-07 02:23:07'),
(2, 1, 'Bogor', 0.00, '2021-08-07 02:23:07', '2021-08-07 02:23:07'),
(3, 1, 'Depok', 0.00, '2021-08-07 02:23:07', '2021-08-07 02:23:07'),
(4, 1, 'Tangerang', 0.00, '2021-08-07 02:23:07', '2021-08-07 02:23:07'),
(5, 1, 'Bekasi', 0.00, '2021-08-07 02:23:07', '2021-08-07 02:23:07'),
(6, 1, 'Bandung', 0.00, '2021-08-07 02:23:07', '2021-08-07 02:23:07'),
(7, 1, 'Serang', 0.00, '2021-08-07 02:23:07', '2021-08-07 02:23:07'),
(8, 1, 'Yogyakarta', 0.00, '2021-08-07 02:23:07', '2021-08-07 02:23:07'),
(9, 1, 'Semarang', 0.00, '2021-08-07 02:23:07', '2021-08-07 02:23:07'),
(10, 1, 'Yogyakarta', 0.00, '2021-08-07 02:23:07', '2021-08-07 02:23:07'),
(11, 1, 'Solo', 0.00, '2021-08-07 02:23:07', '2021-08-07 02:23:07'),
(12, 1, 'Bali', 0.00, '2021-08-07 02:23:07', '2021-08-07 02:23:07'),
(13, 1, 'Medan', 0.00, '2021-08-07 02:23:07', '2021-08-07 02:23:07'),
(14, 1, 'Palembang', 0.00, '2021-08-07 02:23:08', '2021-08-07 02:23:08'),
(15, 1, 'Padang', 0.00, '2021-08-07 02:23:08', '2021-08-07 02:23:08'),
(16, 1, 'Pekanbaru', 0.00, '2021-08-07 02:23:08', '2021-08-07 02:23:08'),
(17, 1, 'Batam', 0.00, '2021-08-07 02:23:08', '2021-08-07 02:23:08'),
(18, 1, 'Binjai', 0.00, '2021-08-07 02:23:08', '2021-08-07 02:23:08'),
(19, 1, 'Jambi', 0.00, '2021-08-07 02:23:08', '2021-08-07 02:23:08'),
(20, 1, 'Lampung', 0.00, '2021-08-07 02:23:08', '2021-08-07 02:23:08'),
(21, 1, 'Manado', 0.00, '2021-08-07 02:23:08', '2021-08-07 02:23:08'),
(22, 1, 'Makassar', 0.00, '2021-08-07 02:23:08', '2021-08-07 02:23:08'),
(23, 1, 'Samarinda', 0.00, '2021-08-07 02:23:08', '2021-08-07 02:23:08'),
(24, 1, 'Palu', 0.00, '2021-08-07 02:23:08', '2021-08-07 02:23:08'),
(25, 1, 'Balikpapan', 0.00, '2021-08-07 02:23:08', '2021-08-07 02:23:08'),
(26, 1, 'Banjarmasin', 0.00, '2021-08-07 02:23:08', '2021-08-07 02:23:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `city_translations`
--

CREATE TABLE `city_translations` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `club_points`
--

CREATE TABLE `club_points` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `points` double(18,2) NOT NULL,
  `order_id` int(11) NOT NULL,
  `convert_status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `club_points`
--

INSERT INTO `club_points` (`id`, `user_id`, `points`, `order_id`, `convert_status`, `created_at`, `updated_at`) VALUES
(1, 8, 0.00, 1, 0, '2021-08-07 17:49:49', '2021-08-07 17:49:49'),
(2, 8, 0.00, 1, 0, '2021-08-08 06:13:08', '2021-08-08 06:13:08'),
(3, 8, 0.00, 1, 0, '2021-08-08 06:14:03', '2021-08-08 06:14:03'),
(4, 8, 0.00, 1, 0, '2021-08-08 06:27:20', '2021-08-08 06:27:20'),
(5, 8, 0.00, 2, 0, '2021-08-10 15:58:03', '2021-08-10 15:58:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `club_point_details`
--

CREATE TABLE `club_point_details` (
  `id` int(11) NOT NULL,
  `club_point_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `point` double(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `club_point_details`
--

INSERT INTO `club_point_details` (`id`, `club_point_id`, `product_id`, `product_qty`, `point`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 1000.00, '2021-08-07 13:03:12', '2021-08-07 13:03:12'),
(2, 1, 2, 0, 0.00, '2021-08-07 17:49:49', '2021-08-07 17:49:49'),
(3, 2, 2, 0, 0.00, '2021-08-08 06:13:08', '2021-08-08 06:13:08'),
(4, 3, 2, 0, 0.00, '2021-08-08 06:14:03', '2021-08-08 06:14:03'),
(5, 4, 2, 0, 0.00, '2021-08-08 06:27:20', '2021-08-08 06:27:20'),
(6, 5, 2, 0, 0.00, '2021-08-10 15:58:03', '2021-08-10 15:58:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `colors`
--

INSERT INTO `colors` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'IndianRed', '#CD5C5C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(2, 'LightCoral', '#F08080', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(3, 'Salmon', '#FA8072', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(4, 'DarkSalmon', '#E9967A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(5, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(6, 'Crimson', '#DC143C', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(7, 'Red', '#FF0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(8, 'FireBrick', '#B22222', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(9, 'DarkRed', '#8B0000', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(10, 'Pink', '#FFC0CB', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(11, 'LightPink', '#FFB6C1', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(12, 'HotPink', '#FF69B4', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(13, 'DeepPink', '#FF1493', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(14, 'MediumVioletRed', '#C71585', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(15, 'PaleVioletRed', '#DB7093', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(16, 'LightSalmon', '#FFA07A', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(17, 'Coral', '#FF7F50', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(18, 'Tomato', '#FF6347', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(19, 'OrangeRed', '#FF4500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(20, 'DarkOrange', '#FF8C00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(21, 'Orange', '#FFA500', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(22, 'Gold', '#FFD700', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(23, 'Yellow', '#FFFF00', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(24, 'LightYellow', '#FFFFE0', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(25, 'LemonChiffon', '#FFFACD', '2018-11-05 02:12:26', '2018-11-05 02:12:26'),
(26, 'LightGoldenrodYellow', '#FAFAD2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(27, 'PapayaWhip', '#FFEFD5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(28, 'Moccasin', '#FFE4B5', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(29, 'PeachPuff', '#FFDAB9', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(30, 'PaleGoldenrod', '#EEE8AA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(31, 'Khaki', '#F0E68C', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(32, 'DarkKhaki', '#BDB76B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(33, 'Lavender', '#E6E6FA', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(34, 'Thistle', '#D8BFD8', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(35, 'Plum', '#DDA0DD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(36, 'Violet', '#EE82EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(37, 'Orchid', '#DA70D6', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(38, 'Fuchsia', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(39, 'Magenta', '#FF00FF', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(40, 'MediumOrchid', '#BA55D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(41, 'MediumPurple', '#9370DB', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(42, 'Amethyst', '#9966CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(43, 'BlueViolet', '#8A2BE2', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(44, 'DarkViolet', '#9400D3', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(45, 'DarkOrchid', '#9932CC', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(46, 'DarkMagenta', '#8B008B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(47, 'Purple', '#800080', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(48, 'Indigo', '#4B0082', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(49, 'SlateBlue', '#6A5ACD', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(50, 'DarkSlateBlue', '#483D8B', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(51, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(52, 'GreenYellow', '#ADFF2F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(53, 'Chartreuse', '#7FFF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(54, 'LawnGreen', '#7CFC00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(55, 'Lime', '#00FF00', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(56, 'LimeGreen', '#32CD32', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(57, 'PaleGreen', '#98FB98', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(58, 'LightGreen', '#90EE90', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(59, 'MediumSpringGreen', '#00FA9A', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(60, 'SpringGreen', '#00FF7F', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(61, 'MediumSeaGreen', '#3CB371', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(62, 'SeaGreen', '#2E8B57', '2018-11-05 02:12:27', '2018-11-05 02:12:27'),
(63, 'ForestGreen', '#228B22', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(64, 'Green', '#008000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(65, 'DarkGreen', '#006400', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(66, 'YellowGreen', '#9ACD32', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(67, 'OliveDrab', '#6B8E23', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(68, 'Olive', '#808000', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(69, 'DarkOliveGreen', '#556B2F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(70, 'MediumAquamarine', '#66CDAA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(71, 'DarkSeaGreen', '#8FBC8F', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(72, 'LightSeaGreen', '#20B2AA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(73, 'DarkCyan', '#008B8B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(74, 'Teal', '#008080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(75, 'Aqua', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(76, 'Cyan', '#00FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(77, 'LightCyan', '#E0FFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(78, 'PaleTurquoise', '#AFEEEE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(79, 'Aquamarine', '#7FFFD4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(80, 'Turquoise', '#40E0D0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(81, 'MediumTurquoise', '#48D1CC', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(82, 'DarkTurquoise', '#00CED1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(83, 'CadetBlue', '#5F9EA0', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(84, 'SteelBlue', '#4682B4', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(85, 'LightSteelBlue', '#B0C4DE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(86, 'PowderBlue', '#B0E0E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(87, 'LightBlue', '#ADD8E6', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(88, 'SkyBlue', '#87CEEB', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(89, 'LightSkyBlue', '#87CEFA', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(90, 'DeepSkyBlue', '#00BFFF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(91, 'DodgerBlue', '#1E90FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(92, 'CornflowerBlue', '#6495ED', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(93, 'MediumSlateBlue', '#7B68EE', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(94, 'RoyalBlue', '#4169E1', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(95, 'Blue', '#0000FF', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(96, 'MediumBlue', '#0000CD', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(97, 'DarkBlue', '#00008B', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(98, 'Navy', '#000080', '2018-11-05 02:12:28', '2018-11-05 02:12:28'),
(99, 'MidnightBlue', '#191970', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(100, 'Cornsilk', '#FFF8DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(101, 'BlanchedAlmond', '#FFEBCD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(102, 'Bisque', '#FFE4C4', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(103, 'NavajoWhite', '#FFDEAD', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(104, 'Wheat', '#F5DEB3', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(105, 'BurlyWood', '#DEB887', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(106, 'Tan', '#D2B48C', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(107, 'RosyBrown', '#BC8F8F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(108, 'SandyBrown', '#F4A460', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(109, 'Goldenrod', '#DAA520', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(110, 'DarkGoldenrod', '#B8860B', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(111, 'Peru', '#CD853F', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(112, 'Chocolate', '#D2691E', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(113, 'SaddleBrown', '#8B4513', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(114, 'Sienna', '#A0522D', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(115, 'Brown', '#A52A2A', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(116, 'Maroon', '#800000', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(117, 'White', '#FFFFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(118, 'Snow', '#FFFAFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(119, 'Honeydew', '#F0FFF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(120, 'MintCream', '#F5FFFA', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(121, 'Azure', '#F0FFFF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(122, 'AliceBlue', '#F0F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(123, 'GhostWhite', '#F8F8FF', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(124, 'WhiteSmoke', '#F5F5F5', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(125, 'Seashell', '#FFF5EE', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(126, 'Beige', '#F5F5DC', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(127, 'OldLace', '#FDF5E6', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(128, 'FloralWhite', '#FFFAF0', '2018-11-05 02:12:29', '2018-11-05 02:12:29'),
(129, 'Ivory', '#FFFFF0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(130, 'AntiqueWhite', '#FAEBD7', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(131, 'Linen', '#FAF0E6', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(132, 'LavenderBlush', '#FFF0F5', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(133, 'MistyRose', '#FFE4E1', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(134, 'Gainsboro', '#DCDCDC', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(135, 'LightGrey', '#D3D3D3', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(136, 'Silver', '#C0C0C0', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(137, 'DarkGray', '#A9A9A9', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(138, 'Gray', '#808080', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(139, 'DimGray', '#696969', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(140, 'LightSlateGray', '#778899', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(141, 'SlateGray', '#708090', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(142, 'DarkSlateGray', '#2F4F4F', '2018-11-05 02:12:30', '2018-11-05 02:12:30'),
(143, 'Black', '#000000', '2018-11-05 02:12:30', '2018-11-05 02:12:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `commission_histories`
--

CREATE TABLE `commission_histories` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_detail_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `admin_commission` double(25,2) NOT NULL,
  `seller_earning` double(25,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `commission_histories`
--

INSERT INTO `commission_histories` (`id`, `order_id`, `order_detail_id`, `seller_id`, `admin_commission`, `seller_earning`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, 6000.00, 594000.00, '2021-08-07 17:49:49', '2021-08-07 17:49:49'),
(2, 1, 1, 3, 6000.00, 594000.00, '2021-08-08 06:13:08', '2021-08-08 06:13:08'),
(3, 1, 1, 3, 6000.00, 594000.00, '2021-08-08 06:14:03', '2021-08-08 06:14:03'),
(4, 1, 1, 3, 6000.00, 594000.00, '2021-08-08 06:27:20', '2021-08-08 06:27:20'),
(5, 2, 2, 3, 6000.00, 594000.00, '2021-08-10 15:58:03', '2021-08-10 15:58:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `title` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender_viewed` int(1) NOT NULL DEFAULT '1',
  `receiver_viewed` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `conversations`
--

INSERT INTO `conversations` (`id`, `sender_id`, `receiver_id`, `title`, `sender_viewed`, `receiver_viewed`, `created_at`, `updated_at`) VALUES
(1, 8, 3, 'Tes Pro Penjual', 1, 1, '2021-08-07 17:13:08', '2021-08-07 17:24:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `code` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ID', 'Indonesia', 1, '2021-08-07 02:13:02', '2021-08-07 02:13:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `discount` double(20,2) NOT NULL,
  `discount_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` int(15) NOT NULL,
  `end_date` int(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `coupons`
--

INSERT INTO `coupons` (`id`, `type`, `code`, `details`, `discount`, `discount_type`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 'product_base', 'BN17AGUSTUS', '[{\"product_id\":\"1\"}]', 10000.00, 'amount', 1628269200, 1628269200, '2021-08-07 13:02:10', '2021-08-07 13:02:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `coupon_usages`
--

CREATE TABLE `coupon_usages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `coupon_usages`
--

INSERT INTO `coupon_usages` (`id`, `user_id`, `coupon_id`, `created_at`, `updated_at`) VALUES
(1, 8, 1, '2021-08-07 13:03:11', '2021-08-07 13:03:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `exchange_rate` double(10,5) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '0',
  `code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `exchange_rate`, `status`, `code`, `created_at`, `updated_at`) VALUES
(1, 'US. Dollar', '$', 1.00000, 1, 'USD', '2021-08-06 02:35:06', '2021-08-06 02:36:05'),
(2, 'Indonesia Rupiah', 'Rp.', 14500.00000, 1, 'IDR', '2021-08-06 02:35:33', '2021-08-06 02:36:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 8, '2019-08-01 10:35:09', '2019-08-01 10:35:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_packages`
--

CREATE TABLE `customer_packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL,
  `product_upload` int(11) DEFAULT NULL,
  `logo` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_package_payments`
--

CREATE TABLE `customer_package_payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_package_id` int(11) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `approval` int(1) NOT NULL,
  `offline_payment` int(1) NOT NULL COMMENT '1=offline payment\r\n2=online paymnet',
  `reciept` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_package_translations`
--

CREATE TABLE `customer_package_translations` (
  `id` bigint(20) NOT NULL,
  `customer_package_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_products`
--

CREATE TABLE `customer_products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `added_by` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conditon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8_unicode_ci,
  `video_provider` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci,
  `unit_price` double(20,2) DEFAULT '0.00',
  `meta_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_img` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer_product_translations`
--

CREATE TABLE `customer_product_translations` (
  `id` bigint(20) NOT NULL,
  `customer_product_id` bigint(20) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `flash_deals`
--

CREATE TABLE `flash_deals` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date` int(20) DEFAULT NULL,
  `end_date` int(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `featured` int(1) NOT NULL DEFAULT '0',
  `background_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `flash_deal_products`
--

CREATE TABLE `flash_deal_products` (
  `id` int(11) NOT NULL,
  `flash_deal_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` double(20,2) DEFAULT '0.00',
  `discount_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `flash_deal_translations`
--

CREATE TABLE `flash_deal_translations` (
  `id` bigint(20) NOT NULL,
  `flash_deal_id` bigint(20) NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(11) NOT NULL,
  `frontend_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_background` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login_sidebar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_plus` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `general_settings`
--

INSERT INTO `general_settings` (`id`, `frontend_color`, `logo`, `footer_logo`, `admin_logo`, `admin_login_background`, `admin_login_sidebar`, `favicon`, `site_name`, `address`, `description`, `phone`, `email`, `facebook`, `instagram`, `twitter`, `youtube`, `google_plus`, `created_at`, `updated_at`) VALUES
(1, 'default', 'uploads/logo/pfdIuiMeXGkDAIpPEUrvUCbQrOHu484nbGfz77zB.png', NULL, 'uploads/admin_logo/wCgHrz0Q5QoL1yu4vdrNnQIr4uGuNL48CXfcxOuS.png', NULL, NULL, 'uploads/favicon/uHdGidSaRVzvPgDj6JFtntMqzJkwDk9659233jrb.png', 'Active Ecommerce CMS', 'Demo Address', 'Active eCommerce CMS is a Multi vendor system is such a platform to build a border less marketplace.', '1234567890', 'admin@example.com', 'https://www.facebook.com', 'https://www.instagram.com', 'https://www.twitter.com', 'https://www.youtube.com', 'https://www.googleplus.com', '2019-03-13 08:01:06', '2019-03-13 02:01:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `home_categories`
--

CREATE TABLE `home_categories` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subsubcategories` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `home_categories`
--

INSERT INTO `home_categories` (`id`, `category_id`, `subsubcategories`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '[\"1\"]', 1, '2019-03-12 06:38:23', '2019-03-12 06:38:23'),
(2, 2, '[\"10\"]', 1, '2019-03-12 06:44:54', '2019-03-12 06:44:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rtl` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `rtl`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 0, '2019-01-20 12:13:20', '2019-01-20 12:13:20'),
(4, 'Arabic', 'sa', 1, '2019-04-28 18:34:12', '2019-04-28 18:34:12'),
(5, 'Indonesia', 'id', 0, '2021-08-06 01:49:33', '2021-08-06 01:49:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `links`
--

CREATE TABLE `links` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `manual_payment_methods`
--

CREATE TABLE `manual_payment_methods` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `heading` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `bank_info` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `manual_payment_methods`
--

INSERT INTO `manual_payment_methods` (`id`, `type`, `heading`, `description`, `bank_info`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'bank_payment', 'BCA', '<p><b>BANK TRANSFER (VERIFIKASI MANUAL) UNTUK CORPORATE PAYMENT</b></p><p>Pengiriman hanya akan diproses bila Anda telah melakukan konfirmasi pembayaran via Form Konfirmasi Bila Anda melakukan transfer melalui ATM, kami sangat menyarankan Anda untuk melakukan transfer melalui Mobile Banking demi kenyamanan Anda. Pastikan Anda selalu memasukan kode pemesanan sehingga layanan pelanggan kami dapat mengonfirmasi pembayaran dan proses pemesanan dengan mudah. Untuk konfirmasi pembayaran transfer tunai Anda, kirim email ke info@bundaflorist.id dengan mencantumkan nama pemesan dan total yang ditransfer.</p>', '[{\"bank_name\":\"BCA\",\"account_name\":\"Hidayat Maulana\",\"account_number\":\"740-1383-879\",\"routing_number\":\"CENAIDJA\"}]', '3', '2021-08-07 03:39:13', '2021-08-07 03:40:48'),
(2, 'bank_payment', 'MANDIRI', '<p>BANK TRANSFER (VERIFIKASI MANUAL) UNTUK CORPORATE PAYMENT\r\n</p><p>Pengiriman hanya akan diproses bila Anda telah melakukan konfirmasi pembayaran via Form Konfirmasi Bila Anda melakukan transfer melalui ATM, kami sangat menyarankan Anda untuk melakukan transfer melalui Mobile Banking demi kenyamanan Anda. Pastikan Anda selalu memasukan kode pemesanan sehingga layanan pelanggan kami dapat mengonfirmasi pembayaran dan proses pemesanan dengan mudah. Untuk konfirmasi pembayaran transfer tunai Anda, kirim email ke info@bundaflorist.id dengan mencantumkan nama pemesan dan total yang ditransfer.</p><p>\r\n</p>', '[{\"bank_name\":\"MANDIRI\",\"account_name\":\"Hidayat Maulana\",\"account_number\":\"00-600-1011-9067\",\"routing_number\":\"BMRIIDJA852\"}]', '4', '2021-08-07 03:41:40', '2021-08-07 03:41:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`id`, `conversation_id`, `user_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 'http://ecom.test/product/tes-pro-penjual-t2oo3', '2021-08-07 17:13:08', '2021-08-07 17:13:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('004006c3-3d0a-447d-beb8-361c264ebf01', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', NULL, '2021-08-10 12:22:27', '2021-08-10 12:22:27'),
('02ef1ffb-e5c6-43ea-be96-37651497e426', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":2,\"order_code\":\"INV-20210810-22543661\",\"user_id\":8,\"seller_id\":\"3\",\"status\":\"placed\"}', NULL, '2021-08-10 15:54:37', '2021-08-10 15:54:37'),
('03593819-dd4c-4848-beff-0fba4f97957a', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', '2021-08-18 13:10:27', '2021-08-10 13:11:43', '2021-08-18 13:10:27'),
('03d7bcc0-0436-412b-9231-1db0f888a147', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', '2021-08-18 13:10:28', '2021-08-08 05:39:52', '2021-08-18 13:10:28'),
('055b622e-02ca-4a58-9518-2f88f5aa2f5e', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_delivery\"}', NULL, '2021-08-10 02:25:18', '2021-08-10 02:25:18'),
('06176bfb-bc30-4da1-a45b-a5636ad49923', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_delivery\"}', NULL, '2021-08-10 13:05:44', '2021-08-10 13:05:44'),
('06fedf6f-7d63-4efa-9192-6304df779e78', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":2,\"order_code\":\"INV-20210810-22543661\",\"user_id\":8,\"seller_id\":\"3\",\"status\":\"placed\"}', '2021-08-18 13:10:26', '2021-08-10 15:54:37', '2021-08-18 13:10:26'),
('0735e2f9-ba78-4edd-af2d-29242bc55a43', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', '2021-08-18 13:10:27', '2021-08-10 13:52:23', '2021-08-18 13:10:27'),
('07950f4e-4b0d-4b1c-9690-bc68c31d2f6e', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":2,\"order_code\":\"INV-20210810-22543661\",\"user_id\":8,\"seller_id\":3,\"status\":\"paid\"}', '2021-08-18 13:10:26', '2021-08-10 15:58:03', '2021-08-18 13:10:26'),
('07e5bcc3-58d0-43ab-97ff-1ece69833a28', 'App\\Notifications\\OrderNotification', 'App\\User', 8, '{\"order_id\":1,\"order_code\":\"20210810-22424361\",\"user_id\":8,\"seller_id\":\"3\",\"status\":\"placed\"}', NULL, '2021-08-10 15:42:45', '2021-08-10 15:42:45'),
('0b32bd5b-79a8-4e16-a015-78dd9ca263c8', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', NULL, '2021-08-10 12:39:11', '2021-08-10 12:39:11'),
('0ba0c0be-dd8a-432f-a013-d7105aad4a38', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_delivery\"}', '2021-08-18 13:10:28', '2021-08-08 11:38:36', '2021-08-18 13:10:28'),
('148b1c82-55f8-424b-8783-ae32f2558fc0', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"delivered\"}', NULL, '2021-08-10 13:27:08', '2021-08-10 13:27:08'),
('15668a06-65f0-42d4-841c-ff9c717c220c', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', NULL, '2021-08-10 13:13:36', '2021-08-10 13:13:36'),
('16bd8e06-5ba0-4f6e-abc7-17ac2293120c', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_delivery\"}', NULL, '2021-08-08 06:52:36', '2021-08-08 06:52:36'),
('2068fed4-2df1-4e3b-90c9-9d523fb0a4d4', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"delivered\"}', NULL, '2021-08-08 11:40:04', '2021-08-08 11:40:04'),
('20eeeb20-12ce-4619-91a0-b367f6835943', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', '2021-08-18 13:10:27', '2021-08-10 12:32:06', '2021-08-18 13:10:27'),
('216257aa-4d24-4003-836d-18c7739dfe81', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"delivered\"}', '2021-08-18 13:10:28', '2021-08-08 11:40:04', '2021-08-18 13:10:28'),
('2774214c-b134-4e0b-8f14-66bfad0e9fec', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"delivered\"}', '2021-08-18 13:10:27', '2021-08-10 13:27:08', '2021-08-18 13:10:27'),
('2a750f67-e7ea-4e1b-870f-8c1c55271598', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', '2021-08-18 13:10:28', '2021-08-07 17:50:13', '2021-08-18 13:10:28'),
('2aca63e1-e981-4c25-a405-227894255518', 'App\\Notifications\\OrderNotification', 'App\\User', 8, '{\"order_id\":2,\"order_code\":\"INV-20210810-22543661\",\"user_id\":8,\"seller_id\":\"3\",\"status\":\"placed\"}', NULL, '2021-08-10 15:54:37', '2021-08-10 15:54:37'),
('2bdb0246-6c1b-4b64-a073-0360b6bc0350', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210810-22424361\",\"user_id\":8,\"seller_id\":\"3\",\"status\":\"placed\"}', NULL, '2021-08-10 15:42:45', '2021-08-10 15:42:45'),
('2c27c43f-5d4d-4eb5-8484-a550d351d1e8', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', NULL, '2021-08-10 11:50:04', '2021-08-10 11:50:04'),
('2c2f44f6-6bb2-495e-ba4b-81c540b22d09', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210807-16444168\",\"user_id\":8,\"seller_id\":9,\"status\":\"on_the_way\"}', '2021-08-18 13:10:28', '2021-08-07 12:04:55', '2021-08-18 13:10:28'),
('36b40350-ab51-4241-a057-c7f944e1b030', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":\"3\",\"status\":\"placed\"}', '2021-08-18 13:10:28', '2021-08-07 17:40:39', '2021-08-18 13:10:28'),
('3724484b-5cf6-46fc-a08d-60f9ea731cb7', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', '2021-08-18 13:10:27', '2021-08-10 13:00:24', '2021-08-18 13:10:27'),
('378b74ab-1fb3-4a31-88a6-97e8d5eafe82', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', NULL, '2021-08-10 12:18:16', '2021-08-10 12:18:16'),
('37df59b1-ed66-465b-b67c-72d9e5462a37', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', '2021-08-18 13:10:27', '2021-08-10 13:11:35', '2021-08-18 13:10:27'),
('3bd56873-c8d1-43e3-a912-0b33d2cdbd59', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"pending\"}', '2021-08-18 13:10:28', '2021-08-08 06:41:44', '2021-08-18 13:10:28'),
('3c44fa42-3922-433a-a623-95ef07648c3d', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"delivered\"}', NULL, '2021-08-10 13:17:42', '2021-08-10 13:17:42'),
('40b05b6d-b374-4d59-a6ef-354f6a526543', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', '2021-08-18 13:10:27', '2021-08-10 13:13:36', '2021-08-18 13:10:27'),
('40bd5aa9-31c9-4b85-9ecc-955c758d62d4', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"delivered\"}', '2021-08-18 13:10:28', '2021-08-08 11:37:52', '2021-08-18 13:10:28'),
('443ac002-5dfb-41af-a8f7-9ed024c5aa79', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', NULL, '2021-08-10 13:46:23', '2021-08-10 13:46:23'),
('476842ee-f68f-46ad-ace0-053c38b74be1', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210807-16444168\",\"user_id\":8,\"seller_id\":9,\"status\":\"unpaid\"}', '2021-08-18 13:10:28', '2021-08-07 12:00:50', '2021-08-18 13:10:28'),
('4a40f72f-c44e-4930-9d75-2ed1d15107d0', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"paid\"}', '2021-08-18 13:10:28', '2021-08-07 17:49:50', '2021-08-18 13:10:28'),
('4ab4da22-ff79-4a2c-89f8-0690139fae3c', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', NULL, '2021-08-10 12:46:08', '2021-08-10 12:46:08'),
('4b943f7f-ca15-4e30-a9f7-f69c807c6f7c', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', NULL, '2021-08-10 13:51:24', '2021-08-10 13:51:24'),
('4f0e4a30-7342-4db4-a0dc-6941092899f8', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', NULL, '2021-08-10 13:00:24', '2021-08-10 13:00:24'),
('506e777d-bd6d-4b15-8d19-64b1b480002d', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', '2021-08-18 13:10:27', '2021-08-10 12:39:11', '2021-08-18 13:10:27'),
('5376fbb7-9d27-4fad-99bc-c8920770649d', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_delivery\"}', '2021-08-18 13:10:27', '2021-08-10 13:42:02', '2021-08-18 13:10:27'),
('5673ad94-c564-483c-840e-7fe7e9886638', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"unpaid\"}', NULL, '2021-08-08 05:55:39', '2021-08-08 05:55:39'),
('5bb23d54-cbbc-4f9b-ba9b-61dd6405bc71', 'App\\Notifications\\OrderNotification', 'App\\User', 8, '{\"order_id\":1,\"order_code\":\"INV-20210810-22493762\",\"user_id\":8,\"seller_id\":\"9\",\"status\":\"placed\"}', NULL, '2021-08-10 15:49:37', '2021-08-10 15:49:37'),
('5fae0c65-d112-44a6-b581-a38dfcca1c77', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', '2021-08-18 13:10:27', '2021-08-10 14:02:08', '2021-08-18 13:10:27'),
('63ff94a3-4c53-4d28-9c9a-1a00bfa9e665', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', NULL, '2021-08-10 12:55:47', '2021-08-10 12:55:47'),
('65d7e1c4-38ab-442d-a4a4-31f946e00a3f', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', '2021-08-18 13:10:28', '2021-08-07 17:58:11', '2021-08-18 13:10:28'),
('66582388-1327-4611-9665-ef87b08923a3', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', NULL, '2021-08-10 13:50:52', '2021-08-10 13:50:52'),
('67712b96-12b4-4128-9224-8e27adc680d5', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"INV-20210810-22493762\",\"user_id\":8,\"seller_id\":\"9\",\"status\":\"placed\"}', '2021-08-18 13:10:26', '2021-08-10 15:49:37', '2021-08-18 13:10:26'),
('6875ef97-4b76-4a0c-853c-68bd958f0cc4', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":null}', '2021-08-18 13:10:28', '2021-08-08 11:38:12', '2021-08-18 13:10:28'),
('69982c48-03fc-40c0-8848-5e67c5040a3e', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', '2021-08-07 17:54:02', '2021-08-07 17:50:13', '2021-08-07 17:54:02'),
('6c5fb2b8-5a15-4a97-884b-0e4abbc65d86', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_delivery\"}', '2021-08-18 13:10:27', '2021-08-10 13:25:30', '2021-08-18 13:10:27'),
('6eb33937-afd9-460a-a93b-d9737660926c', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', '2021-08-18 13:10:28', '2021-08-10 11:50:04', '2021-08-18 13:10:28'),
('6f122ad9-c3a9-4e98-acc1-3b5630152b01', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', NULL, '2021-08-10 14:02:08', '2021-08-10 14:02:08'),
('72464dda-3fb3-4317-9efa-2154541b1e7d', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', '2021-08-18 13:10:27', '2021-08-10 11:56:03', '2021-08-18 13:10:27'),
('73b30487-640a-430b-b6c1-88028816d32c', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210810-22424361\",\"user_id\":8,\"seller_id\":\"3\",\"status\":\"placed\"}', '2021-08-18 13:10:26', '2021-08-10 15:42:45', '2021-08-18 13:10:26'),
('74078151-87e1-41d7-bbf0-69666b882ff0', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', '2021-08-18 13:10:27', '2021-08-10 12:10:56', '2021-08-18 13:10:27'),
('7467e016-94e8-4e6c-9154-22cf086f5cb5', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', NULL, '2021-08-10 11:56:02', '2021-08-10 11:56:02'),
('7517ec07-03c7-4eb7-8f16-971582181add', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210807-16444168\",\"user_id\":8,\"seller_id\":9,\"status\":\"delivered\"}', '2021-08-18 13:10:28', '2021-08-07 12:07:54', '2021-08-18 13:10:28'),
('7533cb76-04bd-45ec-8506-2b6ff8b67991', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"unpaid\"}', NULL, '2021-08-08 06:14:03', '2021-08-08 06:14:03'),
('77dba113-d7ea-408b-a5c4-da7ea7e59283', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210807-16444168\",\"user_id\":8,\"seller_id\":\"9\",\"status\":\"placed\"}', '2021-08-18 13:10:28', '2021-08-07 09:44:41', '2021-08-18 13:10:28'),
('7a6d9190-e529-494c-a900-46161b5ae369', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', '2021-08-18 13:10:28', '2021-08-07 17:56:46', '2021-08-18 13:10:28'),
('7b29cb87-e69b-4ab7-921a-c7c6a6c18639', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', '2021-08-18 13:10:27', '2021-08-10 12:52:41', '2021-08-18 13:10:27'),
('7bcbc69d-55e3-4b33-89e6-610fcbe4ba7e', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"paid\"}', NULL, '2021-08-08 06:13:09', '2021-08-08 06:13:09'),
('7c51bb4f-75a3-413b-86d7-59c6a4306ff7', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', NULL, '2021-08-10 12:19:24', '2021-08-10 12:19:24'),
('7ebd8cca-1a11-48d9-aa33-4cee3f17d2d2', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', '2021-08-18 13:10:27', '2021-08-10 12:18:16', '2021-08-18 13:10:27'),
('81085cff-d6a2-43cf-8974-c4dc0620c515', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', '2021-08-18 13:10:27', '2021-08-10 12:55:47', '2021-08-18 13:10:27'),
('815a2aeb-32d1-49da-a149-3500a12a4ccd', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', '2021-08-18 13:10:27', '2021-08-10 13:46:23', '2021-08-18 13:10:27'),
('836c1618-f08d-4a7b-b5b0-38abf045b941', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":\"3\",\"status\":\"placed\"}', '2021-08-07 17:54:02', '2021-08-07 17:40:39', '2021-08-07 17:54:02'),
('85a7315c-f246-4b32-8989-6f015eef14e3', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', NULL, '2021-08-10 02:16:42', '2021-08-10 02:16:42'),
('879b6403-89c9-477d-98cd-4baee7c4bf5b', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210807-20031171\",\"user_id\":8,\"seller_id\":\"9\",\"status\":\"placed\"}', '2021-08-18 13:10:28', '2021-08-07 13:03:12', '2021-08-18 13:10:28'),
('892684e5-6465-4424-928c-f4a430b9cd60', 'App\\Notifications\\OrderNotification', 'App\\User', 8, '{\"order_id\":1,\"order_code\":\"20210807-16444168\",\"user_id\":8,\"seller_id\":\"9\",\"status\":\"placed\"}', '2021-08-07 09:50:08', '2021-08-07 09:44:41', '2021-08-07 09:50:08'),
('8960261f-af7f-4f7f-99d7-7136b4155c69', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210807-16444168\",\"user_id\":8,\"seller_id\":9,\"status\":\"paid\"}', '2021-08-18 13:10:28', '2021-08-07 12:04:28', '2021-08-18 13:10:28'),
('8a2162c0-470d-4b2f-a62d-29b1368cfcaa', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', NULL, '2021-08-10 12:47:47', '2021-08-10 12:47:47'),
('8b1b3fe1-6f45-4432-b282-2f13ffc44878', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', NULL, '2021-08-10 12:01:14', '2021-08-10 12:01:14'),
('8d2c4586-5657-4fc2-b3f7-420815566a28', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', '2021-08-18 13:10:27', '2021-08-10 13:50:52', '2021-08-18 13:10:27'),
('8d81ed11-2d75-419a-819c-5406715fc80f', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_delivery\"}', NULL, '2021-08-08 05:40:06', '2021-08-08 05:40:06'),
('8f40f3bc-ed77-4ea8-a115-8fcd3caf15da', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', NULL, '2021-08-07 17:56:46', '2021-08-07 17:56:46'),
('9147a633-6b0b-477f-82c1-90f695071b0d', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"unpaid\"}', '2021-08-18 13:10:28', '2021-08-08 06:14:03', '2021-08-18 13:10:28'),
('97d9b551-6221-4381-8689-c19dcf3edd5a', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":null}', NULL, '2021-08-08 11:38:12', '2021-08-08 11:38:12'),
('98f2caa1-449f-4127-a581-88b2e86f7a07', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', '2021-08-18 13:10:27', '2021-08-10 14:08:51', '2021-08-18 13:10:27'),
('9bee98f2-21b0-43a3-b5e1-92df6f0f0bd5', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210807-16444168\",\"user_id\":8,\"seller_id\":9,\"status\":\"paid\"}', '2021-08-18 13:10:28', '2021-08-07 11:59:34', '2021-08-18 13:10:28'),
('9d2a9b63-0e6c-4b9f-9d33-e21f27ed45a4', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', NULL, '2021-08-10 12:18:19', '2021-08-10 12:18:19'),
('9d5b7a9e-4b25-40de-bec9-498725e22987', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"paid\"}', '2021-08-18 13:10:28', '2021-08-08 06:27:20', '2021-08-18 13:10:28'),
('9ed87bea-5596-47b5-9ef4-e9bd8d89d0e3', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', '2021-08-18 13:10:27', '2021-08-10 12:01:14', '2021-08-18 13:10:27'),
('a047c19c-ee90-4527-9c0b-3d4569559d9f', 'App\\Notifications\\OrderNotification', 'App\\User', 8, '{\"order_id\":1,\"order_code\":\"20210807-20031171\",\"user_id\":8,\"seller_id\":\"9\",\"status\":\"placed\"}', '2021-08-07 13:04:01', '2021-08-07 13:03:12', '2021-08-07 13:04:01'),
('a1b967b2-e6f2-47e5-a6f7-ea03b5f3967a', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_delivery\"}', '2021-08-18 13:10:27', '2021-08-10 14:12:55', '2021-08-18 13:10:27'),
('a424ca82-df88-4b4c-a349-1d6a8a3e75ca', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', '2021-08-18 13:10:28', '2021-08-10 02:44:04', '2021-08-18 13:10:28'),
('a42d3d2b-1380-4e20-9de7-33cab15be52b', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"paid\"}', NULL, '2021-08-08 06:27:20', '2021-08-08 06:27:20'),
('a941a4c3-8066-450f-b3c0-de845e787649', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_delivery\"}', '2021-08-07 17:54:29', '2021-08-07 17:54:28', '2021-08-07 17:54:29'),
('ad1b0bf3-9073-4d22-91eb-14ca48134c0f', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', '2021-08-18 13:10:27', '2021-08-10 12:37:15', '2021-08-18 13:10:27'),
('ad98f805-be00-4a58-b97e-de8da6a90fe9', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"paid\"}', '2021-08-07 17:54:02', '2021-08-07 17:49:50', '2021-08-07 17:54:02'),
('adee6c21-733b-4e48-8ee7-2237cb727950', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"unpaid\"}', '2021-08-18 13:10:28', '2021-08-08 05:55:39', '2021-08-18 13:10:28'),
('af91e766-30e6-4dd4-8444-9453bb3e741e', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', '2021-08-18 13:10:27', '2021-08-10 12:47:47', '2021-08-18 13:10:27'),
('b15c82ab-6c5d-4880-b02f-3ef38abae34d', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_delivery\"}', '2021-08-18 13:10:28', '2021-08-08 05:40:06', '2021-08-18 13:10:28'),
('b7b17e63-a136-4634-ba3f-6ccbb2b2bed8', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":2,\"order_code\":\"INV-20210810-22543661\",\"user_id\":8,\"seller_id\":3,\"status\":\"paid\"}', NULL, '2021-08-10 15:58:03', '2021-08-10 15:58:03'),
('b7d770e3-eb81-4760-b0e5-03b778006711', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_delivery\"}', NULL, '2021-08-10 13:25:30', '2021-08-10 13:25:30'),
('b9534c78-ab98-4251-9f6c-3953ac132c76', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_delivery\"}', '2021-08-18 13:10:28', '2021-08-07 17:54:29', '2021-08-18 13:10:28'),
('baedb6c0-e810-4157-882e-1be9f4be3c5c', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', NULL, '2021-08-10 12:52:41', '2021-08-10 12:52:41'),
('be57d7a9-96a7-421b-982f-670b36d9583d', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', NULL, '2021-08-10 14:08:51', '2021-08-10 14:08:51'),
('bf4e7e23-6022-4836-a639-47696d435681', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_delivery\"}', NULL, '2021-08-08 11:38:36', '2021-08-08 11:38:36'),
('c0e92def-6ff8-4344-8ce9-52317ecc4c25', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_delivery\"}', '2021-08-18 13:10:28', '2021-08-08 06:52:36', '2021-08-18 13:10:28'),
('c344c543-8c4a-40d1-8b66-6d806a1bb7b6', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"pending\"}', NULL, '2021-08-08 06:41:44', '2021-08-08 06:41:44'),
('c49da450-cf9a-4594-9727-d6a361a69b3e', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_delivery\"}', NULL, '2021-08-10 14:12:54', '2021-08-10 14:12:54'),
('c640e987-3b59-4bac-b2c9-2177cbf0bcc9', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_delivery\"}', NULL, '2021-08-10 13:42:02', '2021-08-10 13:42:02'),
('cb5cb8c1-e59c-4486-abc3-6e892fce846f', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', NULL, '2021-08-07 17:58:10', '2021-08-07 17:58:10'),
('cd195634-ebce-43c9-8bbb-961f7ca0a59a', 'App\\Notifications\\OrderNotification', 'App\\User', 8, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":\"3\",\"status\":\"placed\"}', '2021-08-07 17:41:51', '2021-08-07 17:40:39', '2021-08-07 17:41:51'),
('cd6f6423-5b0b-46f1-9f9a-542acc7d2bb0', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', '2021-08-18 13:10:27', '2021-08-10 12:19:24', '2021-08-18 13:10:27'),
('cfbfc396-b629-45f1-a190-33a0947ac7bb', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', NULL, '2021-08-10 12:32:06', '2021-08-10 12:32:06'),
('d3fde790-9be0-40c5-8f41-f9cbe7cab0ba', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', NULL, '2021-08-10 02:44:04', '2021-08-10 02:44:04'),
('d4770c54-0f8b-405e-a03b-cd34da7b3f90', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', '2021-08-18 13:10:28', '2021-08-10 02:16:42', '2021-08-18 13:10:28'),
('d62f210e-6df2-4b49-898c-7e24dbf92844', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_delivery\"}', '2021-08-18 13:10:28', '2021-08-10 02:25:18', '2021-08-18 13:10:28'),
('e03df633-2fbc-4f76-b7bd-73e9c02f75af', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', NULL, '2021-08-10 13:11:35', '2021-08-10 13:11:35'),
('e09334b7-1d22-4a56-b847-b6fab86dc6d3', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', '2021-08-18 13:10:28', '2021-08-08 06:42:57', '2021-08-18 13:10:28'),
('e271fd5f-49bf-431c-a893-53e16f706e10', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"delivered\"}', '2021-08-18 13:10:27', '2021-08-10 13:17:42', '2021-08-18 13:10:27'),
('e357f270-3f9e-4907-8eb4-9331a8bacf36', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', NULL, '2021-08-10 13:52:23', '2021-08-10 13:52:23'),
('e68bc336-62bb-4317-8227-20cf7fac8d16', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', NULL, '2021-08-10 12:10:56', '2021-08-10 12:10:56'),
('e6d9b149-362b-457c-84c3-ff1f9315c8e1', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', NULL, '2021-08-08 05:39:52', '2021-08-08 05:39:52'),
('ed32f5c2-701f-4a0e-8cb8-e762b5c017cd', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"confirmed\"}', NULL, '2021-08-08 06:42:57', '2021-08-08 06:42:57'),
('ed7dada8-85df-482b-bd1f-9e542922369e', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', '2021-08-18 13:10:27', '2021-08-10 12:27:15', '2021-08-18 13:10:27'),
('edbe8997-9a8c-4afe-a179-4ad554da9da0', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', '2021-08-18 13:10:27', '2021-08-10 13:51:24', '2021-08-18 13:10:27'),
('ef99be23-e018-48f2-a43c-a8bb923f16a4', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_delivery\"}', '2021-08-18 13:10:27', '2021-08-10 13:05:44', '2021-08-18 13:10:27'),
('efa70e33-447b-48ba-b1de-fe17e27b9f1e', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"on_the_way\"}', NULL, '2021-08-10 12:27:15', '2021-08-10 12:27:15'),
('f0b112c4-1ec6-4072-a2ef-506ad832da09', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', NULL, '2021-08-10 12:37:15', '2021-08-10 12:37:15'),
('f1341704-3f49-4e63-9bc9-9266515fe27b', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', '2021-08-18 13:10:27', '2021-08-10 12:46:08', '2021-08-18 13:10:27'),
('f2c9b1da-0744-493e-b143-c3c01f198556', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', '2021-08-18 13:10:27', '2021-08-10 12:18:19', '2021-08-18 13:10:27'),
('f3387afe-163d-4630-a98f-e322260fc158', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', NULL, '2021-08-10 13:11:43', '2021-08-10 13:11:43'),
('f54d58dc-db95-4d30-96f5-6c498ec9e554', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"picked_up\"}', '2021-08-18 13:10:27', '2021-08-10 12:22:27', '2021-08-18 13:10:27'),
('f6caba4b-7212-424c-ba0b-d2ac96cf116e', 'App\\Notifications\\OrderNotification', 'App\\User', 9, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"paid\"}', '2021-08-18 13:10:28', '2021-08-08 06:13:09', '2021-08-18 13:10:28'),
('f90ba95e-0000-40fc-9d58-04e16b21ffff', 'App\\Notifications\\OrderNotification', 'App\\User', 3, '{\"order_id\":1,\"order_code\":\"20210808-00403980\",\"user_id\":8,\"seller_id\":3,\"status\":\"delivered\"}', NULL, '2021-08-08 11:37:52', '2021-08-08 11:37:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('125ce8289850f80d9fea100325bf892fbd0deba1f87dbfc2ab81fb43d57377ec24ed65f7dc560e46', 1, 1, 'Personal Access Token', '[]', 0, '2019-07-30 04:51:13', '2019-07-30 04:51:13', '2020-07-30 10:51:13'),
('293d2bb534220c070c4e90d25b5509965d23d3ddbc05b1e29fb4899ae09420ff112dbccab1c6f504', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:00:04', '2019-08-04 06:00:04', '2020-08-04 12:00:04'),
('5363e91c7892acdd6417aa9c7d4987d83568e229befbd75be64282dbe8a88147c6c705e06c1fb2bf', 1, 1, 'Personal Access Token', '[]', 0, '2019-07-13 06:44:28', '2019-07-13 06:44:28', '2020-07-13 12:44:28'),
('681b4a4099fac5e12517307b4027b54df94cbaf0cbf6b4bf496534c94f0ccd8a79dd6af9742d076b', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:23:06', '2019-08-04 07:23:06', '2020-08-04 13:23:06'),
('6d229e3559e568df086c706a1056f760abc1370abe74033c773490581a042442154afa1260c4b6f0', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:32:12', '2019-08-04 07:32:12', '2020-08-04 13:32:12'),
('6efc0f1fc3843027ea1ea7cd35acf9c74282f0271c31d45a164e7b27025a315d31022efe7bb94aaa', 1, 1, 'Personal Access Token', '[]', 0, '2019-08-08 02:35:26', '2019-08-08 02:35:26', '2020-08-08 08:35:26'),
('7745b763da15a06eaded371330072361b0524c41651cf48bf76fc1b521a475ece78703646e06d3b0', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:29:44', '2019-08-04 07:29:44', '2020-08-04 13:29:44'),
('815b625e239934be293cd34479b0f766bbc1da7cc10d464a2944ddce3a0142e943ae48be018ccbd0', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-22 02:07:47', '2019-07-22 02:07:47', '2020-07-22 08:07:47'),
('8921a4c96a6d674ac002e216f98855c69de2568003f9b4136f6e66f4cb9545442fb3e37e91a27cad', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:05:05', '2019-08-04 06:05:05', '2020-08-04 12:05:05'),
('8d8b85720304e2f161a66564cec0ecd50d70e611cc0efbf04e409330086e6009f72a39ce2191f33a', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 06:44:35', '2019-08-04 06:44:35', '2020-08-04 12:44:35'),
('bcaaebdead4c0ef15f3ea6d196fd80749d309e6db8603b235e818cb626a5cea034ff2a55b66e3e1a', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:14:32', '2019-08-04 07:14:32', '2020-08-04 13:14:32'),
('c25417a5c728073ca8ba57058ded43d496a9d2619b434d2a004dd490a64478c08bc3e06ffc1be65d', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-30 01:45:31', '2019-07-30 01:45:31', '2020-07-30 07:45:31'),
('c7423d85b2b5bdc5027cb283be57fa22f5943cae43f60b0ed27e6dd198e46f25e3501b3081ed0777', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-05 05:02:59', '2019-08-05 05:02:59', '2020-08-05 11:02:59'),
('e76f19dbd5c2c4060719fb1006ac56116fd86f7838b4bf74e2c0a0ac9696e724df1e517dbdb357f4', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-15 02:53:40', '2019-07-15 02:53:40', '2020-07-15 08:53:40'),
('ed7c269dd6f9a97750a982f62e0de54749be6950e323cdfef892a1ec93f8ddbacf9fe26e6a42180e', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-13 06:36:45', '2019-07-13 06:36:45', '2020-07-13 12:36:45'),
('f6d1475bc17a27e389000d3df4da5c5004ce7610158b0dd414226700c0f6db48914637b4c76e1948', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:22:01', '2019-08-04 07:22:01', '2020-08-04 13:22:01'),
('f85e4e444fc954430170c41779a4238f84cd6fed905f682795cd4d7b6a291ec5204a10ac0480eb30', 1, 1, 'Personal Access Token', '[]', 1, '2019-07-30 06:38:49', '2019-07-30 06:38:49', '2020-07-30 12:38:49'),
('f8bf983a42c543b99128296e4bc7c2d17a52b5b9ef69670c629b93a653c6a4af27be452e0c331f79', 1, 1, 'Personal Access Token', '[]', 1, '2019-08-04 07:28:55', '2019-08-04 07:28:55', '2020-08-04 13:28:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'eR2y7WUuem28ugHKppFpmss7jPyOHZsMkQwBo1Jj', 'http://localhost', 1, 0, 0, '2019-07-13 06:17:34', '2019-07-13 06:17:34'),
(2, NULL, 'Laravel Password Grant Client', 'WLW2Ol0GozbaXEnx1NtXoweYPuKEbjWdviaUgw77', 'http://localhost', 0, 1, 0, '2019-07-13 06:17:34', '2019-07-13 06:17:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-07-13 06:17:34', '2019-07-13 06:17:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `shipping_address` longtext COLLATE utf8_unicode_ci,
  `delivery_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manual_payment` int(1) NOT NULL DEFAULT '0',
  `manual_payment_data` text COLLATE utf8_unicode_ci,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'unpaid',
  `payment_details` longtext COLLATE utf8_unicode_ci,
  `grand_total` double(20,2) DEFAULT NULL,
  `coupon_discount` double(20,2) NOT NULL DEFAULT '0.00',
  `code` mediumtext COLLATE utf8_unicode_ci,
  `date` int(20) NOT NULL,
  `viewed` int(1) NOT NULL DEFAULT '0',
  `delivery_viewed` int(1) NOT NULL DEFAULT '1',
  `payment_status_viewed` int(1) DEFAULT '1',
  `commission_calculated` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `guest_id`, `seller_id`, `shipping_address`, `delivery_status`, `payment_type`, `manual_payment`, `manual_payment_data`, `payment_status`, `payment_details`, `grand_total`, `coupon_discount`, `code`, `date`, `viewed`, `delivery_viewed`, `payment_status_viewed`, `commission_calculated`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, 9, '{\"id\":1,\"user_id\":8,\"address\":\"Jl. Raya Bogor No. 50, RT\\/RW: 002\\/07\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"longitude\":null,\"latitude\":null,\"postal_code\":\"14544\",\"phone\":\"08522222222\",\"set_default\":0,\"created_at\":\"2021-08-07 16:37:20\",\"updated_at\":\"2021-08-07 16:37:20\",\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\"}', 'pending', 'MANDIRI', 1, NULL, 'unpaid', NULL, 550000.00, 0.00, 'INV-20210810-22493762', 1628610577, 0, 0, 0, 0, '2021-08-10 15:49:37', '2021-08-10 15:49:37'),
(2, 8, NULL, 3, '{\"id\":1,\"user_id\":8,\"address\":\"Jl. Raya Bogor No. 50, RT\\/RW: 002\\/07\",\"country\":\"Indonesia\",\"city\":\"Jakarta\",\"longitude\":null,\"latitude\":null,\"postal_code\":\"14544\",\"phone\":\"08522222222\",\"set_default\":0,\"created_at\":\"2021-08-07 16:37:20\",\"updated_at\":\"2021-08-07 16:37:20\",\"name\":\"Mr. Customer\",\"email\":\"customer@example.com\"}', 'pending', 'MANDIRI', 1, NULL, 'paid', NULL, 600000.00, 0.00, 'INV-20210810-22543661', 1628610876, 1, 0, 0, 1, '2021-08-10 15:54:36', '2021-08-10 15:58:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `variation` longtext COLLATE utf8_unicode_ci,
  `price` double(20,2) DEFAULT NULL,
  `tax` double(20,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` double(20,2) NOT NULL DEFAULT '0.00',
  `quantity` int(11) DEFAULT NULL,
  `payment_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unpaid',
  `delivery_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'pending',
  `shipping_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_point_id` int(11) DEFAULT NULL,
  `product_referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `seller_id`, `product_id`, `variation`, `price`, `tax`, `shipping_cost`, `quantity`, `payment_status`, `delivery_status`, `shipping_type`, `pickup_point_id`, `product_referral_code`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 1, 'Pagi(08:00-13:00)', 550000.00, 0.00, 0.00, 1, 'unpaid', 'pending', 'home_delivery', NULL, NULL, '2021-08-10 15:49:37', '2021-08-10 15:49:37'),
(2, 2, 3, 2, 'Siang(13:00-18:00)', 600000.00, 0.00, 0.00, 1, 'paid', 'pending', 'home_delivery', NULL, NULL, '2021-08-10 15:54:36', '2021-08-10 15:58:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `meta_title` text COLLATE utf8_unicode_ci,
  `meta_description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `type`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `meta_image`, `created_at`, `updated_at`) VALUES
(1, 'home_page', 'Home Page', 'home', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:13:20', '2020-11-04 10:13:20'),
(2, 'seller_policy_page', 'Seller Policy Pages', 'sellerpolicy', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:41', '2020-11-04 12:19:30'),
(3, 'return_policy_page', 'Return Policy Page', 'returnpolicy', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:41', '2020-11-04 10:14:41'),
(4, 'support_policy_page', 'Support Policy Page', 'supportpolicy', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:14:59', '2020-11-04 10:14:59'),
(5, 'terms_conditions_page', 'Term Conditions Page', 'terms', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:15:29', '2020-11-04 10:15:29'),
(6, 'privacy_policy_page', 'Privacy Policy Page', 'privacypolicy', NULL, NULL, NULL, NULL, NULL, '2020-11-04 10:15:55', '2020-11-04 10:15:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `page_translations`
--

CREATE TABLE `page_translations` (
  `id` bigint(20) NOT NULL,
  `page_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `amount` double(20,2) NOT NULL DEFAULT '0.00',
  `payment_details` longtext COLLATE utf8_unicode_ci,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txn_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pickup_points`
--

CREATE TABLE `pickup_points` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `pick_up_status` int(1) DEFAULT NULL,
  `cash_on_pickup_status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pickup_point_translations`
--

CREATE TABLE `pickup_point_translations` (
  `id` bigint(20) NOT NULL,
  `pickup_point_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `policies`
--

CREATE TABLE `policies` (
  `id` int(11) NOT NULL,
  `name` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `policies`
--

INSERT INTO `policies` (`id`, `name`, `content`, `created_at`, `updated_at`) VALUES
(1, 'support_policy', NULL, '2019-10-29 12:54:45', '2019-01-22 05:13:15'),
(2, 'return_policy', NULL, '2019-10-29 12:54:47', '2019-01-24 05:40:11'),
(4, 'seller_policy', NULL, '2019-10-29 12:54:49', '2019-02-04 17:50:15'),
(5, 'terms', NULL, '2019-10-29 12:54:51', '2019-10-28 18:00:00'),
(6, 'privacy_policy', NULL, '2019-10-29 12:54:54', '2019-10-28 18:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'admin',
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `photos` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail_img` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_provider` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `unit_price` double(20,2) NOT NULL,
  `purchase_price` double(20,2) DEFAULT NULL,
  `variant_product` int(1) NOT NULL DEFAULT '0',
  `attributes` varchar(1000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '[]',
  `choice_options` mediumtext COLLATE utf8_unicode_ci,
  `colors` mediumtext COLLATE utf8_unicode_ci,
  `variations` text COLLATE utf8_unicode_ci,
  `todays_deal` int(11) NOT NULL DEFAULT '0',
  `published` int(11) NOT NULL DEFAULT '1',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `stock_visibility_state` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'quantity',
  `cash_on_delivery` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1 = On, 0 = Off',
  `featured` int(11) NOT NULL DEFAULT '0',
  `seller_featured` int(11) NOT NULL DEFAULT '0',
  `current_stock` int(10) NOT NULL DEFAULT '10',
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `min_qty` int(11) NOT NULL DEFAULT '1',
  `low_stock_quantity` int(11) DEFAULT NULL,
  `discount` double(20,2) DEFAULT NULL,
  `discount_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_start_date` int(11) DEFAULT NULL,
  `discount_end_date` int(11) DEFAULT NULL,
  `tax` double(20,2) DEFAULT NULL,
  `tax_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT 'flat_rate',
  `shipping_cost` text COLLATE utf8_unicode_ci,
  `is_quantity_multiplied` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 = Mutiplied with shipping cost',
  `est_shipping_days` int(11) DEFAULT NULL,
  `num_of_sale` int(11) NOT NULL DEFAULT '0',
  `meta_title` mediumtext COLLATE utf8_unicode_ci,
  `meta_description` longtext COLLATE utf8_unicode_ci,
  `meta_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `earn_point` double(8,2) NOT NULL DEFAULT '0.00',
  `rating` double(8,2) NOT NULL DEFAULT '0.00',
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `digital` int(1) NOT NULL DEFAULT '0',
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `brand_id`, `photos`, `thumbnail_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `approved`, `stock_visibility_state`, `cash_on_delivery`, `featured`, `seller_featured`, `current_stock`, `unit`, `min_qty`, `low_stock_quantity`, `discount`, `discount_type`, `discount_start_date`, `discount_end_date`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `is_quantity_multiplied`, `est_shipping_days`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `earn_point`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 'BM-001', 'admin', 9, 3, 1, '29', '29', 'youtube', NULL, 'bunga bunga ucapan selamat', NULL, 650000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 0, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-001', '', '29', NULL, 'BM-001-mXL5r', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-15 08:53:07', '2021-08-15 08:53:07'),
(2, 'BM-002', 'admin', 9, 3, 1, '33', '33', 'youtube', NULL, 'bunga ucapan selamat', NULL, 650000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 0, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-002', '', '33', NULL, 'bm-002-lhdux', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-15 09:03:12', '2021-08-15 09:04:20'),
(3, 'BM-003', 'admin', 9, 3, 1, '32', '32', 'youtube', NULL, 'bunga ucapan selamat', NULL, 650000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 0, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-003', '', '32', NULL, 'bm-003-2ri9q', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-15 09:11:04', '2021-08-15 09:50:11'),
(4, 'BM-004', 'admin', 9, 3, 1, '31', '31', 'youtube', NULL, 'bunga ucapan selamat', NULL, 650000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 0, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-004', '', '31', NULL, 'bm-004-axn7f', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-15 09:12:38', '2021-08-15 09:53:36'),
(5, 'BM-005', 'admin', 9, 3, 1, '30', '30', 'youtube', NULL, 'bunga ucapan selamat', NULL, 950000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 0, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-005', '', '30', NULL, 'bm-005-reon9', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-15 10:01:05', '2021-08-15 10:02:49'),
(6, 'BM-006', 'admin', 9, 3, 1, '34', '34', 'youtube', NULL, 'bunga ucapan selamat', NULL, 540000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 0, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-006', '', '34', NULL, 'BM-006-KgF42', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-15 10:05:19', '2021-08-15 10:05:19'),
(7, 'BM-007', 'admin', 9, 3, 1, '35', '35', 'youtube', NULL, 'bunga ucapan selamat', NULL, 540000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 0, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-007', '', '35', NULL, 'bm-007-hmt0t', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-15 10:06:58', '2021-08-15 10:07:52'),
(8, 'BM-008', 'admin', 9, 3, 1, '37', '37', 'youtube', NULL, 'bunga ucapan selamat', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 0, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-008', '', '37', NULL, 'BM-008-N1Wp3', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-15 10:09:38', '2021-08-15 10:09:38'),
(9, 'BM-009', 'admin', 9, 3, 1, '36', '36', 'youtube', NULL, 'bunga ucapan selamat', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 0, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-009', '', '36', NULL, 'bm-009-xavsa', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-15 10:11:37', '2021-08-15 10:14:36'),
(10, 'BM-010', 'admin', 9, 3, 1, '38', '38', 'youtube', NULL, 'bunga ucapan selamat', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 0, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-010', '', '38', NULL, 'BM-010-3GWkJ', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-15 10:13:49', '2021-08-15 10:13:50'),
(11, 'BM-011', 'admin', 9, 3, 1, '40', '40', 'youtube', NULL, 'bunga ucapan selamat', NULL, 1100000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 0, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-011', '', '40', NULL, 'bm-011-ns3jl', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-15 10:18:03', '2021-08-15 10:19:38'),
(12, 'BM-012', 'admin', 9, 3, 1, '39', '39', 'youtube', NULL, 'bunga ucapan selamat', NULL, 500000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 0, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-012', '', '39', NULL, 'BM-012-cdYqj', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-15 12:13:38', '2021-08-15 12:13:38'),
(13, 'BM-013', 'admin', 9, 3, 1, '43', '43', 'youtube', NULL, 'bunga ucapan selamat', NULL, 2700000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 0, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-013', '', '43', NULL, 'bm-013-5kmyr', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-15 12:17:16', '2021-08-15 12:24:14'),
(14, 'BM-014', 'admin', 9, 3, 1, '42', '42', 'youtube', NULL, 'bunga ucapan selamat', NULL, 1500000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 0, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-014', '', '42', NULL, 'BM-014-YO8zZ', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-15 12:26:08', '2021-08-15 12:26:08'),
(15, 'BM-015', 'admin', 9, 3, 1, '41', '41', 'youtube', NULL, 'bunga ucapan selamat', NULL, 950000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 0, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-015', '', '41', NULL, 'BM-015-q6gSI', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-15 12:27:42', '2021-08-15 12:27:42'),
(16, 'BM-016', 'admin', 9, 3, 1, '44', '44', 'youtube', NULL, 'bunga ucapan selamat', NULL, 5000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 50000.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-016', '', '44', NULL, 'bm-016-vig08', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 07:29:53', '2021-08-16 07:38:39'),
(17, 'BM-017', 'admin', 9, 3, 1, '45', '45', 'youtube', NULL, 'bunga ucapan selamat', NULL, 5000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 50000.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-017', '', '45', NULL, 'BM-017-y1nUj', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 07:52:26', '2021-08-16 07:52:27'),
(18, 'BM-018', 'admin', 9, 3, 1, '46', '46', 'youtube', NULL, 'bunga ucapan selamat', NULL, 2000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 5000.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-018', '', '46', NULL, 'BM-018-9c9lq', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 07:55:45', '2021-08-16 07:55:45'),
(19, 'BM-019', 'admin', 9, 3, 1, '47', '47', 'youtube', NULL, 'bunga ucapan selamat', NULL, 500000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-019', '', '47', NULL, 'BM-019-WEA0K', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 07:59:48', '2021-08-16 07:59:48'),
(20, 'BM-020', 'admin', 9, 3, 1, '48', '48', 'youtube', NULL, 'bunga ucapan selamat', NULL, 3000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-020', '', '48', NULL, 'BM-020-NIXyh', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 08:01:31', '2021-08-16 08:01:31'),
(21, 'BM-021', 'admin', 9, 3, 1, '50', '50', 'youtube', NULL, 'bunga ucapan selamat', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-021', '', '50', NULL, 'BM-021-p8Mnk', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 08:08:17', '2021-08-16 08:08:17'),
(22, 'BM-022', 'admin', 9, 3, 1, '49', '49', 'youtube', NULL, 'bunga ucapan selamat', NULL, 950000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-022', '', '49', NULL, 'BM-022-u6Nox', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 08:10:59', '2021-08-16 08:10:59'),
(23, 'BM-023', 'admin', 9, 3, 1, '51', '51', 'youtube', NULL, 'bunga ucapan selamat', NULL, 600000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-023', '', '51', NULL, 'BM-023-Nb1vC', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 08:12:46', '2021-08-16 08:12:47'),
(24, 'BM-024', 'admin', 9, 3, 1, '54', '54', 'youtube', NULL, 'bunga ucapan selamat', NULL, 4100000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 50000.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-024', '', '54', NULL, 'BM-024-9MMIS', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 08:14:28', '2021-08-16 08:14:28'),
(25, 'BM-025', 'admin', 9, 3, 1, '52', '52', 'youtube', NULL, 'bunga ucapan selamat', NULL, 620000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-025', '', '52', NULL, 'BM-025-oZ6do', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 08:16:14', '2021-08-16 08:16:14'),
(26, 'BM-026', 'admin', 9, 3, 1, '56', '56', 'youtube', NULL, 'bunga ucapan selamat', NULL, 950000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-026', '', '56', NULL, 'BM-026-IcZEf', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 08:17:45', '2021-08-16 08:17:45'),
(27, 'BM-027', 'admin', 9, 3, 1, '53', '53', 'youtube', NULL, 'bunga ucapan selamat', NULL, 700000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-027', '', '53', NULL, 'BM-027-q6Vda', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 08:19:03', '2021-08-16 08:19:03'),
(28, 'BM-028', 'admin', 9, 3, 1, '55', '55', 'youtube', NULL, 'bunga ucapan selamat', NULL, 1000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-028', '', '55', NULL, 'BM-028-3chdb', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 08:20:30', '2021-08-16 08:20:30'),
(29, 'BM-029', 'admin', 9, 3, 1, '57', '57', 'youtube', NULL, 'bunga ucapan selamat', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-029', '', '57', NULL, 'bm-029-hvgt5', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 08:22:11', '2021-08-16 08:23:14'),
(30, 'BM-030', 'admin', 9, 3, 1, '58', '58', 'youtube', NULL, 'bunga ucapan selamat', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-030', '', '58', NULL, 'BM-030-RuTmT', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 08:25:51', '2021-08-16 08:25:51'),
(31, 'BM-031', 'admin', 9, 3, 1, '59', '59', 'youtube', NULL, 'bunga ucapan selamat', NULL, 1500000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-031', '', '59', NULL, 'BM-031-4T6TD', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 08:27:08', '2021-08-16 08:27:09'),
(32, 'BM-032', 'admin', 9, 3, 1, '60', '60', 'youtube', NULL, 'bunga ucapan selamat', NULL, 1500000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-032', '', '60', NULL, 'BM-032-59gfd', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 08:29:18', '2021-08-16 08:29:19'),
(33, 'BW-001', 'admin', 9, 5, 1, '65', '65', 'youtube', NULL, 'bunga papan wedding', NULL, 1000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-001', '', '65', NULL, 'BW-001-IT6YV', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 08:31:44', '2021-08-16 08:31:44'),
(34, 'BW-002', 'admin', 9, 5, 1, '64', '64', 'youtube', NULL, 'bunga papan wedding', NULL, 950000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-002', '', '64', NULL, 'BW-002-BKMSh', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 08:33:42', '2021-08-16 08:33:42'),
(35, 'BW-003', 'admin', 9, 5, 1, '63', '63', 'youtube', NULL, 'bunga papan wedding', NULL, 700000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-003', '', '63', NULL, 'BW-003-5Rkx6', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 08:35:11', '2021-08-16 08:35:11'),
(36, 'BW-004', 'admin', 9, 5, 1, '61', '61', 'youtube', NULL, 'bunga papan wedding', NULL, 320000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-004', '', '61', NULL, 'BW-004-CYj2V', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 08:36:50', '2021-08-16 08:36:50'),
(37, 'BW-005', 'admin', 9, 5, 1, '62', '62', 'youtube', NULL, 'bunga papan wedding', NULL, 750000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-005', '', '62', NULL, 'BW-005-arEfo', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:19:58', '2021-08-16 09:19:58'),
(38, 'BW-006', 'admin', 9, 5, 1, '66', '66', 'youtube', NULL, 'bunga papan wedding', NULL, 1000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-006', '', '66', NULL, 'BW-006-Hyyi5', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:22:30', '2021-08-16 09:22:30'),
(39, 'BW-007', 'admin', 9, 5, 1, '68', '68', 'youtube', NULL, 'bunga papan wedding', NULL, 1000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-007', '', '68', NULL, 'BW-007-hNx5p', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:24:11', '2021-08-16 09:24:12'),
(40, 'BW-008', 'admin', 9, 5, 1, '67', '67', 'youtube', NULL, 'bunga papan wedding', NULL, 700000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-008', '', '67', NULL, 'BW-008-qe0Hy', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:25:46', '2021-08-16 09:25:46'),
(41, 'BW-009', 'admin', 9, 5, 1, '70', '70', 'youtube', NULL, 'bunga papan wedding', NULL, 750000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-009', '', '70', NULL, 'BW-009-DUdXE', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:27:25', '2021-08-16 09:27:25'),
(42, 'BW-010', 'admin', 9, 5, 1, '71', '71', 'youtube', NULL, 'bunga papan wedding', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-010', '', '71', NULL, 'BW-010-kmmQ2', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:29:11', '2021-08-16 09:29:12'),
(43, 'BW-011', 'admin', 9, 5, 1, '69', '69', 'youtube', NULL, 'bunga papan wedding', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-011', '', '69', NULL, 'BW-011-FMbp1', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:30:43', '2021-08-16 09:30:43'),
(44, 'BW-012', 'admin', 9, 5, 1, '72', '72', 'youtube', NULL, 'bunga papan wedding', NULL, 740000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-012', '', '72', NULL, 'BW-012-FLHwi', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:33:25', '2021-08-16 09:33:25'),
(45, 'BW-013', 'admin', 9, 5, 1, '74', '74', 'youtube', NULL, 'bunga papan wedding', NULL, 970000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-013', '', '74', NULL, 'BW-013-8WLDR', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:35:32', '2021-08-16 09:35:32'),
(46, 'BW-014', 'admin', 9, 5, 1, '73', '73', 'youtube', NULL, 'bunga papan wedding', NULL, 740000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-014', '', '73', NULL, 'BW-014-n2XNG', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:36:55', '2021-08-16 09:36:55'),
(47, 'BW-015', 'admin', 9, 5, 1, '75', '75', 'youtube', NULL, 'bunga papan wedding', NULL, 990000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-015', '', '75', NULL, 'BW-015-vaqgF', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:38:30', '2021-08-16 09:38:30'),
(48, 'BW-016', 'admin', 9, 5, 1, '76', '76', 'youtube', NULL, 'bunga papan wedding', NULL, 610000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-016', '', '76', NULL, 'BW-016-Xg4gw', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:39:54', '2021-08-16 09:39:54'),
(49, 'BW-017', 'admin', 9, 5, 1, '77', '77', 'youtube', NULL, 'bunga papan wedding', NULL, 600000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-017', '', '77', NULL, 'BW-017-lIU4T', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:41:42', '2021-08-16 09:41:42'),
(50, 'BW-018', 'admin', 9, 5, 1, '78', '78', 'youtube', NULL, 'bunga papan wedding', NULL, 710000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-018', '', '78', NULL, 'BW-018-FtpNq', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:43:28', '2021-08-16 09:43:28'),
(51, 'BW-019', 'admin', 9, 5, 1, '79', '79', 'youtube', NULL, 'bunga papan wedding', NULL, 1000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-019', '', '79', NULL, 'BW-019-mnjD6', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:46:39', '2021-08-16 09:46:39'),
(52, 'BW-020', 'admin', 9, 5, 1, '80', '80', 'youtube', NULL, 'bunga papan wedding', NULL, 700000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-020', '', '80', NULL, 'BW-020-c66jv', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:48:08', '2021-08-16 09:48:08'),
(53, 'BW-021', 'admin', 9, 5, 1, '82', '82', 'youtube', NULL, 'bunga papan wedding', NULL, 800000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-021', '', '82', NULL, 'BW-021-9fPwg', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:50:23', '2021-08-16 09:50:23'),
(54, 'BW-022', 'admin', 9, 5, 1, '81', '81', 'youtube', NULL, 'bunga papan wedding', NULL, 800000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-022', '', '81', NULL, 'BW-022-EjK2x', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:51:51', '2021-08-16 09:51:51'),
(55, 'BW-023', 'admin', 9, 5, 1, '83', '83', 'youtube', NULL, 'bunga papan wedding', NULL, 1800000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-023', '', '84', NULL, 'BW-023-Dh5Fs', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 09:53:46', '2021-08-16 11:08:43'),
(56, 'BW-024', 'admin', 9, 5, 1, '84', '84', 'youtube', NULL, 'bunga papan wedding', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-024', '', '84', NULL, 'BW-024-fTT4z', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 11:19:07', '2021-08-16 11:19:07'),
(57, 'BM-025', 'admin', 9, 5, 1, '85', '85', 'youtube', NULL, 'bunga papan wedding', NULL, 3000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-025', '', '85', NULL, 'BM-025-eoCuM', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 11:21:08', '2021-08-16 11:21:08'),
(58, 'BM-026', 'admin', 9, 5, 1, '87', '87', 'youtube', NULL, 'bunga papan wedding', NULL, 2500000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BM-026', '', '87', NULL, 'BM-026-4EBvU', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 11:33:38', '2021-08-16 11:33:38'),
(59, 'BW-027', 'admin', 9, 5, 1, '89', '89', 'youtube', NULL, 'bunga papan wedding', NULL, 500000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-027', '', '89', NULL, 'BW-027-fYcrV', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 11:36:24', '2021-08-16 11:36:24'),
(60, 'BW-029', 'admin', 9, 5, 1, '86', '86', 'youtube', NULL, 'bunga papan wedding', NULL, 1700000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-029', '', '86', NULL, 'BW-029-7zpxk', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 11:38:23', '2021-08-16 11:38:23'),
(61, 'BW-030', 'admin', 9, 5, 1, '90', '90', 'youtube', NULL, 'bunga papan wedding', NULL, 1000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-030', '', '90', NULL, 'BW-030-1cAAo', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 11:39:52', '2021-08-16 11:39:52'),
(62, 'BW-032', 'admin', 9, 5, 1, '91', '91', 'youtube', NULL, 'bunga papan wedding', NULL, 1450000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BW-032', '', '91', NULL, 'BW-032-1gRZi', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 11:41:20', '2021-08-16 11:41:20'),
(63, 'DC-001', 'admin', 9, 7, 1, '93', '93', 'youtube', NULL, 'bunga papan duka cita', NULL, 820000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 20000.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-001', '', '93', NULL, 'DC-001-K3Gi5', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 11:45:30', '2021-08-16 11:45:30'),
(64, 'DC-002', 'admin', 9, 7, 1, '95', '95', 'youtube', NULL, 'bunga papan duka cita', NULL, 820000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 20000.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-002', '', '95', NULL, 'DC-002-Up992', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 11:49:26', '2021-08-16 11:49:27'),
(65, 'DC-003', 'admin', 9, 7, 1, '94', '94', 'youtube', NULL, 'bunga papan duka cita', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-003', '', '94', NULL, 'DC-003-MCVGq', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 11:51:14', '2021-08-16 11:51:14'),
(66, 'DC-004', 'admin', 9, 7, 1, '96', '96', 'youtube', NULL, 'bunga papan duka cita', NULL, 950000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-004', '', '96', NULL, 'DC-004-vitZ5', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 11:59:20', '2021-08-16 11:59:20'),
(67, 'DC-005', 'admin', 9, 7, 1, '98', '98', 'youtube', NULL, 'bunga papan duka cita', NULL, 750000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-005', '', '98', NULL, 'DC-005-Z8LYJ', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:00:48', '2021-08-16 12:00:49'),
(68, 'DC-006', 'admin', 9, 7, 1, '97', '97', 'youtube', NULL, 'bunga papan duka cita', NULL, 1000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-006', '', '97', NULL, 'DC-006-LxTf3', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:02:30', '2021-08-16 12:02:31'),
(69, 'DC-007', 'admin', 9, 7, 1, '99', '99', 'youtube', NULL, 'bunga papan duka cita', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-007', '', '99', NULL, 'DC-007-x4KL3', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:04:33', '2021-08-16 12:04:34'),
(70, 'DC-008', 'admin', 9, 7, 1, '102', '102', 'youtube', NULL, 'bunga papan duka cita', NULL, 1000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-008', '', '102', NULL, 'DC-008-aJK9V', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:09:37', '2021-08-16 12:09:37'),
(71, 'DC-009', 'admin', 9, 7, 1, '100', '100', 'youtube', NULL, 'bunga papan duka cita', NULL, 1000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-009', '', '100', NULL, 'DC-009-7nxnM', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:11:01', '2021-08-16 12:11:02'),
(72, 'DC-010', 'admin', 9, 7, 1, '101', '101', 'youtube', NULL, 'bunga papan duka cita', NULL, 540000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-010', '', '101', NULL, 'DC-010-pWiMS', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:12:32', '2021-08-16 12:12:32'),
(73, 'DC-011', 'admin', 9, 1, 1, '103', '103', 'youtube', NULL, 'bunga papan duka cita', NULL, 900000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-011', '', '103', NULL, 'DC-011-lWzBW', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:14:06', '2021-08-16 12:14:07'),
(74, 'DC-012', 'admin', 9, 7, 1, '104', '104', 'youtube', NULL, 'bunga papan duka cita', NULL, 970000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-012', '', '104', NULL, 'DC-012-Pow1G', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:15:35', '2021-08-16 12:15:35'),
(75, 'DC-013', 'admin', 9, 7, 1, '105', '105', 'youtube', NULL, 'bunga papan duka cita', NULL, 740000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-013', '', '105', NULL, 'DC-013-afeiz', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:17:04', '2021-08-16 12:17:04'),
(76, 'DC-014', 'admin', 9, 7, 1, '107', '107', 'youtube', NULL, 'bunga papan duka cita', NULL, 1900000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-014', '', '107', NULL, 'DC-014-k6KmF', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:19:06', '2021-08-16 12:19:06'),
(77, 'DC-015', 'admin', 9, 7, 1, '106', '106', 'youtube', NULL, 'bunga papan duka cita', NULL, 690000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-015', '', '106', NULL, 'DC-015-NoAUx', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:20:45', '2021-08-16 12:20:46'),
(78, 'DC-016', 'admin', 9, 7, 1, '108', '108', 'youtube', NULL, 'bunga papan duka cita', NULL, 950000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-016', '', '108', NULL, 'DC-016-HsCEl', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:22:16', '2021-08-16 12:22:16'),
(79, 'DC-017', 'admin', 9, 7, 1, '111', '111', 'youtube', NULL, 'bunga papan duka cita', NULL, 1450000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-017', '', '111', NULL, 'DC-017-5mrt0', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:23:53', '2021-08-16 12:23:53'),
(80, 'DC-018', 'admin', 9, 7, 1, '110', '110', 'youtube', NULL, 'bunga papan duka cita', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-018', '', '110', NULL, 'DC-018-qj70i', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:25:14', '2021-08-16 12:25:15'),
(81, 'DC-019', 'admin', 9, 7, 1, '109', '109', 'youtube', NULL, 'bunga papan duka cita', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-019', '', '109', NULL, 'DC-019-DYzrN', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:26:41', '2021-08-16 12:26:41'),
(82, 'DC-020', 'admin', 9, 7, 1, '112', '112', 'youtube', NULL, 'bunga papan duka cita', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-020', '', '112', NULL, 'DC-020-FapvC', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:28:07', '2021-08-16 12:28:07'),
(83, 'DC-021', 'admin', 9, 1, 1, '113', '113', 'youtube', NULL, 'bunga papan duka cita', NULL, 900000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-021', '', '113', NULL, 'DC-021-TAU42', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:48:38', '2021-08-16 12:48:38'),
(84, 'DC-022', 'admin', 9, 7, 1, '114', '114', 'youtube', NULL, 'bunga papan duka cita', NULL, 950000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-022', '', '114', NULL, 'DC-022-rhJzC', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:50:56', '2021-08-16 12:50:56'),
(85, 'DC-023', 'admin', 9, 7, 1, '115', '115', 'youtube', NULL, 'bunga papan duka cita', NULL, 2550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 50000.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'DC-023', '', '115', NULL, 'DC-023-f2zej', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:53:10', '2021-08-16 12:53:10'),
(86, 'BN-001', 'admin', 9, 10, 1, '119', '119', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 750000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-001', '', '119', NULL, 'BN-001-PqLNW', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 12:56:48', '2021-08-16 12:56:48'),
(87, 'BN-002', 'admin', 9, 10, 1, '120', '120', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 640000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-002', '', '120', NULL, 'BN-002-HW6hN', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 13:01:23', '2021-08-16 13:01:23'),
(88, 'BN-003', 'admin', 9, 10, 1, '118', '118', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 650000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-003', '', '118', NULL, 'BN-003-qwQcJ', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 13:26:24', '2021-08-16 13:26:24'),
(89, 'BN-004', 'admin', 9, 10, 1, '116', '116', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 660000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-004', '', '116', NULL, 'BN-004-SlBOq', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 13:28:06', '2021-08-16 13:28:06'),
(90, 'BN-005', 'admin', 9, 10, 1, '117', '117', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 400000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-005', '', '117', NULL, 'BN-005-Y71uq', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 13:29:26', '2021-08-16 13:29:27'),
(91, 'BN-006', 'admin', 9, 10, 1, '121', '121', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 700000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-006', '', '121', NULL, 'BN-006-39xYs', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 13:30:53', '2021-08-16 13:30:53'),
(92, 'BN-007', 'admin', 9, 10, 1, '123', '123', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-007', '', '123', NULL, 'BN-007-dWIyN', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 13:32:25', '2021-08-16 13:32:25'),
(93, 'BN-008', 'admin', 9, 10, 1, '125', '125', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 500000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-008', '', '125', NULL, 'BN-008-mYvgr', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 14:12:58', '2021-08-16 14:12:58'),
(94, 'BN-009', 'admin', 9, 10, 1, '122', '122', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 500000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-009', '', '122', NULL, 'BN-009-pW2iN', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 14:26:36', '2021-08-16 14:26:36'),
(95, 'BN-010', 'admin', 9, 10, 1, '124', '124', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-010', '', '124', NULL, 'BN-010-lExpu', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 14:27:43', '2021-08-16 14:27:43'),
(96, 'BN-011', 'admin', 9, 10, 1, '127', '127', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 550000.00, NULL, 0, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-011', '', '127', NULL, 'BN-011-LEAUa', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 14:28:34', '2021-08-16 14:28:34'),
(97, 'BN-012', 'admin', 9, 10, 1, '126', '126', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 2510000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 10000.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-012', '', '126', NULL, 'BN-012-0v35e', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 14:31:30', '2021-08-16 14:31:30'),
(98, 'BN-013', 'admin', 9, 10, 1, '128', '128', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 450000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-013', '', '128', NULL, 'BN-013-LaPgy', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 14:33:02', '2021-08-16 14:33:03');
INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `brand_id`, `photos`, `thumbnail_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `approved`, `stock_visibility_state`, `cash_on_delivery`, `featured`, `seller_featured`, `current_stock`, `unit`, `min_qty`, `low_stock_quantity`, `discount`, `discount_type`, `discount_start_date`, `discount_end_date`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `is_quantity_multiplied`, `est_shipping_days`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `earn_point`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(99, 'BN-014', 'admin', 9, 10, 1, '129', '129', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 700000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-014', '', '129', NULL, 'BN-014-PJgDr', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 14:34:06', '2021-08-16 14:34:06'),
(100, 'BN-015', 'admin', 9, 1, 1, '131', '131', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 650000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-015', '', '131', NULL, 'BN-015-fFpRn', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 14:38:06', '2021-08-16 14:38:06'),
(101, 'BN-016', 'admin', 9, 10, 1, '132', '132', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 500000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-016', '', '132', NULL, 'BN-016-yQIMe', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 14:42:36', '2021-08-16 14:42:36'),
(102, 'BN-017', 'admin', 9, 10, 1, '130', '130', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-017', '', '130', NULL, 'BN-017-m2ZFe', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 14:44:15', '2021-08-16 14:44:15'),
(103, 'BN-018', 'admin', 9, 10, 1, '133', '133', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 650000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-018', '', '133', NULL, 'BN-018-QohbB', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 14:45:22', '2021-08-16 14:45:22'),
(104, 'BN-019', 'admin', 9, 10, 1, '135', '135', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 500000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-019', '', '135', NULL, 'BN-019-9YMF8', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 14:46:27', '2021-08-16 14:46:27'),
(105, 'BN-020', 'admin', 9, 10, 1, '134', '134', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 490000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-020', '', '134', NULL, 'BN-020-4ufWj', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 14:47:58', '2021-08-16 14:47:59'),
(106, 'BN-021', 'admin', 9, 10, 1, '136', '136', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 1800000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-021', '', '136', NULL, 'BN-021-ZyI3s', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 14:49:08', '2021-08-16 14:49:08'),
(107, 'BN-022', 'admin', 9, 1, 1, '137', '137', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 650000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-022', '', '137', NULL, 'BN-022-PaPFN', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 14:51:02', '2021-08-16 14:51:02'),
(108, 'BN-023', 'admin', 9, 10, 1, '138', '138', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 750000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-023', '', '138', NULL, 'BN-023-5sScr', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 14:52:10', '2021-08-16 14:52:10'),
(109, 'BN-024', 'admin', 9, 10, 1, '139', '139', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 600000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-024', '', '139', NULL, 'bn-024-3csrb', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 15:47:30', '2021-08-16 16:21:14'),
(110, 'BN-025', 'admin', 9, 10, 1, '140', '140', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 700000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-025', '', '140', NULL, 'BN-025-2nqKL', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 17:14:39', '2021-08-16 17:14:39'),
(111, 'BN-026', 'admin', 9, 10, 1, '141', '141', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 3000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-026', '', '141', NULL, 'BN-026-u35uB', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 17:34:23', '2021-08-16 17:34:23'),
(112, 'BN-027', 'admin', 9, 10, 1, '142', '142', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 860000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-027', '', '142', NULL, 'BN-027-45E1S', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 17:40:54', '2021-08-16 17:40:54'),
(113, 'BN-028', 'admin', 9, 10, 1, '144', '144', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-028', '', '144', NULL, 'BN-028-Ct9by', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 17:57:22', '2021-08-16 17:57:22'),
(114, 'BN-029', 'admin', 9, 10, 1, '143', '143', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 850000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-029', '', '143', NULL, 'BN-029-5WwrK', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 17:59:15', '2021-08-16 17:59:15'),
(115, 'BN-030', 'admin', 9, 10, 1, '145', '145', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 500000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-030', '', '145', NULL, 'BN-030-on3HH', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 18:00:43', '2021-08-16 18:00:44'),
(116, 'BN-031', 'admin', 9, 10, 1, '146', '146', 'youtube', NULL, 'bunga tangan,bunga tangan murah,bunga tangan premium,bunga tangan jakarta,jual bunga tangan,toko bunga tangan,toko bunga jakarta', NULL, 750000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BN-031', '', '146', NULL, 'BN-031-aMt2p', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 18:01:51', '2021-08-16 18:01:51'),
(117, 'BMJ-001', 'admin', 9, 11, 1, '170', '170', 'youtube', NULL, 'bunga meja, bunga meja murah, bunga meja premium, bunga meja jakarta, jual bunga meja, toko bunga meja, toko bunga jakarta', NULL, 1800000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-001', '', '170', NULL, 'BMJ-001-r30ql', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-16 18:22:24', '2021-08-16 18:22:24'),
(118, 'BMJ-002', 'admin', 9, 11, 1, '169', '169', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 1450000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-002', '', '169', NULL, 'BMJ-002-gHkrG', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:00:20', '2021-08-17 11:00:20'),
(119, 'BMJ-003', 'admin', 9, 11, 1, '171', '171', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 750000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-003', '', '171', NULL, 'BMJ-003-Sdqcl', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:01:35', '2021-08-17 11:01:35'),
(120, 'BMJ-004', 'admin', 9, 11, 1, '172', '172', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 2300000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-004', '', '172', NULL, 'BMJ-004-EVSuU', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:04:10', '2021-08-17 11:04:10'),
(121, 'BMJ-005', 'admin', 9, 11, 1, '174', '174', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 650000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-005', '', '174', NULL, 'BMJ-005-6EQV0', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:05:42', '2021-08-17 11:05:42'),
(122, 'BMJ-006', 'admin', 9, 11, 1, '173', '173', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 1800000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-006', '', '173', NULL, 'BMJ-006-6xeBe', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:06:48', '2021-08-17 11:06:48'),
(123, 'BMJ-007', 'admin', 9, 11, 1, '176', '176', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 1320000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-007', '', '176', NULL, 'BMJ-007-wfKIh', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:07:51', '2021-08-17 11:07:51'),
(124, 'BMJ-008', 'admin', 9, 11, 1, '175', '175', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 250000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-008', '', '175', NULL, 'BMJ-008-r3tmN', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:14:46', '2021-08-17 11:14:46'),
(125, 'BMJ-009', 'admin', 9, 11, 1, '227', '227', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 2150000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 50000.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-009', '', '227', NULL, 'BMJ-009-DaQ50', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:15:55', '2021-08-17 11:15:55'),
(126, 'BMJ-010', 'admin', 9, 11, 1, '177', '177', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-010', '', '177', NULL, 'BMJ-010-2zaeA', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:16:53', '2021-08-17 11:16:53'),
(127, 'BMJ-011', 'admin', 9, 11, 1, '226', '226', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 1200000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-011', '', '226', NULL, 'bmj-011-bk4zk', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:20:26', '2021-08-17 11:21:50'),
(128, 'BMJ-012', 'admin', 9, 11, 1, '178', '178', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 1000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-012', '', '178', NULL, 'BMJ-012-2qIEK', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:23:06', '2021-08-17 11:23:06'),
(129, 'BMJ-013', 'admin', 9, 11, 1, '179', '179', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 750000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-013', '', '179', NULL, 'BMJ-013-SBOU4', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:23:58', '2021-08-17 11:23:58'),
(130, 'BMJ-014', 'admin', 9, 11, 1, '180', '180', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 500000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-014', '', '180', NULL, 'BMJ-014-XiwUc', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:26:52', '2021-08-17 11:26:53'),
(131, 'BMJ-015', 'admin', 9, 11, 1, '182', '182', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 700000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-015', '', '182', NULL, 'BMJ-015-6YfkK', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:27:47', '2021-08-17 11:27:47'),
(132, 'BMJ-016', 'admin', 9, 11, 1, '181', '181', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 850000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-016', '', '181', NULL, 'BMJ-016-IogAt', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:28:55', '2021-08-17 11:28:55'),
(133, 'BMJ-017', 'admin', 9, 11, 1, '183', '183', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 850000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-017', '', '183', NULL, 'BMJ-017-hsPST', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:29:58', '2021-08-17 11:29:58'),
(134, 'BMJ-018', 'admin', 9, 11, 1, '184', '184', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 850000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-018', '', '184', NULL, 'BMJ-018-jE6Xg', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:30:59', '2021-08-17 11:31:00'),
(135, 'BMJ-019', 'admin', 9, 11, 1, '186', '186', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 1700000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 10000.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-019', '', '186', NULL, 'BMJ-019-tcSrp', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:32:23', '2021-08-17 11:32:23'),
(136, 'BMJ-020', 'admin', 9, 11, 1, '185', '185', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 1500000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-020', '', '185', NULL, 'BMJ-020-AK94A', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:33:22', '2021-08-17 11:33:23'),
(137, 'BMJ-021', 'admin', 9, 11, 1, '187', '187', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 950000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-021', '', '187', NULL, 'BMJ-021-gQVx1', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:34:36', '2021-08-17 11:34:36'),
(138, 'BMJ-022', 'admin', 9, 11, 1, '188', '188', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 700000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 10000.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-022', '', '188', NULL, 'BMJ-022-VkdXq', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:36:04', '2021-08-17 11:36:04'),
(139, 'BMJ-023', 'admin', 9, 11, 1, '189', '189', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 1000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-023', '', '189', NULL, 'BMJ-023-RM54Q', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:37:05', '2021-08-17 11:37:05'),
(140, 'BMJ-024', 'admin', 9, 11, 1, '190', '190', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 1050000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-024', '', '190', NULL, 'BMJ-024-3eOG3', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:38:16', '2021-08-17 11:38:16'),
(141, 'BMJ-025', 'admin', 9, 11, 1, '191', '191', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 750000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-025', '', '191', NULL, 'BMJ-025-GzWcW', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:39:19', '2021-08-17 11:39:19'),
(142, 'BMJ-026', 'admin', 9, 11, 1, '192', '192', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 650000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-026', '', '192', NULL, 'BMJ-026-OlhlY', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:40:40', '2021-08-17 11:40:40'),
(143, 'BMJ-027', 'admin', 9, 11, 1, '193', '193', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 950000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-027', '', '193', NULL, 'BMJ-027-k8xu8', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:41:40', '2021-08-17 11:41:41'),
(144, 'BMJ-028', 'admin', 9, 11, 1, '195', '195', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 1800000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-028', '', '195', NULL, 'BMJ-028-TaPMH', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:42:42', '2021-08-17 11:42:42'),
(145, 'BMJ-029', 'admin', 9, 11, 1, '194', '194', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 1500000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-029', '', '194', NULL, 'BMJ-029-5zW7L', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:44:05', '2021-08-17 11:44:05'),
(146, 'BMJ-030', 'admin', 9, 11, 1, '196', '196', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 890000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-030', '', '196', NULL, 'BMJ-030-EMEy1', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:45:13', '2021-08-17 11:45:13'),
(147, 'BMJ-031', 'admin', 9, 11, 1, '200', '200', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 650000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-031', '', '200', NULL, 'BMJ-031-8HTM9', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:47:48', '2021-08-17 11:47:48'),
(148, 'BMJ-032', 'admin', 9, 11, 1, '197', '197', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 2000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-032', '', '197', NULL, 'BMJ-032-7KYLo', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:48:45', '2021-08-17 11:48:45'),
(149, 'BMJ-033', 'admin', 9, 11, 1, '198', '198', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 500000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-033', '', '198', NULL, 'BMJ-033-nENUI', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:49:55', '2021-08-17 11:49:55'),
(150, 'BMJ-034', 'admin', 9, 11, 1, '199', '199', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 600000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-034', '', '199', NULL, 'BMJ-034-1apzt', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:52:20', '2021-08-17 11:52:20'),
(151, 'BMJ-035', 'admin', 9, 11, 1, '201', '201', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 650000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-035', '', '201', NULL, 'BMJ-035-Z6wMY', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:53:19', '2021-08-17 11:53:19'),
(152, 'BMJ-036', 'admin', 9, 11, 1, '202', '202', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 650000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-036', '', '202', NULL, 'BMJ-036-ZVNsw', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:54:16', '2021-08-17 11:54:16'),
(153, 'BMJ-037', 'admin', 9, 11, 1, '203', '203', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 1000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-037', '', '203', NULL, 'BMJ-037-5q8PP', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:55:26', '2021-08-17 11:55:26'),
(154, 'BMJ-038', 'admin', 9, 11, 1, '204', '204', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 630000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-038', '', '204', NULL, 'BMJ-038-qbkl5', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:58:10', '2021-08-17 11:58:10'),
(155, 'BMJ-039', 'admin', 9, 11, 1, '205', '205', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 750000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-039', '', '205', NULL, 'BMJ-039-2I5Cp', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 11:59:36', '2021-08-17 11:59:36'),
(156, 'BMJ-040', 'admin', 9, 11, 1, '208', '208', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 650000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-040', '', '208', NULL, 'BMJ-040-cUvF2', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:00:29', '2021-08-17 12:00:29'),
(157, 'BMJ-041', 'admin', 9, 11, 1, '207', '207', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-041', '', '207', NULL, 'BMJ-041-teVbp', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:02:10', '2021-08-17 12:02:11'),
(158, 'BMJ-042', 'admin', 9, 11, 1, '206', '206', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 700000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-042', '', '206', NULL, 'BMJ-042-Z2jX3', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:08:42', '2021-08-17 12:08:42'),
(159, 'BMJ-043', 'admin', 9, 11, 1, '210', '210', 'youtube', NULL, 'bunga meja,bunga meja murah,bunga meja premium,bunga meja jakarta,jual bunga meja,toko bunga meja,toko bunga jakarta', NULL, 650000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'BMJ-043', '', '210', NULL, 'BMJ-043-CeyqR', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:09:50', '2021-08-17 12:09:50'),
(160, 'KDC-001', 'admin', 9, 41, 1, '228', '228', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 870000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-001', '', '228', NULL, 'KDC-001-DGeZH', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:15:28', '2021-08-17 12:15:28'),
(161, 'KDC-002', 'admin', 9, 41, 1, '230', '230', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 1500000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-002', '', '230', NULL, 'KDC-002-ZEfxZ', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:16:21', '2021-08-17 12:16:21'),
(162, 'KDC-003', 'admin', 9, 41, 1, '232', '232', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 1700000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-003', '', '232', NULL, 'KDC-003-rB4wN', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:17:13', '2021-08-17 12:17:13'),
(163, 'KDC-004', 'admin', 9, 41, 1, '232', '232', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 1700000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-004', '', '232', NULL, 'KDC-004-p0cNo', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:18:08', '2021-08-17 12:18:08'),
(164, 'KDC-005', 'admin', 9, 41, 1, '231', '231', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 750000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-005', '', '231', NULL, 'KDC-005-SKjp1', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:19:36', '2021-08-17 12:19:37'),
(165, 'KDC-006', 'admin', 9, 41, 1, '233', '233', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 750000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-006', '', '233', NULL, 'KDC-006-yBEyj', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:20:37', '2021-08-17 12:20:37'),
(166, 'KDC-007', 'admin', 9, 41, 1, '234', '234', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 650000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-007', '', '234', NULL, 'KDC-007-LWxj4', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:21:42', '2021-08-17 12:21:42'),
(167, 'KDC-008', 'admin', 9, 41, 1, '235', '235', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 800000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-008', '', '235', NULL, 'KDC-008-T3SLz', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:22:37', '2021-08-17 12:22:37'),
(168, 'KDC-009', 'admin', 9, 41, 1, '236', '236', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 800000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-009', '', '236', NULL, 'KDC-009-RuraD', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:23:49', '2021-08-17 12:23:49'),
(169, 'KDC-010', 'admin', 9, 41, 1, '238', '238', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 620000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-010', '', '237', NULL, 'kdc-010-7rqww', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:24:56', '2021-08-17 12:36:03'),
(170, 'KDC-011', 'admin', 9, 41, 1, '237', '237', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 1000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-011', '', '237', NULL, 'kdc-011-evmzg', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:26:06', '2021-08-17 12:34:06'),
(171, 'KDC-012', 'admin', 9, 41, 1, '242', '242', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 800000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-012', '', '242', NULL, 'KDC-012-jRQTa', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:27:05', '2021-08-17 12:27:05'),
(172, 'KDC-013', 'admin', 9, 41, 1, '244', '244', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 1000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 10000.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-013', '', '244', NULL, 'KDC-013-MBQde', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:28:32', '2021-08-17 12:28:33'),
(173, 'KDC-014', 'admin', 9, 41, 1, '240', '240', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 800000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 10000.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-014', '', '240', NULL, 'KDC-014-dL4mx', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:29:37', '2021-08-17 12:29:37'),
(174, 'KDC-015', 'admin', 9, 41, 1, '239', '239', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 990000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-015', '', '239', NULL, 'KDC-015-VK2MZ', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:30:32', '2021-08-17 12:30:32'),
(175, 'KDC-016', 'admin', 9, 41, 1, '243', '243', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 720000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-016', '', '243', NULL, 'KDC-016-5TnGg', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-17 12:31:23', '2021-08-17 12:31:23'),
(176, 'KDC-017', 'admin', 9, 41, 1, '241', '241', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 1150000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-017', '', '241', NULL, 'KDC-017-tVFcH', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 07:38:59', '2021-08-18 07:38:59'),
(177, 'KDC-018', 'admin', 9, 41, 1, '245', '245', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 1200000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-018', '', '245', NULL, 'KDC-018-0mBSd', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 07:40:00', '2021-08-18 07:40:00'),
(178, 'KDC-019', 'admin', 9, 41, 1, '247', '247', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 500000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-019', '', '247', NULL, 'KDC-019-Nszoy', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 07:42:55', '2021-08-18 07:42:55'),
(179, 'KDC-020', 'admin', 9, 41, 1, '246', '246', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 850000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-020', '', '246', NULL, 'KDC-020-c2HDj', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 07:48:13', '2021-08-18 07:48:13'),
(180, 'KDC-021', 'admin', 9, 41, 1, '248', '248', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 550000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-021', '', '248', NULL, 'KDC-021-ZxCFP', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 07:53:45', '2021-08-18 07:53:45');
INSERT INTO `products` (`id`, `name`, `added_by`, `user_id`, `category_id`, `brand_id`, `photos`, `thumbnail_img`, `video_provider`, `video_link`, `tags`, `description`, `unit_price`, `purchase_price`, `variant_product`, `attributes`, `choice_options`, `colors`, `variations`, `todays_deal`, `published`, `approved`, `stock_visibility_state`, `cash_on_delivery`, `featured`, `seller_featured`, `current_stock`, `unit`, `min_qty`, `low_stock_quantity`, `discount`, `discount_type`, `discount_start_date`, `discount_end_date`, `tax`, `tax_type`, `shipping_type`, `shipping_cost`, `is_quantity_multiplied`, `est_shipping_days`, `num_of_sale`, `meta_title`, `meta_description`, `meta_img`, `pdf`, `slug`, `earn_point`, `rating`, `barcode`, `digital`, `file_name`, `file_path`, `created_at`, `updated_at`) VALUES
(181, 'KDC-022', 'admin', 9, 41, 1, '249', '249', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 950000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-022', '', '249', NULL, 'kdc-022-um63h', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 08:00:14', '2021-08-18 08:11:33'),
(182, 'KDC-023', 'admin', 9, 41, 1, '250', '250', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 1100000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-023', '', '250', NULL, 'KDC-023-qoigY', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 08:19:37', '2021-08-18 08:19:37'),
(183, 'KDC-024', 'admin', 9, 41, 1, '251', '251', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 870000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-024', '', '251', NULL, 'KDC-024-875ev', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 08:20:49', '2021-08-18 08:20:49'),
(184, 'KDC-025', 'admin', 9, 41, 1, '255', '255', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 600000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-025', '', '255', NULL, 'KDC-025-nDjgj', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 08:30:49', '2021-08-18 08:30:49'),
(185, 'KDC-026', 'admin', 9, 41, 1, '252', '252', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 920000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-026', '', '252', NULL, 'KDC-026-2exlj', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 08:33:00', '2021-08-18 08:33:00'),
(186, 'KDC-027', 'admin', 9, 41, 1, '254', '254', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 850000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-027', '', '254', NULL, 'KDC-027-CHglv', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 08:34:15', '2021-08-18 08:34:16'),
(187, 'KDC-028', 'admin', 9, 41, 1, '253', '253', 'youtube', NULL, 'bunga duka cita,bunga duka cita murah,krans duka cita premium,krans duka cita jakarta,jual krans duka cita,toko bunga krans,toko bunga jakarta', NULL, 1000000.00, NULL, 1, '[\"3\"]', '[{\"attribute_id\":\"3\",\"values\":[\"Pagi (08:00 - 13:00)\",\"Siang (13:00 - 18:00)\",\"Malam (18:00 - 23:00)\"]}]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'KDC-028', '', '253', NULL, 'KDC-028-7txuJ', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 08:35:32', '2021-08-18 08:35:32'),
(188, 'PCB-001', 'admin', 9, 15, 1, '256', '256', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 600000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-001', '', '256', NULL, 'pcb-001-4oilv', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 08:46:26', '2021-08-18 08:51:37'),
(189, 'PCB-002', 'admin', 9, 15, 1, '257', '257', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 820000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-002', '', '257', NULL, 'pcb-002-oxn64', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 08:47:43', '2021-08-18 08:52:56'),
(190, 'PCB-003', 'admin', 9, 15, 1, '258', '258', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 800000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-003', '', '258', NULL, 'PCB-003-coaaI', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 08:50:09', '2021-08-18 08:50:09'),
(191, 'PCB-004', 'admin', 9, 15, 1, '259', '259', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 1000000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-004', '', '259', NULL, 'PCB-004-KNrF4', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 09:01:50', '2021-08-18 09:01:50'),
(192, 'PCB-005', 'admin', 9, 15, 1, '260', '260', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 940000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-005', '', '260', NULL, 'PCB-005-FQjgg', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 09:02:42', '2021-08-18 09:02:42'),
(193, 'PCB-006', 'admin', 9, 15, 1, '261', '261', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 900000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-006', '', '261', NULL, 'PCB-006-HOYiO', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 09:03:59', '2021-08-18 09:03:59'),
(194, 'PCB-007', 'admin', 9, 15, 1, '262', '262', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 800000.00, NULL, 1, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-007', '', '262', NULL, 'pcb-007-f01wc', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 09:12:29', '2021-08-18 09:44:47'),
(195, 'PCB-008', 'admin', 9, 15, 1, '263', '263', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 800000.00, NULL, 1, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-008', '', '263', NULL, 'pcb-008-15xyw', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 09:14:12', '2021-08-18 09:39:46'),
(196, 'PCB-009', 'admin', 9, 15, 1, '264', '264', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 550000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-009', '', '264', NULL, 'PCB-009-FL1Us', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 09:15:19', '2021-08-18 09:15:19'),
(197, 'PCB-010', 'admin', 9, 15, 1, '265', '265', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 820000.00, NULL, 1, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-010', '', '265', NULL, 'pcb-010-f8ugv', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 09:23:52', '2021-08-18 09:38:07'),
(198, 'PCB-011', 'admin', 9, 15, 1, '266', '266', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 710000.00, NULL, 1, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-011', '', '267', NULL, 'pcb-011-coerz', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 09:25:19', '2021-08-18 09:36:41'),
(199, 'PCB-012', 'admin', 9, 15, 1, '267', '267', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 750000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-012', '', '267', NULL, 'PCB-012-7FZUE', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 09:26:23', '2021-08-18 09:26:23'),
(200, 'PCB-013', 'admin', 9, 15, 1, '268', '268', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 800000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-013', '', '268', NULL, 'PCB-013-hwcuM', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 09:27:20', '2021-08-18 09:27:20'),
(201, 'PCB-014', 'admin', 9, 15, 1, '269', '269', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 820000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-014', '', '269', NULL, 'pcb-013-10ghx', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 09:29:33', '2021-08-18 09:47:12'),
(202, 'PCB-015', 'admin', 9, 15, 1, '270', '270', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 800000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-015', '', '270', NULL, 'PCB-015-X5pQG', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 09:51:20', '2021-08-18 09:51:20'),
(203, 'PCB-016', 'admin', 9, 15, 1, '271', '271', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 700000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-016', '', '271', NULL, 'PCB-016-7ezhp', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 09:52:23', '2021-08-18 09:52:23'),
(204, 'PCB-017', 'admin', 9, 15, 1, '272', '272', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 700000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-017', '', '272', NULL, 'PCB-017-wjA92', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 09:53:57', '2021-08-18 09:53:57'),
(205, 'PCB-018', 'admin', 9, 15, 1, '273', '273', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 800000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-018', '', '273', NULL, 'PCB-018-G54iR', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 09:54:54', '2021-08-18 09:54:54'),
(206, 'PCB-019', 'admin', 9, 15, 1, '274', '274', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 1200000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-019', '', '274', NULL, 'PCB-019-rZkqp', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 09:55:44', '2021-08-18 09:55:44'),
(207, 'PCB-020', 'admin', 9, 15, 1, '275', '275', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 1050000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-020', '', '275', NULL, 'PCB-020-13fSj', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 10:02:33', '2021-08-18 10:02:33'),
(208, 'PCB-021', 'admin', 9, 15, 1, '276', '276', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 1350000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-021', '', '276', NULL, 'PCB-021-fxZjk', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 10:04:23', '2021-08-18 10:04:23'),
(209, 'PCB-022', 'admin', 9, 15, 1, '277', '277', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 1350000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-022', '', '277', NULL, 'PCB-022-N8x5t', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 10:05:20', '2021-08-18 10:05:20'),
(210, 'PCB-023', 'admin', 9, 15, 1, '278', '278', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 1000000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-023', '', '278', NULL, 'PCB-023-nhYjs', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 10:06:24', '2021-08-18 10:06:24'),
(211, 'PCB-024', 'admin', 9, 15, 1, '279', '279', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 950000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-024', '', '279', NULL, 'pcb-022-fyrbn', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 10:16:51', '2021-08-18 10:18:34'),
(212, 'PCB-025', 'admin', 9, 15, 1, '280', '280', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 1000000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-025', '', '280', NULL, 'PCB-025-tX3hP', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 10:22:48', '2021-08-18 10:22:48'),
(213, 'PCB-026', 'admin', 9, 15, 1, '281', '281', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 1000000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-026', '', '281', NULL, 'PCB-026-NRpJc', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 10:24:06', '2021-08-18 10:24:06'),
(214, 'PCB-027', 'admin', 9, 15, 1, '282', '282', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 1050000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-027', '', '282', NULL, 'PCB-027-Gd6I1', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 10:25:04', '2021-08-18 10:25:04'),
(215, 'PCB-028', 'admin', 9, 15, 1, '283', '283', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 950000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-028', '', '283', NULL, 'PCB-028-BMm0R', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 10:26:31', '2021-08-18 10:26:31'),
(216, 'PCB-029', 'admin', 9, 15, 1, '284', '284', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 1000000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-029', '', '284', NULL, 'PCB-029-l80vx', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 10:40:13', '2021-08-18 10:40:13'),
(217, 'PCB-030', 'admin', 9, 15, 1, '284', '284', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 850000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-030', '', '284', NULL, 'PCB-030-BkCue', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 10:43:22', '2021-08-18 10:43:22'),
(218, 'PCB-031', 'admin', 9, 15, 1, '286', '286', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 1500000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-031', '', '286', NULL, 'PCB-031-vDg22', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 10:45:48', '2021-08-18 10:45:48'),
(219, 'PCB-032', 'admin', 9, 15, 1, '287', '287', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 950000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-032', '', '287', NULL, 'PCB-032-9cWBg', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 10:46:55', '2021-08-18 10:46:55'),
(220, 'PCB-033', 'admin', 9, 15, 1, '288', '288', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 650000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-033', '', '288', NULL, 'PCB-033-8jUfs', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 10:49:24', '2021-08-18 10:49:24'),
(221, 'PCB-034', 'admin', 9, 15, 1, '289', '289', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 1000000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-034', '', '289', NULL, 'PCB-034-qdntx', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 10:50:18', '2021-08-18 10:50:18'),
(222, 'PCB-035', 'admin', 9, 15, 1, '290', '290', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel buah murah,parcel buah jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel buah,toko parcel buah murah', NULL, 900000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCB-035', '', '290', NULL, 'PCB-035-ptXRI', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 10:52:17', '2021-08-18 10:52:17'),
(223, 'PCL-001', 'admin', 9, 16, 1, '291', '291', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 500000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-001', '', '291', NULL, 'PCL-001-PKhkg', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:09:19', '2021-08-18 11:09:19'),
(224, 'PCL-002', 'admin', 9, 16, 1, '292', '292', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 600000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-002', '', '292', NULL, 'PCL-002-8KOfS', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:10:11', '2021-08-18 11:10:11'),
(225, 'PCL-003', 'admin', 9, 16, 1, '294', '294', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 700000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-003', '', '294', NULL, 'PCL-003-9xZnf', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:11:28', '2021-08-18 11:11:28'),
(226, 'PCL-004', 'admin', 9, 16, 1, '294', '294', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 550000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-004', '', '294', NULL, 'PCL-004-LwYBK', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:12:36', '2021-08-18 11:12:36'),
(227, 'PCL-005', 'admin', 9, 16, 1, '295', '295', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 1000000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-005', '', '295', NULL, 'PCL-005-kD57s', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:13:30', '2021-08-18 11:13:30'),
(228, 'PCL-006', 'admin', 9, 16, 1, '298', '298', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 1000000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-006', '', '298', NULL, 'PCL-006-YhvuI', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:14:21', '2021-08-18 11:14:21'),
(229, 'PCL-006', 'admin', 9, 16, 1, '296', '296', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 1500000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-006', '', '296', NULL, 'PCL-006-PmktE', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:15:07', '2021-08-18 11:15:07'),
(230, 'PCL-007', 'admin', 9, 16, 1, '297', '297', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 1300000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-007', '', '297', NULL, 'PCL-007-fFA3m', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:15:53', '2021-08-18 11:15:53'),
(231, 'PCL-009', 'admin', 9, 16, 1, '299', '299', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 850000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-009', '', '299', NULL, 'PCL-009-czVg1', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:16:49', '2021-08-18 11:16:49'),
(232, 'PCL-010', 'admin', 9, 16, 1, '300', '300', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 600000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-010', '', '300', NULL, 'PCL-010-kv8y5', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:17:56', '2021-08-18 11:17:56'),
(233, 'PCL-011', 'admin', 9, 16, 1, '301', '301', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 600000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-011', '', '301', NULL, 'PCL-011-PIKo6', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:18:48', '2021-08-18 11:18:48'),
(234, 'PCL-012', 'admin', 9, 16, 1, '302', '302', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 1000000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-012', '', '302', NULL, 'PCL-012-Zvvmb', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:19:52', '2021-08-18 11:19:52'),
(235, 'PCL-013', 'admin', 9, 16, 1, '303', '303', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 650000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-013', '', '303', NULL, 'PCL-013-jwEqe', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:20:42', '2021-08-18 11:20:42'),
(236, 'PCL-014', 'admin', 9, 16, 1, '304', '304', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 700000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-014', '', '304', NULL, 'PCL-014-KbYe4', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:22:26', '2021-08-18 11:22:26'),
(237, 'PCL-024', 'admin', 9, 16, 1, '314', '314', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 1000000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, NULL, '0', 0, NULL, 0, 'PCL-024', '', '314', NULL, 'pcl-024-km2cb', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:37:35', '2021-08-18 12:20:58'),
(238, 'PCL-015', 'admin', 9, 16, 1, '305', '305', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 800000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-015', '', '305', NULL, 'pcl-015-tt5k2', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:23:16', '2021-08-18 11:55:07'),
(239, 'PCL-016', 'admin', 9, 16, 1, '306', '306', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 1000000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-016', '', '306', NULL, 'pcl-016-ihsro', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:24:18', '2021-08-18 11:56:55'),
(240, 'PCL-017', 'admin', 9, 16, 1, '307', '307', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 1000000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-017', '', '307', NULL, 'pcl-017-idinl', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:25:28', '2021-08-18 11:59:12'),
(241, 'PCL-018', 'admin', 9, 16, 1, '308', '308', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 1200000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-018', '', '308', NULL, 'pcl-018-7rxji', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:26:26', '2021-08-18 12:00:52'),
(242, 'PCL-019', 'admin', 9, 16, 1, '309', '309', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 1200000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-019', '', '309', NULL, 'pcl-019-ogp80', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:27:21', '2021-08-18 12:02:53'),
(243, 'PCL-020', 'admin', 9, 16, 1, '310', '310', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 1200000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-020', '', '310', NULL, 'pcl-020-1voqn', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:28:07', '2021-08-18 12:04:59'),
(244, 'PCL-021', 'admin', 9, 16, 1, '311', '311', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 1200000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-021', '', '311', NULL, 'pcl-022-hf6lh', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:28:52', '2021-08-18 12:06:57'),
(245, 'PCL-022', 'admin', 9, 16, 1, '312', '312', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 1200000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-022', '', '312', NULL, 'pcl-022-pwz2z', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:29:44', '2021-08-18 12:16:52'),
(246, 'PCL-023', 'admin', 9, 16, 1, '313', '313', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 1000000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', 0, 0, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-023', '', '313', NULL, 'pcl-023-kurcj', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:30:35', '2021-08-18 12:18:43'),
(248, 'PCL-025', 'admin', 9, 16, 1, '315', '315', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 950000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-025', '', '315', NULL, 'PCL-025-Ipxb7', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:45:03', '2021-08-18 11:45:03'),
(249, 'PCL-026', 'admin', 9, 16, 1, '316', '316', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 1100000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-026', '', '316', NULL, 'PCL-026-m68Pd', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:46:49', '2021-08-18 11:46:49'),
(250, 'PCL-027', 'admin', 9, 16, 1, '317', '317', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 400000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-027', '', '317', NULL, 'PCL-027-13aEE', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 11:48:00', '2021-08-18 11:48:00'),
(251, 'PCL-028', 'admin', 9, 16, 1, '318', '318', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 400000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-028', '', '318', NULL, 'PCL-028-8VJZx', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 12:47:23', '2021-08-18 12:47:23'),
(252, 'PCL-029', 'admin', 9, 16, 1, '319', '319', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 400000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-029', '', '319', NULL, 'PCL-029-3Srta', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 13:01:30', '2021-08-18 13:01:30'),
(253, 'PCL-030', 'admin', 9, 16, 1, '320', '320', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 370000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-030', '', '320', NULL, 'PCL-030-eVCff', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 13:02:30', '2021-08-18 13:02:30'),
(254, 'PCL-031', 'admin', 9, 16, 1, '321', '321', 'youtube', NULL, 'toko parcel murah,parcel murah,parcel murah jakarta,parcel lebaran murah,parcel lebaran jakarta,jual parcel murah,jual parcel termurah di jakarta,jual parcel lebaran,toko parcel lebaran murah', NULL, 370000.00, NULL, 0, '[]', '[]', '[]', NULL, 0, 1, 1, 'quantity', 0, 0, 0, 10, 'Pc', 1, 1, 0.00, 'amount', NULL, NULL, NULL, NULL, 'free', '0', 0, NULL, 0, 'PCL-031', '', '321', NULL, 'PCL-031-SzznV', 0.00, 0.00, NULL, 0, NULL, NULL, '2021-08-18 13:04:04', '2021-08-18 13:04:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(20,2) NOT NULL DEFAULT '0.00',
  `qty` int(11) NOT NULL DEFAULT '0',
  `image` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `product_stocks`
--

INSERT INTO `product_stocks` (`id`, `product_id`, `variant`, `sku`, `price`, `qty`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pagi(08:00-13:00)', NULL, 650000.00, 10, NULL, '2021-08-15 08:53:07', '2021-08-15 08:53:07'),
(2, 1, 'Siang(13:00-18:00)', NULL, 650000.00, 10, NULL, '2021-08-15 08:53:07', '2021-08-15 08:53:07'),
(3, 1, 'Malam(18:00-23:00)', NULL, 650000.00, 10, NULL, '2021-08-15 08:53:07', '2021-08-15 08:53:07'),
(5, 2, 'Pagi(08:00-13:00)', '', 650000.00, 10, NULL, '2021-08-15 09:04:19', '2021-08-15 09:04:19'),
(6, 2, 'Siang(13:00-18:00)', '', 650000.00, 10, NULL, '2021-08-15 09:04:20', '2021-08-15 09:04:20'),
(7, 2, 'Malam(18:00-23:00)', '', 650000.00, 10, NULL, '2021-08-15 09:04:20', '2021-08-15 09:04:20'),
(14, 3, 'Pagi(08:00-13:00)', NULL, 650000.00, 10, NULL, '2021-08-15 09:50:11', '2021-08-15 09:50:11'),
(15, 3, 'Siang(13:00-18:00)', NULL, 650000.00, 10, NULL, '2021-08-15 09:50:11', '2021-08-15 09:50:11'),
(16, 3, 'Malam(18:00-23:00)', NULL, 650000.00, 10, NULL, '2021-08-15 09:50:11', '2021-08-15 09:50:11'),
(20, 4, 'Pagi(08:00-13:00)', NULL, 650000.00, 10, NULL, '2021-08-15 09:53:36', '2021-08-15 09:53:36'),
(21, 4, 'Siang(13:00-18:00)', NULL, 650000.00, 10, NULL, '2021-08-15 09:53:36', '2021-08-15 09:53:36'),
(22, 4, 'Malam(18:00-23:00)', NULL, 650000.00, 10, NULL, '2021-08-15 09:53:36', '2021-08-15 09:53:36'),
(24, 5, 'Pagi(08:00-13:00)', 'Pagi(08:00-13:00)', 950000.00, 10, NULL, '2021-08-15 10:02:49', '2021-08-15 10:02:49'),
(25, 5, 'Siang(13:00-18:00)', 'Siang(13:00-18:00)', 950000.00, 10, NULL, '2021-08-15 10:02:49', '2021-08-15 10:02:49'),
(26, 5, 'Malam(18:00-23:00)', 'Malam(18:00-23:00)', 950000.00, 10, NULL, '2021-08-15 10:02:49', '2021-08-15 10:02:49'),
(27, 6, 'Pagi(08:00-13:00)', NULL, 540000.00, 10, NULL, '2021-08-15 10:05:19', '2021-08-15 10:05:19'),
(28, 6, 'Siang(13:00-18:00)', NULL, 540000.00, 10, NULL, '2021-08-15 10:05:19', '2021-08-15 10:05:19'),
(29, 6, 'Malam(18:00-23:00)', NULL, 540000.00, 10, NULL, '2021-08-15 10:05:19', '2021-08-15 10:05:19'),
(33, 7, 'Pagi(08:00-13:00)', NULL, 540000.00, 10, NULL, '2021-08-15 10:07:52', '2021-08-15 10:07:52'),
(34, 7, 'Siang(13:00-18:00)', NULL, 540000.00, 10, NULL, '2021-08-15 10:07:52', '2021-08-15 10:07:52'),
(35, 7, 'Malam(18:00-23:00)', NULL, 540000.00, 10, NULL, '2021-08-15 10:07:52', '2021-08-15 10:07:52'),
(36, 8, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-15 10:09:38', '2021-08-15 10:09:38'),
(37, 8, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-15 10:09:38', '2021-08-15 10:09:38'),
(38, 8, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-15 10:09:38', '2021-08-15 10:09:38'),
(42, 10, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-15 10:13:50', '2021-08-15 10:13:50'),
(43, 10, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-15 10:13:50', '2021-08-15 10:13:50'),
(44, 10, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-15 10:13:50', '2021-08-15 10:13:50'),
(51, 11, 'Pagi(08:00-13:00)', NULL, 1100000.00, 10, NULL, '2021-08-15 10:19:38', '2021-08-15 10:19:38'),
(52, 11, 'Siang(13:00-18:00)', NULL, 1100000.00, 10, NULL, '2021-08-15 10:19:38', '2021-08-15 10:19:38'),
(53, 11, 'Malam(18:00-23:00)', NULL, 1100000.00, 10, NULL, '2021-08-15 10:19:38', '2021-08-15 10:19:38'),
(54, 9, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-15 11:47:02', '2021-08-15 11:47:02'),
(55, 9, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-15 11:47:02', '2021-08-15 11:47:02'),
(56, 9, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-15 11:47:02', '2021-08-15 11:47:02'),
(57, 12, 'Pagi(08:00-13:00)', NULL, 500000.00, 10, NULL, '2021-08-15 12:13:38', '2021-08-15 12:13:38'),
(58, 12, 'Siang(13:00-18:00)', NULL, 500000.00, 10, NULL, '2021-08-15 12:13:38', '2021-08-15 12:13:38'),
(59, 12, 'Malam(18:00-23:00)', NULL, 500000.00, 10, NULL, '2021-08-15 12:13:38', '2021-08-15 12:13:38'),
(62, 13, 'Pagi(08:00-13:00)', NULL, 2700000.00, 10, NULL, '2021-08-15 12:24:14', '2021-08-15 12:24:14'),
(63, 13, 'Siang(13:00-18:00)', NULL, 2700000.00, 10, NULL, '2021-08-15 12:24:14', '2021-08-15 12:24:14'),
(64, 13, 'Malam(18:00-23:00)', NULL, 2700000.00, 10, NULL, '2021-08-15 12:24:14', '2021-08-15 12:24:14'),
(65, 14, 'Pagi(08:00-13:00)', NULL, 1500000.00, 10, NULL, '2021-08-15 12:26:08', '2021-08-15 12:26:08'),
(66, 14, 'Siang(13:00-18:00)', NULL, 1500000.00, 10, NULL, '2021-08-15 12:26:08', '2021-08-15 12:26:08'),
(67, 14, 'Malam(18:00-23:00)', NULL, 1500000.00, 10, NULL, '2021-08-15 12:26:08', '2021-08-15 12:26:08'),
(68, 15, 'Pagi(08:00-13:00)', NULL, 950000.00, 10, NULL, '2021-08-15 12:27:42', '2021-08-15 12:27:42'),
(69, 15, 'Siang(13:00-18:00)', NULL, 950000.00, 10, NULL, '2021-08-15 12:27:42', '2021-08-15 12:27:42'),
(70, 15, 'Malam(18:00-23:00)', NULL, 950000.00, 10, NULL, '2021-08-15 12:27:42', '2021-08-15 12:27:42'),
(74, 16, 'Pagi(08:00-13:00)', NULL, 5000000.00, 10, NULL, '2021-08-16 07:38:39', '2021-08-16 07:38:39'),
(75, 16, 'Siang(13:00-18:00)', NULL, 5000000.00, 10, NULL, '2021-08-16 07:38:39', '2021-08-16 07:38:39'),
(76, 16, 'Malam(18:00-23:00)', NULL, 5000000.00, 10, NULL, '2021-08-16 07:38:39', '2021-08-16 07:38:39'),
(77, 17, 'Pagi(08:00-13:00)', NULL, 5000000.00, 10, NULL, '2021-08-16 07:52:27', '2021-08-16 07:52:27'),
(78, 17, 'Siang(13:00-18:00)', NULL, 5000000.00, 10, NULL, '2021-08-16 07:52:27', '2021-08-16 07:52:27'),
(79, 17, 'Malam(18:00-23:00)', NULL, 5000000.00, 10, NULL, '2021-08-16 07:52:27', '2021-08-16 07:52:27'),
(80, 18, 'Pagi(08:00-13:00)', NULL, 2000000.00, 10, NULL, '2021-08-16 07:55:45', '2021-08-16 07:55:45'),
(81, 18, 'Siang(13:00-18:00)', NULL, 2000000.00, 10, NULL, '2021-08-16 07:55:45', '2021-08-16 07:55:45'),
(82, 18, 'Malam(18:00-23:00)', NULL, 2000000.00, 10, NULL, '2021-08-16 07:55:45', '2021-08-16 07:55:45'),
(83, 19, 'Pagi(08:00-13:00)', NULL, 500000.00, 10, NULL, '2021-08-16 07:59:48', '2021-08-16 07:59:48'),
(84, 19, 'Siang(13:00-18:00)', NULL, 500000.00, 10, NULL, '2021-08-16 07:59:48', '2021-08-16 07:59:48'),
(85, 19, 'Malam(18:00-23:00)', NULL, 500000.00, 10, NULL, '2021-08-16 07:59:48', '2021-08-16 07:59:48'),
(86, 20, 'Pagi(08:00-13:00)', NULL, 3000000.00, 10, NULL, '2021-08-16 08:01:31', '2021-08-16 08:01:31'),
(87, 20, 'Siang(13:00-18:00)', NULL, 3000000.00, 10, NULL, '2021-08-16 08:01:31', '2021-08-16 08:01:31'),
(88, 20, 'Malam(18:00-23:00)', NULL, 3000000.00, 10, NULL, '2021-08-16 08:01:31', '2021-08-16 08:01:31'),
(89, 21, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-16 08:08:17', '2021-08-16 08:08:17'),
(90, 21, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-16 08:08:17', '2021-08-16 08:08:17'),
(91, 21, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-16 08:08:17', '2021-08-16 08:08:17'),
(92, 22, 'Pagi(08:00-13:00)', NULL, 950000.00, 10, NULL, '2021-08-16 08:10:59', '2021-08-16 08:10:59'),
(93, 22, 'Siang(13:00-18:00)', NULL, 950000.00, 10, NULL, '2021-08-16 08:10:59', '2021-08-16 08:10:59'),
(94, 22, 'Malam(18:00-23:00)', NULL, 950000.00, 10, NULL, '2021-08-16 08:10:59', '2021-08-16 08:10:59'),
(95, 23, 'Pagi(08:00-13:00)', NULL, 600000.00, 10, NULL, '2021-08-16 08:12:47', '2021-08-16 08:12:47'),
(96, 23, 'Siang(13:00-18:00)', NULL, 600000.00, 10, NULL, '2021-08-16 08:12:47', '2021-08-16 08:12:47'),
(97, 23, 'Malam(18:00-23:00)', NULL, 600000.00, 10, NULL, '2021-08-16 08:12:47', '2021-08-16 08:12:47'),
(98, 24, 'Pagi(08:00-13:00)', NULL, 4100000.00, 10, NULL, '2021-08-16 08:14:28', '2021-08-16 08:14:28'),
(99, 24, 'Siang(13:00-18:00)', NULL, 4100000.00, 10, NULL, '2021-08-16 08:14:28', '2021-08-16 08:14:28'),
(100, 24, 'Malam(18:00-23:00)', NULL, 4100000.00, 10, NULL, '2021-08-16 08:14:28', '2021-08-16 08:14:28'),
(101, 25, 'Pagi(08:00-13:00)', NULL, 620000.00, 10, NULL, '2021-08-16 08:16:14', '2021-08-16 08:16:14'),
(102, 25, 'Siang(13:00-18:00)', NULL, 620000.00, 10, NULL, '2021-08-16 08:16:14', '2021-08-16 08:16:14'),
(103, 25, 'Malam(18:00-23:00)', NULL, 620000.00, 10, NULL, '2021-08-16 08:16:14', '2021-08-16 08:16:14'),
(104, 26, 'Pagi(08:00-13:00)', NULL, 950000.00, 10, NULL, '2021-08-16 08:17:45', '2021-08-16 08:17:45'),
(105, 26, 'Siang(13:00-18:00)', NULL, 950000.00, 10, NULL, '2021-08-16 08:17:45', '2021-08-16 08:17:45'),
(106, 26, 'Malam(18:00-23:00)', NULL, 950000.00, 10, NULL, '2021-08-16 08:17:45', '2021-08-16 08:17:45'),
(107, 27, 'Pagi(08:00-13:00)', NULL, 700000.00, 10, NULL, '2021-08-16 08:19:03', '2021-08-16 08:19:03'),
(108, 27, 'Siang(13:00-18:00)', NULL, 700000.00, 10, NULL, '2021-08-16 08:19:03', '2021-08-16 08:19:03'),
(109, 27, 'Malam(18:00-23:00)', NULL, 700000.00, 10, NULL, '2021-08-16 08:19:03', '2021-08-16 08:19:03'),
(110, 28, 'Pagi(08:00-13:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 08:20:30', '2021-08-16 08:20:30'),
(111, 28, 'Siang(13:00-18:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 08:20:30', '2021-08-16 08:20:30'),
(112, 28, 'Malam(18:00-23:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 08:20:30', '2021-08-16 08:20:30'),
(116, 29, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-16 08:23:14', '2021-08-16 08:23:14'),
(117, 29, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-16 08:23:14', '2021-08-16 08:23:14'),
(118, 29, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-16 08:23:14', '2021-08-16 08:23:14'),
(119, 30, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-16 08:25:51', '2021-08-16 08:25:51'),
(120, 30, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-16 08:25:51', '2021-08-16 08:25:51'),
(121, 30, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-16 08:25:51', '2021-08-16 08:25:51'),
(122, 31, 'Pagi(08:00-13:00)', NULL, 1500000.00, 10, NULL, '2021-08-16 08:27:08', '2021-08-16 08:27:08'),
(123, 31, 'Siang(13:00-18:00)', NULL, 1500000.00, 10, NULL, '2021-08-16 08:27:08', '2021-08-16 08:27:08'),
(124, 31, 'Malam(18:00-23:00)', NULL, 1500000.00, 10, NULL, '2021-08-16 08:27:09', '2021-08-16 08:27:09'),
(125, 32, 'Pagi(08:00-13:00)', NULL, 1500000.00, 10, NULL, '2021-08-16 08:29:19', '2021-08-16 08:29:19'),
(126, 32, 'Siang(13:00-18:00)', NULL, 1500000.00, 10, NULL, '2021-08-16 08:29:19', '2021-08-16 08:29:19'),
(127, 32, 'Malam(18:00-23:00)', NULL, 1500000.00, 10, NULL, '2021-08-16 08:29:19', '2021-08-16 08:29:19'),
(128, 33, 'Pagi(08:00-13:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 08:31:44', '2021-08-16 08:31:44'),
(129, 33, 'Siang(13:00-18:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 08:31:44', '2021-08-16 08:31:44'),
(130, 33, 'Malam(18:00-23:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 08:31:44', '2021-08-16 08:31:44'),
(131, 34, 'Pagi(08:00-13:00)', NULL, 950000.00, 10, NULL, '2021-08-16 08:33:42', '2021-08-16 08:33:42'),
(132, 34, 'Siang(13:00-18:00)', NULL, 950000.00, 10, NULL, '2021-08-16 08:33:42', '2021-08-16 08:33:42'),
(133, 34, 'Malam(18:00-23:00)', NULL, 950000.00, 10, NULL, '2021-08-16 08:33:42', '2021-08-16 08:33:42'),
(134, 35, 'Pagi(08:00-13:00)', NULL, 700000.00, 10, NULL, '2021-08-16 08:35:11', '2021-08-16 08:35:11'),
(135, 35, 'Siang(13:00-18:00)', NULL, 700000.00, 10, NULL, '2021-08-16 08:35:11', '2021-08-16 08:35:11'),
(136, 35, 'Malam(18:00-23:00)', NULL, 700000.00, 10, NULL, '2021-08-16 08:35:11', '2021-08-16 08:35:11'),
(137, 36, 'Pagi(08:00-13:00)', NULL, 320000.00, 10, NULL, '2021-08-16 08:36:50', '2021-08-16 08:36:50'),
(138, 36, 'Siang(13:00-18:00)', NULL, 320000.00, 10, NULL, '2021-08-16 08:36:50', '2021-08-16 08:36:50'),
(139, 36, 'Malam(18:00-23:00)', NULL, 320000.00, 10, NULL, '2021-08-16 08:36:50', '2021-08-16 08:36:50'),
(140, 37, 'Pagi(08:00-13:00)', NULL, 750000.00, 10, NULL, '2021-08-16 09:19:58', '2021-08-16 09:19:58'),
(141, 37, 'Siang(13:00-18:00)', NULL, 750000.00, 10, NULL, '2021-08-16 09:19:58', '2021-08-16 09:19:58'),
(142, 37, 'Malam(18:00-23:00)', NULL, 750000.00, 10, NULL, '2021-08-16 09:19:58', '2021-08-16 09:19:58'),
(143, 38, 'Pagi(08:00-13:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 09:22:30', '2021-08-16 09:22:30'),
(144, 38, 'Siang(13:00-18:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 09:22:30', '2021-08-16 09:22:30'),
(145, 38, 'Malam(18:00-23:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 09:22:30', '2021-08-16 09:22:30'),
(146, 39, 'Pagi(08:00-13:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 09:24:12', '2021-08-16 09:24:12'),
(147, 39, 'Siang(13:00-18:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 09:24:12', '2021-08-16 09:24:12'),
(148, 39, 'Malam(18:00-23:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 09:24:12', '2021-08-16 09:24:12'),
(149, 40, 'Pagi(08:00-13:00)', NULL, 700000.00, 10, NULL, '2021-08-16 09:25:46', '2021-08-16 09:25:46'),
(150, 40, 'Siang(13:00-18:00)', NULL, 700000.00, 10, NULL, '2021-08-16 09:25:46', '2021-08-16 09:25:46'),
(151, 40, 'Malam(18:00-23:00)', NULL, 700000.00, 10, NULL, '2021-08-16 09:25:46', '2021-08-16 09:25:46'),
(152, 41, 'Pagi(08:00-13:00)', NULL, 750000.00, 10, NULL, '2021-08-16 09:27:25', '2021-08-16 09:27:25'),
(153, 41, 'Siang(13:00-18:00)', NULL, 750000.00, 10, NULL, '2021-08-16 09:27:25', '2021-08-16 09:27:25'),
(154, 41, 'Malam(18:00-23:00)', NULL, 750000.00, 10, NULL, '2021-08-16 09:27:25', '2021-08-16 09:27:25'),
(155, 42, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-16 09:29:11', '2021-08-16 09:29:11'),
(156, 42, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-16 09:29:11', '2021-08-16 09:29:11'),
(157, 42, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-16 09:29:12', '2021-08-16 09:29:12'),
(158, 43, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-16 09:30:43', '2021-08-16 09:30:43'),
(159, 43, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-16 09:30:43', '2021-08-16 09:30:43'),
(160, 43, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-16 09:30:43', '2021-08-16 09:30:43'),
(161, 44, 'Pagi(08:00-13:00)', NULL, 740000.00, 10, NULL, '2021-08-16 09:33:25', '2021-08-16 09:33:25'),
(162, 44, 'Siang(13:00-18:00)', NULL, 740000.00, 10, NULL, '2021-08-16 09:33:25', '2021-08-16 09:33:25'),
(163, 44, 'Malam(18:00-23:00)', NULL, 740000.00, 10, NULL, '2021-08-16 09:33:25', '2021-08-16 09:33:25'),
(164, 45, 'Pagi(08:00-13:00)', NULL, 970000.00, 10, NULL, '2021-08-16 09:35:32', '2021-08-16 09:35:32'),
(165, 45, 'Siang(13:00-18:00)', NULL, 970000.00, 10, NULL, '2021-08-16 09:35:32', '2021-08-16 09:35:32'),
(166, 45, 'Malam(18:00-23:00)', NULL, 970000.00, 10, NULL, '2021-08-16 09:35:32', '2021-08-16 09:35:32'),
(167, 46, 'Pagi(08:00-13:00)', NULL, 740000.00, 10, NULL, '2021-08-16 09:36:55', '2021-08-16 09:36:55'),
(168, 46, 'Siang(13:00-18:00)', NULL, 740000.00, 10, NULL, '2021-08-16 09:36:55', '2021-08-16 09:36:55'),
(169, 46, 'Malam(18:00-23:00)', NULL, 740000.00, 10, NULL, '2021-08-16 09:36:55', '2021-08-16 09:36:55'),
(170, 47, 'Pagi(08:00-13:00)', NULL, 990000.00, 10, NULL, '2021-08-16 09:38:30', '2021-08-16 09:38:30'),
(171, 47, 'Siang(13:00-18:00)', NULL, 990000.00, 10, NULL, '2021-08-16 09:38:30', '2021-08-16 09:38:30'),
(172, 47, 'Malam(18:00-23:00)', NULL, 990000.00, 10, NULL, '2021-08-16 09:38:30', '2021-08-16 09:38:30'),
(173, 48, 'Pagi(08:00-13:00)', NULL, 610000.00, 10, NULL, '2021-08-16 09:39:54', '2021-08-16 09:39:54'),
(174, 48, 'Siang(13:00-18:00)', NULL, 610000.00, 10, NULL, '2021-08-16 09:39:54', '2021-08-16 09:39:54'),
(175, 48, 'Malam(18:00-23:00)', NULL, 610000.00, 10, NULL, '2021-08-16 09:39:54', '2021-08-16 09:39:54'),
(176, 49, 'Pagi(08:00-13:00)', NULL, 600000.00, 10, NULL, '2021-08-16 09:41:42', '2021-08-16 09:41:42'),
(177, 49, 'Siang(13:00-18:00)', NULL, 600000.00, 10, NULL, '2021-08-16 09:41:42', '2021-08-16 09:41:42'),
(178, 49, 'Malam(18:00-23:00)', NULL, 600000.00, 10, NULL, '2021-08-16 09:41:42', '2021-08-16 09:41:42'),
(179, 50, 'Pagi(08:00-13:00)', NULL, 710000.00, 10, NULL, '2021-08-16 09:43:28', '2021-08-16 09:43:28'),
(180, 50, 'Siang(13:00-18:00)', NULL, 710000.00, 10, NULL, '2021-08-16 09:43:28', '2021-08-16 09:43:28'),
(181, 50, 'Malam(18:00-23:00)', NULL, 710000.00, 10, NULL, '2021-08-16 09:43:28', '2021-08-16 09:43:28'),
(182, 51, 'Pagi(08:00-13:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 09:46:39', '2021-08-16 09:46:39'),
(183, 51, 'Siang(13:00-18:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 09:46:39', '2021-08-16 09:46:39'),
(184, 51, 'Malam(18:00-23:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 09:46:39', '2021-08-16 09:46:39'),
(185, 52, 'Pagi(08:00-13:00)', NULL, 700000.00, 10, NULL, '2021-08-16 09:48:08', '2021-08-16 09:48:08'),
(186, 52, 'Siang(13:00-18:00)', NULL, 700000.00, 10, NULL, '2021-08-16 09:48:08', '2021-08-16 09:48:08'),
(187, 52, 'Malam(18:00-23:00)', NULL, 700000.00, 10, NULL, '2021-08-16 09:48:08', '2021-08-16 09:48:08'),
(188, 53, 'Pagi(08:00-13:00)', NULL, 800000.00, 10, NULL, '2021-08-16 09:50:23', '2021-08-16 09:50:23'),
(189, 53, 'Siang(13:00-18:00)', NULL, 800000.00, 10, NULL, '2021-08-16 09:50:23', '2021-08-16 09:50:23'),
(190, 53, 'Malam(18:00-23:00)', NULL, 800000.00, 10, NULL, '2021-08-16 09:50:23', '2021-08-16 09:50:23'),
(191, 54, 'Pagi(08:00-13:00)', NULL, 800000.00, 10, NULL, '2021-08-16 09:51:51', '2021-08-16 09:51:51'),
(192, 54, 'Siang(13:00-18:00)', NULL, 800000.00, 10, NULL, '2021-08-16 09:51:51', '2021-08-16 09:51:51'),
(193, 54, 'Malam(18:00-23:00)', NULL, 800000.00, 10, NULL, '2021-08-16 09:51:51', '2021-08-16 09:51:51'),
(218, 55, 'Pagi(08:00-13:00)', NULL, 1800000.00, 10, NULL, '2021-08-16 11:08:43', '2021-08-16 11:08:43'),
(219, 55, 'Siang(13:00-18:00)', NULL, 1800000.00, 10, NULL, '2021-08-16 11:08:43', '2021-08-16 11:08:43'),
(220, 55, 'Malam(18:00-23:00)', NULL, 1800000.00, 10, NULL, '2021-08-16 11:08:43', '2021-08-16 11:08:43'),
(221, 56, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-16 11:19:07', '2021-08-16 11:19:07'),
(222, 56, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-16 11:19:07', '2021-08-16 11:19:07'),
(223, 56, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-16 11:19:07', '2021-08-16 11:19:07'),
(224, 57, 'Pagi(08:00-13:00)', NULL, 3000000.00, 10, NULL, '2021-08-16 11:21:08', '2021-08-16 11:21:08'),
(225, 57, 'Siang(13:00-18:00)', NULL, 3000000.00, 10, NULL, '2021-08-16 11:21:08', '2021-08-16 11:21:08'),
(226, 57, 'Malam(18:00-23:00)', NULL, 3000000.00, 10, NULL, '2021-08-16 11:21:08', '2021-08-16 11:21:08'),
(227, 58, 'Pagi(08:00-13:00)', NULL, 2500000.00, 10, NULL, '2021-08-16 11:33:38', '2021-08-16 11:33:38'),
(228, 58, 'Siang(13:00-18:00)', NULL, 2500000.00, 10, NULL, '2021-08-16 11:33:38', '2021-08-16 11:33:38'),
(229, 58, 'Malam(18:00-23:00)', NULL, 2500000.00, 10, NULL, '2021-08-16 11:33:38', '2021-08-16 11:33:38'),
(230, 59, 'Pagi(08:00-13:00)', NULL, 500000.00, 10, NULL, '2021-08-16 11:36:24', '2021-08-16 11:36:24'),
(231, 59, 'Siang(13:00-18:00)', NULL, 500000.00, 10, NULL, '2021-08-16 11:36:24', '2021-08-16 11:36:24'),
(232, 59, 'Malam(18:00-23:00)', NULL, 500000.00, 10, NULL, '2021-08-16 11:36:24', '2021-08-16 11:36:24'),
(233, 60, 'Pagi(08:00-13:00)', NULL, 1700000.00, 10, NULL, '2021-08-16 11:38:23', '2021-08-16 11:38:23'),
(234, 60, 'Siang(13:00-18:00)', NULL, 1700000.00, 10, NULL, '2021-08-16 11:38:23', '2021-08-16 11:38:23'),
(235, 60, 'Malam(18:00-23:00)', NULL, 1700000.00, 10, NULL, '2021-08-16 11:38:23', '2021-08-16 11:38:23'),
(236, 61, 'Pagi(08:00-13:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 11:39:52', '2021-08-16 11:39:52'),
(237, 61, 'Siang(13:00-18:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 11:39:52', '2021-08-16 11:39:52'),
(238, 61, 'Malam(18:00-23:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 11:39:52', '2021-08-16 11:39:52'),
(239, 62, 'Pagi(08:00-13:00)', NULL, 1450000.00, 10, NULL, '2021-08-16 11:41:20', '2021-08-16 11:41:20'),
(240, 62, 'Siang(13:00-18:00)', NULL, 1450000.00, 10, NULL, '2021-08-16 11:41:20', '2021-08-16 11:41:20'),
(241, 62, 'Malam(18:00-23:00)', NULL, 1450000.00, 10, NULL, '2021-08-16 11:41:20', '2021-08-16 11:41:20'),
(242, 63, 'Pagi(08:00-13:00)', NULL, 820000.00, 10, NULL, '2021-08-16 11:45:30', '2021-08-16 11:45:30'),
(243, 63, 'Siang(13:00-18:00)', NULL, 820000.00, 10, NULL, '2021-08-16 11:45:30', '2021-08-16 11:45:30'),
(244, 63, 'Malam(18:00-23:00)', NULL, 820000.00, 10, NULL, '2021-08-16 11:45:30', '2021-08-16 11:45:30'),
(245, 64, 'Pagi(08:00-13:00)', NULL, 820000.00, 10, NULL, '2021-08-16 11:49:26', '2021-08-16 11:49:26'),
(246, 64, 'Siang(13:00-18:00)', NULL, 820000.00, 10, NULL, '2021-08-16 11:49:27', '2021-08-16 11:49:27'),
(247, 64, 'Malam(18:00-23:00)', NULL, 820000.00, 10, NULL, '2021-08-16 11:49:27', '2021-08-16 11:49:27'),
(248, 65, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-16 11:51:14', '2021-08-16 11:51:14'),
(249, 65, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-16 11:51:14', '2021-08-16 11:51:14'),
(250, 65, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-16 11:51:14', '2021-08-16 11:51:14'),
(251, 66, 'Pagi(08:00-13:00)', NULL, 950000.00, 10, NULL, '2021-08-16 11:59:20', '2021-08-16 11:59:20'),
(252, 66, 'Siang(13:00-18:00)', NULL, 950000.00, 10, NULL, '2021-08-16 11:59:20', '2021-08-16 11:59:20'),
(253, 66, 'Malam(18:00-23:00)', NULL, 950000.00, 10, NULL, '2021-08-16 11:59:20', '2021-08-16 11:59:20'),
(254, 67, 'Pagi(08:00-13:00)', NULL, 750000.00, 10, NULL, '2021-08-16 12:00:48', '2021-08-16 12:00:48'),
(255, 67, 'Siang(13:00-18:00)', NULL, 750000.00, 10, NULL, '2021-08-16 12:00:48', '2021-08-16 12:00:48'),
(256, 67, 'Malam(18:00-23:00)', NULL, 750000.00, 10, NULL, '2021-08-16 12:00:49', '2021-08-16 12:00:49'),
(257, 68, 'Pagi(08:00-13:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 12:02:31', '2021-08-16 12:02:31'),
(258, 68, 'Siang(13:00-18:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 12:02:31', '2021-08-16 12:02:31'),
(259, 68, 'Malam(18:00-23:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 12:02:31', '2021-08-16 12:02:31'),
(260, 69, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-16 12:04:34', '2021-08-16 12:04:34'),
(261, 69, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-16 12:04:34', '2021-08-16 12:04:34'),
(262, 69, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-16 12:04:34', '2021-08-16 12:04:34'),
(263, 70, 'Pagi(08:00-13:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 12:09:37', '2021-08-16 12:09:37'),
(264, 70, 'Siang(13:00-18:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 12:09:37', '2021-08-16 12:09:37'),
(265, 70, 'Malam(18:00-23:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 12:09:37', '2021-08-16 12:09:37'),
(266, 71, 'Pagi(08:00-13:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 12:11:01', '2021-08-16 12:11:01'),
(267, 71, 'Siang(13:00-18:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 12:11:01', '2021-08-16 12:11:01'),
(268, 71, 'Malam(18:00-23:00)', NULL, 1000000.00, 10, NULL, '2021-08-16 12:11:01', '2021-08-16 12:11:01'),
(269, 72, 'Pagi(08:00-13:00)', NULL, 540000.00, 10, NULL, '2021-08-16 12:12:32', '2021-08-16 12:12:32'),
(270, 72, 'Siang(13:00-18:00)', NULL, 540000.00, 10, NULL, '2021-08-16 12:12:32', '2021-08-16 12:12:32'),
(271, 72, 'Malam(18:00-23:00)', NULL, 540000.00, 10, NULL, '2021-08-16 12:12:32', '2021-08-16 12:12:32'),
(272, 73, 'Pagi(08:00-13:00)', NULL, 900000.00, 10, NULL, '2021-08-16 12:14:07', '2021-08-16 12:14:07'),
(273, 73, 'Siang(13:00-18:00)', NULL, 900000.00, 10, NULL, '2021-08-16 12:14:07', '2021-08-16 12:14:07'),
(274, 73, 'Malam(18:00-23:00)', NULL, 900000.00, 10, NULL, '2021-08-16 12:14:07', '2021-08-16 12:14:07'),
(275, 74, 'Pagi(08:00-13:00)', NULL, 970000.00, 10, NULL, '2021-08-16 12:15:35', '2021-08-16 12:15:35'),
(276, 74, 'Siang(13:00-18:00)', NULL, 970000.00, 10, NULL, '2021-08-16 12:15:35', '2021-08-16 12:15:35'),
(277, 74, 'Malam(18:00-23:00)', NULL, 970000.00, 10, NULL, '2021-08-16 12:15:35', '2021-08-16 12:15:35'),
(278, 75, 'Pagi(08:00-13:00)', NULL, 740000.00, 10, NULL, '2021-08-16 12:17:04', '2021-08-16 12:17:04'),
(279, 75, 'Siang(13:00-18:00)', NULL, 740000.00, 10, NULL, '2021-08-16 12:17:04', '2021-08-16 12:17:04'),
(280, 75, 'Malam(18:00-23:00)', NULL, 740000.00, 10, NULL, '2021-08-16 12:17:04', '2021-08-16 12:17:04'),
(281, 76, 'Pagi(08:00-13:00)', NULL, 1900000.00, 10, NULL, '2021-08-16 12:19:06', '2021-08-16 12:19:06'),
(282, 76, 'Siang(13:00-18:00)', NULL, 1900000.00, 10, NULL, '2021-08-16 12:19:06', '2021-08-16 12:19:06'),
(283, 76, 'Malam(18:00-23:00)', NULL, 1900000.00, 10, NULL, '2021-08-16 12:19:06', '2021-08-16 12:19:06'),
(284, 77, 'Pagi(08:00-13:00)', NULL, 690000.00, 10, NULL, '2021-08-16 12:20:45', '2021-08-16 12:20:45'),
(285, 77, 'Siang(13:00-18:00)', NULL, 690000.00, 10, NULL, '2021-08-16 12:20:46', '2021-08-16 12:20:46'),
(286, 77, 'Malam(18:00-23:00)', NULL, 690000.00, 10, NULL, '2021-08-16 12:20:46', '2021-08-16 12:20:46'),
(287, 78, 'Pagi(08:00-13:00)', NULL, 950000.00, 10, NULL, '2021-08-16 12:22:16', '2021-08-16 12:22:16'),
(288, 78, 'Siang(13:00-18:00)', NULL, 950000.00, 10, NULL, '2021-08-16 12:22:16', '2021-08-16 12:22:16'),
(289, 78, 'Malam(18:00-23:00)', NULL, 950000.00, 10, NULL, '2021-08-16 12:22:16', '2021-08-16 12:22:16'),
(290, 79, 'Pagi(08:00-13:00)', NULL, 1450000.00, 10, NULL, '2021-08-16 12:23:53', '2021-08-16 12:23:53'),
(291, 79, 'Siang(13:00-18:00)', NULL, 1450000.00, 10, NULL, '2021-08-16 12:23:53', '2021-08-16 12:23:53'),
(292, 79, 'Malam(18:00-23:00)', NULL, 1450000.00, 10, NULL, '2021-08-16 12:23:53', '2021-08-16 12:23:53'),
(293, 80, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-16 12:25:14', '2021-08-16 12:25:14'),
(294, 80, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-16 12:25:14', '2021-08-16 12:25:14'),
(295, 80, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-16 12:25:14', '2021-08-16 12:25:14'),
(296, 81, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-16 12:26:41', '2021-08-16 12:26:41'),
(297, 81, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-16 12:26:41', '2021-08-16 12:26:41'),
(298, 81, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-16 12:26:41', '2021-08-16 12:26:41'),
(299, 82, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-16 12:28:07', '2021-08-16 12:28:07'),
(300, 82, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-16 12:28:07', '2021-08-16 12:28:07'),
(301, 82, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-16 12:28:07', '2021-08-16 12:28:07'),
(302, 83, 'Pagi(08:00-13:00)', NULL, 900000.00, 10, NULL, '2021-08-16 12:48:38', '2021-08-16 12:48:38'),
(303, 83, 'Siang(13:00-18:00)', NULL, 900000.00, 10, NULL, '2021-08-16 12:48:38', '2021-08-16 12:48:38'),
(304, 83, 'Malam(18:00-23:00)', NULL, 900000.00, 10, NULL, '2021-08-16 12:48:38', '2021-08-16 12:48:38'),
(305, 84, 'Pagi(08:00-13:00)', NULL, 950000.00, 10, NULL, '2021-08-16 12:50:56', '2021-08-16 12:50:56'),
(306, 84, 'Siang(13:00-18:00)', NULL, 950000.00, 10, NULL, '2021-08-16 12:50:56', '2021-08-16 12:50:56'),
(307, 84, 'Malam(18:00-23:00)', NULL, 950000.00, 10, NULL, '2021-08-16 12:50:56', '2021-08-16 12:50:56'),
(308, 85, 'Pagi(08:00-13:00)', NULL, 2550000.00, 10, NULL, '2021-08-16 12:53:10', '2021-08-16 12:53:10'),
(309, 85, 'Siang(13:00-18:00)', NULL, 2550000.00, 10, NULL, '2021-08-16 12:53:10', '2021-08-16 12:53:10'),
(310, 85, 'Malam(18:00-23:00)', NULL, 2550000.00, 10, NULL, '2021-08-16 12:53:10', '2021-08-16 12:53:10'),
(311, 86, 'Pagi(08:00-13:00)', NULL, 750000.00, 10, NULL, '2021-08-16 12:56:48', '2021-08-16 12:56:48'),
(312, 86, 'Siang(13:00-18:00)', NULL, 750000.00, 10, NULL, '2021-08-16 12:56:48', '2021-08-16 12:56:48'),
(313, 86, 'Malam(18:00-23:00)', NULL, 750000.00, 10, NULL, '2021-08-16 12:56:48', '2021-08-16 12:56:48'),
(314, 87, 'Pagi(08:00-13:00)', NULL, 640000.00, 10, NULL, '2021-08-16 13:01:23', '2021-08-16 13:01:23'),
(315, 87, 'Siang(13:00-18:00)', NULL, 640000.00, 10, NULL, '2021-08-16 13:01:23', '2021-08-16 13:01:23'),
(316, 87, 'Malam(18:00-23:00)', NULL, 640000.00, 10, NULL, '2021-08-16 13:01:23', '2021-08-16 13:01:23'),
(317, 88, 'Pagi(08:00-13:00)', NULL, 650000.00, 10, NULL, '2021-08-16 13:26:24', '2021-08-16 13:26:24'),
(318, 88, 'Siang(13:00-18:00)', NULL, 650000.00, 10, NULL, '2021-08-16 13:26:24', '2021-08-16 13:26:24'),
(319, 88, 'Malam(18:00-23:00)', NULL, 650000.00, 10, NULL, '2021-08-16 13:26:24', '2021-08-16 13:26:24'),
(320, 89, 'Pagi(08:00-13:00)', NULL, 660000.00, 10, NULL, '2021-08-16 13:28:06', '2021-08-16 13:28:06'),
(321, 89, 'Siang(13:00-18:00)', NULL, 660000.00, 10, NULL, '2021-08-16 13:28:06', '2021-08-16 13:28:06'),
(322, 89, 'Malam(18:00-23:00)', NULL, 660000.00, 10, NULL, '2021-08-16 13:28:06', '2021-08-16 13:28:06'),
(323, 90, 'Pagi(08:00-13:00)', NULL, 400000.00, 10, NULL, '2021-08-16 13:29:26', '2021-08-16 13:29:26'),
(324, 90, 'Siang(13:00-18:00)', NULL, 400000.00, 10, NULL, '2021-08-16 13:29:26', '2021-08-16 13:29:26'),
(325, 90, 'Malam(18:00-23:00)', NULL, 400000.00, 10, NULL, '2021-08-16 13:29:27', '2021-08-16 13:29:27'),
(326, 91, 'Pagi(08:00-13:00)', NULL, 700000.00, 10, NULL, '2021-08-16 13:30:53', '2021-08-16 13:30:53'),
(327, 91, 'Siang(13:00-18:00)', NULL, 700000.00, 10, NULL, '2021-08-16 13:30:53', '2021-08-16 13:30:53'),
(328, 91, 'Malam(18:00-23:00)', NULL, 700000.00, 10, NULL, '2021-08-16 13:30:53', '2021-08-16 13:30:53'),
(329, 92, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-16 13:32:25', '2021-08-16 13:32:25'),
(330, 92, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-16 13:32:25', '2021-08-16 13:32:25'),
(331, 92, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-16 13:32:25', '2021-08-16 13:32:25'),
(332, 93, 'Pagi(08:00-13:00)', NULL, 500000.00, 10, NULL, '2021-08-16 14:12:58', '2021-08-16 14:12:58'),
(333, 93, 'Siang(13:00-18:00)', NULL, 500000.00, 10, NULL, '2021-08-16 14:12:58', '2021-08-16 14:12:58'),
(334, 93, 'Malam(18:00-23:00)', NULL, 500000.00, 10, NULL, '2021-08-16 14:12:58', '2021-08-16 14:12:58'),
(335, 94, 'Pagi(08:00-13:00)', NULL, 500000.00, 10, NULL, '2021-08-16 14:26:36', '2021-08-16 14:26:36'),
(336, 94, 'Siang(13:00-18:00)', NULL, 500000.00, 10, NULL, '2021-08-16 14:26:36', '2021-08-16 14:26:36'),
(337, 94, 'Malam(18:00-23:00)', NULL, 500000.00, 10, NULL, '2021-08-16 14:26:36', '2021-08-16 14:26:36'),
(338, 95, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-16 14:27:43', '2021-08-16 14:27:43'),
(339, 95, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-16 14:27:43', '2021-08-16 14:27:43'),
(340, 95, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-16 14:27:43', '2021-08-16 14:27:43'),
(341, 96, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-16 14:28:34', '2021-08-16 14:28:34'),
(342, 96, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-16 14:28:34', '2021-08-16 14:28:34'),
(343, 97, 'Pagi(08:00-13:00)', NULL, 2510000.00, 10, NULL, '2021-08-16 14:31:30', '2021-08-16 14:31:30'),
(344, 97, 'Siang(13:00-18:00)', NULL, 2510000.00, 10, NULL, '2021-08-16 14:31:30', '2021-08-16 14:31:30'),
(345, 97, 'Malam(18:00-23:00)', NULL, 2510000.00, 10, NULL, '2021-08-16 14:31:30', '2021-08-16 14:31:30'),
(346, 98, 'Pagi(08:00-13:00)', NULL, 450000.00, 10, NULL, '2021-08-16 14:33:02', '2021-08-16 14:33:02'),
(347, 98, 'Siang(13:00-18:00)', NULL, 450000.00, 10, NULL, '2021-08-16 14:33:03', '2021-08-16 14:33:03'),
(348, 98, 'Malam(18:00-23:00)', NULL, 450000.00, 10, NULL, '2021-08-16 14:33:03', '2021-08-16 14:33:03'),
(349, 99, 'Pagi(08:00-13:00)', NULL, 700000.00, 10, NULL, '2021-08-16 14:34:06', '2021-08-16 14:34:06'),
(350, 99, 'Siang(13:00-18:00)', NULL, 700000.00, 10, NULL, '2021-08-16 14:34:06', '2021-08-16 14:34:06'),
(351, 99, 'Malam(18:00-23:00)', NULL, 700000.00, 10, NULL, '2021-08-16 14:34:06', '2021-08-16 14:34:06'),
(352, 100, 'Pagi(08:00-13:00)', NULL, 650000.00, 10, NULL, '2021-08-16 14:38:06', '2021-08-16 14:38:06'),
(353, 100, 'Siang(13:00-18:00)', NULL, 650000.00, 10, NULL, '2021-08-16 14:38:06', '2021-08-16 14:38:06'),
(354, 100, 'Malam(18:00-23:00)', NULL, 650000.00, 10, NULL, '2021-08-16 14:38:06', '2021-08-16 14:38:06'),
(355, 101, 'Pagi(08:00-13:00)', NULL, 500000.00, 10, NULL, '2021-08-16 14:42:36', '2021-08-16 14:42:36'),
(356, 101, 'Siang(13:00-18:00)', NULL, 500000.00, 10, NULL, '2021-08-16 14:42:36', '2021-08-16 14:42:36'),
(357, 101, 'Malam(18:00-23:00)', NULL, 500000.00, 10, NULL, '2021-08-16 14:42:36', '2021-08-16 14:42:36'),
(358, 102, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-16 14:44:15', '2021-08-16 14:44:15'),
(359, 102, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-16 14:44:15', '2021-08-16 14:44:15'),
(360, 102, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-16 14:44:15', '2021-08-16 14:44:15'),
(361, 103, 'Pagi(08:00-13:00)', NULL, 650000.00, 10, NULL, '2021-08-16 14:45:22', '2021-08-16 14:45:22'),
(362, 103, 'Siang(13:00-18:00)', NULL, 650000.00, 10, NULL, '2021-08-16 14:45:22', '2021-08-16 14:45:22'),
(363, 103, 'Malam(18:00-23:00)', NULL, 650000.00, 10, NULL, '2021-08-16 14:45:22', '2021-08-16 14:45:22'),
(364, 104, 'Pagi(08:00-13:00)', NULL, 500000.00, 10, NULL, '2021-08-16 14:46:27', '2021-08-16 14:46:27'),
(365, 104, 'Siang(13:00-18:00)', NULL, 500000.00, 10, NULL, '2021-08-16 14:46:27', '2021-08-16 14:46:27'),
(366, 104, 'Malam(18:00-23:00)', NULL, 500000.00, 10, NULL, '2021-08-16 14:46:27', '2021-08-16 14:46:27'),
(367, 105, 'Pagi(08:00-13:00)', NULL, 490000.00, 10, NULL, '2021-08-16 14:47:58', '2021-08-16 14:47:58'),
(368, 105, 'Siang(13:00-18:00)', NULL, 490000.00, 10, NULL, '2021-08-16 14:47:59', '2021-08-16 14:47:59'),
(369, 105, 'Malam(18:00-23:00)', NULL, 490000.00, 10, NULL, '2021-08-16 14:47:59', '2021-08-16 14:47:59'),
(370, 106, 'Pagi(08:00-13:00)', NULL, 1800000.00, 10, NULL, '2021-08-16 14:49:08', '2021-08-16 14:49:08'),
(371, 106, 'Siang(13:00-18:00)', NULL, 1800000.00, 10, NULL, '2021-08-16 14:49:08', '2021-08-16 14:49:08'),
(372, 106, 'Malam(18:00-23:00)', NULL, 1800000.00, 10, NULL, '2021-08-16 14:49:08', '2021-08-16 14:49:08'),
(373, 107, 'Pagi(08:00-13:00)', NULL, 650000.00, 10, NULL, '2021-08-16 14:51:02', '2021-08-16 14:51:02'),
(374, 107, 'Siang(13:00-18:00)', NULL, 650000.00, 10, NULL, '2021-08-16 14:51:02', '2021-08-16 14:51:02'),
(375, 107, 'Malam(18:00-23:00)', NULL, 650000.00, 10, NULL, '2021-08-16 14:51:02', '2021-08-16 14:51:02'),
(376, 108, 'Pagi(08:00-13:00)', NULL, 750000.00, 10, NULL, '2021-08-16 14:52:10', '2021-08-16 14:52:10'),
(377, 108, 'Siang(13:00-18:00)', NULL, 750000.00, 10, NULL, '2021-08-16 14:52:10', '2021-08-16 14:52:10'),
(378, 108, 'Malam(18:00-23:00)', NULL, 750000.00, 10, NULL, '2021-08-16 14:52:10', '2021-08-16 14:52:10'),
(381, 109, 'Pagi(08:00-13:00)', NULL, 600000.00, 10, NULL, '2021-08-16 16:21:13', '2021-08-16 16:21:13'),
(382, 109, 'Siang(13:00-18:00)', NULL, 600000.00, 10, NULL, '2021-08-16 16:21:14', '2021-08-16 16:21:14'),
(383, 109, 'Malam(18:00-23:00)', NULL, 600000.00, 10, NULL, '2021-08-16 16:21:14', '2021-08-16 16:21:14'),
(384, 110, 'Pagi(08:00-13:00)', NULL, 700000.00, 10, NULL, '2021-08-16 17:14:39', '2021-08-16 17:14:39'),
(385, 110, 'Siang(13:00-18:00)', NULL, 700000.00, 10, NULL, '2021-08-16 17:14:39', '2021-08-16 17:14:39'),
(386, 110, 'Malam(18:00-23:00)', NULL, 700000.00, 10, NULL, '2021-08-16 17:14:39', '2021-08-16 17:14:39'),
(387, 111, 'Pagi(08:00-13:00)', NULL, 3000000.00, 10, NULL, '2021-08-16 17:34:23', '2021-08-16 17:34:23'),
(388, 111, 'Siang(13:00-18:00)', NULL, 3000000.00, 10, NULL, '2021-08-16 17:34:23', '2021-08-16 17:34:23'),
(389, 111, 'Malam(18:00-23:00)', NULL, 3000000.00, 10, NULL, '2021-08-16 17:34:23', '2021-08-16 17:34:23'),
(390, 112, 'Pagi(08:00-13:00)', NULL, 860000.00, 10, NULL, '2021-08-16 17:40:54', '2021-08-16 17:40:54'),
(391, 112, 'Siang(13:00-18:00)', NULL, 860000.00, 10, NULL, '2021-08-16 17:40:54', '2021-08-16 17:40:54'),
(392, 112, 'Malam(18:00-23:00)', NULL, 860000.00, 10, NULL, '2021-08-16 17:40:54', '2021-08-16 17:40:54'),
(393, 113, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-16 17:57:22', '2021-08-16 17:57:22'),
(394, 113, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-16 17:57:22', '2021-08-16 17:57:22'),
(395, 113, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-16 17:57:22', '2021-08-16 17:57:22'),
(396, 114, 'Pagi(08:00-13:00)', NULL, 850000.00, 10, NULL, '2021-08-16 17:59:15', '2021-08-16 17:59:15'),
(397, 114, 'Siang(13:00-18:00)', NULL, 850000.00, 10, NULL, '2021-08-16 17:59:15', '2021-08-16 17:59:15'),
(398, 114, 'Malam(18:00-23:00)', NULL, 850000.00, 10, NULL, '2021-08-16 17:59:15', '2021-08-16 17:59:15'),
(399, 115, 'Pagi(08:00-13:00)', NULL, 500000.00, 10, NULL, '2021-08-16 18:00:43', '2021-08-16 18:00:43'),
(400, 115, 'Siang(13:00-18:00)', NULL, 500000.00, 10, NULL, '2021-08-16 18:00:43', '2021-08-16 18:00:43'),
(401, 115, 'Malam(18:00-23:00)', NULL, 500000.00, 10, NULL, '2021-08-16 18:00:43', '2021-08-16 18:00:43'),
(402, 116, 'Pagi(08:00-13:00)', NULL, 750000.00, 10, NULL, '2021-08-16 18:01:51', '2021-08-16 18:01:51'),
(403, 116, 'Siang(13:00-18:00)', NULL, 750000.00, 10, NULL, '2021-08-16 18:01:51', '2021-08-16 18:01:51'),
(404, 116, 'Malam(18:00-23:00)', NULL, 750000.00, 10, NULL, '2021-08-16 18:01:51', '2021-08-16 18:01:51'),
(405, 117, 'Pagi(08:00-13:00)', NULL, 1800000.00, 10, NULL, '2021-08-16 18:22:24', '2021-08-16 18:22:24'),
(406, 117, 'Siang(13:00-18:00)', NULL, 1800000.00, 10, NULL, '2021-08-16 18:22:24', '2021-08-16 18:22:24'),
(407, 117, 'Malam(18:00-23:00)', NULL, 1800000.00, 10, NULL, '2021-08-16 18:22:24', '2021-08-16 18:22:24'),
(408, 118, 'Pagi(08:00-13:00)', NULL, 1450000.00, 10, NULL, '2021-08-17 11:00:20', '2021-08-17 11:00:20'),
(409, 118, 'Siang(13:00-18:00)', NULL, 1450000.00, 10, NULL, '2021-08-17 11:00:20', '2021-08-17 11:00:20'),
(410, 118, 'Malam(18:00-23:00)', NULL, 1450000.00, 10, NULL, '2021-08-17 11:00:20', '2021-08-17 11:00:20'),
(411, 119, 'Pagi(08:00-13:00)', NULL, 750000.00, 10, NULL, '2021-08-17 11:01:35', '2021-08-17 11:01:35'),
(412, 119, 'Siang(13:00-18:00)', NULL, 750000.00, 10, NULL, '2021-08-17 11:01:35', '2021-08-17 11:01:35'),
(413, 119, 'Malam(18:00-23:00)', NULL, 750000.00, 10, NULL, '2021-08-17 11:01:35', '2021-08-17 11:01:35'),
(414, 120, 'Pagi(08:00-13:00)', NULL, 2300000.00, 10, NULL, '2021-08-17 11:04:10', '2021-08-17 11:04:10'),
(415, 120, 'Siang(13:00-18:00)', NULL, 2300000.00, 10, NULL, '2021-08-17 11:04:10', '2021-08-17 11:04:10'),
(416, 120, 'Malam(18:00-23:00)', NULL, 2300000.00, 10, NULL, '2021-08-17 11:04:10', '2021-08-17 11:04:10'),
(417, 121, 'Pagi(08:00-13:00)', NULL, 650000.00, 10, NULL, '2021-08-17 11:05:42', '2021-08-17 11:05:42'),
(418, 121, 'Siang(13:00-18:00)', NULL, 650000.00, 10, NULL, '2021-08-17 11:05:42', '2021-08-17 11:05:42'),
(419, 121, 'Malam(18:00-23:00)', NULL, 650000.00, 10, NULL, '2021-08-17 11:05:42', '2021-08-17 11:05:42'),
(420, 122, 'Pagi(08:00-13:00)', NULL, 1800000.00, 10, NULL, '2021-08-17 11:06:48', '2021-08-17 11:06:48'),
(421, 122, 'Siang(13:00-18:00)', NULL, 1800000.00, 10, NULL, '2021-08-17 11:06:48', '2021-08-17 11:06:48'),
(422, 122, 'Malam(18:00-23:00)', NULL, 1800000.00, 10, NULL, '2021-08-17 11:06:48', '2021-08-17 11:06:48'),
(423, 123, 'Pagi(08:00-13:00)', NULL, 1320000.00, 10, NULL, '2021-08-17 11:07:51', '2021-08-17 11:07:51'),
(424, 123, 'Siang(13:00-18:00)', NULL, 1320000.00, 10, NULL, '2021-08-17 11:07:51', '2021-08-17 11:07:51'),
(425, 123, 'Malam(18:00-23:00)', NULL, 1320000.00, 10, NULL, '2021-08-17 11:07:51', '2021-08-17 11:07:51'),
(426, 124, 'Pagi(08:00-13:00)', NULL, 250000.00, 10, NULL, '2021-08-17 11:14:46', '2021-08-17 11:14:46'),
(427, 124, 'Siang(13:00-18:00)', NULL, 250000.00, 10, NULL, '2021-08-17 11:14:46', '2021-08-17 11:14:46'),
(428, 124, 'Malam(18:00-23:00)', NULL, 250000.00, 10, NULL, '2021-08-17 11:14:46', '2021-08-17 11:14:46'),
(429, 125, 'Pagi(08:00-13:00)', NULL, 2150000.00, 10, NULL, '2021-08-17 11:15:55', '2021-08-17 11:15:55'),
(430, 125, 'Siang(13:00-18:00)', NULL, 2150000.00, 10, NULL, '2021-08-17 11:15:55', '2021-08-17 11:15:55'),
(431, 125, 'Malam(18:00-23:00)', NULL, 2150000.00, 10, NULL, '2021-08-17 11:15:55', '2021-08-17 11:15:55'),
(432, 126, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-17 11:16:53', '2021-08-17 11:16:53'),
(433, 126, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-17 11:16:53', '2021-08-17 11:16:53'),
(434, 126, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-17 11:16:53', '2021-08-17 11:16:53'),
(437, 127, 'Pagi(08:00-13:00)', NULL, 1200000.00, 10, NULL, '2021-08-17 11:21:50', '2021-08-17 11:21:50'),
(438, 127, 'Siang(13:00-18:00)', NULL, 1200000.00, 10, NULL, '2021-08-17 11:21:50', '2021-08-17 11:21:50'),
(439, 127, 'Malam(18:00-23:00)', NULL, 1200000.00, 10, NULL, '2021-08-17 11:21:50', '2021-08-17 11:21:50'),
(440, 128, 'Pagi(08:00-13:00)', NULL, 1000000.00, 10, NULL, '2021-08-17 11:23:06', '2021-08-17 11:23:06'),
(441, 128, 'Siang(13:00-18:00)', NULL, 1000000.00, 10, NULL, '2021-08-17 11:23:06', '2021-08-17 11:23:06'),
(442, 128, 'Malam(18:00-23:00)', NULL, 1000000.00, 10, NULL, '2021-08-17 11:23:06', '2021-08-17 11:23:06'),
(443, 129, '', NULL, 750000.00, 10, NULL, '2021-08-17 11:23:58', '2021-08-17 11:23:58'),
(444, 130, 'Pagi(08:00-13:00)', NULL, 500000.00, 10, NULL, '2021-08-17 11:26:52', '2021-08-17 11:26:52'),
(445, 130, 'Siang(13:00-18:00)', NULL, 500000.00, 10, NULL, '2021-08-17 11:26:52', '2021-08-17 11:26:52'),
(446, 130, 'Malam(18:00-23:00)', NULL, 500000.00, 10, NULL, '2021-08-17 11:26:52', '2021-08-17 11:26:52'),
(447, 131, 'Pagi(08:00-13:00)', NULL, 700000.00, 10, NULL, '2021-08-17 11:27:47', '2021-08-17 11:27:47'),
(448, 131, 'Siang(13:00-18:00)', NULL, 700000.00, 10, NULL, '2021-08-17 11:27:47', '2021-08-17 11:27:47'),
(449, 131, 'Malam(18:00-23:00)', NULL, 700000.00, 10, NULL, '2021-08-17 11:27:47', '2021-08-17 11:27:47'),
(450, 132, 'Pagi(08:00-13:00)', NULL, 850000.00, 10, NULL, '2021-08-17 11:28:55', '2021-08-17 11:28:55'),
(451, 132, 'Siang(13:00-18:00)', NULL, 850000.00, 10, NULL, '2021-08-17 11:28:55', '2021-08-17 11:28:55'),
(452, 132, 'Malam(18:00-23:00)', NULL, 850000.00, 10, NULL, '2021-08-17 11:28:55', '2021-08-17 11:28:55'),
(453, 133, 'Pagi(08:00-13:00)', NULL, 850000.00, 10, NULL, '2021-08-17 11:29:58', '2021-08-17 11:29:58'),
(454, 133, 'Siang(13:00-18:00)', NULL, 850000.00, 10, NULL, '2021-08-17 11:29:58', '2021-08-17 11:29:58'),
(455, 133, 'Malam(18:00-23:00)', NULL, 850000.00, 10, NULL, '2021-08-17 11:29:58', '2021-08-17 11:29:58'),
(456, 134, 'Pagi(08:00-13:00)', NULL, 850000.00, 10, NULL, '2021-08-17 11:31:00', '2021-08-17 11:31:00'),
(457, 134, 'Siang(13:00-18:00)', NULL, 850000.00, 10, NULL, '2021-08-17 11:31:00', '2021-08-17 11:31:00'),
(458, 134, 'Malam(18:00-23:00)', NULL, 850000.00, 10, NULL, '2021-08-17 11:31:00', '2021-08-17 11:31:00'),
(459, 135, 'Pagi(08:00-13:00)', NULL, 1700000.00, 10, NULL, '2021-08-17 11:32:23', '2021-08-17 11:32:23'),
(460, 135, 'Siang(13:00-18:00)', NULL, 1700000.00, 10, NULL, '2021-08-17 11:32:23', '2021-08-17 11:32:23'),
(461, 135, 'Malam(18:00-23:00)', NULL, 1700000.00, 10, NULL, '2021-08-17 11:32:23', '2021-08-17 11:32:23'),
(462, 136, 'Pagi(08:00-13:00)', NULL, 1500000.00, 10, NULL, '2021-08-17 11:33:23', '2021-08-17 11:33:23'),
(463, 136, 'Siang(13:00-18:00)', NULL, 1500000.00, 10, NULL, '2021-08-17 11:33:23', '2021-08-17 11:33:23'),
(464, 136, 'Malam(18:00-23:00)', NULL, 1500000.00, 10, NULL, '2021-08-17 11:33:23', '2021-08-17 11:33:23'),
(465, 137, 'Pagi(08:00-13:00)', NULL, 950000.00, 10, NULL, '2021-08-17 11:34:36', '2021-08-17 11:34:36'),
(466, 137, 'Siang(13:00-18:00)', NULL, 950000.00, 10, NULL, '2021-08-17 11:34:36', '2021-08-17 11:34:36'),
(467, 137, 'Malam(18:00-23:00)', NULL, 950000.00, 10, NULL, '2021-08-17 11:34:36', '2021-08-17 11:34:36'),
(468, 138, 'Pagi(08:00-13:00)', NULL, 700000.00, 10, NULL, '2021-08-17 11:36:04', '2021-08-17 11:36:04'),
(469, 138, 'Siang(13:00-18:00)', NULL, 700000.00, 10, NULL, '2021-08-17 11:36:04', '2021-08-17 11:36:04'),
(470, 138, 'Malam(18:00-23:00)', NULL, 700000.00, 10, NULL, '2021-08-17 11:36:04', '2021-08-17 11:36:04'),
(471, 139, 'Pagi(08:00-13:00)', NULL, 1000000.00, 10, NULL, '2021-08-17 11:37:05', '2021-08-17 11:37:05'),
(472, 139, 'Siang(13:00-18:00)', NULL, 1000000.00, 10, NULL, '2021-08-17 11:37:05', '2021-08-17 11:37:05'),
(473, 139, 'Malam(18:00-23:00)', NULL, 1000000.00, 10, NULL, '2021-08-17 11:37:05', '2021-08-17 11:37:05'),
(474, 140, 'Pagi(08:00-13:00)', NULL, 1050000.00, 10, NULL, '2021-08-17 11:38:16', '2021-08-17 11:38:16'),
(475, 140, 'Siang(13:00-18:00)', NULL, 1050000.00, 10, NULL, '2021-08-17 11:38:16', '2021-08-17 11:38:16'),
(476, 140, 'Malam(18:00-23:00)', NULL, 1050000.00, 10, NULL, '2021-08-17 11:38:16', '2021-08-17 11:38:16'),
(477, 141, 'Pagi(08:00-13:00)', NULL, 750000.00, 10, NULL, '2021-08-17 11:39:19', '2021-08-17 11:39:19'),
(478, 141, 'Siang(13:00-18:00)', NULL, 750000.00, 10, NULL, '2021-08-17 11:39:19', '2021-08-17 11:39:19'),
(479, 141, 'Malam(18:00-23:00)', NULL, 750000.00, 10, NULL, '2021-08-17 11:39:19', '2021-08-17 11:39:19'),
(480, 142, 'Pagi(08:00-13:00)', NULL, 650000.00, 10, NULL, '2021-08-17 11:40:40', '2021-08-17 11:40:40'),
(481, 142, 'Siang(13:00-18:00)', NULL, 650000.00, 10, NULL, '2021-08-17 11:40:40', '2021-08-17 11:40:40'),
(482, 142, 'Malam(18:00-23:00)', NULL, 650000.00, 10, NULL, '2021-08-17 11:40:40', '2021-08-17 11:40:40'),
(483, 143, 'Pagi(08:00-13:00)', NULL, 950000.00, 10, NULL, '2021-08-17 11:41:40', '2021-08-17 11:41:40'),
(484, 143, 'Siang(13:00-18:00)', NULL, 950000.00, 10, NULL, '2021-08-17 11:41:41', '2021-08-17 11:41:41'),
(485, 143, 'Malam(18:00-23:00)', NULL, 950000.00, 10, NULL, '2021-08-17 11:41:41', '2021-08-17 11:41:41'),
(486, 144, 'Pagi(08:00-13:00)', NULL, 1800000.00, 10, NULL, '2021-08-17 11:42:42', '2021-08-17 11:42:42'),
(487, 144, 'Siang(13:00-18:00)', NULL, 1800000.00, 10, NULL, '2021-08-17 11:42:42', '2021-08-17 11:42:42'),
(488, 144, 'Malam(18:00-23:00)', NULL, 1800000.00, 10, NULL, '2021-08-17 11:42:42', '2021-08-17 11:42:42'),
(489, 145, 'Pagi(08:00-13:00)', NULL, 1500000.00, 10, NULL, '2021-08-17 11:44:05', '2021-08-17 11:44:05'),
(490, 145, 'Siang(13:00-18:00)', NULL, 1500000.00, 10, NULL, '2021-08-17 11:44:05', '2021-08-17 11:44:05'),
(491, 145, 'Malam(18:00-23:00)', NULL, 1500000.00, 10, NULL, '2021-08-17 11:44:05', '2021-08-17 11:44:05'),
(492, 146, 'Pagi(08:00-13:00)', NULL, 890000.00, 10, NULL, '2021-08-17 11:45:13', '2021-08-17 11:45:13'),
(493, 146, 'Siang(13:00-18:00)', NULL, 890000.00, 10, NULL, '2021-08-17 11:45:13', '2021-08-17 11:45:13'),
(494, 146, 'Malam(18:00-23:00)', NULL, 890000.00, 10, NULL, '2021-08-17 11:45:13', '2021-08-17 11:45:13'),
(495, 147, 'Pagi(08:00-13:00)', NULL, 650000.00, 10, NULL, '2021-08-17 11:47:48', '2021-08-17 11:47:48'),
(496, 147, 'Siang(13:00-18:00)', NULL, 650000.00, 10, NULL, '2021-08-17 11:47:48', '2021-08-17 11:47:48'),
(497, 147, 'Malam(18:00-23:00)', NULL, 650000.00, 10, NULL, '2021-08-17 11:47:48', '2021-08-17 11:47:48'),
(498, 148, 'Pagi(08:00-13:00)', NULL, 2000000.00, 10, NULL, '2021-08-17 11:48:45', '2021-08-17 11:48:45'),
(499, 148, 'Siang(13:00-18:00)', NULL, 2000000.00, 10, NULL, '2021-08-17 11:48:45', '2021-08-17 11:48:45'),
(500, 148, 'Malam(18:00-23:00)', NULL, 2000000.00, 10, NULL, '2021-08-17 11:48:45', '2021-08-17 11:48:45'),
(501, 149, 'Pagi(08:00-13:00)', NULL, 500000.00, 10, NULL, '2021-08-17 11:49:55', '2021-08-17 11:49:55'),
(502, 149, 'Siang(13:00-18:00)', NULL, 500000.00, 10, NULL, '2021-08-17 11:49:55', '2021-08-17 11:49:55'),
(503, 149, 'Malam(18:00-23:00)', NULL, 500000.00, 10, NULL, '2021-08-17 11:49:55', '2021-08-17 11:49:55'),
(504, 150, 'Pagi(08:00-13:00)', NULL, 600000.00, 10, NULL, '2021-08-17 11:52:20', '2021-08-17 11:52:20'),
(505, 150, 'Siang(13:00-18:00)', NULL, 600000.00, 10, NULL, '2021-08-17 11:52:20', '2021-08-17 11:52:20'),
(506, 150, 'Malam(18:00-23:00)', NULL, 600000.00, 10, NULL, '2021-08-17 11:52:20', '2021-08-17 11:52:20'),
(507, 151, 'Pagi(08:00-13:00)', NULL, 650000.00, 10, NULL, '2021-08-17 11:53:19', '2021-08-17 11:53:19'),
(508, 151, 'Siang(13:00-18:00)', NULL, 650000.00, 10, NULL, '2021-08-17 11:53:19', '2021-08-17 11:53:19'),
(509, 151, 'Malam(18:00-23:00)', NULL, 650000.00, 10, NULL, '2021-08-17 11:53:19', '2021-08-17 11:53:19'),
(510, 152, 'Pagi(08:00-13:00)', NULL, 650000.00, 10, NULL, '2021-08-17 11:54:16', '2021-08-17 11:54:16'),
(511, 152, 'Siang(13:00-18:00)', NULL, 650000.00, 10, NULL, '2021-08-17 11:54:16', '2021-08-17 11:54:16'),
(512, 152, 'Malam(18:00-23:00)', NULL, 650000.00, 10, NULL, '2021-08-17 11:54:16', '2021-08-17 11:54:16'),
(513, 153, 'Pagi(08:00-13:00)', NULL, 1000000.00, 10, NULL, '2021-08-17 11:55:26', '2021-08-17 11:55:26'),
(514, 153, 'Siang(13:00-18:00)', NULL, 1000000.00, 10, NULL, '2021-08-17 11:55:26', '2021-08-17 11:55:26'),
(515, 153, 'Malam(18:00-23:00)', NULL, 1000000.00, 10, NULL, '2021-08-17 11:55:26', '2021-08-17 11:55:26'),
(516, 154, 'Pagi(08:00-13:00)', NULL, 630000.00, 10, NULL, '2021-08-17 11:58:10', '2021-08-17 11:58:10'),
(517, 154, 'Siang(13:00-18:00)', NULL, 630000.00, 10, NULL, '2021-08-17 11:58:10', '2021-08-17 11:58:10'),
(518, 154, 'Malam(18:00-23:00)', NULL, 630000.00, 10, NULL, '2021-08-17 11:58:10', '2021-08-17 11:58:10'),
(519, 155, 'Pagi(08:00-13:00)', NULL, 750000.00, 10, NULL, '2021-08-17 11:59:36', '2021-08-17 11:59:36'),
(520, 155, 'Siang(13:00-18:00)', NULL, 750000.00, 10, NULL, '2021-08-17 11:59:36', '2021-08-17 11:59:36'),
(521, 155, 'Malam(18:00-23:00)', NULL, 750000.00, 10, NULL, '2021-08-17 11:59:36', '2021-08-17 11:59:36'),
(522, 156, 'Pagi(08:00-13:00)', NULL, 650000.00, 10, NULL, '2021-08-17 12:00:29', '2021-08-17 12:00:29'),
(523, 156, 'Siang(13:00-18:00)', NULL, 650000.00, 10, NULL, '2021-08-17 12:00:29', '2021-08-17 12:00:29'),
(524, 156, 'Malam(18:00-23:00)', NULL, 650000.00, 10, NULL, '2021-08-17 12:00:29', '2021-08-17 12:00:29'),
(525, 157, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-17 12:02:10', '2021-08-17 12:02:10'),
(526, 157, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-17 12:02:10', '2021-08-17 12:02:10'),
(527, 157, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-17 12:02:11', '2021-08-17 12:02:11'),
(528, 158, 'Pagi(08:00-13:00)', NULL, 700000.00, 10, NULL, '2021-08-17 12:08:42', '2021-08-17 12:08:42'),
(529, 158, 'Siang(13:00-18:00)', NULL, 700000.00, 10, NULL, '2021-08-17 12:08:42', '2021-08-17 12:08:42'),
(530, 158, 'Malam(18:00-23:00)', NULL, 700000.00, 10, NULL, '2021-08-17 12:08:42', '2021-08-17 12:08:42'),
(531, 159, 'Pagi(08:00-13:00)', NULL, 650000.00, 10, NULL, '2021-08-17 12:09:50', '2021-08-17 12:09:50'),
(532, 159, 'Siang(13:00-18:00)', NULL, 650000.00, 10, NULL, '2021-08-17 12:09:50', '2021-08-17 12:09:50'),
(533, 159, 'Malam(18:00-23:00)', NULL, 650000.00, 10, NULL, '2021-08-17 12:09:50', '2021-08-17 12:09:50'),
(534, 160, 'Pagi(08:00-13:00)', NULL, 870000.00, 10, NULL, '2021-08-17 12:15:28', '2021-08-17 12:15:28'),
(535, 160, 'Siang(13:00-18:00)', NULL, 870000.00, 10, NULL, '2021-08-17 12:15:28', '2021-08-17 12:15:28'),
(536, 160, 'Malam(18:00-23:00)', NULL, 870000.00, 10, NULL, '2021-08-17 12:15:28', '2021-08-17 12:15:28'),
(537, 161, 'Pagi(08:00-13:00)', NULL, 1500000.00, 10, NULL, '2021-08-17 12:16:21', '2021-08-17 12:16:21');
INSERT INTO `product_stocks` (`id`, `product_id`, `variant`, `sku`, `price`, `qty`, `image`, `created_at`, `updated_at`) VALUES
(538, 161, 'Siang(13:00-18:00)', NULL, 1500000.00, 10, NULL, '2021-08-17 12:16:21', '2021-08-17 12:16:21'),
(539, 161, 'Malam(18:00-23:00)', NULL, 1500000.00, 10, NULL, '2021-08-17 12:16:21', '2021-08-17 12:16:21'),
(540, 162, 'Pagi(08:00-13:00)', NULL, 1700000.00, 10, NULL, '2021-08-17 12:17:13', '2021-08-17 12:17:13'),
(541, 162, 'Siang(13:00-18:00)', NULL, 1700000.00, 10, NULL, '2021-08-17 12:17:13', '2021-08-17 12:17:13'),
(542, 162, 'Malam(18:00-23:00)', NULL, 1700000.00, 10, NULL, '2021-08-17 12:17:13', '2021-08-17 12:17:13'),
(543, 163, 'Pagi(08:00-13:00)', NULL, 1700000.00, 10, NULL, '2021-08-17 12:18:08', '2021-08-17 12:18:08'),
(544, 163, 'Siang(13:00-18:00)', NULL, 1700000.00, 10, NULL, '2021-08-17 12:18:08', '2021-08-17 12:18:08'),
(545, 163, 'Malam(18:00-23:00)', NULL, 1700000.00, 10, NULL, '2021-08-17 12:18:08', '2021-08-17 12:18:08'),
(546, 164, 'Pagi(08:00-13:00)', NULL, 750000.00, 10, NULL, '2021-08-17 12:19:36', '2021-08-17 12:19:36'),
(547, 164, 'Siang(13:00-18:00)', NULL, 750000.00, 10, NULL, '2021-08-17 12:19:37', '2021-08-17 12:19:37'),
(548, 164, 'Malam(18:00-23:00)', NULL, 750000.00, 10, NULL, '2021-08-17 12:19:37', '2021-08-17 12:19:37'),
(549, 165, 'Pagi(08:00-13:00)', NULL, 750000.00, 10, NULL, '2021-08-17 12:20:37', '2021-08-17 12:20:37'),
(550, 165, 'Siang(13:00-18:00)', NULL, 750000.00, 10, NULL, '2021-08-17 12:20:37', '2021-08-17 12:20:37'),
(551, 165, 'Malam(18:00-23:00)', NULL, 750000.00, 10, NULL, '2021-08-17 12:20:37', '2021-08-17 12:20:37'),
(552, 166, 'Pagi(08:00-13:00)', NULL, 650000.00, 10, NULL, '2021-08-17 12:21:42', '2021-08-17 12:21:42'),
(553, 166, 'Siang(13:00-18:00)', NULL, 650000.00, 10, NULL, '2021-08-17 12:21:42', '2021-08-17 12:21:42'),
(554, 166, 'Malam(18:00-23:00)', NULL, 650000.00, 10, NULL, '2021-08-17 12:21:42', '2021-08-17 12:21:42'),
(555, 167, 'Pagi(08:00-13:00)', NULL, 800000.00, 10, NULL, '2021-08-17 12:22:37', '2021-08-17 12:22:37'),
(556, 167, 'Siang(13:00-18:00)', NULL, 800000.00, 10, NULL, '2021-08-17 12:22:37', '2021-08-17 12:22:37'),
(557, 167, 'Malam(18:00-23:00)', NULL, 800000.00, 10, NULL, '2021-08-17 12:22:37', '2021-08-17 12:22:37'),
(558, 168, 'Pagi(08:00-13:00)', NULL, 800000.00, 10, NULL, '2021-08-17 12:23:49', '2021-08-17 12:23:49'),
(559, 168, 'Siang(13:00-18:00)', NULL, 800000.00, 10, NULL, '2021-08-17 12:23:49', '2021-08-17 12:23:49'),
(560, 168, 'Malam(18:00-23:00)', NULL, 800000.00, 10, NULL, '2021-08-17 12:23:49', '2021-08-17 12:23:49'),
(564, 171, 'Pagi(08:00-13:00)', NULL, 800000.00, 10, NULL, '2021-08-17 12:27:05', '2021-08-17 12:27:05'),
(565, 171, 'Siang(13:00-18:00)', NULL, 800000.00, 10, NULL, '2021-08-17 12:27:05', '2021-08-17 12:27:05'),
(566, 171, 'Malam(18:00-23:00)', NULL, 800000.00, 10, NULL, '2021-08-17 12:27:05', '2021-08-17 12:27:05'),
(567, 172, 'Pagi(08:00-13:00)', NULL, 1000000.00, 10, NULL, '2021-08-17 12:28:33', '2021-08-17 12:28:33'),
(568, 172, 'Siang(13:00-18:00)', NULL, 1000000.00, 10, NULL, '2021-08-17 12:28:33', '2021-08-17 12:28:33'),
(569, 172, 'Malam(18:00-23:00)', NULL, 1000000.00, 10, NULL, '2021-08-17 12:28:33', '2021-08-17 12:28:33'),
(570, 173, 'Pagi(08:00-13:00)', NULL, 800000.00, 10, NULL, '2021-08-17 12:29:37', '2021-08-17 12:29:37'),
(571, 173, 'Siang(13:00-18:00)', NULL, 800000.00, 10, NULL, '2021-08-17 12:29:37', '2021-08-17 12:29:37'),
(572, 173, 'Malam(18:00-23:00)', NULL, 800000.00, 10, NULL, '2021-08-17 12:29:37', '2021-08-17 12:29:37'),
(573, 174, 'Pagi(08:00-13:00)', NULL, 990000.00, 10, NULL, '2021-08-17 12:30:32', '2021-08-17 12:30:32'),
(574, 174, 'Siang(13:00-18:00)', NULL, 990000.00, 10, NULL, '2021-08-17 12:30:32', '2021-08-17 12:30:32'),
(575, 174, 'Malam(18:00-23:00)', NULL, 990000.00, 10, NULL, '2021-08-17 12:30:32', '2021-08-17 12:30:32'),
(576, 175, 'Pagi(08:00-13:00)', NULL, 720000.00, 10, NULL, '2021-08-17 12:31:23', '2021-08-17 12:31:23'),
(577, 175, 'Siang(13:00-18:00)', NULL, 720000.00, 10, NULL, '2021-08-17 12:31:23', '2021-08-17 12:31:23'),
(578, 175, 'Malam(18:00-23:00)', NULL, 720000.00, 10, NULL, '2021-08-17 12:31:23', '2021-08-17 12:31:23'),
(579, 170, 'Pagi(08:00-13:00)', 'Pagi(08:00-13:00)', 1000000.00, 10, NULL, '2021-08-17 12:34:06', '2021-08-17 12:34:06'),
(580, 170, 'Siang(13:00-18:00)', 'Siang(13:00-18:00)', 1000000.00, 10, NULL, '2021-08-17 12:34:06', '2021-08-17 12:34:06'),
(581, 170, 'Malam(18:00-23:00)', 'Malam(18:00-23:00)', 1000000.00, 10, NULL, '2021-08-17 12:34:06', '2021-08-17 12:34:06'),
(582, 169, 'Pagi(08:00-13:00)', NULL, 620000.00, 10, NULL, '2021-08-17 12:36:03', '2021-08-17 12:36:03'),
(583, 169, 'Siang(13:00-18:00)', NULL, 620000.00, 10, NULL, '2021-08-17 12:36:03', '2021-08-17 12:36:03'),
(584, 169, 'Malam(18:00-23:00)', NULL, 620000.00, 10, NULL, '2021-08-17 12:36:03', '2021-08-17 12:36:03'),
(585, 176, 'Pagi(08:00-13:00)', NULL, 1150000.00, 10, NULL, '2021-08-18 07:38:59', '2021-08-18 07:38:59'),
(586, 176, 'Siang(13:00-18:00)', NULL, 1150000.00, 10, NULL, '2021-08-18 07:38:59', '2021-08-18 07:38:59'),
(587, 176, 'Malam(18:00-23:00)', NULL, 1150000.00, 10, NULL, '2021-08-18 07:38:59', '2021-08-18 07:38:59'),
(588, 177, 'Pagi(08:00-13:00)', NULL, 1200000.00, 10, NULL, '2021-08-18 07:40:00', '2021-08-18 07:40:00'),
(589, 177, 'Siang(13:00-18:00)', NULL, 1200000.00, 10, NULL, '2021-08-18 07:40:00', '2021-08-18 07:40:00'),
(590, 177, 'Malam(18:00-23:00)', NULL, 1200000.00, 10, NULL, '2021-08-18 07:40:00', '2021-08-18 07:40:00'),
(591, 178, 'Pagi(08:00-13:00)', NULL, 500000.00, 10, NULL, '2021-08-18 07:42:55', '2021-08-18 07:42:55'),
(592, 178, 'Siang(13:00-18:00)', NULL, 500000.00, 10, NULL, '2021-08-18 07:42:55', '2021-08-18 07:42:55'),
(593, 178, 'Malam(18:00-23:00)', NULL, 500000.00, 10, NULL, '2021-08-18 07:42:55', '2021-08-18 07:42:55'),
(594, 179, 'Pagi(08:00-13:00)', NULL, 850000.00, 10, NULL, '2021-08-18 07:48:13', '2021-08-18 07:48:13'),
(595, 179, 'Siang(13:00-18:00)', NULL, 850000.00, 10, NULL, '2021-08-18 07:48:13', '2021-08-18 07:48:13'),
(596, 179, 'Malam(18:00-23:00)', NULL, 850000.00, 10, NULL, '2021-08-18 07:48:13', '2021-08-18 07:48:13'),
(597, 180, 'Pagi(08:00-13:00)', NULL, 550000.00, 10, NULL, '2021-08-18 07:53:45', '2021-08-18 07:53:45'),
(598, 180, 'Siang(13:00-18:00)', NULL, 550000.00, 10, NULL, '2021-08-18 07:53:45', '2021-08-18 07:53:45'),
(599, 180, 'Malam(18:00-23:00)', NULL, 550000.00, 10, NULL, '2021-08-18 07:53:45', '2021-08-18 07:53:45'),
(601, 181, 'Pagi(08:00-13:00)', 'Pagi(08:00-13:00)', 950000.00, 10, NULL, '2021-08-18 08:11:32', '2021-08-18 08:11:32'),
(602, 181, 'Siang(13:00-18:00)', 'Siang(13:00-18:00)', 950000.00, 10, NULL, '2021-08-18 08:11:33', '2021-08-18 08:11:33'),
(603, 181, 'Malam(18:00-23:00)', 'Malam(18:00-23:00)', 950000.00, 10, NULL, '2021-08-18 08:11:33', '2021-08-18 08:11:33'),
(604, 182, 'Pagi(08:00-13:00)', NULL, 1100000.00, 10, NULL, '2021-08-18 08:19:37', '2021-08-18 08:19:37'),
(605, 182, 'Siang(13:00-18:00)', NULL, 1100000.00, 10, NULL, '2021-08-18 08:19:37', '2021-08-18 08:19:37'),
(606, 182, 'Malam(18:00-23:00)', NULL, 1100000.00, 10, NULL, '2021-08-18 08:19:37', '2021-08-18 08:19:37'),
(607, 183, 'Pagi(08:00-13:00)', NULL, 870000.00, 10, NULL, '2021-08-18 08:20:49', '2021-08-18 08:20:49'),
(608, 183, 'Siang(13:00-18:00)', NULL, 870000.00, 10, NULL, '2021-08-18 08:20:49', '2021-08-18 08:20:49'),
(609, 183, 'Malam(18:00-23:00)', NULL, 870000.00, 10, NULL, '2021-08-18 08:20:49', '2021-08-18 08:20:49'),
(610, 184, 'Pagi(08:00-13:00)', NULL, 600000.00, 10, NULL, '2021-08-18 08:30:49', '2021-08-18 08:30:49'),
(611, 184, 'Siang(13:00-18:00)', NULL, 600000.00, 10, NULL, '2021-08-18 08:30:49', '2021-08-18 08:30:49'),
(612, 184, 'Malam(18:00-23:00)', NULL, 600000.00, 10, NULL, '2021-08-18 08:30:49', '2021-08-18 08:30:49'),
(613, 185, 'Pagi(08:00-13:00)', NULL, 920000.00, 10, NULL, '2021-08-18 08:33:00', '2021-08-18 08:33:00'),
(614, 185, 'Siang(13:00-18:00)', NULL, 920000.00, 10, NULL, '2021-08-18 08:33:00', '2021-08-18 08:33:00'),
(615, 185, 'Malam(18:00-23:00)', NULL, 920000.00, 10, NULL, '2021-08-18 08:33:00', '2021-08-18 08:33:00'),
(616, 186, 'Pagi(08:00-13:00)', NULL, 850000.00, 10, NULL, '2021-08-18 08:34:15', '2021-08-18 08:34:15'),
(617, 186, 'Siang(13:00-18:00)', NULL, 850000.00, 10, NULL, '2021-08-18 08:34:16', '2021-08-18 08:34:16'),
(618, 186, 'Malam(18:00-23:00)', NULL, 850000.00, 10, NULL, '2021-08-18 08:34:16', '2021-08-18 08:34:16'),
(619, 187, 'Pagi(08:00-13:00)', NULL, 1000000.00, 10, NULL, '2021-08-18 08:35:32', '2021-08-18 08:35:32'),
(620, 187, 'Siang(13:00-18:00)', NULL, 1000000.00, 10, NULL, '2021-08-18 08:35:32', '2021-08-18 08:35:32'),
(621, 187, 'Malam(18:00-23:00)', NULL, 1000000.00, 10, NULL, '2021-08-18 08:35:32', '2021-08-18 08:35:32'),
(628, 190, '', NULL, 800000.00, 10, NULL, '2021-08-18 08:50:09', '2021-08-18 08:50:09'),
(630, 189, '', NULL, 820000.00, 10, NULL, '2021-08-18 08:52:56', '2021-08-18 08:52:56'),
(631, 188, '', NULL, 600000.00, 10, NULL, '2021-08-18 08:56:55', '2021-08-18 08:56:55'),
(632, 191, '', NULL, 1000000.00, 10, NULL, '2021-08-18 09:01:50', '2021-08-18 09:01:50'),
(633, 192, '', NULL, 940000.00, 10, NULL, '2021-08-18 09:02:42', '2021-08-18 09:02:42'),
(634, 193, '', NULL, 900000.00, 10, NULL, '2021-08-18 09:03:59', '2021-08-18 09:03:59'),
(641, 196, '', NULL, 550000.00, 10, NULL, '2021-08-18 09:15:19', '2021-08-18 09:15:19'),
(648, 199, '', NULL, 750000.00, 10, NULL, '2021-08-18 09:26:23', '2021-08-18 09:26:23'),
(649, 200, '', NULL, 800000.00, 10, NULL, '2021-08-18 09:27:20', '2021-08-18 09:27:20'),
(651, 198, '', NULL, 710000.00, 10, NULL, '2021-08-18 09:36:41', '2021-08-18 09:36:41'),
(652, 197, '', NULL, 820000.00, 10, NULL, '2021-08-18 09:38:07', '2021-08-18 09:38:07'),
(654, 195, '', NULL, 800000.00, 10, NULL, '2021-08-18 09:43:35', '2021-08-18 09:43:35'),
(655, 194, '', NULL, 800000.00, 10, NULL, '2021-08-18 09:44:47', '2021-08-18 09:44:47'),
(656, 201, '', NULL, 820000.00, 10, NULL, '2021-08-18 09:47:12', '2021-08-18 09:47:12'),
(657, 202, '', NULL, 800000.00, 10, NULL, '2021-08-18 09:51:20', '2021-08-18 09:51:20'),
(658, 203, '', NULL, 700000.00, 10, NULL, '2021-08-18 09:52:23', '2021-08-18 09:52:23'),
(659, 204, '', NULL, 700000.00, 10, NULL, '2021-08-18 09:53:57', '2021-08-18 09:53:57'),
(660, 205, '', NULL, 800000.00, 10, NULL, '2021-08-18 09:54:54', '2021-08-18 09:54:54'),
(661, 206, '', NULL, 1200000.00, 10, NULL, '2021-08-18 09:55:44', '2021-08-18 09:55:44'),
(662, 207, '', NULL, 1050000.00, 10, NULL, '2021-08-18 10:02:33', '2021-08-18 10:02:33'),
(663, 208, '', NULL, 1350000.00, 10, NULL, '2021-08-18 10:04:23', '2021-08-18 10:04:23'),
(664, 209, '', NULL, 1350000.00, 10, NULL, '2021-08-18 10:05:20', '2021-08-18 10:05:20'),
(665, 210, '', NULL, 1000000.00, 10, NULL, '2021-08-18 10:06:24', '2021-08-18 10:06:24'),
(667, 211, '', NULL, 950000.00, 10, NULL, '2021-08-18 10:18:34', '2021-08-18 10:18:34'),
(668, 212, '', NULL, 1000000.00, 10, NULL, '2021-08-18 10:22:48', '2021-08-18 10:22:48'),
(669, 213, '', NULL, 1000000.00, 10, NULL, '2021-08-18 10:24:06', '2021-08-18 10:24:06'),
(670, 214, '', NULL, 1050000.00, 10, NULL, '2021-08-18 10:25:04', '2021-08-18 10:25:04'),
(671, 215, '', NULL, 950000.00, 10, NULL, '2021-08-18 10:26:31', '2021-08-18 10:26:31'),
(672, 216, '', NULL, 1000000.00, 10, NULL, '2021-08-18 10:40:14', '2021-08-18 10:40:14'),
(673, 217, '', NULL, 850000.00, 10, NULL, '2021-08-18 10:43:22', '2021-08-18 10:43:22'),
(674, 218, '', NULL, 1500000.00, 10, NULL, '2021-08-18 10:45:48', '2021-08-18 10:45:48'),
(675, 219, '', NULL, 950000.00, 10, NULL, '2021-08-18 10:46:55', '2021-08-18 10:46:55'),
(676, 220, '', NULL, 650000.00, 10, NULL, '2021-08-18 10:49:24', '2021-08-18 10:49:24'),
(677, 221, '', NULL, 1000000.00, 10, NULL, '2021-08-18 10:50:18', '2021-08-18 10:50:18'),
(678, 222, '', NULL, 900000.00, 10, NULL, '2021-08-18 10:52:17', '2021-08-18 10:52:17'),
(679, 223, '', NULL, 500000.00, 10, NULL, '2021-08-18 11:09:19', '2021-08-18 11:09:19'),
(680, 224, '', NULL, 600000.00, 10, NULL, '2021-08-18 11:10:11', '2021-08-18 11:10:11'),
(681, 225, '', NULL, 700000.00, 10, NULL, '2021-08-18 11:11:28', '2021-08-18 11:11:28'),
(682, 226, '', NULL, 550000.00, 10, NULL, '2021-08-18 11:12:36', '2021-08-18 11:12:36'),
(683, 227, '', NULL, 1000000.00, 10, NULL, '2021-08-18 11:13:30', '2021-08-18 11:13:30'),
(684, 228, '', NULL, 1000000.00, 10, NULL, '2021-08-18 11:14:21', '2021-08-18 11:14:21'),
(685, 229, '', NULL, 1500000.00, 10, NULL, '2021-08-18 11:15:07', '2021-08-18 11:15:07'),
(686, 230, '', NULL, 1300000.00, 10, NULL, '2021-08-18 11:15:53', '2021-08-18 11:15:53'),
(687, 231, '', NULL, 850000.00, 10, NULL, '2021-08-18 11:16:49', '2021-08-18 11:16:49'),
(688, 232, '', NULL, 600000.00, 10, NULL, '2021-08-18 11:17:56', '2021-08-18 11:17:56'),
(689, 233, '', NULL, 600000.00, 10, NULL, '2021-08-18 11:18:48', '2021-08-18 11:18:48'),
(690, 234, '', NULL, 1000000.00, 10, NULL, '2021-08-18 11:19:52', '2021-08-18 11:19:52'),
(691, 235, '', NULL, 650000.00, 10, NULL, '2021-08-18 11:20:43', '2021-08-18 11:20:43'),
(692, 236, '', NULL, 700000.00, 10, NULL, '2021-08-18 11:22:26', '2021-08-18 11:22:26'),
(703, 247, '', NULL, 950000.00, 10, NULL, '2021-08-18 11:39:49', '2021-08-18 11:39:49'),
(704, 248, '', NULL, 950000.00, 10, NULL, '2021-08-18 11:45:03', '2021-08-18 11:45:03'),
(705, 249, '', NULL, 1100000.00, 10, NULL, '2021-08-18 11:46:49', '2021-08-18 11:46:49'),
(706, 250, '', NULL, 400000.00, 10, NULL, '2021-08-18 11:48:00', '2021-08-18 11:48:00'),
(708, 238, '', NULL, 800000.00, 10, NULL, '2021-08-18 11:55:07', '2021-08-18 11:55:07'),
(709, 239, '', NULL, 1000000.00, 10, NULL, '2021-08-18 11:56:55', '2021-08-18 11:56:55'),
(710, 240, '', NULL, 1000000.00, 10, NULL, '2021-08-18 11:59:12', '2021-08-18 11:59:12'),
(711, 241, '', NULL, 1200000.00, 10, NULL, '2021-08-18 12:00:52', '2021-08-18 12:00:52'),
(712, 242, '', NULL, 1200000.00, 10, NULL, '2021-08-18 12:02:53', '2021-08-18 12:02:53'),
(713, 243, '', NULL, 1200000.00, 10, NULL, '2021-08-18 12:04:59', '2021-08-18 12:04:59'),
(714, 244, '', NULL, 1200000.00, 10, NULL, '2021-08-18 12:06:57', '2021-08-18 12:06:57'),
(716, 245, '', NULL, 1200000.00, 10, NULL, '2021-08-18 12:16:52', '2021-08-18 12:16:52'),
(717, 246, '', NULL, 1000000.00, 10, NULL, '2021-08-18 12:18:43', '2021-08-18 12:18:43'),
(718, 237, '', NULL, 1000000.00, 10, NULL, '2021-08-18 12:20:58', '2021-08-18 12:20:58'),
(719, 251, '', NULL, 400000.00, 10, NULL, '2021-08-18 12:47:23', '2021-08-18 12:47:23'),
(720, 252, '', NULL, 400000.00, 10, NULL, '2021-08-18 13:01:30', '2021-08-18 13:01:30'),
(721, 253, '', NULL, 370000.00, 10, NULL, '2021-08-18 13:02:30', '2021-08-18 13:02:30'),
(722, 254, '', NULL, 370000.00, 10, NULL, '2021-08-18 13:04:04', '2021-08-18 13:04:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_taxes`
--

CREATE TABLE `product_taxes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tax_id` int(11) NOT NULL,
  `tax` double(20,2) NOT NULL,
  `tax_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `product_taxes`
--

INSERT INTO `product_taxes` (`id`, `product_id`, `tax_id`, `tax`, `tax_type`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 0.00, 'amount', '2021-08-15 08:53:07', '2021-08-15 08:53:07'),
(3, 2, 3, 0.00, 'amount', '2021-08-15 09:04:20', '2021-08-15 09:04:20'),
(6, 3, 3, 0.00, 'amount', '2021-08-15 09:50:11', '2021-08-15 09:50:11'),
(8, 4, 3, 0.00, 'amount', '2021-08-15 09:53:36', '2021-08-15 09:53:36'),
(10, 5, 3, 0.00, 'amount', '2021-08-15 10:02:49', '2021-08-15 10:02:49'),
(11, 6, 3, 0.00, 'amount', '2021-08-15 10:05:19', '2021-08-15 10:05:19'),
(13, 7, 3, 0.00, 'amount', '2021-08-15 10:07:52', '2021-08-15 10:07:52'),
(14, 8, 3, 0.00, 'amount', '2021-08-15 10:09:38', '2021-08-15 10:09:38'),
(16, 10, 3, 0.00, 'amount', '2021-08-15 10:13:49', '2021-08-15 10:13:49'),
(19, 11, 3, 0.00, 'amount', '2021-08-15 10:19:38', '2021-08-15 10:19:38'),
(20, 9, 3, 0.00, 'amount', '2021-08-15 11:47:02', '2021-08-15 11:47:02'),
(21, 12, 3, 0.00, 'amount', '2021-08-15 12:13:38', '2021-08-15 12:13:38'),
(23, 13, 3, 0.00, 'amount', '2021-08-15 12:24:14', '2021-08-15 12:24:14'),
(24, 14, 3, 0.00, 'amount', '2021-08-15 12:26:08', '2021-08-15 12:26:08'),
(25, 15, 3, 0.00, 'amount', '2021-08-15 12:27:42', '2021-08-15 12:27:42'),
(27, 16, 3, 0.00, 'amount', '2021-08-16 07:38:39', '2021-08-16 07:38:39'),
(28, 17, 3, 0.00, 'amount', '2021-08-16 07:52:26', '2021-08-16 07:52:26'),
(29, 18, 3, 0.00, 'amount', '2021-08-16 07:55:45', '2021-08-16 07:55:45'),
(30, 19, 3, 0.00, 'amount', '2021-08-16 07:59:48', '2021-08-16 07:59:48'),
(31, 20, 3, 0.00, 'amount', '2021-08-16 08:01:31', '2021-08-16 08:01:31'),
(32, 21, 3, 0.00, 'amount', '2021-08-16 08:08:17', '2021-08-16 08:08:17'),
(33, 22, 3, 0.00, 'amount', '2021-08-16 08:10:59', '2021-08-16 08:10:59'),
(34, 23, 3, 0.00, 'amount', '2021-08-16 08:12:47', '2021-08-16 08:12:47'),
(35, 24, 3, 0.00, 'amount', '2021-08-16 08:14:28', '2021-08-16 08:14:28'),
(36, 25, 3, 0.00, 'amount', '2021-08-16 08:16:14', '2021-08-16 08:16:14'),
(37, 26, 3, 0.00, 'amount', '2021-08-16 08:17:45', '2021-08-16 08:17:45'),
(38, 27, 3, 0.00, 'amount', '2021-08-16 08:19:03', '2021-08-16 08:19:03'),
(39, 28, 3, 0.00, 'amount', '2021-08-16 08:20:30', '2021-08-16 08:20:30'),
(41, 29, 3, 0.00, 'amount', '2021-08-16 08:23:14', '2021-08-16 08:23:14'),
(42, 30, 3, 0.00, 'amount', '2021-08-16 08:25:51', '2021-08-16 08:25:51'),
(43, 31, 3, 0.00, 'amount', '2021-08-16 08:27:08', '2021-08-16 08:27:08'),
(44, 32, 3, 0.00, 'amount', '2021-08-16 08:29:19', '2021-08-16 08:29:19'),
(45, 33, 3, 0.00, 'amount', '2021-08-16 08:31:44', '2021-08-16 08:31:44'),
(46, 34, 3, 0.00, 'amount', '2021-08-16 08:33:42', '2021-08-16 08:33:42'),
(47, 35, 3, 0.00, 'amount', '2021-08-16 08:35:11', '2021-08-16 08:35:11'),
(48, 36, 3, 0.00, 'amount', '2021-08-16 08:36:50', '2021-08-16 08:36:50'),
(49, 37, 3, 0.00, 'amount', '2021-08-16 09:19:58', '2021-08-16 09:19:58'),
(50, 38, 3, 0.00, 'amount', '2021-08-16 09:22:30', '2021-08-16 09:22:30'),
(51, 39, 3, 0.00, 'amount', '2021-08-16 09:24:11', '2021-08-16 09:24:11'),
(52, 40, 3, 0.00, 'amount', '2021-08-16 09:25:46', '2021-08-16 09:25:46'),
(53, 41, 3, 0.00, 'amount', '2021-08-16 09:27:25', '2021-08-16 09:27:25'),
(54, 42, 3, 0.00, 'amount', '2021-08-16 09:29:11', '2021-08-16 09:29:11'),
(55, 43, 3, 0.00, 'amount', '2021-08-16 09:30:43', '2021-08-16 09:30:43'),
(56, 44, 3, 0.00, 'amount', '2021-08-16 09:33:25', '2021-08-16 09:33:25'),
(57, 45, 3, 0.00, 'amount', '2021-08-16 09:35:32', '2021-08-16 09:35:32'),
(58, 46, 3, 0.00, 'amount', '2021-08-16 09:36:55', '2021-08-16 09:36:55'),
(59, 47, 3, 0.00, 'amount', '2021-08-16 09:38:30', '2021-08-16 09:38:30'),
(60, 48, 3, 0.00, 'amount', '2021-08-16 09:39:54', '2021-08-16 09:39:54'),
(61, 49, 3, 0.00, 'amount', '2021-08-16 09:41:42', '2021-08-16 09:41:42'),
(62, 50, 3, 0.00, 'amount', '2021-08-16 09:43:28', '2021-08-16 09:43:28'),
(63, 51, 3, 0.00, 'amount', '2021-08-16 09:46:39', '2021-08-16 09:46:39'),
(64, 52, 3, 0.00, 'amount', '2021-08-16 09:48:08', '2021-08-16 09:48:08'),
(65, 53, 3, 0.00, 'amount', '2021-08-16 09:50:23', '2021-08-16 09:50:23'),
(66, 54, 3, 0.00, 'amount', '2021-08-16 09:51:51', '2021-08-16 09:51:51'),
(75, 55, 3, 0.00, 'amount', '2021-08-16 11:08:43', '2021-08-16 11:08:43'),
(76, 56, 3, 0.00, 'amount', '2021-08-16 11:19:07', '2021-08-16 11:19:07'),
(77, 57, 3, 0.00, 'amount', '2021-08-16 11:21:08', '2021-08-16 11:21:08'),
(78, 58, 3, 0.00, 'amount', '2021-08-16 11:33:38', '2021-08-16 11:33:38'),
(79, 59, 3, 0.00, 'amount', '2021-08-16 11:36:24', '2021-08-16 11:36:24'),
(80, 60, 3, 0.00, 'amount', '2021-08-16 11:38:23', '2021-08-16 11:38:23'),
(81, 61, 3, 0.00, 'amount', '2021-08-16 11:39:52', '2021-08-16 11:39:52'),
(82, 62, 3, 0.00, 'amount', '2021-08-16 11:41:20', '2021-08-16 11:41:20'),
(83, 63, 3, 0.00, 'amount', '2021-08-16 11:45:30', '2021-08-16 11:45:30'),
(84, 64, 3, 0.00, 'amount', '2021-08-16 11:49:26', '2021-08-16 11:49:26'),
(85, 65, 3, 0.00, 'amount', '2021-08-16 11:51:14', '2021-08-16 11:51:14'),
(86, 66, 3, 0.00, 'amount', '2021-08-16 11:59:20', '2021-08-16 11:59:20'),
(87, 67, 3, 0.00, 'amount', '2021-08-16 12:00:48', '2021-08-16 12:00:48'),
(88, 68, 3, 0.00, 'amount', '2021-08-16 12:02:31', '2021-08-16 12:02:31'),
(89, 69, 3, 0.00, 'amount', '2021-08-16 12:04:33', '2021-08-16 12:04:33'),
(90, 70, 3, 0.00, 'amount', '2021-08-16 12:09:37', '2021-08-16 12:09:37'),
(91, 71, 3, 0.00, 'amount', '2021-08-16 12:11:01', '2021-08-16 12:11:01'),
(92, 72, 3, 0.00, 'amount', '2021-08-16 12:12:32', '2021-08-16 12:12:32'),
(93, 73, 3, 0.00, 'amount', '2021-08-16 12:14:06', '2021-08-16 12:14:06'),
(94, 74, 3, 0.00, 'amount', '2021-08-16 12:15:35', '2021-08-16 12:15:35'),
(95, 75, 3, 0.00, 'amount', '2021-08-16 12:17:04', '2021-08-16 12:17:04'),
(96, 76, 3, 0.00, 'amount', '2021-08-16 12:19:06', '2021-08-16 12:19:06'),
(97, 77, 3, 0.00, 'amount', '2021-08-16 12:20:45', '2021-08-16 12:20:45'),
(98, 78, 3, 0.00, 'amount', '2021-08-16 12:22:16', '2021-08-16 12:22:16'),
(99, 79, 3, 0.00, 'amount', '2021-08-16 12:23:53', '2021-08-16 12:23:53'),
(100, 80, 3, 0.00, 'amount', '2021-08-16 12:25:14', '2021-08-16 12:25:14'),
(101, 81, 3, 0.00, 'amount', '2021-08-16 12:26:41', '2021-08-16 12:26:41'),
(102, 82, 3, 0.00, 'amount', '2021-08-16 12:28:07', '2021-08-16 12:28:07'),
(103, 83, 3, 0.00, 'amount', '2021-08-16 12:48:38', '2021-08-16 12:48:38'),
(104, 84, 3, 0.00, 'amount', '2021-08-16 12:50:56', '2021-08-16 12:50:56'),
(105, 85, 3, 0.00, 'amount', '2021-08-16 12:53:10', '2021-08-16 12:53:10'),
(106, 86, 3, 0.00, 'amount', '2021-08-16 12:56:48', '2021-08-16 12:56:48'),
(107, 87, 3, 0.00, 'amount', '2021-08-16 13:01:23', '2021-08-16 13:01:23'),
(108, 88, 3, 0.00, 'amount', '2021-08-16 13:26:24', '2021-08-16 13:26:24'),
(109, 89, 3, 0.00, 'amount', '2021-08-16 13:28:06', '2021-08-16 13:28:06'),
(110, 90, 3, 0.00, 'amount', '2021-08-16 13:29:26', '2021-08-16 13:29:26'),
(111, 91, 3, 0.00, 'amount', '2021-08-16 13:30:53', '2021-08-16 13:30:53'),
(112, 92, 3, 0.00, 'amount', '2021-08-16 13:32:25', '2021-08-16 13:32:25'),
(113, 93, 3, 0.00, 'amount', '2021-08-16 14:12:58', '2021-08-16 14:12:58'),
(114, 94, 3, 0.00, 'amount', '2021-08-16 14:26:36', '2021-08-16 14:26:36'),
(115, 95, 3, 0.00, 'amount', '2021-08-16 14:27:43', '2021-08-16 14:27:43'),
(116, 96, 3, 0.00, 'amount', '2021-08-16 14:28:34', '2021-08-16 14:28:34'),
(117, 97, 3, 0.00, 'amount', '2021-08-16 14:31:30', '2021-08-16 14:31:30'),
(118, 98, 3, 0.00, 'amount', '2021-08-16 14:33:02', '2021-08-16 14:33:02'),
(119, 99, 3, 0.00, 'amount', '2021-08-16 14:34:06', '2021-08-16 14:34:06'),
(120, 100, 3, 0.00, 'amount', '2021-08-16 14:38:06', '2021-08-16 14:38:06'),
(121, 101, 3, 0.00, 'amount', '2021-08-16 14:42:36', '2021-08-16 14:42:36'),
(122, 102, 3, 0.00, 'amount', '2021-08-16 14:44:15', '2021-08-16 14:44:15'),
(123, 103, 3, 0.00, 'amount', '2021-08-16 14:45:22', '2021-08-16 14:45:22'),
(124, 104, 3, 0.00, 'amount', '2021-08-16 14:46:27', '2021-08-16 14:46:27'),
(125, 105, 3, 0.00, 'amount', '2021-08-16 14:47:58', '2021-08-16 14:47:58'),
(126, 106, 3, 0.00, 'amount', '2021-08-16 14:49:08', '2021-08-16 14:49:08'),
(127, 107, 3, 0.00, 'amount', '2021-08-16 14:51:02', '2021-08-16 14:51:02'),
(128, 108, 3, 0.00, 'amount', '2021-08-16 14:52:10', '2021-08-16 14:52:10'),
(130, 109, 3, 0.00, 'amount', '2021-08-16 16:21:14', '2021-08-16 16:21:14'),
(131, 110, 3, 0.00, 'amount', '2021-08-16 17:14:39', '2021-08-16 17:14:39'),
(132, 111, 3, 0.00, 'amount', '2021-08-16 17:34:23', '2021-08-16 17:34:23'),
(133, 112, 3, 0.00, 'amount', '2021-08-16 17:40:54', '2021-08-16 17:40:54'),
(134, 113, 3, 0.00, 'amount', '2021-08-16 17:57:22', '2021-08-16 17:57:22'),
(135, 114, 3, 0.00, 'amount', '2021-08-16 17:59:15', '2021-08-16 17:59:15'),
(136, 115, 3, 0.00, 'amount', '2021-08-16 18:00:43', '2021-08-16 18:00:43'),
(137, 116, 3, 0.00, 'amount', '2021-08-16 18:01:51', '2021-08-16 18:01:51'),
(138, 117, 3, 0.00, 'amount', '2021-08-16 18:22:24', '2021-08-16 18:22:24'),
(139, 118, 3, 0.00, 'amount', '2021-08-17 11:00:20', '2021-08-17 11:00:20'),
(140, 119, 3, 0.00, 'amount', '2021-08-17 11:01:35', '2021-08-17 11:01:35'),
(141, 120, 3, 0.00, 'amount', '2021-08-17 11:04:10', '2021-08-17 11:04:10'),
(142, 121, 3, 0.00, 'amount', '2021-08-17 11:05:42', '2021-08-17 11:05:42'),
(143, 122, 3, 0.00, 'amount', '2021-08-17 11:06:48', '2021-08-17 11:06:48'),
(144, 123, 3, 0.00, 'amount', '2021-08-17 11:07:51', '2021-08-17 11:07:51'),
(145, 124, 3, 0.00, 'amount', '2021-08-17 11:14:46', '2021-08-17 11:14:46'),
(146, 125, 3, 0.00, 'amount', '2021-08-17 11:15:55', '2021-08-17 11:15:55'),
(147, 126, 3, 0.00, 'amount', '2021-08-17 11:16:53', '2021-08-17 11:16:53'),
(149, 127, 3, 0.00, 'amount', '2021-08-17 11:21:50', '2021-08-17 11:21:50'),
(150, 128, 3, 0.00, 'amount', '2021-08-17 11:23:06', '2021-08-17 11:23:06'),
(151, 129, 3, 0.00, 'amount', '2021-08-17 11:23:58', '2021-08-17 11:23:58'),
(152, 130, 3, 0.00, 'amount', '2021-08-17 11:26:52', '2021-08-17 11:26:52'),
(153, 131, 3, 0.00, 'amount', '2021-08-17 11:27:47', '2021-08-17 11:27:47'),
(154, 132, 3, 0.00, 'amount', '2021-08-17 11:28:55', '2021-08-17 11:28:55'),
(155, 133, 3, 0.00, 'amount', '2021-08-17 11:29:58', '2021-08-17 11:29:58'),
(156, 134, 3, 0.00, 'amount', '2021-08-17 11:31:00', '2021-08-17 11:31:00'),
(157, 135, 3, 0.00, 'amount', '2021-08-17 11:32:23', '2021-08-17 11:32:23'),
(158, 136, 3, 0.00, 'amount', '2021-08-17 11:33:23', '2021-08-17 11:33:23'),
(159, 137, 3, 0.00, 'amount', '2021-08-17 11:34:36', '2021-08-17 11:34:36'),
(160, 138, 3, 0.00, 'amount', '2021-08-17 11:36:04', '2021-08-17 11:36:04'),
(161, 139, 3, 0.00, 'amount', '2021-08-17 11:37:05', '2021-08-17 11:37:05'),
(162, 140, 3, 0.00, 'amount', '2021-08-17 11:38:16', '2021-08-17 11:38:16'),
(163, 141, 3, 0.00, 'amount', '2021-08-17 11:39:19', '2021-08-17 11:39:19'),
(164, 142, 3, 0.00, 'amount', '2021-08-17 11:40:40', '2021-08-17 11:40:40'),
(165, 143, 3, 0.00, 'amount', '2021-08-17 11:41:40', '2021-08-17 11:41:40'),
(166, 144, 3, 0.00, 'amount', '2021-08-17 11:42:42', '2021-08-17 11:42:42'),
(167, 145, 3, 0.00, 'amount', '2021-08-17 11:44:05', '2021-08-17 11:44:05'),
(168, 146, 3, 0.00, 'amount', '2021-08-17 11:45:13', '2021-08-17 11:45:13'),
(169, 147, 3, 0.00, 'amount', '2021-08-17 11:47:48', '2021-08-17 11:47:48'),
(170, 148, 3, 0.00, 'amount', '2021-08-17 11:48:45', '2021-08-17 11:48:45'),
(171, 149, 3, 0.00, 'amount', '2021-08-17 11:49:55', '2021-08-17 11:49:55'),
(172, 150, 3, 0.00, 'amount', '2021-08-17 11:52:20', '2021-08-17 11:52:20'),
(173, 151, 3, 0.00, 'amount', '2021-08-17 11:53:19', '2021-08-17 11:53:19'),
(174, 152, 3, 0.00, 'amount', '2021-08-17 11:54:16', '2021-08-17 11:54:16'),
(175, 153, 3, 0.00, 'amount', '2021-08-17 11:55:26', '2021-08-17 11:55:26'),
(176, 154, 3, 0.00, 'amount', '2021-08-17 11:58:10', '2021-08-17 11:58:10'),
(177, 155, 3, 0.00, 'amount', '2021-08-17 11:59:36', '2021-08-17 11:59:36'),
(178, 156, 3, 0.00, 'amount', '2021-08-17 12:00:29', '2021-08-17 12:00:29'),
(179, 157, 3, 0.00, 'amount', '2021-08-17 12:02:10', '2021-08-17 12:02:10'),
(180, 158, 3, 0.00, 'amount', '2021-08-17 12:08:42', '2021-08-17 12:08:42'),
(181, 159, 3, 0.00, 'amount', '2021-08-17 12:09:50', '2021-08-17 12:09:50'),
(182, 160, 3, 0.00, 'amount', '2021-08-17 12:15:28', '2021-08-17 12:15:28'),
(183, 161, 3, 0.00, 'amount', '2021-08-17 12:16:21', '2021-08-17 12:16:21'),
(184, 162, 3, 0.00, 'amount', '2021-08-17 12:17:13', '2021-08-17 12:17:13'),
(185, 163, 3, 0.00, 'amount', '2021-08-17 12:18:08', '2021-08-17 12:18:08'),
(186, 164, 3, 0.00, 'amount', '2021-08-17 12:19:36', '2021-08-17 12:19:36'),
(187, 165, 3, 0.00, 'amount', '2021-08-17 12:20:37', '2021-08-17 12:20:37'),
(188, 166, 3, 0.00, 'amount', '2021-08-17 12:21:42', '2021-08-17 12:21:42'),
(189, 167, 3, 0.00, 'amount', '2021-08-17 12:22:37', '2021-08-17 12:22:37'),
(190, 168, 3, 0.00, 'amount', '2021-08-17 12:23:49', '2021-08-17 12:23:49'),
(193, 171, 3, 0.00, 'amount', '2021-08-17 12:27:05', '2021-08-17 12:27:05'),
(194, 172, 3, 0.00, 'amount', '2021-08-17 12:28:33', '2021-08-17 12:28:33'),
(195, 173, 3, 0.00, 'amount', '2021-08-17 12:29:37', '2021-08-17 12:29:37'),
(196, 174, 3, 0.00, 'amount', '2021-08-17 12:30:32', '2021-08-17 12:30:32'),
(197, 175, 3, 0.00, 'amount', '2021-08-17 12:31:23', '2021-08-17 12:31:23'),
(198, 170, 3, 0.00, 'amount', '2021-08-17 12:34:06', '2021-08-17 12:34:06'),
(199, 169, 3, 0.00, 'amount', '2021-08-17 12:36:03', '2021-08-17 12:36:03'),
(200, 176, 3, 0.00, 'amount', '2021-08-18 07:38:59', '2021-08-18 07:38:59'),
(201, 177, 3, 0.00, 'amount', '2021-08-18 07:40:00', '2021-08-18 07:40:00'),
(202, 178, 3, 0.00, 'amount', '2021-08-18 07:42:55', '2021-08-18 07:42:55'),
(203, 179, 3, 0.00, 'amount', '2021-08-18 07:48:13', '2021-08-18 07:48:13'),
(204, 180, 3, 0.00, 'amount', '2021-08-18 07:53:45', '2021-08-18 07:53:45'),
(206, 181, 3, 0.00, 'amount', '2021-08-18 08:11:33', '2021-08-18 08:11:33'),
(207, 182, 3, 0.00, 'amount', '2021-08-18 08:19:37', '2021-08-18 08:19:37'),
(208, 183, 3, 0.00, 'amount', '2021-08-18 08:20:49', '2021-08-18 08:20:49'),
(209, 184, 3, 0.00, 'amount', '2021-08-18 08:30:49', '2021-08-18 08:30:49'),
(210, 185, 3, 0.00, 'amount', '2021-08-18 08:33:00', '2021-08-18 08:33:00'),
(211, 186, 3, 0.00, 'amount', '2021-08-18 08:34:15', '2021-08-18 08:34:15'),
(212, 187, 3, 0.00, 'amount', '2021-08-18 08:35:32', '2021-08-18 08:35:32'),
(215, 190, 3, 0.00, 'amount', '2021-08-18 08:50:09', '2021-08-18 08:50:09'),
(217, 189, 3, 0.00, 'amount', '2021-08-18 08:52:56', '2021-08-18 08:52:56'),
(218, 188, 3, 0.00, 'amount', '2021-08-18 08:56:55', '2021-08-18 08:56:55'),
(219, 191, 3, 0.00, 'amount', '2021-08-18 09:01:50', '2021-08-18 09:01:50'),
(220, 192, 3, 0.00, 'amount', '2021-08-18 09:02:42', '2021-08-18 09:02:42'),
(221, 193, 3, 0.00, 'amount', '2021-08-18 09:03:59', '2021-08-18 09:03:59'),
(224, 196, 3, 0.00, 'amount', '2021-08-18 09:15:19', '2021-08-18 09:15:19'),
(227, 199, 3, 0.00, 'amount', '2021-08-18 09:26:23', '2021-08-18 09:26:23'),
(228, 200, 3, 0.00, 'amount', '2021-08-18 09:27:20', '2021-08-18 09:27:20'),
(230, 198, 3, 0.00, 'amount', '2021-08-18 09:36:41', '2021-08-18 09:36:41'),
(231, 197, 3, 0.00, 'amount', '2021-08-18 09:38:07', '2021-08-18 09:38:07'),
(233, 195, 3, 0.00, 'amount', '2021-08-18 09:43:35', '2021-08-18 09:43:35'),
(234, 194, 3, 0.00, 'amount', '2021-08-18 09:44:47', '2021-08-18 09:44:47'),
(235, 201, 3, 0.00, 'amount', '2021-08-18 09:47:12', '2021-08-18 09:47:12'),
(236, 202, 3, 0.00, 'amount', '2021-08-18 09:51:20', '2021-08-18 09:51:20'),
(237, 203, 3, 0.00, 'amount', '2021-08-18 09:52:23', '2021-08-18 09:52:23'),
(238, 204, 3, 0.00, 'amount', '2021-08-18 09:53:57', '2021-08-18 09:53:57'),
(239, 205, 3, 0.00, 'amount', '2021-08-18 09:54:54', '2021-08-18 09:54:54'),
(240, 206, 3, 0.00, 'amount', '2021-08-18 09:55:44', '2021-08-18 09:55:44'),
(241, 207, 3, 0.00, 'amount', '2021-08-18 10:02:33', '2021-08-18 10:02:33'),
(242, 208, 3, 0.00, 'amount', '2021-08-18 10:04:23', '2021-08-18 10:04:23'),
(243, 209, 3, 0.00, 'amount', '2021-08-18 10:05:20', '2021-08-18 10:05:20'),
(244, 210, 3, 0.00, 'amount', '2021-08-18 10:06:24', '2021-08-18 10:06:24'),
(246, 211, 3, 0.00, 'amount', '2021-08-18 10:18:34', '2021-08-18 10:18:34'),
(247, 212, 3, 0.00, 'amount', '2021-08-18 10:22:48', '2021-08-18 10:22:48'),
(248, 213, 3, 0.00, 'amount', '2021-08-18 10:24:06', '2021-08-18 10:24:06'),
(249, 214, 3, 0.00, 'amount', '2021-08-18 10:25:04', '2021-08-18 10:25:04'),
(250, 215, 3, 0.00, 'amount', '2021-08-18 10:26:31', '2021-08-18 10:26:31'),
(251, 216, 3, 0.00, 'amount', '2021-08-18 10:40:14', '2021-08-18 10:40:14'),
(252, 217, 3, 0.00, 'amount', '2021-08-18 10:43:22', '2021-08-18 10:43:22'),
(253, 218, 3, 0.00, 'amount', '2021-08-18 10:45:48', '2021-08-18 10:45:48'),
(254, 219, 3, 0.00, 'amount', '2021-08-18 10:46:55', '2021-08-18 10:46:55'),
(255, 220, 3, 0.00, 'amount', '2021-08-18 10:49:24', '2021-08-18 10:49:24'),
(256, 221, 3, 0.00, 'amount', '2021-08-18 10:50:18', '2021-08-18 10:50:18'),
(257, 222, 3, 0.00, 'amount', '2021-08-18 10:52:17', '2021-08-18 10:52:17'),
(258, 223, 3, 0.00, 'amount', '2021-08-18 11:09:19', '2021-08-18 11:09:19'),
(259, 224, 3, 0.00, 'amount', '2021-08-18 11:10:11', '2021-08-18 11:10:11'),
(260, 225, 3, 0.00, 'amount', '2021-08-18 11:11:28', '2021-08-18 11:11:28'),
(261, 226, 3, 0.00, 'amount', '2021-08-18 11:12:36', '2021-08-18 11:12:36'),
(262, 227, 3, 0.00, 'amount', '2021-08-18 11:13:30', '2021-08-18 11:13:30'),
(263, 228, 3, 0.00, 'amount', '2021-08-18 11:14:21', '2021-08-18 11:14:21'),
(264, 229, 3, 0.00, 'amount', '2021-08-18 11:15:07', '2021-08-18 11:15:07'),
(265, 230, 3, 0.00, 'amount', '2021-08-18 11:15:53', '2021-08-18 11:15:53'),
(266, 231, 3, 0.00, 'amount', '2021-08-18 11:16:49', '2021-08-18 11:16:49'),
(267, 232, 3, 0.00, 'amount', '2021-08-18 11:17:56', '2021-08-18 11:17:56'),
(268, 233, 3, 0.00, 'amount', '2021-08-18 11:18:48', '2021-08-18 11:18:48'),
(269, 234, 3, 0.00, 'amount', '2021-08-18 11:19:52', '2021-08-18 11:19:52'),
(270, 235, 3, 0.00, 'amount', '2021-08-18 11:20:43', '2021-08-18 11:20:43'),
(271, 236, 3, 0.00, 'amount', '2021-08-18 11:22:26', '2021-08-18 11:22:26'),
(282, 247, 3, 0.00, 'amount', '2021-08-18 11:39:49', '2021-08-18 11:39:49'),
(283, 248, 3, 0.00, 'amount', '2021-08-18 11:45:03', '2021-08-18 11:45:03'),
(284, 249, 3, 0.00, 'amount', '2021-08-18 11:46:49', '2021-08-18 11:46:49'),
(285, 250, 3, 0.00, 'amount', '2021-08-18 11:48:00', '2021-08-18 11:48:00'),
(287, 238, 3, 0.00, 'amount', '2021-08-18 11:55:07', '2021-08-18 11:55:07'),
(288, 239, 3, 0.00, 'amount', '2021-08-18 11:56:55', '2021-08-18 11:56:55'),
(289, 240, 3, 0.00, 'amount', '2021-08-18 11:59:12', '2021-08-18 11:59:12'),
(290, 241, 3, 0.00, 'amount', '2021-08-18 12:00:52', '2021-08-18 12:00:52'),
(291, 242, 3, 0.00, 'amount', '2021-08-18 12:02:54', '2021-08-18 12:02:54'),
(292, 243, 3, 0.00, 'amount', '2021-08-18 12:04:59', '2021-08-18 12:04:59'),
(293, 244, 3, 0.00, 'amount', '2021-08-18 12:06:57', '2021-08-18 12:06:57'),
(295, 245, 3, 0.00, 'amount', '2021-08-18 12:16:52', '2021-08-18 12:16:52'),
(296, 246, 3, 0.00, 'amount', '2021-08-18 12:18:43', '2021-08-18 12:18:43'),
(297, 237, 3, 0.00, 'amount', '2021-08-18 12:20:58', '2021-08-18 12:20:58'),
(298, 251, 3, 0.00, 'amount', '2021-08-18 12:47:23', '2021-08-18 12:47:23'),
(299, 252, 3, 0.00, 'amount', '2021-08-18 13:01:30', '2021-08-18 13:01:30'),
(300, 253, 3, 0.00, 'amount', '2021-08-18 13:02:30', '2021-08-18 13:02:30'),
(301, 254, 3, 0.00, 'amount', '2021-08-18 13:04:04', '2021-08-18 13:04:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_translations`
--

CREATE TABLE `product_translations` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `product_translations`
--

INSERT INTO `product_translations` (`id`, `product_id`, `name`, `unit`, `description`, `lang`, `created_at`, `updated_at`) VALUES
(1, 1, 'BM-001', 'Pc', NULL, 'id', '2021-08-15 08:53:07', '2021-08-15 08:53:07'),
(2, 2, 'BM-002', 'Pc', NULL, 'id', '2021-08-15 09:03:12', '2021-08-15 09:03:12'),
(3, 3, 'BM-003', 'Pc', NULL, 'id', '2021-08-15 09:11:05', '2021-08-15 09:11:05'),
(4, 4, 'BM-004', 'Pc', NULL, 'id', '2021-08-15 09:12:38', '2021-08-15 09:53:36'),
(5, 5, 'BM-005', 'Pc', NULL, 'id', '2021-08-15 10:01:06', '2021-08-15 10:01:06'),
(6, 6, 'BM-006', 'Pc', NULL, 'id', '2021-08-15 10:05:19', '2021-08-15 10:05:19'),
(7, 7, 'BM-007', 'Pc', NULL, 'id', '2021-08-15 10:06:58', '2021-08-15 10:06:58'),
(8, 8, 'BM-008', 'Pc', NULL, 'id', '2021-08-15 10:09:38', '2021-08-15 10:09:38'),
(9, 9, 'BM-009', 'Pc', NULL, 'id', '2021-08-15 10:11:37', '2021-08-15 10:11:37'),
(10, 10, 'BM-010', 'Pc', NULL, 'id', '2021-08-15 10:13:50', '2021-08-15 10:13:50'),
(11, 11, 'BM-011', 'Pc', NULL, 'id', '2021-08-15 10:18:03', '2021-08-15 10:18:03'),
(12, 12, 'BM-012', 'Pc', NULL, 'id', '2021-08-15 12:13:38', '2021-08-15 12:13:38'),
(13, 13, 'BM-013', 'Pc', NULL, 'id', '2021-08-15 12:17:16', '2021-08-15 12:17:16'),
(14, 14, 'BM-014', 'Pc', NULL, 'id', '2021-08-15 12:26:08', '2021-08-15 12:26:08'),
(15, 15, 'BM-015', 'Pc', NULL, 'id', '2021-08-15 12:27:43', '2021-08-15 12:27:43'),
(16, 16, 'BM-016', 'Pc', NULL, 'id', '2021-08-16 07:29:53', '2021-08-16 07:29:53'),
(17, 17, 'BM-017', 'Pc', NULL, 'id', '2021-08-16 07:52:27', '2021-08-16 07:52:27'),
(18, 18, 'BM-018', 'Pc', NULL, 'id', '2021-08-16 07:55:45', '2021-08-16 07:55:45'),
(19, 19, 'BM-019', 'Pc', NULL, 'id', '2021-08-16 07:59:48', '2021-08-16 07:59:48'),
(20, 20, 'BM-020', 'Pc', NULL, 'id', '2021-08-16 08:01:31', '2021-08-16 08:01:31'),
(21, 21, 'BM-021', 'Pc', NULL, 'id', '2021-08-16 08:08:17', '2021-08-16 08:08:17'),
(22, 22, 'BM-022', 'Pc', NULL, 'id', '2021-08-16 08:10:59', '2021-08-16 08:10:59'),
(23, 23, 'BM-023', 'Pc', NULL, 'id', '2021-08-16 08:12:47', '2021-08-16 08:12:47'),
(24, 24, 'BM-024', 'Pc', NULL, 'id', '2021-08-16 08:14:28', '2021-08-16 08:14:28'),
(25, 25, 'BM-025', 'Pc', NULL, 'id', '2021-08-16 08:16:14', '2021-08-16 08:16:14'),
(26, 26, 'BM-026', 'Pc', NULL, 'id', '2021-08-16 08:17:45', '2021-08-16 08:17:45'),
(27, 27, 'BM-027', 'Pc', NULL, 'id', '2021-08-16 08:19:03', '2021-08-16 08:19:03'),
(28, 28, 'BM-028', 'Pc', NULL, 'id', '2021-08-16 08:20:30', '2021-08-16 08:20:30'),
(29, 29, 'BM-029', 'Pc', NULL, 'id', '2021-08-16 08:22:12', '2021-08-16 08:22:12'),
(30, 30, 'BM-030', 'Pc', NULL, 'id', '2021-08-16 08:25:51', '2021-08-16 08:25:51'),
(31, 31, 'BM-031', 'Pc', NULL, 'id', '2021-08-16 08:27:09', '2021-08-16 08:27:09'),
(32, 32, 'BM-032', 'Pc', NULL, 'id', '2021-08-16 08:29:19', '2021-08-16 08:29:19'),
(33, 33, 'BW-001', 'Pc', NULL, 'id', '2021-08-16 08:31:44', '2021-08-16 08:31:44'),
(34, 34, 'BW-002', 'Pc', NULL, 'id', '2021-08-16 08:33:42', '2021-08-16 08:33:42'),
(35, 35, 'BW-003', 'Pc', NULL, 'id', '2021-08-16 08:35:11', '2021-08-16 08:35:11'),
(36, 36, 'BW-004', 'Pc', NULL, 'id', '2021-08-16 08:36:50', '2021-08-16 08:36:50'),
(37, 37, 'BW-005', 'Pc', NULL, 'id', '2021-08-16 09:19:58', '2021-08-16 09:19:58'),
(38, 38, 'BW-006', 'Pc', NULL, 'id', '2021-08-16 09:22:30', '2021-08-16 09:22:30'),
(39, 39, 'BW-007', 'Pc', NULL, 'id', '2021-08-16 09:24:12', '2021-08-16 09:24:12'),
(40, 40, 'BW-008', 'Pc', NULL, 'id', '2021-08-16 09:25:46', '2021-08-16 09:25:46'),
(41, 41, 'BW-009', 'Pc', NULL, 'id', '2021-08-16 09:27:25', '2021-08-16 09:27:25'),
(42, 42, 'BW-010', 'Pc', NULL, 'id', '2021-08-16 09:29:12', '2021-08-16 09:29:12'),
(43, 43, 'BW-011', 'Pc', NULL, 'id', '2021-08-16 09:30:43', '2021-08-16 09:30:43'),
(44, 44, 'BW-012', 'Pc', NULL, 'id', '2021-08-16 09:33:25', '2021-08-16 09:33:25'),
(45, 45, 'BW-013', 'Pc', NULL, 'id', '2021-08-16 09:35:32', '2021-08-16 09:35:32'),
(46, 46, 'BW-014', 'Pc', NULL, 'id', '2021-08-16 09:36:55', '2021-08-16 09:36:55'),
(47, 47, 'BW-015', 'Pc', NULL, 'id', '2021-08-16 09:38:31', '2021-08-16 09:38:31'),
(48, 48, 'BW-016', 'Pc', NULL, 'id', '2021-08-16 09:39:54', '2021-08-16 09:39:54'),
(49, 49, 'BW-017', 'Pc', NULL, 'id', '2021-08-16 09:41:42', '2021-08-16 09:41:42'),
(50, 50, 'BW-018', 'Pc', NULL, 'id', '2021-08-16 09:43:28', '2021-08-16 09:43:28'),
(51, 51, 'BW-019', 'Pc', NULL, 'id', '2021-08-16 09:46:39', '2021-08-16 09:46:39'),
(52, 52, 'BW-020', 'Pc', NULL, 'id', '2021-08-16 09:48:08', '2021-08-16 09:48:08'),
(53, 53, 'BW-021', 'Pc', NULL, 'id', '2021-08-16 09:50:23', '2021-08-16 09:50:23'),
(54, 54, 'BW-022', 'Pc', NULL, 'id', '2021-08-16 09:51:51', '2021-08-16 09:51:51'),
(55, 55, 'BW-023', 'Pc', NULL, 'id', '2021-08-16 09:53:46', '2021-08-16 09:59:11'),
(56, 56, 'BW-024', 'Pc', NULL, 'id', '2021-08-16 11:19:07', '2021-08-16 11:19:07'),
(57, 57, 'BM-025', 'Pc', NULL, 'id', '2021-08-16 11:21:08', '2021-08-16 11:21:08'),
(58, 58, 'BM-026', 'Pc', NULL, 'id', '2021-08-16 11:33:38', '2021-08-16 11:33:38'),
(59, 59, 'BW-027', 'Pc', NULL, 'id', '2021-08-16 11:36:24', '2021-08-16 11:36:24'),
(60, 60, 'BW-029', 'Pc', NULL, 'id', '2021-08-16 11:38:23', '2021-08-16 11:38:23'),
(61, 61, 'BW-030', 'Pc', NULL, 'id', '2021-08-16 11:39:52', '2021-08-16 11:39:52'),
(62, 62, 'BW-032', 'Pc', NULL, 'id', '2021-08-16 11:41:20', '2021-08-16 11:41:20'),
(63, 63, 'DC-001', 'Pc', NULL, 'id', '2021-08-16 11:45:30', '2021-08-16 11:45:30'),
(64, 64, 'DC-002', 'Pc', NULL, 'id', '2021-08-16 11:49:27', '2021-08-16 11:49:27'),
(65, 65, 'DC-003', 'Pc', NULL, 'id', '2021-08-16 11:51:14', '2021-08-16 11:51:14'),
(66, 66, 'DC-004', 'Pc', NULL, 'id', '2021-08-16 11:59:20', '2021-08-16 11:59:20'),
(67, 67, 'DC-005', 'Pc', NULL, 'id', '2021-08-16 12:00:49', '2021-08-16 12:00:49'),
(68, 68, 'DC-006', 'Pc', NULL, 'id', '2021-08-16 12:02:31', '2021-08-16 12:02:31'),
(69, 69, 'DC-007', 'Pc', NULL, 'id', '2021-08-16 12:04:34', '2021-08-16 12:04:34'),
(70, 70, 'DC-008', 'Pc', NULL, 'id', '2021-08-16 12:09:37', '2021-08-16 12:09:37'),
(71, 71, 'DC-009', 'Pc', NULL, 'id', '2021-08-16 12:11:02', '2021-08-16 12:11:02'),
(72, 72, 'DC-010', 'Pc', NULL, 'id', '2021-08-16 12:12:33', '2021-08-16 12:12:33'),
(73, 73, 'DC-011', 'Pc', NULL, 'id', '2021-08-16 12:14:07', '2021-08-16 12:14:07'),
(74, 74, 'DC-012', 'Pc', NULL, 'id', '2021-08-16 12:15:35', '2021-08-16 12:15:35'),
(75, 75, 'DC-013', 'Pc', NULL, 'id', '2021-08-16 12:17:04', '2021-08-16 12:17:04'),
(76, 76, 'DC-014', 'Pc', NULL, 'id', '2021-08-16 12:19:06', '2021-08-16 12:19:06'),
(77, 77, 'DC-015', 'Pc', NULL, 'id', '2021-08-16 12:20:46', '2021-08-16 12:20:46'),
(78, 78, 'DC-016', 'Pc', NULL, 'id', '2021-08-16 12:22:16', '2021-08-16 12:22:16'),
(79, 79, 'DC-017', 'Pc', NULL, 'id', '2021-08-16 12:23:53', '2021-08-16 12:23:53'),
(80, 80, 'DC-018', 'Pc', NULL, 'id', '2021-08-16 12:25:15', '2021-08-16 12:25:15'),
(81, 81, 'DC-019', 'Pc', NULL, 'id', '2021-08-16 12:26:41', '2021-08-16 12:26:41'),
(82, 82, 'DC-020', 'Pc', NULL, 'id', '2021-08-16 12:28:07', '2021-08-16 12:28:07'),
(83, 83, 'DC-021', 'Pc', NULL, 'id', '2021-08-16 12:48:38', '2021-08-16 12:48:38'),
(84, 84, 'DC-022', 'Pc', NULL, 'id', '2021-08-16 12:50:56', '2021-08-16 12:50:56'),
(85, 85, 'DC-023', 'Pc', NULL, 'id', '2021-08-16 12:53:10', '2021-08-16 12:53:10'),
(86, 86, 'BN-001', 'Pc', NULL, 'id', '2021-08-16 12:56:48', '2021-08-16 12:56:48'),
(87, 87, 'BN-002', 'Pc', NULL, 'id', '2021-08-16 13:01:23', '2021-08-16 13:01:23'),
(88, 88, 'BN-003', 'Pc', NULL, 'id', '2021-08-16 13:26:24', '2021-08-16 13:26:24'),
(89, 89, 'BN-004', 'Pc', NULL, 'id', '2021-08-16 13:28:06', '2021-08-16 13:28:06'),
(90, 90, 'BN-005', 'Pc', NULL, 'id', '2021-08-16 13:29:27', '2021-08-16 13:29:27'),
(91, 91, 'BN-006', 'Pc', NULL, 'id', '2021-08-16 13:30:53', '2021-08-16 13:30:53'),
(92, 92, 'BN-007', 'Pc', NULL, 'id', '2021-08-16 13:32:25', '2021-08-16 13:32:25'),
(93, 93, 'BN-008', 'Pc', NULL, 'id', '2021-08-16 14:12:58', '2021-08-16 14:12:58'),
(94, 94, 'BN-009', 'Pc', NULL, 'id', '2021-08-16 14:26:36', '2021-08-16 14:26:36'),
(95, 95, 'BN-010', 'Pc', NULL, 'id', '2021-08-16 14:27:43', '2021-08-16 14:27:43'),
(96, 97, 'BN-012', 'Pc', NULL, 'id', '2021-08-16 14:31:30', '2021-08-16 14:31:30'),
(97, 98, 'BN-013', 'Pc', NULL, 'id', '2021-08-16 14:33:03', '2021-08-16 14:33:03'),
(98, 99, 'BN-014', 'Pc', NULL, 'id', '2021-08-16 14:34:06', '2021-08-16 14:34:06'),
(99, 100, 'BN-015', 'Pc', NULL, 'id', '2021-08-16 14:38:06', '2021-08-16 14:38:06'),
(100, 101, 'BN-016', 'Pc', NULL, 'id', '2021-08-16 14:42:36', '2021-08-16 14:42:36'),
(101, 102, 'BN-017', 'Pc', NULL, 'id', '2021-08-16 14:44:15', '2021-08-16 14:44:15'),
(102, 103, 'BN-018', 'Pc', NULL, 'id', '2021-08-16 14:45:22', '2021-08-16 14:45:22'),
(103, 104, 'BN-019', 'Pc', NULL, 'id', '2021-08-16 14:46:27', '2021-08-16 14:46:27'),
(104, 105, 'BN-020', 'Pc', NULL, 'id', '2021-08-16 14:47:59', '2021-08-16 14:47:59'),
(105, 106, 'BN-021', 'Pc', NULL, 'id', '2021-08-16 14:49:08', '2021-08-16 14:49:08'),
(106, 107, 'BN-022', 'Pc', NULL, 'id', '2021-08-16 14:51:02', '2021-08-16 14:51:02'),
(107, 108, 'BN-023', 'Pc', NULL, 'id', '2021-08-16 14:52:10', '2021-08-16 14:52:10'),
(108, 109, 'BN-024', 'Pc', NULL, 'id', '2021-08-16 16:21:14', '2021-08-16 16:21:14'),
(109, 110, 'BN-025', 'Pc', NULL, 'id', '2021-08-16 17:14:39', '2021-08-16 17:14:39'),
(110, 111, 'BN-026', 'Pc', NULL, 'id', '2021-08-16 17:34:23', '2021-08-16 17:34:23'),
(111, 112, 'BN-027', 'Pc', NULL, 'id', '2021-08-16 17:40:54', '2021-08-16 17:40:54'),
(112, 113, 'BN-028', 'Pc', NULL, 'id', '2021-08-16 17:57:22', '2021-08-16 17:57:22'),
(113, 114, 'BN-029', 'Pc', NULL, 'id', '2021-08-16 17:59:15', '2021-08-16 17:59:15'),
(114, 115, 'BN-030', 'Pc', NULL, 'id', '2021-08-16 18:00:44', '2021-08-16 18:00:44'),
(115, 116, 'BN-031', 'Pc', NULL, 'id', '2021-08-16 18:01:51', '2021-08-16 18:01:51'),
(116, 117, 'BMJ-001', 'Pc', NULL, 'id', '2021-08-16 18:22:24', '2021-08-16 18:22:24'),
(117, 118, 'BMJ-002', 'Pc', NULL, 'id', '2021-08-17 11:00:20', '2021-08-17 11:00:20'),
(118, 119, 'BMJ-003', 'Pc', NULL, 'id', '2021-08-17 11:01:35', '2021-08-17 11:01:35'),
(119, 120, 'BMJ-004', 'Pc', NULL, 'id', '2021-08-17 11:04:10', '2021-08-17 11:04:10'),
(120, 121, 'BMJ-005', 'Pc', NULL, 'id', '2021-08-17 11:05:42', '2021-08-17 11:05:42'),
(121, 122, 'BMJ-006', 'Pc', NULL, 'id', '2021-08-17 11:06:48', '2021-08-17 11:06:48'),
(122, 123, 'BMJ-007', 'Pc', NULL, 'id', '2021-08-17 11:07:51', '2021-08-17 11:07:51'),
(123, 124, 'BMJ-008', 'Pc', NULL, 'id', '2021-08-17 11:14:46', '2021-08-17 11:14:46'),
(124, 125, 'BMJ-009', 'Pc', NULL, 'id', '2021-08-17 11:15:55', '2021-08-17 11:15:55'),
(125, 126, 'BMJ-010', 'Pc', NULL, 'id', '2021-08-17 11:16:53', '2021-08-17 11:16:53'),
(126, 127, 'BMJ-011', 'Pc', NULL, 'id', '2021-08-17 11:21:50', '2021-08-17 11:21:50'),
(127, 128, 'BMJ-012', 'Pc', NULL, 'id', '2021-08-17 11:23:06', '2021-08-17 11:23:06'),
(128, 129, 'BMJ-013', 'Pc', NULL, 'id', '2021-08-17 11:23:58', '2021-08-17 11:23:58'),
(129, 130, 'BMJ-014', 'Pc', NULL, 'id', '2021-08-17 11:26:53', '2021-08-17 11:26:53'),
(130, 131, 'BMJ-015', 'Pc', NULL, 'id', '2021-08-17 11:27:47', '2021-08-17 11:27:47'),
(131, 132, 'BMJ-016', 'Pc', NULL, 'id', '2021-08-17 11:28:55', '2021-08-17 11:28:55'),
(132, 133, 'BMJ-017', 'Pc', NULL, 'id', '2021-08-17 11:29:58', '2021-08-17 11:29:58'),
(133, 134, 'BMJ-018', 'Pc', NULL, 'id', '2021-08-17 11:31:00', '2021-08-17 11:31:00'),
(134, 135, 'BMJ-019', 'Pc', NULL, 'id', '2021-08-17 11:32:24', '2021-08-17 11:32:24'),
(135, 136, 'BMJ-020', 'Pc', NULL, 'id', '2021-08-17 11:33:23', '2021-08-17 11:33:23'),
(136, 137, 'BMJ-021', 'Pc', NULL, 'id', '2021-08-17 11:34:36', '2021-08-17 11:34:36'),
(137, 138, 'BMJ-022', 'Pc', NULL, 'id', '2021-08-17 11:36:04', '2021-08-17 11:36:04'),
(138, 139, 'BMJ-023', 'Pc', NULL, 'id', '2021-08-17 11:37:05', '2021-08-17 11:37:05'),
(139, 140, 'BMJ-024', 'Pc', NULL, 'id', '2021-08-17 11:38:16', '2021-08-17 11:38:16'),
(140, 141, 'BMJ-025', 'Pc', NULL, 'id', '2021-08-17 11:39:19', '2021-08-17 11:39:19'),
(141, 142, 'BMJ-026', 'Pc', NULL, 'id', '2021-08-17 11:40:40', '2021-08-17 11:40:40'),
(142, 143, 'BMJ-027', 'Pc', NULL, 'id', '2021-08-17 11:41:41', '2021-08-17 11:41:41'),
(143, 144, 'BMJ-028', 'Pc', NULL, 'id', '2021-08-17 11:42:42', '2021-08-17 11:42:42'),
(144, 145, 'BMJ-029', 'Pc', NULL, 'id', '2021-08-17 11:44:05', '2021-08-17 11:44:05'),
(145, 146, 'BMJ-030', 'Pc', NULL, 'id', '2021-08-17 11:45:14', '2021-08-17 11:45:14'),
(146, 147, 'BMJ-031', 'Pc', NULL, 'id', '2021-08-17 11:47:48', '2021-08-17 11:47:48'),
(147, 148, 'BMJ-032', 'Pc', NULL, 'id', '2021-08-17 11:48:45', '2021-08-17 11:48:45'),
(148, 149, 'BMJ-033', 'Pc', NULL, 'id', '2021-08-17 11:49:55', '2021-08-17 11:49:55'),
(149, 150, 'BMJ-034', 'Pc', NULL, 'id', '2021-08-17 11:52:21', '2021-08-17 11:52:21'),
(150, 151, 'BMJ-035', 'Pc', NULL, 'id', '2021-08-17 11:53:19', '2021-08-17 11:53:19'),
(151, 152, 'BMJ-036', 'Pc', NULL, 'id', '2021-08-17 11:54:17', '2021-08-17 11:54:17'),
(152, 153, 'BMJ-037', 'Pc', NULL, 'id', '2021-08-17 11:55:26', '2021-08-17 11:55:26'),
(153, 154, 'BMJ-038', 'Pc', NULL, 'id', '2021-08-17 11:58:10', '2021-08-17 11:58:10'),
(154, 155, 'BMJ-039', 'Pc', NULL, 'id', '2021-08-17 11:59:36', '2021-08-17 11:59:36'),
(155, 156, 'BMJ-040', 'Pc', NULL, 'id', '2021-08-17 12:00:29', '2021-08-17 12:00:29'),
(156, 157, 'BMJ-041', 'Pc', NULL, 'id', '2021-08-17 12:02:11', '2021-08-17 12:02:11'),
(157, 158, 'BMJ-042', 'Pc', NULL, 'id', '2021-08-17 12:08:42', '2021-08-17 12:08:42'),
(158, 159, 'BMJ-043', 'Pc', NULL, 'id', '2021-08-17 12:09:50', '2021-08-17 12:09:50'),
(159, 160, 'KDC-001', 'Pc', NULL, 'id', '2021-08-17 12:15:28', '2021-08-17 12:15:28'),
(160, 161, 'KDC-002', 'Pc', NULL, 'id', '2021-08-17 12:16:21', '2021-08-17 12:16:21'),
(161, 162, 'KDC-003', 'Pc', NULL, 'id', '2021-08-17 12:17:13', '2021-08-17 12:17:13'),
(162, 163, 'KDC-004', 'Pc', NULL, 'id', '2021-08-17 12:18:08', '2021-08-17 12:18:08'),
(163, 164, 'KDC-005', 'Pc', NULL, 'id', '2021-08-17 12:19:37', '2021-08-17 12:19:37'),
(164, 165, 'KDC-006', 'Pc', NULL, 'id', '2021-08-17 12:20:37', '2021-08-17 12:20:37'),
(165, 166, 'KDC-007', 'Pc', NULL, 'id', '2021-08-17 12:21:42', '2021-08-17 12:21:42'),
(166, 167, 'KDC-008', 'Pc', NULL, 'id', '2021-08-17 12:22:37', '2021-08-17 12:22:37'),
(167, 168, 'KDC-009', 'Pc', NULL, 'id', '2021-08-17 12:23:49', '2021-08-17 12:23:49'),
(168, 169, 'KDC-010', 'Pc', NULL, 'id', '2021-08-17 12:24:57', '2021-08-17 12:24:57'),
(169, 171, 'KDC-012', 'Pc', NULL, 'id', '2021-08-17 12:27:05', '2021-08-17 12:27:05'),
(170, 172, 'KDC-013', 'Pc', NULL, 'id', '2021-08-17 12:28:33', '2021-08-17 12:28:33'),
(171, 173, 'KDC-014', 'Pc', NULL, 'id', '2021-08-17 12:29:37', '2021-08-17 12:29:37'),
(172, 174, 'KDC-015', 'Pc', NULL, 'id', '2021-08-17 12:30:32', '2021-08-17 12:30:32'),
(173, 175, 'KDC-016', 'Pc', NULL, 'id', '2021-08-17 12:31:23', '2021-08-17 12:31:23'),
(174, 170, 'KDC-011', 'Pc', NULL, 'id', '2021-08-17 12:34:06', '2021-08-17 12:34:06'),
(175, 176, 'KDC-017', 'Pc', NULL, 'id', '2021-08-18 07:38:59', '2021-08-18 07:38:59'),
(176, 177, 'KDC-018', 'Pc', NULL, 'id', '2021-08-18 07:40:00', '2021-08-18 07:40:00'),
(177, 178, 'KDC-019', 'Pc', NULL, 'id', '2021-08-18 07:42:55', '2021-08-18 07:42:55'),
(178, 179, 'KDC-020', 'Pc', NULL, 'id', '2021-08-18 07:48:13', '2021-08-18 07:48:13'),
(179, 180, 'KDC-021', 'Pc', NULL, 'id', '2021-08-18 07:53:45', '2021-08-18 07:53:45'),
(180, 181, 'KDC-022', 'Pc', NULL, 'id', '2021-08-18 08:00:14', '2021-08-18 08:00:14'),
(181, 182, 'KDC-023', 'Pc', NULL, 'id', '2021-08-18 08:19:37', '2021-08-18 08:19:37'),
(182, 183, 'KDC-024', 'Pc', NULL, 'id', '2021-08-18 08:20:49', '2021-08-18 08:20:49'),
(183, 184, 'KDC-025', 'Pc', NULL, 'id', '2021-08-18 08:30:49', '2021-08-18 08:30:49'),
(184, 185, 'KDC-026', 'Pc', NULL, 'id', '2021-08-18 08:33:00', '2021-08-18 08:33:00'),
(185, 186, 'KDC-027', 'Pc', NULL, 'id', '2021-08-18 08:34:16', '2021-08-18 08:34:16'),
(186, 187, 'KDC-028', 'Pc', NULL, 'id', '2021-08-18 08:35:32', '2021-08-18 08:35:32'),
(187, 188, 'PCB-001', 'Pc', NULL, 'id', '2021-08-18 08:46:26', '2021-08-18 08:46:26'),
(188, 189, 'PCB-002', 'Pc', NULL, 'id', '2021-08-18 08:47:43', '2021-08-18 08:47:43'),
(189, 190, 'PCB-003', 'Pc', NULL, 'id', '2021-08-18 08:50:09', '2021-08-18 08:50:09'),
(190, 191, 'PCB-004', 'Pc', NULL, 'id', '2021-08-18 09:01:50', '2021-08-18 09:01:50'),
(191, 192, 'PCB-005', 'Pc', NULL, 'id', '2021-08-18 09:02:42', '2021-08-18 09:02:42'),
(192, 193, 'PCB-006', 'Pc', NULL, 'id', '2021-08-18 09:03:59', '2021-08-18 09:03:59'),
(193, 194, 'PCB-007', 'Pc', NULL, 'id', '2021-08-18 09:12:29', '2021-08-18 09:12:29'),
(194, 195, 'PCB-008', 'Pc', NULL, 'id', '2021-08-18 09:14:12', '2021-08-18 09:14:12'),
(195, 196, 'PCB-009', 'Pc', NULL, 'id', '2021-08-18 09:15:19', '2021-08-18 09:15:19'),
(196, 197, 'PCB-010', 'Pc', NULL, 'id', '2021-08-18 09:23:52', '2021-08-18 09:23:52'),
(197, 198, 'PCB-011', 'Pc', NULL, 'id', '2021-08-18 09:25:20', '2021-08-18 09:25:20'),
(198, 199, 'PCB-012', 'Pc', NULL, 'id', '2021-08-18 09:26:23', '2021-08-18 09:26:23'),
(199, 200, 'PCB-013', 'Pc', NULL, 'id', '2021-08-18 09:27:20', '2021-08-18 09:27:20'),
(200, 201, 'PCB-014', 'Pc', NULL, 'id', '2021-08-18 09:29:33', '2021-08-18 09:47:12'),
(201, 202, 'PCB-015', 'Pc', NULL, 'id', '2021-08-18 09:51:20', '2021-08-18 09:51:20'),
(202, 203, 'PCB-016', 'Pc', NULL, 'id', '2021-08-18 09:52:23', '2021-08-18 09:52:23'),
(203, 204, 'PCB-017', 'Pc', NULL, 'id', '2021-08-18 09:53:57', '2021-08-18 09:53:57'),
(204, 205, 'PCB-018', 'Pc', NULL, 'id', '2021-08-18 09:54:55', '2021-08-18 09:54:55'),
(205, 206, 'PCB-019', 'Pc', NULL, 'id', '2021-08-18 09:55:44', '2021-08-18 09:55:44'),
(206, 207, 'PCB-020', 'Pc', NULL, 'id', '2021-08-18 10:02:34', '2021-08-18 10:02:34'),
(207, 208, 'PCB-021', 'Pc', NULL, 'id', '2021-08-18 10:04:23', '2021-08-18 10:04:23'),
(208, 209, 'PCB-022', 'Pc', NULL, 'id', '2021-08-18 10:05:20', '2021-08-18 10:05:20'),
(209, 210, 'PCB-023', 'Pc', NULL, 'id', '2021-08-18 10:06:24', '2021-08-18 10:06:24'),
(210, 211, 'PCB-024', 'Pc', NULL, 'id', '2021-08-18 10:16:51', '2021-08-18 10:18:34'),
(211, 212, 'PCB-025', 'Pc', NULL, 'id', '2021-08-18 10:22:48', '2021-08-18 10:22:48'),
(212, 213, 'PCB-026', 'Pc', NULL, 'id', '2021-08-18 10:24:06', '2021-08-18 10:24:06'),
(213, 214, 'PCB-027', 'Pc', NULL, 'id', '2021-08-18 10:25:04', '2021-08-18 10:25:04'),
(214, 215, 'PCB-028', 'Pc', NULL, 'id', '2021-08-18 10:26:31', '2021-08-18 10:26:31'),
(215, 216, 'PCB-029', 'Pc', NULL, 'id', '2021-08-18 10:40:14', '2021-08-18 10:40:14'),
(216, 217, 'PCB-030', 'Pc', NULL, 'id', '2021-08-18 10:43:22', '2021-08-18 10:43:22'),
(217, 218, 'PCB-031', 'Pc', NULL, 'id', '2021-08-18 10:45:48', '2021-08-18 10:45:48'),
(218, 219, 'PCB-032', 'Pc', NULL, 'id', '2021-08-18 10:46:55', '2021-08-18 10:46:55'),
(219, 220, 'PCB-033', 'Pc', NULL, 'id', '2021-08-18 10:49:24', '2021-08-18 10:49:24'),
(220, 221, 'PCB-034', 'Pc', NULL, 'id', '2021-08-18 10:50:18', '2021-08-18 10:50:18'),
(221, 222, 'PCB-035', 'Pc', NULL, 'id', '2021-08-18 10:52:17', '2021-08-18 10:52:17'),
(222, 223, 'PCL-001', 'Pc', NULL, 'id', '2021-08-18 11:09:19', '2021-08-18 11:09:19'),
(223, 224, 'PCL-002', 'Pc', NULL, 'id', '2021-08-18 11:10:11', '2021-08-18 11:10:11'),
(224, 225, 'PCL-003', 'Pc', NULL, 'id', '2021-08-18 11:11:28', '2021-08-18 11:11:28'),
(225, 226, 'PCL-004', 'Pc', NULL, 'id', '2021-08-18 11:12:36', '2021-08-18 11:12:36'),
(226, 227, 'PCL-005', 'Pc', NULL, 'id', '2021-08-18 11:13:30', '2021-08-18 11:13:30'),
(227, 228, 'PCL-006', 'Pc', NULL, 'id', '2021-08-18 11:14:21', '2021-08-18 11:14:21'),
(228, 229, 'PCL-006', 'Pc', NULL, 'id', '2021-08-18 11:15:07', '2021-08-18 11:15:07'),
(229, 230, 'PCL-007', 'Pc', NULL, 'id', '2021-08-18 11:15:53', '2021-08-18 11:15:53'),
(230, 231, 'PCL-009', 'Pc', NULL, 'id', '2021-08-18 11:16:49', '2021-08-18 11:16:49'),
(231, 232, 'PCL-010', 'Pc', NULL, 'id', '2021-08-18 11:17:56', '2021-08-18 11:17:56'),
(232, 233, 'PCL-011', 'Pc', NULL, 'id', '2021-08-18 11:18:48', '2021-08-18 11:18:48'),
(233, 234, 'PCL-012', 'Pc', NULL, 'id', '2021-08-18 11:19:52', '2021-08-18 11:19:52'),
(234, 235, 'PCL-013', 'Pc', NULL, 'id', '2021-08-18 11:20:43', '2021-08-18 11:20:43'),
(235, 236, 'PCL-014', 'Pc', NULL, 'id', '2021-08-18 11:22:26', '2021-08-18 11:22:26'),
(236, 237, 'PCL-024', 'Pc', NULL, 'id', '2021-08-18 11:23:16', '2021-08-18 12:20:58'),
(237, 238, 'PCL-015', 'Pc', NULL, 'id', '2021-08-18 11:24:18', '2021-08-18 11:53:53'),
(238, 239, 'PCL-016', 'Pc', NULL, 'id', '2021-08-18 11:25:28', '2021-08-18 11:56:55'),
(239, 240, 'PCL-017', 'Pc', NULL, 'id', '2021-08-18 11:26:26', '2021-08-18 11:59:12'),
(240, 241, 'PCL-018', 'Pc', NULL, 'id', '2021-08-18 11:27:21', '2021-08-18 12:00:52'),
(241, 242, 'PCL-019', 'Pc', NULL, 'id', '2021-08-18 11:28:07', '2021-08-18 12:02:54'),
(242, 243, 'PCL-020', 'Pc', NULL, 'id', '2021-08-18 11:28:52', '2021-08-18 12:04:59'),
(243, 244, 'PCL-021', 'Pc', NULL, 'id', '2021-08-18 11:29:44', '2021-08-18 12:06:57'),
(244, 245, 'PCL-022', 'Pc', NULL, 'id', '2021-08-18 11:30:35', '2021-08-18 12:16:25'),
(245, 246, 'PCL-023', 'Pc', NULL, 'id', '2021-08-18 11:31:28', '2021-08-18 12:18:43'),
(246, 247, 'PCL-025', 'Pc', NULL, 'id', '2021-08-18 11:39:49', '2021-08-18 11:39:49'),
(247, 248, 'PCL-025', 'Pc', NULL, 'id', '2021-08-18 11:45:03', '2021-08-18 11:45:03'),
(248, 249, 'PCL-026', 'Pc', NULL, 'id', '2021-08-18 11:46:49', '2021-08-18 11:46:49'),
(249, 250, 'PCL-027', 'Pc', NULL, 'id', '2021-08-18 11:48:00', '2021-08-18 11:48:00'),
(250, 251, 'PCL-028', 'Pc', NULL, 'id', '2021-08-18 12:47:23', '2021-08-18 12:47:23'),
(251, 252, 'PCL-029', 'Pc', NULL, 'id', '2021-08-18 13:01:30', '2021-08-18 13:01:30'),
(252, 253, 'PCL-030', 'Pc', NULL, 'id', '2021-08-18 13:02:30', '2021-08-18 13:02:30'),
(253, 254, 'PCL-031', 'Pc', NULL, 'id', '2021-08-18 13:04:05', '2021-08-18 13:04:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `proxypay_payments`
--

CREATE TABLE `proxypay_payments` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reference_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(25,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `comment` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `viewed` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Manager', '[\"1\",\"2\",\"4\"]', '2018-10-10 04:39:47', '2018-10-10 04:51:37'),
(2, 'Accountant', '[\"2\",\"3\"]', '2018-10-10 04:52:09', '2018-10-10 04:52:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_translations`
--

CREATE TABLE `role_translations` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lang` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `searches`
--

CREATE TABLE `searches` (
  `id` int(11) NOT NULL,
  `query` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sellers`
--

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `verification_status` int(1) NOT NULL DEFAULT '0',
  `verification_info` longtext COLLATE utf8_unicode_ci,
  `cash_on_delivery_status` int(1) NOT NULL DEFAULT '0',
  `admin_to_pay` double(20,2) NOT NULL DEFAULT '0.00',
  `bank_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_acc_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bank_routing_no` int(50) DEFAULT NULL,
  `bank_payment_status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sellers`
--

INSERT INTO `sellers` (`id`, `user_id`, `verification_status`, `verification_info`, `cash_on_delivery_status`, `admin_to_pay`, `bank_name`, `bank_acc_name`, `bank_acc_no`, `bank_routing_no`, `bank_payment_status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '[{\"type\":\"text\",\"label\":\"Name\",\"value\":\"Mr. Seller\"},{\"type\":\"select\",\"label\":\"Marital Status\",\"value\":\"Married\"},{\"type\":\"multi_select\",\"label\":\"Company\",\"value\":\"[\\\"Company\\\"]\"},{\"type\":\"select\",\"label\":\"Gender\",\"value\":\"Male\"},{\"type\":\"file\",\"label\":\"Image\",\"value\":\"uploads\\/verification_form\\/CRWqFifcbKqibNzllBhEyUSkV6m1viknGXMEhtiW.png\"}]', 1, 0.00, NULL, NULL, NULL, NULL, 0, '2018-10-07 04:42:57', '2021-08-10 15:58:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `seller_withdraw_requests`
--

CREATE TABLE `seller_withdraw_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` double(20,2) DEFAULT NULL,
  `message` longtext COLLATE utf8_unicode_ci,
  `status` int(1) DEFAULT NULL,
  `viewed` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` int(11) NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `revisit` int(11) NOT NULL,
  `sitemap_link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `keyword`, `author`, `revisit`, `sitemap_link`, `description`, `created_at`, `updated_at`) VALUES
(1, 'toko bunga, toko bunga murah, toko bunga termurah, toko bunga terbaik, toko bunga jakarta, bunga papan, bunga papan murah, bunga papan jakarta, toko bunga online', 'Bunda Florist', 11, 'https://www.bundaflorist.id', 'Bunda Florist adalah distributor toko bunga terpercaya, melayani order bunga 24 jam. kami melayani penjualan bunga online di kota kota besar di indonesia dengan harga terjangkau dan product berkualitas', '2021-08-15 07:54:58', '2019-08-08 02:56:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sliders` longtext COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `pick_up_point_id` text COLLATE utf8_unicode_ci,
  `shipping_cost` double(20,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `shops`
--

INSERT INTO `shops` (`id`, `user_id`, `name`, `logo`, `sliders`, `phone`, `address`, `facebook`, `google`, `twitter`, `youtube`, `slug`, `meta_title`, `meta_description`, `pick_up_point_id`, `shipping_cost`, `created_at`, `updated_at`) VALUES
(1, 3, 'Demo Seller Shop', NULL, NULL, NULL, 'House : Demo, Road : Demo, Section : Demo', 'www.facebook.com', 'www.google.com', 'www.twitter.com', 'www.youtube.com', 'Demo-Seller-Shop-1', 'Demo Seller Shop Title', 'Demo description', NULL, 0.00, '2018-11-27 10:23:13', '2019-08-06 06:43:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` int(1) NOT NULL DEFAULT '1',
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sliders`
--

INSERT INTO `sliders` (`id`, `photo`, `published`, `link`, `created_at`, `updated_at`) VALUES
(7, 'uploads/sliders/slider-image.jpg', 1, NULL, '2019-03-12 05:58:05', '2019-03-12 05:58:05'),
(8, 'uploads/sliders/slider-image.jpg', 1, NULL, '2019-03-12 05:58:12', '2019-03-12 05:58:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `taxes`
--

CREATE TABLE `taxes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 = Inactive, 1 = Active',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `tax_status`, `created_at`, `updated_at`) VALUES
(3, 'Pajak', 1, '2021-03-07 11:45:33', '2021-08-06 09:41:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `code` int(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `details` longtext COLLATE utf8_unicode_ci,
  `files` longtext COLLATE utf8_unicode_ci,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'pending',
  `viewed` int(1) NOT NULL DEFAULT '0',
  `client_viewed` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply` longtext COLLATE utf8_unicode_ci NOT NULL,
  `files` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `translations`
--

CREATE TABLE `translations` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_key` text COLLATE utf8_unicode_ci,
  `lang_value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `translations`
--

INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(3, 'en', 'All Category', 'All Category', '2020-11-02 07:40:38', '2021-02-09 06:52:36'),
(4, 'en', 'All', 'All', '2020-11-02 07:40:38', '2021-02-09 06:52:36'),
(5, 'en', 'Flash Sale', 'Flash Sale', '2020-11-02 07:40:40', '2021-02-09 06:52:36'),
(6, 'en', 'View More', 'View More', '2020-11-02 07:40:40', '2021-02-09 06:52:36'),
(7, 'en', 'Add to wishlist', 'Add to wishlist', '2020-11-02 07:40:40', '2021-02-09 06:52:36'),
(8, 'en', 'Add to compare', 'Add to compare', '2020-11-02 07:40:40', '2021-02-09 06:52:36'),
(9, 'en', 'Add to cart', 'Add to cart', '2020-11-02 07:40:40', '2021-02-09 06:52:36'),
(10, 'en', 'Club Point', 'Club Point', '2020-11-02 07:40:40', '2021-02-09 06:52:36'),
(11, 'en', 'Classified Ads', 'Classified Ads', '2020-11-02 07:40:40', '2021-02-09 06:52:36'),
(13, 'en', 'Used', 'Used', '2020-11-02 07:40:40', '2021-02-09 06:52:36'),
(14, 'en', 'Top 10 Categories', 'Top 10 Categories', '2020-11-02 07:40:40', '2021-02-09 06:52:36'),
(15, 'en', 'View All Categories', 'View All Categories', '2020-11-02 07:40:40', '2021-02-09 06:52:36'),
(16, 'en', 'Top 10 Brands', 'Top 10 Brands', '2020-11-02 07:40:40', '2021-02-09 06:52:36'),
(17, 'en', 'View All Brands', 'View All Brands', '2020-11-02 07:40:40', '2021-02-09 06:52:36'),
(43, 'en', 'Terms & conditions', 'Terms & conditions', '2020-11-02 07:40:41', '2021-02-09 06:52:36'),
(51, 'en', 'Best Selling', 'Best Selling', '2020-11-02 07:40:42', '2021-02-09 06:52:36'),
(53, 'en', 'Top 20', 'Top 20', '2020-11-02 07:40:42', '2021-02-09 06:52:36'),
(55, 'en', 'Featured Products', 'Featured Products', '2020-11-02 07:40:42', '2021-02-09 06:52:36'),
(56, 'en', 'Best Sellers', 'Best Sellers', '2020-11-02 07:40:43', '2021-02-09 06:52:36'),
(57, 'en', 'Visit Store', 'Visit Store', '2020-11-02 07:40:43', '2021-02-09 06:52:36'),
(58, 'en', 'Popular Suggestions', 'Popular Suggestions', '2020-11-02 07:46:59', '2021-02-09 06:52:36'),
(59, 'en', 'Category Suggestions', 'Category Suggestions', '2020-11-02 07:46:59', '2021-02-09 06:52:36'),
(62, 'en', 'Automobile & Motorcycle', 'Automobile & Motorcycle', '2020-11-02 07:47:01', '2021-02-09 06:52:36'),
(63, 'en', 'Price range', 'Price range', '2020-11-02 07:47:01', '2021-02-09 06:52:36'),
(64, 'en', 'Filter by color', 'Filter by color', '2020-11-02 07:47:02', '2021-02-09 06:52:36'),
(65, 'en', 'Home', 'Home', '2020-11-02 07:47:02', '2021-02-09 06:52:36'),
(67, 'en', 'Newest', 'Newest', '2020-11-02 07:47:02', '2021-02-09 06:52:36'),
(68, 'en', 'Oldest', 'Oldest', '2020-11-02 07:47:02', '2021-02-09 06:52:36'),
(69, 'en', 'Price low to high', 'Price low to high', '2020-11-02 07:47:02', '2021-02-09 06:52:36'),
(70, 'en', 'Price high to low', 'Price high to low', '2020-11-02 07:47:02', '2021-02-09 06:52:36'),
(71, 'en', 'Brands', 'Brands', '2020-11-02 07:47:02', '2021-02-09 06:52:36'),
(72, 'en', 'All Brands', 'All Brands', '2020-11-02 07:47:02', '2021-02-09 06:52:36'),
(74, 'en', 'All Sellers', 'All Sellers', '2020-11-02 07:47:02', '2021-02-09 06:52:36'),
(78, 'en', 'Inhouse product', 'Inhouse product', '2020-11-02 08:18:03', '2021-02-09 06:52:36'),
(79, 'en', 'Message Seller', 'Message Seller', '2020-11-02 08:18:03', '2021-02-09 06:52:36'),
(80, 'en', 'Price', 'Price', '2020-11-02 08:18:03', '2021-02-09 06:52:36'),
(81, 'en', 'Discount Price', 'Discount Price', '2020-11-02 08:18:03', '2021-02-09 06:52:36'),
(82, 'en', 'Color', 'Color', '2020-11-02 08:18:03', '2021-02-09 06:52:36'),
(83, 'en', 'Quantity', 'Quantity', '2020-11-02 08:18:03', '2021-02-09 06:52:36'),
(84, 'en', 'available', 'available', '2020-11-02 08:18:03', '2021-02-09 06:52:36'),
(85, 'en', 'Total Price', 'Total Price', '2020-11-02 08:18:03', '2021-02-09 06:52:36'),
(86, 'en', 'Out of Stock', 'Out of Stock', '2020-11-02 08:18:03', '2021-02-09 06:52:36'),
(87, 'en', 'Refund', 'Refund', '2020-11-02 08:18:03', '2021-02-09 06:52:36'),
(88, 'en', 'Share', 'Share', '2020-11-02 08:18:03', '2021-02-09 06:52:36'),
(89, 'en', 'Sold By', 'Sold By', '2020-11-02 08:18:03', '2021-02-09 06:52:36'),
(90, 'en', 'customer reviews', 'customer reviews', '2020-11-02 08:18:03', '2021-02-09 06:52:36'),
(91, 'en', 'Top Selling Products', 'Top Selling Products', '2020-11-02 08:18:03', '2021-02-09 06:52:36'),
(92, 'en', 'Description', 'Description', '2020-11-02 08:18:03', '2021-02-09 06:52:36'),
(93, 'en', 'Video', 'Video', '2020-11-02 08:18:03', '2021-02-09 06:52:36'),
(94, 'en', 'Reviews', 'Reviews', '2020-11-02 08:18:03', '2021-02-09 06:52:36'),
(95, 'en', 'Download', 'Download', '2020-11-02 08:18:03', '2021-02-09 06:52:37'),
(96, 'en', 'There have been no reviews for this product yet.', 'There have been no reviews for this product yet.', '2020-11-02 08:18:03', '2021-02-09 06:52:37'),
(97, 'en', 'Related products', 'Related products', '2020-11-02 08:18:03', '2021-02-09 06:52:37'),
(98, 'en', 'Any query about this product', 'Any query about this product', '2020-11-02 08:18:03', '2021-02-09 06:52:37'),
(99, 'en', 'Product Name', 'Product Name', '2020-11-02 08:18:03', '2021-02-09 06:52:37'),
(100, 'en', 'Your Question', 'Your Question', '2020-11-02 08:18:03', '2021-02-09 06:52:37'),
(101, 'en', 'Send', 'Send', '2020-11-02 08:18:03', '2021-02-09 06:52:37'),
(103, 'en', 'Use country code before number', 'Use country code before number', '2020-11-02 08:18:03', '2021-02-09 06:52:37'),
(105, 'en', 'Remember Me', 'Remember Me', '2020-11-02 08:18:03', '2021-02-09 06:52:37'),
(107, 'en', 'Dont have an account?', 'Dont have an account?', '2020-11-02 08:18:04', '2021-02-09 06:52:37'),
(108, 'en', 'Register Now', 'Register Now', '2020-11-02 08:18:04', '2021-02-09 06:52:37'),
(109, 'en', 'Or Login With', 'Or Login With', '2020-11-02 08:18:04', '2021-02-09 06:52:37'),
(110, 'en', 'oops..', 'oops..', '2020-11-02 10:29:04', '2021-02-09 06:52:37'),
(111, 'en', 'This item is out of stock!', 'This item is out of stock!', '2020-11-02 10:29:04', '2021-02-09 06:52:37'),
(112, 'en', 'Back to shopping', 'Back to shopping', '2020-11-02 10:29:04', '2021-02-09 06:52:37'),
(113, 'en', 'Login to your account.', 'Login to your account.', '2020-11-02 11:27:41', '2021-02-09 06:52:37'),
(115, 'en', 'Purchase History', 'Purchase History', '2020-11-02 11:27:53', '2021-02-09 06:52:37'),
(116, 'en', 'New', 'New', '2020-11-02 11:27:53', '2021-02-09 06:52:37'),
(117, 'en', 'Downloads', 'Downloads', '2020-11-02 11:27:53', '2021-02-09 06:52:37'),
(118, 'en', 'Sent Refund Request', 'Sent Refund Request', '2020-11-02 11:27:53', '2021-02-09 06:52:37'),
(119, 'en', 'Product Bulk Upload', 'Product Bulk Upload', '2020-11-02 11:27:53', '2021-02-09 06:52:37'),
(123, 'en', 'Orders', 'Orders', '2020-11-02 11:27:53', '2021-02-09 06:52:37'),
(124, 'en', 'Recieved Refund Request', 'Recieved Refund Request', '2020-11-02 11:27:53', '2021-02-09 06:52:37'),
(126, 'en', 'Shop Setting', 'Shop Setting', '2020-11-02 11:27:53', '2021-02-09 06:52:37'),
(127, 'en', 'Payment History', 'Payment History', '2020-11-02 11:27:53', '2021-02-09 06:52:37'),
(128, 'en', 'Money Withdraw', 'Money Withdraw', '2020-11-02 11:27:53', '2021-02-09 06:52:37'),
(129, 'en', 'Conversations', 'Conversations', '2020-11-02 11:27:53', '2021-02-09 06:52:37'),
(130, 'en', 'My Wallet', 'My Wallet', '2020-11-02 11:27:53', '2021-02-09 06:52:37'),
(131, 'en', 'Earning Points', 'Earning Points', '2020-11-02 11:27:53', '2021-02-09 06:52:37'),
(132, 'en', 'Support Ticket', 'Support Ticket', '2020-11-02 11:27:53', '2021-02-09 06:52:37'),
(133, 'en', 'Manage Profile', 'Manage Profile', '2020-11-02 11:27:53', '2021-02-09 06:52:37'),
(134, 'en', 'Sold Amount', 'Sold Amount', '2020-11-02 11:27:53', '2021-02-09 06:52:37'),
(135, 'en', 'Your sold amount (current month)', 'Your sold amount (current month)', '2020-11-02 11:27:53', '2021-02-09 06:52:37'),
(136, 'en', 'Total Sold', 'Total Sold', '2020-11-02 11:27:54', '2021-02-09 06:52:37'),
(137, 'en', 'Last Month Sold', 'Last Month Sold', '2020-11-02 11:27:54', '2021-02-09 06:52:37'),
(138, 'en', 'Total sale', 'Total sale', '2020-11-02 11:27:54', '2021-02-09 06:52:37'),
(139, 'en', 'Total earnings', 'Total earnings', '2020-11-02 11:27:54', '2021-02-09 06:52:37'),
(140, 'en', 'Successful orders', 'Successful orders', '2020-11-02 11:27:54', '2021-02-09 06:52:37'),
(141, 'en', 'Total orders', 'Total orders', '2020-11-02 11:27:54', '2021-02-09 06:52:37'),
(142, 'en', 'Pending orders', 'Pending orders', '2020-11-02 11:27:54', '2021-02-09 06:52:37'),
(143, 'en', 'Cancelled orders', 'Cancelled orders', '2020-11-02 11:27:54', '2021-02-09 06:52:37'),
(145, 'en', 'Product', 'Product', '2020-11-02 11:27:55', '2021-02-09 06:52:37'),
(147, 'en', 'Purchased Package', 'Purchased Package', '2020-11-02 11:27:55', '2021-02-09 06:52:37'),
(148, 'en', 'Package Not Found', 'Package Not Found', '2020-11-02 11:27:55', '2021-02-09 06:52:37'),
(149, 'en', 'Upgrade Package', 'Upgrade Package', '2020-11-02 11:27:55', '2021-02-09 06:52:37'),
(150, 'en', 'Shop', 'Shop', '2020-11-02 11:27:55', '2021-02-09 06:52:37'),
(151, 'en', 'Manage & organize your shop', 'Manage & organize your shop', '2020-11-02 11:27:55', '2021-02-09 06:52:37'),
(152, 'en', 'Go to setting', 'Go to setting', '2020-11-02 11:27:55', '2021-02-09 06:52:37'),
(153, 'en', 'Payment', 'Payment', '2020-11-02 11:27:55', '2021-02-09 06:52:37'),
(154, 'en', 'Configure your payment method', 'Configure your payment method', '2020-11-02 11:27:55', '2021-02-09 06:52:37'),
(156, 'en', 'My Panel', 'My Panel', '2020-11-02 11:27:55', '2021-02-09 06:52:37'),
(158, 'en', 'Item has been added to wishlist', 'Item has been added to wishlist', '2020-11-02 11:27:55', '2021-02-09 06:52:37'),
(159, 'en', 'My Points', 'My Points', '2020-11-02 11:28:15', '2021-02-09 06:52:37'),
(160, 'en', ' Points', 'Points', '2020-11-02 11:28:15', '2021-02-09 06:52:37'),
(161, 'en', 'Wallet Money', 'Wallet Money', '2020-11-02 11:28:16', '2021-02-09 06:52:37'),
(162, 'en', 'Exchange Rate', 'Exchange Rate', '2020-11-02 11:28:16', '2021-02-09 06:52:37'),
(163, 'en', 'Point Earning history', 'Point Earning history', '2020-11-02 11:28:16', '2021-02-09 06:52:37'),
(164, 'en', 'Date', 'Date', '2020-11-02 11:28:16', '2021-02-09 06:52:37'),
(165, 'en', 'Points', 'Points', '2020-11-02 11:28:16', '2021-02-09 06:52:37'),
(166, 'en', 'Converted', 'Converted', '2020-11-02 11:28:16', '2021-02-09 06:52:37'),
(167, 'en', 'Action', 'Action', '2020-11-02 11:28:16', '2021-02-09 06:52:37'),
(168, 'en', 'No history found.', 'No history found.', '2020-11-02 11:28:16', '2021-02-09 06:52:37'),
(169, 'en', 'Convert has been done successfully Check your Wallets', 'Convert has been done successfully Check your Wallets', '2020-11-02 11:28:16', '2021-02-09 06:52:37'),
(170, 'en', 'Something went wrong', 'Something went wrong', '2020-11-02 11:28:16', '2021-02-09 06:52:37'),
(171, 'en', 'Remaining Uploads', 'Remaining Uploads', '2020-11-02 11:37:13', '2021-02-09 06:52:37'),
(172, 'en', 'No Package Found', 'No Package Found', '2020-11-02 11:37:13', '2021-02-09 06:52:37'),
(173, 'en', 'Search product', 'Search product', '2020-11-02 11:37:13', '2021-02-09 06:52:37'),
(174, 'en', 'Name', 'Name', '2020-11-02 11:37:13', '2021-02-09 06:52:37'),
(176, 'en', 'Current Qty', 'Current Qty', '2020-11-02 11:37:13', '2021-02-09 06:52:37'),
(177, 'en', 'Base Price', 'Base Price', '2020-11-02 11:37:13', '2021-02-09 06:52:37'),
(178, 'en', 'Published', 'Published', '2020-11-02 11:37:13', '2021-02-09 06:52:37'),
(179, 'en', 'Featured', 'Featured', '2020-11-02 11:37:13', '2021-02-09 06:52:37'),
(180, 'en', 'Options', 'Options', '2020-11-02 11:37:13', '2021-02-09 06:52:37'),
(181, 'en', 'Edit', 'Edit', '2020-11-02 11:37:13', '2021-02-09 06:52:37'),
(182, 'en', 'Duplicate', 'Duplicate', '2020-11-02 11:37:13', '2021-02-09 06:52:37'),
(184, 'en', '1. Download the skeleton file and fill it with data.', '1. Download the skeleton file and fill it with data.', '2020-11-02 11:37:20', '2021-02-09 06:52:37'),
(185, 'en', '2. You can download the example file to understand how the data must be filled.', '2. You can download the example file to understand how the data must be filled.', '2020-11-02 11:37:20', '2021-02-09 06:52:37'),
(186, 'en', '3. Once you have downloaded and filled the skeleton file, upload it in the form below and submit.', '3. Once you have downloaded and filled the skeleton file, upload it in the form below and submit.', '2020-11-02 11:37:20', '2021-02-09 06:52:37'),
(187, 'en', '4. After uploading products you need to edit them and set products images and choices.', '4. After uploading products you need to edit them and set products images and choices.', '2020-11-02 11:37:20', '2021-02-09 06:52:37'),
(188, 'en', 'Download CSV', 'Download CSV', '2020-11-02 11:37:20', '2021-02-09 06:52:37'),
(189, 'en', '1. Category,Sub category,Sub Sub category and Brand should be in numerical ids.', '1. Category,Sub category,Sub Sub category and Brand should be in numerical ids.', '2020-11-02 11:37:20', '2021-02-09 06:52:37'),
(190, 'en', '2. You can download the pdf to get Category,Sub category,Sub Sub category and Brand id.', '2. You can download the pdf to get Category,Sub category,Sub Sub category and Brand id.', '2020-11-02 11:37:20', '2021-02-09 06:52:37'),
(191, 'en', 'Download Category', 'Download Category', '2020-11-02 11:37:20', '2021-02-09 06:52:37'),
(192, 'en', 'Download Sub category', 'Download Sub category', '2020-11-02 11:37:20', '2021-02-09 06:52:37'),
(193, 'en', 'Download Sub Sub category', 'Download Sub Sub category', '2020-11-02 11:37:20', '2021-02-09 06:52:37'),
(194, 'en', 'Download Brand', 'Download Brand', '2020-11-02 11:37:20', '2021-02-09 06:52:37'),
(195, 'en', 'Upload CSV File', 'Upload CSV File', '2020-11-02 11:37:20', '2021-02-09 06:52:37'),
(196, 'en', 'CSV', 'CSV', '2020-11-02 11:37:20', '2021-02-09 06:52:37'),
(197, 'en', 'Choose CSV File', 'Choose CSV File', '2020-11-02 11:37:20', '2021-02-09 06:52:37'),
(198, 'en', 'Upload', 'Upload', '2020-11-02 11:37:20', '2021-02-09 06:52:37'),
(199, 'en', 'Add New Digital Product', 'Add New Digital Product', '2020-11-02 11:37:25', '2021-02-09 06:52:37'),
(200, 'en', 'Available Status', 'Available Status', '2020-11-02 11:37:29', '2021-02-09 06:52:37'),
(201, 'en', 'Admin Status', 'Admin Status', '2020-11-02 11:37:29', '2021-02-09 06:52:37'),
(202, 'en', 'Pending Balance', 'Pending Balance', '2020-11-02 11:38:07', '2021-02-09 06:52:37'),
(203, 'en', 'Send Withdraw Request', 'Send Withdraw Request', '2020-11-02 11:38:07', '2021-02-09 06:52:37'),
(204, 'en', 'Withdraw Request history', 'Withdraw Request history', '2020-11-02 11:38:07', '2021-02-09 06:52:37'),
(205, 'en', 'Amount', 'Amount', '2020-11-02 11:38:07', '2021-02-09 06:52:37'),
(206, 'en', 'Status', 'Status', '2020-11-02 11:38:07', '2021-02-09 06:52:37'),
(207, 'en', 'Message', 'Message', '2020-11-02 11:38:07', '2021-02-09 06:52:37'),
(208, 'en', 'Send A Withdraw Request', 'Send A Withdraw Request', '2020-11-02 11:38:07', '2021-02-09 06:52:37'),
(209, 'en', 'Basic Info', 'Basic Info', '2020-11-02 11:38:13', '2021-02-09 06:52:37'),
(211, 'en', 'Your Phone', 'Your Phone', '2020-11-02 11:38:13', '2021-02-09 06:52:37'),
(212, 'en', 'Photo', 'Photo', '2020-11-02 11:38:13', '2021-02-09 06:52:37'),
(213, 'en', 'Browse', 'Browse', '2020-11-02 11:38:13', '2021-02-09 06:52:37'),
(215, 'en', 'Your Password', 'Your Password', '2020-11-02 11:38:13', '2021-02-09 06:52:37'),
(216, 'en', 'New Password', 'New Password', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(217, 'en', 'Confirm Password', 'Confirm Password', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(218, 'en', 'Add New Address', 'Add New Address', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(219, 'en', 'Payment Setting', 'Payment Setting', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(220, 'en', 'Cash Payment', 'Cash Payment', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(221, 'en', 'Bank Payment', 'Bank Payment', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(222, 'en', 'Bank Name', 'Bank Name', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(223, 'en', 'Bank Account Name', 'Bank Account Name', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(224, 'en', 'Bank Account Number', 'Bank Account Number', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(225, 'en', 'Bank Routing Number', 'Bank Routing Number', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(226, 'en', 'Update Profile', 'Update Profile', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(227, 'en', 'Change your email', 'Change your email', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(228, 'en', 'Your Email', 'Your Email', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(229, 'en', 'Sending Email...', 'Sending Email...', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(230, 'en', 'Verify', 'Verify', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(231, 'en', 'Update Email', 'Update Email', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(232, 'en', 'New Address', 'New Address', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(233, 'en', 'Your Address', 'Your Address', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(234, 'en', 'Country', 'Country', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(235, 'en', 'Select your country', 'Select your country', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(236, 'en', 'City', 'City', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(237, 'en', 'Your City', 'Your City', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(239, 'en', 'Your Postal Code', 'Your Postal Code', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(240, 'en', '+880', '+880', '2020-11-02 11:38:14', '2020-11-02 11:38:14'),
(241, 'en', 'Save', 'Save', '2020-11-02 11:38:14', '2021-02-09 06:52:37'),
(242, 'en', 'Received Refund Request', 'Received Refund Request', '2020-11-02 11:56:20', '2021-02-09 06:52:37'),
(244, 'en', 'Delete Confirmation', 'Delete Confirmation', '2020-11-02 11:56:20', '2021-02-09 06:52:37'),
(245, 'en', 'Are you sure to delete this?', 'Are you sure to delete this?', '2020-11-02 11:56:21', '2021-02-09 06:52:37'),
(246, 'en', 'Premium Packages for Sellers', 'Premium Packages for Sellers', '2020-11-02 11:57:36', '2021-02-09 06:52:37'),
(247, 'en', 'Product Upload', 'Product Upload', '2020-11-02 11:57:36', '2021-02-09 06:52:37'),
(248, 'en', 'Digital Product Upload', 'Digital Product Upload', '2020-11-02 11:57:36', '2021-02-09 06:52:37'),
(250, 'en', 'Purchase Package', 'Purchase Package', '2020-11-02 11:57:36', '2021-02-09 06:52:37'),
(251, 'en', 'Select Payment Type', 'Select Payment Type', '2020-11-02 11:57:36', '2021-02-09 06:52:37'),
(252, 'en', 'Payment Type', 'Payment Type', '2020-11-02 11:57:36', '2021-02-09 06:52:37'),
(253, 'en', 'Select One', 'Select One', '2020-11-02 11:57:36', '2021-02-09 06:52:37'),
(254, 'en', 'Online payment', 'Online payment', '2020-11-02 11:57:37', '2021-02-09 06:52:37'),
(255, 'en', 'Offline payment', 'Offline payment', '2020-11-02 11:57:37', '2021-02-09 06:52:37'),
(256, 'en', 'Purchase Your Package', 'Purchase Your Package', '2020-11-02 11:57:37', '2021-02-09 06:52:37'),
(258, 'en', 'Paypal', 'Paypal', '2020-11-02 11:57:37', '2021-02-09 06:52:37'),
(259, 'en', 'Stripe', 'Stripe', '2020-11-02 11:57:37', '2021-02-09 06:52:37'),
(260, 'en', 'sslcommerz', 'sslcommerz', '2020-11-02 11:57:37', '2020-11-02 11:57:37'),
(265, 'en', 'Confirm', 'Confirm', '2020-11-02 11:57:37', '2021-02-09 06:52:37'),
(266, 'en', 'Offline Package Payment', 'Offline Package Payment', '2020-11-02 11:57:37', '2021-02-09 06:52:37'),
(267, 'en', 'Transaction ID', 'Transaction ID', '2020-11-02 12:30:12', '2021-02-09 06:52:37'),
(268, 'en', 'Choose image', 'Choose image', '2020-11-02 12:30:12', '2021-02-09 06:52:37'),
(269, 'en', 'Code', 'Code', '2020-11-02 12:42:00', '2021-02-09 06:52:37'),
(270, 'en', 'Delivery Status', 'Delivery Status', '2020-11-02 12:42:00', '2021-02-09 06:52:37'),
(271, 'en', 'Payment Status', 'Payment Status', '2020-11-02 12:42:00', '2021-02-09 06:52:37'),
(272, 'en', 'Paid', 'Paid', '2020-11-02 12:42:00', '2021-02-09 06:52:37'),
(273, 'en', 'Order Details', 'Order Details', '2020-11-02 12:42:00', '2021-02-09 06:52:37'),
(274, 'en', 'Download Invoice', 'Download Invoice', '2020-11-02 12:42:00', '2021-02-09 06:52:37'),
(275, 'en', 'Unpaid', 'Unpaid', '2020-11-02 12:42:00', '2021-02-09 06:52:37'),
(277, 'en', 'Order placed', 'Order placed', '2020-11-02 12:43:59', '2021-02-09 06:52:37'),
(278, 'en', 'Confirmed', 'Confirmed', '2020-11-02 12:43:59', '2021-02-09 06:52:37'),
(279, 'en', 'On delivery', 'On delivery', '2020-11-02 12:43:59', '2021-02-09 06:52:37'),
(280, 'en', 'Delivered', 'Delivered', '2020-11-02 12:43:59', '2021-02-09 06:52:37'),
(281, 'en', 'Order Summary', 'Order Summary', '2020-11-02 12:43:59', '2021-02-09 06:52:37'),
(282, 'en', 'Order Code', 'Order Code', '2020-11-02 12:43:59', '2021-02-09 06:52:37'),
(283, 'en', 'Customer', 'Customer', '2020-11-02 12:43:59', '2021-02-09 06:52:37'),
(287, 'en', 'Total order amount', 'Total order amount', '2020-11-02 12:43:59', '2021-02-09 06:52:37'),
(288, 'en', 'Shipping metdod', 'Shipping metdod', '2020-11-02 12:43:59', '2021-02-09 06:52:37'),
(289, 'en', 'Flat shipping rate', 'Flat shipping rate', '2020-11-02 12:44:00', '2021-02-09 06:52:37'),
(290, 'en', 'Payment metdod', 'Payment metdod', '2020-11-02 12:44:00', '2021-02-09 06:52:37'),
(291, 'en', 'Variation', 'Variation', '2020-11-02 12:44:00', '2021-02-09 06:52:37'),
(292, 'en', 'Delivery Type', 'Delivery Type', '2020-11-02 12:44:00', '2021-02-09 06:52:37'),
(293, 'en', 'Home Delivery', 'Home Delivery', '2020-11-02 12:44:00', '2021-02-09 06:52:37'),
(294, 'en', 'Order Ammount', 'Order Ammount', '2020-11-02 12:44:00', '2021-02-09 06:52:37'),
(295, 'en', 'Subtotal', 'Subtotal', '2020-11-02 12:44:00', '2021-02-09 06:52:37'),
(296, 'en', 'Shipping', 'Shipping', '2020-11-02 12:44:00', '2021-02-09 06:52:37'),
(298, 'en', 'Coupon Discount', 'Coupon Discount', '2020-11-02 12:44:00', '2021-02-09 06:52:37'),
(300, 'en', 'N/A', 'N/A', '2020-11-02 12:44:20', '2021-02-09 06:52:37'),
(301, 'en', 'In stock', 'In stock', '2020-11-02 12:54:52', '2021-02-09 06:52:37'),
(302, 'en', 'Buy Now', 'Buy Now', '2020-11-02 12:54:52', '2021-02-09 06:52:37'),
(303, 'en', 'Item added to your cart!', 'Item added to your cart!', '2020-11-02 12:56:46', '2021-02-09 06:52:37'),
(304, 'en', 'Proceed to Checkout', 'Proceed to Checkout', '2020-11-02 12:56:46', '2021-02-09 06:52:37'),
(305, 'en', 'Cart Items', 'Cart Items', '2020-11-02 12:56:46', '2021-02-09 06:52:37'),
(306, 'en', '1. My Cart', '1. My Cart', '2020-11-02 12:56:46', '2021-02-09 06:52:37'),
(307, 'en', 'View cart', 'View cart', '2020-11-02 12:56:46', '2021-02-09 06:52:37'),
(308, 'en', '2. Shipping info', '2. Shipping info', '2020-11-02 12:56:46', '2021-02-09 06:52:37'),
(309, 'en', 'Checkout', 'Checkout', '2020-11-02 12:56:46', '2021-02-09 06:52:37'),
(310, 'en', '3. Delivery info', '3. Delivery info', '2020-11-02 12:56:46', '2021-02-09 06:52:37'),
(311, 'en', '4. Payment', '4. Payment', '2020-11-02 12:56:46', '2021-02-09 06:52:37'),
(312, 'en', '5. Confirmation', '5. Confirmation', '2020-11-02 12:56:46', '2021-02-09 06:52:37'),
(313, 'en', 'Remove', 'Remove', '2020-11-02 12:56:46', '2021-02-09 06:52:37'),
(314, 'en', 'Return to shop', 'Return to shop', '2020-11-02 12:56:46', '2021-02-09 06:52:37'),
(315, 'en', 'Continue to Shipping', 'Continue to Shipping', '2020-11-02 12:56:46', '2021-02-09 06:52:37'),
(316, 'en', 'Or', 'Or', '2020-11-02 12:56:46', '2021-02-09 06:52:37'),
(317, 'en', 'Guest Checkout', 'Guest Checkout', '2020-11-02 12:56:46', '2021-02-09 06:52:37'),
(318, 'en', 'Continue to Delivery Info', 'Continue to Delivery Info', '2020-11-02 12:57:44', '2021-02-09 06:52:37'),
(319, 'en', 'Postal Code', 'Postal Code', '2020-11-02 13:01:01', '2021-02-09 06:52:37'),
(320, 'en', 'Choose Delivery Type', 'Choose Delivery Type', '2020-11-02 13:01:04', '2021-02-09 06:52:37'),
(321, 'en', 'Local Pickup', 'Local Pickup', '2020-11-02 13:01:04', '2021-02-09 06:52:37'),
(322, 'en', 'Select your nearest pickup point', 'Select your nearest pickup point', '2020-11-02 13:01:04', '2021-02-09 06:52:37'),
(323, 'en', 'Continue to Payment', 'Continue to Payment', '2020-11-02 13:01:04', '2021-02-09 06:52:37'),
(324, 'en', 'Select a payment option', 'Select a payment option', '2020-11-02 13:01:13', '2021-02-09 06:52:37'),
(325, 'en', 'Razorpay', 'Razorpay', '2020-11-02 13:01:13', '2021-02-09 06:52:37'),
(326, 'en', 'Paystack', 'Paystack', '2020-11-02 13:01:13', '2021-02-09 06:52:37'),
(327, 'en', 'VoguePay', 'VoguePay', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(328, 'en', 'payhere', 'payhere', '2020-11-02 13:01:13', '2021-02-09 06:52:37'),
(329, 'en', 'ngenius', 'ngenius', '2020-11-02 13:01:13', '2020-11-02 13:01:13'),
(330, 'en', 'Paytm', 'Paytm', '2020-11-02 13:01:13', '2021-02-09 06:52:37'),
(331, 'en', 'Cash on Delivery', 'Cash on Delivery', '2020-11-02 13:01:13', '2021-02-09 06:52:37'),
(332, 'en', 'Your wallet balance :', 'Your wallet balance :', '2020-11-02 13:01:13', '2021-02-09 06:52:37'),
(333, 'en', 'Insufficient balance', 'Insufficient balance', '2020-11-02 13:01:13', '2021-02-09 06:52:37'),
(334, 'en', 'I agree to the', 'I agree to the', '2020-11-02 13:01:14', '2021-02-09 06:52:37'),
(338, 'en', 'Complete Order', 'Complete Order', '2020-11-02 13:01:14', '2021-02-09 06:52:37'),
(339, 'en', 'Summary', 'Summary', '2020-11-02 13:01:14', '2021-02-09 06:52:37'),
(340, 'en', 'Items', 'Items', '2020-11-02 13:01:14', '2021-02-09 06:52:37'),
(341, 'en', 'Total Club point', 'Total Club point', '2020-11-02 13:01:14', '2021-02-09 06:52:37'),
(342, 'en', 'Total Shipping', 'Total Shipping', '2020-11-02 13:01:14', '2021-02-09 06:52:37'),
(343, 'en', 'Have coupon code? Enter here', 'Have coupon code? Enter here', '2020-11-02 13:01:14', '2021-02-09 06:52:37'),
(344, 'en', 'Apply', 'Apply', '2020-11-02 13:01:14', '2021-02-09 06:52:37'),
(345, 'en', 'You need to agree with our policies', 'You need to agree with our policies', '2020-11-02 13:01:14', '2021-02-09 06:52:37'),
(346, 'en', 'Forgot password', 'Forgot password', '2020-11-02 13:01:25', '2021-02-09 06:52:37'),
(469, 'en', 'SEO Setting', 'SEO Setting', '2020-11-02 13:01:33', '2021-02-09 06:52:37'),
(474, 'en', 'System Update', 'System Update', '2020-11-02 13:01:34', '2021-02-09 06:52:37'),
(480, 'en', 'Add New Payment Method', 'Add New Payment Method', '2020-11-02 13:01:38', '2021-02-09 06:52:37'),
(481, 'en', 'Manual Payment Method', 'Manual Payment Method', '2020-11-02 13:01:38', '2021-02-09 06:52:37'),
(482, 'en', 'Heading', 'Heading', '2020-11-02 13:01:38', '2021-02-09 06:52:37'),
(483, 'en', 'Logo', 'Logo', '2020-11-02 13:01:38', '2021-02-09 06:52:37'),
(484, 'en', 'Manual Payment Information', 'Manual Payment Information', '2020-11-02 13:01:42', '2021-02-09 06:52:37'),
(485, 'en', 'Type', 'Type', '2020-11-02 13:01:42', '2021-02-09 06:52:37'),
(486, 'en', 'Custom Payment', 'Custom Payment', '2020-11-02 13:01:42', '2021-02-09 06:52:37'),
(487, 'en', 'Check Payment', 'Check Payment', '2020-11-02 13:01:42', '2021-02-09 06:52:37'),
(488, 'en', 'Checkout Thumbnail', 'Checkout Thumbnail', '2020-11-02 13:01:42', '2021-02-09 06:52:37'),
(489, 'en', 'Payment Instruction', 'Payment Instruction', '2020-11-02 13:01:42', '2021-02-09 06:52:37'),
(490, 'en', 'Bank Information', 'Bank Information', '2020-11-02 13:01:42', '2021-02-09 06:52:37'),
(491, 'en', 'Select File', 'Select File', '2020-11-02 13:01:53', '2021-02-09 06:52:37'),
(492, 'en', 'Upload New', 'Upload New', '2020-11-02 13:01:53', '2021-02-09 06:52:37'),
(493, 'en', 'Sort by newest', 'Sort by newest', '2020-11-02 13:01:53', '2021-02-09 06:52:37'),
(494, 'en', 'Sort by oldest', 'Sort by oldest', '2020-11-02 13:01:53', '2021-02-09 06:52:37'),
(495, 'en', 'Sort by smallest', 'Sort by smallest', '2020-11-02 13:01:53', '2021-02-09 06:52:37'),
(496, 'en', 'Sort by largest', 'Sort by largest', '2020-11-02 13:01:53', '2021-02-09 06:52:37'),
(497, 'en', 'Selected Only', 'Selected Only', '2020-11-02 13:01:53', '2021-02-09 06:52:37'),
(498, 'en', 'No files found', 'No files found', '2020-11-02 13:01:53', '2021-02-09 06:52:37'),
(499, 'en', '0 File selected', '0 File selected', '2020-11-02 13:01:53', '2021-02-09 06:52:37'),
(500, 'en', 'Clear', 'Clear', '2020-11-02 13:01:53', '2021-02-09 06:52:37'),
(501, 'en', 'Prev', 'Prev', '2020-11-02 13:01:53', '2021-02-09 06:52:37'),
(502, 'en', 'Next', 'Next', '2020-11-02 13:01:53', '2021-02-09 06:52:37'),
(503, 'en', 'Add Files', 'Add Files', '2020-11-02 13:01:53', '2021-02-09 06:52:37'),
(504, 'en', 'Method has been inserted successfully', 'Method has been inserted successfully', '2020-11-02 13:02:03', '2021-02-09 06:52:37'),
(506, 'en', 'Order Date', 'Order Date', '2020-11-02 13:02:42', '2021-02-09 06:52:37'),
(507, 'en', 'Bill to', 'Bill to', '2020-11-02 13:02:42', '2021-02-09 06:52:37'),
(510, 'en', 'Sub Total', 'Sub Total', '2020-11-02 13:02:42', '2021-02-09 06:52:37'),
(512, 'en', 'Total Tax', 'Total Tax', '2020-11-02 13:02:42', '2021-02-09 06:52:37'),
(513, 'en', 'Grand Total', 'Grand Total', '2020-11-02 13:02:42', '2021-02-09 06:52:37'),
(514, 'en', 'Your order has been placed successfully. Please submit payment information from purchase history', 'Your order has been placed successfully. Please submit payment information from purchase history', '2020-11-02 13:02:47', '2021-02-09 06:52:37'),
(515, 'en', 'Thank You for Your Order!', 'Thank You for Your Order!', '2020-11-02 13:02:48', '2021-02-09 06:52:37'),
(516, 'en', 'Order Code:', 'Order Code:', '2020-11-02 13:02:48', '2021-02-09 06:52:37'),
(517, 'en', 'A copy or your order summary has been sent to', 'A copy or your order summary has been sent to', '2020-11-02 13:02:48', '2021-02-09 06:52:37'),
(518, 'en', 'Make Payment', 'Make Payment', '2020-11-02 13:03:26', '2021-02-09 06:52:37'),
(519, 'en', 'Payment screenshot', 'Payment screenshot', '2020-11-02 13:03:29', '2021-02-09 06:52:37'),
(520, 'en', 'Paypal Credential', 'Paypal Credential', '2020-11-02 13:12:20', '2021-02-09 06:52:37'),
(522, 'en', 'Paypal Client ID', 'Paypal Client ID', '2020-11-02 13:12:20', '2021-02-09 06:52:37'),
(523, 'en', 'Paypal Client Secret', 'Paypal Client Secret', '2020-11-02 13:12:20', '2021-02-09 06:52:37'),
(524, 'en', 'Paypal Sandbox Mode', 'Paypal Sandbox Mode', '2020-11-02 13:12:20', '2021-02-09 06:52:37'),
(525, 'en', 'Sslcommerz Credential', 'Sslcommerz Credential', '2020-11-02 13:12:21', '2021-02-09 06:52:37'),
(526, 'en', 'Sslcz Store Id', 'Sslcz Store Id', '2020-11-02 13:12:21', '2021-02-09 06:52:37'),
(527, 'en', 'Sslcz store password', 'Sslcz store password', '2020-11-02 13:12:21', '2021-02-09 06:52:37'),
(528, 'en', 'Sslcommerz Sandbox Mode', 'Sslcommerz Sandbox Mode', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(529, 'en', 'Stripe Credential', 'Stripe Credential', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(531, 'en', 'STRIPE KEY', 'STRIPE KEY', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(533, 'en', 'STRIPE SECRET', 'STRIPE SECRET', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(534, 'en', 'RazorPay Credential', 'RazorPay Credential', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(535, 'en', 'RAZOR KEY', 'RAZOR KEY', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(536, 'en', 'RAZOR SECRET', 'RAZOR SECRET', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(537, 'en', 'Instamojo Credential', 'Instamojo Credential', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(538, 'en', 'API KEY', 'API KEY', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(539, 'en', 'IM API KEY', 'IM API KEY', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(540, 'en', 'AUTH TOKEN', 'AUTH TOKEN', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(541, 'en', 'IM AUTH TOKEN', 'IM AUTH TOKEN', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(542, 'en', 'Instamojo Sandbox Mode', 'Instamojo Sandbox Mode', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(543, 'en', 'PayStack Credential', 'PayStack Credential', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(544, 'en', 'PUBLIC KEY', 'PUBLIC KEY', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(545, 'en', 'SECRET KEY', 'SECRET KEY', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(546, 'en', 'MERCHANT EMAIL', 'MERCHANT EMAIL', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(547, 'en', 'VoguePay Credential', 'VoguePay Credential', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(548, 'en', 'MERCHANT ID', 'MERCHANT ID', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(549, 'en', 'Sandbox Mode', 'Sandbox Mode', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(550, 'en', 'Payhere Credential', 'Payhere Credential', '2020-11-02 13:12:21', '2021-02-09 06:52:38'),
(551, 'en', 'PAYHERE MERCHANT ID', 'PAYHERE MERCHANT ID', '2020-11-02 13:12:22', '2021-02-09 06:52:38'),
(552, 'en', 'PAYHERE SECRET', 'PAYHERE SECRET', '2020-11-02 13:12:22', '2021-02-09 06:52:38'),
(553, 'en', 'PAYHERE CURRENCY', 'PAYHERE CURRENCY', '2020-11-02 13:12:22', '2021-02-09 06:52:38'),
(554, 'en', 'Payhere Sandbox Mode', 'Payhere Sandbox Mode', '2020-11-02 13:12:22', '2021-02-09 06:52:38'),
(555, 'en', 'Ngenius Credential', 'Ngenius Credential', '2020-11-02 13:12:22', '2021-02-09 06:52:38'),
(556, 'en', 'NGENIUS OUTLET ID', 'NGENIUS OUTLET ID', '2020-11-02 13:12:22', '2021-02-09 06:52:38'),
(557, 'en', 'NGENIUS API KEY', 'NGENIUS API KEY', '2020-11-02 13:12:22', '2021-02-09 06:52:38'),
(558, 'en', 'NGENIUS CURRENCY', 'NGENIUS CURRENCY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(559, 'en', 'Mpesa Credential', 'Mpesa Credential', '2020-11-02 13:12:22', '2021-02-09 06:52:38'),
(560, 'en', 'MPESA CONSUMER KEY', 'MPESA CONSUMER KEY', '2020-11-02 13:12:22', '2021-02-09 06:52:38'),
(561, 'en', 'MPESA_CONSUMER_KEY', 'MPESA_CONSUMER_KEY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(562, 'en', 'MPESA CONSUMER SECRET', 'MPESA CONSUMER SECRET', '2020-11-02 13:12:22', '2021-02-09 06:52:38'),
(563, 'en', 'MPESA_CONSUMER_SECRET', 'MPESA_CONSUMER_SECRET', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(564, 'en', 'MPESA SHORT CODE', 'MPESA SHORT CODE', '2020-11-02 13:12:22', '2021-02-09 06:52:38'),
(565, 'en', 'MPESA_SHORT_CODE', 'MPESA_SHORT_CODE', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(566, 'en', 'MPESA SANDBOX ACTIVATION', 'MPESA SANDBOX ACTIVATION', '2020-11-02 13:12:22', '2021-02-09 06:52:38'),
(567, 'en', 'Flutterwave Credential', 'Flutterwave Credential', '2020-11-02 13:12:22', '2021-02-09 06:52:38'),
(568, 'en', 'RAVE_PUBLIC_KEY', 'RAVE_PUBLIC_KEY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(569, 'en', 'RAVE_SECRET_KEY', 'RAVE_SECRET_KEY', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(570, 'en', 'RAVE_TITLE', 'RAVE_TITLE', '2020-11-02 13:12:22', '2020-11-02 13:12:22'),
(571, 'en', 'STAGIN ACTIVATION', 'STAGIN ACTIVATION', '2020-11-02 13:12:22', '2021-02-09 06:52:38'),
(573, 'en', 'All Product', 'All Product', '2020-11-02 13:15:01', '2021-02-09 06:52:38'),
(574, 'en', 'Sort By', 'Sort By', '2020-11-02 13:15:01', '2021-02-09 06:52:38'),
(575, 'en', 'Rating (High > Low)', 'Rating (High > Low)', '2020-11-02 13:15:01', '2021-02-09 06:52:38'),
(576, 'en', 'Rating (Low > High)', 'Rating (Low > High)', '2020-11-02 13:15:01', '2021-02-09 06:52:38'),
(577, 'en', 'Num of Sale (High > Low)', 'Num of Sale (High > Low)', '2020-11-02 13:15:01', '2021-02-09 06:52:38'),
(578, 'en', 'Num of Sale (Low > High)', 'Num of Sale (Low > High)', '2020-11-02 13:15:01', '2021-02-09 06:52:38'),
(579, 'en', 'Base Price (High > Low)', 'Base Price (High > Low)', '2020-11-02 13:15:01', '2021-02-09 06:52:38'),
(580, 'en', 'Base Price (Low > High)', 'Base Price (Low > High)', '2020-11-02 13:15:01', '2021-02-09 06:52:38'),
(581, 'en', 'Type & Enter', 'Type & Enter', '2020-11-02 13:15:01', '2021-02-09 06:52:38'),
(582, 'en', 'Added By', 'Added By', '2020-11-02 13:15:01', '2021-02-09 06:52:38'),
(583, 'en', 'Num of Sale', 'Num of Sale', '2020-11-02 13:15:01', '2021-02-09 06:52:38'),
(584, 'en', 'Total Stock', 'Total Stock', '2020-11-02 13:15:01', '2021-02-09 06:52:38'),
(585, 'en', 'Todays Deal', 'Todays Deal', '2020-11-02 13:15:01', '2021-02-09 06:52:38'),
(586, 'en', 'Rating', 'Rating', '2020-11-02 13:15:01', '2021-02-09 06:52:38'),
(587, 'en', 'times', 'times', '2020-11-02 13:15:01', '2021-02-09 06:52:38'),
(588, 'en', 'Add Nerw Product', 'Add Nerw Product', '2020-11-02 13:15:02', '2021-02-09 06:52:38'),
(589, 'en', 'Product Information', 'Product Information', '2020-11-02 13:15:02', '2021-02-09 06:52:38'),
(590, 'en', 'Unit', 'Unit', '2020-11-02 13:15:02', '2021-02-09 06:52:38'),
(591, 'en', 'Unit (e.g. KG, Pc etc)', 'Unit (e.g. KG, Pc etc)', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(592, 'en', 'Minimum Qty', 'Minimum Qty', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(593, 'en', 'Tags', 'Tags', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(594, 'en', 'Type and hit enter to add a tag', 'Type and hit enter to add a tag', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(595, 'en', 'Barcode', 'Barcode', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(596, 'en', 'Refundable', 'Refundable', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(597, 'en', 'Product Images', 'Product Images', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(598, 'en', 'Gallery Images', 'Gallery Images', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(599, 'en', 'Todays Deal updated successfully', 'Todays Deal updated successfully', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(600, 'en', 'Published products updated successfully', 'Published products updated successfully', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(601, 'en', 'Thumbnail Image', 'Thumbnail Image', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(602, 'en', 'Featured products updated successfully', 'Featured products updated successfully', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(603, 'en', 'Product Videos', 'Product Videos', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(604, 'en', 'Video Provider', 'Video Provider', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(605, 'en', 'Youtube', 'Youtube', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(606, 'en', 'Dailymotion', 'Dailymotion', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(607, 'en', 'Vimeo', 'Vimeo', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(608, 'en', 'Video Link', 'Video Link', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(609, 'en', 'Product Variation', 'Product Variation', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(610, 'en', 'Colors', 'Colors', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(611, 'en', 'Attributes', 'Attributes', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(612, 'en', 'Choose Attributes', 'Choose Attributes', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(613, 'en', 'Choose the attributes of this product and then input values of each attribute', 'Choose the attributes of this product and then input values of each attribute', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(614, 'en', 'Product price + stock', 'Product price + stock', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(616, 'en', 'Unit price', 'Unit price', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(617, 'en', 'Purchase price', 'Purchase price', '2020-11-02 13:15:03', '2021-02-09 06:52:38'),
(618, 'en', 'Flat', 'Flat', '2020-11-02 13:15:04', '2021-02-09 06:52:38'),
(619, 'en', 'Percent', 'Percent', '2020-11-02 13:15:04', '2021-02-09 06:52:38'),
(620, 'en', 'Discount', 'Discount', '2020-11-02 13:15:04', '2021-02-09 06:52:38'),
(621, 'en', 'Product Description', 'Product Description', '2020-11-02 13:15:04', '2021-02-09 06:52:38'),
(622, 'en', 'Product Shipping Cost', 'Product Shipping Cost', '2020-11-02 13:15:04', '2021-02-09 06:52:38'),
(623, 'en', 'Free Shipping', 'Free Shipping', '2020-11-02 13:15:04', '2021-02-09 06:52:38'),
(624, 'en', 'Flat Rate', 'Flat Rate', '2020-11-02 13:15:04', '2021-02-09 06:52:38'),
(625, 'en', 'Shipping cost', 'Shipping cost', '2020-11-02 13:15:04', '2021-02-09 06:52:38'),
(626, 'en', 'PDF Specification', 'PDF Specification', '2020-11-02 13:15:04', '2021-02-09 06:52:38'),
(627, 'en', 'SEO Meta Tags', 'SEO Meta Tags', '2020-11-02 13:15:04', '2021-02-09 06:52:38'),
(628, 'en', 'Meta Title', 'Meta Title', '2020-11-02 13:15:04', '2021-02-09 06:52:38'),
(629, 'en', 'Meta Image', 'Meta Image', '2020-11-02 13:15:04', '2021-02-09 06:52:38'),
(630, 'en', 'Choice Title', 'Choice Title', '2020-11-02 13:15:04', '2021-02-09 06:52:38'),
(631, 'en', 'Enter choice values', 'Enter choice values', '2020-11-02 13:15:04', '2021-02-09 06:52:38'),
(632, 'en', 'All categories', 'All categories', '2020-11-03 07:12:19', '2021-02-09 06:52:38'),
(633, 'en', 'Add New category', 'Add New category', '2020-11-03 07:12:19', '2021-02-09 06:52:38'),
(634, 'en', 'Type name & Enter', 'Type name & Enter', '2020-11-03 07:12:19', '2021-02-09 06:52:38'),
(635, 'en', 'Banner', 'Banner', '2020-11-03 07:12:19', '2021-02-09 06:52:38'),
(637, 'en', 'Commission', 'Commission', '2020-11-03 07:12:19', '2021-02-09 06:52:38'),
(638, 'en', 'icon', 'icon', '2020-11-03 07:12:19', '2021-02-09 06:52:38'),
(639, 'en', 'Featured categories updated successfully', 'Featured categories updated successfully', '2020-11-03 07:12:20', '2021-02-09 06:52:38'),
(640, 'en', 'Hot', 'Hot', '2020-11-03 07:13:12', '2021-02-09 06:52:38'),
(641, 'en', 'Filter by Payment Status', 'Filter by Payment Status', '2020-11-03 07:15:15', '2021-02-09 06:52:38'),
(642, 'en', 'Un-Paid', 'Un-Paid', '2020-11-03 07:15:15', '2021-02-09 06:52:38'),
(643, 'en', 'Filter by Deliver Status', 'Filter by Deliver Status', '2020-11-03 07:15:15', '2021-02-09 06:52:38'),
(644, 'en', 'Pending', 'Pending', '2020-11-03 07:15:15', '2021-02-09 06:52:38'),
(645, 'en', 'Type Order code & hit Enter', 'Type Order code & hit Enter', '2020-11-03 07:15:15', '2021-02-09 06:52:38'),
(646, 'en', 'Num. of Products', 'Num. of Products', '2020-11-03 07:15:15', '2021-02-09 06:52:38'),
(647, 'en', 'Walk In Customer', 'Walk In Customer', '2020-11-03 10:03:20', '2021-02-09 06:52:38'),
(648, 'en', 'QTY', 'QTY', '2020-11-03 10:03:20', '2021-02-09 06:52:38'),
(649, 'en', 'Without Shipping Charge', 'Without Shipping Charge', '2020-11-03 10:03:20', '2021-02-09 06:52:38'),
(650, 'en', 'With Shipping Charge', 'With Shipping Charge', '2020-11-03 10:03:20', '2021-02-09 06:52:38'),
(651, 'en', 'Pay With Cash', 'Pay With Cash', '2020-11-03 10:03:20', '2021-02-09 06:52:38'),
(652, 'en', 'Shipping Address', 'Shipping Address', '2020-11-03 10:03:20', '2021-02-09 06:52:38'),
(653, 'en', 'Close', 'Close', '2020-11-03 10:03:20', '2021-02-09 06:52:38'),
(654, 'en', 'Select country', 'Select country', '2020-11-03 10:03:21', '2021-02-09 06:52:38'),
(655, 'en', 'Order Confirmation', 'Order Confirmation', '2020-11-03 10:03:21', '2021-02-09 06:52:38'),
(656, 'en', 'Are you sure to confirm this order?', 'Are you sure to confirm this order?', '2020-11-03 10:03:21', '2021-02-09 06:52:38'),
(657, 'en', 'Comfirm Order', 'Comfirm Order', '2020-11-03 10:03:21', '2021-02-09 06:52:38'),
(659, 'en', 'Personal Info', 'Personal Info', '2020-11-03 11:38:15', '2021-02-09 06:52:38'),
(660, 'en', 'Repeat Password', 'Repeat Password', '2020-11-03 11:38:15', '2021-02-09 06:52:38'),
(661, 'en', 'Shop Name', 'Shop Name', '2020-11-03 11:38:15', '2021-02-09 06:52:38'),
(662, 'en', 'Register Your Shop', 'Register Your Shop', '2020-11-03 11:38:15', '2021-02-09 06:52:38'),
(663, 'en', 'Affiliate Informations', 'Affiliate Informations', '2020-11-03 11:39:06', '2021-02-09 06:52:38'),
(664, 'en', 'Affiliate', 'Affiliate', '2020-11-03 11:39:06', '2021-02-09 06:52:38'),
(665, 'en', 'User Info', 'User Info', '2020-11-03 11:39:06', '2021-02-09 06:52:38'),
(667, 'en', 'Installed Addon', 'Installed Addon', '2020-11-03 11:48:13', '2021-02-09 06:52:38'),
(668, 'en', 'Available Addon', 'Available Addon', '2020-11-03 11:48:13', '2021-02-09 06:52:38'),
(669, 'en', 'Install New Addon', 'Install New Addon', '2020-11-03 11:48:13', '2021-02-09 06:52:38'),
(670, 'en', 'Version', 'Version', '2020-11-03 11:48:13', '2021-02-09 06:52:38'),
(671, 'en', 'Activated', 'Activated', '2020-11-03 11:48:13', '2021-02-09 06:52:38'),
(672, 'en', 'Deactivated', 'Deactivated', '2020-11-03 11:48:13', '2021-02-09 06:52:38'),
(673, 'en', 'Activate OTP', 'Activate OTP', '2020-11-03 11:48:20', '2021-02-09 06:52:38'),
(674, 'en', 'OTP will be Used For', 'OTP will be Used For', '2020-11-03 11:48:20', '2021-02-09 06:52:38'),
(675, 'en', 'Settings updated successfully', 'Settings updated successfully', '2020-11-03 11:48:20', '2021-02-09 06:52:38'),
(676, 'en', 'Product Owner', 'Product Owner', '2020-11-03 11:48:46', '2021-02-09 06:52:38'),
(677, 'en', 'Point', 'Point', '2020-11-03 11:48:46', '2021-02-09 06:52:38'),
(678, 'en', 'Set Point for Product Within a Range', 'Set Point for Product Within a Range', '2020-11-03 11:48:47', '2021-02-09 06:52:38'),
(679, 'en', 'Set Point for multiple products', 'Set Point for multiple products', '2020-11-03 11:48:47', '2021-02-09 06:52:38'),
(680, 'en', 'Min Price', 'Min Price', '2020-11-03 11:48:47', '2021-02-09 06:52:38'),
(681, 'en', 'Max Price', 'Max Price', '2020-11-03 11:48:47', '2021-02-09 06:52:38'),
(682, 'en', 'Set Point for all Products', 'Set Point for all Products', '2020-11-03 11:48:47', '2021-02-09 06:52:38'),
(683, 'en', 'Set Point For ', 'Set Point For', '2020-11-03 11:48:47', '2021-02-09 06:52:38'),
(684, 'en', 'Convert Status', 'Convert Status', '2020-11-03 11:48:58', '2021-02-09 06:52:38'),
(685, 'en', 'Earned At', 'Earned At', '2020-11-03 11:48:59', '2021-02-09 06:52:38'),
(686, 'en', 'Seller Based Selling Report', 'Seller Based Selling Report', '2020-11-03 11:49:35', '2021-02-09 06:52:38'),
(687, 'en', 'Sort by verificarion status', 'Sort by verificarion status', '2020-11-03 11:49:35', '2021-02-09 06:52:38'),
(688, 'en', 'Approved', 'Approved', '2020-11-03 11:49:35', '2021-02-09 06:52:38'),
(689, 'en', 'Non Approved', 'Non Approved', '2020-11-03 11:49:35', '2021-02-09 06:52:38'),
(690, 'en', 'Filter', 'Filter', '2020-11-03 11:49:35', '2021-02-09 06:52:38'),
(691, 'en', 'Seller Name', 'Seller Name', '2020-11-03 11:49:35', '2021-02-09 06:52:38'),
(692, 'en', 'Number of Product Sale', 'Number of Product Sale', '2020-11-03 11:49:36', '2021-02-09 06:52:38'),
(693, 'en', 'Order Amount', 'Order Amount', '2020-11-03 11:49:36', '2021-02-09 06:52:38'),
(694, 'en', 'Facebook Chat Setting', 'Facebook Chat Setting', '2020-11-03 11:51:14', '2021-02-09 06:52:38'),
(695, 'en', 'Facebook Page ID', 'Facebook Page ID', '2020-11-03 11:51:14', '2021-02-09 06:52:38'),
(696, 'en', 'Please be carefull when you are configuring Facebook chat. For incorrect configuration you will not get messenger icon on your user-end site.', 'Please be carefull when you are configuring Facebook chat. For incorrect configuration you will not get messenger icon on your user-end site.', '2020-11-03 11:51:14', '2021-02-09 06:52:38'),
(697, 'en', 'Login into your facebook page', 'Login into your facebook page', '2020-11-03 11:51:14', '2021-02-09 06:52:38'),
(698, 'en', 'Find the About option of your facebook page', 'Find the About option of your facebook page', '2020-11-03 11:51:14', '2021-02-09 06:52:38'),
(699, 'en', 'At the very bottom, you can find the \\“Facebook Page ID\\”', 'At the very bottom, you can find the \\“Facebook Page ID\\”', '2020-11-03 11:51:14', '2021-02-09 06:52:38'),
(700, 'en', 'Go to Settings of your page and find the option of \\\"Advance Messaging\\\"', 'Go to Settings of your page and find the option of \\\"Advance Messaging\\\"', '2020-11-03 11:51:14', '2021-02-09 06:52:38'),
(701, 'en', 'Scroll down that page and you will get \\\"white listed domain\\\"', 'Scroll down that page and you will get \\\"white listed domain\\\"', '2020-11-03 11:51:14', '2021-02-09 06:52:38'),
(702, 'en', 'Set your website domain name', 'Set your website domain name', '2020-11-03 11:51:14', '2021-02-09 06:52:38'),
(703, 'en', 'Google reCAPTCHA Setting', 'Google reCAPTCHA Setting', '2020-11-03 11:51:25', '2021-02-09 06:52:38'),
(704, 'en', 'Site KEY', 'Site KEY', '2020-11-03 11:51:25', '2021-02-09 06:52:38'),
(705, 'en', 'Select Shipping Method', 'Select Shipping Method', '2020-11-03 11:51:32', '2021-02-09 06:52:38'),
(706, 'en', 'Product Wise Shipping Cost', 'Product Wise Shipping Cost', '2020-11-03 11:51:32', '2021-02-09 06:52:38'),
(707, 'en', 'Flat Rate Shipping Cost', 'Flat Rate Shipping Cost', '2020-11-03 11:51:32', '2021-02-09 06:52:38'),
(708, 'en', 'Seller Wise Flat Shipping Cost', 'Seller Wise Flat Shipping Cost', '2020-11-03 11:51:32', '2021-02-09 06:52:38'),
(709, 'en', 'Note', 'Note', '2020-11-03 11:51:32', '2021-02-09 06:52:38'),
(710, 'en', 'Product Wise Shipping Cost calulation: Shipping cost is calculate by addition of each product shipping cost', 'Product Wise Shipping Cost calulation: Shipping cost is calculate by addition of each product shipping cost', '2020-11-03 11:51:32', '2021-02-09 06:52:38'),
(711, 'en', 'Flat Rate Shipping Cost calulation: How many products a customer purchase, doesn\'t matter. Shipping cost is fixed', 'Flat Rate Shipping Cost calulation: How many products a customer purchase, doesn\'t matter. Shipping cost is fixed', '2020-11-03 11:51:32', '2021-02-09 06:52:38'),
(712, 'en', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If a customer purchase 2 product from two seller shipping cost is calculate by addition of each seller flat shipping cost', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If a customer purchase 2 product from two seller shipping cost is calculate by addition of each seller flat shipping cost', '2020-11-03 11:51:32', '2021-02-09 06:52:38'),
(713, 'en', 'Flat Rate Cost', 'Flat Rate Cost', '2020-11-03 11:51:32', '2021-02-09 06:52:38'),
(714, 'en', 'Shipping Cost for Admin Products', 'Shipping Cost for Admin Products', '2020-11-03 11:51:32', '2021-02-09 06:52:38'),
(715, 'en', 'Countries', 'Countries', '2020-11-03 11:52:02', '2021-02-09 06:52:38'),
(716, 'en', 'Show/Hide', 'Show/Hide', '2020-11-03 11:52:02', '2021-02-09 06:52:38'),
(717, 'en', 'Country status updated successfully', 'Country status updated successfully', '2020-11-03 11:52:02', '2021-02-09 06:52:38'),
(718, 'en', 'All Subcategories', 'All Subcategories', '2020-11-03 12:27:55', '2021-02-09 06:52:38'),
(719, 'en', 'Add New Subcategory', 'Add New Subcategory', '2020-11-03 12:27:55', '2021-02-09 06:52:38'),
(720, 'en', 'Sub-Categories', 'Sub-Categories', '2020-11-03 12:27:55', '2021-02-09 06:52:38'),
(721, 'en', 'Sub Category Information', 'Sub Category Information', '2020-11-03 12:28:07', '2021-02-09 06:52:50'),
(723, 'en', 'Slug', 'Slug', '2020-11-03 12:28:07', '2021-02-09 06:52:50'),
(724, 'en', 'All Sub Subcategories', 'All Sub Subcategories', '2020-11-03 12:29:12', '2021-02-09 06:52:50'),
(725, 'en', 'Add New Sub Subcategory', 'Add New Sub Subcategory', '2020-11-03 12:29:12', '2021-02-09 06:52:50'),
(726, 'en', 'Sub-Sub-categories', 'Sub-Sub-categories', '2020-11-03 12:29:12', '2021-02-09 06:52:50'),
(727, 'en', 'Make This Default', 'Make This Default', '2020-11-04 08:24:24', '2021-02-09 06:52:50');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(728, 'en', 'Shops', 'Shops', '2020-11-04 11:17:10', '2021-02-09 06:52:50'),
(729, 'en', 'Women Clothing & Fashion', 'Women Clothing & Fashion', '2020-11-04 11:23:12', '2021-02-09 06:52:50'),
(730, 'en', 'Cellphones & Tabs', 'Cellphones & Tabs', '2020-11-04 12:10:41', '2021-02-09 06:52:50'),
(731, 'en', 'Welcome to', 'Welcome to', '2020-11-07 07:14:43', '2021-02-09 06:52:50'),
(732, 'en', 'Create a New Account', 'Create a New Account', '2020-11-07 07:32:15', '2021-02-09 06:52:50'),
(733, 'en', 'Full Name', 'Full Name', '2020-11-07 07:32:15', '2021-02-09 06:52:50'),
(734, 'en', 'password', 'password', '2020-11-07 07:32:15', '2021-02-09 06:52:50'),
(735, 'en', 'Confrim Password', 'Confrim Password', '2020-11-07 07:32:15', '2021-02-09 06:52:50'),
(736, 'en', 'I agree with the', 'I agree with the', '2020-11-07 07:32:15', '2021-02-09 06:52:50'),
(737, 'en', 'Terms and Conditions', 'Terms and Conditions', '2020-11-07 07:32:15', '2021-02-09 06:52:50'),
(738, 'en', 'Register', 'Register', '2020-11-07 07:32:15', '2021-02-09 06:52:50'),
(739, 'en', 'Already have an account', 'Already have an account', '2020-11-07 07:32:16', '2021-02-09 06:52:50'),
(741, 'en', 'Sign Up with', 'Sign Up with', '2020-11-07 07:32:16', '2021-02-09 06:52:50'),
(742, 'en', 'I agree with the Terms and Conditions', 'I agree with the Terms and Conditions', '2020-11-07 07:34:49', '2021-02-09 06:52:50'),
(745, 'en', 'All Role', 'All Role', '2020-11-07 07:44:28', '2021-02-09 06:52:50'),
(746, 'en', 'Add New Role', 'Add New Role', '2020-11-07 07:44:28', '2021-02-09 06:52:50'),
(747, 'en', 'Roles', 'Roles', '2020-11-07 07:44:28', '2021-02-09 06:52:50'),
(749, 'en', 'Add New Staffs', 'Add New Staffs', '2020-11-07 07:44:36', '2021-02-09 06:52:50'),
(750, 'en', 'Role', 'Role', '2020-11-07 07:44:36', '2021-02-09 06:52:50'),
(751, 'en', 'Frontend Website Name', 'Frontend Website Name', '2020-11-07 07:44:59', '2021-02-09 06:52:50'),
(752, 'en', 'Website Name', 'Website Name', '2020-11-07 07:44:59', '2021-02-09 06:52:50'),
(753, 'en', 'Site Motto', 'Site Motto', '2020-11-07 07:44:59', '2021-02-09 06:52:50'),
(754, 'en', 'Best eCommerce Website', 'Best eCommerce Website', '2020-11-07 07:44:59', '2021-02-09 06:52:50'),
(755, 'en', 'Site Icon', 'Site Icon', '2020-11-07 07:44:59', '2021-02-09 06:52:50'),
(756, 'en', 'Website favicon. 32x32 .png', 'Website favicon. 32x32 .png', '2020-11-07 07:44:59', '2021-02-09 06:52:50'),
(757, 'en', 'Website Base Color', 'Website Base Color', '2020-11-07 07:44:59', '2021-02-09 06:52:50'),
(758, 'en', 'Hex Color Code', 'Hex Color Code', '2020-11-07 07:44:59', '2021-02-09 06:52:50'),
(759, 'en', 'Website Base Hover Color', 'Website Base Hover Color', '2020-11-07 07:44:59', '2021-02-09 06:52:50'),
(760, 'en', 'Update', 'Update', '2020-11-07 07:45:00', '2021-02-09 06:52:50'),
(761, 'en', 'Global Seo', 'Global Seo', '2020-11-07 07:45:00', '2021-02-09 06:52:50'),
(762, 'en', 'Meta description', 'Meta description', '2020-11-07 07:45:00', '2021-02-09 06:52:50'),
(763, 'en', 'Keywords', 'Keywords', '2020-11-07 07:45:00', '2021-02-09 06:52:50'),
(764, 'en', 'Separate with coma', 'Separate with coma', '2020-11-07 07:45:00', '2021-02-09 06:52:50'),
(765, 'en', 'Website Pages', 'Website Pages', '2020-11-07 07:49:04', '2021-02-09 06:52:50'),
(766, 'en', 'All Pages', 'All Pages', '2020-11-07 07:49:04', '2021-02-09 06:52:50'),
(767, 'en', 'Add New Page', 'Add New Page', '2020-11-07 07:49:04', '2021-02-09 06:52:50'),
(768, 'en', 'URL', 'URL', '2020-11-07 07:49:04', '2021-02-09 06:52:50'),
(769, 'en', 'Actions', 'Actions', '2020-11-07 07:49:04', '2021-02-09 06:52:50'),
(770, 'en', 'Edit Page Information', 'Edit Page Information', '2020-11-07 07:49:22', '2021-02-09 06:52:50'),
(771, 'en', 'Page Content', 'Page Content', '2020-11-07 07:49:22', '2021-02-09 06:52:50'),
(772, 'en', 'Title', 'Title', '2020-11-07 07:49:22', '2021-02-09 06:52:50'),
(773, 'en', 'Link', 'Link', '2020-11-07 07:49:22', '2021-02-09 06:52:50'),
(774, 'en', 'Use character, number, hypen only', 'Use character, number, hypen only', '2020-11-07 07:49:22', '2021-02-09 06:52:50'),
(775, 'en', 'Add Content', 'Add Content', '2020-11-07 07:49:22', '2021-02-09 06:52:50'),
(776, 'en', 'Seo Fields', 'Seo Fields', '2020-11-07 07:49:22', '2021-02-09 06:52:50'),
(777, 'en', 'Update Page', 'Update Page', '2020-11-07 07:49:22', '2021-02-09 06:52:50'),
(778, 'en', 'Default Language', 'Default Language', '2020-11-07 07:50:09', '2021-02-09 06:52:50'),
(779, 'en', 'Add New Language', 'Add New Language', '2020-11-07 07:50:09', '2021-02-09 06:52:50'),
(780, 'en', 'RTL', 'RTL', '2020-11-07 07:50:09', '2021-02-09 06:52:50'),
(781, 'en', 'Translation', 'Translation', '2020-11-07 07:50:09', '2021-02-09 06:52:50'),
(782, 'en', 'Language Information', 'Language Information', '2020-11-07 07:50:23', '2021-02-09 06:52:50'),
(783, 'en', 'Save Page', 'Save Page', '2020-11-07 07:51:27', '2021-02-09 06:52:50'),
(784, 'en', 'Home Page Settings', 'Home Page Settings', '2020-11-07 07:51:35', '2021-02-09 06:52:50'),
(785, 'en', 'Home Slider', 'Home Slider', '2020-11-07 07:51:35', '2021-02-09 06:52:50'),
(786, 'en', 'Photos & Links', 'Photos & Links', '2020-11-07 07:51:35', '2021-02-09 06:52:50'),
(787, 'en', 'Add New', 'Add New', '2020-11-07 07:51:35', '2021-02-09 06:52:50'),
(788, 'en', 'Home Categories', 'Home Categories', '2020-11-07 07:51:35', '2021-02-09 06:52:50'),
(789, 'en', 'Home Banner 1 (Max 3)', 'Home Banner 1 (Max 3)', '2020-11-07 07:51:35', '2021-02-09 06:52:50'),
(790, 'en', 'Banner & Links', 'Banner & Links', '2020-11-07 07:51:35', '2021-02-09 06:52:50'),
(791, 'en', 'Home Banner 2 (Max 3)', 'Home Banner 2 (Max 3)', '2020-11-07 07:51:36', '2021-02-09 06:52:50'),
(792, 'en', 'Top 10', 'Top 10', '2020-11-07 07:51:36', '2021-02-09 06:52:50'),
(793, 'en', 'Top Categories (Max 10)', 'Top Categories (Max 10)', '2020-11-07 07:51:36', '2021-02-09 06:52:50'),
(794, 'en', 'Top Brands (Max 10)', 'Top Brands (Max 10)', '2020-11-07 07:51:36', '2021-02-09 06:52:50'),
(795, 'en', 'System Name', 'System Name', '2020-11-07 07:54:22', '2021-02-09 06:52:50'),
(796, 'en', 'System Logo - White', 'System Logo - White', '2020-11-07 07:54:22', '2021-02-09 06:52:50'),
(797, 'en', 'Choose Files', 'Choose Files', '2020-11-07 07:54:22', '2021-02-09 06:52:50'),
(798, 'en', 'Will be used in admin panel side menu', 'Will be used in admin panel side menu', '2020-11-07 07:54:23', '2021-02-09 06:52:50'),
(799, 'en', 'System Logo - Black', 'System Logo - Black', '2020-11-07 07:54:23', '2021-02-09 06:52:50'),
(800, 'en', 'Will be used in admin panel topbar in mobile + Admin login page', 'Will be used in admin panel topbar in mobile + Admin login page', '2020-11-07 07:54:23', '2021-02-09 06:52:50'),
(801, 'en', 'System Timezone', 'System Timezone', '2020-11-07 07:54:23', '2021-02-09 06:52:50'),
(802, 'en', 'Admin login page background', 'Admin login page background', '2020-11-07 07:54:23', '2021-02-09 06:52:50'),
(803, 'en', 'Website Header', 'Website Header', '2020-11-07 08:21:36', '2021-02-09 06:52:50'),
(804, 'en', 'Header Setting', 'Header Setting', '2020-11-07 08:21:36', '2021-02-09 06:52:50'),
(805, 'en', 'Header Logo', 'Header Logo', '2020-11-07 08:21:36', '2021-02-09 06:52:50'),
(806, 'en', 'Show Language Switcher?', 'Show Language Switcher?', '2020-11-07 08:21:36', '2021-02-09 06:52:50'),
(807, 'en', 'Show Currency Switcher?', 'Show Currency Switcher?', '2020-11-07 08:21:36', '2021-02-09 06:52:50'),
(808, 'en', 'Enable stikcy header?', 'Enable stikcy header?', '2020-11-07 08:21:36', '2021-02-09 06:52:50'),
(809, 'en', 'Website Footer', 'Website Footer', '2020-11-07 08:21:56', '2021-02-09 06:52:50'),
(810, 'en', 'Footer Widget', 'Footer Widget', '2020-11-07 08:21:56', '2021-02-09 06:52:50'),
(811, 'en', 'About Widget', 'About Widget', '2020-11-07 08:21:56', '2021-02-09 06:52:50'),
(812, 'en', 'Footer Logo', 'Footer Logo', '2020-11-07 08:21:56', '2021-02-09 06:52:50'),
(813, 'en', 'About description', 'About description', '2020-11-07 08:21:56', '2021-02-09 06:52:50'),
(814, 'en', 'Contact Info Widget', 'Contact Info Widget', '2020-11-07 08:21:56', '2021-02-09 06:52:50'),
(815, 'en', 'Footer contact address', 'Footer contact address', '2020-11-07 08:21:56', '2021-02-09 06:52:50'),
(816, 'en', 'Footer contact phone', 'Footer contact phone', '2020-11-07 08:21:56', '2021-02-09 06:52:50'),
(817, 'en', 'Footer contact email', 'Footer contact email', '2020-11-07 08:21:56', '2021-02-09 06:52:50'),
(818, 'en', 'Link Widget One', 'Link Widget One', '2020-11-07 08:21:56', '2021-02-09 06:52:50'),
(819, 'en', 'Links', 'Links', '2020-11-07 08:21:56', '2021-02-09 06:52:50'),
(820, 'en', 'Footer Bottom', 'Footer Bottom', '2020-11-07 08:21:56', '2021-02-09 06:52:50'),
(821, 'en', 'Copyright Widget ', 'Copyright Widget', '2020-11-07 08:21:57', '2021-02-09 06:52:50'),
(822, 'en', 'Copyright Text', 'Copyright Text', '2020-11-07 08:21:57', '2021-02-09 06:52:50'),
(823, 'en', 'Social Link Widget ', 'Social Link Widget', '2020-11-07 08:21:57', '2021-02-09 06:52:50'),
(824, 'en', 'Show Social Links?', 'Show Social Links?', '2020-11-07 08:21:57', '2021-02-09 06:52:50'),
(825, 'en', 'Social Links', 'Social Links', '2020-11-07 08:21:57', '2021-02-09 06:52:50'),
(826, 'en', 'Payment Methods Widget ', 'Payment Methods Widget', '2020-11-07 08:21:57', '2021-02-09 06:52:50'),
(827, 'en', 'RTL status updated successfully', 'RTL status updated successfully', '2020-11-07 08:36:11', '2021-02-09 06:52:50'),
(828, 'en', 'Language changed to ', 'Language changed to', '2020-11-07 08:36:27', '2021-02-09 06:52:50'),
(829, 'en', 'Inhouse Product sale report', 'Inhouse Product sale report', '2020-11-07 09:30:25', '2021-02-09 06:52:50'),
(830, 'en', 'Sort by Category', 'Sort by Category', '2020-11-07 09:30:25', '2021-02-09 06:52:50'),
(831, 'en', 'Product wise stock report', 'Product wise stock report', '2020-11-07 09:31:02', '2021-02-09 06:52:50'),
(832, 'en', 'Currency changed to ', 'Currency changed to', '2020-11-07 12:36:28', '2021-02-09 06:52:50'),
(833, 'en', 'Avatar', 'Avatar', '2020-11-08 09:32:35', '2021-02-09 06:52:50'),
(834, 'en', 'Copy', 'Copy', '2020-11-08 10:03:42', '2021-02-09 06:52:50'),
(835, 'en', 'Variant', 'Variant', '2020-11-08 10:43:02', '2021-02-09 06:52:50'),
(836, 'en', 'Variant Price', 'Variant Price', '2020-11-08 10:43:03', '2021-02-09 06:52:50'),
(837, 'en', 'SKU', 'SKU', '2020-11-08 10:43:03', '2021-02-09 06:52:50'),
(838, 'en', 'Key', 'Key', '2020-11-08 12:35:09', '2021-02-09 06:52:50'),
(839, 'en', 'Value', 'Value', '2020-11-08 12:35:09', '2021-02-09 06:52:50'),
(840, 'en', 'Copy Translations', 'Copy Translations', '2020-11-08 12:35:10', '2021-02-09 06:52:50'),
(841, 'en', 'All Pick-up Points', 'All Pick-up Points', '2020-11-08 12:35:43', '2021-02-09 06:52:50'),
(842, 'en', 'Add New Pick-up Point', 'Add New Pick-up Point', '2020-11-08 12:35:43', '2021-02-09 06:52:50'),
(843, 'en', 'Manager', 'Manager', '2020-11-08 12:35:43', '2021-02-09 06:52:50'),
(844, 'en', 'Location', 'Location', '2020-11-08 12:35:43', '2021-02-09 06:52:50'),
(845, 'en', 'Pickup Station Contact', 'Pickup Station Contact', '2020-11-08 12:35:43', '2021-02-09 06:52:50'),
(846, 'en', 'Open', 'Open', '2020-11-08 12:35:43', '2021-02-09 06:52:50'),
(847, 'en', 'POS Activation for Seller', 'POS Activation for Seller', '2020-11-08 12:35:55', '2021-02-09 06:52:50'),
(848, 'en', 'Order Completed Successfully.', 'Order Completed Successfully.', '2020-11-08 12:36:02', '2021-02-09 06:52:50'),
(849, 'en', 'Text Input', 'Text Input', '2020-11-08 12:38:40', '2021-02-09 06:52:50'),
(850, 'en', 'Select', 'Select', '2020-11-08 12:38:40', '2021-02-09 06:52:50'),
(851, 'en', 'Multiple Select', 'Multiple Select', '2020-11-08 12:38:40', '2021-02-09 06:52:50'),
(852, 'en', 'Radio', 'Radio', '2020-11-08 12:38:40', '2021-02-09 06:52:50'),
(853, 'en', 'File', 'File', '2020-11-08 12:38:40', '2021-02-09 06:52:50'),
(854, 'en', 'Email Address', 'Email Address', '2020-11-08 12:39:32', '2021-02-09 06:52:50'),
(855, 'en', 'Verification Info', 'Verification Info', '2020-11-08 12:39:32', '2021-02-09 06:52:50'),
(856, 'en', 'Approval', 'Approval', '2020-11-08 12:39:32', '2021-02-09 06:52:50'),
(857, 'en', 'Due Amount', 'Due Amount', '2020-11-08 12:39:32', '2021-02-09 06:52:50'),
(858, 'en', 'Show', 'Show', '2020-11-08 12:39:32', '2021-02-09 06:52:50'),
(859, 'en', 'Pay Now', 'Pay Now', '2020-11-08 12:39:32', '2021-02-09 06:52:50'),
(860, 'en', 'Affiliate User Verification', 'Affiliate User Verification', '2020-11-08 12:40:01', '2021-02-09 06:52:50'),
(861, 'en', 'Reject', 'Reject', '2020-11-08 12:40:01', '2021-02-09 06:52:51'),
(862, 'en', 'Accept', 'Accept', '2020-11-08 12:40:01', '2021-02-09 06:52:51'),
(863, 'en', 'Beauty, Health & Hair', 'Beauty, Health & Hair', '2020-11-08 12:54:17', '2021-02-09 06:52:51'),
(864, 'en', 'Comparison', 'Comparison', '2020-11-08 12:54:33', '2021-02-09 06:52:51'),
(865, 'en', 'Reset Compare List', 'Reset Compare List', '2020-11-08 12:54:33', '2021-02-09 06:52:51'),
(866, 'en', 'Your comparison list is empty', 'Your comparison list is empty', '2020-11-08 12:54:33', '2021-02-09 06:52:51'),
(867, 'en', 'Convert Point To Wallet', 'Convert Point To Wallet', '2020-11-08 13:04:42', '2021-02-09 06:52:51'),
(868, 'en', 'Note: You need to activate wallet option first before using club point addon.', 'Note: You need to activate wallet option first before using club point addon.', '2020-11-08 13:04:43', '2021-02-09 06:52:51'),
(869, 'en', 'Create an account.', 'Create an account.', '2020-11-09 06:17:11', '2021-02-09 06:52:51'),
(870, 'en', 'Use Email Instead', 'Use Email Instead', '2020-11-09 06:17:11', '2021-02-09 06:52:51'),
(871, 'en', 'By signing up you agree to our terms and conditions.', 'By signing up you agree to our terms and conditions.', '2020-11-09 06:17:11', '2021-02-09 06:52:51'),
(872, 'en', 'Create Account', 'Create Account', '2020-11-09 06:17:11', '2021-02-09 06:52:51'),
(873, 'en', 'Or Join With', 'Or Join With', '2020-11-09 06:17:11', '2021-02-09 06:52:51'),
(874, 'en', 'Already have an account?', 'Already have an account?', '2020-11-09 06:17:11', '2021-02-09 06:52:51'),
(875, 'en', 'Log In', 'Log In', '2020-11-09 06:17:11', '2021-02-09 06:52:51'),
(876, 'en', 'Computer & Accessories', 'Computer & Accessories', '2020-11-09 07:52:05', '2021-02-09 06:52:51'),
(878, 'en', 'Product(s)', 'Product(s)', '2020-11-09 07:52:23', '2021-02-09 06:52:51'),
(879, 'en', 'in your cart', 'in your cart', '2020-11-09 07:52:23', '2021-02-09 06:52:51'),
(880, 'en', 'in your wishlist', 'in your wishlist', '2020-11-09 07:52:23', '2021-02-09 06:52:51'),
(881, 'en', 'you ordered', 'you ordered', '2020-11-09 07:52:24', '2021-02-09 06:52:51'),
(882, 'en', 'Default Shipping Address', 'Default Shipping Address', '2020-11-09 07:52:24', '2021-02-09 06:52:51'),
(883, 'en', 'Sports & outdoor', 'Sports & outdoor', '2020-11-09 07:53:32', '2021-02-09 06:52:51'),
(884, 'en', 'Copied', 'Copied', '2020-11-09 07:54:19', '2021-02-09 06:52:51'),
(885, 'en', 'Copy the Promote Link', 'Copy the Promote Link', '2020-11-09 07:54:19', '2021-02-09 06:52:51'),
(886, 'en', 'Write a review', 'Write a review', '2020-11-09 07:54:20', '2021-02-09 06:52:51'),
(887, 'en', 'Your name', 'Your name', '2020-11-09 07:54:20', '2021-02-09 06:52:51'),
(888, 'en', 'Comment', 'Comment', '2020-11-09 07:54:20', '2021-02-09 06:52:51'),
(889, 'en', 'Your review', 'Your review', '2020-11-09 07:54:20', '2021-02-09 06:52:51'),
(890, 'en', 'Submit review', 'Submit review', '2020-11-09 07:54:20', '2021-02-09 06:52:51'),
(891, 'en', 'Claire Willis', 'Claire Willis', '2020-11-09 08:05:00', '2021-02-09 06:52:51'),
(892, 'en', 'Germaine Greene', 'Germaine Greene', '2020-11-09 08:05:00', '2021-02-09 06:52:51'),
(893, 'en', 'Product File', 'Product File', '2020-11-09 08:07:08', '2021-02-09 06:52:51'),
(894, 'en', 'Choose file', 'Choose file', '2020-11-09 08:07:08', '2021-02-09 06:52:51'),
(895, 'en', 'Type to add a tag', 'Type to add a tag', '2020-11-09 08:07:08', '2021-02-09 06:52:51'),
(896, 'en', 'Images', 'Images', '2020-11-09 08:07:08', '2021-02-09 06:52:51'),
(897, 'en', 'Main Images', 'Main Images', '2020-11-09 08:07:08', '2021-02-09 06:52:51'),
(898, 'en', 'Meta Tags', 'Meta Tags', '2020-11-09 08:07:08', '2021-02-09 06:52:51'),
(899, 'en', 'Digital Product has been inserted successfully', 'Digital Product has been inserted successfully', '2020-11-09 08:14:25', '2021-02-09 06:52:51'),
(900, 'en', 'Edit Digital Product', 'Edit Digital Product', '2020-11-09 08:14:34', '2021-02-09 06:52:51'),
(901, 'en', 'Select an option', 'Select an option', '2020-11-09 08:14:34', '2021-02-09 06:52:51'),
(902, 'en', 'tax', 'Tax', '2020-11-09 08:14:35', '2021-02-11 04:15:27'),
(903, 'en', 'Any question about this product?', 'Any question about this product?', '2020-11-09 08:15:11', '2021-02-09 06:52:51'),
(904, 'en', 'Sign in', 'Sign in', '2020-11-09 08:15:11', '2021-02-09 06:52:51'),
(905, 'en', 'Login with Google', 'Login with Google', '2020-11-09 08:15:11', '2021-02-09 06:52:51'),
(906, 'en', 'Login with Facebook', 'Login with Facebook', '2020-11-09 08:15:11', '2021-02-09 06:52:51'),
(907, 'en', 'Login with Twitter', 'Login with Twitter', '2020-11-09 08:15:11', '2021-02-09 06:52:51'),
(908, 'en', 'Click to show phone number', 'Click to show phone number', '2020-11-09 08:15:51', '2021-02-09 06:52:51'),
(909, 'en', 'Other Ads of', 'Other Ads of', '2020-11-09 08:15:52', '2021-02-09 06:52:51'),
(910, 'en', 'Store Home', 'Store Home', '2020-11-09 08:54:23', '2021-02-09 06:52:51'),
(911, 'en', 'Top Selling', 'Top Selling', '2020-11-09 08:54:23', '2021-02-09 06:52:51'),
(912, 'en', 'Shop Settings', 'Shop Settings', '2020-11-09 08:55:38', '2021-02-09 06:52:51'),
(913, 'en', 'Visit Shop', 'Visit Shop', '2020-11-09 08:55:38', '2021-02-09 06:52:51'),
(914, 'en', 'Pickup Points', 'Pickup Points', '2020-11-09 08:55:38', '2021-02-09 06:52:51'),
(915, 'en', 'Select Pickup Point', 'Select Pickup Point', '2020-11-09 08:55:38', '2021-02-09 06:52:51'),
(916, 'en', 'Slider Settings', 'Slider Settings', '2020-11-09 08:55:39', '2021-02-09 06:52:51'),
(917, 'en', 'Social Media Link', 'Social Media Link', '2020-11-09 08:55:39', '2021-02-09 06:52:51'),
(918, 'en', 'Facebook', 'Facebook', '2020-11-09 08:55:39', '2021-02-09 06:52:51'),
(919, 'en', 'Twitter', 'Twitter', '2020-11-09 08:55:39', '2021-02-09 06:52:51'),
(920, 'en', 'Google', 'Google', '2020-11-09 08:55:39', '2021-02-09 06:52:51'),
(921, 'en', 'New Arrival Products', 'New Arrival Products', '2020-11-09 08:56:26', '2021-02-09 06:52:51'),
(922, 'en', 'Check Your Order Status', 'Check Your Order Status', '2020-11-09 09:23:32', '2021-02-09 06:52:51'),
(923, 'en', 'Shipping method', 'Shipping method', '2020-11-09 09:27:40', '2021-02-09 06:52:51'),
(924, 'en', 'Shipped By', 'Shipped By', '2020-11-09 09:27:41', '2021-02-09 06:52:51'),
(925, 'en', 'Image', 'Image', '2020-11-09 09:29:37', '2021-02-09 06:52:51'),
(926, 'en', 'Sub Sub Category', 'Sub Sub Category', '2020-11-09 09:29:37', '2021-02-09 06:52:51'),
(927, 'en', 'Inhouse Products', 'Inhouse Products', '2020-11-09 10:22:32', '2021-02-09 06:52:51'),
(928, 'en', 'Forgot Password?', 'Forgot Password?', '2020-11-09 10:33:21', '2021-02-09 06:52:51'),
(929, 'en', 'Enter your email address to recover your password.', 'Enter your email address to recover your password.', '2020-11-09 10:33:21', '2021-02-09 06:52:51'),
(930, 'en', 'Email or Phone', 'Email or Phone', '2020-11-09 10:33:21', '2021-02-09 06:52:51'),
(931, 'en', 'Send Password Reset Link', 'Send Password Reset Link', '2020-11-09 10:33:21', '2021-02-09 06:52:51'),
(932, 'en', 'Back to Login', 'Back to Login', '2020-11-09 10:33:21', '2021-02-09 06:52:51'),
(933, 'en', 'index', 'index', '2020-11-09 10:35:29', '2021-02-09 06:52:51'),
(934, 'en', 'Download Your Product', 'Download Your Product', '2020-11-09 10:35:30', '2021-02-09 06:52:51'),
(935, 'en', 'Option', 'Option', '2020-11-09 10:35:30', '2021-02-09 06:52:51'),
(936, 'en', 'Applied Refund Request', 'Applied Refund Request', '2020-11-09 10:35:39', '2021-02-09 06:52:51'),
(937, 'en', 'Item has been renoved from wishlist', 'Item has been renoved from wishlist', '2020-11-09 10:36:04', '2021-02-09 06:52:51'),
(938, 'en', 'Bulk Products Upload', 'Bulk Products Upload', '2020-11-09 10:39:24', '2021-02-09 06:52:51'),
(939, 'en', 'Upload CSV', 'Upload CSV', '2020-11-09 10:39:25', '2021-02-09 06:52:51'),
(940, 'en', 'Create a Ticket', 'Create a Ticket', '2020-11-09 10:40:25', '2021-02-09 06:52:51'),
(941, 'en', 'Tickets', 'Tickets', '2020-11-09 10:40:25', '2021-02-09 06:52:51'),
(942, 'en', 'Ticket ID', 'Ticket ID', '2020-11-09 10:40:25', '2021-02-09 06:52:51'),
(943, 'en', 'Sending Date', 'Sending Date', '2020-11-09 10:40:25', '2021-02-09 06:52:51'),
(944, 'en', 'Subject', 'Subject', '2020-11-09 10:40:25', '2021-02-09 06:52:51'),
(945, 'en', 'View Details', 'View Details', '2020-11-09 10:40:25', '2021-02-09 06:52:51'),
(946, 'en', 'Provide a detailed description', 'Provide a detailed description', '2020-11-09 10:40:26', '2021-02-09 06:52:51'),
(947, 'en', 'Type your reply', 'Type your reply', '2020-11-09 10:40:26', '2021-02-09 06:52:51'),
(948, 'en', 'Send Ticket', 'Send Ticket', '2020-11-09 10:40:26', '2021-02-09 06:52:51'),
(949, 'en', 'Load More', 'Load More', '2020-11-09 10:40:57', '2021-02-09 06:52:51'),
(950, 'en', 'Jewelry & Watches', 'Jewelry & Watches', '2020-11-09 10:47:38', '2021-02-09 06:52:51'),
(951, 'en', 'Filters', 'Filters', '2020-11-09 10:53:54', '2021-02-09 06:52:51'),
(952, 'en', 'Contact address', 'Contact address', '2020-11-09 10:58:46', '2021-02-09 06:52:51'),
(953, 'en', 'Contact phone', 'Contact phone', '2020-11-09 10:58:47', '2021-02-09 06:52:51'),
(954, 'en', 'Contact email', 'Contact email', '2020-11-09 10:58:47', '2021-02-09 06:52:51'),
(955, 'en', 'Filter by', 'Filter by', '2020-11-09 11:00:03', '2021-02-09 06:52:51'),
(956, 'en', 'Condition', 'Condition', '2020-11-09 11:56:13', '2021-02-09 06:52:51'),
(957, 'en', 'All Type', 'All Type', '2020-11-09 11:56:13', '2021-02-09 06:52:51'),
(960, 'en', 'Pay with wallet', 'Pay with wallet', '2020-11-09 12:56:34', '2021-02-09 06:52:51'),
(961, 'en', 'Select variation', 'Select variation', '2020-11-10 07:54:29', '2021-02-09 06:52:51'),
(962, 'en', 'No Product Added', 'No Product Added', '2020-11-10 08:07:53', '2021-02-09 06:52:51'),
(963, 'en', 'Status has been updated successfully', 'Status has been updated successfully', '2020-11-10 08:41:23', '2021-02-09 06:52:51'),
(964, 'en', 'All Seller Packages', 'All Seller Packages', '2020-11-10 09:14:10', '2021-02-09 06:52:51'),
(965, 'en', 'Add New Package', 'Add New Package', '2020-11-10 09:14:10', '2021-02-09 06:52:51'),
(966, 'en', 'Package Logo', 'Package Logo', '2020-11-10 09:14:10', '2021-02-09 06:52:51'),
(967, 'en', 'days', 'days', '2020-11-10 09:14:10', '2021-02-09 06:52:51'),
(968, 'en', 'Create New Seller Package', 'Create New Seller Package', '2020-11-10 09:14:31', '2021-02-09 06:52:51'),
(969, 'en', 'Package Name', 'Package Name', '2020-11-10 09:14:31', '2021-02-09 06:52:51'),
(970, 'en', 'Duration', 'Duration', '2020-11-10 09:14:31', '2021-02-09 06:52:51'),
(971, 'en', 'Validity in number of days', 'Validity in number of days', '2020-11-10 09:14:31', '2021-02-09 06:52:51'),
(972, 'en', 'Update Package Information', 'Update Package Information', '2020-11-10 09:14:59', '2021-02-09 06:52:51'),
(973, 'en', 'Package has been inserted successfully', 'Package has been inserted successfully', '2020-11-10 09:15:14', '2021-02-09 06:52:51'),
(974, 'en', 'Refund Request', 'Refund Request', '2020-11-10 09:17:25', '2021-02-09 06:52:51'),
(975, 'en', 'Reason', 'Reason', '2020-11-10 09:17:25', '2021-02-09 06:52:51'),
(976, 'en', 'Label', 'Label', '2020-11-10 09:20:13', '2021-02-09 06:52:51'),
(977, 'en', 'Select Label', 'Select Label', '2020-11-10 09:20:13', '2021-02-09 06:52:51'),
(978, 'en', 'Multiple Select Label', 'Multiple Select Label', '2020-11-10 09:20:13', '2021-02-09 06:52:51'),
(979, 'en', 'Radio Label', 'Radio Label', '2020-11-10 09:20:13', '2021-02-09 06:52:51'),
(980, 'en', 'Pickup Point Orders', 'Pickup Point Orders', '2020-11-10 09:25:40', '2021-02-09 06:52:51'),
(981, 'en', 'View', 'View', '2020-11-10 09:25:40', '2021-02-09 06:52:51'),
(982, 'en', 'Order #', 'Order #', '2020-11-10 09:25:48', '2021-02-09 06:52:51'),
(983, 'en', 'Order Status', 'Order Status', '2020-11-10 09:25:48', '2021-02-09 06:52:51'),
(984, 'en', 'Total amount', 'Total amount', '2020-11-10 09:25:48', '2021-02-09 06:52:51'),
(986, 'en', 'TOTAL', 'TOTAL', '2020-11-10 09:25:49', '2021-02-09 06:52:51'),
(987, 'en', 'Delivery status has been updated', 'Delivery status has been updated', '2020-11-10 09:25:49', '2021-02-09 06:52:51'),
(988, 'en', 'Payment status has been updated', 'Payment status has been updated', '2020-11-10 09:25:49', '2021-02-09 06:52:51'),
(989, 'en', 'INVOICE', 'INVOICE', '2020-11-10 09:25:58', '2021-02-09 06:52:51'),
(990, 'en', 'Set Refund Time', 'Set Refund Time', '2020-11-10 09:34:04', '2021-02-09 06:52:51'),
(991, 'en', 'Set Time for sending Refund Request', 'Set Time for sending Refund Request', '2020-11-10 09:34:04', '2021-02-09 06:52:51'),
(992, 'en', 'Set Refund Sticker', 'Set Refund Sticker', '2020-11-10 09:34:05', '2021-02-09 06:52:51'),
(993, 'en', 'Sticker', 'Sticker', '2020-11-10 09:34:05', '2021-02-09 06:52:51'),
(994, 'en', 'Refund Request All', 'Refund Request All', '2020-11-10 09:34:12', '2021-02-09 06:52:51'),
(995, 'en', 'Order Id', 'Order Id', '2020-11-10 09:34:12', '2021-02-09 06:52:51'),
(996, 'en', 'Seller Approval', 'Seller Approval', '2020-11-10 09:34:12', '2021-02-09 06:52:51'),
(997, 'en', 'Admin Approval', 'Admin Approval', '2020-11-10 09:34:12', '2021-02-09 06:52:51'),
(998, 'en', 'Refund Status', 'Refund Status', '2020-11-10 09:34:12', '2021-02-09 06:52:51'),
(1000, 'en', 'No Refund', 'No Refund', '2020-11-10 09:35:27', '2021-02-09 06:52:51'),
(1001, 'en', 'Status updated successfully', 'Status updated successfully', '2020-11-10 09:54:20', '2021-02-09 06:52:51'),
(1002, 'en', 'User Search Report', 'User Search Report', '2020-11-11 06:43:24', '2021-02-09 06:52:51'),
(1003, 'en', 'Search By', 'Search By', '2020-11-11 06:43:24', '2021-02-09 06:52:51'),
(1004, 'en', 'Number searches', 'Number searches', '2020-11-11 06:43:24', '2021-02-09 06:52:51'),
(1005, 'en', 'Sender', 'Sender', '2020-11-11 06:51:49', '2021-02-09 06:52:51'),
(1006, 'en', 'Receiver', 'Receiver', '2020-11-11 06:51:49', '2021-02-09 06:52:51'),
(1007, 'en', 'Verification form updated successfully', 'Verification form updated successfully', '2020-11-11 06:53:29', '2021-02-09 06:52:51'),
(1008, 'en', 'Invalid email or password', 'Invalid email or password', '2020-11-11 07:07:49', '2021-02-09 06:52:51'),
(1009, 'en', 'All Coupons', 'All Coupons', '2020-11-11 07:14:04', '2021-02-09 06:52:51'),
(1010, 'en', 'Add New Coupon', 'Add New Coupon', '2020-11-11 07:14:04', '2021-02-09 06:52:51'),
(1011, 'en', 'Coupon Information', 'Coupon Information', '2020-11-11 07:14:04', '2021-02-09 06:52:51'),
(1012, 'en', 'Start Date', 'Start Date', '2020-11-11 07:14:04', '2021-02-09 06:52:51'),
(1013, 'en', 'End Date', 'End Date', '2020-11-11 07:14:05', '2021-02-09 06:52:51'),
(1014, 'en', 'Product Base', 'Product Base', '2020-11-11 07:14:05', '2021-02-09 06:52:51'),
(1015, 'en', 'Send Newsletter', 'Send Newsletter', '2020-11-11 07:14:10', '2021-02-09 06:52:51'),
(1016, 'en', 'Mobile Users', 'Mobile Users', '2020-11-11 07:14:10', '2021-02-09 06:52:51'),
(1017, 'en', 'SMS subject', 'SMS subject', '2020-11-11 07:14:10', '2021-02-09 06:52:51'),
(1018, 'en', 'SMS content', 'SMS content', '2020-11-11 07:14:10', '2021-02-09 06:52:51'),
(1019, 'en', 'All Flash Delas', 'All Flash Delas', '2020-11-11 07:16:06', '2021-02-09 06:52:51'),
(1020, 'en', 'Create New Flash Dela', 'Create New Flash Dela', '2020-11-11 07:16:06', '2021-02-09 06:52:51'),
(1022, 'en', 'Page Link', 'Page Link', '2020-11-11 07:16:06', '2021-02-09 06:52:51'),
(1023, 'en', 'Flash Deal Information', 'Flash Deal Information', '2020-11-11 07:16:14', '2021-02-09 06:52:51'),
(1024, 'en', 'Background Color', 'Background Color', '2020-11-11 07:16:14', '2021-02-09 06:52:51'),
(1025, 'en', '#0000ff', '#0000ff', '2020-11-11 07:16:14', '2021-02-09 06:52:51'),
(1026, 'en', 'Text Color', 'Text Color', '2020-11-11 07:16:14', '2021-02-09 06:52:51'),
(1027, 'en', 'White', 'White', '2020-11-11 07:16:14', '2021-02-09 06:52:51'),
(1028, 'en', 'Dark', 'Dark', '2020-11-11 07:16:15', '2021-02-09 06:52:51'),
(1029, 'en', 'Choose Products', 'Choose Products', '2020-11-11 07:16:15', '2021-02-09 06:52:51'),
(1030, 'en', 'Discounts', 'Discounts', '2020-11-11 07:16:20', '2021-02-09 06:52:51'),
(1031, 'en', 'Discount Type', 'Discount Type', '2020-11-11 07:16:20', '2021-02-09 06:52:51'),
(1032, 'en', 'Twillo Credential', 'Twillo Credential', '2020-11-11 07:17:35', '2021-02-09 06:52:51'),
(1033, 'en', 'TWILIO SID', 'TWILIO SID', '2020-11-11 07:17:35', '2021-02-09 06:52:51'),
(1034, 'en', 'TWILIO AUTH TOKEN', 'TWILIO AUTH TOKEN', '2020-11-11 07:17:35', '2021-02-09 06:52:51'),
(1035, 'en', 'TWILIO VERIFY SID', 'TWILIO VERIFY SID', '2020-11-11 07:17:35', '2021-02-09 06:52:51'),
(1036, 'en', 'VALID TWILLO NUMBER', 'VALID TWILLO NUMBER', '2020-11-11 07:17:35', '2021-02-09 06:52:51'),
(1037, 'en', 'Nexmo Credential', 'Nexmo Credential', '2020-11-11 07:17:35', '2021-02-09 06:52:51'),
(1038, 'en', 'NEXMO KEY', 'NEXMO KEY', '2020-11-11 07:17:35', '2020-11-11 07:17:35'),
(1039, 'en', 'NEXMO SECRET', 'NEXMO SECRET', '2020-11-11 07:17:35', '2021-02-09 06:52:51'),
(1040, 'en', 'SSL Wireless Credential', 'SSL Wireless Credential', '2020-11-11 07:17:35', '2021-02-09 06:52:51'),
(1041, 'en', 'SSL SMS API TOKEN', 'SSL SMS API TOKEN', '2020-11-11 07:17:35', '2021-02-09 06:52:51'),
(1042, 'en', 'SSL SMS SID', 'SSL SMS SID', '2020-11-11 07:17:35', '2021-02-09 06:52:51'),
(1043, 'en', 'SSL SMS URL', 'SSL SMS URL', '2020-11-11 07:17:35', '2021-02-09 06:52:51'),
(1044, 'en', 'Fast2SMS Credential', 'Fast2SMS Credential', '2020-11-11 07:17:35', '2021-02-09 06:52:51'),
(1045, 'en', 'AUTH KEY', 'AUTH KEY', '2020-11-11 07:17:35', '2021-02-09 06:52:51'),
(1046, 'en', 'ROUTE', 'ROUTE', '2020-11-11 07:17:35', '2021-02-09 06:52:51'),
(1047, 'en', 'Promotional Use', 'Promotional Use', '2020-11-11 07:17:35', '2021-02-09 06:52:51'),
(1048, 'en', 'Transactional Use', 'Transactional Use', '2020-11-11 07:17:35', '2021-02-09 06:52:51'),
(1050, 'en', 'SENDER ID', 'SENDER ID', '2020-11-11 07:17:35', '2021-02-09 06:52:51'),
(1051, 'en', 'Nexmo OTP', 'Nexmo OTP', '2020-11-11 07:17:42', '2020-11-11 07:17:42'),
(1052, 'en', 'Twillo OTP', 'Twillo OTP', '2020-11-11 07:17:43', '2021-02-09 06:52:51'),
(1053, 'en', 'SSL Wireless OTP', 'SSL Wireless OTP', '2020-11-11 07:17:43', '2021-02-09 06:52:51'),
(1054, 'en', 'Fast2SMS OTP', 'Fast2SMS OTP', '2020-11-11 07:17:43', '2021-02-09 06:52:51'),
(1055, 'en', 'Order Placement', 'Order Placement', '2020-11-11 07:17:43', '2021-02-09 06:52:51'),
(1056, 'en', 'Delivery Status Changing Time', 'Delivery Status Changing Time', '2020-11-11 07:17:43', '2021-02-09 06:52:51'),
(1057, 'en', 'Paid Status Changing Time', 'Paid Status Changing Time', '2020-11-11 07:17:43', '2021-02-09 06:52:51'),
(1058, 'en', 'Send Bulk SMS', 'Send Bulk SMS', '2020-11-11 07:19:14', '2021-02-09 06:52:51'),
(1059, 'en', 'All Subscribers', 'All Subscribers', '2020-11-11 07:21:51', '2021-02-09 06:52:51'),
(1060, 'en', 'Coupon Information Adding', 'Coupon Information Adding', '2020-11-11 07:22:25', '2021-02-09 06:52:51'),
(1061, 'en', 'Coupon Type', 'Coupon Type', '2020-11-11 07:22:25', '2021-02-09 06:52:51'),
(1062, 'en', 'For Products', 'For Products', '2020-11-11 07:22:25', '2021-02-09 06:52:51'),
(1063, 'en', 'For Total Orders', 'For Total Orders', '2020-11-11 07:22:25', '2021-02-09 06:52:51'),
(1064, 'en', 'Add Your Product Base Coupon', 'Add Your Product Base Coupon', '2020-11-11 07:22:42', '2021-02-09 06:52:51'),
(1065, 'en', 'Coupon code', 'Coupon code', '2020-11-11 07:22:42', '2021-02-09 06:52:51'),
(1066, 'en', 'Sub Category', 'Sub Category', '2020-11-11 07:22:42', '2021-02-09 06:52:51'),
(1067, 'en', 'Add More', 'Add More', '2020-11-11 07:22:43', '2021-02-09 06:52:51'),
(1068, 'en', 'Add Your Cart Base Coupon', 'Add Your Cart Base Coupon', '2020-11-11 07:29:40', '2021-02-09 06:52:51'),
(1069, 'en', 'Minimum Shopping', 'Minimum Shopping', '2020-11-11 07:29:40', '2021-02-09 06:52:51'),
(1070, 'en', 'Maximum Discount Amount', 'Maximum Discount Amount', '2020-11-11 07:29:41', '2021-02-09 06:52:51'),
(1071, 'en', 'Coupon Information Update', 'Coupon Information Update', '2020-11-11 08:18:34', '2021-02-09 06:52:51'),
(1073, 'en', 'Please Configure SMTP Setting to work all email sending funtionality', 'Please Configure SMTP Setting to work all email sending funtionality', '2020-11-11 13:10:18', '2021-02-09 06:52:51'),
(1074, 'en', 'Configure Now', 'Configure Now', '2020-11-11 13:10:18', '2021-02-09 06:52:51'),
(1076, 'en', 'Total published products', 'Total published products', '2020-11-11 13:10:18', '2021-02-09 06:52:51'),
(1077, 'en', 'Total sellers products', 'Total sellers products', '2020-11-11 13:10:18', '2021-02-09 06:52:51'),
(1078, 'en', 'Total admin products', 'Total admin products', '2020-11-11 13:10:18', '2021-02-09 06:52:51'),
(1079, 'en', 'Manage Products', 'Manage Products', '2020-11-11 13:10:18', '2021-02-09 06:52:51'),
(1080, 'en', 'Total product category', 'Total product category', '2020-11-11 13:10:18', '2021-02-09 06:52:51'),
(1081, 'en', 'Create Category', 'Create Category', '2020-11-11 13:10:18', '2021-02-09 06:52:51'),
(1082, 'en', 'Total product sub sub category', 'Total product sub sub category', '2020-11-11 13:10:18', '2021-02-09 06:52:51'),
(1083, 'en', 'Create Sub Sub Category', 'Create Sub Sub Category', '2020-11-11 13:10:18', '2021-02-09 06:52:51'),
(1084, 'en', 'Total product sub category', 'Total product sub category', '2020-11-11 13:10:18', '2021-02-09 06:52:51'),
(1085, 'en', 'Create Sub Category', 'Create Sub Category', '2020-11-11 13:10:18', '2021-02-09 06:52:51'),
(1086, 'en', 'Total product brand', 'Total product brand', '2020-11-11 13:10:18', '2021-02-09 06:52:51'),
(1087, 'en', 'Create Brand', 'Create Brand', '2020-11-11 13:10:18', '2021-02-09 06:52:51'),
(1089, 'en', 'Total sellers', 'Total sellers', '2020-11-11 13:10:19', '2021-02-09 06:52:51'),
(1091, 'en', 'Total approved sellers', 'Total approved sellers', '2020-11-11 13:10:19', '2021-02-09 06:52:51'),
(1093, 'en', 'Total pending sellers', 'Total pending sellers', '2020-11-11 13:10:19', '2021-02-09 06:52:51'),
(1094, 'en', 'Manage Sellers', 'Manage Sellers', '2020-11-11 13:10:19', '2021-02-09 06:52:51'),
(1095, 'en', 'Category wise product sale', 'Category wise product sale', '2020-11-11 13:10:19', '2021-02-09 06:52:51'),
(1097, 'en', 'Sale', 'Sale', '2020-11-11 13:10:19', '2021-02-09 06:52:51'),
(1098, 'en', 'Category wise product stock', 'Category wise product stock', '2020-11-11 13:10:19', '2021-02-09 06:52:51'),
(1099, 'en', 'Category Name', 'Category Name', '2020-11-11 13:10:19', '2021-02-09 06:52:51'),
(1100, 'en', 'Stock', 'Stock', '2020-11-11 13:10:19', '2021-02-09 06:52:51'),
(1101, 'en', 'Frontend', 'Frontend', '2020-11-11 13:10:19', '2021-02-09 06:52:51'),
(1103, 'en', 'Home page', 'Home page', '2020-11-11 13:10:19', '2021-02-09 06:52:51'),
(1104, 'en', 'setting', 'setting', '2020-11-11 13:10:19', '2021-02-09 06:52:51'),
(1106, 'en', 'Policy page', 'Policy page', '2020-11-11 13:10:20', '2021-02-09 06:52:51'),
(1107, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1109, 'en', 'General', 'General', '2020-11-11 13:10:20', '2021-02-09 06:52:51'),
(1110, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1111, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2021-02-09 06:52:51'),
(1112, 'en', 'Useful link', 'Useful link', '2020-11-11 13:10:20', '2021-02-09 06:52:51'),
(1113, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1114, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1115, 'en', 'Activation', 'Activation', '2020-11-11 13:10:20', '2021-02-09 06:52:51'),
(1116, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1117, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1118, 'en', 'SMTP', 'SMTP', '2020-11-11 13:10:20', '2021-02-09 06:52:51'),
(1119, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1120, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1121, 'en', 'Payment method', 'Payment method', '2020-11-11 13:10:20', '2021-02-09 06:52:51'),
(1122, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1123, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1124, 'en', 'Social media', 'Social media', '2020-11-11 13:10:20', '2021-02-09 06:52:51'),
(1125, 'en', 'setting', 'setting', '2020-11-11 13:10:20', '2020-11-11 13:10:20'),
(1126, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1127, 'en', 'Business', 'Business', '2020-11-11 13:10:21', '2021-02-09 06:52:51'),
(1128, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1130, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1131, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1132, 'en', 'Seller verification', 'Seller verification', '2020-11-11 13:10:21', '2021-02-09 06:52:51'),
(1133, 'en', 'form setting', 'form setting', '2020-11-11 13:10:21', '2021-02-09 06:52:51'),
(1134, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1135, 'en', 'Language', 'Language', '2020-11-11 13:10:21', '2021-02-09 06:52:51'),
(1136, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1137, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1139, 'en', 'setting', 'setting', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1140, 'en', 'Click Here', 'Click Here', '2020-11-11 13:10:21', '2020-11-11 13:10:21'),
(1141, 'en', 'Dashboard', 'Dashboard', '2020-11-11 13:10:21', '2021-02-09 06:52:51'),
(1142, 'en', 'POS System', 'POS System', '2020-11-11 13:10:21', '2021-02-09 06:52:51'),
(1143, 'en', 'POS Manager', 'POS Manager', '2020-11-11 13:10:21', '2021-02-09 06:52:51'),
(1144, 'en', 'POS Configuration', 'POS Configuration', '2020-11-11 13:10:21', '2021-02-09 06:52:51'),
(1145, 'en', 'Products', 'Products', '2020-11-11 13:10:21', '2021-02-09 06:52:51'),
(1146, 'en', 'Add New product', 'Add New product', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1147, 'en', 'All Products', 'All Products', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1148, 'en', 'In House Products', 'In House Products', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1149, 'en', 'Seller Products', 'Seller Products', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1150, 'en', 'Digital Products', 'Digital Products', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1151, 'en', 'Bulk Import', 'Bulk Import', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1152, 'en', 'Bulk Export', 'Bulk Export', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1153, 'en', 'Category', 'Category', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1154, 'en', 'Subcategory', 'Subcategory', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1155, 'en', 'Sub Subcategory', 'Sub Subcategory', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1156, 'en', 'Brand', 'Brand', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1157, 'en', 'Attribute', 'Attribute', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1158, 'en', 'Product Reviews', 'Product Reviews', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1159, 'en', 'Sales', 'Sales', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1160, 'en', 'All Orders', 'All Orders', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1161, 'en', 'Inhouse orders', 'Inhouse orders', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1162, 'en', 'Seller Orders', 'Seller Orders', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1163, 'en', 'Pick-up Point Order', 'Pick-up Point Order', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1164, 'en', 'Refunds', 'Refunds', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1165, 'en', 'Refund Requests', 'Refund Requests', '2020-11-11 13:10:22', '2021-02-09 06:52:51'),
(1166, 'en', 'Approved Refund', 'Approved Refund', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1167, 'en', 'Refund Configuration', 'Refund Configuration', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1168, 'en', 'Customers', 'Customers', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1169, 'en', 'Customer list', 'Customer list', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1170, 'en', 'Classified Products', 'Classified Products', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1171, 'en', 'Classified Packages', 'Classified Packages', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1172, 'en', 'Sellers', 'Sellers', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1173, 'en', 'All Seller', 'All Seller', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1174, 'en', 'Payouts', 'Payouts', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1175, 'en', 'Payout Requests', 'Payout Requests', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1176, 'en', 'Seller Commission', 'Seller Commission', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1177, 'en', 'Seller Packages', 'Seller Packages', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1178, 'en', 'Seller Verification Form', 'Seller Verification Form', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1179, 'en', 'Reports', 'Reports', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1180, 'en', 'In House Product Sale', 'In House Product Sale', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1181, 'en', 'Seller Products Sale', 'Seller Products Sale', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1182, 'en', 'Products Stock', 'Products Stock', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1183, 'en', 'Products wishlist', 'Products wishlist', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1184, 'en', 'User Searches', 'User Searches', '2020-11-11 13:10:23', '2021-02-09 06:52:51'),
(1185, 'en', 'Marketing', 'Marketing', '2020-11-11 13:10:24', '2021-02-09 06:52:51'),
(1186, 'en', 'Flash deals', 'Flash deals', '2020-11-11 13:10:24', '2021-02-09 06:52:51'),
(1187, 'en', 'Newsletters', 'Newsletters', '2020-11-11 13:10:24', '2021-02-09 06:52:51'),
(1188, 'en', 'Bulk SMS', 'Bulk SMS', '2020-11-11 13:10:24', '2021-02-09 06:52:51'),
(1189, 'en', 'Subscribers', 'Subscribers', '2020-11-11 13:10:24', '2021-02-09 06:52:51'),
(1190, 'en', 'Coupon', 'Coupon', '2020-11-11 13:10:24', '2021-02-09 06:52:51'),
(1191, 'en', 'Support', 'Support', '2020-11-11 13:10:24', '2021-02-09 06:52:51'),
(1192, 'en', 'Ticket', 'Ticket', '2020-11-11 13:10:24', '2021-02-09 06:52:51'),
(1193, 'en', 'Product Queries', 'Product Queries', '2020-11-11 13:10:24', '2021-02-09 06:52:51'),
(1194, 'en', 'Website Setup', 'Website Setup', '2020-11-11 13:10:24', '2021-02-09 06:52:51'),
(1195, 'en', 'Header', 'Header', '2020-11-11 13:10:24', '2021-02-09 06:52:51'),
(1196, 'en', 'Footer', 'Footer', '2020-11-11 13:10:24', '2021-02-09 06:52:51'),
(1197, 'en', 'Pages', 'Pages', '2020-11-11 13:10:24', '2021-02-09 06:52:51'),
(1198, 'en', 'Appearance', 'Appearance', '2020-11-11 13:10:24', '2021-02-09 06:52:51'),
(1199, 'en', 'Setup & Configurations', 'Setup & Configurations', '2020-11-11 13:10:24', '2021-02-09 06:52:51'),
(1200, 'en', 'General Settings', 'General Settings', '2020-11-11 13:10:24', '2021-02-09 06:52:51'),
(1201, 'en', 'Features activation', 'Features activation', '2020-11-11 13:10:24', '2021-02-09 06:52:51'),
(1202, 'en', 'Languages', 'Languages', '2020-11-11 13:10:24', '2021-02-09 06:52:52'),
(1203, 'en', 'Currency', 'Currency', '2020-11-11 13:10:25', '2021-02-09 06:52:52'),
(1204, 'en', 'Pickup point', 'Pickup point', '2020-11-11 13:10:25', '2021-02-09 06:52:52'),
(1205, 'en', 'SMTP Settings', 'SMTP Settings', '2020-11-11 13:10:25', '2021-02-09 06:52:52'),
(1206, 'en', 'Payment Methods', 'Payment Methods', '2020-11-11 13:10:25', '2021-02-09 06:52:52'),
(1207, 'en', 'File System Configuration', 'File System Configuration', '2020-11-11 13:10:25', '2021-02-09 06:52:52'),
(1208, 'en', 'Social media Logins', 'Social media Logins', '2020-11-11 13:10:25', '2021-02-09 06:52:52'),
(1209, 'en', 'Analytics Tools', 'Analytics Tools', '2020-11-11 13:10:25', '2021-02-09 06:52:52'),
(1210, 'en', 'Facebook Chat', 'Facebook Chat', '2020-11-11 13:10:25', '2021-02-09 06:52:52'),
(1211, 'en', 'Google reCAPTCHA', 'Google reCAPTCHA', '2020-11-11 13:10:25', '2021-02-09 06:52:52'),
(1212, 'en', 'Shipping Configuration', 'Shipping Configuration', '2020-11-11 13:10:25', '2021-02-09 06:52:52'),
(1213, 'en', 'Shipping Countries', 'Shipping Countries', '2020-11-11 13:10:25', '2021-02-09 06:52:52'),
(1214, 'en', 'Affiliate System', 'Affiliate System', '2020-11-11 13:10:25', '2021-02-09 06:52:52'),
(1215, 'en', 'Affiliate Registration Form', 'Affiliate Registration Form', '2020-11-11 13:10:25', '2021-02-09 06:52:52'),
(1216, 'en', 'Affiliate Configurations', 'Affiliate Configurations', '2020-11-11 13:10:25', '2021-02-09 06:52:52'),
(1217, 'en', 'Affiliate Users', 'Affiliate Users', '2020-11-11 13:10:25', '2021-02-09 06:52:52'),
(1218, 'en', 'Referral Users', 'Referral Users', '2020-11-11 13:10:25', '2021-02-09 06:52:52'),
(1219, 'en', 'Affiliate Withdraw Requests', 'Affiliate Withdraw Requests', '2020-11-11 13:10:26', '2021-02-09 06:52:52'),
(1220, 'en', 'Offline Payment System', 'Offline Payment System', '2020-11-11 13:10:26', '2021-02-09 06:52:52'),
(1221, 'en', 'Manual Payment Methods', 'Manual Payment Methods', '2020-11-11 13:10:26', '2021-02-09 06:52:52'),
(1222, 'en', 'Offline Wallet Recharge', 'Offline Wallet Recharge', '2020-11-11 13:10:26', '2021-02-09 06:52:52'),
(1223, 'en', 'Offline Customer Package Payments', 'Offline Customer Package Payments', '2020-11-11 13:10:26', '2021-02-09 06:52:52'),
(1224, 'en', 'Offline Seller Package Payments', 'Offline Seller Package Payments', '2020-11-11 13:10:26', '2021-02-09 06:52:52'),
(1225, 'en', 'Paytm Payment Gateway', 'Paytm Payment Gateway', '2020-11-11 13:10:26', '2021-02-09 06:52:52'),
(1226, 'en', 'Set Paytm Credentials', 'Set Paytm Credentials', '2020-11-11 13:10:26', '2021-02-09 06:52:52'),
(1227, 'en', 'Club Point System', 'Club Point System', '2020-11-11 13:10:26', '2021-02-09 06:52:52'),
(1228, 'en', 'Club Point Configurations', 'Club Point Configurations', '2020-11-11 13:10:26', '2021-02-09 06:52:52'),
(1229, 'en', 'Set Product Point', 'Set Product Point', '2020-11-11 13:10:26', '2021-02-09 06:52:52'),
(1230, 'en', 'User Points', 'User Points', '2020-11-11 13:10:26', '2021-02-09 06:52:52'),
(1231, 'en', 'OTP System', 'OTP System', '2020-11-11 13:10:26', '2021-02-09 06:52:52'),
(1232, 'en', 'OTP Configurations', 'OTP Configurations', '2020-11-11 13:10:26', '2021-02-09 06:52:52'),
(1233, 'en', 'Set OTP Credentials', 'Set OTP Credentials', '2020-11-11 13:10:26', '2021-02-09 06:52:52'),
(1234, 'en', 'Staffs', 'Staffs', '2020-11-11 13:10:26', '2021-02-09 06:52:52'),
(1235, 'en', 'All staffs', 'All staffs', '2020-11-11 13:10:27', '2021-02-09 06:52:52'),
(1236, 'en', 'Staff permissions', 'Staff permissions', '2020-11-11 13:10:27', '2021-02-09 06:52:52'),
(1237, 'en', 'Addon Manager', 'Addon Manager', '2020-11-11 13:10:27', '2021-02-09 06:52:52'),
(1238, 'en', 'Browse Website', 'Browse Website', '2020-11-11 13:10:27', '2021-02-09 06:52:52'),
(1239, 'en', 'POS', 'POS', '2020-11-11 13:10:27', '2021-02-09 06:52:52'),
(1240, 'en', 'Notifications', 'Notifications', '2020-11-11 13:10:27', '2021-02-09 06:52:52'),
(1241, 'en', 'new orders', 'new orders', '2020-11-11 13:10:27', '2021-02-09 06:52:52'),
(1242, 'en', 'user-image', 'user-image', '2020-11-11 13:10:27', '2021-02-09 06:52:52'),
(1243, 'en', 'Profile', 'Profile', '2020-11-11 13:10:27', '2021-02-09 06:52:52'),
(1244, 'en', 'Logout', 'Logout', '2020-11-11 13:10:27', '2021-02-09 06:53:13'),
(1247, 'en', 'Page Not Found!', 'Page Not Found!', '2020-11-11 13:10:28', '2021-02-09 06:53:13'),
(1249, 'en', 'The page you are looking for has not been found on our server.', 'The page you are looking for has not been found on our server.', '2020-11-11 13:10:28', '2021-02-09 06:53:13'),
(1253, 'en', 'Registration', 'Registration', '2020-11-11 13:10:29', '2021-02-09 06:53:13'),
(1255, 'en', 'I am shopping for...', 'I am shopping for...', '2020-11-11 13:10:29', '2021-02-09 06:53:13'),
(1257, 'en', 'Compare', 'Compare', '2020-11-11 13:10:29', '2021-02-09 06:53:13'),
(1259, 'en', 'Wishlist', 'Wishlist', '2020-11-11 13:10:29', '2021-02-09 06:53:13'),
(1261, 'en', 'Cart', 'Cart', '2020-11-11 13:10:29', '2021-02-09 06:53:13'),
(1263, 'en', 'Your Cart is empty', 'Your Cart is empty', '2020-11-11 13:10:29', '2021-02-09 06:53:13'),
(1265, 'en', 'Categories', 'Categories', '2020-11-11 13:10:29', '2021-02-09 06:53:13'),
(1267, 'en', 'See All', 'See All', '2020-11-11 13:10:29', '2021-02-09 06:53:13'),
(1269, 'en', 'Seller Policy', 'Seller Policy', '2020-11-11 13:10:29', '2021-02-09 06:53:13'),
(1271, 'en', 'Return Policy', 'Return Policy', '2020-11-11 13:10:29', '2021-02-09 06:53:13'),
(1273, 'en', 'Support Policy', 'Support Policy', '2020-11-11 13:10:29', '2021-02-09 06:53:13'),
(1275, 'en', 'Privacy Policy', 'Privacy Policy', '2020-11-11 13:10:29', '2021-02-09 06:53:13'),
(1277, 'en', 'Your Email Address', 'Your Email Address', '2020-11-11 13:10:29', '2021-02-09 06:53:13'),
(1279, 'en', 'Subscribe', 'Subscribe', '2020-11-11 13:10:29', '2021-02-09 06:53:13'),
(1281, 'en', 'Contact Info', 'Contact Info', '2020-11-11 13:10:29', '2021-02-09 06:53:13'),
(1283, 'en', 'Address', 'Address', '2020-11-11 13:10:29', '2021-02-09 06:53:13'),
(1285, 'en', 'Phone', 'Phone', '2020-11-11 13:10:30', '2021-02-09 06:53:13'),
(1287, 'en', 'Email', 'Email', '2020-11-11 13:10:30', '2021-02-09 06:53:13'),
(1288, 'en', 'Login', 'Login', '2020-11-11 13:10:30', '2021-02-09 06:53:13'),
(1289, 'en', 'My Account', 'My Account', '2020-11-11 13:10:30', '2021-02-09 06:53:13'),
(1291, 'en', 'Login', 'Login', '2020-11-11 13:10:30', '2020-11-11 13:10:30'),
(1293, 'en', 'Order History', 'Order History', '2020-11-11 13:10:30', '2021-02-09 06:53:13'),
(1295, 'en', 'My Wishlist', 'My Wishlist', '2020-11-11 13:10:30', '2021-02-09 06:53:13'),
(1297, 'en', 'Track Order', 'Track Order', '2020-11-11 13:10:30', '2021-02-09 06:53:13'),
(1299, 'en', 'Be an affiliate partner', 'Be an affiliate partner', '2020-11-11 13:10:30', '2021-02-09 06:53:13'),
(1301, 'en', 'Be a Seller', 'Be a Seller', '2020-11-11 13:10:30', '2021-02-09 06:53:13'),
(1303, 'en', 'Apply Now', 'Apply Now', '2020-11-11 13:10:30', '2021-02-09 06:53:13'),
(1305, 'en', 'Confirmation', 'Confirmation', '2020-11-11 13:10:30', '2021-02-09 06:53:13');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1307, 'en', 'Delete confirmation message', 'Delete confirmation message', '2020-11-11 13:10:30', '2021-02-09 06:53:13'),
(1309, 'en', 'Cancel', 'Cancel', '2020-11-11 13:10:30', '2021-02-09 06:53:13'),
(1312, 'en', 'Delete', 'Delete', '2020-11-11 13:10:30', '2021-02-09 06:53:13'),
(1313, 'en', 'Item has been added to compare list', 'Item has been added to compare list', '2020-11-11 13:10:30', '2021-02-09 06:53:13'),
(1314, 'en', 'Please login first', 'Please login first', '2020-11-11 13:10:30', '2021-02-09 06:53:13'),
(1315, 'en', 'Total Earnings From', 'Total Earnings From', '2020-11-12 08:01:11', '2021-02-09 06:53:13'),
(1316, 'en', 'Client Subscription', 'Client Subscription', '2020-11-12 08:01:12', '2021-02-09 06:53:13'),
(1317, 'en', 'Product category', 'Product category', '2020-11-12 08:03:46', '2021-02-09 06:53:13'),
(1318, 'en', 'Product sub sub category', 'Product sub sub category', '2020-11-12 08:03:46', '2021-02-09 06:53:13'),
(1319, 'en', 'Product sub category', 'Product sub category', '2020-11-12 08:03:46', '2021-02-09 06:53:13'),
(1320, 'en', 'Product brand', 'Product brand', '2020-11-12 08:03:46', '2021-02-09 06:53:13'),
(1321, 'en', 'Top Client Packages', 'Top Client Packages', '2020-11-12 08:05:21', '2021-02-09 06:53:13'),
(1322, 'en', 'Top Freelancer Packages', 'Top Freelancer Packages', '2020-11-12 08:05:21', '2021-02-09 06:53:13'),
(1323, 'en', 'Number of sale', 'Number of sale', '2020-11-12 09:13:09', '2021-02-09 06:53:13'),
(1324, 'en', 'Number of Stock', 'Number of Stock', '2020-11-12 09:16:02', '2021-02-09 06:53:13'),
(1325, 'en', 'Top 10 Products', 'Top 10 Products', '2020-11-12 10:02:29', '2021-02-09 06:53:13'),
(1326, 'en', 'Top 12 Products', 'Top 12 Products', '2020-11-12 10:02:39', '2021-02-09 06:53:13'),
(1327, 'en', 'Admin can not be a seller', 'Admin can not be a seller', '2020-11-12 11:30:19', '2021-02-09 06:53:13'),
(1328, 'en', 'Filter by Rating', 'Filter by Rating', '2020-11-15 08:01:15', '2021-02-09 06:53:13'),
(1329, 'en', 'Published reviews updated successfully', 'Published reviews updated successfully', '2020-11-15 08:01:15', '2021-02-09 06:53:13'),
(1330, 'en', 'Refund Sticker has been updated successfully', 'Refund Sticker has been updated successfully', '2020-11-15 08:17:12', '2021-02-09 06:53:13'),
(1331, 'en', 'Edit Product', 'Edit Product', '2020-11-15 10:31:54', '2021-02-09 06:53:13'),
(1332, 'en', 'Meta Images', 'Meta Images', '2020-11-15 10:32:12', '2021-02-09 06:53:13'),
(1333, 'en', 'Update Product', 'Update Product', '2020-11-15 10:32:12', '2021-02-09 06:53:13'),
(1334, 'en', 'Product has been deleted successfully', 'Product has been deleted successfully', '2020-11-15 10:32:57', '2021-02-09 06:53:13'),
(1335, 'en', 'Your Profile has been updated successfully!', 'Your Profile has been updated successfully!', '2020-11-15 11:10:42', '2021-02-09 06:53:13'),
(1336, 'en', 'Upload limit has been reached. Please upgrade your package.', 'Upload limit has been reached. Please upgrade your package.', '2020-11-15 11:13:45', '2021-02-09 06:53:13'),
(1337, 'en', 'Add Your Product', 'Add Your Product', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1338, 'en', 'Select a category', 'Select a category', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1339, 'en', 'Select a brand', 'Select a brand', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1340, 'en', 'Product Unit', 'Product Unit', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1341, 'en', 'Minimum Qty.', 'Minimum Qty.', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1342, 'en', 'Product Tag', 'Product Tag', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1343, 'en', 'Type & hit enter', 'Type & hit enter', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1344, 'en', 'Videos', 'Videos', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1345, 'en', 'Video From', 'Video From', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1346, 'en', 'Video URL', 'Video URL', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1347, 'en', 'Customer Choice', 'Customer Choice', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1348, 'en', 'PDF', 'PDF', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1349, 'en', 'Choose PDF', 'Choose PDF', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1350, 'en', 'Select Category', 'Select Category', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1351, 'en', 'Target Category', 'Target Category', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1352, 'en', 'subsubcategory', 'subsubcategory', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1353, 'en', 'Search Category', 'Search Category', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1354, 'en', 'Search SubCategory', 'Search SubCategory', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1355, 'en', 'Search SubSubCategory', 'Search SubSubCategory', '2020-11-15 11:17:56', '2021-02-09 06:53:13'),
(1356, 'en', 'Update your product', 'Update your product', '2020-11-15 11:39:14', '2021-02-09 06:53:13'),
(1357, 'en', 'Product has been updated successfully', 'Product has been updated successfully', '2020-11-15 11:51:36', '2021-02-09 06:53:13'),
(1358, 'en', 'Add Your Digital Product', 'Add Your Digital Product', '2020-11-15 12:24:21', '2021-02-09 06:53:13'),
(1359, 'en', 'Active eCommerce CMS Update Process', 'Active eCommerce CMS Update Process', '2020-11-16 07:53:31', '2021-02-09 06:53:13'),
(1361, 'en', 'Codecanyon purchase code', 'Codecanyon purchase code', '2020-11-16 07:53:31', '2021-02-09 06:53:13'),
(1362, 'en', 'Database Name', 'Database Name', '2020-11-16 07:53:31', '2021-02-09 06:53:13'),
(1363, 'en', 'Database Username', 'Database Username', '2020-11-16 07:53:31', '2021-02-09 06:53:13'),
(1364, 'en', 'Database Password', 'Database Password', '2020-11-16 07:53:31', '2021-02-09 06:53:13'),
(1365, 'en', 'Database Hostname', 'Database Hostname', '2020-11-16 07:53:31', '2021-02-09 06:53:13'),
(1366, 'en', 'Update Now', 'Update Now', '2020-11-16 07:53:31', '2021-02-09 06:53:13'),
(1368, 'en', 'Congratulations', 'Congratulations', '2020-11-16 07:55:14', '2021-02-09 06:53:13'),
(1369, 'en', 'You have successfully completed the updating process. Please Login to continue', 'You have successfully completed the updating process. Please Login to continue', '2020-11-16 07:55:14', '2021-02-09 06:53:13'),
(1370, 'en', 'Go to Home', 'Go to Home', '2020-11-16 07:55:14', '2021-02-09 06:53:14'),
(1371, 'en', 'Login to Admin panel', 'Login to Admin panel', '2020-11-16 07:55:14', '2021-02-09 06:53:14'),
(1372, 'en', 'S3 File System Credentials', 'S3 File System Credentials', '2020-11-16 12:59:57', '2021-02-09 06:53:14'),
(1373, 'en', 'AWS_ACCESS_KEY_ID', 'AWS_ACCESS_KEY_ID', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1374, 'en', 'AWS_SECRET_ACCESS_KEY', 'AWS_SECRET_ACCESS_KEY', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1375, 'en', 'AWS_DEFAULT_REGION', 'AWS_DEFAULT_REGION', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1376, 'en', 'AWS_BUCKET', 'AWS_BUCKET', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1377, 'en', 'AWS_URL', 'AWS_URL', '2020-11-16 12:59:57', '2020-11-16 12:59:57'),
(1378, 'en', 'S3 File System Activation', 'S3 File System Activation', '2020-11-16 12:59:57', '2021-02-09 06:53:14'),
(1379, 'en', 'Your phone number', 'Your phone number', '2020-11-17 05:50:10', '2021-02-09 06:53:14'),
(1380, 'en', 'Zip File', 'Zip File', '2020-11-17 06:58:45', '2021-02-09 06:53:14'),
(1381, 'en', 'Install', 'Install', '2020-11-17 06:58:45', '2021-02-09 06:53:14'),
(1382, 'en', 'This version is not capable of installing Addons, Please update.', 'This version is not capable of installing Addons, Please update.', '2020-11-17 06:59:11', '2021-02-09 06:53:14'),
(1559, 'en', 'Search in menu', 'Search in menu', '2021-02-03 03:55:48', '2021-02-09 06:53:14'),
(1560, 'en', 'Uploaded Files', 'Uploaded Files', '2021-02-03 03:55:48', '2021-02-09 06:53:14'),
(1561, 'en', 'Shipping Cities', 'Shipping Cities', '2021-02-03 03:55:48', '2021-02-09 06:53:14'),
(1562, 'en', 'System', 'System', '2021-02-03 03:55:49', '2021-02-09 06:53:14'),
(1563, 'en', 'Server status', 'Server status', '2021-02-03 03:55:49', '2021-02-09 06:53:14'),
(1564, 'en', 'Nothing Found', 'Nothing Found', '2021-02-03 03:55:49', '2021-02-09 06:53:14'),
(1565, 'en', 'Parent Category', 'Parent Category', '2021-02-03 03:58:00', '2021-02-09 06:53:14'),
(1566, 'en', 'Level', 'Level', '2021-02-03 03:58:00', '2021-02-09 06:53:14'),
(1567, 'en', 'Category Information', 'Category Information', '2021-02-03 03:58:12', '2021-02-09 06:53:14'),
(1568, 'en', 'Translatable', 'Translatable', '2021-02-03 03:58:12', '2021-02-09 06:53:14'),
(1569, 'en', 'No Parent', 'No Parent', '2021-02-03 03:58:12', '2021-02-09 06:53:14'),
(1570, 'en', 'Physical', 'Physical', '2021-02-03 03:58:13', '2021-02-09 06:53:14'),
(1571, 'en', 'Digital', 'Digital', '2021-02-03 03:58:13', '2021-02-09 06:53:14'),
(1572, 'en', '200x200', '200x200', '2021-02-03 03:58:13', '2021-02-03 03:58:13'),
(1573, 'en', '32x32', '32x32', '2021-02-03 03:58:13', '2021-02-03 03:58:13'),
(1574, 'en', 'Search your files', 'Search your files', '2021-02-03 03:58:15', '2021-02-09 06:53:14'),
(1575, 'en', 'Category has been updated successfully', 'Category has been updated successfully', '2021-02-03 04:47:29', '2021-02-09 06:53:14'),
(1576, 'en', 'All uploaded files', 'All uploaded files', '2021-02-03 06:25:30', '2021-02-09 06:53:14'),
(1577, 'en', 'Upload New File', 'Upload New File', '2021-02-03 06:25:30', '2021-02-09 06:53:14'),
(1578, 'en', 'All files', 'All files', '2021-02-03 06:25:30', '2021-02-09 06:53:14'),
(1579, 'en', 'Search', 'Search', '2021-02-03 06:25:30', '2021-02-09 06:53:14'),
(1580, 'en', 'Details Info', 'Details Info', '2021-02-03 06:25:30', '2021-02-09 06:53:14'),
(1581, 'en', 'Copy Link', 'Copy Link', '2021-02-03 06:25:30', '2021-02-09 06:53:14'),
(1582, 'en', 'Are you sure to delete this file?', 'Are you sure to delete this file?', '2021-02-03 06:25:31', '2021-02-09 06:53:14'),
(1583, 'en', 'File Info', 'File Info', '2021-02-03 06:25:31', '2021-02-09 06:53:14'),
(1584, 'en', 'Link copied to clipboard', 'Link copied to clipboard', '2021-02-03 06:25:31', '2021-02-09 06:53:14'),
(1585, 'en', 'Oops, unable to copy', 'Oops, unable to copy', '2021-02-03 06:25:31', '2021-02-09 06:53:14'),
(1586, 'en', 'File deleted successfully', 'File deleted successfully', '2021-02-03 06:26:02', '2021-02-09 06:53:14'),
(1587, 'en', 'Add New Brand', 'Add New Brand', '2021-02-03 07:04:22', '2021-02-09 06:53:14'),
(1588, 'en', '120x80', '120x80', '2021-02-03 07:04:22', '2021-02-03 07:04:22'),
(1589, 'en', 'Brand Information', 'Brand Information', '2021-02-03 07:04:29', '2021-02-09 06:53:14'),
(1590, 'en', 'Brand has been updated successfully', 'Brand has been updated successfully', '2021-02-03 07:06:52', '2021-02-09 06:53:14'),
(1591, 'en', 'Brand has been deleted successfully', 'Brand has been deleted successfully', '2021-02-03 07:07:54', '2021-02-09 06:53:14'),
(1592, 'en', 'This is used for search. Input those words by which cutomer can find this product.', 'This is used for search. Input those words by which cutomer can find this product.', '2021-02-04 03:11:06', '2021-02-09 06:53:14'),
(1593, 'en', 'These images are visible in product details page gallery. Use 600x600 sizes images.', 'These images are visible in product details page gallery. Use 600x600 sizes images.', '2021-02-04 03:11:06', '2021-02-09 06:53:14'),
(1594, 'en', 'This image is visible in all product box. Use 300x300 sizes image. Keep some blank space around main object of your image as we had to crop some edge in different devices to make it responsive.', 'This image is visible in all product box. Use 300x300 sizes image. Keep some blank space around main object of your image as we had to crop some edge in different devices to make it responsive.', '2021-02-04 03:11:06', '2021-02-09 06:53:14'),
(1595, 'en', 'Use proper link without extra parameter. Don\'t use short share link/embeded iframe code.', 'Use proper link without extra parameter. Don\'t use short share link/embeded iframe code.', '2021-02-04 03:11:06', '2021-02-09 06:53:14'),
(1596, 'en', 'Save Product', 'Save Product', '2021-02-04 03:11:07', '2021-02-09 06:53:14'),
(1597, 'en', 'Product has been inserted successfully', 'Product has been inserted successfully', '2021-02-04 03:29:35', '2021-02-09 06:53:14'),
(1598, 'en', 'Something went wrong!', 'Something went wrong!', '2021-02-04 04:32:50', '2021-02-09 06:53:14'),
(1599, 'en', 'Sorry for the inconvenience, but we\'re working on it.', 'Sorry for the inconvenience, but we\'re working on it.', '2021-02-04 04:32:50', '2021-02-09 06:53:14'),
(1600, 'en', 'Error code', 'Error code', '2021-02-04 04:32:50', '2021-02-09 06:53:14'),
(1601, 'en', 'Please Configure SMTP Setting to work all email sending functionality', 'Please Configure SMTP Setting to work all email sending functionality', '2021-02-04 04:33:06', '2021-02-09 06:53:14'),
(1602, 'en', 'Order', 'Order', '2021-02-04 04:33:06', '2021-02-09 06:53:14'),
(1603, 'en', 'We have limited banner height to maintain UI. We had to crop from both left & right side in view for different devices to make it responsive. Before designing banner keep these points in mind.', 'We have limited banner height to maintain UI. We had to crop from both left & right side in view for different devices to make it responsive. Before designing banner keep these points in mind.', '2021-02-04 06:10:35', '2021-02-09 06:53:14'),
(1604, 'en', 'Home Banner 3 (Max 3)', 'Home Banner 3 (Max 3)', '2021-02-04 06:10:36', '2021-02-09 06:53:14'),
(1605, 'en', 'Add New Seller', 'Add New Seller', '2021-02-04 07:28:20', '2021-02-09 06:53:14'),
(1606, 'en', 'Filter by Approval', 'Filter by Approval', '2021-02-04 07:28:20', '2021-02-09 06:53:14'),
(1607, 'en', 'Non-Approved', 'Non-Approved', '2021-02-04 07:28:20', '2021-02-09 06:53:14'),
(1608, 'en', 'Type name or email & Enter', 'Type name or email & Enter', '2021-02-04 07:28:20', '2021-02-09 06:53:14'),
(1609, 'en', 'Due to seller', 'Due to seller', '2021-02-04 07:28:20', '2021-02-09 06:53:14'),
(1610, 'en', 'Log in as this Seller', 'Log in as this Seller', '2021-02-04 07:28:20', '2021-02-09 06:53:14'),
(1611, 'en', 'Go to Payment', 'Go to Payment', '2021-02-04 07:28:20', '2021-02-09 06:53:14'),
(1612, 'en', 'Ban this seller', 'Ban this seller', '2021-02-04 07:28:20', '2021-02-09 06:53:14'),
(1613, 'en', 'Do you really want to ban this seller?', 'Do you really want to ban this seller?', '2021-02-04 07:28:20', '2021-02-09 06:53:14'),
(1614, 'en', 'Proceed!', 'Proceed!', '2021-02-04 07:28:20', '2021-02-09 06:53:14'),
(1615, 'en', 'Approved sellers updated successfully', 'Approved sellers updated successfully', '2021-02-04 07:28:20', '2021-02-09 06:53:14'),
(1616, 'en', 'Seller has been deleted successfully', 'Seller has been deleted successfully', '2021-02-04 07:28:26', '2021-02-09 06:53:14'),
(1617, 'en', 'Seller Information', 'Seller Information', '2021-02-04 07:29:05', '2021-02-09 06:53:14'),
(1618, 'en', 'Seller has been inserted successfully', 'Seller has been inserted successfully', '2021-02-04 07:35:31', '2021-02-09 06:53:14'),
(1619, 'en', 'Email already exists!', 'Email already exists!', '2021-02-04 07:38:36', '2021-02-09 06:53:14'),
(1620, 'en', 'Verify Your Email Address', 'Verify Your Email Address', '2021-02-04 07:40:03', '2021-02-09 06:53:14'),
(1621, 'en', 'Before proceeding, please check your email for a verification link.', 'Before proceeding, please check your email for a verification link.', '2021-02-04 07:40:03', '2021-02-09 06:53:14'),
(1622, 'en', 'If you did not receive the email.', 'If you did not receive the email.', '2021-02-04 07:40:03', '2021-02-09 06:53:14'),
(1623, 'en', 'Click here to request another', 'Click here to request another', '2021-02-04 07:40:03', '2021-02-09 06:53:14'),
(1624, 'en', 'Email Verification', 'Email Verification', '2021-02-04 07:40:09', '2021-02-09 06:53:14'),
(1625, 'en', 'Email Verification - ', 'Email Verification -', '2021-02-04 07:40:09', '2021-02-09 06:53:14'),
(1626, 'en', 'HTTPS Activation', 'HTTPS Activation', '2021-02-04 07:43:50', '2021-02-09 06:53:14'),
(1627, 'en', 'Maintenance Mode', 'Maintenance Mode', '2021-02-04 07:43:50', '2021-02-09 06:53:14'),
(1628, 'en', 'Maintenance Mode Activation', 'Maintenance Mode Activation', '2021-02-04 07:43:50', '2021-02-09 06:53:14'),
(1629, 'en', 'Classified Product Activate', 'Classified Product Activate', '2021-02-04 07:43:50', '2021-02-09 06:53:14'),
(1630, 'en', 'Classified Product', 'Classified Product', '2021-02-04 07:43:50', '2021-02-09 06:53:14'),
(1631, 'en', 'Business Related', 'Business Related', '2021-02-04 07:43:50', '2021-02-09 06:53:14'),
(1632, 'en', 'Vendor System Activation', 'Vendor System Activation', '2021-02-04 07:43:50', '2021-02-09 06:53:14'),
(1633, 'en', 'Wallet System Activation', 'Wallet System Activation', '2021-02-04 07:43:50', '2021-02-09 06:53:14'),
(1634, 'en', 'Coupon System Activation', 'Coupon System Activation', '2021-02-04 07:43:50', '2021-02-09 06:53:14'),
(1635, 'en', 'Pickup Point Activation', 'Pickup Point Activation', '2021-02-04 07:43:50', '2021-02-09 06:53:14'),
(1636, 'en', 'Conversation Activation', 'Conversation Activation', '2021-02-04 07:43:50', '2021-02-09 06:53:14'),
(1637, 'en', 'Guest Checkout Activation', 'Guest Checkout Activation', '2021-02-04 07:43:50', '2021-02-09 06:53:14'),
(1638, 'en', 'Category-based Commission', 'Category-based Commission', '2021-02-04 07:43:50', '2021-02-09 06:53:14'),
(1639, 'en', 'After activate this option Seller commision will be disabled and You need to set commission on each category otherwise Admin will not get any commision', 'After activate this option Seller commision will be disabled and You need to set commission on each category otherwise Admin will not get any commision', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1640, 'en', 'Set Commisssion Now', 'Set Commisssion Now', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1641, 'en', 'Payment Related', 'Payment Related', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1642, 'en', 'Paypal Payment Activation', 'Paypal Payment Activation', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1643, 'en', 'You need to configure Paypal correctly to enable this feature', 'You need to configure Paypal correctly to enable this feature', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1644, 'en', 'Stripe Payment Activation', 'Stripe Payment Activation', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1645, 'en', 'SSlCommerz Activation', 'SSlCommerz Activation', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1646, 'en', 'Instamojo Payment Activation', 'Instamojo Payment Activation', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1647, 'en', 'You need to configure Instamojo Payment correctly to enable this feature', 'You need to configure Instamojo Payment correctly to enable this feature', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1648, 'en', 'Razor Pay Activation', 'Razor Pay Activation', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1649, 'en', 'You need to configure Razor correctly to enable this feature', 'You need to configure Razor correctly to enable this feature', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1650, 'en', 'PayStack Activation', 'PayStack Activation', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1651, 'en', 'You need to configure PayStack correctly to enable this feature', 'You need to configure PayStack correctly to enable this feature', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1652, 'en', 'VoguePay Activation', 'VoguePay Activation', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1653, 'en', 'You need to configure VoguePay correctly to enable this feature', 'You need to configure VoguePay correctly to enable this feature', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1654, 'en', 'Payhere Activation', 'Payhere Activation', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1655, 'en', 'Ngenius Activation', 'Ngenius Activation', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1656, 'en', 'You need to configure Ngenius correctly to enable this feature', 'You need to configure Ngenius correctly to enable this feature', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1657, 'en', 'Iyzico Activation', 'Iyzico Activation', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1658, 'en', 'You need to configure iyzico correctly to enable this feature', 'You need to configure iyzico correctly to enable this feature', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1659, 'en', 'Bkash Activation', 'Bkash Activation', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1660, 'en', 'You need to configure bkash correctly to enable this feature', 'You need to configure bkash correctly to enable this feature', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1661, 'en', 'Nagad Activation', 'Nagad Activation', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1662, 'en', 'You need to configure nagad correctly to enable this feature', 'You need to configure nagad correctly to enable this feature', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1663, 'en', 'Cash Payment Activation', 'Cash Payment Activation', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1664, 'en', 'Social Media Login', 'Social Media Login', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1665, 'en', 'Facebook login', 'Facebook login', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1666, 'en', 'You need to configure Facebook Client correctly to enable this feature', 'You need to configure Facebook Client correctly to enable this feature', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1667, 'en', 'Google login', 'Google login', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1668, 'en', 'You need to configure Google Client correctly to enable this feature', 'You need to configure Google Client correctly to enable this feature', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1669, 'en', 'Twitter login', 'Twitter login', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1670, 'en', 'You need to configure Twitter Client correctly to enable this feature', 'You need to configure Twitter Client correctly to enable this feature', '2021-02-04 07:43:51', '2021-02-09 06:53:14'),
(1671, 'en', 'Shop Logo', 'Shop Logo', '2021-02-04 07:45:53', '2021-02-09 06:53:14'),
(1672, 'en', 'Shop Address', 'Shop Address', '2021-02-04 07:45:53', '2021-02-09 06:53:14'),
(1673, 'en', 'Banner Settings', 'Banner Settings', '2021-02-04 07:45:53', '2021-02-09 06:53:14'),
(1674, 'en', 'Banners', 'Banners', '2021-02-04 07:45:53', '2021-02-09 06:53:14'),
(1675, 'en', 'We had to limit height to maintian consistancy. In some device both side of the banner might be cropped for height limitation.', 'We had to limit height to maintian consistancy. In some device both side of the banner might be cropped for height limitation.', '2021-02-04 07:45:53', '2021-02-09 06:53:14'),
(1676, 'en', 'Insert link with https ', 'Insert link with https', '2021-02-04 07:45:53', '2021-02-09 06:53:14'),
(1677, 'en', 'Your Shop has been updated successfully!', 'Your Shop has been updated successfully!', '2021-02-04 07:49:29', '2021-02-09 06:53:14'),
(1678, 'en', 'Support Ticket', 'Support Ticket', '2021-02-04 14:25:45', '2021-02-04 14:25:45'),
(1679, 'en', 'Delete', 'Delete', '2021-02-05 03:06:35', '2021-02-05 03:06:35'),
(1680, 'en', 'Search result for ', 'Search result for', '2021-02-05 03:15:40', '2021-02-09 06:53:14'),
(1681, 'en', 'Brand has been inserted successfully', 'Brand has been inserted successfully', '2021-02-05 07:27:04', '2021-02-09 06:53:14'),
(1682, 'en', 'About', 'About', '2021-02-07 02:26:32', '2021-02-09 06:53:14'),
(1683, 'en', 'Payout Info', 'Payout Info', '2021-02-07 02:26:32', '2021-02-09 06:53:14'),
(1684, 'en', 'Bank Acc Name', 'Bank Acc Name', '2021-02-07 02:26:32', '2021-02-09 06:53:14'),
(1685, 'en', 'Bank Acc Number', 'Bank Acc Number', '2021-02-07 02:26:32', '2021-02-09 06:53:14'),
(1686, 'en', 'Total Products', 'Total Products', '2021-02-07 02:26:32', '2021-02-09 06:53:14'),
(1687, 'en', 'Total Sold Amount', 'Total Sold Amount', '2021-02-07 02:26:32', '2021-02-09 06:53:14'),
(1688, 'en', 'Wallet Balance', 'Wallet Balance', '2021-02-07 02:26:32', '2021-02-09 06:53:14'),
(1689, 'en', 'Cookies Agreement', 'Cookies Agreement', '2021-02-07 03:50:48', '2021-02-09 06:53:14'),
(1690, 'en', 'Cookies Agreement Text', 'Cookies Agreement Text', '2021-02-07 03:50:48', '2021-02-09 06:53:14'),
(1691, 'en', 'Show Cookies Agreement?', 'Show Cookies Agreement?', '2021-02-07 03:50:48', '2021-02-09 06:53:14'),
(1692, 'en', 'Custom Script', 'Custom Script', '2021-02-07 03:50:48', '2021-02-09 06:53:14'),
(1693, 'en', 'Header custom script - before </head>', 'Header custom script - before </head>', '2021-02-07 03:50:48', '2021-02-09 06:53:14'),
(1694, 'en', 'Write script with <script> tag', 'Write script with <script> tag', '2021-02-07 03:50:48', '2021-02-09 06:53:14'),
(1695, 'en', 'Footer custom script - before </body>', 'Footer custom script - before </body>', '2021-02-07 03:50:48', '2021-02-09 06:53:14'),
(1696, 'en', 'Category has been inserted successfully', 'Category has been inserted successfully', '2021-02-07 04:00:49', '2021-02-09 06:53:14'),
(1697, 'en', 'All Flash Deals', 'All Flash Deals', '2021-02-07 07:05:16', '2021-02-09 06:53:14'),
(1698, 'en', 'Create New Flash Deal', 'Create New Flash Deal', '2021-02-07 07:05:16', '2021-02-09 06:53:14'),
(1699, 'en', '#FFFFFF', '#FFFFFF', '2021-02-07 07:05:19', '2021-02-07 07:05:19'),
(1700, 'en', 'This image is shown as cover banner in flash deal details page.', 'This image is shown as cover banner in flash deal details page.', '2021-02-07 07:05:19', '2021-02-09 06:53:14'),
(1701, 'en', 'Flash Deal has been inserted successfully', 'Flash Deal has been inserted successfully', '2021-02-07 07:07:14', '2021-02-09 06:53:14'),
(1702, 'en', 'Flash deal status updated successfully', 'Flash deal status updated successfully', '2021-02-07 07:07:32', '2021-02-09 06:53:14'),
(1703, 'en', 'Flash Deal has been updated successfully', 'Flash Deal has been updated successfully', '2021-02-08 06:22:46', '2021-02-09 06:53:14'),
(1704, 'en', 'update Language Info', 'update Language Info', '2021-02-09 06:28:04', '2021-02-09 06:53:14'),
(1705, 'en', 'Language has been updated successfully', 'Language has been updated successfully', '2021-02-09 06:28:10', '2021-02-09 06:53:14'),
(1706, 'en', 'Type key & Enter', 'Type key & Enter', '2021-02-09 06:29:56', '2021-02-09 06:53:14'),
(1707, 'en', 'Translations updated for ', 'Translations updated for', '2021-02-09 06:31:12', '2021-02-09 06:53:14'),
(1708, 'sa', 'All Category', 'كل الفئات', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1709, 'sa', 'All', 'الكل', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1710, 'sa', 'Flash Sale', 'بيع مفاجئ', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1711, 'sa', 'View More', 'عرض المزيد', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1712, 'sa', 'Add to wishlist', 'أضف إلى قائمة الامنيات', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1713, 'sa', 'Add to compare', 'أضف للمقارنة', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1714, 'sa', 'Add to cart', 'أضف إلى السلة', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1715, 'sa', 'Club Point', 'كلوب بوينت', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1716, 'sa', 'Classified Ads', 'الإعلانات المبوبة', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1717, 'sa', 'Used', 'مستخدم', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1718, 'sa', 'Top 10 Categories', 'أعلى 10 فئات', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1719, 'sa', 'View All Categories', 'عرض جميع الفئات', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1720, 'sa', 'Top 10 Brands', 'أفضل 10 ماركات', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1721, 'sa', 'View All Brands', 'عرض كل الماركات', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1722, 'sa', 'Terms & conditions', 'البنود و الظروف', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1723, 'sa', 'Best Selling', 'أفضل مبيعات', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1724, 'sa', 'Top 20', 'أفضل 20', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1725, 'sa', 'Featured Products', 'منتجات مميزة', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1726, 'sa', 'Best Sellers', 'أفضل البائعين', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1727, 'sa', 'Visit Store', 'قم بزيارة المعرض او المتجر', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1728, 'sa', 'Popular Suggestions', 'الاقتراحات الشعبية', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1729, 'sa', 'Category Suggestions', 'اقتراحات الفئة', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1730, 'sa', 'Automobile & Motorcycle', 'السيارات والدراجات النارية', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1731, 'sa', 'Price range', 'نطاق السعر', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1732, 'sa', 'Filter by color', 'تصفية حسب اللون', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1733, 'sa', 'Home', 'الصفحة الرئيسية', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1734, 'sa', 'Newest', 'الأحدث', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1735, 'sa', 'Oldest', 'الأقدم', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1736, 'sa', 'Price low to high', 'السعر من الارخص للاعلى', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1737, 'sa', 'Price high to low', 'السعر الاعلى الى الادنى', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1738, 'sa', 'Brands', 'العلامات التجارية', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1739, 'sa', 'All Brands', 'جميع العلامات التجارية', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1740, 'sa', 'All Sellers', 'كل البائعين', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1741, 'sa', 'Inhouse product', 'منتج داخلي', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1742, 'sa', 'Message Seller', 'مراسلة البائع', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1743, 'sa', 'Price', 'السعر', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1744, 'sa', 'Discount Price', 'سعر الخصم', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1745, 'sa', 'Color', 'اللون', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1746, 'sa', 'Quantity', 'كمية', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1747, 'sa', 'available', 'متاح', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1748, 'sa', 'Total Price', 'السعر الكلي', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1749, 'sa', 'Out of Stock', 'إنتهى من المخزن', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1750, 'sa', 'Refund', 'إعادة مال', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1751, 'sa', 'Share', 'شارك', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1752, 'sa', 'Sold By', 'تم بيعها من قبل', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1753, 'sa', 'customer reviews', 'آراء العملاء', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1754, 'sa', 'Top Selling Products', 'المنتجات الأكثر مبيعًا', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1755, 'sa', 'Description', 'وصف', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1756, 'sa', 'Video', 'فيديو', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1757, 'sa', 'Reviews', 'المراجعات', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1758, 'sa', 'Download', 'تحميل', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1759, 'sa', 'There have been no reviews for this product yet.', 'لم تكن هناك مراجعات لهذا المنتج حتى الآن.', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1760, 'sa', 'Related products', 'منتجات ذات صله', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1761, 'sa', 'Any query about this product', 'أي استفسار عن هذا المنتج', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1762, 'sa', 'Product Name', 'اسم المنتج', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1763, 'sa', 'Your Question', 'سؤالك', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1764, 'sa', 'Send', 'إرسال', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1765, 'sa', 'Use country code before number', 'استخدم رمز البلد قبل الرقم', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1766, 'sa', 'Remember Me', 'تذكرنى', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1767, 'sa', 'Dont have an account?', 'ليس لديك حساب؟', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1768, 'sa', 'Register Now', 'سجل الان', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1769, 'sa', 'Or Login With', 'أو تسجيل الدخول باستخدام', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1770, 'sa', 'oops..', 'وجه الفتاة..', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1771, 'sa', 'This item is out of stock!', 'هذا العنصر غير متوفر في المخزون!', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1772, 'sa', 'Back to shopping', 'العودة إلى التسوق', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1773, 'sa', 'Login to your account.', 'تسجيل الدخول إلى حسابك.', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1774, 'sa', 'Purchase History', 'تاريخ شراء', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1775, 'sa', 'New', 'جديد', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1776, 'sa', 'Downloads', 'التحميلات', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1777, 'sa', 'Sent Refund Request', 'طلب استرداد مرسل', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1778, 'sa', 'Product Bulk Upload', 'تحميل مجمع للمنتج', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1779, 'sa', 'Orders', 'الطلب #٪ s', '2021-02-09 06:47:58', '2021-02-09 06:47:58'),
(1780, 'sa', 'Recieved Refund Request', 'تم استلام طلب استرداد', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1781, 'sa', 'Shop Setting', 'إعداد المتجر', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1782, 'sa', 'Payment History', 'تاريخ الدفع', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1783, 'sa', 'Money Withdraw', 'سحب الأموال', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1784, 'sa', 'Conversations', 'المحادثات', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1785, 'sa', 'My Wallet', 'محفظتى', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1786, 'sa', 'Earning Points', 'كسب النقاط', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1787, 'sa', 'Support Ticket', 'بطاقة الدعم', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1788, 'sa', 'Manage Profile', 'إدارة الملف الشخصي', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1789, 'sa', 'Sold Amount', 'المبلغ المباع', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1790, 'sa', 'Your sold amount (current month)', 'المبلغ المباع (الشهر الحالي)', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1791, 'sa', 'Total Sold', 'إجمالي المبيعات', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1792, 'sa', 'Last Month Sold', 'تم بيع الشهر الماضي', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1793, 'sa', 'Total sale', 'إجمالي البيع', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1794, 'sa', 'Total earnings', 'الأرباح الكلية', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1795, 'sa', 'Successful orders', 'الطلبات الناجحة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1796, 'sa', 'Total orders', 'إجمالي الطلبات', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1797, 'sa', 'Pending orders', 'الطلبات المعلقة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1798, 'sa', 'Cancelled orders', 'الطلبات الملغاة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1799, 'sa', 'Product', 'المنتج', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1800, 'sa', 'Purchased Package', 'الحزمة المشتراة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1801, 'sa', 'Package Not Found', 'الحزمة غير موجودة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1802, 'sa', 'Upgrade Package', 'حزمة الترقية', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1803, 'sa', 'Shop', 'متجر', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1804, 'sa', 'Manage & organize your shop', 'إدارة وتنظيم متجرك', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1805, 'sa', 'Go to setting', 'اذهب إلى الإعداد', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1806, 'sa', 'Payment', 'دفع', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1807, 'sa', 'Configure your payment method', 'تكوين طريقة الدفع الخاصة بك', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1808, 'sa', 'My Panel', 'لوحتي', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1809, 'sa', 'Item has been added to wishlist', 'تمت إضافة العنصر إلى قائمة الرغبات', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1810, 'sa', 'My Points', 'نقاطي', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1811, 'sa', ' Points', 'نقاط', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1812, 'sa', 'Wallet Money', 'أموال المحفظة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1813, 'sa', 'Exchange Rate', 'سعر الصرف', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1814, 'sa', 'Point Earning history', 'سجل كسب النقاط', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1815, 'sa', 'Date', 'تاريخ', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1816, 'sa', 'Points', 'نقاط', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1817, 'sa', 'Converted', 'محولة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1818, 'sa', 'Action', 'عمل', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1819, 'sa', 'No history found.', 'لم يتم العثور على سجل.', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1820, 'sa', 'Convert has been done successfully Check your Wallets', 'تم التحويل بنجاح تحقق من محافظك', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1821, 'sa', 'Something went wrong', 'هناك خطأ ما', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1822, 'sa', 'Remaining Uploads', 'التحميلات المتبقية', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1823, 'sa', 'No Package Found', 'لم يتم العثور على حزمة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1824, 'sa', 'Search product', 'البحث عن المنتج', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1825, 'sa', 'Name', 'اسم', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1826, 'sa', 'Current Qty', 'الكمية الحالية', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1827, 'sa', 'Base Price', 'السعر الأساسي', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1828, 'sa', 'Published', 'نشرت', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1829, 'sa', 'Featured', 'متميز', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1830, 'sa', 'Options', 'خيارات', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1831, 'sa', 'Edit', 'تعديل', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1832, 'sa', 'Duplicate', 'مكرر', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1833, 'sa', '1. Download the skeleton file and fill it with data.', '1. قم بتنزيل ملف الهيكل العظمي واملأه بالبيانات.', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1834, 'sa', '2. You can download the example file to understand how the data must be filled.', '2. يمكنك تنزيل ملف المثال لفهم كيفية ملء البيانات.', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1835, 'sa', '3. Once you have downloaded and filled the skeleton file, upload it in the form below and submit.', '3. بمجرد تنزيل ملف الهيكل العظمي وتعبئته ، قم بتحميله في النموذج أدناه وأرسله.', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1836, 'sa', '4. After uploading products you need to edit them and set products images and choices.', '4. بعد تحميل المنتجات تحتاج إلى تعديلها وتعيين صور المنتجات والاختيارات.', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1837, 'sa', 'Download CSV', 'تنزيل ملف CSV', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1838, 'sa', '1. Category,Sub category,Sub Sub category and Brand should be in numerical ids.', '1. يجب أن تكون الفئة ، والفئة الفرعية ، والفئة الفرعية والعلامة التجارية في هويات رقمية.', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1839, 'sa', '2. You can download the pdf to get Category,Sub category,Sub Sub category and Brand id.', '2. يمكنك تنزيل ملف pdf للحصول على الفئة والفئة الفرعية والفئة الفرعية ومعرف العلامة التجارية.', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1840, 'sa', 'Download Category', 'فئة التحميل', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1841, 'sa', 'Download Sub category', 'تحميل فئة فرعية', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1842, 'sa', 'Download Sub Sub category', 'تحميل فئة فرعية', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1843, 'sa', 'Download Brand', 'تحميل الماركة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1844, 'sa', 'Upload CSV File', 'تحميل ملف CSV', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1845, 'sa', 'CSV', 'CSV', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1846, 'sa', 'Choose CSV File', 'اختر ملف CSV', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1847, 'sa', 'Upload', 'تحميل', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1848, 'sa', 'Add New Digital Product', 'إضافة منتج رقمي جديد', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1849, 'sa', 'Available Status', 'الحالة المتاحة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1850, 'sa', 'Admin Status', 'حالة المسؤول', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1851, 'sa', 'Pending Balance', 'رصيد معلق', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1852, 'sa', 'Send Withdraw Request', 'إرسال طلب سحب', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1853, 'sa', 'Withdraw Request history', 'سحب تاريخ الطلب', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1854, 'sa', 'Amount', 'كمية', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1855, 'sa', 'Status', 'الحالة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1856, 'sa', 'Message', 'رسالة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1857, 'sa', 'Send A Withdraw Request', 'إرسال طلب سحب', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1858, 'sa', 'Basic Info', 'معلومات أساسية', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1859, 'sa', 'Your Phone', 'هاتفك', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1860, 'sa', 'Photo', 'صورة فوتوغرافية', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1861, 'sa', 'Browse', 'تصفح', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1862, 'sa', 'Your Password', 'كلمتك السرية', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1863, 'sa', 'New Password', 'كلمة المرور الجديدة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1864, 'sa', 'Confirm Password', 'تأكيد كلمة المرور', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1865, 'sa', 'Add New Address', 'أضف عنوان جديد', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1866, 'sa', 'Payment Setting', 'إعداد الدفع', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1867, 'sa', 'Cash Payment', 'دفع نقدا', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1868, 'sa', 'Bank Payment', 'الدفع المصرفية', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1869, 'sa', 'Bank Name', 'اسم البنك', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1870, 'sa', 'Bank Account Name', 'اسم الحساب المصرفي', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1871, 'sa', 'Bank Account Number', 'رقم الحساب المصرفي', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1872, 'sa', 'Bank Routing Number', 'رقم التحويل المصرفي', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1873, 'sa', 'Update Profile', 'تحديث الملف', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1874, 'sa', 'Change your email', 'قم بتغيير بريدك الإلكتروني', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1875, 'sa', 'Your Email', 'بريدك الالكتروني', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1876, 'sa', 'Sending Email...', 'إرسال البريد الإلكتروني...', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1877, 'sa', 'Verify', 'تحقق', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1878, 'sa', 'Update Email', 'تحديث البريد الإلكتروني', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1879, 'sa', 'New Address', 'عنوان جديد', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1880, 'sa', 'Your Address', 'عنوانك', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1881, 'sa', 'Country', 'بلد', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1882, 'sa', 'Select your country', 'اختر بلدك', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1883, 'sa', 'City', 'مدينة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1884, 'sa', 'Your City', 'مدينتك', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1885, 'sa', 'Your Postal Code', 'رمزك البريدي', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1886, 'sa', '+880', '+880', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1887, 'sa', 'Save', 'حفظ', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1888, 'sa', 'Received Refund Request', 'تم استلام طلب استرداد', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1889, 'sa', 'Delete Confirmation', 'تأكيد الحذف', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1890, 'sa', 'Are you sure to delete this?', 'هل أنت متأكد من حذف هذا؟', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1891, 'sa', 'Premium Packages for Sellers', 'حزم متميزة للبائعين', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1892, 'sa', 'Product Upload', 'تحميل المنتج', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1893, 'sa', 'Digital Product Upload', 'تحميل المنتج الرقمي', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1894, 'sa', 'Purchase Package', 'حزمة الشراء', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1895, 'sa', 'Select Payment Type', 'اختر طريقة الدفع', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1896, 'sa', 'Payment Type', 'نوع الدفع', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1897, 'sa', 'Select One', 'حدد واحد', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1898, 'sa', 'Online payment', 'الدفع الالكتروني', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1899, 'sa', 'Offline payment', 'الدفع دون اتصال بالإنترنت', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1900, 'sa', 'Purchase Your Package', 'شراء باقتك', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1901, 'sa', 'Paypal', 'باي بال', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1902, 'sa', 'Stripe', 'شريط', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1903, 'sa', 'sslcommerz', 'sslcommerz', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1904, 'sa', 'Confirm', 'تؤكد', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1905, 'sa', 'Offline Package Payment', 'دفع حزمة دون اتصال', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1906, 'sa', 'Transaction ID', 'رقم المعاملة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1907, 'sa', 'Choose image', 'اختر صورة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1908, 'sa', 'Code', 'الشفرة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1909, 'sa', 'Delivery Status', 'حالة التسليم', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1910, 'sa', 'Payment Status', 'حالة السداد', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1911, 'sa', 'Paid', 'دفع', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1912, 'sa', 'Order Details', 'تفاصيل الطلب', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1913, 'sa', 'Download Invoice', 'تحميل فاتورة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1914, 'sa', 'Unpaid', 'غير مدفوعة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1915, 'sa', 'Order placed', 'تم الطلب', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1916, 'sa', 'Confirmed', 'تم تأكيد', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1917, 'sa', 'On delivery', 'عند التسليم', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1918, 'sa', 'Delivered', 'تم التوصيل', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1919, 'sa', 'Order Summary', 'ملخص الطلب', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1920, 'sa', 'Order Code', 'رمز الطلب', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1921, 'sa', 'Customer', 'الزبون', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1922, 'sa', 'Total order amount', 'إجمالي مبلغ الطلب', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1923, 'sa', 'Shipping metdod', 'metdod الشحن', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1924, 'sa', 'Flat shipping rate', 'سعر الشحن ثابت', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1925, 'sa', 'Payment metdod', 'metdod الدفع', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1926, 'sa', 'Variation', 'الاختلاف', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1927, 'sa', 'Delivery Type', 'نوع التوصيل', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1928, 'sa', 'Home Delivery', 'توصيل منزلي', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1929, 'sa', 'Order Ammount', 'مبلغ الطلب', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1930, 'sa', 'Subtotal', 'المجموع الفرعي', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1931, 'sa', 'Shipping', 'الشحن', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1932, 'sa', 'Coupon Discount', 'خصم القسيمة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1933, 'sa', 'N/A', 'غير متاح', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1934, 'sa', 'In stock', 'في الأوراق المالية', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1935, 'sa', 'Buy Now', 'اشتري الآن', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1936, 'sa', 'Item added to your cart!', 'إضافة السلعة الى سلة التسوق الخاصة بك!', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1937, 'sa', 'Proceed to Checkout', 'الشروع في الخروج', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1938, 'sa', 'Cart Items', 'عناصر عربة التسوق', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1939, 'sa', '1. My Cart', '1. عربة التسوق الخاصة بي', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1940, 'sa', 'View cart', 'عرض عربة التسوق', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1941, 'sa', '2. Shipping info', '2. معلومات الشحن', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1942, 'sa', 'Checkout', 'الدفع', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1943, 'sa', '3. Delivery info', '3. معلومات التسليم', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1944, 'sa', '4. Payment', '4. الدفع', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1945, 'sa', '5. Confirmation', '5. التأكيد', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1946, 'sa', 'Remove', 'إزالة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1947, 'sa', 'Return to shop', 'العودة الى المتجر', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1948, 'sa', 'Continue to Shipping', 'تابع إلى الشحن', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1949, 'sa', 'Or', 'أو', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1950, 'sa', 'Guest Checkout', 'ضيف المحاسبة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1951, 'sa', 'Continue to Delivery Info', 'تابع إلى معلومات التسليم', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1952, 'sa', 'Postal Code', 'الرمز البريدي', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1953, 'sa', 'Choose Delivery Type', 'اختر نوع التسليم', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1954, 'sa', 'Local Pickup', 'شاحنة محلية', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1955, 'sa', 'Select your nearest pickup point', 'حدد أقرب نقطة التقاط لك', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1956, 'sa', 'Continue to Payment', 'تابع إلى الدفع', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1957, 'sa', 'Select a payment option', 'حدد خيار الدفع', '2021-02-09 06:47:59', '2021-02-09 06:47:59');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(1958, 'sa', 'Razorpay', 'رازورباي', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1959, 'sa', 'Paystack', 'Paystack', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1960, 'sa', 'VoguePay', 'VoguePay', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1961, 'sa', 'payhere', 'ادفع هنا', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1962, 'sa', 'ngenius', 'عبقري', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1963, 'sa', 'Paytm', 'Paytm', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1964, 'sa', 'Cash on Delivery', 'الدفع عند الاستلام', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1965, 'sa', 'Your wallet balance :', 'رصيد محفظتك:', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1966, 'sa', 'Insufficient balance', 'رصيد غير كاف', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1967, 'sa', 'I agree to the', 'أنا أوافق على', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1968, 'sa', 'Complete Order', 'اكمل الطلب', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1969, 'sa', 'Summary', 'ملخص', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1970, 'sa', 'Items', 'العناصر', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1971, 'sa', 'Total Club point', 'مجموع نقاط النادي', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1972, 'sa', 'Total Shipping', 'إجمالي الشحن', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1973, 'sa', 'Have coupon code? Enter here', 'هل لديك رمز قسيمة؟ أدخل هنا', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1974, 'sa', 'Apply', 'تطبيق', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1975, 'sa', 'You need to agree with our policies', 'أنت بحاجة إلى الموافقة على سياساتنا', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1976, 'sa', 'Forgot password', 'هل نسيت كلمة المرور', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1977, 'sa', 'SEO Setting', 'إعداد SEO', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1978, 'sa', 'System Update', 'تحديث النظام', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1979, 'sa', 'Add New Payment Method', 'أضف طريقة دفع جديدة', '2021-02-09 06:47:59', '2021-02-09 06:47:59'),
(1980, 'sa', 'Manual Payment Method', 'طريقة الدفع اليدوي', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1981, 'sa', 'Heading', 'عنوان', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1982, 'sa', 'Logo', 'شعار', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1983, 'sa', 'Manual Payment Information', 'معلومات الدفع اليدوي', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1984, 'sa', 'Type', 'اكتب', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1985, 'sa', 'Custom Payment', 'الدفع المخصص', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1986, 'sa', 'Check Payment', 'التحقق من الدفع', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1987, 'sa', 'Checkout Thumbnail', 'صورة مصغرة للخروج', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1988, 'sa', 'Payment Instruction', 'تعليمات الدفع', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1989, 'sa', 'Bank Information', 'المعلومات المصرفية', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1990, 'sa', 'Select File', 'حدد ملف', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1991, 'sa', 'Upload New', 'تحميل جديد', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1992, 'sa', 'Sort by newest', 'الترتيب حسب الأحدث', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1993, 'sa', 'Sort by oldest', 'فرز حسب الأقدم', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1994, 'sa', 'Sort by smallest', 'فرز حسب الأصغر', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1995, 'sa', 'Sort by largest', 'فرز حسب الأكبر', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1996, 'sa', 'Selected Only', 'المحدد فقط', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1997, 'sa', 'No files found', 'لا توجد ملفات', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1998, 'sa', '0 File selected', '0 ملف محدد', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(1999, 'sa', 'Clear', 'واضح', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2000, 'sa', 'Prev', 'السابق', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2001, 'sa', 'Next', 'التالى', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2002, 'sa', 'Add Files', 'إضافة ملفات', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2003, 'sa', 'Method has been inserted successfully', 'تم إدخال الطريقة بنجاح', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2004, 'sa', 'Order Date', 'تاريخ الطلب', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2005, 'sa', 'Bill to', 'مشروع قانون ل', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2006, 'sa', 'Sub Total', 'المجموع الفرعي', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2007, 'sa', 'Total Tax', 'مجموع الضريبة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2008, 'sa', 'Grand Total', 'المبلغ الإجمالي', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2009, 'sa', 'Your order has been placed successfully. Please submit payment information from purchase history', 'تم وضع طلبك بنجاح. يرجى تقديم معلومات الدفع من سجل الشراء', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2010, 'sa', 'Thank You for Your Order!', 'شكرا لطلبك!', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2011, 'sa', 'Order Code:', 'رمز الطلب:', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2012, 'sa', 'A copy or your order summary has been sent to', 'تم إرسال نسخة أو ملخص طلبك إلى', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2013, 'sa', 'Make Payment', 'قم بالدفع', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2014, 'sa', 'Payment screenshot', 'لقطة شاشة الدفع', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2015, 'sa', 'Paypal Credential', 'اعتماد Paypal', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2016, 'sa', 'Paypal Client ID', 'معرف عميل Paypal', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2017, 'sa', 'Paypal Client Secret', 'سر عميل Paypal', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2018, 'sa', 'Paypal Sandbox Mode', 'وضع Paypal Sandbox', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2019, 'sa', 'Sslcommerz Credential', 'اعتماد Sslcommerz', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2020, 'sa', 'Sslcz Store Id', 'معرف متجر sslcz', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2021, 'sa', 'Sslcz store password', 'كلمة مرور متجر sslcz', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2022, 'sa', 'Sslcommerz Sandbox Mode', 'وضع الحماية Sslcommerz', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2023, 'sa', 'Stripe Credential', 'اعتماد شريطي', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2024, 'sa', 'STRIPE KEY', 'مفتاح الشريط', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2025, 'sa', 'STRIPE SECRET', 'سر الشريط', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2026, 'sa', 'RazorPay Credential', 'اعتماد RazorPay', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2027, 'sa', 'RAZOR KEY', 'مفتاح الحلاقة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2028, 'sa', 'RAZOR SECRET', 'سر الحلاقة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2029, 'sa', 'Instamojo Credential', 'اعتماد Instamojo', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2030, 'sa', 'API KEY', 'مفتاح API', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2031, 'sa', 'IM API KEY', 'IM API KEY', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2032, 'sa', 'AUTH TOKEN', 'AUTH TOKEN', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2033, 'sa', 'IM AUTH TOKEN', 'رمز IM AUTH', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2034, 'sa', 'Instamojo Sandbox Mode', 'وضع Instamojo Sandbox', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2035, 'sa', 'PayStack Credential', 'اعتماد PayStack', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2036, 'sa', 'PUBLIC KEY', 'المفتاح العمومي', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2037, 'sa', 'SECRET KEY', 'مفتاح سري', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2038, 'sa', 'MERCHANT EMAIL', 'البريد الإلكتروني للتاجر', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2039, 'sa', 'VoguePay Credential', 'اعتماد VoguePay', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2040, 'sa', 'MERCHANT ID', 'معرف التاجر', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2041, 'sa', 'Sandbox Mode', 'وضع الحماية', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2042, 'sa', 'Payhere Credential', 'اعتماد Payhere', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2043, 'sa', 'PAYHERE MERCHANT ID', 'معرف تاجر بايهير', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2044, 'sa', 'PAYHERE SECRET', 'PAYHERE SECRET', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2045, 'sa', 'PAYHERE CURRENCY', 'عملة الدفع', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2046, 'sa', 'Payhere Sandbox Mode', 'وضع Payhere Sandbox', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2047, 'sa', 'Ngenius Credential', 'Ngenius Credential', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2048, 'sa', 'NGENIUS OUTLET ID', 'معرف منفذ NGENIUS', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2049, 'sa', 'NGENIUS API KEY', 'NGENIUS API KEY', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2050, 'sa', 'NGENIUS CURRENCY', 'العملة الأجنبية', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2051, 'sa', 'Mpesa Credential', 'اعتماد Mpesa', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2052, 'sa', 'MPESA CONSUMER KEY', 'مفتاح المستهلك MPESA', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2053, 'sa', 'MPESA_CONSUMER_KEY', 'MPESA_CONSUMER_KEY', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2054, 'sa', 'MPESA CONSUMER SECRET', 'سر المستهلك MPESA', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2055, 'sa', 'MPESA_CONSUMER_SECRET', 'MPESA_CONSUMER_SECRET', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2056, 'sa', 'MPESA SHORT CODE', 'كود MPESA المختصر', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2057, 'sa', 'MPESA_SHORT_CODE', 'MPESA_SHORT_CODE', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2058, 'sa', 'MPESA SANDBOX ACTIVATION', 'تنشيط ساندبوكس MPESA', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2059, 'sa', 'Flutterwave Credential', 'اعتماد Flutterwave', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2060, 'sa', 'RAVE_PUBLIC_KEY', 'RAVE_PUBLIC_KEY', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2061, 'sa', 'RAVE_SECRET_KEY', 'RAVE_SECRET_KEY', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2062, 'sa', 'RAVE_TITLE', 'RAVE_TITLE', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2063, 'sa', 'STAGIN ACTIVATION', 'تنشيط STAGIN', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2064, 'sa', 'All Product', 'كل المنتجات', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2065, 'sa', 'Sort By', 'ترتيب حسب', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2066, 'sa', 'Rating (High > Low)', 'التصنيف (مرتفع> منخفض)', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2067, 'sa', 'Rating (Low > High)', 'التصنيف (منخفض> مرتفع)', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2068, 'sa', 'Num of Sale (High > Low)', 'عدد المبيعات (مرتفع> منخفض)', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2069, 'sa', 'Num of Sale (Low > High)', 'عدد المبيعات (منخفض> مرتفع)', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2070, 'sa', 'Base Price (High > Low)', 'السعر الأساسي (مرتفع> منخفض)', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2071, 'sa', 'Base Price (Low > High)', 'السعر الأساسي (منخفض> مرتفع)', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2072, 'sa', 'Type & Enter', 'اكتب & أدخل', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2073, 'sa', 'Added By', 'أضيفت من قبل', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2074, 'sa', 'Num of Sale', 'رقم البيع', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2075, 'sa', 'Total Stock', 'إجمالي المخزون', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2076, 'sa', 'Todays Deal', 'صفقة اليوم', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2077, 'sa', 'Rating', 'تقييم', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2078, 'sa', 'times', 'مرات', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2079, 'sa', 'Add Nerw Product', 'أضف منتج نيرو', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2080, 'sa', 'Product Information', 'معلومات المنتج', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2081, 'sa', 'Unit', 'وحدة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2082, 'sa', 'Unit (e.g. KG, Pc etc)', 'الوحدة (مثل KG ، Pc إلخ)', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2083, 'sa', 'Minimum Qty', 'الحد الأدنى من الكمية', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2084, 'sa', 'Tags', 'العلامات', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2085, 'sa', 'Type and hit enter to add a tag', 'اكتب واضغط على Enter لإضافة علامة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2086, 'sa', 'Barcode', 'الباركود', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2087, 'sa', 'Refundable', 'مستردة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2088, 'sa', 'Product Images', 'صور المنتج', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2089, 'sa', 'Gallery Images', 'معرض الصور', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2090, 'sa', 'Todays Deal updated successfully', 'تم تحديث صفقة اليوم بنجاح', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2091, 'sa', 'Published products updated successfully', 'تم تحديث المنتجات المنشورة بنجاح', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2092, 'sa', 'Thumbnail Image', 'صورة مصغرة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2093, 'sa', 'Featured products updated successfully', 'تم تحديث المنتجات المميزة بنجاح', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2094, 'sa', 'Product Videos', 'فيديو المنتج', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2095, 'sa', 'Video Provider', 'مزود الفيديو', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2096, 'sa', 'Youtube', 'موقع YouTube', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2097, 'sa', 'Dailymotion', 'ديلي موشن', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2098, 'sa', 'Vimeo', 'فيميو', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2099, 'sa', 'Video Link', 'رابط الفيديو', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2100, 'sa', 'Product Variation', 'تنوع المنتج', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2101, 'sa', 'Colors', 'الألوان', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2102, 'sa', 'Attributes', 'السمات', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2103, 'sa', 'Choose Attributes', 'اختر السمات', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2104, 'sa', 'Choose the attributes of this product and then input values of each attribute', 'اختر سمات هذا المنتج ثم قيم الإدخال لكل سمة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2105, 'sa', 'Product price + stock', 'سعر المنتج + الأسهم', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2106, 'sa', 'Unit price', 'سعر الوحدة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2107, 'sa', 'Purchase price', 'سعر الشراء', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2108, 'sa', 'Flat', 'مسطحة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2109, 'sa', 'Percent', 'نسبه مئويه', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2110, 'sa', 'Discount', 'خصم', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2111, 'sa', 'Product Description', 'وصف المنتج', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2112, 'sa', 'Product Shipping Cost', 'تكلفة شحن المنتج', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2113, 'sa', 'Free Shipping', 'الشحن مجانا', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2114, 'sa', 'Flat Rate', 'سعر موحد', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2115, 'sa', 'Shipping cost', 'تكلفة الشحن', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2116, 'sa', 'PDF Specification', 'مواصفات PDF', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2117, 'sa', 'SEO Meta Tags', 'العلامات الوصفية SEO', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2118, 'sa', 'Meta Title', 'عنوان الفوقية', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2119, 'sa', 'Meta Image', 'صورة ميتا', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2120, 'sa', 'Choice Title', 'عنوان الاختيار', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2121, 'sa', 'Enter choice values', 'أدخل قيم الاختيار', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2122, 'sa', 'All categories', 'جميع الفئات', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2123, 'sa', 'Add New category', 'إضافة فئة جديدة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2124, 'sa', 'Type name & Enter', 'اكتب الاسم وأدخل', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2125, 'sa', 'Banner', 'لافتة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2126, 'sa', 'Commission', 'عمولة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2127, 'sa', 'icon', 'أيقونة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2128, 'sa', 'Featured categories updated successfully', 'تم تحديث الفئات المميزة بنجاح', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2129, 'sa', 'Hot', 'الحار', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2130, 'sa', 'Filter by Payment Status', 'تصفية حسب حالة الدفع', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2131, 'sa', 'Un-Paid', 'غير مدفوعة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2132, 'sa', 'Filter by Deliver Status', 'تصفية حسب تسليم الحالة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2133, 'sa', 'Pending', 'قيد الانتظار', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2134, 'sa', 'Type Order code & hit Enter', 'اكتب رمز الطلب واضغط على Enter', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2135, 'sa', 'Num. of Products', 'رقم. المنتجات', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2136, 'sa', 'Walk In Customer', 'دخول العميل', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2137, 'sa', 'QTY', 'الكمية', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2138, 'sa', 'Without Shipping Charge', 'بدون رسوم الشحن', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2139, 'sa', 'With Shipping Charge', 'مع رسوم الشحن', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2140, 'sa', 'Pay With Cash', 'الدفع نقدا', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2141, 'sa', 'Shipping Address', 'عنوان الشحن', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2142, 'sa', 'Close', 'قريب', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2143, 'sa', 'Select country', 'حدد الدولة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2144, 'sa', 'Order Confirmation', 'تأكيد الطلب', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2145, 'sa', 'Are you sure to confirm this order?', 'هل أنت متأكد من تأكيد هذا الطلب؟', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2146, 'sa', 'Comfirm Order', 'ترتيب Comfirm', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2147, 'sa', 'Personal Info', 'معلومات شخصية', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2148, 'sa', 'Repeat Password', 'اعد كلمة السر', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2149, 'sa', 'Shop Name', 'اسم المحل', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2150, 'sa', 'Register Your Shop', 'سجل متجرك', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2151, 'sa', 'Affiliate Informations', 'المعلومات التابعة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2152, 'sa', 'Affiliate', 'شركة تابعة', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2153, 'sa', 'User Info', 'معلومات المستخدم', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2154, 'sa', 'Installed Addon', 'الملحق المثبت', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2155, 'sa', 'Available Addon', 'الملحق المتاح', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2156, 'sa', 'Install New Addon', 'قم بتثبيت ملحق جديد', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2157, 'sa', 'Version', 'الإصدار', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2158, 'sa', 'Activated', 'مفعل', '2021-02-09 06:48:00', '2021-02-09 06:48:00'),
(2159, 'sa', 'Deactivated', 'معطل', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2160, 'sa', 'Activate OTP', 'تفعيل OTP', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2161, 'sa', 'OTP will be Used For', 'سيتم استخدام OTP لـ', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2162, 'sa', 'Settings updated successfully', 'تم تحديث الإعدادات بنجاح', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2163, 'sa', 'Product Owner', 'مالك المنتج', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2164, 'sa', 'Point', 'نقطة', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2165, 'sa', 'Set Point for Product Within a Range', 'تعيين نقطة للمنتج ضمن النطاق', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2166, 'sa', 'Set Point for multiple products', 'تعيين نقطة لمنتجات متعددة', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2167, 'sa', 'Min Price', 'سعر دقيقة', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2168, 'sa', 'Max Price', 'أقصى سعر', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2169, 'sa', 'Set Point for all Products', 'تعيين نقطة لجميع المنتجات', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2170, 'sa', 'Set Point For ', 'تعيين نقطة ل', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2171, 'sa', 'Convert Status', 'تحويل الحالة', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2172, 'sa', 'Earned At', 'حصل في', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2173, 'sa', 'Seller Based Selling Report', 'تقرير البيع القائم على البائع', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2174, 'sa', 'Sort by verificarion status', 'فرز حسب حالة التحقق', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2175, 'sa', 'Approved', 'وافق', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2176, 'sa', 'Non Approved', 'ليس مصدق عليه', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2177, 'sa', 'Filter', 'منقي', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2178, 'sa', 'Seller Name', 'البائع اسم', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2179, 'sa', 'Number of Product Sale', 'عدد بيع المنتج', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2180, 'sa', 'Order Amount', 'كمية الطلب', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2181, 'sa', 'Facebook Chat Setting', 'إعداد دردشة Facebook', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2182, 'sa', 'Facebook Page ID', 'معرف صفحة الفيسبوك', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2183, 'sa', 'Please be carefull when you are configuring Facebook chat. For incorrect configuration you will not get messenger icon on your user-end site.', 'يرجى توخي الحذر عند تكوين دردشة Facebook. للتكوين غير الصحيح ، لن تحصل على أيقونة messenger على موقع المستخدم الخاص بك.', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2184, 'sa', 'Login into your facebook page', 'تسجيل الدخول إلى صفحة الفيسبوك الخاصة بك', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2185, 'sa', 'Find the About option of your facebook page', 'ابحث عن خيار حول صفحتك على Facebook', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2186, 'sa', 'At the very bottom, you can find the \\“Facebook Page ID\\”', 'في الجزء السفلي ، يمكنك العثور على \\ \"معرف صفحة Facebook \\\"', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2187, 'sa', 'Go to Settings of your page and find the option of \\\"Advance Messaging\\\"', 'انتقل إلى إعدادات صفحتك وابحث عن خيار \\ \"تقديم الرسائل \\\"', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2188, 'sa', 'Scroll down that page and you will get \\\"white listed domain\\\"', 'مرر لأسفل تلك الصفحة وستحصل على \\ \"المجال المدرج في القائمة البيضاء \\\"', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2189, 'sa', 'Set your website domain name', 'قم بتعيين اسم مجال موقع الويب الخاص بك', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2190, 'sa', 'Google reCAPTCHA Setting', 'إعداد Google reCAPTCHA', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2191, 'sa', 'Site KEY', 'مفتاح الموقع', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2192, 'sa', 'Select Shipping Method', 'إختر طريقة الشحن', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2193, 'sa', 'Product Wise Shipping Cost', 'تكلفة شحن المنتج الحكيمة', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2194, 'sa', 'Flat Rate Shipping Cost', 'تكلفة الشحن بسعر موحد', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2195, 'sa', 'Seller Wise Flat Shipping Cost', 'البائع شقة الحكمة أجور الشحن', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2196, 'sa', 'Note', 'ملحوظة', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2197, 'sa', 'Product Wise Shipping Cost calulation: Shipping cost is calculate by addition of each product shipping cost', 'حساب تكلفة الشحن الحكيمة للمنتج: يتم حساب تكلفة الشحن عن طريق إضافة تكلفة شحن كل منتج', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2198, 'sa', 'Flat Rate Shipping Cost calulation: How many products a customer purchase, doesn\'t matter. Shipping cost is fixed', 'حساب تكلفة الشحن بالسعر الثابت: لا يهم كم عدد المنتجات التي يشتريها العميل. تكلفة الشحن ثابتة', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2199, 'sa', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If a customer purchase 2 product from two seller shipping cost is calculate by addition of each seller flat shipping cost', 'حساب البائع لتكلفة الشحن الثابتة: سعر ثابت لكل بائع. إذا قام العميل بشراء منتجين من اثنين من تكلفة الشحن للبائعين ، يتم حسابها بإضافة تكلفة الشحن الثابتة لكل بائع', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2200, 'sa', 'Flat Rate Cost', 'تكلفة السعر الثابت', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2201, 'sa', 'Shipping Cost for Admin Products', 'تكلفة الشحن للمنتجات الإدارية', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2202, 'sa', 'Countries', 'بلدان', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2203, 'sa', 'Show/Hide', 'اظهر المخفي', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2204, 'sa', 'Country status updated successfully', 'تم تحديث حالة البلد بنجاح', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2205, 'sa', 'All Subcategories', 'جميع الفئات الفرعية', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2206, 'sa', 'Add New Subcategory', 'إضافة فئة فرعية جديدة', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2207, 'sa', 'Sub-Categories', 'الفئات الفرعية', '2021-02-09 06:48:01', '2021-02-09 06:48:01'),
(2208, 'sa', 'Sub Category Information', 'معلومات الفئة الفرعية', '2021-02-09 06:48:25', '2021-02-09 06:48:25'),
(2209, 'sa', 'Slug', 'سبيكة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2210, 'sa', 'All Sub Subcategories', 'جميع الفئات الفرعية', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2211, 'sa', 'Add New Sub Subcategory', 'إضافة تصنيف فرعي جديد', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2212, 'sa', 'Sub-Sub-categories', 'الفئات الفرعية الفرعية', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2213, 'sa', 'Make This Default', 'اجعل هذا الافتراضي', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2214, 'sa', 'Shops', 'محلات', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2215, 'sa', 'Women Clothing & Fashion', 'ملابس وموضة نسائية', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2216, 'sa', 'Cellphones & Tabs', 'الهواتف المحمولة وعلامات التبويب', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2217, 'sa', 'Welcome to', 'مرحبا بك في', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2218, 'sa', 'Create a New Account', 'انشاء حساب جديد', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2219, 'sa', 'Full Name', 'الاسم الكامل', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2220, 'sa', 'password', 'كلمه السر', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2221, 'sa', 'Confrim Password', 'تأكيد كلمة المرور', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2222, 'sa', 'I agree with the', 'وأنا أتفق مع', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2223, 'sa', 'Terms and Conditions', 'الأحكام والشروط', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2224, 'sa', 'Register', 'تسجيل', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2225, 'sa', 'Already have an account', 'هل لديك حساب', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2226, 'sa', 'Sign Up with', 'سجل مع', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2227, 'sa', 'I agree with the Terms and Conditions', 'اني اوافق على الشروط والظروف', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2228, 'sa', 'All Role', 'كل دور', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2229, 'sa', 'Add New Role', 'إضافة دور جديد', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2230, 'sa', 'Roles', 'الأدوار', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2231, 'sa', 'Add New Staffs', 'إضافة طاقم عمل جديد', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2232, 'sa', 'Role', 'وظيفة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2233, 'sa', 'Frontend Website Name', 'اسم موقع الواجهة الأمامية', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2234, 'sa', 'Website Name', 'اسم الموقع', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2235, 'sa', 'Site Motto', 'شعار الموقع', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2236, 'sa', 'Best eCommerce Website', 'أفضل موقع للتجارة الإلكترونية', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2237, 'sa', 'Site Icon', 'أيقونة الموقع', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2238, 'sa', 'Website favicon. 32x32 .png', 'أيقونة موقع الويب. 32 × 32. png', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2239, 'sa', 'Website Base Color', 'لون قاعدة الموقع', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2240, 'sa', 'Hex Color Code', 'رمز اللون السداسي', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2241, 'sa', 'Website Base Hover Color', 'لون قاعدة موقع الويب', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2242, 'sa', 'Update', 'تحديث', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2243, 'sa', 'Global Seo', 'العالمية سيو', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2244, 'sa', 'Meta description', 'ميتا الوصف', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2245, 'sa', 'Keywords', 'الكلمات الدالة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2246, 'sa', 'Separate with coma', 'فصل مع غيبوبة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2247, 'sa', 'Website Pages', 'صفحات الموقع', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2248, 'sa', 'All Pages', 'كل الصفحات', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2249, 'sa', 'Add New Page', 'أضف صفحة جديدة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2250, 'sa', 'URL', 'URL', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2251, 'sa', 'Actions', 'أجراءات', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2252, 'sa', 'Edit Page Information', 'تحرير معلومات الصفحة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2253, 'sa', 'Page Content', 'محتوى الصفحة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2254, 'sa', 'Title', 'عنوان', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2255, 'sa', 'Link', 'حلقة الوصل', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2256, 'sa', 'Use character, number, hypen only', 'استخدم الحرف ، الرقم ، الواصلة فقط', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2257, 'sa', 'Add Content', 'إضافة محتوى', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2258, 'sa', 'Seo Fields', 'سيو فيلدز', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2259, 'sa', 'Update Page', 'تحديث الصفحة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2260, 'sa', 'Default Language', 'اللغة الافتراضية', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2261, 'sa', 'Add New Language', 'أضف لغة جديدة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2262, 'sa', 'RTL', 'RTL', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2263, 'sa', 'Translation', 'ترجمة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2264, 'sa', 'Language Information', 'معلومات اللغة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2265, 'sa', 'Save Page', 'احفظ الصفحة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2266, 'sa', 'Home Page Settings', 'إعدادات الصفحة الرئيسية', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2267, 'sa', 'Home Slider', 'المنزل المنزلق', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2268, 'sa', 'Photos & Links', 'الصور والروابط', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2269, 'sa', 'Add New', 'اضف جديد', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2270, 'sa', 'Home Categories', 'فئات المنزل', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2271, 'sa', 'Home Banner 1 (Max 3)', 'لافتة المنزل 1 (الحد الأقصى 3)', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2272, 'sa', 'Banner & Links', 'لافتة وروابط', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2273, 'sa', 'Home Banner 2 (Max 3)', 'لافتة المنزل 2 (الحد الأقصى 3)', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2274, 'sa', 'Top 10', 'أعلى 10', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2275, 'sa', 'Top Categories (Max 10)', 'أهم الفئات (بحد أقصى 10)', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2276, 'sa', 'Top Brands (Max 10)', 'أشهر الماركات (بحد أقصى 10)', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2277, 'sa', 'System Name', 'اسم النظام', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2278, 'sa', 'System Logo - White', 'شعار النظام - أبيض', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2279, 'sa', 'Choose Files', 'اختر الملفات', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2280, 'sa', 'Will be used in admin panel side menu', 'سيتم استخدامها في القائمة الجانبية للوحة الإدارة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2281, 'sa', 'System Logo - Black', 'شعار النظام - أسود', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2282, 'sa', 'Will be used in admin panel topbar in mobile + Admin login page', 'سيتم استخدامها في الشريط العلوي للوحة الإدارة في الجوال + صفحة تسجيل دخول المسؤول', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2283, 'sa', 'System Timezone', 'المنطقة الزمنية للنظام', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2284, 'sa', 'Admin login page background', 'خلفية صفحة تسجيل دخول المسؤول', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2285, 'sa', 'Website Header', 'رأس موقع الويب', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2286, 'sa', 'Header Setting', 'إعداد الرأس', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2287, 'sa', 'Header Logo', 'رأس الشعار', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2288, 'sa', 'Show Language Switcher?', 'إظهار محوّل اللغة؟', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2289, 'sa', 'Show Currency Switcher?', 'إظهار محوّل العملات؟', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2290, 'sa', 'Enable stikcy header?', 'تمكين رأس stikcy؟', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2291, 'sa', 'Website Footer', 'تذييل موقع الويب', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2292, 'sa', 'Footer Widget', 'القطعة التذييل', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2293, 'sa', 'About Widget', 'حول القطعة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2294, 'sa', 'Footer Logo', 'تذييل الشعار', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2295, 'sa', 'About description', 'حول الوصف', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2296, 'sa', 'Contact Info Widget', 'أداة معلومات الاتصال', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2297, 'sa', 'Footer contact address', 'عنوان اتصال التذييل', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2298, 'sa', 'Footer contact phone', 'هاتف جهة اتصال التذييل', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2299, 'sa', 'Footer contact email', 'البريد الإلكتروني لجهة اتصال التذييل', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2300, 'sa', 'Link Widget One', 'رابط القطعة واحد', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2301, 'sa', 'Links', 'الروابط', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2302, 'sa', 'Footer Bottom', 'أسفل التذييل', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2303, 'sa', 'Copyright Widget ', 'القطعة حقوق الطبع والنشر', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2304, 'sa', 'Copyright Text', 'نص حقوق النشر', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2305, 'sa', 'Social Link Widget ', 'أداة الارتباط الاجتماعي', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2306, 'sa', 'Show Social Links?', 'إظهار الروابط الاجتماعية؟', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2307, 'sa', 'Social Links', 'روابط اجتماعية', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2308, 'sa', 'Payment Methods Widget ', 'أداة طرق الدفع', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2309, 'sa', 'RTL status updated successfully', 'تم تحديث حالة RTL بنجاح', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2310, 'sa', 'Language changed to ', 'تغيرت اللغة إلى', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2311, 'sa', 'Inhouse Product sale report', 'تقرير بيع المنتج الداخلي', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2312, 'sa', 'Sort by Category', 'فرز حسب الفئة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2313, 'sa', 'Product wise stock report', 'تقرير مخزون المنتج الحكيم', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2314, 'sa', 'Currency changed to ', 'تغيرت العملة إلى', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2315, 'sa', 'Avatar', 'الصورة الرمزية', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2316, 'sa', 'Copy', 'نسخ', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2317, 'sa', 'Variant', 'متغير', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2318, 'sa', 'Variant Price', 'سعر متغير', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2319, 'sa', 'SKU', 'SKU', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2320, 'sa', 'Key', 'مفتاح', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2321, 'sa', 'Value', 'القيمة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2322, 'sa', 'Copy Translations', 'نسخ الترجمات', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2323, 'sa', 'All Pick-up Points', 'جميع نقاط الاستلام', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2324, 'sa', 'Add New Pick-up Point', 'أضف نقطة التقاط جديدة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2325, 'sa', 'Manager', 'مدير', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2326, 'sa', 'Location', 'موقعك', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2327, 'sa', 'Pickup Station Contact', 'الاتصال بمحطة الالتقاط', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2328, 'sa', 'Open', 'افتح', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2329, 'sa', 'POS Activation for Seller', 'تفعيل نقاط البيع للبائع', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2330, 'sa', 'Order Completed Successfully.', 'اكتمل الطلب بنجاح.', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2331, 'sa', 'Text Input', 'إدخال النص', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2332, 'sa', 'Select', 'تحديد', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2333, 'sa', 'Multiple Select', 'تحديد متعدد', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2334, 'sa', 'Radio', 'مذياع', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2335, 'sa', 'File', 'ملف', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2336, 'sa', 'Email Address', 'عنوان بريد الكتروني', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2337, 'sa', 'Verification Info', 'معلومات التحقق', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2338, 'sa', 'Approval', 'موافقة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2339, 'sa', 'Due Amount', 'مبلغ مستحق', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2340, 'sa', 'Show', 'تبين', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2341, 'sa', 'Pay Now', 'ادفع الآن', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2342, 'sa', 'Affiliate User Verification', 'التحقق من المستخدم التابع', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2343, 'sa', 'Reject', 'رفض', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2344, 'sa', 'Accept', 'قبول', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2345, 'sa', 'Beauty, Health & Hair', 'الجمال والصحة والشعر', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2346, 'sa', 'Comparison', 'مقارنة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2347, 'sa', 'Reset Compare List', 'إعادة تعيين قائمة المقارنة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2348, 'sa', 'Your comparison list is empty', 'قائمة المقارنة الخاصة بك فارغة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2349, 'sa', 'Convert Point To Wallet', 'تحويل النقطة إلى المحفظة', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2350, 'sa', 'Note: You need to activate wallet option first before using club point addon.', 'ملاحظة: أنت بحاجة إلى تنشيط خيار المحفظة أولاً قبل استخدام ملحق نقطة النادي.', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2351, 'sa', 'Create an account.', 'انشئ حساب.', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2352, 'sa', 'Use Email Instead', 'استخدم البريد الإلكتروني بدلاً من ذلك', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2353, 'sa', 'By signing up you agree to our terms and conditions.', 'بالتسجيل فإنك توافق على الشروط والأحكام الخاصة بنا.', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2354, 'sa', 'Create Account', 'إنشاء حساب', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2355, 'sa', 'Or Join With', 'أو انضم إلى', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2356, 'sa', 'Already have an account?', 'هل لديك حساب؟', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2357, 'sa', 'Log In', 'تسجيل الدخول', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2358, 'sa', 'Computer & Accessories', 'الكمبيوتر وملحقاته', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2359, 'sa', 'Product(s)', 'منتجات)', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2360, 'sa', 'in your cart', 'في عربة التسوق الخاصة بك', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2361, 'sa', 'in your wishlist', 'في قائمة الرغبات الخاصة بك', '2021-02-09 06:48:26', '2021-02-09 06:48:26'),
(2362, 'sa', 'you ordered', 'لقد طلبت', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2363, 'sa', 'Default Shipping Address', 'عنوان الشحن الافتراضي', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2364, 'sa', 'Sports & outdoor', 'رياضة وخارجية', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2365, 'sa', 'Copied', 'نسخ', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2366, 'sa', 'Copy the Promote Link', 'انسخ رابط الترويج', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2367, 'sa', 'Write a review', 'أكتب مراجعة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2368, 'sa', 'Your name', 'اسمك', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2369, 'sa', 'Comment', 'تعليق', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2370, 'sa', 'Your review', 'مراجعتك', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2371, 'sa', 'Submit review', 'إرسال المراجعة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2372, 'sa', 'Claire Willis', 'كلير ويليس', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2373, 'sa', 'Germaine Greene', 'جيرمين جرين', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2374, 'sa', 'Product File', 'ملف المنتج', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2375, 'sa', 'Choose file', 'اختر ملف', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2376, 'sa', 'Type to add a tag', 'اكتب لإضافة علامة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2377, 'sa', 'Images', 'الصور', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2378, 'sa', 'Main Images', 'الصور الرئيسية', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2379, 'sa', 'Meta Tags', 'العلامات الفوقية', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2380, 'sa', 'Digital Product has been inserted successfully', 'تم إدخال المنتج الرقمي بنجاح', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2381, 'sa', 'Edit Digital Product', 'تحرير المنتج الرقمي', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2382, 'sa', 'Select an option', 'حدد اختيارا', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2383, 'sa', 'tax', 'ضريبة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2384, 'sa', 'Any question about this product?', 'أي سؤال حول هذا المنتج؟', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2385, 'sa', 'Sign in', 'تسجيل الدخول', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2386, 'sa', 'Login with Google', 'تسجيل الدخول عبر جوجل', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2387, 'sa', 'Login with Facebook', 'تسجيل الدخول باستخدام الفيسبوك', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2388, 'sa', 'Login with Twitter', 'تسجيل الدخول مع Twitter', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2389, 'sa', 'Click to show phone number', 'انقر لإظهار رقم الهاتف', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2390, 'sa', 'Other Ads of', 'إعلانات أخرى من', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2391, 'sa', 'Store Home', 'مخزن المنزل', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2392, 'sa', 'Top Selling', 'الأكثر مبيعا', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2393, 'sa', 'Shop Settings', 'إعدادات المتجر', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2394, 'sa', 'Visit Shop', 'قم بزيارة المتجر', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2395, 'sa', 'Pickup Points', 'نقاط الالتقاط', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2396, 'sa', 'Select Pickup Point', 'حدد نقطة الالتقاط', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2397, 'sa', 'Slider Settings', 'إعدادات المنزلق', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2398, 'sa', 'Social Media Link', 'رابط التواصل الاجتماعي', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2399, 'sa', 'Facebook', 'موقع التواصل الاجتماعي الفيسبوك', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2400, 'sa', 'Twitter', 'تويتر', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2401, 'sa', 'Google', 'جوجل', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2402, 'sa', 'New Arrival Products', 'منتجات وصول جديدة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2403, 'sa', 'Check Your Order Status', 'تحقق من حالة طلبك', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2404, 'sa', 'Shipping method', 'طريقة الشحن', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2405, 'sa', 'Shipped By', 'تم الشحن بواسطة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2406, 'sa', 'Image', 'صورة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2407, 'sa', 'Sub Sub Category', 'فئة فرعية فرعية', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2408, 'sa', 'Inhouse Products', 'المنتجات الداخلية', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2409, 'sa', 'Forgot Password?', 'هل نسيت كلمة المرور؟', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2410, 'sa', 'Enter your email address to recover your password.', 'أدخل عنوان بريدك الإلكتروني لاستعادة كلمة المرور الخاصة بك.', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2411, 'sa', 'Email or Phone', 'بريد الكتروني او هاتف', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2412, 'sa', 'Send Password Reset Link', 'إرسال رابط إعادة تعيين كلمة السر', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2413, 'sa', 'Back to Login', 'العودة إلى تسجيل الدخول', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2414, 'sa', 'index', 'فهرس', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2415, 'sa', 'Download Your Product', 'قم بتنزيل منتجك', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2416, 'sa', 'Option', 'اختيار', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2417, 'sa', 'Applied Refund Request', 'طلب استرداد مطبق', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2418, 'sa', 'Item has been renoved from wishlist', 'تمت إعادة العنصر من قائمة الرغبات', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2419, 'sa', 'Bulk Products Upload', 'تحميل المنتجات بالجملة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2420, 'sa', 'Upload CSV', 'تحميل CSV', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2421, 'sa', 'Create a Ticket', 'قم بإنشاء تذكرة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2422, 'sa', 'Tickets', 'تذاكر', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2423, 'sa', 'Ticket ID', 'معرف التذكرة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2424, 'sa', 'Sending Date', 'تاريخ إرسال', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2425, 'sa', 'Subject', 'موضوع', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2426, 'sa', 'View Details', 'عرض التفاصيل', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2427, 'sa', 'Provide a detailed description', 'قدم وصفاً مفصلاً', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2428, 'sa', 'Type your reply', 'اكتب ردك', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2429, 'sa', 'Send Ticket', 'إرسال التذكرة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2430, 'sa', 'Load More', 'تحميل المزيد', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2431, 'sa', 'Jewelry & Watches', 'المجوهرات والساعات', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2432, 'sa', 'Filters', 'المرشحات', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2433, 'sa', 'Contact address', 'عنوان الإتصال', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2434, 'sa', 'Contact phone', 'هاتف الاتصال', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2435, 'sa', 'Contact email', 'تواصل بالبريد الاكتروني', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2436, 'sa', 'Filter by', 'مصنف بواسطة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2437, 'sa', 'Condition', 'شرط', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2438, 'sa', 'All Type', 'كل الأنواع', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2439, 'sa', 'Pay with wallet', 'ادفع بالمحفظة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2440, 'sa', 'Select variation', 'حدد الاختلاف', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2441, 'sa', 'No Product Added', 'لا يوجد منتج مضاف', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2442, 'sa', 'Status has been updated successfully', 'تم تحديث الحالة بنجاح', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2443, 'sa', 'All Seller Packages', 'جميع حزم البائع', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2444, 'sa', 'Add New Package', 'إضافة حزمة جديدة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2445, 'sa', 'Package Logo', 'حزمة الشعار', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2446, 'sa', 'days', 'أيام', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2447, 'sa', 'Create New Seller Package', 'إنشاء حزمة بائع جديدة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2448, 'sa', 'Package Name', 'اسم الحزمة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2449, 'sa', 'Duration', 'المدة الزمنية', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2450, 'sa', 'Validity in number of days', 'الصلاحية في عدد الأيام', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2451, 'sa', 'Update Package Information', 'تحديث معلومات الحزمة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2452, 'sa', 'Package has been inserted successfully', 'تم إدخال الحزمة بنجاح', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2453, 'sa', 'Refund Request', 'طلب ارجاع', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2454, 'sa', 'Reason', 'السبب', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2455, 'sa', 'Label', 'ضع الكلمة المناسبة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2456, 'sa', 'Select Label', 'حدد التسمية', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2457, 'sa', 'Multiple Select Label', 'متعدد تحديد التسمية', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2458, 'sa', 'Radio Label', 'تسمية الراديو', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2459, 'sa', 'Pickup Point Orders', 'أوامر نقطة الاستلام', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2460, 'sa', 'View', 'رأي', '2021-02-09 06:48:27', '2021-02-09 06:48:27');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(2461, 'sa', 'Order #', 'طلب #', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2462, 'sa', 'Order Status', 'حالة الطلب', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2463, 'sa', 'Total amount', 'المبلغ الإجمالي', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2464, 'sa', 'TOTAL', 'مجموع', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2465, 'sa', 'Delivery status has been updated', 'تم تحديث حالة التسليم', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2466, 'sa', 'Payment status has been updated', 'تم تحديث حالة الدفع', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2467, 'sa', 'INVOICE', 'فاتورة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2468, 'sa', 'Set Refund Time', 'ضبط وقت الاسترداد', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2469, 'sa', 'Set Time for sending Refund Request', 'تعيين الوقت لإرسال طلب استرداد', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2470, 'sa', 'Set Refund Sticker', 'تعيين ملصق استرداد', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2471, 'sa', 'Sticker', 'ملصق', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2472, 'sa', 'Refund Request All', 'طلب استرداد الكل', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2473, 'sa', 'Order Id', 'رقم التعريف الخاص بالطلب', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2474, 'sa', 'Seller Approval', 'موافقة البائع', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2475, 'sa', 'Admin Approval', 'موافقة المسؤول', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2476, 'sa', 'Refund Status', 'حالة رد الأموال', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2477, 'sa', 'No Refund', 'لا رد', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2478, 'sa', 'Status updated successfully', 'تم تحديث الحالة بنجاح', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2479, 'sa', 'User Search Report', 'تقرير بحث المستخدم', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2480, 'sa', 'Search By', 'البحث عن طريق', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2481, 'sa', 'Number searches', 'عدد عمليات البحث', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2482, 'sa', 'Sender', 'مرسل', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2483, 'sa', 'Receiver', 'المتلقي', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2484, 'sa', 'Verification form updated successfully', 'تم تحديث نموذج التحقق بنجاح', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2485, 'sa', 'Invalid email or password', 'البريد الإلكتروني أو كلمة السر خاطئة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2486, 'sa', 'All Coupons', 'جميع القسائم', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2487, 'sa', 'Add New Coupon', 'أضف قسيمة جديدة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2488, 'sa', 'Coupon Information', 'معلومات القسيمة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2489, 'sa', 'Start Date', 'تاريخ البدء', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2490, 'sa', 'End Date', 'تاريخ الانتهاء', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2491, 'sa', 'Product Base', 'قاعدة المنتج', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2492, 'sa', 'Send Newsletter', 'إرسال النشرة الإخبارية', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2493, 'sa', 'Mobile Users', 'مستخدمو المحمول', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2494, 'sa', 'SMS subject', 'موضوع الرسائل القصيرة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2495, 'sa', 'SMS content', 'محتوى الرسائل القصيرة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2496, 'sa', 'All Flash Delas', 'كل فلاش ديلاس', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2497, 'sa', 'Create New Flash Dela', 'إنشاء فلاش ديلا جديد', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2498, 'sa', 'Page Link', 'رابط الصفحة', '2021-02-09 06:48:27', '2021-02-09 06:48:27'),
(2499, 'sa', 'Flash Deal Information', 'معلومات صفقة فلاش', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2500, 'sa', 'Background Color', 'لون الخلفية', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2501, 'sa', '#0000ff', '# 0000ff', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2502, 'sa', 'Text Color', 'لون الخط', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2503, 'sa', 'White', 'أبيض', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2504, 'sa', 'Dark', 'داكن', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2505, 'sa', 'Choose Products', 'اختر المنتجات', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2506, 'sa', 'Discounts', 'الخصومات', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2507, 'sa', 'Discount Type', 'نوع الخصم', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2508, 'sa', 'Twillo Credential', 'اعتماد Twillo', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2509, 'sa', 'TWILIO SID', 'TWILIO SID', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2510, 'sa', 'TWILIO AUTH TOKEN', 'رمز TWILIO AUTH', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2511, 'sa', 'TWILIO VERIFY SID', 'TWILIO VERIFY SID', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2512, 'sa', 'VALID TWILLO NUMBER', 'رقم تويلو صالح', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2513, 'sa', 'Nexmo Credential', 'اعتماد Nexmo', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2514, 'sa', 'NEXMO KEY', 'NEXMO KEY', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2515, 'sa', 'NEXMO SECRET', 'NEXMO SECRET', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2516, 'sa', 'SSL Wireless Credential', 'اعتماد لاسلكي SSL', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2517, 'sa', 'SSL SMS API TOKEN', 'SSL SMS API TOKEN', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2518, 'sa', 'SSL SMS SID', 'SSL SMS SID', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2519, 'sa', 'SSL SMS URL', 'عنوان URL لـ SSL SMS', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2520, 'sa', 'Fast2SMS Credential', 'اعتماد Fast2SMS', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2521, 'sa', 'AUTH KEY', 'مفتاح المصادقة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2522, 'sa', 'ROUTE', 'طريق', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2523, 'sa', 'Promotional Use', 'الاستخدام الترويجي', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2524, 'sa', 'Transactional Use', 'استخدام المعاملات', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2525, 'sa', 'SENDER ID', 'هوية المرسل', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2526, 'sa', 'Nexmo OTP', 'Nexmo OTP', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2527, 'sa', 'Twillo OTP', 'Twillo OTP', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2528, 'sa', 'SSL Wireless OTP', 'SSL Wireless OTP', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2529, 'sa', 'Fast2SMS OTP', 'Fast2SMS OTP', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2530, 'sa', 'Order Placement', 'ترتيب التنسيب', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2531, 'sa', 'Delivery Status Changing Time', 'وقت تغيير حالة التسليم', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2532, 'sa', 'Paid Status Changing Time', 'وقت تغيير الحالة المدفوعة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2533, 'sa', 'Send Bulk SMS', 'إرسال رسائل نصية مجمعة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2534, 'sa', 'All Subscribers', 'كل المشتركين', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2535, 'sa', 'Coupon Information Adding', 'إضافة معلومات القسيمة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2536, 'sa', 'Coupon Type', 'نوع القسيمة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2537, 'sa', 'For Products', 'للمنتجات', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2538, 'sa', 'For Total Orders', 'لإجمالي الطلبات', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2539, 'sa', 'Add Your Product Base Coupon', 'أضف قسيمة قاعدة المنتج الخاصة بك', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2540, 'sa', 'Coupon code', 'رمز الكوبون', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2541, 'sa', 'Sub Category', 'تصنيف فرعي', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2542, 'sa', 'Add More', 'أضف المزيد', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2543, 'sa', 'Add Your Cart Base Coupon', 'أضف قسيمة سلة التسوق الخاصة بك', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2544, 'sa', 'Minimum Shopping', 'الحد الأدنى من التسوق', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2545, 'sa', 'Maximum Discount Amount', 'الحد الأقصى لمبلغ الخصم', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2546, 'sa', 'Coupon Information Update', 'تحديث معلومات القسيمة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2547, 'sa', 'Please Configure SMTP Setting to work all email sending funtionality', 'يرجى تكوين إعداد SMTP للعمل على جميع وظائف إرسال البريد الإلكتروني', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2548, 'sa', 'Configure Now', 'تكوين الآن', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2549, 'sa', 'Total published products', 'إجمالي المنتجات المنشورة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2550, 'sa', 'Total sellers products', 'إجمالي منتجات البائعين', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2551, 'sa', 'Total admin products', 'إجمالي منتجات الإدارة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2552, 'sa', 'Manage Products', 'إدارة المنتجات', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2553, 'sa', 'Total product category', 'فئة المنتج الإجمالية', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2554, 'sa', 'Create Category', 'إنشاء فئة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2555, 'sa', 'Total product sub sub category', 'إجمالي فئة فرعية المنتج', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2556, 'sa', 'Create Sub Sub Category', 'تكوين فئة فرعية فرعية', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2557, 'sa', 'Total product sub category', 'إجمالي فئة المنتج الفرعية', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2558, 'sa', 'Create Sub Category', 'إنشاء فئة فرعية', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2559, 'sa', 'Total product brand', 'إجمالي العلامة التجارية للمنتج', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2560, 'sa', 'Create Brand', 'إنشاء علامة تجارية', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2561, 'sa', 'Total sellers', 'مجموع البائعين', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2562, 'sa', 'Total approved sellers', 'إجمالي البائعين المعتمدين', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2563, 'sa', 'Total pending sellers', 'إجمالي البائعين المعلقين', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2564, 'sa', 'Manage Sellers', 'إدارة البائعين', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2565, 'sa', 'Category wise product sale', 'بيع المنتج من فئة الحكمة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2566, 'sa', 'Sale', 'تخفيض السعر', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2567, 'sa', 'Category wise product stock', 'فئة مخزون المنتج الحكيم', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2568, 'sa', 'Category Name', 'اسم التصنيف', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2569, 'sa', 'Stock', 'مخزون', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2570, 'sa', 'Frontend', 'نهاية المقدمة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2571, 'sa', 'Home page', 'الصفحة الرئيسية', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2572, 'sa', 'setting', 'ضبط', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2573, 'sa', 'Policy page', 'صفحة السياسة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2574, 'sa', 'General', 'جنرال لواء', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2575, 'sa', 'Click Here', 'انقر هنا', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2576, 'sa', 'Useful link', 'رابط مفيد', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2577, 'sa', 'Activation', 'التنشيط', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2578, 'sa', 'SMTP', 'SMTP', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2579, 'sa', 'Payment method', 'طريقة الدفع او السداد', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2580, 'sa', 'Social media', 'وسائل التواصل الاجتماعي', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2581, 'sa', 'Business', 'اعمال', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2582, 'sa', 'Seller verification', 'التحقق من البائع', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2583, 'sa', 'form setting', 'وضع النموذج', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2584, 'sa', 'Language', 'لغة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2585, 'sa', 'Dashboard', 'لوحة القيادة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2586, 'sa', 'POS System', 'نظام نقاط البيع', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2587, 'sa', 'POS Manager', 'مدير نقاط البيع', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2588, 'sa', 'POS Configuration', 'تكوين نقاط البيع', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2589, 'sa', 'Products', 'منتجات', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2590, 'sa', 'Add New product', 'اضافة منتج جديد', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2591, 'sa', 'All Products', 'جميع المنتجات', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2592, 'sa', 'In House Products', 'منتجات المنزل', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2593, 'sa', 'Seller Products', 'منتجات البائع', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2594, 'sa', 'Digital Products', 'المنتجات الرقمية', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2595, 'sa', 'Bulk Import', 'استيراد بالجملة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2596, 'sa', 'Bulk Export', 'تصدير بالجملة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2597, 'sa', 'Category', 'الفئة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2598, 'sa', 'Subcategory', 'تصنيف فرعي', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2599, 'sa', 'Sub Subcategory', 'فئة فرعية', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2600, 'sa', 'Brand', 'الماركة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2601, 'sa', 'Attribute', 'ينسب', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2602, 'sa', 'Product Reviews', 'تعليقات المنتج', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2603, 'sa', 'Sales', 'مبيعات', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2604, 'sa', 'All Orders', 'جميع الطلبات', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2605, 'sa', 'Inhouse orders', 'أوامر داخلية', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2606, 'sa', 'Seller Orders', 'طلبات البائع', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2607, 'sa', 'Pick-up Point Order', 'طلب نقطة الاستلام', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2608, 'sa', 'Refunds', 'المبالغ المستردة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2609, 'sa', 'Refund Requests', 'طلبات الاسترداد', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2610, 'sa', 'Approved Refund', 'إعادة الأموال المعتمدة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2611, 'sa', 'Refund Configuration', 'تكوين استرداد', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2612, 'sa', 'Customers', 'العملاء', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2613, 'sa', 'Customer list', 'قائمة العملاء', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2614, 'sa', 'Classified Products', 'المنتجات المبوبة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2615, 'sa', 'Classified Packages', 'الحزم المصنفة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2616, 'sa', 'Sellers', 'الباعة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2617, 'sa', 'All Seller', 'كل البائع', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2618, 'sa', 'Payouts', 'المدفوعات', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2619, 'sa', 'Payout Requests', 'طلبات الدفع', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2620, 'sa', 'Seller Commission', 'عمولة البائع', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2621, 'sa', 'Seller Packages', 'حزم البائع', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2622, 'sa', 'Seller Verification Form', 'نموذج التحقق من البائع', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2623, 'sa', 'Reports', 'التقارير', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2624, 'sa', 'In House Product Sale', 'بيع المنتجات في المنزل', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2625, 'sa', 'Seller Products Sale', 'بيع منتجات البائع', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2626, 'sa', 'Products Stock', 'مخزون المنتجات', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2627, 'sa', 'Products wishlist', 'قائمة المنتجات المفضلة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2628, 'sa', 'User Searches', 'عمليات بحث المستخدم', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2629, 'sa', 'Marketing', 'تسويق', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2630, 'sa', 'Flash deals', 'صفقات فلاش', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2631, 'sa', 'Newsletters', 'النشرات الإخبارية', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2632, 'sa', 'Bulk SMS', 'الرسائل القصيرة بالجملة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2633, 'sa', 'Subscribers', 'مشتركين', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2634, 'sa', 'Coupon', 'القسيمة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2635, 'sa', 'Support', 'الدعم', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2636, 'sa', 'Ticket', 'تذكرة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2637, 'sa', 'Product Queries', 'استفسارات المنتج', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2638, 'sa', 'Website Setup', 'إعداد الموقع', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2639, 'sa', 'Header', 'رأس', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2640, 'sa', 'Footer', 'تذييل', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2641, 'sa', 'Pages', 'الصفحات', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2642, 'sa', 'Appearance', 'مظهر خارجي', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2643, 'sa', 'Setup & Configurations', 'الإعداد والتكوينات', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2644, 'sa', 'General Settings', 'الاعدادات العامة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2645, 'sa', 'Features activation', 'تفعيل الميزات', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2646, 'sa', 'Languages', 'اللغات', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2647, 'sa', 'Currency', 'عملة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2648, 'sa', 'Pickup point', 'نقطة الالتقاط', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2649, 'sa', 'SMTP Settings', 'إعدادات SMTP', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2650, 'sa', 'Payment Methods', 'طرق الدفع', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2651, 'sa', 'File System Configuration', 'تكوين نظام الملفات', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2652, 'sa', 'Social media Logins', 'عمليات تسجيل الدخول إلى وسائل التواصل الاجتماعي', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2653, 'sa', 'Analytics Tools', 'أدوات التحليلات', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2654, 'sa', 'Facebook Chat', 'دردشة الفيسبوك', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2655, 'sa', 'Google reCAPTCHA', 'جوجل reCAPTCHA', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2656, 'sa', 'Shipping Configuration', 'تكوين الشحن', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2657, 'sa', 'Shipping Countries', 'دول الشحن', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2658, 'sa', 'Affiliate System', 'نظام الانتساب', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2659, 'sa', 'Affiliate Registration Form', 'استمارة تسجيل المنتسبين', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2660, 'sa', 'Affiliate Configurations', 'التكوينات التابعة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2661, 'sa', 'Affiliate Users', 'المستخدمون المنتسبون', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2662, 'sa', 'Referral Users', 'المستخدمون المحالون', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2663, 'sa', 'Affiliate Withdraw Requests', 'طلبات السحب التابعة', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2664, 'sa', 'Offline Payment System', 'نظام الدفع دون اتصال بالإنترنت', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2665, 'sa', 'Manual Payment Methods', 'طرق الدفع اليدوية', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2666, 'sa', 'Offline Wallet Recharge', 'إعادة شحن المحفظة دون اتصال بالإنترنت', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2667, 'sa', 'Offline Customer Package Payments', 'مدفوعات حزمة العملاء غير المتصلين', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2668, 'sa', 'Offline Seller Package Payments', 'مدفوعات حزمة البائع غير المتصل', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2669, 'sa', 'Paytm Payment Gateway', 'بوابة الدفع Paytm', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2670, 'sa', 'Set Paytm Credentials', 'قم بتعيين بيانات اعتماد Paytm', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2671, 'sa', 'Club Point System', 'نظام كلوب بوينت', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2672, 'sa', 'Club Point Configurations', 'تكوينات كلوب بوينت', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2673, 'sa', 'Set Product Point', 'تعيين نقطة المنتج', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2674, 'sa', 'User Points', 'نقاط المستخدم', '2021-02-09 06:48:28', '2021-02-09 06:48:28'),
(2675, 'sa', 'OTP System', 'نظام OTP', '2021-02-09 06:48:29', '2021-02-09 06:48:29'),
(2676, 'sa', 'OTP Configurations', 'تكوينات OTP', '2021-02-09 06:48:29', '2021-02-09 06:48:29'),
(2677, 'sa', 'Set OTP Credentials', 'قم بتعيين بيانات اعتماد OTP', '2021-02-09 06:48:29', '2021-02-09 06:48:29'),
(2678, 'sa', 'Staffs', 'طاقم العمل', '2021-02-09 06:48:29', '2021-02-09 06:48:29'),
(2679, 'sa', 'All staffs', 'كل فريق العمل', '2021-02-09 06:48:29', '2021-02-09 06:48:29'),
(2680, 'sa', 'Staff permissions', 'أذونات الموظفين', '2021-02-09 06:48:29', '2021-02-09 06:48:29'),
(2681, 'sa', 'Addon Manager', 'مدير الملحق', '2021-02-09 06:48:29', '2021-02-09 06:48:29'),
(2682, 'sa', 'Browse Website', 'تصفح الموقع', '2021-02-09 06:48:29', '2021-02-09 06:48:29'),
(2683, 'sa', 'POS', 'نقاط البيع', '2021-02-09 06:48:29', '2021-02-09 06:48:29'),
(2684, 'sa', 'Notifications', 'إشعارات', '2021-02-09 06:48:29', '2021-02-09 06:48:29'),
(2685, 'sa', 'new orders', 'طلبات جديدة', '2021-02-09 06:48:29', '2021-02-09 06:48:29'),
(2686, 'sa', 'user-image', 'صورة المستخدم', '2021-02-09 06:48:29', '2021-02-09 06:48:29'),
(2687, 'sa', 'Profile', 'الملف الشخصي', '2021-02-09 06:48:29', '2021-02-09 06:48:29'),
(2688, 'sa', 'Logout', 'تسجيل خروج', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2689, 'sa', 'Page Not Found!', 'الصفحة غير موجودة!', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2690, 'sa', 'The page you are looking for has not been found on our server.', 'لم يتم العثور على الصفحة التي تبحث عنها على خادمنا.', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2691, 'sa', 'Registration', 'التسجيل', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2692, 'sa', 'I am shopping for...', 'انا اتسوق لأجل...', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2693, 'sa', 'Compare', 'قارن', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2694, 'sa', 'Wishlist', 'قائمة الرغبات', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2695, 'sa', 'Cart', 'عربة التسوق', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2696, 'sa', 'Your Cart is empty', 'عربة التسوق فارغة', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2697, 'sa', 'Categories', 'التصنيفات', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2698, 'sa', 'See All', 'اظهار الكل', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2699, 'sa', 'Seller Policy', 'سياسة البائع', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2700, 'sa', 'Return Policy', 'سياسة العائدات', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2701, 'sa', 'Support Policy', 'سياسة الدعم', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2702, 'sa', 'Privacy Policy', 'سياسة خاصة', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2703, 'sa', 'Your Email Address', 'عنوان بريدك الإلكتروني', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2704, 'sa', 'Subscribe', 'الإشتراك', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2705, 'sa', 'Contact Info', 'معلومات الاتصال', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2706, 'sa', 'Address', 'عنوان', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2707, 'sa', 'Phone', 'هاتف', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2708, 'sa', 'Email', 'البريد الإلكتروني', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2709, 'sa', 'Login', 'تسجيل الدخول', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2710, 'sa', 'My Account', 'حسابي', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2711, 'sa', 'Order History', 'تاريخ الطلب', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2712, 'sa', 'My Wishlist', 'قائمة امنياتي', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2713, 'sa', 'Track Order', 'ترتيب المسار', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2714, 'sa', 'Be an affiliate partner', 'كن شريكًا تابعًا', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2715, 'sa', 'Be a Seller', 'كن بائعا', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2716, 'sa', 'Apply Now', 'قدم الآن', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2717, 'sa', 'Confirmation', 'التأكيد', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2718, 'sa', 'Delete confirmation message', 'حذف رسالة التأكيد', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2719, 'sa', 'Cancel', 'إلغاء', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2720, 'sa', 'Delete', 'حذف', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2721, 'sa', 'Item has been added to compare list', 'تمت إضافة العنصر إلى قائمة المقارنة', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2722, 'sa', 'Please login first', 'الرجاء تسجيل الدخول أولا', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2723, 'sa', 'Total Earnings From', 'إجمالي الأرباح من', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2724, 'sa', 'Client Subscription', 'اشتراك العميل', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2725, 'sa', 'Product category', 'فئة المنتج', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2726, 'sa', 'Product sub sub category', 'الفئة الفرعية للمنتج', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2727, 'sa', 'Product sub category', 'فئة المنتج الفرعية', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2728, 'sa', 'Product brand', 'العلامة التجارية المنتج', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2729, 'sa', 'Top Client Packages', 'حزم العميل الأعلى', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2730, 'sa', 'Top Freelancer Packages', 'أفضل الحزم لحسابهم الخاص', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2731, 'sa', 'Number of sale', 'رقم البيع', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2732, 'sa', 'Number of Stock', 'عدد الأسهم', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2733, 'sa', 'Top 10 Products', 'أفضل 10 منتجات', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2734, 'sa', 'Top 12 Products', 'أفضل 12 منتجات', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2735, 'sa', 'Admin can not be a seller', 'لا يمكن للمسؤول أن يكون بائعًا', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2736, 'sa', 'Filter by Rating', 'تصفية حسب التصنيف', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2737, 'sa', 'Published reviews updated successfully', 'تم تحديث المراجعات المنشورة بنجاح', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2738, 'sa', 'Refund Sticker has been updated successfully', 'تم تحديث ملصق رد الأموال بنجاح', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2739, 'sa', 'Edit Product', 'تحرير المنتج', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2740, 'sa', 'Meta Images', 'ميتا صور', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2741, 'sa', 'Update Product', 'تحديث المنتج', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2742, 'sa', 'Product has been deleted successfully', 'تم حذف المنتج بنجاح', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2743, 'sa', 'Your Profile has been updated successfully!', 'تم تحديث ملفك الشخصي بنجاح!', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2744, 'sa', 'Upload limit has been reached. Please upgrade your package.', 'تم الوصول إلى حد التحميل. الرجاء ترقية الحزمة الخاصة بك.', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2745, 'sa', 'Add Your Product', 'أضف منتجك', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2746, 'sa', 'Select a category', 'اختر تصنيف', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2747, 'sa', 'Select a brand', 'اختر ماركة', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2748, 'sa', 'Product Unit', 'وحدة المنتج', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2749, 'sa', 'Minimum Qty.', 'الحد الأدنى من الكمية.', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2750, 'sa', 'Product Tag', 'علامة المنتج', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2751, 'sa', 'Type & hit enter', 'اكتب & اضغط دخول', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2752, 'sa', 'Videos', 'أشرطة فيديو', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2753, 'sa', 'Video From', 'فيديو من', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2754, 'sa', 'Video URL', 'رابط الفيديو', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2755, 'sa', 'Customer Choice', 'اختيار العميل', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2756, 'sa', 'PDF', 'بي دي إف', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2757, 'sa', 'Choose PDF', 'اختر PDF', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2758, 'sa', 'Select Category', 'اختر الفئة', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2759, 'sa', 'Target Category', 'الفئة المستهدفة', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2760, 'sa', 'subsubcategory', 'فئة فرعية', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2761, 'sa', 'Search Category', 'فئة البحث', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2762, 'sa', 'Search SubCategory', 'بحث فرعي', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2763, 'sa', 'Search SubSubCategory', 'بحث SubSubCategory', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2764, 'sa', 'Update your product', 'قم بتحديث منتجك', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2765, 'sa', 'Product has been updated successfully', 'تم تحديث المنتج بنجاح', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2766, 'sa', 'Add Your Digital Product', 'أضف منتجك الرقمي', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2767, 'sa', 'Active eCommerce CMS Update Process', 'عملية تحديث CMS للتجارة الإلكترونية النشطة', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2768, 'sa', 'Codecanyon purchase code', 'كود شراء Codecanyon', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2769, 'sa', 'Database Name', 'اسم قاعدة البيانات', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2770, 'sa', 'Database Username', 'اسم مستخدم قاعدة البيانات', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2771, 'sa', 'Database Password', 'كلمة مرور قاعدة البيانات', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2772, 'sa', 'Database Hostname', 'اسم مضيف قاعدة البيانات', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2773, 'sa', 'Update Now', 'تحديث الان', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2774, 'sa', 'Congratulations', 'تهانينا', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2775, 'sa', 'You have successfully completed the updating process. Please Login to continue', 'لقد أكملت بنجاح عملية التحديث. الرجاء تسجيل الدخول للمتابعة', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2776, 'sa', 'Go to Home', 'اذهب إلى الصفحة الرئيسية', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2777, 'sa', 'Login to Admin panel', 'تسجيل الدخول إلى لوحة الإدارة', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2778, 'sa', 'S3 File System Credentials', 'بيانات اعتماد نظام ملف S3', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2779, 'sa', 'AWS_ACCESS_KEY_ID', 'AWS_ACCESS_KEY_ID', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2780, 'sa', 'AWS_SECRET_ACCESS_KEY', 'AWS_SECRET_ACCESS_KEY', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2781, 'sa', 'AWS_DEFAULT_REGION', 'AWS_DEFAULT_REGION', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2782, 'sa', 'AWS_BUCKET', 'AWS_BUCKET', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2783, 'sa', 'AWS_URL', 'AWS_URL', '2021-02-09 06:48:49', '2021-02-09 06:48:49'),
(2784, 'sa', 'S3 File System Activation', 'تفعيل نظام ملفات S3', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2785, 'sa', 'Your phone number', 'رقم تليفونك', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2786, 'sa', 'Zip File', 'ملف مضغوط', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2787, 'sa', 'Install', 'تثبيت', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2788, 'sa', 'This version is not capable of installing Addons, Please update.', 'هذا الإصدار غير قادر على تثبيت الملحقات ، يرجى التحديث.', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2789, 'sa', 'Search in menu', 'البحث في القائمة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2790, 'sa', 'Uploaded Files', 'الملفات التي يتم تحميلها', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2791, 'sa', 'Shipping Cities', 'مدن الشحن', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2792, 'sa', 'System', 'النظام', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2793, 'sa', 'Server status', 'حالة الملقم', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2794, 'sa', 'Nothing Found', 'لا شيء موجود', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2795, 'sa', 'Parent Category', 'القسم الرئيسي', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2796, 'sa', 'Level', 'مستوى', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2797, 'sa', 'Category Information', 'معلومات الفئة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2798, 'sa', 'Translatable', 'قابل للترجمة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2799, 'sa', 'No Parent', 'لا يوجد أصل', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2800, 'sa', 'Physical', 'جسدي - بدني', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2801, 'sa', 'Digital', 'رقمي', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2802, 'sa', '200x200', '200 × 200', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2803, 'sa', '32x32', '32x32', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2804, 'sa', 'Search your files', 'ابحث في ملفاتك', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2805, 'sa', 'Category has been updated successfully', 'تم تحديث الفئة بنجاح', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2806, 'sa', 'All uploaded files', 'جميع الملفات المرفوعة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2807, 'sa', 'Upload New File', 'تحميل ملف جديد', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2808, 'sa', 'All files', 'كل الملفات', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2809, 'sa', 'Search', 'بحث', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2810, 'sa', 'Details Info', 'تفاصيل معلومات', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2811, 'sa', 'Copy Link', 'انسخ الرابط', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2812, 'sa', 'Are you sure to delete this file?', 'هل أنت متأكد من حذف هذا الملف؟', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2813, 'sa', 'File Info', 'معلومات الملف', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2814, 'sa', 'Link copied to clipboard', 'تم نسخ الرابط إلى الحافظة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2815, 'sa', 'Oops, unable to copy', 'عفوًا ، غير قادر على النسخ', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2816, 'sa', 'File deleted successfully', 'تم حذف الملف بنجاح', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2817, 'sa', 'Add New Brand', 'أضف علامة تجارية جديدة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2818, 'sa', '120x80', '120 × 80', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2819, 'sa', 'Brand Information', 'معلومات العلامة التجارية', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2820, 'sa', 'Brand has been updated successfully', 'تم تحديث العلامة التجارية بنجاح', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2821, 'sa', 'Brand has been deleted successfully', 'تم حذف العلامة التجارية بنجاح', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2822, 'sa', 'This is used for search. Input those words by which cutomer can find this product.', 'هذا يستخدم للبحث. أدخل تلك الكلمات التي يمكن لـ cutomer العثور على هذا المنتج من خلالها.', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2823, 'sa', 'These images are visible in product details page gallery. Use 600x600 sizes images.', 'هذه الصور مرئية في معرض صفحة تفاصيل المنتج. استخدم صور بحجم 600 × 600.', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2824, 'sa', 'This image is visible in all product box. Use 300x300 sizes image. Keep some blank space around main object of your image as we had to crop some edge in different devices to make it responsive.', 'هذه الصورة مرئية في كل علبة المنتج. استخدم صورة بحجم 300 × 300. احتفظ ببعض المساحة الفارغة حول الكائن الرئيسي لصورتك حيث كان علينا قص بعض الحواف في أجهزة مختلفة لجعلها مستجيبة.', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2825, 'sa', 'Use proper link without extra parameter. Don\'t use short share link/embeded iframe code.', 'استخدم الارتباط المناسب بدون معلمة إضافية. لا تستخدم رابط المشاركة القصير / كود iframe المضمن.', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2826, 'sa', 'Save Product', 'حفظ المنتج', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2827, 'sa', 'Product has been inserted successfully', 'تم إدخال المنتج بنجاح', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2828, 'sa', 'Something went wrong!', 'هناك خطأ ما!', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2829, 'sa', 'Sorry for the inconvenience, but we\'re working on it.', 'آسف على الإزعاج ، لكننا نعمل على ذلك.', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2830, 'sa', 'Error code', 'خطا بالكود', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2831, 'sa', 'Please Configure SMTP Setting to work all email sending functionality', 'يرجى تكوين إعداد SMTP للعمل على جميع وظائف إرسال البريد الإلكتروني', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2832, 'sa', 'Order', 'طلب', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2833, 'sa', 'We have limited banner height to maintain UI. We had to crop from both left & right side in view for different devices to make it responsive. Before designing banner keep these points in mind.', 'لدينا ارتفاع محدود للافتة للحفاظ على واجهة المستخدم. كان علينا الاقتصاص من كلا الجانبين الأيسر والأيمن في عرض الأجهزة المختلفة لجعلها مستجيبة. قبل تصميم لافتة ضع هذه النقاط في الاعتبار.', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2834, 'sa', 'Home Banner 3 (Max 3)', 'لافتة المنزل 3 (الحد الأقصى 3)', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2835, 'sa', 'Add New Seller', 'إضافة بائع جديد', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2836, 'sa', 'Filter by Approval', 'تصفية حسب الموافقة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2837, 'sa', 'Non-Approved', 'ليس مصدق عليه', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2838, 'sa', 'Type name or email & Enter', 'اكتب الاسم أو البريد الإلكتروني وأدخل', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2839, 'sa', 'Due to seller', 'مستحق للبائع', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2840, 'sa', 'Log in as this Seller', 'تسجيل الدخول باسم هذا البائع', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2841, 'sa', 'Go to Payment', 'انتقل إلى الدفع', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2842, 'sa', 'Ban this seller', 'حظر هذا البائع', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2843, 'sa', 'Do you really want to ban this seller?', 'هل تريد حقًا حظر هذا البائع؟', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2844, 'sa', 'Proceed!', 'تقدم!', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2845, 'sa', 'Approved sellers updated successfully', 'تم تحديث البائعين المعتمدين بنجاح', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2846, 'sa', 'Seller has been deleted successfully', 'تم حذف البائع بنجاح', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2847, 'sa', 'Seller Information', 'معلومات البائع', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2848, 'sa', 'Seller has been inserted successfully', 'تم إدراج البائع بنجاح', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2849, 'sa', 'Email already exists!', 'البريد الالكتروني موجود بالفعل!', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2850, 'sa', 'Verify Your Email Address', 'تحقق من عنوان بريدك الإلكتروني', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2851, 'sa', 'Before proceeding, please check your email for a verification link.', 'قبل المتابعة ، يرجى التحقق من بريدك الإلكتروني للحصول على رابط التحقق.', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2852, 'sa', 'If you did not receive the email.', 'إذا لم تستلم البريد الإلكتروني.', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2853, 'sa', 'Click here to request another', 'انقر هنا لطلب آخر', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2854, 'sa', 'Email Verification', 'تأكيد بواسطة البريد الالكتروني', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2855, 'sa', 'Email Verification - ', 'تأكيد بواسطة البريد الالكتروني -', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2856, 'sa', 'HTTPS Activation', 'تفعيل HTTPS', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2857, 'sa', 'Maintenance Mode', 'نمط الصيانة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2858, 'sa', 'Maintenance Mode Activation', 'تفعيل وضع الصيانة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2859, 'sa', 'Classified Product Activate', 'تنشيط المنتج المصنف', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2860, 'sa', 'Classified Product', 'منتج مصنف', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2861, 'sa', 'Business Related', 'الأعمال ذات الصلة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2862, 'sa', 'Vendor System Activation', 'تفعيل نظام البائع', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2863, 'sa', 'Wallet System Activation', 'تفعيل نظام المحفظة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2864, 'sa', 'Coupon System Activation', 'تفعيل نظام القسيمة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2865, 'sa', 'Pickup Point Activation', 'تفعيل نقطة الالتقاط', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2866, 'sa', 'Conversation Activation', 'تفعيل المحادثة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2867, 'sa', 'Guest Checkout Activation', 'تفعيل تسجيل خروج الضيف', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2868, 'sa', 'Category-based Commission', 'عمولة على أساس الفئة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2869, 'sa', 'After activate this option Seller commision will be disabled and You need to set commission on each category otherwise Admin will not get any commision', 'بعد تفعيل هذا الخيار ، سيتم تعطيل عمولة البائع وتحتاج إلى تعيين العمولة على كل فئة وإلا فلن يحصل المسؤول على أي عمولة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2870, 'sa', 'Set Commisssion Now', 'تعيين كوميسيون الآن', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2871, 'sa', 'Payment Related', 'الدفع ذات الصلة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2872, 'sa', 'Paypal Payment Activation', 'تفعيل الدفع باي بال', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2873, 'sa', 'You need to configure Paypal correctly to enable this feature', 'تحتاج إلى تكوين Paypal بشكل صحيح لتمكين هذه الميزة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2874, 'sa', 'Stripe Payment Activation', 'تفعيل الدفع عبر الشريط', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2875, 'sa', 'SSlCommerz Activation', 'تفعيل SSlCommerz', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2876, 'sa', 'Instamojo Payment Activation', 'تفعيل الدفع Instamojo', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2877, 'sa', 'You need to configure Instamojo Payment correctly to enable this feature', 'تحتاج إلى تكوين Instamojo Payment بشكل صحيح لتمكين هذه الميزة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2878, 'sa', 'Razor Pay Activation', 'تفعيل دفع الحلاقة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2879, 'sa', 'You need to configure Razor correctly to enable this feature', 'تحتاج إلى تكوين Razor بشكل صحيح لتمكين هذه الميزة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2880, 'sa', 'PayStack Activation', 'تفعيل PayStack', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2881, 'sa', 'You need to configure PayStack correctly to enable this feature', 'تحتاج إلى تكوين PayStack بشكل صحيح لتمكين هذه الميزة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2882, 'sa', 'VoguePay Activation', 'تفعيل VoguePay', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2883, 'sa', 'You need to configure VoguePay correctly to enable this feature', 'تحتاج إلى تكوين VoguePay بشكل صحيح لتمكين هذه الميزة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2884, 'sa', 'Payhere Activation', 'تفعيل Payhere', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2885, 'sa', 'Ngenius Activation', 'تفعيل Ngenius', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2886, 'sa', 'You need to configure Ngenius correctly to enable this feature', 'تحتاج إلى تكوين Ngenius بشكل صحيح لتمكين هذه الميزة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2887, 'sa', 'Iyzico Activation', 'تفعيل Iyzico', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2888, 'sa', 'You need to configure iyzico correctly to enable this feature', 'تحتاج إلى تكوين iyzico بشكل صحيح لتمكين هذه الميزة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2889, 'sa', 'Bkash Activation', 'تفعيل بكاش', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2890, 'sa', 'You need to configure bkash correctly to enable this feature', 'تحتاج إلى تكوين bkash بشكل صحيح لتمكين هذه الميزة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2891, 'sa', 'Nagad Activation', 'تفعيل نجاد', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2892, 'sa', 'You need to configure nagad correctly to enable this feature', 'تحتاج إلى تكوين nagad بشكل صحيح لتمكين هذه الميزة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2893, 'sa', 'Cash Payment Activation', 'تفعيل الدفع النقدي', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2894, 'sa', 'Social Media Login', 'تسجيل الدخول إلى وسائل التواصل الاجتماعي', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2895, 'sa', 'Facebook login', 'تسجيل الدخول الى الفيسبوك', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2896, 'sa', 'You need to configure Facebook Client correctly to enable this feature', 'تحتاج إلى تكوين Facebook Client بشكل صحيح لتمكين هذه الميزة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2897, 'sa', 'Google login', 'تسجيل الدخول إلى Google', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2898, 'sa', 'You need to configure Google Client correctly to enable this feature', 'تحتاج إلى تكوين عميل Google بشكل صحيح لتمكين هذه الميزة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2899, 'sa', 'Twitter login', 'تسجيل الدخول إلى Twitter', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2900, 'sa', 'You need to configure Twitter Client correctly to enable this feature', 'تحتاج إلى تكوين عميل تويتر بشكل صحيح لتمكين هذه الميزة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2901, 'sa', 'Shop Logo', 'متجر الشعار', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2902, 'sa', 'Shop Address', 'عنوان المحل', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2903, 'sa', 'Banner Settings', 'إعدادات البانر', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2904, 'sa', 'Banners', 'لافتات', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2905, 'sa', 'We had to limit height to maintian consistancy. In some device both side of the banner might be cropped for height limitation.', 'كان علينا تحديد الارتفاع للحفاظ على الاتساق. في بعض الأجهزة ، قد يتم اقتصاص كلا جانبي الشعار للحد من الارتفاع.', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2906, 'sa', 'Insert link with https ', 'أدخل الارتباط مع https', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2907, 'sa', 'Your Shop has been updated successfully!', 'تم تحديث متجرك بنجاح!', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2908, 'sa', 'Search result for ', 'نتيجة البحث عن', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2909, 'sa', 'Brand has been inserted successfully', 'تم إدراج العلامة التجارية بنجاح', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2910, 'sa', 'About', 'حول', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2911, 'sa', 'Payout Info', 'معلومات الدفع', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2912, 'sa', 'Bank Acc Name', 'اسم حساب البنك', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2913, 'sa', 'Bank Acc Number', 'رقم حساب البنك', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2914, 'sa', 'Total Products', 'إجمالي المنتجات', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2915, 'sa', 'Total Sold Amount', 'إجمالي المبلغ المباع', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2916, 'sa', 'Wallet Balance', 'رصيد المحفظة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2917, 'sa', 'Cookies Agreement', 'اتفاقية ملفات تعريف الارتباط', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2918, 'sa', 'Cookies Agreement Text', 'نص اتفاقية ملفات تعريف الارتباط', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2919, 'sa', 'Show Cookies Agreement?', 'إظهار اتفاقية ملفات تعريف الارتباط؟', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2920, 'sa', 'Custom Script', 'برنامج نصي مخصص', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2921, 'sa', 'Header custom script - before </head>', 'البرنامج النصي المخصص للرأس - قبل </head>', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2922, 'sa', 'Write script with <script> tag', 'اكتب البرنامج النصي بعلامة <script>', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2923, 'sa', 'Footer custom script - before </body>', 'البرنامج النصي المخصص للتذييل - قبل </ body>', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2924, 'sa', 'Category has been inserted successfully', 'تم ادراج الفئة بنجاح', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2925, 'sa', 'All Flash Deals', 'جميع عروض فلاش', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2926, 'sa', 'Create New Flash Deal', 'إنشاء صفقة فلاش جديدة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2927, 'sa', '#FFFFFF', '#FFFFFF', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2928, 'sa', 'This image is shown as cover banner in flash deal details page.', 'تظهر هذه الصورة كبانر غلاف في صفحة تفاصيل صفقة فلاش.', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2929, 'sa', 'Flash Deal has been inserted successfully', 'تم إدراج عرض الفلاش بنجاح', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2930, 'sa', 'Flash deal status updated successfully', 'تم تحديث حالة صفقة الفلاش بنجاح', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2931, 'sa', 'Flash Deal has been updated successfully', 'تم تحديث صفقة الفلاش بنجاح', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2932, 'sa', 'update Language Info', 'تحديث معلومات اللغة', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2933, 'sa', 'Language has been updated successfully', 'تم تحديث اللغة بنجاح', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2934, 'sa', 'Type key & Enter', 'اكتب مفتاح وأدخل', '2021-02-09 06:48:50', '2021-02-09 06:48:50'),
(2935, 'sa', 'Translations updated for ', 'تم تحديث الترجمات لـ', '2021-02-09 06:48:50', '2021-02-09 06:48:50');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(2936, 'en', 'Language has been inserted successfully', 'Language has been inserted successfully', '2021-02-09 06:54:07', '2021-02-09 06:54:07'),
(25059, 'en', 'Verify Now', 'Verify Now', '2021-02-11 06:00:02', '2021-02-11 06:00:02'),
(25060, 'en', 'Iyzico', 'Iyzico', '2021-02-11 06:50:18', '2021-02-11 06:50:18'),
(25061, 'en', 'Bkash Credential', 'Bkash Credential', '2021-02-11 06:50:42', '2021-02-11 06:50:42'),
(25062, 'en', 'BKASH CHECKOUT APP KEY', 'BKASH CHECKOUT APP KEY', '2021-02-11 06:50:42', '2021-02-11 06:50:42'),
(25063, 'en', 'BKASH CHECKOUT APP SECRET', 'BKASH CHECKOUT APP SECRET', '2021-02-11 06:50:42', '2021-02-11 06:50:42'),
(25064, 'en', 'BKASH CHECKOUT USER NAME', 'BKASH CHECKOUT USER NAME', '2021-02-11 06:50:42', '2021-02-11 06:50:42'),
(25065, 'en', 'BKASH CHECKOUT PASSWORD', 'BKASH CHECKOUT PASSWORD', '2021-02-11 06:50:42', '2021-02-11 06:50:42'),
(25066, 'en', 'Bkash Sandbox Mode', 'Bkash Sandbox Mode', '2021-02-11 06:50:42', '2021-02-11 06:50:42'),
(25067, 'en', 'Nagad Credential', 'Nagad Credential', '2021-02-11 06:50:42', '2021-02-11 06:50:42'),
(25068, 'en', 'NAGAD MODE', 'NAGAD MODE', '2021-02-11 06:50:42', '2021-02-11 06:50:42'),
(25069, 'en', 'NAGAD MERCHANT ID', 'NAGAD MERCHANT ID', '2021-02-11 06:50:42', '2021-02-11 06:50:42'),
(25070, 'en', 'NAGAD MERCHANT NUMBER', 'NAGAD MERCHANT NUMBER', '2021-02-11 06:50:43', '2021-02-11 06:50:43'),
(25071, 'en', 'NAGAD PG PUBLIC KEY', 'NAGAD PG PUBLIC KEY', '2021-02-11 06:50:43', '2021-02-11 06:50:43'),
(25072, 'en', 'NAGAD MERCHANT PRIVATE KEY', 'NAGAD MERCHANT PRIVATE KEY', '2021-02-11 06:50:43', '2021-02-11 06:50:43'),
(25073, 'en', 'Iyzico Credential', 'Iyzico Credential', '2021-02-11 06:50:43', '2021-02-11 06:50:43'),
(25074, 'en', 'IYZICO_API_KEY', 'IYZICO_API_KEY', '2021-02-11 06:50:43', '2021-02-11 06:50:43'),
(25075, 'en', 'IYZICO API KEY', 'IYZICO API KEY', '2021-02-11 06:50:43', '2021-02-11 06:50:43'),
(25076, 'en', 'IYZICO_SECRET_KEY', 'IYZICO_SECRET_KEY', '2021-02-11 06:50:43', '2021-02-11 06:50:43'),
(25077, 'en', 'IYZICO SECRET KEY', 'IYZICO SECRET KEY', '2021-02-11 06:50:43', '2021-02-11 06:50:43'),
(25078, 'en', 'IYZICO Sandbox Mode', 'IYZICO Sandbox Mode', '2021-02-11 06:50:43', '2021-02-11 06:50:43'),
(25079, 'en', 'Instamojo', 'Instamojo', '2021-02-11 06:53:34', '2021-02-11 06:53:34'),
(25080, 'en', 'Nagad', 'Nagad', '2021-02-11 06:53:35', '2021-02-11 06:53:35'),
(25081, 'en', 'Bkash', 'Bkash', '2021-02-11 06:53:35', '2021-02-11 06:53:35'),
(25082, 'en', 'Your order has been placed', 'Your order has been placed', '2021-02-11 06:55:22', '2021-02-11 06:55:22'),
(25083, 'en', 'Your order has been placed successfully', 'Your order has been placed successfully', '2021-02-11 06:55:22', '2021-02-11 06:55:22'),
(25084, 'en', 'Product Image', 'Product Image', '2021-02-11 06:56:47', '2021-02-11 06:56:47'),
(25085, 'en', 'Add to compare', 'Add to compare', '2021-02-12 15:42:01', '2021-02-12 15:42:01'),
(25086, 'en', 'Step 1', 'Step 1', '2021-02-13 03:34:49', '2021-02-13 03:34:49'),
(25087, 'en', 'Download the skeleton file and fill it with proper data', 'Download the skeleton file and fill it with proper data', '2021-02-13 03:34:49', '2021-02-13 03:34:49'),
(25088, 'en', 'You can download the example file to understand how the data must be filled', 'You can download the example file to understand how the data must be filled', '2021-02-13 03:34:49', '2021-02-13 03:34:49'),
(25089, 'en', 'Once you have downloaded and filled the skeleton file, upload it in the form below and submit', 'Once you have downloaded and filled the skeleton file, upload it in the form below and submit', '2021-02-13 03:34:49', '2021-02-13 03:34:49'),
(25090, 'en', 'After uploading products you need to edit them and set product\'s images and choices', 'After uploading products you need to edit them and set product\'s images and choices', '2021-02-13 03:34:49', '2021-02-13 03:34:49'),
(25091, 'en', 'Step 2', 'Step 2', '2021-02-13 03:34:49', '2021-02-13 03:34:49'),
(25092, 'en', 'Category and Brand should be in numerical id', 'Category and Brand should be in numerical id', '2021-02-13 03:34:49', '2021-02-13 03:34:49'),
(25093, 'en', 'You can download the pdf to get Category and Brand id', 'You can download the pdf to get Category and Brand id', '2021-02-13 03:34:49', '2021-02-13 03:34:49'),
(25094, 'en', 'Upload Product File', 'Upload Product File', '2021-02-13 03:34:49', '2021-02-13 03:34:49'),
(25095, 'en', 'All Attributes', 'All Attributes', '2021-02-13 03:41:19', '2021-02-13 03:41:19'),
(25096, 'en', 'Add New Attribute', 'Add New Attribute', '2021-02-13 03:41:19', '2021-02-13 03:41:19'),
(25097, 'en', 'Attribute has been inserted successfully', 'Attribute has been inserted successfully', '2021-02-13 03:41:48', '2021-02-13 03:41:48'),
(25098, 'en', 'Attribute has been deleted successfully', 'Attribute has been deleted successfully', '2021-02-13 03:41:59', '2021-02-13 03:41:59'),
(25099, 'en', 'Product has been duplicated successfully', 'Product has been duplicated successfully', '2021-02-14 04:24:28', '2021-02-14 04:24:28'),
(25100, 'en', 'Filter by date', 'Filter by date', '2021-02-14 04:26:26', '2021-02-14 04:26:26'),
(25101, 'en', '1. Category and Brand should be in numerical id.', '1. Category and Brand should be in numerical id.', '2021-02-14 04:47:38', '2021-02-14 04:47:38'),
(25102, 'en', '2. You can download the pdf to get Category and Brand id.', '2. You can download the pdf to get Category and Brand id.', '2021-02-14 04:47:38', '2021-02-14 04:47:38'),
(25103, 'en', 'Payment completed', 'Payment completed', '2021-02-14 05:00:40', '2021-02-14 05:00:40'),
(25104, 'en', 'Contact', 'Contact', '2021-02-14 05:01:48', '2021-02-14 05:01:48'),
(25105, 'en', 'Order status has been updated', 'Order status has been updated', '2021-02-14 05:01:48', '2021-02-14 05:01:48'),
(25106, 'en', 'Review has been submitted successfully', 'Review has been submitted successfully', '2021-02-14 05:06:58', '2021-02-14 05:06:58'),
(25107, 'en', 'Pay to seller', 'Pay to seller', '2021-02-14 05:53:05', '2021-02-14 05:53:05'),
(25108, 'en', 'Txn Code', 'Txn Code', '2021-02-14 05:53:05', '2021-02-14 05:53:05'),
(25109, 'en', 'Clear due', 'Clear due', '2021-02-14 05:53:05', '2021-02-14 05:53:05'),
(25110, 'en', 'Product Wish Report', 'Product Wish Report', '2021-02-14 06:00:21', '2021-02-14 06:00:21'),
(25111, 'en', 'Number of Wish', 'Number of Wish', '2021-02-14 06:00:21', '2021-02-14 06:00:21'),
(25112, 'en', 'All Customers', 'All Customers', '2021-02-14 06:02:18', '2021-02-14 06:02:18'),
(25113, 'en', 'Type email or name & Enter', 'Type email or name & Enter', '2021-02-14 06:02:18', '2021-02-14 06:02:18'),
(25114, 'en', 'Package', 'Package', '2021-02-14 06:02:18', '2021-02-14 06:02:18'),
(25115, 'en', 'Log in as this Customer', 'Log in as this Customer', '2021-02-14 06:02:18', '2021-02-14 06:02:18'),
(25116, 'en', 'Ban this Customer', 'Ban this Customer', '2021-02-14 06:02:18', '2021-02-14 06:02:18'),
(25117, 'en', 'Do you really want to ban this Customer?', 'Do you really want to ban this Customer?', '2021-02-14 06:02:18', '2021-02-14 06:02:18'),
(25118, 'en', 'Do you really want to unban this Customer?', 'Do you really want to unban this Customer?', '2021-02-14 06:02:19', '2021-02-14 06:02:19'),
(25119, 'en', 'Ticket has been sent successfully', 'Ticket has been sent successfully', '2021-02-14 06:24:25', '2021-02-14 06:24:25'),
(25120, 'en', 'Send Reply', 'Send Reply', '2021-02-14 06:24:34', '2021-02-14 06:24:34'),
(25121, 'en', 'Recharge Wallet', 'Recharge Wallet', '2021-02-14 07:01:14', '2021-02-14 07:01:14'),
(25122, 'en', 'Wallet recharge history', 'Wallet recharge history', '2021-02-14 07:01:15', '2021-02-14 07:01:15'),
(25123, 'en', 'Offline Recharge Wallet', 'Offline Recharge Wallet', '2021-02-14 07:01:15', '2021-02-14 07:01:15'),
(25124, 'en', 'Message has been send to seller', 'Message has been send to seller', '2021-02-14 07:15:56', '2021-02-14 07:15:56'),
(25125, 'en', 'Your classified product upload limit has been reached. Please buy a package.', 'Your classified product upload limit has been reached. Please buy a package.', '2021-02-15 05:03:44', '2021-02-15 05:03:44'),
(25126, 'en', 'Premium Packages for Customers', 'Premium Packages for Customers', '2021-02-15 05:03:44', '2021-02-15 05:03:44'),
(25127, 'en', 'Offline Package Purchase ', 'Offline Package Purchase ', '2021-02-15 05:03:45', '2021-02-15 05:03:45'),
(25128, 'en', 'All Classifies Packages', 'All Classifies Packages', '2021-02-15 05:15:40', '2021-02-15 05:15:40'),
(25129, 'en', 'Create New Package', 'Create New Package', '2021-02-15 05:15:42', '2021-02-15 05:15:42'),
(25130, 'en', 'Package purchasing successful', 'Package purchasing successful', '2021-02-15 05:26:45', '2021-02-15 05:26:45'),
(25131, 'en', 'Product Upload Remaining', 'Product Upload Remaining', '2021-02-15 05:26:46', '2021-02-15 05:26:46'),
(25132, 'en', 'Current Package', 'Current Package', '2021-02-15 05:26:46', '2021-02-15 05:26:46'),
(25133, 'en', 'Select a condition', 'Select a condition', '2021-02-15 05:26:55', '2021-02-15 05:26:55'),
(25134, 'en', 'Uploaded By', 'Uploaded By', '2021-02-15 05:40:07', '2021-02-15 05:40:07'),
(25135, 'en', 'Customer Status', 'Customer Status', '2021-02-15 05:40:07', '2021-02-15 05:40:07'),
(25136, 'en', 'UNPUBLISHED', 'UNPUBLISHED', '2021-02-15 05:40:07', '2021-02-15 05:40:07'),
(26443, 'en', 'Sendmail', 'Sendmail', '2021-02-16 07:56:29', '2021-02-16 07:56:29'),
(26444, 'en', 'Mailgun', 'Mailgun', '2021-02-16 07:56:30', '2021-02-16 07:56:30'),
(26445, 'en', 'MAIL HOST', 'MAIL HOST', '2021-02-16 07:56:30', '2021-02-16 07:56:30'),
(26446, 'en', 'MAIL PORT', 'MAIL PORT', '2021-02-16 07:56:30', '2021-02-16 07:56:30'),
(26447, 'en', 'MAIL USERNAME', 'MAIL USERNAME', '2021-02-16 07:56:30', '2021-02-16 07:56:30'),
(26448, 'en', 'MAIL PASSWORD', 'MAIL PASSWORD', '2021-02-16 07:56:30', '2021-02-16 07:56:30'),
(26449, 'en', 'MAIL ENCRYPTION', 'MAIL ENCRYPTION', '2021-02-16 07:56:30', '2021-02-16 07:56:30'),
(26450, 'en', 'MAIL FROM ADDRESS', 'MAIL FROM ADDRESS', '2021-02-16 07:56:30', '2021-02-16 07:56:30'),
(26451, 'en', 'MAIL FROM NAME', 'MAIL FROM NAME', '2021-02-16 07:56:31', '2021-02-16 07:56:31'),
(26452, 'en', 'MAILGUN DOMAIN', 'MAILGUN DOMAIN', '2021-02-16 07:56:31', '2021-02-16 07:56:31'),
(26453, 'en', 'MAILGUN SECRET', 'MAILGUN SECRET', '2021-02-16 07:56:31', '2021-02-16 07:56:31'),
(26454, 'en', 'Save Configuration', 'Save Configuration', '2021-02-16 07:56:31', '2021-02-16 07:56:31'),
(26455, 'en', 'Test SMTP configuration', 'Test SMTP configuration', '2021-02-16 07:56:31', '2021-02-16 07:56:31'),
(26456, 'en', 'Enter your email address', 'Enter your email address', '2021-02-16 07:56:31', '2021-02-16 07:56:31'),
(26457, 'en', 'Send test email', 'Send test email', '2021-02-16 07:56:31', '2021-02-16 07:56:31'),
(26458, 'en', 'Instruction', 'Instruction', '2021-02-16 07:56:31', '2021-02-16 07:56:31'),
(26459, 'en', 'Please be carefull when you are configuring SMTP. For incorrect configuration you will get error at the time of order place, new registration, sending newsletter.', 'Please be carefull when you are configuring SMTP. For incorrect configuration you will get error at the time of order place, new registration, sending newsletter.', '2021-02-16 07:56:31', '2021-02-16 07:56:31'),
(26460, 'en', 'For Non-SSL', 'For Non-SSL', '2021-02-16 07:56:31', '2021-02-16 07:56:31'),
(26461, 'en', 'Select sendmail for Mail Driver if you face any issue after configuring smtp as Mail Driver ', 'Select sendmail for Mail Driver if you face any issue after configuring smtp as Mail Driver ', '2021-02-16 07:56:32', '2021-02-16 07:56:32'),
(26462, 'en', 'Set Mail Host according to your server Mail Client Manual Settings', 'Set Mail Host according to your server Mail Client Manual Settings', '2021-02-16 07:56:32', '2021-02-16 07:56:32'),
(26463, 'en', 'Set Mail port as 587', 'Set Mail port as 587', '2021-02-16 07:56:32', '2021-02-16 07:56:32'),
(26464, 'en', 'Set Mail Encryption as ssl if you face issue with tls', 'Set Mail Encryption as ssl if you face issue with tls', '2021-02-16 07:56:32', '2021-02-16 07:56:32'),
(26465, 'en', 'For SSL', 'For SSL', '2021-02-16 07:56:32', '2021-02-16 07:56:32'),
(26466, 'en', 'Set Mail port as 465', 'Set Mail port as 465', '2021-02-16 07:56:32', '2021-02-16 07:56:32'),
(26467, 'en', 'Set Mail Encryption as ssl', 'Set Mail Encryption as ssl', '2021-02-16 07:56:32', '2021-02-16 07:56:32'),
(26468, 'en', 'Install/Update Addon', 'Install/Update Addon', '2021-02-18 05:50:31', '2021-02-18 05:50:31'),
(26469, 'en', 'No Addon Installed', 'No Addon Installed', '2021-02-18 05:50:31', '2021-02-18 05:50:31'),
(26470, 'en', 'Blog System', 'Blog System', '2021-02-18 10:01:49', '2021-02-18 10:01:49'),
(26471, 'en', 'All Posts', 'All Posts', '2021-02-18 10:01:49', '2021-02-18 10:01:49'),
(26472, 'en', 'Facebook Comment', 'Facebook Comment', '2021-02-18 10:01:50', '2021-02-18 10:01:50'),
(26473, 'en', 'Add New Post', 'Add New Post', '2021-02-18 10:02:55', '2021-02-18 10:02:55'),
(26474, 'en', 'All blog posts', 'All blog posts', '2021-02-18 10:02:55', '2021-02-18 10:02:55'),
(26475, 'en', 'Short Description', 'Short Description', '2021-02-18 10:02:55', '2021-02-18 10:02:55'),
(26476, 'en', 'Change blog status successfully', 'Change blog status successfully', '2021-02-18 10:02:56', '2021-02-18 10:02:56'),
(26477, 'en', 'Blog Information', 'Blog Information', '2021-02-18 10:02:58', '2021-02-18 10:02:58'),
(26478, 'en', 'Blog Title', 'Blog Title', '2021-02-18 10:02:58', '2021-02-18 10:02:58'),
(26479, 'en', 'Meta Keywords', 'Meta Keywords', '2021-02-18 10:02:59', '2021-02-18 10:02:59'),
(26480, 'en', 'Header Nav Menu', 'Header Nav Menu', '2021-02-18 10:04:04', '2021-02-18 10:04:04'),
(26481, 'en', 'Link with', 'Link with', '2021-02-18 10:04:04', '2021-02-18 10:04:04'),
(26482, 'en', 'Blog', 'Blog', '2021-02-18 10:11:56', '2021-02-18 10:11:56'),
(26483, 'en', 'All Blog Categories', 'All Blog Categories', '2021-02-18 10:17:26', '2021-02-18 10:17:26'),
(26484, 'en', 'Blog Categories', 'Blog Categories', '2021-02-18 10:17:26', '2021-02-18 10:17:26'),
(26485, 'en', 'Blog Category Information', 'Blog Category Information', '2021-02-19 04:04:31', '2021-02-19 04:04:31'),
(26486, 'en', 'Blog category has been created successfully', 'Blog category has been created successfully', '2021-02-19 04:05:13', '2021-02-19 04:05:13'),
(26487, 'en', 'Blog post has been created successfully', 'Blog post has been created successfully', '2021-02-19 04:15:31', '2021-02-19 04:15:31'),
(26488, 'en', 'Blog post has been updated successfully', 'Blog post has been updated successfully', '2021-02-19 04:32:34', '2021-02-19 04:32:34'),
(26489, 'en', 'Blog category has been updated successfully', 'Blog category has been updated successfully', '2021-02-19 04:52:22', '2021-02-19 04:52:22'),
(26490, 'en', 'Install/Update', 'Install/Update', '2021-02-22 04:00:43', '2021-02-22 04:00:43'),
(26493, 'en', 'Addon nstalled successfully', 'Addon nstalled successfully', '2021-02-23 02:22:29', '2021-02-23 02:22:29'),
(26494, 'en', 'Approved Refunds', 'Approved Refunds', '2021-02-23 02:23:39', '2021-02-23 02:23:39'),
(26495, 'en', 'rejected Refunds', 'rejected Refunds', '2021-02-23 02:23:40', '2021-02-23 02:23:40'),
(26496, 'en', 'Affiliate Logs', 'Affiliate Logs', '2021-02-23 02:24:06', '2021-02-23 02:24:06'),
(26497, 'en', 'African Payment Gateway Addon', 'African Payment Gateway Addon', '2021-02-23 02:24:21', '2021-02-23 02:24:21'),
(26498, 'en', 'African PG Configurations', 'African PG Configurations', '2021-02-23 02:24:21', '2021-02-23 02:24:21'),
(26499, 'en', 'Set African PG Credentials', 'Set African PG Credentials', '2021-02-23 02:24:21', '2021-02-23 02:24:21'),
(26500, 'en', 'At the very bottom, you can find the “Facebook Page ID”', 'At the very bottom, you can find the “Facebook Page ID”', '2021-02-23 02:25:36', '2021-02-23 02:25:36'),
(26501, 'en', 'Go to Settings of your page and find the option of \"Advance Messaging\"', 'Go to Settings of your page and find the option of \"Advance Messaging\"', '2021-02-23 02:25:36', '2021-02-23 02:25:36'),
(26502, 'en', 'Scroll down that page and you will get \"white listed domain\"', 'Scroll down that page and you will get \"white listed domain\"', '2021-02-23 02:25:36', '2021-02-23 02:25:36'),
(26503, 'en', 'PAYSTACK CURRENCY CODE', 'PAYSTACK CURRENCY CODE', '2021-02-23 02:26:16', '2021-02-23 02:26:16'),
(26504, 'en', 'MPesa Activation', 'MPesa Activation', '2021-02-23 02:26:48', '2021-02-23 02:26:48'),
(26505, 'en', 'You need to configure Mpesa correctly to enable this feature', 'You need to configure Mpesa correctly to enable this feature', '2021-02-23 02:26:48', '2021-02-23 02:26:48'),
(26506, 'en', 'flutterwave Activation', 'flutterwave Activation', '2021-02-23 02:26:48', '2021-02-23 02:26:48'),
(26507, 'en', 'You need to configure flutterwave correctly to enable this feature', 'You need to configure flutterwave correctly to enable this feature', '2021-02-23 02:26:49', '2021-02-23 02:26:49'),
(26508, 'en', 'Payfast Activation', 'Payfast Activation', '2021-02-23 02:26:49', '2021-02-23 02:26:49'),
(26509, 'en', 'You need to configure payfast correctly to enable this feature', 'You need to configure payfast correctly to enable this feature', '2021-02-23 02:26:49', '2021-02-23 02:26:49'),
(26510, 'en', 'MPESA USERNAME', 'MPESA USERNAME', '2021-02-23 02:26:59', '2021-02-23 02:26:59'),
(26511, 'en', 'MPESA_USERNAME', 'MPESA_USERNAME', '2021-02-23 02:26:59', '2021-02-23 02:26:59'),
(26512, 'en', 'MPESA PASSWORD', 'MPESA PASSWORD', '2021-02-23 02:26:59', '2021-02-23 02:26:59'),
(26513, 'en', 'MPESA_PASSWORD', 'MPESA_PASSWORD', '2021-02-23 02:26:59', '2021-02-23 02:26:59'),
(26514, 'en', 'MPESA PASSKEY', 'MPESA PASSKEY', '2021-02-23 02:26:59', '2021-02-23 02:26:59'),
(26515, 'en', 'MPESA_PASSKEY', 'MPESA_PASSKEY', '2021-02-23 02:26:59', '2021-02-23 02:26:59'),
(26516, 'en', 'PAYFAST Credential', 'PAYFAST Credential', '2021-02-23 02:26:59', '2021-02-23 02:26:59'),
(26517, 'en', 'PAYFAST_MERCHANT_ID', 'PAYFAST_MERCHANT_ID', '2021-02-23 02:26:59', '2021-02-23 02:26:59'),
(26518, 'en', 'PAYFAST_MERCHANT_KEY', 'PAYFAST_MERCHANT_KEY', '2021-02-23 02:27:00', '2021-02-23 02:27:00'),
(26519, 'en', 'PAYFAST Sandbox Mode', 'PAYFAST Sandbox Mode', '2021-02-23 02:27:00', '2021-02-23 02:27:00'),
(26520, 'en', 'Google Login Credential', 'Google Login Credential', '2021-02-23 02:27:51', '2021-02-23 02:27:51'),
(26521, 'en', 'Client ID', 'Client ID', '2021-02-23 02:27:51', '2021-02-23 02:27:51'),
(26522, 'en', 'Google Client ID', 'Google Client ID', '2021-02-23 02:27:51', '2021-02-23 02:27:51'),
(26523, 'en', 'Client Secret', 'Client Secret', '2021-02-23 02:27:51', '2021-02-23 02:27:51'),
(26524, 'en', 'Google Client Secret', 'Google Client Secret', '2021-02-23 02:27:51', '2021-02-23 02:27:51'),
(26525, 'en', 'Facebook Login Credential', 'Facebook Login Credential', '2021-02-23 02:27:51', '2021-02-23 02:27:51'),
(26526, 'en', 'App ID', 'App ID', '2021-02-23 02:27:51', '2021-02-23 02:27:51'),
(26527, 'en', 'Facebook Client ID', 'Facebook Client ID', '2021-02-23 02:27:51', '2021-02-23 02:27:51'),
(26528, 'en', 'App Secret', 'App Secret', '2021-02-23 02:27:51', '2021-02-23 02:27:51'),
(26529, 'en', 'Facebook Client Secret', 'Facebook Client Secret', '2021-02-23 02:27:51', '2021-02-23 02:27:51'),
(26530, 'en', 'Twitter Login Credential', 'Twitter Login Credential', '2021-02-23 02:27:51', '2021-02-23 02:27:51'),
(26531, 'en', 'Twitter Client ID', 'Twitter Client ID', '2021-02-23 02:27:52', '2021-02-23 02:27:52'),
(26532, 'en', 'Twitter Client Secret', 'Twitter Client Secret', '2021-02-23 02:27:52', '2021-02-23 02:27:52'),
(26533, 'en', 'Point convert rate has been updated successfully', 'Point convert rate has been updated successfully', '2021-02-23 02:30:21', '2021-02-23 02:30:21'),
(26534, 'en', 'Owner', 'Owner', '2021-02-23 02:30:24', '2021-02-23 02:30:24'),
(26535, 'en', 'Set any specific point for those products what are between Min-price and Max-price. Min-price should be less than Max-price', 'Set any specific point for those products what are between Min-price and Max-price. Min-price should be less than Max-price', '2021-02-23 02:30:25', '2021-02-23 02:30:25'),
(26536, 'en', 'Set Point for Product', 'Set Point for Product', '2021-02-23 02:30:31', '2021-02-23 02:30:31'),
(26537, 'en', 'Set Point', 'Set Point', '2021-02-23 02:30:31', '2021-02-23 02:30:31'),
(26538, 'en', 'Point has been updated successfully', 'Point has been updated successfully', '2021-02-23 02:30:37', '2021-02-23 02:30:37'),
(26539, 'en', 'Point has been inserted successfully for ', 'Point has been inserted successfully for ', '2021-02-23 02:31:06', '2021-02-23 02:31:06'),
(26540, 'en', ' products', ' products', '2021-02-23 02:31:06', '2021-02-23 02:31:06'),
(26541, 'en', 'Customer Name', 'Customer Name', '2021-02-23 02:32:42', '2021-02-23 02:32:42'),
(26542, 'en', 'MIMO OTP', 'MIMO OTP', '2021-02-23 02:32:49', '2021-02-23 02:32:49'),
(26543, 'en', 'MIMO Credential', 'MIMO Credential', '2021-02-23 02:33:05', '2021-02-23 02:33:05'),
(26544, 'en', 'MIMO_USERNAME', 'MIMO_USERNAME', '2021-02-23 02:33:05', '2021-02-23 02:33:05'),
(26545, 'en', 'MIMO_PASSWORD', 'MIMO_PASSWORD', '2021-02-23 02:33:05', '2021-02-23 02:33:05'),
(26546, 'en', 'MIMO_SENDER_ID', 'MIMO_SENDER_ID', '2021-02-23 02:33:06', '2021-02-23 02:33:06'),
(26547, 'en', 'Reject Refund Request !', 'Reject Refund Request !', '2021-02-23 02:33:49', '2021-02-23 02:33:49'),
(26548, 'en', 'Reject Reason', 'Reject Reason', '2021-02-23 02:33:49', '2021-02-23 02:33:49'),
(26549, 'en', 'Submit', 'Submit', '2021-02-23 02:33:49', '2021-02-23 02:33:49'),
(26550, 'en', 'Approval has been done successfully', 'Approval has been done successfully', '2021-02-23 02:33:49', '2021-02-23 02:33:49'),
(26551, 'en', 'Refund has been sent successfully', 'Refund has been sent successfully', '2021-02-23 02:33:49', '2021-02-23 02:33:49'),
(26552, 'en', 'Rejected Request', 'Rejected Request', '2021-02-23 02:34:05', '2021-02-23 02:34:05'),
(26553, 'en', 'Refund Request Reject Reason', 'Refund Request Reject Reason', '2021-02-23 02:34:05', '2021-02-23 02:34:05'),
(26554, 'en', 'Approved Request', 'Approved Request', '2021-02-23 02:34:08', '2021-02-23 02:34:08'),
(26555, 'en', 'mpesa', 'mpesa', '2021-02-23 02:35:33', '2021-02-23 02:35:33'),
(26556, 'en', 'flutterwave', 'flutterwave', '2021-02-23 02:35:33', '2021-02-23 02:35:33'),
(26557, 'en', 'payfast', 'payfast', '2021-02-23 02:35:33', '2021-02-23 02:35:33'),
(26558, 'en', 'This addon is updated successfully', 'This addon is updated successfully', '2021-02-23 02:40:18', '2021-02-23 02:40:18'),
(26559, 'en', 'Non-refundable', 'Non-refundable', '2021-02-23 15:06:44', '2021-02-23 15:06:44'),
(26560, 'en', 'Offline Recharge has been done. Please wait for response.', 'Offline Recharge has been done. Please wait for response.', '2021-02-23 15:08:43', '2021-02-23 15:08:43'),
(26561, 'en', 'Use Phone Instead', 'Use Phone Instead', '2021-02-23 15:13:57', '2021-02-23 15:13:57'),
(26562, 'en', 'Phone Verification', 'Phone Verification', '2021-02-23 15:14:25', '2021-02-23 15:14:25'),
(26563, 'en', 'Resend Code', 'Resend Code', '2021-02-23 15:14:25', '2021-02-23 15:14:25'),
(26564, 'en', 'Staff Information', 'Staff Information', '2021-02-25 15:53:40', '2021-02-25 15:53:40'),
(26565, 'en', 'Staff has been inserted successfully', 'Staff has been inserted successfully', '2021-02-25 15:54:00', '2021-02-25 15:54:00'),
(26566, 'en', 'Role Information', 'Role Information', '2021-02-25 16:01:25', '2021-02-25 16:01:25'),
(26567, 'en', 'Permissions', 'Permissions', '2021-02-25 16:01:25', '2021-02-25 16:01:25'),
(26568, 'en', 'Role has been updated successfully', 'Role has been updated successfully', '2021-02-25 16:01:46', '2021-02-25 16:01:46'),
(26569, 'en', 'Update your system', 'Update your system', '2021-02-25 16:03:26', '2021-02-25 16:03:26'),
(26570, 'en', 'Current verion', 'Current verion', '2021-02-25 16:03:26', '2021-02-25 16:03:26'),
(26571, 'en', 'Make sure your server has matched with all requirements.', 'Make sure your server has matched with all requirements.', '2021-02-25 16:03:26', '2021-02-25 16:03:26'),
(26572, 'en', 'Check Here', 'Check Here', '2021-02-25 16:03:26', '2021-02-25 16:03:26'),
(26573, 'en', 'Download latest version from codecanyon.', 'Download latest version from codecanyon.', '2021-02-25 16:03:26', '2021-02-25 16:03:26'),
(26574, 'en', 'Extract downloaded zip. You will find updates.zip file in those extraced files.', 'Extract downloaded zip. You will find updates.zip file in those extraced files.', '2021-02-25 16:03:27', '2021-02-25 16:03:27'),
(26575, 'en', 'Upload that zip file here and click update now.', 'Upload that zip file here and click update now.', '2021-02-25 16:03:27', '2021-02-25 16:03:27'),
(26576, 'en', 'If you are using any addon make sure to update those addons after updating.', 'If you are using any addon make sure to update those addons after updating.', '2021-02-25 16:03:27', '2021-02-25 16:03:27'),
(26577, 'en', 'Package Duration', 'Package Duration', '2021-02-25 23:10:17', '2021-02-25 23:10:17'),
(26578, 'en', 'Digital Product Upload Remaining', 'Digital Product Upload Remaining', '2021-02-25 23:12:10', '2021-02-25 23:12:10'),
(26579, 'en', 'Package Expires at', 'Package Expires at', '2021-02-25 23:12:10', '2021-02-25 23:12:10'),
(26580, 'en', 'Ok. I Understood', 'Ok. I Understood', '2021-02-27 16:56:27', '2021-02-27 16:56:27'),
(26581, 'en', 'Commission History', 'Commission History', '2021-03-07 05:40:47', '2021-03-07 05:40:47'),
(26582, 'en', 'Vat & TAX', 'Vat & TAX', '2021-03-07 05:40:48', '2021-03-07 05:40:48'),
(26583, 'en', 'Info', 'Info', '2021-03-07 05:40:54', '2021-03-07 05:40:54'),
(26584, 'en', 'Product Wise Shipping', 'Product Wise Shipping', '2021-03-07 05:42:45', '2021-03-07 05:42:45'),
(26585, 'en', 'Low Stock Quantity Warning', 'Low Stock Quantity Warning', '2021-03-07 05:42:45', '2021-03-07 05:42:45'),
(26586, 'en', 'Stock Visibility State', 'Stock Visibility State', '2021-03-07 05:42:45', '2021-03-07 05:42:45'),
(26587, 'en', 'Show Stock Quantity', 'Show Stock Quantity', '2021-03-07 05:42:45', '2021-03-07 05:42:45'),
(26588, 'en', 'Show Stock With Text Only', 'Show Stock With Text Only', '2021-03-07 05:42:45', '2021-03-07 05:42:45'),
(26589, 'en', 'Hide Stock', 'Hide Stock', '2021-03-07 05:42:46', '2021-03-07 05:42:46'),
(26590, 'en', 'Flash Deal', 'Flash Deal', '2021-03-07 05:42:46', '2021-03-07 05:42:46'),
(26591, 'en', 'Add To Flash', 'Add To Flash', '2021-03-07 05:42:46', '2021-03-07 05:42:46'),
(26592, 'en', 'Estimate Shipping Time', 'Estimate Shipping Time', '2021-03-07 05:42:46', '2021-03-07 05:42:46'),
(26593, 'en', 'Shipping Days', 'Shipping Days', '2021-03-07 05:42:46', '2021-03-07 05:42:46'),
(26594, 'en', 'Save As Draft', 'Save As Draft', '2021-03-07 05:42:46', '2021-03-07 05:42:46'),
(26595, 'en', 'Save & Unpublish', 'Save & Unpublish', '2021-03-07 05:42:46', '2021-03-07 05:42:46'),
(26596, 'en', 'Save & Publish', 'Save & Publish', '2021-03-07 05:42:46', '2021-03-07 05:42:46'),
(26597, 'en', 'All cities', 'All cities', '2021-03-07 05:43:04', '2021-03-07 05:43:04'),
(26598, 'en', 'Cities', 'Cities', '2021-03-07 05:43:04', '2021-03-07 05:43:04'),
(26599, 'en', 'Cost', 'Cost', '2021-03-07 05:43:04', '2021-03-07 05:43:04'),
(26600, 'en', 'Add New city', 'Add New city', '2021-03-07 05:43:04', '2021-03-07 05:43:04'),
(26601, 'en', ' pts', ' pts', '2021-03-08 04:54:26', '2021-03-08 04:54:26'),
(26602, 'en', 'No', 'No', '2021-03-08 04:54:26', '2021-03-08 04:54:26'),
(26603, 'en', 'Convert Now', 'Convert Now', '2021-03-08 04:54:26', '2021-03-08 04:54:26'),
(26604, 'en', 'Affiliate Balance', 'Affiliate Balance', '2021-03-08 04:56:22', '2021-03-08 04:56:22'),
(26605, 'en', 'Configure Payout', 'Configure Payout', '2021-03-08 04:56:22', '2021-03-08 04:56:22'),
(26606, 'en', 'Affiliate Withdraw Request', 'Affiliate Withdraw Request', '2021-03-08 04:56:22', '2021-03-08 04:56:22'),
(26607, 'en', 'Copy Url', 'Copy Url', '2021-03-08 04:56:22', '2021-03-08 04:56:22'),
(26608, 'en', 'Affiliate Earning History', 'Affiliate Earning History', '2021-03-08 04:56:22', '2021-03-08 04:56:22'),
(26609, 'en', 'Referral User', 'Referral User', '2021-03-08 04:56:22', '2021-03-08 04:56:22'),
(26610, 'en', 'Referral Type', 'Referral Type', '2021-03-08 04:56:22', '2021-03-08 04:56:22'),
(26611, 'en', 'Payment Settings', 'Payment Settings', '2021-03-08 04:56:50', '2021-03-08 04:56:50'),
(26612, 'en', 'Paypal Email', 'Paypal Email', '2021-03-08 04:56:50', '2021-03-08 04:56:50'),
(26613, 'en', 'Bank Informations', 'Bank Informations', '2021-03-08 04:56:50', '2021-03-08 04:56:50'),
(26614, 'en', 'Acc. No, Bank Name etc', 'Acc. No, Bank Name etc', '2021-03-08 04:56:50', '2021-03-08 04:56:50'),
(26615, 'en', 'Update Payment Settings', 'Update Payment Settings', '2021-03-08 04:56:50', '2021-03-08 04:56:50'),
(26616, 'en', 'Affiliate payment settings has been updated successfully', 'Affiliate payment settings has been updated successfully', '2021-03-08 04:56:53', '2021-03-08 04:56:53'),
(26617, 'en', 'New withdraw request created successfully', 'New withdraw request created successfully', '2021-03-08 04:57:38', '2021-03-08 04:57:38'),
(26618, 'en', 'Affiliate withdraw request history', 'Affiliate withdraw request history', '2021-03-08 04:57:39', '2021-03-08 04:57:39'),
(26619, 'en', 'Affiliate payment history', 'Affiliate payment history', '2021-03-08 05:00:42', '2021-03-08 05:00:42'),
(26620, 'en', 'Default', 'Default', '2021-03-08 05:06:37', '2021-03-08 05:06:37'),
(26621, 'en', 'Area Wise Flat Shipping Cost', 'Area Wise Flat Shipping Cost', '2021-03-08 05:46:02', '2021-03-08 05:46:02'),
(26622, 'en', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If customers purchase 2 product from two seller shipping cost is calculated by addition of each seller flat shipping cost', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If customers purchase 2 product from two seller shipping cost is calculated by addition of each seller flat shipping cost', '2021-03-08 05:46:02', '2021-03-08 05:46:02'),
(26623, 'en', 'Area Wise Flat Shipping Cost calulation: Fixed rate for each area. If customers purchase multiple products from one seller shipping cost is calculated by the customer shipping area. To configure area wise shipping cost go to ', 'Area Wise Flat Shipping Cost calulation: Fixed rate for each area. If customers purchase multiple products from one seller shipping cost is calculated by the customer shipping area. To configure area wise shipping cost go to ', '2021-03-08 05:46:03', '2021-03-08 05:46:03'),
(26624, 'en', '1. Flat rate shipping cost is applicable if Flat rate shipping is enabled.', '1. Flat rate shipping cost is applicable if Flat rate shipping is enabled.', '2021-03-08 05:46:03', '2021-03-08 05:46:03'),
(26625, 'en', '1. Shipping cost for admin is applicable if Seller wise shipping cost is enabled.', '1. Shipping cost for admin is applicable if Seller wise shipping cost is enabled.', '2021-03-08 05:46:03', '2021-03-08 05:46:03'),
(26626, 'en', 'The requested quantity is not available for ', 'The requested quantity is not available for ', '2021-03-08 05:56:12', '2021-03-08 05:56:12'),
(26627, 'en', 'City has been inserted successfully', 'City has been inserted successfully', '2021-03-08 05:56:45', '2021-03-08 05:56:45'),
(26628, 'en', 'Namibia', 'Namibia', '2021-03-08 05:57:17', '2021-03-08 05:57:17'),
(26629, 'en', 'City Information', 'City Information', '2021-03-08 06:14:10', '2021-03-08 06:14:10'),
(26630, 'en', 'City has been updated successfully', 'City has been updated successfully', '2021-03-08 06:14:23', '2021-03-08 06:14:23'),
(26631, 'en', 'Sed ea dolore offici', 'Sed ea dolore offici', '2021-03-08 06:17:47', '2021-03-08 06:17:47'),
(26632, 'en', 'Pickup Point Information', 'Pickup Point Information', '2021-03-08 06:27:30', '2021-03-08 06:27:30'),
(26633, 'en', 'Pickup Point Status', 'Pickup Point Status', '2021-03-08 06:27:30', '2021-03-08 06:27:30'),
(26634, 'en', 'Pick-up Point Manager', 'Pick-up Point Manager', '2021-03-08 06:27:30', '2021-03-08 06:27:30'),
(26635, 'en', 'PicupPoint has been inserted successfully', 'PicupPoint has been inserted successfully', '2021-03-08 06:27:37', '2021-03-08 06:27:37'),
(26636, 'en', 'Update Pickup Point Information', 'Update Pickup Point Information', '2021-03-08 06:27:41', '2021-03-08 06:27:41'),
(26637, 'en', 'PicupPoint has been updated successfully', 'PicupPoint has been updated successfully', '2021-03-08 06:27:45', '2021-03-08 06:27:45'),
(26638, 'en', 'Pickip Point', 'Pickip Point', '2021-03-08 06:28:05', '2021-03-08 06:28:05'),
(26639, 'en', 'Yes', 'Yes', '2021-03-08 06:35:13', '2021-03-08 06:35:13'),
(26640, 'en', 'Done', 'Done', '2021-03-08 06:35:13', '2021-03-08 06:35:13'),
(26641, 'en', 'Conversations With ', 'Conversations With ', '2021-03-08 06:36:37', '2021-03-08 06:36:37'),
(26642, 'en', 'Between you and', 'Between you and', '2021-03-08 06:36:37', '2021-03-08 06:36:37'),
(26643, 'en', 'Seller Product Manage By Admin', 'Seller Product Manage By Admin', '2021-03-08 06:49:14', '2021-03-08 06:49:14'),
(26644, 'en', 'After activate this option Cash On Delivery of Seller product will be managed by Admin', 'After activate this option Cash On Delivery of Seller product will be managed by Admin', '2021-03-08 06:49:14', '2021-03-08 06:49:14'),
(26645, 'en', 'All Taxes', 'All Taxes', '2021-03-09 03:43:13', '2021-03-09 03:43:13'),
(26646, 'en', 'Add New Tax', 'Add New Tax', '2021-03-09 03:43:13', '2021-03-09 03:43:13'),
(26647, 'en', 'Tax Type', 'Tax Type', '2021-03-09 03:43:13', '2021-03-09 03:43:13'),
(26648, 'en', 'Tax Name', 'Tax Name', '2021-03-09 03:43:13', '2021-03-09 03:43:13'),
(26649, 'en', 'Tax status updated successfully', 'Tax status updated successfully', '2021-03-09 03:43:13', '2021-03-09 03:43:13'),
(26650, 'en', 'Blogs', 'Blogs', '2021-03-24 08:01:32', '2021-03-24 08:01:32'),
(26651, 'en', 'Blogs', 'Blogs', '2021-03-24 08:01:32', '2021-03-24 08:01:32'),
(26652, 'en', 'View All Sellers', 'View All Sellers', '2021-03-24 23:31:18', '2021-03-24 23:31:18'),
(26653, 'en', 'File selected', 'File selected', '2021-04-11 04:54:39', '2021-04-11 04:54:39'),
(26654, 'en', 'Files selected', 'Files selected', '2021-04-11 04:54:39', '2021-04-11 04:54:39'),
(26655, 'en', 'Add more files', 'Add more files', '2021-04-11 04:54:39', '2021-04-11 04:54:39'),
(26656, 'en', 'Adding more files', 'Adding more files', '2021-04-11 04:54:39', '2021-04-11 04:54:39'),
(26657, 'en', 'Drop files here, paste or', 'Drop files here, paste or', '2021-04-11 04:54:40', '2021-04-11 04:54:40'),
(26658, 'en', 'Upload complete', 'Upload complete', '2021-04-11 04:54:40', '2021-04-11 04:54:40'),
(26659, 'en', 'Upload paused', 'Upload paused', '2021-04-11 04:54:40', '2021-04-11 04:54:40'),
(26660, 'en', 'Resume upload', 'Resume upload', '2021-04-11 04:54:40', '2021-04-11 04:54:40'),
(26661, 'en', 'Pause upload', 'Pause upload', '2021-04-11 04:54:40', '2021-04-11 04:54:40'),
(26662, 'en', 'Retry upload', 'Retry upload', '2021-04-11 04:54:40', '2021-04-11 04:54:40'),
(26663, 'en', 'Cancel upload', 'Cancel upload', '2021-04-11 04:54:40', '2021-04-11 04:54:40'),
(26664, 'en', 'Uploading', 'Uploading', '2021-04-11 04:54:40', '2021-04-11 04:54:40'),
(26665, 'en', 'Processing', 'Processing', '2021-04-11 04:54:40', '2021-04-11 04:54:40'),
(26666, 'en', 'Complete', 'Complete', '2021-04-11 04:54:40', '2021-04-11 04:54:40'),
(26667, 'en', 'Files', 'Files', '2021-04-11 04:54:40', '2021-04-11 04:54:40'),
(26668, 'en', 'This action is disabled in demo mode', 'This action is disabled in demo mode', '2021-05-20 03:38:21', '2021-05-20 03:38:21'),
(26669, 'en', 'Nothing selected', 'Nothing selected', '2021-05-20 03:49:25', '2021-05-20 03:49:25'),
(26670, 'en', 'Nothing selected', 'Nothing selected', '2021-05-20 03:49:25', '2021-05-20 03:49:25'),
(26671, 'en', 'Delivery Boy', 'Delivery Boy', '2021-05-20 04:03:03', '2021-05-20 04:03:03'),
(26672, 'en', 'All Delivery Boy', 'All Delivery Boy', '2021-05-20 04:03:03', '2021-05-20 04:03:03'),
(26673, 'en', 'Add Delivery Boy', 'Add Delivery Boy', '2021-05-20 04:03:04', '2021-05-20 04:03:04'),
(26674, 'en', 'Cancel Request', 'Cancel Request', '2021-05-20 04:03:04', '2021-05-20 04:03:04'),
(26675, 'en', 'Configuration', 'Configuration', '2021-05-20 04:03:04', '2021-05-20 04:03:04'),
(26676, 'en', 'All Delivery Boys', 'All Delivery Boys', '2021-05-20 04:04:59', '2021-05-20 04:04:59'),
(26677, 'en', 'Add New Delivery Boy', 'Add New Delivery Boy', '2021-05-20 04:04:59', '2021-05-20 04:04:59'),
(26678, 'en', 'Delivery Boys', 'Delivery Boys', '2021-05-20 04:04:59', '2021-05-20 04:04:59'),
(26679, 'en', 'Collection', 'Collection', '2021-05-20 04:05:00', '2021-05-20 04:05:00'),
(26680, 'en', 'Do you really want to ban this delivery_boy?', 'Do you really want to ban this delivery_boy?', '2021-05-20 04:05:00', '2021-05-20 04:05:00'),
(26681, 'en', 'Do you really want to unban this delivery_boy?', 'Do you really want to unban this delivery_boy?', '2021-05-20 04:05:00', '2021-05-20 04:05:00'),
(26682, 'en', 'Delivery Boy Information', 'Delivery Boy Information', '2021-05-20 04:05:06', '2021-05-20 04:05:06'),
(26683, 'en', 'Select City', 'Select City', '2021-05-20 04:05:06', '2021-05-20 04:05:06'),
(26684, 'en', 'Delivery Boy has been created successfully', 'Delivery Boy has been created successfully', '2021-05-20 04:07:01', '2021-05-20 04:07:01'),
(26685, 'en', 'Ban this delivery boy', 'Ban this delivery boy', '2021-05-20 04:07:02', '2021-05-20 04:07:02'),
(26686, 'en', 'Payment Configuration', 'Payment Configuration', '2021-05-20 04:32:11', '2021-05-20 04:32:11'),
(26687, 'en', 'Monthly Salary', 'Monthly Salary', '2021-05-20 04:32:11', '2021-05-20 04:32:11'),
(26688, 'en', 'Salary Amount', 'Salary Amount', '2021-05-20 04:32:11', '2021-05-20 04:32:11'),
(26689, 'en', 'Per Order Commission', 'Per Order Commission', '2021-05-20 04:32:11', '2021-05-20 04:32:11'),
(26690, 'en', 'Commission Rate', 'Commission Rate', '2021-05-20 04:32:11', '2021-05-20 04:32:11'),
(26691, 'en', 'Notification Configuration', 'Notification Configuration', '2021-05-20 04:32:11', '2021-05-20 04:32:11'),
(26692, 'en', 'Send Mail', 'Send Mail', '2021-05-20 04:32:11', '2021-05-20 04:32:11'),
(26693, 'en', 'Send OTP', 'Send OTP', '2021-05-20 04:32:11', '2021-05-20 04:32:11'),
(26694, 'en', 'All Cancel Request', 'All Cancel Request', '2021-05-20 04:32:16', '2021-05-20 04:32:16'),
(26695, 'en', 'Cancel Requests', 'Cancel Requests', '2021-05-20 04:32:16', '2021-05-20 04:32:16'),
(26696, 'en', 'Request By', 'Request By', '2021-05-20 04:32:16', '2021-05-20 04:32:16'),
(26697, 'en', 'Request At', 'Request At', '2021-05-20 04:32:16', '2021-05-20 04:32:16'),
(26698, 'en', 'Offline Customer Package Payment Requests', 'Offline Customer Package Payment Requests', '2021-05-20 04:37:23', '2021-05-20 04:37:23'),
(26699, 'en', 'Method', 'Method', '2021-05-20 04:37:23', '2021-05-20 04:37:23'),
(26700, 'en', 'TXN ID', 'TXN ID', '2021-05-20 04:37:23', '2021-05-20 04:37:23'),
(26701, 'en', 'Reciept', 'Reciept', '2021-05-20 04:37:23', '2021-05-20 04:37:23'),
(26702, 'en', 'Offline Customer Package Payment approved successfully', 'Offline Customer Package Payment approved successfully', '2021-05-20 04:37:23', '2021-05-20 04:37:23'),
(26703, 'en', 'Refferal Users', 'Refferal Users', '2021-05-20 04:37:37', '2021-05-20 04:37:37'),
(26704, 'en', 'Reffered By', 'Reffered By', '2021-05-20 04:37:37', '2021-05-20 04:37:37'),
(26705, 'en', 'Affiliate Withdraw Request Reject', 'Affiliate Withdraw Request Reject', '2021-05-20 04:37:59', '2021-05-20 04:37:59'),
(26706, 'en', 'Are you sure, You want to reject this?', 'Are you sure, You want to reject this?', '2021-05-20 04:37:59', '2021-05-20 04:37:59'),
(26707, 'en', 'Server information', 'Server information', '2021-05-20 04:38:23', '2021-05-20 04:38:23'),
(26708, 'en', 'Current Version', 'Current Version', '2021-05-20 04:38:23', '2021-05-20 04:38:23'),
(26709, 'en', 'Required Version', 'Required Version', '2021-05-20 04:38:23', '2021-05-20 04:38:23'),
(26710, 'en', 'php.ini Config', 'php.ini Config', '2021-05-20 04:38:23', '2021-05-20 04:38:23'),
(26711, 'en', 'Config Name', 'Config Name', '2021-05-20 04:38:23', '2021-05-20 04:38:23'),
(26712, 'en', 'Current', 'Current', '2021-05-20 04:38:24', '2021-05-20 04:38:24'),
(26713, 'en', 'Recommended', 'Recommended', '2021-05-20 04:38:24', '2021-05-20 04:38:24'),
(26714, 'en', 'Extensions information', 'Extensions information', '2021-05-20 04:38:24', '2021-05-20 04:38:24'),
(26715, 'en', 'Extension Name', 'Extension Name', '2021-05-20 04:38:24', '2021-05-20 04:38:24'),
(26716, 'en', 'Filesystem Permissions', 'Filesystem Permissions', '2021-05-20 04:38:24', '2021-05-20 04:38:24'),
(26717, 'en', 'File or Folder', 'File or Folder', '2021-05-20 04:38:24', '2021-05-20 04:38:24'),
(26718, 'en', 'Assign Deliver Boy', 'Assign Deliver Boy', '2021-05-20 04:38:42', '2021-05-20 04:38:42'),
(26719, 'en', 'Select Delivery Boy', 'Select Delivery Boy', '2021-05-20 04:38:42', '2021-05-20 04:38:42'),
(26720, 'en', 'Picked Up', 'Picked Up', '2021-05-20 04:38:43', '2021-05-20 04:38:43'),
(26721, 'en', 'On The Way', 'On The Way', '2021-05-20 04:38:43', '2021-05-20 04:38:43'),
(26722, 'en', 'Delivery boy has been assigned', 'Delivery boy has been assigned', '2021-05-20 04:38:43', '2021-05-20 04:38:43'),
(26723, 'en', 'Seller Account', 'Seller Account', '2021-05-20 04:53:34', '2021-05-20 04:53:34'),
(26724, 'en', 'Copy credentials', 'Copy credentials', '2021-05-20 04:53:34', '2021-05-20 04:53:34'),
(26725, 'en', 'Customer Account', 'Customer Account', '2021-05-20 04:53:34', '2021-05-20 04:53:34'),
(26726, 'en', 'Delivery Boy Account', 'Delivery Boy Account', '2021-05-20 04:54:07', '2021-05-20 04:54:07'),
(26727, 'en', 'Invalid coupon!', 'Invalid coupon!', '2021-05-20 04:58:01', '2021-05-20 04:58:01'),
(26728, 'en', 'Assigned Delivery', 'Assigned Delivery', '2021-05-20 05:01:59', '2021-05-20 05:01:59'),
(26729, 'en', 'Pickup Delivery', 'Pickup Delivery', '2021-05-20 05:01:59', '2021-05-20 05:01:59'),
(26730, 'en', 'On The Way Delivery', 'On The Way Delivery', '2021-05-20 05:01:59', '2021-05-20 05:01:59'),
(26731, 'en', 'Completed Delivery', 'Completed Delivery', '2021-05-20 05:01:59', '2021-05-20 05:01:59'),
(26732, 'en', 'Pending Delivery', 'Pending Delivery', '2021-05-20 05:01:59', '2021-05-20 05:01:59'),
(26733, 'en', 'Cancelled Delivery', 'Cancelled Delivery', '2021-05-20 05:01:59', '2021-05-20 05:01:59'),
(26734, 'en', 'Request Cancelled Delivery', 'Request Cancelled Delivery', '2021-05-20 05:01:59', '2021-05-20 05:01:59'),
(26735, 'en', 'Total Collections', 'Total Collections', '2021-05-20 05:01:59', '2021-05-20 05:01:59'),
(26736, 'en', 'Assigned Delivery History', 'Assigned Delivery History', '2021-05-20 05:12:13', '2021-05-20 05:12:13'),
(26737, 'en', 'Mark As Pickup', 'Mark As Pickup', '2021-05-20 05:12:13', '2021-05-20 05:12:13'),
(26738, 'en', 'Do you really want to send request to cancel?', 'Do you really want to send request to cancel?', '2021-05-20 05:12:13', '2021-05-20 05:12:13'),
(26739, 'en', 'Request Cancel', 'Request Cancel', '2021-05-20 05:12:13', '2021-05-20 05:12:13'),
(26740, 'en', 'Total Collection History', 'Total Collection History', '2021-05-20 05:13:48', '2021-05-20 05:13:48'),
(26741, 'en', 'Cancelled Delivery History', 'Cancelled Delivery History', '2021-05-20 05:13:53', '2021-05-20 05:13:53'),
(26742, 'en', 'Completed Delivery History', 'Completed Delivery History', '2021-05-20 05:13:59', '2021-05-20 05:13:59'),
(26743, 'en', 'On The Way Delivery History', 'On The Way Delivery History', '2021-05-20 05:14:03', '2021-05-20 05:14:03'),
(26744, 'en', 'Pickup Delivery History', 'Pickup Delivery History', '2021-05-20 05:14:08', '2021-05-20 05:14:08'),
(26745, 'en', 'Website Popup', 'Website Popup', '2021-06-02 02:31:46', '2021-06-02 02:31:46'),
(26746, 'en', 'Show website popup?', 'Show website popup?', '2021-06-02 02:31:46', '2021-06-02 02:31:46'),
(26747, 'en', 'Popup content', 'Popup content', '2021-06-02 02:31:46', '2021-06-02 02:31:46'),
(26748, 'en', 'Show Subscriber form?', 'Show Subscriber form?', '2021-06-02 02:31:46', '2021-06-02 02:31:46'),
(26749, 'en', 'Topbar Banner', 'Topbar Banner', '2021-06-02 02:31:49', '2021-06-02 02:31:49'),
(26750, 'en', 'Topbar Banner Link', 'Topbar Banner Link', '2021-06-02 02:31:49', '2021-06-02 02:31:49'),
(26751, 'en', 'Disable image optimization?', 'Disable image optimization?', '2021-06-02 03:18:51', '2021-06-02 03:18:51'),
(26752, 'en', 'Back to uploaded files', 'Back to uploaded files', '2021-06-02 03:41:55', '2021-06-02 03:41:55'),
(26753, 'en', 'Drag & drop your files', 'Drag & drop your files', '2021-06-02 03:41:56', '2021-06-02 03:41:56'),
(26754, 'en', 'Subscribe Now', 'Subscribe Now', '2021-06-02 03:44:19', '2021-06-02 03:44:19'),
(26755, 'en', 'Play Store Link', 'Play Store Link', '2021-06-02 03:49:21', '2021-06-02 03:49:21'),
(26756, 'en', 'App Store Link', 'App Store Link', '2021-06-02 03:49:21', '2021-06-02 03:49:21'),
(26757, 'en', 'Hello', 'Hello', '2021-06-08 05:29:55', '2021-06-08 05:29:55'),
(26758, 'en', 'Shop By Department', 'Shop By Department', '2021-06-08 05:29:55', '2021-06-08 05:29:55'),
(26759, 'en', 'Log Out', 'Log Out', '2021-06-08 05:29:55', '2021-06-08 05:29:55'),
(26760, 'en', 'SMS Templates', 'SMS Templates', '2021-06-21 06:01:43', '2021-06-21 06:01:43'),
(26761, 'en', 'Loading..', 'Loading..', '2021-06-21 06:02:59', '2021-06-21 06:02:59'),
(26762, 'en', 'Place Order', 'Place Order', '2021-06-21 06:02:59', '2021-06-21 06:02:59'),
(26763, 'en', 'Load More.', 'Load More.', '2021-06-21 06:02:59', '2021-06-21 06:02:59'),
(26764, 'en', 'Nothing more found.', 'Nothing more found.', '2021-06-21 06:02:59', '2021-06-21 06:02:59'),
(26765, 'en', 'Phone Number Verification', 'Phone Number Verification', '2021-06-21 06:03:28', '2021-06-21 06:03:28'),
(26766, 'en', 'Password Reset', 'Password Reset', '2021-06-21 06:03:28', '2021-06-21 06:03:28'),
(26767, 'en', 'Delivery Status Change', 'Delivery Status Change', '2021-06-21 06:03:28', '2021-06-21 06:03:28'),
(26768, 'en', 'Payment Status Change', 'Payment Status Change', '2021-06-21 06:03:28', '2021-06-21 06:03:28'),
(26769, 'en', 'Assign Delivery Boy', 'Assign Delivery Boy', '2021-06-21 06:03:28', '2021-06-21 06:03:28'),
(26770, 'en', 'SMS Body', 'SMS Body', '2021-06-21 06:03:28', '2021-06-21 06:03:28'),
(26771, 'en', 'Template ID', 'Template ID', '2021-06-21 06:03:28', '2021-06-21 06:03:28'),
(26772, 'en', 'Update Settings', 'Update Settings', '2021-06-21 06:03:28', '2021-06-21 06:03:28'),
(26773, 'en', 'Select Brand', 'Select Brand', '2021-07-27 19:45:29', '2021-07-27 19:45:29'),
(26774, 'en', 'Minimum Purchase Qty', 'Minimum Purchase Qty', '2021-07-27 19:45:29', '2021-07-27 19:45:29'),
(26775, 'en', 'Discount Date Range', 'Discount Date Range', '2021-07-27 19:45:29', '2021-07-27 19:45:29'),
(26776, 'en', '1', '1', '2021-07-27 19:45:29', '2021-07-27 19:45:29'),
(26777, 'en', 'Is Product Quantity Mulitiply', 'Is Product Quantity Mulitiply', '2021-07-27 19:45:29', '2021-07-27 19:45:29'),
(26778, 'en', 'Bulk Action', 'Bulk Action', '2021-07-27 19:45:30', '2021-07-27 19:45:30'),
(26779, 'en', 'Delete selection', 'Delete selection', '2021-07-27 19:45:30', '2021-07-27 19:45:30'),
(26780, 'en', 'Paytm Credential', 'Paytm Credential', '2021-07-27 19:47:48', '2021-07-27 19:47:48'),
(26781, 'en', 'PAYTM ENVIRONMENT', 'PAYTM ENVIRONMENT', '2021-07-27 19:47:48', '2021-07-27 19:47:48'),
(26782, 'en', 'PAYTM MERCHANT ID', 'PAYTM MERCHANT ID', '2021-07-27 19:47:48', '2021-07-27 19:47:48'),
(26783, 'en', 'PAYTM MERCHANT KEY', 'PAYTM MERCHANT KEY', '2021-07-27 19:47:48', '2021-07-27 19:47:48'),
(26784, 'en', 'PAYTM MERCHANT WEBSITE', 'PAYTM MERCHANT WEBSITE', '2021-07-27 19:47:48', '2021-07-27 19:47:48'),
(26785, 'en', 'PAYTM CHANNEL', 'PAYTM CHANNEL', '2021-07-27 19:47:48', '2021-07-27 19:47:48'),
(26786, 'en', 'PAYTM INDUSTRY TYPE', 'PAYTM INDUSTRY TYPE', '2021-07-27 19:47:48', '2021-07-27 19:47:48'),
(26787, 'en', 'Offline Wallet Recharge Requests', 'Offline Wallet Recharge Requests', '2021-07-27 19:48:30', '2021-07-27 19:48:30'),
(26788, 'en', 'Money has been added successfully', 'Money has been added successfully', '2021-07-27 19:48:30', '2021-07-27 19:48:30'),
(26789, 'en', 'Account', 'Account', '2021-08-06 01:48:44', '2021-08-06 01:48:44'),
(26790, 'en', 'Item has been removed from cart', 'Item has been removed from cart', '2021-08-06 01:48:44', '2021-08-06 01:48:44'),
(26791, 'en', 'Please choose all the options', 'Please choose all the options', '2021-08-06 01:48:44', '2021-08-06 01:48:44'),
(26792, 'en', 'File System & Cache Configuration', 'File System & Cache Configuration', '2021-08-06 01:48:59', '2021-08-06 01:48:59'),
(26793, 'en', 'Google Map', 'Google Map', '2021-08-06 01:48:59', '2021-08-06 01:48:59'),
(26794, 'en', 'Google Firebase', 'Google Firebase', '2021-08-06 01:48:59', '2021-08-06 01:48:59'),
(26795, 'en', 'No notification found', 'No notification found', '2021-08-06 01:48:59', '2021-08-06 01:48:59'),
(26796, 'en', 'View All Notifications', 'View All Notifications', '2021-08-06 01:48:59', '2021-08-06 01:48:59'),
(26797, 'id', 'Default Language', 'Bahasa default', '2021-08-06 01:49:59', '2021-08-06 02:12:52'),
(26798, 'id', 'Save', 'Simpan', '2021-08-06 01:49:59', '2021-08-06 02:12:52'),
(26799, 'id', 'Add New Language', 'Tambahkan Bahasa Baru', '2021-08-06 01:49:59', '2021-08-06 02:12:52'),
(26800, 'id', 'Language', 'Bahasa', '2021-08-06 01:49:59', '2021-08-06 02:18:00'),
(26801, 'id', 'Name', 'Nama', '2021-08-06 01:49:59', '2021-08-06 02:18:00'),
(26802, 'id', 'Code', 'Kode', '2021-08-06 01:49:59', '2021-08-06 02:18:00'),
(26803, 'id', 'RTL', 'RTL', '2021-08-06 01:49:59', '2021-08-06 01:49:59'),
(26804, 'id', 'Options', 'Pilihan', '2021-08-06 01:49:59', '2021-08-06 02:18:00'),
(26805, 'id', 'Translation', 'Terjemahan', '2021-08-06 01:49:59', '2021-08-06 02:18:00'),
(26806, 'id', 'Edit', 'Edit', '2021-08-06 01:49:59', '2021-08-06 01:49:59'),
(26807, 'id', 'Delete', 'Hapus', '2021-08-06 01:50:00', '2021-08-06 02:18:00'),
(26808, 'id', 'Delete Confirmation', 'Konfirmasi Hapus', '2021-08-06 01:50:00', '2021-08-06 02:18:00'),
(26809, 'id', 'Are you sure to delete this?', 'Apakah Anda yakin akan menghapus ini?', '2021-08-06 01:50:00', '2021-08-06 02:18:00'),
(26810, 'id', 'Cancel', 'Membatalkan', '2021-08-06 01:50:00', '2021-08-06 02:18:00'),
(26811, 'id', 'Something went wrong', 'Ada yang salah', '2021-08-06 01:50:00', '2021-08-06 02:18:00'),
(26812, 'id', 'Nothing selected', 'Tidak ada yang dipilih', '2021-08-06 01:50:00', '2021-08-06 02:18:00');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(26813, 'id', 'Nothing found', 'Tidak ada yang ditemukan', '2021-08-06 01:50:01', '2021-08-06 02:18:00'),
(26814, 'id', 'Choose file', 'Pilih File', '2021-08-06 01:50:01', '2021-08-06 02:18:00'),
(26815, 'id', 'File selected', 'File dipilih', '2021-08-06 01:50:01', '2021-08-06 02:18:00'),
(26816, 'id', 'Files selected', 'File yang dipilih', '2021-08-06 01:50:01', '2021-08-06 02:18:00'),
(26817, 'id', 'Add more files', 'Tambahkan lebih banyak file', '2021-08-06 01:50:01', '2021-08-06 02:18:00'),
(26818, 'id', 'Adding more files', 'Menambahkan lebih banyak file', '2021-08-06 01:50:01', '2021-08-06 02:18:00'),
(26819, 'id', 'Drop files here, paste or', 'Drop file disini, atau paste', '2021-08-06 01:50:01', '2021-08-06 02:18:00'),
(26820, 'id', 'Browse', 'Browse', '2021-08-06 01:50:01', '2021-08-06 01:50:01'),
(26821, 'id', 'Upload complete', 'Upload complete', '2021-08-06 01:50:02', '2021-08-06 01:50:02'),
(26822, 'id', 'Upload paused', 'Upload paused', '2021-08-06 01:50:02', '2021-08-06 01:50:02'),
(26823, 'id', 'Resume upload', 'Resume upload', '2021-08-06 01:50:02', '2021-08-06 01:50:02'),
(26824, 'id', 'Pause upload', 'Pause upload', '2021-08-06 01:50:02', '2021-08-06 01:50:02'),
(26825, 'id', 'Retry upload', 'Retry upload', '2021-08-06 01:50:02', '2021-08-06 01:50:02'),
(26826, 'id', 'Cancel upload', 'Cancel upload', '2021-08-06 01:50:02', '2021-08-06 01:50:02'),
(26827, 'id', 'Uploading', 'Uploading', '2021-08-06 01:50:02', '2021-08-06 01:50:02'),
(26828, 'id', 'Processing', 'Processing', '2021-08-06 01:50:02', '2021-08-06 01:50:02'),
(26829, 'id', 'Complete', 'Complete', '2021-08-06 01:50:03', '2021-08-06 01:50:03'),
(26830, 'id', 'File', 'File', '2021-08-06 01:50:03', '2021-08-06 01:50:03'),
(26831, 'id', 'Files', 'Files', '2021-08-06 01:50:03', '2021-08-06 01:50:03'),
(26832, 'id', 'Search in menu', 'Cari di menu', '2021-08-06 01:50:03', '2021-08-06 02:18:01'),
(26833, 'id', 'Dashboard', 'Dashboard', '2021-08-06 01:50:03', '2021-08-06 01:50:03'),
(26834, 'id', 'Products', 'Produk', '2021-08-06 01:50:03', '2021-08-06 10:42:38'),
(26835, 'id', 'Add New product', 'Tambahkan Produk Baru', '2021-08-06 01:50:03', '2021-08-06 02:18:01'),
(26836, 'id', 'All Products', 'Semua produk', '2021-08-06 01:50:03', '2021-08-06 02:18:01'),
(26837, 'id', 'In House Products', 'In House Products', '2021-08-06 01:50:03', '2021-08-06 01:50:03'),
(26838, 'id', 'Seller Products', 'Penjual Produk', '2021-08-06 01:50:03', '2021-08-06 02:18:01'),
(26839, 'id', 'Digital Products', 'Produk digital', '2021-08-06 01:50:04', '2021-08-06 02:18:01'),
(26840, 'id', 'Bulk Import', 'Impor Massal', '2021-08-06 01:50:04', '2021-08-06 02:18:01'),
(26841, 'id', 'Bulk Export', 'Ekspor massal', '2021-08-06 01:50:04', '2021-08-06 02:18:01'),
(26842, 'id', 'Category', 'Kategori', '2021-08-06 01:50:04', '2021-08-06 02:18:01'),
(26843, 'id', 'Brand', 'Brand', '2021-08-06 01:50:04', '2021-08-06 01:50:04'),
(26844, 'id', 'Attribute', 'Atribut', '2021-08-06 01:50:04', '2021-08-06 02:18:01'),
(26845, 'id', 'Colors', 'Warna', '2021-08-06 01:50:04', '2021-08-06 02:18:01'),
(26846, 'id', 'Product Reviews', 'Ulasan produk', '2021-08-06 01:50:04', '2021-08-06 02:18:01'),
(26847, 'id', 'Sales', 'Penjualan', '2021-08-06 01:50:04', '2021-08-06 02:23:04'),
(26848, 'id', 'All Orders', 'Semua Order', '2021-08-06 01:50:04', '2021-08-06 02:23:04'),
(26849, 'id', 'Inhouse orders', 'Inhouse orders', '2021-08-06 01:50:04', '2021-08-06 01:50:04'),
(26850, 'id', 'Seller Orders', 'Pesanan Penjual', '2021-08-06 01:50:04', '2021-08-06 02:23:04'),
(26851, 'id', 'Pick-up Point Order', 'Pick-up Point Order', '2021-08-06 01:50:04', '2021-08-06 01:50:04'),
(26852, 'id', 'Customers', 'Pelanggan', '2021-08-06 01:50:05', '2021-08-06 02:23:04'),
(26853, 'id', 'Customer list', 'Daftar pelanggan', '2021-08-06 01:50:05', '2021-08-06 02:23:04'),
(26854, 'id', 'Sellers', 'Penjual', '2021-08-06 01:50:05', '2021-08-06 02:23:04'),
(26855, 'id', 'All Seller', 'Semua penjual', '2021-08-06 01:50:05', '2021-08-06 02:23:05'),
(26856, 'id', 'Payouts', 'Pembayaran', '2021-08-06 01:50:05', '2021-08-06 02:23:05'),
(26857, 'id', 'Payout Requests', 'Permintaan pembayaran', '2021-08-06 01:50:05', '2021-08-06 02:23:05'),
(26858, 'id', 'Seller Commission', 'Komisi Penjual', '2021-08-06 01:50:05', '2021-08-06 02:23:05'),
(26859, 'id', 'Seller Verification Form', 'Formulir Verifikasi Penjual', '2021-08-06 01:50:05', '2021-08-06 02:23:05'),
(26860, 'id', 'Uploaded Files', 'File yang diunggah', '2021-08-06 01:50:05', '2021-08-06 02:23:05'),
(26861, 'id', 'Reports', 'Laporan', '2021-08-06 01:50:05', '2021-08-06 02:23:05'),
(26862, 'id', 'In House Product Sale', 'In House Product Sale', '2021-08-06 01:50:05', '2021-08-06 01:50:05'),
(26863, 'id', 'Seller Products Sale', 'Penjual Produk Penjualan', '2021-08-06 01:50:05', '2021-08-06 02:23:05'),
(26864, 'id', 'Products Stock', 'Stok Produk', '2021-08-06 01:50:05', '2021-08-06 02:23:05'),
(26865, 'id', 'Products wishlist', 'Produk Wishlist', '2021-08-06 01:50:06', '2021-08-06 02:23:05'),
(26866, 'id', 'User Searches', 'Pencarian Pengguna', '2021-08-06 01:50:06', '2021-08-06 02:23:05'),
(26867, 'id', 'Commission History', 'Komisi History', '2021-08-06 01:50:06', '2021-08-06 02:23:05'),
(26868, 'id', 'Wallet Recharge History', 'Isi Ulang Wallet History', '2021-08-06 01:50:06', '2021-08-06 02:23:05'),
(26869, 'id', 'Blog System', 'Blog System', '2021-08-06 01:50:06', '2021-08-06 01:50:06'),
(26870, 'id', 'All Posts', 'Semua posting', '2021-08-06 01:50:06', '2021-08-06 02:23:05'),
(26871, 'id', 'Categories', 'Kategori', '2021-08-06 01:50:06', '2021-08-06 02:23:05'),
(26872, 'id', 'Marketing', 'Marketing', '2021-08-06 01:50:06', '2021-08-06 01:50:06'),
(26873, 'id', 'Flash deals', 'Flash deals', '2021-08-06 01:50:06', '2021-08-06 01:50:06'),
(26874, 'id', 'Newsletters', 'Newsletters', '2021-08-06 01:50:06', '2021-08-06 01:50:06'),
(26875, 'id', 'Subscribers', 'Subscribers', '2021-08-06 01:50:07', '2021-08-06 01:50:07'),
(26876, 'id', 'Coupon', 'Kupon', '2021-08-06 01:50:07', '2021-08-06 02:23:05'),
(26877, 'id', 'Support', 'Support', '2021-08-06 01:50:07', '2021-08-06 01:50:07'),
(26878, 'id', 'Ticket', 'Tiket', '2021-08-06 01:50:07', '2021-08-06 02:23:05'),
(26879, 'id', 'Product Queries', 'Product Queries', '2021-08-06 01:50:07', '2021-08-06 01:50:07'),
(26880, 'id', 'Website Setup', 'Website Setup', '2021-08-06 01:50:07', '2021-08-06 01:50:07'),
(26881, 'id', 'Header', 'Header', '2021-08-06 01:50:07', '2021-08-06 01:50:07'),
(26882, 'id', 'Footer', 'Footer', '2021-08-06 01:50:07', '2021-08-06 01:50:07'),
(26883, 'id', 'Pages', 'Pages', '2021-08-06 01:50:07', '2021-08-06 01:50:07'),
(26884, 'id', 'Appearance', 'Appearance', '2021-08-06 01:50:07', '2021-08-06 01:50:07'),
(26885, 'id', 'Setup & Configurations', 'Setup & Configurations', '2021-08-06 01:50:07', '2021-08-06 01:50:07'),
(26886, 'id', 'General Settings', 'General Settings', '2021-08-06 01:50:07', '2021-08-06 01:50:07'),
(26887, 'id', 'Features activation', 'Fitur Aktivasi', '2021-08-06 01:50:07', '2021-08-06 02:23:05'),
(26888, 'id', 'Languages', 'Bahasa', '2021-08-06 01:50:08', '2021-08-06 02:23:05'),
(26889, 'id', 'Currency', 'Mata uang', '2021-08-06 01:50:08', '2021-08-06 02:23:05'),
(26890, 'id', 'Vat & TAX', 'PPN & PAJAK', '2021-08-06 01:50:08', '2021-08-06 02:23:05'),
(26891, 'id', 'Pickup point', 'Pickup point', '2021-08-06 01:50:08', '2021-08-06 01:50:08'),
(26892, 'id', 'SMTP Settings', 'SMTP Settings', '2021-08-06 01:50:08', '2021-08-06 01:50:08'),
(26893, 'id', 'Payment Methods', 'Cara Pembayaran', '2021-08-06 01:50:08', '2021-08-06 02:23:05'),
(26894, 'id', 'File System & Cache Configuration', 'File System & Cache Configuration', '2021-08-06 01:50:08', '2021-08-06 01:50:08'),
(26895, 'id', 'Social media Logins', 'Social media Logins', '2021-08-06 01:50:08', '2021-08-06 01:50:08'),
(26896, 'id', 'Facebook', 'Facebook', '2021-08-06 01:50:08', '2021-08-06 01:50:08'),
(26897, 'id', 'Facebook Chat', 'Facebook Chat', '2021-08-06 01:50:08', '2021-08-06 01:50:08'),
(26898, 'id', 'Facebook Comment', 'Facebook Comment', '2021-08-06 01:50:08', '2021-08-06 01:50:08'),
(26899, 'id', 'Google', 'Google', '2021-08-06 01:50:09', '2021-08-06 01:50:09'),
(26900, 'id', 'Analytics Tools', 'Analytics Tools', '2021-08-06 01:50:09', '2021-08-06 01:50:09'),
(26901, 'id', 'Google reCAPTCHA', 'Google reCAPTCHA', '2021-08-06 01:50:09', '2021-08-06 01:50:09'),
(26902, 'id', 'Google Map', 'Google Map', '2021-08-06 01:50:09', '2021-08-06 01:50:09'),
(26903, 'id', 'Google Firebase', 'Google Firebase', '2021-08-06 01:50:09', '2021-08-06 01:50:09'),
(26904, 'id', 'Shipping', 'Pengiriman', '2021-08-06 01:50:09', '2021-08-06 02:27:51'),
(26905, 'id', 'Shipping Configuration', 'Konfigurasi Pengiriman', '2021-08-06 01:50:09', '2021-08-06 02:27:51'),
(26906, 'id', 'Shipping Countries', 'Negara Pengiriman', '2021-08-06 01:50:09', '2021-08-06 02:27:51'),
(26907, 'id', 'Shipping Cities', 'Kota pengiriman', '2021-08-06 01:50:09', '2021-08-06 02:27:51'),
(26908, 'id', 'Staffs', 'Staffs', '2021-08-06 01:50:09', '2021-08-06 01:50:09'),
(26909, 'id', 'All staffs', 'Semua staf', '2021-08-06 01:50:09', '2021-08-06 02:27:51'),
(26910, 'id', 'Staff permissions', 'Staff permissions', '2021-08-06 01:50:10', '2021-08-06 01:50:10'),
(26911, 'id', 'System', 'System', '2021-08-06 01:50:10', '2021-08-06 01:50:10'),
(26912, 'id', 'Update', 'Update', '2021-08-06 01:50:10', '2021-08-06 01:50:10'),
(26913, 'id', 'Server status', 'Status server', '2021-08-06 01:50:10', '2021-08-06 02:27:51'),
(26914, 'id', 'Addon Manager', 'Addon Manager', '2021-08-06 01:50:10', '2021-08-06 01:50:10'),
(26915, 'id', 'Browse Website', 'Kunjungi Website', '2021-08-06 01:50:10', '2021-08-06 02:27:51'),
(26916, 'id', 'Notifications', 'Notifikasi', '2021-08-06 01:50:10', '2021-08-06 02:27:51'),
(26917, 'id', 'No notification found', 'Notifikasi tidak ditemukan', '2021-08-06 01:50:10', '2021-08-06 02:27:51'),
(26918, 'id', 'View All Notifications', 'Lihat semua notifikasi', '2021-08-06 01:50:10', '2021-08-06 02:27:51'),
(26919, 'id', 'Profile', 'Profile', '2021-08-06 01:50:10', '2021-08-06 01:50:10'),
(26920, 'id', 'Logout', 'Keluar', '2021-08-06 01:50:10', '2021-08-06 02:27:51'),
(26921, 'id', 'Page Not Found!', 'Halaman tidak ditemukan!', '2021-08-06 01:50:11', '2021-08-06 02:27:51'),
(26922, 'id', 'The page you are looking for has not been found on our server.', 'Halaman yang Anda cari belum ditemukan di server kami.', '2021-08-06 01:50:11', '2021-08-06 02:27:51'),
(26923, 'id', 'My Panel', 'My Panel', '2021-08-06 01:50:13', '2021-08-06 01:50:13'),
(26924, 'id', 'I am shopping for...', 'Saya berbelanja untuk ...', '2021-08-06 01:50:13', '2021-08-06 02:27:51'),
(26925, 'id', 'Compare', 'Perbandingan', '2021-08-06 01:50:13', '2021-08-06 02:27:51'),
(26926, 'id', 'Wishlist', 'Wishlist', '2021-08-06 01:50:14', '2021-08-06 01:50:14'),
(26927, 'id', 'Cart', 'Keranjang', '2021-08-06 01:50:14', '2021-08-06 02:27:51'),
(26928, 'id', 'Your Cart is empty', 'Keranjang Anda kosong', '2021-08-06 01:50:14', '2021-08-06 02:27:51'),
(26929, 'id', 'See All', 'Lihat semua', '2021-08-06 01:50:14', '2021-08-06 02:27:52'),
(26930, 'id', 'Home', 'Home', '2021-08-06 01:50:14', '2021-08-06 01:50:14'),
(26931, 'id', 'Flash Sale', 'Flash Sale', '2021-08-06 01:50:14', '2021-08-06 01:50:14'),
(26932, 'id', 'Blogs', 'Blogs', '2021-08-06 01:50:14', '2021-08-06 01:50:14'),
(26933, 'id', 'All Brands', 'Semua Brands', '2021-08-06 01:50:14', '2021-08-06 02:27:52'),
(26934, 'id', 'All Categories', 'Semua Kategori', '2021-08-06 01:50:14', '2021-08-06 02:27:52'),
(26935, 'id', 'Terms & conditions', 'Syarat & Ketentuan', '2021-08-06 01:50:14', '2021-08-06 10:27:32'),
(26936, 'id', 'Return Policy', 'Kebijakan pengembalian', '2021-08-06 01:50:15', '2021-08-06 02:27:52'),
(26937, 'id', 'Support Policy', 'Kebijakan Dukungan', '2021-08-06 01:50:15', '2021-08-06 02:27:52'),
(26938, 'id', 'Privacy Policy', 'Kebijakan pribadi', '2021-08-06 01:50:15', '2021-08-06 02:27:52'),
(26939, 'id', 'Your Email Address', 'Alamat email anda', '2021-08-06 01:50:15', '2021-08-06 02:27:52'),
(26940, 'id', 'Subscribe', 'Subscribe', '2021-08-06 01:50:15', '2021-08-06 01:50:15'),
(26941, 'id', 'Contact Info', 'Info kontak', '2021-08-06 01:50:15', '2021-08-06 02:27:52'),
(26942, 'id', 'Address', 'Alamat', '2021-08-06 01:50:15', '2021-08-06 02:27:52'),
(26943, 'id', 'Phone', 'Telepon', '2021-08-06 01:50:15', '2021-08-06 02:27:52'),
(26944, 'id', 'Email', 'Email', '2021-08-06 01:50:15', '2021-08-06 01:50:15'),
(26945, 'id', 'My Account', 'Akun saya', '2021-08-06 01:50:15', '2021-08-06 02:27:52'),
(26946, 'id', 'Order History', 'Order History', '2021-08-06 01:50:15', '2021-08-06 01:50:15'),
(26947, 'id', 'My Wishlist', 'My Wishlist', '2021-08-06 01:50:16', '2021-08-06 01:50:16'),
(26948, 'id', 'Track Order', 'Track Order', '2021-08-06 01:50:16', '2021-08-06 01:50:16'),
(26949, 'id', 'Be a Seller', 'Jadilah penjual', '2021-08-06 01:50:16', '2021-08-06 02:31:01'),
(26950, 'id', 'Apply Now', 'Ajukan Sekarang', '2021-08-06 01:50:16', '2021-08-06 02:31:01'),
(26951, 'id', 'Account', 'Akun', '2021-08-06 01:50:16', '2021-08-06 02:31:01'),
(26952, 'id', 'Confirmation', 'Konfirmasi', '2021-08-06 01:50:16', '2021-08-06 02:31:01'),
(26953, 'id', 'Delete confirmation message', 'Konfirmasi untuk menghapus', '2021-08-06 01:50:16', '2021-08-06 02:31:01'),
(26954, 'id', 'Item has been removed from cart', 'Barang telah dihapus dari keranjang', '2021-08-06 01:50:17', '2021-08-06 02:31:01'),
(26955, 'id', 'Item has been added to compare list', 'Item telah ditambahkan ke daftar perbandingan', '2021-08-06 01:50:17', '2021-08-06 02:31:01'),
(26956, 'id', 'Please login first', 'Silahkan masuk terlebih dahulu', '2021-08-06 01:50:17', '2021-08-06 02:31:01'),
(26957, 'id', 'Please choose all the options', 'Silakan pilih semua opsi', '2021-08-06 01:50:17', '2021-08-06 02:31:01'),
(26958, 'id', 'Language has been deleted successfully', 'Bahasa telah berhasil dihapus', '2021-08-06 01:51:37', '2021-08-06 02:31:01'),
(26959, 'id', 'Language changed to ', 'Bahasa berubah menjadi', '2021-08-06 01:51:53', '2021-08-06 02:31:01'),
(26960, 'id', 'Type key & Enter', 'Ketik Key & Enter', '2021-08-06 02:12:27', '2021-08-06 02:31:01'),
(26961, 'id', 'Key', 'Key', '2021-08-06 02:12:27', '2021-08-06 02:12:27'),
(26962, 'id', 'Value', 'Nilai', '2021-08-06 02:12:27', '2021-08-06 02:31:01'),
(26963, 'id', 'Copy Translations', 'Salin terjemahan', '2021-08-06 02:12:27', '2021-08-06 02:31:01'),
(26964, 'id', 'Translations updated for ', 'Terjemahan diperbarui untuk', '2021-08-06 02:12:52', '2021-08-06 02:31:01'),
(26965, 'id', 'System Default Currency', 'System Default Currency', '2021-08-06 02:31:27', '2021-08-06 02:31:27'),
(26966, 'id', 'Set Currency Formats', 'Set Currency Formats', '2021-08-06 02:31:27', '2021-08-06 02:31:27'),
(26967, 'id', 'Symbol Format', 'Symbol Format', '2021-08-06 02:31:27', '2021-08-06 02:31:27'),
(26968, 'id', 'Decimal Separator', 'Decimal Separator', '2021-08-06 02:31:27', '2021-08-06 02:31:27'),
(26969, 'id', 'No of decimals', 'No of decimals', '2021-08-06 02:31:27', '2021-08-06 02:31:27'),
(26970, 'id', 'All Currencies', 'All Currencies', '2021-08-06 02:31:27', '2021-08-06 02:31:27'),
(26971, 'id', 'Add New Currency', 'Add New Currency', '2021-08-06 02:31:27', '2021-08-06 02:31:27'),
(26972, 'id', 'Type name & Enter', 'Type name & Enter', '2021-08-06 02:31:27', '2021-08-06 02:31:27'),
(26973, 'id', 'Currency name', 'Currency name', '2021-08-06 02:31:27', '2021-08-06 02:31:27'),
(26974, 'id', 'Currency symbol', 'Currency symbol', '2021-08-06 02:31:27', '2021-08-06 02:31:27'),
(26975, 'id', 'Currency code', 'Currency code', '2021-08-06 02:31:27', '2021-08-06 02:31:27'),
(26976, 'id', 'Exchange rate', 'Exchange rate', '2021-08-06 02:31:28', '2021-08-06 02:31:28'),
(26977, 'id', 'Status', 'Status', '2021-08-06 02:31:28', '2021-08-06 02:31:28'),
(26978, 'id', 'Currency Status updated successfully', 'Currency Status updated successfully', '2021-08-06 02:31:28', '2021-08-06 02:31:28'),
(26979, 'id', 'Settings updated successfully', 'Settings updated successfully', '2021-08-06 02:31:43', '2021-08-06 02:31:43'),
(26980, 'id', 'Symbol', 'Symbol', '2021-08-06 02:32:46', '2021-08-06 02:32:46'),
(26981, 'id', 'Something went wrong!', 'Something went wrong!', '2021-08-06 02:34:19', '2021-08-06 02:34:19'),
(26982, 'id', 'Sorry for the inconvenience, but we\'re working on it.', 'Sorry for the inconvenience, but we\'re working on it.', '2021-08-06 02:34:20', '2021-08-06 02:34:20'),
(26983, 'id', 'Error code', 'Error code', '2021-08-06 02:34:20', '2021-08-06 02:34:20'),
(26984, 'id', 'Currency updated successfully', 'Currency updated successfully', '2021-08-06 02:35:06', '2021-08-06 02:35:06'),
(26985, 'id', 'Top 10 Categories', '10 Kategori Teratas', '2021-08-06 02:36:24', '2021-08-06 10:48:56'),
(26986, 'id', 'View All Categories', 'View All Categories', '2021-08-06 02:36:24', '2021-08-06 02:36:24'),
(26987, 'id', 'Top 10 Brands', '10 Brand Teratas', '2021-08-06 02:36:24', '2021-08-06 10:49:14'),
(26988, 'id', 'View All Brands', 'View All Brands', '2021-08-06 02:36:24', '2021-08-06 02:36:24'),
(26989, 'id', 'Login', 'Masuk', '2021-08-06 02:36:25', '2021-08-06 10:28:29'),
(26990, 'id', 'Registration', 'Registrasi', '2021-08-06 02:36:25', '2021-08-06 10:29:16'),
(26991, 'id', 'Featured Products', 'Produk Unggulan', '2021-08-06 02:36:26', '2021-08-06 10:47:04'),
(26992, 'id', 'System Name', 'System Name', '2021-08-06 02:36:37', '2021-08-06 02:36:37'),
(26993, 'id', 'System Logo - White', 'System Logo - White', '2021-08-06 02:36:37', '2021-08-06 02:36:37'),
(26994, 'id', 'Choose Files', 'Choose Files', '2021-08-06 02:36:37', '2021-08-06 02:36:37'),
(26995, 'id', 'Will be used in admin panel side menu', 'Will be used in admin panel side menu', '2021-08-06 02:36:37', '2021-08-06 02:36:37'),
(26996, 'id', 'System Logo - Black', 'System Logo - Black', '2021-08-06 02:36:37', '2021-08-06 02:36:37'),
(26997, 'id', 'Will be used in admin panel topbar in mobile + Admin login page', 'Akan digunakan di Topbar Panel Admin di Halaman Login Mobile + Admin', '2021-08-06 02:36:37', '2021-08-06 10:14:13'),
(26998, 'id', 'System Timezone', 'Sistem zona waktu', '2021-08-06 02:36:37', '2021-08-06 10:14:13'),
(26999, 'id', 'Admin login page background', 'Latar belakang halaman login admin', '2021-08-06 02:36:37', '2021-08-06 10:14:13'),
(27000, 'id', 'Select File', 'Pilih file', '2021-08-06 02:36:50', '2021-08-06 10:14:13'),
(27001, 'id', 'Upload New', 'Upload New', '2021-08-06 02:36:50', '2021-08-06 02:36:50'),
(27002, 'id', 'Sort by newest', 'Urutkan berdasarkan terbaru', '2021-08-06 02:36:50', '2021-08-06 10:14:13'),
(27003, 'id', 'Sort by oldest', 'Urutkan oleh yang terlama', '2021-08-06 02:36:50', '2021-08-06 10:14:13'),
(27004, 'id', 'Sort by smallest', 'Urutkan berdasarkan yang terkecil', '2021-08-06 02:36:50', '2021-08-06 10:14:13'),
(27005, 'id', 'Sort by largest', 'Urutkan berdasarkan yang terbesar', '2021-08-06 02:36:50', '2021-08-06 10:14:13'),
(27006, 'id', 'Selected Only', 'Hanya dipilih', '2021-08-06 02:36:50', '2021-08-06 10:14:14'),
(27007, 'id', 'Search your files', 'Cari file Anda', '2021-08-06 02:36:51', '2021-08-06 10:14:14'),
(27008, 'id', 'No files found', 'Tidak ditemukan file', '2021-08-06 02:36:51', '2021-08-06 10:14:14'),
(27009, 'id', '0 File selected', '0 File dipilih', '2021-08-06 02:36:51', '2021-08-06 10:14:14'),
(27010, 'id', 'Clear', 'Clear', '2021-08-06 02:36:51', '2021-08-06 02:36:51'),
(27011, 'id', 'Prev', 'Prev', '2021-08-06 02:36:51', '2021-08-06 02:36:51'),
(27012, 'id', 'Next', 'Next', '2021-08-06 02:36:51', '2021-08-06 02:36:51'),
(27013, 'id', 'Add Files', 'Tambahkan file', '2021-08-06 02:36:51', '2021-08-06 10:14:14'),
(27014, 'id', 'Welcome to', 'Selamat Datang di', '2021-08-06 09:40:03', '2021-08-06 10:14:14'),
(27015, 'id', 'Login to your account.', 'Masuk ke akun Anda.', '2021-08-06 09:40:03', '2021-08-06 10:14:14'),
(27016, 'id', 'Password', 'Password', '2021-08-06 09:40:03', '2021-08-06 09:40:03'),
(27017, 'id', 'Remember Me', 'Ingatkan saya', '2021-08-06 09:40:03', '2021-08-06 10:14:14'),
(27018, 'id', 'Please Configure SMTP Setting to work all email sending functionality', 'Silakan konfigurasikan pengaturan SMTP untuk mengerjakan semua fungsi pengiriman email', '2021-08-06 09:40:14', '2021-08-06 10:14:14'),
(27019, 'id', 'Configure Now', 'Mengkonfigurasi sekarang', '2021-08-06 09:40:14', '2021-08-06 10:14:14'),
(27020, 'id', 'Total', 'Total', '2021-08-06 09:40:14', '2021-08-06 09:40:14'),
(27021, 'id', 'Customer', 'Pelanggan', '2021-08-06 09:40:14', '2021-08-06 10:14:14'),
(27022, 'id', 'Order', 'Order', '2021-08-06 09:40:14', '2021-08-06 09:40:14'),
(27023, 'id', 'Product category', 'Kategori Produk', '2021-08-06 09:40:14', '2021-08-06 10:14:14'),
(27024, 'id', 'Product brand', 'Kategori Brand', '2021-08-06 09:40:14', '2021-08-06 10:14:14'),
(27025, 'id', 'Category wise product sale', 'Category wise product sale', '2021-08-06 09:40:14', '2021-08-06 09:40:14'),
(27026, 'id', 'Category wise product stock', 'Category wise product stock', '2021-08-06 09:40:14', '2021-08-06 09:40:14'),
(27027, 'id', 'Top 12 Products', '12 Produk Terbaik', '2021-08-06 09:40:14', '2021-08-06 10:14:14'),
(27028, 'id', 'Total published products', 'Total Produk Diterbitkan', '2021-08-06 09:40:14', '2021-08-06 10:14:14'),
(27029, 'id', 'Total sellers products', 'Total penjual produk', '2021-08-06 09:40:14', '2021-08-06 10:14:14'),
(27030, 'id', 'Total admin products', 'Total admin produk', '2021-08-06 09:40:14', '2021-08-06 10:14:14'),
(27031, 'id', 'Total sellers', 'Total penjual', '2021-08-06 09:40:14', '2021-08-06 10:14:14'),
(27032, 'id', 'Total approved sellers', 'Total Penjual yang Disetujui', '2021-08-06 09:40:14', '2021-08-06 10:14:14'),
(27033, 'id', 'Total pending sellers', 'Total Penjual Tertunda', '2021-08-06 09:40:14', '2021-08-06 10:14:15'),
(27034, 'id', 'Number of sale', 'Jumlah Penjualan', '2021-08-06 09:40:14', '2021-08-06 10:14:15'),
(27035, 'id', 'Number of Stock', 'Jumlah Stok', '2021-08-06 09:40:14', '2021-08-06 10:14:15'),
(27036, 'id', 'HTTPS Activation', 'Aktivasi HTTPS', '2021-08-06 09:40:30', '2021-08-06 10:14:15'),
(27037, 'id', 'Maintenance Mode Activation', 'Aktivasi Mode Pemeliharaan', '2021-08-06 09:40:30', '2021-08-06 10:14:15'),
(27038, 'id', 'Disable image optimization?', 'Nonaktifkan optimasi gambar?', '2021-08-06 09:40:30', '2021-08-06 10:14:15'),
(27039, 'id', 'Business Related', 'Hubungan bisnis', '2021-08-06 09:40:30', '2021-08-06 10:14:15'),
(27040, 'id', 'Vendor System Activation', 'Aktivasi Sistem Vendor', '2021-08-06 09:40:30', '2021-08-06 10:14:15'),
(27041, 'id', 'Classified Product', 'Classified Product', '2021-08-06 09:40:30', '2021-08-06 09:40:30'),
(27042, 'id', 'Wallet System Activation', 'Aktivasi Sistem Dompet', '2021-08-06 09:40:30', '2021-08-06 10:14:15'),
(27043, 'id', 'Coupon System Activation', 'Aktivasi Sistem Kupon', '2021-08-06 09:40:30', '2021-08-06 10:14:15'),
(27044, 'id', 'Pickup Point Activation', 'Pickup Point Activation', '2021-08-06 09:40:30', '2021-08-06 09:40:30'),
(27045, 'id', 'Conversation Activation', 'Aktivasi percakapan', '2021-08-06 09:40:30', '2021-08-06 10:14:15'),
(27046, 'id', 'Seller Product Manage By Admin', 'Produk penjual dikelola oleh admin', '2021-08-06 09:40:30', '2021-08-06 10:14:15'),
(27047, 'id', 'After activate this option Cash On Delivery of Seller product will be managed by Admin', 'Setelah mengaktifkan opsi ini, Uang tunai pengiriman produk penjual akan dikelola oleh admin', '2021-08-06 09:40:30', '2021-08-06 10:18:41'),
(27048, 'id', 'Admin Approval On Seller Product', 'Persetujuan admin pada produk penjual', '2021-08-06 09:40:30', '2021-08-06 10:18:41'),
(27049, 'id', 'After activate this option, Admin approval need to seller product', 'Setelah mengaktifkan opsi ini, persetujuan admin perlu produk penjual', '2021-08-06 09:40:30', '2021-08-06 10:18:42'),
(27050, 'id', 'Category-based Commission', 'Komisi Berbasis Kategori', '2021-08-06 09:40:30', '2021-08-06 10:18:42'),
(27051, 'id', 'After activate this option Seller commision will be disabled and You need to set commission on each category otherwise Admin will not get any commision', 'Setelah mengaktifkan opsi ini Komisi Penjual akan dinonaktifkan dan Anda perlu mengatur komisi pada setiap kategori jika tidak admin tidak akan mendapatkan komisi apa pun', '2021-08-06 09:40:30', '2021-08-06 10:18:42'),
(27052, 'id', 'Set Commisssion Now', 'Mengatur komisi sekarang', '2021-08-06 09:40:30', '2021-08-06 10:18:42'),
(27053, 'id', 'Email Verification', 'Verifikasi email', '2021-08-06 09:40:30', '2021-08-06 10:18:42'),
(27054, 'id', 'Payment Related', 'Terkait pembayaran', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27055, 'id', 'Paypal Payment Activation', 'Aktivasi Pembayaran PayPal', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27056, 'id', 'You need to configure Paypal correctly to enable this feature', 'Anda perlu mengkonfigurasi PayPal dengan benar untuk mengaktifkan fitur ini', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27057, 'id', 'Stripe Payment Activation', 'Stripe Pembayaran Aktivasi', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27058, 'id', 'SSlCommerz Activation', 'Aktivasi SSLCommerz', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27059, 'id', 'Instamojo Payment Activation', 'Aktivasi Pembayaran Instamojo', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27060, 'id', 'You need to configure Instamojo Payment correctly to enable this feature', 'Anda perlu mengkonfigurasi pembayaran Instamojo dengan benar untuk mengaktifkan fitur ini', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27061, 'id', 'Razor Pay Activation', 'Razor membayar aktivasi', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27062, 'id', 'You need to configure Razor correctly to enable this feature', 'Anda perlu mengkonfigurasi pisau cukur dengan benar untuk mengaktifkan fitur ini', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27063, 'id', 'PayStack Activation', 'Aktivasi PayStack', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27064, 'id', 'You need to configure PayStack correctly to enable this feature', 'Anda perlu mengkonfigurasi PayStack dengan benar untuk mengaktifkan fitur ini', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27065, 'id', 'VoguePay Activation', 'Aktivasi Voguepay', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27066, 'id', 'You need to configure VoguePay correctly to enable this feature', 'Anda perlu mengkonfigurasi VOGUEPAY dengan benar untuk mengaktifkan fitur ini', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27067, 'id', 'Payhere Activation', 'Aktivasi Payhere', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27068, 'id', 'Ngenius Activation', 'Aktivasi Ngenius', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27069, 'id', 'You need to configure Ngenius correctly to enable this feature', 'Anda perlu mengkonfigurasi Engenius dengan benar untuk mengaktifkan fitur ini', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27070, 'id', 'Iyzico Activation', 'Aktivasi Iyzico', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27071, 'id', 'You need to configure iyzico correctly to enable this feature', 'Anda perlu mengkonfigurasi iyzico dengan benar untuk mengaktifkan fitur ini', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27072, 'id', 'Bkash Activation', 'Aktivasi Bkash', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27073, 'id', 'You need to configure bkash correctly to enable this feature', 'Anda perlu mengkonfigurasi BKASH dengan benar untuk mengaktifkan fitur ini', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27074, 'id', 'Nagad Activation', 'Aktivasi Nagad', '2021-08-06 09:40:31', '2021-08-06 10:18:42'),
(27075, 'id', 'You need to configure nagad correctly to enable this feature', 'Anda perlu mengkonfigurasi Nagad dengan benar untuk mengaktifkan fitur ini', '2021-08-06 09:40:32', '2021-08-06 10:18:42'),
(27076, 'id', 'Proxy Pay Activation', 'Aktivasi Proxy Pay', '2021-08-06 09:40:32', '2021-08-06 10:18:42'),
(27077, 'id', 'You need to configure proxypay correctly to enable this feature', 'Anda perlu mengkonfigurasi proxypay dengan benar untuk mengaktifkan fitur ini', '2021-08-06 09:40:32', '2021-08-06 10:18:42'),
(27078, 'id', 'Amarpay Activation', 'Aktivasi Amarpay', '2021-08-06 09:40:32', '2021-08-06 10:18:43'),
(27079, 'id', 'You need to configure amarpay correctly to enable this feature', 'Anda perlu mengkonfigurasi Amarpay dengan benar untuk mengaktifkan fitur ini', '2021-08-06 09:40:32', '2021-08-06 10:18:43'),
(27080, 'id', 'Cash Payment Activation', 'Aktivasi Pembayaran Tunai', '2021-08-06 09:40:32', '2021-08-06 10:18:43'),
(27081, 'id', 'Social Media Login', 'Social Media Login', '2021-08-06 09:40:32', '2021-08-06 09:40:32'),
(27082, 'id', 'Facebook login', 'Facebook login', '2021-08-06 09:40:32', '2021-08-06 09:40:32'),
(27083, 'id', 'You need to configure Facebook Client correctly to enable this feature', 'Anda perlu mengkonfigurasi klien Facebook dengan benar untuk mengaktifkan fitur ini', '2021-08-06 09:40:32', '2021-08-06 10:18:43'),
(27084, 'id', 'Google login', 'Google login', '2021-08-06 09:40:32', '2021-08-06 09:40:32'),
(27085, 'id', 'You need to configure Google Client correctly to enable this feature', 'Anda perlu mengkonfigurasi klien Google dengan benar untuk mengaktifkan fitur ini', '2021-08-06 09:40:32', '2021-08-06 10:18:43'),
(27086, 'id', 'Twitter login', 'Twitter login', '2021-08-06 09:40:32', '2021-08-06 09:40:32'),
(27087, 'id', 'You need to configure Twitter Client correctly to enable this feature', 'Anda perlu mengkonfigurasi klien Twitter dengan benar untuk mengaktifkan fitur ini', '2021-08-06 09:40:32', '2021-08-06 10:18:43'),
(27088, 'id', 'Paypal Credential', 'Paypal Credential', '2021-08-06 09:41:15', '2021-08-06 09:41:15'),
(27089, 'id', 'Paypal Client Id', 'Paypal Client Id', '2021-08-06 09:41:15', '2021-08-06 09:41:15'),
(27090, 'id', 'Paypal Client Secret', 'Paypal Client Secret', '2021-08-06 09:41:15', '2021-08-06 09:41:15'),
(27091, 'id', 'Paypal Sandbox Mode', 'Paypal Sandbox Mode', '2021-08-06 09:41:15', '2021-08-06 09:41:15'),
(27092, 'id', 'Stripe Credential', 'Stripe Credential', '2021-08-06 09:41:15', '2021-08-06 09:41:15'),
(27093, 'id', 'Stripe Key', 'Stripe Key', '2021-08-06 09:41:15', '2021-08-06 09:41:15'),
(27094, 'id', 'Stripe Secret', 'Stripe Secret', '2021-08-06 09:41:15', '2021-08-06 09:41:15'),
(27095, 'id', 'Bkash Credential', 'Bkash Credential', '2021-08-06 09:41:15', '2021-08-06 09:41:15'),
(27096, 'id', 'BKASH CHECKOUT APP KEY', 'BKASH CHECKOUT APP KEY', '2021-08-06 09:41:15', '2021-08-06 09:41:15'),
(27097, 'id', 'BKASH CHECKOUT APP SECRET', 'BKASH CHECKOUT APP SECRET', '2021-08-06 09:41:15', '2021-08-06 09:41:15'),
(27098, 'id', 'BKASH CHECKOUT USER NAME', 'BKASH CHECKOUT USER NAME', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27099, 'id', 'BKASH CHECKOUT PASSWORD', 'BKASH CHECKOUT PASSWORD', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27100, 'id', 'Bkash Sandbox Mode', 'Bkash Sandbox Mode', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27101, 'id', 'Nagad Credential', 'Nagad Credential', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27102, 'id', 'NAGAD MODE', 'NAGAD MODE', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27103, 'id', 'NAGAD MERCHANT ID', 'NAGAD MERCHANT ID', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27104, 'id', 'NAGAD MERCHANT NUMBER', 'NAGAD MERCHANT NUMBER', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27105, 'id', 'NAGAD PG PUBLIC KEY', 'NAGAD PG PUBLIC KEY', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27106, 'id', 'NAGAD MERCHANT PRIVATE KEY', 'NAGAD MERCHANT PRIVATE KEY', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27107, 'id', 'Sslcommerz Credential', 'Sslcommerz Credential', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27108, 'id', 'Sslcz Store Id', 'Sslcz Store Id', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27109, 'id', 'Sslcz store password', 'Sslcz store password', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27110, 'id', 'Sslcommerz Sandbox Mode', 'Sslcommerz Sandbox Mode', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27111, 'id', 'Aamarpay Credential', 'Aamarpay Credential', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27112, 'id', 'Aamarpay Store Id', 'Aamarpay Store Id', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27113, 'id', 'Aamarpay signature key', 'Aamarpay signature key', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27114, 'id', 'Aamarpay Sandbox Mode', 'Aamarpay Sandbox Mode', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27115, 'id', 'Iyzico Credential', 'Iyzico Credential', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27116, 'id', 'IYZICO_API_KEY', 'IYZICO_API_KEY', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27117, 'id', 'IYZICO API KEY', 'IYZICO API KEY', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27118, 'id', 'IYZICO_SECRET_KEY', 'IYZICO_SECRET_KEY', '2021-08-06 09:41:16', '2021-08-06 09:41:16'),
(27119, 'id', 'IYZICO SECRET KEY', 'IYZICO SECRET KEY', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27120, 'id', 'IYZICO Sandbox Mode', 'IYZICO Sandbox Mode', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27121, 'id', 'Instamojo Credential', 'Instamojo Credential', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27122, 'id', 'API KEY', 'API KEY', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27123, 'id', 'IM API KEY', 'IM API KEY', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27124, 'id', 'AUTH TOKEN', 'AUTH TOKEN', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27125, 'id', 'IM AUTH TOKEN', 'IM AUTH TOKEN', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27126, 'id', 'Instamojo Sandbox Mode', 'Instamojo Sandbox Mode', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27127, 'id', 'PayStack Credential', 'PayStack Credential', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27128, 'id', 'PUBLIC KEY', 'PUBLIC KEY', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27129, 'id', 'SECRET KEY', 'SECRET KEY', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27130, 'id', 'MERCHANT EMAIL', 'MERCHANT EMAIL', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27131, 'id', 'PAYSTACK CURRENCY CODE', 'PAYSTACK CURRENCY CODE', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27132, 'id', 'Payhere Credential', 'Payhere Credential', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27133, 'id', 'PAYHERE MERCHANT ID', 'PAYHERE MERCHANT ID', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27134, 'id', 'PAYHERE SECRET', 'PAYHERE SECRET', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27135, 'id', 'PAYHERE CURRENCY', 'PAYHERE CURRENCY', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27136, 'id', 'Payhere Sandbox Mode', 'Payhere Sandbox Mode', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27137, 'id', 'Ngenius Credential', 'Ngenius Credential', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27138, 'id', 'NGENIUS OUTLET ID', 'NGENIUS OUTLET ID', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27139, 'id', 'NGENIUS API KEY', 'NGENIUS API KEY', '2021-08-06 09:41:17', '2021-08-06 09:41:17'),
(27140, 'id', 'NGENIUS CURRENCY', 'NGENIUS CURRENCY', '2021-08-06 09:41:18', '2021-08-06 09:41:18'),
(27141, 'id', 'ProxyPay Credential', 'ProxyPay Credential', '2021-08-06 09:41:18', '2021-08-06 09:41:18'),
(27142, 'id', 'PROXYPAY_TOKEN', 'PROXYPAY_TOKEN', '2021-08-06 09:41:18', '2021-08-06 09:41:18'),
(27143, 'id', 'PROXYPAY TOKEN', 'PROXYPAY TOKEN', '2021-08-06 09:41:18', '2021-08-06 09:41:18'),
(27144, 'id', 'PROXYPAY_ENTITY', 'PROXYPAY_ENTITY', '2021-08-06 09:41:18', '2021-08-06 09:41:18'),
(27145, 'id', 'PROXYPAY_END_TIME', 'PROXYPAY_END_TIME', '2021-08-06 09:41:18', '2021-08-06 09:41:18'),
(27146, 'id', 'Days', 'Hari', '2021-08-06 09:41:18', '2021-08-06 10:19:09'),
(27147, 'id', 'Sandbox Mode', 'Sandbox Mode', '2021-08-06 09:41:18', '2021-08-06 09:41:18'),
(27148, 'id', 'VoguePay Credential', 'VoguePay Credential', '2021-08-06 09:41:18', '2021-08-06 09:41:18'),
(27149, 'id', 'MERCHANT ID', 'MERCHANT ID', '2021-08-06 09:41:18', '2021-08-06 09:41:18'),
(27150, 'id', 'RazorPay Credential', 'RazorPay Credential', '2021-08-06 09:41:18', '2021-08-06 09:41:18'),
(27151, 'id', 'RAZOR KEY', 'RAZOR KEY', '2021-08-06 09:41:18', '2021-08-06 09:41:18'),
(27152, 'id', 'RAZOR SECRET', 'RAZOR SECRET', '2021-08-06 09:41:18', '2021-08-06 09:41:18'),
(27153, 'id', 'All Taxes', 'Semua pajak', '2021-08-06 09:41:28', '2021-08-06 10:23:11'),
(27154, 'id', 'Add New Tax', 'Tambahkan Pajak Baru', '2021-08-06 09:41:28', '2021-08-06 10:23:11'),
(27155, 'id', 'Tax Type', 'Tipe Pajak', '2021-08-06 09:41:28', '2021-08-06 10:23:11'),
(27156, 'id', 'Tax Name', 'Nama Pajak', '2021-08-06 09:41:28', '2021-08-06 10:23:11'),
(27157, 'id', 'Close', 'Tutup', '2021-08-06 09:41:28', '2021-08-06 10:23:11'),
(27158, 'id', 'Tax status updated successfully', 'Status Pajak diperbarui dengan sukses', '2021-08-06 09:41:28', '2021-08-06 10:23:11'),
(27159, 'id', 'Tax Information', 'Informasi pajak', '2021-08-06 09:41:34', '2021-08-06 10:23:11'),
(27160, 'id', 'update Tax Info', 'Perbarui info pajak', '2021-08-06 09:41:34', '2021-08-06 10:23:11'),
(27161, 'id', 'Tax has been updated successfully', 'Pajak telah berhasil diperbarui', '2021-08-06 09:41:42', '2021-08-06 10:23:11'),
(27162, 'id', 'Best Selling', 'Penjualan Terbaik', '2021-08-06 09:43:04', '2021-08-06 10:50:46'),
(27163, 'id', 'Website Header', 'Website Header', '2021-08-06 09:43:17', '2021-08-06 09:43:17'),
(27164, 'id', 'Header Setting', 'Header Setting', '2021-08-06 09:43:17', '2021-08-06 09:43:17'),
(27165, 'id', 'Header Logo', 'Header Logo', '2021-08-06 09:43:17', '2021-08-06 09:43:17'),
(27166, 'id', 'Show Language Switcher?', 'Tampilkan Bahasa Switcher?', '2021-08-06 09:43:17', '2021-08-06 10:23:11'),
(27167, 'id', 'Show Currency Switcher?', 'Tampilkan Mata Uang Switcher?', '2021-08-06 09:43:17', '2021-08-06 10:23:11'),
(27168, 'id', 'Enable stikcy header?', 'Enable stikcy header?', '2021-08-06 09:43:17', '2021-08-06 09:43:17'),
(27169, 'id', 'Topbar Banner', 'Topbar Banner', '2021-08-06 09:43:17', '2021-08-06 09:43:17'),
(27170, 'id', 'Topbar Banner Link', 'Topbar Banner Link', '2021-08-06 09:43:18', '2021-08-06 09:43:18'),
(27171, 'id', 'Link with', 'Link with', '2021-08-06 09:43:18', '2021-08-06 09:43:18'),
(27172, 'id', 'or', 'or', '2021-08-06 09:43:18', '2021-08-06 09:43:18'),
(27173, 'id', 'Header Nav Menu', 'Header Nav Menu', '2021-08-06 09:43:18', '2021-08-06 09:43:18'),
(27174, 'id', 'Label', 'Label', '2021-08-06 09:43:18', '2021-08-06 09:43:18'),
(27175, 'id', 'Add New', 'Tambah baru', '2021-08-06 09:43:18', '2021-08-06 10:23:11'),
(27176, 'id', 'Semua Brands', 'Semua Brand', '2021-08-06 09:44:31', '2021-08-06 10:23:11'),
(27177, 'id', 'Semua Kategori', 'Semua Kategori', '2021-08-06 09:44:31', '2021-08-06 09:44:31'),
(27178, 'id', 'Website Footer', 'Website Footer', '2021-08-06 09:44:50', '2021-08-06 09:44:50'),
(27179, 'id', 'Footer Widget', 'Footer Widget', '2021-08-06 09:44:50', '2021-08-06 09:44:50'),
(27180, 'id', 'About Widget', 'About Widget', '2021-08-06 09:44:50', '2021-08-06 09:44:50'),
(27181, 'id', 'Footer Logo', 'Footer Logo', '2021-08-06 09:44:50', '2021-08-06 09:44:50'),
(27182, 'id', 'About description', 'Tentang Deskripsi', '2021-08-06 09:44:50', '2021-08-06 10:23:11'),
(27183, 'id', 'Translatable', 'Translatable', '2021-08-06 09:44:50', '2021-08-06 09:44:50'),
(27184, 'id', 'Play Store Link', 'Play Store Link', '2021-08-06 09:44:50', '2021-08-06 09:44:50'),
(27185, 'id', 'App Store Link', 'App Store Link', '2021-08-06 09:44:50', '2021-08-06 09:44:50'),
(27186, 'id', 'Contact Info Widget', 'Contact Info Widget', '2021-08-06 09:44:50', '2021-08-06 09:44:50'),
(27187, 'id', 'Contact address', 'Kontak Alamat', '2021-08-06 09:44:50', '2021-08-06 10:23:12'),
(27188, 'id', 'Contact phone', 'Hubungi Telepon', '2021-08-06 09:44:50', '2021-08-06 10:23:12'),
(27189, 'id', 'Contact email', 'Kontak Email', '2021-08-06 09:44:50', '2021-08-06 10:23:12'),
(27190, 'id', 'Link Widget One', 'Link Widget One', '2021-08-06 09:44:50', '2021-08-06 09:44:50'),
(27191, 'id', 'Title', 'Judul', '2021-08-06 09:44:50', '2021-08-06 10:23:12'),
(27192, 'id', 'Links', 'Links', '2021-08-06 09:44:50', '2021-08-06 09:44:50'),
(27193, 'id', 'Footer Bottom', 'Footer Bottom', '2021-08-06 09:44:50', '2021-08-06 09:44:50'),
(27194, 'id', 'Copyright Widget ', 'Copyright Widget', '2021-08-06 09:44:51', '2021-08-06 10:23:12'),
(27195, 'id', 'Copyright Text', 'Copyright Text', '2021-08-06 09:44:51', '2021-08-06 09:44:51'),
(27196, 'id', 'Social Link Widget ', 'Social Link Widget', '2021-08-06 09:44:51', '2021-08-06 10:23:12'),
(27197, 'id', 'Show Social Links?', 'Show Social Links?', '2021-08-06 09:44:51', '2021-08-06 09:44:51'),
(27198, 'id', 'Social Links', 'Social Links', '2021-08-06 09:44:51', '2021-08-06 09:44:51'),
(27199, 'id', 'Payment Methods Widget ', 'Widget Metode Pembayaran', '2021-08-06 09:44:51', '2021-08-06 10:37:52'),
(27200, 'id', 'Website Pages', 'Halaman Situs Web', '2021-08-06 09:48:27', '2021-08-06 10:25:20'),
(27201, 'id', 'All Pages', 'Semua halaman', '2021-08-06 09:48:27', '2021-08-06 10:25:20'),
(27202, 'id', 'Add New Page', 'Tambahkan Halaman Baru', '2021-08-06 09:48:27', '2021-08-06 10:25:20'),
(27203, 'id', 'URL', 'URL', '2021-08-06 09:48:27', '2021-08-06 09:48:27'),
(27204, 'id', 'Actions', 'Actions', '2021-08-06 09:48:27', '2021-08-06 09:48:27'),
(27205, 'id', 'Home Page', 'Home Page', '2021-08-06 09:48:27', '2021-08-06 09:48:27'),
(27206, 'id', 'Home Page Settings', 'Home Page Settings', '2021-08-06 09:48:35', '2021-08-06 09:48:35'),
(27207, 'id', 'Home Slider', 'Home Slider', '2021-08-06 09:48:35', '2021-08-06 09:48:35'),
(27208, 'id', 'We have limited banner height to maintain UI. We had to crop from both left & right side in view for different devices to make it responsive. Before designing banner keep these points in mind.', 'Kami memiliki tinggi spanduk terbatas untuk mempertahankan UI.', '2021-08-06 09:48:35', '2021-08-06 10:25:20'),
(27209, 'id', 'Photos & Links', 'Photos & Links', '2021-08-06 09:48:35', '2021-08-06 09:48:35'),
(27210, 'id', 'Home Banner 1 (Max 3)', 'Home Banner 1 (Max 3)', '2021-08-06 09:48:36', '2021-08-06 09:48:36'),
(27211, 'id', 'Banner & Links', 'Banner & Links', '2021-08-06 09:48:36', '2021-08-06 09:48:36'),
(27212, 'id', 'Home Banner 2 (Max 3)', 'Home Banner 2 (Max 3)', '2021-08-06 09:48:36', '2021-08-06 09:48:36'),
(27213, 'id', 'Home Categories', 'Home Categories', '2021-08-06 09:48:36', '2021-08-06 09:48:36'),
(27214, 'id', 'Home Banner 3 (Max 3)', 'Home Banner 3 (Max 3)', '2021-08-06 09:48:36', '2021-08-06 09:48:36'),
(27215, 'id', 'Top 10', 'Top 10', '2021-08-06 09:48:36', '2021-08-06 09:48:36'),
(27216, 'id', 'Top Categories (Max 10)', 'Top Categories (Max 10)', '2021-08-06 09:48:36', '2021-08-06 09:48:36'),
(27217, 'id', 'Top Brands (Max 10)', 'Top Brands (Max 10)', '2021-08-06 09:48:36', '2021-08-06 09:48:36'),
(27218, 'id', 'Top 20', '20 Teratas', '2021-08-06 09:48:49', '2021-08-06 10:50:02'),
(27219, 'id', 'General', 'General', '2021-08-06 09:52:19', '2021-08-06 09:52:19'),
(27220, 'id', 'Frontend Website Name', 'Frontend Website Name', '2021-08-06 09:52:19', '2021-08-06 09:52:19'),
(27221, 'id', 'Website Name', 'Website Name', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27222, 'id', 'Site Motto', 'Site Motto', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27223, 'id', 'Best eCommerce Website', 'Situs Web E-commerce Terbaik', '2021-08-06 09:52:20', '2021-08-06 10:25:20'),
(27224, 'id', 'Site Icon', 'Site Icon', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27225, 'id', 'Website favicon. 32x32 .png', 'Website favicon. 32x32 .png', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27226, 'id', 'Website Base Color', 'Website Base Color', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27227, 'id', 'Hex Color Code', 'Hex Color Code', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27228, 'id', 'Website Base Hover Color', 'Website Base Hover Color', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27229, 'id', 'Global SEO', 'Global SEO', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27230, 'id', 'Meta Title', 'Meta Title', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27231, 'id', 'Meta description', 'Meta description', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27232, 'id', 'Description', 'Description', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27233, 'id', 'Keywords', 'Keywords', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27234, 'id', 'Keyword, Keyword', 'Keyword, Keyword', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27235, 'id', 'Separate with coma', 'Separate with coma', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27236, 'id', 'Meta Image', 'Meta Image', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27237, 'id', 'Cookies Agreement', 'Cookies Agreement', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27238, 'id', 'Cookies Agreement Text', 'Cookies Agreement Text', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27239, 'id', 'Show Cookies Agreement?', 'Show Cookies Agreement?', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27240, 'id', 'Website Popup', 'Website Popup', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27241, 'id', 'Show website popup?', 'Show website popup?', '2021-08-06 09:52:20', '2021-08-06 09:52:20'),
(27242, 'id', 'Popup content', 'Popup content', '2021-08-06 09:52:21', '2021-08-06 09:52:21'),
(27243, 'id', 'Show Subscriber form?', 'Show Subscriber form?', '2021-08-06 09:52:21', '2021-08-06 09:52:21'),
(27244, 'id', 'Custom Script', 'Custom Script', '2021-08-06 09:52:21', '2021-08-06 09:52:21'),
(27245, 'id', 'Header custom script - before </head>', 'Header custom script - before </head>', '2021-08-06 09:52:21', '2021-08-06 09:52:21'),
(27246, 'id', 'Write script with <script> tag', 'Write script with <script> tag', '2021-08-06 09:52:21', '2021-08-06 09:52:21'),
(27247, 'id', 'Footer custom script - before </body>', 'Footer custom script - before </body>', '2021-08-06 09:52:21', '2021-08-06 09:52:21'),
(27248, 'en', 'Semua Brands', 'Semua Brands', '2021-08-06 09:57:30', '2021-08-06 09:57:30'),
(27249, 'en', 'Semua Kategori', 'Semua Kategori', '2021-08-06 09:57:30', '2021-08-06 09:57:30'),
(27250, 'id', 'Best Sellers', 'Penjual Terbaik', '2021-08-06 10:02:22', '2021-08-06 10:48:19'),
(27251, 'id', 'Forgot password?', 'Tidak ingat kata sandi?', '2021-08-06 10:25:48', '2021-08-06 10:28:14'),
(27252, 'id', 'Dont have an account?', 'Tidak punya akun? Daftar sekarang', '2021-08-06 10:25:48', '2021-08-06 10:26:42'),
(27253, 'id', 'Register Now', 'Daftar Sekarang', '2021-08-06 10:25:48', '2021-08-06 10:27:03'),
(27254, 'id', 'Create an account.', 'Buat sebuah akun', '2021-08-06 10:29:27', '2021-08-06 10:29:55'),
(27255, 'id', 'Full Name', 'Full Name', '2021-08-06 10:29:27', '2021-08-06 10:29:27'),
(27256, 'id', 'Confirm Password', 'Confirm Password', '2021-08-06 10:29:27', '2021-08-06 10:29:27'),
(27257, 'id', 'By signing up you agree to our terms and conditions.', 'Dengan mendaftar Anda menyetujui syarat dan ketentuan kami', '2021-08-06 10:29:27', '2021-08-06 10:30:34'),
(27258, 'id', 'Create Account', 'Buat Akun', '2021-08-06 10:29:28', '2021-08-06 10:31:07'),
(27259, 'id', 'Already have an account?', 'Sudah memiliki akun?', '2021-08-06 10:29:28', '2021-08-06 10:31:28'),
(27260, 'id', 'Log In', 'Log In', '2021-08-06 10:29:28', '2021-08-06 10:29:28'),
(27261, 'id', 'Use Phone Instead', 'Gunakan telepon sebagai gantinya', '2021-08-06 10:29:28', '2021-08-06 10:34:48'),
(27262, 'id', 'Use Email Instead', 'Gunakan email sebagai gantinya', '2021-08-06 10:29:28', '2021-08-06 10:34:48'),
(27263, 'id', 'Product', 'Product', '2021-08-06 10:32:28', '2021-08-06 10:32:28'),
(27264, 'id', 'in your cart', 'di troli Anda', '2021-08-06 10:32:28', '2021-08-06 10:34:48'),
(27265, 'id', 'Product(s)', 'Product(s)', '2021-08-06 10:32:28', '2021-08-06 10:32:28'),
(27266, 'id', 'in your wishlist', 'di wishlist anda', '2021-08-06 10:32:28', '2021-08-06 10:34:48'),
(27267, 'id', 'you ordered', 'Anda memesan', '2021-08-06 10:32:28', '2021-08-06 10:34:48'),
(27268, 'id', 'Default Shipping Address', 'Alamat pengiriman default', '2021-08-06 10:32:28', '2021-08-06 10:34:48'),
(27269, 'id', 'Purchase History', 'Daftar Transaksi', '2021-08-06 10:32:28', '2021-08-06 10:34:48'),
(27270, 'id', 'Downloads', 'Downloads', '2021-08-06 10:32:28', '2021-08-06 10:32:28'),
(27271, 'id', 'Conversations', 'Percakapan Chat', '2021-08-06 10:32:28', '2021-08-06 10:34:48'),
(27272, 'id', 'Support Ticket', 'Support Ticket', '2021-08-06 10:32:28', '2021-08-06 10:32:28'),
(27273, 'id', 'Manage Profile', 'Kelola profil', '2021-08-06 10:32:29', '2021-08-06 10:34:48'),
(27274, 'id', 'Item has been added to wishlist', 'Barang telah ditambahkan ke Wishlist', '2021-08-06 10:32:30', '2021-08-06 10:34:48'),
(27275, 'id', 'There isn\'t anything added yet', 'Belum ada yang ditambahkan', '2021-08-06 10:35:07', '2021-08-06 10:35:31'),
(27276, 'id', 'Item has been renoved from wishlist', 'Item telah dihapus dari Wishlist', '2021-08-06 10:35:07', '2021-08-06 10:54:46'),
(27277, 'id', 'Total sale', 'Total penjualan', '2021-08-06 10:36:17', '2021-08-06 10:42:20'),
(27278, 'id', 'Total earnings', 'Penghasilan total', '2021-08-06 10:36:17', '2021-08-06 10:42:04'),
(27279, 'id', 'Successful orders', 'Pesanan yang berhasil', '2021-08-06 10:36:17', '2021-08-06 10:41:51'),
(27280, 'id', 'Orders', 'Orders', '2021-08-06 10:36:17', '2021-08-06 10:36:17'),
(27281, 'id', 'Total orders', 'Total orders', '2021-08-06 10:36:17', '2021-08-06 10:36:17'),
(27282, 'id', 'Pending orders', 'Pesanan yang tertunda', '2021-08-06 10:36:17', '2021-08-06 10:52:35'),
(27283, 'id', 'Cancelled orders', 'Pesanan yang dibatalkan', '2021-08-06 10:36:17', '2021-08-06 10:52:19'),
(27284, 'id', 'Shop', 'Toko', '2021-08-06 10:36:17', '2021-08-06 10:38:34'),
(27285, 'id', 'Manage & organize your shop', 'Kelola & Atur Toko Anda', '2021-08-06 10:36:17', '2021-08-06 10:38:10'),
(27286, 'id', 'Go to setting', 'Go to setting', '2021-08-06 10:36:17', '2021-08-06 10:36:17'),
(27287, 'id', 'Payment', 'Pembayaran', '2021-08-06 10:36:17', '2021-08-06 10:37:52'),
(27288, 'id', 'Configure your payment method', 'Konfigurasikan metode pembayaran Anda', '2021-08-06 10:36:17', '2021-08-06 10:37:13'),
(27289, 'id', 'Product Bulk Upload', 'Product Bulk Upload', '2021-08-06 10:36:18', '2021-08-06 10:36:18'),
(27290, 'id', 'Shop Setting', 'Pengaturan Toko', '2021-08-06 10:36:18', '2021-08-06 10:38:34'),
(27291, 'id', 'Payment History', 'History Pembayaran', '2021-08-06 10:36:18', '2021-08-06 10:45:28'),
(27292, 'id', 'Money Withdraw', 'Penarikan uang', '2021-08-06 10:36:18', '2021-08-06 10:45:07'),
(27293, 'id', 'Sold Amount', 'Jumlah terjual', '2021-08-06 10:36:18', '2021-08-06 10:39:00');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(27294, 'id', 'Your sold amount (current month)', 'Jumlah terjual Anda (bulan ini)', '2021-08-06 10:36:18', '2021-08-06 10:39:00'),
(27295, 'id', 'Total Sold', 'Total dijual', '2021-08-06 10:36:18', '2021-08-06 10:39:17'),
(27296, 'id', 'Last Month Sold', 'Penjualan Bulan Lalu', '2021-08-06 10:36:18', '2021-08-06 10:39:54'),
(27297, 'id', 'Bulk Products Upload', 'Bulk Products Upload', '2021-08-06 10:43:03', '2021-08-06 10:43:03'),
(27298, 'id', '1. Download the skeleton file and fill it with data.', '1', '2021-08-06 10:43:04', '2021-08-15 08:43:41'),
(27299, 'id', '2. You can download the example file to understand how the data must be filled.', '2. You can download the example file to understand how the data must be filled.', '2021-08-06 10:43:04', '2021-08-06 10:43:04'),
(27300, 'id', '3. Once you have downloaded and filled the skeleton file, upload it in the form below and submit.', '3. Once you have downloaded and filled the skeleton file, upload it in the form below and submit.', '2021-08-06 10:43:04', '2021-08-06 10:43:04'),
(27301, 'id', '4. After uploading products you need to edit them and set products images and choices.', '4. After uploading products you need to edit them and set products images and choices.', '2021-08-06 10:43:04', '2021-08-06 10:43:04'),
(27302, 'id', 'Download CSV', 'Download CSV', '2021-08-06 10:43:04', '2021-08-06 10:43:04'),
(27303, 'id', '1. Category and Brand should be in numerical id.', '1. Category and Brand should be in numerical id.', '2021-08-06 10:43:04', '2021-08-06 10:43:04'),
(27304, 'id', '2. You can download the pdf to get Category and Brand id.', '2. You can download the pdf to get Category and Brand id.', '2021-08-06 10:43:04', '2021-08-06 10:43:04'),
(27305, 'id', 'Download Category', 'Download Kategori', '2021-08-06 10:43:04', '2021-08-06 10:43:55'),
(27306, 'id', 'Download Brand', 'Download Brand', '2021-08-06 10:43:04', '2021-08-06 10:43:04'),
(27307, 'id', 'Upload CSV File', 'Upload CSV File', '2021-08-06 10:43:04', '2021-08-06 10:43:04'),
(27308, 'id', 'CSV', 'CSV', '2021-08-06 10:43:04', '2021-08-06 10:43:04'),
(27309, 'id', 'Upload CSV', 'Upload CSV', '2021-08-06 10:43:04', '2021-08-06 10:43:04'),
(27310, 'id', 'Download Your Product', 'Download Your Product', '2021-08-06 10:45:46', '2021-08-06 10:45:46'),
(27311, 'id', 'Option', 'Pilihan', '2021-08-06 10:45:46', '2021-08-07 04:38:43'),
(27312, 'id', 'View All Sellers', 'Lihat semua penjual', '2021-08-06 10:51:20', '2021-08-06 10:54:15'),
(27313, 'id', 'Countries', 'Negara', '2021-08-06 11:01:56', '2021-08-07 04:38:43'),
(27314, 'id', 'Show/Hide', 'Show/Hide', '2021-08-06 11:01:56', '2021-08-06 11:01:56'),
(27315, 'id', 'Country status updated successfully', 'Status negara berhasil diperbarui', '2021-08-06 11:01:56', '2021-08-07 04:38:43'),
(27316, 'id', 'All cities', 'Semua Kota', '2021-08-06 11:05:13', '2021-08-07 04:38:43'),
(27317, 'id', 'Cities', 'Kota', '2021-08-06 11:05:13', '2021-08-07 04:38:43'),
(27318, 'id', 'Country', 'Negara', '2021-08-06 11:05:13', '2021-08-07 04:38:43'),
(27319, 'id', 'Cost', 'Biaya', '2021-08-06 11:05:13', '2021-08-07 04:38:43'),
(27320, 'id', 'Add New city', 'Tambahkan Kota Baru', '2021-08-06 11:05:13', '2021-08-07 04:38:43'),
(27321, 'id', 'Visit Store', 'Lihat Toko', '2021-08-06 11:14:15', '2021-08-07 04:38:43'),
(27322, 'id', 'Brands', 'Brands', '2021-08-06 11:29:11', '2021-08-06 11:29:11'),
(27323, 'id', 'Logo', 'Logo', '2021-08-06 11:29:11', '2021-08-06 11:29:11'),
(27324, 'id', 'Add New Brand', 'Tambahkan Brand baru', '2021-08-06 11:29:11', '2021-08-07 04:38:43'),
(27325, 'id', '120x80', '120x80', '2021-08-06 11:29:11', '2021-08-06 11:29:11'),
(27326, 'id', 'Brand has been deleted successfully', 'Brand telah berhasil dihapus', '2021-08-06 11:29:25', '2021-08-07 04:38:43'),
(27327, 'id', 'All uploaded files', 'Semua uploaded files', '2021-08-06 11:35:48', '2021-08-07 04:38:43'),
(27328, 'id', 'Upload New File', 'Upload File Baru', '2021-08-06 11:35:48', '2021-08-07 04:38:43'),
(27329, 'id', 'All files', 'Semua File', '2021-08-06 11:35:48', '2021-08-07 04:38:43'),
(27330, 'id', 'Search', 'Pencarian', '2021-08-06 11:35:48', '2021-08-07 04:38:43'),
(27331, 'id', 'Details Info', 'Info detail', '2021-08-06 11:35:48', '2021-08-07 04:38:43'),
(27332, 'id', 'Download', 'Download', '2021-08-06 11:35:48', '2021-08-06 11:35:48'),
(27333, 'id', 'Copy Link', 'Copy Link', '2021-08-06 11:35:48', '2021-08-06 11:35:48'),
(27334, 'id', 'Are you sure to delete this file?', 'Apakah Anda yakin untuk menghapus file ini?', '2021-08-06 11:35:50', '2021-08-07 04:38:43'),
(27335, 'id', 'File Info', 'Info File', '2021-08-06 11:35:50', '2021-08-07 04:38:43'),
(27336, 'id', 'Link copied to clipboard', 'Link copied to clipboard', '2021-08-06 11:35:50', '2021-08-06 11:35:50'),
(27337, 'id', 'Oops, unable to copy', 'Ups, tidak dapat menyalin', '2021-08-06 11:35:50', '2021-08-07 04:40:41'),
(27338, 'id', 'Back to uploaded files', 'Kembali ke file yang diupload', '2021-08-06 11:37:49', '2021-08-07 04:40:41'),
(27339, 'id', 'Drag & drop your files', 'Drag & drop file kamu', '2021-08-06 11:37:49', '2021-08-07 04:40:41'),
(27340, 'id', 'Add New category', 'Tambahkan kategori baru', '2021-08-06 12:34:39', '2021-08-07 04:40:41'),
(27341, 'id', 'Parent Category', 'Kategori Induk', '2021-08-06 12:34:39', '2021-08-07 04:40:41'),
(27342, 'id', 'Order Level', 'Tingkat Pesanan', '2021-08-06 12:34:39', '2021-08-15 08:08:15'),
(27343, 'id', 'Level', 'Level', '2021-08-06 12:34:39', '2021-08-06 12:34:39'),
(27344, 'id', 'Banner', 'Banner', '2021-08-06 12:34:39', '2021-08-06 12:34:39'),
(27345, 'id', 'Icon', 'Icon', '2021-08-06 12:34:39', '2021-08-06 12:34:39'),
(27346, 'id', 'Featured', 'Featured', '2021-08-06 12:34:39', '2021-08-06 12:34:39'),
(27347, 'id', 'Commission', 'Komisi', '2021-08-06 12:34:39', '2021-08-07 04:40:41'),
(27348, 'id', 'Featured categories updated successfully', 'Kategori unggulan berhasil diperbarui', '2021-08-06 12:34:40', '2021-08-15 08:08:15'),
(27349, 'id', 'Category Information', 'Informasi kategori', '2021-08-06 12:35:12', '2021-08-07 04:45:58'),
(27350, 'id', 'No Parent', 'No Parent', '2021-08-06 12:35:12', '2021-08-06 12:35:12'),
(27351, 'id', 'Ordering Number', 'Nomor pemesanan', '2021-08-06 12:35:12', '2021-08-07 04:45:58'),
(27352, 'id', 'Higher number has high priority', 'Jumlah yang lebih tinggi memiliki prioritas tinggi', '2021-08-06 12:35:12', '2021-08-07 04:45:58'),
(27353, 'id', 'Type', 'Tipe', '2021-08-06 12:35:12', '2021-08-15 08:08:57'),
(27354, 'id', 'Physical', 'Fisik', '2021-08-06 12:35:13', '2021-08-07 04:45:58'),
(27355, 'id', 'Digital', 'Digital', '2021-08-06 12:35:13', '2021-08-06 12:35:13'),
(27356, 'id', '200x200', '200x200', '2021-08-06 12:35:13', '2021-08-06 12:35:13'),
(27357, 'id', '32x32', '32x32', '2021-08-06 12:35:13', '2021-08-06 12:35:13'),
(27358, 'id', 'Server information', 'Informasi Server', '2021-08-06 12:37:49', '2021-08-07 04:45:58'),
(27359, 'id', 'Current Version', 'Versi sekarang', '2021-08-06 12:37:49', '2021-08-07 04:45:58'),
(27360, 'id', 'Required Version', 'Versi yang diperlukan', '2021-08-06 12:37:50', '2021-08-07 04:45:58'),
(27361, 'id', 'php.ini Config', 'php.ini Config', '2021-08-06 12:37:50', '2021-08-06 12:37:50'),
(27362, 'id', 'Config Name', 'Config Name', '2021-08-06 12:37:50', '2021-08-06 12:37:50'),
(27363, 'id', 'Current', 'Saat ini', '2021-08-06 12:37:50', '2021-08-07 04:45:58'),
(27364, 'id', 'Recommended', 'Recommended', '2021-08-06 12:37:50', '2021-08-06 12:37:50'),
(27365, 'id', 'Extensions information', 'Informasi Ekstensi', '2021-08-06 12:37:50', '2021-08-07 04:45:58'),
(27366, 'id', 'Extension Name', 'Nama ekstensi', '2021-08-06 12:37:50', '2021-08-07 04:45:58'),
(27367, 'id', 'Filesystem Permissions', 'Filesystem Permissions', '2021-08-06 12:37:50', '2021-08-06 12:37:50'),
(27368, 'id', 'File or Folder', 'File or Folder', '2021-08-06 12:37:50', '2021-08-06 12:37:50'),
(27369, 'id', 'Slug', 'Slug', '2021-08-06 12:52:46', '2021-08-06 12:52:46'),
(27370, 'id', 'Category has been inserted successfully', 'Kategori telah berhasil disisipkan', '2021-08-07 00:20:23', '2021-08-07 04:45:58'),
(27371, 'id', 'Category has been updated successfully', 'Kategori telah berhasil diperbarui', '2021-08-07 00:25:16', '2021-08-07 04:45:58'),
(27372, 'id', 'All Colors', 'Semua Warna', '2021-08-07 01:56:40', '2021-08-07 04:45:59'),
(27373, 'id', 'Type color name & Enter', 'Type nama warna & Enter', '2021-08-07 01:56:40', '2021-08-07 04:45:59'),
(27374, 'id', 'Add New Color', 'Tambahkan warna baru', '2021-08-07 01:56:40', '2021-08-07 04:45:59'),
(27375, 'id', 'Color Code', 'Kode Warna', '2021-08-07 01:56:40', '2021-08-07 04:45:59'),
(27376, 'id', 'Select Shipping Method', 'Pilih metode pengiriman', '2021-08-07 02:00:19', '2021-08-07 04:45:59'),
(27377, 'id', 'Product Wise Shipping Cost', 'Biaya Pengiriman Standart Produk', '2021-08-07 02:00:19', '2021-08-07 04:45:59'),
(27378, 'id', 'Flat Rate Shipping Cost', 'Biaya Pengiriman Tarif Standart', '2021-08-07 02:00:19', '2021-08-07 04:45:59'),
(27379, 'id', 'Seller Wise Flat Shipping Cost', 'Penjual Biaya Pengiriman Standart', '2021-08-07 02:00:19', '2021-08-07 04:45:59'),
(27380, 'id', 'Area Wise Flat Shipping Cost', 'Biaya Pengiriman Area Standart', '2021-08-07 02:00:19', '2021-08-07 04:45:59'),
(27381, 'id', 'Note', 'Note', '2021-08-07 02:00:19', '2021-08-07 02:00:19'),
(27382, 'id', 'Product Wise Shipping Cost calulation: Shipping cost is calculate by addition of each product shipping cost', 'Product Wise Shipping Cost calulation: Shipping cost is calculate by addition of each product shipping cost', '2021-08-07 02:00:20', '2021-08-07 02:00:20'),
(27383, 'id', 'Flat Rate Shipping Cost calulation: How many products a customer purchase, doesn\'t matter. Shipping cost is fixed', 'Flat Rate Shipping Cost calulation: How many products a customer purchase, doesn\'t matter. Shipping cost is fixed', '2021-08-07 02:00:20', '2021-08-07 02:00:20'),
(27384, 'id', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If customers purchase 2 product from two seller shipping cost is calculated by addition of each seller flat shipping cost', 'Seller Wise Flat Shipping Cost calulation: Fixed rate for each seller. If customers purchase 2 product from two seller shipping cost is calculated by addition of each seller flat shipping cost', '2021-08-07 02:00:20', '2021-08-07 02:00:20'),
(27385, 'id', 'Area Wise Flat Shipping Cost calulation: Fixed rate for each area. If customers purchase multiple products from one seller shipping cost is calculated by the customer shipping area. To configure area wise shipping cost go to ', 'Area Wise Flat Shipping Cost calulation: Fixed rate for each area. If customers purchase multiple products from one seller shipping cost is calculated by the customer shipping area. To configure area wise shipping cost go to', '2021-08-07 02:00:20', '2021-08-07 04:45:59'),
(27386, 'id', 'Flat Rate Cost', 'Flat Rate Cost', '2021-08-07 02:00:20', '2021-08-07 02:00:20'),
(27387, 'id', '1. Flat rate shipping cost is applicable if Flat rate shipping is enabled.', '1. Flat rate shipping cost is applicable if Flat rate shipping is enabled.', '2021-08-07 02:00:20', '2021-08-07 02:00:20'),
(27388, 'id', 'Shipping Cost for Admin Products', 'Biaya pengiriman untuk produk admin', '2021-08-07 02:00:20', '2021-08-07 04:45:59'),
(27389, 'id', '1. Shipping cost for admin is applicable if Seller wise shipping cost is enabled.', '1. Shipping cost for admin is applicable if Seller wise shipping cost is enabled.', '2021-08-07 02:00:20', '2021-08-07 02:00:20'),
(27390, 'id', 'Installed Addon', 'Installed Addon', '2021-08-07 02:24:32', '2021-08-07 02:24:32'),
(27391, 'id', 'Available Addon', 'Available Addon', '2021-08-07 02:24:32', '2021-08-07 02:24:32'),
(27392, 'id', 'Install/Update Addon', 'Install/Update Addon', '2021-08-07 02:24:32', '2021-08-07 02:24:32'),
(27393, 'id', 'No Addon Installed', 'No Addon Installed', '2021-08-07 02:24:32', '2021-08-07 02:24:32'),
(27394, 'id', 'Status updated successfully', 'Status updated successfully', '2021-08-07 02:24:32', '2021-08-07 02:24:32'),
(27395, 'id', 'Zip File', 'Zip File', '2021-08-07 02:24:38', '2021-08-07 02:24:38'),
(27396, 'id', 'Install/Update', 'Install/Update', '2021-08-07 02:24:38', '2021-08-07 02:24:38'),
(27398, 'id', 'Version', 'Version', '2021-08-07 02:24:54', '2021-08-07 02:24:54'),
(27399, 'id', 'Offline Payment System', 'Sistem pembayaran offline', '2021-08-07 02:24:56', '2021-08-07 04:45:59'),
(27400, 'id', 'Manual Payment Methods', 'Metode Pembayaran Manual', '2021-08-07 02:24:56', '2021-08-07 04:49:59'),
(27401, 'id', 'Offline Wallet Recharge', 'Offline Wallet Recharge', '2021-08-07 02:24:56', '2021-08-07 02:24:56'),
(27402, 'id', 'Add New Payment Method', 'Tambahkan metode pembayaran baru', '2021-08-07 02:26:39', '2021-08-07 04:49:59'),
(27403, 'id', 'Manual Payment Method', 'Metode Pembayaran Manual', '2021-08-07 02:26:40', '2021-08-07 04:49:59'),
(27404, 'id', 'Heading', 'Heading', '2021-08-07 02:26:40', '2021-08-07 02:26:40'),
(27405, 'id', 'Offline Wallet Recharge Requests', 'Offline Wallet Recharge Requests', '2021-08-07 02:26:48', '2021-08-07 02:26:48'),
(27406, 'id', 'Amount', 'Jumlah', '2021-08-07 02:26:48', '2021-08-07 04:49:59'),
(27407, 'id', 'Method', 'Metode', '2021-08-07 02:26:48', '2021-08-07 04:49:59'),
(27408, 'id', 'TXN ID', 'TXN ID', '2021-08-07 02:26:48', '2021-08-07 02:26:48'),
(27409, 'id', 'Photo', 'Photo', '2021-08-07 02:26:49', '2021-08-07 02:26:49'),
(27410, 'id', 'Approval', 'Persetujuan', '2021-08-07 02:26:49', '2021-08-07 04:49:59'),
(27411, 'id', 'Date', 'Tanggal', '2021-08-07 02:26:49', '2021-08-07 04:49:59'),
(27412, 'id', 'Money has been added successfully', 'Uang telah berhasil ditambahkan', '2021-08-07 02:26:49', '2021-08-07 04:49:59'),
(27413, 'id', 'Manual Payment Information', 'Informasi Pembayaran Manual', '2021-08-07 02:26:59', '2021-08-07 04:49:59'),
(27414, 'id', 'Custom Payment', 'Custom Pembayaran', '2021-08-07 02:26:59', '2021-08-07 04:49:59'),
(27415, 'id', 'Bank Payment', 'Pembayaran Bank', '2021-08-07 02:26:59', '2021-08-07 04:49:59'),
(27416, 'id', 'Check Payment', 'Check Pembayaran', '2021-08-07 02:26:59', '2021-08-07 04:49:59'),
(27417, 'id', 'Checkout Thumbnail', 'Checkout Thumbnail', '2021-08-07 02:26:59', '2021-08-07 02:26:59'),
(27418, 'id', 'Payment Instruction', 'Instruksi pembayaran', '2021-08-07 02:26:59', '2021-08-07 04:49:59'),
(27419, 'id', 'Bank Information', 'Informasi Bank', '2021-08-07 02:26:59', '2021-08-07 04:49:59'),
(27420, 'id', 'Bank Name', 'Nama Bank', '2021-08-07 02:26:59', '2021-08-07 04:49:59'),
(27421, 'id', 'Account Name', 'Nama Akun', '2021-08-07 02:26:59', '2021-08-07 04:49:59'),
(27422, 'id', 'Account Number', 'Nomor akun', '2021-08-07 02:26:59', '2021-08-07 04:49:59'),
(27423, 'id', 'Routing Number', 'Swift Kode', '2021-08-07 02:26:59', '2021-08-07 04:49:59'),
(27424, 'id', 'Add More', 'Tambahkan lebih lanjut', '2021-08-07 02:26:59', '2021-08-07 04:49:59'),
(27425, 'id', 'Remove', 'Hapus', '2021-08-07 02:26:59', '2021-08-07 04:49:59'),
(27426, 'id', 'Method has been inserted successfully', 'Metode telah berhasil dimasukkan', '2021-08-07 03:39:13', '2021-08-07 04:49:59'),
(27427, 'id', 'Method has been updated successfully', 'Metode telah berhasil diperbarui', '2021-08-07 03:40:48', '2021-08-07 04:50:00'),
(27428, 'id', 'Product Information', 'Product Information', '2021-08-07 07:22:37', '2021-08-07 07:22:37'),
(27429, 'id', 'Product Name', 'Product Name', '2021-08-07 07:22:37', '2021-08-07 07:22:37'),
(27430, 'id', 'Select Brand', 'Select Brand', '2021-08-07 07:22:37', '2021-08-07 07:22:37'),
(27431, 'id', 'Unit', 'Unit', '2021-08-07 07:22:37', '2021-08-07 07:22:37'),
(27432, 'id', 'Unit (e.g. KG, Pc etc)', 'Unit (e.g. KG, Pc etc)', '2021-08-07 07:22:37', '2021-08-07 07:22:37'),
(27433, 'id', 'Minimum Purchase Qty', 'Minimum Purchase Qty', '2021-08-07 07:22:38', '2021-08-07 07:22:38'),
(27434, 'id', 'Tags', 'Tags', '2021-08-07 07:22:38', '2021-08-07 07:22:38'),
(27435, 'id', 'Type and hit enter to add a tag', 'Type and hit enter to add a tag', '2021-08-07 07:22:38', '2021-08-07 07:22:38'),
(27436, 'id', 'This is used for search. Input those words by which cutomer can find this product.', 'This is used for search. Input those words by which cutomer can find this product.', '2021-08-07 07:22:38', '2021-08-07 07:22:38'),
(27437, 'id', 'Product Images', 'Product Images', '2021-08-07 07:22:38', '2021-08-07 07:22:38'),
(27438, 'id', 'Gallery Images', 'Gallery Images', '2021-08-07 07:22:38', '2021-08-07 07:22:38'),
(27439, 'id', 'These images are visible in product details page gallery. Use 600x600 sizes images.', 'These images are visible in product details page gallery. Use 600x600 sizes images.', '2021-08-07 07:22:38', '2021-08-07 07:22:38'),
(27440, 'id', 'Thumbnail Image', 'Thumbnail Image', '2021-08-07 07:22:38', '2021-08-07 07:22:38'),
(27441, 'id', 'This image is visible in all product box. Use 300x300 sizes image. Keep some blank space around main object of your image as we had to crop some edge in different devices to make it responsive.', 'This image is visible in all product box. Use 300x300 sizes image. Keep some blank space around main object of your image as we had to crop some edge in different devices to make it responsive.', '2021-08-07 07:22:38', '2021-08-07 07:22:38'),
(27442, 'id', 'Product Videos', 'Product Videos', '2021-08-07 07:22:38', '2021-08-07 07:22:38'),
(27443, 'id', 'Video Provider', 'Video Provider', '2021-08-07 07:22:38', '2021-08-07 07:22:38'),
(27444, 'id', 'Youtube', 'Youtube', '2021-08-07 07:22:38', '2021-08-07 07:22:38'),
(27445, 'id', 'Dailymotion', 'Dailymotion', '2021-08-07 07:22:38', '2021-08-07 07:22:38'),
(27446, 'id', 'Vimeo', 'Vimeo', '2021-08-07 07:22:38', '2021-08-07 07:22:38'),
(27447, 'id', 'Video Link', 'Video Link', '2021-08-07 07:22:39', '2021-08-07 07:22:39'),
(27448, 'id', 'Use proper link without extra parameter. Don\'t use short share link/embeded iframe code.', 'Use proper link without extra parameter. Don\'t use short share link/embeded iframe code.', '2021-08-07 07:22:39', '2021-08-07 07:22:39'),
(27449, 'id', 'Product Variation', 'Product Variation', '2021-08-07 07:22:39', '2021-08-07 07:22:39'),
(27450, 'id', 'Attributes', 'Attributes', '2021-08-07 07:22:39', '2021-08-07 07:22:39'),
(27451, 'id', 'Choose Attributes', 'Choose Attributes', '2021-08-07 07:22:39', '2021-08-07 07:22:39'),
(27452, 'id', 'Choose the attributes of this product and then input values of each attribute', 'Choose the attributes of this product and then input values of each attribute', '2021-08-07 07:22:39', '2021-08-07 07:22:39'),
(27453, 'id', 'Product price + stock', 'Product price + stock', '2021-08-07 07:22:39', '2021-08-07 07:22:39'),
(27454, 'id', 'Unit price', 'Unit price', '2021-08-07 07:22:39', '2021-08-07 07:22:39'),
(27455, 'id', 'Discount Date Range', 'Discount Date Range', '2021-08-07 07:22:39', '2021-08-07 07:22:39'),
(27456, 'id', 'Select Date', 'Select Date', '2021-08-07 07:22:39', '2021-08-07 07:22:39'),
(27457, 'id', 'Discount', 'Discount', '2021-08-07 07:22:39', '2021-08-07 07:22:39'),
(27458, 'id', 'Flat', 'Flat', '2021-08-07 07:22:39', '2021-08-07 07:22:39'),
(27459, 'id', 'Percent', 'Percent', '2021-08-07 07:22:39', '2021-08-07 07:22:39'),
(27460, 'id', 'Quantity', 'Kuantitas', '2021-08-07 07:22:39', '2021-08-07 11:14:54'),
(27461, 'id', 'SKU', 'SKU', '2021-08-07 07:22:39', '2021-08-07 07:22:39'),
(27462, 'id', 'Product Description', 'Product Description', '2021-08-07 07:22:40', '2021-08-07 07:22:40'),
(27463, 'id', 'Product Shipping Cost', 'Product Shipping Cost', '2021-08-07 07:22:40', '2021-08-07 07:22:40'),
(27464, 'id', 'PDF Specification', 'PDF Specification', '2021-08-07 07:22:40', '2021-08-07 07:22:40'),
(27465, 'id', 'SEO Meta Tags', 'SEO Meta Tags', '2021-08-07 07:22:40', '2021-08-07 07:22:40'),
(27466, 'id', 'Free Shipping', 'Free Shipping', '2021-08-07 07:22:40', '2021-08-07 07:22:40'),
(27467, 'id', 'Flat Rate', 'Flat Rate', '2021-08-07 07:22:40', '2021-08-07 07:22:40'),
(27468, 'id', 'Shipping cost', 'Shipping cost', '2021-08-07 07:22:40', '2021-08-07 07:22:40'),
(27469, 'id', 'Is Product Quantity Mulitiply', 'Is Product Quantity Mulitiply', '2021-08-07 07:22:40', '2021-08-07 07:22:40'),
(27470, 'id', 'Low Stock Quantity Warning', 'Peringatan Kuantitas Stok Rendah', '2021-08-07 07:22:40', '2021-08-07 11:14:54'),
(27471, 'id', 'Stock Visibility State', 'Stock Visibility State', '2021-08-07 07:22:40', '2021-08-07 07:22:40'),
(27472, 'id', 'Show Stock Quantity', 'Tampilkan Kuantitas Stok', '2021-08-07 07:22:40', '2021-08-07 11:14:54'),
(27473, 'id', 'Show Stock With Text Only', 'Show Stock With Text Only', '2021-08-07 07:22:40', '2021-08-07 07:22:40'),
(27474, 'id', 'Hide Stock', 'Hide Stock', '2021-08-07 07:22:40', '2021-08-07 07:22:40'),
(27475, 'id', 'Cash On Delivery', 'Cash On Delivery', '2021-08-07 07:22:40', '2021-08-07 07:22:40'),
(27476, 'id', 'Cash On Delivery option is disabled. Activate this feature from here', 'Cash On Delivery option is disabled. Activate this feature from here', '2021-08-07 07:22:41', '2021-08-07 07:22:41'),
(27477, 'id', 'Todays Deal', 'Todays Deal', '2021-08-07 07:22:41', '2021-08-07 07:22:41'),
(27478, 'id', 'Flash Deal', 'Flash Deal', '2021-08-07 07:22:41', '2021-08-07 07:22:41'),
(27479, 'id', 'Add To Flash', 'Add To Flash', '2021-08-07 07:22:41', '2021-08-07 07:22:41'),
(27480, 'id', 'Discount Type', 'Discount Type', '2021-08-07 07:22:41', '2021-08-07 07:22:41'),
(27481, 'id', 'Estimate Shipping Time', 'Estimate Shipping Time', '2021-08-07 07:22:41', '2021-08-07 07:22:41'),
(27482, 'id', 'Shipping Days', 'Shipping Days', '2021-08-07 07:22:41', '2021-08-07 07:22:41'),
(27483, 'id', 'Tax', 'Pajak', '2021-08-07 07:22:41', '2021-08-07 11:15:37'),
(27484, 'id', 'Save As Draft', 'Save As Draft', '2021-08-07 07:22:41', '2021-08-07 07:22:41'),
(27485, 'id', 'Save & Unpublish', 'Save & Unpublish', '2021-08-07 07:22:41', '2021-08-07 07:22:41'),
(27486, 'id', 'Save & Publish', 'Save & Publish', '2021-08-07 07:22:41', '2021-08-07 07:22:41'),
(27487, 'id', 'Choice Title', 'Choice Title', '2021-08-07 07:22:41', '2021-08-07 07:22:41'),
(27488, 'id', 'All Product', 'All Product', '2021-08-07 07:24:20', '2021-08-07 07:24:20'),
(27489, 'id', 'Bulk Action', 'Bulk Action', '2021-08-07 07:24:20', '2021-08-07 07:24:20'),
(27490, 'id', 'Delete selection', 'Delete selection', '2021-08-07 07:24:20', '2021-08-07 07:24:20'),
(27491, 'id', 'All Sellers', 'All Sellers', '2021-08-07 07:24:20', '2021-08-07 07:24:20'),
(27492, 'id', 'Sort By', 'Sort By', '2021-08-07 07:24:20', '2021-08-07 07:24:20'),
(27493, 'id', 'Rating (High > Low)', 'Rating (High > Low)', '2021-08-07 07:24:20', '2021-08-07 07:24:20'),
(27494, 'id', 'Rating (Low > High)', 'Rating (Low > High)', '2021-08-07 07:24:20', '2021-08-07 07:24:20'),
(27495, 'id', 'Num of Sale (High > Low)', 'Num of Sale (High > Low)', '2021-08-07 07:24:20', '2021-08-07 07:24:20'),
(27496, 'id', 'Num of Sale (Low > High)', 'Num of Sale (Low > High)', '2021-08-07 07:24:20', '2021-08-07 07:24:20'),
(27497, 'id', 'Base Price (High > Low)', 'Base Price (High > Low)', '2021-08-07 07:24:20', '2021-08-07 07:24:20'),
(27498, 'id', 'Base Price (Low > High)', 'Base Price (Low > High)', '2021-08-07 07:24:20', '2021-08-07 07:24:20'),
(27499, 'id', 'Type & Enter', 'Type & Enter', '2021-08-07 07:24:20', '2021-08-07 07:24:20'),
(27500, 'id', 'Added By', 'Added By', '2021-08-07 07:24:20', '2021-08-07 07:24:20'),
(27501, 'id', 'Info', 'Info', '2021-08-07 07:24:20', '2021-08-07 07:24:20'),
(27502, 'id', 'Total Stock', 'Total Stock', '2021-08-07 07:24:20', '2021-08-07 07:24:20'),
(27503, 'id', 'Published', 'Published', '2021-08-07 07:24:21', '2021-08-07 07:24:21'),
(27504, 'id', 'Todays Deal updated successfully', 'Todays Deal updated successfully', '2021-08-07 07:24:21', '2021-08-07 07:24:21'),
(27505, 'id', 'Published products updated successfully', 'Published products updated successfully', '2021-08-07 07:24:21', '2021-08-07 07:24:21'),
(27506, 'id', 'Product approval update successfully', 'Product approval update successfully', '2021-08-07 07:24:21', '2021-08-07 07:24:21'),
(27507, 'id', 'Featured products updated successfully', 'Featured products updated successfully', '2021-08-07 07:24:21', '2021-08-07 07:24:21'),
(27508, 'id', 'File Name', 'File Name', '2021-08-07 07:40:51', '2021-08-07 07:40:51'),
(27509, 'id', 'File Type', 'File Type', '2021-08-07 07:40:51', '2021-08-07 07:40:51'),
(27510, 'id', 'File Size', 'File Size', '2021-08-07 07:40:51', '2021-08-07 07:40:51'),
(27511, 'id', 'Uploaded By', 'Uploaded By', '2021-08-07 07:40:51', '2021-08-07 07:40:51'),
(27512, 'id', 'Uploaded At', 'Uploaded At', '2021-08-07 07:40:51', '2021-08-07 07:40:51'),
(27513, 'id', 'All Attributes', 'All Attributes', '2021-08-07 08:11:11', '2021-08-07 08:11:11'),
(27514, 'id', 'Values', 'Values', '2021-08-07 08:11:11', '2021-08-07 08:11:11'),
(27515, 'id', 'Attribute values', 'Attribute values', '2021-08-07 08:11:11', '2021-08-07 08:11:11'),
(27516, 'id', 'Add New Attribute', 'Tambahkan Atribut Baru', '2021-08-07 08:11:11', '2021-08-15 08:13:22'),
(27517, 'id', 'Attribute Detail', 'Attribute Detail', '2021-08-07 08:12:33', '2021-08-07 08:12:33'),
(27518, 'id', 'Add New Attribute Value', 'Add New Attribute Value', '2021-08-07 08:12:33', '2021-08-07 08:12:33'),
(27519, 'id', 'Attribute Name', 'Attribute Name', '2021-08-07 08:12:33', '2021-08-07 08:12:33'),
(27520, 'id', 'Attribute Value', 'Attribute Value', '2021-08-07 08:12:33', '2021-08-07 08:12:33'),
(27521, 'id', 'Attribute value has been inserted successfully', 'Attribute value has been inserted successfully', '2021-08-07 08:13:11', '2021-08-07 08:13:11'),
(27522, 'id', 'Attribute Value Information', 'Attribute Value Information', '2021-08-07 08:16:11', '2021-08-07 08:16:11'),
(27523, 'id', 'Attribute value has been updated successfully', 'Attribute value has been updated successfully', '2021-08-07 08:16:21', '2021-08-07 08:16:21'),
(27524, 'id', 'Attribute has been inserted successfully', 'Attribute has been inserted successfully', '2021-08-07 08:30:14', '2021-08-07 08:30:14'),
(27525, 'id', 'Filter by Rating', 'Filter by Rating', '2021-08-07 08:34:06', '2021-08-07 08:34:06'),
(27526, 'id', 'Product Owner', 'Product Owner', '2021-08-07 08:34:06', '2021-08-07 08:34:06'),
(27527, 'id', 'Rating', 'Rating', '2021-08-07 08:34:06', '2021-08-07 08:34:06'),
(27528, 'id', 'Comment', 'Comment', '2021-08-07 08:34:06', '2021-08-07 08:34:06'),
(27529, 'id', 'Published reviews updated successfully', 'Published reviews updated successfully', '2021-08-07 08:34:07', '2021-08-07 08:34:07'),
(27530, 'id', 'Variant', 'Varian', '2021-08-07 08:57:34', '2021-08-15 08:13:22'),
(27531, 'id', 'Variant Price', 'Varian Harga', '2021-08-07 08:57:34', '2021-08-15 08:13:22'),
(27532, 'id', 'Product has been inserted successfully', 'Produk telah berhasil dimasukkan', '2021-08-07 09:10:06', '2021-08-15 08:13:22'),
(27533, 'id', 'Num of Sale', 'Num of Sale', '2021-08-07 09:10:08', '2021-08-07 09:10:08'),
(27534, 'id', 'times', 'waktu', '2021-08-07 09:10:08', '2021-08-15 08:13:22'),
(27535, 'id', 'Base Price', 'Harga dasar', '2021-08-07 09:10:08', '2021-08-15 08:13:22'),
(27536, 'id', 'View', 'Lihat', '2021-08-07 09:10:08', '2021-08-15 08:13:22'),
(27537, 'id', 'Duplicate', 'Duplikat', '2021-08-07 09:10:08', '2021-08-15 08:13:22'),
(27538, 'id', 'Add to wishlist', 'Tambahkan ke wishlist', '2021-08-07 09:11:14', '2021-08-15 08:13:23'),
(27539, 'id', 'Add to compare', 'Tambahkan ke compare', '2021-08-07 09:11:14', '2021-08-15 08:13:23'),
(27540, 'id', 'Add to cart', 'Tambahkan ke cart', '2021-08-07 09:11:14', '2021-08-15 08:13:23'),
(27541, 'id', 'reviews', 'ulasan', '2021-08-07 09:11:36', '2021-08-15 08:13:23'),
(27542, 'id', 'Sold by', 'Dijual oleh', '2021-08-07 09:11:36', '2021-08-15 08:13:23'),
(27543, 'id', 'Inhouse product', 'Inhouse product', '2021-08-07 09:11:36', '2021-08-07 09:11:36'),
(27544, 'id', 'Message Seller', 'Chat Penjual', '2021-08-07 09:11:36', '2021-08-15 08:13:23'),
(27545, 'id', 'Price', 'Harga', '2021-08-07 09:11:36', '2021-08-15 08:13:23'),
(27546, 'id', 'available', 'tersedia', '2021-08-07 09:11:37', '2021-08-15 08:13:23'),
(27547, 'id', 'Total Price', 'Total Harga', '2021-08-07 09:11:37', '2021-08-15 08:13:23'),
(27548, 'id', 'Buy Now', 'Beli sekarang', '2021-08-07 09:11:37', '2021-08-15 08:13:23'),
(27549, 'id', 'Out of Stock', 'Stock Kosong', '2021-08-07 09:11:37', '2021-08-15 08:13:23'),
(27550, 'id', 'Share', 'Share', '2021-08-07 09:11:37', '2021-08-07 09:11:37'),
(27551, 'id', 'customer reviews', 'Ulasan pelanggan', '2021-08-07 09:11:37', '2021-08-15 08:21:30'),
(27552, 'id', 'Top Selling Products', 'Top Selling Products', '2021-08-07 09:11:37', '2021-08-07 09:11:37'),
(27553, 'id', 'There have been no reviews for this product yet.', 'Belum ada ulasan untuk produk ini.', '2021-08-07 09:11:37', '2021-08-15 08:21:30'),
(27554, 'id', 'Related products', 'Produk-produk terkait', '2021-08-07 09:11:37', '2021-08-15 08:21:30'),
(27555, 'id', 'Any query about this product', 'Setiap kueri tentang produk ini', '2021-08-07 09:11:37', '2021-08-15 08:21:30'),
(27556, 'id', 'Your Question', 'Pertanyaanmu', '2021-08-07 09:11:37', '2021-08-15 08:21:30'),
(27557, 'id', 'Send', 'Kirim', '2021-08-07 09:11:38', '2021-08-15 08:21:30'),
(27558, 'id', 'Hot', 'Hot', '2021-08-07 09:16:56', '2021-08-07 09:16:56'),
(27559, 'id', 'Item added to your cart!', 'Item ditambahkan ke troli Anda!', '2021-08-07 09:19:44', '2021-08-15 08:21:31'),
(27560, 'id', 'Back to shopping', 'Kembali ke Belanja', '2021-08-07 09:19:44', '2021-08-15 08:21:31'),
(27561, 'id', 'Proceed to Checkout', 'Lanjutkan ke pembayaran', '2021-08-07 09:19:44', '2021-08-15 08:21:31'),
(27562, 'id', 'Cart Items', 'Item keranjang', '2021-08-07 09:19:45', '2021-08-15 08:21:31'),
(27563, 'id', 'Subtotal', 'Subtotal', '2021-08-07 09:19:45', '2021-08-07 09:19:45'),
(27564, 'id', 'View cart', 'Lihat Keranjang', '2021-08-07 09:19:45', '2021-08-15 08:21:31'),
(27565, 'id', 'Checkout', 'Checkout', '2021-08-07 09:19:45', '2021-08-07 09:19:45'),
(27566, 'id', '1. My Cart', '1. Keranjang saya', '2021-08-07 09:20:00', '2021-08-15 08:21:31'),
(27567, 'id', '2. Shipping info', '2. Informasi Pengiriman', '2021-08-07 09:20:00', '2021-08-15 08:21:31'),
(27568, 'id', '3. Delivery info', '3. Info Pengiriman', '2021-08-07 09:20:00', '2021-08-15 08:21:31'),
(27569, 'id', '4. Payment', '4. Pembayaran', '2021-08-07 09:20:00', '2021-08-15 08:21:31'),
(27570, 'id', '5. Confirmation', '5. Konfirmasi', '2021-08-07 09:20:00', '2021-08-15 08:21:31'),
(27571, 'id', 'Return to shop', 'Kembali ke shop', '2021-08-07 09:20:00', '2021-08-15 08:21:31'),
(27572, 'id', 'Continue to Shipping', 'Lanjutkan ke Pengiriman', '2021-08-07 09:20:00', '2021-08-15 08:21:31'),
(27573, 'id', 'Add New Address', 'Tambahkan alamat baru', '2021-08-07 09:20:11', '2021-08-15 08:21:31'),
(27574, 'id', 'Continue to Delivery Info', 'Lanjutkan ke Info Pengiriman', '2021-08-07 09:20:11', '2021-08-15 08:21:31'),
(27575, 'id', 'New Address', 'Alamat baru', '2021-08-07 09:20:11', '2021-08-15 08:21:31'),
(27576, 'id', 'Your Address', 'Alamat Anda', '2021-08-07 09:20:11', '2021-08-15 08:21:31'),
(27577, 'id', 'City', 'Kota', '2021-08-07 09:20:11', '2021-08-15 08:21:31'),
(27578, 'id', 'Postal code', 'Kode Pos', '2021-08-07 09:20:11', '2021-08-15 08:21:31'),
(27579, 'id', 'Your Postal Code', 'Kode Pos Anda', '2021-08-07 09:20:11', '2021-08-15 08:21:31'),
(27580, 'id', '+880', '+62', '2021-08-07 09:20:11', '2021-08-15 08:21:31'),
(27581, 'id', 'Address Edit', 'Edit Alamat', '2021-08-07 09:20:11', '2021-08-15 08:21:31'),
(27582, 'id', 'Edit Product', 'Edit Product', '2021-08-07 09:20:50', '2021-08-07 09:20:50'),
(27583, 'id', 'Type to add a tag', 'Ketik untuk menambahkan tag', '2021-08-07 09:20:50', '2021-08-15 08:21:31'),
(27584, 'id', 'Meta Images', 'Meta Images', '2021-08-07 09:20:51', '2021-08-07 09:20:51'),
(27585, 'id', 'Update Product', 'Update Product', '2021-08-07 09:20:52', '2021-08-07 09:20:52'),
(27586, 'id', 'Product has been updated successfully', 'Produk telah berhasil diperbarui', '2021-08-07 09:21:40', '2021-08-15 08:21:32'),
(27587, 'id', 'Choose Delivery Type', 'Pilih jenis pengiriman', '2021-08-07 09:37:30', '2021-08-15 08:21:32'),
(27588, 'id', 'Home Delivery', 'Pengiriman Ke Rumah', '2021-08-07 09:37:30', '2021-08-15 08:21:32'),
(27589, 'id', 'Select your nearest pickup point', 'Pilih titik pickup terdekat', '2021-08-07 09:37:30', '2021-08-15 08:21:32'),
(27590, 'id', 'Continue to Payment', 'Lanjutkan ke Pembayaran', '2021-08-07 09:37:30', '2021-08-15 08:21:32'),
(27591, 'id', 'Select a payment option', 'Pilih opsi pembayaran', '2021-08-07 09:40:17', '2021-08-15 08:21:32'),
(27592, 'id', 'Paypal', 'Paypal', '2021-08-07 09:40:17', '2021-08-07 09:40:17'),
(27593, 'id', 'I agree to the', 'Saya setuju dengan', '2021-08-07 09:40:17', '2021-08-15 08:21:32'),
(27594, 'id', 'terms and conditions', 'syarat dan Ketentuan', '2021-08-07 09:40:17', '2021-08-15 08:21:32'),
(27595, 'id', 'Complete Order', 'Pesanan Lengkap', '2021-08-07 09:40:17', '2021-08-15 08:21:32'),
(27596, 'id', 'Summary', 'Ringkasan', '2021-08-07 09:40:17', '2021-08-15 08:21:32'),
(27597, 'id', 'Items', 'Items', '2021-08-07 09:40:17', '2021-08-07 09:40:17'),
(27598, 'id', 'Total Shipping', 'Total Pengiriman', '2021-08-07 09:40:18', '2021-08-15 08:21:32'),
(27599, 'id', 'You need to agree with our policies', 'Anda perlu menyetujui kebijakan kami', '2021-08-07 09:40:18', '2021-08-15 08:21:32'),
(27600, 'id', 'Your order has been placed', 'Pesanan Anda telah ditempatkan', '2021-08-07 09:44:41', '2021-08-15 08:27:07'),
(27601, 'id', 'Your order has been placed successfully. Please submit payment information from purchase history', 'Pesanan Anda telah berhasil ditempatkan.', '2021-08-07 09:44:41', '2021-08-15 08:27:07'),
(27602, 'id', 'Thank You for Your Order!', 'Terima kasih atas pesanan Anda!', '2021-08-07 09:44:42', '2021-08-15 08:27:07'),
(27603, 'id', 'Order Code:', 'Kode pemesanan:', '2021-08-07 09:44:42', '2021-08-15 08:27:07'),
(27604, 'id', 'A copy or your order summary has been sent to', 'Salin atau ringkasan pesanan Anda telah dikirim ke', '2021-08-07 09:44:42', '2021-08-07 11:13:58'),
(27605, 'id', 'Order Summary', 'Ringkasan Pesanan', '2021-08-07 09:44:42', '2021-08-07 11:13:58'),
(27606, 'id', 'Order Code', 'Kode pemesanan', '2021-08-07 09:44:42', '2021-08-15 08:27:07'),
(27607, 'id', 'Shipping address', 'Alamat pengiriman', '2021-08-07 09:44:43', '2021-08-15 08:27:07'),
(27608, 'id', 'Order date', 'Tanggal pemesanan', '2021-08-07 09:44:43', '2021-08-15 08:27:07'),
(27609, 'id', 'Order status', 'Status pemesanan', '2021-08-07 09:44:43', '2021-08-15 08:27:07'),
(27610, 'id', 'Pending', 'Pending', '2021-08-07 09:44:43', '2021-08-07 09:44:43'),
(27611, 'id', 'Total order amount', 'Jumlah total pesanan', '2021-08-07 09:44:43', '2021-08-15 08:27:07'),
(27612, 'id', 'Flat shipping rate', 'Flat shipping rate', '2021-08-07 09:44:43', '2021-08-07 09:44:43'),
(27613, 'id', 'Payment method', 'Metode Pembayaran', '2021-08-07 09:44:43', '2021-08-15 08:27:08'),
(27614, 'id', 'Order Details', 'Detail Pesanan', '2021-08-07 09:44:43', '2021-08-07 11:13:01'),
(27615, 'id', 'Variation', 'Variasi', '2021-08-07 09:44:43', '2021-08-15 08:27:08'),
(27616, 'id', 'Delivery Type', 'Tipe Pengiriman', '2021-08-07 09:44:43', '2021-08-15 08:27:08'),
(27617, 'id', 'Coupon Discount', 'Coupon Discount', '2021-08-07 09:44:43', '2021-08-07 09:44:43'),
(27618, 'id', 'Order code: 20210807-16444168 has been Placed', 'Kode Pesanan: 20210807-16444168 telah ditempatkan', '2021-08-07 09:44:44', '2021-08-15 08:27:08'),
(27619, 'id', 'New', 'Baru', '2021-08-07 09:44:45', '2021-08-15 08:27:08'),
(27620, 'id', 'Your Order: ', 'Pesanan Anda:', '2021-08-07 09:50:08', '2021-08-15 08:27:08'),
(27621, 'id', ' has been Placed', 'telah diletakkan', '2021-08-07 09:50:08', '2021-08-15 08:27:08'),
(27622, 'id', 'Delivery Status', 'Status Pengiriman', '2021-08-07 09:50:29', '2021-08-07 11:16:40'),
(27623, 'id', 'Payment Status', 'Status pembayaran', '2021-08-07 09:50:29', '2021-08-07 11:16:08'),
(27624, 'id', 'Unpaid', 'Belum dibayar', '2021-08-07 09:50:29', '2021-08-15 08:27:08'),
(27625, 'id', 'Download Invoice', 'Download Invoice', '2021-08-07 09:50:29', '2021-08-07 09:50:29'),
(27626, 'id', 'Order id', 'Id pemesanan', '2021-08-07 09:53:09', '2021-08-15 08:27:08'),
(27627, 'id', 'Shipping method', 'Metode pengiriman', '2021-08-07 09:53:10', '2021-08-15 08:27:08'),
(27628, 'id', 'Order Ammount', 'Jumlah Pesanan', '2021-08-07 09:53:10', '2021-08-07 11:15:13'),
(27629, 'id', 'Make Payment', 'Melakukan Pembayaran', '2021-08-07 09:53:10', '2021-08-07 10:01:25'),
(27630, 'id', 'Transaction ID', 'Transaction ID', '2021-08-07 10:00:14', '2021-08-07 10:00:14'),
(27631, 'id', 'Payment screenshot', 'Screenshot pembayaran', '2021-08-07 10:00:14', '2021-08-07 10:02:08'),
(27632, 'id', 'Choose image', 'Pilih gambar', '2021-08-07 10:00:14', '2021-08-15 08:27:08'),
(27633, 'id', 'Confirm', 'Konfirmasi', '2021-08-07 10:00:14', '2021-08-15 08:27:08'),
(27634, 'id', 'Order code: 20210807-16444168 is Placed', 'Kode Pesanan: 20210807-16444168 ditempatkan', '2021-08-07 10:00:50', '2021-08-15 08:27:08'),
(27635, 'id', 'Filters', 'Filters', '2021-08-07 11:22:15', '2021-08-07 11:22:15'),
(27636, 'id', 'Price range', 'Kisaran harga', '2021-08-07 11:22:16', '2021-08-15 08:27:08'),
(27637, 'id', 'Filter by color', 'Filter dengan warna', '2021-08-07 11:22:16', '2021-08-15 08:27:08'),
(27638, 'id', 'Filter by', 'Filter by', '2021-08-07 11:22:16', '2021-08-07 11:22:16'),
(27639, 'id', 'Newest', 'Terbaru', '2021-08-07 11:22:16', '2021-08-15 08:27:08'),
(27640, 'id', 'Oldest', 'Terlama', '2021-08-07 11:22:16', '2021-08-15 08:27:08'),
(27641, 'id', 'Price low to high', 'Harga rendah ke tinggi', '2021-08-07 11:22:16', '2021-08-15 08:27:08'),
(27642, 'id', 'Price high to low', 'Harga tinggi ke rendah', '2021-08-07 11:22:16', '2021-08-15 08:27:08'),
(27643, 'id', 'Change Order Status', 'Ubah Status Pesanan', '2021-08-07 11:44:32', '2021-08-15 08:27:09'),
(27644, 'id', 'Choose an order status', 'Pilih status pesanan', '2021-08-07 11:44:32', '2021-08-15 08:27:09'),
(27645, 'id', 'Confirmed', 'Dikonfirmasi', '2021-08-07 11:44:32', '2021-08-15 08:27:09'),
(27646, 'id', 'Picked Up', 'Dijemput', '2021-08-07 11:44:32', '2021-08-15 08:27:09'),
(27647, 'id', 'On The Way', 'On The Way', '2021-08-07 11:44:32', '2021-08-07 11:44:32'),
(27648, 'id', 'Delivered', 'Terkirim', '2021-08-07 11:44:32', '2021-08-15 08:27:09'),
(27649, 'id', 'Filter by date', 'Filter dengan tanggal', '2021-08-07 11:44:32', '2021-08-15 08:27:09'),
(27650, 'id', 'Type Order code & hit Enter', 'Jenis Kode Pesanan & Tekan Enter', '2021-08-07 11:44:32', '2021-08-15 08:36:34'),
(27651, 'id', 'Filter', 'Filter', '2021-08-07 11:44:33', '2021-08-07 11:44:33'),
(27652, 'id', 'Num. of Products', 'Num. of Products', '2021-08-07 11:44:33', '2021-08-07 11:44:33'),
(27653, 'id', 'Paid', 'Dibayar', '2021-08-07 11:51:00', '2021-08-15 08:36:34'),
(27654, 'id', 'Order #', 'Memesan #', '2021-08-07 11:51:00', '2021-08-15 08:36:34'),
(27655, 'id', 'Total amount', 'Jumlah total', '2021-08-07 11:51:00', '2021-08-15 08:36:34'),
(27656, 'id', 'Qty', 'Qty', '2021-08-07 11:51:00', '2021-08-07 11:51:00'),
(27657, 'id', 'Sub Total', 'Sub Total', '2021-08-07 11:51:01', '2021-08-07 11:51:01'),
(27658, 'id', 'Delivery boy has been assigned', 'Kurir pengiriman telah ditugaskan', '2021-08-07 11:51:01', '2021-08-15 08:36:35'),
(27659, 'id', 'Delivery status has been updated', 'Status Pengiriman telah diperbarui', '2021-08-07 11:51:01', '2021-08-15 08:36:35'),
(27660, 'id', 'Payment status has been updated', 'Status pembayaran telah diperbarui', '2021-08-07 11:51:01', '2021-08-15 08:36:35'),
(27661, 'id', 'Order code: 20210807-16444168 is Paid', 'Kode Pesanan: 20210807-16444168 dibayar', '2021-08-07 11:59:45', '2021-08-15 08:36:35'),
(27662, 'id', 'Order code: 20210807-16444168 is Unpaid', 'Kode Pesanan: 20210807-16444168 tidak dibayar', '2021-08-07 12:02:58', '2021-08-15 08:36:35'),
(27663, 'id', 'Check Your Order Status', 'Periksa status pesanan Anda', '2021-08-07 12:05:59', '2021-08-15 08:36:35'),
(27664, 'id', 'Shipped By', 'Dikirim oleh', '2021-08-07 12:06:24', '2021-08-15 08:36:35'),
(27665, 'id', 'Order code: 20210807-16444168 is Delivered', 'Kode Pesanan: 20210807-16444168 Disampaikan', '2021-08-07 12:09:48', '2021-08-15 08:36:35'),
(27666, 'id', 'Order code: 20210807-16444168 is On the way', 'Kode Pesanan: 20210807-16444168 is On the way', '2021-08-07 12:09:49', '2021-08-15 08:36:35'),
(27667, 'id', 'Filter by Payment Status', 'Filter dengan Status Pembayaran', '2021-08-07 12:09:59', '2021-08-15 08:36:35'),
(27668, 'id', 'Un-Paid', 'Tidak Terbayar', '2021-08-07 12:09:59', '2021-08-15 08:36:35'),
(27669, 'id', 'Filter by Deliver Status', 'Filter dengan status pengiriman', '2021-08-07 12:09:59', '2021-08-15 08:36:35'),
(27670, 'id', 'On delivery', 'Dalam proses pengiriman', '2021-08-07 12:09:59', '2021-08-15 08:36:35'),
(27671, 'id', 'MANDIRI', 'MANDIRI', '2021-08-07 12:09:59', '2021-08-07 12:09:59'),
(27672, 'id', 'Order has been deleted successfully', 'Pesanan telah berhasil dihapus', '2021-08-07 12:10:50', '2021-08-15 08:36:35'),
(27674, 'id', 'Club Point System', 'Point Saya', '2021-08-07 12:16:30', '2021-08-15 08:36:35'),
(27675, 'id', 'Club Point Configurations', 'Konfigurasi Point Saya', '2021-08-07 12:16:30', '2021-08-15 08:36:35'),
(27676, 'id', 'Set Product Point', 'Atur Product Point', '2021-08-07 12:16:30', '2021-08-15 08:36:35'),
(27677, 'id', 'User Points', 'Poin Pengguna', '2021-08-07 12:16:30', '2021-08-15 08:36:35'),
(27678, 'id', 'Convert Point To Wallet', 'Konversi Titik Ke Dompet', '2021-08-07 12:16:59', '2021-08-15 08:36:35'),
(27679, 'id', 'Set Point For ', 'Set Point For', '2021-08-07 12:16:59', '2021-08-15 08:36:35'),
(27680, 'id', 'Points', 'Points', '2021-08-07 12:17:00', '2021-08-07 12:17:00'),
(27681, 'id', 'Note: You need to activate wallet option first before using club point addon.', 'Catatan: Anda perlu mengaktifkan opsi dompet terlebih dahulu sebelum menggunakan Club Point Addon.', '2021-08-07 12:17:00', '2021-08-15 08:36:35'),
(27682, 'id', 'Customer Name', 'Nama Pelanggan', '2021-08-07 12:19:44', '2021-08-15 08:36:35'),
(27683, 'id', 'Convert Status', 'Konversi status', '2021-08-07 12:19:44', '2021-08-15 08:36:35'),
(27684, 'id', 'Earned At', 'Diterima Di', '2021-08-07 12:19:44', '2021-08-15 08:36:35'),
(27685, 'id', 'Currency changed to ', 'Mata uang diubah menjadi', '2021-08-07 12:20:05', '2021-08-15 08:36:36'),
(27686, 'id', 'My Wallet', 'Dompetku', '2021-08-07 12:22:49', '2021-08-15 08:36:36'),
(27687, 'id', 'Earning Points', 'Poin Penghasilan', '2021-08-07 12:22:49', '2021-08-15 08:36:36'),
(27688, 'id', 'Owner', 'Owner', '2021-08-07 12:25:16', '2021-08-07 12:25:16'),
(27689, 'id', 'Point', 'Point', '2021-08-07 12:25:16', '2021-08-07 12:25:16'),
(27690, 'id', 'Set Point for Product Within a Range', 'Tetapkan point untuk produk dalam jangkauan', '2021-08-07 12:25:16', '2021-08-15 08:36:36'),
(27691, 'id', 'Set any specific point for those products what are between Min-price and Max-price. Min-price should be less than Max-price', 'Tetapkan point tertentu untuk produk-produk itu apa antara mini-harga dan harga maks.', '2021-08-07 12:25:16', '2021-08-15 08:36:36'),
(27692, 'id', 'Set Point for multiple products', 'Tetapkan point untuk beberapa produk', '2021-08-07 12:25:16', '2021-08-15 08:36:36'),
(27693, 'id', 'Min Price', 'Min Harga', '2021-08-07 12:25:16', '2021-08-15 08:36:36'),
(27694, 'id', 'Max Price', 'Max Harga', '2021-08-07 12:25:16', '2021-08-15 08:36:36'),
(27695, 'id', 'Set Point for all Products', 'Atur Point untuk semua produk', '2021-08-07 12:25:16', '2021-08-15 08:36:36'),
(27696, 'id', 'Point has been inserted successfully for ', 'point telah disisipkan dengan sukses untuk', '2021-08-07 12:26:04', '2021-08-15 08:36:36'),
(27697, 'id', ' products', 'Produk', '2021-08-07 12:26:05', '2021-08-15 08:36:36'),
(27698, 'id', 'Set Point for Product', 'Tetapkan Point untuk produk', '2021-08-07 12:26:15', '2021-08-15 08:36:36'),
(27699, 'id', 'Set Point', 'Set Point', '2021-08-07 12:26:15', '2021-08-07 12:26:15'),
(27700, 'id', 'Point has been updated successfully', 'Point telah diperbarui dengan sukses', '2021-08-07 12:26:25', '2021-08-15 08:36:36'),
(27701, 'id', 'Club Point', 'Point Saya', '2021-08-07 12:27:09', '2021-08-15 08:43:40'),
(27702, 'id', 'Wallet Balance', 'Saldo di Dompet', '2021-08-07 12:30:08', '2021-08-15 08:43:40'),
(27703, 'id', 'Recharge Wallet', 'Isi ulang dompet', '2021-08-07 12:30:08', '2021-08-15 08:43:40'),
(27704, 'id', 'Offline Recharge Wallet', 'Isi ulang Dompet offline', '2021-08-07 12:30:08', '2021-08-15 08:43:40'),
(27705, 'id', 'My Points', 'Point Saya', '2021-08-07 12:31:47', '2021-08-15 08:43:40'),
(27706, 'id', ' Points', 'Point', '2021-08-07 12:31:47', '2021-08-15 08:43:40'),
(27707, 'id', 'Wallet Money', 'Uang Didompet', '2021-08-07 12:31:47', '2021-08-15 08:43:40'),
(27708, 'id', 'Point Earning history', 'Point Earning history', '2021-08-07 12:31:47', '2021-08-07 12:31:47'),
(27709, 'id', 'Converted', 'Dikonversi', '2021-08-07 12:31:47', '2021-08-15 08:43:40'),
(27710, 'id', 'Action', 'Aksi', '2021-08-07 12:31:47', '2021-08-15 08:43:40'),
(27711, 'id', 'Convert has been done successfully Check your Wallets', 'Konversi telah berhasil memeriksa dompet Anda', '2021-08-07 12:31:48', '2021-08-15 08:43:41'),
(27712, 'id', 'Point convert rate has been updated successfully', 'Tingkat konversi point telah berhasil diperbarui', '2021-08-07 12:37:21', '2021-08-15 08:43:41'),
(27713, 'id', '1', '1', '2021-08-07 12:45:32', '2021-08-07 12:45:32'),
(27714, 'id', 'Your wallet balance :', 'Saldo dompet Anda:', '2021-08-07 12:46:52', '2021-08-15 08:43:41'),
(27715, 'id', 'Insufficient balance', 'Saldo tidak cukup', '2021-08-07 12:46:52', '2021-08-15 08:43:41'),
(27716, 'id', 'Total Club point', 'Total Point Saya', '2021-08-07 12:46:53', '2021-08-15 08:43:41'),
(27717, 'id', 'Have coupon code? Enter here', 'Punya kode kupon?', '2021-08-07 12:46:53', '2021-08-15 08:43:41'),
(27718, 'id', 'Apply', 'Apply', '2021-08-07 12:46:53', '2021-08-07 12:46:53'),
(27719, 'id', 'Offline Recharge has been done. Please wait for response.', 'Isi ulang offline telah dilakukan.', '2021-08-07 12:48:28', '2021-08-15 08:43:41'),
(27720, 'id', 'All Customers', 'Semua pelanggan', '2021-08-07 12:48:55', '2021-08-15 08:43:41'),
(27721, 'id', 'Type email or name & Enter', 'Ketikkan email atau nama dan masukkan', '2021-08-07 12:48:55', '2021-08-15 08:43:41'),
(27722, 'id', 'Email Address', 'Alamat email', '2021-08-07 12:48:55', '2021-08-15 08:43:41'),
(27723, 'id', 'Package', 'Kemasan', '2021-08-07 12:48:55', '2021-08-15 08:43:41'),
(27724, 'id', 'Log in as this Customer', 'Login sebagai Pelanggan ini', '2021-08-07 12:48:55', '2021-08-15 08:43:41'),
(27725, 'id', 'Ban this Customer', 'Banned Pelanggan ini', '2021-08-07 12:48:55', '2021-08-15 08:43:41'),
(27726, 'id', 'Do you really want to ban this Customer?', 'Apakah Anda benar-benar ingin banned Pelanggan ini?', '2021-08-07 12:48:55', '2021-08-15 08:43:41'),
(27727, 'id', 'Proceed!', 'Proceed!', '2021-08-07 12:48:55', '2021-08-07 12:48:55'),
(27728, 'id', 'Do you really want to unban this Customer?', 'Apakah Anda benar-benar ingin unbanned Pelanggan ini?', '2021-08-07 12:48:55', '2021-08-15 08:43:41'),
(27729, 'id', 'Wallet Transaction Report', 'Laporan Transaksi Dompet', '2021-08-07 12:51:26', '2021-08-15 08:43:41'),
(27730, 'id', 'Wallet Transaction', 'Dompet Transaksi', '2021-08-07 12:51:26', '2021-08-15 08:43:41'),
(27731, 'id', 'Choose User', 'Pilih Pengguna', '2021-08-07 12:51:26', '2021-08-15 08:43:41'),
(27732, 'id', 'Daterange', 'Daterange', '2021-08-07 12:51:26', '2021-08-07 12:51:26'),
(27733, 'id', 'User Search Report', 'Laporan Pencarian Pengguna', '2021-08-07 12:52:09', '2021-08-15 08:43:41'),
(27734, 'id', 'Search By', 'Search By', '2021-08-07 12:52:09', '2021-08-07 12:52:09'),
(27735, 'id', 'Number searches', 'Number searches', '2021-08-07 12:52:09', '2021-08-07 12:52:09'),
(27736, 'id', 'Approved', 'Approved', '2021-08-07 12:53:06', '2021-08-07 12:53:06'),
(27737, 'id', 'Pay with wallet', 'Pay with wallet', '2021-08-07 12:57:31', '2021-08-07 12:57:31'),
(27738, 'id', 'All Coupons', 'All Coupons', '2021-08-07 12:58:07', '2021-08-07 12:58:07'),
(27739, 'id', 'Add New Coupon', 'Add New Coupon', '2021-08-07 12:58:07', '2021-08-07 12:58:07'),
(27740, 'id', 'Coupon Information', 'Coupon Information', '2021-08-07 12:58:07', '2021-08-07 12:58:07'),
(27741, 'id', 'Start Date', 'Start Date', '2021-08-07 12:58:07', '2021-08-07 12:58:07'),
(27742, 'id', 'End Date', 'End Date', '2021-08-07 12:58:07', '2021-08-07 12:58:07'),
(27743, 'id', 'Coupon Information Adding', 'Coupon Information Adding', '2021-08-07 12:58:15', '2021-08-07 12:58:15'),
(27744, 'id', 'Coupon Type', 'Coupon Type', '2021-08-07 12:58:15', '2021-08-07 12:58:15'),
(27745, 'id', 'Select One', 'Select One', '2021-08-07 12:58:15', '2021-08-07 12:58:15'),
(27746, 'id', 'For Products', 'For Products', '2021-08-07 12:58:15', '2021-08-07 12:58:15'),
(27747, 'id', 'For Total Orders', 'For Total Orders', '2021-08-07 12:58:15', '2021-08-07 12:58:15'),
(27748, 'id', 'Add Your Cart Base Coupon', 'Add Your Cart Base Coupon', '2021-08-07 12:58:28', '2021-08-07 12:58:28'),
(27749, 'id', 'Coupon code', 'Coupon code', '2021-08-07 12:58:28', '2021-08-07 12:58:28'),
(27750, 'id', 'Minimum Shopping', 'Minimum Shopping', '2021-08-07 12:58:28', '2021-08-07 12:58:28'),
(27751, 'id', 'Maximum Discount Amount', 'Maximum Discount Amount', '2021-08-07 12:58:28', '2021-08-07 12:58:28'),
(27752, 'id', 'Add Your Product Base Coupon', 'Add Your Product Base Coupon', '2021-08-07 13:00:13', '2021-08-07 13:00:13'),
(27753, 'id', 'Coupon has been saved successfully', 'Coupon has been saved successfully', '2021-08-07 13:02:10', '2021-08-07 13:02:10'),
(27754, 'id', 'Product Base', 'Product Base', '2021-08-07 13:02:11', '2021-08-07 13:02:11'),
(27755, 'id', 'Coupon has been applied', 'Coupon has been applied', '2021-08-07 13:02:23', '2021-08-07 13:02:23'),
(27756, 'id', 'Change Coupon', 'Change Coupon', '2021-08-07 13:02:24', '2021-08-07 13:02:24'),
(27757, 'id', 'Payment completed', 'Payment completed', '2021-08-07 13:03:13', '2021-08-07 13:03:13'),
(27758, 'id', 'Order code: 20210807-20031171 has been Placed', 'Order code: 20210807-20031171 has been Placed', '2021-08-07 13:03:14', '2021-08-07 13:03:14'),
(27759, 'id', ' pts', ' pts', '2021-08-07 13:07:54', '2021-08-07 13:07:54'),
(27760, 'id', 'No', 'No', '2021-08-07 13:07:54', '2021-08-07 13:07:54');
INSERT INTO `translations` (`id`, `lang`, `lang_key`, `lang_value`, `created_at`, `updated_at`) VALUES
(27761, 'id', 'Convert Now', 'Convert Now', '2021-08-07 13:07:54', '2021-08-07 13:07:54'),
(27762, 'id', 'Order code: 20210807-20031171 is Placed', 'Order code: 20210807-20031171 is Placed', '2021-08-07 13:11:32', '2021-08-07 13:11:32'),
(27763, 'id', 'Order not found', 'Order not found', '2021-08-07 13:15:17', '2021-08-07 13:15:17'),
(27764, 'id', 'Seller', 'Seller', '2021-08-07 13:18:23', '2021-08-07 13:18:23'),
(27765, 'id', 'Add New Seller', 'Add New Seller', '2021-08-07 13:25:10', '2021-08-07 13:25:10'),
(27766, 'id', 'Filter by Approval', 'Filter by Approval', '2021-08-07 13:25:10', '2021-08-07 13:25:10'),
(27767, 'id', 'Non-Approved', 'Non-Approved', '2021-08-07 13:25:10', '2021-08-07 13:25:10'),
(27768, 'id', 'Type name or email & Enter', 'Type name or email & Enter', '2021-08-07 13:25:10', '2021-08-07 13:25:10'),
(27769, 'id', 'Verification Info', 'Verification Info', '2021-08-07 13:25:10', '2021-08-07 13:25:10'),
(27770, 'id', 'Due to seller', 'Due to seller', '2021-08-07 13:25:10', '2021-08-07 13:25:10'),
(27771, 'id', 'Show', 'Show', '2021-08-07 13:25:10', '2021-08-07 13:25:10'),
(27772, 'id', 'Log in as this Seller', 'Log in as this Seller', '2021-08-07 13:25:11', '2021-08-07 13:25:11'),
(27773, 'id', 'Go to Payment', 'Go to Payment', '2021-08-07 13:25:11', '2021-08-07 13:25:11'),
(27774, 'id', 'Ban this seller', 'Ban this seller', '2021-08-07 13:25:11', '2021-08-07 13:25:11'),
(27775, 'id', 'Do you really want to ban this seller?', 'Do you really want to ban this seller?', '2021-08-07 13:25:11', '2021-08-07 13:25:11'),
(27776, 'id', 'Approved sellers updated successfully', 'Approved sellers updated successfully', '2021-08-07 13:25:11', '2021-08-07 13:25:11'),
(27777, 'id', 'Search product', 'Search product', '2021-08-07 13:25:15', '2021-08-07 13:25:15'),
(27778, 'id', 'Current Qty', 'Current Qty', '2021-08-07 13:25:15', '2021-08-07 13:25:15'),
(27779, 'id', 'Add Your Product', 'Add Your Product', '2021-08-07 13:25:34', '2021-08-07 13:25:34'),
(27780, 'id', 'Purchase price', 'Purchase price', '2021-08-07 13:25:36', '2021-08-07 13:25:36'),
(27781, 'id', 'Cash On Delivery activation is maintained by Admin.', 'Cash On Delivery activation is maintained by Admin.', '2021-08-07 13:25:36', '2021-08-07 13:25:36'),
(27782, 'id', 'Upload Product', 'Upload Product', '2021-08-07 13:25:37', '2021-08-07 13:25:37'),
(27783, 'id', 'Update your product', 'Update your product', '2021-08-07 14:10:19', '2021-08-07 14:10:19'),
(27784, 'id', 'Seller Verification', 'Seller Verification', '2021-08-07 14:22:41', '2021-08-07 14:22:41'),
(27785, 'id', 'Reject', 'Reject', '2021-08-07 14:22:41', '2021-08-07 14:22:41'),
(27786, 'id', 'Accept', 'Accept', '2021-08-07 14:22:41', '2021-08-07 14:22:41'),
(27787, 'id', 'User Info', 'User Info', '2021-08-07 14:22:41', '2021-08-07 14:22:41'),
(27788, 'id', 'Shop Info', 'Shop Info', '2021-08-07 14:22:41', '2021-08-07 14:22:41'),
(27789, 'id', 'Shop Name', 'Shop Name', '2021-08-07 14:22:41', '2021-08-07 14:22:41'),
(27790, 'id', 'Click here', 'Click here', '2021-08-07 14:22:41', '2021-08-07 14:22:41'),
(27791, 'id', 'Edit Seller Information', 'Edit Seller Information', '2021-08-07 14:23:12', '2021-08-07 14:23:12'),
(27792, 'id', 'Seller Information', 'Seller Information', '2021-08-07 14:23:13', '2021-08-07 14:23:13'),
(27793, 'id', 'Commission History report', 'Commission History report', '2021-08-07 14:23:34', '2021-08-07 14:23:34'),
(27794, 'id', 'Choose Seller', 'Choose Seller', '2021-08-07 14:23:34', '2021-08-07 14:23:34'),
(27795, 'id', 'Admin Commission', 'Admin Commission', '2021-08-07 14:23:34', '2021-08-07 14:23:34'),
(27796, 'id', 'Seller Earning', 'Seller Earning', '2021-08-07 14:23:34', '2021-08-07 14:23:34'),
(27797, 'id', 'Created At', 'Created At', '2021-08-07 14:23:34', '2021-08-07 14:23:34'),
(27798, 'id', 'Pending Balance', 'Pending Balance', '2021-08-07 14:23:40', '2021-08-07 14:23:40'),
(27799, 'id', 'Send Withdraw Request', 'Send Withdraw Request', '2021-08-07 14:23:40', '2021-08-07 14:23:40'),
(27800, 'id', 'Withdraw Request history', 'Withdraw Request history', '2021-08-07 14:23:40', '2021-08-07 14:23:40'),
(27801, 'id', 'Message', 'Message', '2021-08-07 14:23:41', '2021-08-07 14:23:41'),
(27802, 'id', 'Send A Withdraw Request', 'Send A Withdraw Request', '2021-08-07 14:23:41', '2021-08-07 14:23:41'),
(27803, 'en', 'Order code: 20210807-20031171 is Placed', 'Order code: 20210807-20031171 is Placed', '2021-08-07 14:23:46', '2021-08-07 14:23:46'),
(27804, 'en', 'Order code: 20210807-16444168 is Delivered', 'Order code: 20210807-16444168 is Delivered', '2021-08-07 14:23:46', '2021-08-07 14:23:46'),
(27805, 'en', 'Order code: 20210807-16444168 is On the way', 'Order code: 20210807-16444168 is On the way', '2021-08-07 14:23:46', '2021-08-07 14:23:46'),
(27806, 'en', 'Order code: 20210807-16444168 is Paid', 'Order code: 20210807-16444168 is Paid', '2021-08-07 14:23:46', '2021-08-07 14:23:46'),
(27807, 'en', 'Order code: 20210807-16444168 is Unpaid', 'Order code: 20210807-16444168 is Unpaid', '2021-08-07 14:23:46', '2021-08-07 14:23:46'),
(27808, 'en', 'Order code: 20210807-16444168 is Placed', 'Order code: 20210807-16444168 is Placed', '2021-08-07 14:23:46', '2021-08-07 14:23:46'),
(27809, 'id', 'Seller Withdraw Request', 'Seller Withdraw Request', '2021-08-07 14:23:53', '2021-08-07 14:23:53'),
(27810, 'id', 'Total Amount to Pay', 'Total Amount to Pay', '2021-08-07 14:23:54', '2021-08-07 14:23:54'),
(27811, 'id', 'Requested Amount', 'Requested Amount', '2021-08-07 14:23:54', '2021-08-07 14:23:54'),
(27812, 'id', 'Seller Payments', 'Seller Payments', '2021-08-07 14:25:09', '2021-08-07 14:25:09'),
(27813, 'id', 'Payment Details', 'Payment Details', '2021-08-07 14:25:09', '2021-08-07 14:25:09'),
(27814, 'id', 'You do not have enough balance to send withdraw request', 'You do not have enough balance to send withdraw request', '2021-08-07 14:25:50', '2021-08-07 14:25:50'),
(27815, 'id', 'Text Input', 'Text Input', '2021-08-07 14:32:29', '2021-08-07 14:32:29'),
(27816, 'id', 'Select', 'Select', '2021-08-07 14:32:29', '2021-08-07 14:32:29'),
(27817, 'id', 'Multiple Select', 'Multiple Select', '2021-08-07 14:32:29', '2021-08-07 14:32:29'),
(27818, 'id', 'Radio', 'Radio', '2021-08-07 14:32:29', '2021-08-07 14:32:29'),
(27819, 'id', 'Select Label', 'Select Label', '2021-08-07 14:32:29', '2021-08-07 14:32:29'),
(27820, 'id', 'Multiple Select Label', 'Multiple Select Label', '2021-08-07 14:32:29', '2021-08-07 14:32:29'),
(27821, 'id', 'Radio Label', 'Radio Label', '2021-08-07 14:32:29', '2021-08-07 14:32:29'),
(27822, 'id', 'Verification form updated successfully', 'Verification form updated successfully', '2021-08-07 14:36:41', '2021-08-07 14:36:41'),
(27823, 'id', 'Invalid email or password', 'Invalid email or password', '2021-08-07 17:03:30', '2021-08-07 17:03:30'),
(27824, 'id', 'Message has been send to seller', 'Message has been send to seller', '2021-08-07 17:13:10', '2021-08-07 17:13:10'),
(27825, 'id', 'Coupon expired!', 'Coupon expired!', '2021-08-07 17:17:31', '2021-08-07 17:17:31'),
(27826, 'id', 'Conversations With ', 'Conversations With ', '2021-08-07 17:24:50', '2021-08-07 17:24:50'),
(27827, 'id', 'Between you and', 'Between you and', '2021-08-07 17:24:50', '2021-08-07 17:24:50'),
(27828, 'id', 'Type your reply', 'Type your reply', '2021-08-07 17:24:50', '2021-08-07 17:24:50'),
(27829, 'id', 'of seller product price will be deducted from seller earnings', 'of seller product price will be deducted from seller earnings', '2021-08-07 17:37:13', '2021-08-07 17:37:13'),
(27830, 'id', 'This commission only works when Category Based Commission is turned off from Business Settings', 'This commission only works when Category Based Commission is turned off from Business Settings', '2021-08-07 17:37:13', '2021-08-07 17:37:13'),
(27831, 'id', 'Seller Commission updated successfully', 'Seller Commission updated successfully', '2021-08-07 17:39:56', '2021-08-07 17:39:56'),
(27832, 'id', 'Order code: 20210808-00403980 has been Placed', 'Order code: 20210808-00403980 has been Placed', '2021-08-07 17:40:42', '2021-08-07 17:40:42'),
(27833, 'id', 'Your payment data has been submitted successfully', 'Your payment data has been submitted successfully', '2021-08-07 17:43:29', '2021-08-07 17:43:29'),
(27834, 'id', 'Contact', 'Contact', '2021-08-07 17:47:21', '2021-08-07 17:47:21'),
(27835, 'id', 'Order status has been updated', 'Order status has been updated', '2021-08-07 17:47:22', '2021-08-07 17:47:22'),
(27836, 'id', 'Order code: 20210808-00403980 is Placed', 'Order code: 20210808-00403980 is Placed', '2021-08-07 17:48:21', '2021-08-07 17:48:21'),
(27837, 'id', 'Payment Information', 'Payment Information', '2021-08-07 17:49:00', '2021-08-07 17:49:00'),
(27838, 'id', 'TRX ID', 'TRX ID', '2021-08-07 17:49:00', '2021-08-07 17:49:00'),
(27839, 'en', 'You do not have enough balance to send withdraw request', 'You do not have enough balance to send withdraw request', '2021-08-07 17:49:08', '2021-08-07 17:49:08'),
(27840, 'en', 'Order code: 20210808-00403980 has been Placed', 'Order code: 20210808-00403980 has been Placed', '2021-08-07 17:49:09', '2021-08-07 17:49:09'),
(27841, 'id', 'Order code: 20210808-00403980 is Paid', 'Order code: 20210808-00403980 is Paid', '2021-08-07 17:49:58', '2021-08-07 17:49:58'),
(27842, 'id', 'Order code: 20210808-00403980 has been Confirmed', 'Order code: 20210808-00403980 has been Confirmed', '2021-08-07 17:50:18', '2021-08-07 17:50:18'),
(27843, 'id', 'Order code: 20210808-00403980 has been Paid', 'Order code: 20210808-00403980 has been Paid', '2021-08-07 17:50:18', '2021-08-07 17:50:18'),
(27844, 'id', 'Order: ', 'Order: ', '2021-08-07 17:54:02', '2021-08-07 17:54:02'),
(27845, 'id', ' has been Confirmed', ' has been Confirmed', '2021-08-07 17:54:02', '2021-08-07 17:54:02'),
(27846, 'id', ' has been Paid', ' has been Paid', '2021-08-07 17:54:02', '2021-08-07 17:54:02'),
(27847, 'en', 'Order: ', 'Order: ', '2021-08-07 17:54:29', '2021-08-07 17:54:29'),
(27848, 'en', ' has been On delivery', ' has been On delivery', '2021-08-07 17:54:29', '2021-08-07 17:54:29'),
(27849, 'en', ' has been Confirmed', ' has been Confirmed', '2021-08-07 17:54:29', '2021-08-07 17:54:29'),
(27850, 'en', ' has been Paid', ' has been Paid', '2021-08-07 17:54:29', '2021-08-07 17:54:29'),
(27851, 'en', ' has been Placed', ' has been Placed', '2021-08-07 17:54:29', '2021-08-07 17:54:29'),
(27852, 'en', 'Order code: 20210808-00403980 has been On delivery', 'Order code: 20210808-00403980 has been On delivery', '2021-08-07 17:54:31', '2021-08-07 17:54:31'),
(27853, 'en', 'Order code: 20210808-00403980 is On delivery', 'Order code: 20210808-00403980 is On delivery', '2021-08-07 17:54:54', '2021-08-07 17:54:54'),
(27854, 'en', 'Order code: 20210808-00403980 is Confirmed', 'Order code: 20210808-00403980 is Confirmed', '2021-08-07 17:54:54', '2021-08-07 17:54:54'),
(27855, 'en', 'Order code: 20210808-00403980 is Paid', 'Order code: 20210808-00403980 is Paid', '2021-08-07 17:54:54', '2021-08-07 17:54:54'),
(27856, 'en', 'Order code: 20210808-00403980 is Placed', 'Order code: 20210808-00403980 is Placed', '2021-08-07 17:54:54', '2021-08-07 17:54:54'),
(27857, 'id', 'on_delivery', 'on_delivery', '2021-08-07 17:55:53', '2021-08-07 17:55:53'),
(27858, 'id', 'Order code: 20210808-00403980 has been On the way', 'Order code: 20210808-00403980 has been On the way', '2021-08-07 17:58:18', '2021-08-07 17:58:18'),
(27859, 'id', 'on_the_way', 'on_the_way', '2021-08-07 17:58:55', '2021-08-07 17:58:55'),
(27860, 'id', 'Order code: 20210808-00403980 is On the way', 'Order code: 20210808-00403980 is On the way', '2021-08-08 05:28:30', '2021-08-08 05:28:30'),
(27861, 'id', 'Order code: 20210808-00403980 is Confirmed', 'Order code: 20210808-00403980 is Confirmed', '2021-08-08 05:28:30', '2021-08-08 05:28:30'),
(27862, 'id', 'Order code: 20210808-00403980 is On delivery', 'Order code: 20210808-00403980 is On delivery', '2021-08-08 05:28:30', '2021-08-08 05:28:30'),
(27863, 'en', 'Order code: 20210808-00403980 has been Confirmed', 'Order code: 20210808-00403980 has been Confirmed', '2021-08-08 05:39:54', '2021-08-08 05:39:54'),
(27864, 'en', 'Order code: 20210808-00403980 has been On the way', 'Order code: 20210808-00403980 has been On the way', '2021-08-08 05:39:54', '2021-08-08 05:39:54'),
(27865, 'id', 'Order code: 20210808-00403980 has been On delivery', 'Order code: 20210808-00403980 has been On delivery', '2021-08-08 05:46:01', '2021-08-08 05:46:01'),
(27866, 'id', 'Order code: 20210808-00403980 has been Unpaid', 'Order code: 20210808-00403980 has been Unpaid', '2021-08-08 05:55:50', '2021-08-08 05:55:50'),
(27867, 'id', 'Order code: 20210808-00403980 is Unpaid', 'Order code: 20210808-00403980 is Unpaid', '2021-08-08 06:13:01', '2021-08-08 06:13:01'),
(27868, 'id', 'Pay to seller', 'Pay to seller', '2021-08-08 06:15:46', '2021-08-08 06:15:46'),
(27869, 'id', 'Select Payment Method', 'Select Payment Method', '2021-08-08 06:15:46', '2021-08-08 06:15:46'),
(27870, 'id', 'Cash', 'Cash', '2021-08-08 06:15:46', '2021-08-08 06:15:46'),
(27871, 'id', 'Txn Code', 'Txn Code', '2021-08-08 06:15:47', '2021-08-08 06:15:47'),
(27872, 'id', 'Pay', 'Pay', '2021-08-08 06:15:47', '2021-08-08 06:15:47'),
(27873, 'en', 'Order code: 20210808-00403980 has been Pending', 'Order code: 20210808-00403980 has been Pending', '2021-08-08 06:41:46', '2021-08-08 06:41:46'),
(27874, 'en', 'Order code: 20210808-00403980 has been Paid', 'Order code: 20210808-00403980 has been Paid', '2021-08-08 06:41:46', '2021-08-08 06:41:46'),
(27875, 'en', 'Order code: 20210808-00403980 has been Unpaid', 'Order code: 20210808-00403980 has been Unpaid', '2021-08-08 06:41:46', '2021-08-08 06:41:46'),
(27876, 'id', 'Order code: 20210808-00403980 has been Pending', 'Order code: 20210808-00403980 has been Pending', '2021-08-08 06:44:58', '2021-08-08 06:44:58'),
(27877, 'id', 'Order placed', 'Order placed', '2021-08-08 07:09:29', '2021-08-08 07:09:29'),
(27878, 'id', 'Order code: 20210808-00403980 has been Delivered', 'Order code: 20210808-00403980 has been Delivered', '2021-08-08 11:37:58', '2021-08-08 11:37:58'),
(27879, 'en', '', '', '2021-08-08 11:38:13', '2021-08-08 11:38:13'),
(27880, 'en', 'Order code: 20210808-00403980 has been ', 'Order code: 20210808-00403980 has been ', '2021-08-08 11:38:14', '2021-08-08 11:38:14'),
(27881, 'en', 'Order code: 20210808-00403980 has been Delivered', 'Order code: 20210808-00403980 has been Delivered', '2021-08-08 11:38:14', '2021-08-08 11:38:14'),
(27882, 'id', NULL, NULL, '2021-08-08 11:38:24', '2021-08-08 11:38:24'),
(27883, 'id', 'Order code: 20210808-00403980 is ', 'Order code: 20210808-00403980 is ', '2021-08-08 11:38:52', '2021-08-08 11:38:52'),
(27884, 'id', 'Order code: 20210808-00403980 is Delivered', 'Order code: 20210808-00403980 is Delivered', '2021-08-08 11:38:52', '2021-08-08 11:38:52'),
(27885, 'id', 'Order code: 20210808-00403980 is Pending', 'Order code: 20210808-00403980 is Pending', '2021-08-08 11:38:52', '2021-08-08 11:38:52'),
(27886, 'id', 'Order code: 20210808-00403980 has been ', 'Order code: 20210808-00403980 has been ', '2021-08-08 11:40:12', '2021-08-08 11:40:12'),
(27887, 'id', 'Done', 'Done', '2021-08-08 11:40:23', '2021-08-08 11:40:23'),
(27888, 'id', 'INVOICE', 'INVOICE', '2021-08-10 02:26:50', '2021-08-10 02:26:50'),
(27889, 'id', 'Bill to', 'Bill to', '2021-08-10 02:26:50', '2021-08-10 02:26:50'),
(27890, 'id', 'Total Tax', 'Total Tax', '2021-08-10 02:26:51', '2021-08-10 02:26:51'),
(27891, 'id', 'Grand Total', 'Grand Total', '2021-08-10 02:26:51', '2021-08-10 02:26:51'),
(27892, 'id', 'Order code: 20210808-00403980 is Picked up', 'Order code: 20210808-00403980 is Picked up', '2021-08-10 11:56:40', '2021-08-10 11:56:40'),
(27893, 'id', 'picked_up', 'picked_up', '2021-08-10 11:59:06', '2021-08-10 11:59:06'),
(27894, 'en', 'Payment Information', 'Payment Information', '2021-08-10 12:37:03', '2021-08-10 12:37:03'),
(27895, 'en', 'TRX ID', 'TRX ID', '2021-08-10 12:37:03', '2021-08-10 12:37:03'),
(27896, 'en', 'Order code: 20210808-00403980 is On the way', 'Order code: 20210808-00403980 is On the way', '2021-08-10 12:37:06', '2021-08-10 12:37:06'),
(27897, 'en', 'Order code: 20210808-00403980 is Picked up', 'Order code: 20210808-00403980 is Picked up', '2021-08-10 12:37:06', '2021-08-10 12:37:06'),
(27898, 'en', 'Order code: 20210808-00403980 is Delivered', 'Order code: 20210808-00403980 is Delivered', '2021-08-10 12:37:07', '2021-08-10 12:37:07'),
(27899, 'en', 'Order code: 20210808-00403980 is ', 'Order code: 20210808-00403980 is ', '2021-08-10 12:37:07', '2021-08-10 12:37:07'),
(27900, 'en', 'Order code: 20210808-00403980 is Pending', 'Order code: 20210808-00403980 is Pending', '2021-08-10 12:37:07', '2021-08-10 12:37:07'),
(27901, 'en', 'Order code: 20210808-00403980 is Unpaid', 'Order code: 20210808-00403980 is Unpaid', '2021-08-10 12:37:07', '2021-08-10 12:37:07'),
(27902, 'id', 'Order code: 20210808-00403980 has been Picked up', 'Order code: 20210808-00403980 has been Picked up', '2021-08-10 12:52:44', '2021-08-10 12:52:44'),
(27903, 'en', 'Order code: 20210808-00403980 has been Picked up', 'Order code: 20210808-00403980 has been Picked up', '2021-08-10 13:05:47', '2021-08-10 13:05:47'),
(27904, 'id', 'Order code: 20210810-22424361 has been Placed', 'Order code: 20210810-22424361 has been Placed', '2021-08-10 15:42:47', '2021-08-10 15:42:47'),
(27905, 'id', 'Order code: 20210810-22424361 is Placed', 'Order code: 20210810-22424361 is Placed', '2021-08-10 15:47:59', '2021-08-10 15:47:59'),
(27906, 'en', 'Order code: 20210810-22424361 has been Placed', 'Order code: 20210810-22424361 has been Placed', '2021-08-10 15:49:01', '2021-08-10 15:49:01'),
(27907, 'id', 'Order code: INV-20210810-22493762 has been Placed', 'Order code: INV-20210810-22493762 has been Placed', '2021-08-10 15:49:39', '2021-08-10 15:49:39'),
(27908, 'id', 'Order code: INV-20210810-22493762 is Placed', 'Order code: INV-20210810-22493762 is Placed', '2021-08-10 15:49:55', '2021-08-10 15:49:55'),
(27909, 'en', 'Order code: INV-20210810-22493762 has been Placed', 'Order code: INV-20210810-22493762 has been Placed', '2021-08-10 15:53:56', '2021-08-10 15:53:56'),
(27910, 'id', 'Order code: INV-20210810-22543661 has been Placed', 'Order code: INV-20210810-22543661 has been Placed', '2021-08-10 15:54:40', '2021-08-10 15:54:40'),
(27911, 'id', 'Order code: INV-20210810-22543661 is Placed', 'Order code: INV-20210810-22543661 is Placed', '2021-08-10 15:57:09', '2021-08-10 15:57:09'),
(27912, 'en', 'Order code: INV-20210810-22543661 is Paid', 'Order code: INV-20210810-22543661 is Paid', '2021-08-10 15:58:07', '2021-08-10 15:58:07'),
(27913, 'en', 'Order code: INV-20210810-22543661 is Placed', 'Order code: INV-20210810-22543661 is Placed', '2021-08-10 15:58:07', '2021-08-10 15:58:07'),
(27914, 'en', 'Order code: INV-20210810-22493762 is Placed', 'Order code: INV-20210810-22493762 is Placed', '2021-08-10 15:58:07', '2021-08-10 15:58:07'),
(27915, 'en', 'Order code: 20210810-22424361 is Placed', 'Order code: 20210810-22424361 is Placed', '2021-08-10 15:58:07', '2021-08-10 15:58:07'),
(27916, 'id', 'Order code: INV-20210810-22543661 has been Paid', 'Order code: INV-20210810-22543661 has been Paid', '2021-08-10 15:58:15', '2021-08-10 15:58:15'),
(27917, 'id', 'Order code: INV-20210810-22543661 is Paid', 'Order code: INV-20210810-22543661 is Paid', '2021-08-11 05:11:41', '2021-08-11 05:11:41'),
(27918, 'id', 'Product has been deleted successfully', 'Product has been deleted successfully', '2021-08-11 05:14:23', '2021-08-11 05:14:23'),
(27919, 'id', 'Add New Post', 'Add New Post', '2021-08-11 05:20:07', '2021-08-11 05:20:07'),
(27920, 'id', 'All blog posts', 'All blog posts', '2021-08-11 05:20:07', '2021-08-11 05:20:07'),
(27921, 'id', 'Short Description', 'Short Description', '2021-08-11 05:20:07', '2021-08-11 05:20:07'),
(27922, 'id', 'Change blog status successfully', 'Change blog status successfully', '2021-08-11 05:20:07', '2021-08-11 05:20:07'),
(27923, 'id', 'Blog Information', 'Blog Information', '2021-08-11 05:20:28', '2021-08-11 05:20:28'),
(27924, 'id', 'Blog Title', 'Blog Title', '2021-08-11 05:20:28', '2021-08-11 05:20:28'),
(27925, 'id', 'Meta Keywords', 'Meta Keywords', '2021-08-11 05:20:28', '2021-08-11 05:20:28'),
(27926, 'id', 'All Blog Categories', 'All Blog Categories', '2021-08-11 05:20:59', '2021-08-11 05:20:59'),
(27927, 'id', 'Blog Categories', 'Blog Categories', '2021-08-11 05:20:59', '2021-08-11 05:20:59'),
(27928, 'id', 'Blog Category Information', 'Blog Category Information', '2021-08-11 05:23:20', '2021-08-11 05:23:20'),
(27929, 'id', 'Blog category has been created successfully', 'Blog category has been created successfully', '2021-08-11 05:23:54', '2021-08-11 05:23:54'),
(27930, 'id', 'Blog post has been created successfully', 'Blog post has been created successfully', '2021-08-11 05:50:27', '2021-08-11 05:50:27'),
(27931, 'id', 'Blog', 'Blog', '2021-08-11 05:50:53', '2021-08-11 05:50:53'),
(27932, 'id', 'View More', 'View More', '2021-08-11 05:50:53', '2021-08-11 05:50:53'),
(27933, 'id', 'Page Content', 'Page Content', '2021-08-11 05:55:22', '2021-08-11 05:55:22'),
(27934, 'id', 'Link', 'Link', '2021-08-11 05:55:22', '2021-08-11 05:55:22'),
(27935, 'id', 'Use character, number, hypen only', 'Use character, number, hypen only', '2021-08-11 05:55:22', '2021-08-11 05:55:22'),
(27936, 'id', 'Add Content', 'Add Content', '2021-08-11 05:55:22', '2021-08-11 05:55:22'),
(27937, 'id', 'Seo Fields', 'Seo Fields', '2021-08-11 05:55:22', '2021-08-11 05:55:22'),
(27938, 'id', 'Save Page', 'Save Page', '2021-08-11 05:55:23', '2021-08-11 05:55:23'),
(27939, 'id', 'Seller Policy', 'Seller Policy', '2021-08-11 05:56:44', '2021-08-11 05:56:44'),
(27940, 'id', 'Edit Page Information', 'Edit Page Information', '2021-08-11 05:57:47', '2021-08-11 05:57:47'),
(27941, 'id', 'Content..', 'Content..', '2021-08-11 05:57:48', '2021-08-11 05:57:48'),
(27942, 'id', 'Update Page', 'Update Page', '2021-08-11 05:57:48', '2021-08-11 05:57:48'),
(27943, 'id', 'Featured Image', 'Featured Image', '2021-08-11 12:33:10', '2021-08-11 12:33:10'),
(27944, 'id', 'Post Title', 'Post Title', '2021-08-11 12:33:10', '2021-08-11 12:33:10'),
(27945, 'id', 'Views', 'Views', '2021-08-11 12:33:10', '2021-08-11 12:33:10'),
(27946, 'id', 'Edit Confirmation', 'Edit Confirmation', '2021-08-14 11:22:42', '2021-08-14 11:22:42'),
(27947, 'id', 'Are you sure to edit this?', 'Are you sure to edit this?', '2021-08-14 11:22:42', '2021-08-14 11:22:42'),
(27948, 'id', 'New category', 'New category', '2021-08-14 16:09:11', '2021-08-14 16:09:11'),
(27949, 'id', 'Source', 'Source', '2021-08-15 05:41:12', '2021-08-15 05:41:12'),
(27950, 'id', 'Select Unit', 'Select Unit', '2021-08-15 08:48:37', '2021-08-15 08:48:37'),
(27951, 'id', 'Discount Price', 'Discount Price', '2021-08-16 07:39:41', '2021-08-16 07:39:41'),
(27952, 'en', 'Product approval update successfully', 'Product approval update successfully', '2021-08-18 09:45:32', '2021-08-18 09:45:32'),
(27953, 'en', 'Select Date', 'Select Date', '2021-08-18 11:52:51', '2021-08-18 11:52:51'),
(27954, 'en', 'Cash On Delivery option is disabled. Activate this feature from here', 'Cash On Delivery option is disabled. Activate this feature from here', '2021-08-18 11:52:52', '2021-08-18 11:52:52'),
(27955, 'id', 'All Notifications', 'All Notifications', '2021-08-18 13:10:29', '2021-08-18 13:10:29'),
(27956, 'id', ' has been On delivery', ' has been On delivery', '2021-08-18 13:10:29', '2021-08-18 13:10:29'),
(27957, 'id', ' has been On the way', ' has been On the way', '2021-08-18 13:10:29', '2021-08-18 13:10:29'),
(27958, 'id', ' has been Picked up', ' has been Picked up', '2021-08-18 13:10:29', '2021-08-18 13:10:29'),
(27959, 'id', ' has been Delivered', ' has been Delivered', '2021-08-18 13:10:29', '2021-08-18 13:10:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `file_original_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `extension` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `uploads`
--

INSERT INTO `uploads` (`id`, `file_original_name`, `file_name`, `user_id`, `file_size`, `extension`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'logo_cvbaru', 'uploads/all/C5kEJ62IYSV6OsngzYjrOQwuZ4QFn5AS7QVPfuQC.png', 9, 4898, 'png', 'image', '2021-08-06 02:37:05', '2021-08-06 02:37:05', NULL),
(2, 'favicon-32x32', 'uploads/all/Ae4IZXKZOeWV8WUYJi6QDX6bKqAqLQcFuGq7Rmzd.png', 9, 3619, 'png', 'image', '2021-08-06 02:37:09', '2021-08-06 02:37:09', NULL),
(3, 'bca-min', 'uploads/all/dCwM2gjP1ugYhGKGeXfonriBZEKp4TGOGxevbagQ.svg', 9, 8806, 'svg', 'image', '2021-08-06 02:38:17', '2021-08-06 02:38:17', NULL),
(4, 'mandiri-min', 'uploads/all/QfrCsrOAzn8U3OgRz4hH1gE6UxNRJesvYNIK8FpY.svg', 9, 4716, 'svg', 'image', '2021-08-06 02:38:23', '2021-08-06 02:38:23', NULL),
(5, 'header banner', 'uploads/all/uMasRBXzsPOmGbXhcHMQ6JPEGjgQ6RP10xf8k2Ty.png', 9, 45425, 'png', 'image', '2021-08-06 02:38:46', '2021-08-06 02:38:46', NULL),
(6, 'payment', 'uploads/all/x0wFSr7SvfhNBNCyvP7T4rEB7utUeHgpPRXM90Mm.png', 9, 30514, 'png', 'image', '2021-08-06 02:39:04', '2021-08-06 02:39:04', NULL),
(7, 'Icon-Artificial-Flower', 'uploads/all/5xkxYJOIZLvm0FDUWgCjdXxMpMo7LqYiGkPMfazT.svg', 9, 45028, 'svg', 'image', '2021-08-06 02:39:10', '2021-08-06 02:39:10', NULL),
(8, 'Icon-Brand-Bouquet', 'uploads/all/skZinsoVB8tpMlr78ZrbvSINIJQSCjrR6t65CpLv.svg', 9, 14679, 'svg', 'image', '2021-08-06 02:39:13', '2021-08-06 02:39:13', NULL),
(9, 'Icon-Brand-Bunga-Bang', 'uploads/all/lJU5wS9y21MquY7kcJLx9QoOoV4DR8rbQSYNltBU.svg', 9, 10411, 'svg', 'image', '2021-08-06 02:39:19', '2021-08-06 02:39:19', NULL),
(10, 'Icon-Brand-Cake', 'uploads/all/k4Rk5ZpSIzJ81d17eMyBptiB5rqXuJkNoodcBuex.svg', 9, 6841, 'svg', 'image', '2021-08-06 02:39:19', '2021-08-06 02:39:19', NULL),
(11, 'Icon-Brand-Bunga-Meja', 'uploads/all/8bechlbZttQzAXTh14WXFViNLuJ0qtJ5qoDDaTpW.svg', 9, 4135, 'svg', 'image', '2021-08-06 02:39:19', '2021-08-06 02:39:19', NULL),
(12, 'Icon-Brand-Bunga-Box', 'uploads/all/0Qqqvq8wXP9mwk4aMtnyEOG8uSuDv5yAeI8bFBJD.svg', 9, 15359, 'svg', 'image', '2021-08-06 02:39:19', '2021-08-06 02:39:19', NULL),
(13, 'Icon-Brand-Dried-Flower', 'uploads/all/mEAltuAaABUU64PxoDE4RhxiOLr3WGW9oqSKE9uc.svg', 9, 13330, 'svg', 'image', '2021-08-06 02:39:19', '2021-08-06 02:39:19', NULL),
(14, 'Icon-Brand-Bunga-Papan', 'uploads/all/Xh6vMxwtDXL8UCVypz3uM1pAfArnxyl7HOpfHdgo.svg', 9, 11166, 'svg', 'image', '2021-08-06 02:39:19', '2021-08-06 02:39:19', NULL),
(15, 'Icon-Brand-Parcel-Buah', 'uploads/all/y6l5mNhFLNhU2Q7zpVhtjdThPgp68E2hY50WwrHB.svg', 9, 7827, 'svg', 'image', '2021-08-06 02:39:19', '2021-08-06 02:39:19', NULL),
(16, 'Icon-Moneycake', 'uploads/all/0RrefAGj1t8P6i3GiUlR9kBD0yJfiLQHdpoGXGvA.svg', 9, 21125, 'svg', 'image', '2021-08-06 02:39:19', '2021-08-06 02:39:19', NULL),
(17, 'bg admin', 'uploads/all/mzYG9Sv1Hj8eQzusvC36fWCFzNyw6BDMKyXvStDw.png', 9, 68127, 'png', 'image', '2021-08-06 02:39:55', '2021-08-06 02:39:55', NULL),
(18, 'slider2', 'uploads/all/BDlBVOa8mVQ0rwiGhkU7u8dgArfgW7gFLScw6Jgl.jpg', 9, 142270, 'jpg', 'image', '2021-08-06 09:49:20', '2021-08-06 09:49:20', NULL),
(19, 'slider3', 'uploads/all/GmeZueD36YAorUj5LAZjyen5NIW6bC8QSF8qPbLf.jpg', 9, 119121, 'jpg', 'image', '2021-08-06 09:49:26', '2021-08-06 09:49:26', NULL),
(20, 'home-2-banner-1', 'uploads/all/SU7Yx6Fmix8SOTYKWCyQzopReoutLvGlo3V7OgC4.jpg', 9, 20715, 'jpg', 'image', '2021-08-06 09:50:40', '2021-08-06 09:50:40', NULL),
(21, 'home-2-banner-2', 'uploads/all/1JYBWg4QHfTsNDr2VRSJNmBub7TbTLsKlDJ10OhH.jpg', 9, 22381, 'jpg', 'image', '2021-08-06 09:50:49', '2021-08-06 09:50:49', NULL),
(22, 'HappyWedding-min', 'uploads/all/74bkKEsnnxc0Juak6A0JU8Klx0pcpBelWBEQcXY7.png', 9, 43478, 'png', 'image', '2021-08-06 09:51:37', '2021-08-06 09:51:37', NULL),
(23, 'dukacita-min', 'uploads/all/7BKS9G4gL46habG7YboxFvep0FQjEEVMCYQsSGln.png', 9, 52788, 'png', 'image', '2021-08-06 09:51:43', '2021-08-06 09:51:43', NULL),
(24, 'congratulations-min', 'uploads/all/GVraWlNlWxyUDesrXMfhg3HuAApjOQ7jbixC5ybu.png', 9, 91292, 'png', 'image', '2021-08-06 09:51:43', '2021-08-06 09:51:43', NULL),
(25, 'best seller', 'uploads/all/Ic1Ymo38HU7o0741zNY6kY5o2fdvQc4ULJfAduhs.png', 9, 39723, 'png', 'image', '2021-08-06 11:38:23', '2021-08-06 11:38:23', NULL),
(26, 'map', 'uploads/all/dvs2yddeSCMcBMZo9eMhDMujkJ9xLFHmlsz7braA.png', 9, 1745, 'png', 'image', '2021-08-06 11:38:52', '2021-08-06 11:38:52', NULL),
(27, 'mapss', 'uploads/all/wVRlBg59lEwJbkQsIuvFefdy78qZtkDLdD29xYeU.png', 9, 19207, 'png', 'image', '2021-08-06 11:38:56', '2021-08-06 11:38:56', NULL),
(28, 'gift-svgrepo-com', 'uploads/all/0e9WMTkV4oH256Q21pSiZOFYAy4agHtx1MiuSZ9g.svg', 9, 2418, 'svg', 'image', '2021-08-07 01:44:28', '2021-08-07 01:44:28', NULL),
(29, 'BM-001', 'uploads/all/M3cCb4CiUAg1n3cFS7Nqulhg9GJDe6EMqyow4Mvp.jpg', 9, 37423, 'jpg', 'image', '2021-08-07 07:38:37', '2021-08-07 07:38:37', NULL),
(30, 'BM-005', 'uploads/all/OvijaeTJRwsZMxYbAHAm5w78UzH70R6Q63dj85xM.jpg', 9, 48565, 'jpg', 'image', '2021-08-07 07:38:37', '2021-08-07 07:38:37', NULL),
(31, 'BM-004', 'uploads/all/60RdD0k7OSILviIk1LOeffgI93CfhyCEPgVwJJEZ.jpg', 9, 41200, 'jpg', 'image', '2021-08-07 07:38:37', '2021-08-07 07:38:37', NULL),
(32, 'BM-003', 'uploads/all/AMSOsLCFdJTDx78aIiljDQh9WSFW8QyJRZQ62ECE.jpg', 9, 40911, 'jpg', 'image', '2021-08-07 07:38:37', '2021-08-07 07:38:37', NULL),
(33, 'BM-002', 'uploads/all/a8nM4DpHbnrgpCTMFfDfQEb1hdEfcSKEnbiwBeXa.jpg', 9, 37198, 'jpg', 'image', '2021-08-07 07:38:37', '2021-08-07 07:38:37', NULL),
(34, 'BM-006', 'uploads/all/EZkgnWm87KfbWPnWHs4aeugXpYA2wuyzY6419W9l.jpg', 9, 37157, 'jpg', 'image', '2021-08-07 07:38:37', '2021-08-07 07:38:37', NULL),
(35, 'BM-007', 'uploads/all/RN153gXLlyB7O0tDRH1oJxmWO9lGfE4UGPQX3mDV.jpg', 9, 37837, 'jpg', 'image', '2021-08-07 07:38:38', '2021-08-07 07:38:38', NULL),
(36, 'BM-009', 'uploads/all/jMZuq5OKeyYP6jtTFuiDaYfaKX0GgEw7AJyQa4BN.jpg', 9, 37908, 'jpg', 'image', '2021-08-07 07:38:38', '2021-08-07 07:38:38', NULL),
(37, 'BM-008', 'uploads/all/FMcQHUka4llskZCexxmsVl75G9FdRw2WnDMgUkHm.jpg', 9, 38256, 'jpg', 'image', '2021-08-07 07:38:38', '2021-08-07 07:38:38', NULL),
(38, 'BM-010', 'uploads/all/YjvjpMHZKZ2fti0Ebe4yyIO7oIDSboancIkRepcq.jpg', 9, 36569, 'jpg', 'image', '2021-08-07 07:38:38', '2021-08-07 07:38:38', NULL),
(39, 'BM-012', 'uploads/all/42KkKT8Q8nKcqDZ0hg0h1KfmKYTyeN8n6ey6h1Fm.jpg', 9, 44067, 'jpg', 'image', '2021-08-07 07:38:38', '2021-08-07 07:38:38', NULL),
(40, 'BM-011', 'uploads/all/fXlveK6QPseoLUuX53ydfJitOcxqcoXiwHaf2AP0.jpg', 9, 44114, 'jpg', 'image', '2021-08-07 07:38:38', '2021-08-07 07:38:38', NULL),
(41, 'BM-015', 'uploads/all/8iftqawT570UcYUpMAN92RM0uX35byZEKhbJJGEJ.jpg', 9, 38177, 'jpg', 'image', '2021-08-07 07:38:38', '2021-08-07 07:38:38', NULL),
(42, 'BM-014', 'uploads/all/qpjTAo12fRbQUOWEOlYxIX9JYwVqPuQnuTCDlKjP.jpg', 9, 37073, 'jpg', 'image', '2021-08-07 07:38:38', '2021-08-07 07:38:38', NULL),
(43, 'BM-013', 'uploads/all/z9bIr3Kvxh5PNBqfzBz74zm2X85mhbaQzVjSkXvg.jpg', 9, 38501, 'jpg', 'image', '2021-08-07 07:38:38', '2021-08-07 07:38:38', NULL),
(44, 'BM-016', 'uploads/all/guBq0Bfyj7r7Ya7XXvDxbyFb2l2FtCvVmWKU9Wgu.jpg', 9, 40112, 'jpg', 'image', '2021-08-07 07:38:39', '2021-08-07 07:38:39', NULL),
(45, 'BM-017', 'uploads/all/acgR33CNKwxyKTtUymDBxJvQmpizmoFfs27OfPnw.jpg', 9, 50320, 'jpg', 'image', '2021-08-07 07:38:39', '2021-08-07 07:38:39', NULL),
(46, 'BM-018', 'uploads/all/vqvAjp88r64kY0WhKEGf7K45NFWnxYWQ03Q5whyL.jpg', 9, 46806, 'jpg', 'image', '2021-08-07 07:38:39', '2021-08-07 07:38:39', NULL),
(47, 'BM-019', 'uploads/all/W5idiT624g9QTt97BHJ8muqh7zxBBluvTUblVLGX.jpg', 9, 45737, 'jpg', 'image', '2021-08-07 07:38:39', '2021-08-07 07:38:39', NULL),
(48, 'BM-020', 'uploads/all/hRzeQ6UzZ1SzTOcX4ZB8AwMWzt1O2rCNpTsXP0wi.jpg', 9, 44900, 'jpg', 'image', '2021-08-07 07:38:39', '2021-08-07 07:38:39', NULL),
(49, 'BM-022', 'uploads/all/aOQ4uBB6hvNuzelDv5FrZwe7z8VVDXWkF3cqHNVD.jpg', 9, 39717, 'jpg', 'image', '2021-08-07 07:38:39', '2021-08-07 07:38:39', NULL),
(50, 'BM-021', 'uploads/all/dqBAGWMr7NZR6QATo4Zeu17QBOUZPWW1ytyTc3LG.jpg', 9, 47847, 'jpg', 'image', '2021-08-07 07:38:39', '2021-08-07 07:38:39', NULL),
(51, 'BM-023', 'uploads/all/VICJH3enh103bfP44WbSK8xRiF7N70UgB8qqoGVp.jpg', 9, 40794, 'jpg', 'image', '2021-08-07 07:38:39', '2021-08-07 07:38:39', NULL),
(52, 'BM-025', 'uploads/all/a9rNEhoa3BW66mC7ssaUr9rDDM9ZeF1xuV5zMF9U.jpg', 9, 43068, 'jpg', 'image', '2021-08-07 07:38:40', '2021-08-07 07:38:40', NULL),
(53, 'BM-027', 'uploads/all/87rJjtoDV1E1cyEoGNjiQq2DWeODZIo5gmIUMNa4.jpg', 9, 36955, 'jpg', 'image', '2021-08-07 07:38:40', '2021-08-07 07:38:40', NULL),
(54, 'BM-024', 'uploads/all/HmbUh6LneEbHxQdu02iW5mBgLMFvwLmpgx9SuyUu.jpg', 9, 47593, 'jpg', 'image', '2021-08-07 07:38:40', '2021-08-07 07:38:40', NULL),
(55, 'BM-028', 'uploads/all/08pANA9I0RZ4Qh0RuSo4BUkE3jHhVYnS2aOxZTk6.jpg', 9, 44452, 'jpg', 'image', '2021-08-07 07:38:40', '2021-08-07 07:38:40', NULL),
(56, 'BM-026', 'uploads/all/3PQXIZBvVM6HHHukwxauYrOMV9uQFhR32FcpMecl.jpg', 9, 34029, 'jpg', 'image', '2021-08-07 07:38:40', '2021-08-07 07:38:40', NULL),
(57, 'BM-029', 'uploads/all/icGDdfvvNgwbAw1PJBuOm5OXbUfT7F23GEHixw9M.jpg', 9, 44784, 'jpg', 'image', '2021-08-07 07:38:40', '2021-08-07 07:38:40', NULL),
(58, 'BM-030', 'uploads/all/8WFBjsY9MvPnzvyQ6pj1CvH3vVlM2iw4xisOjMs1.jpg', 9, 37423, 'jpg', 'image', '2021-08-07 07:38:41', '2021-08-07 07:38:41', NULL),
(59, 'BM-031', 'uploads/all/Xm4X2XaiPresaVz4n9w9ybOD95mo6Nooa0idAQWm.jpg', 9, 44940, 'jpg', 'image', '2021-08-07 07:38:41', '2021-08-07 07:38:41', NULL),
(60, 'BM-032', 'uploads/all/eeoTlTC2rkPMbBoeD3eGyvx1Q07HuPbICqSVw8qj.jpg', 9, 44048, 'jpg', 'image', '2021-08-07 07:38:41', '2021-08-07 07:38:41', NULL),
(61, 'BW-004', 'uploads/all/Vf07ecv67U7QxLXCpvOJq5B3Ej2TtSPz2yPRXkBO.jpg', 9, 49573, 'jpg', 'image', '2021-08-07 07:39:08', '2021-08-07 07:39:08', NULL),
(62, 'BW-005', 'uploads/all/mNUE2Dpzz4A1rWd4ibgXgVeGqwxoapPurDM618Yv.jpg', 9, 45314, 'jpg', 'image', '2021-08-07 07:39:08', '2021-08-07 07:39:08', NULL),
(63, 'BW-003', 'uploads/all/HLOTJZezBKpjjXAha2vFgtKumOQrhDe6Xiur6tMV.jpg', 9, 42501, 'jpg', 'image', '2021-08-07 07:39:08', '2021-08-07 07:39:08', NULL),
(64, 'BW-002', 'uploads/all/4KaBmuqI1mYc7vVL019XjARGpJtOaMiF9HUv8QFD.jpg', 9, 45910, 'jpg', 'image', '2021-08-07 07:39:08', '2021-08-07 07:39:08', NULL),
(65, 'BW-001', 'uploads/all/qytIpFB2hD3kIA2LPHcYNgDRQm5zRc1pbZlzGG0O.jpg', 9, 44207, 'jpg', 'image', '2021-08-07 07:39:08', '2021-08-07 07:39:08', NULL),
(66, 'BW-006', 'uploads/all/yWyKIOnpMvnQrQJAUQlAiY8LJBO2GHc8HxGpTarK.jpg', 9, 52356, 'jpg', 'image', '2021-08-07 07:39:09', '2021-08-07 07:39:09', NULL),
(67, 'BW-008', 'uploads/all/BrS1XhwR2c1keP9fY7EaJ8D7QMzm6BmzcPiBgDIG.jpg', 9, 38728, 'jpg', 'image', '2021-08-07 07:39:09', '2021-08-07 07:39:09', NULL),
(68, 'BW-007', 'uploads/all/MSw8275H6Hcy6nA74wKca4NoobT4BkXq1ESDomN1.jpg', 9, 50147, 'jpg', 'image', '2021-08-07 07:39:09', '2021-08-07 07:39:09', NULL),
(69, 'BW-011', 'uploads/all/seCOl1GvEZYKYZhjRoETqtIfY3d8C0qQFPblJRQo.jpg', 9, 35191, 'jpg', 'image', '2021-08-07 07:39:09', '2021-08-07 07:39:09', NULL),
(70, 'BW-009', 'uploads/all/pMWiqdTEeBetBHF2NPgQQqPHGaemRcs0fZEZX1RE.jpg', 9, 40231, 'jpg', 'image', '2021-08-07 07:39:09', '2021-08-07 07:39:09', NULL),
(71, 'BW-010', 'uploads/all/2bUYowfRmTjaTmf6HtzND7shUSS1lq0c0PLuOreg.jpg', 9, 37485, 'jpg', 'image', '2021-08-07 07:39:09', '2021-08-07 07:39:09', NULL),
(72, 'BW-012', 'uploads/all/oNOJTPQxLMe7OZl53g8Nsz5BjMwQnvCMx2w3eXbB.jpg', 9, 37606, 'jpg', 'image', '2021-08-07 07:39:09', '2021-08-07 07:39:09', NULL),
(73, 'BW-014', 'uploads/all/M6wLZjvNfFyLRmGMXw30kIXVg5UDc54BrbzphKyg.jpg', 9, 37606, 'jpg', 'image', '2021-08-07 07:39:10', '2021-08-07 07:39:10', NULL),
(74, 'BW-013', 'uploads/all/HQc93k6zu1Uk86Jm1pf7ifeu6jbwVpPHoauTNSAX.jpg', 9, 43878, 'jpg', 'image', '2021-08-07 07:39:10', '2021-08-07 07:39:10', NULL),
(75, 'BW-015', 'uploads/all/OIf9sqPV9FntbwpL7GZDFRJtJwtGbFizdiTjBUT4.jpg', 9, 44286, 'jpg', 'image', '2021-08-07 07:39:10', '2021-08-07 07:39:10', NULL),
(76, 'BW-016', 'uploads/all/Wt31M4PuKZcYjhdOsyDopGcKCMs9dSLC8kejlgEq.jpg', 9, 44555, 'jpg', 'image', '2021-08-07 07:39:10', '2021-08-07 07:39:10', NULL),
(77, 'BW-017', 'uploads/all/AZ3n2Fi7htmBwXm4xTKqcoSg5hdYfMaPQqnGpaIu.jpg', 9, 38411, 'jpg', 'image', '2021-08-07 07:39:10', '2021-08-07 07:39:10', NULL),
(78, 'BW-018', 'uploads/all/JyyasDDGDjiIufdTEyHDfBuh07LniHikM9Hg7MVs.jpg', 9, 44612, 'jpg', 'image', '2021-08-07 07:39:10', '2021-08-07 07:39:10', NULL),
(79, 'BW-019', 'uploads/all/vSuinbIndn4lQKnQSHmv7FbJRsq30uBZ3jn6vK80.jpg', 9, 39797, 'jpg', 'image', '2021-08-07 07:39:11', '2021-08-07 07:39:11', NULL),
(80, 'BW-020', 'uploads/all/7qlYOJVfJehhaL1XqqPMXqV4ecD1F8maGU0AdknR.jpg', 9, 48442, 'jpg', 'image', '2021-08-07 07:39:11', '2021-08-07 07:39:11', NULL),
(81, 'BW-022', 'uploads/all/kOZNzlvuqkMFmZAiflZp4vtYf1THuNOSvkoVl7rr.jpg', 9, 43148, 'jpg', 'image', '2021-08-07 07:39:11', '2021-08-07 07:39:11', NULL),
(82, 'BW-021', 'uploads/all/hS3QvUfP2EOS6pgQwmAwNrW2JbvuHrOxdCOCtJPl.jpg', 9, 40803, 'jpg', 'image', '2021-08-07 07:39:11', '2021-08-07 07:39:11', NULL),
(83, 'BW-023', 'uploads/all/nOjIwLJzhjuJ3vb3rpj7hMMHJrwcJgGjInpvt5go.jpg', 9, 47974, 'jpg', 'image', '2021-08-07 07:39:11', '2021-08-07 07:39:11', NULL),
(84, 'BW-024', 'uploads/all/npRxfJOP5M3Z1ULM92Gx6Ujoc4acydxwXCH0xzpW.jpg', 9, 38598, 'jpg', 'image', '2021-08-07 07:39:11', '2021-08-07 07:39:11', NULL),
(85, 'BW-025', 'uploads/all/2jV5vp7VObaOS7UAXUihOzBUgy0yyCNzvMHnGPvv.jpg', 9, 42152, 'jpg', 'image', '2021-08-07 07:39:12', '2021-08-07 07:39:12', NULL),
(86, 'BW-029', 'uploads/all/PSBlCDnOd8E3rXttAcHo2jMjBQOg0xuWYe1Y2Che.jpg', 9, 42476, 'jpg', 'image', '2021-08-07 07:39:12', '2021-08-07 07:39:12', NULL),
(87, 'BW-026', 'uploads/all/ybKIn2oCOySEJRzcecsWSx8glrOLWOCWCgQ2FV9O.jpg', 9, 39482, 'jpg', 'image', '2021-08-07 07:39:12', '2021-08-07 07:39:12', NULL),
(88, 'BW-028', 'uploads/all/McR8EGjJid9l9glgu8D4EA4rdbyjOTUReS81f3mf.jpg', 9, 45825, 'jpg', 'image', '2021-08-07 07:39:12', '2021-08-07 07:39:12', NULL),
(89, 'BW-027', 'uploads/all/FB9QK1jDQt1fd25VzGwqlQisOaTJ1Xq694vYOfyV.jpg', 9, 43223, 'jpg', 'image', '2021-08-07 07:39:12', '2021-08-07 07:39:12', NULL),
(90, 'BW-030', 'uploads/all/0cVrIj2ss8q4BTl45YiwvM6gxz6edKv2aWrTo4km.jpg', 9, 46854, 'jpg', 'image', '2021-08-07 07:39:13', '2021-08-07 07:39:13', NULL),
(91, 'BW-032', 'uploads/all/RYPQEl0p6EW8bM1CAOv4VJ40HfdmHHHDRe4C1LBC.jpg', 9, 41690, 'jpg', 'image', '2021-08-07 07:39:13', '2021-08-07 07:39:13', NULL),
(92, 'BW-031', 'uploads/all/q1HHB9bHCYL0bEglBjnDlnp6CUTkTqE52mo3PBR5.jpg', 9, 45257, 'jpg', 'image', '2021-08-07 07:39:13', '2021-08-07 07:39:13', NULL),
(93, 'DC-001', 'uploads/all/bsCvmiQ0KzPz7unOBYBqTud6Etjyup1sIkmTIcLK.jpg', 9, 41577, 'jpg', 'image', '2021-08-07 07:39:20', '2021-08-07 07:39:20', NULL),
(94, 'DC-003', 'uploads/all/Ii50pBX9n351cffUiPmctdXr1tWz2G0cTOmOQiSA.jpg', 9, 39845, 'jpg', 'image', '2021-08-07 07:39:21', '2021-08-07 07:39:21', NULL),
(95, 'DC-002', 'uploads/all/J1vKnAqmOds9RTL4Emt2obch4uUksvY9vMQeq6u9.jpg', 9, 44781, 'jpg', 'image', '2021-08-07 07:39:21', '2021-08-07 07:39:21', NULL),
(96, 'DC-004', 'uploads/all/O5hd4IX8abTySdHYQkSADZLtnEiYLfIpizbqbPAG.jpg', 9, 44595, 'jpg', 'image', '2021-08-07 07:39:21', '2021-08-07 07:39:21', NULL),
(97, 'DC-006', 'uploads/all/b9dZuome01qvo2372tKpO2e3XPK6wAOb2RGofhdI.jpg', 9, 48103, 'jpg', 'image', '2021-08-07 07:39:21', '2021-08-07 07:39:21', NULL),
(98, 'DC-005', 'uploads/all/Xf6BDhRfwGCf57JpbQZrEHBaKGQz9nEojy1ueS51.jpg', 9, 40334, 'jpg', 'image', '2021-08-07 07:39:21', '2021-08-07 07:39:21', NULL),
(99, 'DC-007', 'uploads/all/rRveyPT2eQe14JLlFhPoUXY06VpDYLptv3JFxRkw.jpg', 9, 39250, 'jpg', 'image', '2021-08-07 07:39:21', '2021-08-07 07:39:21', NULL),
(100, 'DC-009', 'uploads/all/QIqcn9p0uBsBggLGsdcoyWIdAcT97FvAyAjy2Q2V.jpg', 9, 43538, 'jpg', 'image', '2021-08-07 07:39:21', '2021-08-07 07:39:21', NULL),
(101, 'DC-010', 'uploads/all/hxU8uBpLHM8eV2LYDGvm24htxlZ7PWElo6VUOCCe.jpg', 9, 42369, 'jpg', 'image', '2021-08-07 07:39:22', '2021-08-07 07:39:22', NULL),
(102, 'DC-008', 'uploads/all/RJRzlMixnaqVFHFG5WKrMM3zuGLFtna9xlTXTU5U.jpg', 9, 41228, 'jpg', 'image', '2021-08-07 07:39:22', '2021-08-07 07:39:22', NULL),
(103, 'DC-011', 'uploads/all/pBtFFHQnRz3MJpD1blxxlDBbj5vaGNfO7myhsOUe.jpg', 9, 48166, 'jpg', 'image', '2021-08-07 07:39:22', '2021-08-07 07:39:22', NULL),
(104, 'DC-012', 'uploads/all/0J3NHmEmEhNkJmdfQdnl4ukgf08nY9252r2jWxQA.jpg', 9, 41446, 'jpg', 'image', '2021-08-07 07:39:22', '2021-08-07 07:39:22', NULL),
(105, 'DC-013', 'uploads/all/7wuKxSm4PjTnc4UOJWlMVLIO2GajBREd4IHGuyfJ.jpg', 9, 45240, 'jpg', 'image', '2021-08-07 07:39:22', '2021-08-07 07:39:22', NULL),
(106, 'DC-015', 'uploads/all/QUcdM2P9prGBBpIDOIMZIOI0rtRf6HRv0jyY35vc.jpg', 9, 48288, 'jpg', 'image', '2021-08-07 07:39:22', '2021-08-07 07:39:22', NULL),
(107, 'DC-014', 'uploads/all/4f7EzzhypHnp9TGsQ7q5a5Cw4vjjScVhmGUffaRZ.jpg', 9, 52371, 'jpg', 'image', '2021-08-07 07:39:22', '2021-08-07 07:39:22', NULL),
(108, 'DC-016', 'uploads/all/sapfBkwIvduAiY3Z7cvJVE9GKuI3OE79vjSZ3dP8.jpg', 9, 42218, 'jpg', 'image', '2021-08-07 07:39:23', '2021-08-07 07:39:23', NULL),
(109, 'DC-019', 'uploads/all/IxmfAj62s5kEKwZytXcQtvY4X66DIsHHiiYRKgi9.jpg', 9, 46331, 'jpg', 'image', '2021-08-07 07:39:23', '2021-08-07 07:39:23', NULL),
(110, 'DC-018', 'uploads/all/MCjFtWw9GSQJflkCYZoWC9igIKV4hTbqj6eeEADo.jpg', 9, 46280, 'jpg', 'image', '2021-08-07 07:39:23', '2021-08-07 07:39:23', NULL),
(111, 'DC-017', 'uploads/all/JpywnlBUNu2OgUCURp0y6SArnF0HOJwcfqHKOxlG.jpg', 9, 48539, 'jpg', 'image', '2021-08-07 07:39:23', '2021-08-07 07:39:23', NULL),
(112, 'DC-020', 'uploads/all/2Yib5KNx52jZri3d4fqVmRNrcbPeSR0phHKFhNoG.jpg', 9, 50908, 'jpg', 'image', '2021-08-07 07:39:23', '2021-08-07 07:39:23', NULL),
(113, 'DC-021', 'uploads/all/IfKo5lKbCC4R4TPo1Tmv5l4I5bq6IQkmbCHkCG2d.jpg', 9, 52602, 'jpg', 'image', '2021-08-07 07:39:23', '2021-08-07 07:39:23', NULL),
(114, 'DC-022', 'uploads/all/NkAZ4p0Q7r2kcwxeU5nyxTmpD0Y7u6ZItWYzfaSl.jpg', 9, 47161, 'jpg', 'image', '2021-08-07 07:39:24', '2021-08-07 07:39:24', NULL),
(115, 'DC-023', 'uploads/all/wW5TCpdiQWeG1NsVtOOJWVBh3xD30bGL5gGIX5DG.jpg', 9, 49584, 'jpg', 'image', '2021-08-07 07:39:24', '2021-08-07 07:39:24', NULL),
(116, 'BN-004', 'uploads/all/L8Srark6E2xMAEpfk96Iy4PnprSZ8LR8xow8EXpM.jpg', 9, 18085, 'jpeg', 'image', '2021-08-07 07:39:46', '2021-08-07 07:39:46', NULL),
(117, 'BN-005', 'uploads/all/3AE1dKgb8VAYAlKgABaMSGiNRdUXjICZtqB1qLrL.jpg', 9, 28238, 'jpeg', 'image', '2021-08-07 07:39:46', '2021-08-07 07:39:46', NULL),
(118, 'BN-003', 'uploads/all/m0b61eewtzs1qPTbJi5NRMF69FG8bhm8cTfl86pn.jpg', 9, 17880, 'jpeg', 'image', '2021-08-07 07:39:46', '2021-08-07 07:39:46', NULL),
(119, 'BN-001', 'uploads/all/i63PeQY2sOR6cYy37jXUqNqA0hKu28iz3Y0jVT5p.jpg', 9, 34044, 'jpeg', 'image', '2021-08-07 07:39:46', '2021-08-07 07:39:46', NULL),
(120, 'BN-002', 'uploads/all/Eya4PrIFjdRy4IilItlOGbdjrxlMIe5LEOJ70q2K.jpg', 9, 18085, 'jpeg', 'image', '2021-08-07 07:39:46', '2021-08-07 07:39:46', NULL),
(121, 'BN-006', 'uploads/all/DNMsPsIAJZ1iGi5C0qGfEqIokz2BFWXugRH2u96d.jpg', 9, 22360, 'jpeg', 'image', '2021-08-07 07:39:46', '2021-08-07 07:39:46', NULL),
(122, 'BN-009', 'uploads/all/Aave4Jne0dTPjfNkylvn2wivOGz6zOBFmaH6Dx6e.jpg', 9, 35853, 'jpeg', 'image', '2021-08-07 07:39:47', '2021-08-07 07:39:47', NULL),
(123, 'BN-007', 'uploads/all/rePzf1BNaOxDzI2PTKJG1TqLQwMiuK7XYMAstwtg.jpg', 9, 32245, 'jpeg', 'image', '2021-08-07 07:39:47', '2021-08-07 07:39:47', NULL),
(124, 'BN-010', 'uploads/all/JUWHaIJL3Z44REGOBMBXPHJts9IOajcRFJHLx6lQ.jpg', 9, 35897, 'jpeg', 'image', '2021-08-07 07:39:47', '2021-08-07 07:39:47', NULL),
(125, 'BN-008', 'uploads/all/yVGxHuRRr5asbg6EHBB71pQPdurgA0MNEyTv5sL4.jpg', 9, 32393, 'jpeg', 'image', '2021-08-07 07:39:47', '2021-08-07 07:39:47', NULL),
(126, 'BN-012', 'uploads/all/74oMWVvtBTbwbmx6Ir1b8Z59bydvXiIsv6VrrRtF.jpg', 9, 21096, 'jpeg', 'image', '2021-08-07 07:39:47', '2021-08-07 07:39:47', NULL),
(127, 'BN-011', 'uploads/all/44TQxmgUXBetKyKvo4R6wiNYZ472Z3pefBKZ9rkk.jpg', 9, 20587, 'jpeg', 'image', '2021-08-07 07:39:47', '2021-08-07 07:39:47', NULL),
(128, 'BN-013', 'uploads/all/4m84urnblAq99XCwFvYs5AwzcMbapwajw7qUQDnF.jpg', 9, 31578, 'jpeg', 'image', '2021-08-07 07:39:47', '2021-08-07 07:39:47', NULL),
(129, 'BN-014', 'uploads/all/juFpOhH5oFDEmtzQdYrkaANrHoxqDC16VT3p0qJY.jpg', 9, 36948, 'jpeg', 'image', '2021-08-07 07:39:47', '2021-08-07 07:39:47', NULL),
(130, 'BN-017', 'uploads/all/zdLIVny909IWxZxgmeLN0iLbZHGQDYTYgpFSLERU.jpg', 9, 23742, 'jpeg', 'image', '2021-08-07 07:39:48', '2021-08-07 07:39:48', NULL),
(131, 'BN-015', 'uploads/all/UgkrJwckz4KqavYQbkJbO4MS3NcqeidLKB0VVncQ.jpg', 9, 28020, 'jpeg', 'image', '2021-08-07 07:39:48', '2021-08-07 07:39:48', NULL),
(132, 'BN-016', 'uploads/all/yMpOuEcuRIABEhRhxYf0G8H9vLOiTdTJ3GLVHgiq.jpg', 9, 23172, 'jpeg', 'image', '2021-08-07 07:39:48', '2021-08-07 07:39:48', NULL),
(133, 'BN-018', 'uploads/all/cwpRCefdhNvXiy3TOt837fOqORPZTI8zEkvD0ZPs.jpg', 9, 33494, 'jpeg', 'image', '2021-08-07 07:39:48', '2021-08-07 07:39:48', NULL),
(134, 'BN-020', 'uploads/all/i6R4a3fOegRV25CTvC24np7iOjBBqLkERGHk2rRw.jpg', 9, 25001, 'jpeg', 'image', '2021-08-07 07:39:48', '2021-08-07 07:39:48', NULL),
(135, 'BN-019', 'uploads/all/odUJyNFnvUZUqzm0rQCseN3yWjQC3hXFr5zKWUAq.jpg', 9, 25814, 'jpeg', 'image', '2021-08-07 07:39:48', '2021-08-07 07:39:48', NULL),
(136, 'BN-021', 'uploads/all/9l6nFcio9LERytELUah8Bgt4Glxw2RCZhiKsNlfB.jpg', 9, 28886, 'jpeg', 'image', '2021-08-07 07:39:48', '2021-08-07 07:39:48', NULL),
(137, 'BN-022', 'uploads/all/O4EG9FhvyEaCvWideNpnTRl3mHDxDOmpLSt2eVFh.jpg', 9, 27141, 'jpeg', 'image', '2021-08-07 07:39:48', '2021-08-07 07:39:48', NULL),
(138, 'BN-023', 'uploads/all/JEiGVl666Ee8t9ZEJfy38Cb0ru1QPRVMPkodzMpy.jpg', 9, 30711, 'jpeg', 'image', '2021-08-07 07:39:48', '2021-08-07 07:39:48', NULL),
(139, 'BN-024', 'uploads/all/yATL9w1iqVOfy4QQkizqHSKVkd6WhK7RBPvzNDew.jpg', 9, 19010, 'jpeg', 'image', '2021-08-07 07:39:48', '2021-08-07 07:39:48', NULL),
(140, 'BN-025', 'uploads/all/jgBbn3bGg2VWA4A7flmJv5abU69IYGXnNUIEWQpL.jpg', 9, 28837, 'jpeg', 'image', '2021-08-07 07:39:49', '2021-08-07 07:39:49', NULL),
(141, 'BN-026', 'uploads/all/RLpmXlrnKwmdu2FMm7Qv71UhNnjXPIKROP9VYro9.jpg', 9, 24610, 'jpeg', 'image', '2021-08-07 07:39:49', '2021-08-07 07:39:49', NULL),
(142, 'BN-027', 'uploads/all/ujImx3Ork1qX8TOoM9H8OXMRO8jPfx7GCWqyPINp.jpg', 9, 25326, 'jpeg', 'image', '2021-08-07 07:39:49', '2021-08-07 07:39:49', NULL),
(143, 'BN-029', 'uploads/all/9TEg4XIfBAT0yy7M0ohc34qioFMePRxDKiUEVE8n.jpg', 9, 23219, 'jpeg', 'image', '2021-08-07 07:39:49', '2021-08-07 07:39:49', NULL),
(144, 'BN-028', 'uploads/all/aLmWbF5yuRprZ7mAggUCPay5kP40NwXg5Cd9IVKz.jpg', 9, 41789, 'jpeg', 'image', '2021-08-07 07:39:49', '2021-08-07 07:39:49', NULL),
(145, 'BN-030', 'uploads/all/RwuIimq9Qcq3cNNxquRD4wellmMHxzRBRecD6Euw.jpg', 9, 30266, 'jpeg', 'image', '2021-08-07 07:39:49', '2021-08-07 07:39:49', NULL),
(146, 'BN-031', 'uploads/all/GxmDXkXqMNQkVue4a19UbrT9zbJgLX711F4EdYAP.jpg', 9, 24760, 'jpeg', 'image', '2021-08-07 07:39:50', '2021-08-07 07:39:50', NULL),
(147, 'BN-032', 'uploads/all/BkamZ0bbuiylblBp2LWVNimdeFsPmu19kA9vMuXJ.jpg', 9, 27204, 'jpeg', 'image', '2021-08-07 07:39:50', '2021-08-07 07:39:50', NULL),
(148, 'BN-033', 'uploads/all/cency93FNBIlsEvCqC6kZtpJJKTH9nJE7bVdZqiL.jpg', 9, 21236, 'jpeg', 'image', '2021-08-07 07:39:50', '2021-08-07 07:39:50', NULL),
(149, 'BN-036', 'uploads/all/DljrjLPfGm4Vek1z09hrqU5x2yZwRZ3pX9l5Efcu.jpg', 9, 28888, 'jpeg', 'image', '2021-08-07 07:39:50', '2021-08-07 07:39:50', NULL),
(150, 'BN-034', 'uploads/all/l5JCebvVNxc1uxwHctXo4k6ZBgqQulTwnu186pFs.jpg', 9, 22763, 'jpeg', 'image', '2021-08-07 07:39:50', '2021-08-07 07:39:50', NULL),
(151, 'BN-035', 'uploads/all/j3zGBeRAyzK7ESioOf9KQQO4XEEGAUDHaDyWuC8b.jpg', 9, 19935, 'jpeg', 'image', '2021-08-07 07:39:50', '2021-08-07 07:39:50', NULL),
(152, 'BN-037', 'uploads/all/gU1yWHeU3xrfqWKJLNI0wMl8W31ESFPI04ddrHFK.jpg', 9, 29154, 'jpeg', 'image', '2021-08-07 07:39:51', '2021-08-07 07:39:51', NULL),
(153, 'BN-038', 'uploads/all/59X163xiFIRCIVmMmPLUDSN89XDKGGpXYguLOiSx.jpg', 9, 23448, 'jpeg', 'image', '2021-08-07 07:39:51', '2021-08-07 07:39:51', NULL),
(154, 'BN-041', 'uploads/all/0LeuqcuG9aLKX1CNTdyVxvYZHo99W9kFxUl3ZQuf.jpg', 9, 33542, 'jpeg', 'image', '2021-08-07 07:39:51', '2021-08-07 07:39:51', NULL),
(155, 'BN-039', 'uploads/all/4Gd9YN7DIE4Flc7i6dWNxshJHJAqjaf5Qwto0w0b.jpg', 9, 30134, 'jpeg', 'image', '2021-08-07 07:39:51', '2021-08-07 07:39:51', NULL),
(156, 'BN-040', 'uploads/all/bDKpESsgcHDKrw85RsxRGnkwEwagNcLhUamkk9wM.jpg', 9, 19967, 'jpeg', 'image', '2021-08-07 07:39:51', '2021-08-07 07:39:51', NULL),
(157, 'BN-042', 'uploads/all/CHVYDZMEetRCjKLXejnQ3uojqPE0nmnde0ya1cOf.jpg', 9, 31460, 'jpeg', 'image', '2021-08-07 07:39:51', '2021-08-07 07:39:51', NULL),
(158, 'BN-043', 'uploads/all/lemkTYSWo71tVwQY7OCAxeh6aVbcL3CGT82HXq0B.jpg', 9, 31915, 'jpeg', 'image', '2021-08-07 07:39:51', '2021-08-07 07:39:51', NULL),
(159, 'BN-044', 'uploads/all/I0sjmDCaoGpwGt9IIFZG2p8IfQ9QEVD40aTx4JQ7.jpg', 9, 25360, 'jpeg', 'image', '2021-08-07 07:39:51', '2021-08-07 07:39:51', NULL),
(160, 'BN-046', 'uploads/all/gX42est2JOui1XDq7hYFE8hR4tNdDS6MunqZRRFx.jpg', 9, 143705, 'jpg', 'image', '2021-08-07 07:39:52', '2021-08-07 07:39:52', NULL),
(161, 'BN-045', 'uploads/all/E0d32IGIPQKXVHfytYSCr0MKVDgHGhBDTOQm5Nw9.jpg', 9, 284107, 'jpg', 'image', '2021-08-07 07:39:52', '2021-08-07 07:39:52', NULL),
(162, 'BN-047', 'uploads/all/MJPR2vSWINiTnM8wmkPbajRf9MSwbgaiae70k0J4.jpg', 9, 146204, 'jpg', 'image', '2021-08-07 07:39:52', '2021-08-07 07:39:52', NULL),
(163, 'BN-048', 'uploads/all/v6t0n76uEGKD1dvGgwbvQi6OK2rVCoLV1h3cndCt.jpg', 9, 236211, 'jpg', 'image', '2021-08-07 07:39:52', '2021-08-07 07:39:52', NULL),
(164, 'BN-050', 'uploads/all/Kib421E2rrcXbJskwVkEzeSvOk6ertBxHgF4aFES.jpg', 9, 129382, 'jpg', 'image', '2021-08-07 07:39:52', '2021-08-07 07:39:52', NULL),
(165, 'BN-049', 'uploads/all/aJHDUvQ8zjXGiH4uCwABPLJ7ekKflTaRFEiHNjqH.jpg', 9, 118667, 'jpg', 'image', '2021-08-07 07:39:52', '2021-08-07 07:39:52', NULL),
(166, 'BN-051', 'uploads/all/ZnTl3J9G5LLD1JdVLl1FU8jl341QYvbs3ZnPbArq.jpg', 9, 190586, 'jpg', 'image', '2021-08-07 07:39:53', '2021-08-07 07:39:53', NULL),
(167, 'bn18', 'uploads/all/rV9R6Kl2Q3aVz9WypWOzmT7gykv1Eh9d9xrNrScE.jpg', 3, 33494, 'jpeg', 'image', '2021-08-07 13:25:02', '2021-08-07 13:25:02', NULL),
(168, 'bb', 'uploads/all/zgra4tEoABqKYiijVkqi5kjoau8Qt50VOBt3saZR.jpg', 8, 39775, 'jpeg', 'image', '2021-08-07 17:43:20', '2021-08-07 17:43:20', NULL),
(169, 'BMJ-002', 'uploads/all/WcYPcNUn9el05WqtOtfWMPClWyUhPFdEkSz7ZGLd.jpg', 9, 27387, 'jpeg', 'image', '2021-08-16 17:43:45', '2021-08-16 17:43:45', NULL),
(170, 'BMJ-001', 'uploads/all/ubeu2YQmiubdOAouBeQoTjtTUlR5SgmSETSzQNcp.jpg', 9, 32642, 'jpeg', 'image', '2021-08-16 17:43:45', '2021-08-16 17:43:45', NULL),
(171, 'BMJ-003', 'uploads/all/znOYeU0qM4A6L5FFhccYkXVSltDc2jJ9wKO3plN8.jpg', 9, 21822, 'jpeg', 'image', '2021-08-16 17:43:45', '2021-08-16 17:43:45', NULL),
(172, 'BMJ-004', 'uploads/all/MVIjLYHtwedjvNHLlsEHfpsnSbPTAWMCNhHLBPk1.jpg', 9, 51986, 'jpeg', 'image', '2021-08-16 17:43:45', '2021-08-16 17:43:45', NULL),
(173, 'BMJ-006', 'uploads/all/ajHEqIqYMsLNrVb2zsVuAXQ9RRoq0GuLHmmIzMQz.jpg', 9, 34575, 'jpeg', 'image', '2021-08-16 17:43:45', '2021-08-16 17:43:45', NULL),
(174, 'BMJ-005', 'uploads/all/WDqp2z1YDILUNlVvuDTVSbWWeWvXzmFoWFlBtpmK.jpg', 9, 30415, 'jpeg', 'image', '2021-08-16 17:43:45', '2021-08-16 17:43:45', NULL),
(175, 'BMJ-008', 'uploads/all/xqBSyoFmiSTK61K8sjRpyuanD5bNpUF7VQ9ABVOB.jpg', 9, 34714, 'jpeg', 'image', '2021-08-16 17:43:46', '2021-08-16 17:43:46', NULL),
(176, 'BMJ-007', 'uploads/all/TKKOnpCoJzWD4ANpgVhEW8zNduI727c9oQOOn31y.jpg', 9, 36634, 'jpeg', 'image', '2021-08-16 17:43:46', '2021-08-16 17:43:46', NULL),
(177, 'BMJ-010', 'uploads/all/3YL1oirz9CFAbFxixU0Jk7Cdal1mtB0BDmnnQRoI.jpg', 9, 28461, 'jpeg', 'image', '2021-08-16 17:43:46', '2021-08-16 17:43:46', NULL),
(178, 'BMJ-012', 'uploads/all/1eRwoiPVx3PyY7WdgwRBhWc5iDLe9ZYvLhe1sEmm.jpg', 9, 41768, 'jpeg', 'image', '2021-08-16 17:43:46', '2021-08-16 17:43:46', NULL),
(179, 'BMJ-013', 'uploads/all/1Ofgnr4arv6Fi9SAPHSZnU4CCOtg9IMpyyKMdnFK.jpg', 9, 28462, 'jpeg', 'image', '2021-08-16 17:43:46', '2021-08-16 17:43:46', NULL),
(180, 'BMJ-014', 'uploads/all/9IcJOTpqpe13v2oi1U9mzQ7Mj8MpujEqp7NR7b81.jpg', 9, 30617, 'jpeg', 'image', '2021-08-16 17:43:46', '2021-08-16 17:43:46', NULL),
(181, 'BMJ-016', 'uploads/all/lrhroBiFtT4mH9N2lbauZfKBKozae7mV3rLykkMS.jpg', 9, 29848, 'jpeg', 'image', '2021-08-16 17:43:46', '2021-08-16 17:43:46', NULL),
(182, 'BMJ-015', 'uploads/all/3dDbRpDobFmK5uY45wXsDH5URa62wOEOCL8i30Gp.jpg', 9, 31636, 'jpeg', 'image', '2021-08-16 17:43:47', '2021-08-16 17:43:47', NULL),
(183, 'BMJ-017', 'uploads/all/rTeYO3cyuSn9SHqFmOKjnTTVNhtt1ew7h4tGuuM4.jpg', 9, 34020, 'jpeg', 'image', '2021-08-16 17:43:47', '2021-08-16 17:43:47', NULL),
(184, 'BMJ-018', 'uploads/all/izNU17dBBBxmQs7oQj1VOn6umr4kyjqRbpF0SCUy.jpg', 9, 30736, 'jpeg', 'image', '2021-08-16 17:43:47', '2021-08-16 17:43:47', NULL),
(185, 'BMJ-020', 'uploads/all/5TJrzLLD4q4CVHpZM5XxJKoKPI0QGt9ARPRqcbuq.jpg', 9, 41434, 'jpeg', 'image', '2021-08-16 17:43:47', '2021-08-16 17:43:47', NULL),
(186, 'BMJ-019', 'uploads/all/u7qm78uP3cxmygJ6jJH5tWyjQKGO8dcqu6nKJUGs.jpg', 9, 39520, 'jpeg', 'image', '2021-08-16 17:43:47', '2021-08-16 17:43:47', NULL),
(187, 'BMJ-021', 'uploads/all/9YX9amwne2T16zYpcJuwUS0wGpccRG7xvp6JEsOs.jpg', 9, 29612, 'jpeg', 'image', '2021-08-16 17:43:47', '2021-08-16 17:43:47', NULL),
(188, 'BMJ-022', 'uploads/all/ZY5I2NaeLuS6iT0x6aPkIuZEzJLo0EbrFgzy4DWm.jpg', 9, 21246, 'jpeg', 'image', '2021-08-16 17:43:47', '2021-08-16 17:43:47', NULL),
(189, 'BMJ-023', 'uploads/all/BgMDmTFguFH0AsnHx00YLiXE2dnUIkEh0wzL5DNH.jpg', 9, 31564, 'jpeg', 'image', '2021-08-16 17:43:48', '2021-08-16 17:43:48', NULL),
(190, 'BMJ-024', 'uploads/all/aJFpGpXjMmdSzRnJBR5sqBfjL1qTqTO1MORFvgYc.jpg', 9, 25773, 'jpeg', 'image', '2021-08-16 17:43:48', '2021-08-16 17:43:48', NULL),
(191, 'BMJ-025', 'uploads/all/cEr2r2LMTThxc2cAWCH0kIVJH5DAqVDTfAevaDWg.jpg', 9, 25000, 'jpeg', 'image', '2021-08-16 17:43:48', '2021-08-16 17:43:48', NULL),
(192, 'BMJ-026', 'uploads/all/5v5t09QBGxlFdQZhro8Kz99bq7V34hnIoExTdKsm.jpg', 9, 30315, 'jpeg', 'image', '2021-08-16 17:43:48', '2021-08-16 17:43:48', NULL),
(193, 'BMJ-027', 'uploads/all/mqu4B2QiSUbq7MhhZx6JNLhlIEMmcOAD3xii0B1X.jpg', 9, 33973, 'jpeg', 'image', '2021-08-16 17:43:48', '2021-08-16 17:43:48', NULL),
(194, 'BMJ-029', 'uploads/all/8afHXqoYuZLPEfI94QUkX2ncfzrfVlsxBOKPFR6r.jpg', 9, 38120, 'jpeg', 'image', '2021-08-16 17:43:49', '2021-08-16 17:43:49', NULL),
(195, 'BMJ-028', 'uploads/all/ESRb5zRFeAsBfV5zBWwFK1AVXSHF4P3BZRWBCsyZ.jpg', 9, 31206, 'jpeg', 'image', '2021-08-16 17:43:49', '2021-08-16 17:43:49', NULL),
(196, 'BMJ-030', 'uploads/all/jT78KKBiCOinBgZEpFsGlf7UQ4BjiC5vnQYj4mfv.jpg', 9, 31411, 'jpeg', 'image', '2021-08-16 17:43:49', '2021-08-16 17:43:49', NULL),
(197, 'BMJ-032', 'uploads/all/7TVT3858p2OyRKL7ABLQdID9ZwMCWBwtWdTsHtmX.jpg', 9, 36647, 'jpeg', 'image', '2021-08-16 17:43:49', '2021-08-16 17:43:49', NULL),
(198, 'BMJ-033', 'uploads/all/p9kjLZaXLZWBiiJUKoxaajz9eMvtiYaCBF8KRWB2.jpg', 9, 35476, 'jpeg', 'image', '2021-08-16 17:43:49', '2021-08-16 17:43:49', NULL),
(199, 'BMJ-034', 'uploads/all/LWoCi12A5EjANVF1Ksx9pVQtN8PLWPolylWlwylu.jpg', 9, 29894, 'jpeg', 'image', '2021-08-16 17:43:49', '2021-08-16 17:43:49', NULL),
(200, 'BMJ-031', 'uploads/all/XpvOBx3V6UVqPx6N6hob1U88FyuEM3gskbHDAnPd.jpg', 9, 29495, 'jpeg', 'image', '2021-08-16 17:43:49', '2021-08-16 17:43:49', NULL),
(201, 'BMJ-035', 'uploads/all/ajnfIEZzWXHqj18PvuKigEeabw2JgokA3WUjpvF8.jpg', 9, 34978, 'jpeg', 'image', '2021-08-16 17:43:49', '2021-08-16 17:43:49', NULL),
(202, 'BMJ-036', 'uploads/all/CZwYM2JxfKbaafwHNkxR2PTSVvecbBRbofHn2aRy.jpg', 9, 24754, 'jpeg', 'image', '2021-08-16 17:43:50', '2021-08-16 17:43:50', NULL),
(203, 'BMJ-037', 'uploads/all/xPjAJRl2Ps047Dw3xIsFBVlHAUjrIRQLWV7kFoRQ.jpg', 9, 38267, 'jpeg', 'image', '2021-08-16 17:43:50', '2021-08-16 17:43:50', NULL),
(204, 'BMJ-038', 'uploads/all/374sGQV8bwJGVns9DkYZOG85RSn8sGK1taQWUa6a.jpg', 9, 39414, 'jpeg', 'image', '2021-08-16 17:43:50', '2021-08-16 17:43:50', NULL),
(205, 'BMJ-039', 'uploads/all/eQN7JCUzJtMYME5OSoXKwFKrMZeDp9747RC8ZlA5.jpg', 9, 36973, 'jpeg', 'image', '2021-08-16 17:43:50', '2021-08-16 17:43:50', NULL),
(206, 'BMJ-042', 'uploads/all/rSywCEoQMSSKw8e8Pxoxk3pads3rnUxiKYk9S0YW.jpg', 9, 45455, 'jpg', 'image', '2021-08-16 17:43:51', '2021-08-16 17:43:51', NULL),
(207, 'BMJ-041', 'uploads/all/UEJmdPYHGrfV8LaVSfz0GZNyXGP8QA22m8KVWmm7.jpg', 9, 29567, 'jpg', 'image', '2021-08-16 17:43:51', '2021-08-16 17:43:51', NULL),
(208, 'BMJ-040', 'uploads/all/MybBz6VRutMV6cSvhLmLQO0abNcyMDeOmJYlxQC6.jpg', 9, 39682, 'jpeg', 'image', '2021-08-16 17:43:51', '2021-08-16 17:43:51', NULL),
(209, 'BMJ-044', 'uploads/all/4xXDFrOAbDWKf9NO3wwAZOWv5jeAnWYju9YK2Pr0.jpg', 9, 25121, 'jpg', 'image', '2021-08-16 17:43:51', '2021-08-16 17:43:51', NULL),
(210, 'BMJ-043', 'uploads/all/NW0BZsAFzEfn30huTzsS8mvf51MhscKG9k1g875W.jpg', 9, 43710, 'jpg', 'image', '2021-08-16 17:43:51', '2021-08-16 17:43:51', NULL),
(211, 'BMJ-045', 'uploads/all/FaoMPaV586AyHqXV0pJ832hjPJn9CNiIAJ0Uu77w.jpg', 9, 251917, 'jpg', 'image', '2021-08-16 17:43:51', '2021-08-16 17:43:51', NULL),
(212, 'BMJ-046', 'uploads/all/7nUmQG1euHvS2RBzO12zpAMUcNagOwTH9i9MRfaP.jpg', 9, 173873, 'jpg', 'image', '2021-08-16 17:43:52', '2021-08-16 17:43:52', NULL),
(213, 'BMJ-047', 'uploads/all/eANZIDguXY7gVj0I1b2dU98JPUMHQ1ZTsT7WM2St.jpg', 9, 228758, 'jpg', 'image', '2021-08-16 17:43:52', '2021-08-16 17:43:52', NULL),
(214, 'BMJ-048', 'uploads/all/xdOAw92G0k2vqVaVj8WGag5Vwh8n5anFuZLQelDp.jpg', 9, 170626, 'jpg', 'image', '2021-08-16 17:43:52', '2021-08-16 17:43:52', NULL),
(215, 'BMJ-049', 'uploads/all/tCZrdp99rscYRwe4HktkVbnH3iKhqNEhAIM5bh8P.jpg', 9, 175778, 'jpg', 'image', '2021-08-16 17:43:52', '2021-08-16 17:43:52', NULL),
(216, 'BMJ-050', 'uploads/all/tI7R8dFaejDnXAWtKrX5ou47vDZ2YAYr6fxkDmFb.jpg', 9, 191672, 'jpg', 'image', '2021-08-16 17:43:53', '2021-08-16 17:43:53', NULL),
(217, 'BMJ-052', 'uploads/all/LA59LFBhRVrz10YHDLVMccbpV5CkDC2aSZv4YwDr.jpg', 9, 184515, 'jpg', 'image', '2021-08-16 17:43:53', '2021-08-16 17:43:53', NULL),
(218, 'BMJ-051', 'uploads/all/HZb1vniy57GLfokVVcHgGgRpTOVQPXbKhd874JVI.jpg', 9, 241461, 'jpg', 'image', '2021-08-16 17:43:53', '2021-08-16 17:43:53', NULL),
(219, 'BMJ-053', 'uploads/all/3jprbq0L2jcjMWFjjgxZGUcp4UhEVSIudn1sOuFl.jpg', 9, 98462, 'jpg', 'image', '2021-08-16 17:43:53', '2021-08-16 17:43:53', NULL),
(220, 'BMJ-054', 'uploads/all/3erCAfIn7cu5B51nbb26GTS8vKL2yi3Ylmy51IJp.jpg', 9, 270537, 'jpg', 'image', '2021-08-16 17:43:53', '2021-08-16 17:43:53', NULL),
(221, 'BMJ-055', 'uploads/all/bN7W5d2aUxELGoDd3XZskkZ1RyvxgTAOqH6GMgNN.jpg', 9, 496003, 'jpg', 'image', '2021-08-16 17:43:54', '2021-08-16 17:43:54', NULL),
(222, 'BMJ-056', 'uploads/all/rGGfgimwOXbd9rXDeyxqHQK2HAchSnupkBOla4qs.jpg', 9, 173099, 'jpg', 'image', '2021-08-16 17:43:54', '2021-08-16 17:43:54', NULL),
(223, 'BMJ-057', 'uploads/all/I0J85ossfmnZBTjKN5mkVuty8leVl8678b6xMkRt.jpg', 9, 320343, 'jpg', 'image', '2021-08-16 17:43:54', '2021-08-16 17:43:54', NULL),
(224, 'BMJ-058', 'uploads/all/OimMT8xRU6PKeUQPxEhneMzNa6f88aP2eGgma6He.jpg', 9, 391230, 'jpg', 'image', '2021-08-16 17:43:54', '2021-08-16 17:43:54', NULL),
(225, 'BMJ-059', 'uploads/all/IMtTcqj9SGv3F9KIdal0nATIZki5ADc2GQbblUmn.jpg', 9, 355461, 'jpg', 'image', '2021-08-16 17:43:55', '2021-08-16 17:43:55', NULL),
(226, 'BMJ-011', 'uploads/all/cgbAX2UDjUiilic1bwU7KdBlakMTV1ntLlSAQ0UC.jpg', 9, 27763, 'jpeg', 'image', '2021-08-16 17:44:29', '2021-08-16 17:44:29', NULL),
(227, 'BMJ-009', 'uploads/all/NwH0oDGhMEplQ6TCh35rD9wwzC4GY2e3Wnobo0rm.jpg', 9, 41137, 'jpeg', 'image', '2021-08-16 17:44:29', '2021-08-16 17:44:29', NULL),
(228, 'KDC-001', 'uploads/all/V9QQlHH8yD2xxNZgL8Hm7IPGrYEge0MjbidhLkIy.jpg', 9, 31708, 'jpeg', 'image', '2021-08-17 12:12:57', '2021-08-17 12:12:57', NULL),
(229, 'KDC-004', 'uploads/all/WUnDoouDowCf69lGBcLUpH7qzZxBbj78kbtabEaa.jpg', 9, 43588, 'jpeg', 'image', '2021-08-17 12:13:05', '2021-08-17 12:13:05', NULL),
(230, 'KDC-002', 'uploads/all/wkSiMGmNuNmuvgG42oKk3ebrkrlMBsVEUoxki5GH.jpg', 9, 37167, 'jpeg', 'image', '2021-08-17 12:13:05', '2021-08-17 12:13:05', NULL),
(231, 'KDC-005', 'uploads/all/kxeTnvsrCWAlPwBqe3T032BvR34MdlDJ0eec2LGw.jpg', 9, 34509, 'jpeg', 'image', '2021-08-17 12:13:05', '2021-08-17 12:13:05', NULL),
(232, 'KDC-003', 'uploads/all/a7EUKtw0ZudmLJy6I3blDmwP6iMZEB7bVQgupfsO.jpg', 9, 28427, 'jpeg', 'image', '2021-08-17 12:13:05', '2021-08-17 12:13:05', NULL),
(233, 'KDC-006', 'uploads/all/5hIKEKrKfzv9UnNc5FbZ46gBxkZuC8qOy7YHMln5.jpg', 9, 37136, 'jpeg', 'image', '2021-08-17 12:13:13', '2021-08-17 12:13:13', NULL),
(234, 'KDC-007', 'uploads/all/pIjFFjX6iDLpmTbsgVFv20Kd5iDNMSY2UQL0rymh.jpg', 9, 42190, 'jpeg', 'image', '2021-08-17 12:13:13', '2021-08-17 12:13:13', NULL),
(235, 'KDC-008', 'uploads/all/k2lvUGmLO0kRoxwxbzTmLAMrMkIvyOc6qhK4Mu2t.jpg', 9, 29413, 'jpeg', 'image', '2021-08-17 12:13:13', '2021-08-17 12:13:13', NULL),
(236, 'KDC-009', 'uploads/all/BAkWNOXbsNqTMJqUOhNaeNQiMhyweZlOwPmwNUHY.jpg', 9, 33654, 'jpeg', 'image', '2021-08-17 12:13:22', '2021-08-17 12:13:22', NULL),
(237, 'KDC-011', 'uploads/all/VufUCU1l2v4VWKMZ67oVsMirbDipGlwQ5Zn9y22z.jpg', 9, 31012, 'jpeg', 'image', '2021-08-17 12:13:22', '2021-08-17 12:13:22', NULL),
(238, 'KDC-010', 'uploads/all/LuIHdg8DWn3OwEK1hliei1xpFACQXBwfelEKM9d7.jpg', 9, 29238, 'jpeg', 'image', '2021-08-17 12:13:22', '2021-08-17 12:13:22', NULL),
(239, 'KDC-015', 'uploads/all/DGSvaWAPwYQzDc01lYSTy8kEkEGWgYA4ZPcXRegu.jpg', 9, 33458, 'jpeg', 'image', '2021-08-17 12:13:39', '2021-08-17 12:13:39', NULL),
(240, 'KDC-014', 'uploads/all/Nxg01KZrK8kOHrekiLGn2GQ9dUMnZVRl2bvsg8Ji.jpg', 9, 24119, 'jpeg', 'image', '2021-08-17 12:13:39', '2021-08-17 12:13:39', NULL),
(241, 'KDC-017', 'uploads/all/09QnFADYog3vvyNyVtNap7FiGOT4LXkzATcZ1s9K.jpg', 9, 34316, 'jpeg', 'image', '2021-08-17 12:13:39', '2021-08-17 12:13:39', NULL),
(242, 'KDC-012', 'uploads/all/5AZgu6z8kmL6HarPYjjIGG7eNajoLQhPoXk8vTzV.jpg', 9, 33654, 'jpeg', 'image', '2021-08-17 12:13:39', '2021-08-17 12:13:39', NULL),
(243, 'KDC-016', 'uploads/all/KHt03yq8VIj3YAzGJ2KJsRx67TYaIWvX7EEks1FE.jpg', 9, 26948, 'jpeg', 'image', '2021-08-17 12:13:40', '2021-08-17 12:13:40', NULL),
(244, 'KDC-013', 'uploads/all/Ieff9tUQYL4jlN9407ser5vMi5pYZPeK6fSfjriF.jpg', 9, 23965, 'jpeg', 'image', '2021-08-17 12:13:40', '2021-08-17 12:13:40', NULL),
(245, 'KDC-018', 'uploads/all/uvMtjgAf7hufg1CECUyNxGSaFbSf4izBdP3eDOSk.jpg', 9, 28414, 'jpeg', 'image', '2021-08-17 12:13:40', '2021-08-17 12:13:40', NULL),
(246, 'KDC-020', 'uploads/all/OwawEbq22huz81J8l5Dtt2x50vGCFSM9nCMcjthx.jpg', 9, 32054, 'jpeg', 'image', '2021-08-17 12:13:40', '2021-08-17 12:13:40', NULL),
(247, 'KDC-019', 'uploads/all/aF6fpE78Ho0gYalb755jvpPtbf5beqPGa4vmubpS.jpg', 9, 28669, 'jpeg', 'image', '2021-08-17 12:13:40', '2021-08-17 12:13:40', NULL),
(248, 'KDC-021', 'uploads/all/ZDsCyG9RJcF515y0K5kUF2w0gBDCrJP9mqmHPsrd.jpg', 9, 49391, 'jpeg', 'image', '2021-08-17 12:13:40', '2021-08-17 12:13:40', NULL),
(249, 'KDC-022', 'uploads/all/4oMn8N98iGL3DQJzePBlmcwqs0RKkGtKOlsuBpJZ.jpg', 9, 24336, 'jpeg', 'image', '2021-08-17 12:13:40', '2021-08-17 12:13:40', NULL),
(250, 'KDC-023', 'uploads/all/YhkxaHALCzZPU5sCu5lQCKnfHolpwVHXmhbO9F5y.jpg', 9, 40684, 'jpeg', 'image', '2021-08-17 12:13:50', '2021-08-17 12:13:50', NULL),
(251, 'KDC-024', 'uploads/all/HAsPDfgXYutzHA95GtFllEuv6NDcHfjOBkC81DsM.jpg', 9, 18680, 'jpeg', 'image', '2021-08-17 12:13:50', '2021-08-17 12:13:50', NULL),
(252, 'KDC-026', 'uploads/all/6hdZ65dLTX6EDbhHRMpM7oVJmzmyOuzfxVYFDOCX.jpg', 9, 96940, 'jpeg', 'image', '2021-08-17 12:13:50', '2021-08-17 12:13:50', NULL),
(253, 'KDC-028', 'uploads/all/nI9MGQxxcX4Q8ERqOlal9p7sCGII7Xly9QnjPbWB.jpg', 9, 69264, 'jpeg', 'image', '2021-08-17 12:13:50', '2021-08-17 12:13:50', NULL),
(254, 'KDC-027', 'uploads/all/Uy9upfJySWiF262AmhXQsreTOG33dMNC4d2nu3jf.jpg', 9, 58307, 'jpeg', 'image', '2021-08-17 12:13:50', '2021-08-17 12:13:50', NULL),
(255, 'KDC-025', 'uploads/all/GyThrJm8AYFLNMJDWRzn3WgqM4UpzC21yeWAmeoG.jpg', 9, 41475, 'jpeg', 'image', '2021-08-17 12:13:50', '2021-08-17 12:13:50', NULL),
(256, 'PCB-001', 'uploads/all/JLF1Gn0ozcAtTSMCi1aXSUGIIuHC6PLMlDxcnXZb.jpg', 9, 32591, 'jpeg', 'image', '2021-08-18 08:41:25', '2021-08-18 08:41:25', NULL),
(257, 'PCB-002', 'uploads/all/KAdj3YD0aAXEVE0emjqgG532CaG8NdBg45ZMRbef.jpg', 9, 36418, 'jpeg', 'image', '2021-08-18 08:41:31', '2021-08-18 08:41:31', NULL),
(258, 'PCB-003', 'uploads/all/BsSadHzKmWE9ZlEk48r0557tnLH569TVYaqgCqFu.jpg', 9, 32581, 'jpeg', 'image', '2021-08-18 08:41:35', '2021-08-18 08:41:35', NULL),
(259, 'PCB-004', 'uploads/all/ucEW0EfHbVtDFiMls8dktzmMXA2EJygB0u5ujYDO.jpg', 9, 33272, 'jpeg', 'image', '2021-08-18 08:41:40', '2021-08-18 08:41:40', NULL),
(260, 'PCB-005', 'uploads/all/It2vMESjLIdvlwX42bH9c58Tkg0dkz624PpWPANA.jpg', 9, 32139, 'jpeg', 'image', '2021-08-18 08:41:45', '2021-08-18 08:41:45', NULL),
(261, 'PCB-006', 'uploads/all/LznDmwRuMWEF634cIV4d0BPoZKupKVz6e3jgnH6S.jpg', 9, 35076, 'jpeg', 'image', '2021-08-18 08:41:49', '2021-08-18 08:41:49', NULL),
(262, 'PCB-007', 'uploads/all/v96WwKJ6xwlNsvO8wIk1coNaVNvVxah21EE6lBVB.jpg', 9, 32816, 'jpeg', 'image', '2021-08-18 08:41:54', '2021-08-18 08:41:54', NULL),
(263, 'PCB-008', 'uploads/all/Y2v99MT1M01cKBacEN3rKkvn9XVE5Rq1w0LVyBoj.jpg', 9, 34343, 'jpeg', 'image', '2021-08-18 08:41:58', '2021-08-18 08:41:58', NULL),
(264, 'PCB-009', 'uploads/all/mzyJUAyUm8U7vvkzBQqVrAqOFftcBGNFXlNV9SQa.jpg', 9, 30291, 'jpeg', 'image', '2021-08-18 08:42:01', '2021-08-18 08:42:01', NULL),
(265, 'PCB-010', 'uploads/all/xPgHtx6YVlnStbVMcVaoQcNm7nxmvRH7DrmVxHWr.jpg', 9, 34999, 'jpeg', 'image', '2021-08-18 08:42:05', '2021-08-18 08:42:05', NULL),
(266, 'PCB-011', 'uploads/all/GmSUZ3mZyyMpTLvgiFPVRpafzO5YPr7P6KL9rccw.jpg', 9, 28230, 'jpeg', 'image', '2021-08-18 08:42:10', '2021-08-18 08:42:10', NULL),
(267, 'PCB-012', 'uploads/all/9rWYZgpcAGzAC1lzRyninEAaoCd0ROFtCCAJvlvN.jpg', 9, 35499, 'jpeg', 'image', '2021-08-18 08:42:15', '2021-08-18 08:42:15', NULL),
(268, 'PCB-013', 'uploads/all/B4YwgmVf0C00gWUgL85rTlvR3nohwHNDzJX25Eus.jpg', 9, 32557, 'jpeg', 'image', '2021-08-18 08:42:21', '2021-08-18 08:42:21', NULL),
(269, 'PCB-014', 'uploads/all/YA4g36tkRtNueqepz0otcQSksMmiEzgXbsp2Z8GO.jpg', 9, 33055, 'jpeg', 'image', '2021-08-18 08:42:25', '2021-08-18 08:42:25', NULL),
(270, 'PCB-015', 'uploads/all/qN5HdxdCgBwtds6tGhCebDw2jILtUbJjwqD16hJD.jpg', 9, 30063, 'jpeg', 'image', '2021-08-18 08:42:29', '2021-08-18 08:42:29', NULL),
(271, 'PCB-016', 'uploads/all/nUb5qA89mTg9kwfyL4Z1XqEWBFijVWPcPPcVb447.jpg', 9, 32709, 'jpeg', 'image', '2021-08-18 08:42:34', '2021-08-18 08:42:34', NULL),
(272, 'PCB-017', 'uploads/all/9vk1CWm1lHZhEDGTxvokswYGEUtogmDjLMUb5V8E.jpg', 9, 25637, 'jpeg', 'image', '2021-08-18 08:42:39', '2021-08-18 08:42:39', NULL),
(273, 'PCB-018', 'uploads/all/WdpE7QyGV8ivc8FuCxtu8bhd5257981vNXKhPKzK.jpg', 9, 21711, 'jpeg', 'image', '2021-08-18 08:42:44', '2021-08-18 08:42:44', NULL),
(274, 'PCB-019', 'uploads/all/eQUIbbw9KT1sZrnNUfVROKXitctm128iKeZ4c4tB.jpg', 9, 21715, 'jpeg', 'image', '2021-08-18 08:42:48', '2021-08-18 08:42:48', NULL),
(275, 'PCB-020', 'uploads/all/30YGb1jUewBKv2QdigWz5RtygUZfVofZ0R56cwy6.jpg', 9, 23136, 'jpeg', 'image', '2021-08-18 08:42:52', '2021-08-18 08:42:52', NULL),
(276, 'PCB-021', 'uploads/all/dsbMCpeEqYd7GyvxRWMSyVbhNDIqkQxE71OGLJuB.jpg', 9, 22716, 'jpeg', 'image', '2021-08-18 08:43:00', '2021-08-18 08:43:00', NULL),
(277, 'PCB-022', 'uploads/all/gxODzb0MFPj60egDWGrI1qBgsbzRJLHYtAT6sZtP.jpg', 9, 25231, 'jpeg', 'image', '2021-08-18 08:43:04', '2021-08-18 08:43:04', NULL),
(278, 'PCB-023', 'uploads/all/igospUJq9hDi91tTc4ihlSB4Gs6iQiJppkU6Isdk.jpg', 9, 26023, 'jpeg', 'image', '2021-08-18 08:43:11', '2021-08-18 08:43:11', NULL),
(279, 'PCB-024', 'uploads/all/6zlmQ9gHbleskwO3rv2RjhmM5HdSN9fdjytVfZeq.jpg', 9, 25154, 'jpeg', 'image', '2021-08-18 08:43:16', '2021-08-18 08:43:16', NULL),
(280, 'PCB-025', 'uploads/all/y8S4Puck3ZggDXf9wyDvFWLyZ9GcvvNZyQ51dW6W.jpg', 9, 23041, 'jpeg', 'image', '2021-08-18 08:43:21', '2021-08-18 08:43:21', NULL),
(281, 'PCB-026', 'uploads/all/tfZRk4FkrejmfJaYpE9sHxmsjl3x3nGBV0WUJB8s.jpg', 9, 30745, 'jpeg', 'image', '2021-08-18 08:43:25', '2021-08-18 08:43:25', NULL),
(282, 'PCB-027', 'uploads/all/d735eboKrYbzcHxb4ezFxXtOrBhrX7m1vGtzJTSf.jpg', 9, 36912, 'jpeg', 'image', '2021-08-18 08:43:30', '2021-08-18 08:43:30', NULL),
(283, 'PCB-028', 'uploads/all/SdbruQRB14eN7DDfsXy8Srg1xhVOFS82esiTmTgK.jpg', 9, 26039, 'jpeg', 'image', '2021-08-18 08:43:37', '2021-08-18 08:43:37', NULL),
(284, 'PCB-029', 'uploads/all/KiAijbxot8ssgxCLqQoleapNpkaTy4KhjgmLT27Y.jpg', 9, 28649, 'jpeg', 'image', '2021-08-18 08:43:41', '2021-08-18 08:43:41', NULL),
(285, 'PCB-030', 'uploads/all/4HWapR93IkqVIygKkpcxxTnzXgKe9KDADasKcX1W.jpg', 9, 35757, 'jpeg', 'image', '2021-08-18 08:43:46', '2021-08-18 08:43:46', NULL),
(286, 'PCB-031', 'uploads/all/I4KsdXqupIymHNSdWqwfBVDyT0NSPA9biUzhAKPZ.jpg', 9, 35527, 'jpeg', 'image', '2021-08-18 08:43:50', '2021-08-18 08:43:50', NULL),
(287, 'PCB-032', 'uploads/all/of9VE5mDJeTQlR2EEH8yGfFwq53lUSo23WUop6s9.jpg', 9, 29971, 'jpeg', 'image', '2021-08-18 08:43:53', '2021-08-18 08:43:53', NULL),
(288, 'PCB-033', 'uploads/all/mwBxTqSAFhhtAVoGa4Ilsy3BAEevZzQzZ7BPdjAL.jpg', 9, 34166, 'jpeg', 'image', '2021-08-18 08:43:57', '2021-08-18 08:43:57', NULL),
(289, 'PCB-034', 'uploads/all/rfA7rv1XZZ2tIFdSEIUhdVJEhVGZtJoqTuFqiCjZ.jpg', 9, 30712, 'jpeg', 'image', '2021-08-18 08:44:04', '2021-08-18 08:44:04', NULL),
(290, 'PCB-035', 'uploads/all/fMgnJtpHfQk3GWWWQcajLddQLkDougH62g2rivvc.jpg', 9, 30270, 'jpeg', 'image', '2021-08-18 08:44:08', '2021-08-18 08:44:08', NULL),
(291, 'PCL-001', 'uploads/all/yyjwUPgHTvjwtauVQYCihL93wD95B4HT6leLHtGb.jpg', 9, 24600, 'jpeg', 'image', '2021-08-18 11:04:02', '2021-08-18 11:04:02', NULL),
(292, 'PCL-002', 'uploads/all/Ec35pJvpsnbkPiO9Zt0FcQ9QLfgvzwGMXRi7a8zp.jpg', 9, 23182, 'jpeg', 'image', '2021-08-18 11:04:05', '2021-08-18 11:04:05', NULL),
(293, 'PCL-003', 'uploads/all/P6myTGzsEbCOuPlErs0pbZmvrH1CmLAGyD1JvV3Z.jpg', 9, 18095, 'jpeg', 'image', '2021-08-18 11:04:09', '2021-08-18 11:04:09', NULL),
(294, 'PCL-004', 'uploads/all/DTZoxxtWLfzchzLxWAt1bqqePIrII0ww8RqtF1w7.jpg', 9, 21030, 'jpeg', 'image', '2021-08-18 11:04:13', '2021-08-18 11:04:13', NULL),
(295, 'PCL-005', 'uploads/all/a4ysBv2G0ZtnrObwRtDYdHc67gLvyJgxXtFr3fon.jpg', 9, 20589, 'jpeg', 'image', '2021-08-18 11:04:17', '2021-08-18 11:04:17', NULL),
(296, 'PCL-006', 'uploads/all/Vkwe2No9ZfTiBLTUrCcPO0hlhhRyareU97QHYtCN.jpg', 9, 26064, 'jpeg', 'image', '2021-08-18 11:04:21', '2021-08-18 11:04:21', NULL),
(297, 'PCL-007', 'uploads/all/Yp73kGMnvOPvbZYKGz6b1vdtptrsVRrEe7Ywsa6h.jpg', 9, 23100, 'jpeg', 'image', '2021-08-18 11:04:26', '2021-08-18 11:04:26', NULL),
(298, 'PCL-008', 'uploads/all/eDviNADephEgdYrKPbI7GwCYkWlFF7zEoYhPhR2T.jpg', 9, 19378, 'jpeg', 'image', '2021-08-18 11:04:30', '2021-08-18 11:04:30', NULL),
(299, 'PCL-009', 'uploads/all/xBeJB7mAtTcf3BB7ksPEJcNjHmPBUpyKPLmJsW7A.jpg', 9, 20132, 'jpeg', 'image', '2021-08-18 11:04:35', '2021-08-18 11:04:35', NULL),
(300, 'PCL-010', 'uploads/all/0NniSKtfu2kYtZoEXmNGvuvqZ4AQSqij4UDgCiof.jpg', 9, 17943, 'jpeg', 'image', '2021-08-18 11:04:39', '2021-08-18 11:04:39', NULL),
(301, 'PCL-011', 'uploads/all/gsE7xDp9iuiTqqu523fx2bwBVK7x02Pg6OAmtYfB.jpg', 9, 15667, 'jpeg', 'image', '2021-08-18 11:04:44', '2021-08-18 11:04:44', NULL),
(302, 'PCL-012', 'uploads/all/KaVLZoKXsKsdtvb3mO0oR2cFACp2eSYpHyDBlTvh.jpg', 9, 26902, 'jpeg', 'image', '2021-08-18 11:04:54', '2021-08-18 11:04:54', NULL),
(303, 'PCL-013', 'uploads/all/uXlvR2PP9HpN37yxReHRoIAsEK3Reh3eXMHhT4Eb.jpg', 9, 20091, 'jpeg', 'image', '2021-08-18 11:05:00', '2021-08-18 11:05:00', NULL),
(304, 'PCL-014', 'uploads/all/DP6bCYYtg30TymvyoU34t9oXA0oIeA7jnDrToIRB.jpg', 9, 18499, 'jpeg', 'image', '2021-08-18 11:05:04', '2021-08-18 11:05:04', NULL),
(305, 'PCL-015', 'uploads/all/hoeiLAKEu4wjE1F1QgnpAAvcLo1DtNIlLhwlSpv3.jpg', 9, 26945, 'jpeg', 'image', '2021-08-18 11:05:10', '2021-08-18 11:05:10', NULL),
(306, 'PCL-016', 'uploads/all/bOxHdJ0inZB9bVx3T4e2b0chQaS2LOUAduRzApHm.jpg', 9, 26132, 'jpeg', 'image', '2021-08-18 11:05:15', '2021-08-18 11:05:15', NULL),
(307, 'PCL-017', 'uploads/all/qfwCorlcDOO8vgBGQQ22f5GICQ13DeecHVfK1FGB.jpg', 9, 24136, 'jpeg', 'image', '2021-08-18 11:05:19', '2021-08-18 11:05:19', NULL),
(308, 'PCL-018', 'uploads/all/aJIn9x4MsW9aVKy0sxSvTgbejQXgt9Bv7A5eIFXZ.jpg', 9, 23458, 'jpeg', 'image', '2021-08-18 11:05:26', '2021-08-18 11:05:26', NULL),
(309, 'PCL-019', 'uploads/all/oQyFMOSKSnk1qL7HmeVypxYNeZbDHTTu6xxA0NDw.jpg', 9, 26774, 'jpeg', 'image', '2021-08-18 11:05:32', '2021-08-18 11:05:32', NULL),
(310, 'PCL-020', 'uploads/all/pJVR62Wafn4ErdEQPQSXqKpFZ7prwLyEw5SXfMo2.jpg', 9, 26678, 'jpeg', 'image', '2021-08-18 11:05:37', '2021-08-18 11:05:37', NULL),
(311, 'PCL-021', 'uploads/all/Y0VG01wXPZtbIAYwqXhwNfaMuX31RyOzlhITIz7m.jpg', 9, 23136, 'jpeg', 'image', '2021-08-18 11:05:42', '2021-08-18 11:05:42', NULL),
(312, 'PCL-022', 'uploads/all/QUmZnG2RDALfp3dCY3IwNWHqBNZfI6IuVjaMprCl.jpg', 9, 28827, 'jpeg', 'image', '2021-08-18 11:05:48', '2021-08-18 11:05:48', NULL),
(313, 'PCL-023', 'uploads/all/CNvy7f4I2beY0dxhcoKuTRvQ26Aea4QMFAiv4lKh.jpg', 9, 26055, 'jpeg', 'image', '2021-08-18 11:05:54', '2021-08-18 11:05:54', NULL),
(314, 'PCL-024', 'uploads/all/UCaXcHI9UyuqyWyyLoiQBvQwdoO9IDp9WB77QQwY.jpg', 9, 25762, 'jpeg', 'image', '2021-08-18 11:06:00', '2021-08-18 11:06:00', NULL),
(315, 'PCL-025', 'uploads/all/N8zWyhvulhWawXfNOH7EYtET37Vq7C7DVYlXXchn.jpg', 9, 22044, 'jpeg', 'image', '2021-08-18 11:06:06', '2021-08-18 11:06:06', NULL),
(316, 'PCL-026', 'uploads/all/IuxRiYq8BfAbAcSGIWFm9Wk5SpIBnjeAcyejeT5V.jpg', 9, 22485, 'jpeg', 'image', '2021-08-18 11:06:11', '2021-08-18 11:06:11', NULL),
(317, 'PCL-027', 'uploads/all/07xkQvJsVPYhRP6q2uqIst2veFyVdY81Db580goN.jpg', 9, 16699, 'jpeg', 'image', '2021-08-18 11:06:18', '2021-08-18 11:06:18', NULL),
(318, 'PCL-028', 'uploads/all/VRNTco4WdVMRcavlLC5um1Owiywguz4yKYGaMtbd.jpg', 9, 24396, 'jpeg', 'image', '2021-08-18 11:06:24', '2021-08-18 11:06:24', NULL),
(319, 'PCL-029', 'uploads/all/4l2glKKaGrJTsoYnBMX0HLtPPMwLQlylefaFKtWh.jpg', 9, 19870, 'jpeg', 'image', '2021-08-18 11:06:28', '2021-08-18 11:06:28', NULL),
(320, 'PCL-030', 'uploads/all/dsTCnWPvGIjGDSLJASvw7czldM2TFdADyuj3VrQX.jpg', 9, 21443, 'jpeg', 'image', '2021-08-18 11:06:34', '2021-08-18 11:06:34', NULL),
(321, 'PCL-031', 'uploads/all/6JD0kR9x7UPyycRDw2ksTzvWUmqbfNainL8MUk1I.jpg', 9, 23463, 'jpeg', 'image', '2021-08-18 11:06:43', '2021-08-18 11:06:43', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `referred_by` int(11) DEFAULT NULL,
  `provider_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'customer',
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` text COLLATE utf8_unicode_ci,
  `new_email_verificiation_code` text COLLATE utf8_unicode_ci,
  `password` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar_original` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` double(20,2) NOT NULL DEFAULT '0.00',
  `banned` tinyint(4) NOT NULL DEFAULT '0',
  `referral_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_package_id` int(11) DEFAULT NULL,
  `remaining_uploads` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `referred_by`, `provider_id`, `user_type`, `name`, `email`, `email_verified_at`, `verification_code`, `new_email_verificiation_code`, `password`, `remember_token`, `device_token`, `avatar`, `avatar_original`, `address`, `country`, `city`, `postal_code`, `phone`, `balance`, `banned`, `referral_code`, `customer_package_id`, `remaining_uploads`, `created_at`, `updated_at`) VALUES
(3, NULL, NULL, 'seller', 'Mr. Seller', 'seller@example.com', '2018-12-11 18:00:00', NULL, NULL, '$2y$10$eUKRlkmm2TAug75cfGQ4i.WoUbcJ2uVPqUlVkox.cv4CCyGEIMQEm', '1AL5VOqqLMwDD996jFdWRTBzBxbT5MYrKRTlLqpoEJNjMq8xBoHhQZzL7ENp', NULL, 'https://lh3.googleusercontent.com/-7OnRtLyua5Q/AAAAAAAAAAI/AAAAAAAADRk/VqWKMl4f8CI/photo.jpg?sz=50', NULL, 'Demo address', 'US', 'Demo city', '1234', NULL, 0.00, 0, '3dLUoHsR1l', NULL, NULL, '2018-10-07 04:42:57', '2020-03-05 01:33:22'),
(8, NULL, NULL, 'customer', 'Mr. Customer', 'customer@example.com', '2018-12-11 18:00:00', NULL, NULL, '$2y$10$eUKRlkmm2TAug75cfGQ4i.WoUbcJ2uVPqUlVkox.cv4CCyGEIMQEm', 'jkoQLM4xrSC8uAmUDhUrmlbUl1kV8LiaBx9HQUvvkHG3Fx3dLFy2DskccnRb', NULL, 'https://lh3.googleusercontent.com/-7OnRtLyua5Q/AAAAAAAAAAI/AAAAAAAADRk/VqWKMl4f8CI/photo.jpg?sz=50', NULL, 'Demo address', 'US', 'Demo city', '1234', NULL, 0.00, 0, '8zJTyXTlTT', NULL, NULL, '2018-10-07 04:42:57', '2021-08-07 13:03:12'),
(9, NULL, NULL, 'admin', 'admin', 'komar.network@gmail.com', '2021-08-06 01:08:40', NULL, NULL, '$2y$10$G7nEhj3PT7WcLAO9Z4B0o.dETmCEFSdOtgiQe4WyZ87oZUbGeJs42', '1ghwUlLt40aEkadjwh5Xy1wVqqGPu7ZDl5QaEbApfW28lpFaQKnJwVzlmP5J', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, NULL, NULL, 0, '2021-08-06 01:48:40', '2021-08-06 01:48:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wallets`
--

CREATE TABLE `wallets` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double(20,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci,
  `approval` int(1) NOT NULL DEFAULT '0',
  `offline_payment` int(1) NOT NULL DEFAULT '0',
  `reciept` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wishlists`
--

CREATE TABLE `wishlists` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `attribute_translations`
--
ALTER TABLE `attribute_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags` (`tags`);

--
-- Indeks untuk tabel `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `brand_translations`
--
ALTER TABLE `brand_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indeks untuk tabel `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `city_translations`
--
ALTER TABLE `city_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `club_points`
--
ALTER TABLE `club_points`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `club_point_details`
--
ALTER TABLE `club_point_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `commission_histories`
--
ALTER TABLE `commission_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `coupon_usages`
--
ALTER TABLE `coupon_usages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer_packages`
--
ALTER TABLE `customer_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer_package_payments`
--
ALTER TABLE `customer_package_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer_package_translations`
--
ALTER TABLE `customer_package_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer_products`
--
ALTER TABLE `customer_products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer_product_translations`
--
ALTER TABLE `customer_product_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `flash_deals`
--
ALTER TABLE `flash_deals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `flash_deal_translations`
--
ALTER TABLE `flash_deal_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `manual_payment_methods`
--
ALTER TABLE `manual_payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indeks untuk tabel `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indeks untuk tabel `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `page_translations`
--
ALTER TABLE `page_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pickup_points`
--
ALTER TABLE `pickup_points`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pickup_point_translations`
--
ALTER TABLE `pickup_point_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `tags` (`tags`(255));

--
-- Indeks untuk tabel `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_taxes`
--
ALTER TABLE `product_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_translations`
--
ALTER TABLE `product_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `proxypay_payments`
--
ALTER TABLE `proxypay_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_translations`
--
ALTER TABLE `role_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `attribute_translations`
--
ALTER TABLE `attribute_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `brand_translations`
--
ALTER TABLE `brand_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `city_translations`
--
ALTER TABLE `city_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `club_points`
--
ALTER TABLE `club_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `club_point_details`
--
ALTER TABLE `club_point_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT untuk tabel `commission_histories`
--
ALTER TABLE `commission_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `coupon_usages`
--
ALTER TABLE `coupon_usages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `customer_packages`
--
ALTER TABLE `customer_packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `customer_package_payments`
--
ALTER TABLE `customer_package_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `customer_package_translations`
--
ALTER TABLE `customer_package_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `customer_products`
--
ALTER TABLE `customer_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `customer_product_translations`
--
ALTER TABLE `customer_product_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `flash_deals`
--
ALTER TABLE `flash_deals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `flash_deal_products`
--
ALTER TABLE `flash_deal_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `flash_deal_translations`
--
ALTER TABLE `flash_deal_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `manual_payment_methods`
--
ALTER TABLE `manual_payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `page_translations`
--
ALTER TABLE `page_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pickup_points`
--
ALTER TABLE `pickup_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pickup_point_translations`
--
ALTER TABLE `pickup_point_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `policies`
--
ALTER TABLE `policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT untuk tabel `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=723;

--
-- AUTO_INCREMENT untuk tabel `product_taxes`
--
ALTER TABLE `product_taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT untuk tabel `product_translations`
--
ALTER TABLE `product_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT untuk tabel `proxypay_payments`
--
ALTER TABLE `proxypay_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `role_translations`
--
ALTER TABLE `role_translations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `seller_withdraw_requests`
--
ALTER TABLE `seller_withdraw_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27960;

--
-- AUTO_INCREMENT untuk tabel `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
