-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 26, 2021 at 06:58 PM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

DROP TABLE IF EXISTS `competencies`;
CREATE TABLE IF NOT EXISTS `competencies` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `competencies_kelas_id_foreign` (`kelas_id`),
  KEY `competencies_topic_id_foreign` (`topic_id`),
  KEY `competencies_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `competencies`
--

INSERT INTO `competencies` (`id`, `kelas_id`, `topic_id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Membilang banyak benda', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(2, 1, 2, 'Melakukan penjumlahan dan pengurangan bilangan sampai 20', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(3, 1, 3, 'Melakukan penjumlahan dan pengurangan bilangan sampai 20', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(4, 2, 4, 'Melakukan perkalian bilangan yang hasilnya bilangan dua angka', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(5, 2, 5, 'Melakukan operasi hitung campuran', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(6, 3, 6, 'Melakukan penjumlahan dan pengurangan tiga angka', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(7, 3, 7, 'Melakukan penjumlahan dan pengurangan tiga angka', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(8, 3, 8, 'Melakukan perkalian yang hasilnya bilangan tiga angka dan pembagian bilangan tiga angka', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(9, 3, 9, 'Melakukan perkalian yang hasilnya bilangan tiga angka dan pembagian bilangan tiga angka', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(10, 4, 10, 'Menjumlahkan pecahan', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(11, 4, 11, 'Melakukan operasi hitung campuran', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(12, 5, 12, 'Mengubah pecahan ke bentuk persen dan desimal serta sebaliknya', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(13, 5, 14, 'Mengubah pecahan ke bentuk persen dan desimal serta sebaliknya', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(14, 5, 14, 'Mengalikan dan membagi berbagai bentuk pecahan', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(15, 5, 13, 'Mengalikan dan membagi berbagai bentuk pecahan', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(16, 5, 12, 'Mengalikan dan membagi berbagai bentuk pecahan', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(17, 6, 15, 'Melakukan operasi hitung bilangan bulat dalam pemecahan masalah (di artikel jurnal)/Menggunakan sifat-sifat operasi hitung termasuk operasi campuran, FPB dan KPK', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(18, 6, 16, 'Melakukan operasi hitung bilangan bulat dalam pemecahan masalah (di artikel jurnal)/Menggunakan sifat-sifat operasi hitung termasuk operasi campuran, FPB dan KPK', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(19, 6, 17, 'Menentukan rata-rata hitung dan modus sekumpulan data', '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelases`
--

DROP TABLE IF EXISTS `kelases`;
CREATE TABLE IF NOT EXISTS `kelases` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kelases_title_unique` (`title`),
  KEY `kelases_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelases`
--

INSERT INTO `kelases` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', '2021-12-26 06:58:51', '2021-12-26 06:58:51', NULL),
(2, '2', '2021-12-26 06:58:51', '2021-12-26 06:58:51', NULL),
(3, '3', '2021-12-26 06:58:51', '2021-12-26 06:58:51', NULL),
(4, '4', '2021-12-26 06:58:51', '2021-12-26 06:58:51', NULL),
(5, '5', '2021-12-26 06:58:52', '2021-12-26 06:58:52', NULL),
(6, '6', '2021-12-26 06:58:52', '2021-12-26 06:58:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(18, '2021_09_08_185135_create_question_options_table', 1),
(19, '2021_12_24_172108_create_test_settings_table', 1),
(20, '2021_12_24_203029_create_test_statuses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` bigint(20) UNSIGNED NOT NULL,
  `competency_id` bigint(20) UNSIGNED NOT NULL,
  `sub_competency_id` bigint(20) UNSIGNED NOT NULL,
  `question_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_explanation` text COLLATE utf8mb4_unicode_ci,
  `more_info_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tingkat_kesulitan` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `questions_kelas_id_foreign` (`kelas_id`),
  KEY `questions_topic_id_foreign` (`topic_id`),
  KEY `questions_competency_id_foreign` (`competency_id`),
  KEY `questions_sub_competency_id_foreign` (`sub_competency_id`),
  KEY `questions_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `kelas_id`, `topic_id`, `competency_id`, `sub_competency_id`, `question_text`, `answer_explanation`, `more_info_link`, `tingkat_kesulitan`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 2, 2, '8 + 5 + 4 = ...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(2, 1, 3, 3, 3, '6 - 3 = ...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(3, 1, 2, 2, 2, '7 + 2 + 6 = ...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(4, 1, 3, 3, 3, '9 - 5 = ...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(5, 1, 2, 2, 2, '8 + 1 + 2 + 5 = ...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(6, 1, 1, 1, 1, 'Lambang bilangan 5...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(7, 1, 1, 1, 1, 'Lambang bilangan 14...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(8, 1, 1, 1, 1, 'Lambang bilangan 7...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(9, 1, 1, 1, 1, 'Lambang bilangan \"Delapan belas\"...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(10, 1, 1, 1, 1, 'Lambang bilangan \"Tujuh\"...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(11, 2, 4, 4, 4, '4 x 7 = … + … + … + … = …', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(12, 2, 4, 4, 4, '4 x 2 x 4 = … x … = …', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(13, 2, 4, 4, 4, '0 = 65 x …', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(14, 2, 4, 4, 4, 'Paman mempunyai 5 kantong plastik berisi kue donat. Masing-masing kantong terdiri dari 20 donat. Ada berapa banyak jumlah keseluruhan donat Paman?', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(15, 2, 4, 4, 4, '9 x 9 = …', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(16, 2, 5, 5, 5, '6 x 10 - 72 : 8 = …', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(17, 2, 5, 5, 5, '( 3 + 5 ) x 7 : ( 4 - 2 ) = …', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(18, 2, 5, 5, 5, '80 : 10 x 7 = … x … = …', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(19, 2, 5, 5, 5, '5 + 4 - ( 2 x 4 ) + 8 = …', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(20, 2, 5, 5, 5, '10 : 5 + ( 7 + 3 ) x 2 = …', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(21, 3, 7, 7, 7, 'Selisih nilai angka 6 dan 7 pada bilangan 678 adalah..', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(22, 3, 6, 6, 6, '164 + 572 = …', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(23, 3, 7, 7, 7, '327 - 245 = ...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(24, 3, 6, 6, 6, '565 + 73 = …', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(25, 3, 7, 7, 7, '923 - 712 - 143 - …', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(26, 3, 9, 9, 9, 'Hasil dari 95 - 19 - 19 -19 - 19 - 19 = 0. Ini menunjukkan bahwa 95 : 19 = ..', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(27, 3, 9, 9, 9, 'Tiga lembar uang lima ribu dapat ditukar dengan … keping uang lima ratus.', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(28, 3, 8, 8, 8, '9 x ( 8 x 7 ) = …', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(29, 3, 9, 9, 9, '527 : 17 = …', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(30, 3, 8, 8, 8, '33 x 24 = …', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(31, 4, 10, 10, 10, '3 1/3 + 1 1/4 = …', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(32, 4, 10, 10, 10, '6 1/4+ 8 3/5 = …', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(33, 4, 10, 10, 10, 'Hasil dari 5 1/6 + 5 1/3 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(34, 4, 10, 10, 10, 'Hasil dari 2 1/4 + 4 3/4 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(35, 4, 10, 10, 10, '9 2/5 + 3 1/6 = …', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(36, 4, 11, 11, 11, 'Hasil dari -86 + ( 8 x 6 ) adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(37, 4, 11, 11, 11, '-90 + ( 5 x 4 ) = …', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(38, 4, 11, 11, 11, '( 5 x -7 ) - 51 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(39, 4, 11, 11, 11, '-50 + ( 32 : 4) = …', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(40, 4, 11, 11, 11, 'Hasil dari 91 + 63 : 9 - 8 x 12 adalah…', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(41, 5, 12, 16, 16, '1/2 + 1/3 - 1/4 = …', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(42, 5, 12, 16, 16, '3 2/5 + 2 1/3 - 1 5/6 = …', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(43, 5, 12, 16, 16, '1/2 + 1/3 - 1/6 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(44, 5, 12, 16, 16, '3/2 + 6/4 - 10/8 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(45, 5, 12, 16, 16, '3/3 + 6/6 - 9/9 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(46, 5, 12, 16, 16, '7/2 + 10/4 - 15/16 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(47, 5, 12, 16, 16, '4/2 + 8/4 - 20/4 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(48, 5, 12, 16, 16, '3/6 + 7/4 - 20/6 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(49, 5, 12, 16, 16, '8/2 + 9/12 - 10/6 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(50, 5, 12, 16, 16, '7/3 + 8/9 - 9/18 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(51, 5, 12, 16, 16, '4/2 + 6/4 - 20/16 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(52, 5, 12, 16, 16, '3 1/2 + 2 1/3 - 3 1/6 = ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(53, 5, 12, 16, 16, '2 3/2 + 3 6/4 - 2 10/8 = ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(54, 5, 12, 16, 16, '4 3/3 + 2 6/6 - 1 9/9 = ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(55, 5, 12, 16, 16, '1 7/2 + 2 10/4 - 4 15/16 = ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(56, 5, 12, 16, 16, '3 4/2 + 3 8/4 - 2 20/4 = ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(57, 5, 12, 16, 16, '4 3/6 + 3 7/4 - 2 20/6 = ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(58, 5, 12, 16, 16, '3 8/2 + 4 9/12 - 5 10/6 = ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(59, 5, 12, 16, 16, '5 7/3 + 2 8/9 - 1 9/18 = ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(60, 5, 12, 16, 16, '6 4/2 + 4 6/4 - 2 20/16 = ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(61, 5, 13, 15, 15, '4 1/5 x 1 3/7 = …', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(62, 5, 13, 15, 15, '2 2/6 x 1 7/3 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(63, 5, 13, 15, 15, '4 2/4 x 3 1/7 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(64, 5, 13, 15, 15, '4 4/2 x 3 7/1 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(65, 5, 13, 15, 15, '4 2/3 x 2 1/4 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(66, 5, 13, 15, 15, '2 6/2 x 4 1/2 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(67, 5, 13, 15, 15, '3 7/2 x 5 4/2 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(68, 5, 13, 15, 15, '6 2/4 x 8 2/2 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(69, 5, 13, 15, 15, '6 4/2 x 2 2/8 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(70, 5, 13, 15, 15, '4 2/6 x 7 3/4 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(71, 5, 14, 14, 14, '3 3/4 : 2 1/2 = …', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(72, 5, 14, 14, 14, '5/8 : 2/3 = …', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(73, 5, 14, 14, 14, '5 2/4 : 3 1/3 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(74, 5, 14, 14, 14, '4 2/3 : 2 1/4 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(75, 5, 14, 14, 14, '4 1/5 : 1 3/7 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(76, 5, 14, 14, 14, '2 2/6 : 1 7/3 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(77, 5, 14, 14, 14, '4 2/4 : 3 7/1 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(78, 5, 14, 14, 14, '2 6/2 : 4 1/2 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(79, 5, 14, 14, 14, '3 7/2 : 5 4/2 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(80, 5, 14, 14, 14, '6 2/4 : 8 2/2 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(81, 5, 14, 14, 14, '6 4/2 : 2 2/8 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(82, 5, 14, 14, 14, '3/4 : 1/2 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(83, 5, 14, 14, 14, '2/4 : 1/3 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(84, 5, 14, 14, 14, '2/3 : 1/4 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(85, 5, 14, 14, 14, '1/5 : 3/7 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(86, 5, 14, 14, 14, '2/6 : 7/3 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(87, 5, 14, 14, 14, '2/4 : 7/1 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(88, 5, 14, 14, 14, '6/2 : 1/2 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(89, 5, 14, 14, 14, '7/2 : 4/2 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(90, 5, 14, 14, 14, '2/4 : 2/2 = ...', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(91, 5, 14, 13, 13, '2/5 jika diubah dalam bentuk persen adalah … %', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(92, 5, 14, 13, 13, '7/20 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(93, 5, 14, 13, 13, '9/25 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(94, 5, 14, 13, 13, 'Pecahan biasa yang paling sederhana dari 80% adalah...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(95, 5, 14, 13, 13, '27/54 jika diubah dalam bentuk persen adalah … %', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(96, 5, 14, 13, 13, '94/1 jika diubah dalam bentuk persen adalah … %', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(97, 5, 14, 13, 13, '36/72 jika diubah dalam bentuk persen adalah … %', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(98, 5, 14, 13, 13, '8/32 jika diubah dalam bentuk persen adalah … %', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(99, 5, 14, 13, 13, '14/50 jika diubah dalam bentuk persen adalah … %', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(100, 5, 14, 13, 13, '13/25 jika diubah dalam bentuk persen adalah … %', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(101, 5, 14, 13, 13, '7/10 jika diubah dalam bentuk persen adalah … %', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(102, 5, 14, 13, 13, '26/65 jika diubah dalam bentuk persen adalah … %', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(103, 5, 14, 13, 13, '81/90 jika diubah dalam bentuk persen adalah … %', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(104, 5, 14, 13, 13, '66/12 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(105, 5, 14, 13, 13, '68/8 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(106, 5, 14, 13, 13, '9/50 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(107, 5, 14, 13, 13, '4/10 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(108, 5, 14, 13, 13, '32/80 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(109, 5, 14, 13, 13, '18/10 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(110, 5, 14, 13, 13, '48/64 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(111, 5, 14, 13, 13, '81/20 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(112, 5, 14, 13, 13, '26/5 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(113, 5, 14, 13, 13, '9/25 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(114, 5, 14, 13, 13, '18/24 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(115, 5, 14, 13, 13, '3/8 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(116, 5, 14, 13, 13, '79/5 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(117, 5, 14, 13, 13, '22/55 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(118, 5, 14, 13, 13, '64/40 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(119, 5, 14, 13, 13, '53/25 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(120, 5, 14, 13, 13, '59/5 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(121, 5, 14, 13, 13, '99/30 jika diubah dalam bentuk pecahan desimal adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(122, 5, 14, 13, 13, 'Pecahan biasa yang paling sederhana dari 50% adalah ...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(123, 5, 14, 13, 13, 'Pecahan biasa yang paling sederhana dari 20% adalah ...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(124, 5, 14, 13, 13, 'Pecahan biasa yang paling sederhana dari 25% adalah ...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(125, 5, 14, 13, 13, 'Pecahan biasa yang paling sederhana dari 10% adalah ...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(126, 5, 14, 13, 13, 'Pecahan biasa yang paling sederhana dari 75% adalah ...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(127, 5, 14, 13, 13, 'Pecahan biasa yang paling sederhana dari 5% adalah ...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(128, 5, 14, 13, 13, 'Pecahan biasa yang paling sederhana dari 65% adalah ...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(129, 5, 14, 13, 13, 'Pecahan biasa yang paling sederhana dari 96% adalah ...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(130, 5, 14, 13, 13, 'Pecahan biasa yang paling sederhana dari 64% adalah ...', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(131, 5, 12, 12, 12, '65% ayam bertelur. Yang belum bertelur ada 700 ekor ayam. Jumlah ayam paman ada … ekor.', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(132, 5, 12, 12, 12, '80% karyawan sudah digaji, yang belum digaji ada 2000 karyawan. maka berapa jumlah total karyawan ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(133, 5, 12, 12, 12, '75% siswa sekolah SDN Maju Mundur sudah divaksin, yang belum divaksin ada 600 siswa. berapa jumlah keseluruhan siswa SDN Maju Mundur...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(134, 5, 12, 12, 12, 'pajak jaminan kesehatan saat ini sebesar 5%, jika gaji setelah dipotong pajak berjumlah 570 ribu, berapakah gaji keseluruhan sebelum dipotong pajak...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(135, 5, 12, 12, 12, 'pakan ternak pak adi menyisakan 30% dari jumlah keseluruhan pakan yang dapat disediakan untuk ternaknya, jika tempat pakan hanya muat untuk 1400 kg. maka berapakah keseluruhan jumlah pakan pak adi', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(136, 5, 12, 12, 12, '45% uang budi selalu ditabung, yang tidak ditabung ada 330 ribu. berapakah jumlah total uang budi', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(137, 5, 12, 12, 12, '50% sapi pak joko mati karena wabah, jika saat ini masih menyisakan 150 sapi maka berapa jumlah total sapi pak joko', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(138, 5, 12, 12, 12, '90% burung pak wahyu berwarna merah, jika 70 ekor burung pak wahyu berwarna biru. maka berapa jumlah total burung warna merah dan biru pak wahyu', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(139, 5, 12, 12, 12, '25% murid SMK Perkapalan adalah laki - laki, jika murid perempuan berjumlah 900. maka berapa total murid dari SMK tersebut ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(140, 5, 12, 12, 12, '40% sawah pak dodo mengalami gagal panen, jika 600 meternya mengalami sukses panen. maka berapa meter keseluruhan sawah pak dodo ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(141, 6, 15, 17, 17, 'Kelipatan persekutuan terkecil (KPK) dari 48 dan 75 dalam bentuk faktorisasi prima adalah…', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(142, 6, 15, 17, 17, 'Bu Ida mengganti tabung gas untuk keperluan memasak setiap 25 hari. Sedangkan Bu Endang mengganti tabung gas setiap 30 hari. Jika hari ini mereka mengganti tabung gas secara bersama-sama, maka mereka akan mengganti tabung gas secara bersama-sama lagi setelah...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(143, 6, 15, 17, 17, 'Kelipatan persekutuan terkecil (KPK) dari 50 dan 60 dalam bentuk faktorisasi prima adalah…', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(144, 6, 15, 17, 17, 'Kelipatan persekutuan terkecil (KPK) dari 58 dan 32 dalam bentuk faktorisasi prima adalah…', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(145, 6, 15, 17, 17, 'Kelipatan persekutuan terkecil (KPK) dari 68 dan 98 dalam bentuk faktorisasi prima adalah…', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(146, 6, 15, 17, 17, 'Kelipatan persekutuan terkecil (KPK) dari 36 dan 88 dalam bentuk faktorisasi prima adalah…', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(147, 6, 15, 17, 17, 'Kelipatan persekutuan terkecil (KPK) dari 81 dan 90 dalam bentuk faktorisasi prima adalah…', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(148, 6, 15, 17, 17, 'Kelipatan persekutuan terkecil (KPK) dari 96 dan 72 dalam bentuk faktorisasi prima adalah…', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(149, 6, 15, 17, 17, 'Kelipatan persekutuan terkecil (KPK) dari 42 dan 64 dalam bentuk faktorisasi prima adalah…', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(150, 6, 15, 17, 17, 'Kelipatan persekutuan terkecil (KPK) dari 84 dan 27 dalam bentuk faktorisasi prima adalah…', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(151, 6, 15, 17, 17, 'Kelipatan persekutuan terkecil (KPK) dari 92 dan 56 dalam bentuk faktorisasi prima adalah…', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(152, 6, 15, 17, 17, 'jika kelereng berwarna merah berjumlah 48 sedangkan kelereng berwarna hijau berjumlah 56, berapa percobaan yang diperlukan agar kelereng merah dan biru keluar secara bersamaan ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(153, 6, 15, 17, 17, 'pak adi dan pak idih adalah pekerja proyek, jika pak adi pulang setiap 50 hari sekali sedangkan pak idih pulang setiap 27 hari sekali. maka berapa hari mereka akan pulang secara bersamaan ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(154, 6, 15, 17, 17, 'joko selalu mencukur rambutnya setiap 75 hari sekali, sedangkan joki hanya akan mencukur setiap 84 hari sekali. maka berapa hari yang dibutuhkan mereka agar bisa bertemu untuk cukur rambut bersama ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(155, 6, 15, 17, 17, 'toni pergi berlibur setiap 60 hari sekali, sedangkan tono akan berlibur setiap 42 hari sekali. maka berapa hari yang dibutuhkan agar mereka dapat berlibur bersama - sama ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(156, 6, 15, 17, 17, 'fani akan mengisi bensin setiap 32 km sekali, sedangkan funy akan mengisi bensinnya setiap 96 km sekali. maka pada km berapa mereka akan mengisi bensi bersama ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(157, 6, 15, 17, 17, 'pak bono membersihkan rumahnya setiap 81 hari sekali, sedangkan pak boni akan membersihkan rumahnya setiap 36 hari sekali. maka mereka akan membersihkan rumahnya di hari yang sama setelah ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(158, 6, 15, 17, 17, 'dono dan doni sedang menyelam bersama menggunakan 1 tabung oksigen, jika dono dapat menahan nafasnya selama 90 detik sekali sedangkan doni bisa menahan nafasnya selama 88 detik sekali. maka mereka akan secara bersama membutuhkan oksigen untuk kembali bernafas setelah berapa detik ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(159, 6, 15, 17, 17, 'irwan akan mandi setiap 24 jam sekali sedangkan irwin hanya akan mandi setiap 36 jam sekali. maka mereka akan mandi bersama setelah berapa jam ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(160, 6, 15, 17, 17, '64 menit sekali bayi bu irna akan menangis, sedangkan 63 menit sekali adalah waktu yang dibutuhkan untuk bayi bu irni untuk menangis. maka setelah berapa menit bayi mereka akan menangis bersama ...', NULL, NULL, 3.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(161, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 20, 24, dan 72 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(162, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 16, 40, dan 80 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(163, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 9, 21, dan 51 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(164, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 18, 27, dan 36 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(165, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 63, 72, dan 81 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(166, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 99, 75, dan 90 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(167, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 92, 82, dan 74 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(168, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 15, 21, dan 36 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(169, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 88, 98, dan 68 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(170, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 28, 56, dan 77 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(171, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 55, 75, dan 45 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(172, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 76, 36, dan 48 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(173, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 32, 42, dan 52 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(174, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 34, 62, dan 28 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(175, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 69, 84, dan 63 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(176, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 18, 30, dan 27 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(177, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 99, 33, dan 77 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(178, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 44, 66, dan 55 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(179, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 42, 52, dan 64 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(180, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 28, 46, dan 54 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(181, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 48, 80, dan 32 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(182, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 30, 42, dan 63 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(183, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 25, 90, dan 65 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(184, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 34, 51, dan 85 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(185, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 27, 45, dan 75 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(186, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 66, 93, dan 39 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(187, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 26, 28, dan 34 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(188, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 38, 60, dan 70 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(189, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 22, 44, dan 88 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(190, 6, 16, 18, 18, 'Faktor persekutuan terbesar (FPB) dari 48, 28, dan 16 adalah…', NULL, NULL, 2.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(191, 6, 17, 19, 19, 'Data hasil lompatan peserta (dalam meter) pada semifinal lomba lompat jauh di tingkat Kecamatan Suka Maju adalah sebagai berikut: 4,5 4,5 4 4 4 3,5 4 3,5. Rata-rata hasil lompatan adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(192, 6, 17, 19, 19, '2, 2, 3, 4, 5, 5, 6, 6, 6, 7. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(193, 6, 17, 19, 19, '7, 7, 8.6, 5, 6, 8, 7.4, 6, 7.5, 10. Rata-ratanya adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(194, 6, 17, 19, 19, '3, 4, 5, 5, 4, 3.5, 4, 3.5, 4.5, 4.5. Modus nya adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(195, 6, 17, 19, 19, '6.7, 8.6, 5, 6, 8, 7.4, 6, 7.5. Modus adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(196, 6, 17, 19, 19, '2, 1, 2, 1, 6, 1, 9, 6, 5, 8. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(197, 6, 17, 19, 19, '7, 1, 1, 1, 4, 2, 3, 3, 6, 7. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(198, 6, 17, 19, 19, '6, 4, 6, 4, 8, 6, 9, 9, 10, 5. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(199, 6, 17, 19, 19, '2, 4, 3, 1, 4, 8, 1, 9, 2, 1. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(200, 6, 17, 19, 19, '8, 4, 5, 7, 4, 8, 8, 7, 9, 5. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(201, 6, 17, 19, 19, '7, 9, 7, 5, 5, 3, 7, 1, 4, 7. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(202, 6, 17, 19, 19, '5, 6, 3, 6, 1, 9, 3, 7, 5, 8. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(203, 6, 17, 19, 19, '7, 9, 4, 9, 3, 8, 1, 4, 9, 5. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(204, 6, 17, 19, 19, '1, 5, 2, 6, 8, 2, 6, 9, 6, 8. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(205, 6, 17, 19, 19, '4.5, 6.5, 7.5, 9, 8, 2, 7, 7. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(206, 6, 17, 19, 19, '2, 3, 5, 8.7, 9.3, 5, 5, 8. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(207, 6, 17, 19, 19, '9.2, 7.6, 7.2, 5.9, 2.8, 8, 6, 2.3. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(208, 6, 17, 19, 19, '5, 9.9, 7.9, 7.8, 8, 8, 6, 7. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(209, 6, 17, 19, 19, '9.2, 4.6, 7.3, 9.1, 3.8, 2.7, 7.5, 3.3. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(210, 6, 17, 19, 19, '7.1, 4.2, 3.3, 5.4, 3.5, 7.6, 2.7, 7.2. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(211, 6, 17, 19, 19, '8.9, 5.1, 6, 4, 4, 3, 3, 9. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(212, 6, 17, 19, 19, '2, 3, 6.5, 7, 8.9, 3, 7.4, 4. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(213, 6, 17, 19, 19, '7.7, 2, 8.8, 7.3, 4, 7, 6, 6. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(214, 6, 17, 19, 19, '10, 9.9, 5.6, 1.7, 6, 9, 7, 5, 4, 7. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(215, 6, 17, 19, 19, '5.8, 4, 4, 1, 7.8, 4, 9.8, 8, 8, 1. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(216, 6, 17, 19, 19, '5, 1, 4.2, 3, 9.9, 5, 6.3, 9, 9, 8. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(217, 6, 17, 19, 19, '6, 4, 9.9, 4, 9.7, 5, 1, 6.4, 4, 2. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(218, 6, 17, 19, 19, '8.2, 4, 8.9, 3, 4, 2, 1, 1, 10, 8.6. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(219, 6, 17, 19, 19, '9.8, 8.5, 5.3, 1, 1, 3, 5, 3, 7, 8. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(220, 6, 17, 19, 19, '5.5, 9.9, 3, 9.8, 7, 9, 4, 7, 10, 2. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(221, 6, 17, 19, 19, '4, 9.7, 10.2, 2, 3, 4, 8.6, 9, 9, 10. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(222, 6, 17, 19, 19, '8.5, 9.7, 3, 7.7, 1, 7, 8, 2, 9, 5. Rata-ratanya adalah …', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(223, 6, 17, 19, 19, '9, 6, 8, 4, 6, 8, 8, 5, 6, 6. Modus nya adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(224, 6, 17, 19, 19, '7, 7, 6, 7, 10, 9, 3, 3, 10, 4. Modus nya adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(225, 6, 17, 19, 19, '10, 1, 5, 5, 1, 6, 5, 9, 8, 2. Modus nya adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(226, 6, 17, 19, 19, '9, 10, 1, 4, 6, 7, 6, 9, 1, 9. Modus nya adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(227, 6, 17, 19, 19, '9, 7, 6, 4, 7, 4, 10, 8, 7, 1. Modus nya adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(228, 6, 17, 19, 19, '10, 3, 10, 9, 5, 3, 5, 8, 1, 3. Modus nya adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(229, 6, 17, 19, 19, '4, 7, 9, 10, 7, 5, 8, 1, 3, 7. Modus nya adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(230, 6, 17, 19, 19, '1, 6, 9, 9, 6, 8, 6, 6, 9, 7. Modus nya adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(231, 6, 17, 19, 19, '4, 6, 6, 9, 5, 8, 6, 2, 1, 5. Modus nya adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(232, 6, 17, 19, 19, '6, 8, 8, 8, 2, 6, 3, 1. Modus adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(233, 6, 17, 19, 19, '10, 8, 8, 2, 8, 2, 2, 5. Modus adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(234, 6, 17, 19, 19, '1, 2, 9, 7, 9, 4, 4, 9. Modus adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(235, 6, 17, 19, 19, '3, 2, 2, 1, 4, 5, 10, 2. Modus adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(236, 6, 17, 19, 19, '9, 8, 7, 6, 9, 9, 10, 7. Modus adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(237, 6, 17, 19, 19, '8, 7, 9, 4, 9, 7, 2, 7. Modus adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(238, 6, 17, 19, 19, '4, 8, 2, 4, 4, 4, 3, 3. Modus adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(239, 6, 17, 19, 19, '7, 8, 6, 10, 7, 7, 4, 1. Modus adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(240, 6, 17, 19, 19, '4, 4, 9, 1, 6, 4, 6, 10. Modus adalah…', NULL, NULL, 1.00, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_options`
--

DROP TABLE IF EXISTS `question_options`;
CREATE TABLE IF NOT EXISTS `question_options` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correct` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question_options_question_id_foreign` (`question_id`),
  KEY `question_options_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=961 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_options`
--

INSERT INTO `question_options` (`id`, `question_id`, `option`, `correct`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '17', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(2, 1, '15', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(3, 1, '19', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(4, 1, '13', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(5, 2, '5', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(6, 2, '10', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(7, 2, '3', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(8, 2, '9', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(9, 3, '14', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(10, 3, '15', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(11, 3, '12', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(12, 3, '18', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(13, 4, '4', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(14, 4, '2', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(15, 4, '1', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(16, 4, '6', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(17, 5, '15', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(18, 5, '16', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(19, 5, '17', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(20, 5, '14', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(21, 6, 'Enam', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(22, 6, 'Lima', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(23, 6, 'Empat', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(24, 6, 'Tiga', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(25, 7, 'Satu Empat', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(26, 7, 'Empat puluh', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(27, 7, 'Empat', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(28, 7, 'Empat belas', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(29, 8, 'Tujuh', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(30, 8, 'Sembilan', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(31, 8, 'Dua belas', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(32, 8, 'Lima', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(33, 9, '18', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(34, 9, '8', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(35, 9, '10', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(36, 9, '11', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(37, 10, '17', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(38, 10, '7', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(39, 10, '12', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(40, 10, '5', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(41, 11, '4 + 4 + 4 + 4 + 4 + 4 + 4 = 28', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(42, 11, '7 + 7 + 7 + 7 = 28', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(43, 11, '4 + 7 + 4 + 7 + 4 = 26', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(44, 11, '7 + 4 + 7 + 4 + 7 = 29', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(45, 12, '6 x 4 = 24', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(46, 12, '4 x 4 = 16', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(47, 12, '8 x 2 = 16', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(48, 12, '8 x 4 = 32', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(49, 13, '65', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(50, 13, '0', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(51, 13, '1', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(52, 13, '10', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(53, 14, '75', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(54, 14, '25', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(55, 14, '50', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(56, 14, '100', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(57, 15, '81', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(58, 15, '99', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(59, 15, '18', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(60, 15, '90', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(61, 16, '51', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(62, 16, '52', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(63, 16, '53', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(64, 16, '54', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(65, 17, '56', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(66, 17, '12', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(67, 17, '28', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(68, 17, '44', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(69, 18, '10 x 7 = 70', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(70, 18, '8 x 7 = 56', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(71, 18, '80 : 70 = 8 / 7', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(72, 18, '800 / 7', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(73, 19, '7', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(74, 19, '9', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(75, 19, '8', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(76, 19, '6', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(77, 20, '23', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(78, 20, '24', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(79, 20, '25', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(80, 20, '22', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(81, 21, '30', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(82, 21, '530', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(83, 21, '600', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(84, 21, '522', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(85, 22, '736', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(86, 22, '763', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(87, 22, '673', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(88, 22, '637', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(89, 23, '82', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(90, 23, '72', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(91, 23, '92', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(92, 23, '102', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(93, 24, '738', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(94, 24, '658', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(95, 24, '758', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(96, 24, '638', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(97, 25, '73', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(98, 25, '58', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(99, 25, '68', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(100, 25, '83', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(101, 26, '4', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(102, 26, '8', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(103, 26, '5', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(104, 26, '9', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(105, 27, '27', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(106, 27, '29', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(107, 27, '28', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(108, 27, '30', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(109, 28, '9 x ( 8 - 7 )', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(110, 28, '9 + ( 8 - 7 )', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(111, 28, '( 9 + 8 ) x 7', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(112, 28, '( 9 x 8 ) x 7', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(113, 29, '510', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(114, 29, '23', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(115, 29, '31', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(116, 29, '17', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(117, 30, '57', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(118, 30, '354', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(119, 30, '792', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(120, 30, '812', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(121, 31, '4 7/12', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(122, 31, '4 2/4', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(123, 31, '4 2/3', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(124, 31, '4 2/7', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(125, 32, '14 2/4', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(126, 32, '14 2/5', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(127, 32, '14 4/20', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(128, 32, '14 17/20', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(129, 33, '10', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(130, 33, '10 1/3', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(131, 33, '10 3/4', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(132, 33, '10 3/7', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(133, 34, '6', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(134, 34, '8', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(135, 34, '5', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(136, 34, '7', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(137, 35, '10 4/5', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(138, 35, '10 11/15', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(139, 35, '10 4/6', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(140, 35, '10 9/11', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(141, 36, '-48', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(142, 36, '38', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(143, 36, '-38', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(144, 36, '48', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(145, 37, '-70', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(146, 37, '-93', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(147, 37, '99', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(148, 37, '48', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(149, 38, '-63', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(150, 38, '54', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(151, 38, '-86', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(152, 38, '85', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(153, 39, '-58', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(154, 39, '-42', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(155, 39, '42', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(156, 39, '58', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(157, 40, '108', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(158, 40, '2', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(159, 40, '73', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(160, 40, '23', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(161, 41, '44537', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(162, 41, '44507', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(163, 41, '7/15', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(164, 41, '7/13', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(165, 42, '3 10/9', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(166, 42, '3 9/10', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(167, 42, '2 9/10', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(168, 42, '2 10/9', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(169, 43, '44351', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(170, 43, '44349', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(171, 43, '44350', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(172, 43, '44352', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(173, 44, '44423', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(174, 44, '44424', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(175, 44, '44422', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(176, 44, '44420', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(177, 45, '54/54', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(178, 45, '50/54', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(179, 45, '51/54', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(180, 45, '52/54', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(181, 46, '92/16', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(182, 46, '90/16', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(183, 46, '93/16', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(184, 46, '91/16', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(185, 47, '44290', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(186, 47, '-4/4', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(187, 47, '44289', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(188, 47, '44288', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(189, 48, '25/24', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(190, 48, '26/24', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(191, 48, '24/24', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(192, 48, '23/24', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(193, 49, '38/12', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(194, 49, '36/12', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(195, 49, '37/12', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(196, 49, '39/12', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(197, 50, '49/18', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(198, 50, '47/18', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(199, 50, '48/18', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(200, 50, '46/18', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(201, 51, '36/16', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(202, 51, '35/16', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(203, 51, '38/16', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(204, 51, '37/18', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(205, 52, '3 2/3', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(206, 52, '1 2/3', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(207, 52, '2 2/3', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(208, 52, '4 2/3', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(209, 53, '5 3/4', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(210, 53, '6 3/4', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(211, 53, '4 3/4', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(212, 53, '2 3/4', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(213, 54, '4', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(214, 54, '2', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(215, 54, '8', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(216, 54, '6', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(217, 55, '5 1/16', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(218, 55, '4 1/16', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(219, 55, '3 1/16', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(220, 55, '2 1/16', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(221, 56, '3', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(222, 56, '4', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(223, 56, '2', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(224, 56, '5', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(225, 57, '2 12/12', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(226, 57, '2 11/12', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(227, 57, '2 13/12', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(228, 57, '3 12/12', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(229, 58, '10 2/12', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(230, 58, '10 3/12', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(231, 58, '10 1/12', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(232, 58, '10 3/12', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(233, 59, '8 14/18', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(234, 59, '8 13/18', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(235, 59, '9 14/18', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(236, 59, '9 13/18', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(237, 60, '10 2/4', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(238, 60, '10 1/4', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(239, 60, '10 3/4', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(240, 60, '11 2/4', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(241, 61, '6', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(242, 61, '8', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(243, 61, '4', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(244, 61, '5', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(245, 62, '7 8/9', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(246, 62, '7 9/9', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(247, 62, '7 7/9', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(248, 62, '8 7/9', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(249, 63, '15 1/7', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(250, 63, '12 1/7', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(251, 63, '13 1/7', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(252, 63, '14 1/7', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(253, 64, '65', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(254, 64, '55', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(255, 64, '60', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(256, 64, '45', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(257, 65, '10 1/2', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(258, 65, '9 1/2', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(259, 65, '11 1/2', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(260, 65, '8 1/2', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(261, 66, '22 1/2', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(262, 66, '22 3/2', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(263, 66, '22 2/2', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(264, 66, '22 5/2', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(265, 67, '45 1/2', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(266, 67, '45 2/2', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(267, 67, '45 3/2', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(268, 67, '45 4/2', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(269, 68, '58 2/2', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(270, 68, '58 1/2', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(271, 68, '58 3/2', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(272, 68, '58 4/2', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(273, 69, '17', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(274, 69, '18', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(275, 69, '19', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(276, 69, '16', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(277, 70, '33 8/12', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(278, 70, '33 7/12', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(279, 70, '33 9/12', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(280, 70, '33 6/12', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(281, 71, '2 1/2', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(282, 71, '3 1/2', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(283, 71, '1 1/2', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(284, 71, '4 1/2', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(285, 72, '14/16', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(286, 72, '13/16', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(287, 72, '15/16', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(288, 72, '12/16', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(289, 73, '1 13/20', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(290, 73, '1 12/20', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(291, 73, '1 14/20', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(292, 73, '1 15/20', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(293, 74, '2 2/27', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(294, 74, '2 3/27', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(295, 74, '2 4/27', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(296, 74, '2 6/27', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(297, 75, '2 48/50', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(298, 75, '2 47/50', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(299, 75, '2 46/50', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(300, 75, '2 45/50', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(301, 76, '44477', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(302, 76, '44475', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(303, 76, '44476', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(304, 76, '44478', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(305, 77, '11/20', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(306, 77, '8/20', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(307, 77, '7/20', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(308, 77, '9 / 20', '1', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(309, 78, '1 2/9', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(310, 78, '1 3/9', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(311, 78, '1 4/9', '0', '2021-12-26 07:00:22', '2021-12-26 07:00:22', NULL),
(312, 78, '1 1/9', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(313, 79, '12/14', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(314, 79, '13/14', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(315, 79, '14/14', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(316, 79, '15/14', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(317, 80, '14/18', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(318, 80, '13/18', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(319, 80, '12/18', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(320, 80, '16/18', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(321, 81, '2 3/3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(322, 81, '2 2/3', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(323, 81, '2 4/3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(324, 81, '2 1/3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(325, 82, '44229', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(326, 82, '44230', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(327, 82, '44228', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(328, 82, '44231', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(329, 83, '44229', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(330, 83, '44228', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(331, 83, '44230', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(332, 83, '44231', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(333, 84, '44262', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(334, 84, '44261', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(335, 84, '44264', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(336, 84, '44263', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(337, 85, '6/15', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(338, 85, '8/15', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(339, 85, '7/15', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(340, 85, '9/15', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(341, 86, '44379', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(342, 86, '44378', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(343, 86, '44380', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(344, 86, '44381', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(345, 87, '2/14', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(346, 87, '1/14', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(347, 87, '3/14', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(348, 87, '4/14', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(349, 88, '5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(350, 88, '6', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(351, 88, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(352, 88, '7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(353, 89, '44292', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(354, 89, '44293', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(355, 89, '44294', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(356, 89, '44291', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(357, 90, '44228', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(358, 90, '44230', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(359, 90, '44231', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(360, 90, '44229', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(361, 91, '42', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(362, 91, '40', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(363, 91, '45', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(364, 91, '38', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(365, 92, '0.25', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(366, 92, '0.35', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(367, 92, '0.15', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(368, 92, '0.45', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(369, 93, '0.37', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(370, 93, '0.36', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(371, 93, '0.34', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(372, 93, '0.38', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(373, 94, '44318', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(374, 94, '44319', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(375, 94, '44320', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(376, 94, '44322', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(377, 95, '60', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(378, 95, '55', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(379, 95, '50', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(380, 95, '45', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(381, 96, '94', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(382, 96, '92', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(383, 96, '96', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(384, 96, '98', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(385, 97, '48', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(386, 97, '52', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(387, 97, '50', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(388, 97, '54', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(389, 98, '27', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(390, 98, '29', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(391, 98, '25', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(392, 98, '26', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(393, 99, '24', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(394, 99, '26', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(395, 99, '27', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(396, 99, '28', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(397, 100, '52', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(398, 100, '53', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(399, 100, '51', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(400, 100, '54', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(401, 101, '72', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(402, 101, '70', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(403, 101, '71', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(404, 101, '73', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(405, 102, '42', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(406, 102, '44', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(407, 102, '40', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(408, 102, '46', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(409, 103, '92', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(410, 103, '89', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(411, 103, '91', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(412, 103, '90', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(413, 104, '4.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(414, 104, '5.5', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(415, 104, '3.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(416, 104, '6.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(417, 105, '7.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(418, 105, '8.5', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(419, 105, '44325', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(420, 105, '6.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(421, 106, '0.18', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(422, 106, '0.19', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(423, 106, '0.17', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(424, 106, '0.16', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(425, 107, '0.3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(426, 107, '0.2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(427, 107, '0.4', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(428, 107, '0.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(429, 108, '0.3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(430, 108, '0.4', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(431, 108, '0.2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(432, 108, '0.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(433, 109, '2.8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(434, 109, '1.8', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(435, 109, '0.8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(436, 109, '3.8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(437, 110, '1.75', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(438, 110, '2.75', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(439, 110, '0.75', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(440, 110, '3.75', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(441, 111, '3.05', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(442, 111, '4.05', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(443, 111, '2.05', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(444, 111, '5.05', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(445, 112, '4.2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(446, 112, '3.2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(447, 112, '5.2', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(448, 112, '6.2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(449, 113, '1.36', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(450, 113, '0.36', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(451, 113, '2.36', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(452, 113, '3.36', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(453, 114, '1.75', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(454, 114, '2.75', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(455, 114, '0.75', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(456, 114, '3.75', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(457, 115, '1.375', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(458, 115, '0.375', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(459, 115, '3.375', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(460, 115, '2.375', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(461, 116, '14.8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(462, 116, '16.8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(463, 116, '15.8', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(464, 116, '17.8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(465, 117, '1.4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(466, 117, '2.4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(467, 117, '3.4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(468, 117, '0.4', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(469, 118, '0.6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(470, 118, '1.6', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(471, 118, '2.6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(472, 118, '3.6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(473, 119, '1.12', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(474, 119, '0.12', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(475, 119, '2.12', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(476, 119, '3.12', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(477, 120, '10.8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(478, 120, '11.8', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(479, 120, '12.8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(480, 120, '13.8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(481, 121, '2.3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(482, 121, '3.3', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(483, 121, '1.3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(484, 121, '4.3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(485, 122, '44230', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(486, 122, '44228', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(487, 122, '44229', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(488, 122, '44231', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(489, 123, '44318', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(490, 123, '44319', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(491, 123, '44317', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(492, 123, '44320', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(493, 124, '44288', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(494, 124, '44287', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(495, 124, '44289', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(496, 124, '44290', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(497, 125, '44470', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(498, 125, '44471', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(499, 125, '44472', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(500, 125, '44473', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(501, 126, '44287', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(502, 126, '44288', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(503, 126, '44289', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(504, 126, '44291', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(505, 127, '2/20', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(506, 127, '1/20', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(507, 127, '3/20', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(508, 127, '4/20', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(509, 128, '12/20', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(510, 128, '11/20', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(511, 128, '13/20', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(512, 128, '14/20', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(513, 129, '23/25', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(514, 129, '22/25', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(515, 129, '21/25', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(516, 129, '24/25', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(517, 130, '15/25', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(518, 130, '16/25', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(519, 130, '17/25', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(520, 130, '18/25', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(521, 131, '2000', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(522, 131, '1500', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(523, 131, '1000', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(524, 131, '2500', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(525, 132, '10000', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(526, 132, '15000', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(527, 132, '20000', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(528, 132, '22500', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(529, 133, '2600', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(530, 133, '2800', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(531, 133, '2400', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(532, 133, '2200', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(533, 134, '800', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(534, 134, '400', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(535, 134, '200', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(536, 134, '600', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(537, 135, '1000', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(538, 135, '1500', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(539, 135, '2000', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(540, 135, '2200', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(541, 136, '400', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(542, 136, '800', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(543, 136, '600', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(544, 136, '1000', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(545, 137, '300', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(546, 137, '350', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(547, 137, '250', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(548, 137, '200', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(549, 138, '600', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(550, 138, '500', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(551, 138, '700', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(552, 138, '800', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(553, 139, '1100', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(554, 139, '1300', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(555, 139, '1200', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(556, 139, '1400', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(557, 140, '800', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(558, 140, '1000', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(559, 140, '1200', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(560, 140, '1400', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(561, 141, '2^4 x 3 x 5^2', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(562, 141, '2^4 x 3 x 5^3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(563, 141, '2^4 x 3 x 5^4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(564, 141, '2^4 x 3 x 5^4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(565, 142, '120 hari', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(566, 142, '150 hari', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(567, 142, '135 hari', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(568, 142, '125 hari', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(569, 143, '2^2x3x5^3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(570, 143, '2^2x3x5^4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(571, 143, '2^2x3x5^5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(572, 143, '2^2x3x5^2', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(573, 144, '2^5x28', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(574, 144, '2^5x29', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(575, 144, '2^5x27', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(576, 144, '2^5x26', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(577, 145, '2^2x17x48', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(578, 145, '2^2x17x47', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(579, 145, '2^2x17x46', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(580, 145, '2^2x17x49', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(581, 146, '2^3x3^2x12', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(582, 146, '2^3x3^2x11', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(583, 146, '2^3x3^2x13', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(584, 146, '2^3x3^2x14', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(585, 147, '2x3^4x4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(586, 147, '2x3^4x6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(587, 147, '2x3^4x7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(588, 147, '2x3^4x5', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(589, 148, '2^5x3^2', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(590, 148, '2^5x3^3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(591, 148, '2^5x3^4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(592, 148, '2^5x3^5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(593, 149, '2^6x3x6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(594, 149, '2^6x3x5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(595, 149, '2^6x3x7', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(596, 149, '2^6x3x8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(597, 150, '2^2x3^3x8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(598, 150, '2^2x3^3x6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(599, 150, '2^2x3^3x9', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(600, 150, '2^2x3^3x7', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(601, 151, '2^3x7x22', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(602, 151, '2^3x7x21', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(603, 151, '2^3x7x23', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(604, 151, '2^3x7x24', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(605, 152, '336', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(606, 152, '337', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(607, 152, '338', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(608, 152, '335', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(609, 153, '1250', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(610, 153, '1350', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(611, 153, '1450', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(612, 153, '1150', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(613, 154, '2200', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(614, 154, '2100', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(615, 154, '2000', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(616, 154, '2300', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(617, 155, '430', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(618, 155, '420', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(619, 155, '460', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(620, 155, '440', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(621, 156, '98', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(622, 156, '96', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(623, 156, '94', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(624, 156, '92', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(625, 157, '322', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(626, 157, '320', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(627, 157, '326', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(628, 157, '324', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(629, 158, '3980', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(630, 158, '3940', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(631, 158, '3960', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(632, 158, '3920', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(633, 159, '72', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(634, 159, '74', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(635, 159, '76', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(636, 159, '78', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(637, 160, '1346', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(638, 160, '1344', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(639, 160, '1342', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(640, 160, '1348', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(641, 161, '2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(642, 161, '4', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(643, 161, '6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(644, 161, '8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(645, 162, '2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(646, 162, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(647, 162, '6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(648, 162, '8', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(649, 163, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(650, 163, '5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(651, 163, '3', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(652, 163, '7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(653, 164, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(654, 164, '9', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(655, 164, '7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(656, 164, '5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(657, 165, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(658, 165, '5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(659, 165, '9', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(660, 165, '7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(661, 166, '5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(662, 166, '7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(663, 166, '3', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(664, 166, '9', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(665, 167, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(666, 167, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(667, 167, '2', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(668, 167, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(669, 168, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL);
INSERT INTO `question_options` (`id`, `question_id`, `option`, `correct`, `created_at`, `updated_at`, `deleted_at`) VALUES
(670, 168, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(671, 168, '3', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(672, 168, '2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(673, 169, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(674, 169, '2', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(675, 169, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(676, 169, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(677, 170, '5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(678, 170, '6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(679, 170, '7', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(680, 170, '8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(681, 171, '6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(682, 171, '5', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(683, 171, '7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(684, 171, '8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(685, 172, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(686, 172, '4', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(687, 172, '2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(688, 172, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(689, 173, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(690, 173, '2', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(691, 173, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(692, 173, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(693, 174, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(694, 174, '2', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(695, 174, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(696, 174, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(697, 175, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(698, 175, '3', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(699, 175, '2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(700, 175, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(701, 176, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(702, 176, '2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(703, 176, '3', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(704, 176, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(705, 177, '10', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(706, 177, '12', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(707, 177, '11', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(708, 177, '13', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(709, 178, '10', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(710, 178, '11', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(711, 178, '12', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(712, 178, '13', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(713, 179, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(714, 179, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(715, 179, '2', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(716, 179, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(717, 180, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(718, 180, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(719, 180, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(720, 180, '2', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(721, 181, '14', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(722, 181, '18', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(723, 181, '16', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(724, 181, '12', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(725, 182, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(726, 182, '3', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(727, 182, '2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(728, 182, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(729, 183, '5', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(730, 183, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(731, 183, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(732, 183, '2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(733, 184, '16', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(734, 184, '17', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(735, 184, '15', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(736, 184, '14', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(737, 185, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(738, 185, '2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(739, 185, '3', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(740, 185, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(741, 186, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(742, 186, '2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(743, 186, '3', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(744, 186, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(745, 187, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(746, 187, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(747, 187, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(748, 187, '2', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(749, 188, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(750, 188, '2', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(751, 188, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(752, 188, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(753, 189, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(754, 189, '2', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(755, 189, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(756, 189, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(757, 190, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(758, 190, '4', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(759, 190, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(760, 190, '2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(761, 191, '5.0m', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(762, 191, '3.0m', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(763, 191, '4.0m', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(764, 191, '2.0m', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(765, 192, '2.6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(766, 192, '3.6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(767, 192, '5.6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(768, 192, '4.6', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(769, 193, '5.25', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(770, 193, '7.25', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(771, 193, '6.25', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(772, 193, '4.25', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(773, 194, '2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(774, 194, '4', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(775, 194, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(776, 194, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(777, 195, '5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(778, 195, '6', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(779, 195, '7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(780, 195, '8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(781, 196, '4.1', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(782, 196, '5.1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(783, 196, '3.1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(784, 196, '2.1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(785, 197, '3.5', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(786, 197, '4.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(787, 197, '2.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(788, 197, '5.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(789, 198, '6.7', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(790, 198, '7.7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(791, 198, '5.7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(792, 198, '4.7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(793, 199, '2.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(794, 199, '3.5', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(795, 199, '4.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(796, 199, '5.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(797, 200, '5.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(798, 200, '7.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(799, 200, '6.5', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(800, 200, '8.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(801, 201, '4.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(802, 201, '5.5', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(803, 201, '6.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(804, 201, '7.5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(805, 202, '4.3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(806, 202, '5.3', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(807, 202, '6.3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(808, 202, '7.3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(809, 203, '4.9', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(810, 203, '6.9', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(811, 203, '7.9', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(812, 203, '5.9', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(813, 204, '2.3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(814, 204, '3.3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(815, 204, '5.3', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(816, 204, '4.3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(817, 205, '6.4', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(818, 205, '2.4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(819, 205, '3.4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(820, 205, '4.4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(821, 206, '6.75', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(822, 206, '5.75', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(823, 206, '4.75', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(824, 206, '3.75', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(825, 207, '5.1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(826, 207, '6.1', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(827, 207, '7.1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(828, 207, '8.1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(829, 208, '6.45', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(830, 208, '7.45', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(831, 208, '5.45', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(832, 208, '8.45', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(833, 209, '6.93', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(834, 209, '4.93', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(835, 209, '5.93', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(836, 209, '6.93', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(837, 210, '4.125', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(838, 210, '5.125', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(839, 210, '6.125', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(840, 210, '7.125', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(841, 211, '5.375', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(842, 211, '4.375', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(843, 211, '6.375', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(844, 211, '7.375', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(845, 212, '4.225', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(846, 212, '5.225', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(847, 212, '6.225', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(848, 212, '7.225', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(849, 213, '6.1', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(850, 213, '5.1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(851, 213, '4.1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(852, 213, '3.1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(853, 214, '5.52', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(854, 214, '4.52', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(855, 214, '7.52', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(856, 214, '6.52', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(857, 215, '6.34', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(858, 215, '4.34', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(859, 215, '5.34', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(860, 215, '2.34', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(861, 216, '5.04', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(862, 216, '6.04', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(863, 216, '3.04', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(864, 216, '4.04', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(865, 217, '5.2', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(866, 217, '4.2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(867, 217, '6.2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(868, 217, '3.2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(869, 218, '6.07', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(870, 218, '5.07', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(871, 218, '4.07', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(872, 218, '7.07', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(873, 219, '5.16', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(874, 219, '6.16', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(875, 219, '4.16', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(876, 219, '7.16', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(877, 220, '68.2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(878, 220, '67.2', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(879, 220, '66.2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(880, 220, '65.2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(881, 221, '5.95', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(882, 221, '4.95', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(883, 221, '7.95', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(884, 221, '6.95', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(885, 222, '5.09', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(886, 222, '4.09', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(887, 222, '6.09', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(888, 222, '7.09', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(889, 223, '5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(890, 223, '6', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(891, 223, '7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(892, 223, '8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(893, 224, '7', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(894, 224, '6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(895, 224, '8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(896, 224, '9', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(897, 225, '5', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(898, 225, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(899, 225, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(900, 225, '6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(901, 226, '8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(902, 226, '9', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(903, 226, '7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(904, 226, '6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(905, 227, '6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(906, 227, '5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(907, 227, '7', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(908, 227, '8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(909, 228, '2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(910, 228, '3', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(911, 228, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(912, 228, '5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(913, 229, '6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(914, 229, '7', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(915, 229, '8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(916, 229, '9', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(917, 230, '8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(918, 230, '6', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(919, 230, '9', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(920, 230, '7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(921, 231, '5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(922, 231, '7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(923, 231, '8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(924, 231, '6', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(925, 232, '7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(926, 232, '8', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(927, 232, '6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(928, 232, '9', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(929, 233, '7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(930, 233, '6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(931, 233, '8', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(932, 233, '9', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(933, 234, '8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(934, 234, '9', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(935, 234, '7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(936, 234, '6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(937, 235, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(938, 235, '2', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(939, 235, '4', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(940, 235, '5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(941, 236, '6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(942, 236, '7', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(943, 236, '9', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(944, 236, '8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(945, 237, '8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(946, 237, '9', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(947, 237, '7', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(948, 237, '6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(949, 238, '4', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(950, 238, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(951, 238, '2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(952, 238, '5', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(953, 239, '7', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(954, 239, '6', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(955, 239, '8', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(956, 239, '9', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(957, 240, '4', '1', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(958, 240, '3', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(959, 240, '2', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL),
(960, 240, '1', '0', '2021-12-26 07:00:23', '2021-12-26 07:00:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

DROP TABLE IF EXISTS `results`;
CREATE TABLE IF NOT EXISTS `results` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `correct` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `results_user_id_foreign` (`user_id`),
  KEY `results_question_id_foreign` (`question_id`),
  KEY `results_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2021-12-26 06:58:51', '2021-12-26 06:58:51'),
(2, 'user', 'web', '2021-12-26 06:58:51', '2021-12-26 06:58:51');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('G9GHlbZ6psrxEDHApFqcE2TR8W0Q6a7t7BsHKUWU', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiSjg1bkNuRTJKSUhCaUhNNWplcTJDOERZRGZid0VTZ0tBOXRUWHVzRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9yZXN1bHQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJHBZeXNFY0dXTDdKc3I5d3lPMnlYQ2VJQVc3bXZzWE1BV2JZZ3pua3VZaThxVmEyZjNWRm4yIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCRwWXlzRWNHV0w3SnNyOXd5TzJ5WENlSUFXN212c1hNQVdiWWd6bmt1WWk4cVZhMmYzVkZuMiI7fQ==', 1640545103);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_competencies`
--

DROP TABLE IF EXISTS `sub_competencies`;
CREATE TABLE IF NOT EXISTS `sub_competencies` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `topic_id` bigint(20) UNSIGNED NOT NULL,
  `competency_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_competencies_kelas_id_foreign` (`kelas_id`),
  KEY `sub_competencies_topic_id_foreign` (`topic_id`),
  KEY `sub_competencies_competency_id_foreign` (`competency_id`),
  KEY `sub_competencies_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_competencies`
--

INSERT INTO `sub_competencies` (`id`, `kelas_id`, `topic_id`, `competency_id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 'Membilang banyak benda', '2021-12-26 06:59:46', '2021-12-26 06:59:46', NULL),
(2, 1, 2, 2, 'Melakukan penjumlahan dan pengurangan bilangan sampai 20', '2021-12-26 06:59:46', '2021-12-26 06:59:46', NULL),
(3, 1, 3, 3, 'Melakukan penjumlahan dan pengurangan bilangan sampai 20', '2021-12-26 06:59:46', '2021-12-26 06:59:46', NULL),
(4, 2, 4, 4, 'Melakukan perkalian bilangan yang hasilnya bilangan dua angka', '2021-12-26 06:59:47', '2021-12-26 06:59:47', NULL),
(5, 2, 5, 5, 'Melakukan operasi hitung campuran', '2021-12-26 06:59:47', '2021-12-26 06:59:47', NULL),
(6, 3, 6, 6, 'Melakukan penjumlahan dan pengurangan tiga angka', '2021-12-26 06:59:47', '2021-12-26 06:59:47', NULL),
(7, 3, 7, 7, 'Melakukan penjumlahan dan pengurangan tiga angka', '2021-12-26 06:59:47', '2021-12-26 06:59:47', NULL),
(8, 3, 8, 8, 'Melakukan perkalian yang hasilnya bilangan tiga angka dan pembagian bilangan tiga angka', '2021-12-26 06:59:47', '2021-12-26 06:59:47', NULL),
(9, 3, 9, 9, 'Melakukan perkalian yang hasilnya bilangan tiga angka dan pembagian bilangan tiga angka', '2021-12-26 06:59:47', '2021-12-26 06:59:47', NULL),
(10, 4, 10, 10, 'Menjumlahkan pecahan', '2021-12-26 06:59:47', '2021-12-26 06:59:47', NULL),
(11, 4, 11, 11, 'Melakukan operasi hitung campuran', '2021-12-26 06:59:47', '2021-12-26 06:59:47', NULL),
(12, 5, 12, 12, 'Mengubah pecahan ke bentuk persen dan desimal serta sebaliknya', '2021-12-26 06:59:47', '2021-12-26 06:59:47', NULL),
(13, 5, 14, 14, 'Mengubah pecahan ke bentuk persen dan desimal serta sebaliknya', '2021-12-26 06:59:47', '2021-12-26 06:59:47', NULL),
(14, 5, 14, 14, 'Mengalikan dan membagi berbagai bentuk pecahan', '2021-12-26 06:59:47', '2021-12-26 06:59:47', NULL),
(15, 5, 13, 13, 'Mengalikan dan membagi berbagai bentuk pecahan', '2021-12-26 06:59:47', '2021-12-26 06:59:47', NULL),
(16, 5, 12, 12, 'Mengalikan dan membagi berbagai bentuk pecahan', '2021-12-26 06:59:47', '2021-12-26 06:59:47', NULL),
(17, 6, 15, 15, 'Melakukan operasi hitung bilangan bulat dalam pemecahan masalah (di artikel jurnal)/Menggunakan sifat-sifat operasi hitung termasuk operasi campuran, FPB dan KPK', '2021-12-26 06:59:47', '2021-12-26 06:59:47', NULL),
(18, 6, 16, 16, 'Melakukan operasi hitung bilangan bulat dalam pemecahan masalah (di artikel jurnal)/Menggunakan sifat-sifat operasi hitung termasuk operasi campuran, FPB dan KPK', '2021-12-26 06:59:47', '2021-12-26 06:59:47', NULL),
(19, 6, 17, 17, 'Menentukan rata-rata hitung dan modus sekumpulan data', '2021-12-26 06:59:47', '2021-12-26 06:59:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

DROP TABLE IF EXISTS `tests`;
CREATE TABLE IF NOT EXISTS `tests` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `result` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tests_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `user_id`, `result`, `created_at`, `updated_at`, `deleted_at`) VALUES
(15, 1, '10', '2021-12-26 18:27:17', '2021-12-26 18:27:46', NULL),
(16, 1, '0', '2021-12-26 18:28:41', '2021-12-26 11:29:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_answers`
--

DROP TABLE IF EXISTS `test_answers`;
CREATE TABLE IF NOT EXISTS `test_answers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `test_id` int(10) UNSIGNED DEFAULT NULL,
  `question_id` int(10) UNSIGNED DEFAULT NULL,
  `correct` tinyint(4) DEFAULT '0',
  `option_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_answers_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_answers`
--

INSERT INTO `test_answers` (`id`, `user_id`, `test_id`, `question_id`, `correct`, `option_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(96, 1, 15, 190, 1, 758, '2021-12-26 18:27:20', '2021-12-26 18:27:20', NULL),
(97, 1, 15, 160, 1, 638, '2021-12-26 18:27:23', '2021-12-26 18:27:23', NULL),
(98, 1, 15, 149, 1, 595, '2021-12-26 18:27:26', '2021-12-26 18:27:26', NULL),
(99, 1, 15, 155, 1, 618, '2021-12-26 18:27:29', '2021-12-26 18:27:29', NULL),
(100, 1, 15, 144, 1, 574, '2021-12-26 18:27:31', '2021-12-26 18:27:31', NULL),
(101, 1, 15, 152, 1, 605, '2021-12-26 18:27:34', '2021-12-26 18:27:34', NULL),
(102, 1, 15, 148, 1, 589, '2021-12-26 18:27:38', '2021-12-26 18:27:38', NULL),
(103, 1, 15, 156, 1, 622, '2021-12-26 18:27:41', '2021-12-26 18:27:41', NULL),
(104, 1, 15, 154, 1, 614, '2021-12-26 18:27:43', '2021-12-26 18:27:43', NULL),
(105, 1, 15, 153, 1, 610, '2021-12-26 18:27:46', '2021-12-26 18:27:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test_settings`
--

DROP TABLE IF EXISTS `test_settings`;
CREATE TABLE IF NOT EXISTS `test_settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `qty_question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_estimation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_settings`
--

INSERT INTO `test_settings` (`id`, `qty_question`, `time_estimation`, `created_at`, `updated_at`) VALUES
(1, '10', '10', '2021-12-26 06:58:56', '2021-12-26 11:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `test_statuses`
--

DROP TABLE IF EXISTS `test_statuses`;
CREATE TABLE IF NOT EXISTS `test_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_test` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilihan_soal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test_statuses`
--

INSERT INTO `test_statuses` (`id`, `id_test`, `id_user`, `level_test`, `pilihan_soal`, `count_number`, `start_time`, `end_time`, `status`, `created_at`, `updated_at`) VALUES
(15, '15', '1', '3', '12', '10', '27/12/21', '2021-12-27 01:37:17', 'stop', '2021-12-26 18:27:17', '2021-12-26 18:27:46'),
(16, '16', '1', '2', '6', '1', '27/12/21', '2021-12-27 01:29:41', 'stop', '2021-12-26 18:28:41', '2021-12-26 11:29:42');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
CREATE TABLE IF NOT EXISTS `topics` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timer` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topics_kelas_id_foreign` (`kelas_id`),
  KEY `topics_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `kelas_id`, `title`, `timer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Bilangan', NULL, '2021-12-26 06:59:24', '2021-12-26 06:59:24', NULL),
(2, 1, 'Penjumlahan', NULL, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(3, 1, 'Pengurangan', NULL, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(4, 2, 'Perkalian', NULL, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(5, 2, 'Operasi Hitung Campur', NULL, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(6, 3, 'Penjumlahan', NULL, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(7, 3, 'Pengurangan', NULL, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(8, 3, 'Perkalian', NULL, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(9, 3, 'Pembagian', NULL, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(10, 4, 'Penjumlahan Pecahan', NULL, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(11, 4, 'Operasi Hitung Campur', NULL, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(12, 5, 'Operasi Hitung Campur', NULL, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(13, 5, 'Perkalian Pecahan', NULL, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(14, 5, 'Pembagian Pecahan', NULL, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(15, 6, 'KPK', NULL, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(16, 6, 'FPB', NULL, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(17, 6, 'Pengolahan Data', NULL, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nisn` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `school` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `kelas_id` bigint(20) UNSIGNED NOT NULL,
  `gender` enum('Male','Female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_nisn_unique` (`nisn`),
  KEY `users_kelas_id_foreign` (`kelas_id`),
  KEY `users_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nisn`, `name`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `school`, `age`, `kelas_id`, `gender`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 201810370311126, 'Felix', '$2y$10$pYysEcGWL7Jsr9wyO2yXCeIAW7mvsXMAWbYgznkuYi8qVa2f3VFn2', NULL, NULL, 'Sdn Maju Mundur', 10, 6, 'Male', '2021-12-26 06:58:52', '2021-12-26 06:58:52', NULL),
(2, 1266, 'Peserta', '$2y$10$iexGgqyCh07MgnNU4OFEJ.ln9BYOL3riL/3.pphXuqcgMrPSoLhYe', NULL, NULL, 'Sdn Maju Mundur', 10, 5, 'Male', '2021-12-26 06:58:52', '2021-12-26 06:58:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_actions`
--

DROP TABLE IF EXISTS `user_actions`;
CREATE TABLE IF NOT EXISTS `user_actions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_actions_user_id_foreign` (`user_id`),
  KEY `user_actions_deleted_at_index` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=412 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_actions`
--

INSERT INTO `user_actions` (`id`, `user_id`, `action`, `action_model`, `action_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'created', 'topics', 1, '2021-12-26 06:59:24', '2021-12-26 06:59:24', NULL),
(2, 1, 'created', 'topics', 2, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(3, 1, 'created', 'topics', 3, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(4, 1, 'created', 'topics', 4, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(5, 1, 'created', 'topics', 5, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(6, 1, 'created', 'topics', 6, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(7, 1, 'created', 'topics', 7, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(8, 1, 'created', 'topics', 8, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(9, 1, 'created', 'topics', 9, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(10, 1, 'created', 'topics', 10, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(11, 1, 'created', 'topics', 11, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(12, 1, 'created', 'topics', 12, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(13, 1, 'created', 'topics', 13, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(14, 1, 'created', 'topics', 14, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(15, 1, 'created', 'topics', 15, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(16, 1, 'created', 'topics', 16, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(17, 1, 'created', 'topics', 17, '2021-12-26 06:59:25', '2021-12-26 06:59:25', NULL),
(18, 1, 'created', 'competencies', 1, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(19, 1, 'created', 'competencies', 2, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(20, 1, 'created', 'competencies', 3, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(21, 1, 'created', 'competencies', 4, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(22, 1, 'created', 'competencies', 5, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(23, 1, 'created', 'competencies', 6, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(24, 1, 'created', 'competencies', 7, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(25, 1, 'created', 'competencies', 8, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(26, 1, 'created', 'competencies', 9, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(27, 1, 'created', 'competencies', 10, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(28, 1, 'created', 'competencies', 11, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(29, 1, 'created', 'competencies', 12, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(30, 1, 'created', 'competencies', 13, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(31, 1, 'created', 'competencies', 14, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(32, 1, 'created', 'competencies', 15, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(33, 1, 'created', 'competencies', 16, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(34, 1, 'created', 'competencies', 17, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(35, 1, 'created', 'competencies', 18, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(36, 1, 'created', 'competencies', 19, '2021-12-26 06:59:34', '2021-12-26 06:59:34', NULL),
(37, 1, 'created', 'questions', 1, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(38, 1, 'created', 'questions', 2, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(39, 1, 'created', 'questions', 3, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(40, 1, 'created', 'questions', 4, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(41, 1, 'created', 'questions', 5, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(42, 1, 'created', 'questions', 6, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(43, 1, 'created', 'questions', 7, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(44, 1, 'created', 'questions', 8, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(45, 1, 'created', 'questions', 9, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(46, 1, 'created', 'questions', 10, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(47, 1, 'created', 'questions', 11, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(48, 1, 'created', 'questions', 12, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(49, 1, 'created', 'questions', 13, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(50, 1, 'created', 'questions', 14, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(51, 1, 'created', 'questions', 15, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(52, 1, 'created', 'questions', 16, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(53, 1, 'created', 'questions', 17, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(54, 1, 'created', 'questions', 18, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(55, 1, 'created', 'questions', 19, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(56, 1, 'created', 'questions', 20, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(57, 1, 'created', 'questions', 21, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(58, 1, 'created', 'questions', 22, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(59, 1, 'created', 'questions', 23, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(60, 1, 'created', 'questions', 24, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(61, 1, 'created', 'questions', 25, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(62, 1, 'created', 'questions', 26, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(63, 1, 'created', 'questions', 27, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(64, 1, 'created', 'questions', 28, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(65, 1, 'created', 'questions', 29, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(66, 1, 'created', 'questions', 30, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(67, 1, 'created', 'questions', 31, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(68, 1, 'created', 'questions', 32, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(69, 1, 'created', 'questions', 33, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(70, 1, 'created', 'questions', 34, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(71, 1, 'created', 'questions', 35, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(72, 1, 'created', 'questions', 36, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(73, 1, 'created', 'questions', 37, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(74, 1, 'created', 'questions', 38, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(75, 1, 'created', 'questions', 39, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(76, 1, 'created', 'questions', 40, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(77, 1, 'created', 'questions', 41, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(78, 1, 'created', 'questions', 42, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(79, 1, 'created', 'questions', 43, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(80, 1, 'created', 'questions', 44, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(81, 1, 'created', 'questions', 45, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(82, 1, 'created', 'questions', 46, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(83, 1, 'created', 'questions', 47, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(84, 1, 'created', 'questions', 48, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(85, 1, 'created', 'questions', 49, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(86, 1, 'created', 'questions', 50, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(87, 1, 'created', 'questions', 51, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(88, 1, 'created', 'questions', 52, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(89, 1, 'created', 'questions', 53, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(90, 1, 'created', 'questions', 54, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(91, 1, 'created', 'questions', 55, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(92, 1, 'created', 'questions', 56, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(93, 1, 'created', 'questions', 57, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(94, 1, 'created', 'questions', 58, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(95, 1, 'created', 'questions', 59, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(96, 1, 'created', 'questions', 60, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(97, 1, 'created', 'questions', 61, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(98, 1, 'created', 'questions', 62, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(99, 1, 'created', 'questions', 63, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(100, 1, 'created', 'questions', 64, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(101, 1, 'created', 'questions', 65, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(102, 1, 'created', 'questions', 66, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(103, 1, 'created', 'questions', 67, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(104, 1, 'created', 'questions', 68, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(105, 1, 'created', 'questions', 69, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(106, 1, 'created', 'questions', 70, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(107, 1, 'created', 'questions', 71, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(108, 1, 'created', 'questions', 72, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(109, 1, 'created', 'questions', 73, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(110, 1, 'created', 'questions', 74, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(111, 1, 'created', 'questions', 75, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(112, 1, 'created', 'questions', 76, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(113, 1, 'created', 'questions', 77, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(114, 1, 'created', 'questions', 78, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(115, 1, 'created', 'questions', 79, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(116, 1, 'created', 'questions', 80, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(117, 1, 'created', 'questions', 81, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(118, 1, 'created', 'questions', 82, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(119, 1, 'created', 'questions', 83, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(120, 1, 'created', 'questions', 84, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(121, 1, 'created', 'questions', 85, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(122, 1, 'created', 'questions', 86, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(123, 1, 'created', 'questions', 87, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(124, 1, 'created', 'questions', 88, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(125, 1, 'created', 'questions', 89, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(126, 1, 'created', 'questions', 90, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(127, 1, 'created', 'questions', 91, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(128, 1, 'created', 'questions', 92, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(129, 1, 'created', 'questions', 93, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(130, 1, 'created', 'questions', 94, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(131, 1, 'created', 'questions', 95, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(132, 1, 'created', 'questions', 96, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(133, 1, 'created', 'questions', 97, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(134, 1, 'created', 'questions', 98, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(135, 1, 'created', 'questions', 99, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(136, 1, 'created', 'questions', 100, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(137, 1, 'created', 'questions', 101, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(138, 1, 'created', 'questions', 102, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(139, 1, 'created', 'questions', 103, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(140, 1, 'created', 'questions', 104, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(141, 1, 'created', 'questions', 105, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(142, 1, 'created', 'questions', 106, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(143, 1, 'created', 'questions', 107, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(144, 1, 'created', 'questions', 108, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(145, 1, 'created', 'questions', 109, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(146, 1, 'created', 'questions', 110, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(147, 1, 'created', 'questions', 111, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(148, 1, 'created', 'questions', 112, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(149, 1, 'created', 'questions', 113, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(150, 1, 'created', 'questions', 114, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(151, 1, 'created', 'questions', 115, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(152, 1, 'created', 'questions', 116, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(153, 1, 'created', 'questions', 117, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(154, 1, 'created', 'questions', 118, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(155, 1, 'created', 'questions', 119, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(156, 1, 'created', 'questions', 120, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(157, 1, 'created', 'questions', 121, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(158, 1, 'created', 'questions', 122, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(159, 1, 'created', 'questions', 123, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(160, 1, 'created', 'questions', 124, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(161, 1, 'created', 'questions', 125, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(162, 1, 'created', 'questions', 126, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(163, 1, 'created', 'questions', 127, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(164, 1, 'created', 'questions', 128, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(165, 1, 'created', 'questions', 129, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(166, 1, 'created', 'questions', 130, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(167, 1, 'created', 'questions', 131, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(168, 1, 'created', 'questions', 132, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(169, 1, 'created', 'questions', 133, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(170, 1, 'created', 'questions', 134, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(171, 1, 'created', 'questions', 135, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(172, 1, 'created', 'questions', 136, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(173, 1, 'created', 'questions', 137, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(174, 1, 'created', 'questions', 138, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(175, 1, 'created', 'questions', 139, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(176, 1, 'created', 'questions', 140, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(177, 1, 'created', 'questions', 141, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(178, 1, 'created', 'questions', 142, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(179, 1, 'created', 'questions', 143, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(180, 1, 'created', 'questions', 144, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(181, 1, 'created', 'questions', 145, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(182, 1, 'created', 'questions', 146, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(183, 1, 'created', 'questions', 147, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(184, 1, 'created', 'questions', 148, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(185, 1, 'created', 'questions', 149, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(186, 1, 'created', 'questions', 150, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(187, 1, 'created', 'questions', 151, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(188, 1, 'created', 'questions', 152, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(189, 1, 'created', 'questions', 153, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(190, 1, 'created', 'questions', 154, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(191, 1, 'created', 'questions', 155, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(192, 1, 'created', 'questions', 156, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(193, 1, 'created', 'questions', 157, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(194, 1, 'created', 'questions', 158, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(195, 1, 'created', 'questions', 159, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(196, 1, 'created', 'questions', 160, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(197, 1, 'created', 'questions', 161, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(198, 1, 'created', 'questions', 162, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(199, 1, 'created', 'questions', 163, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(200, 1, 'created', 'questions', 164, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(201, 1, 'created', 'questions', 165, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(202, 1, 'created', 'questions', 166, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(203, 1, 'created', 'questions', 167, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(204, 1, 'created', 'questions', 168, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(205, 1, 'created', 'questions', 169, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(206, 1, 'created', 'questions', 170, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(207, 1, 'created', 'questions', 171, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(208, 1, 'created', 'questions', 172, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(209, 1, 'created', 'questions', 173, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(210, 1, 'created', 'questions', 174, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(211, 1, 'created', 'questions', 175, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(212, 1, 'created', 'questions', 176, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(213, 1, 'created', 'questions', 177, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(214, 1, 'created', 'questions', 178, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(215, 1, 'created', 'questions', 179, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(216, 1, 'created', 'questions', 180, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(217, 1, 'created', 'questions', 181, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(218, 1, 'created', 'questions', 182, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(219, 1, 'created', 'questions', 183, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(220, 1, 'created', 'questions', 184, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(221, 1, 'created', 'questions', 185, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(222, 1, 'created', 'questions', 186, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(223, 1, 'created', 'questions', 187, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(224, 1, 'created', 'questions', 188, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(225, 1, 'created', 'questions', 189, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(226, 1, 'created', 'questions', 190, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(227, 1, 'created', 'questions', 191, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(228, 1, 'created', 'questions', 192, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(229, 1, 'created', 'questions', 193, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(230, 1, 'created', 'questions', 194, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(231, 1, 'created', 'questions', 195, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(232, 1, 'created', 'questions', 196, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(233, 1, 'created', 'questions', 197, '2021-12-26 07:00:06', '2021-12-26 07:00:06', NULL),
(234, 1, 'created', 'questions', 198, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(235, 1, 'created', 'questions', 199, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(236, 1, 'created', 'questions', 200, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(237, 1, 'created', 'questions', 201, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(238, 1, 'created', 'questions', 202, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(239, 1, 'created', 'questions', 203, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(240, 1, 'created', 'questions', 204, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(241, 1, 'created', 'questions', 205, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(242, 1, 'created', 'questions', 206, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(243, 1, 'created', 'questions', 207, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(244, 1, 'created', 'questions', 208, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(245, 1, 'created', 'questions', 209, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(246, 1, 'created', 'questions', 210, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(247, 1, 'created', 'questions', 211, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(248, 1, 'created', 'questions', 212, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(249, 1, 'created', 'questions', 213, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(250, 1, 'created', 'questions', 214, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(251, 1, 'created', 'questions', 215, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(252, 1, 'created', 'questions', 216, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(253, 1, 'created', 'questions', 217, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(254, 1, 'created', 'questions', 218, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(255, 1, 'created', 'questions', 219, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(256, 1, 'created', 'questions', 220, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(257, 1, 'created', 'questions', 221, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(258, 1, 'created', 'questions', 222, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(259, 1, 'created', 'questions', 223, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(260, 1, 'created', 'questions', 224, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(261, 1, 'created', 'questions', 225, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(262, 1, 'created', 'questions', 226, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(263, 1, 'created', 'questions', 227, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(264, 1, 'created', 'questions', 228, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(265, 1, 'created', 'questions', 229, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(266, 1, 'created', 'questions', 230, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(267, 1, 'created', 'questions', 231, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(268, 1, 'created', 'questions', 232, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(269, 1, 'created', 'questions', 233, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(270, 1, 'created', 'questions', 234, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(271, 1, 'created', 'questions', 235, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(272, 1, 'created', 'questions', 236, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(273, 1, 'created', 'questions', 237, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(274, 1, 'created', 'questions', 238, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(275, 1, 'created', 'questions', 239, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(276, 1, 'created', 'questions', 240, '2021-12-26 07:00:07', '2021-12-26 07:00:07', NULL),
(277, 1, 'created', 'tests', 1, '2021-12-26 14:00:45', '2021-12-26 14:00:45', NULL),
(278, 1, 'created', 'test_answers', 1, '2021-12-26 14:01:15', '2021-12-26 14:01:15', NULL),
(279, 1, 'created', 'test_answers', 2, '2021-12-26 14:01:42', '2021-12-26 14:01:42', NULL),
(280, 1, 'created', 'test_answers', 3, '2021-12-26 14:02:18', '2021-12-26 14:02:18', NULL),
(281, 1, 'created', 'test_answers', 4, '2021-12-26 14:02:52', '2021-12-26 14:02:52', NULL),
(282, 1, 'created', 'test_answers', 5, '2021-12-26 14:03:40', '2021-12-26 14:03:40', NULL),
(283, 1, 'updated', 'tests', 1, '2021-12-26 14:03:41', '2021-12-26 14:03:41', NULL),
(284, 2, 'created', 'tests', 2, '2021-12-26 14:05:34', '2021-12-26 14:05:34', NULL),
(285, 2, 'created', 'test_answers', 6, '2021-12-26 14:06:51', '2021-12-26 14:06:51', NULL),
(286, 2, 'created', 'test_answers', 7, '2021-12-26 14:07:25', '2021-12-26 14:07:25', NULL),
(287, 2, 'created', 'test_answers', 8, '2021-12-26 14:07:56', '2021-12-26 14:07:56', NULL),
(288, 2, 'created', 'test_answers', 9, '2021-12-26 14:08:24', '2021-12-26 14:08:24', NULL),
(289, 2, 'created', 'test_answers', 10, '2021-12-26 14:08:52', '2021-12-26 14:08:52', NULL),
(290, 2, 'updated', 'tests', 2, '2021-12-26 14:08:52', '2021-12-26 14:08:52', NULL),
(291, 1, 'created', 'tests', 3, '2021-12-26 17:57:01', '2021-12-26 17:57:01', NULL),
(292, 1, 'created', 'test_answers', 11, '2021-12-26 17:57:04', '2021-12-26 17:57:04', NULL),
(293, 1, 'created', 'test_answers', 12, '2021-12-26 18:00:02', '2021-12-26 18:00:02', NULL),
(294, 1, 'created', 'test_answers', 13, '2021-12-26 18:01:02', '2021-12-26 18:01:02', NULL),
(295, 1, 'created', 'test_answers', 14, '2021-12-26 18:01:02', '2021-12-26 18:01:02', NULL),
(296, 1, 'created', 'test_answers', 15, '2021-12-26 18:03:07', '2021-12-26 18:03:07', NULL),
(297, 1, 'created', 'test_answers', 16, '2021-12-26 18:03:11', '2021-12-26 18:03:11', NULL),
(298, 1, 'created', 'test_answers', 17, '2021-12-26 18:03:15', '2021-12-26 18:03:15', NULL),
(299, 1, 'created', 'test_answers', 18, '2021-12-26 18:03:17', '2021-12-26 18:03:17', NULL),
(300, 1, 'created', 'test_answers', 19, '2021-12-26 18:03:20', '2021-12-26 18:03:20', NULL),
(301, 1, 'updated', 'tests', 3, '2021-12-26 18:03:20', '2021-12-26 18:03:20', NULL),
(302, 1, 'created', 'tests', 4, '2021-12-26 18:11:16', '2021-12-26 18:11:16', NULL),
(303, 1, 'created', 'test_answers', 20, '2021-12-26 18:11:19', '2021-12-26 18:11:19', NULL),
(304, 1, 'created', 'test_answers', 21, '2021-12-26 18:11:22', '2021-12-26 18:11:22', NULL),
(305, 1, 'created', 'test_answers', 22, '2021-12-26 18:11:25', '2021-12-26 18:11:25', NULL),
(306, 1, 'created', 'test_answers', 23, '2021-12-26 18:11:28', '2021-12-26 18:11:28', NULL),
(307, 1, 'created', 'test_answers', 24, '2021-12-26 18:11:36', '2021-12-26 18:11:36', NULL),
(308, 1, 'updated', 'tests', 4, '2021-12-26 18:11:36', '2021-12-26 18:11:36', NULL),
(309, 1, 'created', 'tests', 5, '2021-12-26 18:12:17', '2021-12-26 18:12:17', NULL),
(310, 1, 'created', 'test_answers', 25, '2021-12-26 18:12:21', '2021-12-26 18:12:21', NULL),
(311, 1, 'created', 'test_answers', 26, '2021-12-26 18:12:24', '2021-12-26 18:12:24', NULL),
(312, 1, 'created', 'test_answers', 27, '2021-12-26 18:12:27', '2021-12-26 18:12:27', NULL),
(313, 1, 'created', 'test_answers', 28, '2021-12-26 18:12:30', '2021-12-26 18:12:30', NULL),
(314, 1, 'created', 'test_answers', 29, '2021-12-26 18:12:33', '2021-12-26 18:12:33', NULL),
(315, 1, 'updated', 'tests', 5, '2021-12-26 18:12:33', '2021-12-26 18:12:33', NULL),
(316, 1, 'created', 'tests', 6, '2021-12-26 18:13:01', '2021-12-26 18:13:01', NULL),
(317, 1, 'created', 'tests', 7, '2021-12-26 18:14:12', '2021-12-26 18:14:12', NULL),
(318, 1, 'created', 'tests', 8, '2021-12-26 18:14:56', '2021-12-26 18:14:56', NULL),
(319, 1, 'created', 'test_answers', 30, '2021-12-26 18:15:02', '2021-12-26 18:15:02', NULL),
(320, 1, 'created', 'test_answers', 31, '2021-12-26 18:15:08', '2021-12-26 18:15:08', NULL),
(321, 1, 'created', 'test_answers', 32, '2021-12-26 18:15:11', '2021-12-26 18:15:11', NULL),
(322, 1, 'created', 'test_answers', 33, '2021-12-26 18:15:14', '2021-12-26 18:15:14', NULL),
(323, 1, 'created', 'test_answers', 34, '2021-12-26 18:15:18', '2021-12-26 18:15:18', NULL),
(324, 1, 'updated', 'tests', 8, '2021-12-26 18:15:18', '2021-12-26 18:15:18', NULL),
(325, 1, 'created', 'tests', 9, '2021-12-26 18:15:43', '2021-12-26 18:15:43', NULL),
(326, 1, 'created', 'test_answers', 35, '2021-12-26 18:15:47', '2021-12-26 18:15:47', NULL),
(327, 1, 'created', 'test_answers', 36, '2021-12-26 18:15:51', '2021-12-26 18:15:51', NULL),
(328, 1, 'created', 'test_answers', 37, '2021-12-26 18:15:54', '2021-12-26 18:15:54', NULL),
(329, 1, 'created', 'test_answers', 38, '2021-12-26 18:15:58', '2021-12-26 18:15:58', NULL),
(330, 1, 'created', 'test_answers', 39, '2021-12-26 18:16:02', '2021-12-26 18:16:02', NULL),
(331, 1, 'created', 'test_answers', 40, '2021-12-26 18:16:06', '2021-12-26 18:16:06', NULL),
(332, 1, 'created', 'test_answers', 41, '2021-12-26 18:16:09', '2021-12-26 18:16:09', NULL),
(333, 1, 'created', 'test_answers', 42, '2021-12-26 18:16:12', '2021-12-26 18:16:12', NULL),
(334, 1, 'created', 'test_answers', 43, '2021-12-26 18:16:16', '2021-12-26 18:16:16', NULL),
(335, 1, 'created', 'test_answers', 44, '2021-12-26 18:16:19', '2021-12-26 18:16:19', NULL),
(336, 1, 'updated', 'tests', 9, '2021-12-26 18:16:19', '2021-12-26 18:16:19', NULL),
(337, 1, 'created', 'tests', 10, '2021-12-26 18:17:24', '2021-12-26 18:17:24', NULL),
(338, 1, 'created', 'test_answers', 45, '2021-12-26 18:17:28', '2021-12-26 18:17:28', NULL),
(339, 1, 'created', 'test_answers', 46, '2021-12-26 18:17:31', '2021-12-26 18:17:31', NULL),
(340, 1, 'created', 'test_answers', 47, '2021-12-26 18:17:34', '2021-12-26 18:17:34', NULL),
(341, 1, 'created', 'test_answers', 48, '2021-12-26 18:17:38', '2021-12-26 18:17:38', NULL),
(342, 1, 'created', 'test_answers', 49, '2021-12-26 18:17:42', '2021-12-26 18:17:42', NULL),
(343, 1, 'created', 'test_answers', 50, '2021-12-26 18:17:45', '2021-12-26 18:17:45', NULL),
(344, 1, 'created', 'test_answers', 51, '2021-12-26 18:17:49', '2021-12-26 18:17:49', NULL),
(345, 1, 'created', 'test_answers', 52, '2021-12-26 18:17:53', '2021-12-26 18:17:53', NULL),
(346, 1, 'created', 'test_answers', 53, '2021-12-26 18:17:57', '2021-12-26 18:17:57', NULL),
(347, 1, 'created', 'test_answers', 54, '2021-12-26 18:18:00', '2021-12-26 18:18:00', NULL),
(348, 1, 'updated', 'tests', 10, '2021-12-26 18:18:00', '2021-12-26 18:18:00', NULL),
(349, 1, 'created', 'tests', 11, '2021-12-26 18:19:11', '2021-12-26 18:19:11', NULL),
(350, 1, 'created', 'test_answers', 55, '2021-12-26 18:19:14', '2021-12-26 18:19:14', NULL),
(351, 1, 'created', 'test_answers', 56, '2021-12-26 18:19:17', '2021-12-26 18:19:17', NULL),
(352, 1, 'created', 'test_answers', 57, '2021-12-26 18:19:19', '2021-12-26 18:19:19', NULL),
(353, 1, 'created', 'test_answers', 58, '2021-12-26 18:19:22', '2021-12-26 18:19:22', NULL),
(354, 1, 'created', 'test_answers', 59, '2021-12-26 18:19:24', '2021-12-26 18:19:24', NULL),
(355, 1, 'created', 'test_answers', 60, '2021-12-26 18:19:26', '2021-12-26 18:19:26', NULL),
(356, 1, 'created', 'test_answers', 61, '2021-12-26 18:19:29', '2021-12-26 18:19:29', NULL),
(357, 1, 'created', 'test_answers', 62, '2021-12-26 18:19:31', '2021-12-26 18:19:31', NULL),
(358, 1, 'created', 'test_answers', 63, '2021-12-26 18:19:34', '2021-12-26 18:19:34', NULL),
(359, 1, 'created', 'test_answers', 64, '2021-12-26 18:19:36', '2021-12-26 18:19:36', NULL),
(360, 1, 'updated', 'tests', 11, '2021-12-26 18:19:36', '2021-12-26 18:19:36', NULL),
(361, 1, 'created', 'tests', 12, '2021-12-26 18:21:42', '2021-12-26 18:21:42', NULL),
(362, 1, 'created', 'test_answers', 65, '2021-12-26 18:21:45', '2021-12-26 18:21:45', NULL),
(363, 1, 'created', 'test_answers', 66, '2021-12-26 18:23:02', '2021-12-26 18:23:02', NULL),
(364, 1, 'created', 'test_answers', 67, '2021-12-26 18:23:05', '2021-12-26 18:23:05', NULL),
(365, 1, 'created', 'test_answers', 68, '2021-12-26 18:23:08', '2021-12-26 18:23:08', NULL),
(366, 1, 'created', 'test_answers', 69, '2021-12-26 18:23:12', '2021-12-26 18:23:12', NULL),
(367, 1, 'created', 'test_answers', 70, '2021-12-26 18:23:14', '2021-12-26 18:23:14', NULL),
(368, 1, 'created', 'test_answers', 71, '2021-12-26 18:23:17', '2021-12-26 18:23:17', NULL),
(369, 1, 'created', 'test_answers', 72, '2021-12-26 18:23:21', '2021-12-26 18:23:21', NULL),
(370, 1, 'created', 'test_answers', 73, '2021-12-26 18:23:24', '2021-12-26 18:23:24', NULL),
(371, 1, 'created', 'test_answers', 74, '2021-12-26 18:23:26', '2021-12-26 18:23:26', NULL),
(372, 1, 'created', 'test_answers', 75, '2021-12-26 18:23:29', '2021-12-26 18:23:29', NULL),
(373, 1, 'updated', 'tests', 12, '2021-12-26 18:23:29', '2021-12-26 18:23:29', NULL),
(374, 1, 'created', 'tests', 13, '2021-12-26 18:24:58', '2021-12-26 18:24:58', NULL),
(375, 1, 'created', 'test_answers', 76, '2021-12-26 18:25:01', '2021-12-26 18:25:01', NULL),
(376, 1, 'created', 'test_answers', 77, '2021-12-26 18:25:05', '2021-12-26 18:25:05', NULL),
(377, 1, 'created', 'test_answers', 78, '2021-12-26 18:25:08', '2021-12-26 18:25:08', NULL),
(378, 1, 'created', 'test_answers', 79, '2021-12-26 18:25:11', '2021-12-26 18:25:11', NULL),
(379, 1, 'created', 'test_answers', 80, '2021-12-26 18:25:14', '2021-12-26 18:25:14', NULL),
(380, 1, 'created', 'test_answers', 81, '2021-12-26 18:25:17', '2021-12-26 18:25:17', NULL),
(381, 1, 'created', 'test_answers', 82, '2021-12-26 18:25:20', '2021-12-26 18:25:20', NULL),
(382, 1, 'created', 'test_answers', 83, '2021-12-26 18:25:23', '2021-12-26 18:25:23', NULL),
(383, 1, 'created', 'test_answers', 84, '2021-12-26 18:25:26', '2021-12-26 18:25:26', NULL),
(384, 1, 'created', 'test_answers', 85, '2021-12-26 18:25:28', '2021-12-26 18:25:28', NULL),
(385, 1, 'updated', 'tests', 13, '2021-12-26 18:25:28', '2021-12-26 18:25:28', NULL),
(386, 1, 'created', 'tests', 14, '2021-12-26 18:26:12', '2021-12-26 18:26:12', NULL),
(387, 1, 'created', 'test_answers', 86, '2021-12-26 18:26:16', '2021-12-26 18:26:16', NULL),
(388, 1, 'created', 'test_answers', 87, '2021-12-26 18:26:18', '2021-12-26 18:26:18', NULL),
(389, 1, 'created', 'test_answers', 88, '2021-12-26 18:26:20', '2021-12-26 18:26:20', NULL),
(390, 1, 'created', 'test_answers', 89, '2021-12-26 18:26:26', '2021-12-26 18:26:26', NULL),
(391, 1, 'created', 'test_answers', 90, '2021-12-26 18:26:30', '2021-12-26 18:26:30', NULL),
(392, 1, 'created', 'test_answers', 91, '2021-12-26 18:26:33', '2021-12-26 18:26:33', NULL),
(393, 1, 'created', 'test_answers', 92, '2021-12-26 18:26:36', '2021-12-26 18:26:36', NULL),
(394, 1, 'created', 'test_answers', 93, '2021-12-26 18:26:39', '2021-12-26 18:26:39', NULL),
(395, 1, 'created', 'test_answers', 94, '2021-12-26 18:26:41', '2021-12-26 18:26:41', NULL),
(396, 1, 'created', 'test_answers', 95, '2021-12-26 18:26:44', '2021-12-26 18:26:44', NULL),
(397, 1, 'updated', 'tests', 14, '2021-12-26 18:26:44', '2021-12-26 18:26:44', NULL),
(398, 1, 'created', 'tests', 15, '2021-12-26 18:27:17', '2021-12-26 18:27:17', NULL),
(399, 1, 'created', 'test_answers', 96, '2021-12-26 18:27:20', '2021-12-26 18:27:20', NULL),
(400, 1, 'created', 'test_answers', 97, '2021-12-26 18:27:23', '2021-12-26 18:27:23', NULL),
(401, 1, 'created', 'test_answers', 98, '2021-12-26 18:27:26', '2021-12-26 18:27:26', NULL),
(402, 1, 'created', 'test_answers', 99, '2021-12-26 18:27:29', '2021-12-26 18:27:29', NULL),
(403, 1, 'created', 'test_answers', 100, '2021-12-26 18:27:31', '2021-12-26 18:27:31', NULL),
(404, 1, 'created', 'test_answers', 101, '2021-12-26 18:27:34', '2021-12-26 18:27:34', NULL),
(405, 1, 'created', 'test_answers', 102, '2021-12-26 18:27:38', '2021-12-26 18:27:38', NULL),
(406, 1, 'created', 'test_answers', 103, '2021-12-26 18:27:41', '2021-12-26 18:27:41', NULL),
(407, 1, 'created', 'test_answers', 104, '2021-12-26 18:27:43', '2021-12-26 18:27:43', NULL),
(408, 1, 'created', 'test_answers', 105, '2021-12-26 18:27:46', '2021-12-26 18:27:46', NULL),
(409, 1, 'updated', 'tests', 15, '2021-12-26 18:27:46', '2021-12-26 18:27:46', NULL),
(410, 1, 'created', 'tests', 16, '2021-12-26 18:28:41', '2021-12-26 18:28:41', NULL),
(411, 1, 'updated', 'tests', 16, '2021-12-26 11:29:42', '2021-12-26 11:29:42', NULL);

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
