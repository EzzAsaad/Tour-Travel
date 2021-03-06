-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2021 at 10:20 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fast_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `addones`
--

CREATE TABLE `addones` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` int(10) NOT NULL,
  `image` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addones`
--

INSERT INTO `addones` (`id`, `name`, `price`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"\\u0644\\u062a\\u0631 \\u0645\\u0627\\u0621\",\"en\":\"Water\"}', 55, 'files/addone_images/233806_1627284444.jpg', 1, '2021-07-17 18:25:21', '2021-07-26 05:27:24'),
(26, '{\"ar\":\"\\u0643\\u0646\\u0632\",\"en\":\"cans\"}', 55, 'files/addone_images/866106_1627284575.jpg', 1, '2021-07-18 05:42:11', '2021-07-26 05:29:35'),
(27, '{\"ar\":\"\\u0628\\u0637\\u0627\\u0637\\u0633\",\"en\":\"spud\"}', 30, 'files/addone_images/113756_1627284602.png', 1, '2021-07-25 16:15:12', '2021-07-26 05:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `addones_order`
--

CREATE TABLE `addones_order` (
  `id` int(20) NOT NULL,
  `order_id` int(20) NOT NULL,
  `addon_id` int(20) NOT NULL,
  `quantity` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addones_order`
--

INSERT INTO `addones_order` (`id`, `order_id`, `addon_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 3, '2021-04-14 14:06:34', '0000-00-00 00:00:00'),
(2, 52, 1, 5, '2021-04-14 18:07:51', '2021-04-14 18:07:51'),
(3, 52, 1, 5, '2021-04-14 18:07:51', '2021-04-14 18:07:51'),
(4, 52, 1, 5, '2021-04-14 18:07:51', '2021-04-14 18:07:51'),
(5, 53, 3, 2, '2021-04-15 17:52:05', '2021-04-15 17:52:05'),
(6, 53, 4, 2, '2021-04-15 17:52:05', '2021-04-15 17:52:05'),
(7, 55, 3, 2, '2021-04-15 18:01:26', '2021-04-15 18:01:26'),
(8, 55, 4, 2, '2021-04-15 18:01:26', '2021-04-15 18:01:26'),
(9, 56, 3, 2, '2021-04-15 18:06:55', '2021-04-15 18:06:55'),
(10, 56, 4, 2, '2021-04-15 18:06:56', '2021-04-15 18:06:56'),
(14, 101, 23, 1000, '2021-07-15 10:28:46', '2021-07-15 10:28:46'),
(15, 101, 23, 500, '2021-07-15 10:28:46', '2021-07-15 10:28:46'),
(16, 101, 12, 100, '2021-07-15 10:28:46', '2021-07-15 10:28:46'),
(17, 102, 1, 3, '2021-07-27 18:06:38', '2021-07-27 18:06:38');

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(5) NOT NULL,
  `user_id` int(20) NOT NULL,
  `new_address` text NOT NULL,
  `area_id` int(10) NOT NULL,
  `lat` double NOT NULL,
  `long` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `user_id`, `new_address`, `area_id`, `lat`, `long`, `created_at`, `updated_at`) VALUES
(1, 1, '???????????????? ???????????? ???????????????? ???????????? ???????????? ?????????????? ???????????????????? ???????? ?????? ?????? ???? ???????????? ???????? ?????? ?????? ???????????? ???? ??????????\r\n222222222222', 1, 30.0117, 30.0117, '2021-04-14 09:26:41', '2021-04-14 11:10:54'),
(2, 1, 'cvbnm,.???????????????? ???????????? ???????????????? ???????????? ???????????? ?????????????? ???????????????????? ???????? ?????? ?????? ???? ???????????? ???????? ?????? ?????? ???????????? ???? ??????????85225852025200252', 1, 30.0117, 30.0117, '2021-04-14 09:26:37', '2021-04-14 11:11:28'),
(3, 1, '10 ???????? ?????? ???????????? ?????????????????? ?????????????????? ???????????????? ???? ??????????????', 1, 30.0117, 30.0117, '2021-04-14 15:35:03', '2021-04-14 11:35:03'),
(4, 2, 'Giza El Metro', 1, 30.010781705372, 31.206810884178, '2021-04-14 16:29:20', '2021-04-14 12:29:20'),
(5, 2, 'Giza El Metro New York', 2, 30.011484872676, 31.205361150205, '2021-04-14 16:33:50', '2021-04-14 12:33:50'),
(6, 2, 'Giza El Metro New York Is A great Place', 1, 30.010431861813, 31.20200201869, '2021-04-14 16:54:24', '2021-04-14 12:54:24'),
(7, 2, 'Giza El Metro New York Is A', 2, 30.01130225869, 31.205092258751, '2021-04-17 14:34:14', '2021-04-17 10:34:14'),
(8, 9, 'Here', 1, 55, 66, '2021-07-11 16:30:52', '2021-07-11 18:30:52'),
(9, 2, 'Helwan Egypt', 1, 0, 0, '2021-07-14 12:42:36', '2021-07-14 14:42:36');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `name_en` varchar(250) NOT NULL,
  `stauts` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `name`, `name_en`, `stauts`) VALUES
(1, '??????????', 'miami', 1),
(2, '????????????????', 'maamoura', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `products_size` int(10) NOT NULL,
  `price` int(20) NOT NULL,
  `name` varchar(250) NOT NULL,
  `quantity` int(4) NOT NULL,
  `image` text DEFAULT NULL,
  `isAddon` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `products_size`, `price`, `name`, `quantity`, `image`, `isAddon`, `created_at`, `updated_at`) VALUES
(37, 20, 12, 6, 18, '{\"ar\":\"\\u0637\\u0627\\u062c\\u0646\",\"en\":\"Tagan\"}', 3, NULL, 0, '2021-07-27 11:51:22', '2021-07-27 16:46:52'),
(40, 20, 16, 11, 21, '{\"ar\":\"\\u0648\\u062c\\u0628\\u0629 \\u0627\\u0641\\u0637\\u0627\\u0631\",\"en\":\"Dinner meal\"}', 3, NULL, 0, '2021-07-27 17:02:09', '2021-07-27 17:02:09'),
(41, 20, 1, 0, 165, '{\"ar\":\"\\u0644\\u062a\\u0631 \\u0645\\u0627\\u0621\",\"en\":\"Water\"}', 3, NULL, 1, '2021-07-27 17:02:09', '2021-07-27 17:37:05');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` int(11) NOT NULL DEFAULT 0,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `best` int(11) NOT NULL DEFAULT 0,
  `main_category` int(11) NOT NULL DEFAULT 0,
  `image` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `sort` int(11) DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `code`, `name`, `best`, `main_category`, `image`, `sort`, `type`, `status`, `created_at`, `updated_at`) VALUES
(25, 0, '{\"en\":\"Cupping tools\",\"ar\":\"\\u0627\\u062f\\u0648\\u0627\\u062a \\u0627\\u0644\\u062d\\u062c\\u0627\\u0645\\u0629\"}', 0, 25, '1617634237.jpg', 1, 0, 1, '2021-04-05 20:50:37', '2021-04-05 20:50:37'),
(26, 0, '{\"en\":\"medical accs\",\"ar\":\"\\u0627\\u0644\\u0639\\u0646\\u0627\\u064a\\u0629 \\u0628\\u0627\\u0644\\u0628\\u0634\\u0631\\u0629\"}', 0, 26, NULL, 2, 0, 1, '2021-04-05 21:01:53', '2021-04-05 21:01:53'),
(49, 12314, '{\"ar\":\"\\u0645\\u0639\\u062c\\u0646\\u0627\\u062a\",\"en\":\"moagnat\"}', 0, 48, NULL, 0, 0, 1, '2021-07-13 16:55:51', '2021-07-13 16:55:51'),
(51, 124569, '{\"ar\":\"sdfs\",\"en\":\"sds\"}', 0, 50, NULL, 0, 0, 1, '2021-07-13 18:26:50', '2021-07-13 18:26:50'),
(53, 121564, '{\"ar\":\"sdfwefsd\",\"en\":\"sdfsdfs\"}', 0, 52, NULL, 0, 0, 1, '2021-07-13 18:30:56', '2021-07-13 18:30:56'),
(55, 3151, '{\"ar\":\"first\",\"en\":\"sdfsdf\"}', 0, 54, NULL, 0, 0, 1, '2021-07-13 18:38:00', '2021-07-13 18:38:00'),
(93, 231684, '{\"ar\":\"dsfsdf\",\"en\":\"sdfsdf\"}', 0, 0, NULL, 0, 0, 1, '2021-07-25 19:29:51', '2021-07-25 19:29:51'),
(94, 134556, '{\"ar\":\"sdfsd\",\"en\":\"sdfsdf\"}', 0, 0, 'files/categories_images/614992_1627250375.jpg', 0, 0, 1, '2021-07-25 19:49:17', '2021-07-25 19:59:35'),
(95, 21566, '{\"ar\":\"\\u0647\\u0644\\u0648\",\"en\":\"Hello\"}', 0, 94, NULL, 0, 0, 1, '2021-07-25 19:49:17', '2021-07-25 19:59:12'),
(96, 356465, '{\"ar\":\"sdfsdfq\",\"en\":\"sdfsdfsd\"}', 0, 94, NULL, 0, 0, 1, '2021-07-25 19:49:17', '2021-07-25 19:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) NOT NULL,
  `coupon_code` varchar(20) NOT NULL,
  `coupon_disc` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_code`, `coupon_disc`, `status`, `startDate`, `endDate`, `created_at`, `updated_at`) VALUES
(1, 'h1250r', 50, 1, '2021-04-13 12:57:30', '2021-04-16 12:57:30', '2021-04-15 10:58:18', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email_verified_at` date DEFAULT NULL,
  `area_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `lat` int(11) DEFAULT NULL,
  `long` int(11) DEFAULT NULL,
  `remember_token` text DEFAULT NULL,
  `lang` varchar(255) NOT NULL DEFAULT 'en',
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `password`, `address`, `phone`, `email_verified_at`, `area_id`, `group_id`, `image`, `lat`, `long`, `remember_token`, `lang`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'omartarek_omar', 'omartarek12@gmail.com', '$2y$10$4TZc0janM4PhaB4sLnyy9.bKj1KJd2BWe5N8Ymk6/.Of08.9y8lp.', 'Gize, Cairo, Egypt', '+20126546321646', '0000-00-00', 1, 1, '64966_1625487823.jpg', 123, 12, '', '', 0, '2021-07-06', '2021-07-17'),
(2, '?????? ????????', 'adminn@gmail.com', '123456', '?????????????? ??????', '+201215421', NULL, 1, 1, NULL, NULL, NULL, NULL, '', 0, '2021-07-08', '2021-07-08'),
(4, 'Omar Tarek', 'omartarek1212@gmail.com', '$2y$10$yChfZFYt6EpBpmTZrHlpWeFV/ndDHDua83p77cvj1qtjzhM8LLZua', 'Cairo, Egypt', '+11111111111', NULL, 1, 1, 'files/user_images/5ol3.PNG', NULL, NULL, NULL, 'en', 1, '2021-07-08', '2021-07-24'),
(6, 'OmarTArek', 'admin@g.com', '$2y$10$cHQV.md6qiBZG/ZgyBwJe.o0Ph784dCT9hkuz7vR/92e0Q9rbZI6W', 'cairo, egypt', '+20545121545', NULL, 1, 4, NULL, NULL, NULL, NULL, '', 0, '2021-07-08', '2021-07-08'),
(7, '?????? ????????', 'ot1@gmail.com', '$2y$10$CM/4PGxcISdQSUzaIFyWCet2N3Dq3yIwYkXejaT.MuP44YGkT6KZO', 'adsfadsf', '+201524154', NULL, 1, 1, NULL, NULL, NULL, NULL, 'en', 0, '2021-07-11', '2021-07-11'),
(8, '?????? ????????', 'oott@g.com', '$2y$10$0Kxr3omErGlJOstoi0dRFuUi3lgHp5VQbH1od65/SWcftHd0JJzo.', 'asdfaf', '123', NULL, 1, 5, NULL, NULL, NULL, NULL, 'en', 0, '2021-07-11', '2021-07-11'),
(9, 'Kase', 'Kase@gmail.com', '$2y$10$vlYaWevoYQJAbJ4xqYL/ouy.6tUWGof5tFYmuv8M2fUaK2omT/KdC', 'Cairo Egypt', '01550541873', NULL, 1, 1, NULL, NULL, NULL, NULL, 'en', 0, '2021-07-17', '2021-07-17'),
(10, 'omartarek_omartarek', 'omartarek1230@gmail.com', '$2y$10$TH9kRDbQtNmB9OBoossO/.CCsze.DekeSC82zpYsNbQiPN8kkYkK6', 'Gize, Cairo, France', '+20116546321646', NULL, 2, 1, NULL, NULL, NULL, NULL, 'en', 0, '2021-07-17', '2021-07-17'),
(11, 'Omar', 'omar@gmail.com', '$2y$10$NXQ.CKmL.ibDYDOSvUgfwOQ9jDmapkWLgl9EOCDLNyd4ys3hZ/Gfy', 'Here', '01550541873', NULL, 1, 1, NULL, NULL, NULL, NULL, 'en', 0, '2021-07-23', '2021-07-23'),
(13, 'admin', 'admin@gmail.com', '$2y$10$yChfZFYt6EpBpmTZrHlpWeFV/ndDHDua83p77cvj1qtjzhM8LLZua', 'here', '01250541873', NULL, 1, 1, NULL, NULL, NULL, NULL, 'en', 1, '2021-07-24', '2021-07-27');

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
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Group1', 'Description for Group 1 ', 1, '2021-06-22 13:55:19', '2021-06-18 13:55:19'),
(2, '??????????????', '???????? ??????????????', 1, '2021-07-08 10:23:45', '2021-07-08 10:23:45'),
(4, '????????????????', '???????? ????????????????', 1, '2021-07-08 11:41:07', '2021-07-08 11:41:07'),
(5, 'NewGroup', 'New', 1, '2021-07-11 10:34:09', '2021-07-11 10:34:09'),
(6, 'Hr', 'to help employees', 1, '2021-07-11 11:05:19', '2021-07-11 11:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name_ar` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name_ar`, `name_en`, `menu_id`, `link`, `status`, `created_at`, `updated_at`) VALUES
(3, '????????', 'Test', 1, 'dfgdf@sdfs.sd', 0, '2021-07-24 13:33:53', '2021-07-24 13:51:06');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2021_04_07_111251_create_groups_table', 1),
(3, '2021_04_07_111446_create_permissions_table', 1),
(4, '2021_04_07_111511_create_roles_table', 1),
(5, '2021_04_07_111620_create_permission__groups_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 2),
(7, '2019_08_19_000000_create_failed_jobs_table', 2),
(8, '2021_07_07_082556_create_settings_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(20) NOT NULL,
  `homesort` int(11) DEFAULT NULL,
  `main_categorie_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `final_price` float DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `product_id`, `homesort`, `main_categorie_id`, `categorie_id`, `price`, `final_price`, `start_date`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 200.00, 150, '2021-04-12', '2021-04-13', 1, '2021-04-12 19:14:18', '2021-04-12 19:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double NOT NULL,
  `address_id` int(20) NOT NULL,
  `delivery_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ship_fees` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `duration` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noti` int(11) NOT NULL DEFAULT 0,
  `nots` text CHARACTER SET utf8 DEFAULT NULL,
  `cancel_at` datetime DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `confirm_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `phone`, `price`, `address_id`, `delivery_method`, `payment_method`, `ship_fees`, `status`, `duration`, `noti`, `nots`, `cancel_at`, `delivered_at`, `confirm_at`, `created_at`, `updated_at`) VALUES
(58, 2, 'Shady Samir', '1207090513', 30, 5, '1', 'Cash and Deliver', 50, 2, NULL, 0, NULL, NULL, NULL, NULL, '2021-04-17 14:36:24', '2021-07-24 22:13:04'),
(76, 2, 'Omar', '01550541873', 99, 4, '1', '1', 50, 1, NULL, 0, 'test', NULL, NULL, NULL, '2021-07-15 09:36:58', '2021-07-15 09:36:58'),
(52, 2, 'Shady Samir', '1207090513', 0, 6, '1', '1', 50, 2, NULL, 0, NULL, NULL, NULL, NULL, '2021-04-15 17:56:35', '2021-07-24 22:13:04'),
(55, 2, 'Shady Samir', '1207090513', 30, 0, '1', '1', 50, 0, NULL, 0, NULL, NULL, NULL, NULL, '2021-04-15 18:01:26', '2021-04-15 18:01:26'),
(56, 2, 'Shady Samir', '1207090513', 30, 0, '1', '1', 50, 0, NULL, 0, 'Address', NULL, NULL, NULL, '2021-04-15 18:06:55', '2021-04-15 18:06:55'),
(59, 9, 'heller', '01550541873', 55, 1, '1', 'test', 55, 0, NULL, 0, 'WoooW', NULL, NULL, NULL, '2021-07-11 17:30:29', '2021-07-11 17:30:29'),
(60, 9, 'heller', '01550541873', 55, 1, '1', 'test', 55, 0, NULL, 0, 'WoooW', NULL, NULL, NULL, '2021-07-11 17:42:00', '2021-07-11 17:42:00'),
(61, 9, 'heller', '01550541873', 55, 1, '1', 'test', 55, 0, NULL, 0, 'WoooW', NULL, NULL, NULL, '2021-07-11 17:42:29', '2021-07-11 17:42:29'),
(62, 9, 'heller', '01550541873', 55, 1, '1', 'test', 55, 0, NULL, 0, 'WoooW', NULL, NULL, NULL, '2021-07-11 17:44:30', '2021-07-11 17:44:30'),
(63, 9, NULL, NULL, 55, 1, '1', NULL, 55, 0, NULL, 0, NULL, NULL, NULL, NULL, '2021-07-12 04:58:23', '2021-07-12 04:58:23'),
(64, 9, NULL, NULL, 55, 1, '1', NULL, 55, 0, NULL, 0, NULL, NULL, NULL, NULL, '2021-07-12 04:58:51', '2021-07-12 04:58:51'),
(65, 9, NULL, NULL, 55, 1, '1', NULL, 55, 0, NULL, 0, NULL, NULL, NULL, NULL, '2021-07-12 04:59:07', '2021-07-12 04:59:07'),
(66, 9, 'Kase', '01550541873', 55, 1, '1', 'cash on delivery', 55, 0, NULL, 0, 'no thing', NULL, NULL, NULL, '2021-07-12 05:02:28', '2021-07-12 05:02:28'),
(67, 9, 'Kase', '01550541873', 55, 1, '1', 'cash on delivery', 55, 0, NULL, 0, 'no thing', NULL, NULL, NULL, '2021-07-12 05:03:07', '2021-07-12 05:03:07'),
(68, 9, 'Kase', '01550541873', 55, 1, '1', 'cash on delivery', 55, 0, NULL, 0, 'no thing', NULL, NULL, NULL, '2021-07-12 05:03:33', '2021-07-12 05:03:33'),
(69, 9, 'Kase', '01550541873', 55, 1, '1', 'cash on delivery', 55, 0, NULL, 0, 'no thing', NULL, NULL, NULL, '2021-07-12 05:03:54', '2021-07-12 05:03:54'),
(70, 9, 'Kase', '01550541873', 55, 1, '1', 'cash on delivery', 55, 0, NULL, 0, 'no thing', NULL, NULL, NULL, '2021-07-12 05:04:24', '2021-07-12 05:04:24'),
(73, 2, 'omar', '01550541873', 55, 4, '1', '1', 3, 1, NULL, 0, 'dkfjgk', NULL, NULL, NULL, '2021-07-14 12:31:16', '2021-07-14 12:31:16'),
(75, 2, 'omar', '01550541873', 20, 9, '1', '1', 11, 1, NULL, 0, 'asdasd', NULL, NULL, NULL, '2021-07-14 12:42:36', '2021-07-14 12:42:36'),
(77, 2, 'Omar', '01550541873', 99, 4, '1', '1', 50, 1, NULL, 0, 'test', NULL, NULL, NULL, '2021-07-15 09:37:30', '2021-07-15 09:37:30'),
(78, 2, 'Omar', '01550541873', 99, 4, '1', '1', 50, 1, NULL, 0, 'test', NULL, NULL, NULL, '2021-07-15 09:42:10', '2021-07-15 09:42:10'),
(79, 2, 'Omar', '01550541873', 99, 4, '1', '1', 50, 3, NULL, 0, 'test', NULL, NULL, NULL, '2021-07-15 09:42:30', '2021-07-15 09:42:30'),
(80, 2, 'Omar', '01550541873', 99, 4, '1', '1', 50, 3, NULL, 0, 'testdfgdfg', NULL, NULL, NULL, '2021-07-15 09:43:58', '2021-07-15 09:43:58'),
(81, 2, 'Omar', '01550541873', 99, 4, '1', '1', 50, 1, NULL, 0, 'testdfgdfg', NULL, NULL, NULL, '2021-07-15 09:44:45', '2021-07-15 09:44:45'),
(82, 2, 'Omar', '01550541873', 99, 4, '1', '1', 20, 1, NULL, 0, 'sdfs', NULL, NULL, NULL, '2021-07-15 09:45:41', '2021-07-15 09:45:41'),
(83, 9, 'Omar', '01550541873', 99, 8, '1', '1', 20, 1, NULL, 0, 'sdfs', NULL, NULL, NULL, '2021-07-15 09:49:37', '2021-07-15 09:49:37'),
(84, 9, 'Omar', '01550541873', 99, 8, '1', '1', 20, 1, NULL, 0, 'sdfs', NULL, NULL, NULL, '2021-07-15 09:49:55', '2021-07-15 09:49:55'),
(85, 9, 'Omar', '01550541873', 99, 8, '1', '1', 20, 1, NULL, 0, 'sdfs', NULL, NULL, NULL, '2021-07-15 09:51:15', '2021-07-15 09:51:15'),
(86, 9, 'Omar', '01550541873', 99, 8, '1', '1', 20, 1, NULL, 0, 'sdfs', NULL, NULL, NULL, '2021-07-15 09:51:48', '2021-07-15 09:51:48'),
(87, 9, 'Omar', '01550541873', 99, 8, '1', '1', 20, 1, NULL, 0, 'sdfs', NULL, NULL, NULL, '2021-07-15 09:52:16', '2021-07-15 09:52:16'),
(88, 9, 'Omar', '01550541873', 99, 8, '1', '1', 20, 1, NULL, 0, 'sdfs', NULL, NULL, NULL, '2021-07-15 09:52:24', '2021-07-15 09:52:24'),
(89, 9, 'Omar', '01550541873', 99, 8, '1', '1', 20, 1, NULL, 0, 'sdfs', NULL, NULL, NULL, '2021-07-15 09:52:36', '2021-07-15 09:52:36'),
(90, 2, 'Omar', '01550541873', 99, 4, '1', '1', 20, 1, NULL, 0, 'sdfs', NULL, NULL, NULL, '2021-07-15 09:53:11', '2021-07-15 09:53:11'),
(91, 2, 'Omar', '01550541873', 99, 4, '1', '1', 20, 1, NULL, 0, 'sdfs', NULL, NULL, NULL, '2021-07-15 09:54:10', '2021-07-15 09:54:10'),
(92, 2, 'Omar', '01550541873', 99, 4, '1', '1', 20, 1, NULL, 0, 'sdfs', NULL, NULL, NULL, '2021-07-15 09:54:19', '2021-07-15 09:54:19'),
(93, 2, 'Omar', '01550541873', 99, 4, '1', '1', 20, 1, NULL, 0, 'sdfs', NULL, NULL, NULL, '2021-07-15 09:54:39', '2021-07-15 09:54:39'),
(94, 2, 'Omar', '01550541873', 99, 4, '1', '1', 20, 1, NULL, 0, 'sdfs', NULL, NULL, NULL, '2021-07-15 09:55:17', '2021-07-15 09:55:17'),
(95, 2, 'Omar', '01550541873', 99, 4, '1', '1', 20, 1, NULL, 0, 'sdfs', NULL, NULL, NULL, '2021-07-15 09:55:26', '2021-07-15 09:55:26'),
(96, 9, 'Omar', '01550541873', 99, 8, '1', '1', 20, 1, NULL, 0, 'sdfs', NULL, NULL, NULL, '2021-07-15 09:57:07', '2021-07-15 09:57:07'),
(97, 2, 'Omar', '01550541873', 99, 4, '1', '1', 20, 1, NULL, 0, 'sdfs', NULL, NULL, NULL, '2021-07-15 09:59:58', '2021-07-15 09:59:58'),
(98, 2, 'Omar', '01550541873', 99, 4, '1', '1', 20, 1, NULL, 0, 'sdfs', NULL, NULL, NULL, '2021-07-15 10:00:57', '2021-07-15 10:00:57'),
(99, 2, 'omar', '01550541873', 25555, 4, '1', '1', 1000, 1, NULL, 0, 'dfgd', NULL, NULL, NULL, '2021-07-15 10:02:53', '2021-07-15 10:02:53'),
(100, 2, 'Kase', '0155054173', 25556, 4, '1', '1', 5000, 1, NULL, 0, 'dsfsdf', NULL, NULL, NULL, '2021-07-15 10:28:10', '2021-07-15 10:28:10'),
(101, 2, 'Kase', '0155054173', 25556, 4, '1', '1', 5000, 1, NULL, 0, 'dsfsdf', NULL, NULL, NULL, '2021-07-15 10:28:46', '2021-07-15 10:28:46'),
(102, 20, 'test6', NULL, 204, 1, '1', '1', 0, 1, NULL, 0, NULL, NULL, NULL, NULL, '2021-07-27 18:06:38', '2021-07-27 18:06:38');

-- --------------------------------------------------------

--
-- Table structure for table `orders_drivers`
--

CREATE TABLE `orders_drivers` (
  `id` bigint(20) NOT NULL,
  `order_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_drivers`
--

INSERT INTO `orders_drivers` (`id`, `order_id`, `driver_id`, `created_at`, `updated_at`) VALUES
(1, 52, 8, '2021-07-24 22:07:37', '2021-07-24 22:07:37'),
(4, 58, 1, '2021-07-24 22:13:04', '2021-07-24 22:13:04'),
(5, 52, 1, '2021-07-24 22:13:04', '2021-07-24 22:13:04');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('omartarek1212@gmail.com', '$2y$10$JuNcVAtpFPlIZxKHnxY5leSyNBqUkszHN5AiLA1BDk9zNLvjuSLBm', '2021-07-08 12:32:46'),
('omartarek12@gmail.com', '$2y$10$GpzctRqjJko8l.amLYx8u.Oyqia1NwR8dDh8NJKDygeN5MfXm/xH.', '2021-07-08 12:37:04');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `breifName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ControllerName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `MethodName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('admin','user','employee') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `breifName`, `ControllerName`, `MethodName`, `type`, `status`, `created_at`, `updated_at`) VALUES
(2, 'test123', 'test321', 'LoginController', 'login', 'user', 0, '2021-07-07 05:15:31', '2021-07-07 06:10:34'),
(3, '?????????????? ????????????????????', '???????????? ???? ????????????????????', 'UserController', 'listUsers', 'user', 0, '2021-07-08 06:59:51', '2021-07-11 09:04:56'),
(4, '?????? ??????', '??????', 'UserController', 'destroyUser', 'user', 1, '2021-07-08 10:05:49', '2021-07-08 10:05:49'),
(19, 'add perm', NULL, 'PermissionController', 'add', 'user', 1, '2021-07-24 20:13:38', '2021-07-24 20:13:38'),
(6, '?????? ????????????????????', '?????? ???????? ????????????????????', 'UserController', 'listUsers', 'user', 1, '2021-07-08 10:51:33', '2021-07-08 10:51:33'),
(7, '????????????????', '?????????????? ???? ???????????????? ??????????', 'SettingsController', 'addSocial', 'user', 1, '2021-07-08 11:01:26', '2021-07-24 18:36:15'),
(8, '?????????? ???????????? ????????????', '?????????? ???????????? ????????????', 'SettingsController', 'edit', 'user', 1, '2021-07-08 11:20:42', '2021-07-08 11:20:42'),
(9, '?????? ??????????????', '?????? ???????? ??????????????', 'UserController', 'listEmployees', 'user', 1, '2021-07-08 11:28:48', '2021-07-08 11:28:48'),
(10, '?????? ??????', '?????? ??????', 'UserController', 'destroyEmployee', 'user', 1, '2021-07-08 11:31:03', '2021-07-08 11:31:03'),
(11, '?????????? ???????????? ????????????????????', '?????????? ???????????? ????????????????????', 'UserController', 'ViewEditForm', 'user', 1, '2021-07-08 12:00:21', '2021-07-08 12:00:21'),
(12, 'View Group Management', 'dealing wih groups', 'PermissionController', 'viewGroups', 'user', 1, '2021-07-11 09:12:59', '2021-07-11 09:12:59'),
(13, 'menu', 'menu', 'SettingsController', 'addMenu', 'user', 1, '2021-07-24 09:18:43', '2021-07-24 09:18:43'),
(14, 'show menu', 'show_menu', 'SettingsController', 'listMenus', 'user', 1, '2021-07-24 09:19:20', '2021-07-24 09:19:20'),
(15, 'show menu', 'show_menu', 'SettingsController', 'listMenus', 'user', 1, '2021-07-24 09:19:20', '2021-07-24 09:19:20'),
(16, 'listemp', 'sdfs', 'EmployeeController', 'listEmployees', 'user', 1, '2021-07-24 18:41:43', '2021-07-24 20:04:39'),
(18, 'fgd', 'dfgd', 'EmployeeController', 'AddEmployee', 'user', 1, '2021-07-24 20:06:11', '2021-07-24 20:06:11'),
(20, 'add perm', 'dfgdf', 'PermissionController', 'add', 'user', 1, '2021-07-24 20:14:33', '2021-07-24 20:14:33'),
(21, 'add groupw', 'sdfsd', 'PermissionController', 'AddGroup', 'user', 1, '2021-07-24 20:51:47', '2021-07-24 20:51:47'),
(22, 'gdfg', 'sdf', 'PermissionController', 'viewGroups', 'user', 1, '2021-07-24 20:52:15', '2021-07-24 20:52:15'),
(25, 'sdcx', 'dfs', 'AddonController', 'create', 'user', 1, '2021-07-24 21:07:24', '2021-07-24 21:07:24'),
(24, 'gdfg', 'sdfsdfsd', 'AddonController', 'listAddons', 'user', 1, '2021-07-24 21:06:52', '2021-07-24 21:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `permission__groups`
--

CREATE TABLE `permission__groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission__groups`
--

INSERT INTO `permission__groups` (`id`, `group_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 2, 3, NULL, NULL),
(2, 2, 4, '2021-07-30 12:06:09', '2021-07-09 12:06:09'),
(3, 2, 3, '2021-07-08 10:34:47', '2021-07-08 10:34:47'),
(4, 2, 5, '2021-07-08 10:35:46', '2021-07-08 10:35:46'),
(5, 2, 5, '2021-07-08 10:46:45', '2021-07-08 10:46:45'),
(6, 2, 6, '2021-07-08 10:51:55', '2021-07-08 10:51:55'),
(7, 2, 5, '2021-07-08 10:52:40', '2021-07-08 10:52:40'),
(9, 2, 7, '2021-07-08 11:01:57', '2021-07-08 11:01:57'),
(10, 2, 3, '2021-07-08 11:16:15', '2021-07-08 11:16:15'),
(11, 1, 7, '2021-07-08 11:19:38', '2021-07-08 11:19:38'),
(12, 1, 8, '2021-07-08 11:21:02', '2021-07-08 11:21:02'),
(13, 1, 9, '2021-07-08 11:29:04', '2021-07-08 11:29:04'),
(14, 1, 4, '2021-07-08 11:31:24', '2021-07-08 11:31:24'),
(15, 1, 10, '2021-07-08 11:31:37', '2021-07-08 11:31:37'),
(16, 4, 9, '2021-07-08 11:43:15', '2021-07-08 11:43:15'),
(17, 4, 10, '2021-07-08 11:44:09', '2021-07-08 11:44:09'),
(18, 4, 11, '2021-07-08 12:00:37', '2021-07-08 12:00:37'),
(19, 1, 4, '2021-07-11 10:03:35', '2021-07-11 10:03:35'),
(20, 1, 5, '2021-07-11 10:03:35', '2021-07-11 10:03:35'),
(21, 1, 9, '2021-07-11 10:03:35', '2021-07-11 10:03:35'),
(22, 1, 4, '2021-07-11 10:04:11', '2021-07-11 10:04:11'),
(23, 1, 7, '2021-07-11 10:04:11', '2021-07-11 10:04:11'),
(24, 4, 3, '2021-07-11 10:05:07', '2021-07-11 10:05:07'),
(25, 4, 6, '2021-07-11 10:05:07', '2021-07-11 10:05:07'),
(26, 4, 5, '2021-07-11 10:11:26', '2021-07-11 10:11:26'),
(27, 4, 8, '2021-07-11 10:11:26', '2021-07-11 10:11:26'),
(28, 4, 11, '2021-07-11 10:11:26', '2021-07-11 10:11:26'),
(29, 1, 6, '2021-07-11 10:28:09', '2021-07-11 10:28:09'),
(30, 1, 8, '2021-07-11 10:28:09', '2021-07-11 10:28:09'),
(31, 1, 10, '2021-07-11 10:28:09', '2021-07-11 10:28:09'),
(32, 4, 2, '2021-07-11 10:32:05', '2021-07-11 10:32:05'),
(33, 5, 3, '2021-07-11 10:41:58', '2021-07-11 10:41:58'),
(34, 6, 4, '2021-07-11 11:06:12', '2021-07-11 11:06:12'),
(35, 6, 5, '2021-07-11 11:06:12', '2021-07-11 11:06:12'),
(36, 6, 8, '2021-07-11 11:06:12', '2021-07-11 11:06:12'),
(37, 6, 11, '2021-07-11 11:06:12', '2021-07-11 11:06:12'),
(38, 1, 13, '2021-07-24 09:19:51', '2021-07-24 09:19:51'),
(39, 1, 14, '2021-07-24 09:19:51', '2021-07-24 09:19:51'),
(40, 1, 16, '2021-07-24 18:42:38', '2021-07-24 18:42:38'),
(41, 1, 18, '2021-07-24 20:06:27', '2021-07-24 20:06:27'),
(42, 1, 20, '2021-07-24 20:15:25', '2021-07-24 20:15:25'),
(43, 1, 21, '2021-07-24 20:52:30', '2021-07-24 20:52:30'),
(44, 1, 22, '2021-07-24 20:52:30', '2021-07-24 20:52:30'),
(45, 1, 25, '2021-07-24 21:07:50', '2021-07-24 21:07:50'),
(46, 1, 24, '2021-07-24 21:07:50', '2021-07-24 21:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category` int(11) NOT NULL DEFAULT 0,
  `type` int(11) DEFAULT 0,
  `Calories` int(5) DEFAULT NULL,
  `price` double DEFAULT 0,
  `new_price` double DEFAULT 0,
  `currency` int(11) NOT NULL DEFAULT 1,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_count` int(11) NOT NULL DEFAULT 0,
  `video_count` int(11) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `installment` int(1) NOT NULL DEFAULT 0,
  `available` int(1) NOT NULL DEFAULT 1,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `status` int(1) DEFAULT 1,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `rate` int(11) NOT NULL DEFAULT 0,
  `follow` int(11) NOT NULL DEFAULT 0,
  `favorite` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `youtube` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_thumb` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home` int(11) NOT NULL DEFAULT 0,
  `best` int(11) NOT NULL DEFAULT 0,
  `bar_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT 0,
  `attributes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `slug`, `category`, `sub_category`, `type`, `Calories`, `price`, `new_price`, `currency`, `image`, `image_count`, `video_count`, `details`, `installment`, `available`, `quantity`, `status`, `user_id`, `created_at`, `views`, `rate`, `follow`, `favorite`, `updated_at`, `youtube`, `video`, `video_thumb`, `time`, `home`, `best`, `bar_code`, `product_code`, `delivery_type`, `flag`, `attributes`) VALUES
(1, '1356', '{\"ar\":\"??????????\",\"en\":\"dfgdfg\"}', '????????-??????????-??????????', '25', 1, 0, NULL, 399, 230, 1, '1616420999.png', 0, 0, '<p><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">?????????? ????????????(Lorem Ipsum) ???? ???????????? ???? ???????? (?????????? ???? ???????????? ???? ?????????? ???????? ??????????????) ???????????????? ???? ???????????? ?????????????? ???????? ??????????. ?????? ?????????? ???????????? ?????????????? ?????????????? ???????? ???????????? ?????? ?????????? ???????????? ?????? ?????????? ???????? ?????????? ???????????? ?????? ???????????? ???? ???????????? ???????? ???????????? ???????????? ???? ?????? ???????????? ?????????? ???????????? ???????? ???? ???????? ???????? ???????? ????????????. ???????? ???????? ???? ?????????? ???? ???????? ?????? ?????? ?????????? ???? ?????? ?????? ?????? ???????????????? ???????????? ???????????? ???? ?????????????? ???????????????? ????????????????????. ?????????? ???????? ???????? ???? ???????????????? ?????? ?????????? ???? ?????????? ?????????? \"????????????????\" (Letraset) ?????????????????????? ???????? ?????????? ???? ?????? ?????????? ???????? ???????????? ?????? ???????? ???????????? ???? ???????? ?????????? ?????????? ???????????????????? ?????? \"?????????? ???????? ??????????\" (Aldus PageMaker) ?????????? ?????? ?????????? ?????? ?????? ???? ???? ?????????? ????????????.</span><br></p>', 1, 0, 5, 0, 1, '2021-03-22 14:45:06', 0, 0, 0, 0, '2021-07-16 20:03:37', NULL, NULL, NULL, '00:00', 1, 1, NULL, NULL, NULL, 0, '[\"25\",\"30\",\".25\",\"red,green,\"]'),
(15, '245315', '{\"ar\":\"\\u0641\\u0648\\u0644 \\u0628\\u0627\\u0644\\u062c\\u0628\\u0646\\u0629\",\"en\":\"fowl Cheese\"}', 'fowl_cheese', '28', 0, 0, NULL, 0, 0, 1, 'files/products_images/221292_1627216863.jpg', 0, 0, NULL, 0, 1, 60, 1, 0, '2021-07-25 10:41:03', 0, 0, 0, 0, '2021-07-25 10:41:03', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL),
(14, '23165', '{\"ar\":\"\\u0643\\u0628\\u0627\\u0628\",\"en\":\"kaba\"}', 'kabab_hala', '92', 0, 0, NULL, 0, 0, 1, 'files/products_images/350828_1627216711.jpg', 0, 0, NULL, 0, 1, 5, 1, 0, '2021-07-25 10:38:31', 0, 0, 0, 0, '2021-07-25 10:38:31', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL),
(12, '32132456', '{\"ar\":\"\\u0637\\u0627\\u062c\\u0646\",\"en\":\"Tagan\"}', 'tawagan', '51', 0, 0, NULL, 55, 10, 1, 'files/products_images/734780_1627216447.jpg', 0, 0, NULL, 0, 1, 5, 1, 0, '2021-07-18 00:35:54', 0, 0, 0, 0, '2021-07-27 05:43:17', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL),
(13, '2311', '{\"ar\":\"\\u0628\\u0631\\u062c\\u0631\",\"en\":\"Hamburger\"}', 'ksdjflk', '55', 0, 0, NULL, 0, 0, 1, 'files/products_images/750176_1627215902.jpg', 0, 0, NULL, 0, 1, 5, 1, 0, '2021-07-18 00:39:21', 0, 0, 0, 0, '2021-07-25 10:27:43', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL),
(16, '21456', '{\"ar\":\"\\u0648\\u062c\\u0628\\u0629 \\u0627\\u0641\\u0637\\u0627\\u0631\",\"en\":\"Dinner meal\"}', 'dinner_meal', '25', 0, 0, NULL, 50, 30, 1, 'files/products_images/653324_1627240920.jpg', 0, 0, NULL, 0, 1, 55, 1, 0, '2021-07-25 17:22:00', 0, 0, 0, 0, '2021-07-25 17:22:00', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL),
(17, '3215', '{\"ar\":\"\\u0648\\u062c\\u0628\\u0629 \\u0641\\u0637\\u0627\\u0631\",\"en\":\"breakfast\"}', 'breakfast', '26', 0, 0, NULL, 30, 10, 1, 'files/products_images/623594_1627242813.jpg', 0, 0, NULL, 0, 1, 5, 1, 0, '2021-07-25 17:53:33', 0, 0, 0, 0, '2021-07-25 17:53:33', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_orders`
--

CREATE TABLE `products_orders` (
  `id` int(20) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(10) NOT NULL,
  `product_size` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_orders`
--

INSERT INTO `products_orders` (`id`, `order_id`, `product_id`, `quantity`, `product_size`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 1, '2021-04-13 18:38:03', '2021-04-13 18:38:03'),
(2, 50, 1, 5, 1, '2021-04-14 18:03:16', '2021-04-14 18:03:16'),
(3, 50, 1, 5, 1, '2021-04-14 18:03:17', '2021-04-14 18:03:17'),
(4, 50, 1, 5, 1, '2021-04-14 18:03:17', '2021-04-14 18:03:17'),
(5, 51, 1, 5, 1, '2021-04-14 18:05:04', '2021-04-14 18:05:04'),
(6, 51, 1, 5, 1, '2021-04-14 18:05:05', '2021-04-14 18:05:05'),
(7, 51, 1, 5, 1, '2021-04-14 18:05:05', '2021-04-14 18:05:05'),
(8, 52, 1, 5, 1, '2021-04-14 18:07:51', '2021-04-14 18:07:51'),
(9, 52, 1, 5, 1, '2021-04-14 18:07:51', '2021-04-14 18:07:51'),
(10, 52, 1, 5, 1, '2021-04-14 18:07:51', '2021-04-14 18:07:51'),
(11, 53, 1, 2, 1, '2021-04-15 17:52:05', '2021-04-15 17:52:05'),
(12, 55, 1, 2, 1, '2021-04-15 18:01:26', '2021-04-15 18:01:26'),
(13, 56, 1, 2, 1, '2021-04-15 18:06:55', '2021-04-15 18:06:55'),
(15, 69, 1, 5, 5, '2021-07-12 05:03:54', '2021-07-12 05:03:54'),
(16, 70, 1, 5, 5, '2021-07-12 05:04:24', '2021-07-12 05:04:24'),
(19, 81, 1, 3, 1, '2021-07-15 09:44:45', '2021-07-15 09:44:45'),
(20, 82, 1, 50, 2, '2021-07-15 09:45:41', '2021-07-15 09:45:41'),
(21, 89, 1, 2313, 1, '2021-07-15 09:52:36', '2021-07-15 09:52:36'),
(22, 90, 1, 100, 1, '2021-07-15 09:53:11', '2021-07-15 09:53:11'),
(23, 91, 1, 100, 1, '2021-07-15 09:54:10', '2021-07-15 09:54:10'),
(24, 95, 1, 100, 1, '2021-07-15 09:55:26', '2021-07-15 09:55:26'),
(25, 96, 1, 100, 1, '2021-07-15 09:57:07', '2021-07-15 09:57:07'),
(26, 97, 1, 55, 1, '2021-07-15 09:59:58', '2021-07-15 09:59:58'),
(27, 99, 1, 1000, 1, '2021-07-15 10:02:53', '2021-07-15 10:02:53'),
(28, 99, 1, 500, 2, '2021-07-15 10:02:53', '2021-07-15 10:02:53'),
(29, 99, 1, 522, 1, '2021-07-15 10:02:53', '2021-07-15 10:02:53'),
(30, 100, 1, 1000, 1, '2021-07-15 10:28:10', '2021-07-15 10:28:10'),
(31, 100, 1, 500, 2, '2021-07-15 10:28:10', '2021-07-15 10:28:10'),
(32, 100, 1, 100, 1, '2021-07-15 10:28:10', '2021-07-15 10:28:10'),
(33, 101, 1, 1000, 1, '2021-07-15 10:28:46', '2021-07-15 10:28:46'),
(34, 101, 1, 500, 2, '2021-07-15 10:28:46', '2021-07-15 10:28:46'),
(35, 101, 1, 100, 1, '2021-07-15 10:28:46', '2021-07-15 10:28:46'),
(36, 102, 12, 3, 6, '2021-07-27 18:06:38', '2021-07-27 18:06:38'),
(37, 102, 16, 3, 11, '2021-07-27 18:06:38', '2021-07-27 18:06:38');

-- --------------------------------------------------------

--
-- Table structure for table `products_size`
--

CREATE TABLE `products_size` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` text NOT NULL,
  `price` int(20) NOT NULL DEFAULT 0,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_size`
--

INSERT INTO `products_size` (`id`, `product_id`, `size`, `price`, `quantity`) VALUES
(5, 12, '{\"ar\":\"\\u062a\\u064a\\u0633\\u062a1\",\"en\":\"111test1\"}', 5, 30),
(6, 12, '{\"ar\":\"\\u062a\\u064a\\u0633\\u062a2\",\"en\":\"test222222\"}', 6, 30),
(7, 13, '{\"ar\":\"\\u0646\\u064a\\u062a\\u0628\\u0644\\u0646\",\"en\":\"test\"}', 20, NULL),
(8, 13, '{\"ar\":\"\\u064a\\u0628\\u0644\\u064a\",\"en\":\"sdfs\"}', 3, NULL),
(9, 14, '{\"ar\":\"\\u0635\\u063a\\u064a\\u0631\",\"en\":\"small\"}', 20, NULL),
(10, 15, '{\"ar\":\"\\u0635\\u063a\\u064a\\u0631\",\"en\":\"small\"}', 30, 100),
(11, 16, '{\"ar\":\"\\u0635\\u063a\\u064a\\u0631\",\"en\":\"small\"}', 7, 3),
(12, 17, '{\"ar\":\"\\u0635\\u063a\\u064a\\u0631\",\"en\":\"small\"}', 33, 3),
(13, 17, '{\"ar\":\"\\u0643\\u0628\\u064a\\u0631\",\"en\":\"big\"}', 200, 5);

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `id` int(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `product_id` int(20) NOT NULL,
  `rate` int(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`id`, `user_id`, `product_id`, `rate`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 5, '2021-04-14 16:35:15', '2021-04-14 16:35:15'),
(2, 2, 1, 5, '2021-04-14 16:37:04', '2021-04-14 16:37:04'),
(3, 9, 1, 1, '2021-07-11 16:33:18', '2021-07-11 16:33:18');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nameAr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameEn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ArDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `EnDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ArMetaDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `EnMetaDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ArMetaKeywords` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `EnMetaKeywords` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favIcon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `nameAr`, `nameEn`, `email`, `phone`, `phone2`, `ArDescription`, `EnDescription`, `ArMetaDescription`, `EnMetaDescription`, `ArMetaKeywords`, `EnMetaKeywords`, `logo`, `favIcon`, `banner`, `slider`, `status`, `created_at`, `updated_at`) VALUES
(1, '???????????????? ??????', 'Makka Sandwitch', 'mail@mail.com123', '+201111111111123321', '+2012222222222123321', '?????? ???????????? 123312', 'Simple site description123321', '?????? ???? metadescription123321', 'Description for meta123321', 'ar meta keywords123321', 'En Meta Keywords123321', 'files/site_images/739404_1627214003.png', 'files/site_images/633249_1627212331.png', 'files/site_images/743654_1627209693.PNG', '[\"files\\/site_images\\/810564_1627210312.slide-1.jpg\",\"files\\/site_images\\/320094_1627210312.slide-2.jpg\",\"files\\/site_images\\/434930_1627210312.slide-3.jpg\"]', 1, '2021-07-15 08:37:57', '2021-07-25 09:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `name`, `link`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(2, 'twitter1', 'https://twitter.com', 'files/site_images/42621_1627291604.png', 1, '2021-07-26 09:26:44', '2021-07-26'),
(3, 'Facebook', 'https://facebook.com', 'files/site_images/71657_1625907026.png', 1, '2021-07-26 09:25:04', '2021-07-26'),
(4, 'whatsapp', 'https://whatsapp.com', 'files/site_images/29130_1627291687.png', 1, '2021-07-26 09:28:07', '2021-07-26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_id` int(3) DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` float DEFAULT NULL,
  `long` float DEFAULT NULL,
  `group_id` int(11) DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `phone`, `email`, `email_verified_at`, `password`, `area_id`, `image`, `lat`, `long`, `group_id`, `remember_token`, `lang`, `created_at`, `updated_at`) VALUES
(2, '?????? ????????', '?????? ?????????????? ?????????????? ??????', '78797978', 'logapps2021@gmail.com', NULL, '123456', 1, '64966_1625487823.jpg', 30, 30, 1, 'P9WwnEDFBfDNabu', NULL, '2021-04-11 18:59:09', '2021-07-05 10:25:19'),
(9, 'OmarTarek', 'Cairo Egypt', '5646456', 'omartarek@gmail.com', NULL, '$2y$10$jhK54MYXaVujpEcB0TFmC.A5NrnI9CCGCTZZtHUppvyj3N1W8l4ze', 1, NULL, NULL, NULL, 1, NULL, NULL, '2021-07-07 12:01:21', '2021-07-07 12:01:21'),
(17, 'test', NULL, NULL, 'test@gmail.com', NULL, '$2y$10$94iZGywXF5HHaC/82BzLB.dWRVfUTz6.50b0u6DXTXHOoC4gRexAK', NULL, NULL, NULL, NULL, 1, NULL, 'en', '2021-07-26 10:23:15', '2021-07-26 10:23:15'),
(18, 'test3', NULL, NULL, 'e.asaadsaad@gmail.com', NULL, '$2y$10$lqrdiyhsN4Bdf.vuTKTlPOKk9jak/Dybgjww0j4zmIIkmzQDsoXJe', NULL, NULL, NULL, NULL, 1, NULL, 'en', '2021-07-26 12:58:04', '2021-07-26 12:58:04'),
(19, 'test5', NULL, NULL, 'test5@gmail.com', NULL, '$2y$10$PQYFXh7Ls2KD.zctY.S8m.jFhNXPr4JyWpp/IMAgiiXS8q04mEUI.', NULL, NULL, NULL, NULL, 1, NULL, 'en', '2021-07-26 18:39:56', '2021-07-26 18:39:56'),
(20, 'test6', NULL, NULL, 'test6@gmail.com', NULL, '$2y$10$csXRyNWZO6MbNfZDUVO26.HkglVy/KwQWu3Dtu9pCVk/T2Dybvv/O', NULL, NULL, NULL, NULL, 1, NULL, 'en', '2021-07-27 05:31:15', '2021-07-27 05:31:15');

-- --------------------------------------------------------

--
-- Table structure for table `userscoupons`
--

CREATE TABLE `userscoupons` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `coupon_id` int(10) NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userscoupons`
--

INSERT INTO `userscoupons` (`id`, `user_id`, `coupon_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, '2021-04-15 10:59:29', '2021-04-15 10:59:29'),
(2, 1, 1, 1, '2021-04-15 10:59:58', '2021-04-15 10:59:58'),
(3, 2, 1, 1, '2021-04-15 15:59:29', '2021-04-15 15:59:29'),
(4, 1, 1, 1, '2021-04-15 16:01:50', '2021-04-15 16:01:50'),
(5, 2, 1, 1, '2021-04-15 16:37:44', '2021-04-15 16:37:44'),
(6, 9, 1, 1, '2021-07-11 17:24:33', '2021-07-11 17:24:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addones`
--
ALTER TABLE `addones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addones_order`
--
ALTER TABLE `addones_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_drivers`
--
ALTER TABLE `orders_drivers`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission__groups`
--
ALTER TABLE `permission__groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission__groups_group_id_foreign` (`group_id`),
  ADD KEY `permission__groups_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `products_orders`
--
ALTER TABLE `products_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_size`
--
ALTER TABLE `products_size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `userscoupons`
--
ALTER TABLE `userscoupons`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addones`
--
ALTER TABLE `addones`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `addones_order`
--
ALTER TABLE `addones_order`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `orders_drivers`
--
ALTER TABLE `orders_drivers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `permission__groups`
--
ALTER TABLE `permission__groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products_orders`
--
ALTER TABLE `products_orders`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `products_size`
--
ALTER TABLE `products_size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `userscoupons`
--
ALTER TABLE `userscoupons`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
