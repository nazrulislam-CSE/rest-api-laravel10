-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2023 at 07:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_auth`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('rakib@gmail.com', 'v7TWmfvrb155aNvMEvnGLZWVQJaan3QNYj7sRnM04GHsVcdjZ6fIGWlV86zv', '2023-08-17 11:02:03'),
('siyam@gmail.com', '1XF9Zb6Jlr7lc5y9lSqSdxm3Hnz6gp8B7gl1NTDmMLGNNUbjSph4T9YUIIty', '2023-08-17 11:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'rakib@gmail.com', '2496cd58520ae9535897f6aefd41e3f0937a9ae204d9ffdbc11051ea82d4a667', '[\"*\"]', NULL, NULL, '2023-08-16 10:01:51', '2023-08-16 10:01:51'),
(2, 'App\\Models\\User', 1, 'rakib@gmail.com', 'c058dca69eef14b1877d4194832dbb8c651927e157a6c0769aabc7860430925a', '[\"*\"]', NULL, NULL, '2023-08-16 10:25:05', '2023-08-16 10:25:05'),
(3, 'App\\Models\\User', 1, 'rakib@gmail.com', 'b595bf1c37d9279b87e22c5aab7c9ea85646c8b5511b3305a4f80ee124986c8e', '[\"*\"]', NULL, NULL, '2023-08-16 10:35:19', '2023-08-16 10:35:19'),
(4, 'App\\Models\\User', 1, 'rakib@gmail.com', '7e85009f6cceb17fa340c2b67b19ff07a2e8adc58634f827b922958d41df0c6c', '[\"*\"]', NULL, NULL, '2023-08-16 10:39:06', '2023-08-16 10:39:06'),
(5, 'App\\Models\\User', 1, 'rakib@gmail.com', '7361bd849009f6aee7b0099f2d833c59bd746e030f1c8c2e10b766ce6b6c5b3c', '[\"*\"]', NULL, NULL, '2023-08-16 10:39:51', '2023-08-16 10:39:51'),
(11, 'App\\Models\\User', 2, 'siyam@gmail.com', '228d4d4182f44c3335affc5cf03eb48ec31776992ab882a6ceaf6f3ff7dc1745', '[\"*\"]', '2023-08-16 10:56:46', NULL, '2023-08-16 10:56:02', '2023-08-16 10:56:46'),
(12, 'App\\Models\\User', 2, 'siyam@gmail.com', '001cd36fd52eb588405c8f54a4c609ada090753440ccf7c28c09139eb7996712', '[\"*\"]', '2023-08-16 11:01:28', NULL, '2023-08-16 10:59:14', '2023-08-16 11:01:28'),
(13, 'App\\Models\\User', 2, 'siyam@gmail.com', '8d05788ba0b42af1f267e3f6ff00fdfd8d5957009c977e27110a10d8cc888d82', '[\"*\"]', NULL, NULL, '2023-08-16 11:02:10', '2023-08-16 11:02:10'),
(14, 'App\\Models\\User', 3, 'nazrul@gmail.com', '3aacdb13347a28b08bfabbd452e0c848dc07b12ad32af5c759fee17f1d16fb0f', '[\"*\"]', NULL, NULL, '2023-08-17 11:27:29', '2023-08-17 11:27:29'),
(15, 'App\\Models\\User', 3, 'nazrul@gmail.com', '2e7fd3b9cd2aff0f6b630f89b2f03115a12456f42b4abdde1b6b632ec6e4e2c7', '[\"*\"]', NULL, NULL, '2023-08-17 11:28:03', '2023-08-17 11:28:03');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rakib', 'rakib@gmail.com', NULL, '$2y$10$NJpvQ3gtdc2.Lc0B60ipX.u3KGNCM/O/8gmW8sWfiGjNP1inqT1Q6', NULL, '2023-08-16 10:01:51', '2023-08-16 10:01:51'),
(2, 'siyam', 'siyam@gmail.com', NULL, '$2y$10$9yq4VKVfbXT.HqyUjYQDKOyP06QmRUjJqb0i/A9lLfdZ5CO1fm7t2', NULL, '2023-08-16 10:45:39', '2023-08-16 11:01:28'),
(3, 'nazrul', 'nazrul@gmail.com', NULL, '$2y$10$QO5G0inpsObiP3th4KkN9.gyJw451eC3TGtwGrHvszyNBABJYMAn.', NULL, '2023-08-17 11:27:29', '2023-08-17 11:27:29');

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
