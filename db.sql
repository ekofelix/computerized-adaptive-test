-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2021 at 05:19 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livewire`
--

-- --------------------------------------------------------

--
-- Table structure for table `competencies`
--

CREATE TABLE `competencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `competencies`
--

INSERT INTO `competencies` (`id`, `kelas_id`, `topic_id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Membilang banyak benda', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(2, 1, 2, 'Melakukan penjumlahan dan pengurangan bilangan sampai 20', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(3, 1, 3, 'Melakukan penjumlahan dan pengurangan bilangan sampai 20', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(4, 2, 4, 'Melakukan perkalian bilangan yang hasilnya bilangan dua angka', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(5, 2, 5, 'Melakukan operasi hitung campuran', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(6, 3, 6, 'Melakukan penjumlahan dan pengurangan tiga angka', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(7, 3, 7, 'Melakukan penjumlahan dan pengurangan tiga angka', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(8, 3, 8, 'Melakukan perkalian yang hasilnya bilangan tiga angka dan pembagian bilangan tiga angka', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(9, 3, 9, 'Melakukan perkalian yang hasilnya bilangan tiga angka dan pembagian bilangan tiga angka', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(10, 4, 10, 'Menjumlahkan pecahan', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(11, 4, 11, 'Melakukan operasi hitung campuran', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(12, 5, 12, 'Mengubah pecahan ke bentuk persen dan desimal serta sebaliknya', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(13, 5, 14, 'Mengubah pecahan ke bentuk persen dan desimal serta sebaliknya', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(14, 5, 14, 'Mengalikan dan membagi berbagai bentuk pecahan', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(15, 5, 13, 'Mengalikan dan membagi berbagai bentuk pecahan', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(16, 5, 12, 'Mengalikan dan membagi berbagai bentuk pecahan', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(17, 6, 15, 'Melakukan operasi hitung bilangan bulat dalam pemecahan masalah (di artikel jurnal)/Menggunakan sifat-sifat operasi hitung termasuk operasi campuran, FPB dan KPK', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(18, 6, 16, 'Melakukan operasi hitung bilangan bulat dalam pemecahan masalah (di artikel jurnal)/Menggunakan sifat-sifat operasi hitung termasuk operasi campuran, FPB dan KPK', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(19, 6, 17, 'Menentukan rata-rata hitung dan modus sekumpulan data', '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelases`
--

CREATE TABLE `kelases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelases`
--

INSERT INTO `kelases` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', '2021-11-24 07:17:07', '2021-11-24 07:17:07', NULL),
(2, '2', '2021-11-24 07:17:07', '2021-11-24 07:17:07', NULL),
(3, '3', '2021-11-24 07:17:07', '2021-11-24 07:17:07', NULL),
(4, '4', '2021-11-24 07:17:08', '2021-11-24 07:17:08', NULL),
(5, '5', '2021-11-24 07:17:08', '2021-11-24 07:17:08', NULL),
(6, '6', '2021-11-24 07:17:08', '2021-11-24 07:17:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_08_23_163727_create_kelases_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2021_08_22_024837_create_permission_tables', 1),
(8, '2021_08_24_065810_create_topics_table', 1),
(9, '2021_08_24_065853_create_competencies_table', 1),
(10, '2021_08_24_065890_create_sub_competencies_table', 1),
(11, '2021_08_24_065923_create_questions_table', 1),
(12, '2021_08_24_070001_create_results_table', 1),
(13, '2021_08_24_070021_create_tests_table', 1),
(14, '2021_08_24_070042_create_test_answers_table', 1),
(15, '2021_08_24_070122_create_user_actions_table', 1),
(16, '2021_09_02_105939_create_students_table', 1),
(17, '2021_09_02_110547_create_sessions_table', 1),
(18, '2021_09_08_185135_create_question_options_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 19),
(2, 'App\\Models\\User', 20),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 23),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 25),
(2, 'App\\Models\\User', 26),
(2, 'App\\Models\\User', 27),
(2, 'App\\Models\\User', 28),
(2, 'App\\Models\\User', 29),
(2, 'App\\Models\\User', 30),
(2, 'App\\Models\\User', 31),
(2, 'App\\Models\\User', 32),
(2, 'App\\Models\\User', 33),
(2, 'App\\Models\\User', 34),
(2, 'App\\Models\\User', 35),
(2, 'App\\Models\\User', 36),
(2, 'App\\Models\\User', 37),
(2, 'App\\Models\\User', 38),
(2, 'App\\Models\\User', 39),
(2, 'App\\Models\\User', 40),
(2, 'App\\Models\\User', 41),
(2, 'App\\Models\\User', 42),
(2, 'App\\Models\\User', 43),
(2, 'App\\Models\\User', 44),
(2, 'App\\Models\\User', 45),
(2, 'App\\Models\\User', 46),
(2, 'App\\Models\\User', 47),
(2, 'App\\Models\\User', 48),
(2, 'App\\Models\\User', 49),
(2, 'App\\Models\\User', 50),
(2, 'App\\Models\\User', 51),
(2, 'App\\Models\\User', 52),
(2, 'App\\Models\\User', 53),
(2, 'App\\Models\\User', 54),
(2, 'App\\Models\\User', 55),
(2, 'App\\Models\\User', 56),
(2, 'App\\Models\\User', 57),
(2, 'App\\Models\\User', 58),
(2, 'App\\Models\\User', 59),
(2, 'App\\Models\\User', 60),
(2, 'App\\Models\\User', 61),
(2, 'App\\Models\\User', 62),
(2, 'App\\Models\\User', 63),
(2, 'App\\Models\\User', 64),
(2, 'App\\Models\\User', 65),
(2, 'App\\Models\\User', 66),
(2, 'App\\Models\\User', 67),
(2, 'App\\Models\\User', 68),
(2, 'App\\Models\\User', 69),
(2, 'App\\Models\\User', 70),
(2, 'App\\Models\\User', 71),
(2, 'App\\Models\\User', 72),
(2, 'App\\Models\\User', 73),
(2, 'App\\Models\\User', 74),
(2, 'App\\Models\\User', 75),
(2, 'App\\Models\\User', 76),
(2, 'App\\Models\\User', 77),
(2, 'App\\Models\\User', 78),
(2, 'App\\Models\\User', 79),
(2, 'App\\Models\\User', 80),
(2, 'App\\Models\\User', 81),
(2, 'App\\Models\\User', 82),
(2, 'App\\Models\\User', 83),
(2, 'App\\Models\\User', 84),
(2, 'App\\Models\\User', 85),
(2, 'App\\Models\\User', 86),
(2, 'App\\Models\\User', 87),
(2, 'App\\Models\\User', 88),
(2, 'App\\Models\\User', 89),
(2, 'App\\Models\\User', 90),
(2, 'App\\Models\\User', 91),
(2, 'App\\Models\\User', 92),
(2, 'App\\Models\\User', 93),
(2, 'App\\Models\\User', 94),
(2, 'App\\Models\\User', 95),
(2, 'App\\Models\\User', 96),
(2, 'App\\Models\\User', 97),
(2, 'App\\Models\\User', 98),
(2, 'App\\Models\\User', 99),
(2, 'App\\Models\\User', 100),
(2, 'App\\Models\\User', 101),
(2, 'App\\Models\\User', 102),
(2, 'App\\Models\\User', 103),
(2, 'App\\Models\\User', 104),
(2, 'App\\Models\\User', 105),
(2, 'App\\Models\\User', 106),
(2, 'App\\Models\\User', 107),
(2, 'App\\Models\\User', 108),
(2, 'App\\Models\\User', 109),
(2, 'App\\Models\\User', 110),
(2, 'App\\Models\\User', 111),
(2, 'App\\Models\\User', 112),
(2, 'App\\Models\\User', 113),
(2, 'App\\Models\\User', 114),
(2, 'App\\Models\\User', 115),
(2, 'App\\Models\\User', 116),
(2, 'App\\Models\\User', 117),
(2, 'App\\Models\\User', 118),
(2, 'App\\Models\\User', 119),
(2, 'App\\Models\\User', 120),
(2, 'App\\Models\\User', 121),
(2, 'App\\Models\\User', 122),
(2, 'App\\Models\\User', 123),
(2, 'App\\Models\\User', 124),
(2, 'App\\Models\\User', 125),
(2, 'App\\Models\\User', 126),
(2, 'App\\Models\\User', 127),
(2, 'App\\Models\\User', 128),
(2, 'App\\Models\\User', 129),
(2, 'App\\Models\\User', 130),
(2, 'App\\Models\\User', 131),
(2, 'App\\Models\\User', 132),
(2, 'App\\Models\\User', 133),
(2, 'App\\Models\\User', 134),
(2, 'App\\Models\\User', 135),
(2, 'App\\Models\\User', 136),
(2, 'App\\Models\\User', 137),
(2, 'App\\Models\\User', 138),
(2, 'App\\Models\\User', 139),
(2, 'App\\Models\\User', 140),
(2, 'App\\Models\\User', 141),
(2, 'App\\Models\\User', 142),
(2, 'App\\Models\\User', 143),
(2, 'App\\Models\\User', 144),
(2, 'App\\Models\\User', 145),
(2, 'App\\Models\\User', 146),
(2, 'App\\Models\\User', 147),
(2, 'App\\Models\\User', 148),
(2, 'App\\Models\\User', 149),
(2, 'App\\Models\\User', 150),
(2, 'App\\Models\\User', 151),
(2, 'App\\Models\\User', 152),
(2, 'App\\Models\\User', 153),
(2, 'App\\Models\\User', 154),
(2, 'App\\Models\\User', 155),
(2, 'App\\Models\\User', 156),
(2, 'App\\Models\\User', 157),
(2, 'App\\Models\\User', 158),
(2, 'App\\Models\\User', 159),
(2, 'App\\Models\\User', 160),
(2, 'App\\Models\\User', 161),
(2, 'App\\Models\\User', 162),
(2, 'App\\Models\\User', 163),
(2, 'App\\Models\\User', 164),
(2, 'App\\Models\\User', 165),
(2, 'App\\Models\\User', 166),
(2, 'App\\Models\\User', 167),
(2, 'App\\Models\\User', 168),
(2, 'App\\Models\\User', 169),
(2, 'App\\Models\\User', 170),
(2, 'App\\Models\\User', 171),
(2, 'App\\Models\\User', 172),
(2, 'App\\Models\\User', 173),
(2, 'App\\Models\\User', 174),
(2, 'App\\Models\\User', 175),
(2, 'App\\Models\\User', 176),
(2, 'App\\Models\\User', 177),
(2, 'App\\Models\\User', 178),
(2, 'App\\Models\\User', 179),
(2, 'App\\Models\\User', 180),
(2, 'App\\Models\\User', 181),
(2, 'App\\Models\\User', 182),
(2, 'App\\Models\\User', 183),
(2, 'App\\Models\\User', 184),
(2, 'App\\Models\\User', 185),
(2, 'App\\Models\\User', 186),
(2, 'App\\Models\\User', 187),
(2, 'App\\Models\\User', 188),
(2, 'App\\Models\\User', 189),
(2, 'App\\Models\\User', 190),
(2, 'App\\Models\\User', 191),
(2, 'App\\Models\\User', 192),
(2, 'App\\Models\\User', 193),
(2, 'App\\Models\\User', 194),
(2, 'App\\Models\\User', 195),
(2, 'App\\Models\\User', 196),
(2, 'App\\Models\\User', 197),
(2, 'App\\Models\\User', 198),
(2, 'App\\Models\\User', 199),
(2, 'App\\Models\\User', 200),
(2, 'App\\Models\\User', 201),
(2, 'App\\Models\\User', 202),
(2, 'App\\Models\\User', 203),
(2, 'App\\Models\\User', 204),
(2, 'App\\Models\\User', 205),
(2, 'App\\Models\\User', 206),
(2, 'App\\Models\\User', 207),
(2, 'App\\Models\\User', 208),
(2, 'App\\Models\\User', 209),
(2, 'App\\Models\\User', 210),
(2, 'App\\Models\\User', 211),
(2, 'App\\Models\\User', 212),
(2, 'App\\Models\\User', 213),
(2, 'App\\Models\\User', 214),
(2, 'App\\Models\\User', 215),
(2, 'App\\Models\\User', 216),
(2, 'App\\Models\\User', 217),
(2, 'App\\Models\\User', 218),
(2, 'App\\Models\\User', 219),
(2, 'App\\Models\\User', 220),
(2, 'App\\Models\\User', 221),
(2, 'App\\Models\\User', 222),
(2, 'App\\Models\\User', 223),
(2, 'App\\Models\\User', 224),
(2, 'App\\Models\\User', 225),
(2, 'App\\Models\\User', 226),
(2, 'App\\Models\\User', 227),
(2, 'App\\Models\\User', 228),
(2, 'App\\Models\\User', 229),
(2, 'App\\Models\\User', 230),
(2, 'App\\Models\\User', 231),
(2, 'App\\Models\\User', 232),
(2, 'App\\Models\\User', 233),
(2, 'App\\Models\\User', 234),
(2, 'App\\Models\\User', 235),
(2, 'App\\Models\\User', 236),
(2, 'App\\Models\\User', 237),
(2, 'App\\Models\\User', 238),
(2, 'App\\Models\\User', 239),
(2, 'App\\Models\\User', 240),
(2, 'App\\Models\\User', 241),
(2, 'App\\Models\\User', 242),
(2, 'App\\Models\\User', 243),
(2, 'App\\Models\\User', 244),
(2, 'App\\Models\\User', 245),
(2, 'App\\Models\\User', 246),
(2, 'App\\Models\\User', 247),
(2, 'App\\Models\\User', 248),
(2, 'App\\Models\\User', 249),
(2, 'App\\Models\\User', 250),
(2, 'App\\Models\\User', 251),
(2, 'App\\Models\\User', 252),
(2, 'App\\Models\\User', 253),
(2, 'App\\Models\\User', 254),
(2, 'App\\Models\\User', 255),
(2, 'App\\Models\\User', 256),
(2, 'App\\Models\\User', 257),
(2, 'App\\Models\\User', 258),
(2, 'App\\Models\\User', 259),
(2, 'App\\Models\\User', 260),
(2, 'App\\Models\\User', 261),
(2, 'App\\Models\\User', 262),
(2, 'App\\Models\\User', 263),
(2, 'App\\Models\\User', 264),
(2, 'App\\Models\\User', 265),
(2, 'App\\Models\\User', 266),
(2, 'App\\Models\\User', 267),
(2, 'App\\Models\\User', 268),
(2, 'App\\Models\\User', 269),
(2, 'App\\Models\\User', 270),
(2, 'App\\Models\\User', 271),
(2, 'App\\Models\\User', 272),
(2, 'App\\Models\\User', 273),
(2, 'App\\Models\\User', 274),
(2, 'App\\Models\\User', 275),
(2, 'App\\Models\\User', 276),
(2, 'App\\Models\\User', 277),
(2, 'App\\Models\\User', 278),
(2, 'App\\Models\\User', 279),
(2, 'App\\Models\\User', 280),
(2, 'App\\Models\\User', 281),
(2, 'App\\Models\\User', 282),
(2, 'App\\Models\\User', 283),
(2, 'App\\Models\\User', 284),
(2, 'App\\Models\\User', 285),
(2, 'App\\Models\\User', 286),
(2, 'App\\Models\\User', 287),
(2, 'App\\Models\\User', 288),
(2, 'App\\Models\\User', 289),
(2, 'App\\Models\\User', 290),
(2, 'App\\Models\\User', 291),
(2, 'App\\Models\\User', 292),
(2, 'App\\Models\\User', 293),
(2, 'App\\Models\\User', 294),
(2, 'App\\Models\\User', 295),
(2, 'App\\Models\\User', 296),
(2, 'App\\Models\\User', 297),
(2, 'App\\Models\\User', 298),
(2, 'App\\Models\\User', 299),
(2, 'App\\Models\\User', 300),
(2, 'App\\Models\\User', 301),
(2, 'App\\Models\\User', 302),
(2, 'App\\Models\\User', 303),
(2, 'App\\Models\\User', 304),
(2, 'App\\Models\\User', 305),
(2, 'App\\Models\\User', 306),
(2, 'App\\Models\\User', 307),
(2, 'App\\Models\\User', 308),
(2, 'App\\Models\\User', 309),
(2, 'App\\Models\\User', 310),
(2, 'App\\Models\\User', 311);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` bigint(20) UNSIGNED NOT NULL,
  `competency_id` bigint(20) UNSIGNED NOT NULL,
  `sub_competency_id` bigint(20) UNSIGNED NOT NULL,
  `question_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_explanation` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `more_info_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tingkat_kesulitan` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `kelas_id`, `topic_id`, `competency_id`, `sub_competency_id`, `question_text`, `answer_explanation`, `more_info_link`, `tingkat_kesulitan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 2, 2, '8 + 5 + 4 = ...', NULL, NULL, 1.00, '2021-11-24 07:20:14', '2021-11-24 07:20:14', NULL),
(2, 1, 3, 3, 3, '6 - 3 = ...', NULL, NULL, 1.00, '2021-11-24 07:20:14', '2021-11-24 07:20:14', NULL),
(3, 1, 2, 2, 2, '7 + 2 + 6 = ...', NULL, NULL, 1.00, '2021-11-24 07:20:14', '2021-11-24 07:20:14', NULL),
(4, 1, 3, 3, 3, '9 - 5 = ...', NULL, NULL, 1.00, '2021-11-24 07:20:14', '2021-11-24 07:20:14', NULL),
(5, 1, 2, 2, 2, '8 + 1 + 2 + 5 = ...', NULL, NULL, 1.00, '2021-11-24 07:20:14', '2021-11-24 07:20:14', NULL),
(6, 1, 1, 1, 1, 'Lambang bilangan 5...', NULL, NULL, 1.00, '2021-11-24 07:20:14', '2021-11-24 07:20:14', NULL),
(7, 1, 1, 1, 1, 'Lambang bilangan 14...', NULL, NULL, 1.00, '2021-11-24 07:20:14', '2021-11-24 07:20:14', NULL),
(8, 1, 1, 1, 1, 'Lambang bilangan 7...', NULL, NULL, 1.00, '2021-11-24 07:20:14', '2021-11-24 07:20:14', NULL),
(9, 1, 1, 1, 1, 'Lambang bilangan \"Delapan belas\"...', NULL, NULL, 1.00, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(10, 1, 1, 1, 1, 'Lambang bilangan \"Tujuh\"...', NULL, NULL, 1.00, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(11, 2, 4, 4, 4, '4 x 7 = … + … + … + … = …', NULL, NULL, 1.00, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(12, 2, 4, 4, 4, '4 x 2 x 4 = … x … = …', NULL, NULL, 1.00, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(13, 2, 4, 4, 4, '0 = 65 x …', NULL, NULL, 1.00, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(14, 2, 4, 4, 4, 'Paman mempunyai 5 kantong plastik berisi kue donat. Masing-masing kantong terdiri dari 20 donat. Ada berapa banyak jumlah keseluruhan donat Paman?', NULL, NULL, 2.00, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(15, 2, 4, 4, 4, '9 x 9 = …', NULL, NULL, 1.00, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(16, 2, 5, 5, 5, '6 x 10 - 72 : 8 = …', NULL, NULL, 2.00, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(17, 2, 5, 5, 5, '( 3 + 5 ) x 7 : ( 4 - 2 ) = …', NULL, NULL, 2.00, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(18, 2, 5, 5, 5, '80 : 10 x 7 = … x … = …', NULL, NULL, 1.00, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(19, 2, 5, 5, 5, '5 + 4 - ( 2 x 4 ) + 8 = …', NULL, NULL, 2.00, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(20, 2, 5, 5, 5, '10 : 5 + ( 7 + 3 ) x 2 = …', NULL, NULL, 2.00, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(21, 3, 7, 7, 7, 'Selisih nilai angka 6 dan 7 pada bilangan 678 adalah..', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(22, 3, 6, 6, 6, '164 + 572 = …', NULL, NULL, 1.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(23, 3, 7, 7, 7, '327 - 245 = ...', NULL, NULL, 1.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(24, 3, 6, 6, 6, '565 + 73 = …', NULL, NULL, 1.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(25, 3, 7, 7, 7, '923 - 712 - 143 - …', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(26, 3, 9, 9, 9, 'Hasil dari 95 - 19 - 19 -19 - 19 - 19 = 0. Ini menunjukkan bahwa 95 : 19 = ..', NULL, NULL, 1.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(27, 3, 9, 9, 9, 'Tiga lembar uang lima ribu dapat ditukar dengan … keping uang lima ratus.', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(28, 3, 8, 8, 8, '9 x ( 8 x 7 ) = …', NULL, NULL, 1.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(29, 3, 9, 9, 9, '527 : 17 = …', NULL, NULL, 3.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(30, 3, 8, 8, 8, '33 x 24 = …', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(31, 4, 10, 10, 10, '3 1/3 + 1 1/4 = …', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(32, 4, 10, 10, 10, '6 1/4+ 8 3/5 = …', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(33, 4, 10, 10, 10, 'Hasil dari 5 1/6 + 5 1/3 adalah…', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(34, 4, 10, 10, 10, 'Hasil dari 2 1/4 + 4 3/4 adalah…', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(35, 4, 10, 10, 10, '9 2/5 + 3 1/6 = …', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(36, 4, 11, 11, 11, 'Hasil dari -86 + ( 8 x 6 ) adalah…', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(37, 4, 11, 11, 11, '-90 + ( 5 x 4 ) = …', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(38, 4, 11, 11, 11, '( 5 x -7 ) - 51 = ...', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(39, 4, 11, 11, 11, '-50 + ( 32 : 4) = …', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(40, 4, 11, 11, 11, 'Hasil dari 91 + 63 : 9 - 8 x 12 adalah…', NULL, NULL, 3.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(41, 5, 12, 16, 16, '1/2 + 1/3 - 1/4 = …', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(42, 5, 14, 14, 14, '3 3/4 : 2 1/2 = …', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(43, 5, 12, 16, 16, '3 2/5 + 2 1/3 - 1 5/6 = …', NULL, NULL, 3.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(44, 5, 13, 15, 15, '4 1/5 x 1 3/7 = …', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(45, 5, 14, 14, 14, '5/8 : 2/3 = …', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(46, 5, 14, 13, 13, '2/5 jika diubah dalam bentuk persen adalah … %', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(47, 5, 14, 13, 13, '7/20 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(48, 5, 14, 13, 13, '9/25 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(49, 5, 14, 13, 13, 'Pecahan biasa yang paling sederhana dari 80% adalah...', NULL, NULL, 1.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(50, 5, 12, 12, 12, '65% ayam bertelur. Yang belum bertelur ada 700 ekor ayam. Jumlah ayam pama ada … ekor.', NULL, NULL, 1.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(51, 6, 15, 17, 17, 'Kelipatan persekutuan terkecil (KPK) dari 48 dan 75 dalam bentuk faktorisasi prima adalah…', NULL, NULL, 3.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(52, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 20, 24, dan 72 adalah…', NULL, NULL, 3.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(53, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 16, 40, dan 80 adalah…', NULL, NULL, 3.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(54, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 9, 21, dan 51 adalah…', NULL, NULL, 3.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(55, 6, 15, 17, 17, 'Bu Ida mengganti tabung gas untuk keperluan memasak setiap 25 hari. Sedangkan Bu Endang mengganti tabung gas setiap 30 hari. Jika hari ini mereka mengganti tabung gas secara bersama-sama, maka mereka akan mengganti tabung gas secara bersama-sama lagi setelah...', NULL, NULL, 3.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(56, 6, 17, 19, 19, 'Data hasil lompatan peserta (dalam meter) pada semifinal lomba lompat jauh di tingkat Kecamatan Suka Maju adalah sebagai berikut: 4,5 4,5 4 4 4 3,5 4 3,5. Rata-rata hasil lompatan adalah…', NULL, NULL, 1.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(57, 6, 17, 19, 19, '2, 2, 3, 4, 5, 5, 6, 6, 6, 7. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(58, 6, 17, 19, 19, '7, 7, 8.6, 5, 6, 8, 7.4, 6, 7.5, 10. Rata-ratanya adalah…', NULL, NULL, 1.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(59, 6, 17, 19, 19, '3, 4, 5, 5, 4, 3.5, 4, 3.5, 4.5, 4.5. Modus nya adalah…', NULL, NULL, 1.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(60, 6, 17, 19, 19, '6.7, 8.6, 5, 6, 8, 7.4, 6, 7.5. Modus adalah…', NULL, NULL, 1.00, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_options`
--

CREATE TABLE `question_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correct` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_options`
--

INSERT INTO `question_options` (`id`, `question_id`, `option`, `correct`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '17', '1', '2021-11-24 07:20:28', '2021-11-24 07:20:28', NULL),
(2, 1, '15', '0', '2021-11-24 07:20:28', '2021-11-24 07:20:28', NULL),
(3, 1, '19', '0', '2021-11-24 07:20:28', '2021-11-24 07:20:28', NULL),
(4, 1, '13', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(5, 2, '5', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(6, 2, '10', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(7, 2, '3', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(8, 2, '9', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(9, 3, '14', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(10, 3, '15', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(11, 3, '12', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(12, 3, '18', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(13, 4, '4', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(14, 4, '2', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(15, 4, '1', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(16, 4, '6', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(17, 5, '15', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(18, 5, '16', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(19, 5, '17', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(20, 5, '14', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(21, 6, 'Enam', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(22, 6, 'Lima', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(23, 6, 'Empat', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(24, 6, 'Tiga', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(25, 7, 'Satu Empat', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(26, 7, 'Empat puluh', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(27, 7, 'Empat', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(28, 7, 'Empat belas', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(29, 8, 'Tujuh', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(30, 8, 'Sembilan', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(31, 8, 'Dua belas', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(32, 8, 'Lima', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(33, 9, '18', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(34, 9, '8', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(35, 9, '10', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(36, 9, '11', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(37, 10, '17', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(38, 10, '7', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(39, 10, '12', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(40, 10, '5', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(41, 11, '4 + 4 + 4 + 4 + 4 + 4 + 4 = 28', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(42, 11, '7 + 7 + 7 + 7 = 28', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(43, 11, '4 + 7 + 4 + 7 + 4 = 26', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(44, 11, '7 + 4 + 7 + 4 + 7 = 29', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(45, 12, '6 x 4 = 24', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(46, 12, '4 x 4 = 16', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(47, 12, '8 x 2 = 16', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(48, 12, '8 x 4 = 32', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(49, 13, '65', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(50, 13, '0', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(51, 13, '1', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(52, 13, '10', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(53, 14, '75', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(54, 14, '25', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(55, 14, '50', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(56, 14, '100', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(57, 15, '81', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(58, 15, '99', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(59, 15, '18', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(60, 15, '90', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(61, 16, '51', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(62, 16, '52', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(63, 16, '53', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(64, 16, '54', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(65, 17, '56', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(66, 17, '12', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(67, 17, '28', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(68, 17, '44', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(69, 18, '10 x 7 = 70', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(70, 18, '8 x 7 = 56', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(71, 18, '80 : 70 = 8 / 7', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(72, 18, '800 / 7', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(73, 19, '7', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(74, 19, '9', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(75, 19, '8', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(76, 19, '6', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(77, 20, '23', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(78, 20, '24', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(79, 20, '25', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(80, 20, '22', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(81, 21, '30', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(82, 21, '530', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(83, 21, '600', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(84, 21, '522', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(85, 22, '736', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(86, 22, '763', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(87, 22, '673', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(88, 22, '637', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(89, 23, '82', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(90, 23, '72', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(91, 23, '92', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(92, 23, '102', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(93, 24, '738', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(94, 24, '658', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(95, 24, '758', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(96, 24, '638', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(97, 25, '73', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(98, 25, '58', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(99, 25, '68', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(100, 25, '83', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(101, 26, '4', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(102, 26, '8', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(103, 26, '5', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(104, 26, '9', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(105, 27, '27', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(106, 27, '29', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(107, 27, '28', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(108, 27, '30', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(109, 28, '9 x ( 8 - 7 )', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(110, 28, '9 + ( 8 - 7 )', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(111, 28, '( 9 + 8 ) x 7', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(112, 28, '( 9 x 8 ) x 7', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(113, 29, '510', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(114, 29, '23', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(115, 29, '31', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(116, 29, '17', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(117, 30, '57', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(118, 30, '354', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(119, 30, '792', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(120, 30, '812', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(121, 31, '4 7/12', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(122, 31, '4 2/4', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(123, 31, '4 2/3', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(124, 31, '4 2/7', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(125, 32, '14 2/4', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(126, 32, '14 2/5', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(127, 32, '14 4/20', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(128, 32, '14 17/20', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(129, 33, '10', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(130, 33, '10 1/3', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(131, 33, '10 3/4', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(132, 33, '10 3/7', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(133, 34, '6', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(134, 34, '8', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(135, 34, '5', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(136, 34, '7', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(137, 35, '10 4/5', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(138, 35, '10 11/15', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(139, 35, '10 4/6', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(140, 35, '10 9/11', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(141, 36, '-48', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(142, 36, '38', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(143, 36, '-38', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(144, 36, '48', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(145, 37, '-70', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(146, 37, '-93', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(147, 37, '99', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(148, 37, '48', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(149, 38, '-63', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(150, 38, '54', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(151, 38, '-86', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(152, 38, '85', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(153, 39, '-58', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(154, 39, '-42', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(155, 39, '42', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(156, 39, '58', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(157, 40, '108', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(158, 40, '2', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(159, 40, '73', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(160, 40, '23', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(161, 41, '1/12', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(162, 41, '7/12', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(163, 41, '1', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(164, 41, '1 1/12', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(165, 42, '1 1/4', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(166, 42, '5 4/6', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(167, 42, '1 1/2', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(168, 42, '9 3/8', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(169, 43, '2 5/6', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(170, 43, '2 3/4', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(171, 43, '3 3/4', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(172, 43, '3 5/6', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(173, 44, '4 3/35', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(174, 44, '4 3/7', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(175, 44, '1 1/5', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(176, 44, '4 3/5', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(177, 45, '15/16', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(178, 45, '13/16', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(179, 45, '1 1/16', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(180, 45, '1 3/16', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(181, 46, '40', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(182, 46, '25', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(183, 46, '10', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(184, 46, '52', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(185, 47, '0,20', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(186, 47, '0,27', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(187, 47, '0,35', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(188, 47, '0,7', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(189, 48, '0,9', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(190, 48, '0,36', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(191, 48, '0,09', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(192, 48, '0,036', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(193, 49, '8/10', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(194, 49, '5/4', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(195, 49, '80/100', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(196, 49, '4/5', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(197, 50, '1300', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(198, 50, '700', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(199, 50, '6500', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(200, 50, '2000', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(201, 51, '2^3 x 3^2 x 5^2', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(202, 51, '2^3 x 3 x 5^2', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(203, 51, '2 x 3 x 5^2', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(204, 51, '2^4 x 3 x 5^2', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(205, 52, '2', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(206, 52, '60', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(207, 52, '4', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(208, 52, '360', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(209, 53, '4', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(210, 53, '2', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(211, 53, '8', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(212, 53, '6', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(213, 54, '6', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(214, 54, '9', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(215, 54, '3', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(216, 54, '2', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(217, 55, '150 hari', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(218, 55, '55 hari', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(219, 55, '50 hari', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(220, 55, '750 hari', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(221, 56, '4.5m', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(222, 56, '3.75m', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(223, 56, '4.0m', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(224, 56, '3.5m', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(225, 57, '4', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(226, 57, '4,6', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(227, 57, '5,2', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(228, 57, '6', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(229, 58, '6,5', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(230, 58, '6,75', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(231, 58, '6', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(232, 58, '6,25', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(233, 59, '4', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(234, 59, '5', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(235, 59, '4,5', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(236, 59, '3,5', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(237, 60, '5', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(238, 60, '6', '1', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(239, 60, '8', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL),
(240, 60, '7', '0', '2021-11-24 07:20:29', '2021-11-24 07:20:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `correct` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-11-24 07:17:07', '2021-11-24 07:17:07'),
(2, 'user', 'web', '2021-11-24 07:17:07', '2021-11-24 07:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('iMIiNS4QTj0UVnCOjzqLBfznNBVGHfFHWdGbVfKI', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:95.0) Gecko/20100101 Firefox/95.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoieEFNeHAyY1Q0QjloU3owNVVwMnFoN0E1Q3J2aFY3YzVhZTVyT05NQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDhGT0ZOdFRIOTluUGtUS0dBc0J2bmVwN0FDb2pYeDB1LkRiWmQwbEFiQWFJazFPZUQ1dmdpIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCQ4Rk9GTnRUSDk5blBrVEtHQXNCdm5lcDdBQ29qWHgwdS5EYlpkMGxBYkFhSWsxT2VENXZnaSI7fQ==', 1640362768);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_competencies`
--

CREATE TABLE `sub_competencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` bigint(20) UNSIGNED NOT NULL,
  `competency_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_competencies`
--

INSERT INTO `sub_competencies` (`id`, `kelas_id`, `topic_id`, `competency_id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 'Membilang banyak benda', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL),
(2, 1, 2, 2, 'Melakukan penjumlahan dan pengurangan bilangan sampai 20', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL),
(3, 1, 3, 3, 'Melakukan penjumlahan dan pengurangan bilangan sampai 20', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL),
(4, 2, 4, 4, 'Melakukan perkalian bilangan yang hasilnya bilangan dua angka', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL),
(5, 2, 5, 5, 'Melakukan operasi hitung campuran', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL),
(6, 3, 6, 6, 'Melakukan penjumlahan dan pengurangan tiga angka', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL),
(7, 3, 7, 7, 'Melakukan penjumlahan dan pengurangan tiga angka', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL),
(8, 3, 8, 8, 'Melakukan perkalian yang hasilnya bilangan tiga angka dan pembagian bilangan tiga angka', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL),
(9, 3, 9, 9, 'Melakukan perkalian yang hasilnya bilangan tiga angka dan pembagian bilangan tiga angka', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL),
(10, 4, 10, 10, 'Menjumlahkan pecahan', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL),
(11, 4, 11, 11, 'Melakukan operasi hitung campuran', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL),
(12, 5, 12, 12, 'Mengubah pecahan ke bentuk persen dan desimal serta sebaliknya', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL),
(13, 5, 14, 14, 'Mengubah pecahan ke bentuk persen dan desimal serta sebaliknya', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL),
(14, 5, 14, 14, 'Mengalikan dan membagi berbagai bentuk pecahan', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL),
(15, 5, 13, 13, 'Mengalikan dan membagi berbagai bentuk pecahan', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL),
(16, 5, 12, 12, 'Mengalikan dan membagi berbagai bentuk pecahan', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL),
(17, 6, 15, 15, 'Melakukan operasi hitung bilangan bulat dalam pemecahan masalah (di artikel jurnal)/Menggunakan sifat-sifat operasi hitung termasuk operasi campuran, FPB dan KPK', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL),
(18, 6, 16, 16, 'Melakukan operasi hitung bilangan bulat dalam pemecahan masalah (di artikel jurnal)/Menggunakan sifat-sifat operasi hitung termasuk operasi campuran, FPB dan KPK', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL),
(19, 6, 17, 17, 'Menentukan rata-rata hitung dan modus sekumpulan data', '2021-11-24 07:20:04', '2021-11-24 07:20:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `result` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `user_id`, `result`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, '3', '2021-11-25 07:44:01', '2021-11-25 07:44:02', NULL),
(2, 1, '2', '2021-11-25 10:13:25', '2021-11-25 10:13:26', NULL),
(3, 1, '0', '2021-11-25 10:21:56', '2021-11-25 10:21:56', NULL),
(4, 1, '0', '2021-11-25 10:41:44', '2021-11-25 10:41:44', NULL),
(5, 1, '1', '2021-12-06 16:50:34', '2021-12-06 16:50:34', NULL),
(6, 1, '1', '2021-12-06 16:51:16', '2021-12-06 16:51:16', NULL),
(7, 1, '1', '2021-12-06 16:52:07', '2021-12-06 16:52:08', NULL),
(8, 1, '1', '2021-12-06 16:52:18', '2021-12-06 16:52:19', NULL),
(9, 1, '1', '2021-12-06 16:52:53', '2021-12-06 16:52:53', NULL),
(10, 1, '1', '2021-12-06 16:53:18', '2021-12-06 16:53:18', NULL),
(11, 1, '1', '2021-12-06 16:53:33', '2021-12-06 16:53:33', NULL),
(12, 1, '0', '2021-12-06 16:53:51', '2021-12-06 16:53:51', NULL),
(13, 1, '1', '2021-12-07 11:50:23', '2021-12-07 11:50:24', NULL),
(14, 1, '1', '2021-12-07 11:51:32', '2021-12-07 11:51:32', NULL),
(15, 1, '1', '2021-12-07 11:52:53', '2021-12-07 11:52:54', NULL),
(16, 1, '1', '2021-12-07 11:53:50', '2021-12-07 11:53:50', NULL),
(17, 1, '1', '2021-12-07 11:57:24', '2021-12-07 11:57:25', NULL),
(18, 1, '1', '2021-12-07 11:57:52', '2021-12-07 11:57:53', NULL),
(19, 1, '1', '2021-12-07 11:58:42', '2021-12-07 11:58:43', NULL),
(20, 1, '1', '2021-12-07 12:02:42', '2021-12-07 12:02:42', NULL),
(21, 1, '1', '2021-12-07 12:04:08', '2021-12-07 12:04:08', NULL),
(22, 1, '0', '2021-12-07 12:09:18', '2021-12-07 12:09:18', NULL),
(23, 1, '0', '2021-12-07 12:11:10', '2021-12-07 12:11:10', NULL),
(24, 1, '0', '2021-12-07 12:12:02', '2021-12-07 12:12:02', NULL),
(25, 1, '0', '2021-12-07 12:21:18', '2021-12-07 12:21:18', NULL),
(26, 1, '0', '2021-12-07 12:24:44', '2021-12-07 12:24:44', NULL),
(27, 1, '0', '2021-12-07 12:28:09', '2021-12-07 12:28:09', NULL),
(28, 1, '0', '2021-12-07 12:36:50', '2021-12-07 12:36:50', NULL),
(29, 1, '0', '2021-12-07 12:37:23', '2021-12-07 12:37:23', NULL),
(30, 1, '0', '2021-12-07 12:37:40', '2021-12-07 12:37:40', NULL),
(31, 1, '0', '2021-12-07 12:38:45', '2021-12-07 12:38:45', NULL),
(32, 1, '0', '2021-12-07 13:14:00', '2021-12-07 13:14:00', NULL),
(33, 1, '0', '2021-12-07 13:15:25', '2021-12-07 13:15:25', NULL),
(34, 1, '0', '2021-12-07 13:17:03', '2021-12-07 13:17:03', NULL),
(35, 1, '0', '2021-12-07 13:20:07', '2021-12-07 13:20:07', NULL),
(36, 1, '0', '2021-12-07 13:21:26', '2021-12-07 13:21:26', NULL),
(37, 1, '1', '2021-12-07 13:41:15', '2021-12-07 13:41:15', NULL),
(38, 1, '1', '2021-12-07 13:42:02', '2021-12-07 13:42:02', NULL),
(39, 1, '0', '2021-12-07 13:42:12', '2021-12-07 13:42:12', NULL),
(40, 1, '1', '2021-12-07 13:43:35', '2021-12-07 13:43:36', NULL),
(41, 1, '2', '2021-12-07 13:46:59', '2021-12-07 13:47:00', NULL),
(42, 1, '0', '2021-12-07 13:56:04', '2021-12-07 13:56:04', NULL),
(43, 2, '3', '2021-12-07 14:03:50', '2021-12-07 14:03:52', NULL),
(44, 1, '1', '2021-12-17 23:24:32', '2021-12-17 23:24:33', NULL),
(45, 1, '3', '2021-12-19 05:21:52', '2021-12-19 05:21:53', NULL),
(46, 2, '0', '2021-12-24 09:06:21', '2021-12-24 09:06:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_answers`
--

CREATE TABLE `test_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `test_id` int(10) UNSIGNED DEFAULT NULL,
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `correct` tinyint(4) DEFAULT 0,
  `option_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_answers`
--

INSERT INTO `test_answers` (`id`, `user_id`, `test_id`, `question_id`, `correct`, `option_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 1, 12, 1, 48, '2021-11-25 07:44:01', '2021-11-25 07:44:01', NULL),
(2, NULL, 1, 4, 0, 16, '2021-11-25 07:44:01', '2021-11-25 07:44:01', NULL),
(3, NULL, 1, 7, 0, 27, '2021-11-25 07:44:01', '2021-11-25 07:44:01', NULL),
(4, NULL, 1, 11, 1, 42, '2021-11-25 07:44:01', '2021-11-25 07:44:01', NULL),
(5, NULL, 1, 36, 0, 144, '2021-11-25 07:44:02', '2021-11-25 07:44:02', NULL),
(6, NULL, 1, 54, 0, 216, '2021-11-25 07:44:02', '2021-11-25 07:44:02', NULL),
(7, NULL, 1, 42, 0, 168, '2021-11-25 07:44:02', '2021-11-25 07:44:02', NULL),
(8, NULL, 1, 20, 0, 78, '2021-11-25 07:44:02', '2021-11-25 07:44:02', NULL),
(9, NULL, 1, 56, 0, 222, '2021-11-25 07:44:02', '2021-11-25 07:44:02', NULL),
(10, NULL, 1, 30, 1, 119, '2021-11-25 07:44:02', '2021-11-25 07:44:02', NULL),
(11, 1, 2, 29, 1, 115, '2021-11-25 10:13:26', '2021-11-25 10:13:26', NULL),
(12, 1, 2, 46, 1, 181, '2021-11-25 10:13:26', '2021-11-25 10:13:26', NULL),
(13, 1, 3, 33, 0, 129, '2021-11-25 10:21:56', '2021-11-25 10:21:56', NULL),
(14, 1, 3, 35, 0, 140, '2021-11-25 10:21:57', '2021-11-25 10:21:57', NULL),
(15, 1, 4, 8, 0, 31, '2021-11-25 10:41:44', '2021-11-25 10:41:44', NULL),
(16, 1, 4, 20, 0, 78, '2021-11-25 10:41:45', '2021-11-25 10:41:45', NULL),
(17, 1, 5, 36, 1, 143, '2021-12-06 16:50:34', '2021-12-06 16:50:34', NULL),
(18, 1, 5, 40, 0, 159, '2021-12-06 16:50:34', '2021-12-06 16:50:34', NULL),
(19, 1, 6, 36, 1, 143, '2021-12-06 16:51:16', '2021-12-06 16:51:16', NULL),
(20, 1, 6, 40, 0, 159, '2021-12-06 16:51:16', '2021-12-06 16:51:16', NULL),
(21, 1, 7, 36, 1, 143, '2021-12-06 16:52:07', '2021-12-06 16:52:07', NULL),
(22, 1, 7, 40, 0, 159, '2021-12-06 16:52:08', '2021-12-06 16:52:08', NULL),
(23, 1, 8, 36, 1, 143, '2021-12-06 16:52:18', '2021-12-06 16:52:18', NULL),
(24, 1, 8, 40, 0, 159, '2021-12-06 16:52:18', '2021-12-06 16:52:18', NULL),
(25, 1, 9, 36, 1, 143, '2021-12-06 16:52:53', '2021-12-06 16:52:53', NULL),
(26, 1, 9, 40, 0, 159, '2021-12-06 16:52:53', '2021-12-06 16:52:53', NULL),
(27, 1, 10, 36, 1, 143, '2021-12-06 16:53:18', '2021-12-06 16:53:18', NULL),
(28, 1, 10, 40, 0, 159, '2021-12-06 16:53:18', '2021-12-06 16:53:18', NULL),
(29, 1, 11, 36, 1, 143, '2021-12-06 16:53:33', '2021-12-06 16:53:33', NULL),
(30, 1, 11, 40, 0, 159, '2021-12-06 16:53:33', '2021-12-06 16:53:33', NULL),
(31, 1, 12, 45, 0, 180, '2021-12-06 16:53:51', '2021-12-06 16:53:51', NULL),
(32, 1, 12, 18, 0, 69, '2021-12-06 16:53:51', '2021-12-06 16:53:51', NULL),
(33, 1, 13, 42, 1, 167, '2021-12-07 11:50:24', '2021-12-07 11:50:24', NULL),
(34, 1, 13, 37, 0, 146, '2021-12-07 11:50:24', '2021-12-07 11:50:24', NULL),
(35, 1, 14, 42, 1, 167, '2021-12-07 11:51:32', '2021-12-07 11:51:32', NULL),
(36, 1, 14, 37, 0, 146, '2021-12-07 11:51:32', '2021-12-07 11:51:32', NULL),
(37, 1, 15, 42, 1, 167, '2021-12-07 11:52:53', '2021-12-07 11:52:53', NULL),
(38, 1, 15, 37, 0, 146, '2021-12-07 11:52:53', '2021-12-07 11:52:53', NULL),
(39, 1, 16, 42, 1, 167, '2021-12-07 11:53:50', '2021-12-07 11:53:50', NULL),
(40, 1, 16, 37, 0, 146, '2021-12-07 11:53:50', '2021-12-07 11:53:50', NULL),
(41, 1, 17, 42, 1, 167, '2021-12-07 11:57:25', '2021-12-07 11:57:25', NULL),
(42, 1, 17, 37, 0, 146, '2021-12-07 11:57:25', '2021-12-07 11:57:25', NULL),
(43, 1, 18, 42, 1, 167, '2021-12-07 11:57:52', '2021-12-07 11:57:52', NULL),
(44, 1, 18, 37, 0, 146, '2021-12-07 11:57:53', '2021-12-07 11:57:53', NULL),
(45, 1, 19, 42, 1, 167, '2021-12-07 11:58:42', '2021-12-07 11:58:42', NULL),
(46, 1, 19, 37, 0, 146, '2021-12-07 11:58:43', '2021-12-07 11:58:43', NULL),
(47, 1, 20, 42, 1, 167, '2021-12-07 12:02:42', '2021-12-07 12:02:42', NULL),
(48, 1, 20, 37, 0, 146, '2021-12-07 12:02:42', '2021-12-07 12:02:42', NULL),
(49, 1, 21, 42, 1, 167, '2021-12-07 12:04:08', '2021-12-07 12:04:08', NULL),
(50, 1, 21, 37, 0, 146, '2021-12-07 12:04:08', '2021-12-07 12:04:08', NULL),
(51, 1, 37, 46, 0, 182, '2021-12-07 13:41:15', '2021-12-07 13:41:15', NULL),
(52, 1, 37, 11, 1, 42, '2021-12-07 13:41:15', '2021-12-07 13:41:15', NULL),
(53, 1, 38, 46, 0, 182, '2021-12-07 13:42:02', '2021-12-07 13:42:02', NULL),
(54, 1, 38, 11, 1, 42, '2021-12-07 13:42:02', '2021-12-07 13:42:02', NULL),
(55, 1, 39, 60, 0, 237, '2021-12-07 13:42:12', '2021-12-07 13:42:12', NULL),
(56, 1, 39, 25, 0, 98, '2021-12-07 13:42:12', '2021-12-07 13:42:12', NULL),
(57, 1, 40, 35, 0, 139, '2021-12-07 13:43:35', '2021-12-07 13:43:35', NULL),
(58, 1, 40, 10, 1, 38, '2021-12-07 13:43:35', '2021-12-07 13:43:35', NULL),
(59, 1, 41, 26, 0, 102, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(60, 1, 41, 27, 0, 105, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(61, 1, 41, 35, 0, 140, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(62, 1, 41, 56, 0, 222, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(63, 1, 41, 17, 0, 66, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(64, 1, 41, 5, 1, 20, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(65, 1, 41, 28, 1, 112, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(66, 1, 41, 20, 0, 78, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(67, 1, 41, 14, 0, 53, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(68, 1, 41, 13, 0, 52, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(69, 1, 42, 49, 0, 195, '2021-12-07 13:56:04', '2021-12-07 13:56:04', NULL),
(70, 1, 42, 58, 0, 231, '2021-12-07 13:56:05', '2021-12-07 13:56:05', NULL),
(71, 1, 42, 15, 0, 59, '2021-12-07 13:56:05', '2021-12-07 13:56:05', NULL),
(72, 1, 42, 53, 0, 209, '2021-12-07 13:56:05', '2021-12-07 13:56:05', NULL),
(73, 1, 42, 12, 0, 47, '2021-12-07 13:56:05', '2021-12-07 13:56:05', NULL),
(74, 1, 42, 1, 0, 3, '2021-12-07 13:56:05', '2021-12-07 13:56:05', NULL),
(75, 1, 42, 33, 0, 132, '2021-12-07 13:56:05', '2021-12-07 13:56:05', NULL),
(76, 1, 42, 60, 0, 239, '2021-12-07 13:56:05', '2021-12-07 13:56:05', NULL),
(77, 1, 42, 5, 0, 17, '2021-12-07 13:56:05', '2021-12-07 13:56:05', NULL),
(78, 1, 42, 46, 0, 184, '2021-12-07 13:56:06', '2021-12-07 13:56:06', NULL),
(79, 2, 43, 30, 1, 119, '2021-12-07 14:03:51', '2021-12-07 14:03:51', NULL),
(80, 2, 43, 37, 0, 146, '2021-12-07 14:03:51', '2021-12-07 14:03:51', NULL),
(81, 2, 43, 29, 0, 114, '2021-12-07 14:03:51', '2021-12-07 14:03:51', NULL),
(82, 2, 43, 13, 1, 50, '2021-12-07 14:03:51', '2021-12-07 14:03:51', NULL),
(83, 2, 43, 10, 0, 40, '2021-12-07 14:03:51', '2021-12-07 14:03:51', NULL),
(84, 2, 43, 38, 0, 152, '2021-12-07 14:03:51', '2021-12-07 14:03:51', NULL),
(85, 2, 43, 19, 0, 75, '2021-12-07 14:03:52', '2021-12-07 14:03:52', NULL),
(86, 2, 43, 18, 1, 70, '2021-12-07 14:03:52', '2021-12-07 14:03:52', NULL),
(87, 2, 43, 52, 0, 205, '2021-12-07 14:03:52', '2021-12-07 14:03:52', NULL),
(88, 2, 43, 11, 0, 41, '2021-12-07 14:03:52', '2021-12-07 14:03:52', NULL),
(89, 1, 44, 5, 0, 19, '2021-12-17 23:24:32', '2021-12-17 23:24:32', NULL),
(90, 1, 44, 6, 1, 22, '2021-12-17 23:24:33', '2021-12-17 23:24:33', NULL),
(91, 1, 44, 4, 0, 15, '2021-12-17 23:24:33', '2021-12-17 23:24:33', NULL),
(92, 1, 44, 7, 0, 25, '2021-12-17 23:24:33', '2021-12-17 23:24:33', NULL),
(93, 1, 44, 1, 0, 2, '2021-12-17 23:24:33', '2021-12-17 23:24:33', NULL),
(94, 1, 45, 52, 0, 208, '2021-12-19 05:21:52', '2021-12-19 05:21:52', NULL),
(95, 1, 45, 53, 1, 211, '2021-12-19 05:21:52', '2021-12-19 05:21:52', NULL),
(96, 1, 45, 56, 0, 224, '2021-12-19 05:21:53', '2021-12-19 05:21:53', NULL),
(97, 1, 45, 51, 1, 204, '2021-12-19 05:21:53', '2021-12-19 05:21:53', NULL),
(98, 1, 45, 54, 1, 215, '2021-12-19 05:21:53', '2021-12-19 05:21:53', NULL),
(99, 2, 46, 54, 0, 214, '2021-12-24 09:06:21', '2021-12-24 09:06:21', NULL),
(100, 2, 46, 55, 0, 219, '2021-12-24 09:06:21', '2021-12-24 09:06:21', NULL),
(101, 2, 46, 52, 0, 208, '2021-12-24 09:06:21', '2021-12-24 09:06:21', NULL),
(102, 2, 46, 60, 0, 240, '2021-12-24 09:06:21', '2021-12-24 09:06:21', NULL),
(103, 2, 46, 57, 0, 228, '2021-12-24 09:06:22', '2021-12-24 09:06:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timer` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `kelas_id`, `title`, `timer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Bilangan', NULL, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(2, 1, 'Penjumlahan', NULL, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(3, 1, 'Pengurangan', NULL, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(4, 2, 'Perkalian', NULL, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(5, 2, 'Operasi Hitung Campur', NULL, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(6, 3, 'Penjumlahan', NULL, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(7, 3, 'Pengurangan', NULL, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(8, 3, 'Perkalian', NULL, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(9, 3, 'Pembagian', NULL, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(10, 4, 'Penjumlahan Pecahan', NULL, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(11, 4, 'Operasi Hitung Campur', NULL, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(12, 5, 'Operasi Hitung Campur', NULL, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(13, 5, 'Perkalian Pecahan', NULL, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(14, 5, 'Pembagian Pecahan', NULL, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(15, 6, 'KPK', NULL, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(16, 6, 'FPB', NULL, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(17, 6, 'Pengolahan Data', NULL, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nisn` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `gender` enum('Male','Female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nisn`, `name`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `school`, `age`, `kelas_id`, `gender`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 201810370311126, 'Felix', '$2y$10$8FOFNtTH99nPkTKGAsBvnep7ACojXx0u.DbZd0lAbAaIk1OeD5vgi', NULL, NULL, 'Sdn Maju Mundur', 10, 6, 'Male', '2021-11-24 07:17:08', '2021-11-24 07:17:08', NULL),
(2, 1266, 'Peserta', '$2y$10$szDg9tvlFwI0JKRe.7l2EuUaInsPSKnAeVdcZKeUhGNdXIU07cSOe', NULL, NULL, 'Sdn Maju Mundur', 10, 6, 'Male', '2021-11-24 07:17:08', '2021-11-24 07:17:08', NULL),
(3, 87, 'Juan Asher Reiko', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 6, 'Female', '2021-12-24 09:19:25', '2021-12-24 09:19:25', NULL),
(4, 71, 'Jason Terry Karyadinata', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 6, 'Male', '2021-12-24 09:19:25', '2021-12-24 09:19:25', NULL),
(5, 84, 'Jocelyn Tedjokusuma', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 6, 'Female', '2021-12-24 09:19:25', '2021-12-24 09:19:25', NULL),
(6, 76, 'Angely Nathania Go', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 6, 'Male', '2021-12-24 09:19:25', '2021-12-24 09:19:25', NULL),
(7, 161, 'Suryaiman Saputra Igirisa ', '12345678', NULL, NULL, 'MIT Al Islah', 12, 6, 'Male', '2021-12-24 09:19:25', '2021-12-24 09:19:25', NULL),
(8, 88, 'Franciska Tarma Niastuti', '12345678', NULL, NULL, 'SDK Kristus Raja', 12, 6, 'Female', '2021-12-24 09:19:25', '2021-12-24 09:19:25', NULL),
(9, 78, 'Gabriella Wenny Gracia', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 6, 'Female', '2021-12-24 09:19:25', '2021-12-24 09:19:25', NULL),
(10, 158, 'Siti Maysaroh N Isa ', '12345678', NULL, NULL, 'MIT Al Islah', 11, 6, 'Female', '2021-12-24 09:19:25', '2021-12-24 09:19:25', NULL),
(11, 148, 'Marha Rifani Fayza Bahsuan', '12345678', NULL, NULL, 'MIT Al Islah', 11, 6, 'Female', '2021-12-24 09:19:25', '2021-12-24 09:19:25', NULL),
(12, 67, 'David Alexander L', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 6, 'Male', '2021-12-24 09:19:25', '2021-12-24 09:19:25', NULL),
(13, 82, 'Jessica Agung Mulia', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 6, 'Female', '2021-12-24 09:19:25', '2021-12-24 09:19:25', NULL),
(14, 70, 'Jason Alexandro Demili', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 6, 'Male', '2021-12-24 09:19:25', '2021-12-24 09:19:25', NULL),
(15, 74, 'Anastasia Evelyn', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 6, 'Female', '2021-12-24 09:19:25', '2021-12-24 09:19:25', NULL),
(16, 156, 'Dzillan DzoliIlan Abdul Fatah', '12345678', NULL, NULL, 'MIT Al Islah', 11, 6, 'Female', '2021-12-24 09:19:25', '2021-12-24 09:19:25', NULL),
(17, 154, 'Mujahid A Nadjamuddin ', '12345678', NULL, NULL, 'MIT Al Islah', 11, 6, 'Male', '2021-12-24 09:19:25', '2021-12-24 09:19:25', NULL),
(18, 160, 'Syalwa Salsabila Mohamad', '12345678', NULL, NULL, 'MIT Al Islah', 11, 6, 'Female', '2021-12-24 09:19:25', '2021-12-24 09:19:25', NULL),
(19, 163, 'Maftuh Daffansyah Polingala', '12345678', NULL, NULL, 'MIT Al Islah', 12, 6, 'Male', '2021-12-24 09:19:25', '2021-12-24 09:19:25', NULL),
(20, 79, 'Chelsea Livikho Jefferson', '12345678', NULL, NULL, 'SDK Kristus Raja', 10, 6, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(21, 89, 'Rr Alyshia Indira Nugraha', '12345678', NULL, NULL, 'SDK Kristus Raja', 10, 6, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(22, 166, 'Akmal Musytasyar ', '12345678', NULL, NULL, 'MIT Al Islah', 12, 6, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(23, 162, 'Moh Fauzi Djakani', '12345678', NULL, NULL, 'MIT Al Islah', 11, 6, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(24, 165, 'Mohamad Daryl Ichwan ', '12345678', NULL, NULL, 'MIT Al Islah', 11, 6, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(25, 69, 'Han Christian Gunawan', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 6, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(26, 73, 'Kevin Phillips', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 6, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(27, 155, 'Musfira H Makruf ', '12345678', NULL, NULL, 'MIT Al Islah', 11, 6, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(28, 72, 'Jonathan Wijaya', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 6, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(29, 152, 'Naali Ilham Fauzan Luawo', '12345678', NULL, NULL, 'MIT Al Islah', 11, 6, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(30, 159, 'Haniwati Fawza', '12345678', NULL, NULL, 'MIT Al Islah', 11, 6, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(31, 157, 'Anugrah Bernas Hunowu', '12345678', NULL, NULL, 'MIT Al Islah', 11, 6, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(32, 83, 'Jason Christopher Wijaya', '12345678', NULL, NULL, 'SDK Kristus Raja', 10, 6, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(33, 80, 'Jenica Agung Mulia', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 6, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(34, 66, 'Cliff Constantine Oentoeng', '12345678', NULL, NULL, 'SDK Kristus Raja', 12, 6, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(35, 150, 'Nazwa Chika Rahmaya S Ekie', '12345678', NULL, NULL, 'MIT Al Islah', 11, 6, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(36, 168, 'Moh Hilmi Kauba ', '12345678', NULL, NULL, 'MIT Al Islah', 11, 6, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(37, 85, 'Clara Jotica Subhaga', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 6, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(38, 75, 'Angelique Novelyn', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 6, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(39, 86, 'Lolana Victoria Frans', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 6, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(40, 81, 'Gavriel Xaverianus', '12345678', NULL, NULL, 'SDK Kristus Raja', 12, 6, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(41, 77, 'Antoinetta Bertricia', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 6, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(42, 149, 'Zahrah Meilani Latjompo', '12345678', NULL, NULL, 'MIT Al Islah', 11, 6, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(43, 167, 'Alya Mosolo', '12345678', NULL, NULL, 'MIT Al Islah', 11, 6, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(44, 153, 'Nayla Azzahra Bahmid', '12345678', NULL, NULL, 'MIT Al Islah', 11, 6, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(45, 164, 'M Ihsan Abdillah', '12345678', NULL, NULL, 'MIT Al Islah', 11, 6, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(46, 68, 'Eugene Emmanuel Oe', '12345678', NULL, NULL, 'SDK Kristus Raja', 12, 6, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(47, 151, 'Daffa Aqilah Putri Dunggio', '12345678', NULL, NULL, 'MIT Al Islah', 11, 6, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(48, 169, 'Syahran Fathan Anau ', '12345678', NULL, NULL, 'MIT Al Islah', 10, 6, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(49, 49, 'Edmundo Kitaro ', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(50, 51, 'Nevilleson Anneldeano Teguh', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(51, 135, 'Omar Nadjamuddin', '12345678', NULL, NULL, 'MIT Al Islah', 10, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(52, 56, 'Callita Cecilia Soeharno', '12345678', NULL, NULL, 'SDK Kristus Raja', 10, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(53, 308, 'Wiwik Setiani', '12345678', NULL, NULL, 'A', 12, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(54, 141, 'Yasserly Amrina Afwa', '12345678', NULL, NULL, 'MIT Al Islah', 11, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(55, 48, 'Billy Fidelito Hartono', '12345678', NULL, NULL, 'SDK Kristus Raja', 10, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(56, 143, 'Moh Athalllah Dzul Hannan', '12345678', NULL, NULL, 'MIT Al Islah', 10, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(57, 58, 'Celline Natania Go', '12345678', NULL, NULL, 'SDK Kristus Raja', 10, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(58, 55, 'Aghata Aurelia Putri Sulendra', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(59, 59, 'Michelle Freya G.J.', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(60, 137, 'Muh Faiz Putra Syahroni', '12345678', NULL, NULL, 'MIT Al Islah', 10, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(61, 134, 'Apriyani Anggraeny K', '12345678', NULL, NULL, 'MIT Al Islah', 10, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(62, 57, 'Carolyna Jocelyn C.A.', '12345678', NULL, NULL, 'SDK Kristus Raja', 10, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(63, 63, 'Jordan Rumuy', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(64, 61, 'Reginna Sasha Kosasih', '12345678', NULL, NULL, 'SDK Kristus Raja', 10, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(65, 62, 'Vivian Liemantoro', '12345678', NULL, NULL, 'SDK Kristus Raja', 10, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(66, 60, 'Princessa Alexandra', '12345678', NULL, NULL, 'SDK Kristus Raja', 10, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(67, 147, 'Michelle Barents', '12345678', NULL, NULL, 'MIT Al Islah', 11, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(68, 52, 'Ryo Hartono Margowidjojo', '12345678', NULL, NULL, 'SDK Kristus Raja', 10, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(69, 139, 'El Fara Hikari Syahputra', '12345678', NULL, NULL, 'MIT Al Islah', 10, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(70, 140, 'Fikri Gono', '12345678', NULL, NULL, 'MIT Al Islah', 11, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(71, 146, 'Arifah', '12345678', NULL, NULL, 'MIT Al Islah', 11, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(72, 145, 'Nayla', '12345678', NULL, NULL, 'MIT Al Islah', 10, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(73, 136, 'Ahmad Jihad Habiburahman Insan', '12345678', NULL, NULL, 'MIT Al Islah', 11, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(74, 64, 'Rafael Nicolas Setiawan', '12345678', NULL, NULL, 'SDK Kristus Raja', 11, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(75, 53, 'Satrio Endi Nugroho', '12345678', NULL, NULL, 'SDK Kristus Raja', 10, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(76, 298, 'Novandatrio P', '12345678', NULL, NULL, 'A', 11, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(77, 300, 'Toha Maulana Ibrahim', '12345678', NULL, NULL, 'A', 12, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(78, 50, 'Hebert Karsten Juwono', '12345678', NULL, NULL, 'SDK Kristus Raja', 10, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(79, 296, 'Andi Guntur S', '12345678', NULL, NULL, 'A', 12, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(80, 299, 'Nabilatun Nasikhah', '12345678', NULL, NULL, 'A', 11, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(81, 65, 'Naquita Angelica Vaughn', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(82, 292, 'Nopan Riski Saputra', '12345678', NULL, NULL, 'A', 11, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(83, 54, 'Valentino Vincent Cussoy', '12345678', NULL, NULL, 'SDK Kristus Raja', 10, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(84, 144, 'Septiani M. Muhsin', '12345678', NULL, NULL, 'MIT Al Islah', 10, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(85, 142, 'Tauhid Lamangandjo', '12345678', NULL, NULL, 'MIT Al Islah', 10, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(86, 303, 'Devilia Kharisma Putri', '12345678', NULL, NULL, 'A', 12, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(87, 309, 'Febri Setiawan', '12345678', NULL, NULL, 'A', 11, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(88, 307, 'Intan Sekar Arum Nirmala', '12345678', NULL, NULL, 'A', 11, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(89, 301, 'Seru Putri Hellen Agustin', '12345678', NULL, NULL, 'A', 11, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(90, 297, 'Bagas Dwi Saputra', '12345678', NULL, NULL, 'A', 14, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(91, 249, 'Habida Farhanudin', '12345678', NULL, NULL, 'A', 11, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(92, 138, 'Arash Rahmola', '12345678', NULL, NULL, 'MIT Al Islah', 10, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(93, 304, 'Estik Wulan Dari', '12345678', NULL, NULL, 'A', 12, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(94, 294, 'Rio Novan R', '12345678', NULL, NULL, 'A', 11, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(95, 306, 'Meisi Ulya Levo Linda', '12345678', NULL, NULL, 'A', 11, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(96, 295, 'Dimas Prayogi', '12345678', NULL, NULL, 'A', 14, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(97, 293, 'Jeki Daneia', '12345678', NULL, NULL, 'A', 11, 5, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(98, 302, 'Najwa Khoirul Jannah', '12345678', NULL, NULL, 'A', 11, 5, 'Female', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(99, 31, 'Gabriel Nalom Lumbantoruan', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 4, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(100, 113, 'Jalal Purnama Alam', '12345678', NULL, NULL, 'MIT Al Islah', 0, 4, 'Male', '2021-12-24 09:19:26', '2021-12-24 09:19:26', NULL),
(101, 121, 'Fadlan Van Gobel', '12345678', NULL, NULL, 'MIT Al Islah', 0, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(102, 132, 'Ninis', '12345678', NULL, NULL, 'MIT Al Islah', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(103, 129, 'Aqilah Zafairah', '12345678', NULL, NULL, 'MIT Al Islah', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(104, 117, 'Siti Feriska K Harun', '12345678', NULL, NULL, 'MIT Al Islah', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(105, 112, 'Khairunnisa Salsabila Lihawa', '12345678', NULL, NULL, 'MIT Al Islah', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(106, 35, 'Jessica Trevina Gunawan', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(107, 130, 'M. Fathan Iyabu', '12345678', NULL, NULL, 'MIT Al Islah', 9, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(108, 41, 'Rayhan Pawitra Nagatama', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(109, 36, 'Kayla Sananta', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(110, 120, 'Fathil Al Saajid', '12345678', NULL, NULL, 'MIT Al Islah', 10, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(111, 30, 'Gabriel Christhoper Kwee Jaya', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(112, 118, 'Solih', '12345678', NULL, NULL, 'MIT Al Islah', 9, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(113, 116, 'Nayla Fazmar R Biya', '12345678', NULL, NULL, 'MIT Al Islah', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(114, 123, 'Triana Aprilia Antuke', '12345678', NULL, NULL, 'MIT Al Islah', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(115, 128, 'Marwah Putri Usuli', '12345678', NULL, NULL, 'MIT Al Islah', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(116, 28, 'Erensano Gunawan', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(117, 122, 'Kaisar', '12345678', NULL, NULL, 'MIT Al Islah', 9, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(118, 133, 'Amelia Shakira Ar Rahman', '12345678', NULL, NULL, 'MIT Al Islah', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(119, 131, 'Salsabila Rosalia Akili', '12345678', NULL, NULL, 'MIT Al Islah', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(120, 26, 'Calysta Audrey Ongkoseputro', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(121, 27, 'Cherish Wilona', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(122, 126, 'Ahmad Nabil Abqoty Husain', '12345678', NULL, NULL, 'MIT Al Islah', 9, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(123, 32, 'Ghea Ignacia', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(124, 125, 'Siti Nurkhaliza', '12345678', NULL, NULL, 'MIT Al Islah', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(125, 119, 'Nasya A Putri', '12345678', NULL, NULL, 'MIT Al Islah', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(126, 38, 'Matthew Evangelo Poentoadji', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(127, 40, 'Nicholas Alviano Paramatirta', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(128, 127, 'Aska Avra Ghinah Hanifa', '12345678', NULL, NULL, 'MIT Al Islah', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(129, 45, 'Braveheart Nikho Jefferson', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(130, 39, 'Nathanael Olivier Ong', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(131, 47, 'Victoria', '12345678', NULL, NULL, 'SDK Kristus Raja', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(132, 25, 'Benediktus Matthew Nicholas', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(133, 124, 'Ashraf Putra Bau', '12345678', NULL, NULL, 'MIT Al Islah', 9, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(134, 37, 'Larasati Ayu Pertiwi', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(135, 24, 'Alicia Angeline Seryadi', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(136, 29, 'Florencia Irene Lugianto', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(137, 115, 'Alifah A. Achmad', '12345678', NULL, NULL, 'MIT Al Islah', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(138, 44, 'Shanice Clarine Sussanto', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(139, 34, 'Jennifer Maralonia', '12345678', NULL, NULL, 'SDK Kristus Raja', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(140, 42, 'Stanislaus Andrew Louis L.', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(141, 33, 'Jason Julius Tjandra', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(142, 201, 'Candra Nur Cahyana', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(143, 114, 'Rifki', '12345678', NULL, NULL, 'MIT Al Islah', 9, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(144, 241, 'Nurdi Affandi Suroso', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(145, 46, 'Marvel Jericho Hermawan', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(146, 43, 'Tizar Sahala Hawkson Sianipar', '12345678', NULL, NULL, 'SDK Kristus Raja', 10, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(147, 214, 'Puguh Adi Nugroho', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(148, 204, 'Dafa Hulul Murtadho', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(149, 194, 'Bilqis Tanaya M', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(150, 240, 'Rivania Dwi Pangestu', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(151, 207, 'Zavira Meidya Dwi Ardana', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(152, 284, 'Aryo Galang Saputra', '12345678', NULL, NULL, 'A', 10, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(153, 198, 'Irul Nururrohim', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(154, 219, 'Aulia Safira P', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(155, 203, 'Siti Wardah Tul Jannah', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(156, 190, 'Nesya Sekar Nugrahaning Tyas', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(157, 276, 'Reno Bagus V', '12345678', NULL, NULL, 'A', 10, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(158, 242, 'Oki Rahmadhani', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(159, 227, 'Alfin Bagus', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(160, 245, 'Hilmy Setiawan', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(161, 287, 'Andrian Galih Prasetyo', '12345678', NULL, NULL, 'A', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(162, 231, 'Dwi Candra Prasetyo', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(163, 208, 'M Zidan Alfarizi', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(164, 238, 'Nesa Diska Aprilia', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(165, 229, 'Yoga', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(166, 224, 'William', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(167, 236, 'M. Alijannah', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(168, 228, 'Rhehan Saputra', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(169, 217, 'Aldo Wahyu Pratama', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(170, 213, 'Muhamad Ilham Santoso', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(171, 225, 'M Ivan Galang P', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(172, 222, 'Nena Revalina', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(173, 278, 'Adenta', '12345678', NULL, NULL, 'A', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(174, 184, 'Vanessa Maulina H', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(175, 183, 'Alfin Adetyaramadila', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(176, 177, 'Muhamat Nasurulloh Amir', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(177, 202, 'Danang Santoso', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(178, 173, 'Ardiansyah', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(179, 180, 'Nanda Amelia', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(180, 216, 'Anastasya', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(181, 171, 'Dinda Prasetya', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(182, 212, 'Elsa Okta Uparama Dhani', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(183, 221, 'Dennis A', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(184, 230, 'Ervina Ma\'ri Fahturohma', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(185, 233, 'Eka Fitriana A', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(186, 181, 'Ayun Nur Aini', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(187, 172, 'Aulia Isnaini', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(188, 243, 'Ramadan', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(189, 247, 'Devin Eko P', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(190, 223, 'Ferdy', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(191, 289, 'Ike Widya Nurhidayah', '12345678', NULL, NULL, 'A', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(192, 271, 'Satypan Zamilun Shaleh', '12345678', NULL, NULL, 'A', 10, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(193, 188, 'Seranokianadewi', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(194, 248, 'Andre', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(195, 193, 'Elza Ariantono', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(196, 279, 'Revana Lita Hidayatul Fadila', '12345678', NULL, NULL, 'A', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(197, 178, 'Mohammad Arifin', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(198, 270, 'Kukuh Prasetyo', '12345678', NULL, NULL, 'A', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(199, 192, 'Anahaya Abidah Setiawan', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(200, 226, 'Bimarangga Antoni', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(201, 189, 'Septia Eka Naya Prasety0', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(202, 185, 'Reza Mardiani', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(203, 234, 'Muhamad Niko Setiawan', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(204, 196, 'Nazwa Zul Fitriana', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(205, 244, 'Aris', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(206, 174, 'Ali Setiawan Kurnia Putra', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(207, 277, 'Septi Agustin', '12345678', NULL, NULL, 'A', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(208, 288, 'Marsel', '12345678', NULL, NULL, 'A', 10, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(209, 235, 'Nando', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(210, 199, 'Marsha Anggun Safira', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(211, 280, 'Alvina Nurma Widya', '12345678', NULL, NULL, 'A', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(212, 200, 'Lisa Nur Azizah', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(213, 282, 'Bagas Saputra', '12345678', NULL, NULL, 'A', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(214, 209, 'Agisca Yasmin Rofiaurelli', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(215, 283, 'Leo Firmansyah', '12345678', NULL, NULL, 'A', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(216, 239, 'Ferdi', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(217, 274, 'Bagas Angger', '12345678', NULL, NULL, 'A', 12, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(218, 275, 'Rendi Indra Ardana', '12345678', NULL, NULL, 'A', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(219, 176, 'Rahayu Febri Indriana', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(220, 273, 'Malik Umam R', '12345678', NULL, NULL, 'A', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(221, 191, 'Novita Anggraeni', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(222, 182, 'Yovita Amaliyanti', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(223, 290, 'Wiwy Ambar Isti Rahayu', '12345678', NULL, NULL, 'A', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(224, 179, 'Deva Rahma Apriliani', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(225, 186, 'Juwita Lintang Maharani Putri', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(226, 211, 'Sinta Anggi Tunggadewi', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(227, 175, 'Dwi Irfan Maulana', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(228, 281, 'Binti Nisdu Quiotul Ayun', '12345678', NULL, NULL, 'A', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(229, 215, 'Amanda Delia Novi Nur Aini', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(230, 286, 'Rinda Evi Rahmawati', '12345678', NULL, NULL, 'A', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(231, 206, 'Leni', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(232, 285, 'Candra Wahyu Saputra', '12345678', NULL, NULL, 'A', 10, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(233, 218, 'Arinta Ferinda', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(234, 220, 'Sultan Daffa', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(235, 232, 'Haikal', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(236, 187, 'Putri Annisa', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(237, 272, 'Dava Fadlhur Rohman', '12345678', NULL, NULL, 'A', 10, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(238, 246, 'M Eko P', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(239, 210, 'Ayu Artikasari', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(240, 195, 'Rina Nur Latifah', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(241, 205, 'Dimas Wahyu Mardiansyah', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(242, 237, 'Havid Adi Firmanzah', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(243, 170, 'Syahrul', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 11, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(244, 197, 'Surya Gemilang Kilmaassah', '12345678', NULL, NULL, 'SDN Putat Gede I Surabaya', 10, 4, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(245, 92, 'Afifah Azahra Nur', '12345678', NULL, NULL, 'MIT Al Ishlah', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(246, 110, 'Athirah KH. M', '12345678', NULL, NULL, 'MIT Al Ishlah', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(247, 20, 'Maelakhenia Sachineera Zen', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(248, 111, 'Zhafirah Balgis Rizal', '12345678', NULL, NULL, 'MIT Al Ishlah', 10, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(249, 17, 'Vania Elaine Tjandra', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(250, 15, 'Tiffany Gabriella Kristiano', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(251, 91, 'Syahidah', '12345678', NULL, NULL, 'MIT Al Ishlah', 10, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(252, 6, 'Della Vianata', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(253, 2, 'Arnetta Arya Tjwa', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(254, 101, 'Alifah', '12345678', NULL, NULL, 'MIT Al Ishlah', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(255, 21, 'Kenzo Keenan Khosuma', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(256, 107, 'Khaira', '12345678', NULL, NULL, 'MIT Al Ishlah', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(257, 109, 'Multazam', '12345678', NULL, NULL, 'MIT Al Ishlah', 9, 3, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(258, 7, 'Jesselyn Suwignyo', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(259, 4, 'Chelsea Terry Karyadinata', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(260, 99, 'Faizah Jihada Putri', '12345678', NULL, NULL, 'MIT Al Ishlah', 9, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(261, 94, 'Nujwaan R.F Lasut', '12345678', NULL, NULL, 'MIT Al Ishlah', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(262, 10, 'Kimiko Fradella Walalangi', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(263, 93, 'Dzaky Hudzkifah Ali Lihawa', '12345678', NULL, NULL, 'MIT Al Ishlah', 8, 3, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(264, 11, 'Natalia Noviani Sidharta', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(265, 19, 'Yohana Afrilia Olin', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(266, 8, 'Joachim Stefanson', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(267, 1, 'Andreas Alantius Taslulu', '12345678', NULL, NULL, 'SDK Kristus Raja', 9, 3, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(268, 100, 'Fara', '12345678', NULL, NULL, 'MIT Al Ishlah', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(269, 102, 'Syahrul', '12345678', NULL, NULL, 'MIT Al Ishlah', 9, 3, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(270, 103, 'Hafidz Al Kawarizmi', '12345678', NULL, NULL, 'MIT Al Ishlah', 8, 3, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(271, 23, 'Calvin', '12345678', NULL, NULL, 'SDK Kristus Raja', 7, 3, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(272, 13, 'Samantha Amy Lee Tandjung', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(273, 16, 'Valent Kurnia Rahadjo', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(274, 97, 'Nayluvar', '12345678', NULL, NULL, 'MIT Al Ishlah', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(275, 95, 'Alifia S. Kasim', '12345678', NULL, NULL, 'MIT Al Ishlah', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(276, 105, 'Aidil', '12345678', NULL, NULL, 'MIT Al Ishlah', 8, 3, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(277, 106, 'Reski Baiku', '12345678', NULL, NULL, 'MIT Al Ishlah', 9, 3, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(278, 9, 'Joyce Caroline', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(279, 104, 'Azan', '12345678', NULL, NULL, 'MIT Al Ishlah', 9, 3, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(280, 250, 'Dwiky Fia', '12345678', NULL, NULL, 'A', 12, 3, 'Male', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(281, 12, 'Regina Gabriella', '12345678', NULL, NULL, 'SDK Kristus Raja', 7, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(282, 14, 'Shanessa Leung', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Female', '2021-12-24 09:19:27', '2021-12-24 09:19:27', NULL),
(283, 96, 'Shafirah', '12345678', NULL, NULL, 'MIT Al Ishlah', 9, 3, 'Female', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(284, 90, 'Fauzil Kango', '12345678', NULL, NULL, 'MIT Al Ishlah', 8, 3, 'Male', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(285, 22, 'Frederique Dwight Vaughn', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Male', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(286, 108, 'Al Ghifahri', '12345678', NULL, NULL, 'MIT Al Ishlah', 9, 3, 'Male', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(287, 261, 'Anggun Biyeida', '12345678', NULL, NULL, 'A', 11, 3, 'Female', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(288, 253, 'Tiara Selviana', '12345678', NULL, NULL, 'A', 10, 3, 'Female', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(289, 3, 'Brigitta Rayi Ayu Triyanti', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Female', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(290, 305, 'Nabila Eka Arum Sari', '12345678', NULL, NULL, 'A', 12, 3, 'Female', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(291, 18, 'William Sugiharto Margowi', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Male', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(292, 291, 'Irva Duwisaputra', '12345678', NULL, NULL, 'A', 12, 3, 'Female', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(293, 258, 'Yoga Prasetiawan', '12345678', NULL, NULL, 'A', 12, 3, 'Male', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(294, 257, 'Mo Haikal E G', '12345678', NULL, NULL, 'A', 10, 3, 'Male', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(295, 251, 'Afin Rismawan', '12345678', NULL, NULL, 'A', 12, 3, 'Male', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(296, 254, 'Mizaky Aminoden', '12345678', NULL, NULL, 'A', 10, 3, 'Male', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(297, 256, 'Cindy', '12345678', NULL, NULL, 'A', 10, 3, 'Female', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(298, 264, 'Azis V P', '12345678', NULL, NULL, 'A', 10, 3, 'Male', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(299, 265, 'Yanuar Setiabudi E S', '12345678', NULL, NULL, 'A', 9, 3, 'Male', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(300, 268, 'Callista Nur Qomarina', '12345678', NULL, NULL, 'A', 10, 3, 'Female', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(301, 252, 'Mifatkhur', '12345678', NULL, NULL, 'A', 11, 3, 'Male', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(302, 266, 'Angga Duwi Fahri Ainur Rahman', '12345678', NULL, NULL, 'A', 10, 3, 'Male', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(303, 260, 'Intan Aysia P', '12345678', NULL, NULL, 'A', 10, 3, 'Female', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(304, 267, 'Dyah Tri Ayu Ning Tyas', '12345678', NULL, NULL, 'A', 10, 3, 'Female', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(305, 5, 'Cyrilus Abnertya Hartono', '12345678', NULL, NULL, 'SDK Kristus Raja', 8, 3, 'Male', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(306, 259, 'Sayyidatu Neha Sari Putri Muhyidin', '12345678', NULL, NULL, 'A', 10, 3, 'Female', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(307, 255, 'Syeri', '12345678', NULL, NULL, 'A', 10, 3, 'Female', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(308, 263, 'Nasya Intan Patcia', '12345678', NULL, NULL, 'A', 10, 3, 'Female', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(309, 262, 'Amelia Kartika Sari', '12345678', NULL, NULL, 'A', 9, 3, 'Female', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(310, 98, 'Fatir Nusih', '12345678', NULL, NULL, 'MIT Al Ishlah', 8, 3, 'Male', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL),
(311, 269, 'Eri Nurita Sari', '12345678', NULL, NULL, 'A', 10, 3, 'Female', '2021-12-24 09:19:28', '2021-12-24 09:19:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_actions`
--

CREATE TABLE `user_actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_actions`
--

INSERT INTO `user_actions` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'created', 'topics', 1, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(2, 1, 'created', 'topics', 2, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(3, 1, 'created', 'topics', 3, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(4, 1, 'created', 'topics', 4, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(5, 1, 'created', 'topics', 5, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(6, 1, 'created', 'topics', 6, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(7, 1, 'created', 'topics', 7, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(8, 1, 'created', 'topics', 8, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(9, 1, 'created', 'topics', 9, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(10, 1, 'created', 'topics', 10, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(11, 1, 'created', 'topics', 11, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(12, 1, 'created', 'topics', 12, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(13, 1, 'created', 'topics', 13, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(14, 1, 'created', 'topics', 14, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(15, 1, 'created', 'topics', 15, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(16, 1, 'created', 'topics', 16, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(17, 1, 'created', 'topics', 17, '2021-11-24 07:19:37', '2021-11-24 07:19:37', NULL),
(18, 1, 'created', 'competencies', 1, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(19, 1, 'created', 'competencies', 2, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(20, 1, 'created', 'competencies', 3, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(21, 1, 'created', 'competencies', 4, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(22, 1, 'created', 'competencies', 5, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(23, 1, 'created', 'competencies', 6, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(24, 1, 'created', 'competencies', 7, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(25, 1, 'created', 'competencies', 8, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(26, 1, 'created', 'competencies', 9, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(27, 1, 'created', 'competencies', 10, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(28, 1, 'created', 'competencies', 11, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(29, 1, 'created', 'competencies', 12, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(30, 1, 'created', 'competencies', 13, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(31, 1, 'created', 'competencies', 14, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(32, 1, 'created', 'competencies', 15, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(33, 1, 'created', 'competencies', 16, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(34, 1, 'created', 'competencies', 17, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(35, 1, 'created', 'competencies', 18, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(36, 1, 'created', 'competencies', 19, '2021-11-24 07:19:50', '2021-11-24 07:19:50', NULL),
(37, 1, 'created', 'questions', 1, '2021-11-24 07:20:14', '2021-11-24 07:20:14', NULL),
(38, 1, 'created', 'questions', 2, '2021-11-24 07:20:14', '2021-11-24 07:20:14', NULL),
(39, 1, 'created', 'questions', 3, '2021-11-24 07:20:14', '2021-11-24 07:20:14', NULL),
(40, 1, 'created', 'questions', 4, '2021-11-24 07:20:14', '2021-11-24 07:20:14', NULL),
(41, 1, 'created', 'questions', 5, '2021-11-24 07:20:14', '2021-11-24 07:20:14', NULL),
(42, 1, 'created', 'questions', 6, '2021-11-24 07:20:14', '2021-11-24 07:20:14', NULL),
(43, 1, 'created', 'questions', 7, '2021-11-24 07:20:14', '2021-11-24 07:20:14', NULL),
(44, 1, 'created', 'questions', 8, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(45, 1, 'created', 'questions', 9, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(46, 1, 'created', 'questions', 10, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(47, 1, 'created', 'questions', 11, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(48, 1, 'created', 'questions', 12, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(49, 1, 'created', 'questions', 13, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(50, 1, 'created', 'questions', 14, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(51, 1, 'created', 'questions', 15, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(52, 1, 'created', 'questions', 16, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(53, 1, 'created', 'questions', 17, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(54, 1, 'created', 'questions', 18, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(55, 1, 'created', 'questions', 19, '2021-11-24 07:20:15', '2021-11-24 07:20:15', NULL),
(56, 1, 'created', 'questions', 20, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(57, 1, 'created', 'questions', 21, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(58, 1, 'created', 'questions', 22, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(59, 1, 'created', 'questions', 23, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(60, 1, 'created', 'questions', 24, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(61, 1, 'created', 'questions', 25, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(62, 1, 'created', 'questions', 26, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(63, 1, 'created', 'questions', 27, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(64, 1, 'created', 'questions', 28, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(65, 1, 'created', 'questions', 29, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(66, 1, 'created', 'questions', 30, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(67, 1, 'created', 'questions', 31, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(68, 1, 'created', 'questions', 32, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(69, 1, 'created', 'questions', 33, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(70, 1, 'created', 'questions', 34, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(71, 1, 'created', 'questions', 35, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(72, 1, 'created', 'questions', 36, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(73, 1, 'created', 'questions', 37, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(74, 1, 'created', 'questions', 38, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(75, 1, 'created', 'questions', 39, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(76, 1, 'created', 'questions', 40, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(77, 1, 'created', 'questions', 41, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(78, 1, 'created', 'questions', 42, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(79, 1, 'created', 'questions', 43, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(80, 1, 'created', 'questions', 44, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(81, 1, 'created', 'questions', 45, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(82, 1, 'created', 'questions', 46, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(83, 1, 'created', 'questions', 47, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(84, 1, 'created', 'questions', 48, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(85, 1, 'created', 'questions', 49, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(86, 1, 'created', 'questions', 50, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(87, 1, 'created', 'questions', 51, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(88, 1, 'created', 'questions', 52, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(89, 1, 'created', 'questions', 53, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(90, 1, 'created', 'questions', 54, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(91, 1, 'created', 'questions', 55, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(92, 1, 'created', 'questions', 56, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(93, 1, 'created', 'questions', 57, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(94, 1, 'created', 'questions', 58, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(95, 1, 'created', 'questions', 59, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(96, 1, 'created', 'questions', 60, '2021-11-24 07:20:16', '2021-11-24 07:20:16', NULL),
(97, 1, 'created', 'tests', 2, '2021-11-25 10:13:26', '2021-11-25 10:13:26', NULL),
(98, 1, 'created', 'test_answers', 11, '2021-11-25 10:13:26', '2021-11-25 10:13:26', NULL),
(99, 1, 'created', 'test_answers', 12, '2021-11-25 10:13:26', '2021-11-25 10:13:26', NULL),
(100, 1, 'created', 'tests', 2, '2021-11-25 10:13:27', '2021-11-25 10:13:27', NULL),
(101, 1, 'created', 'tests', 3, '2021-11-25 10:21:56', '2021-11-25 10:21:56', NULL),
(102, 1, 'created', 'test_answers', 13, '2021-11-25 10:21:56', '2021-11-25 10:21:56', NULL),
(103, 1, 'created', 'test_answers', 14, '2021-11-25 10:21:57', '2021-11-25 10:21:57', NULL),
(104, 1, 'created', 'tests', 3, '2021-11-25 10:21:57', '2021-11-25 10:21:57', NULL),
(105, 1, 'created', 'tests', 4, '2021-11-25 10:41:44', '2021-11-25 10:41:44', NULL),
(106, 1, 'created', 'test_answers', 15, '2021-11-25 10:41:44', '2021-11-25 10:41:44', NULL),
(107, 1, 'created', 'test_answers', 16, '2021-11-25 10:41:45', '2021-11-25 10:41:45', NULL),
(108, 1, 'created', 'tests', 4, '2021-11-25 10:41:45', '2021-11-25 10:41:45', NULL),
(109, 1, 'created', 'tests', 5, '2021-12-06 16:50:34', '2021-12-06 16:50:34', NULL),
(110, 1, 'created', 'test_answers', 17, '2021-12-06 16:50:34', '2021-12-06 16:50:34', NULL),
(111, 1, 'created', 'test_answers', 18, '2021-12-06 16:50:34', '2021-12-06 16:50:34', NULL),
(112, 1, 'created', 'tests', 5, '2021-12-06 16:50:34', '2021-12-06 16:50:34', NULL),
(113, 1, 'created', 'tests', 6, '2021-12-06 16:51:16', '2021-12-06 16:51:16', NULL),
(114, 1, 'created', 'test_answers', 19, '2021-12-06 16:51:16', '2021-12-06 16:51:16', NULL),
(115, 1, 'created', 'test_answers', 20, '2021-12-06 16:51:16', '2021-12-06 16:51:16', NULL),
(116, 1, 'created', 'tests', 6, '2021-12-06 16:51:16', '2021-12-06 16:51:16', NULL),
(117, 1, 'created', 'tests', 7, '2021-12-06 16:52:07', '2021-12-06 16:52:07', NULL),
(118, 1, 'created', 'test_answers', 21, '2021-12-06 16:52:07', '2021-12-06 16:52:07', NULL),
(119, 1, 'created', 'test_answers', 22, '2021-12-06 16:52:08', '2021-12-06 16:52:08', NULL),
(120, 1, 'created', 'tests', 7, '2021-12-06 16:52:08', '2021-12-06 16:52:08', NULL),
(121, 1, 'created', 'tests', 8, '2021-12-06 16:52:18', '2021-12-06 16:52:18', NULL),
(122, 1, 'created', 'test_answers', 23, '2021-12-06 16:52:18', '2021-12-06 16:52:18', NULL),
(123, 1, 'created', 'test_answers', 24, '2021-12-06 16:52:19', '2021-12-06 16:52:19', NULL),
(124, 1, 'created', 'tests', 8, '2021-12-06 16:52:19', '2021-12-06 16:52:19', NULL),
(125, 1, 'created', 'tests', 9, '2021-12-06 16:52:53', '2021-12-06 16:52:53', NULL),
(126, 1, 'created', 'test_answers', 25, '2021-12-06 16:52:53', '2021-12-06 16:52:53', NULL),
(127, 1, 'created', 'test_answers', 26, '2021-12-06 16:52:53', '2021-12-06 16:52:53', NULL),
(128, 1, 'created', 'tests', 9, '2021-12-06 16:52:53', '2021-12-06 16:52:53', NULL),
(129, 1, 'created', 'tests', 10, '2021-12-06 16:53:18', '2021-12-06 16:53:18', NULL),
(130, 1, 'created', 'test_answers', 27, '2021-12-06 16:53:18', '2021-12-06 16:53:18', NULL),
(131, 1, 'created', 'test_answers', 28, '2021-12-06 16:53:18', '2021-12-06 16:53:18', NULL),
(132, 1, 'created', 'tests', 10, '2021-12-06 16:53:18', '2021-12-06 16:53:18', NULL),
(133, 1, 'created', 'tests', 11, '2021-12-06 16:53:33', '2021-12-06 16:53:33', NULL),
(134, 1, 'created', 'test_answers', 29, '2021-12-06 16:53:33', '2021-12-06 16:53:33', NULL),
(135, 1, 'created', 'test_answers', 30, '2021-12-06 16:53:33', '2021-12-06 16:53:33', NULL),
(136, 1, 'created', 'tests', 11, '2021-12-06 16:53:33', '2021-12-06 16:53:33', NULL),
(137, 1, 'created', 'tests', 12, '2021-12-06 16:53:51', '2021-12-06 16:53:51', NULL),
(138, 1, 'created', 'test_answers', 31, '2021-12-06 16:53:51', '2021-12-06 16:53:51', NULL),
(139, 1, 'created', 'test_answers', 32, '2021-12-06 16:53:51', '2021-12-06 16:53:51', NULL),
(140, 1, 'created', 'tests', 12, '2021-12-06 16:53:52', '2021-12-06 16:53:52', NULL),
(141, 1, 'created', 'tests', 13, '2021-12-07 11:50:23', '2021-12-07 11:50:23', NULL),
(142, 1, 'created', 'test_answers', 33, '2021-12-07 11:50:24', '2021-12-07 11:50:24', NULL),
(143, 1, 'created', 'test_answers', 34, '2021-12-07 11:50:24', '2021-12-07 11:50:24', NULL),
(144, 1, 'created', 'tests', 13, '2021-12-07 11:50:24', '2021-12-07 11:50:24', NULL),
(145, 1, 'created', 'tests', 14, '2021-12-07 11:51:32', '2021-12-07 11:51:32', NULL),
(146, 1, 'created', 'test_answers', 35, '2021-12-07 11:51:32', '2021-12-07 11:51:32', NULL),
(147, 1, 'created', 'test_answers', 36, '2021-12-07 11:51:32', '2021-12-07 11:51:32', NULL),
(148, 1, 'created', 'tests', 14, '2021-12-07 11:51:32', '2021-12-07 11:51:32', NULL),
(149, 1, 'created', 'tests', 15, '2021-12-07 11:52:53', '2021-12-07 11:52:53', NULL),
(150, 1, 'created', 'test_answers', 37, '2021-12-07 11:52:53', '2021-12-07 11:52:53', NULL),
(151, 1, 'created', 'test_answers', 38, '2021-12-07 11:52:54', '2021-12-07 11:52:54', NULL),
(152, 1, 'created', 'tests', 15, '2021-12-07 11:52:54', '2021-12-07 11:52:54', NULL),
(153, 1, 'created', 'tests', 16, '2021-12-07 11:53:50', '2021-12-07 11:53:50', NULL),
(154, 1, 'created', 'test_answers', 39, '2021-12-07 11:53:50', '2021-12-07 11:53:50', NULL),
(155, 1, 'created', 'test_answers', 40, '2021-12-07 11:53:50', '2021-12-07 11:53:50', NULL),
(156, 1, 'created', 'tests', 16, '2021-12-07 11:53:50', '2021-12-07 11:53:50', NULL),
(157, 1, 'created', 'tests', 17, '2021-12-07 11:57:24', '2021-12-07 11:57:24', NULL),
(158, 1, 'created', 'test_answers', 41, '2021-12-07 11:57:25', '2021-12-07 11:57:25', NULL),
(159, 1, 'created', 'test_answers', 42, '2021-12-07 11:57:25', '2021-12-07 11:57:25', NULL),
(160, 1, 'created', 'tests', 17, '2021-12-07 11:57:25', '2021-12-07 11:57:25', NULL),
(161, 1, 'created', 'tests', 18, '2021-12-07 11:57:52', '2021-12-07 11:57:52', NULL),
(162, 1, 'created', 'test_answers', 43, '2021-12-07 11:57:52', '2021-12-07 11:57:52', NULL),
(163, 1, 'created', 'test_answers', 44, '2021-12-07 11:57:53', '2021-12-07 11:57:53', NULL),
(164, 1, 'created', 'tests', 18, '2021-12-07 11:57:53', '2021-12-07 11:57:53', NULL),
(165, 1, 'created', 'tests', 19, '2021-12-07 11:58:42', '2021-12-07 11:58:42', NULL),
(166, 1, 'created', 'test_answers', 45, '2021-12-07 11:58:43', '2021-12-07 11:58:43', NULL),
(167, 1, 'created', 'test_answers', 46, '2021-12-07 11:58:43', '2021-12-07 11:58:43', NULL),
(168, 1, 'created', 'tests', 19, '2021-12-07 11:58:43', '2021-12-07 11:58:43', NULL),
(169, 1, 'created', 'tests', 20, '2021-12-07 12:02:42', '2021-12-07 12:02:42', NULL),
(170, 1, 'created', 'test_answers', 47, '2021-12-07 12:02:42', '2021-12-07 12:02:42', NULL),
(171, 1, 'created', 'test_answers', 48, '2021-12-07 12:02:42', '2021-12-07 12:02:42', NULL),
(172, 1, 'created', 'tests', 20, '2021-12-07 12:02:43', '2021-12-07 12:02:43', NULL),
(173, 1, 'created', 'tests', 21, '2021-12-07 12:04:08', '2021-12-07 12:04:08', NULL),
(174, 1, 'created', 'test_answers', 49, '2021-12-07 12:04:08', '2021-12-07 12:04:08', NULL),
(175, 1, 'created', 'test_answers', 50, '2021-12-07 12:04:08', '2021-12-07 12:04:08', NULL),
(176, 1, 'created', 'tests', 21, '2021-12-07 12:04:08', '2021-12-07 12:04:08', NULL),
(177, 1, 'created', 'tests', 22, '2021-12-07 12:09:19', '2021-12-07 12:09:19', NULL),
(178, 1, 'created', 'tests', 22, '2021-12-07 12:09:19', '2021-12-07 12:09:19', NULL),
(179, 1, 'created', 'tests', 23, '2021-12-07 12:11:10', '2021-12-07 12:11:10', NULL),
(180, 1, 'created', 'tests', 23, '2021-12-07 12:11:10', '2021-12-07 12:11:10', NULL),
(181, 1, 'created', 'tests', 24, '2021-12-07 12:12:02', '2021-12-07 12:12:02', NULL),
(182, 1, 'created', 'tests', 24, '2021-12-07 12:12:02', '2021-12-07 12:12:02', NULL),
(183, 1, 'created', 'tests', 25, '2021-12-07 12:21:18', '2021-12-07 12:21:18', NULL),
(184, 1, 'created', 'tests', 25, '2021-12-07 12:21:18', '2021-12-07 12:21:18', NULL),
(185, 1, 'created', 'tests', 26, '2021-12-07 12:24:44', '2021-12-07 12:24:44', NULL),
(186, 1, 'created', 'tests', 26, '2021-12-07 12:24:44', '2021-12-07 12:24:44', NULL),
(187, 1, 'created', 'tests', 27, '2021-12-07 12:28:09', '2021-12-07 12:28:09', NULL),
(188, 1, 'created', 'tests', 27, '2021-12-07 12:28:09', '2021-12-07 12:28:09', NULL),
(189, 1, 'created', 'tests', 28, '2021-12-07 12:36:50', '2021-12-07 12:36:50', NULL),
(190, 1, 'created', 'tests', 28, '2021-12-07 12:36:51', '2021-12-07 12:36:51', NULL),
(191, 1, 'created', 'tests', 29, '2021-12-07 12:37:23', '2021-12-07 12:37:23', NULL),
(192, 1, 'created', 'tests', 29, '2021-12-07 12:37:24', '2021-12-07 12:37:24', NULL),
(193, 1, 'created', 'tests', 30, '2021-12-07 12:37:40', '2021-12-07 12:37:40', NULL),
(194, 1, 'created', 'tests', 30, '2021-12-07 12:37:40', '2021-12-07 12:37:40', NULL),
(195, 1, 'created', 'tests', 31, '2021-12-07 12:38:45', '2021-12-07 12:38:45', NULL),
(196, 1, 'created', 'tests', 31, '2021-12-07 12:38:45', '2021-12-07 12:38:45', NULL),
(197, 1, 'created', 'tests', 32, '2021-12-07 13:14:00', '2021-12-07 13:14:00', NULL),
(198, 1, 'created', 'tests', 32, '2021-12-07 13:14:00', '2021-12-07 13:14:00', NULL),
(199, 1, 'created', 'tests', 33, '2021-12-07 13:15:25', '2021-12-07 13:15:25', NULL),
(200, 1, 'created', 'tests', 33, '2021-12-07 13:15:26', '2021-12-07 13:15:26', NULL),
(201, 1, 'created', 'tests', 34, '2021-12-07 13:17:04', '2021-12-07 13:17:04', NULL),
(202, 1, 'created', 'tests', 34, '2021-12-07 13:17:04', '2021-12-07 13:17:04', NULL),
(203, 1, 'created', 'tests', 35, '2021-12-07 13:20:07', '2021-12-07 13:20:07', NULL),
(204, 1, 'created', 'tests', 35, '2021-12-07 13:20:07', '2021-12-07 13:20:07', NULL),
(205, 1, 'created', 'tests', 36, '2021-12-07 13:21:26', '2021-12-07 13:21:26', NULL),
(206, 1, 'created', 'tests', 36, '2021-12-07 13:21:26', '2021-12-07 13:21:26', NULL),
(207, 1, 'created', 'tests', 37, '2021-12-07 13:41:15', '2021-12-07 13:41:15', NULL),
(208, 1, 'created', 'test_answers', 51, '2021-12-07 13:41:15', '2021-12-07 13:41:15', NULL),
(209, 1, 'created', 'test_answers', 52, '2021-12-07 13:41:15', '2021-12-07 13:41:15', NULL),
(210, 1, 'created', 'tests', 37, '2021-12-07 13:41:15', '2021-12-07 13:41:15', NULL),
(211, 1, 'created', 'tests', 38, '2021-12-07 13:42:02', '2021-12-07 13:42:02', NULL),
(212, 1, 'created', 'test_answers', 53, '2021-12-07 13:42:02', '2021-12-07 13:42:02', NULL),
(213, 1, 'created', 'test_answers', 54, '2021-12-07 13:42:02', '2021-12-07 13:42:02', NULL),
(214, 1, 'created', 'tests', 38, '2021-12-07 13:42:02', '2021-12-07 13:42:02', NULL),
(215, 1, 'created', 'tests', 39, '2021-12-07 13:42:12', '2021-12-07 13:42:12', NULL),
(216, 1, 'created', 'test_answers', 55, '2021-12-07 13:42:12', '2021-12-07 13:42:12', NULL),
(217, 1, 'created', 'test_answers', 56, '2021-12-07 13:42:12', '2021-12-07 13:42:12', NULL),
(218, 1, 'created', 'tests', 39, '2021-12-07 13:42:12', '2021-12-07 13:42:12', NULL),
(219, 1, 'created', 'tests', 40, '2021-12-07 13:43:35', '2021-12-07 13:43:35', NULL),
(220, 1, 'created', 'test_answers', 57, '2021-12-07 13:43:35', '2021-12-07 13:43:35', NULL),
(221, 1, 'created', 'test_answers', 58, '2021-12-07 13:43:36', '2021-12-07 13:43:36', NULL),
(222, 1, 'created', 'tests', 40, '2021-12-07 13:43:36', '2021-12-07 13:43:36', NULL),
(223, 1, 'created', 'tests', 41, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(224, 1, 'created', 'test_answers', 59, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(225, 1, 'created', 'test_answers', 60, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(226, 1, 'created', 'test_answers', 61, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(227, 1, 'created', 'test_answers', 62, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(228, 1, 'created', 'test_answers', 63, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(229, 1, 'created', 'test_answers', 64, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(230, 1, 'created', 'test_answers', 65, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(231, 1, 'created', 'test_answers', 66, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(232, 1, 'created', 'test_answers', 67, '2021-12-07 13:46:59', '2021-12-07 13:46:59', NULL),
(233, 1, 'created', 'test_answers', 68, '2021-12-07 13:47:00', '2021-12-07 13:47:00', NULL),
(234, 1, 'created', 'tests', 41, '2021-12-07 13:47:00', '2021-12-07 13:47:00', NULL),
(235, 1, 'created', 'tests', 42, '2021-12-07 13:56:04', '2021-12-07 13:56:04', NULL),
(236, 1, 'created', 'test_answers', 69, '2021-12-07 13:56:05', '2021-12-07 13:56:05', NULL),
(237, 1, 'created', 'test_answers', 70, '2021-12-07 13:56:05', '2021-12-07 13:56:05', NULL),
(238, 1, 'created', 'test_answers', 71, '2021-12-07 13:56:05', '2021-12-07 13:56:05', NULL),
(239, 1, 'created', 'test_answers', 72, '2021-12-07 13:56:05', '2021-12-07 13:56:05', NULL),
(240, 1, 'created', 'test_answers', 73, '2021-12-07 13:56:05', '2021-12-07 13:56:05', NULL),
(241, 1, 'created', 'test_answers', 74, '2021-12-07 13:56:05', '2021-12-07 13:56:05', NULL),
(242, 1, 'created', 'test_answers', 75, '2021-12-07 13:56:05', '2021-12-07 13:56:05', NULL),
(243, 1, 'created', 'test_answers', 76, '2021-12-07 13:56:05', '2021-12-07 13:56:05', NULL),
(244, 1, 'created', 'test_answers', 77, '2021-12-07 13:56:05', '2021-12-07 13:56:05', NULL),
(245, 1, 'created', 'test_answers', 78, '2021-12-07 13:56:06', '2021-12-07 13:56:06', NULL),
(246, 1, 'created', 'tests', 42, '2021-12-07 13:56:06', '2021-12-07 13:56:06', NULL),
(247, 2, 'created', 'tests', 43, '2021-12-07 14:03:51', '2021-12-07 14:03:51', NULL),
(248, 2, 'created', 'test_answers', 79, '2021-12-07 14:03:51', '2021-12-07 14:03:51', NULL),
(249, 2, 'created', 'test_answers', 80, '2021-12-07 14:03:51', '2021-12-07 14:03:51', NULL),
(250, 2, 'created', 'test_answers', 81, '2021-12-07 14:03:51', '2021-12-07 14:03:51', NULL),
(251, 2, 'created', 'test_answers', 82, '2021-12-07 14:03:51', '2021-12-07 14:03:51', NULL),
(252, 2, 'created', 'test_answers', 83, '2021-12-07 14:03:51', '2021-12-07 14:03:51', NULL),
(253, 2, 'created', 'test_answers', 84, '2021-12-07 14:03:51', '2021-12-07 14:03:51', NULL),
(254, 2, 'created', 'test_answers', 85, '2021-12-07 14:03:52', '2021-12-07 14:03:52', NULL),
(255, 2, 'created', 'test_answers', 86, '2021-12-07 14:03:52', '2021-12-07 14:03:52', NULL),
(256, 2, 'created', 'test_answers', 87, '2021-12-07 14:03:52', '2021-12-07 14:03:52', NULL),
(257, 2, 'created', 'test_answers', 88, '2021-12-07 14:03:52', '2021-12-07 14:03:52', NULL),
(258, 2, 'created', 'tests', 43, '2021-12-07 14:03:52', '2021-12-07 14:03:52', NULL),
(259, 1, 'created', 'tests', 44, '2021-12-17 23:24:32', '2021-12-17 23:24:32', NULL),
(260, 1, 'created', 'test_answers', 89, '2021-12-17 23:24:32', '2021-12-17 23:24:32', NULL),
(261, 1, 'created', 'test_answers', 90, '2021-12-17 23:24:33', '2021-12-17 23:24:33', NULL),
(262, 1, 'created', 'test_answers', 91, '2021-12-17 23:24:33', '2021-12-17 23:24:33', NULL),
(263, 1, 'created', 'test_answers', 92, '2021-12-17 23:24:33', '2021-12-17 23:24:33', NULL),
(264, 1, 'created', 'test_answers', 93, '2021-12-17 23:24:33', '2021-12-17 23:24:33', NULL),
(265, 1, 'created', 'tests', 44, '2021-12-17 23:24:33', '2021-12-17 23:24:33', NULL),
(266, 1, 'created', 'tests', 45, '2021-12-19 05:21:52', '2021-12-19 05:21:52', NULL),
(267, 1, 'created', 'test_answers', 94, '2021-12-19 05:21:52', '2021-12-19 05:21:52', NULL),
(268, 1, 'created', 'test_answers', 95, '2021-12-19 05:21:52', '2021-12-19 05:21:52', NULL),
(269, 1, 'created', 'test_answers', 96, '2021-12-19 05:21:53', '2021-12-19 05:21:53', NULL),
(270, 1, 'created', 'test_answers', 97, '2021-12-19 05:21:53', '2021-12-19 05:21:53', NULL),
(271, 1, 'created', 'test_answers', 98, '2021-12-19 05:21:53', '2021-12-19 05:21:53', NULL),
(272, 1, 'created', 'tests', 45, '2021-12-19 05:21:53', '2021-12-19 05:21:53', NULL),
(273, 2, 'created', 'tests', 46, '2021-12-24 09:06:21', '2021-12-24 09:06:21', NULL),
(274, 2, 'created', 'test_answers', 99, '2021-12-24 09:06:21', '2021-12-24 09:06:21', NULL),
(275, 2, 'created', 'test_answers', 100, '2021-12-24 09:06:21', '2021-12-24 09:06:21', NULL),
(276, 2, 'created', 'test_answers', 101, '2021-12-24 09:06:21', '2021-12-24 09:06:21', NULL),
(277, 2, 'created', 'test_answers', 102, '2021-12-24 09:06:21', '2021-12-24 09:06:21', NULL),
(278, 2, 'created', 'test_answers', 103, '2021-12-24 09:06:22', '2021-12-24 09:06:22', NULL),
(279, 2, 'created', 'tests', 46, '2021-12-24 09:06:22', '2021-12-24 09:06:22', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `competencies`
--
ALTER TABLE `competencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competencies_kelas_id_foreign` (`kelas_id`),
  ADD KEY `competencies_topic_id_foreign` (`topic_id`),
  ADD KEY `competencies_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kelases`
--
ALTER TABLE `kelases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kelases_title_unique` (`title`),
  ADD KEY `kelases_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_kelas_id_foreign` (`kelas_id`),
  ADD KEY `questions_topic_id_foreign` (`topic_id`),
  ADD KEY `questions_competency_id_foreign` (`competency_id`),
  ADD KEY `questions_sub_competency_id_foreign` (`sub_competency_id`),
  ADD KEY `questions_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_options_question_id_foreign` (`question_id`),
  ADD KEY `question_options_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_user_id_foreign` (`user_id`),
  ADD KEY `results_question_id_foreign` (`question_id`),
  ADD KEY `results_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_competencies`
--
ALTER TABLE `sub_competencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_competencies_kelas_id_foreign` (`kelas_id`),
  ADD KEY `sub_competencies_topic_id_foreign` (`topic_id`),
  ADD KEY `sub_competencies_competency_id_foreign` (`competency_id`),
  ADD KEY `sub_competencies_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `test_answers`
--
ALTER TABLE `test_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_answers_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topics_kelas_id_foreign` (`kelas_id`),
  ADD KEY `topics_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nisn_unique` (`nisn`),
  ADD KEY `users_kelas_id_foreign` (`kelas_id`),
  ADD KEY `users_deleted_at_index` (`deleted_at`);

--
-- Indexes for table `user_actions`
--
ALTER TABLE `user_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_actions_user_id_foreign` (`user_id`),
  ADD KEY `user_actions_deleted_at_index` (`deleted_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `competencies`
--
ALTER TABLE `competencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelases`
--
ALTER TABLE `kelases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sub_competencies`
--
ALTER TABLE `sub_competencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `test_answers`
--
ALTER TABLE `test_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=312;

--
-- AUTO_INCREMENT for table `user_actions`
--
ALTER TABLE `user_actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `competencies`
--
ALTER TABLE `competencies`
  ADD CONSTRAINT `competencies_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelases` (`id`),
  ADD CONSTRAINT `competencies_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_competency_id_foreign` FOREIGN KEY (`competency_id`) REFERENCES `competencies` (`id`),
  ADD CONSTRAINT `questions_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelases` (`id`),
  ADD CONSTRAINT `questions_sub_competency_id_foreign` FOREIGN KEY (`sub_competency_id`) REFERENCES `sub_competencies` (`id`),
  ADD CONSTRAINT `questions_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`);

--
-- Constraints for table `question_options`
--
ALTER TABLE `question_options`
  ADD CONSTRAINT `question_options_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`),
  ADD CONSTRAINT `results_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_competencies`
--
ALTER TABLE `sub_competencies`
  ADD CONSTRAINT `sub_competencies_competency_id_foreign` FOREIGN KEY (`competency_id`) REFERENCES `competencies` (`id`),
  ADD CONSTRAINT `sub_competencies_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelases` (`id`),
  ADD CONSTRAINT `sub_competencies_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`);

--
-- Constraints for table `topics`
--
ALTER TABLE `topics`
  ADD CONSTRAINT `topics_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelases` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_kelas_id_foreign` FOREIGN KEY (`kelas_id`) REFERENCES `kelases` (`id`);

--
-- Constraints for table `user_actions`
--
ALTER TABLE `user_actions`
  ADD CONSTRAINT `user_actions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
