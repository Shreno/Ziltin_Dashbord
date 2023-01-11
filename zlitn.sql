-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2023 at 02:23 PM
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
-- Database: `zlitn`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `categories_name` varchar(191) NOT NULL,
  `categories_descraption` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `City_Name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `City_code` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_01_223159_entrust_setup_tables', 1),
(4, '2018_11_18_024824_create_products_table', 2),
(5, '2018_11_21_154555_add_url_to_products', 2),
(6, '2018_11_17_013043_create_categories_table', 3),
(7, '2018_11_17_160408_create_sections_table', 3),
(8, '2018_11_21_174648_create_product_sections_table', 3),
(9, '2018_11_24_224553_add_user_id_to_products', 4),
(10, '2018_11_21_233220_add_url_to_users', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('shereen.shapaan@gmail.com', '$2y$10$dp8YwnUDZxGrpwtX/q2YROAPd0UarVTMF7fvGwcC8GAPtZtTJeCiK', '2022-12-01 00:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'قراءة-الصلحيات', 'Display role listing', 'see only listing of role', '2018-12-01 21:23:03', '2018-12-01 21:23:03'),
(2, 'أنشاء-صالحية', 'create role', 'create new role', '2018-12-01 21:23:03', '2018-12-01 21:23:03'),
(3, 'مسح-صالحية', 'delete role', 'delete role', '2018-12-01 21:23:03', '2018-12-01 21:23:03'),
(4, 'تعديل-صالحية', 'edit role', 'edit role', '2018-12-01 21:23:03', '2018-12-01 21:23:03'),
(5, 'قراءة-المنتجات', 'Display product listing', 'see only listing of product', '2018-12-01 21:23:03', '2018-12-01 21:23:03'),
(6, 'أنشاء-منتج', 'create product', 'create new product', '2018-12-01 21:23:03', '2018-12-01 21:23:03'),
(7, 'مسح-منتج', 'delete product', 'delete product', '2018-12-01 21:23:03', '2018-12-01 21:23:03'),
(8, 'تعديل-منتج', 'edit product', 'edit roproductle', '2018-12-01 21:23:03', '2018-12-01 21:23:03'),
(9, 'قراءة-المستخدمين', 'Display user listing', 'see only listing of user', '2018-12-01 21:23:03', '2018-12-01 21:23:03'),
(10, 'أنشاء-مستخدم', 'create product', 'create new user', '2018-12-01 21:23:03', '2018-12-01 21:23:03'),
(11, 'حذف-مستخدم', 'delete product', 'delete user', '2018-12-01 21:23:03', '2018-12-01 21:23:03'),
(12, 'تعديل-مستخدم', 'edit product', 'edit user', '2018-12-01 21:23:03', '2018-12-01 21:23:03'),
(13, 'سماح-الدخول-الأدمن', 'this make you access the admin url', 'this make you access the admin url', NULL, NULL),
(14, 'السماح-بنشر-المنتج\n', 'Change Product Status', 'can change the status from unpublish To Anther Status publish Or Refused', NULL, NULL),
(15, 'قراءة-المحلات', 'قراءة-المحلات', 'قراءة-المحلات', NULL, NULL),
(16, 'أنشاء-محل', NULL, NULL, NULL, NULL),
(17, 'حذف-محل', NULL, NULL, NULL, NULL),
(18, 'تعديل-محل', NULL, NULL, NULL, NULL),
(19, 'أنشاء-مدينة', NULL, NULL, NULL, NULL),
(20, 'قراءة-مدينة', NULL, NULL, NULL, NULL),
(21, 'حذف-مدينة', NULL, NULL, NULL, NULL),
(22, 'تعديل-مدينة', NULL, NULL, NULL, NULL),
(23, 'قراءة-التصنيفات', NULL, NULL, NULL, NULL),
(24, 'أنشاء-تصنيف', NULL, NULL, NULL, NULL),
(25, 'تعديل-تصنيف', NULL, NULL, NULL, NULL),
(26, 'حذف-تصنيف', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 2),
(1, 4),
(1, 5),
(2, 2),
(2, 5),
(3, 2),
(3, 5),
(4, 2),
(4, 5),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(6, 2),
(6, 5),
(7, 2),
(7, 5),
(8, 2),
(8, 5),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(10, 2),
(10, 5),
(11, 2),
(11, 3),
(11, 5),
(12, 2),
(12, 3),
(12, 5),
(13, 2),
(13, 4),
(13, 5),
(14, 2),
(14, 5),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `products_title` varchar(191) NOT NULL,
  `products_descraption` varchar(191) NOT NULL,
  `products_color` varchar(191) NOT NULL,
  `products_price` int(11) NOT NULL,
  `products_stock` int(11) NOT NULL,
  `Category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(191) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 1,
  `Status` varchar(20) NOT NULL DEFAULT 'unpublish',
  `visits` int(11) NOT NULL DEFAULT 0,
  `shop_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `products_title`, `products_descraption`, `products_color`, `products_price`, `products_stock`, `Category_id`, `created_at`, `updated_at`, `url`, `user_id`, `Status`, `visits`, `shop_id`) VALUES
(1, 'phone', 'zzzzzzzzzz', 'Black', 1000, 4, 1, '2018-12-03 00:48:09', '2018-12-03 00:48:09', '1543805289-jpg', 1, 'unpublish', 0, NULL),
(2, 'phone', 'sssssssssss', 'Red', 10000, 4, 1, '2018-12-04 01:41:52', '2018-12-04 01:41:52', '1543894912-jpg', 1, 'unpublish', 0, NULL),
(3, 'lenovo', 'the phone', 'Red', 10000, 5, 1, '2018-12-08 06:07:39', '2018-12-08 06:07:39', '1544256459-jpg', 1, 'unpublish', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_sections`
--

CREATE TABLE `product_sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sections`
--

INSERT INTO `product_sections` (`id`, `product_id`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-12-03 00:48:09', '2018-12-03 00:48:09'),
(2, 2, 1, '2018-12-04 01:41:52', '2018-12-04 01:41:52'),
(3, 2, 2, '2018-12-04 01:41:52', '2018-12-04 01:41:52'),
(4, 3, 1, '2018-12-08 06:07:39', '2018-12-08 06:07:39'),
(5, 3, 2, '2018-12-08 06:07:39', '2018-12-08 06:07:39');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(3, 'User', 'User', 'who is register from the front_side', '2018-12-02 23:29:13', '2018-12-02 23:29:13'),
(2, 'أدمن', 'this is Admin', 'الأدمن الؤئسي للموقع', '2018-12-02 22:21:05', '2023-01-01 20:56:51'),
(4, 'employee', 'no any permissions', 'no have any permissions', '2018-12-08 06:08:59', '2018-12-08 06:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `sections_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `sections_name`, `created_at`, `updated_at`) VALUES
(1, 'woman', '2018-12-03 00:23:05', '2018-12-03 00:23:05'),
(2, 'men', '2018-12-03 00:24:35', '2018-12-03 00:24:35'),
(3, 'childern', '2018-12-03 00:24:45', '2018-12-03 00:24:45');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `shop_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_nopad_ci NOT NULL,
  `shop_catogary` int(11) NOT NULL,
  `shop_city` int(11) NOT NULL,
  `shop_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `Business_Register` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated _at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(191) NOT NULL DEFAULT '1543894430-jpg',
  `address` varchar(200) NOT NULL,
  `shop_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `url`, `address`, `shop_id`) VALUES
(11, 'Admin', 'Admin@Zltin-mall.com', '$2y$10$Spo3s69S8CysX8968CjtP.ZTFdabjT8GVbVXjsVXgvAIGPjta5/v.', NULL, '2019-04-04 17:45:14', '2019-04-04 17:45:14', '1554407114-jpg', '23 El-obour_bulding', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `City_code` (`City_code`),
  ADD UNIQUE KEY `City_Name` (`City_Name`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sections`
--
ALTER TABLE `product_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_sections`
--
ALTER TABLE `product_sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
