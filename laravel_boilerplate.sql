-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2023 at 11:33 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_boilerplate`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_04_10_000000_create_users_table', 1),
(2, '2017_04_10_000001_create_password_resets_table', 1),
(3, '2017_04_10_000002_create_social_accounts_table', 1),
(4, '2017_04_10_000003_create_roles_table', 1),
(5, '2017_04_10_000004_create_users_roles_table', 1),
(6, '2017_06_16_000005_create_protection_validations_table', 1),
(7, '2017_06_16_000006_create_protection_shop_tokens_table', 1),
(8, '2019_10_31_152451_add_last_login_to_users', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `protection_shop_tokens`
--

CREATE TABLE `protection_shop_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `number` varchar(191) NOT NULL,
  `expires` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `success_url` varchar(191) NOT NULL,
  `cancel_url` varchar(191) NOT NULL,
  `success_url_title` varchar(191) NOT NULL,
  `cancel_url_title` varchar(191) NOT NULL,
  `shop_url` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `protection_shop_tokens`
--

INSERT INTO `protection_shop_tokens` (`id`, `user_id`, `number`, `expires`, `success_url`, `cancel_url`, `success_url_title`, `cancel_url_title`, `shop_url`) VALUES
(1, 3, '0460bcf9-bb1e-4c5e-a687-1583393eb176', '2023-09-26 22:28:58', 'http://localhost:8000/membership/clear-cache?dest=http%3A%2F%2Flocalhost%3A8000%2Fmembership', 'http://localhost:8000/membership', 'Return to Laravel Boilerplate', 'Cancel and return to Laravel Boilerplate', 'https://go.netlicensing.io/shop/v2/?shoptoken=0460bcf9-bb1e-4c5e-a687-1583393eb176'),
(2, 4, '97f210b1-c04d-4489-b69d-e63b5b93eb17', '2023-09-26 22:29:39', 'http://localhost:8000/membership/clear-cache?dest=http%3A%2F%2Flocalhost%3A8000%2Fmembership', 'http://localhost:8000/membership', 'Return to Laravel Boilerplate', 'Cancel and return to Laravel Boilerplate', 'https://go.netlicensing.io/shop/v2/?shoptoken=97f210b1-c04d-4489-b69d-e63b5b93eb17'),
(3, 6, '53a4201d-837f-46fe-a20a-40d62338e09e', '2023-09-26 23:00:57', 'http://localhost:8000/membership/clear-cache?dest=http%3A%2F%2Flocalhost%3A8000%2Fmembership', 'http://localhost:8000/membership', 'Return to Laravel Boilerplate', 'Cancel and return to Laravel Boilerplate', 'https://go.netlicensing.io/shop/v2/?shoptoken=53a4201d-837f-46fe-a20a-40d62338e09e');

-- --------------------------------------------------------

--
-- Table structure for table `protection_validations`
--

CREATE TABLE `protection_validations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ttl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `validation_result` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `protection_validations`
--

INSERT INTO `protection_validations` (`id`, `user_id`, `ttl`, `validation_result`) VALUES
(1, 3, '2023-09-26 22:08:58', '{\"LB-SUBSCRIPTION-PLAN\":{\"productModuleNumber\":\"LB-SUBSCRIPTION-PLAN\",\"valid\":true,\"expires\":\"2023-09-28T04:58:58.015Z\",\"productModuleName\":\"Membership Plan - Subscription\",\"warningLevel\":\"GREEN\",\"licensingModel\":\"Subscription\"}}'),
(2, 4, '2023-09-26 22:09:39', '{\"LB-SUBSCRIPTION-PLAN\":{\"productModuleNumber\":\"LB-SUBSCRIPTION-PLAN\",\"valid\":true,\"expires\":\"2023-09-28T04:59:39.260Z\",\"productModuleName\":\"Membership Plan - Subscription\",\"warningLevel\":\"GREEN\",\"licensingModel\":\"Subscription\"}}'),
(3, 6, '2023-09-26 22:40:56', '{\"LB-SUBSCRIPTION-PLAN\":{\"productModuleNumber\":\"LB-SUBSCRIPTION-PLAN\",\"valid\":true,\"expires\":\"2023-09-28T05:30:56.637Z\",\"productModuleName\":\"Membership Plan - Subscription\",\"warningLevel\":\"GREEN\",\"licensingModel\":\"Subscription\"}}');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `weight`) VALUES
(1, 'administrator', 0),
(2, 'authenticated', 0);

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(32) NOT NULL,
  `provider_id` varchar(191) NOT NULL,
  `token` varchar(225) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_accounts`
--

INSERT INTO `social_accounts` (`id`, `user_id`, `provider`, `provider_id`, `token`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 3, 'google', '104403746487535246556', 'ya29.a0AfB_byAf76scydeLurx6nJywI2gPZXHxmDHQUS2GFKL3tDPwfIXdZKGdAOzI3sgYVUubhCQwzJ_xFsZjgXY1Z98VunbEjo8wpSXKLcmWECtmllRst_Nc8PXmDyjyK28_Be6vY5fFAPqp-pN6JzO7j8qUgZ4VvOSOCDdxaCgYKAWsSARESFQGOcNnCMkn45uQcwUJAiLqeovxjhA0171', 'https://lh3.googleusercontent.com/a/ACg8ocItLN5ddLGC1PcUgxU2HphmfhvEU78RKuU-fbAYG_2o=s96-c', '2023-09-26 21:57:04', '2023-09-26 22:00:49'),
(2, 4, 'google', '111586038738617196836', 'ya29.a0AfB_byBDo6giYqwv3lOxoYvtzCHdQxXacgpoCRP6s2is0kfKLhwf2NXfrWTFLULp76jlw-pr-GFpoXaBKny3JJ3swSHPf-JneqajLoqqR4fCbpbtpIjtJ4UbC5LURVHz9IeIO9ngFE2b5Y9ifCVyRTQt-At0hukExVfjaCgYKAbgSARASFQGOcNnCyIhKLK9ekrEct0k9fy1xYA0171', 'https://lh3.googleusercontent.com/a/ACg8ocLRInR0N-Uqk9Gcdbd70IXHJ7Bs8awrkKRKmRd04NOVfns=s96-c', '2023-09-26 21:59:34', '2023-09-26 21:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `confirmation_code` char(36) DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` datetime DEFAULT NULL,
  `google2fa_secret` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `active`, `confirmation_code`, `confirmed`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`, `deleted_at`, `last_login`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `google2fa_secret`) VALUES
(1, 'Admin', 'admin.laravel@labs64.com', '$2y$10$bGTCgYJDgwfM/wOCbQITGekrZ1AOZnYO6ExSYfKg9tLyv9AI/uHL.', 1, 'e32e2ff9-a6ba-45e3-a2ae-2ee4fbd200a5', 1, NULL, NULL, '2023-09-26 08:50:33', '2023-09-26 08:53:50', NULL, '2023-09-26 15:53:50', NULL, NULL, NULL, NULL),
(2, 'Demo', 'demo.laravel@labs64.com', '$2y$10$U.ywcQP5YFMwVFWUpK5KI.FDoYmd6zlltZUOft6zrGAVjaRKV8fZ.', 1, '8f3370cc-9118-43be-a0f3-a715a7d1a3ba', 1, NULL, NULL, '2023-09-26 08:50:33', '2023-09-26 08:50:33', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Ibnu Naz\'m Ar-rosyid', 'ibnunazm.a11@gmail.com', '$2y$10$ybbj8lmwo4xp8KjoghldTOLim1U3.owNEwAb31OqimiKNcgLlshF2', 1, '45032f7b-91e9-4ce5-aea6-33b11e76c6e3', 1, NULL, NULL, '2023-09-26 21:57:03', '2023-09-26 21:57:03', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Ibnu Nazm Ar Rosyid', 'rosyidkrenz1101@gmail.com', '$2y$10$ZiB3GAsxsFuyC74sjs4Gku7EJKZaHOLqZBQpw1OmOP9xqhbbdYyCW', 1, '41caec79-31bc-4b22-8ae2-088a96e40c41', 1, NULL, NULL, '2023-09-26 21:59:34', '2023-09-26 21:59:34', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Ibnu Nazm', 'ibnunazm11@gmail.com', '$2y$10$M.loxZ7cKZQNJeFWV.0z6esEiWNqDHEGndWh/wTibdqURAzhBP1D6', 1, 'c685e37e-6bb6-48c9-ae69-05110fde401d', 0, NULL, NULL, '2023-09-26 22:10:48', '2023-09-26 22:10:48', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Ibnu Nazm', 'ibnunazm.a12@gmail.com', '$2y$10$0sPDA8XFgIi0Ro0pMfATzuu19aWrsRJTX9mfU6rjV621xWI8gBzme', 1, '4bde2d58-a22f-45ab-a26b-2d05170602b0', 0, NULL, NULL, '2023-09-26 22:27:53', '2023-09-26 22:27:53', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'apa2', 'apakek2@gmai.com', '$2y$10$jXyaLTWNmWftPhmOaqj6Pe5EAY6/VCzN.LY2i0AdZHuacf.8Txw3W', 1, '46cbb59e-0ce9-46b8-8620-21b3d97a21d1', 0, NULL, NULL, '2023-09-27 01:51:24', '2023-09-27 01:51:24', NULL, NULL, NULL, NULL, NULL, 'eyJpdiI6IjB5bkIxdnNXbTEzbFJJMEdmMHl2N2c9PSIsInZhbHVlIjoicHNHWjdxcHZNQ3NXTHgvNGhmQXpDRURLNCtsK1g3b1J3cGdUb0pSTzNwST0iLCJtYWMiOiI3NTRiODEyNDMzNDgzMTUzN2MyYjM5NGYxZWE4YzczODk3ZTBiMjM2M2M5ZDljMmNhNGFiYjc2OWMyNGE3NGFkIiwidGFnIjoiIn0='),
(8, 'apa4', 'apakek4@gmai.com', '$2y$10$9evUmuapcYLHBMEh4m/bf.RRi/lRpcaTBUs23OSz7eN/zvt5XxLUC', 1, 'f54890f6-b9ff-4e0c-bd4b-0968078cbf5f', 0, NULL, NULL, '2023-09-27 01:52:34', '2023-09-27 01:52:52', NULL, '2023-09-27 08:52:52', NULL, NULL, NULL, 'eyJpdiI6ImlVZDF6a0s0d1A5bGo1aHlLZFJsV3c9PSIsInZhbHVlIjoiMUxWVXdqeTlmc2RTMHB4eGkzanhMT2ZmRTRyQk9VUWExSE1HTCtlQkZqWT0iLCJtYWMiOiJiNWFmY2I2MTY5MmQ2ZjZhYWI5ZGRlY2U1MTM0MjA2ZTZmZmE5OGNmMDVhOTM0M2E1ZTZkNWQ2MTVhODE3YTA0IiwidGFnIjoiIn0='),
(9, 'apakek5', 'apakek5@gmail.com', '$2y$10$GNE.L4CX4XIUs1aAqz8MsOYYm2VDEignKExbRjyR3/nR3KhE91csW', 1, 'd675aa75-2c95-45ac-bf76-8cbf38b69ac5', 0, NULL, NULL, '2023-09-27 02:15:26', '2023-09-27 02:16:19', NULL, '2023-09-27 09:16:19', NULL, NULL, NULL, 'eyJpdiI6IkhvRXhJQmFMNlVTZWIzbHNQUkVNT2c9PSIsInZhbHVlIjoiR3g3ZnliTWZHajhjQ1ZZdG81OUZWWmNLREMvWlQ2QThCdlN3L3NxdllJUT0iLCJtYWMiOiJjZTJiNzJiODc2MzUwOTUxOTA1M2Y4NzhhMDBlNDY1MWE5OGY0OTY1OGNhMmE3OWU2OGFiNGViNDJkYWRkNzI3IiwidGFnIjoiIn0=');

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pst_unique_user` (`user_id`),
  ADD KEY `protection_shop_tokens_number_index` (`number`),
  ADD KEY `protection_shop_tokens_expires_index` (`expires`);

--
-- Indexes for table `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_user` (`user_id`),
  ADD KEY `protection_validations_ttl_index` (`ttl`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_name` (`name`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_accounts_user_id_provider_provider_id_index` (`user_id`,`provider`,`provider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD UNIQUE KEY `users_roles_user_id_role_id_unique` (`user_id`,`role_id`),
  ADD KEY `foreign_role` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `protection_validations`
--
ALTER TABLE `protection_validations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `protection_shop_tokens`
--
ALTER TABLE `protection_shop_tokens`
  ADD CONSTRAINT `pst_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `protection_validations`
--
ALTER TABLE `protection_validations`
  ADD CONSTRAINT `pv_foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD CONSTRAINT `social_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `foreign_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `foreign_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
