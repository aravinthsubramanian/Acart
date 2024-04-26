-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2024 at 03:38 PM
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
-- Database: `acart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `mobile`, `email`, `password`, `status`, `created_at`, `updated_at`, `email_verified_at`, `remember_token`) VALUES
(1, 'Ambi Aravinth', '9597694709', 'aravinth.subramanian@dreamstechnologies.com', '$2y$10$Fkq.hZ7Dt.0WxVQmNH6jZObrMIRwwSsbfMvZL2FEuV1YCxx/oXRya', 'enable', '2024-04-02 06:27:13', '2024-04-02 06:27:13', NULL, NULL),
(4, 'AdminAmbi', '9597694709', 'admin100@gmail.com', '$2y$10$8y6UcUJze/uCKm10DGnP0eRunzdwKhT34/C6uKTQggG9nEL.xRLEi', 'disable', '2024-04-03 03:38:56', '2024-04-03 04:13:29', NULL, NULL),
(9, 'Adminnini', '9597694709', 'admin111@admin.com', '$2y$10$O9K9Ym7R7qj4EKaMrPeDyuDj/szi1NfoQ2KO.BrOBnX2L8xNUeTAK', 'disable', '2024-04-03 06:27:39', '2024-04-03 06:27:39', NULL, NULL);

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
-- Table structure for table `main_categories`
--

CREATE TABLE `main_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL,
  `category_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `main_categories`
--

INSERT INTO `main_categories` (`id`, `category`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'cat1', 'enable', '2024-04-03 07:26:42', '2024-04-03 07:26:42'),
(2, 'cat2', 'enable', '2024-04-03 07:27:29', '2024-04-03 07:34:39'),
(4, 'cat4', 'disable', '2024-04-03 07:27:52', '2024-04-03 07:27:52');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_23_090824_create_admins_table', 1),
(6, '2024_03_25_034629_create_main_categories_table', 1),
(7, '2024_03_25_071006_create_sub_categories_table', 1),
(8, '2024_03_25_123014_create_products_table', 1),
(9, '2024_03_25_130504_create_product_images_table', 1),
(10, '2024_03_25_130947_create_product_specifications_table', 1),
(11, '2024_04_02_091323_alter_users_table', 1),
(12, '2024_04_02_113907_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(5, 'App\\Models\\Admin', 4),
(5, 'App\\Models\\Admin', 9);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'PERMISSION_CREATE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(2, 'PERMISSION_READ', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(3, 'PERMISSION_UPDATE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(4, 'PERMISSION_DELETE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(5, 'ROLE_CREATE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(6, 'ROLE_READ', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(7, 'ROLE_UPDATE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(8, 'ROLE_DELETE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(9, 'ADMIN_CREATE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(10, 'ADMIN_READ', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(11, 'ADMIN_UPDATE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(12, 'ADMIN_DELETE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(13, 'USER_CREATE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(14, 'USER_READ', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(15, 'USER_UPDATE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(16, 'USER_DELETE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(17, 'MAINCATEGORY_CREATE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(18, 'MAINCATEGORY_READ', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(19, 'MAINCATEGORY_UPDATE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(20, 'MAINCATEGORY_DELETE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(21, 'SUBCATEGORY_CREATE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(22, 'SUBCATEGORY_READ', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(23, 'SUBCATEGORY_UPDATE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(24, 'SUBCATEGORY_DELETE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(25, 'PRODUCT_CREATE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(26, 'PRODUCT_READ', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(27, 'PRODUCT_UPDATE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(28, 'PRODUCT_DELETE', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13');

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `cost` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `category` bigint(20) UNSIGNED NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product`, `description`, `cost`, `status`, `category`, `sub_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Product0001', '<p>This is <strong>first.</strong></p>', '1000.00', 'enable', 1, 1, '2024-04-04 01:42:43', '2024-04-04 01:42:43'),
(2, 'Product0002', '<p>this is <strong>seconddd</strong></p>', '2222.00', 'enable', 1, 1, '2024-04-04 02:07:36', '2024-04-04 04:08:38'),
(3, 'Product0003', '<p>this is <strong>three</strong></p>', '3000.00', 'disable', 2, 2, '2024-04-04 02:40:05', '2024-04-04 02:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `title`, `path`, `created_at`, `updated_at`) VALUES
(1, 1, 'pexels-knelstrom-ltd-67654.jpg', 'images/pexels-knelstrom-ltd-67654.jpg', '2024-04-04 01:42:44', '2024-04-04 01:42:44'),
(2, 1, 'pexels-manish-dhruw-2653726.jpg', 'images/pexels-manish-dhruw-2653726.jpg', '2024-04-04 01:42:44', '2024-04-04 01:42:44'),
(5, 2, 'pexels-tuur-tisseghem-812263.jpg', 'images/pexels-tuur-tisseghem-812263.jpg', '2024-04-04 02:07:36', '2024-04-04 02:07:36'),
(6, 3, 'pexels-igor-korzh-1089030.jpg', 'images/pexels-igor-korzh-1089030.jpg', '2024-04-04 02:40:05', '2024-04-04 02:40:05'),
(7, 3, 'pexels-terje-sollie-320617.jpg', 'images/pexels-terje-sollie-320617.jpg', '2024-04-04 02:40:05', '2024-04-04 02:40:05'),
(8, 2, 'pexels-markus-spiske-1002638.jpg', 'images/RM6YcTSlAqMrKAtuZCfEATYDzmEyuY3qTE0bNLgX.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_specifications`
--

CREATE TABLE `product_specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `specification` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specifications`
--

INSERT INTO `product_specifications` (`id`, `product_id`, `specification`, `created_at`, `updated_at`) VALUES
(1, 1, 'goood', '2024-04-04 01:42:44', '2024-04-04 01:42:44'),
(2, 1, 'nice', '2024-04-04 01:42:44', '2024-04-04 01:42:44'),
(6, 3, 'goood', '2024-04-04 02:40:05', '2024-04-04 02:40:05'),
(7, 3, 'ultra', '2024-04-04 02:40:05', '2024-04-04 02:40:05'),
(8, 3, 'ok', '2024-04-04 02:40:05', '2024-04-04 02:40:05'),
(9, 3, 'perfect', '2024-04-04 02:40:05', '2024-04-04 02:40:05'),
(13, 2, 'goood', NULL, NULL),
(14, 2, 'ultra', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin', '2024-04-02 06:27:13', '2024-04-02 06:27:13'),
(5, 'Admin', 'admin', '2024-04-03 00:39:16', '2024-04-03 00:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(13, 5),
(14, 1),
(14, 5),
(15, 1),
(15, 5),
(16, 1),
(16, 5),
(17, 1),
(17, 5),
(18, 1),
(18, 5),
(19, 1),
(19, 5),
(20, 1),
(20, 5),
(21, 1),
(21, 5),
(22, 1),
(22, 5),
(23, 1),
(23, 5),
(24, 1),
(24, 5),
(25, 1),
(25, 5),
(26, 1),
(26, 5),
(27, 1),
(27, 5),
(28, 1),
(28, 5);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `main_category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `subcategory_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `main_category_id`, `subcategory`, `subcategory_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'sub1', 'enable', '2024-04-03 08:00:02', '2024-04-03 08:00:02'),
(2, 2, 'sub22', 'enable', '2024-04-03 08:00:30', '2024-04-03 08:17:14'),
(4, 2, 'sub4', 'disable', '2024-04-03 08:00:55', '2024-04-03 23:42:12'),
(5, 2, 'sub3', 'enable', '2024-04-03 23:25:21', '2024-04-03 23:25:21'),
(6, 1, 'sub5', 'disable', '2024-04-03 23:30:12', '2024-04-03 23:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobile`, `email`, `password`, `status`, `created_at`, `updated_at`, `email_verified_at`, `remember_token`) VALUES
(1, 'aravi', '9597694709', 'aravi@gmail.com', '$2y$10$G22Ty55ykn8rStNu5UOCiOGOeJS1QVB/KMH2lTNcIic8JntZVVeTe', 'enable', '2024-04-03 05:20:24', '2024-04-03 05:20:24', NULL, NULL),
(3, 'usernini', '9597694709', 'user111@gmail.com', '$2y$10$0VdrEyCuwTHJtvIa4SYno.sfQwLydHpXcRzR/a6aD90/qtpOgNd76', 'disable', '2024-04-03 07:00:15', '2024-04-03 07:00:15', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `main_categories`
--
ALTER TABLE `main_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `main_categories_category_unique` (`category`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_product_unique` (`product`),
  ADD KEY `products_category_foreign` (`category`),
  ADD KEY `products_subcategory_foreign` (`sub_category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_foreign` (`product_id`);

--
-- Indexes for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_specifications_product_foreign` (`product_id`);

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
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_subcategory_unique` (`subcategory`),
  ADD KEY `sub_categories_category_foreign` (`main_category_id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_categories`
--
ALTER TABLE `main_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_specifications`
--
ALTER TABLE `product_specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_foreign` FOREIGN KEY (`category`) REFERENCES `main_categories` (`id`),
  ADD CONSTRAINT `products_subcategory_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD CONSTRAINT `product_specifications_product_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_foreign` FOREIGN KEY (`main_category_id`) REFERENCES `main_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
