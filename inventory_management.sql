-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2026 at 06:58 PM
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
-- Database: `inventory_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `action` varchar(80) NOT NULL,
  `module` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `module`, `description`, `subject_type`, `subject_id`, `ip_address`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, 1, 'updated', 'products', 'បានកែប្រែផលិតផល Sea Salt Therapy Shampoo។', 'App\\Models\\Product', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-10 17:11:27', '2026-11-10 17:11:27'),
(2, 1, 'updated', 'products', 'បានកែប្រែផលិតផល Aromatica Roosemary Root Enhancer។', 'App\\Models\\Product', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-10 17:12:56', '2026-11-10 17:12:56'),
(3, 1, 'updated', 'products', 'បានកែប្រែផលិតផល Dynasty Cream។', 'App\\Models\\Product', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-10 17:14:14', '2026-11-10 17:14:14'),
(4, 1, 'updated', 'products', 'បានកែប្រែផលិតផល 345 cream។', 'App\\Models\\Product', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-10 17:14:58', '2026-11-10 17:14:58'),
(5, 1, 'created', 'products', 'បានបង្កើតផលិតផល Abib Glutathiosome Dark Spot Serum Vita Drop។', 'App\\Models\\Product', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-10 17:18:29', '2026-11-10 17:18:29'),
(6, 1, 'created', 'categories', 'បានបង្កើតប្រភេទ ផលិតផលថែរក្សាស្បែកខ្លួន។', 'App\\Models\\Category', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-10 17:21:27', '2026-11-10 17:21:27'),
(7, 1, 'created', 'products', 'បានបង្កើតផលិតផល Nivea Extra Bright Body Lotion។', 'App\\Models\\Product', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-10 17:25:52', '2026-11-10 17:25:52'),
(8, 1, 'updated', 'products', 'បានកែប្រែផលិតផល Nivea Extra Bright Body Lotion។', 'App\\Models\\Product', 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-10 17:26:56', '2026-11-10 17:26:56'),
(9, 1, 'created', 'products', 'បានបង្កើតផលិតផល Vaseline Gluta-Hya Serum Burst Lotion។', 'App\\Models\\Product', 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-10 17:28:48', '2026-11-10 17:28:48'),
(10, 1, 'created', 'products', 'បានបង្កើតផលិតផល Dove Deeply Nourishing Body Wash។', 'App\\Models\\Product', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-10 17:30:32', '2026-11-10 17:30:32'),
(11, 1, 'created', 'products', 'បានបង្កើតផលិតផល Tree Hut Shea Sugar Scrub។', 'App\\Models\\Product', 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-10 17:31:55', '2026-11-10 17:31:55'),
(12, 1, 'updated', 'settings', 'បានធ្វើបច្ចុប្បន្នភាពការកំណត់ប្រព័ន្ធ។', 'App\\Models\\SystemSetting', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-10 18:25:43', '2026-11-10 18:25:43'),
(13, 1, 'login', 'auth', 'បានចូលប្រើប្រព័ន្ធ។', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-12 16:29:32', '2026-11-12 16:29:32'),
(14, 1, 'login', 'auth', 'បានចូលប្រើប្រព័ន្ធ។', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 01:06:21', '2026-11-14 01:06:21'),
(15, 1, 'created', 'sales', 'បានបង្កើតការលក់ INV-20261114-B60A0908។', 'App\\Models\\Sale', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 01:58:09', '2026-11-14 01:58:09'),
(16, 1, 'stock.out', 'stock', 'បានកត់ត្រាដកស្តុកសម្រាប់ 345 cream ចំនួន 1.000។', 'App\\Models\\StockMovement', 10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 01:58:09', '2026-11-14 01:58:09'),
(17, 1, 'created', 'sales', 'បានបង្កើតការលក់ INV-20261114-D1DA5F2C។', 'App\\Models\\Sale', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 03:19:41', '2026-11-14 03:19:41'),
(18, 1, 'stock.out', 'stock', 'បានកត់ត្រាដកស្តុកសម្រាប់ Sea Salt Therapy Shampoo ចំនួន 3.000។', 'App\\Models\\StockMovement', 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 03:19:41', '2026-11-14 03:19:41'),
(19, 1, 'created', 'purchases', 'បានបង្កើតបញ្ជាទិញ PO-20261114-3EF42754។', 'App\\Models\\Purchase', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 03:29:37', '2026-11-14 03:29:37'),
(20, 1, 'payment.recorded', 'payments', 'បានកត់ត្រាការទូទាត់ PAY-P30KVKNPVD។', 'App\\Models\\Payment', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 03:30:12', '2026-11-14 03:30:12'),
(21, 1, 'stock.in', 'stock', 'បានកត់ត្រាបញ្ចូលស្តុកសម្រាប់ Vaseline Gluta-Hya Serum Burst Lotion ចំនួន 0.001។', 'App\\Models\\StockMovement', 12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 03:32:06', '2026-11-14 03:32:06'),
(22, 1, 'stock.in', 'stock', 'បានកត់ត្រាបញ្ចូលស្តុកសម្រាប់ Dynasty Cream ចំនួន 0.001។', 'App\\Models\\StockMovement', 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 03:32:06', '2026-11-14 03:32:06'),
(23, 1, 'stock.in', 'stock', 'បានកត់ត្រាបញ្ចូលស្តុកសម្រាប់ Tree Hut Shea Sugar Scrub ចំនួន 0.001។', 'App\\Models\\StockMovement', 14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 03:32:06', '2026-11-14 03:32:06'),
(24, 1, 'purchase.received', 'purchases', 'បានទទួលទំនិញពីបញ្ជាទិញ PO-20261114-3EF42754។', 'App\\Models\\Purchase', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 03:32:06', '2026-11-14 03:32:06'),
(25, 1, 'updated', 'settings', 'បានធ្វើបច្ចុប្បន្នភាពការកំណត់ប្រព័ន្ធ។', 'App\\Models\\SystemSetting', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 03:36:15', '2026-11-14 03:36:15'),
(26, 1, 'updated', 'settings', 'បានធ្វើបច្ចុប្បន្នភាពការកំណត់ប្រព័ន្ធ។', 'App\\Models\\SystemSetting', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 03:47:47', '2026-11-14 03:47:47'),
(27, 1, 'updated', 'settings', 'បានលុបរូបសញ្ញាហាង។', 'App\\Models\\SystemSetting', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 03:48:34', '2026-11-14 03:48:34'),
(28, 1, 'updated', 'settings', 'បានធ្វើបច្ចុប្បន្នភាពការកំណត់ប្រព័ន្ធ។', 'App\\Models\\SystemSetting', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 03:48:46', '2026-11-14 03:48:46'),
(29, 1, 'logout', 'auth', 'បានចាកចេញពីប្រព័ន្ធ។', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 04:15:25', '2026-11-14 04:15:25'),
(30, 1, 'login', 'auth', 'បានចូលប្រើប្រព័ន្ធ។', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 04:16:06', '2026-11-14 04:16:06'),
(31, 1, 'login', 'auth', 'បានចូលប្រើប្រព័ន្ធ។', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 09:24:44', '2026-11-14 09:24:44'),
(32, 1, 'login', 'auth', 'បានចូលប្រើប្រព័ន្ធ។', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-14 15:31:33', '2026-11-14 15:31:33'),
(33, 1, 'login', 'auth', 'បានចូលប្រើប្រព័ន្ធ។', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-15 01:11:12', '2026-11-15 01:11:12'),
(34, 1, 'login', 'auth', 'បានចូលប្រើប្រព័ន្ធ។', NULL, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', '2026-11-19 16:26:36', '2026-11-19 16:26:36');

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ផលិតផលថែរក្សាមុខ', 'category-ei1eo72e', 'ផលិតផលថែរក្សាស្បែកមុខ (Skin Care Products) ដើរតួនាទីយ៉ាងសំខាន់ក្នុងការរក្សាស្បែកឱ្យមានសុខភាពល្អ ភ្លឺថ្លា និងការពារពីបញ្ហាកំណើនអាយុ ឬការខូចខាតពីបរិស្ថាន។ ដើម្បីទទួលបានប្រសិទ្ធភាពខ្ពស់ អ្នកគួរជ្រើសរើសផលិតផលដែលគ្មានសារធាតុកាត់ និងស្របទៅតាមប្រភេទស្បែករបស់អ្នក។', 1, '2026-11-06 17:41:23', '2026-11-06 17:41:23', NULL),
(2, 'ផលិតផលថែរក្សាសក់', 'category-t6bmxkb8', 'ផលិតផលថែរក្សាសក់ (Hair Care Products) គឺជាទំនិញដែលប្រើប្រាស់សម្រាប់សម្អាត ចិញ្ចឹម និងដោះស្រាយបញ្ហាសក់ ឬស្បែកក្បាល។', 1, '2026-11-06 18:09:32', '2026-11-06 18:09:32', NULL),
(3, 'ផលិតផលថែរក្សាស្បែកខ្លួន', 'category-imcudxgj', 'ដើម្បីទទួលបានស្បែកខ្លួន (Body) ដែលមានសុខភាពល្អ ទន់រលោង និងភ្លឺថ្លា ការជ្រើសរើស ផលិតផលថែរក្សាស្បែកខ្លួនដែលត្រូវនឹងប្រភេទស្បែក និងការប្រើប្រាស់ឱ្យបានត្រឹមត្រូវ គឺពិតជាសំខាន់ណាស់។', 1, '2026-11-10 17:21:27', '2026-11-10 17:21:27', NULL);

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
(4, '2026_11_03_010000_create_roles_table', 2),
(5, '2026_11_03_010001_create_permissions_table', 2),
(6, '2026_11_03_010002_create_role_permissions_table', 2),
(7, '2026_11_03_010003_add_role_and_soft_deletes_to_users_table', 2),
(8, '2026_11_03_010004_create_categories_table', 2),
(9, '2026_11_03_010005_create_suppliers_table', 2),
(10, '2026_11_03_010006_create_products_table', 2),
(11, '2026_11_03_010007_create_purchases_table', 2),
(12, '2026_11_03_010008_create_purchase_items_table', 2),
(13, '2026_11_03_010009_create_sales_table', 2),
(14, '2026_11_03_010010_create_sale_items_table', 2),
(15, '2026_11_03_010011_create_stock_movements_table', 2),
(16, '2026_11_03_010012_create_payments_table', 2),
(17, '2026_11_03_010013_add_inventory_business_constraints', 3),
(18, '2026_11_07_010000_add_supplier_profile_fields', 4),
(19, '2026_11_08_010000_add_stock_transaction_fields', 5),
(20, '2026_11_08_020000_add_purchase_workflow_fields', 6),
(21, '2026_11_08_030000_add_sale_workflow_fields', 7),
(22, '2026_11_08_040000_add_historical_cost_to_sale_items', 8),
(23, '2026_11_10_010000_create_notifications_and_activity_logs_tables', 9),
(24, '2026_11_10_020000_add_activity_log_view_permission', 10),
(25, '2026_11_11_010000_create_system_settings_table', 11),
(26, '2026_11_11_010001_add_transaction_currencies', 11);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED DEFAULT NULL,
  `purchase_id` bigint(20) UNSIGNED DEFAULT NULL,
  `recorded_by` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_number` varchar(255) NOT NULL,
  `method` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'completed',
  `amount` decimal(15,2) NOT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `exchange_rate` decimal(15,4) NOT NULL DEFAULT 1.0000,
  `paid_at` datetime DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `sale_id`, `purchase_id`, `recorded_by`, `payment_number`, `method`, `status`, `amount`, `currency`, `exchange_rate`, `paid_at`, `reference`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 1, 1, 'PAY-P30KVKNPVD', 'cash', 'completed', 39.00, 'USD', 1.0000, '2026-11-14 10:29:00', NULL, NULL, '2026-11-14 03:30:12', '2026-11-14 03:30:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'គ្រប់គ្រងអ្នកប្រើប្រាស់', 'users.manage', 'users', '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(2, 'គ្រប់គ្រងតួនាទី និងសិទ្ធិ', 'roles.manage', 'roles', '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(3, 'គ្រប់គ្រងផលិតផល', 'products.manage', 'products', '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(4, 'មើលផលិតផល', 'products.view', 'products', '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(5, 'គ្រប់គ្រងប្រភេទ', 'categories.manage', 'categories', '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(6, 'គ្រប់គ្រងអ្នកផ្គត់ផ្គង់', 'suppliers.manage', 'suppliers', '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(7, 'គ្រប់គ្រងការទិញ', 'purchases.manage', 'purchases', '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(8, 'គ្រប់គ្រងការលក់', 'sales.manage', 'sales', '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(9, 'បង្កើតការលក់', 'sales.create', 'sales', '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(10, 'មើលការលក់', 'sales.view', 'sales', '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(11, 'គ្រប់គ្រងស្តុក', 'stock.manage', 'stock', '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(12, 'មើលស្តុក', 'stock.view', 'stock', '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(13, 'មើលរបាយការណ៍', 'reports.view', 'reports', '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(14, 'គ្រប់គ្រងការកំណត់', 'settings.manage', 'settings', '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(15, 'មើលកំណត់ហេតុសកម្មភាព', 'activity-logs.view', 'activity-logs', '2026-11-10 16:51:38', '2026-11-10 16:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `cost_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `selling_price` decimal(15,2) NOT NULL DEFAULT 0.00,
  `stock_quantity` decimal(15,3) NOT NULL DEFAULT 0.000,
  `minimum_stock` decimal(15,3) NOT NULL DEFAULT 0.000,
  `stock_alert_status` varchar(20) NOT NULL DEFAULT 'normal',
  `unit` varchar(30) NOT NULL DEFAULT 'pcs',
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `sku`, `barcode`, `cost_price`, `selling_price`, `stock_quantity`, `minimum_stock`, `stock_alert_status`, `unit`, `image`, `description`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '345 cream', 'CRM-345', 'TEST100004', 20.00, 25.00, 49.000, 45.000, 'normal', 'Tube', 'products/zLRUvn58mz3bC7j7pxlZOKz678B0942Md2BysxiM.jpg', 'Dr. Althea 345 Relief Cream ជួយកាត់បន្ថយស្នាមមុន ស្នាមក្រហម ស្នាមខ្មៅ និងធ្វើឲ្យពណ៌ស្បែកស្មើគ្នា ជួយជួសជុល និងពង្រឹងរបាំងការពារស្បែក (Skin Barrier) ឲ្យរឹងមាំឡើងវិញ ជួយបន្ធូរការរលាក ក្រហាយ ឬស្បែកដែលងាយប្រតិកម្មឲ្យត្រឡប់មកស្ងប់ និងទន់រលោង ព្រមទាំងផ្តល់សំណើមបានយ៉ាងជ្រៅដោយមិនធ្វើឲ្យស្អិត ឬស្ទះរន្ធញើស (Non-comedogenic) ឡើយ។', 1, '2026-11-06 17:56:52', '2026-11-14 01:58:09', NULL),
(2, 1, 'Dynasty Cream', 'BOJ-DC-50', 'TEST100003', 12.00, 18.00, 30.001, 5.000, 'normal', 'Jar', 'products/GhX6APe9EKekN7E7t8sqCRx8kTdYZ2sV08to0ATJ.jpg', 'Beauty of Joseon Dynasty Cream ជួយផ្តល់សំណើមយ៉ាងជ្រៅ និងរក្សាសំណើមបានយូរអង្វែង ជួយពង្រឹងរបាំងការពារស្បែក (Skin Barrier) ឲ្យរឹងមាំ ជួយធ្វើឲ្យស្បែកភ្លឺថ្លាចែងចាំងបែបធម្មជាតិ (Glowy finish) កាត់បន្ថយស្នាមជ្រួញស្តើងៗ និងជួយបន្ធូរស្បែកដែលស្ងួតខ្លាំង ឬខូចខាតឲ្យត្រឡប់មកមានភាពទន់រលោង និងមានបត់បែនល្អឡើងវិញ។', 1, '2026-11-06 18:06:32', '2026-11-14 03:32:06', NULL),
(3, 2, 'Aromatica Roosemary Root Enhancer', 'ARO-RE-100', 'TEST100002', 9.00, 15.00, 40.000, 30.000, 'normal', 'Bottle', 'products/77w5u0Nej0hM9Vgo8b1liX63jG7pq4QV24XkbhDW.jpg', 'អត្ថប្រយោជន៍៖ ជួយពង្រឹងឫសសក់ឲ្យរឹងមាំ កាត់បន្ថយបញ្ហាសក់ជ្រុះ ជួយសម្អាត និងបន្ធូរស្បែកក្បាល ព្រមទាំងភ្ញោចការដុះសក់ថ្មីបែបធម្មជាតិដោយមិនធ្វើឲ្យស្បែកក្បាលឡើងប្រេង។', 1, '2026-11-06 18:14:57', '2026-11-10 17:12:56', NULL),
(4, 2, 'Sea Salt Therapy Shampoo', 'GRW-SS-500', 'TEST100001', 8.00, 12.00, 7.000, 5.000, 'normal', 'Bottle', 'products/hv0UJtNXCNr0fmp5nv69rwGi0tWYkRHJeeV6pGt3.jpg', 'អត្ថប្រយោជន៍៖ ជួយសម្អាតជម្រៅ និងផ្លាស់ប្តូរកោសិកាចាស់ៗលើស្បែកក្បាល កាត់បន្ថយប្រេង និងអង្គែ ជួយកាត់បន្ថយបញ្ហាសក់ជ្រុះ ព្រមទាំងផ្តល់អារម្មណ៍ស្រស់ស្រាយ និងពង្រឹងឫសសក់ឲ្យរឹងមាំ។', 1, '2026-11-06 18:19:20', '2026-11-14 03:19:41', NULL),
(5, 1, 'Abib Glutathiosome Dark Spot Serum Vita Drop', 'ABIB-SERUM-001', 'TEST100005', 20.00, 32.00, 20.000, 5.000, 'normal', 'Bottle', 'products/k6BFcjvUnYBbc5deVIbMGppndOwNAKzuPu9yXH19.jpg', 'ក្រែមសេរ៉ូមថែរក្សាស្បែកមុខ ជួយកាត់បន្ថយស្នាមអុជខ្មៅ និងធ្វើឱ្យស្បែកមើលទៅភ្លឺថ្លា។ មានសារធាតុ Glutathione, Niacinamide និង Vitamin C ជួយថែរក្សាសំណើម និងស្បែកមុខ។ បរិមាណ 50ml។', 1, '2026-11-10 17:18:29', '2026-11-10 17:18:29', NULL),
(6, 3, 'Nivea Extra Bright Body Lotion', 'NIV-EB-001', 'TEST100006', 4.00, 7.00, 30.000, 5.000, 'normal', 'Bottle', 'products/aHNSFExhBH9aNXz8tZbjqVSY9YnwEPRaPk2uduap.jpg', 'ឡេលាបខ្លួនជួយផ្តល់សំណើម និងថែរក្សាស្បែកឱ្យទន់រលោង និងមើលទៅភ្លឺថ្លា។', 1, '2026-11-10 17:25:52', '2026-11-10 17:26:56', NULL),
(7, 3, 'Vaseline Gluta-Hya Serum Burst Lotion', 'VAS-GH-001', 'TEST100007', 5.00, 9.00, 25.001, 5.000, 'normal', 'Bottle', 'products/SZxcYA56T0fMbT44S82MA9MNczHYnqniR9LuuhRL.jpg', 'ឡេលាបខ្លួនប្រភេទ Serum Burst ជួយផ្តល់សំណើម និងថែរក្សាស្បែកឱ្យមើលទៅភ្លឺថ្លា និងទន់រលោង។', 1, '2026-11-10 17:28:48', '2026-11-14 03:32:06', NULL),
(8, 3, 'Dove Deeply Nourishing Body Wash', 'DOV-DN-001', 'TEST100008', 3.50, 6.00, 40.000, 10.000, 'normal', 'Bottle', 'products/PekyA4YBnH7C7Lt4sHJoSaMSf2RgnkLuKNOi5zFv.jpg', 'សាប៊ូងូតទឹកសម្រាប់សម្អាតស្បែកខ្លួន ជួយរក្សាសំណើម និងធ្វើឱ្យស្បែកមានអារម្មណ៍ទន់រលោង។', 1, '2026-11-10 17:30:32', '2026-11-10 17:30:32', NULL),
(9, 3, 'Tree Hut Shea Sugar Scrub', 'TRH-SS-001', 'TEST100009', 7.00, 12.00, 20.001, 5.000, 'normal', 'Jar', 'products/I8KKRQTK2NOrhRBr221ktuIYJ4OmMmYqYfIyFeLO.jpg', 'ផលិតផលស្ក្រាប់ស្បែកខ្លួនជួយជម្រុះកោសិកាស្បែកចាស់ៗ និងធ្វើឱ្យស្បែកមានអារម្មណ៍ទន់រលោង។', 1, '2026-11-10 17:31:55', '2026-11-14 03:32:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_number` varchar(255) NOT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `exchange_rate` decimal(15,6) NOT NULL DEFAULT 1.000000,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `purchased_at` datetime DEFAULT NULL,
  `expected_delivery_at` datetime DEFAULT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'draft',
  `payment_status` varchar(30) NOT NULL DEFAULT 'unpaid',
  `subtotal` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(15,2) NOT NULL DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `confirmed_at` timestamp NULL DEFAULT NULL,
  `received_at` timestamp NULL DEFAULT NULL,
  `received_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `cancel_reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `purchase_number`, `currency`, `exchange_rate`, `supplier_id`, `created_by`, `purchased_at`, `expected_delivery_at`, `reference_number`, `status`, `payment_status`, `subtotal`, `discount`, `tax`, `grand_total`, `notes`, `confirmed_at`, `received_at`, `received_by`, `created_at`, `updated_at`, `deleted_at`, `cancelled_at`, `cancel_reason`) VALUES
(1, 'PO-20261114-3EF42754', 'USD', 1.000000, 1, 1, '2026-11-14 10:23:00', '2026-11-16 10:23:00', 'PUR-2026-0001', 'partially_received', 'paid', 39.00, 0.00, 0.00, 39.00, NULL, '2026-11-14 03:29:37', '2026-11-14 03:31:00', 1, '2026-11-14 03:29:37', '2026-11-14 03:32:06', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(15,3) NOT NULL,
  `received_quantity` decimal(15,3) NOT NULL DEFAULT 0.000,
  `unit_cost` decimal(15,2) NOT NULL,
  `line_total` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `purchase_id`, `product_id`, `quantity`, `received_quantity`, `unit_cost`, `line_total`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 1.000, 0.001, 20.00, 20.00, '2026-11-14 03:29:38', '2026-11-14 03:32:06'),
(2, 1, 2, 1.000, 0.001, 12.00, 12.00, '2026-11-14 03:29:38', '2026-11-14 03:32:06'),
(3, 1, 9, 1.000, 0.001, 7.00, 7.00, '2026-11-14 03:29:38', '2026-11-14 03:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, 1, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(2, 'Manager', 'manager', NULL, 1, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(3, 'Staff', 'staff', NULL, 1, '2026-11-06 16:41:55', '2026-11-06 16:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(1, 2, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(1, 3, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(1, 4, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(1, 5, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(1, 6, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(1, 7, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(1, 8, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(1, 9, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(1, 10, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(1, 11, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(1, 12, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(1, 13, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(1, 14, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(2, 3, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(2, 5, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(2, 6, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(2, 7, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(2, 8, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(2, 11, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(2, 13, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(3, 4, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(3, 9, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(3, 10, '2026-11-06 16:41:55', '2026-11-06 16:41:55'),
(3, 12, '2026-11-06 16:41:55', '2026-11-06 16:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_number` varchar(255) NOT NULL,
  `currency` varchar(3) NOT NULL DEFAULT 'USD',
  `exchange_rate` decimal(15,6) NOT NULL DEFAULT 1.000000,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(30) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_address` text DEFAULT NULL,
  `sold_at` datetime DEFAULT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'draft',
  `payment_status` varchar(30) NOT NULL DEFAULT 'unpaid',
  `subtotal` decimal(15,2) NOT NULL DEFAULT 0.00,
  `discount` decimal(15,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(15,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(15,2) NOT NULL DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `submission_key` varchar(36) DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `cancel_reason` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `sale_number`, `currency`, `exchange_rate`, `created_by`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `sold_at`, `status`, `payment_status`, `subtotal`, `discount`, `tax`, `grand_total`, `notes`, `submission_key`, `completed_at`, `created_at`, `updated_at`, `deleted_at`, `cancelled_at`, `cancel_reason`) VALUES
(1, 'INV-20261114-B60A0908', 'KHR', 4099.999900, 1, 'អតិថិជនរត់ចូល', NULL, NULL, NULL, '2026-11-14 08:55:00', 'completed', 'unpaid', 102500.00, 0.00, 0.00, 102500.00, NULL, '092e7443-e1e1-4737-a922-f1d674ef449f', '2026-11-14 01:58:09', '2026-11-14 01:58:09', '2026-11-14 01:58:09', NULL, NULL, NULL),
(2, 'INV-20261114-D1DA5F2C', 'KHR', 4099.999900, 1, 'អតិថិជនរត់ចូល', NULL, NULL, NULL, '2026-11-14 10:18:00', 'completed', 'unpaid', 147600.00, 0.00, 0.00, 147600.00, NULL, '149c1d91-6bfd-42ab-bc27-bffca3b77c9a', '2026-11-14 03:19:41', '2026-11-14 03:19:41', '2026-11-14 03:19:41', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` decimal(15,3) NOT NULL,
  `unit_price` decimal(15,2) NOT NULL,
  `cost_price` decimal(15,2) DEFAULT NULL,
  `line_total` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `sale_id`, `product_id`, `quantity`, `unit_price`, `cost_price`, `line_total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1.000, 102500.00, 82000.00, 102500.00, '2026-11-14 01:58:09', '2026-11-14 01:58:09'),
(2, 2, 4, 3.000, 49200.00, 32800.00, 147600.00, '2026-11-14 03:19:41', '2026-11-14 03:19:41');

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

-- --------------------------------------------------------

--
-- Table structure for table `stock_movements`
--

CREATE TABLE `stock_movements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `movement_type` varchar(30) NOT NULL,
  `quantity` decimal(15,3) NOT NULL,
  `stock_before` decimal(15,3) NOT NULL,
  `stock_after` decimal(15,3) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `unit_cost` decimal(15,2) DEFAULT NULL,
  `submission_key` varchar(36) DEFAULT NULL,
  `reference_type` varchar(255) DEFAULT NULL,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ;

--
-- Dumping data for table `stock_movements`
--

INSERT INTO `stock_movements` (`id`, `product_id`, `user_id`, `movement_type`, `quantity`, `stock_before`, `stock_after`, `reason`, `reference_number`, `notes`, `transaction_date`, `unit_cost`, `submission_key`, `reference_type`, `reference_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'initial', 50.000, 0.000, 50.000, 'ស្តុកដំបូងនៅពេលបង្កើតផលិតផល', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-11-06 17:56:52', '2026-11-06 17:56:52'),
(2, 2, 1, 'initial', 30.000, 0.000, 30.000, 'ស្តុកដំបូងនៅពេលបង្កើតផលិតផល', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-11-06 18:06:32', '2026-11-06 18:06:32'),
(3, 3, 1, 'initial', 40.000, 0.000, 40.000, 'ស្តុកដំបូងនៅពេលបង្កើតផលិតផល', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-11-06 18:14:57', '2026-11-06 18:14:57'),
(4, 4, 1, 'initial', 10.000, 0.000, 10.000, 'ស្តុកដំបូងនៅពេលបង្កើតផលិតផល', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-11-06 18:19:20', '2026-11-06 18:19:20'),
(5, 5, 1, 'initial', 20.000, 0.000, 20.000, 'ស្តុកដំបូងនៅពេលបង្កើតផលិតផល', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-11-10 17:18:30', '2026-11-10 17:18:30'),
(6, 6, 1, 'initial', 30.000, 0.000, 30.000, 'ស្តុកដំបូងនៅពេលបង្កើតផលិតផល', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-11-10 17:25:53', '2026-11-10 17:25:53'),
(7, 7, 1, 'initial', 25.000, 0.000, 25.000, 'ស្តុកដំបូងនៅពេលបង្កើតផលិតផល', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-11-10 17:28:48', '2026-11-10 17:28:48'),
(8, 8, 1, 'initial', 40.000, 0.000, 40.000, 'ស្តុកដំបូងនៅពេលបង្កើតផលិតផល', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-11-10 17:30:32', '2026-11-10 17:30:32'),
(9, 9, 1, 'initial', 20.000, 0.000, 20.000, 'ស្តុកដំបូងនៅពេលបង្កើតផលិតផល', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2026-11-10 17:31:55', '2026-11-10 17:31:55'),
(10, 1, 1, 'stock_out', 1.000, 50.000, 49.000, 'លក់ទំនិញ', 'INV-20261114-B60A0908', NULL, '2026-11-14 08:55:00', NULL, 'c4b6a69f-3797-447d-82b2-3cc2b2a4b167', 'App\\Models\\Sale', 1, '2026-11-14 01:58:09', '2026-11-14 01:58:09'),
(11, 4, 1, 'stock_out', 3.000, 10.000, 7.000, 'លក់ទំនិញ', 'INV-20261114-D1DA5F2C', NULL, '2026-11-14 10:18:00', NULL, 'd0f54d95-d78d-4ac9-847e-1d295da3d9d5', 'App\\Models\\Sale', 2, '2026-11-14 03:19:41', '2026-11-14 03:19:41'),
(12, 7, 1, 'stock_in', 0.001, 25.000, 25.001, 'ទទួលទំនិញពីបញ្ជាទិញ', 'PO-20261114-3EF42754', NULL, '2026-11-14 10:31:00', NULL, '1b67c967-9ef9-4397-812b-71127efce6b2', 'App\\Models\\Purchase', 1, '2026-11-14 03:32:06', '2026-11-14 03:32:06'),
(13, 2, 1, 'stock_in', 0.001, 30.000, 30.001, 'ទទួលទំនិញពីបញ្ជាទិញ', 'PO-20261114-3EF42754', NULL, '2026-11-14 10:31:00', NULL, '14211293-626e-483b-8104-a8684013fa3c', 'App\\Models\\Purchase', 1, '2026-11-14 03:32:06', '2026-11-14 03:32:06'),
(14, 9, 1, 'stock_in', 0.001, 20.000, 20.001, 'ទទួលទំនិញពីបញ្ជាទិញ', 'PO-20261114-3EF42754', NULL, '2026-11-14 10:31:00', NULL, '988625fe-9b44-4e05-8351-bf298d8e7831', 'App\\Models\\Purchase', 1, '2026-11-14 03:32:06', '2026-11-14 03:32:06');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `tax_id` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `company_name`, `contact_person`, `phone`, `email`, `address`, `city`, `country`, `tax_id`, `notes`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hang Lyheang', 'Kbeauty shope', 'ម៉ារ៉ា', '0889229840', 'lyheang@gmail.com', 'RRR9+436\r\nតំបន់និគមលើ', 'កណ្ដោលជ្រុំ', 'Cambodia', NULL, NULL, 1, '2026-11-06 18:28:58', '2026-11-06 18:31:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`settings_data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `settings_data`, `created_at`, `updated_at`) VALUES
(1, '{\"store_name\":\"Pinky Beauty\",\"store_logo\":\"branding\\/PNAfEXzdC1pqeCuiPvE0B7sTmvbSL8JCnCFWbnf9.png\",\"store_address\":\"\\u1781\\u17b6\\u1784\\u1780\\u17d2\\u179a\\u17c4\\u1799 \\u179f\\u1780\\u179b\\u179c\\u17b7\\u1791\\u17d2\\u1799\\u17b6\\u179b\\u17d0\\u1799 \\u17a0\\u17c1\\u1784\\u179f\\u17c6\\u179a\\u17b7\\u1793 \\u178f\\u17d2\\u1794\\u17bc\\u1784\\u1783\\u17d2\\u1798\\u17bb\\u17c6\",\"phone_number\":\"0889229840\",\"email\":\"pinkybeauty@gmail.com\",\"website\":\"https:\\/\\/prinkybeauty\",\"receipt_footer\":null,\"system_name\":\"\\u1794\\u17d2\\u179a\\u1796\\u17d0\\u1793\\u17d2\\u1792\\u1782\\u17d2\\u179a\\u1794\\u17cb\\u1782\\u17d2\\u179a\\u1784\\u179f\\u17b6\\u179a\\u1796\\u17be\\u1797\\u17d0\\u178e\\u17d2\\u178c\",\"default_language\":\"km\",\"timezone\":\"Asia\\/Phnom_Penh\",\"date_format\":\"d\\/m\\/Y\",\"time_format\":\"H:i:s\",\"currency_code\":\"USD\",\"currency_symbol\":\"$\",\"decimal_separator\":\".\",\"thousands_separator\":\",\",\"exchange_rate\":\"4099.9999\",\"allow_negative_stock\":false,\"default_minimum_stock\":\"0.000\",\"low_stock_alert\":true,\"out_of_stock_alert\":true,\"auto_generate_sku\":false,\"sku_prefix\":\"SKU\",\"auto_generate_barcode\":true,\"default_product_unit\":\"pcs\",\"invoice_prefix\":\"INV\",\"invoice_numbering\":\"date_random\",\"default_customer\":\"\\u17a2\\u178f\\u17b7\\u1790\\u17b7\\u1787\\u1793\\u179a\\u178f\\u17cb\\u1785\\u17bc\\u179b\",\"tax_enabled\":true,\"tax_rate\":\"0.00\",\"discounts_allowed\":true,\"receipt_paper_size\":\"80mm\",\"print_receipt_automatically\":false,\"purchase_order_prefix\":\"PO\",\"purchase_order_numbering\":\"date_random\",\"default_purchase_status\":\"draft\",\"purchase_receipt_paper_size\":\"A4\"}', '2026-11-10 18:25:43', '2026-11-14 03:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`, `avatar`, `is_active`, `deleted_at`) VALUES
(1, 'Admin', 'mery17try@gmail.com', NULL, '2026-11-06 16:52:46', '$2y$12$rwoj5TjZa2TReQ7yh8u/M.Ygq4WAmuW4scacS6NE5rQ17xZ0xs93K', 1, 'EaGHbQnuRBEb4tDDFD4mSUtiS6sPvB4PwezjRKi49QyPVuzWvoN4NAMZOsuC', '2026-11-06 16:52:46', '2026-11-06 16:56:40', NULL, 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_subject_type_subject_id_index` (`subject_type`,`subject_id`),
  ADD KEY `activity_logs_module_action_created_index` (`module`,`action`,`created_at`),
  ADD KEY `activity_logs_user_created_index` (`user_id`,`created_at`),
  ADD KEY `activity_logs_action_index` (`action`),
  ADD KEY `activity_logs_module_index` (`module`);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_is_active_name_index` (`is_active`,`name`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`),
  ADD KEY `notifications_owner_created_index` (`notifiable_type`,`notifiable_id`,`created_at`),
  ADD KEY `notifications_read_at_index` (`read_at`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_payment_number_unique` (`payment_number`),
  ADD KEY `payments_recorded_by_foreign` (`recorded_by`),
  ADD KEY `payments_sale_id_status_index` (`sale_id`,`status`),
  ADD KEY `payments_purchase_id_status_index` (`purchase_id`,`status`),
  ADD KEY `payments_method_index` (`method`),
  ADD KEY `payments_status_index` (`status`),
  ADD KEY `payments_paid_at_index` (`paid_at`),
  ADD KEY `payments_reference_index` (`reference`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`),
  ADD KEY `permissions_group_name_index` (`group_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD UNIQUE KEY `products_barcode_unique` (`barcode`),
  ADD KEY `products_category_id_is_active_index` (`category_id`,`is_active`),
  ADD KEY `products_name_sku_index` (`name`,`sku`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `purchases_purchase_number_unique` (`purchase_number`),
  ADD KEY `purchases_created_by_foreign` (`created_by`),
  ADD KEY `purchases_supplier_id_status_index` (`supplier_id`,`status`),
  ADD KEY `purchases_purchased_at_index` (`purchased_at`),
  ADD KEY `purchases_status_index` (`status`),
  ADD KEY `purchases_received_by_foreign` (`received_by`),
  ADD KEY `purchases_payment_status_index` (`payment_status`),
  ADD KEY `purchases_currency_purchased_at_index` (`currency`,`purchased_at`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `purchase_items_purchase_id_product_id_unique` (`purchase_id`,`product_id`),
  ADD KEY `purchase_items_product_id_index` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_is_active_index` (`is_active`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`role_id`,`permission_id`),
  ADD KEY `role_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sales_sale_number_unique` (`sale_number`),
  ADD UNIQUE KEY `sales_submission_key_unique` (`submission_key`),
  ADD KEY `sales_created_by_foreign` (`created_by`),
  ADD KEY `sales_customer_phone_index` (`customer_phone`),
  ADD KEY `sales_sold_at_index` (`sold_at`),
  ADD KEY `sales_status_index` (`status`),
  ADD KEY `sales_payment_status_index` (`payment_status`),
  ADD KEY `sales_sold_at_status_index` (`sold_at`,`status`),
  ADD KEY `sales_currency_sold_at_index` (`currency`,`sold_at`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sale_items_sale_id_product_id_unique` (`sale_id`,`product_id`),
  ADD KEY `sale_items_product_id_index` (`product_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `stock_movements`
--
ALTER TABLE `stock_movements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stock_movements_submission_key_unique` (`submission_key`),
  ADD KEY `stock_movements_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  ADD KEY `stock_movements_product_id_created_at_index` (`product_id`,`created_at`),
  ADD KEY `stock_movements_movement_type_index` (`movement_type`),
  ADD KEY `stock_movements_transaction_date_movement_type_index` (`transaction_date`,`movement_type`),
  ADD KEY `stock_movements_user_id_created_at_index` (`user_id`,`created_at`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suppliers_name_is_active_index` (`name`,`is_active`),
  ADD KEY `suppliers_phone_index` (`phone`),
  ADD KEY `suppliers_email_index` (`email`),
  ADD KEY `suppliers_company_name_contact_person_index` (`company_name`,`contact_person`),
  ADD KEY `suppliers_city_country_index` (`city`,`country`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_is_active_index` (`is_active`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stock_movements`
--
ALTER TABLE `stock_movements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_recorded_by_foreign` FOREIGN KEY (`recorded_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `payments_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchases_received_by_foreign` FOREIGN KEY (`received_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `purchase_items_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD CONSTRAINT `sale_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `sale_items_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_movements`
--
ALTER TABLE `stock_movements`
  ADD CONSTRAINT `stock_movements_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `stock_movements_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
