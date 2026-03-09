-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2026 at 09:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_12_todo`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categoryes`
--

CREATE TABLE `categoryes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categoryes`
--

INSERT INTO `categoryes` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'language', NULL, NULL, '2026-02-18 19:20:27'),
(2, 'book', NULL, NULL, NULL),
(3, 'moves', NULL, '2026-02-14 13:22:24', '2026-02-18 19:20:39'),
(4, 'carses', NULL, '2026-02-14 13:54:22', '2026-02-18 19:21:01'),
(5, 'hhhhhhhhhhhhhhhhh', '2026-02-14 17:22:02', '2026-02-14 13:57:42', '2026-02-14 17:22:02'),
(6, 'mmsdlfjldsjaf', '2026-02-18 11:26:15', '2026-02-14 14:49:52', '2026-02-18 11:26:15'),
(7, 'flowers', NULL, '2026-02-14 15:05:46', '2026-02-18 19:21:13'),
(8, 'aaaaaa', '2026-02-18 11:26:11', '2026-02-14 15:25:39', '2026-02-18 11:26:11'),
(9, 'iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', '2026-02-14 17:17:21', '2026-02-14 17:03:28', '2026-02-14 17:17:21'),
(10, 'landscape', NULL, '2026-02-14 17:03:53', '2026-02-18 19:21:27'),
(11, 'qwertr', '2026-02-14 17:19:00', '2026-02-14 17:07:23', '2026-02-14 17:19:00'),
(12, 'matiullah zamaroi', '2026-02-18 17:32:00', '2026-02-14 18:43:44', '2026-02-18 17:32:00'),
(13, 'laila jan', '2026-02-18 11:26:04', '2026-02-18 11:25:49', '2026-02-18 11:26:04'),
(14, 'computers', NULL, '2026-02-19 11:35:07', '2026-02-19 11:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_02_14_040316_create_categoryes_table', 1),
(5, '2026_02_14_040326_create_todos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1sS6Ltm5RMv18oLSXoq43cuOh0yRzWIkIla9bSzg', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVW9mMDhRc3B3ajZ4TGY0OVB1aUhUOXoza29XS0FWd2Z6TG5zN00yOCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czoxMDoidG9kby5pbmRleCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1771656084),
('8Yd0B8jVTqhaEASDrKaog5eGItubELyHKqe7jNdy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY21GZVhxZUFCWkhiaWJUZTVJNDNzZXZDME9ZRHBsYXc0bTQ2U2NCbSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8/cGFnZT0yIjtzOjU6InJvdXRlIjtzOjEwOiJ0b2RvLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1773036486),
('r4kaySLYB70aPXmOqyigZpORc9xDg17y6JLCi9OM', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEFSMmlxdnpOQVhGNWJzVTlJb3h2cExyNllmRTM2NVZwZDRETEltdSI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC8/cGFnZT0zIjtzOjU6InJvdXRlIjtzOjEwOiJ0b2RvLmluZGV4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1771472373);

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `categoryes_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `image`, `title`, `description`, `status`, `categoryes_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, '1771412672_DSC_0515.JPG', 'afghanistan flog', 'flog of the afghanistan', 0, 1, '2026-02-18 19:13:56', '2026-02-18 13:14:52', '2026-02-18 19:13:56'),
(5, '1771391705_img.jpg', 'the secondes', 'the description', 0, 3, '2026-02-18 19:14:03', '2026-02-18 13:15:05', '2026-02-18 19:14:03'),
(6, '1771391715_img.jpg', 'the secondes', 'the description', 1, 4, '2026-02-18 19:14:17', '2026-02-18 13:15:15', '2026-02-18 19:14:17'),
(7, '1771391721_img.jpg', 'the secondes', 'the description', 1, 10, '2026-02-18 19:14:23', '2026-02-18 13:15:21', '2026-02-18 19:14:23'),
(8, '1771393139_WIN_20260202_01_59_41_Pro.jpg', 'this maiullah', 'this pic belogs to me', 1, 10, '2026-02-18 19:14:27', '2026-02-18 13:38:59', '2026-02-18 19:14:27'),
(9, '1771406411_Capture.png', 'massenger', 'this the massenger for connected the puople', 1, 12, '2026-02-18 19:14:42', '2026-02-18 17:20:13', '2026-02-18 19:14:42'),
(10, '1771409269_35c74a98c5d298e9845fa348033d372b.jpg', 'flowers', 'this flowers', 0, 10, '2026-02-18 19:13:02', '2026-02-18 18:07:49', '2026-02-18 19:13:02'),
(11, '1771409370_avatar_hat.jpg', 'the girl', 'this the beutifull girl', 1, 10, '2026-02-18 19:14:47', '2026-02-18 18:09:30', '2026-02-18 19:14:47'),
(12, '1771393139_WIN_20260202_01_59_41_Pro.jpg', 'my name is matiullah zamarodi', 'bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', 0, 3, '2026-02-18 19:14:51', '2026-02-18 18:58:05', '2026-02-18 19:14:51'),
(13, '1771412384_avatar_girl2.jpg', 'eys for girls', 'this girl has butiful eys', 0, 10, '2026-02-18 19:14:55', '2026-02-18 18:59:44', '2026-02-18 19:14:55'),
(14, '1771413731_35c74a98c5d298e9845fa348033d372b.jpg', 'flower', 'this flower is from parwans i love this flower', 0, 7, '2026-02-19 11:35:11', '2026-02-18 19:22:11', '2026-02-19 11:35:11'),
(15, '1771413795_cars1.jpg', 'this my car', 'the prise of this car is 2800$', 1, 4, NULL, '2026-02-18 19:23:15', '2026-02-18 19:27:12'),
(16, '1771413866_IMG_7364-1.JPG', 'java script', 'i love the lang its frant lang of computer', 0, 1, NULL, '2026-02-18 19:24:26', '2026-02-18 19:24:26'),
(17, '1771413924_5bd823976f9526a1c0029a05be8e59bb.jpg', 'cocks', 'this the road map for cocks', 0, 2, NULL, '2026-02-18 19:25:24', '2026-02-18 19:25:24'),
(18, '1771413969_6ffda4c42e555edf3fdb67a6b9f993cf.jpg', 'this is inda move', 'this is the action move', 1, 3, NULL, '2026-02-18 19:26:09', '2026-02-18 19:27:16'),
(19, '1771414014_0b1a1a8d63ce9ec306ed6955bf7892e2.jpg', 'this is my house', 'i love this house its my wash to want this', 0, 10, NULL, '2026-02-18 19:26:54', '2026-02-18 19:26:54'),
(20, '1771471856_2b3308e145e088167f2633865f694a6b.jpg', 'Un books', 'the univircity books is there', 0, 2, NULL, '2026-02-19 11:30:57', '2026-02-19 11:30:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `categoryes`
--
ALTER TABLE `categoryes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todos_categoryes_id_foreign` (`categoryes_id`);

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
-- AUTO_INCREMENT for table `categoryes`
--
ALTER TABLE `categoryes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `todos_categoryes_id_foreign` FOREIGN KEY (`categoryes_id`) REFERENCES `categoryes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
