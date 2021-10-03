-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2021 at 10:17 AM
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
-- Database: `tourism`
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
  `floor_number` int(11) DEFAULT NULL,
  `build_number` int(11) DEFAULT NULL,
  `flat_number` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `user_id`, `new_address`, `area_id`, `lat`, `long`, `floor_number`, `build_number`, `flat_number`, `country_id`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'باستخدام الحدود السياسية عموما، وأسماء الشوارع والإشارات، جنبا إلى جنب مع معرفات أخرى مثل رقم المنزل أو الشقة\r\n222222222222', 1, 30.0117, 30.0117, NULL, NULL, NULL, NULL, NULL, '2021-04-14 09:26:41', '2021-04-14 11:10:54'),
(2, 1, 'cvbnm,.باستخدام الحدود السياسية عموما، وأسماء الشوارع والإشارات، جنبا إلى جنب مع معرفات أخرى مثل رقم المنزل أو الشقة85225852025200252', 1, 30.0117, 30.0117, NULL, NULL, NULL, NULL, NULL, '2021-04-14 09:26:37', '2021-04-14 11:11:28'),
(3, 1, '10 تمكن هذه الخدمة المواطنين والمقيمين المسجلين في العنوان', 1, 30.0117, 30.0117, NULL, NULL, NULL, NULL, NULL, '2021-04-14 15:35:03', '2021-04-14 11:35:03'),
(4, 2, 'Giza El Metro', 1, 30.010781705372, 31.206810884178, NULL, NULL, NULL, NULL, NULL, '2021-04-14 16:29:20', '2021-04-14 12:29:20'),
(5, 2, 'Giza El Metro New York', 2, 30.011484872676, 31.205361150205, NULL, NULL, NULL, NULL, NULL, '2021-04-14 16:33:50', '2021-04-14 12:33:50'),
(6, 2, 'Giza El Metro New York Is A great Place', 1, 30.010431861813, 31.20200201869, NULL, NULL, NULL, NULL, NULL, '2021-04-14 16:54:24', '2021-04-14 12:54:24'),
(7, 2, 'Giza El Metro New York Is A', 2, 30.01130225869, 31.205092258751, NULL, NULL, NULL, NULL, NULL, '2021-04-17 14:34:14', '2021-04-17 10:34:14'),
(8, 9, 'Here', 1, 55, 66, NULL, NULL, NULL, NULL, NULL, '2021-07-11 16:30:52', '2021-07-11 18:30:52'),
(9, 2, 'Helwan Egypt', 1, 0, 0, NULL, NULL, NULL, NULL, NULL, '2021-07-14 12:42:36', '2021-07-14 14:42:36'),
(10, 21, 'اسماعيل كامل', 1, 0, 0, 50, 20, 30, NULL, NULL, '2021-08-23 12:05:31', '2021-08-23 08:05:31'),
(11, 21, 'محور عبسلام بالإسكندرية', 2, 30.011673583118, 31.206059530377, NULL, NULL, NULL, NULL, NULL, '2021-08-23 14:23:50', '2021-08-23 10:23:50'),
(12, 23, 'جيزة عمر', 2, 30.011613845825, 31.205354690552, NULL, NULL, NULL, NULL, NULL, '2021-08-23 15:59:47', '2021-08-23 11:59:47'),
(13, 22, 'here', 1, 0, 0, 30, 20, 60, NULL, NULL, '2021-08-30 13:41:10', '2021-08-30 15:41:10'),
(14, 23, 'hereeee', 1, 0, 0, 33, 22, 11, NULL, NULL, '2021-09-02 10:21:05', '2021-09-02 12:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `programid` int(11) DEFAULT NULL,
  `information` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `programid`, `information`, `created_at`, `updated_at`) VALUES
(1, 20, 'ame1', '2021-09-18 10:27:29', '2021-09-18 10:27:29'),
(2, 20, 'ame 2', '2021-09-18 10:27:29', '2021-09-18 10:27:29'),
(3, 21, 'sdf1', '2021-09-18 10:39:27', '2021-09-18 10:39:27'),
(4, 22, 'asee', '2021-09-18 11:21:52', '2021-09-20 07:14:23'),
(5, 22, 'kkkk', '2021-09-20 07:27:16', '2021-09-20 07:28:35'),
(6, 22, 'test', '2021-09-20 07:27:16', '2021-09-20 08:17:30');

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
(1, 'ميامى', 'miami', 1),
(2, 'المعمورة', 'maamoura', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `country_id` int(11) NOT NULL,
  `age` int(3) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `IdNum` varchar(255) NOT NULL,
  `status` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `user_id`, `program_id`, `created_at`, `updated_at`, `name`, `images`, `country_id`, `age`, `city_id`, `address`, `IdNum`, `status`) VALUES
(1, 1, 1, '2021-08-09 12:15:53', '2021-08-09 12:40:40', 'omar', '[\"files\\/booking_images\\/1177598_1628510743.832921-200.png\"]', 1, 23, 1, 'example', '287454412154215421', 0),
(3, 13, 1, '2021-08-09 12:44:01', '2021-08-09 12:44:01', 'Omar Tarek', '[\"files\\/booking_images\\/1177598_1628510743.832921-200.png\"]', 59, 23, 928, 'Egypt, Cairo, Haram', '2986564654', 1),
(4, 13, 6, '2021-08-09 12:41:49', '2021-08-09 12:41:49', 'OmartarekSayed', '[\"files\\/booking_images\\/4039170_1628512438.04_Preview_Image.jpg\",\"files\\/booking_images\\/540046_1628512438.05_Preview_Image.jpg\",\"files\\/booking_images\\/4035421_1628512438.47883_1528931342.png\"]', 59, 12, 934, '222', '2222222', 0),
(5, 13, 6, '2021-08-09 10:29:10', '2021-08-09 12:29:10', 'Omar Tarek', '[\"files\\/booking_images\\/5459995_1628512150.05_Preview_Image.jpg\",\"files\\/booking_images\\/5839097_1628512150.5ol3.PNG\"]', 59, 123, 927, 'Egypt, Cairo, Haram', '6456466456', 0),
(7, 13, 5, '2021-09-02 08:11:54', '2021-09-02 10:11:54', 'kase', '[\"files\\/booking_images\\/6729125_1630577514.699-6997452_administrator-network-icons-system-avatar-computer-transparent-admin.png\",\"files\\/booking_images\\/4130195_1630577514.99555_1627462853-removebg-preview 1.png\",\"files\\/booking_images\\/2210991_1630577514.774457_1625998206.jpg\",\"files\\/booking_images\\/7688627_1630577514.200103035336895_\\u0627\\u0644\\u0645\\u0634\\u0648\\u064a\\u0627\\u062a-\\u0644\\u0644\\u062d\\u0627\\u0645\\u0644.jpg\"]', 17, 22, 235, 'herere', '2315646', 1),
(8, 22, 5, '2021-09-02 08:54:14', '2021-09-02 10:54:14', 'Kase', '[\"files\\/booking_images\\/7892968_1630580054.statues-entrance-Ramses-II-Luxor-temple-complex.jpg\",\"files\\/booking_images\\/8390189_1630580054.unnamed.jpg\",\"files\\/booking_images\\/1449080_1630580054.Untitled.png\"]', 11, 22, 132, 'here', '123654789', 1);

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
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `code`, `name`, `icon`, `keywords`, `image`, `status`, `created_at`, `updated_at`) VALUES
(49, 12314, 'example', 'files/categories_images/914257_1628424437.jpg', 'Txt, t asdf asd f,a sdf asdf asdf asdfasdf df', NULL, 0, '2021-07-13 16:55:51', '2021-08-08 10:07:17'),
(51, 124569, 'Egypt Luxury Tours', NULL, '123123', 'files/categories_images/329291_1630323107.jpg', 1, '2021-07-13 18:26:50', '2021-08-30 09:31:47'),
(95, 21566, 'Dahabeya Boats', NULL, 'Hi', 'files/categories_images/350611_1630323181.jpg', 1, '2021-07-25 19:49:17', '2021-08-30 09:33:01'),
(96, 356465, 'Aswan Day Tours', 'files/categories_images/651778_1628424362.png', '123123123 123123 123123123123', 'files/categories_images/880428_1630323240.jpg', 1, '2021-07-25 19:49:17', '2021-08-30 09:34:00'),
(99, 0, 'Fly to Cairo from Sharm El Sheikh', NULL, 'asdfasdf', 'files/categories_images/187997_1630323325.jpg', 1, '2021-08-08 09:12:16', '2021-08-30 09:35:25'),
(105, 0, 'honeymoon', 'files/categories_images/580994_1630402801.jpg', 'honey moon', 'files/categories_images/188918_1630402801.jpg', 1, '2021-08-31 07:40:01', '2021-08-31 07:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) UNSIGNED NOT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_ar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_fr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(50) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name_en`, `name_ar`, `name_fr`, `code`, `country_id`) VALUES
(1, 'Sant Julia de Loria', 'سانت جوليا دي لوريا', 'Sant Julia de Loria', '06', 1),
(2, 'Andorra la Vella', 'أندورا لا فيلا', 'Andorra la Vella', '07', 1),
(3, 'La Massana', 'لا ماسانا', 'La Massana', '04', 1),
(4, 'Ordino', 'أوردينو', 'Ordino', '05', 1),
(5, 'Canillo', 'كانيلو', 'Canillo', '02', 1),
(6, 'Encamp', 'نزلوا', 'Camper', '03', 1),
(7, 'Escaldes-Engordany', 'إسكالديس أنجوردني', 'Escaldes-Engordany', '08', 1),
(8, 'Fujairah', 'الفجيرة', 'Fujairah', '04', 2),
(9, 'Abu Dhabi', 'أبو ظبي', 'Abu Dhabi', '01', 2),
(10, 'Dubai', 'دبي', 'Dubai', '03', 2),
(11, 'Ras Al Khaimah', 'رأس الخيمة', 'Ras Al Khaimah', '05', 2),
(12, 'Umm Al Quwain', 'ام القيوين', 'Umm Al Quwain', '07', 2),
(13, 'Sharjah', 'الشارقة', 'Sharjah', '06', 2),
(14, 'Ajman', 'عجمان', 'Ajman', '02', 2),
(15, 'Paktika', 'بكتيكا', 'Paktika', '29', 3),
(16, 'Farah', 'فرح', 'Farah', '06', 3),
(17, 'Helmand', 'هلمند', 'Helmand', '10', 3),
(18, 'Kondoz', 'قندز', 'Kondoz', '24', 3),
(19, 'Bamian', 'باميان', 'Bamian', '05', 3),
(20, 'Ghowr', 'غور', 'Ghowr', '09', 3),
(21, 'Laghman', 'لغمان', 'Laghman', '35', 3),
(23, 'Ghazni', 'غزنة', 'Ghazni', '08', 3),
(24, 'Vardak', 'ورداك', 'Vardak', '27', 3),
(25, 'Oruzgan', 'أوروزغان', 'Oruzgan', '39', 3),
(26, 'Zabol', 'زابول', 'Zabol', '28', 3),
(27, 'Badghis', 'بادغيس', 'Badghis', '02', 3),
(28, 'Badakhshan', 'بدخشان', 'Badakhshan', '01', 3),
(29, 'Faryab', 'فارياب', 'Faryab', '07', 3),
(30, 'Takhar', 'تخار', 'Takhar', '26', 3),
(31, 'Lowgar', 'لوجار', 'Lowgar', '17', 3),
(32, 'Herat', 'هرات', 'Herat', '11', 3),
(33, 'Daykondi', 'دايكندي', 'Daykondi', '41', 3),
(34, 'Sar-e Pol', 'سار بول', 'Sar-e Pol', '33', 3),
(35, 'Balkh', 'بلخ', 'Balkh', '30', 3),
(36, 'Kabol', 'كابول', 'Kabol', '13', 3),
(37, 'Nimruz', 'نيمروز', 'Nimruz', '19', 3),
(38, 'Kandahar', 'قندهار', 'Kandahar', '23', 3),
(39, 'Khowst', 'خوست', 'Khowst', '37', 3),
(41, 'Kapisa', 'كابيسا', 'Kapisa', '14', 3),
(42, 'Nangarhar', 'ننجرهار', 'Nangarhar', '18', 3),
(43, 'Samangan', 'سامانغان', 'Samangan', '32', 3),
(44, 'Paktia', 'بكتيا', 'Paktia', '36', 3),
(45, 'Baghlan', 'بغلان', 'Baghlan', '03', 3),
(46, 'Jowzjan', 'جوزجان', 'Jowzjan', '31', 3),
(47, 'Konar', 'كونار', 'Konar', '34', 3),
(48, 'Nurestan', 'نورستان', 'Nurestan', '38', 3),
(52, 'Panjshir', 'بانجشير', 'Panjshir', '42', 3),
(53, 'Saint John', 'القديس يوحنا', 'Saint Jean', '04', 4),
(54, 'Saint Paul', 'القديس بول', 'Saint Paul', '06', 4),
(55, 'Saint George', 'القديس جورج', 'Saint George', '03', 4),
(56, 'Saint Peter', 'القديس بطرس', 'Saint Pierre', '07', 4),
(57, 'Saint Mary', 'القديس ماري', 'Sainte Marie', '05', 4),
(58, 'Barbuda', 'باربودا', 'Barbuda', '01', 4),
(59, 'Saint Philip', 'سانت فيليب', 'Saint philippe', '08', 4),
(61, 'Vlore', 'فلور', 'Vlore', '51', 6),
(62, 'Korce', 'كورتشي', 'Korce', '46', 6),
(63, 'Shkoder', 'شكودر', 'Shkoder', '49', 6),
(64, 'Durres', 'دوريس', 'Durres', '42', 6),
(65, 'Elbasan', 'الباسان', 'Elbasan', '43', 6),
(66, 'Kukes', 'كوكس', 'Kukes', '47', 6),
(67, 'Fier', 'فيير', 'Fier', '44', 6),
(68, 'Berat', 'بيرات', 'Berat', '40', 6),
(69, 'Gjirokaster', 'جيروكاستر', 'Gjirokaster', '45', 6),
(70, 'Tirane', 'تيرانا', 'Tirane', '50', 6),
(71, 'Lezhe', 'ليج', 'Lezhe', '48', 6),
(72, 'Diber', 'ديبر', 'Diber', '41', 6),
(73, 'Aragatsotn', 'Aragatsotn', 'Aragatsotn', '01', 7),
(74, 'Ararat', 'أرارات', 'Ararat', '02', 7),
(75, 'Kotayk\'', 'كوتايك', 'Kotayk \'', '05', 7),
(76, 'Tavush', 'تافوش', 'Tavush', '09', 7),
(77, 'Syunik\'', 'سيونيك', 'Syunik \'', '08', 7),
(78, 'Geghark\'unik\'', 'Geghark\'unik \"', 'Geghark\'unik \'', '04', 7),
(79, 'Vayots\' Dzor', 'دزوتس دازور', 'Dzor de Vayots', '10', 7),
(80, 'Lorri', 'Lorri', 'Lorri', '06', 7),
(81, 'Armavir', 'أرمافير', 'Armavir', '03', 7),
(82, 'Yerevan', 'يريفان', 'Erevan', '11', 7),
(83, 'Shirak', 'شيراك', 'Shirak', '07', 7),
(85, 'Benguela', 'بنغيلا', 'Benguela', '01', 9),
(86, 'Uige', 'يجي', 'Uige', '15', 9),
(87, 'Bengo', 'بنغو', 'Bengo', '19', 9),
(88, 'Cuanza Norte', 'كوانزا نورتي', 'Cuanza Norte', '05', 9),
(89, 'Malanje', 'مالانج', 'Malanje', '12', 9),
(90, 'Cuanza Sul', 'كوانزا سول', 'Cuanza Sul', '06', 9),
(91, 'Huambo', 'هوامبو', 'Huambo', '08', 9),
(92, 'Moxico', 'موكسيكو', 'Moxico', '14', 9),
(93, 'Cuando Cubango', 'كواندو كوبانجو', 'Cuando Cubango', '04', 9),
(94, 'Bie', 'بيي', 'Bie', '02', 9),
(95, 'Huila', 'هويلا', 'Huila', '09', 9),
(96, 'Lunda Sul', 'لوندا سول', 'Lunda Sul', '18', 9),
(98, 'Zaire', 'زائير', 'Zaïre', '16', 9),
(99, 'Cunene', 'كونين', 'Cunene', '07', 9),
(100, 'Lunda Norte', 'لوندا نورتي', 'Lunda Norte', '17', 9),
(101, 'Namibe', 'ناميبي', 'Namibe', '13', 9),
(102, 'Cabinda', 'كابيندا', 'Cabinda', '03', 9),
(103, 'Buenos Aires', 'بوينس آيرس', 'Buenos Aires', '01', 10),
(104, 'Cordoba', 'قرطبة', 'Cordoba', '05', 10),
(105, 'Entre Rios', 'انتري ريوس', 'Entre Rios', '08', 10),
(106, 'Salta', 'سالتا', 'Salta', '17', 10),
(107, 'Jujuy', 'خوخوي', 'Jujuy', '10', 10),
(108, 'La Pampa', 'لا بامبا', 'La Pampa', '11', 10),
(109, 'Mendoza', 'مندوزا', 'Mendoza', '13', 10),
(110, 'Misiones', 'ميسيونيس', 'Misiones', '14', 10),
(111, 'Santa Cruz', 'سانتا كروز', 'Santa Cruz', '20', 10),
(112, 'Santa Fe', 'سانتا في', 'Santa Fe', '21', 10),
(113, 'Tucuman', 'توكومان', 'Tucuman', '24', 10),
(114, 'Corrientes', 'كورينتس', 'Corrientes', '06', 10),
(115, 'San Juan', 'سان خوان', 'San Juan', '18', 10),
(116, 'Santiago del Estero', 'سانتياغو ديل إستيرو', 'Santiago del Estero', '22', 10),
(117, 'Catamarca', 'كاتاماركا', 'Catamarca', '02', 10),
(118, 'Neuquen', 'نيوكوين', 'Neuquen', '15', 10),
(119, 'Distrito Federal', 'وفي مقاطعة الاتحادية', 'Distrito Federal', '07', 10),
(120, 'La Rioja', 'لا ريوخا', 'La Rioja', '12', 10),
(121, 'Rio Negro', 'ريو نيغرو', 'Rio Negro', '16', 10),
(122, 'Chubut', 'شوبوت', 'Chubut', '04', 10),
(123, 'San Luis', 'سان لويس', 'San Luis', '19', 10),
(124, 'Tierra del Fuego', 'تييرا ديل فويغو', 'Terre de Feu', '23', 10),
(125, 'Formosa', 'فورموزا', 'Formose', '09', 10),
(126, 'Chaco', 'شاكو', 'Chaco', '03', 10),
(127, 'Niederosterreich', 'Niederosterreich', 'Niederosterreich', '03', 11),
(128, 'Salzburg', 'سالزبورغ', 'Salzbourg', '05', 11),
(129, 'Oberosterreich', 'Oberosterreich', 'Oberosterreich', '04', 11),
(130, 'Tirol', 'تيرول', 'Tirol', '07', 11),
(131, 'Karnten', 'كارنتين', 'Karnten', '02', 11),
(132, 'Steiermark', 'STEIERMARK', 'Steiermark', '06', 11),
(133, 'Vorarlberg', 'فورارلبرغ', 'Vorarlberg', '08', 11),
(134, 'Wien', 'فيينا', 'Wien', '09', 11),
(135, 'Burgenland', 'بورغنلاند', 'Burgenland', '01', 11),
(136, 'New South Wales', 'نيو ساوث ويلز', 'Nouvelle Galles du Sud', '02', 12),
(137, 'Tasmania', 'تسمانيا', 'Tasmanie', '06', 12),
(138, 'Western Australia', 'القسم الغربي من استراليا', 'Australie occidentale', '08', 12),
(139, 'Queensland', 'كوينزلاند', 'Queensland', '04', 12),
(140, 'Victoria', 'فيكتوريا', 'Victoria', '07', 12),
(141, 'South Australia', 'جنوب استراليا', 'Australie du Sud', '05', 12),
(142, 'Northern Territory', 'الإقليم الشمالي', 'Territoire du Nord', '03', 12),
(143, 'Australian Capital Territory', 'إقليم العاصمة الأسترالية', 'Territoire de la capitale australienne', '01', 12),
(146, 'Neftcala', 'نيفتكالا', 'Neftcala', '36', 14),
(147, 'Xanlar', 'زانلار', 'Xanlar', '62', 14),
(148, 'Yevlax', 'يفلاكس', 'Yevlax', '68', 14),
(149, 'Agdas', 'أجداس', 'Agdas', '04', 14),
(150, 'Sabirabad', 'سابيراباد', 'Sabirabad', '46', 14),
(151, 'Yardimli', 'يارديملي', 'Yardimli', '66', 14),
(152, 'Calilabad', 'Calilabad', 'Calilabad', '15', 14),
(153, 'Saatli', 'ساتلي', 'Saatli', '45', 14),
(154, 'Saki', 'الساقي', 'Saki', '47', 14),
(155, 'Kurdamir', 'كوردامير', 'Kurdamir', '27', 14),
(156, 'Qazax', 'كازاكس', 'Qazax', '40', 14),
(157, 'Tovuz', 'توفوز', 'Tovuz', '58', 14),
(158, 'Samkir', 'سامكير', 'Samkir', '51', 14),
(159, 'Agdam', 'أغدام', 'Agdam', '03', 14),
(160, 'Qubadli', 'كوبادلي', 'Qubadli', '43', 14),
(161, 'Oguz', 'أوغوز', 'Oguz', '37', 14),
(162, 'Lacin', 'لاكين', 'Lacin', '28', 14),
(163, 'Kalbacar', 'كالباكار', 'Kalbacar', '26', 14),
(164, 'Haciqabul', 'Haciqabul', 'Haciqabul', '23', 14),
(165, 'Bilasuvar', 'بيلاسوفار', 'Bilasuvar', '13', 14),
(166, 'Balakan', 'بالاكان', 'Balakan', '10', 14),
(167, 'Naxcivan', 'ناخيتشيفان', 'Naxcivan', '35', 14),
(168, 'Qabala', 'قابالا', 'Qabala', '38', 14),
(169, 'Agcabadi', 'أجكابادي', 'Agcabadi', '02', 14),
(170, 'Samaxi', 'ساماكسي', 'Samaxi', '50', 14),
(171, 'Davaci', 'دافاسي', 'Davaci', '17', 14),
(172, 'Quba', 'قباء', 'Quba', '42', 14),
(173, 'Qusar', 'كوسار', 'Qusar', '44', 14),
(174, 'Imisli', 'إيميسلي', 'Imisli', '24', 14),
(175, 'Abseron', 'أبسيرون', 'Abseron', '01', 14),
(176, 'Xacmaz', 'زاكماز', 'Xacmaz', '60', 14),
(177, 'Cabrayil', 'كابرايل', 'Cabrayil', '14', 14),
(178, 'Ismayilli', 'إيسمييلي', 'Ismayilli', '25', 14),
(179, 'Goranboy', 'غورانبوي', 'Goranboy', '21', 14),
(180, 'Fuzuli', 'فضولي', 'Fuzuli', '18', 14),
(181, 'Baki', 'باكي', 'Baki', '09', 14),
(182, 'Beylaqan', 'بيلاكان', 'Beylaqan', '12', 14),
(183, 'Daskasan', 'داسكاسان', 'Daskasan', '16', 14),
(184, 'Masalli', 'ماسالي', 'Masalli', '32', 14),
(185, 'Zaqatala', 'زاكاتالا', 'Zaqatala', '70', 14),
(186, 'Lankaran', 'نكران', 'Lankaran', '29', 14),
(187, 'Lerik', 'ليريك', 'Lerik', '31', 14),
(188, 'Ali Bayramli', 'علي بيرملي', 'Ali Bayramli', '07', 14),
(189, 'Qax', 'QAX', 'Qax', '39', 14),
(190, 'Samux', 'ساموكس', 'Samux', '52', 14),
(191, 'Zardab', 'زارداب', 'Zardab', '71', 14),
(192, 'Gadabay', 'جاداباي', 'Gadabay', '19', 14),
(193, 'Ucar', 'أوكار', 'Ucar', '59', 14),
(194, 'Barda', 'بردا', 'Barda', '11', 14),
(195, 'Siyazan', 'سيازان', 'Siyazan', '53', 14),
(196, 'Xocavand', 'كسوكافاند', 'Xocavand', '65', 14),
(197, 'Zangilan', 'زانجيلان', 'Zangilan', '69', 14),
(198, 'Xizi', 'XIZI', 'Xizi', '63', 14),
(199, 'Yevlax', 'يفلاكس', 'Yevlax', '67', 14),
(200, 'Agsu', 'AGSU', 'Agsu', '06', 14),
(201, 'Qobustan', 'كوبستان', 'Qobustan', '41', 14),
(202, 'Goycay', 'جويكاي', 'Goycay', '22', 14),
(203, 'Astara', 'أستارا', 'Astara', '08', 14),
(204, 'Xocali', 'كسوكالي', 'Xocali', '64', 14),
(205, 'Xankandi', 'زانكاندي', 'Xankandi', '61', 14),
(206, 'Tartar', 'رواسب', 'Tartre', '57', 14),
(207, 'Agstafa', 'أجستافا', 'Agstafa', '05', 14),
(208, 'Salyan', 'ساليان', 'Salyan', '49', 14),
(209, 'Susa', 'سوسة', 'Susa', '55', 14),
(210, 'Ganca', 'غانكا', 'Ganca', '20', 14),
(211, 'Sumqayit', 'سامكيت', 'Sumqayit', '54', 14),
(212, 'Saki', 'الساقي', 'Saki', '48', 14),
(213, 'Naftalan', 'نفتالان', 'Naftalan', '34', 14),
(214, 'Lankaran', 'نكران', 'Lankaran', '30', 14),
(215, 'Mingacevir', 'مينغاشفير', 'Mingacevir', '33', 14),
(216, 'Susa', 'سوسة', 'Susa', '56', 14),
(217, 'Republika Srpska', 'جمهورية صربسكا', 'Republika Srpska', '02', 15),
(218, 'Federation of Bosnia and Herzegovina', 'اتحاد البوسنة والهرسك', 'Fédération de Bosnie et Herzégovine', '01', 15),
(220, 'Saint Joseph', 'القديس يوسف', 'Saint Joseph', '06', 16),
(221, 'Saint Lucy', 'سانت لوسي', 'Sainte Lucie', '07', 16),
(222, 'Saint Thomas', 'سانت توماس', 'Saint thomas', '11', 16),
(223, 'Saint James', 'جيمس قديس', 'Saint James', '04', 16),
(224, 'Saint John', 'القديس يوحنا', 'Saint Jean', '05', 16),
(225, 'Saint Peter', 'القديس بطرس', 'Saint Pierre', '09', 16),
(226, 'Christ Church', 'كنيسة المسيح', 'Christ Church', '01', 16),
(227, 'Saint George', 'القديس جورج', 'Saint George', '03', 16),
(228, 'Saint Michael', 'القديس مايكل', 'Saint michel', '08', 16),
(229, 'Saint Andrew', 'القديس أندرو', 'Saint andrew', '02', 16),
(230, 'Saint Philip', 'سانت فيليب', 'Saint philippe', '10', 16),
(231, 'Khulna', 'خولنا', 'Khulna', '82', 17),
(232, 'Rajshahi', 'راجشاهي', 'Rajshahi', '83', 17),
(233, 'Dhaka', 'دكا', 'Dhaka', '81', 17),
(235, 'Barisal', 'باريسال', 'Barisal', '85', 17),
(236, 'Sylhet', 'سيلهيت', 'Sylhet', '86', 17),
(237, 'Chittagong', 'شيتاغونغ', 'Chittagong', '84', 17),
(238, 'Oost-Vlaanderen', 'فلاندر الشرقية', 'Oost-Vlaanderen', '08', 18),
(239, 'West-Vlaanderen', 'فلاندر الغربية', 'West-Vlaanderen', '09', 18),
(241, 'Limburg', 'ليمبورغ', 'Limbourg', '05', 18),
(242, 'Antwerpen', 'أنتويرب', 'Antwerpen', '01', 18),
(243, 'Luxembourg', 'لوكسمبورغ', 'Luxembourg', '06', 18),
(244, 'Hainaut', 'ليمبورغ', 'Hainaut', '03', 18),
(245, 'Liege', 'مرتبط ب', 'Lige', '04', 18),
(246, 'Namur', 'نامور', 'Namur', '07', 18),
(247, 'Brussels Hoofdstedelijk Gewest', 'بروكسل Hoofdstedelijk Gewest', 'Bruxelles Hoofdstedelijk Gewest', '11', 18),
(248, 'Vlaams-Brabant', 'فلامس برابانت', 'Brabant flamand', '12', 18),
(249, 'Brabant Wallon', 'برابانت الوالون', 'Brabant Wallon', '10', 18),
(251, 'Mouhoun', 'موهون', 'Mouhoun', '63', 19),
(252, 'Bam', 'بام', 'Bam', '15', 19),
(257, 'Tapoa', 'تابوا', 'Tapoa', '42', 19),
(258, 'Soum', 'سوم', 'Soum', '40', 19),
(259, 'Leraba', 'يرابا', 'Leraba', '61', 19),
(260, 'Noumbiel', 'نومبيل', 'Noumbiel', '67', 19),
(262, 'Gnagna', 'جناجنا', 'Gnagna', '21', 19),
(265, 'Yatenga', 'ياتينجا', 'Yatenga', '76', 19),
(266, 'Banwa', 'بانوا', 'Banwa', '46', 19),
(267, 'Poni', 'بوني', 'Poni', '69', 19),
(268, 'Loroum', 'وروم', 'Loroum', '62', 19),
(269, 'Kouritenga', 'كوريتنجا', 'Kouritenga', '28', 19),
(270, 'Tuy', 'توي', 'Tuy', '74', 19),
(271, 'Kossi', 'كوسي', 'Kossi', '58', 19),
(272, 'Passore', 'باسور', 'Passore', '34', 19),
(273, 'Kenedougou', 'كيندوجو', 'Kénédougou', '54', 19),
(274, 'Bale', 'بالة', 'Balle', '45', 19),
(275, 'Bougouriba', 'بوغوريبا', 'Bougouriba', '48', 19),
(276, 'Houet', 'هويت', 'Houet', '51', 19),
(277, 'Gourma', 'جورما', 'Gourma', '50', 19),
(278, 'Namentenga', 'نامنتنجا', 'Namentenga', '64', 19),
(279, 'Sanmatenga', 'سانماتينغا', 'Sanmatenga', '70', 19),
(281, 'Ioba', 'إيوبا', 'Ioba', '52', 19),
(282, 'Ganzourgou', 'غانزورغو', 'Ganzourgou', '20', 19),
(283, 'Naouri', 'الناعوري', 'Naouri', '65', 19),
(284, 'Boulkiemde', 'بولكيمد', 'Boulkiemde', '19', 19),
(285, 'Zoundweogo', 'زوندويجو', 'Zoundweogo', '44', 19),
(286, 'Zondoma', 'زوندوما', 'Zondoma', '78', 19),
(289, 'Komoe', 'Komoe', 'Komoe', '55', 19),
(290, 'Yagha', 'ياغا', 'Yagha', '75', 19),
(291, 'Komondjari', 'كوموندجاري', 'Komondjari', '56', 19),
(292, 'Sourou', 'سورو', 'Sourou', '73', 19),
(293, 'Nayala', 'نايالا', 'Nayala', '66', 19),
(294, 'Sissili', 'سيسيلي', 'Sissili', '72', 19),
(295, 'Sanguie', 'سانجوي', 'Sanguie', '36', 19),
(296, 'Oudalan', 'أودالان', 'Oudalan', '33', 19),
(297, 'Koulpelogo', 'كولبيلوجو', 'Koulpelogo', '59', 19),
(298, 'Ziro', 'زيرو', 'Ziro', '77', 19),
(299, 'Kourweogo', 'كورويجو', 'Kourweogo', '60', 19),
(300, 'Oubritenga', 'أوبريتنغا', 'Oubritenga', '68', 19),
(301, 'Seno', 'سينو', 'Seno', '71', 19),
(302, 'Bazega', 'بازيجا', 'Bazega', '47', 19),
(303, 'Kadiogo', 'كاديوغو', 'Kadiogo', '53', 19),
(304, 'Kompienga', 'كومبينغا', 'Kompienga', '57', 19),
(305, 'Boulgou', 'بولغو', 'Boulgou', '49', 19),
(306, 'Lovech', 'لوفيتش', 'Lovech', '46', 20),
(307, 'Varna', 'فارنا', 'Varna', '61', 20),
(308, 'Burgas', 'بورغاس', 'Burgas', '39', 20),
(309, 'Razgrad', 'رازغراد', 'Razgrad', '52', 20),
(310, 'Plovdiv', 'بلوفديف', 'Plovdiv', '51', 20),
(311, 'Khaskovo', 'Khaskovo', 'Khaskovo', '43', 20),
(312, 'Sofiya', 'SOFIYA', 'Sofiya', '58', 20),
(313, 'Silistra', 'سيليسترا', 'Silistra', '55', 20),
(314, 'Vidin', 'فيدين', 'Vidin', '63', 20),
(315, 'Montana', 'مونتانا', 'Montana', '47', 20),
(316, 'Mikhaylovgrad', 'Mikhaylovgrad', 'Mikhaylovgrad', '33', 20),
(317, 'Grad Sofiya', 'جراد صوفيا', 'Grad Sofiya', '42', 20),
(318, 'Turgovishte', 'تارغوفيشته', 'Turgovishte', '60', 20),
(319, 'Kurdzhali', 'Kurdzhali', 'Kurdzhali', '44', 20),
(320, 'Dobrich', 'دوبريتش', 'Dobrich', '40', 20),
(321, 'Shumen', 'شومين', 'Shumen', '54', 20),
(322, 'Blagoevgrad', 'بلاغويفغارد', 'Blagoevgrad', '38', 20),
(323, 'Smolyan', 'سموليان', 'Smolyan', '57', 20),
(324, 'Stara Zagora', 'ستارا زاغورا', 'Stara Zagora', '59', 20),
(325, 'Pazardzhik', 'بازارجيك', 'Pazardzhik', '48', 20),
(326, 'Ruse', 'حيلة', 'Ruse', '53', 20),
(327, 'Vratsa', 'فراتسا', 'Vratsa', '64', 20),
(328, 'Pleven', 'بليفين', 'Pleven', '50', 20),
(329, 'Pernik', 'برنيك', 'Pernik', '49', 20),
(330, 'Kyustendil', 'كيوستينديل', 'Kyustendil', '45', 20),
(331, 'Yambol', 'يامبول', 'Yambol', '65', 20),
(332, 'Gabrovo', 'غابروفو', 'Gabrovo', '41', 20),
(333, 'Sliven', 'سليفن', 'Sliven', '56', 20),
(334, 'Veliko Turnovo', 'فيليكو ترنوفو', 'Veliko Turnovo', '62', 20),
(335, 'Jidd Hafs', 'جد حفص', 'Jidd Hafs', '05', 21),
(337, 'Al Mintaqah ash Shamaliyah', 'المنطقة الشمالية', 'Al Mintaqah cendres Shamaliyah', '10', 21),
(339, 'Al Manamah', 'المنامة', 'Al Manamah', '02', 21),
(340, 'Sitrah', 'سترة', 'Sitrah', '06', 21),
(341, 'Al Mintaqah al Gharbiyah', 'المنطقة الغربية', 'Al Mintaqah al Gharbiyah', '08', 21),
(342, 'Mintaqat Juzur Hawar', 'ولاية جزرور حوار', 'Mintaqat Juzur Hawar', '09', 21),
(343, 'Al Hadd', 'الحد', 'Al Hadd', '01', 21),
(344, 'Al Mintaqah al Wusta', 'المنطقة الوسطى', 'Al Mintaqah al Wusta', '11', 21),
(345, 'Ar Rifa', 'الرفاع', 'Ar Rifa', '13', 21),
(346, 'Madinat', 'مدينة', 'Madinat', '12', 21),
(347, 'Karuzi', 'كاروزي', 'Karuzi', '14', 22),
(348, 'Ruyigi', 'رويجي', 'Ruyigi', '21', 22),
(349, 'Bubanza', 'بوبانزا', 'Bubanza', '09', 22),
(350, 'Bururi', 'بوروري', 'Bururi', '10', 22),
(351, 'Makamba', 'ماكامبا', 'Makamba', '17', 22),
(352, 'Kayanza', 'كاينزا', 'Kayanza', '15', 22),
(354, 'Rutana', 'روتانا', 'Rutana', '20', 22),
(355, 'Muyinga', 'مويينغا', 'Muyinga', '18', 22),
(356, 'Cibitoke', 'سيبيتوكييه', 'Cibitoke', '12', 22),
(357, 'Gitega', 'غيتيغا', 'Gitega', '13', 22),
(358, 'Cankuzo', 'كانكوزا', 'Cankuzo', '11', 22),
(359, 'Bujumbura', 'بوجمبورا', 'Bujumbura', '02', 22),
(360, 'Ngozi', 'نغوزي', 'Ngozi', '19', 22),
(361, 'Kirundo', 'كيروندو', 'Kirundo', '16', 22),
(362, 'Plateau', 'هضبة', 'Plateau', '17', 23),
(363, 'Collines', 'التلال', 'Des collines', '11', 23),
(366, 'Oueme', 'أويمي', 'Oueme', '16', 23),
(367, 'Zou', 'زو', 'Zou', '18', 23),
(370, 'Atlanyique', 'Atlanyique', 'Atlanyique', '09', 23),
(371, 'Borgou', 'بورغو', 'Borgou', '10', 23),
(372, 'Mono', 'مونو', 'Mono', '15', 23),
(374, 'Kouffo', 'كوفو', 'Kouffo', '12', 23),
(375, 'Donga', 'دونجا', 'Donga', '13', 23),
(376, 'Littoral', 'ساحلي', 'Littoral', '14', 23),
(377, 'Alibori', 'أليبوري', 'Alibori', '07', 23),
(378, 'Atakora', 'أتاكورا', 'Atakora', '08', 23),
(379, 'Devonshire', 'ديفونشاير', 'Devonshire', '01', 24),
(380, 'Paget', 'باجيت', 'Paget', '04', 24),
(381, 'Saint George\'s', 'سانت جورج', 'Saint George\'s', '07', 24),
(382, 'Smiths', 'الحدادون', 'Smiths', '09', 24),
(383, 'Hamilton', 'هاميلتون', 'Hamilton', '03', 24),
(384, 'Warwick', 'وارويك', 'Warwick', '11', 24),
(385, 'Sandys', 'سانديز', 'Sandys', '08', 24),
(386, 'Saint George', 'القديس جورج', 'Saint George', '06', 24),
(387, 'Hamilton', 'هاميلتون', 'Hamilton', '02', 24),
(389, 'Santa Cruz', 'سانتا كروز', 'Santa Cruz', '08', 26),
(390, 'Pando', 'باندو', 'Pando', '06', 26),
(391, 'Tarija', 'تاريخا', 'Tarija', '09', 26),
(392, 'La Paz', 'لاباز', 'La paz', '04', 26),
(393, 'Oruro', 'أورورو', 'Oruro', '05', 26),
(394, 'Cochabamba', 'كوتشابامبا', 'Cochabamba', '02', 26),
(395, 'Potosi', 'بوتوسي', 'Potosi', '07', 26),
(396, 'Chuquisaca', 'شوكيساكا', 'Chuquisaca', '01', 26),
(397, 'El Beni', 'البنى', 'El Beni', '03', 26),
(398, 'Santa Catarina', 'سانتا كاتارينا', 'Santa Catarina', '26', 27),
(399, 'Mato Grosso do Sul', 'ماتو جروسو دو سول', 'Mato Grosso do Sul', '11', 27),
(400, 'Rio Grande do Sul', 'ريو غراندي دو سول', 'Rio Grande do Sul', '23', 27),
(401, 'Espirito Santo', 'اسبيريتو سانتو', 'Espirito Santo', '08', 27),
(402, 'Bahia', 'باهيا', 'Bahia', '05', 27),
(403, 'Rondonia', 'روندونيا', 'Rondonia', '24', 27),
(404, 'Minas Gerais', 'ميناس جيرايس', 'minas Gerais', '15', 27),
(405, 'Paraiba', 'بارايبا', 'Paraiba', '17', 27),
(406, 'Amapa', 'أمابا', 'Amapa', '03', 27),
(407, 'Amazonas', 'أمازوناس', 'Amazonas', '04', 27),
(408, 'Para', 'الفقرة', 'Para', '16', 27),
(409, 'Ceara', 'سيارا', 'Ceara', '06', 27),
(410, 'Rio de Janeiro', 'ريو دي جانيرو', 'Rio de Janeiro', '21', 27),
(411, 'Goias', 'غوياس', 'Goias', '29', 27),
(412, 'Sao Paulo', 'ساو باولو', 'Sao Paulo', '27', 27),
(413, 'Parana', 'بارانا', 'Parana', '18', 27),
(414, 'Rio Grande do Norte', 'ريو غراندي دو نورتي', 'Rio Grande do Norte', '22', 27),
(415, 'Acre', 'فدان', 'Acre', '01', 27),
(416, 'Piaui', 'بياوي', 'Piaui', '20', 27),
(417, 'Pernambuco', 'بيرنامبوكو', 'Pernambouc', '30', 27),
(418, 'Mato Grosso', 'ماتو جروسو', 'Mato Grosso', '14', 27),
(419, 'Maranhao', 'مارانهاو', 'Maranhao', '13', 27),
(420, 'Tocantins', 'توكانتينز', 'Tocantins', '31', 27),
(421, 'Roraima', 'رورايما', 'Roraima', '25', 27),
(422, 'Alagoas', 'ألاغواس', 'Alagoas', '02', 27),
(423, 'Sergipe', 'سيرغيبي', 'Sergipe', '28', 27),
(424, 'Distrito Federal', 'وفي مقاطعة الاتحادية', 'Distrito Federal', '07', 27),
(425, 'Acklins and Crooked Islands', 'Acklins and Crooked Islands', 'Acklins et les îles Crooked', '24', 28),
(426, 'Mayaguana', 'ماياجيوانا', 'Mayaguana', '16', 28),
(427, 'Long Island', 'جزيرة طويلة', 'Long Island', '15', 28),
(428, 'New Providence', 'بروفيدانس الجديدة', 'New Providence', '23', 28),
(429, 'Exuma', 'اكسوما', 'Exuma', '10', 28),
(430, 'Bimini', 'بيميني', 'Bimini', '05', 28),
(431, 'Governor\'s Harbour', 'ميناء الحاكم', 'Port du gouverneur', '27', 28),
(432, 'San Salvador and Rum Cay', 'سان سلفادور وروم كاي', 'San Salvador et Rum Cay', '35', 28),
(433, 'Fresh Creek', 'فريش كريك', 'Fresh Creek', '26', 28),
(434, 'Cat Island', 'جزيرة القط', 'Île de chat', '06', 28),
(435, 'Nichollstown and Berry Islands', 'Nichollstown و جزر بيري', 'Nichollstown et les îles Berry', '32', 28),
(436, 'Kemps Bay', 'كيمبس باي', 'Kemps Bay', '30', 28),
(437, 'Freeport', 'ميناء حر', 'Freeport', '25', 28),
(438, 'Rock Sound', 'صوت صخري', 'Son rock', '33', 28),
(439, 'Harbour Island', 'جزيرة الميناء', 'Harbour Island', '22', 28),
(440, 'High Rock', 'هاي روك', 'Haute roche', '29', 28),
(441, 'Green Turtle Cay', 'جرين تيرتل كاي', 'Green Turtle Cay', '28', 28),
(442, 'Marsh Harbour', 'مارش هاربر', 'Marsh Harbour', '31', 28),
(443, 'Ragged Island', 'جزيرة راكد', 'Ile déchiquetée', '18', 28),
(444, 'Sandy Point', 'ساندي بوينت', 'Sandy Point', '34', 28),
(445, 'Inagua', 'من Inagua', 'Inagua', '13', 28),
(446, 'Wangdi Phodrang', 'وانجدي Phodrang', 'Wangdi Phodrang', '22', 29),
(447, 'Paro', 'بارو', 'Paro', '13', 29),
(448, 'Daga', 'داغا', 'Daga', '08', 29),
(449, 'Mongar', 'مونغار', 'Mongar', '12', 29),
(450, 'Shemgang', 'Shemgang', 'Shemgang', '18', 29),
(451, 'Thimphu', 'تيمفو', 'Thimphu', '20', 29),
(452, 'Tashigang', 'Tashigang', 'Tashigang', '19', 29),
(453, 'Chirang', 'شيرانغ', 'Chirang', '07', 29),
(454, 'Geylegphug', 'Geylegphug', 'Geylegphug', '09', 29),
(455, 'Samdrup', 'سامدروب', 'Samdrup', '17', 29),
(456, 'Bumthang', 'بوم ثانج', 'Bumthang', '05', 29),
(457, 'Samchi', 'Samchi', 'Samchi', '16', 29),
(458, 'Tongsa', 'Tongsa', 'Tongsa', '21', 29),
(459, 'Chhukha', 'جوخا', 'Chhukha', '06', 29),
(460, 'Pemagatsel', 'Pemagatsel', 'Pemagatsel', '14', 29),
(461, 'Ha', 'ها', 'Ha', '10', 29),
(462, 'Punakha', 'بونخا', 'Punakha', '15', 29),
(463, 'Lhuntshi', 'Lhuntshi', 'Lhuntshi', '11', 29),
(464, 'Central', 'وسط', 'Central', '01', 30),
(465, 'South-East', 'الجنوب الشرقي', 'Sud-est', '09', 30),
(466, 'North-East', 'شمال شرق', 'Nord-est', '08', 30),
(467, 'North-West', 'الشمال الغربي', 'Nord Ouest', '11', 30),
(468, 'Ghanzi', 'غانزي', 'Ghanzi', '03', 30),
(469, 'Kweneng', 'كوينينج', 'Kweneng', '06', 30),
(470, 'Kgalagadi', 'كغالاغادي', 'Kgalagadi', '04', 30),
(472, 'Southern', 'جنوبي', 'Du sud', '10', 30),
(473, 'Kgatleng', 'كجاتلينج', 'Kgatleng', '05', 30),
(474, 'Homyel\'skaya Voblasts\'', 'Homyel\'skaya Voblasts \"', 'Homyel\'skaya Voblasts \'', '02', 31),
(475, 'Minsk', 'مينسك', 'Minsk', '04', 31),
(476, 'Brestskaya Voblasts\'', 'Brestskaya Voblasts \"', 'Brestskaya Voblasts \'', '01', 31),
(477, 'Hrodzyenskaya Voblasts\'', 'هيرودزينسكايا فوبلاست', 'Hrodzyenskaya Voblasts \'', '03', 31),
(478, 'Mahilyowskaya Voblasts\'', 'Mahilyowskaya Voblasts \"', 'Mahilyowskaya Voblasts \'', '06', 31),
(479, 'Vitsyebskaya Voblasts\'', 'Vitsyebskaya Voblasts \"', 'Vitsyebskaya Voblasts \'', '07', 31),
(480, 'Toledo', 'توليدو', 'Toledo', '06', 32),
(481, 'Cayo', 'كايو', 'Cayo', '02', 32),
(482, 'Stann Creek', 'ستان كريك', 'Stann Creek', '05', 32),
(483, 'Corozal', 'كوروزال', 'Corozal', '03', 32),
(484, 'Orange Walk', 'أورانج ووك', 'Orange Walk', '04', 32),
(485, 'Belize', 'بليز', 'Belize', '01', 32),
(500, 'Equateur', 'خط الاستواء', 'Équateur', '02', 35),
(501, 'Orientale', 'الشرقية', 'Orientale', '09', 35),
(503, 'Nord-Kivu', 'شمال كيفو', 'Nord-Kivu', '11', 35),
(505, 'Maniema', 'مانيما', 'Maniema', '10', 35),
(506, 'Bandundu', 'باندوندو', 'Bandundu', '01', 35),
(508, 'Katanga', 'كاتانغا', 'Katanga', '05', 35),
(509, 'Sud-Kivu', 'جنوب كيفو', 'Sud-Kivu', '12', 35),
(510, 'Bas-Congo', 'الكونغو السفلى', 'Bas-Congo', '08', 35),
(511, 'Kasai-Oriental', 'كاساي الشرقية', 'Kasai-Oriental', '04', 35),
(512, 'Kinshasa', 'كينشاسا', 'Kinshasa', '06', 35),
(513, 'Nana-Mambere', 'نانا مامبيري', 'Nana-Mambere', '09', 36),
(514, 'Ouaka', 'أواكا', 'Ouaka', '11', 36),
(515, 'Haute-Kotto', 'كوتو العليا', 'Haute-Kotto', '03', 36),
(516, 'Sangha-Mbaere', 'سانغا مباري', 'Sangha-Mbaere', '16', 36),
(517, 'Bamingui-Bangoran', 'بامينغي-بانغوران', 'Bamingui-Bangoran', '01', 36),
(518, 'Mbomou', 'مبومو', 'Mbomou', '08', 36),
(519, 'Basse-Kotto', 'باس كوتو', 'Basse-Kotto', '02', 36),
(520, 'Kemo', 'كيمو', 'Kemo', '06', 36),
(521, 'Haut-Mbomou', 'هوت مبومو', 'Haut-Mbomou', '05', 36),
(522, 'Ouham-Pende', 'أوهام بندي', 'Ouham-Pende', '13', 36),
(523, 'Ouham', 'أوهام', 'Ouham', '12', 36),
(524, 'Ombella-Mpoko', 'أومبلا مبوكي', 'Ombella-Mpoko', '17', 36),
(525, 'Cuvette-Ouest', 'كفيت-كويست', 'Cuvette-Ouest', '14', 36),
(526, 'Mambere-Kadei', 'مامبري كادي', 'Mambere-Kadei', '04', 36),
(527, 'Lobaye', 'وباي', 'Lobaye', '07', 36),
(529, 'Nana-Grebizi', 'نانا غريبيزي', 'Nana-Grebizi', '15', 36),
(530, 'Bangui', 'بانغي', 'Bangui', '18', 36),
(532, 'Plateaux', 'الهضاب', 'Plateaux', '08', 37),
(533, 'Pool', 'حوض السباحة', 'bassin', '11', 37),
(534, 'Sangha', 'سانغا', 'Sangha', '10', 37),
(535, 'Lekoumou', 'يكومو', 'Lekoumou', '05', 37),
(536, 'Likouala', 'يكوالا', 'Likouala', '06', 37),
(537, 'Kouilou', 'كويلو', 'Kouilou', '04', 37),
(538, 'Niari', 'نياري', 'Niari', '07', 37),
(539, 'Bouenza', 'بوينزا', 'Bouenza', '01', 37),
(540, 'Brazzaville', 'برازافيل', 'Brazzaville', '12', 37),
(541, 'Cuvette-Ouest', 'كفيت-كويست', 'Cuvette-Ouest', '14', 37),
(542, 'Cuvette', 'كفيت', 'Cuvette', '13', 37),
(543, 'Thurgau', 'ثورجو', 'Thurgovie', '19', 38),
(544, 'Aargau', 'أرجاو', 'Argovie', '01', 38),
(545, 'Bern', 'برن', 'Berne', '05', 38),
(546, 'Zurich', 'زيوريخ', 'Zurich', '25', 38),
(547, 'Fribourg', 'فريبورغ', 'Fribourg', '06', 38),
(548, 'Ausser-Rhoden', 'Ausser-رودين', 'Ausser-Rhoden', '02', 38),
(549, 'Valais', 'فاليه', 'Valais', '22', 38),
(550, 'Uri', 'أوري', 'Uri', '21', 38),
(551, 'Graubunden', 'غراوبوندن', 'Les Grisons', '09', 38),
(552, 'Ticino', 'تيسان', 'Tessin', '20', 38),
(553, 'Luzern', 'لوزيرن', 'Lucerne', '11', 38),
(554, 'Obwalden', 'أوبوالدن', 'Obwalden', '14', 38),
(555, 'Solothurn', 'سولوتورن', 'Soleure', '18', 38),
(556, 'Basel-Stadt', 'بازل شتات', 'Bâle-Ville', '04', 38),
(557, 'Inner-Rhoden', 'الداخلية-رودين', 'Rhodes-Intérieures', '10', 38),
(558, 'Zug', 'زوغ', 'Zoug', '24', 38),
(559, 'Vaud', 'فو', 'Vaud', '23', 38),
(560, 'Jura', 'العصر الجوارسي أو الجوري', 'Jura', '26', 38),
(561, 'Basel-Landschaft', 'كانتون ريف بازل', 'Bâle-Campagne', '03', 38),
(562, 'Schwyz', 'شفيتس', 'Schwyz', '17', 38),
(563, 'Sankt Gallen', 'سانكت غالن', 'Saint-Gall', '15', 38),
(564, 'Schaffhausen', 'شافهاوزن', 'Schaffhouse', '16', 38),
(565, 'Glarus', 'جلاروس', 'Glaris', '08', 38),
(566, 'Geneve', 'جنيف', 'Geneve', '07', 38),
(567, 'Neuchatel', 'نيوشاتل', 'Neuchâtel', '12', 38),
(568, 'Nidwalden', 'نيدوالدن', 'Nidwalden', '13', 38),
(579, 'Vallee du Bandama', 'فالي دو بانداما', 'Vallée du Bandama', '90', 39),
(581, 'N\'zi-Comoe', 'N\'zi كومو', 'N\'zi-Comoe', '86', 39),
(585, 'Moyen-Comoe', 'موين كومو', 'Moyen-Comoe', '85', 39),
(587, 'Lagunes', 'اجونيه', 'Lagunes', '82', 39),
(588, 'Zanzan', 'زانزان', 'Zanzan', '92', 39),
(589, 'Sud-Comoe', 'سود كومو', 'Sud-Comoe', '89', 39),
(590, 'Lacs', 'البحيرات', 'Lacs', '81', 39),
(598, 'Fromager', 'فورماجر', 'Fromager', '79', 39),
(600, 'Agneby', 'Agneby', 'Agneby', '74', 39),
(601, 'Bas-Sassandra', 'بس ساساندرا', 'Bas Sassandra', '76', 39),
(603, 'Marahoue', 'مراهو', 'Marahoue', '83', 39),
(608, 'Bafing', 'بافنج', 'Bafing', '75', 39),
(614, 'Savanes', 'السافانا', 'Savanes', '87', 39),
(619, 'Sud-Bandama', 'سود بانداما', 'Sud-Bandama', '88', 39),
(620, 'Haut-Sassandra', 'أوت ساساندرا', 'Haut-Sassandra', '80', 39),
(621, 'Moyen-Cavally', 'موين كافالي', 'Moyen-Cavally', '84', 39),
(622, 'Dix-Huit Montagnes', 'ديكس - هويت مونتاجنيس', 'Dix-Huit Montagnes', '78', 39),
(623, 'Denguele', 'دانغيل', 'Denguele', '77', 39),
(624, 'Worodougou', 'ورودوجو', 'Worodougou', '91', 39),
(626, 'Bio-Bio', 'بيو بيو', 'Bio-Bio', '06', 41),
(627, 'Maule', 'مولي', 'Maule', '11', 41),
(628, 'Los Lagos', 'لوس لاغوس', 'Los Lagos', '09', 41),
(629, 'Tarapaca', 'تاراباكا', 'Tarapaca', '13', 41),
(630, 'Valparaiso', 'فالبارايسو', 'Valparaiso', '01', 41),
(631, 'Atacama', 'أتاكاما', 'Atacama', '05', 41),
(632, 'Coquimbo', 'كوكيمبو', 'Coquimbo', '07', 41),
(633, 'Libertador General Bernardo O\'Higgins', 'Libertador General Bernardo O\'Higgins', 'Libertador Général Bernardo O\'Higgins', '08', 41),
(634, 'Antofagasta', 'أنتوفاغاستا', 'Antofagasta', '03', 41),
(635, 'Araucania', 'أراوكاريا', 'Araucanie', '04', 41),
(636, 'Aisen del General Carlos Ibanez del Campo', 'Aisen del General Carlos Ibanez del Campo', 'Aisen del General Carlos Ibanez del Campo', '02', 41),
(637, 'Region Metropolitana', 'منطقة متروبوليتانا', 'Région métropolitaine', '12', 41),
(638, 'Magallanes y de la Antartica Chilena', 'Magallanes y de la Antartica Chilena', 'Magallanes et de l\'Antarctique Chilena', '10', 41),
(639, 'Est', 'EST', 'Est', '04', 42),
(640, 'Adamaoua', 'أداماوا', 'Adamaoua', '10', 42),
(641, 'Centre', 'مركز', 'Centre', '11', 42),
(642, 'Sud', 'سود', 'Sud', '14', 42),
(643, 'Nord-Ouest', 'الإقليم الشمالي الغربي', 'Nord-Ouest', '07', 42),
(644, 'Extreme-Nord', 'المتطرف نور', 'Extreme-Nord', '12', 42),
(645, 'Sud-Ouest', 'الإقليم الجنوبي الغربي', 'Sud-Ouest', '09', 42),
(646, 'Littoral', 'ساحلي', 'Littoral', '05', 42),
(647, 'Nord', 'نورد', 'Nord', '13', 42),
(648, 'Ouest', 'كويست', 'Ouest', '08', 42),
(649, 'Sichuan', 'سيتشوان', 'Sichuan', '32', 43),
(650, 'Xinjiang', 'شينجيانغ', 'Xinjiang', '13', 43),
(651, 'Nei Mongol', 'ني المغول', 'Nei Mongol', '20', 43),
(652, 'Yunnan', 'يونان', 'Yunnan', '29', 43),
(653, 'Guizhou', 'قويتشو', 'Guizhou', '18', 43),
(654, 'Heilongjiang', 'هيلونغجيانغ', 'Heilongjiang', '08', 43),
(655, 'Shandong', 'شاندونغ', 'Shandong', '25', 43),
(656, 'Liaoning', 'لياونينغ', 'Liaoning', '19', 43),
(657, 'Shaanxi', 'شنشى', 'Shaanxi', '26', 43),
(658, 'Qinghai', 'تشينغهاي', 'Qinghai', '06', 43),
(659, 'Gansu', 'قانسو', 'Gansu', '15', 43),
(660, 'Jiangsu', 'جيانغسو', 'Jiangsu', '04', 43),
(661, 'Fujian', 'فوجيان', 'Fujian', '07', 43),
(662, 'Hunan', 'هونان', 'Hunan', '11', 43),
(663, 'Jiangxi', 'جيانغشى', 'Jiangxi', '03', 43),
(664, 'Guangxi', 'قوانغشى', 'Guangxi', '16', 43),
(665, 'Zhejiang', 'تشجيانغ', 'Zhejiang', '02', 43),
(666, 'Hebei', 'خبى', 'Hebei', '10', 43),
(667, 'Hubei', 'هوبى', 'Hubei', '12', 43),
(668, 'Anhui', 'انهوى', 'Anhui', '01', 43),
(669, 'Tianjin', 'تيانجين', 'Tianjin', '28', 43),
(670, 'Hainan', 'هاينان', 'Hainan', '31', 43),
(671, 'Guangdong', 'قوانغدونغ', 'Guangdong', '30', 43),
(672, 'Xizang', 'زيزانغ', 'Xizang', '14', 43),
(673, 'Jilin', 'جيلين', 'Jilin', '05', 43),
(674, 'Chongqing', 'تشونغتشينغ', 'Chongqing', '33', 43),
(675, 'Beijing', 'بكين', 'Pékin', '22', 43),
(676, 'Shanxi', 'شانشى', 'Shanxi', '24', 43),
(677, 'Shanghai', 'شنغهاي', 'Shanghai', '23', 43),
(678, 'Henan', 'خنان', 'Henan', '09', 43),
(679, 'Ningxia', 'نينغشيا', 'Ningxia', '21', 43),
(680, 'Cundinamarca', 'كونديناماركا', 'Cundinamarca', '33', 44),
(681, 'Norte de Santander', 'نورتي دي سانتاندر', 'Norte de Santander', '21', 44),
(682, 'Narino', 'نارينو', 'Narino', '20', 44),
(684, 'Risaralda', 'ريزارالدا', 'Risaralda', '24', 44),
(685, 'Antioquia', 'أنتيوكيا', 'Antioquia', '02', 44),
(686, 'Amazonas', 'أمازوناس', 'Amazonas', '01', 44),
(687, 'La Guajira', 'لا غواخيرا', 'La Guajira', '17', 44),
(688, 'Choco', 'شوكو', 'Choco', '11', 44),
(689, 'Cauca', 'كاوكا', 'Cauca', '09', 44),
(690, 'Valle del Cauca', 'فالي ديل كاوكا', 'Valle del Cauca', '29', 44),
(691, 'Arauca', 'اروكا', 'Arauca', '03', 44),
(692, 'Meta', 'ميتا', 'Meta', '19', 44),
(693, 'Caqueta', 'كاكويتا', 'Caqueta', '08', 44),
(694, 'Casanare', 'كازاناري', 'Casanare', '32', 44),
(695, 'Vaupes', 'فاوبيس', 'Vaupes', '30', 44),
(696, 'Tolima', 'توليما', 'Tolima', '28', 44),
(697, 'Huila', 'هويلا', 'Huila', '16', 44),
(699, 'Atlantico', 'اتلانتيكو', 'Atlantico', '04', 44),
(700, 'Cordoba', 'قرطبة', 'Cordoba', '12', 44),
(701, 'Santander', 'سانتاندر', 'Santander', '26', 44),
(702, 'Cesar', 'سيزار', 'Cesar', '10', 44),
(703, 'Sucre', 'سوكري', 'Sucre', '27', 44),
(705, 'Putumayo', 'بوتومايو', 'Putumayo', '22', 44),
(707, 'Guaviare', 'غوابياري', 'Guaviare', '14', 44),
(708, 'San Andres y Providencia', 'San Andres y Providencia', 'San Andres et Providencia', '25', 44),
(709, 'Vichada', 'فيتشادا', 'Vichada', '31', 44),
(710, 'Quindio', 'كوينديو', 'Quindio', '23', 44),
(711, 'Guainia', 'غواينيا', 'Guainia', '15', 44),
(712, 'Distrito Especial', 'Distrito Especial', 'Distrito Especial', '34', 44),
(713, 'Guanacaste', 'غواناكاست', 'Guanacaste', '03', 45),
(714, 'Limon', 'ليمون', 'Limon', '06', 45),
(715, 'Puntarenas', 'بونتاريناس', 'Puntarenas', '07', 45),
(716, 'Alajuela', 'ألاخويلا', 'Alajuela', '01', 45),
(717, 'Heredia', 'هيريديا', 'Heredia', '04', 45),
(718, 'San Jose', 'سان خوسيه', 'San Jose', '08', 45),
(719, 'Cartago', 'قرطاج', 'Cartago', '02', 45),
(720, 'Cienfuegos', 'سيينفويغوس', 'Cienfuegos', '08', 46),
(721, 'La Habana', 'لا هافانا', 'La Habana', '11', 46),
(722, 'Santiago de Cuba', 'سانتياغو دي كوبا', 'Santiago de Cuba', '15', 46),
(723, 'Camaguey', 'كاماغواي', 'Camaguey', '05', 46),
(724, 'Ciudad de la Habana', 'سيوداد دي لا هافانا', 'Ciudad de la Habana', '02', 46),
(725, 'Villa Clara', 'فيلا كلارا', 'Villa Clara', '16', 46),
(726, 'Pinar del Rio', 'بينار ديل ريو', 'Pinar del Rio', '01', 46),
(727, 'Matanzas', 'ماتانزاس', 'Matanzas', '03', 46),
(728, 'Guantanamo', 'غوانتانامو', 'Guantanamo', '10', 46),
(729, 'Las Tunas', 'لاس توناس', 'Las Tunas', '13', 46),
(730, 'Ciego de Avila', 'سييغو دي أفيلا', 'Ciego de Avila', '07', 46),
(731, 'Sancti Spiritus', 'سانكتي سبيريتوس', 'Sancti Spiritus', '14', 46),
(732, 'Holguin', 'هولغوين', 'Holguin', '12', 46),
(733, 'Granma', 'غرانما', 'Granma', '09', 46),
(734, 'Isla de la Juventud', 'جزيرة دي لا جوفينتود', 'Isla de la Juventud', '04', 46),
(735, 'Sao Domingos', 'ساو دومينغوس', 'Sao Domingos', '17', 47),
(738, 'Limassol', 'ليماسول', 'Limassol', '05', 49),
(739, 'Nicosia', 'نيقوسيا', 'Nicosie', '04', 49),
(740, 'Paphos', 'بافوس', 'Paphos', '06', 49),
(741, 'Famagusta', 'فاماغوستا', 'Famagusta', '01', 49),
(742, 'Larnaca', 'لارنكا', 'Larnaca', '03', 49),
(743, 'Kyrenia', 'كيرينيا', 'Kyrenia', '02', 49),
(744, 'Karlovarsky kraj', 'كارلوفارسكي كراج', 'Karlovarsky kraj', '81', 50),
(745, 'Pardubicky kraj', 'بردوبيكي كراج', 'Pardubicky kraj', '86', 50),
(747, 'Jihomoravsky kraj', 'Jihomoravsky كراج', 'Jihomoravsky kraj', '78', 50),
(748, 'Jihocesky kraj', 'Jihocesky kraj', 'Jihocesky kraj', '79', 50),
(749, 'Olomoucky kraj', 'أولوموكي كراج', 'Olomoucky kraj', '84', 50),
(750, 'Moravskoslezsky kraj', 'Moravskoslezsky كراج', 'Moravskoslezsky kraj', '85', 50),
(752, 'Kralovehradecky kraj', 'Kralovehradecky كراج', 'Kralovehradecky kraj', '82', 50),
(753, 'Ustecky kraj', 'أوستيكي كراج', 'Ustecky kraj', '89', 50),
(754, 'Stredocesky kraj', 'Stredocesky كراج', 'Stredocesky kraj', '88', 50),
(755, 'Vysocina', 'فيسوسينا', 'Vysocina', '80', 50),
(756, 'Plzensky kraj', 'Plzensky كراج', 'Kraj Plzensky', '87', 50),
(760, 'Zlinsky kraj', 'زلينسكي كراج', 'Zlinsky kraj', '90', 50),
(761, 'Hlavni mesto Praha', 'هلفني ميستو براها', 'Hlavni mesto Praha', '52', 50),
(763, 'Liberecky kraj', 'Liberecky كراج', 'Liberecky kraj', '83', 50),
(773, 'Nordrhein-Westfalen', 'نوردراين فيستفالن', 'Nordrhein-Westfalen', '07', 51),
(774, 'Baden-Wurttemberg', 'بادن فورتمبيرغ', 'Bade-Wurtemberg', '01', 51),
(775, 'Bayern', 'بايرن ميونيخ', 'Bayern', '02', 51),
(776, 'Rheinland-Pfalz', 'راينلاند-بفالز', 'Rheinland-Pfalz', '08', 51),
(777, 'Niedersachsen', 'Niedersachsen', 'Niedersachsen', '06', 51),
(778, 'Schleswig-Holstein', 'شليسفيغ هولشتاين', 'Schleswig-Holstein', '10', 51),
(779, 'Brandenburg', 'براندنبورغ', 'Brandebourg', '11', 51),
(780, 'Sachsen-Anhalt', 'سكسونيا أنهالت', 'Sachsen-Anhalt', '14', 51),
(781, 'Sachsen', 'ساكسن', 'Sachsen', '13', 51),
(782, 'Thuringen', 'THÜRINGEN', 'Thuringen', '15', 51),
(783, 'Hessen', 'هيسن', 'Hesse', '05', 51),
(784, 'Mecklenburg-Vorpommern', 'مكلنبورغ-فوربومرن', 'Mecklembourg-Poméranie-Occidentale', '12', 51),
(785, 'Hamburg', 'هامبورغ', 'Hambourg', '04', 51),
(786, 'Berlin', 'البرلينية', 'Berlin', '16', 51),
(787, 'Saarland', 'سارلاند', 'Sarre', '09', 51),
(788, 'Bremen', 'بريمن', 'Brême', '03', 51),
(789, 'Ali Sabieh', 'علي صبيح', 'Ali Sabieh', '01', 52),
(790, 'Tadjoura', 'تاجورا', 'Tadjoura', '05', 52),
(792, 'Obock', 'أوبوك', 'Obock', '04', 52),
(794, 'Arta', 'أرتا', 'Arta', '08', 52),
(795, 'Dikhil', 'دخيل', 'Dikhil', '06', 52),
(796, 'Syddanmark', 'سيدانمارك', 'Syddanmark', '21', 53),
(797, 'Midtjylland', 'ميتجيلاند', 'Midtjylland', '18', 53),
(798, 'Nordjylland', 'نوردلاند', 'Nordjylland', '19', 53),
(799, 'Sjelland', 'Sjelland', 'Sjelland', '20', 53),
(800, 'Hovedstaden', 'هوفدستادين', 'Hovedstaden', '17', 53),
(801, 'Saint Andrew', 'القديس أندرو', 'Saint andrew', '02', 54),
(802, 'Saint David', 'القديس داود', 'Saint David', '03', 54),
(803, 'Saint Joseph', 'القديس يوسف', 'Saint Joseph', '06', 54),
(804, 'Saint George', 'القديس جورج', 'Saint George', '04', 54),
(805, 'Saint Patrick', 'سانت باتريك', 'Saint Patrick', '09', 54),
(806, 'Saint Peter', 'القديس بطرس', 'Saint Pierre', '11', 54),
(807, 'Saint John', 'القديس يوحنا', 'Saint Jean', '05', 54),
(808, 'Saint Mark', 'سان مارك', 'Saint mark', '08', 54),
(809, 'Saint Paul', 'القديس بول', 'Saint Paul', '10', 54),
(810, 'Saint Luke', 'القديس لوقا', 'Saint Luc', '07', 54),
(811, 'Sanchez Ramirez', 'سانشيز راميريز', 'Sanchez Ramirez', '21', 55),
(812, 'Espaillat', 'إسبايلات', 'Espaillat', '08', 55),
(813, 'Duarte', 'دوارتي', 'Duarte', '06', 55),
(814, 'Samana', 'سمانا', 'Samana', '20', 55),
(815, 'Maria Trinidad Sanchez', 'ماريا ترينيداد سانشيز', 'Maria Trinidad Sanchez', '14', 55),
(816, 'La Romana', 'لا رومانا', 'La Romana', '12', 55),
(817, 'Azua', 'ازوا', 'Azua', '01', 55),
(818, 'San Cristobal', 'سان كريستوبال', 'San Cristobal', '33', 55),
(819, 'El Seibo', 'الصيبو', 'El Seibo', '28', 55),
(820, 'Monte Plata', 'مونت بلاتا', 'Monte Plata', '32', 55),
(821, 'Distrito Nacional', 'Distrito Nacional', 'Distrito Nacional', '05', 55),
(822, 'Elias Pina', 'إلياس بينا', 'Elias Pina', '11', 55),
(823, 'Santiago', 'سانتياغو', 'Santiago', '25', 55),
(824, 'Santiago Rodriguez', 'سانتياغو رودريجيز', 'Santiago Rodriguez', '26', 55),
(825, 'Peravia', 'بيرافيا', 'Peravia', '17', 55),
(826, 'Monte Cristi', 'مونت كريستي', 'Monte Cristi', '15', 55),
(827, 'Salcedo', 'سالسيدو', 'Salcedo', '19', 55),
(828, 'Puerto Plata', 'بويرتو بلاتا', 'Puerto Plata', '18', 55),
(829, 'San Pedro De Macoris', 'سان بيدرو دي ماكوريس', 'San Pedro De Macoris', '24', 55),
(830, 'Pedernales', 'بدرنالس', 'Pedernales', '16', 55),
(831, 'Independencia', 'الاستقلال', 'Independencia', '09', 55),
(832, 'La Vega', 'لا فيغا', 'La Vega', '30', 55),
(833, 'Dajabon', 'داجابون', 'Dajabon', '04', 55),
(834, 'Hato Mayor', 'حاتو العمدة', 'Hato Mayor', '29', 55),
(835, 'Barahona', 'باراهونا', 'Barahona', '03', 55),
(836, 'San Juan', 'سان خوان', 'San Juan', '23', 55),
(837, 'La Altagracia', 'لا التاغراسيا', 'La Altagracia', '10', 55),
(838, 'Valverde', 'فالفيردي', 'Valverde', '27', 55),
(839, 'Baoruco', 'Baoruco', 'Baoruco', '02', 55),
(840, 'Monsenor Nouel', 'مونسنور نويل', 'Mgr Nouel', '31', 55),
(841, 'Ain Temouchent', 'عين تموشنت', 'Ain Temouchent', '36', 56),
(842, 'Oran', 'وهران', 'Oran', '09', 56),
(843, 'Medea', 'المدية', 'Médée', '06', 56),
(844, 'Chlef', 'الشلف', 'Chlef', '41', 56),
(845, 'Bechar', 'بشار', 'Béchar', '38', 56),
(846, 'Tamanghasset', 'تمنراست', 'Tamanghasset', '53', 56),
(847, 'Bejaia', 'بجاية', 'Bejaia', '18', 56),
(848, 'Tizi Ouzou', 'تيزي وزو', 'Tizi Ouzou', '14', 56),
(849, 'Boumerdes', 'بومرداس', 'Boumerdes', '40', 56),
(850, 'Ain Defla', 'عين الدفلة', 'Ain Defla', '35', 56),
(851, 'Annaba', 'عنابة', 'Annaba', '37', 56),
(852, 'Setif', 'سطيف', 'Sétif', '12', 56),
(853, 'Relizane', 'غليزان', 'Relizane', '51', 56),
(854, 'Mascara', 'ماسكارا', 'Mascara', '26', 56),
(855, 'Mostaganem', 'مستغانم', 'Mostaganem', '07', 56),
(856, 'Tiaret', 'تيارت', 'Tiaret', '13', 56),
(857, 'Bordj Bou Arreridj', 'برج بوعريريج', 'Bordj Bou Arreridj', '39', 56),
(858, 'Tipaza', 'تيبازة', 'Tipaza', '55', 56),
(860, 'Bouira', 'البويرة', 'Bouira', '21', 56),
(861, 'Tissemsilt', 'تيسمسيلت', 'Tissemsilt', '56', 56),
(862, 'Jijel', 'جيجل', 'Jijel', '24', 56),
(863, 'Saida', 'صيدا', 'Saida', '10', 56),
(864, 'Illizi', 'إليزي', 'Illizi', '46', 56),
(865, 'Tlemcen', 'تلمسان', 'Tlemcen', '15', 56),
(866, 'Adrar', 'أدرار', 'Adrar', '34', 56),
(867, 'Laghouat', 'الأغواط', 'Laghouat', '25', 56),
(868, 'Constantine', 'قسنطينة', 'Constantine', '04', 56),
(869, 'Khenchela', 'خنشلة', 'Khenchela', '47', 56),
(870, 'Batna', 'باتنة', 'Batna', '03', 56),
(871, 'Alger', 'الجزائر', 'Alger', '01', 56),
(872, 'M\'sila', 'مسيلة', 'M\'sila', '27', 56),
(873, 'Skikda', 'سكيكدة', 'Skikda', '31', 56),
(874, 'Oum el Bouaghi', 'ام البواقي', 'Oum el Bouaghi', '29', 56),
(875, 'Naama', 'نعمة', 'Naama', '49', 56),
(876, 'Sidi Bel Abbes', 'سيدي بلعباس', 'Sidi Bel Abbes', '30', 56),
(877, 'Mila', 'ميلة', 'Mila', '48', 56),
(878, 'Ouargla', 'ورقلة', 'Ouargla', '50', 56),
(879, 'Djelfa', 'الجلفة', 'Djelfa', '22', 56),
(880, 'El Bayadh', 'البيض', 'El Bayadh', '42', 56),
(881, 'Souk Ahras', 'سوق أهراس', 'Souk Ahras', '52', 56),
(882, 'El Oued', 'الواد', 'El Oued', '43', 56),
(883, 'Blida', 'البليدة', 'Blida', '20', 56),
(884, 'Biskra', 'بسكرة', 'Biskra', '19', 56),
(885, 'Tebessa', 'تبسة', 'Tebessa', '33', 56),
(886, 'Guelma', 'قالمة', 'Guelma', '23', 56),
(887, 'Tindouf', 'تندوف', 'Tindouf', '54', 56),
(888, 'Ghardaia', 'غرداية', 'Ghardaia', '45', 56),
(889, 'Manabi', 'مانابي', 'Manabi', '14', 57),
(890, 'Zamora-Chinchipe', 'زامورا-شينشيب', 'Zamora-Chinchipe', '20', 57),
(891, 'Morona-Santiago', 'مورونا سانتياغو', 'Morona-Santiago', '15', 57),
(892, 'El Oro', 'اورو', 'El Oro', '08', 57),
(893, 'Azuay', 'ازواي', 'Azuay', '02', 57),
(894, 'Sucumbios', 'سوكومبيوس', 'Sucumbios', '22', 57),
(895, 'Guayas', 'غواياس', 'Guayas', '10', 57),
(896, 'Los Rios', 'لوس ريوس', 'Los Rios', '13', 57),
(897, 'Loja', 'وخا', 'Loja', '12', 57),
(898, 'Chimborazo', 'شيمبورازو', 'Chimborazo', '06', 57),
(899, 'Tungurahua', 'تونغوراهوا', 'Tungurahua', '19', 57),
(900, 'Esmeraldas', 'ازميرالدا', 'Esmeraldas', '09', 57),
(901, 'Pichincha', 'بيشينشا', 'Pichincha', '18', 57),
(902, 'Imbabura', 'إمبابورا', 'Imbabura', '11', 57),
(903, 'Cotopaxi', 'كوتوباكسي', 'Cotopaxi', '07', 57),
(904, 'Carchi', 'كارشي', 'Carchi', '05', 57),
(905, 'Napo', 'نابو', 'Napo', '23', 57),
(906, 'Canar', 'كنار', 'Canar', '04', 57),
(907, 'Pastaza', 'باستازا', 'Pastaza', '17', 57),
(908, 'Orellana', 'أوريانا', 'Orellana', '24', 57),
(909, 'Bolivar', 'بوليفار', 'Bolivar', '03', 57),
(910, 'Galapagos', 'غالاباغوس', 'Galapagos', '01', 57),
(911, 'Harjumaa', 'Harjumaa', 'Harjumaa', '01', 58),
(912, 'Tartumaa', 'تارتوما', 'Tartumaa', '18', 58),
(913, 'Hiiumaa', 'هيوما', 'Hiiumaa', '02', 58),
(914, 'Raplamaa', 'رابلاما', 'Raplamaa', '13', 58),
(915, 'Valgamaa', 'فلغما', 'Valgamaa', '19', 58),
(916, 'Laanemaa', 'انيما', 'Laanemaa', '07', 58),
(917, 'Polvamaa', 'بولفاما', 'Polvamaa', '12', 58),
(918, 'Parnumaa', 'بارنوما', 'Parnumaa', '11', 58),
(919, 'Laane-Virumaa', 'اني فيريوما', 'Laane-Virumaa', '08', 58),
(920, 'Jarvamaa', 'يارفا', 'Jarvamaa', '04', 58),
(921, 'Viljandimaa', 'فيلجاندي', 'Viljandimaa', '20', 58),
(922, 'Saaremaa', 'ساريما', 'Saaremaa', '14', 58),
(923, 'Jogevamaa', 'جوغفما', 'Jogevamaa', '05', 58),
(924, 'Ida-Virumaa', 'المؤسسة الدولية للتنمية فيروما', 'Ida-Virumaa', '03', 58),
(925, 'Vorumaa', 'فوروما', 'Vorumaa', '21', 58),
(926, 'Ash Sharqiyah', 'الشرقية', 'Ash Sharqiyah', '14', 59),
(927, 'Al Gharbiyah', 'الغربية', 'Al Gharbiyah', '05', 59),
(928, 'Ad Daqahliyah', 'الدقهلية', 'Ad Daqahliyah', '01', 59),
(929, 'Al Jizah', 'الجيزة', 'Al Jizah', '08', 59),
(930, 'Al Minya', 'المنيا', 'Al Minya', '10', 59),
(931, 'Kafr ash Shaykh', 'كفر الشيخ', 'Kafr ash Shaykh', '21', 59),
(932, 'Al Buhayrah', 'البحيرة', 'Al Buhayrah', '03', 59),
(933, 'Qina', 'قنا', 'Qina', '23', 59),
(934, 'Al Qahirah', 'القاهره', 'Al Qahirah', '11', 59),
(935, 'Al Iskandariyah', 'الاسكندرية', 'Al Iskandariyah', '06', 59),
(936, 'Al Fayyum', 'الفيوم', 'Al Fayyum', '04', 59),
(937, 'Asyut', 'أسيوط', 'Asyut', '17', 59),
(938, 'Al Minufiyah', 'المنوفية', 'Al Minufiyah', '09', 59),
(939, 'Bani Suwayf', 'بني سويف', 'Bani Suwayf', '18', 59),
(940, 'Al Qalyubiyah', 'القليوبية', 'Al Qalyubiyah', '12', 59),
(941, 'Aswan', 'أسوان', 'Assouan', '16', 59),
(942, 'Shamal Sina\'', 'شمال سينا', 'Shamal Sina \'', '27', 59),
(943, 'Suhaj', 'سوهاج', 'Suhaj', '24', 59),
(944, 'Janub Sina\'', 'جنب سينا', 'Janub Sina \'', '26', 59),
(945, 'Al Bahr al Ahmar', 'البحر الاحمر', 'Al Bahr al Ahmar', '02', 59),
(946, 'Al Isma\'iliyah', 'الاسماعيلية', 'Al Isma\'iliyah', '07', 59),
(947, 'Dumyat', 'دمياط', 'Dumyat', '20', 59),
(948, 'Matruh', 'مطروح', 'Matruh', '22', 59),
(949, 'As Suways', 'كما سوايز', 'Comme suways', '15', 59),
(950, 'Al Wadi al Jadid', 'الوادي الجديد', 'Al Wadi al Jadid', '13', 59),
(951, 'Bur Sa\'id', 'بور سعيد', 'Bur Sa\'id', '19', 59),
(954, 'Aragon', 'أراغون', 'Aragon', '52', 62),
(955, 'Galicia', 'غاليسيا', 'Galice', '58', 62),
(956, 'Castilla y Leon', 'كاستيا ي ليون', 'Castille et Leon', '55', 62),
(957, 'Extremadura', 'إكستريمادورا', 'Estrémadure', '57', 62),
(958, 'Pais Vasco', 'بايس فاسكو', 'Pais Vasco', '59', 62),
(959, 'Cantabria', 'كانتابريا', 'Cantabrie', '39', 62),
(960, 'Navarra', 'نافارا', 'Navarre', '32', 62),
(961, 'Asturias', 'أستورياس', 'Asturies', '34', 62),
(962, 'La Rioja', 'لا ريوخا', 'La Rioja', '27', 62),
(963, 'Castilla-La Mancha', 'كاستيا لا مانشا', 'Castilla-La Mancha', '54', 62),
(964, 'Murcia', 'مورسيا', 'Murcie', '31', 62),
(965, 'Andalucia', 'الأندلس', 'Andalousie', '51', 62),
(966, 'Comunidad Valenciana', 'Comunidad فالنسيانا', 'Comunidad Valenciana', '60', 62),
(967, 'Catalonia', 'كاتالونيا', 'Catalogne', '56', 62),
(968, 'Canarias', 'جزر الكناري', 'Canarias', '53', 62),
(969, 'Madrid', 'مدريد', 'Madrid', '29', 62),
(970, 'Islas Baleares', 'ايسلاس باليريس', 'Islas Baleares', '07', 62),
(984, 'Oulu', 'أولو', 'Oulu', '08', 64),
(985, 'Western Finland', 'فنلندا الغربية', 'Finlande occidentale', '15', 64),
(986, 'Lapland', 'ابلاند', 'Laponie', '06', 64),
(987, 'Eastern Finland', 'شرق فنلندا', 'Finlande orientale', '14', 64),
(988, 'Southern Finland', 'جنوب فنلندا', 'Finlande méridionale', '13', 64),
(989, 'Aland', 'أرض', 'Un terrain', '01', 64),
(992, 'Northern', 'شمالي', 'Nord', '03', 65),
(993, 'Western', 'الغربي', 'Occidental', '05', 65),
(994, 'Central', 'وسط', 'Central', '01', 65),
(995, 'Eastern', 'الشرقية', 'Est', '02', 65),
(997, 'Yap', 'ثرثرة', 'Japper', '04', 67),
(998, 'Pohnpei', 'بوهنباي', 'Pohnpei', '02', 67),
(999, 'Chuuk', 'شوك', 'Chuuk', '03', 67),
(1000, 'Kosrae', 'كوسراي', 'Kosrae', '01', 67),
(1002, 'Aquitaine', 'آكيتن', 'Aquitaine', '97', 69),
(1003, 'Nord-Pas-de-Calais', 'نور-با-دو-كاليه', 'Nord-Pas-de-Calais', 'B4', 69),
(1004, 'Lorraine', 'لورين', 'Lorraine', 'B2', 69),
(1005, 'Haute-Normandie', 'هوت نورماندي', 'Haute-Normandie', 'A7', 69),
(1006, 'Picardie', 'بيكاردي', 'Picardie', 'B6', 69),
(1007, 'Franche-Comte', 'فرانش-كونت', 'Franche-Comté', 'A6', 69),
(1008, 'Pays de la Loire', 'باي دو لا لوار', 'Pays de la Loire', 'B5', 69),
(1009, 'Champagne-Ardenne', 'الشمبانيا اردين', 'Champagne-Ardenne', 'A4', 69),
(1010, 'Centre', 'مركز', 'Centre', 'A3', 69),
(1011, 'Languedoc-Roussillon', 'لانغدوك روسيون', 'Languedoc-Roussillon', 'A9', 69),
(1012, 'Poitou-Charentes', 'بواتو-شارانت', 'Poitou-Charentes', 'B7', 69),
(1013, 'Rhone-Alpes', 'رون ألب', 'Rhône-Alpes', 'B9', 69),
(1014, 'Basse-Normandie', 'باس نورماندي', 'Basse-Normandie', '99', 69),
(1015, 'Ile-de-France', 'إيل دو فرانس', 'Ile de France', 'A8', 69),
(1016, 'Bourgogne', 'بورغون', 'Bourgogne', 'A1', 69),
(1017, 'Auvergne', 'أوفيرني', 'Auvergne', '98', 69),
(1018, 'Provence-Alpes-Cote d\'Azur', 'بروفانس ألب كوت دازور', 'Provence-Alpes-Côte d\'Azur', 'B8', 69),
(1019, 'Corse', 'كورس', 'Corse', 'A5', 69),
(1020, 'Alsace', 'الألزاس', 'Alsace', 'C1', 69),
(1021, 'Bretagne', 'بريتان', 'Bretagne', 'A2', 69),
(1022, 'Midi-Pyrenees', 'ميدي-بيرينيه', 'Midi-Pyrénées', 'B3', 69),
(1023, 'Limousin', 'ليموزين', 'Limousin', 'B1', 69),
(1024, 'Estuaire', 'إيستوير', 'Estuaire', '01', 70),
(1025, 'Woleu-Ntem', 'ليو نتيم', 'Woleu-Ntem', '09', 70),
(1026, 'Moyen-Ogooue', 'موين-أوغوي', 'Moyen-Ogooué', '03', 70),
(1027, 'Ogooue-Maritime', 'أوغوي البحرية', 'Ogooue-Maritime', '08', 70),
(1028, 'Ogooue-Lolo', 'أوغوي لولو', 'Ogooué-Lolo', '07', 70),
(1029, 'Ogooue-Ivindo', 'أوجوي إيفندو', 'Ogooué-Ivindo', '06', 70),
(1030, 'Haut-Ogooue', 'أوت أوغوي', 'Haut-Ogooué', '02', 70),
(1031, 'Ngounie', 'نغوني', 'Ngounie', '04', 70),
(1032, 'Nyanga', 'النيانغا', 'Nyanga', '05', 70),
(1033, 'Worcestershire', 'رسيستيرشاير', 'Worcestershire', 'Q4', 71),
(1034, 'Hampshire', 'هامبشاير', 'Hampshire', 'F2', 71),
(1035, 'Herefordshire', 'هرفوردشير', 'Herefordshire', 'F7', 71),
(1036, 'Essex', 'إسيكس', 'Essex', 'E4', 71),
(1037, 'Powys', 'بوويز', 'Powys', 'Y8', 71),
(1038, 'Monmouthshire', 'مونماوثشاير', 'Monmouthshire', 'Y4', 71),
(1039, 'Scottish Borders', 'الحدود الاسكتلندية', 'Scottish Borders', 'T9', 71),
(1040, 'Cumbria', 'كمبريا', 'Cumbria', 'C9', 71),
(1041, 'Devon', 'ديفون', 'Devon', 'D4', 71),
(1042, 'Staffordshire', 'ستافوردشاير', 'Staffordshire', 'M9', 71),
(1043, 'Dorset', 'دورست', 'Dorset', 'D6', 71),
(1044, 'Hertford', 'هيرتفورد', 'Hertford', 'F8', 71),
(1045, 'Cambridgeshire', 'كامبريدج', 'Cambridgeshire', 'C3', 71),
(1046, 'Lancashire', 'لانكشاير', 'Lancashire', 'H2', 71),
(1047, 'Conwy', 'كونوي', 'Conwy', 'X8', 71),
(1048, 'Ceredigion', 'سرديجون', 'Ceredigion', 'X6', 71),
(1049, 'Rhondda Cynon Taff', 'روندا سينون تاف', 'Rhondda Cynon Taff', 'Y9', 71),
(1050, 'Highland', 'هضبة', 'Montagnes', 'V3', 71),
(1051, 'Perth and Kinross', 'بيرث و كينروس', 'Perth et Kinross', 'W1', 71),
(1052, 'Caerphilly', 'كيرفيلي', 'Caerphilly', 'X4', 71),
(1053, 'Blaenau Gwent', 'Blaenau Gwent', 'Blaenau Gwent', 'X2', 71),
(1054, 'Merthyr Tydfil', 'ميرثير تيدفيل', 'Merthyr Tydfil', 'Y3', 71),
(1055, 'Pembrokeshire', 'بيمبروكشاير', 'Pembrokeshire', 'Y7', 71),
(1056, 'Aberdeenshire', 'أبردينشاير', 'Aberdeenshire', 'T6', 71),
(1057, 'Gwynedd', 'جويند', 'Gwynedd', 'Y2', 71),
(1058, 'Aberdeen City', 'مدينة أبردين', 'Aberdeen City', 'T5', 71),
(1059, 'Fife', 'ناي آلة موسيقية', 'Fifre', 'V1', 71),
(1060, 'Neath Port Talbot', 'نيث بورت تالبوت', 'Neath Port Talbot', 'Y5', 71),
(1061, 'Isle of Anglesey', 'جزيرة انجلسي', 'Île d\'Anglesey', 'X1', 71),
(1062, 'Wokingham', 'ووكينغهام', 'Wokingham', 'Q2', 71),
(1063, 'York', 'يورك', 'York', 'Q5', 71),
(1064, 'Stirling', 'ستيرلينغ', 'Stirling', 'W6', 71),
(1065, 'Carmarthenshire', 'كرمرثنشير', 'Carmarthenshire', 'X7', 71),
(1066, 'Bridgend', 'كارديف', 'Bridgend', 'X3', 71),
(1067, 'East Lothian', 'شرق لوثيان', 'East Lothian', 'U6', 71),
(1068, 'Angus', 'انجوس', 'Angus', 'T7', 71),
(1069, 'Moray', 'موراي', 'Moray', 'V6', 71);
INSERT INTO `cities` (`id`, `name_en`, `name_ar`, `name_fr`, `code`, `country_id`) VALUES
(1070, 'Torfaen', 'تورفين', 'Torfaen', 'Z2', 71),
(1071, 'Swansea', 'سوانسي', 'Swansea', 'Z1', 71),
(1072, 'Vale of Glamorgan', 'فيل غلامورغان', 'Vallée de Glamorgan', 'Z3', 71),
(1073, 'Oxfordshire', 'أوكسفوردشاير', 'Oxfordshire', 'K2', 71),
(1074, 'Surrey', 'سيارة بمقعدين', 'Surrey', 'N7', 71),
(1075, 'South Lanarkshire', 'جنوب لاناركشاير', 'Lanarkshire du sud', 'W5', 71),
(1076, 'Leicestershire', 'يسترشير', 'Leicestershire', 'H5', 71),
(1077, 'Wigan', 'ويجان', 'Wigan', 'P7', 71),
(1078, 'Northamptonshire', 'نورثهامبتونشاير', 'Northamptonshire', 'J1', 71),
(1079, 'Lincolnshire', 'لينكولنشاير', 'Lincolnshire', 'H7', 71),
(1080, 'Argyll and Bute', 'أرغيل وبوت', 'Argyll et Bute', 'T8', 71),
(1081, 'Northumberland', 'نورثمبرلاند', 'Northumberland', 'J6', 71),
(1082, 'Norfolk', 'نورفولك', 'Norfolk', 'I9', 71),
(1083, 'Solihull', 'سوليهال', 'Solihull', 'M2', 71),
(1084, 'Wrexham', 'ريكسهام', 'Wrexham', 'Z4', 71),
(1085, 'Cheshire', 'شيشاير', 'Cheshire', 'C5', 71),
(1086, 'Shropshire', 'شروبشاير', 'Shropshire', 'L6', 71),
(1087, 'Banbridge', 'بانبريدج', 'Banbridge', 'R2', 71),
(1088, 'South Gloucestershire', 'جنوب جلوسيسترشاير', 'Gloucestershire du sud', 'M6', 71),
(1089, 'West Lothian', 'لوثيان الغربية', 'West Lothian', 'W9', 71),
(1091, 'Kent', 'كينت', 'Kent', 'G5', 71),
(1092, 'Leeds', 'ليدز', 'Leeds', 'H3', 71),
(1093, 'Somerset', 'سومرست', 'Somerset', 'M3', 71),
(1094, 'Gloucestershire', 'جلوسيسترشاير', 'Gloucestershire', 'E6', 71),
(1095, 'Buckinghamshire', 'باكينجهامشير', 'Buckinghamshire', 'B9', 71),
(1096, 'Coleraine', 'كوليرين', 'Coleraine', 'R6', 71),
(1097, 'Craigavon', 'كريجافون', 'Craigavon', 'R8', 71),
(1098, 'Antrim', 'أنتريم', 'Antrim', 'Q6', 71),
(1099, 'Limavady', 'يمافادي', 'Limavady', 'S4', 71),
(1100, 'Armagh', 'أرما', 'Armagh', 'Q8', 71),
(1101, 'Ballymena', 'بلايميندا', 'Ballymena', 'Q9', 71),
(1102, 'North Yorkshire', 'شمال يوركشاير', 'Yorkshire du Nord', 'J7', 71),
(1103, 'Sefton', 'سيفتون', 'Sefton', 'L8', 71),
(1104, 'Warwickshire', 'وارويكشاير', 'Warwickshire', 'P3', 71),
(1105, 'Derry', 'ديري', 'Derry', 'S6', 71),
(1106, 'Eilean Siar', 'ايلين سيار', 'Eilean Siar', 'W8', 71),
(1107, 'North Lanarkshire', 'شمال لاناركشاير', 'North Lanarkshire', 'V8', 71),
(1108, 'Falkirk', 'فالكيرك', 'Falkirk', 'U9', 71),
(1109, 'Shetland Islands', 'جزر شتلاند', 'Îles Shetland', 'W3', 71),
(1110, 'Wiltshire', 'ويلتشير', 'Wiltshire', 'P8', 71),
(1111, 'Durham', 'دورهام', 'Durham', 'D8', 71),
(1112, 'Darlington', 'دارلينجتون', 'Darlington', 'D1', 71),
(1113, 'Suffolk', 'سوفولك', 'Suffolk', 'N5', 71),
(1114, 'Derbyshire', 'ديربيشاير', 'Derbyshire', 'D3', 71),
(1115, 'Walsall', 'والسال', 'Walsall', 'O8', 71),
(1116, 'Rotherham', 'روثرهام', 'Rotherham', 'L3', 71),
(1117, 'West Dunbartonshire', 'غرب دنبارتنشير', 'West Dunbartonshire', 'W7', 71),
(1118, 'East Sussex', 'شرق ساسكس', 'Sussex de l\'Est', 'E2', 71),
(1119, 'Coventry', 'كوفنتري', 'Coventry', 'C7', 71),
(1120, 'Derby', 'دربي', 'Derby', 'D2', 71),
(1121, 'Southend-on-Sea', 'ساوثيند على البحر', 'Southend-on-Sea', 'M5', 71),
(1122, 'Clackmannanshire', 'كلاكمانشاير', 'Clackmannanshire', 'U1', 71),
(1123, 'Kirklees', 'كركليس', 'Kirklees', 'G8', 71),
(1124, 'St. Helens', 'سانت هيلينز', 'St. Helens', 'N1', 71),
(1125, 'Omagh', 'أوما', 'Omagh', 'T3', 71),
(1126, 'Cornwall', 'كورنوال', 'Cornouailles', 'C6', 71),
(1127, 'North Lincolnshire', 'شمال لينكولنشاير', 'Lincolnshire du Nord', 'J3', 71),
(1128, 'Newry and Mourne', 'نيوري ومورن', 'Newry et Morne', 'S9', 71),
(1129, 'South Ayrshire', 'جنوب ايرشاير', 'Ayrshire du sud', 'W4', 71),
(1130, 'Isle of Wight', 'جزيرة وايت', 'l\'île de Wight', 'G2', 71),
(1132, 'Dumfries and Galloway', 'دومفريز وجالاوي', 'Dumfries et Galloway', 'U2', 71),
(1133, 'Bedfordshire', 'بيدفوردشير', 'Bedfordshire', 'A5', 71),
(1134, 'Down', 'أسفل', 'Vers le bas', 'R9', 71),
(1135, 'Dungannon', 'دونجانون', 'Dungannon', 'S1', 71),
(1136, 'Renfrewshire', 'رينفروشاير', 'Renfrewshire', 'W2', 71),
(1137, 'Leicester', 'ليستر', 'Leicester', 'H4', 71),
(1138, 'Glasgow City', 'مدينة غلاسكو', 'Glasgow City', 'V2', 71),
(1139, 'West Sussex', 'غرب ساسكس', 'West Sussex', 'P6', 71),
(1140, 'Warrington', 'وارينغتون', 'Warrington', 'P2', 71),
(1141, 'Cookstown', 'كوكستاون', 'Cookstown', 'R7', 71),
(1142, 'North Ayrshire', 'شمال ايرشاير', 'Ayrshire du Nord', 'V7', 71),
(1143, 'Barnsley', 'بارنسلي', 'Barnsley', 'A3', 71),
(1144, 'Strabane', 'استربان', 'Strabane', 'T4', 71),
(1145, 'Doncaster', 'دونكاستر', 'Doncaster', 'D5', 71),
(1146, 'Ballymoney', 'بلموني', 'Ballymoney', 'R1', 71),
(1147, 'Fermanagh', 'فيرماناغ', 'Fermanagh', 'S2', 71),
(1149, 'Nottingham', 'نوتنغهام', 'Nottingham', 'J8', 71),
(1151, 'Tameside', 'تامسايد', 'Tameside', 'O1', 71),
(1152, 'Rutland', 'روتلاند', 'Rutland', 'L4', 71),
(1153, 'Nottinghamshire', 'نوتينغمشير', 'Nottinghamshire', 'J9', 71),
(1154, 'Midlothian', 'ميدلوثيان', 'Midlothian', 'V5', 71),
(1155, 'East Ayrshire', 'شرق ايرشاير', 'East Ayrshire', 'U4', 71),
(1156, 'Stoke-on-Trent', 'ستوك أون ترينت', 'Stoke-on-Trent', 'N4', 71),
(1157, 'Bristol', 'بريستول', 'Bristol', 'B7', 71),
(1158, 'Flintshire', 'فلينتشير', 'Flintshire', 'Y1', 71),
(1159, 'Blackburn with Darwen', 'بلاكبيرن مع داروين', 'Blackburn avec Darwen', 'A8', 71),
(1160, 'Moyle', 'مويلي', 'Moyle', 'S8', 71),
(1161, 'Carrickfergus', 'كاريكفرجس', 'Carrickfergus', 'R4', 71),
(1162, 'Castlereagh', 'كاسلرا', 'Castlereagh', 'R5', 71),
(1163, 'Larne', 'ليرن', 'Larne', 'S3', 71),
(1164, 'Belfast', 'بلفاست', 'Belfast', 'R3', 71),
(1165, 'Magherafelt', 'مايرافلت', 'Magherafelt', 'S7', 71),
(1166, 'North Down', 'شمال داون', 'Nord en bas', 'T2', 71),
(1167, 'North Somerset', 'شمال سومرست', 'North Somerset', 'J4', 71),
(1168, 'East Renfrewshire', 'شرق رينفروشاير', 'East Renfrewshire', 'U7', 71),
(1169, 'Newport', 'نيوبورت', 'Newport', 'Y6', 71),
(1170, 'Bath and North East Somerset', 'باث وشمال شرق سومرست', 'Bath et North East Somerset', 'A4', 71),
(1173, 'Newham', 'نيوهام', 'Newham', 'I8', 71),
(1175, 'Denbighshire', 'دنبيشير', 'Denbighshire', 'X9', 71),
(1176, 'East Riding of Yorkshire', 'شرق ركوب يوركشاير', 'East Riding of Yorkshire', 'E1', 71),
(1177, 'Bexley', 'بيكسلي', 'Bexley', 'A6', 71),
(1178, 'Bromley', 'بروملي', 'Bromley', 'B8', 71),
(1179, 'Bradford', 'برادفورد', 'Bradford', 'B4', 71),
(1180, 'Bracknell Forest', 'غابة براكنيل', 'Forêt de Bracknell', 'B3', 71),
(1181, 'Cardiff', 'كارديف', 'Cardiff', 'X5', 71),
(1182, 'Birmingham', 'برمنغهام', 'Birmingham', 'A7', 71),
(1183, 'Orkney', 'أوركني', 'Orkney', 'V9', 71),
(1184, 'East Dunbartonshire', 'شرق دانبارتونشاير', 'East Dunbartonshire', 'U5', 71),
(1185, 'Blackpool', 'بلاكبول', 'Blackpool', 'A9', 71),
(1186, 'Southampton', 'ساوثامبتون', 'Southampton', 'M4', 71),
(1187, 'Newcastle upon Tyne', 'نيوكاسل أبون تاين', 'Newcastle upon Tyne', 'I7', 71),
(1188, 'Bolton', 'بولتون', 'Boulonner', 'B1', 71),
(1189, 'Redcar and Cleveland', 'ريدكار وكليفلاند', 'Redcar et Cleveland', 'K9', 71),
(1190, 'Bournemouth', 'بورنموث', 'Bournemouth', 'B2', 71),
(1191, 'Swindon', 'سويندون', 'Swindon', 'N9', 71),
(1192, 'Stockport', 'ستوكبورت', 'Stockport', 'N2', 71),
(1193, 'Windsor and Maidenhead', 'وندسور ومايدنهيد', 'Windsor et Maidenhead', 'P9', 71),
(1194, 'Inverclyde', 'إنفركلايد', 'Inverclyde', 'V4', 71),
(1195, 'Medway', 'ميدواي', 'Medway', 'I3', 71),
(1196, 'Milton Keynes', 'ميلتون كينز', 'Milton Keynes', 'I6', 71),
(1197, 'Dundee City', 'دندي سيتي', 'Dundee City', 'U3', 71),
(1198, 'Telford and Wrekin', 'تيلفورد وركين', 'Telford et Wrekin', 'O2', 71),
(1199, 'Reading', 'قراءة', 'En train de lire', 'K7', 71),
(1200, 'Bury', 'دفن', 'Enterrer', 'C1', 71),
(1201, 'Wolverhampton', 'ولفرهامبتون', 'Wolverhampton', 'Q3', 71),
(1202, 'Southwark', 'ساوثوورك', 'Southwark', 'M8', 71),
(1203, 'Camden', 'كامدن', 'Camden', 'C4', 71),
(1204, 'Slough', 'مستنقع', 'Bourbier', 'M1', 71),
(1205, 'Middlesbrough', 'ميدلسبره', 'Middlesbrough', 'I5', 71),
(1206, 'Stockton-on-Tees', 'ستوكتون أون تيز', 'Stockton-on-Tees', 'N3', 71),
(1207, 'Newtownabbey', 'نيوتاونبي', 'Newtownabbey', 'T1', 71),
(1208, 'Lisburn', 'يسبورن', 'Lisburn', 'S5', 71),
(1210, 'Lewisham', 'ويشام', 'Lewisham', 'H6', 71),
(1211, 'West Berkshire', 'غرب بيركشاير', 'West Berkshire', 'P4', 71),
(1212, 'Manchester', 'مانشستر', 'Manchester', 'I2', 71),
(1213, 'Westminster', 'وستمنستر', 'Westminster', 'P5', 71),
(1214, 'Ards', 'أردز', 'Ards', 'Q7', 71),
(1215, 'Plymouth', 'بليموث', 'Plymouth', 'K4', 71),
(1216, 'Croydon', 'كرويدون', 'Croydon', 'C8', 71),
(1217, 'Barking and Dagenham', 'باركينج وداجنهام', 'Barking et Dagenham', 'A1', 71),
(1218, 'Hartlepool', 'هارتلبول', 'Hartlepool', 'F5', 71),
(1219, 'Sheffield', 'شيفيلد', 'Sheffield', 'L9', 71),
(1220, 'Oldham', 'أولدهام', 'Oldham', 'K1', 71),
(1221, 'Knowsley', 'نوزلي', 'Knowsley', 'G9', 71),
(1222, 'Liverpool', 'ليفربول', 'Liverpool', 'H8', 71),
(1223, 'Dudley', 'دادلي', 'Dudley', 'D7', 71),
(1224, 'Gateshead', 'غيتسهيد', 'Gateshead', 'E5', 71),
(1225, 'Ealing', 'إيلينغ', 'Ealing', 'D9', 71),
(1226, 'Edinburgh', 'ادنبره', 'Edinbourg', 'U8', 71),
(1227, 'Enfield', 'انفيلد', 'Enfield', 'E3', 71),
(1228, 'Calderdale', 'كلدردل', 'Calderdale', 'C2', 71),
(1229, 'Halton', 'وقف على', 'Halton', 'E9', 71),
(1230, 'North Tyneside', 'شمال تينيسايد', 'North Tyneside', 'J5', 71),
(1231, 'Thurrock', 'ثوروك', 'Thurrock', 'O3', 71),
(1232, 'North East Lincolnshire', 'شمال شرق لينكولنشاير', 'North East Lincolnshire', 'J2', 71),
(1233, 'Wirral', 'يرل', 'Wirral', 'Q1', 71),
(1234, 'Hackney', 'بتذلل', 'Hackney', 'E8', 71),
(1235, 'Hammersmith and Fulham', 'هامرسميث وفولهام', 'Hammersmith et Fulham', 'F1', 71),
(1236, 'Havering', 'هافرينج', 'Havering', 'F6', 71),
(1237, 'Harrow', 'مسلفة', 'Herse', 'F4', 71),
(1238, 'Barnet', 'بارنيت', 'Barnet', 'A2', 71),
(1239, 'Hounslow', 'هونسلو', 'Hounslow', 'G1', 71),
(1240, 'Brighton and Hove', 'برايتون وهوف', 'Brighton et Hove', 'B6', 71),
(1241, 'Kingston upon Hull', 'كينغستون على هال', 'Kingston upon Hull', 'G6', 71),
(1242, 'Redbridge', 'ريدبريدج', 'Redbridge', 'K8', 71),
(1243, 'Islington', 'إزلينغتون', 'Islington', 'G3', 71),
(1244, 'Kensington and Chelsea', 'كنسينغتون وتشيلسي', 'Kensington et Chelsea', 'G4', 71),
(1245, 'Kingston upon Thames', 'كينغستون أبون تيمز', 'Kingston upon Thames', 'G7', 71),
(1246, 'Lambeth', 'لامبث', 'Lambeth', 'H1', 71),
(1247, 'London', 'لندن', 'Londres', 'H9', 71),
(1248, 'Luton', 'لوتون', 'Luton', 'I1', 71),
(1249, 'Sunderland', 'سندرلاند', 'Sunderland', 'N6', 71),
(1250, 'Merton', 'ميرتون', 'Merton', 'I4', 71),
(1251, 'Sandwell', 'ساندويل', 'Sandwell', 'L7', 71),
(1252, 'Salford', 'سالفورد', 'Salford', 'L5', 71),
(1253, 'Peterborough', 'بيتربورو', 'Peterborough', 'K3', 71),
(1254, 'Poole', 'بول', 'Poole', 'K5', 71),
(1255, 'Tower Hamlets', 'برج هامليتس', 'Tour des hameaux', 'O5', 71),
(1256, 'Portsmouth', 'بورتسموث', 'Portsmouth', 'K6', 71),
(1257, 'Rochdale', 'روتشديل', 'Rochdale', 'L2', 71),
(1258, 'Greenwich', 'غرينتش', 'Greenwich', 'E7', 71),
(1259, 'South Tyneside', 'جنوب تينيسايد', 'South Tyneside', 'M7', 71),
(1260, 'Trafford', 'ترافورد', 'Trafford', 'O6', 71),
(1261, 'Sutton', 'ساتون', 'Sutton', 'N8', 71),
(1262, 'Torbay', 'تورباي', 'Torbay', 'O4', 71),
(1263, 'Richmond upon Thames', 'ريتشموند على نهر التايمز', 'Richmond sur la Tamise', 'L1', 71),
(1264, 'Hillingdon', 'هيلينغدون', 'Hillingdon', 'F9', 71),
(1265, 'Wakefield', 'ويكفيلد', 'Wakefield', 'O7', 71),
(1266, 'Waltham Forest', 'والثام فوريست', 'Waltham Forest', 'O9', 71),
(1267, 'Wandsworth', 'اندسوورث', 'Wandsworth', 'P1', 71),
(1268, 'Brent', 'برنت', 'Brent', 'B5', 71),
(1269, 'Haringey', 'هارينجي', 'Haringey', 'F3', 71),
(1270, 'Saint Andrew', 'القديس أندرو', 'Saint andrew', '01', 72),
(1271, 'Saint George', 'القديس جورج', 'Saint George', '03', 72),
(1272, 'Saint David', 'القديس داود', 'Saint David', '02', 72),
(1273, 'Saint Patrick', 'سانت باتريك', 'Saint Patrick', '06', 72),
(1274, 'Saint Mark', 'سان مارك', 'Saint mark', '05', 72),
(1275, 'Saint John', 'القديس يوحنا', 'Saint Jean', '04', 72),
(1276, 'Abkhazia', 'أبخازيا', 'Abkhazie', '02', 73),
(1277, 'Ninotsmindis Raioni', 'Ninotsmindis Raioni', 'Ninotsmindis Raioni', '39', 73),
(1278, 'P\'ot\'i', 'P\'ot\'i', 'P\'ot\'i', '42', 73),
(1279, 'Ambrolauris Raioni', 'Ambrolauris Raioni', 'Ambrolauris Raioni', '09', 73),
(1280, 'Abashis Raioni', 'اباشي ريوني', 'Abashis Raioni', '01', 73),
(1281, 'Akhalts\'ikhis Raioni', 'أخالتسميس ريوني', 'Akhalts\'ikhis Raioni', '07', 73),
(1282, 'Zestap\'onis Raioni', 'زيستابونيس ريوني', 'Zestap\'onis Raioni', '62', 73),
(1283, 'Tsalenjikhis Raioni', 'تسالينججيريس ريوني', 'Tsalenjikhis Raioni', '58', 73),
(1284, 'Marneulis Raioni', 'مارنوليس رايوني', 'Marneulis Raioni', '35', 73),
(1285, 'Goris Raioni', 'جوريس رايوني', 'Goris Raioni', '22', 73),
(1286, 'K\'arelis Raioni', 'كاريسليز ريوني', 'K\'arelis Raioni', '25', 73),
(1287, 'Khashuris Raioni', 'خاشوريس رايوني', 'Khashuris Raioni', '28', 73),
(1288, 'Kaspis Raioni', 'كاسبيس رايونى', 'Kaspis Raioni', '26', 73),
(1289, 'Ajaria', 'أجاريا', 'Ajaria', '04', 73),
(1290, 'Mts\'khet\'is Raioni', 'متخيسيس ريوني', 'Mts\'khet\'is Raioni', '38', 73),
(1291, 'Ch\'okhatauris Raioni', 'Ch\'okhatauris Raioni', 'Ch\'okhatauris Raioni', '16', 73),
(1292, 'Akhalk\'alak\'is Raioni', 'Akhalk\'alak\'is Raioni', 'Akhalk\'alak\'is Raioni', '06', 73),
(1293, 'Samtrediis Raioni', 'Samtrediis Raioni', 'Samtrediis Raioni', '48', 73),
(1294, 'Tqibuli', 'Tqibuli', 'Tqibuli', '56', 73),
(1295, 'Dushet\'is Raioni', 'Dushet\'is Raioni', 'Dushet\'is Raioni', '19', 73),
(1296, 'Onis Raioni', 'أونيس رايوني', 'Onis Raioni', '40', 73),
(1297, 'Lentekhis Raioni', 'Lentekhis Raioni', 'Lentekhis Raioni', '34', 73),
(1298, 'Martvilis Raioni', 'مارتفيليز ريوني', 'Martvilis Raioni', '36', 73),
(1299, 'K\'ut\'aisi', 'K\'ut\'aisi', 'K\'ut\'aisi', '31', 73),
(1300, 'Akhalgoris Raioni', 'أخالورجيس رايوني', 'Akhalgoris Raioni', '05', 73),
(1301, 'Aspindzis Raioni', 'Aspindzis Raioni', 'Aspindzis Raioni', '10', 73),
(1302, 'Akhmetis Raioni', 'احمدى ريونى', 'Akhmetis Raioni', '08', 73),
(1303, 'Lagodekhis Raioni', 'Lagodekhis Raioni', 'Lagodekhis Raioni', '32', 73),
(1304, 'Zugdidis Raioni', 'Zugdidis Raioni', 'Zugdidis Raioni', '64', 73),
(1305, 'Borjomis Raioni', 'بورجوميس رايوني', 'Borjomis Raioni', '13', 73),
(1306, 'T\'ianet\'is Raioni', 'T\'ianet\'is Raioni', 'T\'ianet\'is Raioni', '55', 73),
(1307, 'Khobis Raioni', 'خبيص الريوني', 'Khobis Raioni', '29', 73),
(1308, 'Kharagaulis Raioni', 'Kharagaulis Raioni', 'Kharagaulis Raioni', '27', 73),
(1309, 'Vanis Raioni', 'فانيس ريوني', 'Vanis Raioni', '61', 73),
(1310, 'T\'elavis Raioni', 'تيلافيس ريوني', 'T\'elavis Raioni', '52', 73),
(1311, 'Tsalkis Raioni', 'تسالكيس رايوني', 'Tsalkis Raioni', '59', 73),
(1312, 'Qazbegis Raioni', 'قزبيجايز ريوني', 'Qazbegis Raioni', '43', 73),
(1313, 'Sagarejos Raioni', 'ساجاريجوس رايوني', 'Sagarejos Raioni', '47', 73),
(1314, 'T\'et\'ritsqaros Raioni', 'تيريتسقاروس ريوني', 'T\'et\'ritsqaros Raioni', '54', 73),
(1315, 'Dedop\'listsqaros Raioni', 'Dedop\'listsqaros Raioni', 'Dedop\'listsqaros Raioni', '17', 73),
(1316, 'Javis Raioni', 'جافي ريوني', 'Javis Raioni', '24', 73),
(1317, 'Ch\'khorotsqus Raioni', 'Ch\'khorotsqus Raioni', 'Ch\'khorotsqus Raioni', '15', 73),
(1318, 'Tsqaltubo', 'Tsqaltubo', 'Tsqaltubo', '60', 73),
(1319, 'Rust\'avi', 'Rust\'avi', 'Rust\'avi', '45', 73),
(1320, 'T\'bilisi', 'تبليسي', 'T\'bilisi', '51', 73),
(1321, 'Baghdat\'is Raioni', 'بغدايس الريوني', 'Baghdat\'is Raioni', '11', 73),
(1322, 'Lanch\'khut\'is Raioni', 'Lanch\'khut\'is Raioni', 'Lanch\'khut\'is Raioni', '33', 73),
(1323, 'Chiat\'ura', 'Chiat\'ura', 'Chiat\'ura', '14', 73),
(1324, 'Ts\'ageris Raioni', 'Ts\'ageris Raioni', 'Ts\'ageris Raioni', '57', 73),
(1327, 'Central', 'وسط', 'Central', '04', 76),
(1328, 'Western', 'الغربي', 'Occidental', '09', 76),
(1329, 'Ashanti', 'أشانتي', 'Ashanti', '02', 76),
(1330, 'Upper East', 'الشرق الأوسط', 'Upper East', '10', 76),
(1331, 'Volta', 'فولتا', 'Volta', '08', 76),
(1332, 'Brong-Ahafo', 'برونغ أهافو', 'Brong-Ahafo', '03', 76),
(1333, 'Northern', 'شمالي', 'Nord', '06', 76),
(1334, 'Greater Accra', 'أكبر أكرا', 'Grand Accra', '01', 76),
(1335, 'Upper West', 'أعالي الغرب', 'Upper West', '11', 76),
(1336, 'Eastern', 'الشرقية', 'Est', '05', 76),
(1338, 'Vestgronland', 'Vestgronland', 'Vestgronland', '03', 78),
(1339, 'Nordgronland', 'Nordgronland', 'Nordgronland', '01', 78),
(1340, 'Ostgronland', 'Ostgronland', 'Ostgronland', '02', 78),
(1341, 'Central River', 'سنترال ريفر', 'Central River', '03', 79),
(1342, 'Western', 'الغربي', 'Occidental', '05', 79),
(1343, 'North Bank', 'الضفة الشمالية', 'La Banque du nord', '07', 79),
(1344, 'Upper River', 'أعالي النهر', 'Upper River', '04', 79),
(1345, 'Lower River', 'نهر سفلي', 'Lower River', '02', 79),
(1346, 'Banjul', 'بانجول', 'Banjul', '01', 79),
(1347, 'Kouroussa', 'كوروسا', 'Kouroussa', '19', 80),
(1348, 'Beyla', 'بيلا', 'Beyla', '01', 80),
(1349, 'Koundara', 'كوندارا', 'Koundara', '18', 80),
(1350, 'Dinguiraye', 'دنجواياري', 'Dinguiraye', '07', 80),
(1351, 'Mali', 'مالي', 'Mali', '22', 80),
(1352, 'Macenta', 'ماكنتا', 'Macenta', '21', 80),
(1355, 'Kissidougou', 'كيسيدوغو', 'Kissidougou', '17', 80),
(1356, 'Forecariah', 'فوريكاريا', 'Forecariah', '10', 80),
(1357, 'Pita', 'بيتا', 'Pita', '25', 80),
(1361, 'Dabola', 'دابولا', 'Dabola', '05', 80),
(1362, 'Boke', 'بوكي', 'Boke', '03', 80),
(1363, 'Mamou', 'مامو', 'Mamou', '23', 80),
(1364, 'Faranah', 'فاراناه', 'Faranah', '09', 80),
(1365, 'Telimele', 'تليملي', 'Telimele', '27', 80),
(1366, 'Boffa', 'بوفا', 'Boffa', '02', 80),
(1367, 'Gueckedou', 'جوكيدو', 'Gueckedou', '13', 80),
(1368, 'Kindia', 'كنديا', 'Kindia', '16', 80),
(1369, 'Fria', 'فريا', 'Fria', '11', 80),
(1370, 'Tougue', 'تواج', 'Tougue', '28', 80),
(1371, 'Yomou', 'يومو', 'Yomou', '29', 80),
(1372, 'Gaoual', 'جاوال', 'Gaoual', '12', 80),
(1373, 'Kerouane', 'كيروان', 'Kerouane', '15', 80),
(1374, 'Dalaba', 'دالابا', 'Dalaba', '06', 80),
(1375, 'Conakry', 'كوناكري', 'Conakry', '04', 80),
(1376, 'Coyah', 'كويا', 'Coyah', '30', 80),
(1377, 'Dubreka', 'دوبريكا', 'Dubreka', '31', 80),
(1378, 'Kankan', 'كانكان', 'Kankan', '32', 80),
(1379, 'Koubia', 'كوبيا', 'Koubia', '33', 80),
(1380, 'Labe', 'ابي', 'Labe', '34', 80),
(1381, 'Lelouma', 'يلوما', 'Lelouma', '35', 80),
(1382, 'Lola', 'لولا', 'Lola', '36', 80),
(1383, 'Mandiana', 'مانديانا', 'Mandiana', '37', 80),
(1384, 'Nzerekore', 'نزيريكوري', 'Nzerekore', '38', 80),
(1385, 'Siguiri', 'سيجويري', 'Siguiri', '39', 80),
(1387, 'Centro Sur', 'سنترو سور', 'Centro Sur', '06', 82),
(1388, 'Wele-Nzas', 'ويلي-نزاس', 'Wele-Nzas', '09', 82),
(1389, 'Kie-Ntem', 'كي نتيم', 'Kie-Ntem', '07', 82),
(1390, 'Litoral', 'الساحلي', 'Litoral', '08', 82),
(1391, 'Annobon', 'أنوبون', 'Annobon', '03', 82),
(1392, 'Bioko Norte', 'بيوكو نورتي', 'Bioko Norte', '04', 82),
(1393, 'Bioko Sur', 'بيوكو سور', 'Bioko Sur', '05', 82),
(1395, 'Kilkis', 'كيلكيس', 'Kilkis', '06', 83),
(1396, 'Larisa', 'لاريسا', 'Larisa', '21', 83),
(1397, 'Attiki', 'أتيكي', 'Attiki', '35', 83),
(1398, 'Trikala', 'تريكالا', 'Trikala', '22', 83),
(1399, 'Preveza', 'بريفيزا', 'Preveza', '19', 83),
(1400, 'Kerkira', 'Kerkira', 'Kerkira', '25', 83),
(1401, 'Ioannina', 'وانينا', 'Ioannina', '17', 83),
(1402, 'Pella', 'بيلا', 'Pella', '07', 83),
(1403, 'Thessaloniki', 'سالونيك', 'Thessalonique', '13', 83),
(1404, 'Voiotia', 'Voiotia', 'Voiotia', '33', 83),
(1405, 'Kikladhes', 'Kikladhes', 'Kikladhes', '49', 83),
(1406, 'Kavala', 'كافالا', 'Kavala', '14', 83),
(1407, 'Argolis', 'أرغوليس', 'Argolide', '36', 83),
(1408, 'Rethimni', 'Rethimni', 'Rethimni', '44', 83),
(1409, 'Serrai', 'سيراي', 'Serrai', '05', 83),
(1410, 'Lakonia', 'اكونيا', 'Lakonia', '42', 83),
(1411, 'Iraklion', 'ايراكليون', 'Iraklion', '45', 83),
(1412, 'Lasithi', 'اسيتي', 'Lasithi', '46', 83),
(1413, 'Rodhopi', 'Rodhopi', 'Rodhopi', '02', 83),
(1414, 'Drama', 'دراما', 'Drame', '04', 83),
(1415, 'Messinia', 'ميسينيا', 'Messinia', '40', 83),
(1416, 'Evvoia', 'إيفويا', 'Evia', '34', 83),
(1417, 'Akhaia', 'Akhaia', 'Akhaia', '38', 83),
(1418, 'Magnisia', 'ماغنيزيا', 'Magnisia', '24', 83),
(1419, 'Khania', 'خانيا', 'Khania', '43', 83),
(1420, 'Kardhitsa', 'Kardhitsa', 'Kardhitsa', '23', 83),
(1421, 'Evros', 'إفروس', 'Evros', '01', 83),
(1422, 'Arkadhia', 'Arkadhia', 'Arkadhia', '41', 83),
(1423, 'Aitolia kai Akarnania', 'أيتوليا كاي Akarnania', 'Aitolia kai Akarnania', '31', 83),
(1424, 'Kozani', 'كوزاني', 'Kozani', '11', 83),
(1425, 'Thesprotia', 'ثريبروتيا', 'Thesprotia', '18', 83),
(1426, 'Lesvos', 'يسفوس', 'Lesvos', '51', 83),
(1427, 'Dhodhekanisos', 'Dhodhekanisos', 'Dhodhekanisos', '47', 83),
(1428, 'Kefallinia', 'كيفالونيا', 'Kefallinia', '27', 83),
(1429, 'Khios', 'Khios', 'Khios', '50', 83),
(1430, 'Arta', 'أرتا', 'Arta', '20', 83),
(1431, 'Grevena', 'غريفينا', 'Grevena', '10', 83),
(1432, 'Zakinthos', 'زاكينثوس', 'Zakinthos', '28', 83),
(1433, 'Evritania', 'Evritania', 'Evritania', '30', 83),
(1434, 'Fthiotis', 'فثيوتيس', 'Fthiotis', '29', 83),
(1435, 'Kastoria', 'كاستوريا', 'Kastoria', '09', 83),
(1436, 'Samos', 'ساموس', 'Samos', '48', 83),
(1437, 'Imathia', 'إيماثيا', 'Imathia', '12', 83),
(1438, 'Florina', 'فلورينا', 'Florina', '08', 83),
(1439, 'Pieria', 'بييريا', 'Pieria', '16', 83),
(1440, 'Levkas', 'Levkas', 'Levkas', '26', 83),
(1441, 'Fokis', 'فوكيس', 'Fokis', '32', 83),
(1442, 'Ilia', 'إليا', 'Ilia', '39', 83),
(1443, 'Korinthia', 'كورينثيا', 'Korinthia', '37', 83),
(1444, 'Xanthi', 'كسانتي', 'Xanthi', '03', 83),
(1445, 'Khalkidhiki', 'Khalkidhiki', 'Khalkidhiki', '15', 83),
(1448, 'Izabal', 'ايزابال', 'Izabal', '09', 85),
(1449, 'Alta Verapaz', 'ألتا فيراباس', 'Alta Verapaz', '01', 85),
(1450, 'Retalhuleu', 'ريتالهوليو', 'Retalhuleu', '15', 85),
(1451, 'El Progreso', 'البروغريسو', 'El Progreso', '05', 85),
(1452, 'Guatemala', 'غواتيمالا', 'Guatemala', '07', 85),
(1453, 'Jutiapa', 'جوتيابا', 'Jutiapa', '11', 85),
(1454, 'Chimaltenango', 'تشيمالتنانغو', 'Chimaltenango', '03', 85),
(1455, 'Chiquimula', 'شيكيمولا', 'Chiquimula', '04', 85),
(1456, 'Zacapa', 'زاكابا', 'Zacapa', '22', 85),
(1457, 'Jalapa', 'جالابا', 'Jalapa', '10', 85),
(1458, 'San Marcos', 'سان ماركوس', 'San Marcos', '17', 85),
(1459, 'Quiche', 'كيشي', 'Quiche', '14', 85),
(1460, 'Huehuetenango', 'هوهوتنانغو', 'Huehuetenango', '08', 85),
(1461, 'Quetzaltenango', 'كويتزالتنانغو', 'Quetzaltenango', '13', 85),
(1462, 'Baja Verapaz', 'باجا فيراباز', 'Baja Verapaz', '02', 85),
(1463, 'Santa Rosa', 'سانتا روزا', 'Santa Rosa', '18', 85),
(1464, 'Solola', 'سولولا', 'Solola', '19', 85),
(1465, 'Peten', 'بيتين', 'Peten', '12', 85),
(1466, 'Escuintla', 'ايسكوينتلا', 'Escuintla', '06', 85),
(1467, 'Sacatepequez', 'سكاتيبيكيز', 'Sacatepequez', '16', 85),
(1468, 'Totonicapan', 'توتونيكابان', 'Totonicapan', '21', 85),
(1469, 'Suchitepequez', 'سوشيتبيكيز', 'Suchitepequez', '20', 85),
(1470, 'Cacheu', 'كاشيو', 'Cacheu', '06', 86),
(1471, 'Biombo', 'بومبو', 'Biombo', '12', 86),
(1472, 'Oio', 'أويو', 'Oio', '04', 86),
(1473, 'Bissau', 'بيساو', 'Bissau', '11', 86),
(1474, 'Bafata', 'بافاتا', 'Bafata', '01', 86),
(1475, 'Tombali', 'تومبالي', 'Tombali', '07', 86),
(1476, 'Gabu', 'غابو', 'Gabu', '10', 86),
(1477, 'Bolama', 'بولاما', 'Bolama', '05', 86),
(1478, 'Quinara', 'كينارا', 'Quinara', '02', 86),
(1479, 'Mahaica-Berbice', 'ماهايكا بيبريس', 'Mahaica-Berbice', '15', 87),
(1480, 'Upper Takutu-Upper Essequibo', 'Upper Takutu-Upper Essequibo', 'Upper Takutu-Upper Essequibo', '19', 87),
(1481, 'Barima-Waini', 'باريما وايني', 'Barima-Waini', '10', 87),
(1482, 'Pomeroon-Supenaam', 'بومرون سوبينام', 'Pomeroon-Supenaam', '16', 87),
(1483, 'Demerara-Mahaica', 'ديميرارا ماهايكا', 'Demerara-Mahaica', '12', 87),
(1484, 'Cuyuni-Mazaruni', 'جويوني مزروني', 'Cuyuni-Mazaruni', '11', 87),
(1485, 'East Berbice-Corentyne', 'شرق بيربيس-كورنتي', 'Berbice Est-Corentyne', '13', 87),
(1486, 'Essequibo Islands-West Demerara', 'Essequibo Islands-West Demerara', 'Essequibo Islands-West Demerara', '14', 87),
(1487, 'Potaro-Siparuni', 'بوتارو سيباروني', 'Potaro-Siparuni', '17', 87),
(1488, 'Upper Demerara-Berbice', 'Upper Demerara-Berbice', 'Upper Demerara-Berbice', '18', 87),
(1490, 'Colon', 'القولون', 'Côlon', '03', 89),
(1491, 'Choluteca', 'تشولوتيكا', 'Choluteca', '02', 89),
(1492, 'Comayagua', 'كوماياغوا', 'Comayagua', '04', 89),
(1493, 'Valle', 'فالي', 'Valle', '17', 89),
(1494, 'Santa Barbara', 'سانتا باربارا', 'Santa Barbara', '16', 89),
(1495, 'Francisco Morazan', 'فرانسيسكو مورازان', 'Francisco Morazan', '08', 89),
(1496, 'El Paraiso', 'الباريسو', 'El Paraiso', '07', 89),
(1497, 'Lempira', 'هندوراسي', 'Lempira', '13', 89),
(1498, 'Copan', 'كوبان', 'Copan', '05', 89),
(1499, 'Olancho', 'اولانجو', 'Olancho', '15', 89),
(1500, 'Cortes', 'كورتيس', 'Cortes', '06', 89),
(1501, 'Yoro', 'يورو', 'Yoro', '18', 89),
(1502, 'Atlantida', 'أتلانتيدا', 'Atlantida', '01', 89),
(1503, 'Intibuca', 'Intibuca', 'Intibuca', '10', 89),
(1504, 'La Paz', 'لاباز', 'La paz', '12', 89),
(1505, 'Ocotepeque', 'أوكوتبيك', 'Ocotepeque', '14', 89),
(1506, 'Gracias a Dios', 'جراسياس ديوس', 'Gracias a Dios', '09', 89),
(1507, 'Islas de la Bahia', 'ايسلاس دي لا باهيا', 'Islas de la Bahia', '11', 89),
(1508, 'Primorsko-Goranska', 'بريمورسكو غورانسكا', 'Primorsko-Goranska', '12', 90),
(1509, 'Splitsko-Dalmatinska', 'سبليتسكو دالماتينسكا', 'Splitsko-Dalmatinska', '15', 90),
(1510, 'Istarska', 'Istarska', 'Istarska', '04', 90),
(1511, 'Osjecko-Baranjska', 'أوسيجيكو', 'Osjecko-Baranjska', '10', 90),
(1512, 'Viroviticko-Podravska', 'فيروفيتيكو-بودرافسكا', 'Viroviticko-Podravska', '17', 90),
(1513, 'Grad Zagreb', 'غراد زغرب', 'Grad Zagreb', '21', 90),
(1514, 'Sisacko-Moslavacka', 'سيساكو موسلافاكا', 'Sisacko-Moslavacka', '14', 90),
(1515, 'Licko-Senjska', 'ليكو سنجسكا', 'Licko-Senjska', '08', 90),
(1516, 'Brodsko-Posavska', 'برودسكو بوسافسكا', 'Brodsko-Posavska', '02', 90),
(1517, 'Dubrovacko-Neretvanska', 'دوبروفنيك نيريتفا', 'Dubrovacko-Neretvanska', '03', 90),
(1518, 'Pozesko-Slavonska', 'بوزيسكو-سلافونسكا', 'Pozesko-Slavonska', '11', 90),
(1519, 'Zagrebacka', 'زاجريباكا', 'Zagrebacka', '20', 90),
(1520, 'Bjelovarsko-Bilogorska', 'بجيلوفارسكو بيلوجوورسكا', 'Bjelovarsko-Bilogorska', '01', 90),
(1521, 'Varazdinska', 'فارازدينسكا', 'Varazdinska', '16', 90),
(1522, 'Vukovarsko-Srijemska', 'فوكوفارسكو سريمسكا', 'Vukovarsko-Srijemska', '18', 90),
(1523, 'Krapinsko-Zagorska', 'كاربينسكو زاجورسكا', 'Krapinsko-Zagorska', '07', 90),
(1524, 'Koprivnicko-Krizevacka', 'كوبرفنيكو كريزفاكا', 'Koprivnicko-Krizevacka', '06', 90),
(1525, 'Karlovacka', 'كارلوفاكا', 'Karlovacka', '05', 90),
(1526, 'Sibensko-Kninska', 'سيبينسكو كنينسكا', 'Sibensko-Kninska', '13', 90),
(1527, 'Medimurska', 'ميديمرسكا', 'Medimurska', '09', 90),
(1529, 'Sud', 'سود', 'Sud', '12', 91),
(1530, 'Centre', 'مركز', 'Centre', '07', 91),
(1532, 'Ouest', 'كويست', 'Ouest', '11', 91),
(1533, 'Nord', 'نورد', 'Nord', '09', 91),
(1534, 'Nord-Ouest', 'الإقليم الشمالي الغربي', 'Nord-Ouest', '03', 91),
(1535, 'Nord-Est', 'الشمال الشرقي', 'Nord-Est', '10', 91),
(1536, 'Sud-Est', 'الجنوب الشرقي', 'Sud-Est', '13', 91),
(1537, 'Artibonite', 'أرتيبونيت', 'Artibonite', '06', 91),
(1538, 'Komarom-Esztergom', 'كومارم إسترجم', 'Komarom-Esztergom', '12', 92),
(1539, 'Fejer', 'فيجر', 'Fejer', '08', 92),
(1540, 'Jasz-Nagykun-Szolnok', 'جاز ناجيكن سزولنوك', 'Jasz-Nagykun-Szolnok', '20', 92),
(1541, 'Baranya', 'بارانيا', 'Baranya', '02', 92),
(1542, 'Szabolcs-Szatmar-Bereg', 'سزابولكس زاتمار بيريج', 'Szabolcs-Szatmar-Bereg', '18', 92),
(1543, 'Heves', 'هيفيز', 'Heves', '11', 92),
(1544, 'Borsod-Abauj-Zemplen', 'بورسود أباوج زمبلين', 'Borsod-Abauj-Zemplen', '04', 92),
(1545, 'Gyor-Moson-Sopron', 'جيور موسون سوبرون', 'Gyor-Moson-Sopron', '09', 92),
(1546, 'Pest', 'الآفات', 'Ravageur', '16', 92),
(1547, 'Veszprem', 'فيزبرم', 'Veszprem', '23', 92),
(1548, 'Bacs-Kiskun', 'البكالوريا كيسكون', 'Bacs-Kiskun', '01', 92),
(1549, 'Vas', 'خدمات القيمة المضافة', 'Vas', '22', 92),
(1550, 'Hajdu-Bihar', 'هاجدو بيهار', 'Hajdu-Bihar', '10', 92),
(1551, 'Zala', 'زالة', 'Zala', '24', 92),
(1552, 'Somogy', 'سوموغي', 'Somogy', '17', 92),
(1553, 'Tolna', 'تولنا', 'Tolna', '21', 92),
(1554, 'Nograd', 'نوجراد', 'Nograd', '14', 92),
(1555, 'Budapest', 'بودابست', 'Budapest', '05', 92),
(1556, 'Miskolc', 'ميشكولتس', 'Miskolc', '13', 92),
(1557, 'Csongrad', 'كسونجراد', 'Csongrad', '06', 92),
(1558, 'Debrecen', 'ديبريسين', 'Debrecen', '07', 92),
(1559, 'Bekes', 'بيكيس', 'Bekes', '03', 92),
(1560, 'Szeged', 'سيجد', 'Szeged', '19', 92),
(1561, 'Pecs', 'بيكس', 'Pécs', '15', 92),
(1562, 'Gyor', 'جيور', 'Gyor', '25', 92),
(1563, 'Jawa Timur', 'جاوا تيمور', 'Jawa Timur', '08', 93),
(1565, 'Sulawesi Tenggara', 'سولاويزي تينجارا', 'Sulawesi Tenggara', '22', 93),
(1567, 'Nusa Tenggara Timur', 'نوسا تينجارا تيمور', 'Nusa Tenggara Timur', '18', 93),
(1568, 'Sulawesi Utara', 'سولاويسي اوتارا', 'Sulawesi Utara', '31', 93),
(1569, 'Sumatera Barat', 'سومطرة بارات', 'Sumatera Barat', '24', 93),
(1570, 'Aceh', 'اتشيه', 'Aceh', '01', 93),
(1571, 'Sulawesi Tengah', 'سولاويزي تنجاه', 'Sulawesi Tengah', '21', 93),
(1575, 'Jawa Tengah', 'جاوا تينغاه', 'Jawa Tengah', '07', 93),
(1576, 'Jawa Barat', 'جاوا بارات', 'Jawa Barat', '30', 93),
(1577, 'Bali', 'بالي', 'Bali', '02', 93),
(1579, 'Banten', 'بانتين', 'Banten', '33', 93),
(1580, 'Sumatera Utara', 'سومطرة اوتارا', 'Sumatra Utara', '26', 93),
(1581, 'Kalimantan Timur', 'كاليمانتان تيمور', 'Kalimantan Timur', '14', 93),
(1582, 'Lampung', 'لامبونج', 'Lampung', '15', 93),
(1583, 'Nusa Tenggara Barat', 'نوسا تينجارا بارات', 'Nusa Tenggara Barat', '17', 93),
(1584, 'Kalimantan Barat', 'كاليمانتان بارات', 'Kalimantan Barat', '11', 93),
(1585, 'Kalimantan Tengah', 'كاليمنتان Tengah', 'Kalimantan Tengah', '13', 93),
(1587, 'Bengkulu', 'بنجكولو', 'Bengkulu', '03', 93),
(1588, 'Jambi', 'جامبي', 'Jambi', '05', 93),
(1589, 'Kalimantan Selatan', 'كاليمانتان سيلاتان', 'Kalimantan Selatan', '12', 93),
(1590, 'Yogyakarta', 'يوجياكرتا', 'Yogyakarta', '10', 93),
(1591, 'Jakarta Raya', 'جاكرتا رايا', 'Jakarta Raya', '04', 93),
(1593, 'Maluku', 'مالوكو', 'Maluku', '28', 93),
(1594, 'Galway', 'غالواي', 'Galway', '10', 94),
(1595, 'Cork', 'فلين', 'Liège', '04', 94),
(1596, 'Kerry', 'كيري', 'Kerry', '11', 94),
(1597, 'Limerick', 'اللمريكية قصيدة خماسية فكاهية', 'Limerick', '16', 94),
(1598, 'Longford', 'لونجفورد', 'Longford', '18', 94),
(1599, 'Laois', 'اويس', 'Laois', '15', 94),
(1600, 'Waterford', 'وترفورد', 'Waterford', '27', 94),
(1601, 'Mayo', 'مايو', 'Mayo', '20', 94),
(1602, 'Sligo', 'سليغو', 'Sligo', '25', 94),
(1603, 'Kildare', 'كيلدير', 'Kildare', '12', 94),
(1604, 'Dublin', 'دبلن', 'Dublin', '07', 94),
(1605, 'Wicklow', 'ويكلو', 'Wicklow', '31', 94),
(1606, 'Cavan', 'كافان', 'Cavan', '02', 94),
(1607, 'Kilkenny', 'كيلكيني', 'Kilkenny', '13', 94),
(1608, 'Wexford', 'ويكسفورد', 'Wexford', '30', 94),
(1609, 'Carlow', 'كارلو', 'Carlow', '01', 94),
(1610, 'Offaly', 'أوفالي', 'Offaly', '23', 94),
(1611, 'Monaghan', 'موناغان', 'Monaghan', '22', 94),
(1612, 'Leitrim', 'يتريم', 'Leitrim', '14', 94),
(1613, 'Clare', 'كلير', 'Clare', '03', 94),
(1614, 'Donegal', 'دونيجال', 'Donegal', '06', 94),
(1615, 'Louth', 'لاوث', 'Louth', '19', 94),
(1616, 'Roscommon', 'روسكومون', 'Roscommon', '24', 94),
(1617, 'Tipperary', 'تيبيراري', 'Tipperary', '26', 94),
(1618, 'Westmeath', 'ستميث', 'Westmeath', '29', 94),
(1619, 'Meath', 'ميث', 'Meath', '21', 94),
(1627, 'West Bengal', 'ولاية البنغال الغربية', 'Bengale de l\'ouest', '28', 96),
(1628, 'Uttar Pradesh', 'أوتار براديش', 'Uttar Pradesh', '36', 96),
(1629, 'Punjab', 'البنجاب', 'Punjab', '23', 96),
(1630, 'Madhya Pradesh', 'ماديا براديش', 'Madhya Pradesh', '35', 96),
(1631, 'Karnataka', 'كارناتاكا', 'Karnataka', '19', 96),
(1632, 'Maharashtra', 'ماهاراشترا', 'Maharashtra', '16', 96),
(1633, 'Haryana', 'هاريانا', 'Haryana', '10', 96),
(1634, 'Uttarakhand', 'أوتارانتشال', 'Uttarakhand', '39', 96),
(1635, 'Andhra Pradesh', 'ولاية اندرا براديش', 'Andhra Pradesh', '02', 96),
(1636, 'Tripura', 'تريبورا', 'Tripura', '26', 96),
(1637, 'Tamil Nadu', 'تاميل نادو', 'Tamil Nadu', '25', 96),
(1638, 'Jammu and Kashmir', 'جامو وكشمير', 'Jammu et Cachemire', '12', 96),
(1639, 'Andaman and Nicobar Islands', 'جزر أندامان ونيكوبار', 'Iles Andaman et Nicobar', '01', 96),
(1640, 'Assam', 'أسام', 'Assam', '03', 96),
(1641, 'Chhattisgarh', 'تشهاتيسجاره', 'Chhattisgarh', '37', 96),
(1642, 'Rajasthan', 'راجستان', 'Rajasthan', '24', 96),
(1643, 'Goa', 'غوا', 'Goa', '33', 96),
(1644, 'Puducherry', 'بودوتشيري', 'Puducherry', '22', 96),
(1645, 'Gujarat', 'غوجارات', 'Gujarat', '09', 96),
(1646, 'Kerala', 'ولاية كيرالا', 'Kerala', '13', 96),
(1647, 'Arunachal Pradesh', 'اروناتشال براديش', 'Arunachal Pradesh', '30', 96),
(1648, 'Orissa', 'أوريسا', 'Orissa', '21', 96),
(1649, 'Himachal Pradesh', 'هيماشال براديش', 'Himachal Pradesh', '11', 96),
(1650, 'Bihar', 'بيهار', 'Bihar', '34', 96),
(1651, 'Meghalaya', 'ميغالايا', 'Meghalaya', '18', 96),
(1652, 'Nagaland', 'ناجالاند', 'Nagaland', '20', 96),
(1653, 'Manipur', 'مانيبور', 'Manipur', '17', 96),
(1654, 'Mizoram', 'ميزورام', 'Mizoram', '31', 96),
(1655, 'Jharkhand', 'جهارخاند', 'Jharkhand', '38', 96),
(1657, 'Delhi', 'دلهي', 'Delhi', '07', 96),
(1658, 'Dadra and Nagar Haveli', 'دادرا وناغار هافيلي', 'Dadra et Nagar Haveli', '06', 96),
(1660, 'Daman and Diu', 'دامان وديو', 'Daman et Diu', '32', 96),
(1661, 'Sikkim', 'سيكيم', 'Sikkim', '29', 96),
(1662, 'Chandigarh', 'شانديغار', 'Chandigarh', '05', 96),
(1663, 'Lakshadweep', 'اكشادويب', 'Lakshadweep', '14', 96),
(1664, 'As Sulaymaniyah', 'السليمانية', 'Comme Sulaymaniyah', '05', 97),
(1665, 'Dhi Qar', 'ذي قار', 'Dhi Qar', '09', 97),
(1666, 'Maysan', 'ميسان', 'Maysan', '14', 97),
(1667, 'Diyala', 'ديالى', 'Diyala', '10', 97),
(1668, 'Baghdad', 'بغداد', 'Bagdad', '07', 97),
(1669, 'Wasit', 'أكانت', 'Était-ce', '16', 97),
(1670, 'Salah ad Din', 'صلاح الدين', 'Salah ad Din', '18', 97),
(1671, 'Al Qadisiyah', 'القادسية', 'Al Qadisiyah', '04', 97),
(1672, 'Babil', 'بابل', 'Babil', '06', 97),
(1673, 'Karbala\'', 'كربلاء', 'Karbala \'', '12', 97),
(1674, 'An Najaf', 'النجف', 'Un najaf', '17', 97),
(1675, 'Al Muthanna', 'المثنى', 'Al Muthanna', '03', 97),
(1676, 'Al Anbar', 'الانبار', 'Al anbar', '01', 97),
(1677, 'Dahuk', 'دهوك', 'Dahuk', '08', 97),
(1678, 'Ninawa', 'نينوى', 'Ninawa', '15', 97),
(1679, 'Arbil', 'اربيل', 'Arbil', '11', 97),
(1680, 'Al Basrah', 'البصرة', 'Al Basrah', '02', 97),
(1681, 'At Ta\'mim', 'في التميم', 'Chez ta\'mim', '13', 97),
(1682, 'Zanjan', 'زنجان', 'Zanjan', '27', 98),
(1683, 'Azarbayjan-e Bakhtari', 'أزربايجان بختاري', 'Azarbayjan-e Bakhtari', '01', 98),
(1684, 'Yazd', 'يزد', 'Yazd', '31', 98),
(1685, 'Khuzestan', 'خوزستان', 'Khuzestan', '15', 98),
(1686, 'Esfahan', 'أصفهان', 'Esfahan', '28', 98),
(1687, 'Ardabil', 'أردبيل', 'Ardabil', '32', 98),
(1688, 'Tehran', 'طهران', 'Téhéran', '26', 98),
(1689, 'East Azarbaijan', 'شرق ازربايجان', 'Azarbaijan Est', '33', 98),
(1690, 'Bushehr', 'بوشهر', 'Bushehr', '22', 98),
(1691, 'Hormozgan', 'هرمزكان', 'Hormozgan', '11', 98),
(1692, 'Mazandaran', 'مازندران', 'Mazandaran', '17', 98),
(1693, 'Kerman', 'كرمان', 'Kerman', '29', 98),
(1694, 'Fars', 'فارس', 'Fars', '07', 98),
(1695, 'Kohkiluyeh va Buyer Ahmadi', 'Kohkiluyeh va Buyer Ahmadi', 'Kohkiluyeh va Acheteur Ahmadi', '05', 98),
(1696, 'Khorasan', 'خراسان', 'Khorasan', '30', 98),
(1697, 'Sistan va Baluchestan', 'سيستان وبلوتشستان', 'Sistan va Baluchestan', '04', 98),
(1698, 'Chahar Mahall va Bakhtiari', 'Chahar Mahall va Bakhtiari', 'Chahar Mahall va Bakhtiari', '03', 98),
(1699, 'Kerman', 'كرمان', 'Kerman', '12', 98),
(1700, 'Mazandaran', 'مازندران', 'Mazandaran', '35', 98),
(1701, 'Qazvin', 'قزوين', 'Qazvin', '38', 98),
(1702, 'Zanjan', 'زنجان', 'Zanjan', '36', 98),
(1703, 'Markazi', 'المركزي', 'Markazi', '24', 98),
(1704, 'Markazi', 'المركزي', 'Markazi', '19', 98),
(1705, 'Lorestan', 'ورستان', 'Lorestan', '23', 98),
(1706, 'Markazi', 'المركزي', 'Markazi', '34', 98),
(1707, 'Khorasan-e Razavi', 'خراسان رضوي', 'Khorasan-e Razavi', '42', 98),
(1708, 'Hamadan', 'همدان', 'Hamadan', '09', 98),
(1709, 'Semnan', 'سمنان', 'Semnan', '25', 98),
(1710, 'Gilan', 'جيلان', 'Gilan', '08', 98),
(1711, 'Kordestan', 'كردستان', 'Kordestan', '16', 98),
(1712, 'Bakhtaran', 'Bakhtaran', 'Bakhtaran', '13', 98),
(1713, 'Ilam', 'إيلام', 'Ilam', '10', 98),
(1714, 'Semnan Province', 'مقاطعة سمنان', 'Province de Semnan', '18', 98),
(1715, 'Golestan', 'كلستان', 'Golestan', '37', 98),
(1716, 'Qom', 'قم', 'Qom', '39', 98),
(1718, 'Zanjan', 'زنجان', 'Zanjan', '21', 98),
(1720, 'Skagafjardarsysla', 'Skagafjardarsysla', 'Skagafjardarsysla', '28', 99),
(1721, 'Borgarfjardarsysla', 'Borgarfjardarsysla', 'Borgarfjardarsysla', '07', 99),
(1722, 'Myrasysla', 'Myrasysla', 'Myrasysla', '17', 99),
(1723, 'Rangarvallasysla', 'Rangarvallasysla', 'Rangarvallasysla', '23', 99),
(1724, 'Eyjafjardarsysla', 'Eyjafjardarsysla', 'Eyjafjardarsysla', '09', 99),
(1725, 'Kjosarsysla', 'Kjosarsysla', 'Kjosarsysla', '15', 99),
(1726, 'Vestur-Isafjardarsysla', 'Vestur-Isafjardarsysla', 'Vestur-Isafjardarsysla', '36', 99),
(1728, 'Strandasysla', 'Strandasysla', 'Strandasysla', '30', 99),
(1729, 'Gullbringusysla', 'Gullbringusysla', 'Gullbringusysla', '10', 99),
(1730, 'Austur-Hunavatnssysla', 'Austur-Hunavatnssysla', 'Austur-Hunavatnssysla', '05', 99),
(1731, 'Austur-Skaftafellssysla', 'Austur-Skaftafellssysla', 'Austur-Skaftafellssysla', '06', 99),
(1732, 'Nordur-Mulasysla', 'Nordur-Mulasysla', 'Nordur-Mulasysla', '20', 99),
(1733, 'Sudur-Mulasysla', 'Sudur-Mulasysla', 'Sudur-Mulasysla', '31', 99),
(1734, 'Vestur-Bardastrandarsysla', 'Vestur-Bardastrandarsysla', 'Vestur-Bardastrandarsysla', '34', 99),
(1735, 'Snafellsnes- og Hnappadalssysla', 'Snafellsnes- og Hnappadalssysla', 'Snafellsnes- og Hnappadalssysla', '29', 99),
(1736, 'Arnessysla', 'Arnessysla', 'Arnessysla', '03', 99),
(1737, 'Vestur-Hunavatnssysla', 'Vestur-Hunavatnssysla', 'Vestur-Hunavatnssysla', '35', 99),
(1738, 'Sudur-Tingeyjarsysla', 'Sudur-Tingeyjarsysla', 'Sudur-Tingeyjarsysla', '32', 99),
(1740, 'Vestur-Skaftafellssysla', 'Vestur-Skaftafellssysla', 'Vestur-Skaftafellssysla', '37', 99),
(1742, 'Nordur-Tingeyjarsysla', 'Nordur-Tingeyjarsysla', 'Nordur-Tingeyjarsysla', '21', 99),
(1743, 'Toscana', 'توسكانا', 'Toscana', '16', 100),
(1744, 'Veneto', 'فينيتو', 'Vénétie', '20', 100),
(1745, 'Campania', 'كامبانيا', 'Campanie', '04', 100),
(1746, 'Marche', 'مارتش', 'Marches', '10', 100),
(1747, 'Piemonte', 'بيمونتي', 'Piemonte', '12', 100),
(1748, 'Lombardia', 'لومبارديا', 'Lombardie', '09', 100),
(1749, 'Sardegna', 'ساردينيا', 'Sardegna', '14', 100),
(1750, 'Abruzzi', 'أبروتسو', 'Abruzzes', '01', 100),
(1751, 'Emilia-Romagna', 'إيميليا-رومانيا', 'Emilie-Romagne', '05', 100),
(1752, 'Trentino-Alto Adige', 'ترينتينو ألتو أديجي', 'Trentin-Haut-Adige', '17', 100),
(1753, 'Umbria', 'أومبريا', 'Ombrie', '18', 100),
(1754, 'Basilicata', 'باسيليكاتا', 'Basilicate', '02', 100),
(1755, 'Puglia', 'بوليا', 'Pouilles', '13', 100),
(1756, 'Sicilia', 'صقلية', 'Sicilia', '15', 100),
(1757, 'Lazio', 'لاتسيو', 'Lazio', '07', 100),
(1758, 'Liguria', 'ليغوريا', 'Ligurie', '08', 100),
(1759, 'Calabria', 'كالابريا', 'Calabre', '03', 100),
(1760, 'Molise', 'موليز', 'Molise', '11', 100),
(1761, 'Friuli-Venezia Giulia', 'فريولي فينيتسيا جوليا', 'Frioul-Vénétie Julienne', '06', 100),
(1762, 'Valle d\'Aosta', 'فالي أوستا', 'Valle d\'Aosta', '19', 100),
(1764, 'Saint Ann', 'سانت آن', 'Sainte ann', '09', 101),
(1765, 'Saint Elizabeth', 'سانت إليزابيث', 'Saint elizabeth', '11', 101),
(1766, 'Hanover', 'هانوفر', 'Hanovre', '02', 101),
(1767, 'Westmoreland', 'يستمورلاند', 'Westmoreland', '16', 101),
(1768, 'Trelawny', 'تريلاوني', 'Trelawny', '15', 101),
(1769, 'Manchester', 'مانشستر', 'Manchester', '04', 101),
(1770, 'Saint James', 'جيمس قديس', 'Saint James', '12', 101),
(1771, 'Saint Andrew', 'القديس أندرو', 'Saint andrew', '08', 101),
(1772, 'Saint Thomas', 'سانت توماس', 'Saint thomas', '14', 101),
(1773, 'Saint Mary', 'القديس ماري', 'Sainte Marie', '13', 101),
(1774, 'Portland', 'بورتلاند', 'Portland', '07', 101),
(1775, 'Clarendon', 'كلارندون', 'Clarendon', '01', 101),
(1776, 'Saint Catherine', 'سانت كاترين', 'Sainte catherine', '10', 101),
(1777, 'Kingston', 'كينغستون', 'Kingston', '17', 101),
(1779, 'At Tafilah', 'في الطفيلة', 'Chez tafilah', '12', 102),
(1782, 'Al Karak', 'الكرك', 'Al Karak', '09', 102),
(1784, 'Al Balqa\'', 'البلقاء', 'Al Balqa \'', '02', 102),
(1786, 'Amman', 'عمان', 'Amman', '16', 102),
(1787, 'Al Aqabah', 'العقبة', 'Al Aqabah', '21', 102),
(1788, 'Okinawa', 'أوكيناوا', 'Okinawa', '47', 103),
(1789, 'Nagasaki', 'ناغازاكي', 'Nagasaki', '27', 103),
(1790, 'Hokkaido', 'هوكايدو', 'Hokkaido', '12', 103),
(1791, 'Tokushima', 'توكوشيما', 'Tokushima', '39', 103),
(1792, 'Mie', 'مي', 'Mie', '23', 103),
(1793, 'Kanagawa', 'كاناغاوا', 'Kanagawa', '19', 103),
(1794, 'Chiba', 'شيبا', 'Chiba', '04', 103),
(1795, 'Hyogo', 'هيوغو', 'Hyogo', '13', 103),
(1796, 'Yamaguchi', 'ياماغوتشي', 'Yamaguchi', '45', 103),
(1797, 'Aomori', 'أوموري', 'Aomori', '03', 103),
(1798, 'Miyazaki', 'ميازاكي', 'Miyazaki', '25', 103),
(1799, 'Shizuoka', 'شيزوكا', 'Shizuoka', '37', 103),
(1800, 'Shimane', 'شيمان', 'Shimane', '36', 103),
(1801, 'Fukushima', 'فوكوشيما', 'Fukushima', '08', 103),
(1802, 'Okayama', 'أوكاياما', 'Okayama', '31', 103),
(1803, 'Shiga', 'شيجا', 'Shiga', '35', 103),
(1804, 'Kagoshima', 'كاجوشيما', 'Kagoshima', '18', 103),
(1805, 'Hiroshima', 'هيروشيما', 'Hiroshima', '11', 103),
(1806, 'Tottori', 'توتوري', 'Tottori', '41', 103),
(1807, 'Akita', 'اكيتا', 'Akita', '02', 103),
(1808, 'Nagano', 'ناغانو', 'Nagano', '26', 103),
(1809, 'Fukui', 'فوكوي', 'Fukui', '06', 103),
(1810, 'Saitama', 'سايتاما', 'Saitama', '34', 103),
(1811, 'Wakayama', 'واكاياما', 'Wakayama', '43', 103),
(1812, 'Kochi', 'كوتشي', 'Kochi', '20', 103),
(1813, 'Iwate', 'ايواتي', 'Iwate', '16', 103),
(1814, 'Miyagi', 'مياجي', 'Miyagi', '24', 103),
(1815, 'Niigata', 'نيجاتا', 'Niigata', '29', 103),
(1816, 'Gumma', 'صمغة', 'Gumma', '10', 103),
(1817, 'Aichi', 'أيشي', 'Aichi', '01', 103),
(1818, 'Toyama', 'توياما', 'Toyama', '42', 103),
(1819, 'Kumamoto', 'كوماموتو', 'Kumamoto', '21', 103),
(1820, 'Kagawa', 'كاغاوا', 'Kagawa', '17', 103),
(1821, 'Ehime', 'ايمى', 'Ehime', '05', 103),
(1822, 'Tokyo', 'طوكيو', 'Tokyo', '40', 103),
(1823, 'Fukuoka', 'فوكوكا', 'Fukuoka', '07', 103),
(1824, 'Tochigi', 'توتشيغي', 'Tochigi', '38', 103),
(1825, 'Yamagata', 'ياماغاتا', 'Yamagata', '44', 103),
(1826, 'Saga', 'قصة طويلة', 'Saga', '33', 103),
(1827, 'Oita', 'أويتا', 'Oita', '30', 103),
(1828, 'Gifu', 'جيفو', 'Gifu', '09', 103),
(1829, 'Ishikawa', 'إيشيكاوا', 'Ishikawa', '15', 103),
(1830, 'Nara', 'نارا', 'Nara', '28', 103),
(1831, 'Ibaraki', 'ايباراكي', 'Ibaraki', '14', 103),
(1832, 'Kyoto', 'كيوتو', 'Kyoto', '22', 103),
(1833, 'Yamanashi', 'ياماناشي', 'Yamanashi', '46', 103),
(1834, 'Osaka', 'أوساكا', 'Osaka', '32', 103),
(1835, 'Coast', 'ساحل', 'Côte', '02', 104),
(1836, 'Nyanza', 'نيانزا', 'Nyanza', '07', 104),
(1837, 'Rift Valley', 'الوادي المتصدع', 'La vallée du Rift', '08', 104),
(1838, 'Western', 'الغربي', 'Occidental', '09', 104),
(1839, 'North-Eastern', 'شمال شرق', 'Nord-est', '06', 104),
(1840, 'Eastern', 'الشرقية', 'Est', '03', 104),
(1841, 'Nairobi Area', 'منطقة نيروبي', 'Région de Nairobi', '05', 104),
(1842, 'Central', 'وسط', 'Central', '01', 104),
(1843, 'Jalal-Abad', 'جلال آباد', 'Jalal-Abad', '03', 105),
(1844, 'Naryn', 'نارين', 'Naryn', '04', 105),
(1845, 'Osh', 'أوش', 'Osh', '05', 105),
(1846, 'Chuy', 'تشوي', 'Chuy', '02', 105),
(1847, 'Ysyk-Kol', 'يسيك-كول', 'Ysyk-Kol', '07', 105),
(1848, 'Bishkek', 'بيشكيك', 'Bichkek', '01', 105),
(1849, 'Talas', 'تالاس', 'Talas', '06', 105),
(1850, 'Batken', 'باتكن', 'Batken', '09', 105),
(1852, 'Siem Reap', 'سيم ريب', 'Siem Reap', '16', 106),
(1853, 'Kracheh', 'كراتي', 'Kracheh', '09', 106),
(1854, 'Kampong Thum', 'كامبونغ ثوم', 'Kampong Thum', '05', 106),
(1855, 'Kampong Chhnang', 'كامبونج شنانج', 'Kampong Chhnang', '03', 106),
(1857, 'Kampong Cham', 'كامبونج تشام', 'Kampong Cham', '02', 106),
(1858, 'Kampong Speu', 'كامبونج سبيو', 'Kampong Speu', '04', 106),
(1859, 'Takeo', 'اتخاذ س', 'Takeo', '19', 106),
(1860, 'Batdambang', 'باتامبانغ', 'Batdambang', '01', 106),
(1861, 'Prey Veng', 'بريى فنج', 'Prey Veng', '14', 106),
(1862, 'Ratanakiri Kiri', 'راتاناكيري كيري', 'Ratanakiri Kiri', '15', 106),
(1863, 'Svay Rieng', 'سفاي رينج', 'Svay Rieng', '18', 106),
(1864, 'Koh Kong', 'كوه كونغ', 'Koh Kong', '08', 106),
(1865, 'Pursat', 'بورسات', 'Pursat', '12', 106),
(1866, 'Phnum Penh', 'بنوم بنه', 'Phnum Penh', '11', 106),
(1867, 'Mondulkiri', 'موندولكيري', 'Mondulkiri', '10', 106),
(1868, 'Stung Treng', 'ستونغ ترينغ', 'Stung Treng', '17', 106),
(1869, 'Kampot', 'كامبوت', 'Kampot', '06', 106),
(1870, 'Banteay Meanchey', 'بانتي ميانشي', 'Banteay Meanchey', '25', 106),
(1871, 'Preah Vihear', 'برياه فيهيار', 'Preah Vihear', '13', 106),
(1872, 'Kandal', 'كاندال', 'Kandal', '07', 106),
(1874, 'Anjouan', 'أنجوان', 'Anjouan', '01', 108),
(1875, 'Moheli', 'موهيلي', 'Moheli', '03', 108),
(1876, 'Grande Comore', 'القمر الكبرى', 'Grande Comore', '02', 108),
(1877, 'Saint George Gingerland', 'سانت جورج جينجيرلاند', 'Saint George Gingerland', '04', 109),
(1878, 'Saint James Windward', 'سانت جيمس ويندوارد', 'Saint James Windward', '05', 109),
(1879, 'Saint Thomas Lowland', 'سانت توماس لوولاند', 'Saint Thomas Lowland', '12', 109),
(1880, 'Saint George Basseterre', 'سانت جورج باسيتير', 'Saint George Basseterre', '03', 109),
(1881, 'Saint John Figtree', 'القديس يوحنا فيجترى', 'Saint John Figtree', '07', 109),
(1882, 'Saint Peter Basseterre', 'القديس بطرس باستير', 'Saint Peter Basseterre', '11', 109),
(1883, 'Saint John Capisterre', 'القديس يوحنا كابيستر', 'Saint Jean Capisterre', '06', 109),
(1884, 'Christ Church Nichola Town', 'كنيسة المسيح نيقولا تاون', 'Christ Church Nichola Town', '01', 109),
(1885, 'Trinity Palmetto Point', 'الثالوث بالميتو بوينت', 'Trinity Palmetto Point', '15', 109),
(1886, 'Saint Anne Sandy Point', 'سانت آن ساندي بوينت', 'Sainte Anne Sandy Point', '02', 109),
(1887, 'Saint Mary Cayon', 'سانت ماري كايون', 'Saint Mary Cayon', '08', 109),
(1888, 'Saint Thomas Middle Island', 'جزيرة سانت توماس الوسطى', 'Saint Thomas Middle Island', '13', 109),
(1889, 'Saint Paul Capisterre', 'سانت بول كابيستر', 'Saint Paul Capisterre', '09', 109),
(1890, 'P\'yongan-namdo', 'P\'yongan-نامدو', 'P\'yongan-namdo', '15', 110),
(1891, 'P\'yongan-bukto', 'P\'yongan-bukto', 'P\'yongan-bukto', '11', 110),
(1892, 'P\'yongyang-si', 'P\'yongyang-سي', 'P\'yongyang-si', '12', 110),
(1893, 'Kangwon-do', 'كانج وون دو', 'Kangwon-do', '09', 110),
(1894, 'Hwanghae-bukto', 'هوانغهاي-bukto', 'Hwanghae-bukto', '07', 110),
(1895, 'Hamgyong-namdo', 'هامكيونغ-نامدو', 'Hamgyong-namdo', '03', 110),
(1896, 'Chagang-do', 'تشاغانغ دو', 'Chagang-do', '01', 110),
(1897, 'Hamgyong-bukto', 'هامكيونغ-bukto', 'Hamgyong-bukto', '17', 110),
(1898, 'Hwanghae-namdo', 'هوانغهاي-نامدو', 'Hwanghae-namdo', '06', 110),
(1899, 'Namp\'o-si', 'Namp\'o-سي', 'Namp\'o-si', '14', 110),
(1900, 'Kaesong-si', 'كايسونج، الاشتراكية', 'Kaesong-si', '08', 110),
(1901, 'Yanggang-do', 'يانجانج دو', 'Yanggang-do', '13', 110),
(1902, 'Najin Sonbong-si', 'ناجين سونبونج سي', 'Najin Sonbong-si', '18', 110),
(1903, 'Ch\'ungch\'ong-bukto', 'Ch\'ungch\'ong-bukto', 'Ch\'ungch\'ong-bukto', '05', 111),
(1904, 'Kangwon-do', 'كانج وون دو', 'Kangwon-do', '06', 111),
(1905, 'Ch\'ungch\'ong-namdo', 'Ch\'ungch\'ong-نامدو', 'Ch\'ungch\'ong-namdo', '17', 111),
(1906, 'Kyongsang-bukto', 'كيونجسانج-bukto', 'Kyongsang-bukto', '14', 111),
(1907, 'Cholla-namdo', 'تشولا-نامدو', 'Cholla-namdo', '16', 111),
(1908, 'Kyonggi-do', 'كيونجي دو', 'Kyonggi-do', '13', 111),
(1909, 'Cheju-do', 'تشيجو دو', 'Cheju-do', '01', 111),
(1910, 'Cholla-bukto', 'تشولا-bukto', 'Cholla-bukto', '03', 111),
(1911, 'Seoul-t\'ukpyolsi', 'سول-t\'ukpyolsi', 'Séoul-t\'ukpyolsi', '11', 111),
(1912, 'Kyongsang-namdo', 'كيونجسانج-نامدو', 'Kyongsang-namdo', '20', 111),
(1913, 'Taegu-jikhalsi', 'تايجو-jikhalsi', 'Taegu-Jikhalsi', '15', 111),
(1914, 'Pusan-jikhalsi', 'بوسان-jikhalsi', 'Pusan-Jikhalsi', '10', 111),
(1915, 'Kwangju-jikhalsi', 'كوانجو-jikhalsi', 'Kwangju-jikhalsi', '18', 111),
(1916, 'Ulsan-gwangyoksi', 'أولسان-gwangyoksi', 'Ulsan-Gwangyoksi', '21', 111),
(1917, 'Inch\'on-jikhalsi', 'إنشون-jikhalsi', 'Inch\'on-jikhalsi', '12', 111),
(1918, 'Taejon-jikhalsi', 'تايجون-jikhalsi', 'Taejon-jikhalsi', '19', 111),
(1919, 'Al Kuwayt', 'الكوييت', 'Al Kuwayt', '02', 112),
(1920, 'Al Jahra', 'الجهراء', 'Al Jahra', '05', 112),
(1923, 'Almaty', 'ألماتي', 'Almaty', '01', 114),
(1924, 'South Kazakhstan', 'جنوب كازاخستان', 'Kazakhstan du sud', '10', 114),
(1925, 'North Kazakhstan', 'شمال كازاخستان', 'Kazakhstan du Nord', '16', 114),
(1926, 'Pavlodar', 'بافلودار', 'Pavlodar', '11', 114),
(1927, 'Qaraghandy', 'كاراجهاندي', 'Qaraghandy', '12', 114),
(1928, 'Qyzylorda', 'كيزيلورودا', 'Qyzylorda', '14', 114),
(1929, 'East Kazakhstan', 'شرق كازاخستان', 'Kazakhstan oriental', '15', 114),
(1930, 'Aqmola', 'أكمولا', 'Aqmola', '03', 114),
(1931, 'Aqtobe', 'أكتوب', 'Aqtobe', '04', 114),
(1932, 'Qostanay', 'كوستاناي', 'Qostanay', '13', 114),
(1933, 'West Kazakhstan', 'غرب كازاخستان', 'Kazakhstan occidental', '07', 114),
(1934, 'Atyrau', 'أتيراو', 'Atyrau', '06', 114),
(1935, 'Zhambyl', 'Zhambyl', 'Zhambyl', '17', 114),
(1936, 'Astana', 'أستانا', 'Astana', '05', 114),
(1937, 'Mangghystau', 'مانجهيستاو', 'Mangghystau', '09', 114),
(1938, 'Almaty City', 'مدينة ألماتي', 'Almaty City', '02', 114),
(1939, 'Bayqonyr', 'Bayqonyr', 'Bayqonyr', '08', 114),
(1941, 'Savannakhet', 'سافاناخيت', 'Savannakhet', '10', 115),
(1942, 'Phongsali', 'فونغسالي', 'Phongsali', '08', 115),
(1943, 'Saravan', 'سروان', 'Saravan', '09', 115),
(1946, 'Houaphan', 'هوافان', 'Houaphan', '03', 115),
(1947, 'Attapu', 'أتابو', 'Attapu', '01', 115),
(1949, 'Champasak', 'تشامباساك', 'Champasak', '02', 115),
(1950, 'Louangphrabang', 'وانجفرابانج', 'Louangphrabang', '17', 115),
(1951, 'Oudomxai', 'أودومكساي', 'Oudomxai', '07', 115),
(1955, 'Xiangkhoang', 'زيانجكوانج', 'Xiangkhoang', '14', 115),
(1956, 'Vientiane', 'فينتيان', 'Vientiane', '11', 115),
(1960, 'Xaignabouri', 'Xaignabouri', 'Xaignabouri', '13', 115),
(1961, 'Khammouan', 'خاموان', 'Khammouan', '04', 115),
(1966, 'Liban-Nord', 'شمال لبنان', 'Liban-Nord', '03', 116),
(1967, 'Al Janub', 'الجنوب', 'Al Janub', '02', 116),
(1968, 'Beyrouth', 'بيروت', 'Beyrouth', '04', 116),
(1969, 'Mont-Liban', 'جبل لبنان', 'Mont-Liban', '05', 116),
(1970, 'Beqaa', 'البقاع', 'Beqaa', '01', 116),
(1971, 'Liban-Sud', 'لبنان-سود', 'Liban-Sud', '06', 116),
(1972, 'Micoud', 'ميكو', 'Micoud', '08', 117),
(1973, 'Laborie', 'لابوري', 'Laborie', '07', 117),
(1974, 'Dennery', 'دينيري', 'Dennery', '05', 117),
(1975, 'Anse-la-Raye', 'آنس-لا-راي', 'Anse-la-Raye', '01', 117),
(1976, 'Vieux-Fort', 'فيو فورت', 'Vieux-Fort', '10', 117),
(1977, 'Castries', 'كاستري', 'Castries', '03', 117),
(1978, 'Soufriere', 'سوفرير', 'Soufrière', '09', 117),
(1979, 'Gros-Islet', 'جروس-جزيرة', 'Gros-Islet', '06', 117),
(1980, 'Choiseul', 'تشويسيول', 'Choiseul', '04', 117),
(1981, 'Dauphin', 'الدوفين الابن البكر لملك فرنسي', 'Dauphin', '02', 117),
(1982, 'Praslin', 'براسلين', 'Praslin', '11', 117),
(1983, 'Balzers', 'بلزرس', 'Balzers', '01', 118),
(1984, 'Gamprin', 'جمبرين', 'Gamprin', '03', 118),
(1985, 'Planken', 'بلانكن', 'Planken', '05', 118),
(1986, 'Vaduz', 'فادوز', 'Vaduz', '11', 118),
(1987, 'Eschen', 'اشن', 'Eschen', '02', 118),
(1988, 'Triesenberg', 'تريسنبرغ', 'Triesenberg', '10', 118),
(1989, 'Schellenberg', 'شلينبرغ', 'Schellenberg', '08', 118),
(1990, 'Mauren', 'مورن', 'Mauren', '04', 118),
(1991, 'Ruggell', 'روجل', 'Ruggell', '06', 118),
(1992, 'Schaan', 'ستشان', 'Schaan', '07', 118),
(1993, 'Triesen', 'تريزين', 'Triesen', '09', 118),
(1994, 'North Western', 'الشمال الغربي', 'Nord ouest', '32', 119),
(1995, 'Southern', 'جنوبي', 'Du sud', '34', 119),
(1996, 'Central', 'وسط', 'Central', '29', 119);
INSERT INTO `cities` (`id`, `name_en`, `name_ar`, `name_fr`, `code`, `country_id`) VALUES
(1997, 'Sabaragamuwa', 'ساباراغاموا', 'Sabaragamuwa', '33', 119),
(1998, 'North Central', 'شمال وسط', 'Centre Nord', '30', 119),
(2000, 'Western', 'الغربي', 'Occidental', '36', 119),
(2001, 'Uva', 'أوفا', 'Uva', '35', 119),
(2002, 'Nimba', 'نيمبا', 'Nimba', '09', 120),
(2003, 'Grand Bassa', 'غراند باسا', 'Grand Bassa', '11', 120),
(2004, 'Lofa', 'وفا', 'Lofa', '05', 120),
(2005, 'Bong', 'بونغ', 'Bong', '01', 120),
(2007, 'Montserrado', 'مونتسيرادو', 'Montserrado', '14', 120),
(2009, 'Margibi', 'مارغيبي', 'Margibi', '17', 120),
(2011, 'Sino', 'الصينية', 'Sino', '10', 120),
(2012, 'River Cess', 'نهر سيس', 'Rivière cess', '18', 120),
(2013, 'Grand Cape Mount', 'غراند كيب ماونت', 'Mont Grand Cap', '12', 120),
(2015, 'Maryland', 'ماريلاند', 'Maryland', '13', 120),
(2016, 'Grand Cape Mount', 'غراند كيب ماونت', 'Mont Grand Cap', '04', 120),
(2017, 'Gbarpolu', 'غباربولو', 'Gbarpolu', '21', 120),
(2018, 'River Gee', 'نهر جي', 'River Gee', '22', 120),
(2019, 'Grand Gedeh', 'جراند جيده', 'Grand Gedeh', '19', 120),
(2020, 'Lofa', 'وفا', 'Lofa', '20', 120),
(2021, 'Maseru', 'ماسيرو', 'Maseru', '14', 121),
(2022, 'Quthing', 'كوثينج', 'Quthing', '18', 121),
(2023, 'Mafeteng', 'مافتينج', 'Mafeteng', '13', 121),
(2024, 'Berea', 'بيريا', 'Berea', '10', 121),
(2025, 'Mohales Hoek', 'موهاليس هوك', 'Mohales Hoek', '15', 121),
(2026, 'Thaba-Tseka', 'تابا تسيكا', 'Thaba-Tseka', '19', 121),
(2027, 'Butha-Buthe', 'بوثا بوثي', 'Butha-Buthe', '11', 121),
(2028, 'Leribe', 'يرايب', 'Leribe', '12', 121),
(2029, 'Qachas Nek', 'كاشاس نيك', 'Qachas Nek', '17', 121),
(2030, 'Mokhotlong', 'موكوتلونج', 'Mokhotlong', '16', 121),
(2032, 'Panevezio Apskritis', 'بانيفزيو ابسكريتيس', 'Panevezio Apskritis', '60', 122),
(2033, 'Telsiu Apskritis', 'Telsiu Apskritis', 'Telsiu Apskritis', '63', 122),
(2034, 'Klaipedos Apskritis', 'Klaipedos Apskritis', 'Klaipedos Apskritis', '58', 122),
(2035, 'Vilniaus Apskritis', 'Vilniaus Apskritis', 'Vilniaus Apskritis', '65', 122),
(2036, 'Siauliu Apskritis', 'Siauliu Apskritis', 'Siauliu Apskritis', '61', 122),
(2037, 'Taurages Apskritis', 'Taurages Apskritis', 'Taurages Apskritis', '62', 122),
(2038, 'Marijampoles Apskritis', 'Marijampoles Apskritis', 'Marijampoles Apskritis', '59', 122),
(2040, 'Utenos Apskritis', 'Utenos Apskritis', 'Utenos Apskritis', '64', 122),
(2041, 'Alytaus Apskritis', 'عليتاوس ابسكريتيس', 'Alytaus Apskritis', '56', 122),
(2042, 'Kauno Apskritis', 'كاونو ابسكريتيس', 'Kauno Apskrite', '57', 122),
(2043, 'Luxembourg', 'لوكسمبورغ', 'Luxembourg', '03', 123),
(2044, 'Grevenmacher', 'Grevenmacher', 'Grevenmacher', '02', 123),
(2045, 'Diekirch', 'Diekirch', 'Diekirch', '01', 123),
(2046, 'Madonas', 'مادوناس', 'Madonas', '20', 124),
(2047, 'Kuldigas', 'كلديجاس', 'Kuldigas', '15', 124),
(2048, 'Daugavpils', 'داوجافبيلس', 'Daugavpils', '07', 124),
(2049, 'Tukuma', 'تكما', 'Tukuma', '29', 124),
(2050, 'Ventspils', 'فنتسبيلز', 'Ventspils', '33', 124),
(2051, 'Dobeles', 'دوبيليز', 'Dobeles', '08', 124),
(2052, 'Liepajas', 'ليباجاس', 'Liepajas', '17', 124),
(2053, 'Balvu', 'بالفو', 'Balvu', '03', 124),
(2054, 'Saldus', 'سالدوس', 'Saldus', '27', 124),
(2055, 'Bauskas', 'باوسكا', 'Bauskas', '04', 124),
(2056, 'Limbazu', 'يمبازو', 'Limbazu', '18', 124),
(2057, 'Ludzas', 'لدزاس', 'Ludzas', '19', 124),
(2058, 'Cesu', 'سيسو', 'Cesu', '05', 124),
(2059, 'Jekabpils', 'يكاب', 'Jekabpils', '10', 124),
(2060, 'Aluksnes', 'ألكسنيز', 'Aluksnes', '02', 124),
(2061, 'Rezeknes', 'ريزكنس', 'Rezeknes', '24', 124),
(2062, 'Rigas', 'ريغاس', 'Rigas', '26', 124),
(2063, 'Ogres', 'الغيلان', 'Les ogres', '21', 124),
(2064, 'Kraslavas', 'كراسلافاس', 'Kraslavas', '14', 124),
(2065, 'Gulbenes', 'جلبينيز', 'Gulbènes', '09', 124),
(2066, 'Riga', 'ريغا', 'Riga', '25', 124),
(2067, 'Preilu', 'بريلي', 'Preilu', '22', 124),
(2068, 'Aizkraukles', 'أيزكروكليز', 'Aizkraukles', '01', 124),
(2069, 'Talsu', 'تالسو', 'Talsu', '28', 124),
(2070, 'Jelgavas', 'جيلجافاس', 'Jelgavas', '12', 124),
(2071, 'Valkas', 'فالكاس', 'Valkas', '30', 124),
(2072, 'Valmieras', 'فالميراس', 'Valmieras', '31', 124),
(2073, 'Liepaja', 'يابايا', 'Liepaja', '16', 124),
(2074, 'Ventspils', 'فنتسبيلز', 'Ventspils', '32', 124),
(2075, 'Daugavpils', 'داوجافبيلس', 'Daugavpils', '06', 124),
(2076, 'Rezekne', 'ريزكن', 'Rezekne', '23', 124),
(2077, 'Yafran', 'يفرن', 'Yafran', '62', 125),
(2078, 'Tarabulus', 'طرابلس', 'Tarabulus', '61', 125),
(2079, 'An Nuqat al Khams', 'أحد فنادق الخمس', 'Un nuqat al khams', '51', 125),
(2080, 'Al Aziziyah', 'العزيزية', 'Al Aziziyah', '03', 125),
(2081, 'Az Zawiyah', 'الزاوية', 'Az Zawiyah', '53', 125),
(2082, 'Misratah', 'مصراتة', 'Misratah', '58', 125),
(2083, 'Gharyan', 'غريان', 'Gharyan', '57', 125),
(2084, 'Tubruq', 'طبرق', 'Tubruq', '42', 125),
(2085, 'Tarhunah', 'ترهونة', 'Tarhunah', '41', 125),
(2087, 'Ash Shati\'', 'الشطي', 'Ash Shati \'', '13', 125),
(2088, 'Ajdabiya', 'اجدابيا', 'Ajdabiya', '47', 125),
(2089, 'Murzuq', 'مرزق', 'Murzuq', '30', 125),
(2090, 'Al Jabal al Akhdar', 'الجبل الاخضر', 'Al Jabal al Akhdar', '49', 125),
(2093, 'Ghadamis', 'غدامس', 'Ghadamis', '56', 125),
(2096, 'Awbari', 'Awbari', 'Awbari', '52', 125),
(2097, 'Al Khums', 'الخمص', 'Al Khums', '50', 125),
(2099, 'Al Kufrah', 'الكفرة', 'Al Kufrah', '08', 125),
(2102, 'Al Fatih', 'الفاتح', 'Al Fatih', '48', 125),
(2103, 'Banghazi', 'بنغازي', 'Banghazi', '54', 125),
(2104, 'Zlitan', 'زليتن', 'Zlitan', '45', 125),
(2105, 'Al Jufrah', 'الجفرة', 'Al Jufrah', '05', 125),
(2108, 'Sawfajjin', 'Sawfajjin', 'Sawfajjin', '59', 125),
(2110, 'Darnah', 'درنة', 'Darnah', '55', 125),
(2111, 'Sabha', 'سبها', 'Sabha', '34', 125),
(2116, 'Surt', 'سرت', 'Surt', '60', 125),
(2166, 'Gagauzia', 'جاجوزيا', 'Gagaouzie', '51', 128),
(2175, 'Antananarivo', 'أنتاناناريفو', 'Antananarivo', '05', 129),
(2176, 'Mahajanga', 'ماهاجانغا', 'Mahajanga', '03', 129),
(2177, 'Toliara', 'توليارا', 'Toliara', '06', 129),
(2178, 'Fianarantsoa', 'فيانارانتسوا', 'Fianarantsoa', '02', 129),
(2179, 'Antsiranana', 'أنتسيرانانا', 'Antsiranana', '01', 129),
(2180, 'Toamasina', 'تواماسينا', 'Toamasina', '04', 129),
(2182, 'Petrovec', 'بيتروفيتش', 'Petrovec', '79', 131),
(2183, 'Bogovinje', 'بوجوفينيه', 'Bogovinje', '10', 131),
(2184, 'Lozovo', 'وزوفو', 'Lozovo', '60', 131),
(2185, 'Rostusa', 'Rostusa', 'Rostusa', '88', 131),
(2186, 'Staro Nagoricane', 'ستارو ناجوريكان', 'Staro Nagoricane', '97', 131),
(2187, 'Gevgelija', 'غيفيغليا', 'Gevgelija', '33', 131),
(2188, 'Srbinovo', 'Srbinovo', 'Srbinovo', '94', 131),
(2189, 'Orasac', 'أوراساك', 'Orasac', '75', 131),
(2190, 'Valandovo', 'فالاندوفو', 'Valandovo', 'A8', 131),
(2191, 'Ilinden', 'إيلندين', 'Ilinden', '36', 131),
(2192, 'Ohrid', 'أوهريد', 'Ohrid', '74', 131),
(2193, 'Sveti Nikole', 'سفيتي نيكول', 'Sveti Nikole', 'A4', 131),
(2194, 'Lipkovo', 'يبكوفو', 'Lipkovo', '59', 131),
(2195, 'Zitose', 'زيتوسي', 'Zitose', 'C4', 131),
(2196, 'Studenicani', 'ستدينيكاني', 'Studenicani', 'A2', 131),
(2197, 'Krivogastani', 'كريفوغاستاني', 'Krivogastani', '53', 131),
(2198, 'Radovis', 'رادوفيس', 'Radovis', '84', 131),
(2199, 'Dobrusevo', 'Dobrusevo', 'Dobrusevo', '26', 131),
(2200, 'Rankovce', 'رانكوفس', 'Rankovce', '85', 131),
(2201, 'Topolcani', 'Topolcani', 'Topolcani', 'A7', 131),
(2202, 'Kriva Palanka', 'كريفا بالانكا', 'Kriva Palanka', '52', 131),
(2203, 'Zajas', 'زاجاس', 'Zajas', 'C1', 131),
(2204, 'Vitoliste', 'فيتوليستي', 'Vitoliste', 'B5', 131),
(2205, 'Debar', 'حرم', 'Interdire', '21', 131),
(2206, 'Bosilovo', 'بوزيلوفو', 'Bosilovo', '11', 131),
(2207, 'Dzepciste', 'Dzepciste', 'Dzepciste', '31', 131),
(2208, 'Vasilevo', 'فاسيليفو', 'Vasilevo', 'A9', 131),
(2209, 'Star Dojran', 'ستار دوجران', 'Star Dojran', '96', 131),
(2210, 'Saraj', 'السراج', 'Saraj', '90', 131),
(2211, 'Aracinovo', 'آراسينوفو', 'Aracinovo', '01', 131),
(2212, 'Oslomej', 'أوسلوميج', 'Oslomej', '77', 131),
(2213, 'Miravci', 'Miravci', 'Miravci', '66', 131),
(2214, 'Belcista', 'بيلسيستا', 'Belcista', '03', 131),
(2215, 'Karbinci', 'كاربينكي', 'Karbinci', '40', 131),
(2216, 'Krusevo', 'كروسيفو', 'Krusevo', '54', 131),
(2217, 'Kondovo', 'Kondovo', 'Kondovo', '48', 131),
(2218, 'Resen', 'رسن', 'Resen', '86', 131),
(2219, 'Lukovo', 'Lukovo', 'Lukovo', '61', 131),
(2220, 'Vranestica', 'فرانيستيكا', 'Vranestica', 'B6', 131),
(2221, 'Negotino-Polosko', 'نيغوتينو-Polosko', 'Negotino-Polosko', '70', 131),
(2222, 'Stip', 'ستيب', 'Stip', '98', 131),
(2223, 'Sopotnica', 'Sopotnica', 'Sopotnica', '93', 131),
(2224, 'Orizari', 'أوريزاري', 'Orizari', '76', 131),
(2225, 'Veles', 'فيليس', 'Veles', 'B1', 131),
(2226, 'Bac', 'البكالوريا', 'Bac', '02', 131),
(2227, 'Zelenikovo', 'زيلينيكوفو', 'Zelenikovo', 'C2', 131),
(2228, 'Novo Selo', 'نوفو سيلو', 'Novo Selo', '72', 131),
(2229, 'Strumica', 'ستروميكا', 'Strumica', 'A1', 131),
(2230, 'Mavrovi Anovi', 'مافروفي أنوفي', 'Mavrovi Anovi', '64', 131),
(2231, 'Novaci', 'نوفا سي', 'Novaci', '71', 131),
(2232, 'Gostivar', 'غوستيفار', 'Gostivar', '34', 131),
(2233, 'Cucer-Sandevo', 'كسير-سانديفو', 'Cucer-Sandevo', '20', 131),
(2234, 'Demir Kapija', 'ديمير كابيجا', 'Demir Kapija', '25', 131),
(2235, 'Oblesevo', 'أولسيفو', 'Oblesevo', '73', 131),
(2236, 'Caska', 'كاسكا', 'Caska', '15', 131),
(2237, 'Murtino', 'Murtino', 'Murtino', '68', 131),
(2238, 'Demir Hisar', 'دمير حصار', 'Demir Hisar', '24', 131),
(2239, 'Probistip', 'Probistip', 'Probistip', '83', 131),
(2240, 'Makedonski Brod', 'Makedonski برود', 'Makedonski Brod', '63', 131),
(2241, 'Karpos', 'كاربوس', 'Karpos', '41', 131),
(2242, 'Bistrica', 'بسترتشا', 'Bistrica', '05', 131),
(2243, 'Sopiste', 'سوبيست', 'Sopiste', '92', 131),
(2244, 'Kumanovo', 'كومانوفو', 'Kumanovo', '57', 131),
(2245, 'Kavadarci', 'كافادارشي', 'Kavadarci', '42', 131),
(2246, 'Prilep', 'بريليب', 'Prilep', '82', 131),
(2247, 'Kocani', 'كوكاني', 'Kocani', '46', 131),
(2248, 'Samokov', 'ساموكوف', 'Samokov', '89', 131),
(2249, 'Klecevce', 'Klecevce', 'Klecevce', '45', 131),
(2250, 'Dolneni', 'دولنيني', 'Dolneni', '28', 131),
(2251, 'Dolna Banjica', 'دولنا بانجيكا', 'Dolna Banjica', '27', 131),
(2252, 'Vratnica', 'فراتنيكا', 'Vratnica', 'B8', 131),
(2253, 'Mogila', 'موغيلا', 'Mogila', '67', 131),
(2254, 'Berovo', 'بيروفو', 'Berovo', '04', 131),
(2255, 'Brvenica', 'بريفينيكا', 'Brvenica', '12', 131),
(2256, 'Makedonska Kamenica', 'Makedonska Kamenica', 'Makedonska Kamenica', '62', 131),
(2257, 'Sipkovica', 'Sipkovica', 'Sipkovica', '91', 131),
(2258, 'Delogozdi', 'ديلوغوجدي', 'Delogozdi', '23', 131),
(2259, 'Delcevo', 'ديلسيفو', 'Delcevo', '22', 131),
(2260, 'Vinica', 'فينيكا', 'Vinica', 'B4', 131),
(2261, 'Bogomila', 'بوغوميلا', 'Bogomila', '09', 131),
(2262, 'Bitola', 'بيتولا', 'Bitola', '06', 131),
(2263, 'Blatec', 'Blatec', 'Blatec', '07', 131),
(2264, 'Cegrane', 'Cegrane', 'Cegrane', '16', 131),
(2265, 'Kratovo', 'كراتوفو', 'Kratovo', '51', 131),
(2266, 'Bogdanci', 'بوجدانسي', 'Bogdanci', '08', 131),
(2267, 'Konopiste', 'Konopiste', 'Konopiste', '49', 131),
(2268, 'Zelino', 'زلينو', 'Zelino', 'C3', 131),
(2269, 'Labunista', 'Labunista', 'Labunista', '58', 131),
(2270, 'Suto Orizari', 'سوتو اوريزاري', 'Suto Orizari', 'A3', 131),
(2271, 'Tearce', 'تيرس', 'Tearce', 'A5', 131),
(2272, 'Vrutok', 'فروتوك', 'Vrutok', 'B9', 131),
(2273, 'Staravina', 'Staravina', 'Staravina', '95', 131),
(2274, 'Negotino', 'نيغوتينو', 'Negotino', '69', 131),
(2275, 'Drugovo', 'درجوفو', 'Drugovo', '30', 131),
(2276, 'Zletovo', 'زليتوفو', 'Zletovo', 'C5', 131),
(2277, 'Pehcevo', 'بيسيفو', 'Pehcevo', '78', 131),
(2278, 'Cesinovo', 'سيسينوفو', 'Cesinovo', '19', 131),
(2279, 'Capari', 'Capari', 'Capari', '14', 131),
(2280, 'Kukurecani', 'Kukurecani', 'Kukurecani', '56', 131),
(2281, 'Vrapciste', 'فراب سيست', 'Vrapciste', 'B7', 131),
(2282, 'Rosoman', 'روسومان', 'Rosoman', '87', 131),
(2283, 'Velesta', 'Velesta', 'Velesta', 'B2', 131),
(2284, 'Konce', 'كونس', 'Konce', '47', 131),
(2285, 'Gradsko', 'جرادسكو', 'Gradsko', '35', 131),
(2286, 'Kosel', 'Kosel', 'Kosel', '50', 131),
(2287, 'Kisela Voda', 'كيسيلا فودا', 'Kisela Voda', '44', 131),
(2288, 'Jegunovce', 'جيجنوفسي', 'Jegunovce', '38', 131),
(2289, 'Plasnica', 'بلاسنيكا', 'Plasnica', '80', 131),
(2290, 'Kamenjane', 'Kamenjane', 'Kamenjane', '39', 131),
(2291, 'Izvor', 'في Izvor', 'Izvor', '37', 131),
(2292, 'Struga', 'ستروغا', 'Struga', '99', 131),
(2293, 'Podares', 'Podares', 'Podares', '81', 131),
(2294, 'Tetovo', 'تيتوفو', 'Tetovo', 'A6', 131),
(2295, 'Meseista', 'Meseista', 'Meseista', '65', 131),
(2296, 'Vevcani', 'فيفكاني', 'Vevcani', 'B3', 131),
(2297, 'Zrnovci', 'زرنوف سي', 'Zrnovci', 'C6', 131),
(2298, 'Kicevo', 'كيشيفو', 'Kicevo', '43', 131),
(2299, 'Kuklis', 'Kuklis', 'Kuklis', '55', 131),
(2300, 'Koulikoro', 'كوليكورو', 'Koulikoro', '07', 132),
(2301, 'Mopti', 'موبتي', 'Mopti', '04', 132),
(2302, 'Kayes', 'كايس', 'Kayes', '03', 132),
(2305, 'Tombouctou', 'تمبكتو', 'Tombouctou', '08', 132),
(2306, 'Segou', 'سيجو', 'Ségou', '05', 132),
(2307, 'Sikasso', 'سيكاسو', 'Sikasso', '06', 132),
(2308, 'Bamako', 'باماكو', 'Bamako', '01', 132),
(2309, 'Gao', 'قاو', 'Gao', '09', 132),
(2310, 'Kidal', 'كيدال', 'Kidal', '10', 132),
(2311, 'Pegu', 'بيغو', 'Pegu', '09', 133),
(2312, 'Mon State', 'دولة مون', 'Mon Etat', '13', 133),
(2313, 'Kachin State', 'ولاية كاشين', 'Etat Kachin', '04', 133),
(2314, 'Rakhine State', 'ولاية راخين', 'Etat Rakhine', '01', 133),
(2315, 'Yangon', 'يانجون', 'Yangon', '17', 133),
(2316, 'Irrawaddy', 'إيراوادي', 'Irrawaddy', '03', 133),
(2317, 'Tenasserim', 'تيناسيريم', 'Tenasserim', '12', 133),
(2318, 'Karan State', 'ولاية كاران', 'Etat Karan', '05', 133),
(2319, 'Sagaing', 'ساغانغ', 'Sagaing', '10', 133),
(2320, 'Magwe', 'ماغوي', 'Magwe', '07', 133),
(2321, 'Chin State', 'ولاية تشين', 'Etat Chin', '02', 133),
(2322, 'Shan State', 'ولاية شان', 'Etat Shan', '11', 133),
(2323, 'Mandalay', 'ماندالاي', 'Mandalay', '08', 133),
(2326, 'Kayah State', 'ولاية كاياه', 'État Kayah', '06', 133),
(2328, 'Dornogovi', 'دورنوغوفي', 'Dornogovi', '07', 134),
(2329, 'Omnogovi', 'أومنجوفي', 'Omnogovi', '14', 134),
(2330, 'Dundgovi', 'دوندغوفي', 'Dundgovi', '08', 134),
(2331, 'Dzavhan', 'دزافهان', 'Dzavhan', '09', 134),
(2332, 'Tov', 'توف', 'Tov', '18', 134),
(2333, 'Suhbaatar', 'ساهباتار', 'Suhbaatar', '17', 134),
(2334, 'Bulgan', 'بلغان', 'Bulgan', '21', 134),
(2335, 'Arhangay', 'آرهانجاي', 'Arhangay', '01', 134),
(2336, 'Govisumber', 'Govisumber', 'Govisumber', '24', 134),
(2337, 'Hentiy', 'هينتي', 'Hentiy', '11', 134),
(2338, 'Bayan-Olgiy', 'بيان-أولجي', 'Bayan-Olgiy', '03', 134),
(2339, 'Dornod', 'دورنود', 'Dornod', '06', 134),
(2340, 'Hovsgol', 'هوفزجول', 'Hovsgol', '13', 134),
(2341, 'Govi-Altay', 'غوفي ألتاي', 'Govi-Altay', '10', 134),
(2342, 'Hovd', 'هوود', 'Hovd', '12', 134),
(2343, 'Selenge', 'سيلينجي', 'Selenge', '16', 134),
(2344, 'Bayanhongor', 'بيانهونجور', 'Bayanhongor', '02', 134),
(2345, 'Ulaanbaatar', 'أولان باتور', 'Oulan-Bator', '20', 134),
(2346, 'Ovorhangay', 'أوفورهانجاي', 'Ovorhangay', '15', 134),
(2347, 'Uvs', 'أوفس', 'Uvs', '19', 134),
(2348, 'Darhan-Uul', 'Darhan-Uul', 'Darhan-Uul', '23', 134),
(2349, 'Orhon', 'أورهون', 'Orhon', '25', 134),
(2350, 'Ilhas', 'Ilhas', 'Ilhas', '01', 135),
(2363, 'Brakna', 'براكنة', 'Brakna', '05', 138),
(2364, 'Hodh Ech Chargui', 'هده الشوقي', 'Hodh Ech Chargui', '01', 138),
(2365, 'Gorgol', 'غورغول', 'Gorgol', '04', 138),
(2366, 'Assaba', 'العصابة', 'Assaba', '03', 138),
(2367, 'Guidimaka', 'جواديماكا', 'Guidimaka', '10', 138),
(2368, 'Adrar', 'أدرار', 'Adrar', '07', 138),
(2369, 'Hodh El Gharbi', 'حوده الغربي', 'Hodh El Gharbi', '02', 138),
(2370, 'Tiris Zemmour', 'تيرس زمور', 'Tiris Zemmour', '11', 138),
(2371, 'Inchiri', 'إنشيري', 'Inchiri', '12', 138),
(2372, 'Trarza', 'ترارزة', 'Trarza', '06', 138),
(2373, 'Dakhlet Nouadhibou', 'داخلة نواذيبو', 'Dakhlet Nouadhibou', '08', 138),
(2375, 'Tagant', 'تاغانت', 'Tagant', '09', 138),
(2376, 'Saint Anthony', 'سانت أنتوني', 'Saint Anthony', '01', 139),
(2377, 'Saint Peter', 'القديس بطرس', 'Saint Pierre', '03', 139),
(2378, 'Saint Georges', 'سانت جورج', 'Saint georges', '02', 139),
(2380, 'Port Louis', 'بورت لويس', 'Port Louis', '18', 141),
(2381, 'Black River', 'النهر الاسود', 'Rivière Noire', '12', 141),
(2382, 'Moka', 'موكا', 'Moka', '15', 141),
(2383, 'Riviere du Rempart', 'ريفير دو ريمبارت', 'Rivière du Rempart', '19', 141),
(2384, 'Pamplemousses', 'بامبليماوسيس', 'Pamplemousses', '16', 141),
(2385, 'Rodrigues', 'رودريغز', 'Rodrigues', '23', 141),
(2386, 'Grand Port', 'جراند بورت', 'Grand Port', '14', 141),
(2387, 'Flacq', 'فلاك', 'Flacq', '13', 141),
(2388, 'Plaines Wilhems', 'بلينز ويلهيمز', 'Plaines Wilhems', '17', 141),
(2389, 'Savanne', 'سافان', 'Savanne', '20', 141),
(2392, 'Seenu', 'سينو', 'Seenu', '01', 142),
(2393, 'Maale', 'معاليه', 'Maale', '40', 142),
(2394, 'Nkhotakota', 'نكوتاكوتا', 'Nkhotakota', '18', 143),
(2395, 'Rumphi', 'رومبي', 'Rumphi', '21', 143),
(2396, 'Mzimba', 'مزيمبا', 'Mzimba', '15', 143),
(2397, 'Lilongwe', 'ليلونغوي', 'Lilongwe', '11', 143),
(2398, 'Ntchisi', 'نتشيسي', 'Ntchisi', '20', 143),
(2399, 'Salima', 'سليمة', 'Salima', '22', 143),
(2400, 'Mchinji', 'مشينجي', 'Mchinji', '13', 143),
(2401, 'Chitipa', 'شيتيبا', 'Chitipa', '04', 143),
(2402, 'Ntcheu', 'نتشيو', 'Ntcheu', '16', 143),
(2403, 'Dowa', 'الدوا', 'Dowa', '07', 143),
(2404, 'Kasungu', 'كاسونغو', 'Kasungu', '09', 143),
(2405, 'Zomba', 'زومبا', 'Zomba', '23', 143),
(2406, 'Nsanje', 'نسانجي', 'Nsanje', '19', 143),
(2407, 'Chikwawa', 'شيكواوا', 'Chikwawa', '02', 143),
(2408, 'Thyolo', 'ثيولو', 'Thyolo', '05', 143),
(2409, 'Dedza', 'ديدزا', 'Dedza', '06', 143),
(2410, 'Balaka', 'بالاكا', 'Balaka', '26', 143),
(2411, 'Mangochi', 'مانغوتشي', 'Mangochi', '12', 143),
(2412, 'Machinga', 'مشاينجا', 'Machinga', '28', 143),
(2413, 'Nkhata Bay', 'خليج نخاتا', 'Nkhata Bay', '17', 143),
(2414, 'Chiradzulu', 'تشيرادزولو', 'Chiradzulu', '03', 143),
(2415, 'Blantyre', 'بلانتير', 'Blantyre', '24', 143),
(2416, 'Karonga', 'كارونجا', 'Karonga', '08', 143),
(2417, 'Phalombe', 'بالومبي', 'Phalombe', '30', 143),
(2418, 'Mwanza', 'موانزا', 'Mwanza', '25', 143),
(2419, 'Mulanje', 'مولانجي', 'Mulanje', '29', 143),
(2420, 'Michoacan de Ocampo', 'ميتشواكان دي أوكامبو', 'Michoacan de Ocampo', '16', 144),
(2421, 'Chihuahua', 'تشيهواهوا', 'Chihuahua', '06', 144),
(2422, 'Veracruz-Llave', 'فيراكروز-افى', 'Veracruz-Llave', '30', 144),
(2423, 'Yucatan', 'يوكاتان', 'Yucatan', '31', 144),
(2424, 'Quintana Roo', 'كوينتانا رو', 'Quintana Roo', '23', 144),
(2425, 'Sonora', 'سونورا', 'Sonora', '26', 144),
(2426, 'Tlaxcala', 'تلاكسكالا', 'Tlaxcala', '29', 144),
(2427, 'Chiapas', 'تشياباس', 'Chiapas', '05', 144),
(2428, 'Coahuila de Zaragoza', 'كواهويلا دي سرقسطة', 'Coahuila de Zaragoza', '07', 144),
(2429, 'Durango', 'دورانجو', 'Durango', '10', 144),
(2430, 'Guanajuato', 'غواناخواتو', 'Guanajuato', '11', 144),
(2431, 'Nuevo Leon', 'نويفو ليون', 'Nuevo Leon', '19', 144),
(2432, 'Oaxaca', 'أواكساكا', 'Oaxaca', '20', 144),
(2433, 'Tabasco', 'تاباسكو', 'Tabasco', '27', 144),
(2434, 'Tamaulipas', 'تاماوليباس', 'Tamaulipas', '28', 144),
(2435, 'Guerrero', 'غيريرو', 'Guerrero', '12', 144),
(2436, 'Baja California', 'باجا كاليفورنيا', 'Baja California', '02', 144),
(2437, 'Campeche', 'كامبيتشي', 'Campeche', '04', 144),
(2438, 'Nayarit', 'ناياريت', 'Nayarit', '18', 144),
(2439, 'Puebla', 'بويبلا', 'Puebla', '21', 144),
(2440, 'Sinaloa', 'سينالوا', 'Sinaloa', '25', 144),
(2441, 'Aguascalientes', 'اغواسكالينتيس', 'Aguascalientes', '01', 144),
(2442, 'San Luis Potosi', 'سان لويس بوتوسي', 'San Luis Potosi', '24', 144),
(2443, 'Zacatecas', 'زاكاتيكاس', 'Zacatecas', '32', 144),
(2444, 'Mexico', 'المكسيك', 'Mexique', '15', 144),
(2445, 'Jalisco', 'خاليسكو', 'Jalisco', '14', 144),
(2446, 'Hidalgo', 'الهيدلج من نبلاء الأسبان', 'Hidalgo', '13', 144),
(2447, 'Morelos', 'موريلوس', 'Morelos', '17', 144),
(2448, 'Colima', 'كوليما', 'Colima', '08', 144),
(2449, 'Queretaro de Arteaga', 'كويريتارو دي أرتياغا', 'Queretaro de Arteaga', '22', 144),
(2450, 'Baja California Sur', 'باجا كاليفورنيا سور', 'Baja California Sur', '03', 144),
(2451, 'Distrito Federal', 'وفي مقاطعة الاتحادية', 'Distrito Federal', '09', 144),
(2452, 'Sarawak', 'ساراواك', 'Sarawak', '11', 145),
(2453, 'Sabah', 'صباح', 'Sabah', '16', 145),
(2454, 'Melaka', 'ملقا', 'Melaka', '04', 145),
(2455, 'Perlis', 'برليس', 'Perlis', '08', 145),
(2456, 'Negeri Sembilan', 'نيجري سيمبيلان', 'Negeri Sembilan', '05', 145),
(2457, 'Kedah', 'كيدا', 'Kedah', '02', 145),
(2458, 'Johor', 'جوهور', 'Johor', '01', 145),
(2459, 'Perak', 'بيراك', 'Perak', '07', 145),
(2460, 'Pulau Pinang', 'بولاو بينانج', 'Pulau Pinang', '09', 145),
(2461, 'Terengganu', 'تيرينجانو', 'Terengganu', '13', 145),
(2462, 'Kelantan', 'كيلانتان', 'Kelantan', '03', 145),
(2463, 'Pahang', 'باهانج', 'Pahang', '06', 145),
(2464, 'Kuala Lumpur', 'كوالا لامبور', 'Kuala Lumpur', '14', 145),
(2465, 'Selangor', 'سيلانغور', 'Selangor', '12', 145),
(2466, 'Labuan', 'لابوان', 'Labuan', '15', 145),
(2467, 'Maputo', 'مابوتو', 'Maputo', '04', 146),
(2468, 'Nampula', 'نامبولا', 'Nampula', '06', 146),
(2469, 'Zambezia', 'زامبيزيا', 'Zambezia', '09', 146),
(2470, 'Niassa', 'نياسا', 'Niassa', '07', 146),
(2471, 'Cabo Delgado', 'كابو دلغادو', 'Cabo Delgado', '01', 146),
(2472, 'Gaza', 'غزة', 'Gaza', '02', 146),
(2473, 'Inhambane', 'إنهامبان', 'Inhambane', '03', 146),
(2474, 'Manica', 'مانيكا', 'Manica', '10', 146),
(2475, 'Tete', 'تيتي', 'Tete', '08', 146),
(2476, 'Sofala', 'سوفالا', 'Sofala', '05', 146),
(2478, 'Hardap', 'هارداب', 'Hardap', '30', 147),
(2479, 'Otjozondjupa', 'أوتجوزوندتوبا', 'Otjozondjupa', '39', 147),
(2481, 'Karas', 'كاراس', 'Karas', '31', 147),
(2482, 'Omusati', 'أوموساتي', 'Omusati', '36', 147),
(2483, 'Oshana', 'أوشانا', 'Oshana', '37', 147),
(2484, 'Kunene', 'كونين', 'Kunene', '32', 147),
(2485, 'Erongo', 'إيرونغو', 'Erongo', '29', 147),
(2486, 'Oshikoto', 'أوشيكوتو', 'Oshikoto', '38', 147),
(2487, 'Omaheke', 'أوماهيكي', 'Omaheke', '35', 147),
(2488, 'Caprivi', 'كابريفي', 'Caprivi', '28', 147),
(2489, 'Okavango', 'أوكافانغو', 'Okavango', '34', 147),
(2490, 'Ohangwena', 'أوهانغوينا', 'Ohangwena', '33', 147),
(2491, 'Windhoek', 'ويندهوك', 'Windhoek', '21', 147),
(2493, 'Niamey', 'نيامي', 'Niamey', '05', 149),
(2494, 'Diffa', 'ديفا', 'Diffa', '02', 149),
(2496, 'Tahoua', 'تاهوا', 'Tahoua', '06', 149),
(2497, 'Agadez', 'أغاديز', 'Agadez', '01', 149),
(2498, 'Zinder', 'زيندر', 'Zinder', '07', 149),
(2499, 'Dosso', 'دوسو', 'Dosso', '03', 149),
(2500, 'Maradi', 'مرادي', 'Maradi', '04', 149),
(2501, 'Niamey', 'نيامي', 'Niamey', '08', 149),
(2504, 'Benue', 'بينو', 'Benue', '26', 151),
(2505, 'Nassarawa', 'ناساراوا', 'Nassarawa', '56', 151),
(2506, 'Kaduna', 'كادونا', 'Kaduna', '23', 151),
(2507, 'Oyo', 'أويو', 'Oyo', '32', 151),
(2508, 'Adamawa', 'أداماوا', 'Adamawa', '35', 151),
(2509, 'Osun', 'أوسان', 'Osun', '42', 151),
(2510, 'Borno', 'بورنو', 'Borno', '27', 151),
(2511, 'Bauchi', 'بوتشي', 'Bauchi', '46', 151),
(2513, 'Ogun', 'أوجون', 'Ogun', '16', 151),
(2514, 'Anambra', 'انامبرا', 'Anambra', '25', 151),
(2515, 'Yobe', 'يوبي', 'Être', '44', 151),
(2516, 'Lagos', 'لاغوس', 'Lagos', '05', 151),
(2517, 'Delta', 'دلتا', 'Delta', '36', 151),
(2518, 'Enugu', 'إينوغو', 'Enugu', '47', 151),
(2519, 'Federal Capital Territory', 'إقليم العاصمة الفيدرالية', 'Territoire de la capitale fédérale', '11', 151),
(2520, 'Kogi', 'كوجى', 'Kogi', '41', 151),
(2521, 'Taraba', 'تارابا', 'Taraba', '43', 151),
(2522, 'Akwa Ibom', 'أكوا إيبوم', 'Akwa Ibom', '21', 151),
(2523, 'Ebonyi', 'إيبوني', 'Ebonyi', '53', 151),
(2525, 'Imo', 'المنظمة البحرية الدولية', 'Imo', '28', 151),
(2526, 'Jigawa', 'جيغاوا', 'Jigawa', '39', 151),
(2528, 'Kwara', 'كوارا', 'Kwara', '30', 151),
(2529, 'Abia', 'أبيا', 'Abia', '45', 151),
(2530, 'Gombe', 'غومبي', 'Gombe', '55', 151),
(2531, 'Cross River', 'عبر نهر', 'Cross River', '22', 151),
(2532, 'Katsina', 'كاتسينا', 'Katsina', '24', 151),
(2533, 'Sokoto', 'سوكوتو', 'Sokoto', '51', 151),
(2534, 'Niger', 'النيجر', 'Niger', '31', 151),
(2535, 'Zamfara', 'زامفارا', 'Zamfara', '57', 151),
(2536, 'Edo', 'ايدو', 'Edo', '37', 151),
(2538, 'Kano', 'كانو', 'Kano', '29', 151),
(2539, 'Kebbi', 'كيبي', 'Kebbi', '40', 151),
(2540, 'Ekiti', 'إكيتي', 'Ekiti', '54', 151),
(2541, 'Bayelsa', 'بايلسا', 'Bayelsa', '52', 151),
(2542, 'Plateau', 'هضبة', 'Plateau', '49', 151),
(2543, 'Ondo', 'أوندو', 'Ondo', '48', 151),
(2544, 'Rivers', 'الأنهار', 'Rivières', '50', 151),
(2547, 'Leon', 'ليون', 'Leon', '08', 152),
(2548, 'Chontales', 'شونتالز', 'Chontales', '04', 152),
(2549, 'Managua', 'ماناغوا', 'Managua', '10', 152),
(2550, 'Autonoma Atlantico Norte', 'أوتومونا أتلانتيكو نورتي', 'Autonoma Atlantico Norte', '17', 152),
(2551, 'Granada', 'غرناطة', 'Grenade', '06', 152),
(2552, 'Matagalpa', 'ماتاغلبا', 'Matagalpa', '12', 152),
(2553, 'Boaco', 'بواكو', 'Boaco', '01', 152),
(2554, 'Carazo', 'كارازو', 'Carazo', '02', 152),
(2555, 'Chinandega', 'تشينانديغا', 'Chinandega', '03', 152),
(2556, 'Rio San Juan', 'ريو سان خوان', 'Rio San Juan', '14', 152),
(2557, 'Rivas', 'ريفاس', 'Rivas', '15', 152),
(2558, 'Masaya', 'مسايا', 'Masaya', '11', 152),
(2559, 'Jinotega', 'خينوتيغا', 'Jinotega', '07', 152),
(2560, 'Nueva Segovia', 'نويفا سيجوفيا', 'Nueva Segovia', '13', 152),
(2561, 'Region Autonoma Atlantico Sur', 'منطقة الاستقلال الذاتي اتلانتيكو سور', 'Région Autonoma Atlantico Sur', '18', 152),
(2562, 'Madriz', 'مادريز', 'Madriz', '09', 152),
(2563, 'Esteli', 'إستيلي', 'Esteli', '05', 152),
(2564, 'Drenthe', 'درينثي', 'Drenthe', '01', 153),
(2565, 'Zuid-Holland', 'زويد-هولندا', 'Zuid-Holland', '11', 153),
(2566, 'Overijssel', 'أوفيريجسيل', 'Overijssel', '15', 153),
(2567, 'Noord-Holland', 'نورد هولاند', 'Noord-Holland', '07', 153),
(2568, 'Zeeland', 'زيلاند', 'Zélande', '10', 153),
(2569, 'Limburg', 'ليمبورغ', 'Limbourg', '05', 153),
(2570, 'Noord-Brabant', 'نورد برابانت', 'Noord-Brabant', '06', 153),
(2571, 'Gelderland', 'جيلديرلاند', 'Gueldre', '03', 153),
(2572, 'Friesland', 'فريسلاند', 'Frise', '02', 153),
(2573, 'Groningen', 'جرونينجن', 'Groningue', '04', 153),
(2574, 'Utrecht', 'أوتريخت', 'Utrecht', '09', 153),
(2575, 'Flevoland', 'فليفولاند', 'Flevoland', '16', 153),
(2576, 'Nordland', 'نوردلاند', 'Nordland', '09', 154),
(2577, 'Sor-Trondelag', 'تروندلاج', 'Sor-Trondelag', '16', 154),
(2578, 'Troms', 'ترومس', 'Troms', '18', 154),
(2579, 'Vestfold', 'فيستفولد', 'Vestfold', '20', 154),
(2580, 'Hedmark', 'هدمارك', 'Hedmark', '06', 154),
(2581, 'Hordaland', 'هوردالاند', 'Hordaland', '07', 154),
(2582, 'Vest-Agder', 'سترة-أغدر', 'Vest-Agder', '19', 154),
(2583, 'More og Romsdal', 'أكثر أوج رومسدال', 'Plus de Romsdal', '08', 154),
(2584, 'Telemark', 'تيليمارك', 'Télémark', '17', 154),
(2585, 'Buskerud', 'بوسكيرود', 'Buskerud', '04', 154),
(2586, 'Rogaland', 'روغالاند', 'Rogaland', '14', 154),
(2587, 'Aust-Agder', 'أوست-أغدر', 'Aust-Agder', '02', 154),
(2588, 'Oppland', 'أوبلاند', 'Oppland', '11', 154),
(2589, 'Sogn og Fjordane', 'سوغن أوغ فيوردان', 'Sogn og Fjordane', '15', 154),
(2590, 'Akershus', 'آكيرشوس', 'Akershus', '01', 154),
(2591, 'Nord-Trondelag', 'نور-ترونديلاغ', 'Nord-Trondelag', '10', 154),
(2592, 'Ostfold', 'أوستفولد', 'Ostfold', '13', 154),
(2593, 'Finnmark', 'فينمارك', 'Finnmark', '05', 154),
(2594, 'Oslo', 'أوسلو', 'Oslo', '12', 154),
(2598, 'Wellington', 'ولينغتون', 'Wellington', 'G2', 158),
(2599, 'West Coast', 'الساحل الغربي', 'Côte ouest', 'G3', 158),
(2600, 'Canterbury', 'كانتربري', 'Canterbury', 'E9', 158),
(2601, 'Otago', 'أوتاجو', 'Otago', 'F7', 158),
(2602, 'Auckland', 'أوكلاند', 'Auckland', 'E7', 158),
(2603, 'Gisborne', 'جيسبورن', 'Gisborne', 'F1', 158),
(2604, 'Hawke\'s Bay', 'خليج هوكس', 'Hawke\'s Bay', 'F2', 158),
(2605, 'Taranaki', 'تاراناكي', 'Taranaki', 'F9', 158),
(2606, 'Marlborough', 'مارلبورو', 'Marlborough', 'F4', 158),
(2607, 'Nelson', 'نيلسون', 'Nelson', 'F5', 158),
(2608, 'Waikato', 'وايكاتو', 'Waikato', 'G1', 158),
(2609, 'Southland', 'ساوثلاند', 'Southland', 'F8', 158),
(2611, 'Bay of Plenty', 'خليج بلنتي', 'Bay of Plenty', 'E8', 158),
(2613, 'Manawatu-Wanganui', 'ماناواتو-وانجانوي', 'Manawatu-Wanganui', 'F3', 158),
(2614, 'Al Batinah', 'الباطنة', 'Al Batinah', '02', 159),
(2615, 'Az Zahirah', 'الزاهرة', 'Az Zahirah', '05', 159),
(2616, 'Ash Sharqiyah', 'الشرقية', 'Ash Sharqiyah', '04', 159),
(2617, 'Masqat', 'مسقط', 'Masqat', '06', 159),
(2618, 'Musandam', 'مسندم', 'Musandam', '07', 159),
(2619, 'Zufar', 'ظفار', 'Zufar', '08', 159),
(2621, 'Los Santos', 'لوس سانتوس', 'Los Santos', '07', 160),
(2622, 'Darien', 'دارين', 'Darien', '05', 160),
(2623, 'Chiriqui', 'شيريكي', 'Chiriqui', '02', 160),
(2624, 'Colon', 'القولون', 'Côlon', '04', 160),
(2625, 'Veraguas', 'فيراغواس', 'Veraguas', '10', 160),
(2626, 'San Blas', 'سان بلاس', 'San Blas', '09', 160),
(2627, 'Bocas del Toro', 'بوكاس ديل تورو', 'Bocas del Toro', '01', 160),
(2628, 'Herrera', 'هيريرا', 'Herrera', '06', 160),
(2629, 'Panama', 'بناما', 'Panama', '08', 160),
(2630, 'Cocle', 'كوكلي', 'Cocle', '03', 160),
(2631, 'Ancash', 'انكاش', 'Ancash', '02', 161),
(2632, 'Apurimac', 'ابوريماك', 'Apurimac', '03', 161),
(2633, 'Arequipa', 'أريكويبا', 'Arequipa', '04', 161),
(2634, 'Ica', 'إيكا', 'I CA', '11', 161),
(2635, 'Cusco', 'كوسكو', 'Cusco', '08', 161),
(2636, 'Lambayeque', 'امبايكي', 'Lambayeque', '14', 161),
(2637, 'Ucayali', 'أوكايالي', 'Ucayali', '25', 161),
(2638, 'La Libertad', 'لا ليبرتاد', 'La Libertad', '13', 161),
(2639, 'Ayacucho', 'اياكوتشو', 'Ayacucho', '05', 161),
(2640, 'Lima', 'ليما', 'Lima', '15', 161),
(2641, 'Puno', 'بونو', 'Puno', '21', 161),
(2642, 'Junin', 'جونين', 'Junin', '12', 161),
(2643, 'Tumbes', 'أديس أبابا', 'Tumbes', '24', 161),
(2644, 'Tacna', 'تاكنا', 'Tacna', '23', 161),
(2645, 'Cajamarca', 'كاخاماركا', 'Cajamarca', '06', 161),
(2646, 'Huancavelica', 'هوانكافليكا', 'Huancavelica', '09', 161),
(2647, 'Moquegua', 'موكيجوا', 'Moquegua', '18', 161),
(2648, 'Amazonas', 'أمازوناس', 'Amazonas', '01', 161),
(2649, 'Huanuco', 'هوانوكو', 'Huanuco', '10', 161),
(2650, 'San Martin', 'سان مارتن', 'San Martin', '22', 161),
(2651, 'Piura', 'بيورا', 'Piura', '20', 161),
(2652, 'Loreto', 'لوريتو', 'Loreto', '16', 161),
(2653, 'Pasco', 'باسكو', 'Pasco', '19', 161),
(2654, 'Madre de Dios', 'مادري دي ديوس', 'Madre de Dios', '17', 161),
(2655, 'Callao', 'كالاو', 'Callao', '07', 161),
(2657, 'Eastern Highlands', 'المرتفعات الشرقية', 'Eastern Highlands', '09', 163),
(2658, 'Madang', 'مادانغ', 'Madang', '12', 163),
(2659, 'Milne Bay', 'خليج ميلن', 'Milne Bay', '03', 163),
(2660, 'Western', 'الغربي', 'Occidental', '06', 163),
(2661, 'Central', 'وسط', 'Central', '01', 163),
(2662, 'Sandaun', 'ساندون', 'Sandaun', '18', 163),
(2663, 'East Sepik', 'شرق سيبيك', 'Sepik Est', '11', 163),
(2664, 'West New Britain', 'غرب بريطانيا الجديدة', 'West New Britain', '17', 163),
(2665, 'Southern Highlands', 'المرتفعات الجنوبية', 'Southern Highlands', '05', 163),
(2666, 'Northern', 'شمالي', 'Nord', '04', 163),
(2667, 'Gulf', 'خليج', 'Golfe', '02', 163),
(2668, 'Western Highlands', 'المرتفعات الغربية', 'Western Highlands', '16', 163),
(2669, 'Morobe', 'موروبى', 'Morobe', '14', 163),
(2670, 'Chimbu', 'شيمبو', 'Chimbu', '08', 163),
(2671, 'East New Britain', 'شرق بريطانيا الجديدة', 'East New Britain', '10', 163),
(2672, 'North Solomons', 'شمال سولومونز', 'Solomons du Nord', '07', 163),
(2673, 'Enga', 'انجا', 'Enga', '19', 163),
(2674, 'Manus', 'اليد', 'Manus', '13', 163),
(2675, 'New Ireland', 'أيرلندا الجديدة', 'Nouvelle Irlande', '15', 163),
(2676, 'National Capital', 'رأس المال الوطني', 'Capitale nationale', '20', 163),
(2677, 'Pangasinan', 'بانجاسينان', 'Pangasinan', '51', 164),
(2678, 'Cebu', 'سيبو', 'Cebu', '21', 164),
(2679, 'Samar', 'سمر', 'Samar', '55', 164),
(2680, 'Camarines Sur', 'كامارينز سور', 'Camarines Sur', '16', 164),
(2681, 'Iloilo', 'لويلو', 'Iloilo', '30', 164),
(2682, 'Ilocos Norte', 'ايلوكوس نورتي', 'Ilocos Norte', '28', 164),
(2683, 'Antique', 'أثر قديم', 'Antique', '06', 164),
(2684, 'Bohol', 'بوهول', 'Bohol', '11', 164),
(2685, 'Cagayan', 'كاجايان', 'Cagayan', '14', 164),
(2686, 'Eastern Samar', 'سمر الشرقية', 'Samar oriental', '23', 164),
(2687, 'Davao', 'دافاو', 'Davao', '24', 164),
(2688, 'Leyte', 'يتي', 'Leyte', '37', 164),
(2689, 'Masbate', 'ماسبات', 'Masbate', '39', 164),
(2690, 'Negros Occidental', 'نيجروس اوكسيدنتال', 'Negros Occidental', '45', 164),
(2691, 'Nueva Vizcaya', 'نويفا فيزكايا', 'Nueva Vizcaya', '48', 164),
(2692, 'Romblon', 'رومبلون', 'Romblon', '54', 164),
(2693, 'South Cotabato', 'جنوب كوتاباتو', 'Cotabato Sud', '70', 164),
(2694, 'Ilocos Sur', 'ايلوكوس سور', 'Ilocos Sur', '29', 164),
(2695, 'Quezon', 'كويزون', 'Quezon', 'H2', 164),
(2696, 'Lanao del Norte', 'لاناو ديل نورتي', 'Lanao del Norte', '34', 164),
(2697, 'North Cotabato', 'شمال كوتاباتو', 'Cotabato Nord', '57', 164),
(2698, 'Surigao del Sur', 'سوريجاو ديل سور', 'Surigao del Sur', '62', 164),
(2699, 'Iligan', 'اليجان', 'Iligan', 'C8', 164),
(2700, 'Southern Leyte', 'جنوب ليتي', 'Southern Leyte', '59', 164),
(2701, 'Tarlac', 'تارلاك', 'Tarlac', '63', 164),
(2702, 'Bukidnon', 'بوكيدنون', 'Bukidnon', '12', 164),
(2703, 'Mindoro Occidental', 'ميندورو اوكسيدنتال', 'Mindoro Occidental', '40', 164),
(2704, 'Palawan', 'بالاوان', 'Palawan', '49', 164),
(2705, 'Abra', 'العبرة', 'Abra', '01', 164),
(2706, 'Bulacan', 'بولاكان', 'Bulacan', '13', 164),
(2707, 'Capiz', 'كابيز', 'Capiz', '18', 164),
(2708, 'Nueva Ecija', 'Nueva Ecija', 'Nueva Ecija', '47', 164),
(2709, 'Sorsogon', 'سورسوجون', 'Sorsogon', '58', 164),
(2710, 'Benguet', 'بينجويت', 'Benguet', '10', 164),
(2711, 'Northern Samar', 'شمال سمر', 'Samar du Nord', '67', 164),
(2712, 'Quirino', 'كويرينو', 'Quirino', '68', 164),
(2713, 'Isabela', 'ايزابيلا', 'Isabela', '31', 164),
(2714, 'Kalinga-Apayao', 'كالينجا-أباياو', 'Kalinga-Apayao', '32', 164),
(2715, 'Mountain', 'جبل', 'Montagne', '44', 164),
(2716, 'Albay', 'الباي', 'Albay', '05', 164),
(2717, 'Batangas', 'باتانجاس', 'Batangas', '09', 164),
(2718, 'Catanduanes', 'كاتاندونيز', 'Catanduanes', '19', 164),
(2719, 'Negros Oriental', 'نيجروس أورينتال', 'Negros Oriental', '46', 164),
(2720, 'Ifugao', 'إيفوغاو', 'Ifugao', '27', 164),
(2721, 'Misamis Oriental', 'ميساميس اورينتال', 'Misamis Oriental', '43', 164),
(2722, 'Laguna', 'لاغونا', 'Laguna', '33', 164),
(2723, 'Zamboanga del Sur', 'زامبوانجا ديل سور', 'Zamboanga del Sur', '66', 164),
(2724, 'Camiguin', 'كاميجوين', 'Camiguin', '17', 164),
(2725, 'Negros Occidental', 'نيجروس اوكسيدنتال', 'Negros Occidental', 'H3', 164),
(2726, 'Bataan', 'باتان', 'Bataan', '07', 164),
(2727, 'Lanao del Sur', 'لاناو ديل سور', 'Lanao del Sur', '35', 164),
(2728, 'Basilan', 'باسيلان', 'Basilan', '22', 164),
(2729, 'La Union', 'لا يونيون', 'La union', '36', 164),
(2730, 'Camarines Norte', 'كامارينز نورتي', 'Camarines Norte', '15', 164),
(2731, 'Caloocan', 'كالوكان', 'Caloocan', 'B4', 164),
(2732, 'Legaspi', 'يغاسبي', 'Legaspi', 'D5', 164),
(2733, 'Calbayog', 'من Calbayog', 'Calbayog', 'B3', 164),
(2734, 'Agusan del Norte', 'أغوسان ديل نورتي', 'Agusan del Norte', '02', 164),
(2735, 'Pampanga', 'بامبانجا', 'Pampanga', '50', 164),
(2736, 'Mindoro Oriental', 'ميندورو الشرقية', 'Mindoro Oriental', '41', 164),
(2738, 'Sulu', 'سولو', 'Sulu', '60', 164),
(2739, 'Cebu City', 'مدينة سيبو', 'Cebu City', 'B7', 164),
(2740, 'Roxas', 'روكساس', 'Roxas', 'F3', 164),
(2741, 'Misamis Occidental', 'ميساميس اوكسيدنتال', 'Misamis Occidental', '42', 164),
(2742, 'Aklan', 'اكلان', 'Aklan', '04', 164),
(2743, 'Maguindanao', 'ماجوينداناو', 'Maguindanao', '56', 164),
(2744, 'Dumaguete', 'دوماغويتي', 'Dumaguete', 'C5', 164),
(2745, 'Surigao del Norte', 'سوريجاو ديل نورتي', 'Surigao del Norte', '61', 164),
(2746, 'Ormoc', 'اورموك', 'Ormoc', 'E4', 164),
(2747, 'Davao del Sur', 'دافاو ديل سور', 'Davao del Sur', '25', 164),
(2748, 'Zambales', 'زامباليس', 'Zambales', '64', 164),
(2749, 'Agusan del Sur', 'أغوسان ديل سور', 'Agusan del Sur', '03', 164),
(2751, 'Lapu-Lapu', 'لابو لابو لابو', 'Lapu-Lapu', 'D4', 164),
(2752, 'Marinduque', 'ماريندوك', 'Marinduque', '38', 164),
(2753, 'Rizal', 'ريزال', 'Rizal', '53', 164),
(2754, 'Butuan', 'بوتوان', 'Butuan', 'A8', 164),
(2755, 'Cagayan de Oro', 'كاجايان دي أورو', 'Cagayan de Oro', 'B2', 164),
(2756, 'Pasay', 'باساي', 'Pasay', 'E9', 164),
(2757, 'Sultan Kudarat', 'سلطان كودارات', 'Sultan Kudarat', '71', 164),
(2758, 'Davao City', 'مدينة دافاو', 'la ville de Davao', 'C3', 164),
(2759, 'Cavite', 'كافيت', 'Cavite', '20', 164),
(2760, 'Iloilo City', 'مدينة ايلويلو', 'Iloilo City', 'C9', 164),
(2761, 'Silay', 'سيالي', 'Silay', 'F8', 164),
(2762, 'Pagadian', 'باجاديان', 'Pagadian', 'E7', 164),
(2763, 'Trece Martires', 'تريسي مارتيرز', 'Trece Martires', 'G6', 164),
(2764, 'Quezon City', 'مدينة كويزون', 'ville de Quezon', 'F2', 164),
(2765, 'Siquijor', 'سيكويجور', 'Siquijor', '69', 164),
(2766, 'Cotabato', 'كوتاباتو', 'Cotabato', 'B8', 164),
(2767, 'Angeles', 'لوس', 'Angeles', 'A1', 164),
(2768, 'Toledo', 'توليدو', 'Toledo', 'G5', 164),
(2769, 'San Carlos', 'سان كارلوس', 'San Carlos', 'F4', 164),
(2770, 'Lipa', 'ليبا', 'Lipa', 'D6', 164),
(2771, 'Davao Oriental', 'دافاو اورينتال', 'Davao Oriental', '26', 164),
(2772, 'Tacloban', 'تاكلوبان', 'Tacloban', 'G1', 164),
(2773, 'Tawitawi', 'من Tawitawi', 'Tawitawi', '72', 164),
(2775, 'Zamboanga del Norte', 'Zamboanga del Norte', 'Zamboanga del Norte', '65', 164),
(2776, 'Zamboanga', 'زامبوانغا', 'Zamboanga', 'G7', 164),
(2777, 'Bacolod', 'باكولود', 'Bacolod', 'A2', 164),
(2778, 'Marawi', 'مراوي', 'Marawi', 'E1', 164),
(2779, 'Aurora', 'فجر', 'Aurore', 'G8', 164),
(2780, 'Ozamis', 'من Ozamis', 'Ozamis', 'E6', 164),
(2781, 'Danao', 'داناو', 'Danao', 'C1', 164),
(2782, 'Bago', 'باجو', 'Bago', 'A3', 164),
(2783, 'Cabanatuan', 'كاباناتوان', 'Cabanatuan', 'A9', 164),
(2785, 'Baguio', 'باجيو', 'Baguio', 'A4', 164),
(2786, 'Tangub', 'تانجوب', 'Tangub', 'G4', 164),
(2787, 'Naga', 'النجا', 'Naga', 'E2', 164),
(2788, 'Olongapo', 'اولونجابو', 'Olongapo', 'E3', 164),
(2789, 'San Pablo', 'سان بابلو', 'San Pablo', 'F7', 164),
(2790, 'Oroquieta', 'Oroquieta', 'Oroquieta', 'E5', 164),
(2791, 'Manila', 'مانيلا', 'Manille', 'D9', 164),
(2792, 'San Juan', 'سان خوان', 'San Juan', 'M6', 164),
(2793, 'General Santos', 'الجنرال سانتوس', 'General Santos', 'C6', 164),
(2794, 'Dapitan', 'Dapitan', 'Dapitan', 'C2', 164),
(2795, 'Canlaon', 'Canlaon', 'Canlaon', 'B5', 164),
(2796, 'Dagupan', 'داغوبان', 'Dagupan', 'B9', 164),
(2798, 'Batanes', 'باتانيس', 'Batanes', '08', 164),
(2799, 'Batangas City', 'باتانجاس سيتي', 'Batangas City', 'A7', 164),
(2800, 'Dipolog', 'من Dipolog', 'Dipolog', 'C4', 164),
(2802, 'Tagbilaran', 'تاغبيلاران', 'Tagbilaran', 'G3', 164),
(2803, 'Cadiz', 'كاديز', 'Cadix', 'B1', 164),
(2804, 'Mandaue', 'مانداوي', 'Mandaue', 'D8', 164),
(2805, 'Cavite City', 'مدينة كافيت', 'Cavite City', 'B6', 164),
(2806, 'Tagaytay', 'تاجايتاى', 'Tagaytay', 'G2', 164),
(2807, 'Gingoog', 'Gingoog', 'Gingoog', 'C7', 164),
(2808, 'Iriga', 'Iriga', 'Iriga', 'D1', 164),
(2809, 'Paranaque', 'Paranaque', 'Paranaque', 'L7', 164),
(2811, 'La Carlota', 'لا كارلوتا', 'La Carlota', 'D2', 164),
(2812, 'Laoag', 'اواج', 'Laoag', 'D3', 164),
(2813, 'Lucena', 'لوسينا', 'Lucena', 'D7', 164),
(2814, 'Malaybalay', 'مالايبالاي', 'Malaybalay', 'K6', 164),
(2815, 'Palayan', 'Palayan', 'Palayan', 'E8', 164),
(2816, 'Puerto Princesa', 'بويرتو برنسيسا', 'Puerto Princesa', 'F1', 164),
(2817, 'Surigao', 'سوريجاو', 'Surigao', 'F9', 164),
(2818, 'Punjab', 'البنجاب', 'Punjab', '04', 165),
(2819, 'Sindh', 'السند', 'Sindh', '05', 165),
(2820, 'Balochistan', 'بلوشستان', 'Balochistan', '02', 165),
(2821, 'North-West Frontier', 'الحدود الشمالية الغربية', 'Frontière Nord-Ouest', '03', 165),
(2822, 'Northern Areas', 'المناطق الشمالية', 'Régions du nord', '07', 165),
(2823, 'Federally Administered Tribal Areas', 'المناطق القبلية الخاضعة للإدارة الاتحادية', 'Zones tribales sous administration fédérale', '01', 165),
(2824, 'Azad Kashmir', 'آزاد كشمير', 'Azad Kashmir', '06', 165),
(2825, 'Islamabad', 'اسلام اباد', 'Islamabad', '08', 165),
(2833, 'Zachodniopomorskie', 'زاخودنيبومورسكي', 'Zachodniopomorskie', '87', 166),
(2835, 'Swietokrzyskie', 'سفيتوكرجيسكي', 'Swietokrzyskie', '84', 166),
(2864, 'Lodzkie', 'ودزكي', 'Lodzkie', '74', 166),
(2866, 'Warminsko-Mazurskie', 'فارمينسكو مازورسكي', 'Warminsko-Mazurskie', '85', 166),
(2872, 'Malopolskie', 'مالوبولسكا', 'Malopolskie', '77', 166),
(2874, 'Mazowieckie', 'مازوفيتسكي', 'Mazowieckie', '78', 166),
(2876, 'Podlaskie', 'بودلاسكي', 'Podlaskie', '81', 166),
(2880, 'Podkarpackie', 'بودكارباتسكي', 'Podkarpackie', '80', 166),
(2881, 'Lubuskie', 'وبوسكي', 'Lubuskie', '76', 166),
(2882, 'Dolnoslaskie', 'DOLNOSLASKIE', 'Dolnoslaskie', '72', 166),
(2883, 'Lubelskie', 'وبليسكي', 'Lubelskie', '75', 166),
(2884, 'Pomorskie', 'بومورسكي', 'Pomorskie', '82', 166),
(2885, 'Kujawsko-Pomorskie', 'كوجاوسكو بومورسكي', 'Kujawsko-Pomorskie', '73', 166),
(2886, 'Wielkopolskie', 'فيلكوبولسكي', 'Wielkopolskie', '86', 166),
(2887, 'Slaskie', 'سلاسكي', 'Slaskie', '83', 166),
(2888, 'Opolskie', 'أوبولسكي', 'Opolskie', '79', 166),
(2893, 'Braga', 'براغا', 'Braga', '04', 170),
(2894, 'Vila Real', 'فيلا ريال', 'Vila Real', '21', 170),
(2895, 'Santarem', 'سانتاريم', 'Santarem', '18', 170),
(2896, 'Leiria', 'ليريا', 'Leiria', '13', 170),
(2897, 'Lisboa', 'لشبونة', 'Lisboa', '14', 170),
(2898, 'Braganca', 'براغانكا', 'Braganca', '05', 170),
(2899, 'Viana do Castelo', 'فيانا دو كاستيلو', 'Viana do Castelo', '20', 170),
(2900, 'Portalegre', 'بورتاليجري', 'Portalegre', '16', 170),
(2901, 'Setubal', 'سيتوبال', 'Setubal', '19', 170),
(2902, 'Azores', 'الأزور', 'Açores', '23', 170),
(2903, 'Viseu', 'فيسيو', 'Viseu', '22', 170),
(2904, 'Porto', 'بورتو', 'Porto', '17', 170),
(2905, 'Aveiro', 'افيرو', 'Aveiro', '02', 170),
(2906, 'Castelo Branco', 'كاستيلو برانكو', 'Castelo Branco', '06', 170),
(2907, 'Faro', 'فارو', 'Faro', '09', 170),
(2908, 'Coimbra', 'كويمبرا', 'Coimbra', '07', 170),
(2909, 'Madeira', 'الماديرا', 'Madère', '10', 170),
(2910, 'Beja', 'باجة', 'Beja', '03', 170),
(2911, 'Guarda', 'غواردا', 'Guarda', '11', 170),
(2912, 'Evora', 'ايفورا', 'Evora', '08', 170),
(2914, 'Cordillera', 'كورديليرا', 'Cordillère', '08', 172),
(2915, 'Alto Parana', 'ألتو بارانا', 'Alto Parana', '01', 172),
(2916, 'Caazapa', 'كازابا', 'Caazapa', '05', 172),
(2917, 'Boqueron', 'بوكورون', 'Boqueron', '24', 172),
(2918, 'Paraguari', 'Paraguari', 'Paraguari', '15', 172),
(2919, 'Amambay', 'أمامباي', 'Amambay', '02', 172),
(2920, 'Alto Paraguay', 'ألتو باراجواي', 'Alto Paraguay', '23', 172),
(2921, 'Canindeyu', 'كانينديو', 'Canindeyu', '19', 172),
(2922, 'Concepcion', 'كونسيبسيون', 'Concepcion', '07', 172),
(2923, 'Misiones', 'ميسيونيس', 'Misiones', '12', 172),
(2924, 'Caaguazu', 'كاغوازو', 'Caaguazu', '04', 172),
(2925, 'Neembucu', 'نيمبوكو', 'Neembucu', '13', 172),
(2926, 'Itapua', 'إيتابوا', 'Itapua', '11', 172),
(2927, 'Central', 'وسط', 'Central', '06', 172),
(2928, 'San Pedro', 'حي سان بيدرو', 'San Pedro', '17', 172),
(2929, 'Presidente Hayes', 'سيادة الرئيس هايز', 'Président Hayes', '16', 172),
(2930, 'Guaira', 'جويرا', 'Guaira', '10', 172),
(2931, 'Madinat ach Shamal', 'مدينة شمال شمالي', 'Madinat ach Shamal', '08', 173),
(2932, 'Ad Dawhah', 'الدوحة', 'Ad Dawhah', '01', 173),
(2933, 'Umm Salal', 'أم صلال', 'Umm Salal', '09', 173),
(2934, 'Al Khawr', 'الخور', 'Al Khawr', '04', 173),
(2935, 'Al Jumaliyah', 'الجميلية', 'Al Jumaliyah', '03', 173),
(2936, 'Al Wakrah Municipality', 'بلدية الوكرة', 'Municipalité d\'Al Wakrah', '05', 173),
(2938, 'Ilfov', 'إيلفوف', 'Ilfov', '43', 175),
(2939, 'Giurgiu', 'غيورغيو', 'Giurgiu', '42', 175),
(2940, 'Bihor', 'بيهور', 'Bihor', '05', 175),
(2941, 'Caras-Severin', 'كاراس سيفيرين', 'Caras-Severin', '12', 175),
(2942, 'Mehedinti', 'ميهيدينتي', 'Mehedinti', '26', 175),
(2943, 'Vaslui', 'فاسلوي', 'Vaslui', '38', 175),
(2944, 'Tulcea', 'تولسيا', 'Tulcea', '37', 175),
(2945, 'Constanta', 'كونستانتا', 'Constanta', '14', 175),
(2946, 'Mures', 'موريس', 'Mures', '27', 175),
(2947, 'Harghita', 'هارغيتا', 'Harghita', '20', 175),
(2948, 'Alba', 'ألبا', 'Alba', '01', 175),
(2949, 'Arad', 'اراد', 'Arad', '02', 175),
(2950, 'Hunedoara', 'هونيدوارا', 'Hunedoara', '21', 175),
(2951, 'Satu Mare', 'ساتو ماري', 'Satu Mare', '32', 175),
(2952, 'Sibiu', 'سيبيو', 'Sibiu', '33', 175),
(2953, 'Maramures', 'مارامريس', 'Maramures', '25', 175),
(2954, 'Brasov', 'براسوف', 'Brasov', '09', 175),
(2955, 'Cluj', 'كلوج', 'Cluj', '13', 175),
(2956, 'Teleorman', 'تيليورمان', 'Teleorman', '35', 175),
(2957, 'Dambovita', 'دامبوفيتا', 'Dambovita', '16', 175),
(2958, 'Dolj', 'دولج', 'Dolj', '17', 175),
(2959, 'Suceava', 'سوسيفا', 'Suceava', '34', 175),
(2960, 'Botosani', 'بوتوساني', 'Botosani', '07', 175),
(2961, 'Iasi', 'اياسي', 'Iasi', '23', 175),
(2962, 'Arges', 'ارجيس', 'Arges', '03', 175),
(2963, 'Buzau', 'بوزاو', 'Buzau', '11', 175),
(2964, 'Timis', 'تيم هو', 'Timis', '36', 175),
(2965, 'Neamt', 'نيمت', 'Neamt', '28', 175),
(2966, 'Bacau', 'باكاو', 'Bacau', '04', 175),
(2967, 'Braila', 'برايلا', 'Braila', '08', 175),
(2968, 'Salaj', 'سالاج', 'Salaj', '31', 175),
(2969, 'Covasna', 'كوفاسنا', 'Covasna', '15', 175),
(2970, 'Bistrita-Nasaud', 'بيستريتا ناسود', 'Bistrita-Nasaud', '06', 175),
(2971, 'Calarasi', 'كالاراسي', 'Calarasi', '41', 175),
(2972, 'Gorj', 'غورج', 'Gorj', '19', 175),
(2973, 'Ialomita', 'ايالوميتا', 'Ialomita', '22', 175),
(2974, 'Olt', 'أولت', 'Olt', '29', 175),
(2975, 'Valcea', 'فالسيا', 'Valcea', '39', 175),
(2976, 'Prahova', 'براهوفا', 'Prahova', '30', 175),
(2977, 'Vrancea', 'فرانتشا', 'Vrancea', '40', 175),
(2978, 'Bucuresti', 'بوخارست', 'Bucuresti', '10', 175),
(2979, 'Galati', 'جالاتي', 'Galati', '18', 175),
(2980, '\"Vojvodina\"', '\"فويفودينا\"', '\"Voïvodine\"', '02', 0),
(2981, '\"Kosovo\"', '\"كوسوفو\"', '\"Kosovo\"', '01', 0),
(2983, 'Moskva', 'موسكفا', 'Moskva', '47', 176),
(2984, 'Karelia', 'كاريليا', 'Carélie', '28', 176),
(2985, 'Sakha', 'سخا', 'Sakha', '63', 176),
(2987, 'Altaisky krai', 'التيسكي كراي', 'Krai d\'Altaisky', '04', 176),
(2988, 'Ivanovo', 'إيفانوفو', 'Ivanovo', '21', 176),
(2989, 'Kostroma', 'كوستروما', 'Kostroma', '37', 176),
(2990, 'Nizhegorod', 'Nizhegorod', 'Nizhegorod', '51', 176),
(2991, 'Tver\'', 'تفير \"', 'Tver \'', '77', 176),
(2992, 'Vladimir', 'فلاديمير', 'Vladimir', '83', 176),
(2993, 'Perm\'', 'موج الشعر بإستمرار\'', 'Permanente\'', '58', 176),
(2994, 'Adygeya', 'أديغيا', 'Adygeya', '01', 176),
(2995, 'Chita', 'تشيتا', 'Chita', '14', 176),
(2996, 'Taymyr', 'Taymyr', 'Taymyr', '74', 176),
(2997, 'Kemerovo', 'كيميروفو', 'Kemerovo', '29', 176),
(2998, 'Udmurt', 'الأدمرت', 'Udmurt', '80', 176),
(2999, 'Khakass', 'Khakass', 'Khakass', '31', 176),
(3000, 'Vologda', 'فولوغدا', 'Vologda', '85', 176),
(3001, 'Omsk', 'أومسك', 'Omsk', '54', 176),
(3002, 'Orenburg', 'أورينبورغ', 'Orenburg', '55', 176),
(3003, 'Irkutsk', 'إيركوتسك', 'Irkoutsk', '20', 176),
(3004, 'Krasnoyarsk', 'كراسنويارسك', 'Krasnoyarsk', '39', 176),
(3005, 'Sverdlovsk', 'سفيردلوفسك', 'Sverdlovsk', '71', 176),
(3006, 'Tambovskaya oblast', 'Tambovskaya أوبلاست', 'Tambovskaya oblast', '72', 176),
(3007, 'Arkhangel\'sk', 'Arkhangel\'sk', 'Arkhangel\'sk', '06', 176),
(3008, 'Novosibirsk', 'نوفوسيبيرسك', 'Novosibirsk', '53', 176),
(3009, 'Ryazan\'', 'ريازان \"', 'Ryazan \'', '62', 176),
(3010, 'Tula', 'تولا', 'Tula', '76', 176),
(3011, 'Rostov', 'روستوف', 'Rostov', '61', 176),
(3012, 'Yaroslavl\'', 'ياروسلافل \"', 'Yaroslavl \'', '88', 176),
(3013, 'Tatarstan', 'تتارستان', 'Tatarstan', '73', 176),
(3014, 'Tyumen\'', 'تيومين \"', 'Tioumen \'', '78', 176),
(3015, 'Penza', 'بينزا', 'Penza', '57', 176),
(3016, 'Saratov', 'ساراتوف', 'Saratov', '67', 176),
(3017, 'Chuvashia', 'تشوفاشيا', 'Tchouvachie', '16', 176),
(3018, 'Komi', 'كومي', 'Komi', '34', 176),
(3019, 'Bryansk', 'بريانسك', 'Bryansk', '10', 176),
(3020, 'Samara', 'الثمرة الجناحية', 'Samara', '65', 176),
(3022, 'Mariy-El', 'جمهورية ماري ايل', 'Mariy-El', '45', 176),
(3023, 'Leningrad', 'لينينغراد', 'Leningrad', '42', 176),
(3024, 'Kirov', 'كيروف', 'Kirov', '33', 176),
(3025, 'Gorno-Altay', 'غورنو ألتاي', 'Gorno-Altay', '03', 176),
(3026, 'Dagestan', 'داغستان', 'Daghestan', '17', 176),
(3027, 'Kabardin-Balkar', 'قبردينو بلقاريا', 'Kabardin-Balkar', '22', 176),
(3028, 'Amur', 'آمور', 'Amour', '05', 176),
(3029, 'North Ossetia', 'اوسيتيا الشمالية', 'Ossétie du Nord', '68', 176),
(3030, 'Karachay-Cherkess', 'كراشاي-الشركس', 'Karachay-Cherkess', '27', 176),
(3031, 'Krasnodar', 'كراسنودار', 'Krasnodar', '38', 176),
(3032, 'Lipetsk', 'ليبيتسك', 'Lipetsk', '43', 176),
(3033, 'Smolensk', 'سمولينسك', 'Smolensk', '69', 176),
(3034, 'Kaliningrad', 'كالينينغراد', 'Kaliningrad', '23', 176),
(3035, 'Bashkortostan', 'باشكورتوستان', 'Bachkirie', '08', 176),
(3036, 'Chelyabinsk', 'تشيليابينسك', 'Tcheliabinsk', '13', 176),
(3037, 'Ul\'yanovsk', 'Ul\'yanovsk', 'Ul\'yanovsk', '81', 176),
(3038, 'Stavropol\'', 'ستافروبول \"', 'Stavropol \'', '70', 176),
(3039, 'Kurgan', 'كورغان', 'Kurgan', '40', 176),
(3040, 'Astrakhan\'', 'أستراخان \"', 'Astrakan\'', '07', 176),
(3041, 'Volgograd', 'فولغوغراد', 'Volgograd', '84', 176),
(3042, 'Kalmyk', 'الكالميك', 'Kalmouk', '24', 176),
(3043, 'Kaluga', 'كالوغا', 'Kalouga', '25', 176),
(3044, 'Magadan', 'ماجادان', 'Magadan', '44', 176),
(3045, 'Pskov', 'بسكوف', 'Pskov', '60', 176),
(3046, 'Orel', 'أوريل', 'Orel', '56', 176),
(3047, 'Primor\'ye', 'Primor\'ye', 'Primor\'ye', '59', 176),
(3048, 'Belgorod', 'بيلغورود', 'Belgorod', '09', 176),
(3049, 'Buryat', 'بوريات', 'Bouriatie', '11', 176),
(3050, 'Tomsk', 'تومسك', 'Tomsk', '75', 176),
(3051, 'Murmansk', 'مورمانسك', 'Mourmansk', '49', 176),
(3053, 'Sakhalin', 'سخالين', 'Sakhaline', '64', 176),
(3054, 'Voronezh', 'فورونيج', 'Voronezh', '86', 176),
(3055, 'Novgorod', 'نوفغورود', 'Novgorod', '52', 176),
(3056, 'Mordovia', 'موردوفيا', 'Mordovie', '46', 176),
(3057, 'Kamchatka', 'كامتشاتكا', 'Kamtchatka', '26', 176),
(3058, 'Khabarovsk', 'خاباروفسك', 'Khabarovsk', '30', 176),
(3059, 'Koryak', 'كورياك', 'Koryak', '36', 176),
(3060, 'Chukot', 'Chukot', 'Chukot', '15', 176),
(3061, 'Khanty-Mansiy', 'خانتي-Mansiy', 'Khanty-Mansiy', '32', 176),
(3062, 'Kursk', 'كورسك', 'Koursk', '41', 176),
(3063, 'Aginsky Buryatsky AO', 'Aginsky Buryatsky AO', 'Aginsky Buryatsky AO', '02', 176),
(3064, 'Tuva', 'تو فا', 'Tuva', '79', 176),
(3065, 'Nenets', 'نينيتس', 'Nenets', '50', 176),
(3066, 'Evenk', 'Evenk', 'Evenk', '18', 176),
(3067, 'Yevrey', 'Yevrey', 'Yevrey', '89', 176),
(3069, 'Yamal-Nenets', 'يامال نينيتس', 'Yamal-Nenets', '87', 176),
(3070, 'Saint Petersburg City', 'مدينة سانت بطرسبرغ', 'Saint-Pétersbourg', '66', 176),
(3071, 'Moscow City', 'مدينة موسكو', 'Ville de moscou', '48', 176),
(3072, 'Kigali', 'كيغالي', 'Kigali', '09', 177),
(3073, 'Butare', 'ولكن ل', 'Butare', '01', 177),
(3077, 'Kibungo', 'كيبيونغو', 'Kibungo', '07', 177),
(3080, 'Gitarama', 'غيتامارا', 'Gitarama', '06', 177),
(3082, 'Makkah', 'مكه', 'La Mecque', '14', 178),
(3083, 'Ar Riyad', 'الرياض', 'Ar Riyad', '10', 178),
(3084, 'Ha\'il', 'وابل', 'Saluer', '13', 178),
(3085, 'Al Hudud ash Shamaliyah', 'الحدود الشمالية', 'Al Hudud ash Shamaliyah', '15', 178),
(3086, 'Jizan', 'جازان', 'Jizan', '17', 178),
(3087, 'Ash Sharqiyah', 'الشرقية', 'Ash Sharqiyah', '06', 178),
(3088, 'Al Madinah', 'المدينة', 'Al Madinah', '05', 178),
(3089, 'Al Qasim', 'القاسم', 'Al Qasim', '08', 178),
(3090, 'Al Bahah', 'الباحة', 'Al Bahah', '02', 178),
(3091, 'Tabuk', 'تبوك', 'Tabuk', '19', 178),
(3092, 'Al Jawf', 'الجوف', 'Al Jawf', '20', 178),
(3094, 'Makira', 'ماكيرا', 'Makira', '08', 179),
(3096, 'Beau Vallon', 'بيو فالون', 'Beau Vallon', '08', 180),
(3098, 'Bahr al Ghazal', 'بحر الغزال', 'Bahr al Ghazal', '32', 181),
(3100, 'River Nile', 'نهر النيل', 'Nil', '53', 181),
(3101, 'Darfur', 'دارفور', 'Darfour', '33', 181),
(3102, 'Kurdufan', 'كردفان', 'Kurdufan', '34', 181),
(3103, 'Al Wusta', 'الوسطى', 'Al Wusta', '27', 181),
(3104, 'Ash Shamaliyah', 'الرماد الشمالي', 'Ash shamaliyah', '30', 181),
(3105, 'Ash Sharqiyah', 'الشرقية', 'Ash Sharqiyah', '31', 181),
(3106, 'Al Istiwa\'iyah', 'الاستيوة', 'Al Istiwa\'iyah', '28', 181),
(3110, 'Al Khartum', 'الخرطوم', 'Al Khartum', '29', 181),
(3113, 'Northern Darfur', 'شمال دارفور', 'Darfour Nord', '55', 181);
INSERT INTO `cities` (`id`, `name_en`, `name_ar`, `name_fr`, `code`, `country_id`) VALUES
(3119, 'Central Equatoria State', 'ولاية وسط الاستوائية', 'État de l\'Équatoria central', '44', 181),
(3120, 'Al Wahadah State', 'ولاية الوحده', 'État d\'Al Wahadah', '40', 181),
(3121, 'Kassala', 'كسلا', 'Kassala', '52', 181),
(3124, 'Southern Kordofan', 'جنوب كردفان', 'Kordofan du Sud', '50', 181),
(3126, 'Upper Nile', 'أعالي النيل', 'Nil Supérieur', '35', 181),
(3127, 'Southern Darfur', 'جنوب دارفور', 'Darfour Sud', '49', 181),
(3133, 'Vasternorrlands Lan', 'Vasternorrlands لان', 'Vasternorrlands Lan', '24', 182),
(3134, 'Vastra Gotaland', 'فاسترا جوتلاند', 'Vastra Gotaland', '28', 182),
(3135, 'Norrbottens Lan', 'نوربوتنز لان', 'Norrbottens Lan', '14', 182),
(3136, 'Vasterbottens Lan', 'فاستربوتينز لان', 'Vasterbottens Lan', '23', 182),
(3137, 'Skane Lan', 'سكين لان', 'Skane Lan', '27', 182),
(3138, 'Kalmar Lan', 'كالمار لان', 'Kalmar Lan', '09', 182),
(3139, 'Jamtlands Lan', 'جامتلاندز لان', 'Pays des Jamtlands', '07', 182),
(3140, 'Kronobergs Lan', 'كرونوبيرز لان', 'Kronobergs Lan', '12', 182),
(3141, 'Ostergotlands Lan', 'Ostergotlands لان', 'Ostergotlands Lan', '16', 182),
(3142, 'Stockholms Lan', 'ستوكهلم لان', 'Stockholms Lan', '26', 182),
(3143, 'Dalarnas Lan', 'دالارناس لان', 'Dalarnas Lan', '10', 182),
(3144, 'Blekinge Lan', 'بليكينج لان', 'Blekinge Lan', '02', 182),
(3145, 'Gavleborgs Lan', 'جافليبورجس لان', 'Gavleborgs Lan', '03', 182),
(3146, 'Sodermanlands Lan', 'سوديرمانلاندز لان', 'Sodermanlands Lan', '18', 182),
(3147, 'Vastmanlands Lan', 'فاستمانلاندس لان', 'Vastmanlands Lan', '25', 182),
(3148, 'Varmlands Lan', 'فارملاند لان', 'Varmlands Lan', '22', 182),
(3149, 'Hallands Lan', 'هولاندز لان', 'Hallands Lan', '06', 182),
(3150, 'Orebro Lan', 'أوربرو لان', 'Orebro Lan', '15', 182),
(3151, 'Uppsala Lan', 'أوبسالا لان', 'Uppsala Lan', '21', 182),
(3152, 'Jonkopings Lan', 'جونكوبنج لان', 'Jonkopings Lan', '08', 182),
(3153, 'Gotlands Lan', 'جوتلاندز لان', 'Gotlands Lan', '05', 182),
(3156, 'Bohinj Commune', 'بوهينج كوميون', 'Commune de Bohinj', '04', 185),
(3157, 'Brezovica Commune', 'Brezovica Commune', 'Commune de Brezovica', '09', 185),
(3160, 'Kosice', 'كوسيتش', 'Kosice', '03', 187),
(3161, 'Banska Bystrica', 'بانسكا بيستريكا', 'Banska Bystrica', '01', 187),
(3162, 'Nitra', 'نيترا', 'Nitra', '04', 187),
(3163, 'Trnava', 'ترنافا', 'Trnava', '07', 187),
(3164, 'Presov', 'بريسوف', 'Presov', '05', 187),
(3165, 'Zilina', 'زيلينا', 'Zilina', '08', 187),
(3166, 'Bratislava', 'براتيسلافا', 'Bratislava', '02', 187),
(3167, 'Trencin', 'ترينشن', 'Trencin', '06', 187),
(3169, 'Western Area', 'المنطقة الغربية', 'Zone ouest', '04', 188),
(3170, 'Northern', 'شمالي', 'Nord', '02', 188),
(3171, 'Eastern', 'الشرقية', 'Est', '01', 188),
(3172, 'Southern', 'جنوبي', 'Du sud', '03', 188),
(3173, 'Acquaviva', 'أكوافيفا', 'Acquaviva', '01', 189),
(3174, 'Chiesanuova', 'كيسانيوفا', 'Chiesanuova', '02', 189),
(3175, 'San Marino', 'سان مارينو', 'Saint Marin', '07', 189),
(3176, 'Serravalle', 'سيرافالي', 'Serravalle', '09', 189),
(3177, 'Dakar', 'داكار', 'Dakar', '01', 190),
(3179, 'Diourbel', 'ديوربيل', 'Diourbel', '03', 190),
(3181, 'Kolda', 'كولدا', 'Kolda', '11', 190),
(3182, 'Ziguinchor', 'زيغينشور', 'Ziguinchor', '12', 190),
(3183, 'Thies', 'تييس', 'Thies', '07', 190),
(3184, 'Fatick', 'فاتيك', 'Fatick', '09', 190),
(3185, 'Kaolack', 'كاولاك', 'Kaolack', '10', 190),
(3186, 'Tambacounda', 'تامباكوندا', 'Tambacounda', '05', 190),
(3187, 'Louga', 'وغا', 'Louga', '13', 190),
(3188, 'Matam', 'ماتام', 'Matam', '15', 190),
(3189, 'Saint-Louis', 'سانت لويس', 'Saint Louis', '14', 190),
(3191, 'Bay', 'خليج', 'baie', '04', 191),
(3192, 'Shabeellaha Hoose', 'Shabeellaha Hoose', 'Shabeellaha Hoose', '14', 191),
(3193, 'Bakool', 'باكول', 'Bakool', '01', 191),
(3194, 'Hiiraan', 'هيران', 'Hiiraan', '07', 191),
(3195, 'Gedo', 'جدو', 'Gedo', '06', 191),
(3196, 'Bari', 'باري', 'Bari', '03', 191),
(3197, 'Galguduud', 'غالغودود', 'Galguduud', '05', 191),
(3198, 'Mudug', 'مدق', 'Mudug', '10', 191),
(3199, 'Woqooyi Galbeed', 'Woqooyi Galbeed', 'Woqooyi Galbeed', '16', 191),
(3200, 'Jubbada Dhexe', 'جوبادا ديكسي', 'Jubbada Dhexe', '08', 191),
(3201, 'Shabeellaha Dhexe', 'Shabeellaha Dhexe', 'Shabeellaha Dhexe', '13', 191),
(3202, 'Jubbada Hoose', 'جوبادا هووز', 'Jubbada Hoose', '09', 191),
(3204, 'Nugaal', 'نوغال', 'Nugaal', '11', 191),
(3205, 'Sanaag', 'سناج', 'Sanaag', '12', 191),
(3206, 'Banaadir', 'بنادر', 'Banaadir', '02', 191),
(3208, 'Brokopondo', 'بروكوبوندو', 'Brokopondo', '10', 192),
(3209, 'Sipaliwini', 'سيباليويني', 'Sipaliwini', '18', 192),
(3210, 'Marowijne', 'ماروويجني', 'Marowijne', '13', 192),
(3211, 'Para', 'الفقرة', 'Para', '15', 192),
(3212, 'Commewijne', 'كوميويجني', 'Commewijne', '11', 192),
(3213, 'Saramacca', 'سارامكا', 'Saramacca', '17', 192),
(3214, 'Nickerie', 'نيكيري', 'Nickerie', '14', 192),
(3215, 'Coronie', 'كوروني', 'Coronie', '12', 192),
(3216, 'Wanica', 'وانيكا', 'Wanica', '19', 192),
(3217, 'Paramaribo', 'باراماريبو', 'Paramaribo', '16', 192),
(3218, 'Sao Tome', 'ساو تومي', 'Sao Tomé', '02', 193),
(3219, 'Principe', 'برينسيبي', 'Principe', '01', 193),
(3220, 'Sonsonate', 'سونسوناتي', 'Sonsonate', '13', 194),
(3221, 'Morazan', 'مورازان', 'Morazan', '08', 194),
(3222, 'San Vicente', 'سان فيسينتي', 'San Vicente', '12', 194),
(3223, 'La Union', 'لا يونيون', 'La union', '07', 194),
(3224, 'San Salvador', 'سان سلفادور', 'San Salvador', '10', 194),
(3225, 'Chalatenango', 'شالاتنانغو', 'Chalatenango', '03', 194),
(3226, 'La Libertad', 'لا ليبرتاد', 'La Libertad', '05', 194),
(3227, 'Cabanas', 'كاباناس', 'Cabanas', '02', 194),
(3228, 'Cuscatlan', 'كوسكاتلان', 'Cuscatlan', '04', 194),
(3229, 'Usulutan', 'أوسولوتان', 'Usulutan', '14', 194),
(3230, 'Ahuachapan', 'اهواتشابان', 'Ahuachapan', '01', 194),
(3231, 'Santa Ana', 'سانتا آنا', 'Santa Ana', '11', 194),
(3232, 'San Miguel', 'سان ميغيل', 'San Miguel', '09', 194),
(3233, 'La Paz', 'لاباز', 'La paz', '06', 194),
(3234, 'Al Hasakah', 'الحسكة', 'Al Hasakah', '01', 195),
(3235, 'Ar Raqqah', 'الرقة', 'Ar Raqqah', '04', 195),
(3236, 'Tartus', 'طرطوس', 'Tartous', '14', 195),
(3237, 'Rif Dimashq', 'ريف دمشق', 'Rif Dimashq', '08', 195),
(3238, 'Hims', 'حمص', 'Hims', '11', 195),
(3239, 'Idlib', 'إدلب', 'Idlib', '12', 195),
(3240, 'Hamah', 'حماه', 'Hamah', '10', 195),
(3241, 'Halab', 'حلب', 'Halab', '09', 195),
(3242, 'Al Qunaytirah', 'القنيطرة', 'Al Qunaytirah', '03', 195),
(3243, 'Dar', 'دار', 'Dar', '06', 195),
(3244, 'As Suwayda\'', 'كما السويداء', 'Comme Suwayda \'', '05', 195),
(3245, 'Al Ladhiqiyah', 'اللاذقية', 'Al Ladhiqiyah', '02', 195),
(3246, 'Dayr az Zawr', 'دير الزور', 'Dayr Az Zawr', '07', 195),
(3247, 'Dimashq', 'دمشق', 'Dimashq', '13', 195),
(3248, 'Lubombo', 'وبومبو', 'Lubombo', '02', 196),
(3249, 'Hhohho', 'هوهو', 'Hhohho', '01', 196),
(3250, 'Manzini', 'مانزيني', 'Manzini', '03', 196),
(3251, 'Shiselweni', 'شيزلويني', 'Shiselweni', '04', 196),
(3253, 'Ouaddai', 'واداي', 'Ouaddai', '12', 198),
(3254, 'Biltine', 'بيلتين', 'Biltine', '02', 198),
(3255, 'Batha', 'البطحاء', 'Batha', '01', 198),
(3256, 'Mayo-Kebbi', 'مايو-كيبي', 'Mayo-Kebbi', '10', 198),
(3257, 'Chari-Baguirmi', 'شاري باغيرمي', 'Chari-Baguirmi', '04', 198),
(3258, 'Guera', 'غويرا', 'Guera', '05', 198),
(3259, 'Salamat', 'سلامات', 'Salamat', '13', 198),
(3260, 'Kanem', 'كانم', 'Kanem', '06', 198),
(3261, 'Logone Occidental', 'لوجون اوكسيدنتال', 'Logone Occidental', '08', 198),
(3262, 'Lac', 'لاك', 'Lac', '07', 198),
(3263, 'Borkou-Ennedi-Tibesti', 'بوركو إندي تيبستي', 'Borkou-Ennedi-Tibesti', '03', 198),
(3264, 'Tandjile', 'تانجيل', 'Tandjile', '14', 198),
(3265, 'Moyen-Chari', 'موين شاري', 'Moyen-Chari', '11', 198),
(3266, 'Logone Oriental', 'لوجوني اورينتال', 'Logone Oriental', '09', 198),
(3268, 'Plateaux', 'الهضاب', 'Plateaux', '25', 200),
(3281, 'Kara', 'كارا', 'Kara', '23', 200),
(3289, 'Savanes', 'السافانا', 'Savanes', '26', 200),
(3290, 'Centrale', 'المركزية', 'Centrale', '22', 200),
(3292, 'Maritime', 'بحري', 'Maritime', '24', 200),
(3293, 'Trat', 'ترات', 'Trat', '49', 201),
(3294, 'Chiang Mai', 'تشيانغ ماي', 'Chiang Mai', '02', 201),
(3295, 'Nan', 'نان', 'Nan', '04', 201),
(3296, 'Prachin Buri', 'براشين بوري', 'Prachin Buri', '45', 201),
(3297, 'Krabi', 'كرابي', 'Krabi', '63', 201),
(3298, 'Sakon Nakhon', 'ساكون ناخون', 'Sakon Nakhon', '20', 201),
(3299, 'Nakhon Phanom', 'ناخون فانوم', 'Nakhon Phanom', '73', 201),
(3300, 'Amnat Charoen', 'أمنات تشاروين', 'Amnat Charoen', '77', 201),
(3301, 'Samut Songkhram', 'ساموت سونغخرام', 'Samut Songkhram', '54', 201),
(3302, 'Nakhon Sawan', 'ناخون صوان', 'Nakhon Sawan', '16', 201),
(3303, 'Kanchanaburi', 'كانشانابوري', 'Kanchanaburi', '50', 201),
(3304, 'Ubon Ratchathani', 'أوبون راتشاثاني', 'Ubon Ratchathani', '71', 201),
(3305, 'Chumphon', 'شومفون', 'Chumphon', '58', 201),
(3306, 'Chachoengsao', 'شاشوينجساو', 'Chachoengsao', '44', 201),
(3307, 'Sa Kaeo', 'سا كايو', 'Sa Kaeo', '80', 201),
(3308, 'Roi Et', 'روي إت', 'Roi Et', '25', 201),
(3309, 'Narathiwat', 'ناراثيوات', 'Narathiwat', '31', 201),
(3310, 'Pattani', 'باتاني', 'Pattani', '69', 201),
(3311, 'Chaiyaphum', 'تشايافوم', 'Chaiyaphum', '26', 201),
(3312, 'Kalasin', 'كالاسين', 'Kalasin', '23', 201),
(3313, 'Chon Buri', 'تشون بوري', 'Chon Buri', '46', 201),
(3314, 'Sukhothai', 'سوخوثاي', 'Sukhothai', '09', 201),
(3315, 'Surat Thani', 'سورة ثاني', 'Surat Thani', '60', 201),
(3317, 'Phra Nakhon Si Ayutthaya', 'فرا ناخون سي أيوتثايا', 'Phra Nakhon Si Ayutthaya', '36', 201),
(3318, 'Nonthaburi', 'نونثابوري', 'Nonthaburi', '38', 201),
(3319, 'Samut Prakan', 'ساموت براكان', 'Samut Prakan', '42', 201),
(3320, 'Ang Thong', 'آنج ثونغ', 'Ang Thong', '35', 201),
(3321, 'Krung Thep', 'كرونج ثيب', 'Krung Thep', '40', 201),
(3322, 'Phitsanulok', 'فيتسانولوك', 'Phitsanulok', '12', 201),
(3323, 'Nakhon Pathom', 'ناخون باتوم', 'Nakhon Pathom', '53', 201),
(3324, 'Phichit', 'فيشيت', 'Phichit', '13', 201),
(3325, 'Ratchaburi', 'راتشابوري', 'Ratchaburi', '52', 201),
(3326, 'Suphan Buri', 'سوفان بوري', 'Suphan Buri', '51', 201),
(3327, 'Sing Buri', 'الغناء بوري', 'Chanter buri', '33', 201),
(3328, 'Prachuap Khiri Khan', 'براشواب خيرى خان', 'Prachuap Khiri Khan', '57', 201),
(3329, 'Lamphun', 'امفون', 'Lamphun', '05', 201),
(3330, 'Rayong', 'رايونج', 'Rayong', '47', 201),
(3331, 'Ubon Ratchathani', 'أوبون راتشاثاني', 'Ubon Ratchathani', '75', 201),
(3332, 'Chai Nat', 'شاي نات', 'Chai Nat', '32', 201),
(3333, 'Buriram', 'بوريرام', 'Buriram', '28', 201),
(3334, 'Phetchaburi', 'فيتشابوري', 'Phetchaburi', '56', 201),
(3335, 'Tak', 'تاك', 'Tak', '08', 201),
(3336, 'Phayao', 'فاياو', 'Phayao', '41', 201),
(3337, 'Lop Buri', 'لوب بوري', 'Lop Buri', '34', 201),
(3338, 'Saraburi', 'سارابوري', 'Saraburi', '37', 201),
(3339, 'Nakhon Nayok', 'ناخون نايوك', 'Nakhon Nayok', '43', 201),
(3340, 'Yala', 'يالا', 'Yala', '70', 201),
(3341, 'Nakhon Ratchasima', 'ناخون راتشاسيما', 'Nakhon Ratchasima', '27', 201),
(3342, 'Samut Sakhon', 'ساموت ساخون', 'Samut Sakhon', '55', 201),
(3343, 'Khon Kaen', 'خون كاين', 'Khon Kaen', '22', 201),
(3344, 'Uthai Thani', 'يوثاي ثاني', 'Uthai Thani', '15', 201),
(3345, 'Nong Khai', 'نونغ خاي', 'Nong Khai', '17', 201),
(3346, 'Maha Sarakham', 'مها ساراخام', 'Maha Sarakham', '24', 201),
(3347, 'Lampang', 'امبانج', 'Lampang', '06', 201),
(3348, 'Songkhla', 'سونغكلا', 'Songkhla', '68', 201),
(3349, 'Nakhon Si Thammarat', 'ناخون سي ثامارات', 'Nakhon Si Thammarat', '64', 201),
(3350, 'Loei', 'ويي', 'Loei', '18', 201),
(3351, 'Chiang Rai', 'شيانج راي', 'Chiang Rai', '03', 201),
(3352, 'Surin', 'سورين', 'Surin', '29', 201),
(3353, 'Phetchabun', 'فيتشابون', 'Phetchabun', '14', 201),
(3354, 'Phrae', 'فراى', 'Phrae', '07', 201),
(3355, 'Phangnga', 'فانغ نغا', 'Phangnga', '61', 201),
(3356, 'Uttaradit', 'أوتاراديت', 'Uttaradit', '10', 201),
(3357, 'Sisaket', 'سيساكيت', 'Sisaket', '30', 201),
(3358, 'Trang', 'ترانج', 'Trang', '65', 201),
(3359, 'Kamphaeng Phet', 'كامبينغ فيت', 'Kamphaeng Phet', '11', 201),
(3360, 'Phuket', 'فوكيت', 'Phuket', '62', 201),
(3361, 'Mukdahan', 'موكداهان', 'Mukdahan', '78', 201),
(3362, 'Yasothon', 'ياسوثون', 'Yasothon', '72', 201),
(3363, 'Phatthalung', 'فاتهالونج', 'Phatthalung', '66', 201),
(3364, 'Pathum Thani', 'باثوم ثاني', 'Pathum Thani', '39', 201),
(3365, 'Chanthaburi', 'شانثابوري', 'Chanthaburi', '48', 201),
(3366, 'Mae Hong Son', 'ماي هونغ سون', 'Mae Hong Son', '01', 201),
(3367, 'Ranong', 'رانونج', 'Ranong', '59', 201),
(3368, 'Udon Thani', 'أودون ثاني', 'Udon Thani', '76', 201),
(3369, 'Satun', 'ساتون', 'Satun', '67', 201),
(3370, 'Nong Bua Lamphu', 'نونغ بوا لامفو', 'Nong Bua Lamphu', '79', 201),
(3371, 'Nakhon Phanom', 'ناخون فانوم', 'Nakhon Phanom', '21', 201),
(3372, 'Khatlon', 'خاتلون', 'Khatlon', '02', 202),
(3373, 'Sughd', 'صغد', 'Sughd', '03', 202),
(3374, 'Kuhistoni Badakhshon', 'كوهستوني بدخشون', 'Kuhistoni Badakhshon', '01', 202),
(3376, 'Lebap', 'يباب', 'Lebap', '04', 204),
(3377, 'Balkan', 'البلقان', 'balkanique', '02', 204),
(3378, 'Ahal', 'آهال', 'Ahal', '01', 204),
(3380, 'Mary', 'مريم العذراء', 'Marie', '05', 204),
(3381, 'Dashoguz', 'داشوغوز', 'Dashoguz', '03', 204),
(3382, 'Madanin', 'Madanin', 'Madanin', '28', 205),
(3383, 'El Kef', 'الكاف', 'El Kef', '14', 205),
(3384, 'Tozeur', 'توزر', 'Tozeur', '35', 205),
(3385, 'Sousse', 'سوسة', 'Sousse', '23', 205),
(3386, 'Gabes', 'قابس', 'Gabes', '29', 205),
(3387, 'Sfax', 'صفاقس', 'Sfax', '32', 205),
(3388, 'Bizerte', 'بنزرت', 'Bizerte', '18', 205),
(3389, 'Al Munastir', 'المنستير', 'Al Munastir', '16', 205),
(3390, 'Nabeul', 'نابل', 'Nabeul', '19', 205),
(3391, 'Kasserine', 'القصرين', 'Kasserine', '02', 205),
(3392, 'Tataouine', 'تطاوين', 'Tataouine', '34', 205),
(3393, 'Sidi Bou Zid', 'سيدي بوزيد', 'Sidi Bou Zid', '33', 205),
(3394, 'Al Mahdia', 'المهدية', 'Al Mahdia', '15', 205),
(3395, 'Jendouba', 'جندوبة', 'Jendouba', '06', 205),
(3396, 'Ben Arous', 'بن عروس', 'Ben Arous', '27', 205),
(3397, 'Kairouan', 'القيروان', 'Kairouan', '03', 205),
(3398, 'Zaghouan', 'زغوان', 'Zaghouan', '37', 205),
(3399, 'Kebili', 'قبلي', 'Kebili', '31', 205),
(3400, 'Bajah', 'باجه', 'Bajah', '17', 205),
(3402, 'Siliana', 'سليانة', 'Siliana', '22', 205),
(3404, 'Tunis', 'تونس', 'Tunis', '36', 205),
(3405, 'Tongatapu', 'تونجاتابو', 'Tongatapu', '02', 206),
(3406, 'Ha', 'ها', 'Ha', '01', 206),
(3407, 'Vava', 'فافا', 'Vava', '03', 206),
(3408, 'Amasya', 'أماسيا', 'Amasya', '05', 207),
(3409, 'Hatay', 'هاتاي', 'Hatay', '31', 207),
(3410, 'Diyarbakir', 'ديار بكر', 'Diyarbakir', '21', 207),
(3411, 'Adana', 'أضنة', 'Adana', '81', 207),
(3412, 'Bolu', 'بولو', 'Bolu', '14', 207),
(3413, 'Ankara', 'أنقرة', 'Ankara', '68', 207),
(3414, 'Konya', 'قونية', 'Konya', '71', 207),
(3415, 'Bilecik', 'بيلجيك', 'Bilecik', '11', 207),
(3416, 'Izmir', 'إزمير', 'Izmir', '35', 207),
(3417, 'Tokat', 'توكات', 'Tokat', '60', 207),
(3418, 'Edirne', 'أدرنة', 'Edirne', '22', 207),
(3419, 'Kirsehir', 'كيرسهير', 'Kirsehir', '40', 207),
(3420, 'Van', 'سيارة نقل', 'Van', '65', 207),
(3421, 'Kastamonu', 'كاستامونو', 'Kastamonu', '37', 207),
(3422, 'Sivas', 'سيفاس', 'Sivas', '58', 207),
(3423, 'Denizli', 'دنيزلي', 'Denizli', '20', 207),
(3424, 'Kutahya', 'كوتاهيا', 'Kutahya', '43', 207),
(3425, 'Bingol', 'بينغول', 'Bingol', '12', 207),
(3426, 'Kahramanmaras', 'كهرمان ماراس', 'Kahramanmaras', '46', 207),
(3427, 'Sanliurfa', 'سانليورفا', 'Sanliurfa', '63', 207),
(3428, 'Agri', 'الزراعية', 'Agri', '04', 207),
(3429, 'Eskisehir', 'اسكيسهير', 'Eskisehir', '26', 207),
(3430, 'Malatya', 'ملاطية', 'Malatya', '44', 207),
(3431, 'Adiyaman', 'أديامان', 'Adiyaman', '02', 207),
(3432, 'Giresun', 'جيرسون', 'Giresun', '28', 207),
(3433, 'Mus', 'المصحف', 'Mus', '49', 207),
(3434, 'Corum', 'كوروم', 'Corum', '19', 207),
(3435, 'Erzurum', 'أرضروم', 'Erzurum', '25', 207),
(3436, 'Mersin', 'مرسين', 'Mersin', '32', 207),
(3437, 'Aydin', 'أيدين', 'Aydin', '09', 207),
(3438, 'Nevsehir', 'نفسهير', 'Nevsehir', '50', 207),
(3439, 'Manisa', 'مانيسا', 'Manisa', '45', 207),
(3440, 'Canakkale', 'كاناكالي', 'Canakkale', '17', 207),
(3441, 'Ordu', 'أوردو', 'Ordu', '52', 207),
(3442, 'Yozgat', 'يوزغات', 'Yozgat', '66', 207),
(3443, 'Tunceli', 'تونجلي', 'Tunceli', '62', 207),
(3444, 'Mardin', 'ماردين', 'Mardin', '72', 207),
(3445, 'Sinop', 'سينوب', 'Sinop', '57', 207),
(3446, 'Antalya', 'أنطاليا', 'Antalya', '07', 207),
(3447, 'Erzincan', 'ارزينجان', 'Erzincan', '24', 207),
(3448, 'Artvin', 'أرتفين', 'Artvin', '08', 207),
(3449, 'Sakarya', 'ساكاريا', 'Sakarya', '54', 207),
(3450, 'Afyonkarahisar', 'أفيون قره حصار', 'Afyonkarahisar', '03', 207),
(3451, 'Bursa', 'بورصة', 'Bursa', '16', 207),
(3452, 'Trabzon', 'طرابزون', 'Trabzon', '61', 207),
(3453, 'Tekirdag', 'ستنعم', 'Tekirdag', '59', 207),
(3454, 'Kilis', 'كيليس', 'Kilis', '90', 207),
(3455, 'Gaziantep', 'غازي عنتاب', 'Gaziantep', '83', 207),
(3456, 'Sirnak', 'سيرناك', 'Sirnak', '80', 207),
(3457, 'Balikesir', 'باليكسير', 'Balikesir', '10', 207),
(3458, 'Elazig', 'إيلازيغ', 'Elazig', '23', 207),
(3459, 'Ardahan', 'أردهان', 'Ardahan', '86', 207),
(3460, 'Batman', 'الرجل الوطواط', 'Homme chauve-souris', '76', 207),
(3461, 'Kayseri', 'قيصري', 'Kayseri', '38', 207),
(3462, 'Kocaeli', 'قوجا', 'Kocaeli', '41', 207),
(3463, 'Samsun', 'سامسون', 'Samsun', '55', 207),
(3464, 'Isparta', 'اسبرطة', 'Isparta', '33', 207),
(3465, 'Mugla', 'موغلا', 'Mugla', '48', 207),
(3466, 'Bitlis', 'بتليس', 'Bitlis', '13', 207),
(3467, 'Rize', 'ريزي', 'Rize', '53', 207),
(3468, 'Hakkari', 'هكاري', 'Hakkari', '70', 207),
(3469, 'Istanbul', 'اسطنبول', 'Istanbul', '34', 207),
(3470, 'Karaman', 'كرمان', 'Karaman', '78', 207),
(3471, 'Igdir', 'اجدير', 'Igdir', '88', 207),
(3472, 'Nigde', 'نيغدة', 'Nigde', '73', 207),
(3473, 'Usak', 'اوساك', 'Usak', '64', 207),
(3474, 'Siirt', 'سيرت', 'Siirt', '74', 207),
(3475, 'Kirklareli', 'كيركلاريلي', 'Kirklareli', '39', 207),
(3476, 'Burdur', 'بوردور', 'Burdur', '15', 207),
(3477, 'Gumushane', 'جوموشان', 'Gumushane', '69', 207),
(3478, 'Osmaniye', 'عثمانية', 'Osmaniye', '91', 207),
(3479, 'Yalova', 'يالوفا', 'Yalova', '92', 207),
(3480, 'Kars', 'كارس', 'Kars', '84', 207),
(3481, 'Tobago', 'توباغو', 'Tobago', '11', 208),
(3482, 'Caroni', 'كاروني', 'Caroni', '02', 208),
(3483, 'Saint David', 'القديس داود', 'Saint David', '07', 208),
(3484, 'Arima', 'اريما', 'Arima', '01', 208),
(3485, 'Saint George', 'القديس جورج', 'Saint George', '08', 208),
(3486, 'Saint Patrick', 'سانت باتريك', 'Saint Patrick', '09', 208),
(3487, 'Victoria', 'فيكتوريا', 'Victoria', '12', 208),
(3488, 'Nariva', 'ناريفا', 'Nariva', '04', 208),
(3489, 'Port-of-Spain', 'ميناء اسبانيا', 'Port d\'Espagne', '05', 208),
(3490, 'Saint Andrew', 'القديس أندرو', 'Saint andrew', '06', 208),
(3491, 'Mayaro', 'مايارو', 'Mayaro', '03', 208),
(3492, 'San Fernando', 'سان فرناندو', 'San Fernando', '10', 208),
(3494, 'T\'ai-wan', 'تاي وان', 'Taïwan', '04', 210),
(3495, 'T\'ai-pei', 'تاي-بى', 'T\'ai-pei', '03', 210),
(3496, 'Fu-chien', 'فو شين', 'Fu-chien', '01', 210),
(3497, 'Kao-hsiung', 'كاو هسيونج،', 'Kao-hsiung', '02', 210),
(3499, 'Tabora', 'تابورا', 'Tabora', '17', 211),
(3500, 'Manyara', 'مانيارا', 'Manyara', '27', 211),
(3501, 'Mtwara', 'متوارا', 'Mtwara', '11', 211),
(3502, 'Lindi', 'ليندي', 'Lindi', '07', 211),
(3503, 'Ruvuma', 'روفوما', 'Ruvuma', '14', 211),
(3504, 'Iringa', 'إيرينغا', 'Iringa', '04', 211),
(3505, 'Tanga', 'طنجة', 'Tanga', '18', 211),
(3506, 'Pemba South', 'بيمبا الجنوبية', 'Pemba Sud', '20', 211),
(3507, 'Kagera', 'كاجيرا', 'Kagera', '19', 211),
(3508, 'Arusha', 'أروشا', 'Arusha', '26', 211),
(3509, 'Mwanza', 'موانزا', 'Mwanza', '12', 211),
(3510, 'Kilimanjaro', 'كليمنجارو', 'Kilimandjaro', '06', 211),
(3511, 'Pwani', 'بواني', 'Pwani', '02', 211),
(3512, 'Zanzibar Central', 'زنجبار الوسطى', 'Zanzibar Central', '21', 211),
(3513, 'Dodoma', 'دودوما', 'Dodoma', '03', 211),
(3514, 'Shinyanga', 'شينيانغا', 'Shinyanga', '15', 211),
(3515, 'Zanzibar Urban', 'زنجبار الحضري', 'Zanzibar Urban', '25', 211),
(3516, 'Pemba North', 'بيمبا الشمالية', 'Pemba Nord', '13', 211),
(3517, 'Mara', 'مارا', 'Mara', '08', 211),
(3518, 'Dar es Salaam', 'دار السلام', 'Dar es Salaam', '23', 211),
(3519, 'Zanzibar North', 'زنجبار الشمالية', 'Zanzibar Nord', '22', 211),
(3520, 'Mbeya', 'مبيا', 'Mbeya', '09', 211),
(3521, 'Singida', 'سينغيدا', 'Singida', '16', 211),
(3522, 'Kigoma', 'كيغوما', 'Kigoma', '05', 211),
(3523, 'Morogoro', 'موروجورو', 'Morogoro', '10', 211),
(3524, 'Rukwa', 'روكوا', 'Rukwa', '24', 211),
(3525, 'Krym', 'KRYM', 'Krym', '11', 212),
(3526, 'Odes\'ka Oblast\'', 'أوديسكا أوبلاست', 'Odes\'ka Oblast \'', '17', 212),
(3527, 'Kharkivs\'ka Oblast\'', 'خاركيفسكا أوبلاست', 'Kharkivs\'ka Oblast \'', '07', 212),
(3528, 'Poltavs\'ka Oblast\'', 'بولتافسكا أوبلاست', 'Poltavs\'ka Oblast \'', '18', 212),
(3529, 'Kyyivs\'ka Oblast\'', 'Kyyivs\'ka Oblast \'', 'Kyyivs\'ka Oblast \'', '13', 212),
(3530, 'Zakarpats\'ka Oblast\'', 'زاكارباتسكا أوبلاست', 'Zakarpats\'ka Oblast \'', '25', 212),
(3531, 'Sums\'ka Oblast\'', 'سومسكا أوبلاست', 'Sums\'ka Oblast \'', '21', 212),
(3532, 'Donets\'ka Oblast\'', 'دونيتسك أوبلاست', 'Donets\'ka Oblast \'', '05', 212),
(3533, 'Khersons\'ka Oblast\'', 'خيرسونسكا أوبلاست', 'Khersons\'ka Oblast \'', '08', 212),
(3534, 'L\'vivs\'ka Oblast\'', 'L\'vivs\'ka Oblast \'', '\'Vivs\'ka Oblast\'', '15', 212),
(3535, 'Cherkas\'ka Oblast\'', 'تشيركاشكا أوبلاست', 'Cherkas\'ka Oblast \'', '01', 212),
(3536, 'Vinnyts\'ka Oblast\'', 'فينيتسكا أوبلاست', 'Vinnyts\'ka Oblast \'', '23', 212),
(3537, 'Rivnens\'ka Oblast\'', 'ريفنينسكا أوبلاست', 'Rivnens\'ka Oblast \'', '19', 212),
(3538, 'Khmel\'nyts\'ka Oblast\'', 'خميلنيتسكا أوبلاست', 'Khmel\'nyts\'ka Oblast \'', '09', 212),
(3539, 'Chernihivs\'ka Oblast\'', 'تشيرنيهيفسكا أوبلاست', 'Tchernihivs\'ka Oblast \'', '02', 212),
(3540, 'Dnipropetrovs\'ka Oblast\'', 'دنيبروبيتروفسكا أوبلاست', 'Dnipropetrovs\'ka Oblast \'', '04', 212),
(3541, 'Mykolayivs\'ka Oblast\'', 'ميكولاييفسكا أوبلاست', 'Mykolayivs\'ka Oblast \'', '16', 212),
(3542, 'Ternopil\'s\'ka Oblast\'', 'تيرنوبل أوكا أوبلاست', 'Ternopil\'s\'ka Oblast \'', '22', 212),
(3543, 'Zhytomyrs\'ka Oblast\'', 'زيتوميرسكا أوبلاست', 'Zhytomyrs\'ka Oblast \'', '27', 212),
(3544, 'Chernivets\'ka Oblast\'', 'تشيرنيفتسكا أوبلاست', 'Tchernivets\'ka Oblast \'', '03', 212),
(3545, 'Luhans\'ka Oblast\'', 'لوهانسكا أوبلاست', 'Luhans\'ka Oblast \'', '14', 212),
(3546, 'Sevastopol\'', 'سيفاستوبول \"', 'Sébastopol \'', '20', 212),
(3547, 'Kirovohrads\'ka Oblast\'', 'كيروفوهرادسكا أوبلاست', 'Kirovohrads\'ka Oblast \'', '10', 212),
(3548, 'Ivano-Frankivs\'ka Oblast\'', 'ايفانو فرانكيفسكا أوبلاست', 'Ivano-Frankivs\'ka Oblast \'', '06', 212),
(3549, 'Zaporiz\'ka Oblast\'', 'زابوريزكا أوبلاست', 'Zaporiz\'ka Oblast \'', '26', 212),
(3550, 'Volyns\'ka Oblast\'', 'فولينسكا أوبلاست', 'Volyns\'ka Oblast \'', '24', 212),
(3552, 'Nebbi', 'نيبى', 'Nebbi', '58', 213),
(3553, 'Katakwi', 'كاتاكوي', 'Katakwi', '69', 213),
(3554, 'Lira', 'الليرة', 'Lire', '47', 213),
(3555, 'Apac', 'اباك', 'Apac', '26', 213),
(3556, 'Kaberamaido', 'كابيرامايدو', 'Kaberamaido', '80', 213),
(3557, 'Arua', 'أروا', 'Arua', '77', 213),
(3558, 'Soroti', 'سوروتي', 'Soroti', '95', 213),
(3559, 'Tororo', 'تورورو', 'Tororo', '76', 213),
(3560, 'Gulu', 'غولو', 'Gulu', '30', 213),
(3561, 'Pallisa', 'باليسا', 'Pallisa', '60', 213),
(3562, 'Pader', 'بادر', 'Pader', '92', 213),
(3563, 'Kumi', 'كومي', 'Kumi', '46', 213),
(3564, 'Adjumani', 'أدجومانى', 'Adjumani', '65', 213),
(3565, 'Kotido', 'كوتيدو', 'Kotido', '45', 213),
(3566, 'Kitgum', 'كيتجوم', 'Kitgum', '84', 213),
(3567, 'Masindi', 'ماسيندى', 'Masindi', '50', 213),
(3568, 'Mbarara', 'مبارارا', 'Mbarara', '52', 213),
(3570, 'Bundibugyo', 'بونديبوجيو', 'Bundibugyo', '28', 213),
(3571, 'Nakapiripirit', 'ناكابيريبيريت', 'Nakapiripirit', '91', 213),
(3572, 'Moroto', 'موروتو', 'Moroto', '88', 213),
(3573, 'Moyo', 'مويو', 'Moyo', '72', 213),
(3574, 'Mbale', 'مبالي', 'Mbale', '87', 213),
(3575, 'Yumbe', 'يومبى', 'Yumbe', '97', 213),
(3576, 'Kapchorwa', 'كابشوروا', 'Kapchorwa', '39', 213),
(3577, 'Nakasongola', 'ناكاسونغولا', 'Nakasongola', '73', 213),
(3578, 'Mubende', 'موبيندي', 'Mubende', '56', 213),
(3579, 'Kisoro', 'كيسورو', 'Kisoro', '43', 213),
(3580, 'Iganga', 'إيغانغا', 'Iganga', '78', 213),
(3581, 'Kayunga', 'كايونجا', 'Kayunga', '83', 213),
(3582, 'Mukono', 'موكونو', 'Mukono', '90', 213),
(3583, 'Mpigi', 'مبيجي', 'Mpigi', '89', 213),
(3584, 'Kamuli', 'كامولي', 'Kamuli', '38', 213),
(3585, 'Luwero', 'ويرو', 'Luwero', '70', 213),
(3586, 'Masaka', 'ماساكا', 'Masaka', '71', 213),
(3587, 'Rakai', 'راكاي', 'Rakai', '61', 213),
(3588, 'Kalangala', 'كالانغالا', 'Kalangala', '36', 213),
(3589, 'Kibale', 'كيبالي', 'Kibale', '41', 213),
(3590, 'Bugiri', 'بوجيرى', 'Bugiri', '66', 213),
(3591, 'Wakiso', 'اكيسو', 'Wakiso', '96', 213),
(3592, 'Kiboga', 'كيبوجا', 'Kiboga', '42', 213),
(3593, 'Kampala', 'كمبالا', 'Kampala', '37', 213),
(3594, 'Mayuge', 'مايوج', 'Mayuge', '86', 213),
(3595, 'Kyenjojo', 'كينجوجو', 'Kyenjojo', '85', 213),
(3596, 'Rukungiri', 'روكونجيري', 'Rukungiri', '93', 213),
(3597, 'Bushenyi', 'بوشينى', 'Bushenyi', '29', 213),
(3598, 'Hoima', 'هويما', 'Hoima', '31', 213),
(3599, 'Kamwenge', 'كاموينج', 'Kamwenge', '81', 213),
(3600, 'Kabarole', 'كابارولي', 'Kabarole', '79', 213),
(3601, 'Sironko', 'سيرونكو', 'Sironko', '94', 213),
(3602, 'Kasese', 'كاسيس', 'Kasese', '40', 213),
(3603, 'Sembabule', 'سيمبابول', 'Sembabule', '74', 213),
(3605, 'Jinja', 'جينجا', 'Jinja', '33', 213),
(3606, 'Busia', 'بوسيا', 'Busia', '67', 213),
(3607, 'Ntungamo', 'نتنجامو', 'Ntungamo', '59', 213),
(3608, 'Kanungu', 'كنونغ', 'Kanungu', '82', 213),
(3610, 'Alabama', 'ألاباما', 'Alabama', 'AL', 230),
(3611, 'Alaska', 'ألاسكا', 'Alaska', 'AK', 230),
(3612, 'American Samoa', 'ساموا الأمريكية', 'Samoa américaines', 'AS', 230),
(3613, 'Arizona', 'أريزونا', 'Arizona', 'AZ', 230),
(3614, 'Arkansas', 'أركنساس', 'Arkansas', 'AR', 230),
(3615, 'California', 'كاليفورنيا', 'Californie', 'CA', 230),
(3616, 'Colorado', 'كولورادو', 'Colorado', 'CO', 230),
(3617, 'Connecticut', 'كونيتيكت', 'Connecticut', 'CT', 230),
(3618, 'Delaware', 'ديلاوير', 'Delaware', 'DE', 230),
(3619, 'District of Columbia', 'مقاطعة كولومبيا', 'District de Colombie', 'DC', 230),
(3620, 'Florida', 'فلوريدا', 'Floride', 'FL', 230),
(3621, 'Georgia', 'جورجيا', 'Géorgie', 'GA', 230),
(3622, 'Guam', 'غوام', 'Guam', 'GU', 230),
(3623, 'Hawaii', 'هاواي', 'Hawaii', 'HI', 230),
(3624, 'Idaho', 'ايداهو', 'Idaho', 'ID', 230),
(3625, 'Illinois', 'إلينوي', 'Illinois', 'IL', 230),
(3626, 'Indiana', 'إنديانا', 'Indiana', 'IN', 230),
(3627, 'Iowa', 'أيوا', 'Iowa', 'IA', 230),
(3628, 'Kansas', 'كانساس', 'Kansas', 'KS', 230),
(3629, 'Kentucky', 'كنتاكي', 'Kentucky', 'KY', 230),
(3630, 'Louisiana', 'لويزيانا', 'Louisiane', 'LA', 230),
(3631, 'Maine', 'مين', 'Maine', 'ME', 230),
(3632, 'Marshall Islands', 'جزر مارشال', 'Iles Marshall', 'MH', 230),
(3633, 'Maryland', 'ماريلاند', 'Maryland', 'MD', 230),
(3634, 'Massachusetts', 'ماساتشوستس', 'Massachusetts', 'MA', 230),
(3635, 'Michigan', 'ميشيغان', 'Michigan', 'MI', 230),
(3636, 'Federated States of Micronesia', 'ولايات ميكرونيزيا الموحدة', 'États fédérés de Micronésie', 'FM', 230),
(3637, 'Minnesota', 'مينيسوتا', 'Minnesota', 'MN', 230),
(3638, 'Mississippi', 'ميسيسيبي', 'Mississippi', 'MS', 230),
(3639, 'Missouri', 'ميسوري', 'Missouri', 'MO', 230),
(3640, 'Montana', 'مونتانا', 'Montana', 'MT', 230),
(3641, 'Nebraska', 'نبراسكا', 'Nebraska', 'NE', 230),
(3642, 'Nevada', 'نيفادا', 'Nevada', 'NV', 230),
(3643, 'New Hampshire', 'نيو هامبشاير', 'New Hampshire', 'NH', 230),
(3644, 'New Jersey', 'نيو جيرسي', 'New Jersey', 'NJ', 230),
(3645, 'New Mexico', 'المكسيك جديدة', 'Nouveau Mexique', 'NM', 230),
(3646, 'New York', 'نيويورك', 'New York', 'NY', 230),
(3647, 'North Carolina', 'شمال كارولينا', 'Caroline du Nord', 'NC', 230),
(3648, 'North Dakota', 'شمال داكوتا', 'Dakota du nord', 'ND', 230),
(3649, 'Northern Mariana Islands', 'جزر مريانا الشمالية', 'Îles Mariannes du Nord', 'MP', 230),
(3650, 'Ohio', 'أوهايو', 'Ohio', 'OH', 230),
(3651, 'Oklahoma', 'أوكلاهوما', 'Oklahoma', 'OK', 230),
(3652, 'Oregon', 'ولاية أوريغون', 'Oregon', 'OR', 230),
(3653, 'Palau', 'بالاو', 'Palau', 'PW', 230),
(3654, 'Pennsylvania', 'بنسلفانيا', 'Pennsylvanie', 'PA', 230),
(3655, 'Puerto Rico', 'بورتوريكو', 'Porto Rico', 'PR', 230),
(3656, 'Rhode Island', 'جزيرة رود', 'Rhode Island', 'RI', 230),
(3657, 'South Carolina', 'كارولينا الجنوبية', 'Caroline du Sud', 'SC', 230),
(3658, 'South Dakota', 'جنوب داكوتا', 'Dakota du Sud', 'SD', 230),
(3659, 'Tennessee', 'تينيسي', 'Tennessee', 'TN', 230),
(3660, 'Texas', 'تكساس', 'Texas', 'TX', 230),
(3661, 'Utah', 'يوتا', 'Utah', 'UT', 230),
(3662, 'Vermont', 'فيرمونت', 'Vermont', 'VT', 230),
(3663, 'Virgin Islands', 'جزر العذراء', 'Les iles vierges', 'VI', 230),
(3664, 'Virginia', 'فرجينيا', 'Virginie', 'VA', 230),
(3665, 'Washington', 'واشنطن', 'Washington', 'WA', 230),
(3666, 'West Virginia', 'فرجينيا الغربية', 'Virginie Occidentale', 'WV', 230),
(3667, 'Wisconsin', 'ولاية ويسكونسن', 'Wisconsin', 'WI', 230),
(3668, 'Wyoming', 'وايومنغ', 'Wyoming', 'WY', 230),
(3669, 'Rocha', 'روشا', 'Rocha', '14', 214),
(3670, 'Florida', 'فلوريدا', 'Floride', '07', 214),
(3671, 'Montevideo', 'مونتيفيديو', 'Montevideo', '10', 214),
(3672, 'Rivera', 'ريفيرا', 'Rivera', '13', 214),
(3673, 'Cerro Largo', 'سيرو لارجو', 'Cerro Largo', '03', 214),
(3674, 'Tacuarembo', 'تاكواريمبو', 'Tacuarembo', '18', 214),
(3675, 'Lavalleja', 'افاييخا', 'Lavalleja', '08', 214),
(3676, 'Treinta y Tres', 'Treinta ذ تريس', 'Treinta y Tres', '19', 214),
(3677, 'Soriano', 'سوريانو', 'Soriano', '17', 214),
(3678, 'Durazno', 'دورازنو', 'Durazno', '05', 214),
(3679, 'Canelones', 'كانيلونز', 'Canelones', '02', 214),
(3680, 'Flores', 'فلوريس', 'Flores', '06', 214),
(3681, 'Maldonado', 'مالدونادو', 'Maldonado', '09', 214),
(3682, 'Salto', 'سالتو', 'Salto', '15', 214),
(3683, 'Rio Negro', 'ريو نيغرو', 'Rio Negro', '12', 214),
(3684, 'Artigas', 'أرتيجاس', 'Artigas', '01', 214),
(3685, 'Paysandu', 'بايساندو', 'Paysandu', '11', 214),
(3686, 'Colonia', 'كولونيا', 'Colonia', '04', 214),
(3687, 'San Jose', 'سان خوسيه', 'San Jose', '16', 214),
(3688, 'Khorazm', 'Khorazm', 'Khorazm', '05', 215),
(3689, 'Qashqadaryo', 'قاشقادري', 'Qashqadaryo', '08', 215),
(3690, 'Samarqand', 'سمرقند', 'Samarqand', '10', 215),
(3691, 'Andijon', 'أنديجان', 'Andijon', '01', 215),
(3692, 'Jizzax', 'جيزاكس', 'Jizzax', '15', 215),
(3693, 'Toshkent', 'طشقند', 'Toshkent', '14', 215),
(3694, 'Surkhondaryo', 'Surkhondaryo', 'Surkhondaryo', '12', 215),
(3695, 'Qoraqalpoghiston', 'Qoraqalpoghiston', 'Qoraqalpoghiston', '09', 215),
(3696, 'Nawoiy', 'Nawoiy', 'Nawoiy', '07', 215),
(3698, 'Namangan', 'نامانجان', 'Namangan', '06', 215),
(3699, 'Farghona', 'Farghona', 'Farghona', '03', 215),
(3700, 'Bukhoro', 'Bukhoro', 'Bukhoro', '02', 215),
(3701, 'Toshkent', 'طشقند', 'Toshkent', '13', 215),
(3703, 'Charlotte', 'شارلوت', 'Charlotte', '01', 216),
(3704, 'Saint George', 'القديس جورج', 'Saint George', '04', 216),
(3705, 'Grenadines', 'غرينادين', 'Grenadines', '06', 216),
(3706, 'Saint Patrick', 'سانت باتريك', 'Saint Patrick', '05', 216),
(3707, 'Saint Andrew', 'القديس أندرو', 'Saint andrew', '02', 216),
(3708, 'Saint David', 'القديس داود', 'Saint David', '03', 216),
(3709, 'Falcon', 'صقر', 'Faucon', '11', 217),
(3710, 'Apure', 'محض', 'Apure', '03', 217),
(3711, 'Bolivar', 'بوليفار', 'Bolivar', '06', 217),
(3712, 'Tachira', 'تاكيرا', 'Tachira', '20', 217),
(3713, 'Miranda', 'ميراندا', 'Miranda', '15', 217),
(3714, 'Guarico', 'غواريكو', 'Guarico', '12', 217),
(3715, 'Anzoategui', 'انزواتيجي', 'Anzoategui', '02', 217),
(3716, 'Nueva Esparta', 'نويفا اسبارتا', 'Nueva Esparta', '17', 217),
(3717, 'Portuguesa', 'بورتوغيزا', 'Portuguesa', '18', 217),
(3718, 'Sucre', 'سوكري', 'Sucre', '19', 217),
(3719, 'Barinas', 'باريناس', 'Barinas', '05', 217),
(3720, 'Lara', 'لارا', 'Lara', '13', 217),
(3721, 'Zulia', 'سوليا', 'Zulia', '23', 217),
(3722, 'Merida', 'ميريدا', 'Mérida', '14', 217),
(3723, 'Carabobo', 'كارابوبو', 'Carabobo', '07', 217),
(3724, 'Cojedes', 'كوجيديس', 'Cojedes', '08', 217),
(3725, 'Aragua', 'أراغوا', 'Aragua', '04', 217),
(3726, 'Yaracuy', 'ياراكوي', 'Yaracuy', '22', 217),
(3727, 'Amazonas', 'أمازوناس', 'Amazonas', '01', 217),
(3728, 'Monagas', 'موناجاس', 'Monagas', '16', 217),
(3729, 'Trujillo', 'تروخيو', 'Trujillo', '21', 217),
(3730, 'Vargas', 'فارغاس', 'Vargas', '26', 217),
(3732, 'Delta Amacuro', 'دلتا أماكورو', 'Delta Amacuro', '09', 217),
(3733, 'Distrito Federal', 'وفي مقاطعة الاتحادية', 'Distrito Federal', '25', 217),
(3734, 'Dependencias Federales', 'Dependencias Federales', 'Dependencias Federales', '24', 217),
(3742, 'Thanh Hoa', 'ثانه هوا', 'Thanh Hoa', '34', 220),
(3745, 'Quang Nam', 'كوانج نام', 'Quang Nam', '84', 220),
(3746, 'Son La', 'الابن لا', 'Fils la', '32', 220),
(3751, 'Tay Ninh', 'تاي نينه', 'Tay Ninh', '33', 220),
(3753, 'Thai Binh', 'التايلانديه بينه', 'Thai Binh', '35', 220),
(3754, 'Kien Giang', 'كين جيانج', 'Kien Giang', '21', 220),
(3755, 'Dong Thap', 'دونج ثاب', 'Dong Thap', '09', 220),
(3761, 'Soc Trang', 'سوك ترانج', 'Soc Trang', '65', 220),
(3764, 'Ben Tre', 'بن تري', 'Ben Tre', '03', 220),
(3765, 'Ho Chi Minh', 'هوشي منه', 'Ho Chi Minh', '20', 220),
(3766, 'Tra Vinh', 'ترا فينه', 'Tra Vinh', '67', 220),
(3767, 'Hai Phong', 'هاي فونج', 'Hai Phong', '13', 220),
(3768, 'Cao Bang', 'تساو بانج', 'Cao Bang', '05', 220),
(3769, 'An Giang', 'آن جيانج', 'Un giang', '01', 220),
(3772, 'Nghe An', 'نجى آن', 'Nghe An', '58', 220),
(3773, 'Gia Lai', 'جيا لاي', 'Gia Lai', '49', 220),
(3774, 'Lam Dong', 'لام دونغ', 'Lam Dong', '23', 220),
(3775, 'Binh Dinh', 'بينه دنه', 'Binh Dinh', '46', 220),
(3776, 'Binh Phuoc', 'بينه فووك', 'Binh Phuoc', '76', 220),
(3777, 'Lang Son', 'لانج سون', 'Lang Son', '39', 220),
(3778, 'Tien Giang', 'تيان جيانج', 'Tien Giang', '37', 220),
(3779, 'Long An', 'طويل', 'Long an', '24', 220),
(3780, 'Ninh Thuan', 'نينه ثوان', 'Ninh Thuan', '60', 220),
(3781, 'Quang Ninh', 'كوانج نينه', 'Quang Ninh', '30', 220),
(3782, 'Bac Lieu', 'باك ليو', 'Bac Lieu', '73', 220),
(3783, 'Ca Mau', 'كا ماو', 'Ca mau', '77', 220),
(3786, 'Binh Duong', 'بينه دونغ', 'Binh Duong', '75', 220),
(3787, 'Binh Thuan', 'بينه ثوان', 'Binh Thuan', '47', 220),
(3788, 'Vinh Long', 'فينه لونج', 'Vinh Long', '69', 220),
(3789, 'Dong Nai', 'دونج ناي', 'Dong Nai', '43', 220),
(3791, 'Bac Kan', 'باك اساسه', 'Bac Kan', '72', 220),
(3792, 'Bac Giang', 'باك جيانج', 'Bac Giang', '71', 220),
(3793, 'Thua Thien-Hue', 'ثوا ثين هوي', 'Thua Thien-Hue', '66', 220),
(3794, 'Bac Ninh', 'باك نينه', 'Bac Ninh', '74', 220),
(3795, 'Ha Giang', 'ها جيانج', 'Ha Giang', '50', 220),
(3796, 'Tuyen Quang', 'توين كوانج', 'Tuyen Quang', '68', 220),
(3797, 'Thai Nguyen', 'التايلاندية نغوين', 'Thai Nguyen', '85', 220),
(3798, 'Da Nang', 'دا نانج', 'Da Nang', '78', 220),
(3799, 'Khanh Hoa', 'خانه هوا', 'Khanh Hoa', '54', 220),
(3800, 'Ba Ria-Vung Tau', 'با ريا فونج تاو', 'Ba Ria-Vung Tau', '45', 220),
(3801, 'Quang Ngai', 'كوانج نجاي', 'Quang Ngai', '63', 220),
(3803, 'Ha Nam', 'ها نام', 'Ha Nam', '80', 220),
(3804, 'Phu Yen', 'فو ين', 'Phu Yen', '61', 220),
(3805, 'Quang Binh', 'كوانغ بينه', 'Quang Binh', '62', 220),
(3806, 'Phu Tho', 'فو ثو', 'Phu Tho', '83', 220),
(3807, 'Quang Tri', 'كوانغ تري', 'Quang Tri', '64', 220),
(3808, 'Ha Tinh', 'ها تنه', 'Ha Tinh', '52', 220),
(3809, 'Kon Tum', 'كون توم', 'Kon Tum', '55', 220),
(3811, 'Yen Bai', 'ين باي', 'Yen Bai', '70', 220),
(3812, 'Ninh Binh', 'نينه بينه', 'Ninh Binh', '59', 220),
(3813, 'Nam Dinh', 'نام دينه', 'Nam Dinh', '82', 220),
(3814, 'Hai Duong', 'هاي دونج', 'Hai Duong', '79', 220),
(3815, 'Ha Noi', 'ها نوي', 'Ha Noi', '44', 220),
(3816, 'Hoa Binh', 'هوا بينه', 'Hoa Binh', '53', 220),
(3817, 'Hung Yen', 'هونغ ين', 'Hung Yen', '81', 220),
(3818, 'Vinh Phuc', 'فينه فوك', 'Vinh Phuc', '86', 220),
(3819, 'Sanma', 'سانما', 'Sanma', '13', 221),
(3820, 'Aoba', 'أوبا', 'Aoba', '06', 221),
(3821, 'Shepherd', 'الراعي', 'Berger', '14', 221),
(3822, 'Malakula', 'Malakula', 'Malakula', '10', 221),
(3823, 'Pentecote', 'Pentecote', 'Pentecôte', '12', 221),
(3824, 'Torba', 'توربا', 'Torba', '07', 221),
(3825, 'Efate', 'إيفات', 'Efaté', '08', 221),
(3826, 'Tafea', 'تافيا', 'Taféa', '15', 221),
(3827, 'Ambrym', 'Ambrym', 'Ambrym', '05', 221),
(3828, 'Epi', 'برنامج التحصين الموسع', 'Epi', '09', 221),
(3829, 'Paama', 'Paama في', 'Paama', '11', 221),
(3832, 'Lahij', 'لحج', 'Lahij', '06', 224),
(3833, 'Sa\'dah', 'صعدة', 'Sa\'dah', '15', 224),
(3834, 'Al Hudaydah', 'الحديدة', 'Al Hudaydah', '08', 224),
(3835, 'Ma\'rib', 'مأرب', 'Ma\'rib', '14', 224),
(3836, 'Al Bayda\'', 'البيضاء', 'Al Bayda \'', '07', 224),
(3837, 'Dhamar', 'ذمار', 'Dhamar', '11', 224),
(3838, 'San\'a\'', 'صنعاء\'', 'San\'a \'', '16', 224),
(3839, 'Al Mahrah', 'المهرة', 'Al Mahrah', '03', 224),
(3840, 'Hadramawt', 'حضرموت', 'Hadramawt', '04', 224),
(3841, 'Taizz', 'تعز', 'Taizz', '17', 224),
(3842, 'Hajjah', 'حجة', 'Hajjah', '12', 224),
(3843, 'Abyan', 'أبين', 'Abyan', '01', 224),
(3844, 'Ibb', 'إب', 'Ibb', '13', 224),
(3845, 'Adan', 'عدن', 'Adan', '02', 224),
(3846, 'Al Mahwit', 'المحويت', 'Al Mahwit', '10', 224),
(3847, 'Al Jawf', 'الجوف', 'Al Jawf', '09', 224),
(3850, 'Western Cape', 'الرأس الغربي', 'Cape de Western', '11', 226),
(3851, 'Eastern Cape', 'الرأس الشرقي', 'cap Oriental', '05', 226),
(3852, 'Mpumalanga', 'مبومالانغا', 'Mpumalanga', '07', 226),
(3853, 'Free State', 'دولة حرة', 'État libre', '03', 226),
(3854, 'North-West', 'الشمال الغربي', 'Nord Ouest', '10', 226),
(3855, 'Limpopo', 'ليمبوبو', 'Limpopo', '09', 226),
(3856, 'KwaZulu-Natal', 'كوازولو ناتال', 'KwaZulu-Natal', '02', 226),
(3857, 'North-Western Province', 'المنطقة الشمالية الغربية', 'Province du Nord-Ouest', '01', 226),
(3858, 'Gauteng', 'غوتنغ', 'Gauteng', '06', 226),
(3859, 'Northern Cape', 'الرأس الشمالي', 'Northern Cape', '08', 226),
(3861, 'Southern', 'جنوبي', 'Du sud', '07', 227),
(3862, 'North-Western', 'الشمالية الغربية', 'Nord-ouest', '06', 227),
(3863, 'Northern', 'شمالي', 'Nord', '05', 227),
(3864, 'Western', 'الغربي', 'Occidental', '01', 227),
(3865, 'Eastern', 'الشرقية', 'Est', '03', 227),
(3866, 'Copperbelt', 'حزام النحاس', 'Ceinture de cuivre', '08', 227),
(3867, 'Luapula', 'وابولا', 'Luapula', '04', 227),
(3868, 'Central', 'وسط', 'Central', '02', 227),
(3869, 'Lusaka', 'لوساكا', 'Lusaka', '09', 227),
(3883, 'Matabeleland North', 'ماتابيللاند الشمالية', 'Matabeleland Nord', '06', 229),
(3884, 'Mashonaland East', 'ماشونالاند الشرقية', 'Mashonaland Est', '04', 229),
(3885, 'Mashonaland Central', 'ماشونالاند الوسطى', 'Mashonaland Central', '03', 229),
(3886, 'Matabeleland South', 'ماتابيليلاند الجنوبية', 'Matabeleland Sud', '07', 229),
(3888, 'Masvingo', 'ماسفينغو', 'Masvingo', '08', 229);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(255) NOT NULL,
  `name_ar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_fr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name_ar`, `name_fr`, `name_en`, `code`) VALUES
(1, 'أندورا', 'Andorre', 'Andorra', 'ad'),
(2, 'الإمارات العربية المتحدة', 'Emirats Arabes Unis', 'United Arab Emirates', 'ae'),
(3, 'أفغانستان', 'L\'Afghanistan', 'Afghanistan', 'af'),
(4, 'أنتيغوا وبربودا', 'Antigua-et-Barbuda', 'Antigua and Barbuda', 'ag'),
(5, 'أنغيلا', 'Anguilla', 'Anguilla', 'ai'),
(6, 'ألبانيا', 'Albanie', 'Albania', 'al'),
(7, 'أرمينيا', 'Arménie', 'Armenia', 'am'),
(8, 'جزر الأنتيل الهولندية', 'Antilles néerlandaises', 'Netherlands Antilles', 'an'),
(9, 'أنغولا', 'Angola', 'Angola', 'ao'),
(10, 'الأرجنتين', 'Argentine', 'Argentina', 'ar'),
(11, 'النمسا', 'L\'Autriche', 'Austria', 'at'),
(12, 'أستراليا', 'Australie', 'Australia', 'au'),
(13, 'أروبا', 'Aruba', 'Aruba', 'aw'),
(14, 'أذربيجان', 'Azerbaïdjan', 'Azerbaijan', 'az'),
(15, 'البوسنة والهرسك', 'Bosnie Herzégovine', 'Bosnia and Herzegovina', 'ba'),
(16, 'بربادوس', 'La Barbade', 'Barbados', 'bb'),
(17, 'بنغلاديش', 'Bangladesh', 'Bangladesh', 'bd'),
(18, 'بلجيكا', 'Belgique', 'Belgium', 'be'),
(19, 'بوركينا فاسو', 'Burkina Faso', 'Burkina Faso', 'bf'),
(20, 'بلغاريا', 'Bulgarie', 'Bulgaria', 'bg'),
(21, 'البحرين', 'Bahreïn', 'Bahrain', 'bh'),
(22, 'بوروندي', 'Burundi', 'Burundi', 'bi'),
(23, 'بنين', 'Bénin', 'Benin', 'bj'),
(24, 'برمودا', 'Bermudes', 'Bermuda', 'bm'),
(25, 'بروناي دار السلام', 'Brunei Darussalam', 'Brunei Darussalam', 'bn'),
(26, 'بوليفيا', 'Bolivie', 'Bolivia', 'bo'),
(27, 'البرازيل', 'Brésil', 'Brazil', 'br'),
(28, 'الباهاما', 'Bahamas', 'Bahamas', 'bs'),
(29, 'بوتان', 'Bhoutan', 'Bhutan', 'bt'),
(30, 'بوتسوانا', 'Botswana', 'Botswana', 'bw'),
(31, 'روسيا البيضاء', 'Biélorussie', 'Belarus', 'by'),
(32, 'بليز', 'Belize', 'Belize', 'bz'),
(33, 'كندا', 'Canada', 'Canada', 'ca'),
(34, 'جزر كوكوس (كيلينغ)', 'Îles Cocos (Keeling)', 'Cocos (Keeling) Islands', 'cc'),
(35, 'جمهورية الكونغو الديموقراطية', 'République Démocratique du Congo', 'Democratic Republic of the Congo', 'cd'),
(36, 'جمهورية افريقيا الوسطى', 'République centrafricaine', 'Central African Republic', 'cf'),
(37, 'الكونغو', 'Congo', 'Congo', 'cg'),
(38, 'سويسرا', 'Suisse', 'Switzerland', 'ch'),
(39, 'ساحل العاج (ساحل العاج)', 'Cote D\'Ivoire (Côte d\'Ivoire)', 'Cote D\'Ivoire (Ivory Coast)', 'ci'),
(40, 'جزر كوك', 'les Îles Cook', 'Cook Islands', 'ck'),
(41, 'تشيلي', 'Chili', 'Chile', 'cl'),
(42, 'الكاميرون', 'Cameroun', 'Cameroon', 'cm'),
(43, 'الصين', 'Chine', 'China', 'cn'),
(44, 'كولومبيا', 'Colombie', 'Colombia', 'co'),
(45, 'كوستا ريكا', 'Costa Rica', 'Costa Rica', 'cr'),
(46, 'كوبا', 'Cuba', 'Cuba', 'cu'),
(47, 'الرأس الأخضر', 'Cap-Vert', 'Cape Verde', 'cv'),
(48, 'جزيرة الكريسماس', 'L\'île de noël', 'Christmas Island', 'cx'),
(49, 'قبرص', 'Chypre', 'Cyprus', 'cy'),
(50, 'جمهورية التشيك', 'République Tchèque', 'Czech Republic', 'cz'),
(51, 'ألمانيا', 'Allemagne', 'Germany', 'de'),
(52, 'جيبوتي', 'Djibouti', 'Djibouti', 'dj'),
(53, 'الدنمارك', 'Danemark', 'Denmark', 'dk'),
(54, 'دومينيكا', 'Dominique', 'Dominica', 'dm'),
(55, 'جمهورية الدومنيكان', 'République Dominicaine', 'Dominican Republic', 'do'),
(56, 'الجزائر', 'Algérie', 'Algeria', 'dz'),
(57, 'الإكوادور', 'L\'Équateur', 'Ecuador', 'ec'),
(58, 'استونيا', 'Estonie', 'Estonia', 'ee'),
(59, 'مصر', 'Egypte', 'Egypt', 'eg'),
(60, 'الصحراء الغربية', 'Sahara occidental', 'Western Sahara', 'eh'),
(61, 'إريتريا', 'Erythrée', 'Eritrea', 'er'),
(62, 'إسبانيا', 'Espagne', 'Spain', 'es'),
(63, 'أثيوبيا', 'Ethiopie', 'Ethiopia', 'et'),
(64, 'فنلندا', 'Finlande', 'Finland', 'fi'),
(65, 'فيجي', 'Fidji', 'Fiji', 'fj'),
(66, 'جزر فوكلاند (مالفيناس)', 'Iles Malouines (Malouines)', 'Falkland Islands (Malvinas)', 'fk'),
(67, 'ولايات ميكرونيزيا الموحدة', 'États fédérés de Micronésie', 'Federated States of Micronesia', 'fm'),
(68, 'جزر صناعية', 'Îles Féroé', 'Faroe Islands', 'fo'),
(69, 'فرنسا', 'France', 'France', 'fr'),
(70, 'الغابون', 'Gabon', 'Gabon', 'ga'),
(71, 'بريطانيا العظمى (المملكة المتحدة)', 'Grande-Bretagne (UK)', 'Great Britain (UK)', 'gb'),
(72, 'غرينادا', 'Grenade', 'Grenada', 'gd'),
(73, 'جورجيا', 'Géorgie', 'Georgia', 'ge'),
(74, 'غيانا الفرنسية', 'Guinée Française', 'French Guiana', 'gf'),
(75, 'لا شيء', 'NUL', 'NULL', 'gg'),
(76, 'غانا', 'Ghana', 'Ghana', 'gh'),
(77, 'جبل طارق', 'Gibraltar', 'Gibraltar', 'gi'),
(78, 'الأرض الخضراء', 'Groenland', 'Greenland', 'gl'),
(79, 'غامبيا', 'Gambie', 'Gambia', 'gm'),
(80, 'غينيا', 'Guinée', 'Guinea', 'gn'),
(81, 'جوادلوب', 'La guadeloupe', 'Guadeloupe', 'gp'),
(82, 'غينيا الإستوائية', 'Guinée Équatoriale', 'Equatorial Guinea', 'gq'),
(83, 'اليونان', 'Grèce', 'Greece', 'gr'),
(84, 'جورجيا وجزر ساندويتش', 'Géorgie du Sud et les îles Sandwich du Sud', 'S. Georgia and S. Sandwich Islands', 'gs'),
(85, 'غواتيمالا', 'Guatemala', 'Guatemala', 'gt'),
(86, 'غينيا بيساو', 'Guinée-Bissau', 'Guinea-Bissau', 'gw'),
(87, 'غيانا', 'Guyane', 'Guyana', 'gy'),
(88, 'هونغ كونغ', 'Hong Kong', 'Hong Kong', 'hk'),
(89, 'هندوراس', 'Honduras', 'Honduras', 'hn'),
(90, 'كرواتيا (هرفاتسكا)', 'Croatie (Hrvatska)', 'Croatia (Hrvatska)', 'hr'),
(91, 'هايتي', 'Haïti', 'Haiti', 'ht'),
(92, 'اليونان', 'Hongrie', 'Hungary', 'hu'),
(93, 'أندونيسيا', 'Indonésie', 'Indonesia', 'id'),
(94, 'أيرلندا', 'Irlande', 'Ireland', 'ie'),
(96, 'الهند', 'Inde', 'India', 'in'),
(97, 'العراق', 'Irak', 'Iraq', 'iq'),
(98, 'إيران', 'Iran', 'Iran', 'ir'),
(99, 'أيسلندا', 'Islande', 'Iceland', 'is'),
(100, 'إيطاليا', 'Italie', 'Italy', 'it'),
(101, 'جامايكا', 'Jamaïque', 'Jamaica', 'jm'),
(102, 'الأردن', 'Jordan', 'Jordan', 'jo'),
(103, 'اليابان', 'Japon', 'Japan', 'jp'),
(104, 'كينيا', 'Kenya', 'Kenya', 'ke'),
(105, 'قرغيزستان', 'Kirghizistan', 'Kyrgyzstan', 'kg'),
(106, 'كمبوديا', 'Cambodge', 'Cambodia', 'kh'),
(107, 'كيريباس', 'Kiribati', 'Kiribati', 'ki'),
(108, 'جزر القمر', 'Comores', 'Comoros', 'km'),
(109, 'سانت كيتس ونيفيس', 'Saint-Christophe-et-Niévès', 'Saint Kitts and Nevis', 'kn'),
(110, 'كوريا الشمالية', 'Corée du Nord', 'Korea (North)', 'kp'),
(111, 'كوريا، جنوب)', 'COREE DU SUD)', 'Korea (South)', 'kr'),
(112, 'الكويت', 'Koweit', 'Kuwait', 'kw'),
(113, 'جزر كايمان', 'Îles Caïmans', 'Cayman Islands', 'ky'),
(114, 'كازاخستان', 'Le kazakhstan', 'Kazakhstan', 'kz'),
(115, 'لاوس', 'Laos', 'Laos', 'la'),
(116, 'لبنان', 'Liban', 'Lebanon', 'lb'),
(117, 'القديسة لوسيا', 'Sainte-Lucie', 'Saint Lucia', 'lc'),
(118, 'ليختنشتاين', 'Le Liechtenstein', 'Liechtenstein', 'li'),
(119, 'سيريلانكا', 'Sri Lanka', 'Sri Lanka', 'lk'),
(120, 'ليبيريا', 'Libéria', 'Liberia', 'lr'),
(121, 'ليسوتو', 'Lesotho', 'Lesotho', 'ls'),
(122, 'ليتوانيا', 'Lituanie', 'Lithuania', 'lt'),
(123, 'لوكسمبورغ', 'Luxembourg', 'Luxembourg', 'lu'),
(124, 'لاتفيا', 'Lettonie', 'Latvia', 'lv'),
(125, 'ليبيا', 'Libye', 'Libya', 'ly'),
(126, 'المغرب', 'Maroc', 'Morocco', 'ma'),
(127, 'موناكو', 'Monaco', 'Monaco', 'mc'),
(128, 'مولدوفا', 'La Moldavie', 'Moldova', 'md'),
(129, 'مدغشقر', 'Madagascar', 'Madagascar', 'mg'),
(130, 'جزر مارشال', 'Iles Marshall', 'Marshall Islands', 'mh'),
(131, 'مقدونيا', 'Macédoine', 'Macedonia', 'mk'),
(132, 'مالي', 'Mali', 'Mali', 'ml'),
(133, 'ميانمار', 'Myanmar', 'Myanmar', 'mm'),
(134, 'منغوليا', 'Mongolie', 'Mongolia', 'mn'),
(135, 'ماكاو', 'Macao', 'Macao', 'mo'),
(136, 'جزر مريانا الشمالية', 'Îles Mariannes du Nord', 'Northern Mariana Islands', 'mp'),
(137, 'مارتينيك', 'Martinique', 'Martinique', 'mq'),
(138, 'موريتانيا', 'Mauritanie', 'Mauritania', 'mr'),
(139, 'مونتسيرات', 'Montserrat', 'Montserrat', 'ms'),
(140, 'مالطا', 'Malte', 'Malta', 'mt'),
(141, 'موريشيوس', 'Maurice', 'Mauritius', 'mu'),
(142, 'جزر المالديف', 'Maldives', 'Maldives', 'mv'),
(143, 'مالاوي', 'Malawi', 'Malawi', 'mw'),
(144, 'المكسيك', 'Mexique', 'Mexico', 'mx'),
(145, 'ماليزيا', 'Malaisie', 'Malaysia', 'my'),
(146, 'موزمبيق', 'Mozambique', 'Mozambique', 'mz'),
(147, 'ناميبيا', 'Namibie', 'Namibia', 'na'),
(148, 'كاليدونيا الجديدة', 'Nouvelle Calédonie', 'New Caledonia', 'nc'),
(149, 'النيجر', 'Niger', 'Niger', 'ne'),
(150, 'جزيرة نورفولك', 'l\'ile de Norfolk', 'Norfolk Island', 'nf'),
(151, 'نيجيريا', 'Nigeria', 'Nigeria', 'ng'),
(152, 'نيكاراغوا', 'Nicaragua', 'Nicaragua', 'ni'),
(153, 'هولندا', 'Pays-Bas', 'Netherlands', 'nl'),
(154, 'النرويج', 'Norvège', 'Norway', 'no'),
(155, 'نيبال', 'Népal', 'Nepal', 'np'),
(156, 'ناورو', 'Nauru', 'Nauru', 'nr'),
(157, 'نيوي', 'Niue', 'Niue', 'nu'),
(158, 'نيوزيلندا (اوتياروا)', 'Nouvelle-Zélande (Aotearoa)', 'New Zealand (Aotearoa)', 'nz'),
(159, 'سلطنة عمان', 'Oman', 'Oman', 'om'),
(160, 'بناما', 'Panama', 'Panama', 'pa'),
(161, 'بيرو', 'Pérou', 'Peru', 'pe'),
(162, 'بولينيزيا الفرنسية', 'Polynésie française', 'French Polynesia', 'pf'),
(163, 'بابوا غينيا الجديدة', 'Papouasie Nouvelle Guinée', 'Papua New Guinea', 'pg'),
(164, 'الفلبين', 'Philippines', 'Philippines', 'ph'),
(165, 'باكستان', 'Pakistan', 'Pakistan', 'pk'),
(166, 'بولندا', 'Pologne', 'Poland', 'pl'),
(167, 'سانت بيير وميكلون', 'Saint Pierre et Miquelon', 'Saint Pierre and Miquelon', 'pm'),
(168, 'بيتكيرن', 'Pitcairn', 'Pitcairn', 'pn'),
(169, 'الأراضي الفلسطينية', 'Territoire Palestinien', 'Palestinian Territory', 'ps'),
(170, 'البرتغال', 'le Portugal', 'Portugal', 'pt'),
(171, 'بالاو', 'Palau', 'Palau', 'pw'),
(172, 'باراغواي', 'Paraguay', 'Paraguay', 'py'),
(173, 'دولة قطر', 'Qatar', 'Qatar', 'qa'),
(174, 'جمع شمل', 'Réunion', 'Reunion', 're'),
(175, 'رومانيا', 'Roumanie', 'Romania', 'ro'),
(176, 'الاتحاد الروسي', 'Fédération Russe', 'Russian Federation', 'ru'),
(177, 'رواندا', 'Rwanda', 'Rwanda', 'rw'),
(178, 'المملكة العربية السعودية', 'Arabie Saoudite', 'Saudi Arabia', 'sa'),
(179, 'جزر سليمان', 'Les îles Salomon', 'Solomon Islands', 'sb'),
(180, 'سيشيل', 'les Seychelles', 'Seychelles', 'sc'),
(181, 'سودان', 'Soudan', 'Sudan', 'sd'),
(182, 'السويد', 'Suède', 'Sweden', 'se'),
(183, 'سنغافورة', 'Singapour', 'Singapore', 'sg'),
(184, 'سانت هيلانة', 'Sainte Hélène', 'Saint Helena', 'sh'),
(185, 'سلوفينيا', 'La slovénie', 'Slovenia', 'si'),
(186, 'سفالبارد وجان مايان', 'Svalbard et Jan Mayen', 'Svalbard and Jan Mayen', 'sj'),
(187, 'سلوفاكيا', 'La slovaquie', 'Slovakia', 'sk'),
(188, 'سيرا ليون', 'Sierra Leone', 'Sierra Leone', 'sl'),
(189, 'سان مارينو', 'Saint Marin', 'San Marino', 'sm'),
(190, 'السنغال', 'Sénégal', 'Senegal', 'sn'),
(191, 'الصومال', 'Somalie', 'Somalia', 'so'),
(192, 'سورينام', 'Suriname', 'Suriname', 'sr'),
(193, 'ساو تومي وبرنسيبي', 'Sao Tomé et Principe', 'Sao Tome and Principe', 'st'),
(194, 'السلفادور', 'Le Salvador', 'El Salvador', 'sv'),
(195, 'سوريا', 'Syrie', 'Syria', 'sy'),
(196, 'سوازيلاند', 'Swaziland', 'Swaziland', 'sz'),
(197, 'جزر تركس وكايكوس', 'îles Turques-et-Caïques', 'Turks and Caicos Islands', 'tc'),
(198, 'تشاد', 'Le tchad', 'Chad', 'td'),
(199, 'المناطق الجنوبية لفرنسا', 'Terres australes françaises', 'French Southern Territories', 'tf'),
(200, 'ليذهب', 'Aller', 'Togo', 'tg'),
(201, 'تايلاند', 'Thaïlande', 'Thailand', 'th'),
(202, 'طاجيكستان', 'Tadjikistan', 'Tajikistan', 'tj'),
(203, 'توكيلاو', 'Tokelau', 'Tokelau', 'tk'),
(204, 'تركمانستان', 'Turkménistan', 'Turkmenistan', 'tm'),
(205, 'تونس', 'Tunisie', 'Tunisia', 'tn'),
(206, 'تونغا', 'Tonga', 'Tonga', 'to'),
(207, 'ديك رومي', 'dinde', 'Turkey', 'tr'),
(208, 'ترينداد وتوباغو', 'Trinité-et-Tobago', 'Trinidad and Tobago', 'tt'),
(209, 'توفالو', 'Tuvalu', 'Tuvalu', 'tv'),
(210, 'تايوان', 'Taïwan', 'Taiwan', 'tw'),
(211, 'تنزانيا', 'Tanzanie', 'Tanzania', 'tz'),
(212, 'أوكرانيا', 'Ukraine', 'Ukraine', 'ua'),
(213, 'أوغندا', 'Ouganda', 'Uganda', 'ug'),
(214, 'أوروغواي', 'Uruguay', 'Uruguay', 'uy'),
(215, 'أوزبكستان', 'Ouzbékistan', 'Uzbekistan', 'uz'),
(216, 'سانت فنسنت وجزر غرينادين', 'Saint-Vincent-et-les-Grenadines', 'Saint Vincent and the Grenadines', 'vc'),
(217, 'فنزويلا', 'Venezuela', 'Venezuela', 've'),
(218, 'جزر العذراء البريطانية)', 'Îles vierges britanniques', 'Virgin Islands (British)', 'vg'),
(219, 'جزر فيرجن (الولايات المتحدة)', 'Îles Vierges (États-Unis)', 'Virgin Islands (U.S.)', 'vi'),
(220, 'فيتنام', 'Viet Nam', 'Viet Nam', 'vn'),
(221, 'فانواتو', 'Vanuatu', 'Vanuatu', 'vu'),
(222, 'واليس وفوتونا', 'Wallis et Futuna', 'Wallis and Futuna', 'wf'),
(223, 'ساموا', 'Samoa', 'Samoa', 'ws'),
(224, 'اليمن', 'Yémen', 'Yemen', 'ye'),
(225, 'مايوت', 'Mayotte', 'Mayotte', 'yt'),
(226, 'جنوب أفريقيا', 'Afrique du Sud', 'South Africa', 'za'),
(227, 'زامبيا', 'Zambie', 'Zambia', 'zm'),
(228, 'زائير (سابقة)', 'Zaïre (ancien)', 'Zaire (former)', 'zr'),
(229, 'زيمبابوي', 'Zimbabwe', 'Zimbabwe', 'zw'),
(230, 'الولايات المتحدة', 'les États-Unis d\'Amérique', 'United States of America', 'us');

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
(4, 'Omar Tarek', 'omartarek1212@gmail.com', '$2y$10$yChfZFYt6EpBpmTZrHlpWeFV/ndDHDua83p77cvj1qtjzhM8LLZua', 'Cairo, Egypt', '+11111111111', NULL, 1, 1, 'files/user_images/5ol3.PNG', NULL, NULL, NULL, 'en', 1, '2021-07-08', '2021-07-24'),
(6, 'OmarTArek', 'admin@g.com', '$2y$10$cHQV.md6qiBZG/ZgyBwJe.o0Ph784dCT9hkuz7vR/92e0Q9rbZI6W', 'cairo, egypt', '+20545121545', NULL, 1, 4, NULL, NULL, NULL, NULL, '', 0, '2021-07-08', '2021-07-08'),
(7, 'عمر طارق', 'ot1@gmail.com', '$2y$10$CM/4PGxcISdQSUzaIFyWCet2N3Dq3yIwYkXejaT.MuP44YGkT6KZO', 'adsfadsf', '+201524154', NULL, 1, 1, NULL, NULL, NULL, NULL, 'en', 0, '2021-07-11', '2021-07-11'),
(8, 'عمر طارق', 'oott@g.com', '$2y$10$0Kxr3omErGlJOstoi0dRFuUi3lgHp5VQbH1od65/SWcftHd0JJzo.', 'asdfaf', '123', NULL, 1, 5, NULL, NULL, NULL, NULL, 'en', 0, '2021-07-11', '2021-07-11'),
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
(2, 'الإدارة', 'جروب الإدراة', 1, '2021-07-08 10:23:45', '2021-07-08 10:23:45'),
(4, 'المبيعات', 'جروب المبيعات', 1, '2021-07-08 11:41:07', '2021-07-08 11:41:07'),
(5, 'NewGroup', 'New', 1, '2021-07-11 10:34:09', '2021-07-11 10:34:09'),
(6, 'Hr', 'to help employees', 1, '2021-07-11 11:05:19', '2021-07-11 11:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `guest_access`
--

CREATE TABLE `guest_access` (
  `id` int(11) NOT NULL,
  `information` text DEFAULT NULL,
  `programid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guest_access`
--

INSERT INTO `guest_access` (`id`, `information`, `programid`, `created_at`, `updated_at`) VALUES
(1, 'ga1', 22, '2021-09-18 11:21:52', '2021-09-18 11:21:52'),
(2, 'ga5', 22, '2021-09-18 11:21:52', '2021-09-20 07:27:49');

-- --------------------------------------------------------

--
-- Table structure for table `itenary`
--

CREATE TABLE `itenary` (
  `id` int(11) NOT NULL,
  `information` text DEFAULT NULL,
  `daynum` int(11) DEFAULT NULL,
  `programid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `itenary`
--

INSERT INTO `itenary` (`id`, `information`, `daynum`, `programid`, `created_at`, `updated_at`) VALUES
(51, 'flkgdlj', 1, 17, '2021-09-17 15:07:04', '2021-09-17 15:07:04'),
(52, 'kjsdklfj', 2, 17, '2021-09-17 15:07:05', '2021-09-17 15:07:05'),
(53, 'kjsdklfj', 3, 17, '2021-09-17 15:07:05', '2021-09-17 15:07:05'),
(54, 'kjlkdsjf', 4, 17, '2021-09-17 15:07:05', '2021-09-17 15:07:05'),
(55, 'kjfsdklfjlk', 5, 17, '2021-09-17 15:07:05', '2021-09-17 15:07:05'),
(56, 'jskldjfkl', 6, 17, '2021-09-17 15:07:05', '2021-09-17 15:07:05'),
(57, 'klsjdklfj', 7, 17, '2021-09-17 15:07:05', '2021-09-17 15:07:05'),
(58, 'kljskldjfkl', 8, 17, '2021-09-17 15:07:05', '2021-09-17 15:07:05'),
(59, 'lksjdlfkj', 9, 17, '2021-09-17 15:07:05', '2021-09-17 15:07:05'),
(60, 'kljdsklfjskl', 10, 17, '2021-09-17 15:07:06', '2021-09-17 15:07:06'),
(61, 'sdf', 1, 18, '2021-09-17 19:23:58', '2021-09-17 19:23:58'),
(62, 'sdf', 2, 18, '2021-09-17 19:23:58', '2021-09-17 19:23:58'),
(63, 'sdf', 3, 18, '2021-09-17 19:23:58', '2021-09-17 19:23:58'),
(64, 'sdf', 1, 19, '2021-09-17 19:27:23', '2021-09-17 19:27:23'),
(65, 'sdf', 2, 19, '2021-09-17 19:27:23', '2021-09-17 19:27:23'),
(66, 'sdf', 3, 19, '2021-09-17 19:27:23', '2021-09-17 19:27:23'),
(67, 'sdf', 1, 20, '2021-09-18 10:27:28', '2021-09-18 10:27:28'),
(68, 'sdf', 2, 20, '2021-09-18 10:27:29', '2021-09-18 10:27:29'),
(69, 'sdf', 3, 20, '2021-09-18 10:27:29', '2021-09-18 10:27:29'),
(70, 'dfs', 1, 21, '2021-09-18 10:39:27', '2021-09-18 10:39:27'),
(71, 'sdf', 2, 21, '2021-09-18 10:39:27', '2021-09-18 10:39:27'),
(72, 'sdf', 3, 21, '2021-09-18 10:39:27', '2021-09-18 10:39:27'),
(73, 'sdff', 1, 22, '2021-09-18 11:21:51', '2021-09-20 07:56:08'),
(74, 'sdfkas', 2, 22, '2021-09-18 11:21:51', '2021-09-20 07:56:27'),
(75, 'sdf', 3, 22, '2021-09-18 11:21:51', '2021-09-18 11:21:51'),
(76, 'test', 1, 22, '2021-09-20 07:57:14', '2021-09-20 07:57:14'),
(77, 'testtt', 2, 22, '2021-09-20 07:57:14', '2021-09-20 07:57:14'),
(78, 'test44', 3, 22, '2021-09-20 07:57:14', '2021-09-20 07:57:14'),
(79, 'test8', 4, 22, '2021-09-20 07:57:14', '2021-09-20 07:57:14'),
(80, 'asda', 5, 22, '2021-09-20 07:57:14', '2021-09-20 07:57:14'),
(81, 'sdf', 6, 22, '2021-09-20 07:57:14', '2021-09-20 07:57:14'),
(82, 'sdf', 7, 22, '2021-09-20 07:57:14', '2021-09-20 07:57:14'),
(83, 'sdf', 8, 22, '2021-09-20 07:57:14', '2021-09-20 07:57:14'),
(84, 'sdf', 9, 22, '2021-09-20 07:57:14', '2021-09-20 07:57:14'),
(85, 'sdf', 10, 22, '2021-09-20 07:57:14', '2021-09-20 07:57:14'),
(86, 'dfgdf', 1, 22, '2021-09-20 08:17:30', '2021-09-20 08:17:30');

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
(3, 'تيست', 'Test', 1, 'dfgdf@sdfs.sd', 0, '2021-07-24 13:33:53', '2021-07-24 13:51:06');

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
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `days` int(11) NOT NULL,
  `status` int(3) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `aval_from` date DEFAULT NULL,
  `aval_to` date DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `image`, `days`, `status`, `categorie_id`, `aval_from`, `aval_to`, `destination`, `created_at`, `updated_at`) VALUES
(2, '123123', 'files/packages_images/2252073_1628426524.png', 3, 0, 95, '2021-09-17', '2021-09-17', 'there', '2021-09-19 09:32:26', '2021-09-19 07:32:26'),
(4, 'aqqweq55', 'files/packages_images/1290741_1628427545png', 55, 1, 95, NULL, NULL, NULL, '2021-08-31 14:36:15', '2021-08-08 11:15:31'),
(7, 'package for test1', 'files/packages_images/7660428_1628511804.jpg', 10, 1, 95, NULL, NULL, NULL, '2021-08-31 14:36:19', '2021-08-09 10:23:24'),
(8, 'package 2 for test 1', 'files/packages_images/5742716_1628511836.png', 12, 1, 95, NULL, NULL, NULL, '2021-08-31 14:36:22', '2021-08-09 10:23:56'),
(9, '10 days in aswan', 'files/packages_images/8830427_1630403976.jpg', 10, 1, 105, '2021-08-05', '2021-08-31', 'aswan', '2021-08-31 14:58:32', '2021-08-31 12:58:32'),
(12, '20 helwan', 'files/packages_images/2379044_1630420954.jpg', 20, 1, 105, NULL, NULL, NULL, '2021-08-31 12:42:34', '2021-08-31 12:42:34'),
(13, 'test', 'files/packages_images/3981415_1630421604.jpg', 20, 1, 105, '2021-08-26', '2021-08-31', 'helwan', '2021-08-31 14:56:03', '2021-08-31 12:56:03'),
(14, 'test', 'files/packages_images/1280541_1630421690.jpg', 20, 1, 105, '2021-08-31', '2021-09-07', 'helwan', '2021-08-31 12:54:50', '2021-08-31 12:54:50');

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
(3, 'إعدادات المستخدمين', 'التحكم في المستخدمين', 'UserController', 'listUsers', 'user', 0, '2021-07-08 06:59:51', '2021-07-11 09:04:56'),
(4, 'حذف عضو', 'حذف', 'UserController', 'destroyUser', 'user', 1, '2021-07-08 10:05:49', '2021-07-08 10:05:49'),
(19, 'add perm', NULL, 'PermissionController', 'add', 'user', 1, '2021-07-24 20:13:38', '2021-07-24 20:13:38'),
(6, 'عرض المستخدمين', 'عرض جميع المستخدمين', 'UserController', 'listUsers', 'user', 1, '2021-07-08 10:51:33', '2021-07-08 10:51:33'),
(7, 'السوشيال', 'التعالم مع السوشيال ميديا', 'SettingsController', 'addSocial', 'user', 1, '2021-07-08 11:01:26', '2021-07-24 18:36:15'),
(8, 'تعديل بيانات الموقع', 'تعديل بيانات الموقع', 'SettingsController', 'edit', 'user', 1, '2021-07-08 11:20:42', '2021-07-08 11:20:42'),
(9, 'عرض الأعضاء', 'عرض جميع الأعضاء', 'UserController', 'listEmployees', 'user', 1, '2021-07-08 11:28:48', '2021-07-08 11:28:48'),
(10, 'حذف عضو', 'حذف عضو', 'UserController', 'destroyEmployee', 'user', 1, '2021-07-08 11:31:03', '2021-07-08 11:31:03'),
(11, 'تعديل بيانات المستخدمين', 'تعديل بيانات المستخدمين', 'UserController', 'ViewEditForm', 'user', 1, '2021-07-08 12:00:21', '2021-07-08 12:00:21'),
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
-- Table structure for table `price_includes`
--

CREATE TABLE `price_includes` (
  `id` int(11) NOT NULL,
  `programid` int(11) DEFAULT NULL,
  `information` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `price_includes`
--

INSERT INTO `price_includes` (`id`, `programid`, `information`, `created_at`, `updated_at`) VALUES
(1, 21, 'price1', '2021-09-18 10:39:28', '2021-09-18 10:39:28'),
(2, 21, 'price 2', '2021-09-18 10:39:28', '2021-09-18 10:39:28'),
(3, 21, 'price 3', '2021-09-18 10:39:28', '2021-09-18 10:39:28'),
(4, 22, 'gdf', '2021-09-18 11:21:52', '2021-09-20 08:33:57');

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
(1, '1356', '{\"ar\":\"جامبو\",\"en\":\"dfgdfg\"}', 'كريم-ترطيب-الوجة', '25', 1, 0, NULL, 399, 230, 1, '1616420999.png', 0, 0, '<p><span style=\"font-family: \"Open Sans\", Arial, sans-serif; text-align: justify;\">لوريم إيبسوم(Lorem Ipsum) هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى) ويُستخدم في صناعات المطابع ودور النشر. كان لوريم إيبسوم ولايزال المعيار للنص الشكلي منذ القرن الخامس عشر عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة دليل أو مرجع شكلي لهذه الأحرف. خمسة قرون من الزمن لم تقضي على هذا النص، بل انه حتى صار مستخدماً وبشكله الأصلي في الطباعة والتنضيد الإلكتروني. انتشر بشكل كبير في ستينيّات هذا القرن مع إصدار رقائق \"ليتراسيت\" (Letraset) البلاستيكية تحوي مقاطع من هذا النص، وعاد لينتشر مرة أخرى مؤخراَ مع ظهور برامج النشر الإلكتروني مثل \"ألدوس بايج مايكر\" (Aldus PageMaker) والتي حوت أيضاً على نسخ من نص لوريم إيبسوم.</span><br></p>', 1, 0, 5, 0, 1, '2021-03-22 14:45:06', 0, 0, 0, 0, '2021-07-16 20:03:37', NULL, NULL, NULL, '00:00', 1, 1, NULL, NULL, NULL, 0, '[\"25\",\"30\",\".25\",\"red,green,\"]'),
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
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `shortName` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `shortDesc` text NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `images` text NOT NULL,
  `videos` varchar(255) NOT NULL,
  `status` int(3) DEFAULT NULL,
  `price_us` int(11) DEFAULT 0,
  `price_egp` int(11) DEFAULT 0,
  `discount` int(11) DEFAULT 0,
  `guestaccessdesc` text DEFAULT NULL,
  `tourrules` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `name`, `shortName`, `desc`, `shortDesc`, `categorie_id`, `package_id`, `images`, `videos`, `status`, `price_us`, `price_egp`, `discount`, `guestaccessdesc`, `tourrules`, `created_at`, `updated_at`) VALUES
(1, 'Tell-El-Amarna-Egypt-Vacation-Tours', 'Tell-El-Amarna', 'Tell-El-Amarna-Egypt-Vacation-Tours', 'Tell-El-Amarna-Egypt-Vacation-Tours', 99, 12, '[\"files\\/program_images\\/973508_1630313772.Tell-El-Amarna-Egypt-Vacation-Tours-800x600.jpg\"]', 'files/program_videos/9786338_1628502639.1.mp4', 1, 0, 0, 0, NULL, NULL, '2021-09-01 10:08:53', '2021-09-01 08:23:40'),
(5, 'Karnak-Complex-Egypt-Vacation-Tours', 'Karnak-Complex', 'Karnak-Complex-Egypt-Vacation-Tours', 'Karnak-Complex-Egypt-Vacation-Tours', 96, 7, '[\"files\\/program_images\\/5231919_1630313987.Karnak-Complex-Egypt-Vacation-Tours-800x600.jpg\"]', 'files/program_videos/7813829_1628511890.12490732_216670598668480_1635994819_n.mp4', 1, 0, 0, 0, NULL, NULL, '2021-09-01 10:08:40', '2021-08-30 08:59:47'),
(6, 'Kom-Ombo-Temple-Egypt-Vacation-Tours', 'Kom-Ombo-Temple', 'Kom-Ombo-Temple-Egypt-Vacation-Tours', 'Kom-Ombo-Temple-Egypt-Vacation-Tours', 51, 14, '[\"files\\/program_images\\/2768991_1630313927.Kom-Ombo-Temple-Egypt-Vacation-Tours-1-800x600.jpg\"]', 'files/program_videos/6096704_1628511928.12490732_216670598668480_1635994819_n.mp4', 1, 0, 0, 0, NULL, NULL, '2021-09-01 10:07:07', '2021-09-01 08:39:37'),
(7, 'HoneyMoon tour', 'HM', 'Awesome Program 1 for honeymoon', 'Awesome Program 1', 105, 9, '[\"files\\/program_images\\/3906757_1630405715.pexels-asad-photo-maldives-1024975.jpg\"]', 'files/program_videos/9980027_1630405715.mixkit-forest-stream-in-the-sunlight-529-large.mp4', 1, 30, 20, 20, NULL, NULL, '2021-08-31 11:31:01', '2021-08-31 11:31:01'),
(8, 'testttttIte', 'testttttIte', 'asdfa', 'sdf', 49, 14, '[\"files\\/program_images\\/9482738_1631897840.699-6997452_administrator-network-icons-system-avatar-computer-transparent-admin.png\"]', 'files/program_videos/2878732_1631897840.200103035336895_المشويات-للحامل.jpg', 1, 0, 0, 0, NULL, NULL, '2021-09-17 14:57:20', '2021-09-17 16:57:20'),
(9, 'testttttIte', 'testttttIte', 'asdfa', 'sdf', 49, 14, '[\"files\\/program_images\\/3809600_1631897891.699-6997452_administrator-network-icons-system-avatar-computer-transparent-admin.png\"]', 'files/program_videos/41447_1631897891.200103035336895_المشويات-للحامل.jpg', 1, 0, 0, 0, NULL, NULL, '2021-09-17 14:58:11', '2021-09-17 16:58:11'),
(10, 'testttttIte', 'testttttIte', 'asdfa', 'sdf', 49, 14, '[\"files\\/program_images\\/9929627_1631897923.699-6997452_administrator-network-icons-system-avatar-computer-transparent-admin.png\"]', 'files/program_videos/9959808_1631897923.200103035336895_المشويات-للحامل.jpg', 1, 0, 0, 0, NULL, NULL, '2021-09-17 14:58:43', '2021-09-17 16:58:43'),
(11, 'testttttIte', 'testttttIte', 'asdfa', 'sdf', 49, 14, '[\"files\\/program_images\\/8755128_1631898018.699-6997452_administrator-network-icons-system-avatar-computer-transparent-admin.png\"]', 'files/program_videos/2783377_1631898018.200103035336895_المشويات-للحامل.jpg', 1, 0, 0, 0, NULL, NULL, '2021-09-17 15:00:18', '2021-09-17 17:00:18'),
(12, 'ksdjfkl', 'jkljkdsljf', 'sdf', 'dsff', 49, 9, '[\"files\\/program_images\\/366697_1631898138.pyramids-view-from-mena--house-oberoi-cairo-egypt (1).jpg\"]', 'files/program_videos/4931323_1631898138.pyramids-view-from-mena--house-oberoi-cairo-egypt (1).jpg', 1, 0, 0, 0, NULL, NULL, '2021-09-17 15:02:18', '2021-09-17 17:02:18'),
(13, 'ksdjfkl', 'jkljkdsljf', 'sdf', 'dsff', 49, 9, '[\"files\\/program_images\\/2397762_1631898155.pyramids-view-from-mena--house-oberoi-cairo-egypt (1).jpg\"]', 'files/program_videos/3735152_1631898155.pyramids-view-from-mena--house-oberoi-cairo-egypt (1).jpg', 1, 0, 0, 0, NULL, NULL, '2021-09-17 15:02:35', '2021-09-17 17:02:35'),
(14, 'ksdjfkl', 'jkljkdsljf', 'sdf', 'dsff', 49, 9, '[\"files\\/program_images\\/8554034_1631898224.pyramids-view-from-mena--house-oberoi-cairo-egypt (1).jpg\"]', 'files/program_videos/4922587_1631898224.pyramids-view-from-mena--house-oberoi-cairo-egypt (1).jpg', 1, 0, 0, 0, NULL, NULL, '2021-09-17 15:03:44', '2021-09-17 17:03:44'),
(15, 'lfdgk', 'lsdksl;f', 'sdf', 'sdf', 49, 9, '[\"files\\/program_images\\/2908733_1631898309.unnamed.jpg\"]', 'files/program_videos/8935718_1631898309.dahabiya_cruise_nijl_luxor_aswan_egypt-870x500.jpg', 1, 0, 0, 0, NULL, NULL, '2021-09-17 15:05:09', '2021-09-17 17:05:09'),
(16, 'lfdgk', 'lsdksl;f', 'sdf', 'sdf', 49, 9, '[\"files\\/program_images\\/197206_1631898364.unnamed.jpg\"]', 'files/program_videos/199308_1631898364.dahabiya_cruise_nijl_luxor_aswan_egypt-870x500.jpg', 1, 0, 0, 0, NULL, NULL, '2021-09-17 15:06:04', '2021-09-17 17:06:04'),
(17, 'lfdgk', 'lsdksl;f', 'sdf', 'sdf', 49, 9, '[\"files\\/program_images\\/3154823_1631898424.unnamed.jpg\"]', 'files/program_videos/2795624_1631898424.dahabiya_cruise_nijl_luxor_aswan_egypt-870x500.jpg', 1, 0, 0, 0, NULL, NULL, '2021-09-17 15:07:04', '2021-09-17 17:07:04'),
(18, 'testNew', 'sdfs', 'sdf', 'sdf', 49, 2, '[\"files\\/program_images\\/8963259_1631913838.statues-entrance-Ramses-II-Luxor-temple-complex.jpg\"]', 'files/program_videos/5302618_1631913838.statues-entrance-Ramses-II-Luxor-temple-complex.jpg', 1, 0, 0, 0, NULL, NULL, '2021-09-17 19:23:58', '2021-09-17 21:23:58'),
(19, 'testNew', 'sdfs', 'sdf', 'sdf', 49, 2, '[\"files\\/program_images\\/9511971_1631914043.statues-entrance-Ramses-II-Luxor-temple-complex.jpg\"]', 'files/program_videos/7267463_1631914043.statues-entrance-Ramses-II-Luxor-temple-complex.jpg', 1, 0, 0, 0, 'testguest', 'testrules', '2021-09-17 19:27:23', '2021-09-17 21:27:23'),
(20, 'amee', 'asdmee', 'asdsas', 'sada', 49, 2, '[\"files\\/program_images\\/4588327_1631968048.badge-tripadvisor-winner.png\"]', 'files/program_videos/649388_1631968048.201905280950485048.jpg', 1, 0, 0, 0, 'sdfs', 'sdfsd', '2021-09-18 10:27:28', '2021-09-18 12:27:28'),
(21, 'preicesdfsd', 'sdfsdfjksd', 'dsfsdfs', 'sdfsdf', 49, 2, '[\"files\\/program_images\\/3201894_1631968767.Abu-Simbel-temples-Egypt-Vacation-Tours-2-870x500.jpg\"]', 'files/program_videos/5530228_1631968767.Untitled.png', 1, 0, 0, 0, 'dslfk', 'ksdlkf;l', '2021-09-18 10:39:27', '2021-09-18 12:39:27'),
(22, 'lasttest', 'asda', 'sdf', 'dfsdf', 51, 9, '[\"files\\/program_images\\/3335981_1631971311.ceaa961f60ca17a9c3abb102abe9f2e6.jpg\"]', 'files/program_videos/7457406_1631971311.badge-tripadvisor-winner.png', 1, 0, 0, 0, 'ddd', 'sdfsd', '2021-09-20 10:33:57', '2021-09-20 10:33:57');

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
  `aboutDescAr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aboutDescEn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featureoneEn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featureoneAr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featuretwoEn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featuretwoAr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featurethreeEn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featurethreeAr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneabout` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Photoone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phototwo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_companyEN` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_companyAr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_infoAR` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_infoEn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tripadvisorlink` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `privateguidelink` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bannertitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bannerdesc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bannerphoto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destinationid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `nameAr`, `nameEn`, `email`, `phone`, `phone2`, `ArDescription`, `EnDescription`, `ArMetaDescription`, `EnMetaDescription`, `ArMetaKeywords`, `EnMetaKeywords`, `logo`, `favIcon`, `banner`, `slider`, `status`, `aboutDescAr`, `aboutDescEn`, `featureoneEn`, `featureoneAr`, `featuretwoEn`, `featuretwoAr`, `featurethreeEn`, `featurethreeAr`, `phoneabout`, `Photoone`, `Phototwo`, `address_companyEN`, `address_companyAr`, `slider_infoAR`, `slider_infoEn`, `tripadvisorlink`, `privateguidelink`, `bannertitle`, `bannerdesc`, `bannerphoto`, `destinationid`, `created_at`, `updated_at`) VALUES
(1, 'Egypt Majestic Tours', 'Egypt Majestic Tours', 'info@egyptmajesticyours.com', '+201111111111123321', '+2012222222222123321', 'وصف الموقع 123312', 'Simple site description123321', 'وصف ال metadescription123321', 'Description for meta123321', 'ar meta keywords123321', 'En Meta Keywords123321', 'files/site_images/911239_1630313272.png', 'files/site_images/908312_1630314821.png', 'files/site_images/743654_1627209693.PNG', '[\"files\\/site_images\\/810564_1627210312.slide-1.jpg\",\"files\\/site_images\\/320094_1627210312.slide-2.jpg\",\"files\\/site_images\\/434930_1627210312.slide-3.jpg\"]', 1, 'وجبة طازجة ولذيذة لتصل إلى الصحة واللياقة البدنية المثلى', 'Fresh,Delicious meal to reach your optimum health and fitness', 'Fresh Food', 'طعام طازج', 'Online Order', 'الطلب اونلاين', 'Fast Delivery', 'سرعة التوصيل', '01553333373', 'files/site_images/122242_1629139284.jpg', 'files/site_images/121971_1629139284.jpg', 'online', 'online', 'privateguidelink', 'privateguidelink', 'asdasdasd', 'sdfsdfsd', 'Popular Destinations For Honeymoon', 'Here The most Popular Programs for this destiation', 'files/site_images/257258_1632042804.jpg', NULL, '2021-07-15 08:37:57', '2021-09-19 07:13:24');

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
(2, 'عمر طارق', 'مصر القديمة القاهرة مصر', '78797978', 'logapps2021@gmail.com', NULL, '$2y$10$lqrdiyhsN4Bdf.vuTKTlPOKk9jak/Dybgjww0j4zmIIkmzQDsoXJe', 1, '64966_1625487823.jpg', 30, 30, 1, 'P9WwnEDFBfDNabu', NULL, '2021-04-11 18:59:09', '2021-07-05 10:25:19'),
(9, 'OmarTarek', 'Cairo Egypt', '5646456', 'omartarek@gmail.com', NULL, '$2y$10$jhK54MYXaVujpEcB0TFmC.A5NrnI9CCGCTZZtHUppvyj3N1W8l4ze', 1, NULL, NULL, NULL, 1, NULL, NULL, '2021-07-07 12:01:21', '2021-07-07 12:01:21'),
(17, 'test', NULL, NULL, 'test@gmail.com', NULL, '$2y$10$94iZGywXF5HHaC/82BzLB.dWRVfUTz6.50b0u6DXTXHOoC4gRexAK', NULL, NULL, NULL, NULL, 1, NULL, 'en', '2021-07-26 10:23:15', '2021-07-26 10:23:15'),
(18, 'test3', NULL, NULL, 'e.asaadsaad@gmail.com', NULL, '$2y$10$lqrdiyhsN4Bdf.vuTKTlPOKk9jak/Dybgjww0j4zmIIkmzQDsoXJe', NULL, NULL, NULL, NULL, 1, NULL, 'en', '2021-07-26 12:58:04', '2021-07-26 12:58:04'),
(19, 'test5', NULL, NULL, 'test5@gmail.com', NULL, '$2y$10$PQYFXh7Ls2KD.zctY.S8m.jFhNXPr4JyWpp/IMAgiiXS8q04mEUI.', NULL, NULL, NULL, NULL, 1, NULL, 'en', '2021-07-26 18:39:56', '2021-07-26 18:39:56'),
(21, 'KaseHeller123', 'Here', '+201550541873', 'e.asaadsaad123@gmail.com', NULL, '$2y$10$xBN529nmMscc2tFkLYeT2OQpJ.cLwrRreYIbvS.dD/WEwFg8RTLEK', NULL, NULL, NULL, NULL, 1, NULL, 'en', '2021-08-30 13:37:24', '2021-08-30 13:37:24'),
(22, 'KillerKase12356', 'here', '+201550541873', 'e.asaadsaad567@gmail.com', NULL, '$2y$10$AfFYrKgf/dmT86YyYT6TMuWup2vF4cDyl2m.si.EBTIzahCotBQBO', 1, NULL, NULL, NULL, 1, NULL, 'en', '2021-08-30 13:41:10', '2021-09-02 10:52:50'),
(23, 'hellerererererer', 'hereeee', '+201550541873', 'e.asaadsaad123456@gmail.com', NULL, '$2y$10$bMYDkSpEiCRUzY1uAt0pq.mnf1rFEmKAIiQecMwGcmZWpv9gTak6K', NULL, NULL, NULL, NULL, 1, NULL, 'en', '2021-09-02 10:21:05', '2021-09-02 10:21:05');

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
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
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
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

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
-- Indexes for table `guest_access`
--
ALTER TABLE `guest_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itenary`
--
ALTER TABLE `itenary`
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
-- Indexes for table `packages`
--
ALTER TABLE `packages`
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
-- Indexes for table `price_includes`
--
ALTER TABLE `price_includes`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `programs`
--
ALTER TABLE `programs`
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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3889;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

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
-- AUTO_INCREMENT for table `guest_access`
--
ALTER TABLE `guest_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `itenary`
--
ALTER TABLE `itenary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

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
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
-- AUTO_INCREMENT for table `price_includes`
--
ALTER TABLE `price_includes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `userscoupons`
--
ALTER TABLE `userscoupons`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
