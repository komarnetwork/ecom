-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Agu 2021 pada 04.51
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
(28, 'gift-svgrepo-com', 'uploads/all/0e9WMTkV4oH256Q21pSiZOFYAy4agHtx1MiuSZ9g.svg', 9, 2418, 'svg', 'image', '2021-08-07 01:44:28', '2021-08-07 01:44:28', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
