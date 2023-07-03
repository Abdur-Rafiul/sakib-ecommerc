-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2023 at 04:41 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'fahima@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `brand_table`
--

CREATE TABLE `brand_table` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brand_table`
--

INSERT INTO `brand_table` (`id`, `brand_name`, `brand_image`) VALUES
(1, 'Oppo', 'http://127.0.0.1:8000/storage/k9eIPzTJI7dk5X1ZQNQcLW1EisEcjwMjOq7HfKmd.jpg'),
(2, 'Arong', 'http://127.0.0.1:8000/storage/7UmjcMSlTlYkXhS3zMi6DSB90JFDYJbCIwBZlG4x.jpg'),
(3, 'Quartz', 'http://127.0.0.1:8000/storage/42XPNQjNRaOpiLEtuIRwzbg4vnp5zagqLgf4gEyB.jpg'),
(4, 'Arong', 'http://127.0.0.1:8000/storage/MZ7CBJsrqUpICMy4Vyeu24X1Wmrvmj6hnD7KRXmH.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category_level1`
--

CREATE TABLE `category_level1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat1_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat1_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_level1`
--

INSERT INTO `category_level1` (`id`, `cat1_name`, `cat1_image`) VALUES
(2, 'Bags', 'http://127.0.0.1:8000/storage/GyWxtriwvIt6RwgG8uN00SF7DcA8FS2NCAShBGgO.jpg'),
(3, 'Watches', 'http://127.0.0.1:8000/storage/YgZUInUl12UO4WNBS3RmFSinZ2J4JRmiA8B30tA3.jpg'),
(4, 'Mobile', 'http://127.0.0.1:8000/storage/TplUoVWRZGEn0WOzRBnwfo7p6RieNFSeWTXX2Q3o.jpg'),
(5, 'Women Fashions', 'http://127.0.0.1:8000/storage/1ekxkpO5THAxz7NToPgBiQLxcADIRLOkrDpLPgqd.jpg'),
(6, 'Fashion', 'http://127.0.0.1:8000/storage/mZoheg45FBIQowbE4bFRfVoYJhJt18KhJqXlmctz.jpg'),
(7, 'Girl Watches', 'http://127.0.0.1:8000/storage/rqHpXyg0DS6pbdd727c4VCXJLOmHDv7bPGimDtAQ.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category_level2`
--

CREATE TABLE `category_level2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat1_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat2_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_level2`
--

INSERT INTO `category_level2` (`id`, `cat1_name`, `cat2_name`) VALUES
(1, 'Mobile', 'I Phone'),
(2, 'Mobile', 'Oppo'),
(3, 'Mobile', 'Realme'),
(6, 'Bags', 'Women Bags'),
(7, 'Bags', 'Men Bags'),
(8, 'Watches', 'baby watches'),
(9, 'Watches', 'men watch'),
(11, 'Women Fashions', 'Salwar kameez'),
(12, 'Fashion', 'Men Fashion'),
(13, 'Fashion', 'Women Fashion');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `mobile`, `message`, `contact_date`, `contact_time`) VALUES
(1, 'fff', '01701729512', 'fffff', '09-06-23', '07:31:32pm'),
(2, 'fahima', '01701729512', 'good', '21-06-23', '08:06:05pm');

-- --------------------------------------------------------

--
-- Table structure for table `directordermodel`
--

CREATE TABLE `directordermodel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_code` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_info` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_address` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_charge` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(33) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `directordermodel`
--

INSERT INTO `directordermodel` (`id`, `invoice`, `product_name`, `product_code`, `shop_name`, `shop_code`, `product_info`, `product_quantity`, `unit_price`, `total_price`, `email`, `payment_method`, `delivery_address`, `city`, `delivery_charge`, `order_date`, `order_time`, `order_status`, `name`) VALUES
(2, 'c1686284681069', 'nfinix Hot 20 (8/128GB) Mobile', '34F-A5', 'Fahima Complex', 'c1222', 'Color: red size: 10', '03', '1678', '5034', 'r@gmail.com', 'Cash On Delivery', 'hhh', 'Dhaka', '60', '09-06-23', '10:24:41am', 'Accepted By Courier', 'rjjjjjjjjjjjj'),
(3, 'c1686284834503', 'Gigabyte 15 Inch Stylish Water Resistant Laptop Backpack', '11A3-01', 'Fahima Complex', 'c1222', 'Color: blue size: 20', '04', '678', '2712', 'r@gmail.com', 'Cash On Delivery', 'ddddddd', 'Dhaka', '60', '09-06-23', '10:27:14am', 'pending', 'robin'),
(4, 'c1686320943265', 'Indian New Stylish Exclushive Collection Weatless', 'YU-1877', 'Fahima Complex', 'c1222', 'Color: white size: 1', '01', '4345', '4345', 'r@gmail.com', 'Cash On Delivery', 'hhh', 'Khulna', '60', '09-06-23', '08:29:03pm', 'pending', 'Fahima'),
(5, 'c1686325276280', 'nfinix Hot 20 (8/128GB) Mobile', '34F-A5', 'Fahima Complex', 'c1222', 'Color: red size: 1', '10', '1678', '16780', 'r@gmail.com', 'Cash On Delivery', 'ssssssss', 'Barisal', '60', '09-06-23', '09:41:16pm', 'pending', 'fahima'),
(6, 'c1686886462024', 'nfinix Hot 20 (8/128GB) Mobile', '34F-A5', 'Fahima Complex', 'c1222', 'Color: blue size: 1', '06', '1678', '10068', 'f@gmail.com', 'Cash On Delivery', 'hjhjh', 'Barisal', '60', '16-06-23', '09:34:22am', 'pending', 'hjh'),
(7, 'c1686937974309', 'Indian New Stylish Exclushive Collection Weatless', 'YU-1877', 'Fahima Complex', 'c1222', 'Color: red size: 1', '09', '4345', '39105', 'f@gmail.com', 'Cash On Delivery', 'h', 'Chittagong', '60', '16-06-23', '11:52:54pm', 'pending', 'h'),
(8, 'c1686937974309', 'Indian New Stylish Exclushive Collection Weatless', 'YU-1877', 'Fahima Complex', 'c1222', 'Color: red size: 1', '10', '4345', '43450', 'f@gmail.com', 'Cash On Delivery', 'h', 'Chittagong', '60', '16-06-23', '11:52:54pm', 'pending', 'h'),
(9, 'c1686937974309', 'Indian New Stylish Exclushive Collection Weatless', 'YU-1877', 'Fahima Complex', 'c1222', 'Color: blue size: 1', '09', '4345', '39105', 'f@gmail.com', 'Cash On Delivery', 'h', 'Chittagong', '60', '16-06-23', '11:52:54pm', 'pending', 'h'),
(10, 'c1686937974309', 'Indian New Stylish Exclushive Collection Weatless', 'YU-1877', 'Fahima Complex', 'c1222', 'Color: white size: 1', '09', '4345', '39105', 'f@gmail.com', 'Cash On Delivery', 'h', 'Chittagong', '60', '16-06-23', '11:52:54pm', 'pending', 'h'),
(11, 'c1687188949421', 'Indian New Stylish Exclushive Collection Weatless', 'YU-1877', 'Fahima Complex', 'c1222', 'Color: blue size: 1', '10', '4345', '43450', 'f@gmail.com', 'Cash On Delivery', 'bb', 'Chittagong', '60', '19-06-23', '09:35:49pm', 'pending', 'nn'),
(12, 'c1687188949421', 'nfinix Hot 20 (8/128GB) Mobile', '34F-A5', 'Fahima Complex', 'c1222', 'Color: blue size: 1', '09', '1678', '15102', 'f@gmail.com', 'Cash On Delivery', 'bb', 'Chittagong', '60', '19-06-23', '09:35:49pm', 'pending', 'nn'),
(13, 'c1687188949421', 'nfinix Hot 20 (8/128GB) Mobile', '34F-A5', 'Fahima Complex', 'c1222', 'Color: red size: 1', '10', '1678', '16780', 'f@gmail.com', 'Cash On Delivery', 'bb', 'Chittagong', '60', '19-06-23', '09:35:49pm', 'pending', 'nn'),
(14, 'c1687268253947', 'nfinix Hot 20 (8/128GB) Mobile', '34F-A5', 'Fahima Complex', 'c1222', 'Color: red size: 1', '08', '1678', '13424', 'f@gmail.com', 'Online Payment', 'Vatu Miapur', 'Chittagong', '60', '20-06-23', '07:37:34pm', 'pending', 'Marufa'),
(15, 'c1687268670215', 'nfinix Hot 20 (8/128GB) Mobile', '34F-A5', 'Fahima Complex', 'c1222', 'Color: red size: 1', '09', '1678', '15102', 'f@gmail.com', 'Online Payment', 'gooo', 'Barisal', '60', '20-06-23', '07:44:30pm', 'pending', 'zamila'),
(16, 'c1687356020855', 'WRM10 - PU Leather Wrist Watch For Men', '56-TYU', 'Fahima Complex', 'c1222', 'Color: red size: 1', '05', '1000', '5000', 'fahimadiu@gmail.com', 'Cash On Delivery', 'Mirpur-1', 'Dhaka', '60', '21-06-23', '08:00:21pm', 'Accepted By Courier', 'fahima'),
(17, 'c1687356141876', 'nfinix Hot 20 (8/128GB) Mobile', '34F-A5', 'Fahima Complex', 'c1222', 'Color: blue size: 1', '02', '1678', '3356', 'fahimadiu@gmail.com', 'Online Payment', 'dattapara', 'Dhaka', '60', '21-06-23', '08:02:22pm', 'Delivered', 'fahima');

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
-- Table structure for table `fav_list`
--

CREATE TABLE `fav_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2020_10_25_213907_admin_table', 1),
(6, '2020_10_25_214004_visitor_table', 1),
(7, '2020_10_25_214208_home_seo_table', 1),
(8, '2020_10_26_121904_siteinfo_table', 1),
(9, '2022_09_24_181446_contact_table', 1),
(10, '2022_10_04_182629_category_level1_table', 1),
(11, '2022_10_04_182754_category_level2_table', 1),
(13, '2022_10_26_091745_slider_table', 1),
(14, '2022_11_07_040510_products_details_table', 1),
(15, '2022_11_15_122957_notification_table', 1),
(16, '2022_11_17_185905_otp_table', 1),
(17, '2022_11_18_123834_review', 1),
(18, '2022_12_07_163629_product_cart', 1),
(19, '2022_12_20_145930_fav_list', 1),
(20, '2022_12_31_092014_admin', 1),
(21, '2023_01_24_090225_product_order', 1),
(22, '2023_03_19_163900_brand', 1),
(23, '2023_03_19_170700_shop', 1),
(24, '2023_03_19_173759_sub_admin', 1),
(25, '2022_10_14_131748_product_list_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifications_date` varchar(332) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `subject`, `msg`, `notification_time`, `notifications_date`) VALUES
(1, 'ddddddddd', 'ddd', '07:41:31pm', '09-06-2023'),
(2, 'good', 'good', '08:06:52pm', '21-06-2023');

-- --------------------------------------------------------

--
-- Table structure for table `otp_table`
--

CREATE TABLE `otp_table` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_timestamp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'api', '6ba0b26a06727a9b7ac57aa88b3ad8301d09c1ec27a301083fe842371d47fb67', '[\"*\"]', '2023-06-09 09:41:21', NULL, '2023-06-07 10:46:40', '2023-06-09 09:41:21'),
(2, 'App\\Models\\User', 1, 'api', '29cb57ef6575f1819f650b41164f906460bbf9db58696247ac0e97cc3f91753a', '[\"*\"]', '2023-06-09 08:48:47', NULL, '2023-06-08 21:36:13', '2023-06-09 08:48:47'),
(3, 'App\\Models\\User', 2, 'api', 'c918064ea5d54fa987df0bb054246d47444a4d57722858799a21210b5c32cf3d', '[\"*\"]', '2023-06-17 01:58:58', NULL, '2023-06-15 21:32:52', '2023-06-17 01:58:58'),
(4, 'App\\Models\\User', 2, 'api', '3b4e226a59c6fbea6c41a0ee0bf9b0cc70135be796fbc89d0c0f7ca8aaaf904c', '[\"*\"]', '2023-06-16 03:25:54', NULL, '2023-06-16 03:25:26', '2023-06-16 03:25:54'),
(5, 'App\\Models\\User', 2, 'api', '777ebc69d79e1318feb66105586afbd897bbdbcf62aa53f6d3dfded448970d04', '[\"*\"]', '2023-06-16 03:47:31', NULL, '2023-06-16 03:47:04', '2023-06-16 03:47:31'),
(6, 'App\\Models\\User', 2, 'api', '4723ec97bd2c5537a6e04a3659c5992db2017672580c51ae3b11b1cddad50ca5', '[\"*\"]', '2023-06-16 11:51:01', NULL, '2023-06-16 11:15:50', '2023-06-16 11:51:01'),
(7, 'App\\Models\\User', 2, 'api', '4360df45e02dfcc34ec6c386424931967571d1f26bfd9a799e268fb29c0e02f8', '[\"*\"]', '2023-06-16 12:34:31', NULL, '2023-06-16 11:51:54', '2023-06-16 12:34:31'),
(8, 'App\\Models\\User', 2, 'api', 'ed87a2938d8e418ab3eecc21b2b612c402eae5cdb9825cde77ee5411fe9b3799', '[\"*\"]', '2023-06-17 10:48:33', NULL, '2023-06-17 02:03:42', '2023-06-17 10:48:33'),
(9, 'App\\Models\\User', 3, 'api', 'd7521b8309eb3bc5df18258891d47c374179c19e63992ac0ddaced1819e615f7', '[\"*\"]', '2023-06-17 04:41:38', NULL, '2023-06-17 04:39:23', '2023-06-17 04:41:38'),
(11, 'App\\Models\\User', 4, 'api', '6fd04d59b180a727530aa35101be75763cc70222a7e2c28dffe11ecc47a71254', '[\"*\"]', '2023-06-21 08:25:27', NULL, '2023-06-21 07:57:11', '2023-06-21 08:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_cart1`
--

CREATE TABLE `product_cart1` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_code` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_info` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `product_code`, `img1`, `img2`, `img3`, `img4`, `des`, `color`, `size`, `details`) VALUES
(1, '11A3-01', 'http://127.0.0.1:8000/storage/HllXi5PeTxddWn53Euckm6PbD3MFzyR6s1mziIeF.jpg', 'http://127.0.0.1:8000/storage/Y6QsoGCPRZyMOuc3M4Rpiv5yNLJUT0KgUWEnbuUy.jpg', 'http://127.0.0.1:8000/storage/nIwFSyvPtzoUrBz0C7UeTGUVTpzMPdHUgAycwXfH.jpg', 'http://127.0.0.1:8000/storage/WgEhKzPqB5i4aooJeYvhf2ALOLK5Hsj9EwtFprky.jpg', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i1.135atgSbtgSbbx\">Product details of Gigabyte 15 Inch Stylish Water Resistant Laptop Backpack</h2>', 'red,blue,black', '15,20,24', '<div class=\"pdp-mod-specification\"><h2 class=\"pdp-mod-section-title \" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.135atgSbtgSbbx\">Specifications of Gigabyte 15 Inch Stylish Water Resistant Laptop Backpack</h2><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Brand: Gigabyte</li><li class=\"\">Item Type: Laptop Backpack</li><li class=\"\">Closure Type: Zipper</li><li class=\"\">Main Material: Polyester</li><li class=\"\">Water Proof: Water Resistant</li><li class=\"\">Main Chambers: 1</li><li class=\"\">Front Pocket: 1</li><li class=\"\">External Height: 16\"</li><li class=\"\">External Length: 11\"</li><li class=\"\">External Depth: 4\"</li></ul></div><p></p><div class=\"pdp-general-features\"><ul class=\"specification-keys\"><li class=\"key-li\"><span class=\"key-title\"> Brand  </span><div class=\"html-content key-value\">My Bag</div></li><li class=\"key-li\"><span class=\"key-title\"> SKU  </span><div class=\"html-content key-value\">261820921_BD-1223629370</div></li><li class=\"key-li\"><span class=\"key-title\"> Outside Material  </span><div class=\"html-content key-value\">Polyester</div></li></ul></div><div class=\"box-content\"><span class=\"key-title\">What’s in the box</span><div class=\"html-content box-content-html\">Gigabyte 15 ইঞ্চি স্টাইলিশ পানি প্রতিরোধী ল্যাপটপ ব্যাকপ্যাক</div></div></div>'),
(2, '34F-A5', 'http://127.0.0.1:8000/storage/DQCOqzCL05FothincxDuJ0kqmSyCEcSAX4y6c2Ke.jpg', 'http://127.0.0.1:8000/storage/RYvg8jWhdsjgKzqJymvTfMvM1qrbkzDewdDQv4Nl.jpg', 'http://127.0.0.1:8000/storage/e9Rt6Sb5uiIfIKXfLAr11DxIxMyZAAP2QtHsK8zz.jpg', 'http://127.0.0.1:8000/storage/GRA7eI9uznfM6cTtyu5P9G5bLDQgWif0Rs8kVprO.jpg', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i2.b19aML9cML9cQD\">Product details of Infinix Hot 20 (8/128GB) Mobile</h2>', 'red,blue,black', '1', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i2.b19aML9cML9cQD\">Product details of Infinix Hot 20 (8/128GB) Mobile</h2><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">NO RETURN applicable if the seal is broken</li><li class=\"\">NETWORK: 4G/3G/2G</li><li class=\"\">SIM:DUAL NANO SIM</li><li class=\"\">OS: Android 12</li><li class=\"\">Display: 90HZ 6.82\" PUNCH-HOLE FLUID GAMING DISPLAY</li><li class=\"\">Processor: MediaTek Helio G85</li><li class=\"\">Main Camera: 50MP+AI LENS QUAD FLASH LIGHT</li><li class=\"\">Selfie Camera: 8MP FF DUAL FLASH LIGHT</li><li class=\"\">ROM: 128GB</li><li class=\"\">RAM: 8GB</li><li class=\"\">Battery: 5000mAh</li></ul></div>'),
(3, 'YU-1877', 'http://127.0.0.1:8000/storage/vbp9ha8Cx1IGygvuA5p6tNW9FhZImXC1pfEZKhR0.jpg', 'http://127.0.0.1:8000/storage/Fwl85G5ZzuRfLJxNY2FUxVqWVn760qJuDIH4s1nq.jpg', 'http://127.0.0.1:8000/storage/UkZY9vC1XZWQuhrlyD95nPEJbobbXdvOiQ71GmGi.jpg', 'http://127.0.0.1:8000/storage/J2MONap29yGVPoN8BHCNXDjF0br7x7sKl9ozBnW9.jpg', '<span class=\"pdp-mod-product-badge-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i0.2f09H0xJH0xJC2\">Indian\r\n New Stylish Exclushive Collection Weatless Goergett Computer Abroydary<br></span>', 'red,blue,white', '1,', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i1.2f09H0xJH0xJC2\">Product\r\n details of Indian New Stylish Exclushive Collection Weatless Goergett \r\nComputer Abroydary Work Three Piece Salower Kameez For Women - Dress For\r\n Girls - 3 Pice Dress - Three Piece</h2><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Product Type: Three Piece</li><li class=\"\">Color: Same As Picture.</li><li class=\"\">Main Material: tissue</li><li class=\"\">Clothing - Cotton</li><li class=\"\">Uorna - goergett</li><li class=\"\">Salwar -butter flay</li><li class=\"\">inner-butterflay</li><li class=\"\">Type - Unstitched</li><li class=\"\">Length - 48 inches long.</li><li class=\"\">Width - 54 inches Body.</li><li class=\"\">Product Type: Three Piece</li><li class=\"\">Color: Same As Picture.</li><li class=\"\">Main Material: tissue</li><li class=\"\">Clothing - Cotton</li><li class=\"\">Uorna - goergett</li><li class=\"\">Salwar -butter flay</li><li class=\"\">inner-butterflay</li><li class=\"\">Type - Unstitched</li><li class=\"\">Length - 48 inches long.</li><li class=\"\">Width - 54 inches Body.</li></ul></div>'),
(4, 'TH-5566', 'http://127.0.0.1:8000/storage/URkSC9mGmAPezl0UhqbUStzT86PL7IiDN4lhS2LN.jpg', 'http://127.0.0.1:8000/storage/2P4K5SipzAWRvwLjLXmUijjhGaVDMQeimO92wYta.jpg', 'http://127.0.0.1:8000/storage/n99r1ENUlLCQCtu14QuXQxBIHPZLQu0xJk43327S.jpg', 'http://127.0.0.1:8000/storage/Sjf85oKyaGp57Q0wiRLlbJ7T3KX7w7q2wpNtcgX2.jpg', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i3.2e4azSVhzSVhpd\">Three Piece- Weightless Georgette </h2>', 'red,blue,white', '1', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i3.2e4azSVhzSVhpd\">Product\r\n details of Three Piece- Weightless Georgette Heavy Soft Semi Stitched \r\nBest Quality Embroidery Work Dress Salwar Kameez For Girl And Women.</h2><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Product Type: Salwar Kameez</li><li class=\"\">Color: Same as Picture</li><li class=\"\">Gender: Women</li><li class=\"\">Rich Fabric</li><li class=\"\">Designed According to Latest Patterns</li></ul></div>'),
(5, '56-TYU', 'http://127.0.0.1:8000/storage/RSJvIAyaayJxQmlVF2XZlEGBdvVbfjwGcZnOnIRg.jpg', 'http://127.0.0.1:8000/storage/LRVJgPEnyHM8GC2opPQp9Ldw56FQxBJ1UPIOeGQS.jpg', 'http://127.0.0.1:8000/storage/EPUwrSd0wGYFCTKRIpo7PqWQwttLgqZmFuLMBaXc.jpg', 'http://127.0.0.1:8000/storage/QFtNWM5dfGQkSto9glVEk9ByZRNW6AcMO235G8JV.jpg', '<span class=\"pdp-mod-product-badge-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i0.4106HfQNHfQN2p\">WRM10 - PU Leather Wrist Watch For Men</span>', 'red', '1', '<h2 class=\"pdp-mod-section-title outer-title\" data-spm-anchor-id=\"a2a0e.pdp.0.i1.4106HfQNHfQN2p\">Product details of WRM10 - PU Leather Wrist Watch For Men</h2><div class=\"html-content pdp-product-highlights\"><ul class=\"\"><li class=\"\">Product Type: Analog Watch</li><li class=\"\">Color: Brown</li><li class=\"\">Gender: Men</li><li class=\"\">Main Material: Leather</li><li class=\"\">ProductType: Analog Watch</li><li class=\"\">Gender: Men</li><li class=\"\">Dial color: Blue</li><li class=\"\">Date View : Yes</li><li class=\"\">Band Material</li><li class=\"\">Type: PU Leather</li><li class=\"\">Case Material: Stainless Steel</li><li class=\"\">Case Shape: Round</li><li class=\"\">Band Size: Men’sStandard</li><li class=\"\">Display Type: Analog</li></ul></div>');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `title`, `price`, `shop_name`, `special_price`, `image`, `category`, `subcategory`, `remark`, `brand`, `product_code`, `star`, `stock`) VALUES
(2, 'Gigabyte 15 Inch Stylish Water', '787', 'Marufa Shop', '678', 'http://127.0.0.1:8000/storage/RppTM7YspSB5iu3LcMGsSCnEBZfrwZNav6ibZp4k.jpg', 'Bags', 'Men Bags', 'COLLECTION', 'Arong', '11A3-01', 3, 'Yes'),
(3, 'nfinix Hot 20 (8/128GB) Mobile', '17689', 'Electrical Complex', '1678', 'http://127.0.0.1:8000/storage/mtvQvRY9iygKZPxvhvYtpqcVodVaZaCqWHOEAJXp.jpg', 'Mobile', 'Realme', 'FEATURED', 'Oppo', '34F-A5', 4, 'Yes'),
(4, 'Indian New Stylish Exclushive Collection Weatless', '7833', 'Marufa Shop', '4345', 'http://127.0.0.1:8000/storage/6sMazDb63j08hFJtcfS9x9lVxstHsfDzbi7Vl0uh.jpg', 'Women Fashions', 'Salwar kameez', 'FEATURED', 'Arong', 'YU-1877', 5, 'Yes'),
(5, 'Three Piece- Weightless Georgette Heavy Soft', '672', 'Marufa Shop', '456', 'http://127.0.0.1:8000/storage/eyQgxmWOU9pgreEhFroM3lqMfweN1QefCGUb5xEQ.jpg', 'Women Fashions', 'Salwar kameez', 'COLLECTION', 'Arong', 'TH-5566', 5, 'Yes'),
(6, 'WRM10 - PU Leather Wrist Watch For Men', '1234', 'Electrical Complex', '1000', 'http://127.0.0.1:8000/storage/uSpDEMNaqMqxenIjdqzpicyMbejtn8gWNQN8DJFZ.jpg', 'Fashion', 'Men Fashion', 'COLLECTION', 'Quartz', '56-TYU', 2, 'Yes'),
(7, 'Gigabyte 15 Inch Stylish Water', '787', 'Marufa Shop', '678', 'http://127.0.0.1:8000/storage/RppTM7YspSB5iu3LcMGsSCnEBZfrwZNav6ibZp4k.jpg', 'Bags', 'Men Bags', 'COLLECTION', 'Arong', '11A3-01', 3, 'Yes'),
(8, 'Gigabyte 15 Inch Stylish Water', '787', 'Marufa Shop', '678', 'http://127.0.0.1:8000/storage/RppTM7YspSB5iu3LcMGsSCnEBZfrwZNav6ibZp4k.jpg', 'Bags', 'Men Bags', 'COLLECTION', 'Arong', '11A3-01', 3, 'Yes'),
(9, 'nfinix Hot 20 (8/128GB) Mobile', '17689', 'Electrical Complex', '1678', 'http://127.0.0.1:8000/storage/mtvQvRY9iygKZPxvhvYtpqcVodVaZaCqWHOEAJXp.jpg', 'Mobile', 'Realme', 'FEATURED', 'Oppo', '34F-A5', 4, 'Yes'),
(10, 'Indian New Stylish Exclushive Collection Weatless', '7833', 'Marufa Shop', '4345', 'http://127.0.0.1:8000/storage/6sMazDb63j08hFJtcfS9x9lVxstHsfDzbi7Vl0uh.jpg', 'Women Fashions', 'Salwar kameez', 'FEATURED', 'Arong', 'YU-1877', 5, 'Yes'),
(11, 'Three Piece- Weightless Georgette Heavy Soft', '672', 'Marufa Shop', '456', 'http://127.0.0.1:8000/storage/eyQgxmWOU9pgreEhFroM3lqMfweN1QefCGUb5xEQ.jpg', 'Women Fashions', 'Salwar kameez', 'COLLECTION', 'Arong', 'TH-5566', 5, 'Yes'),
(12, 'WRM10 - PU Leather Wrist Watch For Men', '1234', 'Electrical Complex', '1000', 'http://127.0.0.1:8000/storage/uSpDEMNaqMqxenIjdqzpicyMbejtn8gWNQN8DJFZ.jpg', 'Fashion', 'Men Fashion', 'COLLECTION', 'Quartz', '56-TYU', 2, 'Yes'),
(13, 'Gigabyte 15 Inch Stylish Water', '787', 'Marufa Shop', '678', 'http://127.0.0.1:8000/storage/RppTM7YspSB5iu3LcMGsSCnEBZfrwZNav6ibZp4k.jpg', 'Bags', 'Men Bags', 'COLLECTION', 'Arong', '11A3-01', 3, 'Yes'),
(14, 'Gigabyte 15 Inch Stylish Water', '787', 'Marufa Shop', '678', 'http://127.0.0.1:8000/storage/RppTM7YspSB5iu3LcMGsSCnEBZfrwZNav6ibZp4k.jpg', 'Bags', 'Men Bags', 'COLLECTION', 'Arong', '11A3-01', 3, 'Yes'),
(15, 'nfinix Hot 20 (8/128GB) Mobile', '17689', 'Electrical Complex', '1678', 'http://127.0.0.1:8000/storage/mtvQvRY9iygKZPxvhvYtpqcVodVaZaCqWHOEAJXp.jpg', 'Mobile', 'Realme', 'FEATURED', 'Oppo', '34F-A5', 4, 'Yes'),
(16, 'Indian New Stylish Exclushive Collection Weatless', '7833', 'Marufa Shop', '4345', 'http://127.0.0.1:8000/storage/6sMazDb63j08hFJtcfS9x9lVxstHsfDzbi7Vl0uh.jpg', 'Women Fashions', 'Salwar kameez', 'FEATURED', 'Arong', 'YU-1877', 5, 'Yes'),
(17, 'Three Piece- Weightless Georgette Heavy Soft', '672', 'Marufa Shop', '456', 'http://127.0.0.1:8000/storage/eyQgxmWOU9pgreEhFroM3lqMfweN1QefCGUb5xEQ.jpg', 'Women Fashions', 'Salwar kameez', 'COLLECTION', 'Arong', 'TH-5566', 5, 'Yes'),
(18, 'WRM10 - PU Leather Wrist Watch For Men', '1234', 'Electrical Complex', '1000', 'http://127.0.0.1:8000/storage/uSpDEMNaqMqxenIjdqzpicyMbejtn8gWNQN8DJFZ.jpg', 'Fashion', 'Men Fashion', 'COLLECTION', 'Quartz', '56-TYU', 2, 'Yes'),
(19, 'Gigabyte 15 Inch Stylish Water', '787', 'Marufa Shop', '678', 'http://127.0.0.1:8000/storage/RppTM7YspSB5iu3LcMGsSCnEBZfrwZNav6ibZp4k.jpg', 'Bags', 'Men Bags', 'COLLECTION', 'Arong', '11A3-01', 3, 'Yes'),
(20, 'Gigabyte 15 Inch Stylish Water', '787', 'Marufa Shop', '678', 'http://127.0.0.1:8000/storage/RppTM7YspSB5iu3LcMGsSCnEBZfrwZNav6ibZp4k.jpg', 'Bags', 'Men Bags', 'COLLECTION', 'Arong', '11A3-01', 3, 'Yes'),
(21, 'nfinix Hot 20 (8/128GB) Mobile', '17689', 'Electrical Complex', '1678', 'http://127.0.0.1:8000/storage/mtvQvRY9iygKZPxvhvYtpqcVodVaZaCqWHOEAJXp.jpg', 'Mobile', 'Realme', 'FEATURED', 'Oppo', '34F-A5', 4, 'Yes'),
(22, 'Indian New Stylish Exclushive Collection Weatless', '7833', 'Marufa Shop', '4345', 'http://127.0.0.1:8000/storage/6sMazDb63j08hFJtcfS9x9lVxstHsfDzbi7Vl0uh.jpg', 'Women Fashions', 'Salwar kameez', 'FEATURED', 'Arong', 'YU-1877', 5, 'Yes'),
(23, 'Three Piece- Weightless Georgette Heavy Soft', '672', 'Marufa Shop', '456', 'http://127.0.0.1:8000/storage/eyQgxmWOU9pgreEhFroM3lqMfweN1QefCGUb5xEQ.jpg', 'Women Fashions', 'Salwar kameez', 'COLLECTION', 'Arong', 'TH-5566', 5, 'Yes'),
(24, 'WRM10 - PU Leather Wrist Watch For Men', '1234', 'Electrical Complex', '1000', 'http://127.0.0.1:8000/storage/uSpDEMNaqMqxenIjdqzpicyMbejtn8gWNQN8DJFZ.jpg', 'Fashion', 'Men Fashion', 'COLLECTION', 'Quartz', '56-TYU', 2, 'Yes'),
(25, 'Gigabyte 15 Inch Stylish Water', '787', 'Marufa Shop', '678', 'http://127.0.0.1:8000/storage/RppTM7YspSB5iu3LcMGsSCnEBZfrwZNav6ibZp4k.jpg', 'Bags', 'Men Bags', 'COLLECTION', 'Arong', '11A3-01', 3, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_code` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_photo` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reviewer_name` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_rating` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewer_comments` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`id`, `product_code`, `product_name`, `mobile`, `reviewer_photo`, `reviewer_name`, `reviewer_rating`, `reviewer_comments`) VALUES
(1, '34F-A5', 'nfinix Hot 20 (8/128GB) Mobile', 'r@gmail.com', NULL, 'fahima', '2', 'good'),
(2, 'YU-1877', 'Indian New Stylish Exclushive Collection Weatless', 'f@gmail.com', NULL, 'd', '4', 'dd');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_logo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_owner` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `shop_logo`, `shop_code`, `shop_name`, `shop_address`, `shop_owner`, `shop_category`, `shop_username`, `shop_mobile`, `shop_email`, `shop_password`, `shop_status`) VALUES
(1, 'http://127.0.0.1:8000/storage/NZbVDSZogtzIdDXUPTqeqYpNWb9vnqdTEBsfvcyZ.jpg', 'DIU190', 'Daily Shop', 'Uttara Sector-14', 'Fahima', 'Watches', 'fahima', '01701729512', 'fahima@gmail.com', '12345678', '1'),
(2, 'http://127.0.0.1:8000/storage/70swg9mXX13i7hd4NqXiSXHFJDkRuTqbIzP4odkY.jpg', 'ER10878', 'Marufa Shop', 'Ashuliya Savar Dhaka', 'Marufa', 'Bags', 'fahima', '01701729512', 'marufa@gmail.com', '12345678', '1'),
(3, 'http://127.0.0.1:8000/storage/q98aAy5Su7Ik4vW7kxLFmsahfgOn7KR9vGX4uEPa.jpg', 'TY565', 'Electrical Complex', 'Mirpur-1 Dhaka', 'Fahima', 'Mobile', 'fahima', '01701729512', 'fahoma@gmail.com', '12345678', '1');

-- --------------------------------------------------------

--
-- Table structure for table `siteinfo`
--

CREATE TABLE `siteinfo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ploicy` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_guide` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `about_company` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `android_app_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ios_app_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_notice` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `siteinfo`
--

INSERT INTO `siteinfo` (`id`, `about`, `terms`, `ploicy`, `purchase_guide`, `about_company`, `address`, `android_app_link`, `ios_app_link`, `facebook_link`, `twitter_link`, `instagram_link`, `delivery_notice`) VALUES
(1, '<div class=\"drz-footer-about\">\r\n        \r\n          <p class=\"particle\" data-spm-anchor-id=\"a2a0e.home.footer_mid.i0.3f6012f7I59Hp7\">Online\r\n Shopping BD has never been easier. Dream.com.bd is best online shopping\r\n store in Bangladesh that features 10+ million products at affordable \r\nprices. As bangaldesh\'s online shopping landscape is expanding every \r\nyear, online shopping in dhaka, chittagong, khulna, sylhet and other big\r\n cities are also gaining momentum. Dream is among best websites for \r\nonline shopping in bangladesh that promises fast, reliable and \r\nconvenient delivery of products to your doorstep. Dream being the \r\ntrusted online shop in Bangladesh aims to provide a trouble-free \r\nshopping experience for the people of Bangladesh but is also providing \r\nample opportunity for international online shopping from Bangladesh. \r\nDream aims to make online shopping accessible to all parts of the \r\ncountry.</p>\r\n        \r\n      </div>', '<div class=\"drz-footer-about\">\r\n        \r\n          <p class=\"particle\" data-spm-anchor-id=\"a2a0e.home.footer_mid.i0.3f6012f7I59Hp7\">Online\r\n Shopping BD has never been easier. Dream.com.bd is best online shopping\r\n store in Bangladesh that features 10+ million products at affordable \r\nprices. As bangaldesh\'s online shopping landscape is expanding every \r\nyear, online shopping in dhaka, chittagong, khulna, sylhet and other big\r\n cities are also gaining momentum. Dream is among best websites for \r\nonline shopping in bangladesh that promises fast, reliable and \r\nconvenient delivery of products to your doorstep. Dream being the \r\ntrusted online shop in Bangladesh aims to provide a trouble-free \r\nshopping experience for the people of Bangladesh but is also providing \r\nample opportunity for international online shopping from Bangladesh. \r\nDream aims to make online shopping accessible to all parts of the \r\ncountry.</p>\r\n        \r\n      </div>', '<div class=\"drz-footer-about\">\r\n        \r\n          <p class=\"particle\" data-spm-anchor-id=\"a2a0e.home.footer_mid.i0.3f6012f7I59Hp7\">Online\r\n Shopping BD has never been easier. Dream.com.bd is best online shopping\r\n store in Bangladesh that features 10+ million products at affordable \r\nprices. As bangaldesh\'s online shopping landscape is expanding every \r\nyear, online shopping in dhaka, chittagong, khulna, sylhet and other big\r\n cities are also gaining momentum. Dream is among best websites for \r\nonline shopping in bangladesh that promises fast, reliable and \r\nconvenient delivery of products to your doorstep. Dream being the \r\ntrusted online shop in Bangladesh aims to provide a trouble-free \r\nshopping experience for the people of Bangladesh but is also providing \r\nample opportunity for international online shopping from Bangladesh. \r\nDream aims to make online shopping accessible to all parts of the \r\ncountry.</p>\r\n        \r\n      </div>', 'fihima.com', '<div class=\"drz-footer-about\">\r\n        \r\n          <p class=\"particle\" data-spm-anchor-id=\"a2a0e.home.footer_mid.i0.3f6012f7I59Hp7\">Online\r\n Shopping BD has never been easier. Dream.com.bd is best online shopping\r\n store in Bangladesh that features 10+ million products at affordable \r\nprices. As bangaldesh\'s online shopping landscape is expanding every \r\nyear, online shopping in dhaka, chittagong, khulna, sylhet and other big\r\n cities are also gaining momentum. Dream is among best websites for \r\nonline shopping in bangladesh that promises fast, reliable and \r\nconvenient delivery of products to your doorstep. Dream being the \r\ntrusted online shop in Bangladesh aims to provide a trouble-free \r\nshopping experience for the people of Bangladesh but is also providing \r\nample opportunity for international online shopping from Bangladesh. \r\nDream aims to make online shopping accessible to all parts of the \r\ncountry.</p>\r\n        \r\n      </div>', 'Ashuliya savar , Dhaka<br>', 'facebook.com', 'facebook.com', 'facebook.com', 'facebook.com', 'facebook.com', 'Fahima');

-- --------------------------------------------------------

--
-- Table structure for table `site_seo`
--

CREATE TABLE `site_seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_des` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_sitename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `og_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `slider_table`
--

CREATE TABLE `slider_table` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bg_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider_table`
--

INSERT INTO `slider_table` (`id`, `text_color`, `bg_color`, `image`, `title`, `sub_title`, `product_code`) VALUES
(5, '#ffffff', '#000000', 'http://127.0.0.1:8000/storage/NxFk2sQGYEOSisgjX3VQmORCXusryG4XlaoZdjSz.png', 'badgeInfinix Hot 20i(6/128GB)', 'Best Mobile For You', '34F-A5');

-- --------------------------------------------------------

--
-- Table structure for table `sub_admin`
--

CREATE TABLE `sub_admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_admin`
--

INSERT INTO `sub_admin` (`id`, `name`, `email`, `mobile`, `username`, `password`) VALUES
(1, 'fahima', 'fa@gmail.com', '01701729512', 'fahima', '12345678'),
(2, 'marufa', 'ma@gmail.com', '01701729512', 'marufa', '12345678');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rjjjjjjjjjjjj', 'r@gmail.com', NULL, '$2y$10$kMQ3sX7y0oVwey.Xw0l4S.jhAWMkbLQ/ai7BK5HbuE5BffKay0qlS', NULL, '2023-06-07 10:46:22', '2023-06-07 10:46:22'),
(2, 'fahima', 'f@gmail.com', NULL, '$2y$10$KipmSQQGZDByaymKDOKppeqauwB63Ck.BrS9Fkchk.ykU0ChyTh0C', NULL, '2023-06-15 21:32:29', '2023-06-15 21:32:29'),
(3, 'Rafiul Islam', 'rafiul15-22654@diu.edu.bd', NULL, '$2y$10$pfo4QIrsyS1Ey0lw6MhrburGuinV16qMGIn/aoBnV4GGLFC4P4Z56', NULL, '2023-06-17 04:38:41', '2023-06-17 04:38:41'),
(4, 'fahima', 'fahimadiu@gmail.com', NULL, '$2y$10$Ynle9EwxiD8hm3qaEqPUbexZUyNf2MnKM0HznP7jsNYC6etM/QB9S', NULL, '2023-06-21 07:56:48', '2023-06-21 07:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `ip_address`, `visit_time`, `visit_date`) VALUES
(1, '127.0.0.1', '07:55:53pm', '04-06-23'),
(2, '127.0.0.1', '07:55:55pm', '04-06-23'),
(3, '127.0.0.1', '07:56:25pm', '04-06-23'),
(4, '127.0.0.1', '07:56:27pm', '04-06-23'),
(5, '127.0.0.1', '07:56:30pm', '04-06-23'),
(6, '127.0.0.1', '07:56:32pm', '04-06-23'),
(7, '127.0.0.1', '08:53:08pm', '07-06-23'),
(8, '127.0.0.1', '08:53:12pm', '07-06-23'),
(9, '127.0.0.1', '08:54:08pm', '07-06-23'),
(10, '127.0.0.1', '08:54:10pm', '07-06-23'),
(11, '127.0.0.1', '08:54:18pm', '07-06-23'),
(12, '127.0.0.1', '08:54:21pm', '07-06-23'),
(13, '127.0.0.1', '08:55:48pm', '07-06-23'),
(14, '127.0.0.1', '08:55:48pm', '07-06-23'),
(15, '127.0.0.1', '09:04:03pm', '07-06-23'),
(16, '127.0.0.1', '09:04:06pm', '07-06-23'),
(17, '127.0.0.1', '09:06:36pm', '07-06-23'),
(18, '127.0.0.1', '09:06:38pm', '07-06-23'),
(19, '127.0.0.1', '09:15:04pm', '07-06-23'),
(20, '127.0.0.1', '09:15:07pm', '07-06-23'),
(21, '127.0.0.1', '09:21:53pm', '07-06-23'),
(22, '127.0.0.1', '09:21:56pm', '07-06-23'),
(23, '127.0.0.1', '09:22:10pm', '07-06-23'),
(24, '127.0.0.1', '09:22:12pm', '07-06-23'),
(25, '127.0.0.1', '09:23:12pm', '07-06-23'),
(26, '127.0.0.1', '09:23:14pm', '07-06-23'),
(27, '127.0.0.1', '09:23:16pm', '07-06-23'),
(28, '127.0.0.1', '09:23:18pm', '07-06-23'),
(29, '127.0.0.1', '09:23:20pm', '07-06-23'),
(30, '127.0.0.1', '09:23:22pm', '07-06-23'),
(31, '127.0.0.1', '09:26:05pm', '07-06-23'),
(32, '127.0.0.1', '09:26:09pm', '07-06-23'),
(33, '127.0.0.1', '09:26:15pm', '07-06-23'),
(34, '127.0.0.1', '09:26:18pm', '07-06-23'),
(35, '127.0.0.1', '09:32:04pm', '07-06-23'),
(36, '127.0.0.1', '09:32:06pm', '07-06-23'),
(37, '127.0.0.1', '09:33:02pm', '07-06-23'),
(38, '127.0.0.1', '09:33:05pm', '07-06-23'),
(39, '127.0.0.1', '09:33:09pm', '07-06-23'),
(40, '127.0.0.1', '09:33:16pm', '07-06-23'),
(41, '127.0.0.1', '09:33:20pm', '07-06-23'),
(42, '127.0.0.1', '09:34:43pm', '07-06-23'),
(43, '127.0.0.1', '09:34:46pm', '07-06-23'),
(44, '127.0.0.1', '09:39:43pm', '07-06-23'),
(45, '127.0.0.1', '09:39:48pm', '07-06-23'),
(46, '127.0.0.1', '09:39:56pm', '07-06-23'),
(47, '127.0.0.1', '09:40:00pm', '07-06-23'),
(48, '127.0.0.1', '09:40:47pm', '07-06-23'),
(49, '127.0.0.1', '09:40:50pm', '07-06-23'),
(50, '127.0.0.1', '09:44:07pm', '07-06-23'),
(51, '127.0.0.1', '09:44:09pm', '07-06-23'),
(52, '127.0.0.1', '09:45:54pm', '07-06-23'),
(53, '127.0.0.1', '09:45:56pm', '07-06-23'),
(54, '127.0.0.1', '09:48:59pm', '07-06-23'),
(55, '127.0.0.1', '09:49:02pm', '07-06-23'),
(56, '127.0.0.1', '09:49:44pm', '07-06-23'),
(57, '127.0.0.1', '09:49:46pm', '07-06-23'),
(58, '127.0.0.1', '09:50:50pm', '07-06-23'),
(59, '127.0.0.1', '09:50:52pm', '07-06-23'),
(60, '127.0.0.1', '09:58:12pm', '07-06-23'),
(61, '127.0.0.1', '09:58:15pm', '07-06-23'),
(62, '127.0.0.1', '10:02:36pm', '07-06-23'),
(63, '127.0.0.1', '10:02:39pm', '07-06-23'),
(64, '127.0.0.1', '10:05:18pm', '07-06-23'),
(65, '127.0.0.1', '10:05:22pm', '07-06-23'),
(66, '127.0.0.1', '10:05:32pm', '07-06-23'),
(67, '127.0.0.1', '10:05:34pm', '07-06-23'),
(68, '127.0.0.1', '10:06:07pm', '07-06-23'),
(69, '127.0.0.1', '10:06:10pm', '07-06-23'),
(70, '127.0.0.1', '10:17:23pm', '07-06-23'),
(71, '127.0.0.1', '10:17:26pm', '07-06-23'),
(72, '127.0.0.1', '10:17:32pm', '07-06-23'),
(73, '127.0.0.1', '10:17:35pm', '07-06-23'),
(74, '127.0.0.1', '10:17:40pm', '07-06-23'),
(75, '127.0.0.1', '10:17:43pm', '07-06-23'),
(76, '127.0.0.1', '10:19:38pm', '07-06-23'),
(77, '127.0.0.1', '10:19:41pm', '07-06-23'),
(78, '127.0.0.1', '10:25:11pm', '07-06-23'),
(79, '127.0.0.1', '10:25:12pm', '07-06-23'),
(80, '127.0.0.1', '10:25:25pm', '07-06-23'),
(81, '127.0.0.1', '10:25:26pm', '07-06-23'),
(82, '127.0.0.1', '10:26:16pm', '07-06-23'),
(83, '127.0.0.1', '10:26:21pm', '07-06-23'),
(84, '127.0.0.1', '10:26:24pm', '07-06-23'),
(85, '127.0.0.1', '10:26:29pm', '07-06-23'),
(86, '127.0.0.1', '10:27:07pm', '07-06-23'),
(87, '127.0.0.1', '10:27:09pm', '07-06-23'),
(88, '127.0.0.1', '10:27:10pm', '07-06-23'),
(89, '127.0.0.1', '10:27:12pm', '07-06-23'),
(90, '127.0.0.1', '10:27:50pm', '07-06-23'),
(91, '127.0.0.1', '10:27:53pm', '07-06-23'),
(92, '127.0.0.1', '10:28:35pm', '07-06-23'),
(93, '127.0.0.1', '10:28:37pm', '07-06-23'),
(94, '127.0.0.1', '10:28:56pm', '07-06-23'),
(95, '127.0.0.1', '10:28:58pm', '07-06-23'),
(96, '127.0.0.1', '10:36:37pm', '07-06-23'),
(97, '127.0.0.1', '10:36:39pm', '07-06-23'),
(98, '127.0.0.1', '10:38:18pm', '07-06-23'),
(99, '127.0.0.1', '10:38:22pm', '07-06-23'),
(100, '127.0.0.1', '10:41:49pm', '07-06-23'),
(101, '127.0.0.1', '10:41:51pm', '07-06-23'),
(102, '127.0.0.1', '10:44:36pm', '07-06-23'),
(103, '127.0.0.1', '10:44:38pm', '07-06-23'),
(104, '127.0.0.1', '10:46:42pm', '07-06-23'),
(105, '127.0.0.1', '10:46:44pm', '07-06-23'),
(106, '127.0.0.1', '10:47:35pm', '07-06-23'),
(107, '127.0.0.1', '10:47:36pm', '07-06-23'),
(108, '127.0.0.1', '10:47:40pm', '07-06-23'),
(109, '127.0.0.1', '10:47:40pm', '07-06-23'),
(110, '127.0.0.1', '10:52:02pm', '07-06-23'),
(111, '127.0.0.1', '10:52:05pm', '07-06-23'),
(112, '127.0.0.1', '11:08:26pm', '07-06-23'),
(113, '127.0.0.1', '11:08:30pm', '07-06-23'),
(114, '127.0.0.1', '11:09:09pm', '07-06-23'),
(115, '127.0.0.1', '11:09:12pm', '07-06-23'),
(116, '127.0.0.1', '11:12:26pm', '07-06-23'),
(117, '127.0.0.1', '11:12:28pm', '07-06-23'),
(118, '127.0.0.1', '11:14:05pm', '07-06-23'),
(119, '127.0.0.1', '11:14:08pm', '07-06-23'),
(120, '127.0.0.1', '11:19:26pm', '07-06-23'),
(121, '127.0.0.1', '11:19:29pm', '07-06-23'),
(122, '127.0.0.1', '11:22:50pm', '07-06-23'),
(123, '127.0.0.1', '11:22:53pm', '07-06-23'),
(124, '127.0.0.1', '11:23:21pm', '07-06-23'),
(125, '127.0.0.1', '11:23:24pm', '07-06-23'),
(126, '127.0.0.1', '09:17:17pm', '08-06-23'),
(127, '127.0.0.1', '09:17:19pm', '08-06-23'),
(128, '127.0.0.1', '09:18:55pm', '08-06-23'),
(129, '127.0.0.1', '09:18:59pm', '08-06-23'),
(130, '127.0.0.1', '09:19:23pm', '08-06-23'),
(131, '127.0.0.1', '09:19:26pm', '08-06-23'),
(132, '127.0.0.1', '09:20:47pm', '08-06-23'),
(133, '127.0.0.1', '09:20:53pm', '08-06-23'),
(134, '127.0.0.1', '09:20:59pm', '08-06-23'),
(135, '127.0.0.1', '09:21:03pm', '08-06-23'),
(136, '127.0.0.1', '09:24:15pm', '08-06-23'),
(137, '127.0.0.1', '09:24:18pm', '08-06-23'),
(138, '127.0.0.1', '09:24:33pm', '08-06-23'),
(139, '127.0.0.1', '09:24:54pm', '08-06-23'),
(140, '127.0.0.1', '09:27:59pm', '08-06-23'),
(141, '127.0.0.1', '09:28:03pm', '08-06-23'),
(142, '127.0.0.1', '09:28:28pm', '08-06-23'),
(143, '127.0.0.1', '09:28:32pm', '08-06-23'),
(144, '127.0.0.1', '09:34:43pm', '08-06-23'),
(145, '127.0.0.1', '09:34:46pm', '08-06-23'),
(146, '127.0.0.1', '09:37:16pm', '08-06-23'),
(147, '127.0.0.1', '09:37:19pm', '08-06-23'),
(148, '127.0.0.1', '09:51:31pm', '08-06-23'),
(149, '127.0.0.1', '09:51:35pm', '08-06-23'),
(150, '127.0.0.1', '09:53:51pm', '08-06-23'),
(151, '127.0.0.1', '09:53:54pm', '08-06-23'),
(152, '127.0.0.1', '10:15:58pm', '08-06-23'),
(153, '127.0.0.1', '10:16:00pm', '08-06-23'),
(154, '127.0.0.1', '10:16:10pm', '08-06-23'),
(155, '127.0.0.1', '10:16:13pm', '08-06-23'),
(156, '127.0.0.1', '10:16:30pm', '08-06-23'),
(157, '127.0.0.1', '10:16:32pm', '08-06-23'),
(158, '127.0.0.1', '10:17:18pm', '08-06-23'),
(159, '127.0.0.1', '10:17:21pm', '08-06-23'),
(160, '127.0.0.1', '10:17:28pm', '08-06-23'),
(161, '127.0.0.1', '10:17:32pm', '08-06-23'),
(162, '127.0.0.1', '10:17:57pm', '08-06-23'),
(163, '127.0.0.1', '10:17:59pm', '08-06-23'),
(164, '127.0.0.1', '10:22:29pm', '08-06-23'),
(165, '127.0.0.1', '10:22:32pm', '08-06-23'),
(166, '127.0.0.1', '09:32:06am', '09-06-23'),
(167, '127.0.0.1', '09:32:08am', '09-06-23'),
(168, '127.0.0.1', '09:36:15am', '09-06-23'),
(169, '127.0.0.1', '09:36:17am', '09-06-23'),
(170, '127.0.0.1', '09:36:48am', '09-06-23'),
(171, '127.0.0.1', '09:36:50am', '09-06-23'),
(172, '127.0.0.1', '09:36:52am', '09-06-23'),
(173, '127.0.0.1', '09:36:54am', '09-06-23'),
(174, '127.0.0.1', '10:23:58am', '09-06-23'),
(175, '127.0.0.1', '10:24:01am', '09-06-23'),
(176, '127.0.0.1', '10:26:35am', '09-06-23'),
(177, '127.0.0.1', '10:26:38am', '09-06-23'),
(178, '127.0.0.1', '10:33:21am', '09-06-23'),
(179, '127.0.0.1', '10:33:24am', '09-06-23'),
(180, '127.0.0.1', '10:44:59am', '09-06-23'),
(181, '127.0.0.1', '10:45:01am', '09-06-23'),
(182, '127.0.0.1', '10:46:58am', '09-06-23'),
(183, '127.0.0.1', '10:47:01am', '09-06-23'),
(184, '127.0.0.1', '10:47:49am', '09-06-23'),
(185, '127.0.0.1', '10:47:52am', '09-06-23'),
(186, '127.0.0.1', '10:47:56am', '09-06-23'),
(187, '127.0.0.1', '10:47:58am', '09-06-23'),
(188, '127.0.0.1', '10:49:22am', '09-06-23'),
(189, '127.0.0.1', '10:49:25am', '09-06-23'),
(190, '127.0.0.1', '10:55:41am', '09-06-23'),
(191, '127.0.0.1', '10:55:46am', '09-06-23'),
(192, '127.0.0.1', '10:56:25am', '09-06-23'),
(193, '127.0.0.1', '10:56:27am', '09-06-23'),
(194, '127.0.0.1', '10:58:56am', '09-06-23'),
(195, '127.0.0.1', '10:58:57am', '09-06-23'),
(196, '127.0.0.1', '11:01:26am', '09-06-23'),
(197, '127.0.0.1', '11:01:28am', '09-06-23'),
(198, '127.0.0.1', '11:03:43am', '09-06-23'),
(199, '127.0.0.1', '11:03:45am', '09-06-23'),
(200, '127.0.0.1', '11:04:19am', '09-06-23'),
(201, '127.0.0.1', '11:04:21am', '09-06-23'),
(202, '127.0.0.1', '06:38:09pm', '09-06-23'),
(203, '127.0.0.1', '06:38:11pm', '09-06-23'),
(204, '127.0.0.1', '06:40:16pm', '09-06-23'),
(205, '127.0.0.1', '06:40:18pm', '09-06-23'),
(206, '127.0.0.1', '06:44:34pm', '09-06-23'),
(207, '127.0.0.1', '06:44:38pm', '09-06-23'),
(208, '127.0.0.1', '06:45:32pm', '09-06-23'),
(209, '127.0.0.1', '06:45:35pm', '09-06-23'),
(210, '127.0.0.1', '06:47:31pm', '09-06-23'),
(211, '127.0.0.1', '06:47:33pm', '09-06-23'),
(212, '127.0.0.1', '06:59:16pm', '09-06-23'),
(213, '127.0.0.1', '06:59:18pm', '09-06-23'),
(214, '127.0.0.1', '07:02:24pm', '09-06-23'),
(215, '127.0.0.1', '07:02:26pm', '09-06-23'),
(216, '127.0.0.1', '07:15:42pm', '09-06-23'),
(217, '127.0.0.1', '07:15:44pm', '09-06-23'),
(218, '127.0.0.1', '07:15:56pm', '09-06-23'),
(219, '127.0.0.1', '07:15:57pm', '09-06-23'),
(220, '127.0.0.1', '07:20:56pm', '09-06-23'),
(221, '127.0.0.1', '07:20:59pm', '09-06-23'),
(222, '127.0.0.1', '07:22:00pm', '09-06-23'),
(223, '127.0.0.1', '07:22:02pm', '09-06-23'),
(224, '127.0.0.1', '07:25:44pm', '09-06-23'),
(225, '127.0.0.1', '07:25:46pm', '09-06-23'),
(226, '127.0.0.1', '07:26:56pm', '09-06-23'),
(227, '127.0.0.1', '07:26:58pm', '09-06-23'),
(228, '127.0.0.1', '07:27:11pm', '09-06-23'),
(229, '127.0.0.1', '07:27:13pm', '09-06-23'),
(230, '127.0.0.1', '07:27:29pm', '09-06-23'),
(231, '127.0.0.1', '07:27:30pm', '09-06-23'),
(232, '127.0.0.1', '07:28:40pm', '09-06-23'),
(233, '127.0.0.1', '07:28:42pm', '09-06-23'),
(234, '127.0.0.1', '07:28:53pm', '09-06-23'),
(235, '127.0.0.1', '07:28:54pm', '09-06-23'),
(236, '127.0.0.1', '07:29:40pm', '09-06-23'),
(237, '127.0.0.1', '07:29:42pm', '09-06-23'),
(238, '127.0.0.1', '07:30:48pm', '09-06-23'),
(239, '127.0.0.1', '07:30:50pm', '09-06-23'),
(240, '127.0.0.1', '07:31:37pm', '09-06-23'),
(241, '127.0.0.1', '07:31:39pm', '09-06-23'),
(242, '127.0.0.1', '07:33:39pm', '09-06-23'),
(243, '127.0.0.1', '07:33:41pm', '09-06-23'),
(244, '127.0.0.1', '07:41:56pm', '09-06-23'),
(245, '127.0.0.1', '07:41:58pm', '09-06-23'),
(246, '127.0.0.1', '07:55:23pm', '09-06-23'),
(247, '127.0.0.1', '07:55:25pm', '09-06-23'),
(248, '127.0.0.1', '08:20:22pm', '09-06-23'),
(249, '127.0.0.1', '08:20:24pm', '09-06-23'),
(250, '127.0.0.1', '08:22:00pm', '09-06-23'),
(251, '127.0.0.1', '08:22:03pm', '09-06-23'),
(252, '127.0.0.1', '08:22:31pm', '09-06-23'),
(253, '127.0.0.1', '08:22:33pm', '09-06-23'),
(254, '127.0.0.1', '08:23:05pm', '09-06-23'),
(255, '127.0.0.1', '08:23:08pm', '09-06-23'),
(256, '127.0.0.1', '08:23:36pm', '09-06-23'),
(257, '127.0.0.1', '08:23:39pm', '09-06-23'),
(258, '127.0.0.1', '08:23:43pm', '09-06-23'),
(259, '127.0.0.1', '08:29:20pm', '09-06-23'),
(260, '127.0.0.1', '08:29:23pm', '09-06-23'),
(261, '127.0.0.1', '08:48:50pm', '09-06-23'),
(262, '127.0.0.1', '08:48:52pm', '09-06-23'),
(263, '127.0.0.1', '09:40:28pm', '09-06-23'),
(264, '127.0.0.1', '09:40:30pm', '09-06-23'),
(265, '127.0.0.1', '09:29:22am', '16-06-23'),
(266, '127.0.0.1', '09:29:22am', '16-06-23'),
(267, '127.0.0.1', '09:32:53am', '16-06-23'),
(268, '127.0.0.1', '09:32:55am', '16-06-23'),
(269, '127.0.0.1', '09:33:46am', '16-06-23'),
(270, '127.0.0.1', '09:33:48am', '16-06-23'),
(271, '127.0.0.1', '09:33:50am', '16-06-23'),
(272, '127.0.0.1', '09:33:52am', '16-06-23'),
(273, '127.0.0.1', '09:34:33am', '16-06-23'),
(274, '127.0.0.1', '09:34:45am', '16-06-23'),
(275, '127.0.0.1', '09:34:47am', '16-06-23'),
(276, '127.0.0.1', '09:34:55am', '16-06-23'),
(277, '127.0.0.1', '09:34:58am', '16-06-23'),
(278, '127.0.0.1', '03:14:04pm', '16-06-23'),
(279, '127.0.0.1', '03:14:08pm', '16-06-23'),
(280, '127.0.0.1', '03:14:17pm', '16-06-23'),
(281, '127.0.0.1', '03:14:20pm', '16-06-23'),
(282, '127.0.0.1', '03:21:55pm', '16-06-23'),
(283, '127.0.0.1', '03:21:57pm', '16-06-23'),
(284, '127.0.0.1', '03:25:32pm', '16-06-23'),
(285, '127.0.0.1', '03:25:32pm', '16-06-23'),
(286, '127.0.0.1', '03:35:15pm', '16-06-23'),
(287, '127.0.0.1', '03:35:17pm', '16-06-23'),
(288, '127.0.0.1', '03:39:49pm', '16-06-23'),
(289, '127.0.0.1', '03:39:51pm', '16-06-23'),
(290, '127.0.0.1', '03:39:57pm', '16-06-23'),
(291, '127.0.0.1', '03:39:58pm', '16-06-23'),
(292, '127.0.0.1', '03:40:01pm', '16-06-23'),
(293, '127.0.0.1', '03:40:01pm', '16-06-23'),
(294, '127.0.0.1', '03:40:04pm', '16-06-23'),
(295, '127.0.0.1', '03:40:06pm', '16-06-23'),
(296, '127.0.0.1', '03:40:36pm', '16-06-23'),
(297, '127.0.0.1', '03:40:50pm', '16-06-23'),
(298, '127.0.0.1', '03:40:52pm', '16-06-23'),
(299, '127.0.0.1', '03:47:07pm', '16-06-23'),
(300, '127.0.0.1', '03:47:09pm', '16-06-23'),
(301, '127.0.0.1', '04:15:00pm', '16-06-23'),
(302, '127.0.0.1', '04:15:01pm', '16-06-23'),
(303, '127.0.0.1', '11:11:40pm', '16-06-23'),
(304, '127.0.0.1', '11:11:43pm', '16-06-23'),
(305, '127.0.0.1', '11:15:53pm', '16-06-23'),
(306, '127.0.0.1', '11:15:55pm', '16-06-23'),
(307, '127.0.0.1', '11:39:34pm', '16-06-23'),
(308, '127.0.0.1', '11:39:37pm', '16-06-23'),
(309, '127.0.0.1', '11:43:49pm', '16-06-23'),
(310, '127.0.0.1', '11:43:52pm', '16-06-23'),
(311, '127.0.0.1', '11:45:26pm', '16-06-23'),
(312, '127.0.0.1', '11:45:28pm', '16-06-23'),
(313, '127.0.0.1', '11:47:41pm', '16-06-23'),
(314, '127.0.0.1', '11:49:55pm', '16-06-23'),
(315, '127.0.0.1', '11:49:58pm', '16-06-23'),
(316, '127.0.0.1', '11:51:33pm', '16-06-23'),
(317, '127.0.0.1', '11:51:34pm', '16-06-23'),
(318, '127.0.0.1', '11:51:57pm', '16-06-23'),
(319, '127.0.0.1', '11:52:00pm', '16-06-23'),
(320, '127.0.0.1', '12:34:28am', '17-06-23'),
(321, '127.0.0.1', '12:34:30am', '17-06-23'),
(322, '127.0.0.1', '12:49:34am', '17-06-23'),
(323, '127.0.0.1', '12:49:35am', '17-06-23'),
(324, '127.0.0.1', '02:02:26pm', '17-06-23'),
(325, '127.0.0.1', '02:02:27pm', '17-06-23'),
(326, '127.0.0.1', '02:03:43pm', '17-06-23'),
(327, '127.0.0.1', '02:03:45pm', '17-06-23'),
(328, '127.0.0.1', '02:59:01pm', '17-06-23'),
(329, '127.0.0.1', '02:59:01pm', '17-06-23'),
(330, '127.0.0.1', '09:22:44pm', '19-06-23'),
(331, '127.0.0.1', '09:22:46pm', '19-06-23'),
(332, '127.0.0.1', '09:28:21pm', '19-06-23'),
(333, '127.0.0.1', '09:28:23pm', '19-06-23'),
(334, '127.0.0.1', '09:35:03pm', '19-06-23'),
(335, '127.0.0.1', '09:35:04pm', '19-06-23'),
(336, '127.0.0.1', '09:36:27pm', '19-06-23'),
(337, '127.0.0.1', '09:36:29pm', '19-06-23'),
(338, '127.0.0.1', '10:02:33pm', '19-06-23'),
(339, '127.0.0.1', '10:02:36pm', '19-06-23'),
(340, '127.0.0.1', '07:18:47pm', '20-06-23'),
(341, '127.0.0.1', '07:18:50pm', '20-06-23'),
(342, '127.0.0.1', '07:35:45pm', '20-06-23'),
(343, '127.0.0.1', '07:35:48pm', '20-06-23'),
(344, '127.0.0.1', '07:43:53pm', '20-06-23'),
(345, '127.0.0.1', '07:43:56pm', '20-06-23'),
(346, '127.0.0.1', '07:44:47pm', '20-06-23'),
(347, '127.0.0.1', '07:44:50pm', '20-06-23'),
(348, '127.0.0.1', '07:44:38pm', '21-06-23'),
(349, '127.0.0.1', '07:44:41pm', '21-06-23'),
(350, '127.0.0.1', '07:49:14pm', '21-06-23'),
(351, '127.0.0.1', '07:49:16pm', '21-06-23'),
(352, '127.0.0.1', '07:49:48pm', '21-06-23'),
(353, '127.0.0.1', '07:49:50pm', '21-06-23'),
(354, '127.0.0.1', '07:50:09pm', '21-06-23'),
(355, '127.0.0.1', '07:50:11pm', '21-06-23'),
(356, '127.0.0.1', '07:50:21pm', '21-06-23'),
(357, '127.0.0.1', '07:50:24pm', '21-06-23'),
(358, '127.0.0.1', '07:50:34pm', '21-06-23'),
(359, '127.0.0.1', '07:50:36pm', '21-06-23'),
(360, '127.0.0.1', '07:52:41pm', '21-06-23'),
(361, '127.0.0.1', '07:52:44pm', '21-06-23'),
(362, '127.0.0.1', '07:53:25pm', '21-06-23'),
(363, '127.0.0.1', '07:53:27pm', '21-06-23'),
(364, '127.0.0.1', '07:57:14pm', '21-06-23'),
(365, '127.0.0.1', '07:57:16pm', '21-06-23'),
(366, '127.0.0.1', '07:57:42pm', '21-06-23'),
(367, '127.0.0.1', '07:57:46pm', '21-06-23'),
(368, '127.0.0.1', '07:58:24pm', '21-06-23'),
(369, '127.0.0.1', '07:58:28pm', '21-06-23'),
(370, '127.0.0.1', '08:01:11pm', '21-06-23'),
(371, '127.0.0.1', '08:01:14pm', '21-06-23'),
(372, '127.0.0.1', '08:01:25pm', '21-06-23'),
(373, '127.0.0.1', '08:01:29pm', '21-06-23'),
(374, '127.0.0.1', '08:03:48pm', '21-06-23'),
(375, '127.0.0.1', '08:03:50pm', '21-06-23'),
(376, '127.0.0.1', '08:06:14pm', '21-06-23'),
(377, '127.0.0.1', '08:06:18pm', '21-06-23'),
(378, '127.0.0.1', '08:07:06pm', '21-06-23'),
(379, '127.0.0.1', '08:07:11pm', '21-06-23'),
(380, '127.0.0.1', '08:12:51pm', '21-06-23'),
(381, '127.0.0.1', '08:12:53pm', '21-06-23'),
(382, '127.0.0.1', '08:24:04pm', '21-06-23'),
(383, '127.0.0.1', '08:24:07pm', '21-06-23'),
(384, '127.0.0.1', '08:25:21pm', '21-06-23'),
(385, '127.0.0.1', '08:25:25pm', '21-06-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand_table`
--
ALTER TABLE `brand_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_level1`
--
ALTER TABLE `category_level1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_level2`
--
ALTER TABLE `category_level2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directordermodel`
--
ALTER TABLE `directordermodel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `fav_list`
--
ALTER TABLE `fav_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp_table`
--
ALTER TABLE `otp_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `product_cart1`
--
ALTER TABLE `product_cart1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siteinfo`
--
ALTER TABLE `siteinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_seo`
--
ALTER TABLE `site_seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider_table`
--
ALTER TABLE `slider_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_admin`
--
ALTER TABLE `sub_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brand_table`
--
ALTER TABLE `brand_table`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_level1`
--
ALTER TABLE `category_level1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category_level2`
--
ALTER TABLE `category_level2`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `directordermodel`
--
ALTER TABLE `directordermodel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fav_list`
--
ALTER TABLE `fav_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `otp_table`
--
ALTER TABLE `otp_table`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_cart1`
--
ALTER TABLE `product_cart1`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siteinfo`
--
ALTER TABLE `siteinfo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_seo`
--
ALTER TABLE `site_seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider_table`
--
ALTER TABLE `slider_table`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_admin`
--
ALTER TABLE `sub_admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
