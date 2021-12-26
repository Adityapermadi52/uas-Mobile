-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2021 at 02:46 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webmobile`
--

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
-- Table structure for table `jabatan_pgws`
--

CREATE TABLE `jabatan_pgws` (
  `id_jabatan_pgw` int(20) UNSIGNED NOT NULL,
  `nama_jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jabatan_pgws`
--

INSERT INTO `jabatan_pgws` (`id_jabatan_pgw`, `nama_jabatan`, `created_at`, `updated_at`) VALUES
(1, 'PFM Ahli Muda', NULL, NULL),
(2, 'PFM Ahli Pertama', NULL, NULL),
(3, 'Kepala Loka POM Buleleng', NULL, NULL),
(4, 'Fungsional Umum', NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_09_29_035803_create_sessions_table', 1),
(7, '2021_09_29_053709_create_pegawais_table', 2),
(8, '2021_09_29_054431_create_jabatan_pgws_table', 2);

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
-- Table structure for table `pegawais`
--

CREATE TABLE `pegawais` (
  `id_pegawai` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jabatan_pgw` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawais`
--

INSERT INTO `pegawais` (`id_pegawai`, `nama`, `nip`, `alamat`, `telp`, `foto`, `id_jabatan_pgw`, `status`, `created_at`, `updated_at`) VALUES
(19, 'Lanang', '1905021117', 'negara', '0856954232', 'uploads/pegawais/1640518854b28f6f70-673f-4864-9a8b-cf204a46ea5e401990681107291424.jpg', 3, 'N', '2021-12-26 03:40:55', '2021-12-26 03:40:55');

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(20, 'App\\Models\\User', 2, 'mobile', 'f486edae30d59c55703311999a848106e40a0d6684b9f1087caf5e36094895c0', '[\"*\"]', NULL, '2021-12-22 09:00:34', '2021-12-22 09:00:34');

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
('0Mlpoe1D8wRPi697pqChuCUTHGsyeTtvYCPELirJ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVkyTndKVjZuS21OSTdWQW1weDBuMHRjaG5vZWg0VExkTXJGY2h1MSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1640083956),
('2E9oWEQunWMFhuRRlg6jY5iGzsewPomwaLL6CelC', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3RZeFRuMUduSDRDcEl3aGxOYmJoYmtjYUV5MGlpVng5dEd6T01tMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638363966),
('3V2nSoqJu2VSITttzdTVFWhPGJhKZM6SENgDNihp', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXB6aXV4WlZpV0tRYjdlNlZma09uZEtJVlpqNkh0TVd2RXNMWGtoZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638401533),
('43vBHlEbVwF1dRcHwzQzjBpNYslM7NmVANiOZCVd', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicUU4Nk9sMlFzYWhnTElaWnFUb3dDQlhYSUI4bUNCN0JFQXlOYXp5UiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638405173),
('46JZ2WGvwp5fcf9L05Jik7Qc2C0IPiT71VFDc7QL', NULL, '192.168.1.13', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3piOXVoZlJab3o1bFRwb1Bkd1hVZnJEYnljZXRLWjJaVVR2T2d2WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xOTIuMTY4LjEuMTMvd2VibW9iaWxlL3B1YmxpYy9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1638698821),
('4icb60htOHfi51szBWyr4E8EscqGTMB1u0gxoeU9', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGJXRHBCc0IyZXo2MHZ2djl2YTJWQnF5ejA3OHk5SVJNSWR1cXRDaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638363964),
('4wneQM8YU3r2wrq9HFuvNjENmfCFVtDKnir4SIJQ', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidFJOMEhMcTF0MnQ5dzQ1eVVTbWVsTkdMNmZvamJxUmZZYllGSUdBUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638363968),
('5BlgToBqKSKXL5Sgtq7T4PJWoDViJBIqi7l9k4b1', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXFYTlJDNEs4czlMVVdNMFdramVjeElHTjRhNnlIa2tNNG55U1RsVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638364509),
('6K5762vLDHr1InO3owZJMyKGuixUGgGUOEUZ4npm', NULL, '192.168.1.13', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ3V1cGVGckxwVFRwZFlOZlZHMU5tNWt4RjEzY01ZUk5TU3RuOGJGTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xOTIuMTY4LjEuMTMvd2VibW9iaWxlL3B1YmxpYy9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639528780),
('aKs5wOSCc7BxmwcZqS56BX6ZXg0kp00ePW5DM12e', NULL, '192.168.147.92', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoick0zekZaZ08zaTRaT05WaG9TRUFxWnVGRTZzMnY2NTltRTRUVm1KSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xOTIuMTY4LjE0Ny45Mi93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639306246),
('aVKcBYaus0zvIVOSKd0gU25n7xM28kiZQIRkEK8A', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTJuSmp1UlcxWFc4dHVUYUhRbE16STl3MzQ2c2JzZ3liSVBwTDJSZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638405175),
('aWCfga5y7s2NuuyZSxzlhc8fIAOnMJz6uwGB8yQy', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTBtTjZXUFRqUGlFSGVNSzlXN3VYQmpCSXRCcTk5aEZzUnA3Z2ZhcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638401581),
('aYEyvnZDtkmwHJ0neeftCk2RmtYhUZTVfNlTqkAp', NULL, '192.168.1.13', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHoyalU2M0tzckh5UFBqQUdhMzluZkRIcEwwQTRnMThFMEV0TzZmcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xOTIuMTY4LjEuMTMvd2VibW9iaWxlL3B1YmxpYy9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1638698821),
('bHKBFEBJzONMH08owofHFhvTMnKwdAKUvEsDq0Mh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.110 Safari/537.36 Edg/96.0.1054.62', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTRRME84YzZUaHJvTDRadWxrQ2ZZR2tJOXE1cFMwWEN0UFNKRlFoRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1640188853),
('Cl3ULe1vXKXdaqi9lm5g37fUELmt6q7GUyZiFaIr', 2, '192.168.1.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTkxMZzByUkp0Z0NWSmp4TFdQOWt4UTUxZUE4YUQ5YzgyTkZPUFlFZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRuVFVFanNqLmNqWUdHVXh5ZW4zNWkudkRad0tnQjRhZW9oQmVybW5PUTlvNmdYN3dRVWtWaSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkblRVRWpzai5jallHR1V4eWVuMzVpLnZEWndLZ0I0YWVvaEJlcm1uT1E5bzZnWDd3UVVrVmkiO30=', 1638363599),
('dMK7I7qnz5ca5ri7i9ZS4G6QkuOI7vtt5YJUfPPm', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianlqRFpUOGd5UER1dW1lTGJkUDFhc1JYZEVwOWRkQ1NOY3NVZDd1VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638405175),
('dVyStNcO2xGfhhFwngLoCnlyMhTBUdwiDyg72ku3', NULL, '192.168.1.13', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWV3ejZuTFVOUzdVTWcxdUxoajVuNWhrall4UjJTcG5YS2xTWmVOTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xOTIuMTY4LjEuMTMvd2VibW9iaWxlL3B1YmxpYy9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639496257),
('eFfi4OaSGeGCAKMdpQYD42HdxLOVJiAU0jIM0zPu', NULL, '192.168.147.92', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS0FGRUlnOXJUc1NLRXFTbVF2dG9FbU50eUVXM21ub0R5QmczaEw5VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xOTIuMTY4LjE0Ny45Mi93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639305808),
('FVtCT0UiftNA4xtOeaKIM1egukPHT4khE5mqFHWY', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQk5jU29lV2xBWnRNVzBqN01GN2ZseWVTUzJiMXdyY2Y2NWtUbktiVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638364000),
('fYx0mvcAkoEq1SWk6tziAXoONzM9WNwapDQS2cYp', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0cwU1NjVDJ1dTRVVll2VWU3U29sRWNxM0tEVXBORUxqUG1jbWZnSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638405174),
('go9KE1Yok7zaVfwU4SrE0E86FisyDEfn5UdfKLhj', NULL, '192.168.147.92', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3p6QjM0bGFVZk1WSGF0UjZRUUpoV3M4WW9nZklmNG5mZHFYZHd2RSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xOTIuMTY4LjE0Ny45Mi93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639305811),
('Gp44yukLG8NIo2TtVQuyrwV7WHp91h2OctspMkFf', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTNrcTkyTHFTQU1rOUNaTnVsTkd3MVRZWlpTSW9WYUpFa1RGYkFkTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638364508),
('hlMl7e8nkAP0qv2ZxqpHrvkCd2phJAQIlXIiGCs0', NULL, '192.168.147.92', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRm55RnRocDR3UmhQY2pEdHppNEdqQlZja1hqUXNyaFdxNTc5dzZxQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xOTIuMTY4LjE0Ny45Mi93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639306241),
('hN5jkaPbs19x95S4Dqjt2mpxwsPeB2EYdBOfMiGK', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnVFajkyR2Nnaks2b0ZvRlFuTkFsTXQ2YVBlWUc1akdLc25SNThDYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638401592),
('IeOIsjy0w5Bqtgy2MkmGIZWfD5aHw7unYbWNvGw5', NULL, '192.168.1.13', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnJ1QXp4WXNDZnJTM1RGOTJRbjIzajJBelN1RFFrQm5aMDVlT2Z4MyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xOTIuMTY4LjEuMTMvd2VibW9iaWxlL3B1YmxpYy9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639499410),
('ieSXNHFC7GH0RbcaxrVZ50GXrf3dmzxKB4ArJ7sZ', NULL, '192.168.147.92', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUhtU1VXUlp1YjljUDl5ajZaUDdYVHFuaXBxNTc2MVdKREJiZEZlWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xOTIuMTY4LjE0Ny45Mi93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639306245),
('IuHoxGpINYcbaVenl4wUV0U65R2LpLfiIaDD2aQT', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHlNTzluRFQxYlhubG45N0RrOENKc2FMUjNzY3pxRkxwSTkyQmdXaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638364187),
('jB53JB3FQGjeCX7wpwHq47ccIoDmfgGndT7f5PE5', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQW8yb1ZHMGlzSHphZks3NHJvMGFGUUFXRUd2aXhDY205ak9pWHdTRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638363972),
('jDMSDll4UggPtwQB4tc3ZfBvvXpDMpKfzFx3HNpB', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaUdwVkhESHhMUzhpOGxyV1JlWGtmZVF4Q1FnVmR0VXI5R00yOVN6UyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638401542),
('k38TYuuvRJNwCNMyqQ0cDamO1KdtgBrdPmTRk96c', NULL, '192.168.1.13', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUlllVGt5Q1l2aEZBRDVFRXNodXRkT2IwQTZ5NTZQRzJKZ3FyTE40diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xOTIuMTY4LjEuMTMvd2VibW9iaWxlL3B1YmxpYy9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1638698866),
('KL70k5ssTgBwSKwYSOarxM8gaMGn5sOitPLufuYZ', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUpHd2Z2TFNEZ1F6Q1RMZ0NwaU5na2NKSnlEUXlTSG5iQ25RemFPbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638405172),
('le9vkgO7Kg8GKBfygpS8dCogpwlxvqsr3oXA1HOv', NULL, '192.168.1.13', 'Mozilla/5.0 (Linux; Android 11; sdk_gphone_x86) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibTFEaTBib25md296T2ttc2l3T0lKQ2dtd0JiMFNGQWsycDVJVTNCNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xOTIuMTY4LjEuMTMvd2VibW9iaWxlL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639528765),
('ljDPJeugTCDsPcoLSsS2o5qVhJbdMt0bNBPCbn1O', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnQ5ZjFHMHV0YWE2bmU3aml5cGxnZmFlb0Y1MEFMQnNqSXZtSkRRRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638363969),
('mOVR3fL0uwyYYwaeDJq0pT8M8GvAqA8dXHuHF1N7', NULL, '192.168.1.13', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN2FnS1JSUndNY09TSGpDUllUemk1dE9XUlhVQ0RwZzlWVG1zQU1qTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xOTIuMTY4LjEuMTMvd2VibW9iaWxlL3B1YmxpYy9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639495992),
('mWLRLwdDIsWoZgXFzWB2mLEtAM4AZJsOgrtTj4X2', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiN1RZdmhlZUZDQm8yT1dYbzRCbHh2dDJ2b3hvMUwxeHVIU09qRmFZNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638401554),
('nGI287xEIuQWyMknbs2cSOMcZEuJNX5VLwy1eXSA', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDZXTlk5VmRHcVVhYWc4RlRjNlpZb29UN2V2eTZSR3V2elpPbXlEZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638362926),
('nmOJjHL2uRHfmz2POPyzigm7KFoGbw0KwYUqbGUg', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZTl6VkRGeXdsNmk4bUhBa1NOWDVIc29YTVJyeHBwTzJNRFhtQnJucCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638405174),
('oBl0DV9Y1naI7sByaNZFKtafHb4iOcvkYQgseGFe', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVpYbWNVdVR5WDJOWTZ2SjdoVWRQcnVCTE9KS25ucW1nb2d1UGRmQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638363967),
('pdk2aN1RwrBhJq4BZtzhPxrKfx5HJWczq3ae3Ioj', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaFl4UGRyS3RnWEJSTUF4bFhlaXh4d0FTNlB0bzBDajZHcXBVR1IzcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638364175),
('pScoq9aJJed3DyE0WoM0p6uxxPYzMO2CEjRNLpJN', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVR2NEZ0OHplcDQzRnUzc1d0RWYxVWM1amROY1lJRjdtRjNkZWpyOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638364031),
('Q2yqp3KwlhWsCoaLjeAHHstiOhhkBQbkAnRj7P7m', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2VlNXgxSmpPcXU5MURyVkNhb0E5S2xZZmt6UWIwTE00TGlVbklReiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638405275),
('Qhht4ig5EcFOD4SlZrZsuGjZkqDi8cpiGU3mKwnA', NULL, '192.168.147.92', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV25zcFl3U2VHZ3FkRXNzVjVNeW1BcFgwWFNtQ0JSN2JwckhTUEFtciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xOTIuMTY4LjE0Ny45Mi93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639305910),
('qpt1PR2LFr0JHbtUfYJyGaBcgpeZm5jMKeYj32C2', NULL, '192.168.1.13', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzR3c294N1dzcnRleE9tOVRlQ0d3bk9acEFLNnY0dE1lQmN0S1NPTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xOTIuMTY4LjEuMTMvd2VibW9iaWxlL3B1YmxpYy9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639496267),
('rxYp3IWxFSPpb7C6AgB9vqiAt4MyeD0rqk5LM1RY', NULL, '192.168.1.13', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmdQSDRYV3IybWs1Tk0zbVhoMjNxYlVMTFpOTnk4OGJqMDY0cTJ1eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xOTIuMTY4LjEuMTMvd2VibW9iaWxlL3B1YmxpYy9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639496246),
('sEVxJqy2sUXY1edh9s2PuTM6wtyRHLsamKSiKPF5', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXZkUlMxbElHWU02dXNUM25namFxYllsZjZ2WjlWVXNNaFNHbDZRNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638405243),
('SYBVPL7zCL6OvM6vN1CJ6XooZUkOIkNuhA71a5la', NULL, '192.168.1.13', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVnhwbldId2tFeldydW5MUUNXaHQ4Q2JUQWhGQVFWd204TW5ONU52SiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xOTIuMTY4LjEuMTMvd2VibW9iaWxlL3B1YmxpYy9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639496270),
('tWSNVLvSRcQpoERFHBu09dEg9ylfawuQlSZp9sDO', NULL, '192.168.1.13', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHQzSW11Vk5nTGtHc3V6S1h4amtoRTVkV0kyUnY1eFFmRDFEM2h4RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xOTIuMTY4LjEuMTMvd2VibW9iaWxlL3B1YmxpYy9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1638698878),
('UuTJ8tJRYBLatTpDKD3AaaEZO5PBvXkPEeRlaPOV', NULL, '192.168.147.92', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2NqNk90Y1RYMXFHWGRNaVF0bEoyM20yT1I1ejA1ZjhaTGhoVXZKMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xOTIuMTY4LjE0Ny45Mi93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639305905),
('UwJEiidyKRchu7566xqIdlFkiesGUbzWpELNABjk', NULL, '192.168.147.92', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZk1JTHc3Y1NDVXMwbUFZSzNKajJUUUFKckNSaTlDNGVXMEZDZG1SaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xOTIuMTY4LjE0Ny45Mi93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639306079),
('UWrQOFqSkFhPbXUp8I7CZEYVBmRb86T1Rb8xwzIV', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjF1bnpyeGlqZ0pRUmtlbkM0b2ljNzF6S1NxY0QwN2VjWWtMRjUyTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638364459),
('w7sWyQAD9vY25F3Rt4e3apYVqJ8jONbgeVHmhEm5', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieklmN0FPZGtMbU80TjFORUFUcU1BQkRtRUJlY1IwMHpCdEN2a0dDVyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638364048),
('WMrnSZxdVJ6T5eH6ZD7Vr5nGFZZsRsLkgtcPkBbk', NULL, '192.168.147.92', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTG5MSjhCRTRWOTFvVlZGZjJLbXhRVUw2ZXppb0FZNlVXem1mYk1INCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly8xOTIuMTY4LjE0Ny45Mi93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1639306028),
('yQS07EPmyh7YE39mx6b3RiNDOY1UrWyoPiJKIHnF', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2lNZEwxeVV6SFc4NUlzZXlNSjRwUmVXOUQwSlN3NjBEZklUWXFPcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638363938),
('YVHEXr327keAo4BLKFqI94yVW3EOaTXNhCp9psAm', NULL, '192.168.1.9', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVVCUWd1M2lnMTNuUFp6RWlLOUhiY1lwd1AyRW5NS3hYZWYxS3h4ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHA6Ly8xOTIuMTY4LjEuOS93ZWJtb2JpbGUvcHVibGljL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1638401593),
('ZAYRE7zgJKcOs0QonM6xIy0MmiRwVrsgI7MHxeNb', NULL, '192.168.1.13', 'Dart/2.13 (dart:io)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjVWb0tlejZwZ3dYNkhMbEFFTkdSUG40UlFIcWVtMFJ4OGxJUUZtZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xOTIuMTY4LjEuMTMvd2VibW9iaWxlL3B1YmxpYy9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1639305415);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'aditya09', 'adityapermadi09@gmail.com', NULL, '$2y$10$H114cIM0vsewoxVj9reUvutrgvMEAJp4x2XFH97.lniNaQB4aKQeW', NULL, NULL, NULL, NULL, NULL, '2021-09-29 23:51:19', '2021-09-29 23:51:19'),
(2, 'adityapermadi', 'permadiaditya53@gmail.com', NULL, '$2y$10$nTUEjsj.cjYGGUxyen35i.vDZwKgB4aeohBermnOQ9o6gX7wQUkVi', NULL, NULL, NULL, NULL, NULL, '2021-10-29 17:02:23', '2021-10-29 17:02:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jabatan_pgws`
--
ALTER TABLE `jabatan_pgws`
  ADD PRIMARY KEY (`id_jabatan_pgw`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jabatan_pgws`
--
ALTER TABLE `jabatan_pgws`
  MODIFY `id_jabatan_pgw` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
