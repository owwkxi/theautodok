-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 20, 2026 at 01:10 PM
-- Server version: 11.8.8-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u141753080_pautodok`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `staff_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`) VALUES
(13, 2, NULL, 'logout', 'User logged out', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 06:42:05'),
(14, 1, NULL, 'logout', 'User logged out', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 12:56:25'),
(15, 0, NULL, 'failed_login', 'Failed login attempt for ID: admin_owwkxi', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 12:56:32'),
(16, 2, NULL, 'login', 'Admin logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 12:56:54'),
(17, 2, NULL, 'update_profile', 'Updated own profile details', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 12:57:23'),
(18, 2, NULL, 'update_profile', 'Updated own profile details', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 12:59:14'),
(19, 2, NULL, 'create_service', 'Created service: Oil Filter Replacement', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 12:59:42'),
(20, 2, NULL, 'create_bundle', 'Created bundle: avsdvas', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 12:59:50'),
(21, 2, NULL, 'create_job_order', 'Created job order #JO001', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:00:00'),
(22, 2, NULL, 'create_estimate', 'Created estimate #JE001', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:00:15'),
(23, 2, NULL, 'create_job_order', 'Created job order #JO002', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:00:23'),
(24, 2, NULL, 'delete_estimate', 'Deleted estimate #JE001', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:00:23'),
(25, 2, NULL, 'delete_job_order', 'Deleted job order #JO002', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:00:27'),
(26, 2, NULL, 'delete_job_order', 'Deleted job order #JO001', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:00:29'),
(27, 0, NULL, 'failed_login', 'Failed login attempt for ID: 00000', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:02:50'),
(28, 2, NULL, 'login', 'Admin logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:02:58'),
(29, 2, NULL, 'create_staff', 'Created staff: Dj Cortez', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:05:00'),
(30, 2, NULL, 'update_staff', 'Updated staff: Dj Cortez', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:09:01'),
(31, 2, NULL, 'logout', 'User logged out', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:09:11'),
(32, 1, NULL, 'login', 'Staff (service_adviser) logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:09:24'),
(33, 0, NULL, 'failed_login', 'Failed login attempt for ID: 00000', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:09:40'),
(34, 0, NULL, 'failed_login', 'Failed login attempt for ID: 00000', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:09:46'),
(35, 0, NULL, 'failed_login', 'Failed login attempt for ID: 00000', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:09:53'),
(36, 0, NULL, 'failed_login', 'Failed login attempt for ID: 00000', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:10:03'),
(37, 0, NULL, 'failed_login', 'Failed login attempt for ID: 00000', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:10:14'),
(38, 2, NULL, 'login', 'Admin logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:10:22'),
(39, 2, NULL, 'create_job_order', 'Created job order #JO001', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:10:32'),
(40, 1, NULL, 'update_job_order_status', 'Updated status for job order #JO001: Pending → Completed', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:10:43'),
(41, 1, NULL, 'update_job_order_status', 'Updated status for job order #JO001: Completed → Released', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:10:50'),
(42, 1, NULL, 'logout', 'User logged out', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:10:58'),
(43, 2, NULL, 'login', 'Admin logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:11:07'),
(44, 2, NULL, 'logout', 'User logged out', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:11:09'),
(45, 2, NULL, 'update_profile', 'Updated own profile details', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:18:03'),
(46, 2, NULL, 'update_staff', 'Updated staff: Dj Cortez', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:19:59'),
(47, 2, NULL, 'create_staff', 'Created staff: 3252435', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:20:33'),
(48, 2, NULL, 'update_staff_status', 'Updated staff status: 3252435 ', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:22:03'),
(49, 2, NULL, 'update_staff_status', 'Updated staff status: 3252435 ', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:22:07'),
(50, 2, NULL, 'create_service', 'Created service: 23', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:31:04'),
(51, 2, NULL, 'update_profile', 'Updated own profile details', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:47:11'),
(52, 2, NULL, 'delete_staff', 'Deleted staff: Dj Cortez', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:47:23'),
(53, 2, NULL, 'update_staff', 'Updated staff: 3252435', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:47:41'),
(54, 2, NULL, 'update_staff', 'Updated staff: 3252435', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:50:43'),
(55, 2, NULL, 'update_staff', 'Updated staff: 3252435', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:50:56'),
(56, 2, NULL, 'update_staff', 'Updated staff: 3252435', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:54:42'),
(57, 2, NULL, 'update_staff', 'Updated staff: 3252435', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:54:50'),
(58, 2, NULL, 'delete_staff', 'Deleted staff: 3252435 ', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 13:54:53'),
(59, 2, NULL, 'delete_job_order', 'Deleted job order #JO001', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 14:04:47'),
(60, 2, NULL, 'logout', 'User logged out', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 14:22:25'),
(61, 2, NULL, 'login', 'Admin logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 14:23:47'),
(62, 2, NULL, 'update_profile', 'Updated own profile details', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 14:24:24'),
(63, 2, NULL, 'update_profile', 'Updated own profile details', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 14:26:49'),
(64, 2, NULL, 'logout', 'User logged out', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 14:28:49'),
(65, 2, NULL, 'login', 'Admin logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 14:28:58'),
(66, 2, NULL, 'create_staff', 'Created staff: service adviser', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 14:30:12'),
(67, 3, NULL, 'login', 'Staff (service_adviser) logged in successfully', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 14:30:50'),
(68, 2, NULL, 'create_job_order', 'Created job order #JO001', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 14:31:07'),
(69, 2, NULL, 'update_job_order_status', 'Updated status for job order #JO001: Pending → Car Washing', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 14:31:14'),
(70, 2, NULL, 'update_job_order_status', 'Updated status for job order #JO001: Car Washing → Completed', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 14:31:15'),
(71, 3, NULL, 'logout', 'User logged out', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 14:31:28'),
(72, 2, NULL, 'delete_job_order', 'Deleted job order #JO001', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 14:32:15'),
(73, 2, NULL, 'delete_staff', 'Deleted staff: service adviser', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 14:41:25'),
(74, 2, NULL, 'login', 'Admin logged in successfully', '138.84.112.52', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '2026-08-09 17:02:28'),
(75, 2, NULL, 'login', 'Admin logged in successfully', '2001:fd8:c826:c200:98bf:203f:7b38:f737', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 17:09:02'),
(76, 2, NULL, 'logout', 'User logged out', '2001:fd8:c826:c200:98bf:203f:7b38:f737', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 17:13:38'),
(77, 2, NULL, 'login', 'Admin logged in successfully', '2001:fd8:c826:c200:98bf:203f:7b38:f737', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 17:13:47'),
(78, 2, NULL, 'update_system_logo', 'Updated system logo settings for Autodok Prime Auto Services', '2001:fd8:c826:c200:98bf:203f:7b38:f737', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 17:19:40'),
(79, 2, NULL, 'update_print_template', 'Updated print template settings for Autodok Prime Auto Services', '2001:fd8:c826:c200:98bf:203f:7b38:f737', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 17:19:55'),
(80, 2, NULL, 'update_system_logo', 'Updated system logo settings for Autodok Prime Auto Services', '2001:fd8:c826:c200:98bf:203f:7b38:f737', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 17:26:04'),
(81, 2, NULL, 'logout', 'User logged out', '2001:fd8:c826:c200:98bf:203f:7b38:f737', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 17:26:14'),
(82, 2, NULL, 'login', 'Admin logged in successfully', '2001:fd8:c826:c200:98bf:203f:7b38:f737', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 17:26:27'),
(83, 2, NULL, 'update_system_logo', 'Updated system logo settings for Autodok Prime Auto Services', '2001:fd8:c826:c200:98bf:203f:7b38:f737', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-09 17:26:58'),
(84, 2, NULL, 'login', 'Admin logged in successfully', '138.84.112.52', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '2026-08-09 17:29:33'),
(85, 2, NULL, 'logout', 'User logged out', '138.84.112.52', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '2026-08-09 17:31:22'),
(86, 2, NULL, 'login', 'Admin logged in successfully', '2001:fd8:c826:c200:d8c5:ebcd:8c40:d9c6', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '2026-08-09 17:38:17'),
(87, 2, NULL, 'login', 'Admin logged in successfully', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5.2 Safari/605.1.15', '2026-08-10 10:01:36'),
(88, 2, NULL, 'logout', 'User logged out', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5.2 Safari/605.1.15', '2026-08-10 10:02:07'),
(89, 2, NULL, 'login', 'Admin logged in successfully', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-10 11:12:49'),
(90, 2, NULL, 'logout', 'User logged out', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-10 11:13:11'),
(91, 2, NULL, 'login', 'Admin logged in successfully', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-10 11:56:48'),
(92, 2, NULL, 'create_staff', 'Created staff: Danilo Guingue Cortez Jr.', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-10 11:59:36'),
(93, 2, NULL, 'logout', 'User logged out', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-10 12:04:06'),
(94, 2, NULL, 'login', 'Admin logged in successfully', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 00:18:56'),
(95, 2, NULL, 'create_service', 'Created service: Oil Filter Replacement', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 00:19:31'),
(96, 2, NULL, 'update_print_template', 'Updated print template settings for Autodok Prime Auto Services', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 00:21:01'),
(97, 2, NULL, 'update_print_template', 'Updated print template settings for Autodok Prime Auto Services', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 00:23:28'),
(98, 2, NULL, 'update_system_logo', 'Updated system logo settings for Autodok Prime Auto Services', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 00:24:00'),
(99, 2, NULL, 'logout', 'User logged out', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 00:24:24'),
(100, 2, NULL, 'login', 'Admin logged in successfully', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 10:24:12'),
(101, 2, NULL, 'update_print_template', 'Updated print template settings for Autodok Prime Auto Services', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 10:25:28'),
(102, 2, NULL, 'update_print_template', 'Updated print template settings for Autodok Prime Auto Services', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 10:25:34'),
(103, 2, NULL, 'update_system_logo', 'Updated system logo settings for Autodok Prime Auto Services', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 10:25:59'),
(104, 2, NULL, 'logout', 'User logged out', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 10:26:29'),
(105, 2, NULL, 'login', 'Admin logged in successfully', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 11:18:15'),
(106, 2, NULL, 'create_staff', 'Created staff: Erin Patricia Martinez', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 11:19:51'),
(107, 2, NULL, 'create_staff', 'Created staff: Lovely Joyce Gambong', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 11:22:26'),
(108, 2, NULL, 'create_staff', 'Created staff: Iloisa Joy P. Mejias', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 11:24:05'),
(109, 2, NULL, 'update_print_template', 'Updated print template settings for Autodok Prime Auto Services', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 11:27:26'),
(110, 2, NULL, 'update_print_template', 'Updated print template settings for Autodok Prime Auto Services', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 11:28:16'),
(111, 2, NULL, 'update_print_template', 'Updated print template settings for Autodok Prime Auto Services', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 11:28:35'),
(112, 2, NULL, 'update_print_template', 'Updated print template settings for Autodok Prime Auto Services', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 11:28:51'),
(113, 2, NULL, 'logout', 'User logged out', '2001:fd8:c826:c200:c554:e74f:284c:6ded', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 11:28:54'),
(114, 0, NULL, 'failed_login', 'Failed login attempt for staff ID: 53468', '2001:fd8:c826:c200:e9a6:9993:1d4:3f41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 11:31:20'),
(115, 6, NULL, 'login', 'Staff (cashier) logged in successfully', '2001:fd8:c826:c200:e9a6:9993:1d4:3f41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 11:31:33'),
(116, 6, NULL, 'update_print_template', 'Updated print template settings for Autodok Prime Auto Services', '2001:fd8:c826:c200:e9a6:9993:1d4:3f41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 11:33:57'),
(117, 6, NULL, 'login', 'Staff (cashier) logged in successfully', '2001:fd8:c826:c200:55e6:6b7d:1715:8db9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 11:42:55'),
(118, 6, NULL, 'create_staff', 'Created staff: Aian P. Alderite', '2001:fd8:c826:c200:55e6:6b7d:1715:8db9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 11:46:14'),
(119, 2, NULL, 'login', 'Admin logged in successfully', '2001:fd8:c826:c200:a15d:b17e:cd1d:1f03', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 11:51:11'),
(120, 6, NULL, 'create_staff', 'Created staff: Nexander M.Gayan', '2001:fd8:c826:c200:55e6:6b7d:1715:8db9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 11:52:42'),
(121, 2, NULL, 'logout', 'User logged out', '2001:fd8:c826:c200:a15d:b17e:cd1d:1f03', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 11:53:34'),
(122, 6, NULL, 'create_staff', 'Created staff: Kineth Pandian', '2001:fd8:c826:c200:55e6:6b7d:1715:8db9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 11:58:18'),
(123, 6, NULL, 'create_staff', 'Created staff: Jerald  E. Changco', '2001:fd8:c826:c200:55e6:6b7d:1715:8db9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 12:04:23'),
(124, 6, NULL, 'create_staff', 'Created staff: John Paul Villamente', '2001:fd8:c826:c200:55e6:6b7d:1715:8db9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 12:07:03'),
(125, 6, NULL, 'create_staff', 'Created staff: Legario Mosaso', '2001:fd8:c826:c200:55e6:6b7d:1715:8db9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 12:26:30'),
(126, 6, NULL, 'create_staff', 'Created staff: Jan Carlo Padios', '2001:fd8:c826:c200:55e6:6b7d:1715:8db9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 12:34:01'),
(127, 6, NULL, 'create_staff', 'Created staff: Artemio Baquirel Jr.', '2001:fd8:c826:c200:55e6:6b7d:1715:8db9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 12:42:50'),
(128, 5, NULL, 'login', 'Staff (cashier) logged in successfully', '2001:fd8:c826:c200:e9a6:9993:1d4:3f41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 13:19:34'),
(129, 5, NULL, 'create_service', 'Created service: CHANGE OIL (LABOR)', '2001:fd8:c826:c200:e9a6:9993:1d4:3f41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 13:20:29'),
(130, 5, NULL, 'create_service', 'Created service: HEAVY PMS (LABOR)', '2001:fd8:c826:c200:e9a6:9993:1d4:3f41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 13:21:50'),
(131, 2, NULL, 'login', 'Admin logged in successfully', '2001:fd8:c826:c200:a15d:b17e:cd1d:1f03', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 13:22:23'),
(132, 2, NULL, 'create_staff', 'Created staff: Gracesilyn Pelvira Chen', '2001:fd8:c826:c200:a15d:b17e:cd1d:1f03', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 13:23:16'),
(133, 5, NULL, 'create_service', 'Created service: REGULAR PMS (LABOR)', '2001:fd8:c826:c200:e9a6:9993:1d4:3f41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 13:23:28'),
(134, 2, NULL, 'logout', 'User logged out', '2001:fd8:c826:c200:a15d:b17e:cd1d:1f03', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 13:24:17'),
(135, 2, NULL, 'login', 'Admin logged in successfully', '2001:fd8:c826:c200:a15d:b17e:cd1d:1f03', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 13:25:50'),
(136, 5, NULL, 'update_service', 'Updated service: REGULAR PMS (LABOR) (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:e9a6:9993:1d4:3f41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 13:26:06'),
(137, 5, NULL, 'update_service', 'Updated service: REGULAR PMS (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:e9a6:9993:1d4:3f41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 13:27:19'),
(138, 5, NULL, 'update_service', 'Updated service: HEAVY PMS (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:e9a6:9993:1d4:3f41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 13:27:28'),
(139, 5, NULL, 'update_service', 'Updated service: CHANGE OIL (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:e9a6:9993:1d4:3f41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 13:27:36'),
(140, 2, NULL, 'logout', 'User logged out', '2001:fd8:c826:c200:a15d:b17e:cd1d:1f03', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-12 13:28:05'),
(141, 6, NULL, 'login', 'Staff (cashier) logged in successfully', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:34:46'),
(142, 6, NULL, 'logout', 'User logged out', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:35:46'),
(143, 10, NULL, 'login', 'Staff (technician) logged in successfully', '110.54.205.202', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36', '2026-08-13 01:40:37'),
(144, 6, NULL, 'login', 'Staff (cashier) logged in successfully', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:41:20'),
(145, 6, NULL, 'create_job_order', 'Created job order #JO001', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:45:49'),
(146, 6, NULL, 'update_job_order_status', 'Updated status for job order #JO001: Pending → Ongoing', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:46:57'),
(147, 6, NULL, 'update_job_order_timer', 'Stop timer for job order #JO001 (elapsed: 16s)', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:47:13'),
(148, 6, NULL, 'update_job_order_timer', 'Start timer for job order #JO001 (elapsed: 16s)', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:47:28'),
(149, 6, NULL, 'update_job_order_timer', 'Stop timer for job order #JO001 (elapsed: 18s)', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:47:30'),
(150, 6, NULL, 'update_job_order_timer', 'Done timer for job order #JO001 (elapsed: 18s)', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:47:32'),
(151, 6, NULL, 'update_job_order_timer', 'Stop timer for job order #JO001 (elapsed: 34s)', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:47:48'),
(152, 6, NULL, 'update_job_order_timer', 'Start timer for job order #JO001 (elapsed: 34s)', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:48:06'),
(153, 10, NULL, 'update_job_order_timer', 'Done timer for job order #JO001 (elapsed: 48s)', '110.54.205.202', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36', '2026-08-13 01:48:20'),
(154, 6, NULL, 'update_job_order_timer', 'Done timer for job order #JO001 (elapsed: 53s)', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:48:25'),
(155, 6, NULL, 'update_job_order_status', 'Updated status for job order #JO001: Under Inspection → Car Washing', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:48:33'),
(156, 6, NULL, 'update_job_order_status', 'Updated status for job order #JO001: Car Washing → Completed', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:48:36'),
(157, 6, NULL, 'update_job_order_status', 'Updated status for job order #JO001: Completed → Released', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:48:41'),
(158, 6, NULL, 'update_job_order_status', 'Updated status for job order #JO001: Released → Returned For Revision', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:48:56'),
(159, 10, NULL, 'update_job_order_timer', 'Done timer for job order #JO001 (elapsed: 74s)', '110.54.205.202', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36', '2026-08-13 01:49:09'),
(160, 6, NULL, 'update_job_order_timer', 'Done timer for job order #JO001 (elapsed: 82s)', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:49:17'),
(161, 6, NULL, 'update_job_order_status', 'Updated status for job order #JO001: Under Inspection → Completed', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:49:22'),
(162, 6, NULL, 'update_job_order_status', 'Updated status for job order #JO001: Completed → Released', '110.54.205.202', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 01:49:27'),
(163, 6, NULL, 'login', 'Staff (cashier) logged in successfully', '2001:fd8:29d4:2001:499d:653a:9954:b22c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 03:49:55'),
(164, 6, NULL, 'update_job_order_status', 'Updated status for job order #JO001: Released → Returned For Revision', '2001:fd8:29d4:2001:499d:653a:9954:b22c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 03:51:27'),
(165, 6, NULL, 'update_job_order_timer', 'Stop timer for job order #JO001 (elapsed: 91s)', '2001:fd8:29d4:2001:499d:653a:9954:b22c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 03:51:31'),
(166, 6, NULL, 'login', 'Staff (cashier) logged in successfully', '2001:fd8:29d4:2001:499d:653a:9954:b22c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 04:32:22'),
(167, 6, NULL, 'update_job_order', 'Updated job order #JO001: Notes: sample → sample for technician; Services/Bundles updated; Products updated', '2001:fd8:29d4:2001:499d:653a:9954:b22c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 04:33:46'),
(168, 10, NULL, 'login', 'Staff (technician) logged in successfully', '2001:fd8:29d4:2001:18cb:40ab:2293:ec2e', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/150.0.0.0 Mobile Safari/537.36', '2026-08-13 04:34:18'),
(169, 6, NULL, 'update_job_order_timer', 'Start timer for job order #JO001 (elapsed: 91s)', '2001:fd8:29d4:2001:499d:653a:9954:b22c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 04:34:32'),
(170, 6, NULL, 'update_job_order_status', 'Updated status for job order #JO001: Returned For Revision → Ongoing', '2001:fd8:29d4:2001:499d:653a:9954:b22c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 04:34:35'),
(171, 6, NULL, 'update_job_order_timer', 'Stop timer for job order #JO001 (elapsed: 109s)', '2001:fd8:29d4:2001:499d:653a:9954:b22c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 04:34:50'),
(172, 6, NULL, 'update_job_order', 'Updated job order #JO001: Notes: sample for technician → sample for technician notes: pls ko check sa blabla; Services/Bundles updated; Products updated', '2001:fd8:29d4:2001:499d:653a:9954:b22c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 04:36:47'),
(173, 12, NULL, 'login', 'Staff (technician) logged in successfully', '2001:fd8:29d4:2001:df04:328c:f156:63b9', 'Mozilla/5.0 (Linux; Android 14; TECNO KL4 Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/150.0.7871.181 Mobile Safari/537.36[FBAN/EMA;FBLC/en_US;FBAV/523.0.0.10.106;FBCX/modulariab;]', '2026-08-13 04:38:04'),
(174, 0, NULL, 'failed_login', 'Failed login attempt for staff ID: 12086', '2405:8d40:4102:91f1:18cb:378c:57e7:2fed', 'Mozilla/5.0 (Linux; Android 10; M2006C3MG Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/150.0.7871.181 Mobile Safari/537.36[FBAN/EMA;FBLC/en_US;FBAV/522.0.0.5.107;FBCX/modulariab;]', '2026-08-13 04:38:24'),
(175, 0, NULL, 'failed_login', 'Failed login attempt for staff ID: 12086', '2405:8d40:4102:91f1:18cb:378c:57e7:2fed', 'Mozilla/5.0 (Linux; Android 10; M2006C3MG Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/150.0.7871.181 Mobile Safari/537.36[FBAN/EMA;FBLC/en_US;FBAV/522.0.0.5.107;FBCX/modulariab;]', '2026-08-13 04:39:10'),
(176, 8, NULL, 'login', 'Staff (service_adviser) logged in successfully', '64.226.60.132', 'Mozilla/5.0 (Linux; Android 8.1.0; INE-LX2 Build/HUAWEIINE-LX2; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/105.0.5195.77 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/573.0.0.44.88;]', '2026-08-13 04:39:15'),
(177, 10, NULL, 'login', 'Staff (technician) logged in successfully', '2405:8d40:4102:91f1:18cb:378c:57e7:2fed', 'Mozilla/5.0 (Linux; Android 10; M2006C3MG Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/150.0.7871.181 Mobile Safari/537.36[FBAN/EMA;FBLC/en_US;FBAV/522.0.0.5.107;FBCX/modulariab;]', '2026-08-13 04:39:49'),
(178, 8, NULL, 'login', 'Staff (service_adviser) logged in successfully', '64.226.60.132', 'Mozilla/5.0 (Linux; Android 8.1.0; INE-LX2 Build/HUAWEIINE-LX2; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/105.0.5195.77 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/573.0.0.44.88;]', '2026-08-13 04:40:05'),
(179, 11, NULL, 'login', 'Staff (technician) logged in successfully', '2405:8d40:4113:2df5:44b0:45c2:2543:32d', 'Mozilla/5.0 (Linux; Android 9; SM-J610G Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/138.0.7204.180 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/573.0.0.44.88;]', '2026-08-13 04:40:43'),
(180, 12, NULL, 'login', 'Staff (technician) logged in successfully', '2001:fd8:29d4:2001:df04:328c:f156:63b9', 'Mozilla/5.0 (Linux; Android 14; TECNO KL4 Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/150.0.7871.181 Mobile Safari/537.36[FBAN/EMA;FBLC/en_US;FBAV/523.0.0.10.106;FBCX/modulariab;]', '2026-08-13 04:41:29'),
(181, 12, NULL, 'login', 'Staff (technician) logged in successfully', '2001:fd8:29d4:2001:df04:328c:f156:63b9', 'Mozilla/5.0 (Linux; Android 14; TECNO KL4 Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/150.0.7871.181 Mobile Safari/537.36[FBAN/EMA;FBLC/en_US;FBAV/523.0.0.10.106;FBCX/modulariab;]', '2026-08-13 04:42:21'),
(182, 0, NULL, 'failed_login', 'Failed login attempt for staff ID: 97893', '175.158.238.92', 'Mozilla/5.0 (Linux; Android 13; V2254 Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/148.0.7778.178 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/565.0.0.43.88;]', '2026-08-13 04:42:44'),
(183, 14, NULL, 'login', 'Staff (technician) logged in successfully', '2405:8d40:4113:2df5:d880:46ff:fee3:93a2', 'Mozilla/5.0 (Linux; Android 14; RMX3938 Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/151.0.7922.83 Mobile Safari/537.36[FBAN/EMA;FBLC/en_US;FBAV/522.0.0.5.107;FBCX/modulariab;]', '2026-08-13 04:43:04'),
(184, 0, NULL, 'failed_login', 'Failed login attempt for staff ID: 97893', '175.158.238.92', 'Mozilla/5.0 (Linux; Android 13; V2254 Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/148.0.7778.178 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/565.0.0.43.88;]', '2026-08-13 04:44:27'),
(185, 0, NULL, 'failed_login', 'Failed login attempt for staff ID: 97893', '175.158.238.92', 'Mozilla/5.0 (Linux; Android 13; V2254 Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/148.0.7778.178 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/565.0.0.43.88;]', '2026-08-13 04:45:24'),
(186, 13, NULL, 'login', 'Staff (technician) logged in successfully', '175.158.238.92', 'Mozilla/5.0 (Linux; Android 13; V2254 Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/148.0.7778.178 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/565.0.0.43.88;]', '2026-08-13 04:45:52'),
(187, 11, NULL, 'update_job_order_timer', 'Done timer for job order #JO001 (elapsed: 109s)', '2405:8d40:4113:2df5:44b0:45c2:2543:32d', 'Mozilla/5.0 (Linux; Android 9; SM-J610G Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/138.0.7204.180 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/573.0.0.44.88;]', '2026-08-13 04:45:56'),
(188, 11, NULL, 'update_job_order_timer', 'Done timer for job order #JO001 (elapsed: 118s)', '2405:8d40:4113:2df5:44b0:45c2:2543:32d', 'Mozilla/5.0 (Linux; Android 9; SM-J610G Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/138.0.7204.180 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/573.0.0.44.88;]', '2026-08-13 04:46:05'),
(189, 11, NULL, 'update_job_order_timer', 'Done timer for job order #JO001 (elapsed: 123s)', '2405:8d40:4113:2df5:44b0:45c2:2543:32d', 'Mozilla/5.0 (Linux; Android 9; SM-J610G Build/PPR1.180610.011; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/138.0.7204.180 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/573.0.0.44.88;]', '2026-08-13 04:46:10'),
(190, 10, NULL, 'login', 'Staff (technician) logged in successfully', '2405:8d40:4102:91f1:18cb:378c:57e7:2fed', 'Mozilla/5.0 (Linux; Android 10; M2006C3MG Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/150.0.7871.181 Mobile Safari/537.36[FBAN/EMA;FBLC/en_US;FBAV/522.0.0.5.107;FBCX/modulariab;]', '2026-08-13 04:48:26'),
(191, 10, NULL, 'update_job_order_timer', 'Done timer for job order #JO001 (elapsed: 272s)', '2405:8d40:4102:91f1:18cb:378c:57e7:2fed', 'Mozilla/5.0 (Linux; Android 10; M2006C3MG Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/150.0.7871.181 Mobile Safari/537.36[FBAN/EMA;FBLC/en_US;FBAV/522.0.0.5.107;FBCX/modulariab;]', '2026-08-13 04:48:39'),
(192, 10, NULL, 'update_job_order_timer', 'Done timer for job order #JO001 (elapsed: 281s)', '2405:8d40:4102:91f1:18cb:378c:57e7:2fed', 'Mozilla/5.0 (Linux; Android 10; M2006C3MG Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/150.0.7871.181 Mobile Safari/537.36[FBAN/EMA;FBLC/en_US;FBAV/522.0.0.5.107;FBCX/modulariab;]', '2026-08-13 04:48:48'),
(193, 10, NULL, 'update_job_order_timer', 'Done timer for job order #JO001 (elapsed: 285s)', '2405:8d40:4102:91f1:18cb:378c:57e7:2fed', 'Mozilla/5.0 (Linux; Android 10; M2006C3MG Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/150.0.7871.181 Mobile Safari/537.36[FBAN/EMA;FBLC/en_US;FBAV/522.0.0.5.107;FBCX/modulariab;]', '2026-08-13 04:48:52'),
(194, 10, NULL, 'update_job_order_timer', 'Done timer for job order #JO001 (elapsed: 286s)', '2405:8d40:4102:91f1:18cb:378c:57e7:2fed', 'Mozilla/5.0 (Linux; Android 10; M2006C3MG Build/QP1A.190711.020; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/150.0.7871.181 Mobile Safari/537.36[FBAN/EMA;FBLC/en_US;FBAV/522.0.0.5.107;FBCX/modulariab;]', '2026-08-13 04:48:53'),
(195, 6, NULL, 'update_job_order_status', 'Updated status for job order #JO001: Under Inspection → Released', '2001:fd8:29d4:2001:499d:653a:9954:b22c', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 04:50:23'),
(196, 5, NULL, 'login', 'Staff (cashier) logged in successfully', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 06:24:32'),
(197, 5, NULL, 'update_service', 'Updated service: FLUSHING BRAKE FLUID (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 06:26:20'),
(198, 5, NULL, 'create_service', 'Created service: CHARGE FREON', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 06:27:04'),
(199, 5, NULL, 'create_service', 'Created service: RADIATOR CLEANING', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 06:27:27'),
(200, 5, NULL, 'create_service', 'Created service: REPLACE DRIVE BELT', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 06:28:04'),
(201, 5, NULL, 'create_service', 'Created service: REPLACE DRIVE BELT (FORD)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 06:28:35'),
(202, 5, NULL, 'update_service', 'Updated service: REPLACE DRIVE BELT (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 06:28:49'),
(203, 5, NULL, 'create_service', 'Created service: THROTTLE BODY CLEANING', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 06:29:13'),
(204, 5, NULL, 'create_service', 'Created service: REPLACCE AUXILIARY FAN MOTOR', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 06:29:50'),
(205, 5, NULL, 'update_service', 'Updated service: REPLACE AUXILIARY FAN MOTOR (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 06:30:10'),
(206, 5, NULL, 'create_service', 'Created service: PULL OUT/INSTALL FRT. LOWER SUSPENSION ASSY', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 06:30:32'),
(207, 5, NULL, 'update_service', 'Updated service: PULL OUT/INSTALL FRT. LOWER SUSPENSION ASSY RH/LH (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 06:30:50'),
(208, 5, NULL, 'login', 'Staff (cashier) logged in successfully', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 07:53:56'),
(209, 5, NULL, 'create_service', 'Created service: FUEL INJECTOR CLEANING (LABOR)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 07:56:49');
INSERT INTO `activity_logs` (`id`, `user_id`, `staff_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`) VALUES
(210, 5, NULL, 'create_service', 'Created service: WHEEL ALIGNMENT - TOE IN/TOE OUT', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:46:49'),
(211, 5, NULL, 'create_service', 'Created service: WHEEL ALIGNMENT - COMPLETE', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:47:04'),
(212, 5, NULL, 'create_service', 'Created service: STEERING RACK REPAIR - PULL OUT/INSTALL', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:49:31'),
(213, 5, NULL, 'add_product', 'Added product: GTX AIR FILTER [PRD01]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:52:32'),
(214, 5, NULL, 'add_product', 'Added product: RELAY [PRD02]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:53:18'),
(215, 5, NULL, 'add_product', 'Added product: AIR FILTER (HILUX, FORTUNER) [PRD03]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:53:50'),
(216, 5, NULL, 'add_product', 'Added product: AIR FILTER (MULTI-VEHICLE) [PRD04]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:54:29'),
(217, 5, NULL, 'add_product', 'Added product: AIR FILTER (NAVARA) [PRD05]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:55:03'),
(218, 5, NULL, 'add_product', 'Added product: ATF J4 (MIRAGE) [PRD06]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:56:04'),
(219, 5, NULL, 'add_product', 'Added product: ATF LV D111/ STEERING FLUID [PRD07]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:56:47'),
(220, 5, NULL, 'add_product', 'Added product: ATF LV MV (TOYOTA) [PRD08]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:57:11'),
(221, 5, NULL, 'add_product', 'Added product: ATF MAXLIFE DEX [PRD09]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:57:31'),
(222, 5, NULL, 'add_product', 'Added product: 950 [PRD10]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:57:52'),
(223, 5, NULL, 'edit_product', 'Updated product: ATF PETRON (HTP) (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:58:38'),
(224, 5, NULL, 'stock_in', 'Stock in: ATF LV D111/ STEERING FLUID (+1)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:59:04'),
(225, 5, NULL, 'stock_in', 'Stock in: ATF LV D111/ STEERING FLUID (+19)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:59:13'),
(226, 5, NULL, 'stock_in', 'Stock in: ATF LV MV (TOYOTA) (+20)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:59:23'),
(227, 5, NULL, 'stock_in', 'Stock in: ATF MAXLIFE DEX (+20)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:59:32'),
(228, 5, NULL, 'stock_in', 'Stock in: ATF PETRON (HTP) (+20)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 08:59:40'),
(229, 5, NULL, 'add_product', 'Added product: ATF PREMIUM SAE-20 [PRD11]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:00:17'),
(230, 5, NULL, 'stock_in', 'Stock in: ATF PREMIUM SAE-20 (+20)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:01:17'),
(231, 5, NULL, 'edit_product', 'Updated product: AIR FILTER (TRANSFORMER) (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:04:23'),
(232, 5, NULL, 'edit_product', 'Updated product: ENGINE OIL 5W-30 (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:05:32'),
(233, 5, NULL, 'add_product', 'Added product: ENGINE OIL 5W-40 [PRD12]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:06:02'),
(234, 5, NULL, 'stock_in', 'Stock in: ENGINE OIL 5W-40 (+20)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:06:23'),
(235, 5, NULL, 'edit_product', 'Updated product: PETRON ATF SAE-20 (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:07:42'),
(236, 5, NULL, 'edit_product', 'Updated product: ATF LV MV (STOCKS) (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:08:13'),
(237, 5, NULL, 'edit_product', 'Updated product: OIL FILTER 415 (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:08:57'),
(238, 5, NULL, 'edit_product', 'Updated product: OIL FITER 110 (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:09:21'),
(239, 5, NULL, 'edit_product', 'Updated product: OIL FILTER 111 (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:09:59'),
(240, 5, NULL, 'edit_product', 'Updated product: BRAKE CLEANER (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:10:46'),
(241, 5, NULL, 'edit_product', 'Updated product: FRONT HUB BEARING (MIRAGE) (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:11:13'),
(242, 5, NULL, 'add_product', 'Added product: REAR HUB BEARING (MIRAGE [PRD13]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:11:27'),
(243, 5, NULL, 'edit_product', 'Updated product: FRONT HUB BEARING (MIRAGE) (status ACTIVE -> ACTIVE)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:11:43'),
(244, 5, NULL, 'stock_in', 'Stock in: REAR HUB BEARING (MIRAGE (+10)', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:11:55'),
(245, 5, NULL, 'add_product', 'Added product: PENETRATING [PRD14]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:12:26'),
(246, 5, NULL, 'add_product', 'Added product: CARB CLEANER [PRD15]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:12:35'),
(247, 5, NULL, 'add_product', 'Added product: GEAR OIL [PRD16]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:12:42'),
(248, 5, NULL, 'add_product', 'Added product: GREASE [PRD17]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:12:52'),
(249, 5, NULL, 'add_product', 'Added product: COOLANT BLUE [PRD18]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:13:00'),
(250, 5, NULL, 'add_product', 'Added product: COOLANT GREEN [PRD19]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:13:06'),
(251, 5, NULL, 'add_product', 'Added product: BATTERY [PRD20]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:13:15'),
(252, 5, NULL, 'add_product', 'Added product: BRAKE PADS (MIRAGE) [PRD21]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:13:22'),
(253, 5, NULL, 'add_product', 'Added product: STAB. LINK (TRANSFORMER) [PRD22]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:13:28'),
(254, 5, NULL, 'add_product', 'Added product: STAB. CLAMP (TRANSFORMER) [PRD23]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:13:35'),
(255, 5, NULL, 'add_product', 'Added product: VALVE COVER GASKET (TRANSFORMER) [PRD24]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:13:45'),
(256, 5, NULL, 'add_product', 'Added product: OIL FILTER (GEELY COOLRAY) [PRD25]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:14:00'),
(257, 5, NULL, 'add_product', 'Added product: FLUSHING [PRD26]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:14:08'),
(258, 5, NULL, 'add_product', 'Added product: BRAKE FLUID DOT-3 [PRD27]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:16:56'),
(259, 5, NULL, 'add_product', 'Added product: ROBERLO SILTEX 8000 [PRD28]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:17:03'),
(260, 5, NULL, 'add_product', 'Added product: CABIN FILTER (87139-0N010) [PRD29]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:17:10'),
(261, 5, NULL, 'add_product', 'Added product: WIRE [PRD30]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:17:17'),
(262, 5, NULL, 'add_product', 'Added product: STAB. CLAMP (TRANSFORMER) [PRD31]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:17:32'),
(263, 5, NULL, 'add_product', 'Added product: BRAKE PADS (MIRAGE) [PRD32]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:17:40'),
(264, 5, NULL, 'add_product', 'Added product: OIL FILTER-NAVARA 231 [PRD33]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:17:58'),
(265, 5, NULL, 'add_product', 'Added product: GEAR OIL -PETRON NEXUS [PRD34]', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:18:07'),
(266, 5, NULL, 'update_profile', 'Updated own profile details', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:23:39'),
(267, 5, NULL, 'logout', 'User logged out', '2001:fd8:c826:c200:2953:459:c8e6:5ca9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:42:37'),
(268, 2, NULL, 'login', 'Admin logged in successfully', '2001:fd8:c826:c200:1c25:f47:c974:ec27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:57:56'),
(269, 2, NULL, 'logout', 'User logged out', '2001:fd8:c826:c200:1c25:f47:c974:ec27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-13 09:58:34'),
(270, 2, NULL, 'login', 'Admin logged in successfully', '138.84.112.52', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '2026-08-14 13:17:33'),
(271, 2, NULL, 'delete_job_order', 'Deleted job order #JO001', '138.84.112.52', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '2026-08-14 13:17:52'),
(272, 2, NULL, 'logout', 'User logged out', '138.84.112.52', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '2026-08-14 13:21:01'),
(273, 0, NULL, 'failed_login', 'Failed login attempt for ID: 43700', '2001:fd8:28bb:a558:8523:4c3a:3cbe:ce40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-15 08:38:51'),
(274, 6, NULL, 'login', 'Staff (cashier) logged in successfully', '2001:fd8:28bb:a558:8523:4c3a:3cbe:ce40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-15 08:40:07'),
(275, 6, NULL, 'login', 'Staff (cashier) logged in successfully', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:13:38'),
(276, 6, NULL, 'update_service', 'Updated service: REGULAR PMS (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:15:42'),
(277, 6, NULL, 'update_service', 'Updated service: REGULAR PMS (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:17:26'),
(278, 6, NULL, 'update_service', 'Updated service: REGULAR PMS (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:22:27'),
(279, 6, NULL, 'update_service', 'Updated service: HEAVY PMS (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:26:21'),
(280, 6, NULL, 'update_service', 'Updated service: HEAVY PMS (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:35:21'),
(281, 6, NULL, 'create_service', 'Created service: LIGHT PMS', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:37:34'),
(282, 6, NULL, 'edit_product', 'Updated product: ENGINE OIL 5W-30 (status ACTIVE -> INACTIVE)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:41:37'),
(283, 6, NULL, 'edit_product', 'Updated product: ENGINE OIL 5W-30 (status INACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:41:50'),
(284, 6, NULL, 'stock_out', 'Stock out: ENGINE OIL 5W-30 (-20)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:43:33'),
(285, 6, NULL, 'stock_out', 'Stock out: ENGINE OIL 5W-40 (-11)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:43:57'),
(286, 6, NULL, 'stock_out', 'Stock out: OIL FILTER 415 (-10)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:44:22'),
(287, 6, NULL, 'stock_out', 'Stock out: OIL FITER 110 (-10)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:44:49'),
(288, 6, NULL, 'stock_out', 'Stock out: BRAKE CLEANER (-17)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:45:34'),
(289, 6, NULL, 'stock_in', 'Stock in: COOLANT GREEN (+4)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:46:42'),
(290, 6, NULL, 'stock_out', 'Stock out: ATF LV MV (STOCKS) (-19)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:47:19'),
(291, 6, NULL, 'add_product', 'Added product: ATF SAE-20 [PRD35]', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:49:49'),
(292, 6, NULL, 'edit_product', 'Updated product: ATF LV MV (STOCKS) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:50:06'),
(293, 6, NULL, 'edit_product', 'Updated product: ATF LV MV (STOCKS) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:50:28'),
(294, 6, NULL, 'edit_product', 'Updated product: ATF SAE-20 (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:50:36'),
(295, 6, NULL, 'edit_product', 'Updated product: BRAKE CLEANER (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:50:46'),
(296, 6, NULL, 'edit_product', 'Updated product: BRAKE FLUID DOT-3 (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:51:27'),
(297, 6, NULL, 'stock_in', 'Stock in: BRAKE FLUID DOT-3 (+9)', '2001:fd8:28bb:a558:502:84c9:d8e:64b0', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 01:51:40'),
(298, 6, NULL, 'edit_product', 'Updated product: AIR FILTER (MULTI-VEHICLE) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:06:09'),
(299, 6, NULL, 'stock_out', 'Stock out: AIR FILTER (MULTI-VEHICLE) (-20)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:06:18'),
(300, 6, NULL, 'edit_product', 'Updated product: AIR FILTER (TRANSFORMER) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:07:30'),
(301, 6, NULL, 'stock_out', 'Stock out: AIR FILTER (TRANSFORMER) (-20)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:07:39'),
(302, 6, NULL, 'edit_product', 'Updated product: ATF LV MV (STOCKS) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:08:17'),
(303, 6, NULL, 'edit_product', 'Updated product: ATF SAE-20 (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:08:35'),
(304, 6, NULL, 'edit_product', 'Updated product: BATTERY (IMARFLEX) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:12:52'),
(305, 6, NULL, 'edit_product', 'Updated product: BRAKE CLEANER (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:14:57'),
(306, 6, NULL, 'edit_product', 'Updated product: BRAKE FLUID DOT-3 (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:15:46'),
(307, 6, NULL, 'stock_out', 'Stock out: BRAKE FLUID DOT-3 (-1)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:15:57'),
(308, 6, NULL, 'edit_product', 'Updated product: BRAKE CLEANER (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:16:04'),
(309, 6, NULL, 'edit_product', 'Updated product: BRAKE PADS (MIRAGE) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:17:43'),
(310, 6, NULL, 'edit_product', 'Updated product: BRAKE PADS (TRANSORMER) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:18:11'),
(311, 6, NULL, 'edit_product', 'Updated product: CABIN FILTER (87139-0N010) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:19:12'),
(312, 6, NULL, 'edit_product', 'Updated product: THROTTLE/CARB CLEANER (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:31:36'),
(313, 6, NULL, 'edit_product', 'Updated product: COOLANT BLUE (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:33:38'),
(314, 6, NULL, 'edit_product', 'Updated product: COOLANT GREEN (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:34:06'),
(315, 6, NULL, 'edit_product', 'Updated product: COOLANT GREEN (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:34:25'),
(316, 6, NULL, 'edit_product', 'Updated product: COOLANT BLUE (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:34:38'),
(317, 6, NULL, 'edit_product', 'Updated product: ENGINE OIL 5W-30 (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:35:04'),
(318, 6, NULL, 'edit_product', 'Updated product: ENGINE OIL 5W-40 (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:35:19'),
(319, 6, NULL, 'edit_product', 'Updated product: FLUSHING (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:37:21'),
(320, 6, NULL, 'stock_in', 'Stock in: FRONT HUB BEARING (MIRAGE) (+1)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:37:58'),
(321, 6, NULL, 'stock_out', 'Stock out: FRONT HUB BEARING (MIRAGE) (-20)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:38:07'),
(322, 6, NULL, 'edit_product', 'Updated product: FRONT HUB BEARING (MIRAGE) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:38:23'),
(323, 6, NULL, 'edit_product', 'Updated product: ATF LV MV (STOCKS) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:39:01'),
(324, 6, NULL, 'edit_product', 'Updated product: ATF SAE-20 (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:39:13'),
(325, 6, NULL, 'edit_product', 'Updated product: GEAR OIL -PETRON NEXUS (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:41:06'),
(326, 6, NULL, 'stock_in', 'Stock in: GEAR OIL -PETRON NEXUS (+1)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:41:13'),
(327, 6, NULL, 'edit_product', 'Updated product: GEAR OIL (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:41:35'),
(328, 6, NULL, 'edit_product', 'Updated product: OIL FILTER 111 (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:43:47'),
(329, 6, NULL, 'stock_out', 'Stock out: OIL FILTER 111 (-18)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:44:03'),
(330, 6, NULL, 'stock_in', 'Stock in: OIL FILTER 111 (+5)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:44:32'),
(331, 6, NULL, 'edit_product', 'Updated product: OIL FILTER 415 (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:45:17'),
(332, 6, NULL, 'edit_product', 'Updated product: OIL FILTER 111 (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:45:29'),
(333, 6, NULL, 'stock_in', 'Stock in: OIL FILTER-NAVARA 231 (+1)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:46:39'),
(334, 6, NULL, 'edit_product', 'Updated product: OIL FILTER-NAVARA 231 (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:47:43'),
(335, 6, NULL, 'edit_product', 'Updated product: OIL FITER 110 (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:48:59'),
(336, 6, NULL, 'stock_in', 'Stock in: PENETRATING (+3)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:49:21'),
(337, 6, NULL, 'edit_product', 'Updated product: PENETRATING (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:51:01'),
(338, 6, NULL, 'edit_product', 'Updated product: PETRON ATF SAE-20 (status ACTIVE -> INACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:51:23'),
(339, 6, NULL, 'edit_product', 'Updated product: REAR HUB BEARING (MIRAGE) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:52:23'),
(340, 6, NULL, 'stock_out', 'Stock out: REAR HUB BEARING (MIRAGE) (-8)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:52:34'),
(341, 6, NULL, 'stock_in', 'Stock in: ROBERLO SILTEX 8000 (+4)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:54:22'),
(342, 6, NULL, 'edit_product', 'Updated product: ROBERLO SILTEX 8000 (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:55:15'),
(343, 6, NULL, 'stock_in', 'Stock in: STAB. CLAMP (TRANSFORMER) (+1)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:55:44'),
(344, 6, NULL, 'edit_product', 'Updated product: STAB. LINK (TRANSFORMER) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:56:30'),
(345, 6, NULL, 'stock_in', 'Stock in: STAB. LINK (TRANSFORMER) (+3)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:56:57'),
(346, 6, NULL, 'edit_product', 'Updated product: STAB. CLAMP (TRANSFORMER) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:57:12'),
(347, 6, NULL, 'edit_product', 'Updated product: STAB. LINK (TRANSFORMER) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:57:24'),
(348, 6, NULL, 'edit_product', 'Updated product: STAB. LINK (TRANSFORMER) (status ACTIVE -> INACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:57:45'),
(349, 6, NULL, 'stock_in', 'Stock in: THROTTLE/CARB CLEANER (+3)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:58:20'),
(350, 6, NULL, 'edit_product', 'Updated product: VALVE COVER GASKET (TRANSFORMER) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:59:22'),
(351, 6, NULL, 'edit_product', 'Updated product: WIRE (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 02:59:58'),
(352, 6, NULL, 'create_service', 'Created service: AIRCON CLEANING (SINGLE EVAPORATOR)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:18:12'),
(353, 6, NULL, 'update_service', 'Updated service: AIRCON CLEANING (SINGLE EVAPORATOR) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:18:38'),
(354, 6, NULL, 'create_service', 'Created service: AIRCON CLEANING (DUAL EVAPORATOR)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:19:12'),
(355, 6, NULL, 'update_service', 'Updated service: AIRCON CLEANING (DUAL EVAPORATOR) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:19:26'),
(356, 6, NULL, 'update_service', 'Updated service: CHANGE OIL (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:19:39'),
(357, 6, NULL, 'update_service', 'Updated service: CHANGE OIL (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:21:28'),
(358, 6, NULL, 'create_service', 'Created service: EGR, INTAKE AND TURBO CLEANING', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:22:13'),
(359, 6, NULL, 'create_service', 'Created service: EGR AND INTAKE CLEANING', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:22:59'),
(360, 6, NULL, 'create_service', 'Created service: TURBO CLEANING', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:23:33'),
(361, 6, NULL, 'create_service', 'Created service: EGR, INTAKE, AND TURBO CLEANING', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:24:26'),
(362, 6, NULL, 'create_service', 'Created service: CARWASH', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:25:02'),
(363, 6, NULL, 'update_service', 'Updated service: WHEEL ALIGNMENT (COMPLETE) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:25:35'),
(364, 6, NULL, 'update_service', 'Updated service: WHEEL ALIGNMENT (TOE IN/TOE OUT) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:25:55'),
(365, 6, NULL, 'update_service', 'Updated service: WHEEL ALIGNMENT (TOE IN/TOE OUT) (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:26:03'),
(366, 6, NULL, 'create_service', 'Created service: BRAKE CLEANING', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:27:21'),
(367, 6, NULL, 'update_service', 'Updated service: FUEL INJECTOR CLEANING (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:28:19'),
(368, 6, NULL, 'create_service', 'Created service: DRIVE BELT REPLACEMENT', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:30:05'),
(369, 6, NULL, 'create_service', 'Created service: THROTTLE BODY CLEANING', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:30:35'),
(370, 6, NULL, 'create_service', 'Created service: REPLACE AUX. FAN MOTOR', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:31:12'),
(371, 6, NULL, 'create_service', 'Created service: PULL OUT / INSTALL FRONT LOWER SUSP. ASSY (RH/LH)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:32:13'),
(372, 6, NULL, 'create_service', 'Created service: REPLACE AIR FILTER AND CABIN FILTER', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:33:06'),
(373, 6, NULL, 'create_service', 'Created service: RADIATOR CLEANING', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:33:31'),
(374, 6, NULL, 'create_service', 'Created service: RESCUE', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:34:07'),
(375, 6, NULL, 'update_service', 'Updated service: RESCUE (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:34:42'),
(376, 6, NULL, 'create_service', 'Created service: TOWING', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:35:05'),
(377, 6, NULL, 'update_service', 'Updated service: CHANGE/FLUSH BRAKE FLUID (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:36:55'),
(378, 6, NULL, 'update_service', 'Updated service: EGR AND INTAKE CLEANING (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:37:26'),
(379, 6, NULL, 'update_service', 'Updated service: EGR AND INTAKE CLEANING (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:37:41'),
(380, 6, NULL, 'update_service', 'Updated service: STEERING RACK REPAIR - PULL OUT/INSTALL (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:38:11'),
(381, 6, NULL, 'create_service', 'Created service: TIE ROD REPLACEMENT', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:38:40'),
(382, 6, NULL, 'create_service', 'Created service: WHEEL BALANCING', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:39:36'),
(383, 6, NULL, 'create_service', 'Created service: CHECK/CORRECT LEAK COMING INSIDE', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:40:15'),
(384, 6, NULL, 'create_service', 'Created service: PULL OUT CAR MATTING (CLEAN AND DRY)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:40:52'),
(385, 6, NULL, 'create_service', 'Created service: OXYGEN SENSOR CLEANING', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:41:27'),
(386, 6, NULL, 'update_service', 'Updated service: REPLACE SPARK PLUG (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:42:13'),
(387, 6, NULL, 'create_service', 'Created service: REFACE ROTO DISC (BOTH SIDES) - SEDAN', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:43:07'),
(388, 6, NULL, 'create_service', 'Created service: REFACE ROTO DISC (BOTH SIDES) - PICK UP, SUV', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:43:33'),
(389, 6, NULL, 'update_service', 'Updated service: REFACE ROTOR DISC (BOTH SIDES) - PICK UP, SUV (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:43:45'),
(390, 6, NULL, 'update_service', 'Updated service: REFACE ROTOR DISC (BOTH SIDES) - SEDAN (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:43:58'),
(391, 6, NULL, 'create_service', 'Created service: REPLACE LOWER BALL JOINT (BOTH SIDES)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:44:23'),
(392, 6, NULL, 'update_service', 'Updated service: REPLACE SPARK PLUG (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:44:52'),
(393, 6, NULL, 'update_service', 'Updated service: LIGHT PMS GAS (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:56:28'),
(394, 6, NULL, 'update_service', 'Updated service: LIGHT PMS GAS (status ACTIVE -> ACTIVE)', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 03:59:12'),
(395, 6, NULL, 'create_service', 'Created service: LIGHT PMS DIESEL', '2001:fd8:28bb:a558:6cae:748f:7e8d:e483', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 04:00:51'),
(396, 0, NULL, 'failed_login', 'Failed login attempt for ID: 00000', '45.64.83.197', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 04:25:46'),
(397, 2, NULL, 'login', 'Admin logged in successfully', '45.64.83.197', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 04:25:53'),
(398, 2, NULL, 'logout', 'User logged out', '45.64.83.197', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', '2026-08-17 04:26:30'),
(399, 2, NULL, 'login', 'Admin logged in successfully', '45.64.83.197', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5.2 Safari/605.1.15', '2026-08-19 04:38:09'),
(400, 2, NULL, 'logout', 'User logged out', '45.64.83.197', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5.2 Safari/605.1.15', '2026-08-19 04:50:39'),
(401, 2, NULL, 'login', 'Admin logged in successfully', '2001:fd8:c826:c200:49c7:e8ce:7237:1c30', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5.2 Safari/605.1.15', '2026-08-20 02:24:01');
INSERT INTO `activity_logs` (`id`, `user_id`, `staff_id`, `action`, `description`, `ip_address`, `user_agent`, `created_at`) VALUES
(402, 2, NULL, 'logout', 'User logged out', '2001:fd8:c826:c200:49c7:e8ce:7237:1c30', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5.2 Safari/605.1.15', '2026-08-20 02:26:10'),
(403, 2, NULL, 'login', 'Admin logged in successfully', '2001:fd8:c826:c200:49c7:e8ce:7237:1c30', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5.2 Safari/605.1.15', '2026-08-20 02:55:09'),
(404, 2, NULL, 'logout', 'User logged out', '2001:fd8:c826:c200:49c7:e8ce:7237:1c30', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5.2 Safari/605.1.15', '2026-08-20 02:55:32'),
(405, 2, NULL, 'login', 'Admin logged in successfully', '45.64.83.197', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5.2 Safari/605.1.15', '2026-08-20 06:10:43'),
(406, 2, NULL, 'logout', 'User logged out', '45.64.83.197', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.5.2 Safari/605.1.15', '2026-08-20 06:10:55');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time DEFAULT NULL,
  `photo_in` varchar(255) DEFAULT NULL,
  `photo_out` varchar(255) DEFAULT NULL,
  `status` enum('present','late','absent','on_leave') NOT NULL DEFAULT 'present',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundle_products`
--

CREATE TABLE `bundle_products` (
  `id` int(11) NOT NULL,
  `bundle_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundle_services`
--

CREATE TABLE `bundle_services` (
  `id` int(11) NOT NULL,
  `bundle_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `csrf_tokens`
--

CREATE TABLE `csrf_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(64) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `customer_code` varchar(20) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_code`, `full_name`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'CUST-2026-0001', 'Dj Cortez', '343245234', 'owwkxi@gmail.com', NULL, '2026-08-09 13:00:00', '2026-08-09 13:00:00'),
(2, 'CUST-2026-0002', 'Dj Cortez', '324234', 'owwkxi@gmail.com', NULL, '2026-08-09 13:00:23', '2026-08-09 13:00:23'),
(3, 'CUST-2026-0003', 'Dj Cortez', '3425234', 'owwkxi@gmail.com', NULL, '2026-08-09 13:10:32', '2026-08-09 13:10:32'),
(4, 'CUST-2026-0004', 'Dj Cortez', '243242', 'owwkxi@gmail.com', NULL, '2026-08-09 14:31:06', '2026-08-09 14:31:06'),
(5, 'CUST-2026-0005', 'sample', '0922', NULL, NULL, '2026-08-13 01:45:49', '2026-08-13 01:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_transactions`
--

CREATE TABLE `inventory_transactions` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `transaction_type` enum('stock_in','stock_out','adjustment','return') NOT NULL,
  `quantity` int(11) NOT NULL,
  `reference_type` varchar(50) DEFAULT NULL COMMENT 'job_order, purchase_order, etc',
  `reference_id` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_transactions`
--

INSERT INTO `inventory_transactions` (`id`, `product_id`, `transaction_type`, `quantity`, `reference_type`, `reference_id`, `notes`, `created_by`, `created_at`) VALUES
(1, 8, 'stock_in', 1, NULL, NULL, '', 5, '2026-08-13 08:59:04'),
(2, 8, 'stock_in', 19, NULL, NULL, '', 5, '2026-08-13 08:59:13'),
(3, 9, 'stock_in', 20, NULL, NULL, '', 5, '2026-08-13 08:59:23'),
(4, 10, 'stock_in', 20, NULL, NULL, '', 5, '2026-08-13 08:59:32'),
(5, 11, 'stock_in', 20, NULL, NULL, '', 5, '2026-08-13 08:59:40'),
(6, 12, 'stock_in', 20, NULL, NULL, '', 5, '2026-08-13 09:01:17'),
(7, 13, 'stock_in', 20, NULL, NULL, '', 5, '2026-08-13 09:06:23'),
(8, 14, 'stock_in', 10, NULL, NULL, '', 5, '2026-08-13 09:11:55'),
(9, 6, 'stock_out', 20, NULL, NULL, '', 6, '2026-08-17 01:43:33'),
(10, 13, 'stock_out', 11, NULL, NULL, '', 6, '2026-08-17 01:43:57'),
(11, 7, 'stock_out', 10, NULL, NULL, '', 6, '2026-08-17 01:44:22'),
(12, 8, 'stock_out', 10, NULL, NULL, '', 6, '2026-08-17 01:44:49'),
(13, 12, 'stock_out', 17, NULL, NULL, '', 6, '2026-08-17 01:45:34'),
(14, 20, 'stock_in', 4, NULL, NULL, '', 6, '2026-08-17 01:46:42'),
(15, 9, 'stock_out', 19, NULL, NULL, '', 6, '2026-08-17 01:47:19'),
(16, 28, 'stock_in', 9, NULL, NULL, '', 6, '2026-08-17 01:51:40'),
(17, 5, 'stock_out', 20, NULL, NULL, '', 6, '2026-08-17 02:06:18'),
(18, 4, 'stock_out', 20, NULL, NULL, '', 6, '2026-08-17 02:07:39'),
(19, 28, 'stock_out', 1, NULL, NULL, '', 6, '2026-08-17 02:15:57'),
(20, 2, 'stock_in', 1, NULL, NULL, '', 6, '2026-08-17 02:37:58'),
(21, 2, 'stock_out', 20, NULL, NULL, '', 6, '2026-08-17 02:38:07'),
(22, 35, 'stock_in', 1, NULL, NULL, '', 6, '2026-08-17 02:41:13'),
(23, 10, 'stock_out', 18, NULL, NULL, '', 6, '2026-08-17 02:44:03'),
(24, 10, 'stock_in', 5, NULL, NULL, '', 6, '2026-08-17 02:44:32'),
(25, 34, 'stock_in', 1, NULL, NULL, '', 6, '2026-08-17 02:46:39'),
(26, 15, 'stock_in', 3, NULL, NULL, '', 6, '2026-08-17 02:49:21'),
(27, 14, 'stock_out', 8, NULL, NULL, '', 6, '2026-08-17 02:52:34'),
(28, 29, 'stock_in', 4, NULL, NULL, '', 6, '2026-08-17 02:54:22'),
(29, 24, 'stock_in', 1, NULL, NULL, '', 6, '2026-08-17 02:55:44'),
(30, 23, 'stock_in', 3, NULL, NULL, '', 6, '2026-08-17 02:56:57'),
(31, 16, 'stock_in', 3, NULL, NULL, '', 6, '2026-08-17 02:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `job_estimates`
--

CREATE TABLE `job_estimates` (
  `id` int(11) NOT NULL,
  `estimate_number` varchar(20) NOT NULL,
  `customer_name` varchar(150) DEFAULT NULL,
  `customer_phone` varchar(50) DEFAULT NULL,
  `customer_email` varchar(150) DEFAULT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `vehicle_make` varchar(100) DEFAULT NULL,
  `vehicle_model` varchar(100) DEFAULT NULL,
  `vehicle_year` varchar(20) DEFAULT NULL,
  `vehicle_plate` varchar(50) DEFAULT NULL,
  `vehicle_color` varchar(50) DEFAULT NULL,
  `vehicle_mileage` varchar(50) DEFAULT NULL,
  `services_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `products_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(20) DEFAULT 'none',
  `discount_value` decimal(10,2) DEFAULT 0.00,
  `notes` text DEFAULT NULL,
  `recommendations_json` text DEFAULT NULL,
  `services_json` text NOT NULL,
  `products_json` text NOT NULL,
  `status` enum('draft','sent','approved','rejected','converted') NOT NULL DEFAULT 'draft',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_orders`
--

CREATE TABLE `job_orders` (
  `id` int(11) NOT NULL,
  `job_order_number` varchar(20) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `service_adviser_id` int(11) DEFAULT NULL,
  `status` enum('pending','ongoing','under_inspection','car_washing','completed','released','returned_for_revision','cancelled') NOT NULL DEFAULT 'pending',
  `priority` enum('low','normal','high','urgent') NOT NULL DEFAULT 'normal',
  `subtotal` decimal(10,2) NOT NULL DEFAULT 0.00,
  `labor_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `parts_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `discount_type` enum('none','senior_citizen','pwd','promotional','custom') DEFAULT 'none',
  `discount_amount` decimal(10,2) DEFAULT 0.00,
  `discount_percentage` decimal(5,2) DEFAULT 0.00,
  `partial_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_status` enum('pending','partial','paid') NOT NULL DEFAULT 'pending',
  `payment_method` enum('cash','card','bank_transfer','gcash','paymaya') DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `estimated_completion` datetime DEFAULT NULL,
  `actual_completion` datetime DEFAULT NULL,
  `status_timer_seconds` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status_timer_started_at` datetime DEFAULT NULL,
  `work_started_at` datetime DEFAULT NULL,
  `inspection_started_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_type` enum('user','staff') NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_order_approvals`
--

CREATE TABLE `job_order_approvals` (
  `id` int(11) NOT NULL,
  `job_order_id` int(11) NOT NULL,
  `reviewer_id` int(11) NOT NULL,
  `reviewer_role` enum('service_adviser','chief_mechanic') NOT NULL,
  `status` enum('approved','needs_revision','rework_required') NOT NULL,
  `comments` text DEFAULT NULL,
  `reviewed_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_order_inspections`
--

CREATE TABLE `job_order_inspections` (
  `id` int(11) NOT NULL,
  `job_order_id` int(11) NOT NULL,
  `result` enum('pass','revision') NOT NULL,
  `inspected_by` int(11) DEFAULT NULL,
  `inspected_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_order_payments`
--

CREATE TABLE `job_order_payments` (
  `id` int(11) NOT NULL,
  `job_order_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` enum('cash','card','gcash','paymaya','bank_transfer') NOT NULL DEFAULT 'cash',
  `reference_number` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `paid_by` varchar(100) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `payment_date` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_order_products`
--

CREATE TABLE `job_order_products` (
  `id` int(11) NOT NULL,
  `job_order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_type` enum('engine_oil','oil_filter','parts','fluids','others') NOT NULL,
  `unit_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_order_services`
--

CREATE TABLE `job_order_services` (
  `id` int(11) NOT NULL,
  `job_order_id` int(11) NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `bundle_id` int(11) DEFAULT NULL,
  `service_name` varchar(100) NOT NULL,
  `service_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `labor_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `sub_items_json` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_order_status_history`
--

CREATE TABLE `job_order_status_history` (
  `id` int(11) NOT NULL,
  `job_order_id` int(11) NOT NULL,
  `from_status` varchar(50) DEFAULT NULL,
  `to_status` varchar(50) NOT NULL,
  `changed_by` int(11) DEFAULT NULL,
  `changed_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_order_technicians`
--

CREATE TABLE `job_order_technicians` (
  `id` int(11) NOT NULL,
  `job_order_id` int(11) NOT NULL,
  `technician_id` int(11) NOT NULL,
  `is_assist` tinyint(1) NOT NULL DEFAULT 0,
  `assigned_at` datetime NOT NULL,
  `started_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `work_duration` int(11) DEFAULT NULL COMMENT 'Duration in minutes',
  `status` enum('assigned','working','completed','on_hold') NOT NULL DEFAULT 'assigned',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `type` enum('job_assigned','job_status','payment','low_stock','system','staff_update','account_update') NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `reference_type` varchar(50) DEFAULT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `read_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `staff_id`, `type`, `title`, `message`, `reference_type`, `reference_id`, `is_read`, `read_at`, `created_at`) VALUES
(5, 1, NULL, 'job_status', 'New Job Order Created', 'Dj Guingue Cortez created job order #JO001.', 'job_order', 3, 0, NULL, '2026-08-09 13:10:32'),
(7, 1, NULL, 'job_status', 'Job Order Status Updated', 'Dj Cortez updated job order #JO001 (Status: Completed).', 'job_order', 3, 0, NULL, '2026-08-09 13:10:43'),
(9, 1, NULL, 'job_status', 'Job Order Status Updated', 'Dj Cortez updated job order #JO001 (Status: Released).', 'job_order', 3, 0, NULL, '2026-08-09 13:10:50'),
(20, 3, NULL, 'job_status', 'New Job Order Created', 'Dj Guingue Cortez created job order #JO001.', 'job_order', 4, 0, NULL, '2026-08-09 14:31:07'),
(22, 3, NULL, 'job_status', 'Job Order Status Updated', 'Dj Guingue Cortez updated job order #JO001 (Status: Car Washing).', 'job_order', 4, 0, NULL, '2026-08-09 14:31:14'),
(24, 3, NULL, 'job_status', 'Job Order Status Updated', 'Dj Guingue Cortez updated job order #JO001 (Status: Completed).', 'job_order', 4, 0, NULL, '2026-08-09 14:31:15'),
(26, 3, NULL, 'system', 'Job Order Deleted', 'Dj Guingue Cortez deleted job order #JO001.', 'job_order', 4, 0, NULL, '2026-08-09 14:32:15'),
(32, 4, NULL, 'staff_update', 'Staff Added', 'Dj Guingue Cortez added staff Danilo Guingue Cortez Jr. (Role: ADMIN, Status: ACTIVE).', 'staff', 4, 0, NULL, '2026-08-10 11:59:36'),
(33, 4, NULL, 'system', 'Service Added', 'Dj Guingue Cortez added service Oil Filter Replacement (Price: ₱0.00, Status: ACTIVE).', 'service', 3, 0, NULL, '2026-08-12 00:19:31'),
(34, 4, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 00:21:01'),
(35, 4, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 00:23:28'),
(36, 4, NULL, 'system', 'System Logo Updated', 'Dj Guingue Cortez updated system logo for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 00:24:00'),
(37, 4, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 10:25:28'),
(38, 4, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 10:25:34'),
(39, 4, NULL, 'system', 'System Logo Updated', 'Dj Guingue Cortez updated system logo for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 10:25:59'),
(40, 4, NULL, 'staff_update', 'Staff Added', 'Dj Guingue Cortez added staff Erin Patricia Martinez (Role: CASHIER, Status: ACTIVE).', 'staff', 5, 0, NULL, '2026-08-12 11:19:51'),
(41, 5, NULL, 'staff_update', 'Staff Added', 'Dj Guingue Cortez added staff Erin Patricia Martinez (Role: CASHIER, Status: ACTIVE).', 'staff', 5, 0, NULL, '2026-08-12 11:19:51'),
(42, 4, NULL, 'staff_update', 'Staff Added', 'Dj Guingue Cortez added staff Lovely Joyce Gambong (Role: CASHIER, Status: ACTIVE).', 'staff', 6, 0, NULL, '2026-08-12 11:22:26'),
(43, 5, NULL, 'staff_update', 'Staff Added', 'Dj Guingue Cortez added staff Lovely Joyce Gambong (Role: CASHIER, Status: ACTIVE).', 'staff', 6, 0, NULL, '2026-08-12 11:22:26'),
(44, 6, NULL, 'staff_update', 'Staff Added', 'Dj Guingue Cortez added staff Lovely Joyce Gambong (Role: CASHIER, Status: ACTIVE).', 'staff', 6, 0, NULL, '2026-08-12 11:22:26'),
(45, 4, NULL, 'staff_update', 'Staff Added', 'Dj Guingue Cortez added staff Iloisa Joy P. Mejias (Role: CASHIER, Status: ACTIVE).', 'staff', 7, 0, NULL, '2026-08-12 11:24:05'),
(46, 5, NULL, 'staff_update', 'Staff Added', 'Dj Guingue Cortez added staff Iloisa Joy P. Mejias (Role: CASHIER, Status: ACTIVE).', 'staff', 7, 0, NULL, '2026-08-12 11:24:05'),
(47, 6, NULL, 'staff_update', 'Staff Added', 'Dj Guingue Cortez added staff Iloisa Joy P. Mejias (Role: CASHIER, Status: ACTIVE).', 'staff', 7, 0, NULL, '2026-08-12 11:24:05'),
(48, 7, NULL, 'staff_update', 'Staff Added', 'Dj Guingue Cortez added staff Iloisa Joy P. Mejias (Role: CASHIER, Status: ACTIVE).', 'staff', 7, 0, NULL, '2026-08-12 11:24:05'),
(49, 4, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:27:26'),
(50, 5, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:27:26'),
(51, 6, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:27:26'),
(52, 7, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:27:26'),
(53, 4, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:28:16'),
(54, 5, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:28:16'),
(55, 6, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:28:16'),
(56, 7, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:28:16'),
(57, 4, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:28:35'),
(58, 5, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:28:35'),
(59, 6, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:28:35'),
(60, 7, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:28:35'),
(61, 4, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:28:51'),
(62, 5, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:28:51'),
(63, 6, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:28:51'),
(64, 7, NULL, 'system', 'Print Template Updated', 'Dj Guingue Cortez updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:28:51'),
(65, 4, NULL, 'system', 'Print Template Updated', 'Lovely Joyce Gambong updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:33:57'),
(66, 5, NULL, 'system', 'Print Template Updated', 'Lovely Joyce Gambong updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:33:57'),
(67, 7, NULL, 'system', 'Print Template Updated', 'Lovely Joyce Gambong updated print template for Autodok Prime Auto Services.', 'settings', NULL, 0, NULL, '2026-08-12 11:33:57'),
(69, 4, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Aian P. Alderite (Role: SERVICE_ADVISER, Status: ACTIVE).', 'staff', 8, 0, NULL, '2026-08-12 11:46:14'),
(70, 5, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Aian P. Alderite (Role: SERVICE_ADVISER, Status: ACTIVE).', 'staff', 8, 0, NULL, '2026-08-12 11:46:14'),
(71, 7, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Aian P. Alderite (Role: SERVICE_ADVISER, Status: ACTIVE).', 'staff', 8, 0, NULL, '2026-08-12 11:46:14'),
(73, 4, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Nexander M.Gayan (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 9, 0, NULL, '2026-08-12 11:52:42'),
(74, 5, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Nexander M.Gayan (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 9, 0, NULL, '2026-08-12 11:52:42'),
(75, 7, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Nexander M.Gayan (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 9, 0, NULL, '2026-08-12 11:52:42'),
(77, 4, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Kineth Pandian (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 10, 0, NULL, '2026-08-12 11:58:18'),
(78, 5, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Kineth Pandian (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 10, 0, NULL, '2026-08-12 11:58:18'),
(79, 7, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Kineth Pandian (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 10, 0, NULL, '2026-08-12 11:58:18'),
(81, 4, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Jerald  E. Changco (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 11, 0, NULL, '2026-08-12 12:04:23'),
(82, 5, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Jerald  E. Changco (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 11, 0, NULL, '2026-08-12 12:04:23'),
(83, 7, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Jerald  E. Changco (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 11, 0, NULL, '2026-08-12 12:04:23'),
(85, 4, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff John Paul Villamente (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 12, 0, NULL, '2026-08-12 12:07:03'),
(86, 5, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff John Paul Villamente (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 12, 0, NULL, '2026-08-12 12:07:03'),
(87, 7, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff John Paul Villamente (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 12, 0, NULL, '2026-08-12 12:07:03'),
(89, 4, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Legario Mosaso (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 13, 0, NULL, '2026-08-12 12:26:30'),
(90, 5, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Legario Mosaso (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 13, 0, NULL, '2026-08-12 12:26:30'),
(91, 7, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Legario Mosaso (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 13, 0, NULL, '2026-08-12 12:26:30'),
(93, 4, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Jan Carlo Padios (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 14, 0, NULL, '2026-08-12 12:34:01'),
(94, 5, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Jan Carlo Padios (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 14, 0, NULL, '2026-08-12 12:34:01'),
(95, 7, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Jan Carlo Padios (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 14, 0, NULL, '2026-08-12 12:34:01'),
(97, 4, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Artemio Baquirel Jr. (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 15, 0, NULL, '2026-08-12 12:42:50'),
(98, 5, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Artemio Baquirel Jr. (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 15, 0, NULL, '2026-08-12 12:42:50'),
(99, 7, NULL, 'staff_update', 'Staff Added', 'Lovely Joyce Gambong added staff Artemio Baquirel Jr. (Role: TECHNICIAN, Status: ACTIVE).', 'staff', 15, 0, NULL, '2026-08-12 12:42:50'),
(101, 4, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service CHANGE OIL (LABOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 4, 0, NULL, '2026-08-12 13:20:29'),
(102, 6, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service CHANGE OIL (LABOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 4, 0, NULL, '2026-08-12 13:20:29'),
(103, 7, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service CHANGE OIL (LABOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 4, 0, NULL, '2026-08-12 13:20:29'),
(104, 8, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service CHANGE OIL (LABOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 4, 0, NULL, '2026-08-12 13:20:29'),
(106, 4, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service HEAVY PMS (LABOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 5, 0, NULL, '2026-08-12 13:21:50'),
(107, 6, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service HEAVY PMS (LABOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 5, 0, NULL, '2026-08-12 13:21:50'),
(108, 7, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service HEAVY PMS (LABOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 5, 0, NULL, '2026-08-12 13:21:50'),
(109, 8, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service HEAVY PMS (LABOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 5, 0, NULL, '2026-08-12 13:21:50'),
(111, 4, NULL, 'staff_update', 'Staff Added', 'Dj Guingue Cortez added staff Gracesilyn Pelvira Chen (Role: ADMIN, Status: ACTIVE).', 'staff', 16, 0, NULL, '2026-08-12 13:23:16'),
(112, 16, NULL, 'staff_update', 'Staff Added', 'Dj Guingue Cortez added staff Gracesilyn Pelvira Chen (Role: ADMIN, Status: ACTIVE).', 'staff', 16, 0, NULL, '2026-08-12 13:23:16'),
(113, 5, NULL, 'staff_update', 'Staff Added', 'Dj Guingue Cortez added staff Gracesilyn Pelvira Chen (Role: ADMIN, Status: ACTIVE).', 'staff', 16, 0, NULL, '2026-08-12 13:23:16'),
(114, 6, NULL, 'staff_update', 'Staff Added', 'Dj Guingue Cortez added staff Gracesilyn Pelvira Chen (Role: ADMIN, Status: ACTIVE).', 'staff', 16, 0, NULL, '2026-08-12 13:23:16'),
(115, 7, NULL, 'staff_update', 'Staff Added', 'Dj Guingue Cortez added staff Gracesilyn Pelvira Chen (Role: ADMIN, Status: ACTIVE).', 'staff', 16, 0, NULL, '2026-08-12 13:23:16'),
(116, 4, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REGULAR PMS (LABOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 6, 0, NULL, '2026-08-12 13:23:28'),
(117, 16, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REGULAR PMS (LABOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 6, 0, NULL, '2026-08-12 13:23:28'),
(118, 6, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REGULAR PMS (LABOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 6, 0, NULL, '2026-08-12 13:23:28'),
(119, 7, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REGULAR PMS (LABOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 6, 0, NULL, '2026-08-12 13:23:28'),
(120, 8, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REGULAR PMS (LABOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 6, 0, NULL, '2026-08-12 13:23:28'),
(122, 4, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REGULAR PMS (LABOR) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-12 13:26:06'),
(123, 16, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REGULAR PMS (LABOR) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-12 13:26:06'),
(124, 6, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REGULAR PMS (LABOR) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-12 13:26:06'),
(125, 7, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REGULAR PMS (LABOR) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-12 13:26:06'),
(126, 8, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REGULAR PMS (LABOR) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-12 13:26:06'),
(128, 4, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-12 13:27:19'),
(129, 16, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-12 13:27:19'),
(130, 6, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-12 13:27:19'),
(131, 7, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-12 13:27:19'),
(132, 8, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-12 13:27:19'),
(134, 4, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service HEAVY PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 5, 0, NULL, '2026-08-12 13:27:28'),
(135, 16, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service HEAVY PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 5, 0, NULL, '2026-08-12 13:27:28'),
(136, 6, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service HEAVY PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 5, 0, NULL, '2026-08-12 13:27:28'),
(137, 7, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service HEAVY PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 5, 0, NULL, '2026-08-12 13:27:28'),
(138, 8, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service HEAVY PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 5, 0, NULL, '2026-08-12 13:27:28'),
(140, 4, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service CHANGE OIL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 4, 0, NULL, '2026-08-12 13:27:36'),
(141, 16, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service CHANGE OIL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 4, 0, NULL, '2026-08-12 13:27:36'),
(142, 6, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service CHANGE OIL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 4, 0, NULL, '2026-08-12 13:27:36'),
(143, 7, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service CHANGE OIL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 4, 0, NULL, '2026-08-12 13:27:36'),
(144, 8, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service CHANGE OIL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 4, 0, NULL, '2026-08-12 13:27:36'),
(146, 4, NULL, 'job_status', 'New Job Order Created', 'Lovely Joyce Gambong created job order #JO001.', 'job_order', 5, 0, NULL, '2026-08-13 01:45:49'),
(147, 5, NULL, 'job_status', 'New Job Order Created', 'Lovely Joyce Gambong created job order #JO001.', 'job_order', 5, 0, NULL, '2026-08-13 01:45:49'),
(148, 6, NULL, 'job_status', 'New Job Order Created', 'Lovely Joyce Gambong created job order #JO001.', 'job_order', 5, 0, NULL, '2026-08-13 01:45:49'),
(149, 7, NULL, 'job_status', 'New Job Order Created', 'Lovely Joyce Gambong created job order #JO001.', 'job_order', 5, 0, NULL, '2026-08-13 01:45:49'),
(150, 8, NULL, 'job_status', 'New Job Order Created', 'Lovely Joyce Gambong created job order #JO001.', 'job_order', 5, 0, NULL, '2026-08-13 01:45:49'),
(151, 10, NULL, 'job_status', 'New Job Order Created', 'Lovely Joyce Gambong created job order #JO001.', 'job_order', 5, 1, NULL, '2026-08-13 01:45:49'),
(152, 16, NULL, 'job_status', 'New Job Order Created', 'Lovely Joyce Gambong created job order #JO001.', 'job_order', 5, 0, NULL, '2026-08-13 01:45:49'),
(154, 4, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 0, NULL, '2026-08-13 01:46:57'),
(155, 5, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 0, NULL, '2026-08-13 01:46:57'),
(156, 6, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 0, NULL, '2026-08-13 01:46:57'),
(157, 7, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 0, NULL, '2026-08-13 01:46:57'),
(158, 8, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 0, NULL, '2026-08-13 01:46:57'),
(159, 10, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 1, NULL, '2026-08-13 01:46:57'),
(160, 16, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 0, NULL, '2026-08-13 01:46:57'),
(162, 4, NULL, 'job_status', 'Job Order Ready for Inspection', 'Lovely Joyce Gambong marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:47:32'),
(163, 16, NULL, 'job_status', 'Job Order Ready for Inspection', 'Lovely Joyce Gambong marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:47:32'),
(164, 5, NULL, 'job_status', 'Job Order Ready for Inspection', 'Lovely Joyce Gambong marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:47:32'),
(165, 6, NULL, 'job_status', 'Job Order Ready for Inspection', 'Lovely Joyce Gambong marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:47:32'),
(166, 7, NULL, 'job_status', 'Job Order Ready for Inspection', 'Lovely Joyce Gambong marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:47:32'),
(167, 8, NULL, 'job_status', 'Job Order Ready for Inspection', 'Lovely Joyce Gambong marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:47:32'),
(169, 4, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:20'),
(170, 16, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:20'),
(171, 5, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:20'),
(172, 6, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:20'),
(173, 7, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:20'),
(174, 8, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:20'),
(176, 4, NULL, 'job_status', 'Job Order Ready for Inspection', 'Lovely Joyce Gambong marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:25'),
(177, 16, NULL, 'job_status', 'Job Order Ready for Inspection', 'Lovely Joyce Gambong marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:25'),
(178, 5, NULL, 'job_status', 'Job Order Ready for Inspection', 'Lovely Joyce Gambong marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:25'),
(179, 6, NULL, 'job_status', 'Job Order Ready for Inspection', 'Lovely Joyce Gambong marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:25'),
(180, 7, NULL, 'job_status', 'Job Order Ready for Inspection', 'Lovely Joyce Gambong marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:25'),
(181, 8, NULL, 'job_status', 'Job Order Ready for Inspection', 'Lovely Joyce Gambong marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:25'),
(183, 4, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Car Washing).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:33'),
(184, 5, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Car Washing).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:33'),
(185, 6, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Car Washing).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:33'),
(186, 7, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Car Washing).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:33'),
(187, 8, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Car Washing).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:33'),
(188, 10, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Car Washing).', 'job_order', 5, 1, NULL, '2026-08-13 01:48:33'),
(189, 16, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Car Washing).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:33'),
(191, 4, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Completed).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:36'),
(192, 5, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Completed).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:36'),
(193, 6, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Completed).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:36'),
(194, 7, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Completed).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:36'),
(195, 8, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Completed).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:36'),
(196, 10, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Completed).', 'job_order', 5, 1, NULL, '2026-08-13 01:48:36'),
(197, 16, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Completed).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:36'),
(199, 4, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:41'),
(200, 5, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:41'),
(201, 6, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:41'),
(202, 7, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:41'),
(203, 8, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:41'),
(204, 10, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 1, NULL, '2026-08-13 01:48:41'),
(205, 16, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:41'),
(207, 4, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Returned For Revision).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:56'),
(208, 5, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Returned For Revision).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:56'),
(209, 6, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Returned For Revision).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:56'),
(210, 7, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Returned For Revision).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:56'),
(211, 8, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Returned For Revision).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:56'),
(212, 10, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Returned For Revision).', 'job_order', 5, 1, NULL, '2026-08-13 01:48:56'),
(213, 16, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Returned For Revision).', 'job_order', 5, 0, NULL, '2026-08-13 01:48:56'),
(215, 4, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:09'),
(216, 16, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:09'),
(217, 5, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:09'),
(218, 6, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:09'),
(219, 7, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:09'),
(220, 8, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:09'),
(222, 4, NULL, 'job_status', 'Job Order Ready for Inspection', 'Lovely Joyce Gambong marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:17'),
(223, 16, NULL, 'job_status', 'Job Order Ready for Inspection', 'Lovely Joyce Gambong marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:17'),
(224, 5, NULL, 'job_status', 'Job Order Ready for Inspection', 'Lovely Joyce Gambong marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:17'),
(225, 6, NULL, 'job_status', 'Job Order Ready for Inspection', 'Lovely Joyce Gambong marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:17'),
(226, 7, NULL, 'job_status', 'Job Order Ready for Inspection', 'Lovely Joyce Gambong marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:17'),
(227, 8, NULL, 'job_status', 'Job Order Ready for Inspection', 'Lovely Joyce Gambong marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:17'),
(229, 4, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Completed).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:22'),
(230, 5, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Completed).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:22'),
(231, 6, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Completed).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:22'),
(232, 7, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Completed).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:22'),
(233, 8, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Completed).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:22'),
(234, 10, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Completed).', 'job_order', 5, 1, NULL, '2026-08-13 01:49:22'),
(235, 16, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Completed).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:22'),
(237, 4, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:27'),
(238, 5, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:27'),
(239, 6, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:27'),
(240, 7, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:27'),
(241, 8, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:27'),
(242, 10, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 1, NULL, '2026-08-13 01:49:27'),
(243, 16, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 01:49:27'),
(245, 4, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Returned For Revision).', 'job_order', 5, 0, NULL, '2026-08-13 03:51:27'),
(246, 5, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Returned For Revision).', 'job_order', 5, 0, NULL, '2026-08-13 03:51:27'),
(247, 6, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Returned For Revision).', 'job_order', 5, 0, NULL, '2026-08-13 03:51:27'),
(248, 7, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Returned For Revision).', 'job_order', 5, 0, NULL, '2026-08-13 03:51:27'),
(249, 8, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Returned For Revision).', 'job_order', 5, 0, NULL, '2026-08-13 03:51:27'),
(250, 10, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Returned For Revision).', 'job_order', 5, 1, NULL, '2026-08-13 03:51:27'),
(251, 16, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Returned For Revision).', 'job_order', 5, 0, NULL, '2026-08-13 03:51:27'),
(253, 4, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 0, NULL, '2026-08-13 04:34:35'),
(254, 5, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 0, NULL, '2026-08-13 04:34:35'),
(255, 6, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 0, NULL, '2026-08-13 04:34:35'),
(256, 7, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 0, NULL, '2026-08-13 04:34:35'),
(257, 8, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 0, NULL, '2026-08-13 04:34:35'),
(258, 9, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 0, NULL, '2026-08-13 04:34:35'),
(259, 10, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 1, NULL, '2026-08-13 04:34:35'),
(260, 11, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 0, NULL, '2026-08-13 04:34:35'),
(261, 12, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 0, NULL, '2026-08-13 04:34:35'),
(262, 13, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 0, NULL, '2026-08-13 04:34:35'),
(263, 14, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 0, NULL, '2026-08-13 04:34:35'),
(264, 15, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 0, NULL, '2026-08-13 04:34:35'),
(265, 16, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Ongoing).', 'job_order', 5, 0, NULL, '2026-08-13 04:34:35'),
(267, 4, NULL, 'job_status', 'Job Order Ready for Inspection', 'Jerald E. Changco marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:45:56'),
(268, 16, NULL, 'job_status', 'Job Order Ready for Inspection', 'Jerald E. Changco marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:45:56'),
(269, 5, NULL, 'job_status', 'Job Order Ready for Inspection', 'Jerald E. Changco marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:45:56'),
(270, 6, NULL, 'job_status', 'Job Order Ready for Inspection', 'Jerald E. Changco marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:45:56'),
(271, 7, NULL, 'job_status', 'Job Order Ready for Inspection', 'Jerald E. Changco marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:45:56'),
(272, 8, NULL, 'job_status', 'Job Order Ready for Inspection', 'Jerald E. Changco marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:45:56'),
(274, 4, NULL, 'job_status', 'Job Order Ready for Inspection', 'Jerald E. Changco marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:46:05'),
(275, 16, NULL, 'job_status', 'Job Order Ready for Inspection', 'Jerald E. Changco marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:46:05'),
(276, 5, NULL, 'job_status', 'Job Order Ready for Inspection', 'Jerald E. Changco marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:46:05'),
(277, 6, NULL, 'job_status', 'Job Order Ready for Inspection', 'Jerald E. Changco marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:46:05'),
(278, 7, NULL, 'job_status', 'Job Order Ready for Inspection', 'Jerald E. Changco marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:46:05'),
(279, 8, NULL, 'job_status', 'Job Order Ready for Inspection', 'Jerald E. Changco marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:46:05'),
(281, 4, NULL, 'job_status', 'Job Order Ready for Inspection', 'Jerald E. Changco marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:46:10'),
(282, 16, NULL, 'job_status', 'Job Order Ready for Inspection', 'Jerald E. Changco marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:46:10'),
(283, 5, NULL, 'job_status', 'Job Order Ready for Inspection', 'Jerald E. Changco marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:46:10'),
(284, 6, NULL, 'job_status', 'Job Order Ready for Inspection', 'Jerald E. Changco marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:46:10'),
(285, 7, NULL, 'job_status', 'Job Order Ready for Inspection', 'Jerald E. Changco marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:46:10'),
(286, 8, NULL, 'job_status', 'Job Order Ready for Inspection', 'Jerald E. Changco marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:46:10'),
(288, 4, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:39'),
(289, 16, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:39'),
(290, 5, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:39'),
(291, 6, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:39'),
(292, 7, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:39'),
(293, 8, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:39'),
(295, 4, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:48'),
(296, 16, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:48'),
(297, 5, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:48'),
(298, 6, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:48'),
(299, 7, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:48'),
(300, 8, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:48'),
(302, 4, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:52'),
(303, 16, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:52'),
(304, 5, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:52'),
(305, 6, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:52'),
(306, 7, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:52'),
(307, 8, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:52'),
(309, 4, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:53'),
(310, 16, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:53'),
(311, 5, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:53'),
(312, 6, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:53'),
(313, 7, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:53'),
(314, 8, NULL, 'job_status', 'Job Order Ready for Inspection', 'Kineth Pandian marked done job order #JO001 (Moved to Under Inspection).', 'job_order', 5, 0, NULL, '2026-08-13 04:48:53'),
(316, 4, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 04:50:23'),
(317, 5, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 04:50:23'),
(318, 6, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 04:50:23'),
(319, 7, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 04:50:23'),
(320, 8, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 04:50:23'),
(321, 9, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 04:50:23'),
(322, 10, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 04:50:23'),
(323, 11, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 04:50:23'),
(324, 12, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 04:50:23'),
(325, 13, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 04:50:23'),
(326, 14, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 04:50:23'),
(327, 15, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 04:50:23'),
(328, 16, NULL, 'job_status', 'Job Order Status Updated', 'Lovely Joyce Gambong updated job order #JO001 (Status: Released).', 'job_order', 5, 0, NULL, '2026-08-13 04:50:23'),
(330, 4, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service FLUSHING BRAKE FLUID (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 3, 0, NULL, '2026-08-13 06:26:20'),
(331, 16, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service FLUSHING BRAKE FLUID (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 3, 0, NULL, '2026-08-13 06:26:20'),
(332, 6, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service FLUSHING BRAKE FLUID (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 3, 0, NULL, '2026-08-13 06:26:20'),
(333, 7, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service FLUSHING BRAKE FLUID (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 3, 0, NULL, '2026-08-13 06:26:20'),
(334, 8, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service FLUSHING BRAKE FLUID (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 3, 0, NULL, '2026-08-13 06:26:20'),
(336, 4, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service CHARGE FREON (Price: ₱0.00, Status: ACTIVE).', 'service', 7, 0, NULL, '2026-08-13 06:27:04'),
(337, 16, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service CHARGE FREON (Price: ₱0.00, Status: ACTIVE).', 'service', 7, 0, NULL, '2026-08-13 06:27:04'),
(338, 6, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service CHARGE FREON (Price: ₱0.00, Status: ACTIVE).', 'service', 7, 0, NULL, '2026-08-13 06:27:04'),
(339, 7, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service CHARGE FREON (Price: ₱0.00, Status: ACTIVE).', 'service', 7, 0, NULL, '2026-08-13 06:27:04'),
(340, 8, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service CHARGE FREON (Price: ₱0.00, Status: ACTIVE).', 'service', 7, 0, NULL, '2026-08-13 06:27:04'),
(342, 4, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service RADIATOR CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 8, 0, NULL, '2026-08-13 06:27:27');
INSERT INTO `notifications` (`id`, `user_id`, `staff_id`, `type`, `title`, `message`, `reference_type`, `reference_id`, `is_read`, `read_at`, `created_at`) VALUES
(343, 16, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service RADIATOR CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 8, 0, NULL, '2026-08-13 06:27:27'),
(344, 6, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service RADIATOR CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 8, 0, NULL, '2026-08-13 06:27:27'),
(345, 7, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service RADIATOR CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 8, 0, NULL, '2026-08-13 06:27:27'),
(346, 8, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service RADIATOR CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 8, 0, NULL, '2026-08-13 06:27:27'),
(348, 4, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REPLACE DRIVE BELT (Price: ₱0.00, Status: ACTIVE).', 'service', 9, 0, NULL, '2026-08-13 06:28:04'),
(349, 16, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REPLACE DRIVE BELT (Price: ₱0.00, Status: ACTIVE).', 'service', 9, 0, NULL, '2026-08-13 06:28:04'),
(350, 6, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REPLACE DRIVE BELT (Price: ₱0.00, Status: ACTIVE).', 'service', 9, 0, NULL, '2026-08-13 06:28:04'),
(351, 7, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REPLACE DRIVE BELT (Price: ₱0.00, Status: ACTIVE).', 'service', 9, 0, NULL, '2026-08-13 06:28:04'),
(352, 8, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REPLACE DRIVE BELT (Price: ₱0.00, Status: ACTIVE).', 'service', 9, 0, NULL, '2026-08-13 06:28:04'),
(354, 4, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REPLACE DRIVE BELT (FORD) (Price: ₱0.00, Status: ACTIVE).', 'service', 10, 0, NULL, '2026-08-13 06:28:35'),
(355, 16, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REPLACE DRIVE BELT (FORD) (Price: ₱0.00, Status: ACTIVE).', 'service', 10, 0, NULL, '2026-08-13 06:28:35'),
(356, 6, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REPLACE DRIVE BELT (FORD) (Price: ₱0.00, Status: ACTIVE).', 'service', 10, 0, NULL, '2026-08-13 06:28:35'),
(357, 7, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REPLACE DRIVE BELT (FORD) (Price: ₱0.00, Status: ACTIVE).', 'service', 10, 0, NULL, '2026-08-13 06:28:35'),
(358, 8, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REPLACE DRIVE BELT (FORD) (Price: ₱0.00, Status: ACTIVE).', 'service', 10, 0, NULL, '2026-08-13 06:28:35'),
(360, 4, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REPLACE DRIVE BELT (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 9, 0, NULL, '2026-08-13 06:28:49'),
(361, 16, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REPLACE DRIVE BELT (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 9, 0, NULL, '2026-08-13 06:28:49'),
(362, 6, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REPLACE DRIVE BELT (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 9, 0, NULL, '2026-08-13 06:28:49'),
(363, 7, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REPLACE DRIVE BELT (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 9, 0, NULL, '2026-08-13 06:28:49'),
(364, 8, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REPLACE DRIVE BELT (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 9, 0, NULL, '2026-08-13 06:28:49'),
(366, 4, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service THROTTLE BODY CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 11, 0, NULL, '2026-08-13 06:29:13'),
(367, 16, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service THROTTLE BODY CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 11, 0, NULL, '2026-08-13 06:29:13'),
(368, 6, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service THROTTLE BODY CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 11, 0, NULL, '2026-08-13 06:29:13'),
(369, 7, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service THROTTLE BODY CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 11, 0, NULL, '2026-08-13 06:29:13'),
(370, 8, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service THROTTLE BODY CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 11, 0, NULL, '2026-08-13 06:29:13'),
(372, 4, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REPLACCE AUXILIARY FAN MOTOR (Price: ₱0.00, Status: ACTIVE).', 'service', 12, 0, NULL, '2026-08-13 06:29:50'),
(373, 16, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REPLACCE AUXILIARY FAN MOTOR (Price: ₱0.00, Status: ACTIVE).', 'service', 12, 0, NULL, '2026-08-13 06:29:50'),
(374, 6, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REPLACCE AUXILIARY FAN MOTOR (Price: ₱0.00, Status: ACTIVE).', 'service', 12, 0, NULL, '2026-08-13 06:29:50'),
(375, 7, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REPLACCE AUXILIARY FAN MOTOR (Price: ₱0.00, Status: ACTIVE).', 'service', 12, 0, NULL, '2026-08-13 06:29:50'),
(376, 8, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service REPLACCE AUXILIARY FAN MOTOR (Price: ₱0.00, Status: ACTIVE).', 'service', 12, 0, NULL, '2026-08-13 06:29:50'),
(378, 4, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REPLACE AUXILIARY FAN MOTOR (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 12, 0, NULL, '2026-08-13 06:30:10'),
(379, 16, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REPLACE AUXILIARY FAN MOTOR (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 12, 0, NULL, '2026-08-13 06:30:10'),
(380, 6, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REPLACE AUXILIARY FAN MOTOR (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 12, 0, NULL, '2026-08-13 06:30:10'),
(381, 7, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REPLACE AUXILIARY FAN MOTOR (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 12, 0, NULL, '2026-08-13 06:30:10'),
(382, 8, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service REPLACE AUXILIARY FAN MOTOR (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 12, 0, NULL, '2026-08-13 06:30:10'),
(384, 4, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service PULL OUT/INSTALL FRT. LOWER SUSPENSION ASSY (Price: ₱0.00, Status: ACTIVE).', 'service', 13, 0, NULL, '2026-08-13 06:30:32'),
(385, 16, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service PULL OUT/INSTALL FRT. LOWER SUSPENSION ASSY (Price: ₱0.00, Status: ACTIVE).', 'service', 13, 0, NULL, '2026-08-13 06:30:32'),
(386, 6, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service PULL OUT/INSTALL FRT. LOWER SUSPENSION ASSY (Price: ₱0.00, Status: ACTIVE).', 'service', 13, 0, NULL, '2026-08-13 06:30:32'),
(387, 7, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service PULL OUT/INSTALL FRT. LOWER SUSPENSION ASSY (Price: ₱0.00, Status: ACTIVE).', 'service', 13, 0, NULL, '2026-08-13 06:30:32'),
(388, 8, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service PULL OUT/INSTALL FRT. LOWER SUSPENSION ASSY (Price: ₱0.00, Status: ACTIVE).', 'service', 13, 0, NULL, '2026-08-13 06:30:32'),
(390, 4, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service PULL OUT/INSTALL FRT. LOWER SUSPENSION ASSY RH/LH (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 13, 0, NULL, '2026-08-13 06:30:50'),
(391, 16, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service PULL OUT/INSTALL FRT. LOWER SUSPENSION ASSY RH/LH (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 13, 0, NULL, '2026-08-13 06:30:50'),
(392, 6, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service PULL OUT/INSTALL FRT. LOWER SUSPENSION ASSY RH/LH (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 13, 0, NULL, '2026-08-13 06:30:50'),
(393, 7, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service PULL OUT/INSTALL FRT. LOWER SUSPENSION ASSY RH/LH (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 13, 0, NULL, '2026-08-13 06:30:50'),
(394, 8, NULL, 'system', 'Service Updated', 'Erin Patricia Martinez updated service PULL OUT/INSTALL FRT. LOWER SUSPENSION ASSY RH/LH (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 13, 0, NULL, '2026-08-13 06:30:50'),
(396, 4, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service FUEL INJECTOR CLEANING (LABOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 14, 0, NULL, '2026-08-13 07:56:49'),
(397, 16, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service FUEL INJECTOR CLEANING (LABOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 14, 0, NULL, '2026-08-13 07:56:49'),
(398, 6, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service FUEL INJECTOR CLEANING (LABOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 14, 0, NULL, '2026-08-13 07:56:49'),
(399, 7, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service FUEL INJECTOR CLEANING (LABOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 14, 0, NULL, '2026-08-13 07:56:49'),
(400, 8, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service FUEL INJECTOR CLEANING (LABOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 14, 0, NULL, '2026-08-13 07:56:49'),
(402, 4, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service WHEEL ALIGNMENT - TOE IN/TOE OUT (Price: ₱0.00, Status: ACTIVE).', 'service', 15, 0, NULL, '2026-08-13 08:46:49'),
(403, 16, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service WHEEL ALIGNMENT - TOE IN/TOE OUT (Price: ₱0.00, Status: ACTIVE).', 'service', 15, 0, NULL, '2026-08-13 08:46:49'),
(404, 6, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service WHEEL ALIGNMENT - TOE IN/TOE OUT (Price: ₱0.00, Status: ACTIVE).', 'service', 15, 0, NULL, '2026-08-13 08:46:49'),
(405, 7, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service WHEEL ALIGNMENT - TOE IN/TOE OUT (Price: ₱0.00, Status: ACTIVE).', 'service', 15, 0, NULL, '2026-08-13 08:46:49'),
(406, 8, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service WHEEL ALIGNMENT - TOE IN/TOE OUT (Price: ₱0.00, Status: ACTIVE).', 'service', 15, 0, NULL, '2026-08-13 08:46:49'),
(408, 4, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service WHEEL ALIGNMENT - COMPLETE (Price: ₱0.00, Status: ACTIVE).', 'service', 16, 0, NULL, '2026-08-13 08:47:04'),
(409, 16, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service WHEEL ALIGNMENT - COMPLETE (Price: ₱0.00, Status: ACTIVE).', 'service', 16, 0, NULL, '2026-08-13 08:47:04'),
(410, 6, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service WHEEL ALIGNMENT - COMPLETE (Price: ₱0.00, Status: ACTIVE).', 'service', 16, 0, NULL, '2026-08-13 08:47:04'),
(411, 7, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service WHEEL ALIGNMENT - COMPLETE (Price: ₱0.00, Status: ACTIVE).', 'service', 16, 0, NULL, '2026-08-13 08:47:04'),
(412, 8, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service WHEEL ALIGNMENT - COMPLETE (Price: ₱0.00, Status: ACTIVE).', 'service', 16, 0, NULL, '2026-08-13 08:47:04'),
(414, 4, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service STEERING RACK REPAIR - PULL OUT/INSTALL (Price: ₱0.00, Status: ACTIVE).', 'service', 17, 0, NULL, '2026-08-13 08:49:31'),
(415, 16, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service STEERING RACK REPAIR - PULL OUT/INSTALL (Price: ₱0.00, Status: ACTIVE).', 'service', 17, 0, NULL, '2026-08-13 08:49:31'),
(416, 6, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service STEERING RACK REPAIR - PULL OUT/INSTALL (Price: ₱0.00, Status: ACTIVE).', 'service', 17, 0, NULL, '2026-08-13 08:49:31'),
(417, 7, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service STEERING RACK REPAIR - PULL OUT/INSTALL (Price: ₱0.00, Status: ACTIVE).', 'service', 17, 0, NULL, '2026-08-13 08:49:31'),
(418, 8, NULL, 'system', 'Service Added', 'Erin Patricia Martinez added service STEERING RACK REPAIR - PULL OUT/INSTALL (Price: ₱0.00, Status: ACTIVE).', 'service', 17, 0, NULL, '2026-08-13 08:49:31'),
(420, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product GTX AIR FILTER (Code: PRD01, Status: ACTIVE).', 'product', 2, 0, NULL, '2026-08-13 08:52:32'),
(421, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product GTX AIR FILTER (Code: PRD01, Status: ACTIVE).', 'product', 2, 0, NULL, '2026-08-13 08:52:32'),
(422, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product GTX AIR FILTER (Code: PRD01, Status: ACTIVE).', 'product', 2, 0, NULL, '2026-08-13 08:52:32'),
(423, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product GTX AIR FILTER (Code: PRD01, Status: ACTIVE).', 'product', 2, 0, NULL, '2026-08-13 08:52:32'),
(425, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product RELAY (Code: PRD02, Status: ACTIVE).', 'product', 3, 0, NULL, '2026-08-13 08:53:18'),
(426, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product RELAY (Code: PRD02, Status: ACTIVE).', 'product', 3, 0, NULL, '2026-08-13 08:53:18'),
(427, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product RELAY (Code: PRD02, Status: ACTIVE).', 'product', 3, 0, NULL, '2026-08-13 08:53:18'),
(428, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product RELAY (Code: PRD02, Status: ACTIVE).', 'product', 3, 0, NULL, '2026-08-13 08:53:18'),
(430, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product AIR FILTER (HILUX, FORTUNER) (Code: PRD03, Status: ACTIVE).', 'product', 4, 0, NULL, '2026-08-13 08:53:50'),
(431, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product AIR FILTER (HILUX, FORTUNER) (Code: PRD03, Status: ACTIVE).', 'product', 4, 0, NULL, '2026-08-13 08:53:50'),
(432, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product AIR FILTER (HILUX, FORTUNER) (Code: PRD03, Status: ACTIVE).', 'product', 4, 0, NULL, '2026-08-13 08:53:50'),
(433, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product AIR FILTER (HILUX, FORTUNER) (Code: PRD03, Status: ACTIVE).', 'product', 4, 0, NULL, '2026-08-13 08:53:50'),
(435, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product AIR FILTER (MULTI-VEHICLE) (Code: PRD04, Status: ACTIVE).', 'product', 5, 0, NULL, '2026-08-13 08:54:29'),
(436, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product AIR FILTER (MULTI-VEHICLE) (Code: PRD04, Status: ACTIVE).', 'product', 5, 0, NULL, '2026-08-13 08:54:29'),
(437, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product AIR FILTER (MULTI-VEHICLE) (Code: PRD04, Status: ACTIVE).', 'product', 5, 0, NULL, '2026-08-13 08:54:29'),
(438, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product AIR FILTER (MULTI-VEHICLE) (Code: PRD04, Status: ACTIVE).', 'product', 5, 0, NULL, '2026-08-13 08:54:29'),
(440, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product AIR FILTER (NAVARA) (Code: PRD05, Status: ACTIVE).', 'product', 6, 0, NULL, '2026-08-13 08:55:03'),
(441, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product AIR FILTER (NAVARA) (Code: PRD05, Status: ACTIVE).', 'product', 6, 0, NULL, '2026-08-13 08:55:03'),
(442, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product AIR FILTER (NAVARA) (Code: PRD05, Status: ACTIVE).', 'product', 6, 0, NULL, '2026-08-13 08:55:03'),
(443, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product AIR FILTER (NAVARA) (Code: PRD05, Status: ACTIVE).', 'product', 6, 0, NULL, '2026-08-13 08:55:03'),
(445, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF J4 (MIRAGE) (Code: PRD06, Status: ACTIVE).', 'product', 7, 0, NULL, '2026-08-13 08:56:04'),
(446, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF J4 (MIRAGE) (Code: PRD06, Status: ACTIVE).', 'product', 7, 0, NULL, '2026-08-13 08:56:04'),
(447, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF J4 (MIRAGE) (Code: PRD06, Status: ACTIVE).', 'product', 7, 0, NULL, '2026-08-13 08:56:04'),
(448, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF J4 (MIRAGE) (Code: PRD06, Status: ACTIVE).', 'product', 7, 0, NULL, '2026-08-13 08:56:04'),
(450, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF LV D111/ STEERING FLUID (Code: PRD07, Status: ACTIVE).', 'product', 8, 0, NULL, '2026-08-13 08:56:47'),
(451, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF LV D111/ STEERING FLUID (Code: PRD07, Status: ACTIVE).', 'product', 8, 0, NULL, '2026-08-13 08:56:47'),
(452, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF LV D111/ STEERING FLUID (Code: PRD07, Status: ACTIVE).', 'product', 8, 0, NULL, '2026-08-13 08:56:47'),
(453, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF LV D111/ STEERING FLUID (Code: PRD07, Status: ACTIVE).', 'product', 8, 0, NULL, '2026-08-13 08:56:47'),
(455, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF LV MV (TOYOTA) (Code: PRD08, Status: ACTIVE).', 'product', 9, 0, NULL, '2026-08-13 08:57:11'),
(456, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF LV MV (TOYOTA) (Code: PRD08, Status: ACTIVE).', 'product', 9, 0, NULL, '2026-08-13 08:57:11'),
(457, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF LV MV (TOYOTA) (Code: PRD08, Status: ACTIVE).', 'product', 9, 0, NULL, '2026-08-13 08:57:11'),
(458, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF LV MV (TOYOTA) (Code: PRD08, Status: ACTIVE).', 'product', 9, 0, NULL, '2026-08-13 08:57:11'),
(460, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF MAXLIFE DEX (Code: PRD09, Status: ACTIVE).', 'product', 10, 0, NULL, '2026-08-13 08:57:31'),
(461, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF MAXLIFE DEX (Code: PRD09, Status: ACTIVE).', 'product', 10, 0, NULL, '2026-08-13 08:57:31'),
(462, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF MAXLIFE DEX (Code: PRD09, Status: ACTIVE).', 'product', 10, 0, NULL, '2026-08-13 08:57:31'),
(463, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF MAXLIFE DEX (Code: PRD09, Status: ACTIVE).', 'product', 10, 0, NULL, '2026-08-13 08:57:31'),
(465, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product 950 (Code: PRD10, Status: ACTIVE).', 'product', 11, 0, NULL, '2026-08-13 08:57:52'),
(466, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product 950 (Code: PRD10, Status: ACTIVE).', 'product', 11, 0, NULL, '2026-08-13 08:57:52'),
(467, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product 950 (Code: PRD10, Status: ACTIVE).', 'product', 11, 0, NULL, '2026-08-13 08:57:52'),
(468, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product 950 (Code: PRD10, Status: ACTIVE).', 'product', 11, 0, NULL, '2026-08-13 08:57:52'),
(470, 4, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product ATF PETRON (HTP) (Status: ACTIVE -> ACTIVE).', 'product', 11, 0, NULL, '2026-08-13 08:58:38'),
(471, 16, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product ATF PETRON (HTP) (Status: ACTIVE -> ACTIVE).', 'product', 11, 0, NULL, '2026-08-13 08:58:38'),
(472, 6, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product ATF PETRON (HTP) (Status: ACTIVE -> ACTIVE).', 'product', 11, 0, NULL, '2026-08-13 08:58:38'),
(473, 7, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product ATF PETRON (HTP) (Status: ACTIVE -> ACTIVE).', 'product', 11, 0, NULL, '2026-08-13 08:58:38'),
(475, 4, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF LV D111/ STEERING FLUID (Quantity: +1).', 'inventory_transaction', 8, 0, NULL, '2026-08-13 08:59:04'),
(476, 16, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF LV D111/ STEERING FLUID (Quantity: +1).', 'inventory_transaction', 8, 0, NULL, '2026-08-13 08:59:04'),
(477, 5, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF LV D111/ STEERING FLUID (Quantity: +1).', 'inventory_transaction', 8, 0, NULL, '2026-08-13 08:59:04'),
(478, 6, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF LV D111/ STEERING FLUID (Quantity: +1).', 'inventory_transaction', 8, 0, NULL, '2026-08-13 08:59:04'),
(479, 7, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF LV D111/ STEERING FLUID (Quantity: +1).', 'inventory_transaction', 8, 0, NULL, '2026-08-13 08:59:04'),
(481, 4, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF LV D111/ STEERING FLUID (Quantity: +19).', 'inventory_transaction', 8, 0, NULL, '2026-08-13 08:59:13'),
(482, 16, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF LV D111/ STEERING FLUID (Quantity: +19).', 'inventory_transaction', 8, 0, NULL, '2026-08-13 08:59:13'),
(483, 5, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF LV D111/ STEERING FLUID (Quantity: +19).', 'inventory_transaction', 8, 0, NULL, '2026-08-13 08:59:13'),
(484, 6, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF LV D111/ STEERING FLUID (Quantity: +19).', 'inventory_transaction', 8, 0, NULL, '2026-08-13 08:59:13'),
(485, 7, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF LV D111/ STEERING FLUID (Quantity: +19).', 'inventory_transaction', 8, 0, NULL, '2026-08-13 08:59:13'),
(487, 4, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF LV MV (TOYOTA) (Quantity: +20).', 'inventory_transaction', 9, 0, NULL, '2026-08-13 08:59:23'),
(488, 16, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF LV MV (TOYOTA) (Quantity: +20).', 'inventory_transaction', 9, 0, NULL, '2026-08-13 08:59:23'),
(489, 5, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF LV MV (TOYOTA) (Quantity: +20).', 'inventory_transaction', 9, 0, NULL, '2026-08-13 08:59:23'),
(490, 6, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF LV MV (TOYOTA) (Quantity: +20).', 'inventory_transaction', 9, 0, NULL, '2026-08-13 08:59:23'),
(491, 7, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF LV MV (TOYOTA) (Quantity: +20).', 'inventory_transaction', 9, 0, NULL, '2026-08-13 08:59:23'),
(493, 4, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF MAXLIFE DEX (Quantity: +20).', 'inventory_transaction', 10, 0, NULL, '2026-08-13 08:59:32'),
(494, 16, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF MAXLIFE DEX (Quantity: +20).', 'inventory_transaction', 10, 0, NULL, '2026-08-13 08:59:32'),
(495, 5, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF MAXLIFE DEX (Quantity: +20).', 'inventory_transaction', 10, 0, NULL, '2026-08-13 08:59:32'),
(496, 6, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF MAXLIFE DEX (Quantity: +20).', 'inventory_transaction', 10, 0, NULL, '2026-08-13 08:59:32'),
(497, 7, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF MAXLIFE DEX (Quantity: +20).', 'inventory_transaction', 10, 0, NULL, '2026-08-13 08:59:32'),
(499, 4, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF PETRON (HTP) (Quantity: +20).', 'inventory_transaction', 11, 0, NULL, '2026-08-13 08:59:40'),
(500, 16, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF PETRON (HTP) (Quantity: +20).', 'inventory_transaction', 11, 0, NULL, '2026-08-13 08:59:40'),
(501, 5, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF PETRON (HTP) (Quantity: +20).', 'inventory_transaction', 11, 0, NULL, '2026-08-13 08:59:40'),
(502, 6, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF PETRON (HTP) (Quantity: +20).', 'inventory_transaction', 11, 0, NULL, '2026-08-13 08:59:40'),
(503, 7, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF PETRON (HTP) (Quantity: +20).', 'inventory_transaction', 11, 0, NULL, '2026-08-13 08:59:40'),
(505, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF PREMIUM SAE-20 (Code: PRD11, Status: ACTIVE).', 'product', 12, 0, NULL, '2026-08-13 09:00:17'),
(506, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF PREMIUM SAE-20 (Code: PRD11, Status: ACTIVE).', 'product', 12, 0, NULL, '2026-08-13 09:00:17'),
(507, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF PREMIUM SAE-20 (Code: PRD11, Status: ACTIVE).', 'product', 12, 0, NULL, '2026-08-13 09:00:17'),
(508, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ATF PREMIUM SAE-20 (Code: PRD11, Status: ACTIVE).', 'product', 12, 0, NULL, '2026-08-13 09:00:17'),
(510, 4, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF PREMIUM SAE-20 (Quantity: +20).', 'inventory_transaction', 12, 0, NULL, '2026-08-13 09:01:17'),
(511, 16, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF PREMIUM SAE-20 (Quantity: +20).', 'inventory_transaction', 12, 0, NULL, '2026-08-13 09:01:17'),
(512, 5, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF PREMIUM SAE-20 (Quantity: +20).', 'inventory_transaction', 12, 0, NULL, '2026-08-13 09:01:17'),
(513, 6, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF PREMIUM SAE-20 (Quantity: +20).', 'inventory_transaction', 12, 0, NULL, '2026-08-13 09:01:17'),
(514, 7, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ATF PREMIUM SAE-20 (Quantity: +20).', 'inventory_transaction', 12, 0, NULL, '2026-08-13 09:01:17'),
(516, 4, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product AIR FILTER (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 4, 0, NULL, '2026-08-13 09:04:23'),
(517, 16, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product AIR FILTER (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 4, 0, NULL, '2026-08-13 09:04:23'),
(518, 6, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product AIR FILTER (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 4, 0, NULL, '2026-08-13 09:04:23'),
(519, 7, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product AIR FILTER (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 4, 0, NULL, '2026-08-13 09:04:23'),
(521, 4, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product ENGINE OIL 5W-30 (Status: ACTIVE -> ACTIVE).', 'product', 6, 0, NULL, '2026-08-13 09:05:32'),
(522, 16, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product ENGINE OIL 5W-30 (Status: ACTIVE -> ACTIVE).', 'product', 6, 0, NULL, '2026-08-13 09:05:32'),
(523, 6, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product ENGINE OIL 5W-30 (Status: ACTIVE -> ACTIVE).', 'product', 6, 0, NULL, '2026-08-13 09:05:32'),
(524, 7, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product ENGINE OIL 5W-30 (Status: ACTIVE -> ACTIVE).', 'product', 6, 0, NULL, '2026-08-13 09:05:32'),
(526, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ENGINE OIL 5W-40 (Code: PRD12, Status: ACTIVE).', 'product', 13, 0, NULL, '2026-08-13 09:06:02'),
(527, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ENGINE OIL 5W-40 (Code: PRD12, Status: ACTIVE).', 'product', 13, 0, NULL, '2026-08-13 09:06:02'),
(528, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ENGINE OIL 5W-40 (Code: PRD12, Status: ACTIVE).', 'product', 13, 0, NULL, '2026-08-13 09:06:02'),
(529, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ENGINE OIL 5W-40 (Code: PRD12, Status: ACTIVE).', 'product', 13, 0, NULL, '2026-08-13 09:06:02'),
(531, 4, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ENGINE OIL 5W-40 (Quantity: +20).', 'inventory_transaction', 13, 0, NULL, '2026-08-13 09:06:23'),
(532, 16, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ENGINE OIL 5W-40 (Quantity: +20).', 'inventory_transaction', 13, 0, NULL, '2026-08-13 09:06:23'),
(533, 5, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ENGINE OIL 5W-40 (Quantity: +20).', 'inventory_transaction', 13, 0, NULL, '2026-08-13 09:06:23'),
(534, 6, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ENGINE OIL 5W-40 (Quantity: +20).', 'inventory_transaction', 13, 0, NULL, '2026-08-13 09:06:23'),
(535, 7, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock ENGINE OIL 5W-40 (Quantity: +20).', 'inventory_transaction', 13, 0, NULL, '2026-08-13 09:06:23'),
(537, 4, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product PETRON ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 11, 0, NULL, '2026-08-13 09:07:42'),
(538, 16, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product PETRON ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 11, 0, NULL, '2026-08-13 09:07:42'),
(539, 6, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product PETRON ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 11, 0, NULL, '2026-08-13 09:07:42'),
(540, 7, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product PETRON ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 11, 0, NULL, '2026-08-13 09:07:42'),
(542, 4, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-13 09:08:13'),
(543, 16, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-13 09:08:13'),
(544, 6, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-13 09:08:13'),
(545, 7, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-13 09:08:13'),
(547, 4, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product OIL FILTER 415 (Status: ACTIVE -> ACTIVE).', 'product', 7, 0, NULL, '2026-08-13 09:08:57'),
(548, 16, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product OIL FILTER 415 (Status: ACTIVE -> ACTIVE).', 'product', 7, 0, NULL, '2026-08-13 09:08:57'),
(549, 6, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product OIL FILTER 415 (Status: ACTIVE -> ACTIVE).', 'product', 7, 0, NULL, '2026-08-13 09:08:57'),
(550, 7, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product OIL FILTER 415 (Status: ACTIVE -> ACTIVE).', 'product', 7, 0, NULL, '2026-08-13 09:08:57'),
(552, 4, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product OIL FITER 110 (Status: ACTIVE -> ACTIVE).', 'product', 8, 0, NULL, '2026-08-13 09:09:21'),
(553, 16, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product OIL FITER 110 (Status: ACTIVE -> ACTIVE).', 'product', 8, 0, NULL, '2026-08-13 09:09:21'),
(554, 6, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product OIL FITER 110 (Status: ACTIVE -> ACTIVE).', 'product', 8, 0, NULL, '2026-08-13 09:09:21'),
(555, 7, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product OIL FITER 110 (Status: ACTIVE -> ACTIVE).', 'product', 8, 0, NULL, '2026-08-13 09:09:21'),
(557, 4, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product OIL FILTER 111 (Status: ACTIVE -> ACTIVE).', 'product', 10, 0, NULL, '2026-08-13 09:09:59'),
(558, 16, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product OIL FILTER 111 (Status: ACTIVE -> ACTIVE).', 'product', 10, 0, NULL, '2026-08-13 09:09:59'),
(559, 6, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product OIL FILTER 111 (Status: ACTIVE -> ACTIVE).', 'product', 10, 0, NULL, '2026-08-13 09:09:59'),
(560, 7, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product OIL FILTER 111 (Status: ACTIVE -> ACTIVE).', 'product', 10, 0, NULL, '2026-08-13 09:09:59'),
(562, 4, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-13 09:10:46'),
(563, 16, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-13 09:10:46'),
(564, 6, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-13 09:10:46'),
(565, 7, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-13 09:10:46'),
(567, 4, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product FRONT HUB BEARING (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 2, 0, NULL, '2026-08-13 09:11:13'),
(568, 16, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product FRONT HUB BEARING (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 2, 0, NULL, '2026-08-13 09:11:13'),
(569, 6, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product FRONT HUB BEARING (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 2, 0, NULL, '2026-08-13 09:11:13'),
(570, 7, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product FRONT HUB BEARING (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 2, 0, NULL, '2026-08-13 09:11:13'),
(572, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product REAR HUB BEARING (MIRAGE (Code: PRD13, Status: ACTIVE).', 'product', 14, 0, NULL, '2026-08-13 09:11:27'),
(573, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product REAR HUB BEARING (MIRAGE (Code: PRD13, Status: ACTIVE).', 'product', 14, 0, NULL, '2026-08-13 09:11:27'),
(574, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product REAR HUB BEARING (MIRAGE (Code: PRD13, Status: ACTIVE).', 'product', 14, 0, NULL, '2026-08-13 09:11:27'),
(575, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product REAR HUB BEARING (MIRAGE (Code: PRD13, Status: ACTIVE).', 'product', 14, 0, NULL, '2026-08-13 09:11:27'),
(577, 4, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product FRONT HUB BEARING (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 2, 0, NULL, '2026-08-13 09:11:43'),
(578, 16, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product FRONT HUB BEARING (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 2, 0, NULL, '2026-08-13 09:11:43'),
(579, 6, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product FRONT HUB BEARING (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 2, 0, NULL, '2026-08-13 09:11:43'),
(580, 7, NULL, 'system', 'Product Updated', 'Erin Patricia Martinez updated product FRONT HUB BEARING (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 2, 0, NULL, '2026-08-13 09:11:43'),
(582, 4, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock REAR HUB BEARING (MIRAGE (Quantity: +10).', 'inventory_transaction', 14, 0, NULL, '2026-08-13 09:11:55'),
(583, 16, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock REAR HUB BEARING (MIRAGE (Quantity: +10).', 'inventory_transaction', 14, 0, NULL, '2026-08-13 09:11:55'),
(584, 5, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock REAR HUB BEARING (MIRAGE (Quantity: +10).', 'inventory_transaction', 14, 0, NULL, '2026-08-13 09:11:55'),
(585, 6, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock REAR HUB BEARING (MIRAGE (Quantity: +10).', 'inventory_transaction', 14, 0, NULL, '2026-08-13 09:11:55'),
(586, 7, NULL, 'system', 'Inventory Stock In', 'Erin Patricia Martinez added stock REAR HUB BEARING (MIRAGE (Quantity: +10).', 'inventory_transaction', 14, 0, NULL, '2026-08-13 09:11:55'),
(588, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product PENETRATING (Code: PRD14, Status: ACTIVE).', 'product', 15, 0, NULL, '2026-08-13 09:12:26'),
(589, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product PENETRATING (Code: PRD14, Status: ACTIVE).', 'product', 15, 0, NULL, '2026-08-13 09:12:26'),
(590, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product PENETRATING (Code: PRD14, Status: ACTIVE).', 'product', 15, 0, NULL, '2026-08-13 09:12:26'),
(591, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product PENETRATING (Code: PRD14, Status: ACTIVE).', 'product', 15, 0, NULL, '2026-08-13 09:12:26'),
(593, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product CARB CLEANER (Code: PRD15, Status: ACTIVE).', 'product', 16, 0, NULL, '2026-08-13 09:12:35'),
(594, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product CARB CLEANER (Code: PRD15, Status: ACTIVE).', 'product', 16, 0, NULL, '2026-08-13 09:12:35'),
(595, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product CARB CLEANER (Code: PRD15, Status: ACTIVE).', 'product', 16, 0, NULL, '2026-08-13 09:12:35'),
(596, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product CARB CLEANER (Code: PRD15, Status: ACTIVE).', 'product', 16, 0, NULL, '2026-08-13 09:12:35'),
(598, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product GEAR OIL (Code: PRD16, Status: ACTIVE).', 'product', 17, 0, NULL, '2026-08-13 09:12:42'),
(599, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product GEAR OIL (Code: PRD16, Status: ACTIVE).', 'product', 17, 0, NULL, '2026-08-13 09:12:42'),
(600, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product GEAR OIL (Code: PRD16, Status: ACTIVE).', 'product', 17, 0, NULL, '2026-08-13 09:12:42'),
(601, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product GEAR OIL (Code: PRD16, Status: ACTIVE).', 'product', 17, 0, NULL, '2026-08-13 09:12:42'),
(603, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product GREASE (Code: PRD17, Status: ACTIVE).', 'product', 18, 0, NULL, '2026-08-13 09:12:52'),
(604, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product GREASE (Code: PRD17, Status: ACTIVE).', 'product', 18, 0, NULL, '2026-08-13 09:12:52'),
(605, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product GREASE (Code: PRD17, Status: ACTIVE).', 'product', 18, 0, NULL, '2026-08-13 09:12:52'),
(606, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product GREASE (Code: PRD17, Status: ACTIVE).', 'product', 18, 0, NULL, '2026-08-13 09:12:52'),
(608, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product COOLANT BLUE (Code: PRD18, Status: ACTIVE).', 'product', 19, 0, NULL, '2026-08-13 09:13:00'),
(609, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product COOLANT BLUE (Code: PRD18, Status: ACTIVE).', 'product', 19, 0, NULL, '2026-08-13 09:13:00'),
(610, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product COOLANT BLUE (Code: PRD18, Status: ACTIVE).', 'product', 19, 0, NULL, '2026-08-13 09:13:00'),
(611, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product COOLANT BLUE (Code: PRD18, Status: ACTIVE).', 'product', 19, 0, NULL, '2026-08-13 09:13:00'),
(613, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product COOLANT GREEN (Code: PRD19, Status: ACTIVE).', 'product', 20, 0, NULL, '2026-08-13 09:13:06'),
(614, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product COOLANT GREEN (Code: PRD19, Status: ACTIVE).', 'product', 20, 0, NULL, '2026-08-13 09:13:06'),
(615, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product COOLANT GREEN (Code: PRD19, Status: ACTIVE).', 'product', 20, 0, NULL, '2026-08-13 09:13:06'),
(616, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product COOLANT GREEN (Code: PRD19, Status: ACTIVE).', 'product', 20, 0, NULL, '2026-08-13 09:13:06'),
(618, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product BATTERY (Code: PRD20, Status: ACTIVE).', 'product', 21, 0, NULL, '2026-08-13 09:13:15'),
(619, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product BATTERY (Code: PRD20, Status: ACTIVE).', 'product', 21, 0, NULL, '2026-08-13 09:13:15'),
(620, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product BATTERY (Code: PRD20, Status: ACTIVE).', 'product', 21, 0, NULL, '2026-08-13 09:13:15'),
(621, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product BATTERY (Code: PRD20, Status: ACTIVE).', 'product', 21, 0, NULL, '2026-08-13 09:13:15'),
(623, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product BRAKE PADS (MIRAGE) (Code: PRD21, Status: ACTIVE).', 'product', 22, 0, NULL, '2026-08-13 09:13:22'),
(624, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product BRAKE PADS (MIRAGE) (Code: PRD21, Status: ACTIVE).', 'product', 22, 0, NULL, '2026-08-13 09:13:22'),
(625, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product BRAKE PADS (MIRAGE) (Code: PRD21, Status: ACTIVE).', 'product', 22, 0, NULL, '2026-08-13 09:13:22'),
(626, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product BRAKE PADS (MIRAGE) (Code: PRD21, Status: ACTIVE).', 'product', 22, 0, NULL, '2026-08-13 09:13:22'),
(628, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product STAB. LINK (TRANSFORMER) (Code: PRD22, Status: ACTIVE).', 'product', 23, 0, NULL, '2026-08-13 09:13:28'),
(629, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product STAB. LINK (TRANSFORMER) (Code: PRD22, Status: ACTIVE).', 'product', 23, 0, NULL, '2026-08-13 09:13:28'),
(630, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product STAB. LINK (TRANSFORMER) (Code: PRD22, Status: ACTIVE).', 'product', 23, 0, NULL, '2026-08-13 09:13:28'),
(631, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product STAB. LINK (TRANSFORMER) (Code: PRD22, Status: ACTIVE).', 'product', 23, 0, NULL, '2026-08-13 09:13:28'),
(633, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product STAB. CLAMP (TRANSFORMER) (Code: PRD23, Status: ACTIVE).', 'product', 24, 0, NULL, '2026-08-13 09:13:35'),
(634, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product STAB. CLAMP (TRANSFORMER) (Code: PRD23, Status: ACTIVE).', 'product', 24, 0, NULL, '2026-08-13 09:13:35'),
(635, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product STAB. CLAMP (TRANSFORMER) (Code: PRD23, Status: ACTIVE).', 'product', 24, 0, NULL, '2026-08-13 09:13:35'),
(636, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product STAB. CLAMP (TRANSFORMER) (Code: PRD23, Status: ACTIVE).', 'product', 24, 0, NULL, '2026-08-13 09:13:35'),
(638, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product VALVE COVER GASKET (TRANSFORMER) (Code: PRD24, Status: ACTIVE).', 'product', 25, 0, NULL, '2026-08-13 09:13:45'),
(639, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product VALVE COVER GASKET (TRANSFORMER) (Code: PRD24, Status: ACTIVE).', 'product', 25, 0, NULL, '2026-08-13 09:13:45'),
(640, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product VALVE COVER GASKET (TRANSFORMER) (Code: PRD24, Status: ACTIVE).', 'product', 25, 0, NULL, '2026-08-13 09:13:45'),
(641, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product VALVE COVER GASKET (TRANSFORMER) (Code: PRD24, Status: ACTIVE).', 'product', 25, 0, NULL, '2026-08-13 09:13:45'),
(643, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product OIL FILTER (GEELY COOLRAY) (Code: PRD25, Status: ACTIVE).', 'product', 26, 0, NULL, '2026-08-13 09:14:00'),
(644, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product OIL FILTER (GEELY COOLRAY) (Code: PRD25, Status: ACTIVE).', 'product', 26, 0, NULL, '2026-08-13 09:14:00'),
(645, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product OIL FILTER (GEELY COOLRAY) (Code: PRD25, Status: ACTIVE).', 'product', 26, 0, NULL, '2026-08-13 09:14:00'),
(646, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product OIL FILTER (GEELY COOLRAY) (Code: PRD25, Status: ACTIVE).', 'product', 26, 0, NULL, '2026-08-13 09:14:00'),
(648, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product FLUSHING (Code: PRD26, Status: ACTIVE).', 'product', 27, 0, NULL, '2026-08-13 09:14:08'),
(649, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product FLUSHING (Code: PRD26, Status: ACTIVE).', 'product', 27, 0, NULL, '2026-08-13 09:14:08'),
(650, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product FLUSHING (Code: PRD26, Status: ACTIVE).', 'product', 27, 0, NULL, '2026-08-13 09:14:08'),
(651, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product FLUSHING (Code: PRD26, Status: ACTIVE).', 'product', 27, 0, NULL, '2026-08-13 09:14:08'),
(653, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product BRAKE FLUID DOT-3 (Code: PRD27, Status: ACTIVE).', 'product', 28, 0, NULL, '2026-08-13 09:16:56'),
(654, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product BRAKE FLUID DOT-3 (Code: PRD27, Status: ACTIVE).', 'product', 28, 0, NULL, '2026-08-13 09:16:56'),
(655, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product BRAKE FLUID DOT-3 (Code: PRD27, Status: ACTIVE).', 'product', 28, 0, NULL, '2026-08-13 09:16:56'),
(656, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product BRAKE FLUID DOT-3 (Code: PRD27, Status: ACTIVE).', 'product', 28, 0, NULL, '2026-08-13 09:16:56'),
(658, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ROBERLO SILTEX 8000 (Code: PRD28, Status: ACTIVE).', 'product', 29, 0, NULL, '2026-08-13 09:17:03'),
(659, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ROBERLO SILTEX 8000 (Code: PRD28, Status: ACTIVE).', 'product', 29, 0, NULL, '2026-08-13 09:17:03'),
(660, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ROBERLO SILTEX 8000 (Code: PRD28, Status: ACTIVE).', 'product', 29, 0, NULL, '2026-08-13 09:17:03'),
(661, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product ROBERLO SILTEX 8000 (Code: PRD28, Status: ACTIVE).', 'product', 29, 0, NULL, '2026-08-13 09:17:03'),
(663, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product CABIN FILTER (87139-0N010) (Code: PRD29, Status: ACTIVE).', 'product', 30, 0, NULL, '2026-08-13 09:17:10'),
(664, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product CABIN FILTER (87139-0N010) (Code: PRD29, Status: ACTIVE).', 'product', 30, 0, NULL, '2026-08-13 09:17:10'),
(665, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product CABIN FILTER (87139-0N010) (Code: PRD29, Status: ACTIVE).', 'product', 30, 0, NULL, '2026-08-13 09:17:10'),
(666, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product CABIN FILTER (87139-0N010) (Code: PRD29, Status: ACTIVE).', 'product', 30, 0, NULL, '2026-08-13 09:17:10'),
(668, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product WIRE (Code: PRD30, Status: ACTIVE).', 'product', 31, 0, NULL, '2026-08-13 09:17:17'),
(669, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product WIRE (Code: PRD30, Status: ACTIVE).', 'product', 31, 0, NULL, '2026-08-13 09:17:17'),
(670, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product WIRE (Code: PRD30, Status: ACTIVE).', 'product', 31, 0, NULL, '2026-08-13 09:17:17'),
(671, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product WIRE (Code: PRD30, Status: ACTIVE).', 'product', 31, 0, NULL, '2026-08-13 09:17:17'),
(673, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product STAB. CLAMP (TRANSFORMER) (Code: PRD31, Status: ACTIVE).', 'product', 32, 0, NULL, '2026-08-13 09:17:32'),
(674, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product STAB. CLAMP (TRANSFORMER) (Code: PRD31, Status: ACTIVE).', 'product', 32, 0, NULL, '2026-08-13 09:17:32'),
(675, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product STAB. CLAMP (TRANSFORMER) (Code: PRD31, Status: ACTIVE).', 'product', 32, 0, NULL, '2026-08-13 09:17:32'),
(676, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product STAB. CLAMP (TRANSFORMER) (Code: PRD31, Status: ACTIVE).', 'product', 32, 0, NULL, '2026-08-13 09:17:32'),
(678, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product BRAKE PADS (MIRAGE) (Code: PRD32, Status: ACTIVE).', 'product', 33, 0, NULL, '2026-08-13 09:17:40'),
(679, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product BRAKE PADS (MIRAGE) (Code: PRD32, Status: ACTIVE).', 'product', 33, 0, NULL, '2026-08-13 09:17:40');
INSERT INTO `notifications` (`id`, `user_id`, `staff_id`, `type`, `title`, `message`, `reference_type`, `reference_id`, `is_read`, `read_at`, `created_at`) VALUES
(680, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product BRAKE PADS (MIRAGE) (Code: PRD32, Status: ACTIVE).', 'product', 33, 0, NULL, '2026-08-13 09:17:40'),
(681, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product BRAKE PADS (MIRAGE) (Code: PRD32, Status: ACTIVE).', 'product', 33, 0, NULL, '2026-08-13 09:17:40'),
(683, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product OIL FILTER-NAVARA 231 (Code: PRD33, Status: ACTIVE).', 'product', 34, 0, NULL, '2026-08-13 09:17:58'),
(684, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product OIL FILTER-NAVARA 231 (Code: PRD33, Status: ACTIVE).', 'product', 34, 0, NULL, '2026-08-13 09:17:58'),
(685, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product OIL FILTER-NAVARA 231 (Code: PRD33, Status: ACTIVE).', 'product', 34, 0, NULL, '2026-08-13 09:17:58'),
(686, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product OIL FILTER-NAVARA 231 (Code: PRD33, Status: ACTIVE).', 'product', 34, 0, NULL, '2026-08-13 09:17:58'),
(688, 4, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product GEAR OIL -PETRON NEXUS (Code: PRD34, Status: ACTIVE).', 'product', 35, 0, NULL, '2026-08-13 09:18:07'),
(689, 16, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product GEAR OIL -PETRON NEXUS (Code: PRD34, Status: ACTIVE).', 'product', 35, 0, NULL, '2026-08-13 09:18:07'),
(690, 6, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product GEAR OIL -PETRON NEXUS (Code: PRD34, Status: ACTIVE).', 'product', 35, 0, NULL, '2026-08-13 09:18:07'),
(691, 7, NULL, 'system', 'Product Added', 'Erin Patricia Martinez added product GEAR OIL -PETRON NEXUS (Code: PRD34, Status: ACTIVE).', 'product', 35, 0, NULL, '2026-08-13 09:18:07'),
(693, 4, NULL, 'system', 'Job Order Deleted', 'Dj Guingue Cortez deleted job order #JO001.', 'job_order', 5, 0, NULL, '2026-08-14 13:17:52'),
(694, 16, NULL, 'system', 'Job Order Deleted', 'Dj Guingue Cortez deleted job order #JO001.', 'job_order', 5, 0, NULL, '2026-08-14 13:17:52'),
(695, 5, NULL, 'system', 'Job Order Deleted', 'Dj Guingue Cortez deleted job order #JO001.', 'job_order', 5, 0, NULL, '2026-08-14 13:17:52'),
(696, 6, NULL, 'system', 'Job Order Deleted', 'Dj Guingue Cortez deleted job order #JO001.', 'job_order', 5, 0, NULL, '2026-08-14 13:17:52'),
(697, 7, NULL, 'system', 'Job Order Deleted', 'Dj Guingue Cortez deleted job order #JO001.', 'job_order', 5, 0, NULL, '2026-08-14 13:17:52'),
(698, 8, NULL, 'system', 'Job Order Deleted', 'Dj Guingue Cortez deleted job order #JO001.', 'job_order', 5, 0, NULL, '2026-08-14 13:17:52'),
(700, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-17 01:15:42'),
(701, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-17 01:15:42'),
(702, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-17 01:15:42'),
(703, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-17 01:15:42'),
(704, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-17 01:15:42'),
(705, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-17 01:15:42'),
(706, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-17 01:17:26'),
(707, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-17 01:17:26'),
(708, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-17 01:17:26'),
(709, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-17 01:17:26'),
(710, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-17 01:17:26'),
(711, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-17 01:17:26'),
(712, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-17 01:22:27'),
(713, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-17 01:22:27'),
(714, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-17 01:22:27'),
(715, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-17 01:22:27'),
(716, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-17 01:22:27'),
(717, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REGULAR PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 6, 0, NULL, '2026-08-17 01:22:27'),
(718, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service HEAVY PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 5, 0, NULL, '2026-08-17 01:26:21'),
(719, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service HEAVY PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 5, 0, NULL, '2026-08-17 01:26:21'),
(720, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service HEAVY PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 5, 0, NULL, '2026-08-17 01:26:21'),
(721, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service HEAVY PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 5, 0, NULL, '2026-08-17 01:26:21'),
(722, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service HEAVY PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 5, 0, NULL, '2026-08-17 01:26:21'),
(723, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service HEAVY PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 5, 0, NULL, '2026-08-17 01:26:21'),
(724, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service HEAVY PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 5, 0, NULL, '2026-08-17 01:35:21'),
(725, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service HEAVY PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 5, 0, NULL, '2026-08-17 01:35:21'),
(726, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service HEAVY PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 5, 0, NULL, '2026-08-17 01:35:21'),
(727, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service HEAVY PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 5, 0, NULL, '2026-08-17 01:35:21'),
(728, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service HEAVY PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 5, 0, NULL, '2026-08-17 01:35:21'),
(729, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service HEAVY PMS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 5, 0, NULL, '2026-08-17 01:35:21'),
(730, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service LIGHT PMS (Price: ₱0.00, Status: ACTIVE).', 'service', 18, 0, NULL, '2026-08-17 01:37:34'),
(731, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service LIGHT PMS (Price: ₱0.00, Status: ACTIVE).', 'service', 18, 0, NULL, '2026-08-17 01:37:34'),
(732, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service LIGHT PMS (Price: ₱0.00, Status: ACTIVE).', 'service', 18, 0, NULL, '2026-08-17 01:37:34'),
(733, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service LIGHT PMS (Price: ₱0.00, Status: ACTIVE).', 'service', 18, 0, NULL, '2026-08-17 01:37:34'),
(734, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service LIGHT PMS (Price: ₱0.00, Status: ACTIVE).', 'service', 18, 0, NULL, '2026-08-17 01:37:34'),
(735, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service LIGHT PMS (Price: ₱0.00, Status: ACTIVE).', 'service', 18, 0, NULL, '2026-08-17 01:37:34'),
(736, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-30 (Status: ACTIVE -> INACTIVE).', 'product', 6, 0, NULL, '2026-08-17 01:41:37'),
(737, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-30 (Status: ACTIVE -> INACTIVE).', 'product', 6, 0, NULL, '2026-08-17 01:41:37'),
(738, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-30 (Status: ACTIVE -> INACTIVE).', 'product', 6, 0, NULL, '2026-08-17 01:41:37'),
(739, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-30 (Status: ACTIVE -> INACTIVE).', 'product', 6, 0, NULL, '2026-08-17 01:41:37'),
(740, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-30 (Status: ACTIVE -> INACTIVE).', 'product', 6, 0, NULL, '2026-08-17 01:41:37'),
(741, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-30 (Status: INACTIVE -> ACTIVE).', 'product', 6, 0, NULL, '2026-08-17 01:41:50'),
(742, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-30 (Status: INACTIVE -> ACTIVE).', 'product', 6, 0, NULL, '2026-08-17 01:41:50'),
(743, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-30 (Status: INACTIVE -> ACTIVE).', 'product', 6, 0, NULL, '2026-08-17 01:41:50'),
(744, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-30 (Status: INACTIVE -> ACTIVE).', 'product', 6, 0, NULL, '2026-08-17 01:41:50'),
(745, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-30 (Status: INACTIVE -> ACTIVE).', 'product', 6, 0, NULL, '2026-08-17 01:41:50'),
(746, 4, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock ENGINE OIL 5W-30 (Quantity: -20).', 'inventory_transaction', 6, 0, NULL, '2026-08-17 01:43:33'),
(747, 16, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock ENGINE OIL 5W-30 (Quantity: -20).', 'inventory_transaction', 6, 0, NULL, '2026-08-17 01:43:33'),
(748, 5, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock ENGINE OIL 5W-30 (Quantity: -20).', 'inventory_transaction', 6, 0, NULL, '2026-08-17 01:43:33'),
(749, 6, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock ENGINE OIL 5W-30 (Quantity: -20).', 'inventory_transaction', 6, 0, NULL, '2026-08-17 01:43:33'),
(750, 7, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock ENGINE OIL 5W-30 (Quantity: -20).', 'inventory_transaction', 6, 0, NULL, '2026-08-17 01:43:33'),
(751, 2, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock ENGINE OIL 5W-30 (Quantity: -20).', 'inventory_transaction', 6, 0, NULL, '2026-08-17 01:43:33'),
(752, 4, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock ENGINE OIL 5W-40 (Quantity: -11).', 'inventory_transaction', 13, 0, NULL, '2026-08-17 01:43:57'),
(753, 16, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock ENGINE OIL 5W-40 (Quantity: -11).', 'inventory_transaction', 13, 0, NULL, '2026-08-17 01:43:57'),
(754, 5, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock ENGINE OIL 5W-40 (Quantity: -11).', 'inventory_transaction', 13, 0, NULL, '2026-08-17 01:43:57'),
(755, 6, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock ENGINE OIL 5W-40 (Quantity: -11).', 'inventory_transaction', 13, 0, NULL, '2026-08-17 01:43:57'),
(756, 7, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock ENGINE OIL 5W-40 (Quantity: -11).', 'inventory_transaction', 13, 0, NULL, '2026-08-17 01:43:57'),
(757, 2, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock ENGINE OIL 5W-40 (Quantity: -11).', 'inventory_transaction', 13, 0, NULL, '2026-08-17 01:43:57'),
(758, 4, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock OIL FILTER 415 (Quantity: -10).', 'inventory_transaction', 7, 0, NULL, '2026-08-17 01:44:22'),
(759, 16, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock OIL FILTER 415 (Quantity: -10).', 'inventory_transaction', 7, 0, NULL, '2026-08-17 01:44:22'),
(760, 5, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock OIL FILTER 415 (Quantity: -10).', 'inventory_transaction', 7, 0, NULL, '2026-08-17 01:44:22'),
(761, 6, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock OIL FILTER 415 (Quantity: -10).', 'inventory_transaction', 7, 0, NULL, '2026-08-17 01:44:22'),
(762, 7, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock OIL FILTER 415 (Quantity: -10).', 'inventory_transaction', 7, 0, NULL, '2026-08-17 01:44:22'),
(763, 2, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock OIL FILTER 415 (Quantity: -10).', 'inventory_transaction', 7, 0, NULL, '2026-08-17 01:44:22'),
(764, 4, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock OIL FITER 110 (Quantity: -10).', 'inventory_transaction', 8, 0, NULL, '2026-08-17 01:44:49'),
(765, 16, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock OIL FITER 110 (Quantity: -10).', 'inventory_transaction', 8, 0, NULL, '2026-08-17 01:44:49'),
(766, 5, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock OIL FITER 110 (Quantity: -10).', 'inventory_transaction', 8, 0, NULL, '2026-08-17 01:44:49'),
(767, 6, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock OIL FITER 110 (Quantity: -10).', 'inventory_transaction', 8, 0, NULL, '2026-08-17 01:44:49'),
(768, 7, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock OIL FITER 110 (Quantity: -10).', 'inventory_transaction', 8, 0, NULL, '2026-08-17 01:44:49'),
(769, 2, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock OIL FITER 110 (Quantity: -10).', 'inventory_transaction', 8, 0, NULL, '2026-08-17 01:44:49'),
(770, 4, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock BRAKE CLEANER (Quantity: -17).', 'inventory_transaction', 12, 0, NULL, '2026-08-17 01:45:34'),
(771, 16, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock BRAKE CLEANER (Quantity: -17).', 'inventory_transaction', 12, 0, NULL, '2026-08-17 01:45:34'),
(772, 5, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock BRAKE CLEANER (Quantity: -17).', 'inventory_transaction', 12, 0, NULL, '2026-08-17 01:45:34'),
(773, 6, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock BRAKE CLEANER (Quantity: -17).', 'inventory_transaction', 12, 0, NULL, '2026-08-17 01:45:34'),
(774, 7, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock BRAKE CLEANER (Quantity: -17).', 'inventory_transaction', 12, 0, NULL, '2026-08-17 01:45:34'),
(775, 2, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock BRAKE CLEANER (Quantity: -17).', 'inventory_transaction', 12, 0, NULL, '2026-08-17 01:45:34'),
(776, 4, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock COOLANT GREEN (Quantity: +4).', 'inventory_transaction', 20, 0, NULL, '2026-08-17 01:46:42'),
(777, 16, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock COOLANT GREEN (Quantity: +4).', 'inventory_transaction', 20, 0, NULL, '2026-08-17 01:46:42'),
(778, 5, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock COOLANT GREEN (Quantity: +4).', 'inventory_transaction', 20, 0, NULL, '2026-08-17 01:46:42'),
(779, 6, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock COOLANT GREEN (Quantity: +4).', 'inventory_transaction', 20, 0, NULL, '2026-08-17 01:46:42'),
(780, 7, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock COOLANT GREEN (Quantity: +4).', 'inventory_transaction', 20, 0, NULL, '2026-08-17 01:46:42'),
(781, 2, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock COOLANT GREEN (Quantity: +4).', 'inventory_transaction', 20, 0, NULL, '2026-08-17 01:46:42'),
(782, 4, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock ATF LV MV (STOCKS) (Quantity: -19).', 'inventory_transaction', 9, 0, NULL, '2026-08-17 01:47:19'),
(783, 16, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock ATF LV MV (STOCKS) (Quantity: -19).', 'inventory_transaction', 9, 0, NULL, '2026-08-17 01:47:19'),
(784, 5, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock ATF LV MV (STOCKS) (Quantity: -19).', 'inventory_transaction', 9, 0, NULL, '2026-08-17 01:47:19'),
(785, 6, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock ATF LV MV (STOCKS) (Quantity: -19).', 'inventory_transaction', 9, 0, NULL, '2026-08-17 01:47:19'),
(786, 7, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock ATF LV MV (STOCKS) (Quantity: -19).', 'inventory_transaction', 9, 0, NULL, '2026-08-17 01:47:19'),
(787, 2, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock ATF LV MV (STOCKS) (Quantity: -19).', 'inventory_transaction', 9, 0, NULL, '2026-08-17 01:47:19'),
(788, 4, NULL, 'system', 'Product Added', 'Lovely Joyce Gambong added product ATF SAE-20 (Code: PRD35, Status: ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 01:49:49'),
(789, 16, NULL, 'system', 'Product Added', 'Lovely Joyce Gambong added product ATF SAE-20 (Code: PRD35, Status: ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 01:49:49'),
(790, 5, NULL, 'system', 'Product Added', 'Lovely Joyce Gambong added product ATF SAE-20 (Code: PRD35, Status: ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 01:49:49'),
(791, 7, NULL, 'system', 'Product Added', 'Lovely Joyce Gambong added product ATF SAE-20 (Code: PRD35, Status: ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 01:49:49'),
(792, 2, NULL, 'system', 'Product Added', 'Lovely Joyce Gambong added product ATF SAE-20 (Code: PRD35, Status: ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 01:49:49'),
(793, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 01:50:06'),
(794, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 01:50:06'),
(795, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 01:50:06'),
(796, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 01:50:06'),
(797, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 01:50:06'),
(798, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 01:50:28'),
(799, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 01:50:28'),
(800, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 01:50:28'),
(801, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 01:50:28'),
(802, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 01:50:28'),
(803, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 01:50:36'),
(804, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 01:50:36'),
(805, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 01:50:36'),
(806, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 01:50:36'),
(807, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 01:50:36'),
(808, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-17 01:50:46'),
(809, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-17 01:50:46'),
(810, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-17 01:50:46'),
(811, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-17 01:50:46'),
(812, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-17 01:50:46'),
(813, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE FLUID DOT-3 (Status: ACTIVE -> ACTIVE).', 'product', 28, 0, NULL, '2026-08-17 01:51:27'),
(814, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE FLUID DOT-3 (Status: ACTIVE -> ACTIVE).', 'product', 28, 0, NULL, '2026-08-17 01:51:27'),
(815, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE FLUID DOT-3 (Status: ACTIVE -> ACTIVE).', 'product', 28, 0, NULL, '2026-08-17 01:51:27'),
(816, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE FLUID DOT-3 (Status: ACTIVE -> ACTIVE).', 'product', 28, 0, NULL, '2026-08-17 01:51:27'),
(817, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE FLUID DOT-3 (Status: ACTIVE -> ACTIVE).', 'product', 28, 0, NULL, '2026-08-17 01:51:27'),
(818, 4, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock BRAKE FLUID DOT-3 (Quantity: +9).', 'inventory_transaction', 28, 0, NULL, '2026-08-17 01:51:40'),
(819, 16, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock BRAKE FLUID DOT-3 (Quantity: +9).', 'inventory_transaction', 28, 0, NULL, '2026-08-17 01:51:40'),
(820, 5, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock BRAKE FLUID DOT-3 (Quantity: +9).', 'inventory_transaction', 28, 0, NULL, '2026-08-17 01:51:40'),
(821, 6, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock BRAKE FLUID DOT-3 (Quantity: +9).', 'inventory_transaction', 28, 0, NULL, '2026-08-17 01:51:40'),
(822, 7, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock BRAKE FLUID DOT-3 (Quantity: +9).', 'inventory_transaction', 28, 0, NULL, '2026-08-17 01:51:40'),
(823, 2, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock BRAKE FLUID DOT-3 (Quantity: +9).', 'inventory_transaction', 28, 0, NULL, '2026-08-17 01:51:40'),
(824, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product AIR FILTER (MULTI-VEHICLE) (Status: ACTIVE -> ACTIVE).', 'product', 5, 0, NULL, '2026-08-17 02:06:09'),
(825, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product AIR FILTER (MULTI-VEHICLE) (Status: ACTIVE -> ACTIVE).', 'product', 5, 0, NULL, '2026-08-17 02:06:09'),
(826, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product AIR FILTER (MULTI-VEHICLE) (Status: ACTIVE -> ACTIVE).', 'product', 5, 0, NULL, '2026-08-17 02:06:09'),
(827, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product AIR FILTER (MULTI-VEHICLE) (Status: ACTIVE -> ACTIVE).', 'product', 5, 0, NULL, '2026-08-17 02:06:09'),
(828, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product AIR FILTER (MULTI-VEHICLE) (Status: ACTIVE -> ACTIVE).', 'product', 5, 0, NULL, '2026-08-17 02:06:09'),
(829, 4, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock AIR FILTER (MULTI-VEHICLE) (Quantity: -20).', 'inventory_transaction', 5, 0, NULL, '2026-08-17 02:06:18'),
(830, 16, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock AIR FILTER (MULTI-VEHICLE) (Quantity: -20).', 'inventory_transaction', 5, 0, NULL, '2026-08-17 02:06:18'),
(831, 5, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock AIR FILTER (MULTI-VEHICLE) (Quantity: -20).', 'inventory_transaction', 5, 0, NULL, '2026-08-17 02:06:18'),
(832, 6, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock AIR FILTER (MULTI-VEHICLE) (Quantity: -20).', 'inventory_transaction', 5, 0, NULL, '2026-08-17 02:06:18'),
(833, 7, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock AIR FILTER (MULTI-VEHICLE) (Quantity: -20).', 'inventory_transaction', 5, 0, NULL, '2026-08-17 02:06:18'),
(834, 2, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock AIR FILTER (MULTI-VEHICLE) (Quantity: -20).', 'inventory_transaction', 5, 0, NULL, '2026-08-17 02:06:18'),
(835, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product AIR FILTER (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 4, 0, NULL, '2026-08-17 02:07:30'),
(836, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product AIR FILTER (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 4, 0, NULL, '2026-08-17 02:07:30'),
(837, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product AIR FILTER (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 4, 0, NULL, '2026-08-17 02:07:30'),
(838, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product AIR FILTER (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 4, 0, NULL, '2026-08-17 02:07:30'),
(839, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product AIR FILTER (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 4, 0, NULL, '2026-08-17 02:07:30'),
(840, 4, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock AIR FILTER (TRANSFORMER) (Quantity: -20).', 'inventory_transaction', 4, 0, NULL, '2026-08-17 02:07:39'),
(841, 16, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock AIR FILTER (TRANSFORMER) (Quantity: -20).', 'inventory_transaction', 4, 0, NULL, '2026-08-17 02:07:39'),
(842, 5, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock AIR FILTER (TRANSFORMER) (Quantity: -20).', 'inventory_transaction', 4, 0, NULL, '2026-08-17 02:07:39'),
(843, 6, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock AIR FILTER (TRANSFORMER) (Quantity: -20).', 'inventory_transaction', 4, 0, NULL, '2026-08-17 02:07:39'),
(844, 7, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock AIR FILTER (TRANSFORMER) (Quantity: -20).', 'inventory_transaction', 4, 0, NULL, '2026-08-17 02:07:39'),
(845, 2, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock AIR FILTER (TRANSFORMER) (Quantity: -20).', 'inventory_transaction', 4, 0, NULL, '2026-08-17 02:07:39'),
(846, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 02:08:17'),
(847, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 02:08:17'),
(848, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 02:08:17'),
(849, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 02:08:17'),
(850, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 02:08:17'),
(851, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 02:08:35'),
(852, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 02:08:35'),
(853, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 02:08:35'),
(854, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 02:08:35'),
(855, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 02:08:35'),
(856, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BATTERY (IMARFLEX) (Status: ACTIVE -> ACTIVE).', 'product', 21, 0, NULL, '2026-08-17 02:12:52'),
(857, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BATTERY (IMARFLEX) (Status: ACTIVE -> ACTIVE).', 'product', 21, 0, NULL, '2026-08-17 02:12:52'),
(858, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BATTERY (IMARFLEX) (Status: ACTIVE -> ACTIVE).', 'product', 21, 0, NULL, '2026-08-17 02:12:52'),
(859, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BATTERY (IMARFLEX) (Status: ACTIVE -> ACTIVE).', 'product', 21, 0, NULL, '2026-08-17 02:12:52'),
(860, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BATTERY (IMARFLEX) (Status: ACTIVE -> ACTIVE).', 'product', 21, 0, NULL, '2026-08-17 02:12:52'),
(861, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-17 02:14:57'),
(862, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-17 02:14:57'),
(863, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-17 02:14:57'),
(864, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-17 02:14:57'),
(865, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-17 02:14:57'),
(866, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE FLUID DOT-3 (Status: ACTIVE -> ACTIVE).', 'product', 28, 0, NULL, '2026-08-17 02:15:46'),
(867, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE FLUID DOT-3 (Status: ACTIVE -> ACTIVE).', 'product', 28, 0, NULL, '2026-08-17 02:15:46'),
(868, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE FLUID DOT-3 (Status: ACTIVE -> ACTIVE).', 'product', 28, 0, NULL, '2026-08-17 02:15:46'),
(869, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE FLUID DOT-3 (Status: ACTIVE -> ACTIVE).', 'product', 28, 0, NULL, '2026-08-17 02:15:46'),
(870, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE FLUID DOT-3 (Status: ACTIVE -> ACTIVE).', 'product', 28, 0, NULL, '2026-08-17 02:15:46'),
(871, 4, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock BRAKE FLUID DOT-3 (Quantity: -1).', 'inventory_transaction', 28, 0, NULL, '2026-08-17 02:15:57'),
(872, 16, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock BRAKE FLUID DOT-3 (Quantity: -1).', 'inventory_transaction', 28, 0, NULL, '2026-08-17 02:15:57'),
(873, 5, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock BRAKE FLUID DOT-3 (Quantity: -1).', 'inventory_transaction', 28, 0, NULL, '2026-08-17 02:15:57'),
(874, 6, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock BRAKE FLUID DOT-3 (Quantity: -1).', 'inventory_transaction', 28, 0, NULL, '2026-08-17 02:15:57'),
(875, 7, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock BRAKE FLUID DOT-3 (Quantity: -1).', 'inventory_transaction', 28, 0, NULL, '2026-08-17 02:15:57'),
(876, 2, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock BRAKE FLUID DOT-3 (Quantity: -1).', 'inventory_transaction', 28, 0, NULL, '2026-08-17 02:15:57'),
(877, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-17 02:16:04'),
(878, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-17 02:16:04'),
(879, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-17 02:16:04'),
(880, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-17 02:16:04'),
(881, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 12, 0, NULL, '2026-08-17 02:16:04'),
(882, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE PADS (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 22, 0, NULL, '2026-08-17 02:17:43'),
(883, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE PADS (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 22, 0, NULL, '2026-08-17 02:17:43'),
(884, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE PADS (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 22, 0, NULL, '2026-08-17 02:17:43'),
(885, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE PADS (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 22, 0, NULL, '2026-08-17 02:17:43'),
(886, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE PADS (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 22, 0, NULL, '2026-08-17 02:17:43'),
(887, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE PADS (TRANSORMER) (Status: ACTIVE -> ACTIVE).', 'product', 33, 0, NULL, '2026-08-17 02:18:11'),
(888, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE PADS (TRANSORMER) (Status: ACTIVE -> ACTIVE).', 'product', 33, 0, NULL, '2026-08-17 02:18:11'),
(889, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE PADS (TRANSORMER) (Status: ACTIVE -> ACTIVE).', 'product', 33, 0, NULL, '2026-08-17 02:18:11'),
(890, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE PADS (TRANSORMER) (Status: ACTIVE -> ACTIVE).', 'product', 33, 0, NULL, '2026-08-17 02:18:11'),
(891, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product BRAKE PADS (TRANSORMER) (Status: ACTIVE -> ACTIVE).', 'product', 33, 0, NULL, '2026-08-17 02:18:11'),
(892, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product CABIN FILTER (87139-0N010) (Status: ACTIVE -> ACTIVE).', 'product', 30, 0, NULL, '2026-08-17 02:19:12'),
(893, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product CABIN FILTER (87139-0N010) (Status: ACTIVE -> ACTIVE).', 'product', 30, 0, NULL, '2026-08-17 02:19:12'),
(894, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product CABIN FILTER (87139-0N010) (Status: ACTIVE -> ACTIVE).', 'product', 30, 0, NULL, '2026-08-17 02:19:12'),
(895, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product CABIN FILTER (87139-0N010) (Status: ACTIVE -> ACTIVE).', 'product', 30, 0, NULL, '2026-08-17 02:19:12'),
(896, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product CABIN FILTER (87139-0N010) (Status: ACTIVE -> ACTIVE).', 'product', 30, 0, NULL, '2026-08-17 02:19:12'),
(897, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product THROTTLE/CARB CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 16, 0, NULL, '2026-08-17 02:31:36'),
(898, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product THROTTLE/CARB CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 16, 0, NULL, '2026-08-17 02:31:36'),
(899, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product THROTTLE/CARB CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 16, 0, NULL, '2026-08-17 02:31:36'),
(900, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product THROTTLE/CARB CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 16, 0, NULL, '2026-08-17 02:31:36'),
(901, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product THROTTLE/CARB CLEANER (Status: ACTIVE -> ACTIVE).', 'product', 16, 0, NULL, '2026-08-17 02:31:36'),
(902, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT BLUE (Status: ACTIVE -> ACTIVE).', 'product', 19, 0, NULL, '2026-08-17 02:33:38'),
(903, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT BLUE (Status: ACTIVE -> ACTIVE).', 'product', 19, 0, NULL, '2026-08-17 02:33:38'),
(904, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT BLUE (Status: ACTIVE -> ACTIVE).', 'product', 19, 0, NULL, '2026-08-17 02:33:38'),
(905, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT BLUE (Status: ACTIVE -> ACTIVE).', 'product', 19, 0, NULL, '2026-08-17 02:33:38'),
(906, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT BLUE (Status: ACTIVE -> ACTIVE).', 'product', 19, 0, NULL, '2026-08-17 02:33:38'),
(907, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT GREEN (Status: ACTIVE -> ACTIVE).', 'product', 20, 0, NULL, '2026-08-17 02:34:06'),
(908, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT GREEN (Status: ACTIVE -> ACTIVE).', 'product', 20, 0, NULL, '2026-08-17 02:34:06'),
(909, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT GREEN (Status: ACTIVE -> ACTIVE).', 'product', 20, 0, NULL, '2026-08-17 02:34:06'),
(910, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT GREEN (Status: ACTIVE -> ACTIVE).', 'product', 20, 0, NULL, '2026-08-17 02:34:06'),
(911, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT GREEN (Status: ACTIVE -> ACTIVE).', 'product', 20, 0, NULL, '2026-08-17 02:34:06'),
(912, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT GREEN (Status: ACTIVE -> ACTIVE).', 'product', 20, 0, NULL, '2026-08-17 02:34:25'),
(913, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT GREEN (Status: ACTIVE -> ACTIVE).', 'product', 20, 0, NULL, '2026-08-17 02:34:25'),
(914, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT GREEN (Status: ACTIVE -> ACTIVE).', 'product', 20, 0, NULL, '2026-08-17 02:34:25'),
(915, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT GREEN (Status: ACTIVE -> ACTIVE).', 'product', 20, 0, NULL, '2026-08-17 02:34:25'),
(916, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT GREEN (Status: ACTIVE -> ACTIVE).', 'product', 20, 0, NULL, '2026-08-17 02:34:25'),
(917, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT BLUE (Status: ACTIVE -> ACTIVE).', 'product', 19, 0, NULL, '2026-08-17 02:34:38'),
(918, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT BLUE (Status: ACTIVE -> ACTIVE).', 'product', 19, 0, NULL, '2026-08-17 02:34:38'),
(919, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT BLUE (Status: ACTIVE -> ACTIVE).', 'product', 19, 0, NULL, '2026-08-17 02:34:38'),
(920, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT BLUE (Status: ACTIVE -> ACTIVE).', 'product', 19, 0, NULL, '2026-08-17 02:34:38'),
(921, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product COOLANT BLUE (Status: ACTIVE -> ACTIVE).', 'product', 19, 0, NULL, '2026-08-17 02:34:38'),
(922, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-30 (Status: ACTIVE -> ACTIVE).', 'product', 6, 0, NULL, '2026-08-17 02:35:04'),
(923, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-30 (Status: ACTIVE -> ACTIVE).', 'product', 6, 0, NULL, '2026-08-17 02:35:04'),
(924, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-30 (Status: ACTIVE -> ACTIVE).', 'product', 6, 0, NULL, '2026-08-17 02:35:04'),
(925, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-30 (Status: ACTIVE -> ACTIVE).', 'product', 6, 0, NULL, '2026-08-17 02:35:04'),
(926, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-30 (Status: ACTIVE -> ACTIVE).', 'product', 6, 0, NULL, '2026-08-17 02:35:04'),
(927, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-40 (Status: ACTIVE -> ACTIVE).', 'product', 13, 0, NULL, '2026-08-17 02:35:19'),
(928, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-40 (Status: ACTIVE -> ACTIVE).', 'product', 13, 0, NULL, '2026-08-17 02:35:19'),
(929, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-40 (Status: ACTIVE -> ACTIVE).', 'product', 13, 0, NULL, '2026-08-17 02:35:19'),
(930, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-40 (Status: ACTIVE -> ACTIVE).', 'product', 13, 0, NULL, '2026-08-17 02:35:19'),
(931, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ENGINE OIL 5W-40 (Status: ACTIVE -> ACTIVE).', 'product', 13, 0, NULL, '2026-08-17 02:35:19'),
(932, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product FLUSHING (Status: ACTIVE -> ACTIVE).', 'product', 27, 0, NULL, '2026-08-17 02:37:21'),
(933, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product FLUSHING (Status: ACTIVE -> ACTIVE).', 'product', 27, 0, NULL, '2026-08-17 02:37:21'),
(934, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product FLUSHING (Status: ACTIVE -> ACTIVE).', 'product', 27, 0, NULL, '2026-08-17 02:37:21'),
(935, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product FLUSHING (Status: ACTIVE -> ACTIVE).', 'product', 27, 0, NULL, '2026-08-17 02:37:21'),
(936, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product FLUSHING (Status: ACTIVE -> ACTIVE).', 'product', 27, 0, NULL, '2026-08-17 02:37:21'),
(937, 4, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock FRONT HUB BEARING (MIRAGE) (Quantity: +1).', 'inventory_transaction', 2, 0, NULL, '2026-08-17 02:37:58'),
(938, 16, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock FRONT HUB BEARING (MIRAGE) (Quantity: +1).', 'inventory_transaction', 2, 0, NULL, '2026-08-17 02:37:58'),
(939, 5, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock FRONT HUB BEARING (MIRAGE) (Quantity: +1).', 'inventory_transaction', 2, 0, NULL, '2026-08-17 02:37:58'),
(940, 6, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock FRONT HUB BEARING (MIRAGE) (Quantity: +1).', 'inventory_transaction', 2, 0, NULL, '2026-08-17 02:37:58'),
(941, 7, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock FRONT HUB BEARING (MIRAGE) (Quantity: +1).', 'inventory_transaction', 2, 0, NULL, '2026-08-17 02:37:58'),
(942, 2, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock FRONT HUB BEARING (MIRAGE) (Quantity: +1).', 'inventory_transaction', 2, 0, NULL, '2026-08-17 02:37:58'),
(943, 4, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock FRONT HUB BEARING (MIRAGE) (Quantity: -20).', 'inventory_transaction', 2, 0, NULL, '2026-08-17 02:38:07'),
(944, 16, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock FRONT HUB BEARING (MIRAGE) (Quantity: -20).', 'inventory_transaction', 2, 0, NULL, '2026-08-17 02:38:07'),
(945, 5, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock FRONT HUB BEARING (MIRAGE) (Quantity: -20).', 'inventory_transaction', 2, 0, NULL, '2026-08-17 02:38:07'),
(946, 6, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock FRONT HUB BEARING (MIRAGE) (Quantity: -20).', 'inventory_transaction', 2, 0, NULL, '2026-08-17 02:38:07'),
(947, 7, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock FRONT HUB BEARING (MIRAGE) (Quantity: -20).', 'inventory_transaction', 2, 0, NULL, '2026-08-17 02:38:07'),
(948, 2, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock FRONT HUB BEARING (MIRAGE) (Quantity: -20).', 'inventory_transaction', 2, 0, NULL, '2026-08-17 02:38:07'),
(949, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product FRONT HUB BEARING (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 2, 0, NULL, '2026-08-17 02:38:23'),
(950, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product FRONT HUB BEARING (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 2, 0, NULL, '2026-08-17 02:38:23'),
(951, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product FRONT HUB BEARING (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 2, 0, NULL, '2026-08-17 02:38:23'),
(952, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product FRONT HUB BEARING (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 2, 0, NULL, '2026-08-17 02:38:23'),
(953, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product FRONT HUB BEARING (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 2, 0, NULL, '2026-08-17 02:38:23'),
(954, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 02:39:01'),
(955, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 02:39:01'),
(956, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 02:39:01'),
(957, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 02:39:01'),
(958, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF LV MV (STOCKS) (Status: ACTIVE -> ACTIVE).', 'product', 9, 0, NULL, '2026-08-17 02:39:01'),
(959, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 02:39:13'),
(960, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 02:39:13'),
(961, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 02:39:13'),
(962, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 02:39:13'),
(963, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ATF SAE-20 (Status: ACTIVE -> ACTIVE).', 'product', 36, 0, NULL, '2026-08-17 02:39:13'),
(964, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product GEAR OIL -PETRON NEXUS (Status: ACTIVE -> ACTIVE).', 'product', 35, 0, NULL, '2026-08-17 02:41:06');
INSERT INTO `notifications` (`id`, `user_id`, `staff_id`, `type`, `title`, `message`, `reference_type`, `reference_id`, `is_read`, `read_at`, `created_at`) VALUES
(965, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product GEAR OIL -PETRON NEXUS (Status: ACTIVE -> ACTIVE).', 'product', 35, 0, NULL, '2026-08-17 02:41:06'),
(966, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product GEAR OIL -PETRON NEXUS (Status: ACTIVE -> ACTIVE).', 'product', 35, 0, NULL, '2026-08-17 02:41:06'),
(967, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product GEAR OIL -PETRON NEXUS (Status: ACTIVE -> ACTIVE).', 'product', 35, 0, NULL, '2026-08-17 02:41:06'),
(968, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product GEAR OIL -PETRON NEXUS (Status: ACTIVE -> ACTIVE).', 'product', 35, 0, NULL, '2026-08-17 02:41:06'),
(969, 4, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock GEAR OIL -PETRON NEXUS (Quantity: +1).', 'inventory_transaction', 35, 0, NULL, '2026-08-17 02:41:13'),
(970, 16, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock GEAR OIL -PETRON NEXUS (Quantity: +1).', 'inventory_transaction', 35, 0, NULL, '2026-08-17 02:41:13'),
(971, 5, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock GEAR OIL -PETRON NEXUS (Quantity: +1).', 'inventory_transaction', 35, 0, NULL, '2026-08-17 02:41:13'),
(972, 6, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock GEAR OIL -PETRON NEXUS (Quantity: +1).', 'inventory_transaction', 35, 0, NULL, '2026-08-17 02:41:13'),
(973, 7, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock GEAR OIL -PETRON NEXUS (Quantity: +1).', 'inventory_transaction', 35, 0, NULL, '2026-08-17 02:41:13'),
(974, 2, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock GEAR OIL -PETRON NEXUS (Quantity: +1).', 'inventory_transaction', 35, 0, NULL, '2026-08-17 02:41:13'),
(975, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product GEAR OIL (Status: ACTIVE -> ACTIVE).', 'product', 17, 0, NULL, '2026-08-17 02:41:35'),
(976, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product GEAR OIL (Status: ACTIVE -> ACTIVE).', 'product', 17, 0, NULL, '2026-08-17 02:41:35'),
(977, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product GEAR OIL (Status: ACTIVE -> ACTIVE).', 'product', 17, 0, NULL, '2026-08-17 02:41:35'),
(978, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product GEAR OIL (Status: ACTIVE -> ACTIVE).', 'product', 17, 0, NULL, '2026-08-17 02:41:35'),
(979, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product GEAR OIL (Status: ACTIVE -> ACTIVE).', 'product', 17, 0, NULL, '2026-08-17 02:41:35'),
(980, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER 111 (Status: ACTIVE -> ACTIVE).', 'product', 10, 0, NULL, '2026-08-17 02:43:47'),
(981, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER 111 (Status: ACTIVE -> ACTIVE).', 'product', 10, 0, NULL, '2026-08-17 02:43:47'),
(982, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER 111 (Status: ACTIVE -> ACTIVE).', 'product', 10, 0, NULL, '2026-08-17 02:43:47'),
(983, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER 111 (Status: ACTIVE -> ACTIVE).', 'product', 10, 0, NULL, '2026-08-17 02:43:47'),
(984, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER 111 (Status: ACTIVE -> ACTIVE).', 'product', 10, 0, NULL, '2026-08-17 02:43:47'),
(985, 4, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock OIL FILTER 111 (Quantity: -18).', 'inventory_transaction', 10, 0, NULL, '2026-08-17 02:44:03'),
(986, 16, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock OIL FILTER 111 (Quantity: -18).', 'inventory_transaction', 10, 0, NULL, '2026-08-17 02:44:03'),
(987, 5, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock OIL FILTER 111 (Quantity: -18).', 'inventory_transaction', 10, 0, NULL, '2026-08-17 02:44:03'),
(988, 6, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock OIL FILTER 111 (Quantity: -18).', 'inventory_transaction', 10, 0, NULL, '2026-08-17 02:44:03'),
(989, 7, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock OIL FILTER 111 (Quantity: -18).', 'inventory_transaction', 10, 0, NULL, '2026-08-17 02:44:03'),
(990, 2, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock OIL FILTER 111 (Quantity: -18).', 'inventory_transaction', 10, 0, NULL, '2026-08-17 02:44:03'),
(991, 4, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock OIL FILTER 111 (Quantity: +5).', 'inventory_transaction', 10, 0, NULL, '2026-08-17 02:44:32'),
(992, 16, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock OIL FILTER 111 (Quantity: +5).', 'inventory_transaction', 10, 0, NULL, '2026-08-17 02:44:32'),
(993, 5, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock OIL FILTER 111 (Quantity: +5).', 'inventory_transaction', 10, 0, NULL, '2026-08-17 02:44:32'),
(994, 6, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock OIL FILTER 111 (Quantity: +5).', 'inventory_transaction', 10, 0, NULL, '2026-08-17 02:44:32'),
(995, 7, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock OIL FILTER 111 (Quantity: +5).', 'inventory_transaction', 10, 0, NULL, '2026-08-17 02:44:32'),
(996, 2, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock OIL FILTER 111 (Quantity: +5).', 'inventory_transaction', 10, 0, NULL, '2026-08-17 02:44:32'),
(997, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER 415 (Status: ACTIVE -> ACTIVE).', 'product', 7, 0, NULL, '2026-08-17 02:45:17'),
(998, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER 415 (Status: ACTIVE -> ACTIVE).', 'product', 7, 0, NULL, '2026-08-17 02:45:17'),
(999, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER 415 (Status: ACTIVE -> ACTIVE).', 'product', 7, 0, NULL, '2026-08-17 02:45:17'),
(1000, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER 415 (Status: ACTIVE -> ACTIVE).', 'product', 7, 0, NULL, '2026-08-17 02:45:17'),
(1001, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER 415 (Status: ACTIVE -> ACTIVE).', 'product', 7, 0, NULL, '2026-08-17 02:45:17'),
(1002, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER 111 (Status: ACTIVE -> ACTIVE).', 'product', 10, 0, NULL, '2026-08-17 02:45:29'),
(1003, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER 111 (Status: ACTIVE -> ACTIVE).', 'product', 10, 0, NULL, '2026-08-17 02:45:29'),
(1004, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER 111 (Status: ACTIVE -> ACTIVE).', 'product', 10, 0, NULL, '2026-08-17 02:45:29'),
(1005, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER 111 (Status: ACTIVE -> ACTIVE).', 'product', 10, 0, NULL, '2026-08-17 02:45:29'),
(1006, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER 111 (Status: ACTIVE -> ACTIVE).', 'product', 10, 0, NULL, '2026-08-17 02:45:29'),
(1007, 4, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock OIL FILTER-NAVARA 231 (Quantity: +1).', 'inventory_transaction', 34, 0, NULL, '2026-08-17 02:46:39'),
(1008, 16, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock OIL FILTER-NAVARA 231 (Quantity: +1).', 'inventory_transaction', 34, 0, NULL, '2026-08-17 02:46:39'),
(1009, 5, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock OIL FILTER-NAVARA 231 (Quantity: +1).', 'inventory_transaction', 34, 0, NULL, '2026-08-17 02:46:39'),
(1010, 6, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock OIL FILTER-NAVARA 231 (Quantity: +1).', 'inventory_transaction', 34, 0, NULL, '2026-08-17 02:46:39'),
(1011, 7, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock OIL FILTER-NAVARA 231 (Quantity: +1).', 'inventory_transaction', 34, 0, NULL, '2026-08-17 02:46:39'),
(1012, 2, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock OIL FILTER-NAVARA 231 (Quantity: +1).', 'inventory_transaction', 34, 0, NULL, '2026-08-17 02:46:39'),
(1013, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER-NAVARA 231 (Status: ACTIVE -> ACTIVE).', 'product', 34, 0, NULL, '2026-08-17 02:47:43'),
(1014, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER-NAVARA 231 (Status: ACTIVE -> ACTIVE).', 'product', 34, 0, NULL, '2026-08-17 02:47:43'),
(1015, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER-NAVARA 231 (Status: ACTIVE -> ACTIVE).', 'product', 34, 0, NULL, '2026-08-17 02:47:43'),
(1016, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER-NAVARA 231 (Status: ACTIVE -> ACTIVE).', 'product', 34, 0, NULL, '2026-08-17 02:47:43'),
(1017, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FILTER-NAVARA 231 (Status: ACTIVE -> ACTIVE).', 'product', 34, 0, NULL, '2026-08-17 02:47:43'),
(1018, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FITER 110 (Status: ACTIVE -> ACTIVE).', 'product', 8, 0, NULL, '2026-08-17 02:48:59'),
(1019, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FITER 110 (Status: ACTIVE -> ACTIVE).', 'product', 8, 0, NULL, '2026-08-17 02:48:59'),
(1020, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FITER 110 (Status: ACTIVE -> ACTIVE).', 'product', 8, 0, NULL, '2026-08-17 02:48:59'),
(1021, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FITER 110 (Status: ACTIVE -> ACTIVE).', 'product', 8, 0, NULL, '2026-08-17 02:48:59'),
(1022, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product OIL FITER 110 (Status: ACTIVE -> ACTIVE).', 'product', 8, 0, NULL, '2026-08-17 02:48:59'),
(1023, 4, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock PENETRATING (Quantity: +3).', 'inventory_transaction', 15, 0, NULL, '2026-08-17 02:49:21'),
(1024, 16, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock PENETRATING (Quantity: +3).', 'inventory_transaction', 15, 0, NULL, '2026-08-17 02:49:21'),
(1025, 5, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock PENETRATING (Quantity: +3).', 'inventory_transaction', 15, 0, NULL, '2026-08-17 02:49:21'),
(1026, 6, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock PENETRATING (Quantity: +3).', 'inventory_transaction', 15, 0, NULL, '2026-08-17 02:49:21'),
(1027, 7, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock PENETRATING (Quantity: +3).', 'inventory_transaction', 15, 0, NULL, '2026-08-17 02:49:21'),
(1028, 2, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock PENETRATING (Quantity: +3).', 'inventory_transaction', 15, 0, NULL, '2026-08-17 02:49:21'),
(1029, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product PENETRATING (Status: ACTIVE -> ACTIVE).', 'product', 15, 0, NULL, '2026-08-17 02:51:01'),
(1030, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product PENETRATING (Status: ACTIVE -> ACTIVE).', 'product', 15, 0, NULL, '2026-08-17 02:51:01'),
(1031, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product PENETRATING (Status: ACTIVE -> ACTIVE).', 'product', 15, 0, NULL, '2026-08-17 02:51:01'),
(1032, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product PENETRATING (Status: ACTIVE -> ACTIVE).', 'product', 15, 0, NULL, '2026-08-17 02:51:01'),
(1033, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product PENETRATING (Status: ACTIVE -> ACTIVE).', 'product', 15, 0, NULL, '2026-08-17 02:51:01'),
(1034, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product PETRON ATF SAE-20 (Status: ACTIVE -> INACTIVE).', 'product', 11, 0, NULL, '2026-08-17 02:51:23'),
(1035, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product PETRON ATF SAE-20 (Status: ACTIVE -> INACTIVE).', 'product', 11, 0, NULL, '2026-08-17 02:51:23'),
(1036, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product PETRON ATF SAE-20 (Status: ACTIVE -> INACTIVE).', 'product', 11, 0, NULL, '2026-08-17 02:51:23'),
(1037, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product PETRON ATF SAE-20 (Status: ACTIVE -> INACTIVE).', 'product', 11, 0, NULL, '2026-08-17 02:51:23'),
(1038, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product PETRON ATF SAE-20 (Status: ACTIVE -> INACTIVE).', 'product', 11, 0, NULL, '2026-08-17 02:51:23'),
(1039, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product REAR HUB BEARING (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 14, 0, NULL, '2026-08-17 02:52:23'),
(1040, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product REAR HUB BEARING (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 14, 0, NULL, '2026-08-17 02:52:23'),
(1041, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product REAR HUB BEARING (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 14, 0, NULL, '2026-08-17 02:52:23'),
(1042, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product REAR HUB BEARING (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 14, 0, NULL, '2026-08-17 02:52:23'),
(1043, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product REAR HUB BEARING (MIRAGE) (Status: ACTIVE -> ACTIVE).', 'product', 14, 0, NULL, '2026-08-17 02:52:23'),
(1044, 4, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock REAR HUB BEARING (MIRAGE) (Quantity: -8).', 'inventory_transaction', 14, 0, NULL, '2026-08-17 02:52:34'),
(1045, 16, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock REAR HUB BEARING (MIRAGE) (Quantity: -8).', 'inventory_transaction', 14, 0, NULL, '2026-08-17 02:52:34'),
(1046, 5, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock REAR HUB BEARING (MIRAGE) (Quantity: -8).', 'inventory_transaction', 14, 0, NULL, '2026-08-17 02:52:34'),
(1047, 6, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock REAR HUB BEARING (MIRAGE) (Quantity: -8).', 'inventory_transaction', 14, 0, NULL, '2026-08-17 02:52:34'),
(1048, 7, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock REAR HUB BEARING (MIRAGE) (Quantity: -8).', 'inventory_transaction', 14, 0, NULL, '2026-08-17 02:52:34'),
(1049, 2, NULL, 'system', 'Inventory Stock Out', 'Lovely Joyce Gambong deducted stock REAR HUB BEARING (MIRAGE) (Quantity: -8).', 'inventory_transaction', 14, 0, NULL, '2026-08-17 02:52:34'),
(1050, 4, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock ROBERLO SILTEX 8000 (Quantity: +4).', 'inventory_transaction', 29, 0, NULL, '2026-08-17 02:54:22'),
(1051, 16, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock ROBERLO SILTEX 8000 (Quantity: +4).', 'inventory_transaction', 29, 0, NULL, '2026-08-17 02:54:22'),
(1052, 5, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock ROBERLO SILTEX 8000 (Quantity: +4).', 'inventory_transaction', 29, 0, NULL, '2026-08-17 02:54:22'),
(1053, 6, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock ROBERLO SILTEX 8000 (Quantity: +4).', 'inventory_transaction', 29, 0, NULL, '2026-08-17 02:54:22'),
(1054, 7, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock ROBERLO SILTEX 8000 (Quantity: +4).', 'inventory_transaction', 29, 0, NULL, '2026-08-17 02:54:22'),
(1055, 2, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock ROBERLO SILTEX 8000 (Quantity: +4).', 'inventory_transaction', 29, 0, NULL, '2026-08-17 02:54:22'),
(1056, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ROBERLO SILTEX 8000 (Status: ACTIVE -> ACTIVE).', 'product', 29, 0, NULL, '2026-08-17 02:55:15'),
(1057, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ROBERLO SILTEX 8000 (Status: ACTIVE -> ACTIVE).', 'product', 29, 0, NULL, '2026-08-17 02:55:15'),
(1058, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ROBERLO SILTEX 8000 (Status: ACTIVE -> ACTIVE).', 'product', 29, 0, NULL, '2026-08-17 02:55:15'),
(1059, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ROBERLO SILTEX 8000 (Status: ACTIVE -> ACTIVE).', 'product', 29, 0, NULL, '2026-08-17 02:55:15'),
(1060, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product ROBERLO SILTEX 8000 (Status: ACTIVE -> ACTIVE).', 'product', 29, 0, NULL, '2026-08-17 02:55:15'),
(1061, 4, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock STAB. CLAMP (TRANSFORMER) (Quantity: +1).', 'inventory_transaction', 24, 0, NULL, '2026-08-17 02:55:44'),
(1062, 16, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock STAB. CLAMP (TRANSFORMER) (Quantity: +1).', 'inventory_transaction', 24, 0, NULL, '2026-08-17 02:55:44'),
(1063, 5, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock STAB. CLAMP (TRANSFORMER) (Quantity: +1).', 'inventory_transaction', 24, 0, NULL, '2026-08-17 02:55:44'),
(1064, 6, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock STAB. CLAMP (TRANSFORMER) (Quantity: +1).', 'inventory_transaction', 24, 0, NULL, '2026-08-17 02:55:44'),
(1065, 7, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock STAB. CLAMP (TRANSFORMER) (Quantity: +1).', 'inventory_transaction', 24, 0, NULL, '2026-08-17 02:55:44'),
(1066, 2, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock STAB. CLAMP (TRANSFORMER) (Quantity: +1).', 'inventory_transaction', 24, 0, NULL, '2026-08-17 02:55:44'),
(1067, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. LINK (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 32, 0, NULL, '2026-08-17 02:56:30'),
(1068, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. LINK (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 32, 0, NULL, '2026-08-17 02:56:30'),
(1069, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. LINK (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 32, 0, NULL, '2026-08-17 02:56:30'),
(1070, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. LINK (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 32, 0, NULL, '2026-08-17 02:56:30'),
(1071, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. LINK (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 32, 0, NULL, '2026-08-17 02:56:30'),
(1072, 4, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock STAB. LINK (TRANSFORMER) (Quantity: +3).', 'inventory_transaction', 23, 0, NULL, '2026-08-17 02:56:57'),
(1073, 16, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock STAB. LINK (TRANSFORMER) (Quantity: +3).', 'inventory_transaction', 23, 0, NULL, '2026-08-17 02:56:57'),
(1074, 5, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock STAB. LINK (TRANSFORMER) (Quantity: +3).', 'inventory_transaction', 23, 0, NULL, '2026-08-17 02:56:57'),
(1075, 6, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock STAB. LINK (TRANSFORMER) (Quantity: +3).', 'inventory_transaction', 23, 0, NULL, '2026-08-17 02:56:57'),
(1076, 7, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock STAB. LINK (TRANSFORMER) (Quantity: +3).', 'inventory_transaction', 23, 0, NULL, '2026-08-17 02:56:57'),
(1077, 2, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock STAB. LINK (TRANSFORMER) (Quantity: +3).', 'inventory_transaction', 23, 0, NULL, '2026-08-17 02:56:57'),
(1078, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. CLAMP (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 24, 0, NULL, '2026-08-17 02:57:12'),
(1079, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. CLAMP (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 24, 0, NULL, '2026-08-17 02:57:12'),
(1080, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. CLAMP (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 24, 0, NULL, '2026-08-17 02:57:12'),
(1081, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. CLAMP (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 24, 0, NULL, '2026-08-17 02:57:12'),
(1082, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. CLAMP (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 24, 0, NULL, '2026-08-17 02:57:12'),
(1083, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. LINK (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 23, 0, NULL, '2026-08-17 02:57:24'),
(1084, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. LINK (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 23, 0, NULL, '2026-08-17 02:57:24'),
(1085, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. LINK (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 23, 0, NULL, '2026-08-17 02:57:24'),
(1086, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. LINK (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 23, 0, NULL, '2026-08-17 02:57:24'),
(1087, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. LINK (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 23, 0, NULL, '2026-08-17 02:57:24'),
(1088, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. LINK (TRANSFORMER) (Status: ACTIVE -> INACTIVE).', 'product', 32, 0, NULL, '2026-08-17 02:57:45'),
(1089, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. LINK (TRANSFORMER) (Status: ACTIVE -> INACTIVE).', 'product', 32, 0, NULL, '2026-08-17 02:57:45'),
(1090, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. LINK (TRANSFORMER) (Status: ACTIVE -> INACTIVE).', 'product', 32, 0, NULL, '2026-08-17 02:57:45'),
(1091, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. LINK (TRANSFORMER) (Status: ACTIVE -> INACTIVE).', 'product', 32, 0, NULL, '2026-08-17 02:57:45'),
(1092, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product STAB. LINK (TRANSFORMER) (Status: ACTIVE -> INACTIVE).', 'product', 32, 0, NULL, '2026-08-17 02:57:45'),
(1093, 4, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock THROTTLE/CARB CLEANER (Quantity: +3).', 'inventory_transaction', 16, 0, NULL, '2026-08-17 02:58:20'),
(1094, 16, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock THROTTLE/CARB CLEANER (Quantity: +3).', 'inventory_transaction', 16, 0, NULL, '2026-08-17 02:58:20'),
(1095, 5, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock THROTTLE/CARB CLEANER (Quantity: +3).', 'inventory_transaction', 16, 0, NULL, '2026-08-17 02:58:20'),
(1096, 6, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock THROTTLE/CARB CLEANER (Quantity: +3).', 'inventory_transaction', 16, 0, NULL, '2026-08-17 02:58:20'),
(1097, 7, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock THROTTLE/CARB CLEANER (Quantity: +3).', 'inventory_transaction', 16, 0, NULL, '2026-08-17 02:58:20'),
(1098, 2, NULL, 'system', 'Inventory Stock In', 'Lovely Joyce Gambong added stock THROTTLE/CARB CLEANER (Quantity: +3).', 'inventory_transaction', 16, 0, NULL, '2026-08-17 02:58:20'),
(1099, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product VALVE COVER GASKET (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 25, 0, NULL, '2026-08-17 02:59:22'),
(1100, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product VALVE COVER GASKET (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 25, 0, NULL, '2026-08-17 02:59:22'),
(1101, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product VALVE COVER GASKET (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 25, 0, NULL, '2026-08-17 02:59:22'),
(1102, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product VALVE COVER GASKET (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 25, 0, NULL, '2026-08-17 02:59:22'),
(1103, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product VALVE COVER GASKET (TRANSFORMER) (Status: ACTIVE -> ACTIVE).', 'product', 25, 0, NULL, '2026-08-17 02:59:22'),
(1104, 4, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product WIRE (Status: ACTIVE -> ACTIVE).', 'product', 31, 0, NULL, '2026-08-17 02:59:58'),
(1105, 16, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product WIRE (Status: ACTIVE -> ACTIVE).', 'product', 31, 0, NULL, '2026-08-17 02:59:58'),
(1106, 5, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product WIRE (Status: ACTIVE -> ACTIVE).', 'product', 31, 0, NULL, '2026-08-17 02:59:58'),
(1107, 7, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product WIRE (Status: ACTIVE -> ACTIVE).', 'product', 31, 0, NULL, '2026-08-17 02:59:58'),
(1108, 2, NULL, 'system', 'Product Updated', 'Lovely Joyce Gambong updated product WIRE (Status: ACTIVE -> ACTIVE).', 'product', 31, 0, NULL, '2026-08-17 02:59:58'),
(1109, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service AIRCON CLEANING (SINGLE EVAPORATOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 19, 0, NULL, '2026-08-17 03:18:12'),
(1110, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service AIRCON CLEANING (SINGLE EVAPORATOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 19, 0, NULL, '2026-08-17 03:18:12'),
(1111, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service AIRCON CLEANING (SINGLE EVAPORATOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 19, 0, NULL, '2026-08-17 03:18:12'),
(1112, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service AIRCON CLEANING (SINGLE EVAPORATOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 19, 0, NULL, '2026-08-17 03:18:12'),
(1113, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service AIRCON CLEANING (SINGLE EVAPORATOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 19, 0, NULL, '2026-08-17 03:18:12'),
(1114, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service AIRCON CLEANING (SINGLE EVAPORATOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 19, 0, NULL, '2026-08-17 03:18:12'),
(1115, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service AIRCON CLEANING (SINGLE EVAPORATOR) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 19, 0, NULL, '2026-08-17 03:18:38'),
(1116, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service AIRCON CLEANING (SINGLE EVAPORATOR) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 19, 0, NULL, '2026-08-17 03:18:38'),
(1117, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service AIRCON CLEANING (SINGLE EVAPORATOR) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 19, 0, NULL, '2026-08-17 03:18:38'),
(1118, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service AIRCON CLEANING (SINGLE EVAPORATOR) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 19, 0, NULL, '2026-08-17 03:18:38'),
(1119, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service AIRCON CLEANING (SINGLE EVAPORATOR) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 19, 0, NULL, '2026-08-17 03:18:38'),
(1120, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service AIRCON CLEANING (SINGLE EVAPORATOR) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 19, 0, NULL, '2026-08-17 03:18:38'),
(1121, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service AIRCON CLEANING (DUAL EVAPORATOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 20, 0, NULL, '2026-08-17 03:19:12'),
(1122, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service AIRCON CLEANING (DUAL EVAPORATOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 20, 0, NULL, '2026-08-17 03:19:12'),
(1123, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service AIRCON CLEANING (DUAL EVAPORATOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 20, 0, NULL, '2026-08-17 03:19:12'),
(1124, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service AIRCON CLEANING (DUAL EVAPORATOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 20, 0, NULL, '2026-08-17 03:19:12'),
(1125, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service AIRCON CLEANING (DUAL EVAPORATOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 20, 0, NULL, '2026-08-17 03:19:12'),
(1126, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service AIRCON CLEANING (DUAL EVAPORATOR) (Price: ₱0.00, Status: ACTIVE).', 'service', 20, 0, NULL, '2026-08-17 03:19:12'),
(1127, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service AIRCON CLEANING (DUAL EVAPORATOR) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 20, 0, NULL, '2026-08-17 03:19:26'),
(1128, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service AIRCON CLEANING (DUAL EVAPORATOR) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 20, 0, NULL, '2026-08-17 03:19:26'),
(1129, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service AIRCON CLEANING (DUAL EVAPORATOR) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 20, 0, NULL, '2026-08-17 03:19:26'),
(1130, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service AIRCON CLEANING (DUAL EVAPORATOR) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 20, 0, NULL, '2026-08-17 03:19:26'),
(1131, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service AIRCON CLEANING (DUAL EVAPORATOR) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 20, 0, NULL, '2026-08-17 03:19:26'),
(1132, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service AIRCON CLEANING (DUAL EVAPORATOR) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 20, 0, NULL, '2026-08-17 03:19:26'),
(1133, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service CHANGE OIL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 4, 0, NULL, '2026-08-17 03:19:39'),
(1134, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service CHANGE OIL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 4, 0, NULL, '2026-08-17 03:19:39'),
(1135, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service CHANGE OIL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 4, 0, NULL, '2026-08-17 03:19:39'),
(1136, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service CHANGE OIL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 4, 0, NULL, '2026-08-17 03:19:39'),
(1137, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service CHANGE OIL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 4, 0, NULL, '2026-08-17 03:19:39'),
(1138, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service CHANGE OIL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 4, 0, NULL, '2026-08-17 03:19:39'),
(1139, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service CHANGE OIL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 4, 0, NULL, '2026-08-17 03:21:28'),
(1140, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service CHANGE OIL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 4, 0, NULL, '2026-08-17 03:21:28'),
(1141, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service CHANGE OIL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 4, 0, NULL, '2026-08-17 03:21:28'),
(1142, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service CHANGE OIL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 4, 0, NULL, '2026-08-17 03:21:28'),
(1143, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service CHANGE OIL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 4, 0, NULL, '2026-08-17 03:21:28'),
(1144, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service CHANGE OIL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 4, 0, NULL, '2026-08-17 03:21:28'),
(1145, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service EGR, INTAKE AND TURBO CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 21, 0, NULL, '2026-08-17 03:22:13'),
(1146, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service EGR, INTAKE AND TURBO CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 21, 0, NULL, '2026-08-17 03:22:13'),
(1147, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service EGR, INTAKE AND TURBO CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 21, 0, NULL, '2026-08-17 03:22:13'),
(1148, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service EGR, INTAKE AND TURBO CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 21, 0, NULL, '2026-08-17 03:22:13'),
(1149, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service EGR, INTAKE AND TURBO CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 21, 0, NULL, '2026-08-17 03:22:13'),
(1150, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service EGR, INTAKE AND TURBO CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 21, 0, NULL, '2026-08-17 03:22:13'),
(1151, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service EGR AND INTAKE CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 22, 0, NULL, '2026-08-17 03:22:59'),
(1152, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service EGR AND INTAKE CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 22, 0, NULL, '2026-08-17 03:22:59'),
(1153, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service EGR AND INTAKE CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 22, 0, NULL, '2026-08-17 03:22:59'),
(1154, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service EGR AND INTAKE CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 22, 0, NULL, '2026-08-17 03:22:59'),
(1155, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service EGR AND INTAKE CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 22, 0, NULL, '2026-08-17 03:22:59'),
(1156, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service EGR AND INTAKE CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 22, 0, NULL, '2026-08-17 03:22:59'),
(1157, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service TURBO CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 23, 0, NULL, '2026-08-17 03:23:34'),
(1158, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service TURBO CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 23, 0, NULL, '2026-08-17 03:23:34'),
(1159, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service TURBO CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 23, 0, NULL, '2026-08-17 03:23:34'),
(1160, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service TURBO CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 23, 0, NULL, '2026-08-17 03:23:34'),
(1161, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service TURBO CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 23, 0, NULL, '2026-08-17 03:23:34'),
(1162, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service TURBO CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 23, 0, NULL, '2026-08-17 03:23:34'),
(1163, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service EGR, INTAKE, AND TURBO CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 24, 0, NULL, '2026-08-17 03:24:26'),
(1164, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service EGR, INTAKE, AND TURBO CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 24, 0, NULL, '2026-08-17 03:24:26'),
(1165, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service EGR, INTAKE, AND TURBO CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 24, 0, NULL, '2026-08-17 03:24:26'),
(1166, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service EGR, INTAKE, AND TURBO CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 24, 0, NULL, '2026-08-17 03:24:26'),
(1167, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service EGR, INTAKE, AND TURBO CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 24, 0, NULL, '2026-08-17 03:24:26'),
(1168, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service EGR, INTAKE, AND TURBO CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 24, 0, NULL, '2026-08-17 03:24:26'),
(1169, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service CARWASH (Price: ₱0.00, Status: ACTIVE).', 'service', 25, 0, NULL, '2026-08-17 03:25:02'),
(1170, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service CARWASH (Price: ₱0.00, Status: ACTIVE).', 'service', 25, 0, NULL, '2026-08-17 03:25:02'),
(1171, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service CARWASH (Price: ₱0.00, Status: ACTIVE).', 'service', 25, 0, NULL, '2026-08-17 03:25:02'),
(1172, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service CARWASH (Price: ₱0.00, Status: ACTIVE).', 'service', 25, 0, NULL, '2026-08-17 03:25:02'),
(1173, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service CARWASH (Price: ₱0.00, Status: ACTIVE).', 'service', 25, 0, NULL, '2026-08-17 03:25:02'),
(1174, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service CARWASH (Price: ₱0.00, Status: ACTIVE).', 'service', 25, 0, NULL, '2026-08-17 03:25:02'),
(1175, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service WHEEL ALIGNMENT (COMPLETE) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 16, 0, NULL, '2026-08-17 03:25:35'),
(1176, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service WHEEL ALIGNMENT (COMPLETE) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 16, 0, NULL, '2026-08-17 03:25:35'),
(1177, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service WHEEL ALIGNMENT (COMPLETE) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 16, 0, NULL, '2026-08-17 03:25:35'),
(1178, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service WHEEL ALIGNMENT (COMPLETE) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 16, 0, NULL, '2026-08-17 03:25:35'),
(1179, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service WHEEL ALIGNMENT (COMPLETE) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 16, 0, NULL, '2026-08-17 03:25:35'),
(1180, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service WHEEL ALIGNMENT (COMPLETE) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 16, 0, NULL, '2026-08-17 03:25:35'),
(1181, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service WHEEL ALIGNMENT (TOE IN/TOE OUT) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 15, 0, NULL, '2026-08-17 03:25:55'),
(1182, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service WHEEL ALIGNMENT (TOE IN/TOE OUT) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 15, 0, NULL, '2026-08-17 03:25:55'),
(1183, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service WHEEL ALIGNMENT (TOE IN/TOE OUT) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 15, 0, NULL, '2026-08-17 03:25:55'),
(1184, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service WHEEL ALIGNMENT (TOE IN/TOE OUT) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 15, 0, NULL, '2026-08-17 03:25:55'),
(1185, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service WHEEL ALIGNMENT (TOE IN/TOE OUT) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 15, 0, NULL, '2026-08-17 03:25:55'),
(1186, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service WHEEL ALIGNMENT (TOE IN/TOE OUT) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 15, 0, NULL, '2026-08-17 03:25:55'),
(1187, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service WHEEL ALIGNMENT (TOE IN/TOE OUT) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 15, 0, NULL, '2026-08-17 03:26:03'),
(1188, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service WHEEL ALIGNMENT (TOE IN/TOE OUT) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 15, 0, NULL, '2026-08-17 03:26:03'),
(1189, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service WHEEL ALIGNMENT (TOE IN/TOE OUT) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 15, 0, NULL, '2026-08-17 03:26:03'),
(1190, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service WHEEL ALIGNMENT (TOE IN/TOE OUT) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 15, 0, NULL, '2026-08-17 03:26:03'),
(1191, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service WHEEL ALIGNMENT (TOE IN/TOE OUT) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 15, 0, NULL, '2026-08-17 03:26:03'),
(1192, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service WHEEL ALIGNMENT (TOE IN/TOE OUT) (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 15, 0, NULL, '2026-08-17 03:26:03'),
(1193, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service BRAKE CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 26, 0, NULL, '2026-08-17 03:27:21'),
(1194, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service BRAKE CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 26, 0, NULL, '2026-08-17 03:27:21'),
(1195, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service BRAKE CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 26, 0, NULL, '2026-08-17 03:27:21'),
(1196, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service BRAKE CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 26, 0, NULL, '2026-08-17 03:27:21'),
(1197, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service BRAKE CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 26, 0, NULL, '2026-08-17 03:27:21'),
(1198, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service BRAKE CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 26, 0, NULL, '2026-08-17 03:27:21'),
(1199, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service FUEL INJECTOR CLEANING (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 14, 0, NULL, '2026-08-17 03:28:19'),
(1200, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service FUEL INJECTOR CLEANING (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 14, 0, NULL, '2026-08-17 03:28:19'),
(1201, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service FUEL INJECTOR CLEANING (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 14, 0, NULL, '2026-08-17 03:28:19'),
(1202, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service FUEL INJECTOR CLEANING (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 14, 0, NULL, '2026-08-17 03:28:19'),
(1203, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service FUEL INJECTOR CLEANING (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 14, 0, NULL, '2026-08-17 03:28:19'),
(1204, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service FUEL INJECTOR CLEANING (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 14, 0, NULL, '2026-08-17 03:28:19'),
(1205, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service DRIVE BELT REPLACEMENT (Price: ₱0.00, Status: ACTIVE).', 'service', 27, 0, NULL, '2026-08-17 03:30:05'),
(1206, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service DRIVE BELT REPLACEMENT (Price: ₱0.00, Status: ACTIVE).', 'service', 27, 0, NULL, '2026-08-17 03:30:05'),
(1207, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service DRIVE BELT REPLACEMENT (Price: ₱0.00, Status: ACTIVE).', 'service', 27, 0, NULL, '2026-08-17 03:30:05'),
(1208, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service DRIVE BELT REPLACEMENT (Price: ₱0.00, Status: ACTIVE).', 'service', 27, 0, NULL, '2026-08-17 03:30:05'),
(1209, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service DRIVE BELT REPLACEMENT (Price: ₱0.00, Status: ACTIVE).', 'service', 27, 0, NULL, '2026-08-17 03:30:05'),
(1210, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service DRIVE BELT REPLACEMENT (Price: ₱0.00, Status: ACTIVE).', 'service', 27, 0, NULL, '2026-08-17 03:30:05'),
(1211, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service THROTTLE BODY CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 28, 0, NULL, '2026-08-17 03:30:35'),
(1212, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service THROTTLE BODY CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 28, 0, NULL, '2026-08-17 03:30:35'),
(1213, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service THROTTLE BODY CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 28, 0, NULL, '2026-08-17 03:30:35'),
(1214, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service THROTTLE BODY CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 28, 0, NULL, '2026-08-17 03:30:35'),
(1215, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service THROTTLE BODY CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 28, 0, NULL, '2026-08-17 03:30:35'),
(1216, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service THROTTLE BODY CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 28, 0, NULL, '2026-08-17 03:30:35'),
(1217, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REPLACE AUX. FAN MOTOR (Price: ₱0.00, Status: ACTIVE).', 'service', 29, 0, NULL, '2026-08-17 03:31:12'),
(1218, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REPLACE AUX. FAN MOTOR (Price: ₱0.00, Status: ACTIVE).', 'service', 29, 0, NULL, '2026-08-17 03:31:12'),
(1219, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REPLACE AUX. FAN MOTOR (Price: ₱0.00, Status: ACTIVE).', 'service', 29, 0, NULL, '2026-08-17 03:31:12'),
(1220, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REPLACE AUX. FAN MOTOR (Price: ₱0.00, Status: ACTIVE).', 'service', 29, 0, NULL, '2026-08-17 03:31:12'),
(1221, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REPLACE AUX. FAN MOTOR (Price: ₱0.00, Status: ACTIVE).', 'service', 29, 0, NULL, '2026-08-17 03:31:12'),
(1222, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REPLACE AUX. FAN MOTOR (Price: ₱0.00, Status: ACTIVE).', 'service', 29, 0, NULL, '2026-08-17 03:31:12'),
(1223, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service PULL OUT / INSTALL FRONT LOWER SUSP. ASSY (RH/LH) (Price: ₱0.00, Status: ACTIVE).', 'service', 30, 0, NULL, '2026-08-17 03:32:13'),
(1224, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service PULL OUT / INSTALL FRONT LOWER SUSP. ASSY (RH/LH) (Price: ₱0.00, Status: ACTIVE).', 'service', 30, 0, NULL, '2026-08-17 03:32:13'),
(1225, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service PULL OUT / INSTALL FRONT LOWER SUSP. ASSY (RH/LH) (Price: ₱0.00, Status: ACTIVE).', 'service', 30, 0, NULL, '2026-08-17 03:32:13'),
(1226, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service PULL OUT / INSTALL FRONT LOWER SUSP. ASSY (RH/LH) (Price: ₱0.00, Status: ACTIVE).', 'service', 30, 0, NULL, '2026-08-17 03:32:13'),
(1227, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service PULL OUT / INSTALL FRONT LOWER SUSP. ASSY (RH/LH) (Price: ₱0.00, Status: ACTIVE).', 'service', 30, 0, NULL, '2026-08-17 03:32:13'),
(1228, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service PULL OUT / INSTALL FRONT LOWER SUSP. ASSY (RH/LH) (Price: ₱0.00, Status: ACTIVE).', 'service', 30, 0, NULL, '2026-08-17 03:32:13'),
(1229, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REPLACE AIR FILTER AND CABIN FILTER (Price: ₱0.00, Status: ACTIVE).', 'service', 31, 0, NULL, '2026-08-17 03:33:06'),
(1230, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REPLACE AIR FILTER AND CABIN FILTER (Price: ₱0.00, Status: ACTIVE).', 'service', 31, 0, NULL, '2026-08-17 03:33:06'),
(1231, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REPLACE AIR FILTER AND CABIN FILTER (Price: ₱0.00, Status: ACTIVE).', 'service', 31, 0, NULL, '2026-08-17 03:33:06'),
(1232, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REPLACE AIR FILTER AND CABIN FILTER (Price: ₱0.00, Status: ACTIVE).', 'service', 31, 0, NULL, '2026-08-17 03:33:06'),
(1233, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REPLACE AIR FILTER AND CABIN FILTER (Price: ₱0.00, Status: ACTIVE).', 'service', 31, 0, NULL, '2026-08-17 03:33:06');
INSERT INTO `notifications` (`id`, `user_id`, `staff_id`, `type`, `title`, `message`, `reference_type`, `reference_id`, `is_read`, `read_at`, `created_at`) VALUES
(1234, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REPLACE AIR FILTER AND CABIN FILTER (Price: ₱0.00, Status: ACTIVE).', 'service', 31, 0, NULL, '2026-08-17 03:33:06'),
(1235, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service RADIATOR CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 32, 0, NULL, '2026-08-17 03:33:31'),
(1236, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service RADIATOR CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 32, 0, NULL, '2026-08-17 03:33:31'),
(1237, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service RADIATOR CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 32, 0, NULL, '2026-08-17 03:33:31'),
(1238, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service RADIATOR CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 32, 0, NULL, '2026-08-17 03:33:31'),
(1239, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service RADIATOR CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 32, 0, NULL, '2026-08-17 03:33:31'),
(1240, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service RADIATOR CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 32, 0, NULL, '2026-08-17 03:33:31'),
(1241, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service RESCUE (Price: ₱0.00, Status: ACTIVE).', 'service', 33, 0, NULL, '2026-08-17 03:34:07'),
(1242, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service RESCUE (Price: ₱0.00, Status: ACTIVE).', 'service', 33, 0, NULL, '2026-08-17 03:34:07'),
(1243, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service RESCUE (Price: ₱0.00, Status: ACTIVE).', 'service', 33, 0, NULL, '2026-08-17 03:34:07'),
(1244, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service RESCUE (Price: ₱0.00, Status: ACTIVE).', 'service', 33, 0, NULL, '2026-08-17 03:34:07'),
(1245, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service RESCUE (Price: ₱0.00, Status: ACTIVE).', 'service', 33, 0, NULL, '2026-08-17 03:34:07'),
(1246, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service RESCUE (Price: ₱0.00, Status: ACTIVE).', 'service', 33, 0, NULL, '2026-08-17 03:34:07'),
(1247, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service RESCUE (Status: ACTIVE -> ACTIVE; Price: ₱1,500.00).', 'service', 33, 0, NULL, '2026-08-17 03:34:42'),
(1248, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service RESCUE (Status: ACTIVE -> ACTIVE; Price: ₱1,500.00).', 'service', 33, 0, NULL, '2026-08-17 03:34:42'),
(1249, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service RESCUE (Status: ACTIVE -> ACTIVE; Price: ₱1,500.00).', 'service', 33, 0, NULL, '2026-08-17 03:34:42'),
(1250, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service RESCUE (Status: ACTIVE -> ACTIVE; Price: ₱1,500.00).', 'service', 33, 0, NULL, '2026-08-17 03:34:42'),
(1251, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service RESCUE (Status: ACTIVE -> ACTIVE; Price: ₱1,500.00).', 'service', 33, 0, NULL, '2026-08-17 03:34:42'),
(1252, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service RESCUE (Status: ACTIVE -> ACTIVE; Price: ₱1,500.00).', 'service', 33, 0, NULL, '2026-08-17 03:34:42'),
(1253, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service TOWING (Price: ₱2,500.00, Status: ACTIVE).', 'service', 34, 0, NULL, '2026-08-17 03:35:05'),
(1254, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service TOWING (Price: ₱2,500.00, Status: ACTIVE).', 'service', 34, 0, NULL, '2026-08-17 03:35:05'),
(1255, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service TOWING (Price: ₱2,500.00, Status: ACTIVE).', 'service', 34, 0, NULL, '2026-08-17 03:35:05'),
(1256, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service TOWING (Price: ₱2,500.00, Status: ACTIVE).', 'service', 34, 0, NULL, '2026-08-17 03:35:05'),
(1257, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service TOWING (Price: ₱2,500.00, Status: ACTIVE).', 'service', 34, 0, NULL, '2026-08-17 03:35:05'),
(1258, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service TOWING (Price: ₱2,500.00, Status: ACTIVE).', 'service', 34, 0, NULL, '2026-08-17 03:35:05'),
(1259, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service CHANGE/FLUSH BRAKE FLUID (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 3, 0, NULL, '2026-08-17 03:36:55'),
(1260, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service CHANGE/FLUSH BRAKE FLUID (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 3, 0, NULL, '2026-08-17 03:36:55'),
(1261, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service CHANGE/FLUSH BRAKE FLUID (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 3, 0, NULL, '2026-08-17 03:36:55'),
(1262, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service CHANGE/FLUSH BRAKE FLUID (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 3, 0, NULL, '2026-08-17 03:36:55'),
(1263, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service CHANGE/FLUSH BRAKE FLUID (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 3, 0, NULL, '2026-08-17 03:36:55'),
(1264, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service CHANGE/FLUSH BRAKE FLUID (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 3, 0, NULL, '2026-08-17 03:36:55'),
(1265, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service EGR AND INTAKE CLEANING (Status: ACTIVE -> ACTIVE; Price: ₱3,500.00).', 'service', 22, 0, NULL, '2026-08-17 03:37:26'),
(1266, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service EGR AND INTAKE CLEANING (Status: ACTIVE -> ACTIVE; Price: ₱3,500.00).', 'service', 22, 0, NULL, '2026-08-17 03:37:26'),
(1267, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service EGR AND INTAKE CLEANING (Status: ACTIVE -> ACTIVE; Price: ₱3,500.00).', 'service', 22, 0, NULL, '2026-08-17 03:37:26'),
(1268, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service EGR AND INTAKE CLEANING (Status: ACTIVE -> ACTIVE; Price: ₱3,500.00).', 'service', 22, 0, NULL, '2026-08-17 03:37:26'),
(1269, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service EGR AND INTAKE CLEANING (Status: ACTIVE -> ACTIVE; Price: ₱3,500.00).', 'service', 22, 0, NULL, '2026-08-17 03:37:26'),
(1270, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service EGR AND INTAKE CLEANING (Status: ACTIVE -> ACTIVE; Price: ₱3,500.00).', 'service', 22, 0, NULL, '2026-08-17 03:37:26'),
(1271, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service EGR AND INTAKE CLEANING (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 22, 0, NULL, '2026-08-17 03:37:41'),
(1272, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service EGR AND INTAKE CLEANING (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 22, 0, NULL, '2026-08-17 03:37:41'),
(1273, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service EGR AND INTAKE CLEANING (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 22, 0, NULL, '2026-08-17 03:37:41'),
(1274, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service EGR AND INTAKE CLEANING (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 22, 0, NULL, '2026-08-17 03:37:41'),
(1275, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service EGR AND INTAKE CLEANING (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 22, 0, NULL, '2026-08-17 03:37:41'),
(1276, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service EGR AND INTAKE CLEANING (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 22, 0, NULL, '2026-08-17 03:37:41'),
(1277, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service STEERING RACK REPAIR - PULL OUT/INSTALL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 17, 0, NULL, '2026-08-17 03:38:11'),
(1278, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service STEERING RACK REPAIR - PULL OUT/INSTALL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 17, 0, NULL, '2026-08-17 03:38:11'),
(1279, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service STEERING RACK REPAIR - PULL OUT/INSTALL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 17, 0, NULL, '2026-08-17 03:38:11'),
(1280, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service STEERING RACK REPAIR - PULL OUT/INSTALL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 17, 0, NULL, '2026-08-17 03:38:11'),
(1281, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service STEERING RACK REPAIR - PULL OUT/INSTALL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 17, 0, NULL, '2026-08-17 03:38:11'),
(1282, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service STEERING RACK REPAIR - PULL OUT/INSTALL (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 17, 0, NULL, '2026-08-17 03:38:11'),
(1283, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service TIE ROD REPLACEMENT (Price: ₱0.00, Status: ACTIVE).', 'service', 35, 0, NULL, '2026-08-17 03:38:40'),
(1284, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service TIE ROD REPLACEMENT (Price: ₱0.00, Status: ACTIVE).', 'service', 35, 0, NULL, '2026-08-17 03:38:40'),
(1285, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service TIE ROD REPLACEMENT (Price: ₱0.00, Status: ACTIVE).', 'service', 35, 0, NULL, '2026-08-17 03:38:40'),
(1286, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service TIE ROD REPLACEMENT (Price: ₱0.00, Status: ACTIVE).', 'service', 35, 0, NULL, '2026-08-17 03:38:40'),
(1287, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service TIE ROD REPLACEMENT (Price: ₱0.00, Status: ACTIVE).', 'service', 35, 0, NULL, '2026-08-17 03:38:40'),
(1288, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service TIE ROD REPLACEMENT (Price: ₱0.00, Status: ACTIVE).', 'service', 35, 0, NULL, '2026-08-17 03:38:40'),
(1289, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service WHEEL BALANCING (Price: ₱0.00, Status: ACTIVE).', 'service', 36, 0, NULL, '2026-08-17 03:39:36'),
(1290, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service WHEEL BALANCING (Price: ₱0.00, Status: ACTIVE).', 'service', 36, 0, NULL, '2026-08-17 03:39:36'),
(1291, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service WHEEL BALANCING (Price: ₱0.00, Status: ACTIVE).', 'service', 36, 0, NULL, '2026-08-17 03:39:36'),
(1292, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service WHEEL BALANCING (Price: ₱0.00, Status: ACTIVE).', 'service', 36, 0, NULL, '2026-08-17 03:39:36'),
(1293, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service WHEEL BALANCING (Price: ₱0.00, Status: ACTIVE).', 'service', 36, 0, NULL, '2026-08-17 03:39:36'),
(1294, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service WHEEL BALANCING (Price: ₱0.00, Status: ACTIVE).', 'service', 36, 0, NULL, '2026-08-17 03:39:36'),
(1295, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service CHECK/CORRECT LEAK COMING INSIDE (Price: ₱0.00, Status: ACTIVE).', 'service', 37, 0, NULL, '2026-08-17 03:40:15'),
(1296, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service CHECK/CORRECT LEAK COMING INSIDE (Price: ₱0.00, Status: ACTIVE).', 'service', 37, 0, NULL, '2026-08-17 03:40:15'),
(1297, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service CHECK/CORRECT LEAK COMING INSIDE (Price: ₱0.00, Status: ACTIVE).', 'service', 37, 0, NULL, '2026-08-17 03:40:15'),
(1298, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service CHECK/CORRECT LEAK COMING INSIDE (Price: ₱0.00, Status: ACTIVE).', 'service', 37, 0, NULL, '2026-08-17 03:40:15'),
(1299, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service CHECK/CORRECT LEAK COMING INSIDE (Price: ₱0.00, Status: ACTIVE).', 'service', 37, 0, NULL, '2026-08-17 03:40:15'),
(1300, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service CHECK/CORRECT LEAK COMING INSIDE (Price: ₱0.00, Status: ACTIVE).', 'service', 37, 0, NULL, '2026-08-17 03:40:15'),
(1301, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service PULL OUT CAR MATTING (CLEAN AND DRY) (Price: ₱0.00, Status: ACTIVE).', 'service', 38, 0, NULL, '2026-08-17 03:40:52'),
(1302, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service PULL OUT CAR MATTING (CLEAN AND DRY) (Price: ₱0.00, Status: ACTIVE).', 'service', 38, 0, NULL, '2026-08-17 03:40:52'),
(1303, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service PULL OUT CAR MATTING (CLEAN AND DRY) (Price: ₱0.00, Status: ACTIVE).', 'service', 38, 0, NULL, '2026-08-17 03:40:52'),
(1304, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service PULL OUT CAR MATTING (CLEAN AND DRY) (Price: ₱0.00, Status: ACTIVE).', 'service', 38, 0, NULL, '2026-08-17 03:40:52'),
(1305, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service PULL OUT CAR MATTING (CLEAN AND DRY) (Price: ₱0.00, Status: ACTIVE).', 'service', 38, 0, NULL, '2026-08-17 03:40:52'),
(1306, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service PULL OUT CAR MATTING (CLEAN AND DRY) (Price: ₱0.00, Status: ACTIVE).', 'service', 38, 0, NULL, '2026-08-17 03:40:52'),
(1307, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service OXYGEN SENSOR CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 39, 0, NULL, '2026-08-17 03:41:27'),
(1308, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service OXYGEN SENSOR CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 39, 0, NULL, '2026-08-17 03:41:27'),
(1309, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service OXYGEN SENSOR CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 39, 0, NULL, '2026-08-17 03:41:27'),
(1310, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service OXYGEN SENSOR CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 39, 0, NULL, '2026-08-17 03:41:27'),
(1311, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service OXYGEN SENSOR CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 39, 0, NULL, '2026-08-17 03:41:27'),
(1312, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service OXYGEN SENSOR CLEANING (Price: ₱0.00, Status: ACTIVE).', 'service', 39, 0, NULL, '2026-08-17 03:41:27'),
(1313, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REPLACE SPARK PLUG (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 11, 0, NULL, '2026-08-17 03:42:13'),
(1314, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REPLACE SPARK PLUG (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 11, 0, NULL, '2026-08-17 03:42:13'),
(1315, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REPLACE SPARK PLUG (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 11, 0, NULL, '2026-08-17 03:42:13'),
(1316, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REPLACE SPARK PLUG (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 11, 0, NULL, '2026-08-17 03:42:13'),
(1317, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REPLACE SPARK PLUG (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 11, 0, NULL, '2026-08-17 03:42:13'),
(1318, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REPLACE SPARK PLUG (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 11, 0, NULL, '2026-08-17 03:42:13'),
(1319, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REFACE ROTO DISC (BOTH SIDES) - SEDAN (Price: ₱0.00, Status: ACTIVE).', 'service', 40, 0, NULL, '2026-08-17 03:43:07'),
(1320, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REFACE ROTO DISC (BOTH SIDES) - SEDAN (Price: ₱0.00, Status: ACTIVE).', 'service', 40, 0, NULL, '2026-08-17 03:43:07'),
(1321, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REFACE ROTO DISC (BOTH SIDES) - SEDAN (Price: ₱0.00, Status: ACTIVE).', 'service', 40, 0, NULL, '2026-08-17 03:43:07'),
(1322, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REFACE ROTO DISC (BOTH SIDES) - SEDAN (Price: ₱0.00, Status: ACTIVE).', 'service', 40, 0, NULL, '2026-08-17 03:43:07'),
(1323, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REFACE ROTO DISC (BOTH SIDES) - SEDAN (Price: ₱0.00, Status: ACTIVE).', 'service', 40, 0, NULL, '2026-08-17 03:43:07'),
(1324, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REFACE ROTO DISC (BOTH SIDES) - SEDAN (Price: ₱0.00, Status: ACTIVE).', 'service', 40, 0, NULL, '2026-08-17 03:43:07'),
(1325, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REFACE ROTO DISC (BOTH SIDES) - PICK UP, SUV (Price: ₱0.00, Status: ACTIVE).', 'service', 41, 0, NULL, '2026-08-17 03:43:33'),
(1326, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REFACE ROTO DISC (BOTH SIDES) - PICK UP, SUV (Price: ₱0.00, Status: ACTIVE).', 'service', 41, 0, NULL, '2026-08-17 03:43:33'),
(1327, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REFACE ROTO DISC (BOTH SIDES) - PICK UP, SUV (Price: ₱0.00, Status: ACTIVE).', 'service', 41, 0, NULL, '2026-08-17 03:43:33'),
(1328, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REFACE ROTO DISC (BOTH SIDES) - PICK UP, SUV (Price: ₱0.00, Status: ACTIVE).', 'service', 41, 0, NULL, '2026-08-17 03:43:33'),
(1329, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REFACE ROTO DISC (BOTH SIDES) - PICK UP, SUV (Price: ₱0.00, Status: ACTIVE).', 'service', 41, 0, NULL, '2026-08-17 03:43:33'),
(1330, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REFACE ROTO DISC (BOTH SIDES) - PICK UP, SUV (Price: ₱0.00, Status: ACTIVE).', 'service', 41, 0, NULL, '2026-08-17 03:43:33'),
(1331, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REFACE ROTOR DISC (BOTH SIDES) - PICK UP, SUV (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 41, 0, NULL, '2026-08-17 03:43:45'),
(1332, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REFACE ROTOR DISC (BOTH SIDES) - PICK UP, SUV (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 41, 0, NULL, '2026-08-17 03:43:45'),
(1333, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REFACE ROTOR DISC (BOTH SIDES) - PICK UP, SUV (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 41, 0, NULL, '2026-08-17 03:43:45'),
(1334, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REFACE ROTOR DISC (BOTH SIDES) - PICK UP, SUV (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 41, 0, NULL, '2026-08-17 03:43:45'),
(1335, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REFACE ROTOR DISC (BOTH SIDES) - PICK UP, SUV (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 41, 0, NULL, '2026-08-17 03:43:45'),
(1336, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REFACE ROTOR DISC (BOTH SIDES) - PICK UP, SUV (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 41, 1, NULL, '2026-08-17 03:43:45'),
(1337, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REFACE ROTOR DISC (BOTH SIDES) - SEDAN (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 40, 0, NULL, '2026-08-17 03:43:58'),
(1338, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REFACE ROTOR DISC (BOTH SIDES) - SEDAN (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 40, 0, NULL, '2026-08-17 03:43:58'),
(1339, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REFACE ROTOR DISC (BOTH SIDES) - SEDAN (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 40, 0, NULL, '2026-08-17 03:43:58'),
(1340, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REFACE ROTOR DISC (BOTH SIDES) - SEDAN (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 40, 0, NULL, '2026-08-17 03:43:58'),
(1341, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REFACE ROTOR DISC (BOTH SIDES) - SEDAN (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 40, 0, NULL, '2026-08-17 03:43:58'),
(1342, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REFACE ROTOR DISC (BOTH SIDES) - SEDAN (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 40, 0, NULL, '2026-08-17 03:43:58'),
(1343, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REPLACE LOWER BALL JOINT (BOTH SIDES) (Price: ₱0.00, Status: ACTIVE).', 'service', 42, 0, NULL, '2026-08-17 03:44:23'),
(1344, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REPLACE LOWER BALL JOINT (BOTH SIDES) (Price: ₱0.00, Status: ACTIVE).', 'service', 42, 0, NULL, '2026-08-17 03:44:23'),
(1345, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REPLACE LOWER BALL JOINT (BOTH SIDES) (Price: ₱0.00, Status: ACTIVE).', 'service', 42, 0, NULL, '2026-08-17 03:44:23'),
(1346, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REPLACE LOWER BALL JOINT (BOTH SIDES) (Price: ₱0.00, Status: ACTIVE).', 'service', 42, 0, NULL, '2026-08-17 03:44:23'),
(1347, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REPLACE LOWER BALL JOINT (BOTH SIDES) (Price: ₱0.00, Status: ACTIVE).', 'service', 42, 0, NULL, '2026-08-17 03:44:23'),
(1348, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service REPLACE LOWER BALL JOINT (BOTH SIDES) (Price: ₱0.00, Status: ACTIVE).', 'service', 42, 0, NULL, '2026-08-17 03:44:23'),
(1349, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REPLACE SPARK PLUG (Status: ACTIVE -> ACTIVE; Price: ₱600.00).', 'service', 11, 0, NULL, '2026-08-17 03:44:52'),
(1350, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REPLACE SPARK PLUG (Status: ACTIVE -> ACTIVE; Price: ₱600.00).', 'service', 11, 0, NULL, '2026-08-17 03:44:52'),
(1351, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REPLACE SPARK PLUG (Status: ACTIVE -> ACTIVE; Price: ₱600.00).', 'service', 11, 0, NULL, '2026-08-17 03:44:52'),
(1352, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REPLACE SPARK PLUG (Status: ACTIVE -> ACTIVE; Price: ₱600.00).', 'service', 11, 0, NULL, '2026-08-17 03:44:52'),
(1353, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REPLACE SPARK PLUG (Status: ACTIVE -> ACTIVE; Price: ₱600.00).', 'service', 11, 0, NULL, '2026-08-17 03:44:52'),
(1354, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service REPLACE SPARK PLUG (Status: ACTIVE -> ACTIVE; Price: ₱600.00).', 'service', 11, 0, NULL, '2026-08-17 03:44:52'),
(1355, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service LIGHT PMS GAS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 18, 0, NULL, '2026-08-17 03:56:28'),
(1356, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service LIGHT PMS GAS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 18, 0, NULL, '2026-08-17 03:56:28'),
(1357, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service LIGHT PMS GAS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 18, 0, NULL, '2026-08-17 03:56:28'),
(1358, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service LIGHT PMS GAS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 18, 0, NULL, '2026-08-17 03:56:28'),
(1359, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service LIGHT PMS GAS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 18, 0, NULL, '2026-08-17 03:56:28'),
(1360, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service LIGHT PMS GAS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 18, 0, NULL, '2026-08-17 03:56:28'),
(1361, 4, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service LIGHT PMS GAS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 18, 0, NULL, '2026-08-17 03:59:12'),
(1362, 16, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service LIGHT PMS GAS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 18, 0, NULL, '2026-08-17 03:59:12'),
(1363, 5, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service LIGHT PMS GAS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 18, 0, NULL, '2026-08-17 03:59:12'),
(1364, 7, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service LIGHT PMS GAS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 18, 0, NULL, '2026-08-17 03:59:12'),
(1365, 8, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service LIGHT PMS GAS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 18, 0, NULL, '2026-08-17 03:59:12'),
(1366, 2, NULL, 'system', 'Service Updated', 'Lovely Joyce Gambong updated service LIGHT PMS GAS (Status: ACTIVE -> ACTIVE; Price: ₱0.00).', 'service', 18, 0, NULL, '2026-08-17 03:59:12'),
(1367, 4, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service LIGHT PMS DIESEL (Price: ₱0.00, Status: ACTIVE).', 'service', 43, 0, NULL, '2026-08-17 04:00:51'),
(1368, 16, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service LIGHT PMS DIESEL (Price: ₱0.00, Status: ACTIVE).', 'service', 43, 0, NULL, '2026-08-17 04:00:51'),
(1369, 5, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service LIGHT PMS DIESEL (Price: ₱0.00, Status: ACTIVE).', 'service', 43, 0, NULL, '2026-08-17 04:00:51'),
(1370, 7, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service LIGHT PMS DIESEL (Price: ₱0.00, Status: ACTIVE).', 'service', 43, 0, NULL, '2026-08-17 04:00:51'),
(1371, 8, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service LIGHT PMS DIESEL (Price: ₱0.00, Status: ACTIVE).', 'service', 43, 0, NULL, '2026-08-17 04:00:51'),
(1372, 2, NULL, 'system', 'Service Added', 'Lovely Joyce Gambong added service LIGHT PMS DIESEL (Price: ₱0.00, Status: ACTIVE).', 'service', 43, 0, NULL, '2026-08-17 04:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `job_order_id` int(11) NOT NULL,
  `payment_date` datetime NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` enum('cash','card','bank_transfer','gcash','paymaya') NOT NULL,
  `reference_number` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `received_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `permission_name` varchar(100) NOT NULL,
  `permission_code` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `module` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_code` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `supplier` varchar(150) DEFAULT NULL,
  `cost_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `selling_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `min_stock_level` int(11) DEFAULT 10,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `category_id`, `brand_id`, `unit_id`, `description`, `supplier_id`, `supplier`, `cost_price`, `selling_price`, `quantity`, `min_stock_level`, `status`, `created_at`, `updated_at`) VALUES
(2, 'PRD01', 'FRONT HUB BEARING (MIRAGE)', NULL, NULL, 1, '', NULL, NULL, 0.00, 0.00, 1, 10, 'active', '2026-08-13 08:52:32', '2026-08-17 02:38:23'),
(3, 'PRD02', 'RELAY', NULL, NULL, NULL, '', NULL, NULL, 120.00, 0.00, 20, 10, 'active', '2026-08-13 08:53:18', '2026-08-13 08:53:18'),
(4, 'PRD03', 'AIR FILTER (TRANSFORMER)', 3, NULL, 1, '', NULL, NULL, 0.00, 0.00, 0, 10, 'active', '2026-08-13 08:53:50', '2026-08-17 02:07:39'),
(5, 'PRD04', 'AIR FILTER (MULTI-VEHICLE)', 3, NULL, 1, 'MIRAGE', NULL, NULL, 230.00, 1800.00, 0, 10, 'active', '2026-08-13 08:54:29', '2026-08-17 02:06:18'),
(6, 'PRD05', 'ENGINE OIL 5W-30', 1, NULL, 8, '', NULL, NULL, 420.00, 600.00, 0, 10, 'active', '2026-08-13 08:55:03', '2026-08-17 02:35:04'),
(7, 'PRD06', 'OIL FILTER 415', 2, NULL, 1, '', NULL, NULL, 140.00, 500.00, 10, 10, 'active', '2026-08-13 08:56:04', '2026-08-17 02:45:17'),
(8, 'PRD07', 'OIL FITER 110', 2, NULL, 1, '', NULL, NULL, 85.00, 500.00, 10, 10, 'active', '2026-08-13 08:56:47', '2026-08-17 02:48:59'),
(9, 'PRD08', 'ATF LV MV (STOCKS)', 9, NULL, 8, '', NULL, NULL, 388.00, 950.00, 1, 10, 'active', '2026-08-13 08:57:11', '2026-08-17 02:39:01'),
(10, 'PRD09', 'OIL FILTER 111', 2, NULL, 1, '', NULL, NULL, 115.00, 500.00, 7, 10, 'active', '2026-08-13 08:57:31', '2026-08-17 02:45:29'),
(11, 'PRD10', 'PETRON ATF SAE-20', NULL, NULL, NULL, '', NULL, NULL, 0.00, 0.00, 20, 10, 'inactive', '2026-08-13 08:57:52', '2026-08-17 02:51:23'),
(12, 'PRD11', 'BRAKE CLEANER', 5, NULL, 7, '', NULL, NULL, 200.00, 450.00, 3, 10, 'active', '2026-08-13 09:00:17', '2026-08-17 02:14:57'),
(13, 'PRD12', 'ENGINE OIL 5W-40', 1, NULL, 8, '', NULL, NULL, 420.00, 600.00, 9, 10, 'active', '2026-08-13 09:06:02', '2026-08-17 02:35:19'),
(14, 'PRD13', 'REAR HUB BEARING (MIRAGE)', NULL, NULL, 1, '', NULL, NULL, 950.00, 0.00, 2, 10, 'active', '2026-08-13 09:11:27', '2026-08-17 02:52:34'),
(15, 'PRD14', 'PENETRATING', NULL, NULL, 1, '', NULL, NULL, 160.00, 500.00, 3, 10, 'active', '2026-08-13 09:12:26', '2026-08-17 02:51:01'),
(16, 'PRD15', 'THROTTLE/CARB CLEANER', NULL, NULL, 1, '', NULL, NULL, 160.00, 0.00, 3, 10, 'active', '2026-08-13 09:12:35', '2026-08-17 02:58:20'),
(17, 'PRD16', 'GEAR OIL', 1, NULL, 8, '', NULL, NULL, 0.00, 0.00, 0, 10, 'active', '2026-08-13 09:12:42', '2026-08-17 02:41:35'),
(18, 'PRD17', 'GREASE', NULL, NULL, NULL, '', NULL, NULL, 0.00, 0.00, 0, 10, 'active', '2026-08-13 09:12:52', '2026-08-13 09:12:52'),
(19, 'PRD18', 'COOLANT BLUE', 9, NULL, 8, '', NULL, NULL, 145.00, 350.00, 0, 10, 'active', '2026-08-13 09:13:00', '2026-08-17 02:34:38'),
(20, 'PRD19', 'COOLANT GREEN', 9, NULL, 8, '', NULL, NULL, 145.00, 350.00, 4, 10, 'active', '2026-08-13 09:13:06', '2026-08-17 02:34:25'),
(21, 'PRD20', 'BATTERY (IMARFLEX)', 7, NULL, 1, '', NULL, NULL, 6530.00, 0.00, 0, 10, 'active', '2026-08-13 09:13:15', '2026-08-17 02:12:52'),
(22, 'PRD21', 'BRAKE PADS (MIRAGE)', 5, NULL, 1, '', NULL, NULL, 0.00, 0.00, 0, 10, 'active', '2026-08-13 09:13:22', '2026-08-17 02:17:43'),
(23, 'PRD22', 'STAB. LINK (TRANSFORMER)', NULL, NULL, 1, '', NULL, NULL, 0.00, 0.00, 3, 10, 'active', '2026-08-13 09:13:28', '2026-08-17 02:57:24'),
(24, 'PRD23', 'STAB. CLAMP (TRANSFORMER)', NULL, NULL, 1, '', NULL, NULL, 0.00, 0.00, 1, 10, 'active', '2026-08-13 09:13:35', '2026-08-17 02:57:12'),
(25, 'PRD24', 'VALVE COVER GASKET (TRANSFORMER)', NULL, NULL, 1, '', NULL, NULL, 250.00, 0.00, 0, 10, 'active', '2026-08-13 09:13:45', '2026-08-17 02:59:22'),
(26, 'PRD25', 'OIL FILTER (GEELY COOLRAY)', NULL, NULL, NULL, '', NULL, NULL, 0.00, 0.00, 0, 10, 'active', '2026-08-13 09:14:00', '2026-08-13 09:14:00'),
(27, 'PRD26', 'FLUSHING', NULL, NULL, 1, '', NULL, NULL, 430.00, 0.00, 0, 10, 'active', '2026-08-13 09:14:08', '2026-08-17 02:37:21'),
(28, 'PRD27', 'BRAKE FLUID DOT-3', 5, NULL, 7, '', NULL, NULL, 210.00, 350.00, 8, 10, 'active', '2026-08-13 09:16:56', '2026-08-17 02:15:57'),
(29, 'PRD28', 'ROBERLO SILTEX 8000', NULL, NULL, 1, '', NULL, NULL, 585.00, 0.00, 4, 10, 'active', '2026-08-13 09:17:03', '2026-08-17 02:55:15'),
(30, 'PRD29', 'CABIN FILTER (87139-0N010)', 3, NULL, 1, '', NULL, NULL, 0.00, 0.00, 0, 10, 'active', '2026-08-13 09:17:10', '2026-08-17 02:19:12'),
(31, 'PRD30', 'WIRE', NULL, NULL, 18, '', NULL, NULL, 0.00, 0.00, 0, 10, 'active', '2026-08-13 09:17:17', '2026-08-17 02:59:58'),
(32, 'PRD31', 'STAB. LINK (TRANSFORMER)', NULL, NULL, 1, '', NULL, NULL, 500.00, 0.00, 0, 10, 'inactive', '2026-08-13 09:17:32', '2026-08-17 02:57:45'),
(33, 'PRD32', 'BRAKE PADS (TRANSORMER)', 5, NULL, 1, '', NULL, NULL, 0.00, 0.00, 0, 10, 'active', '2026-08-13 09:17:40', '2026-08-17 02:18:11'),
(34, 'PRD33', 'OIL FILTER-NAVARA 231', 2, NULL, 1, '', NULL, NULL, 950.00, 0.00, 1, 10, 'active', '2026-08-13 09:17:58', '2026-08-17 02:47:43'),
(35, 'PRD34', 'GEAR OIL -PETRON NEXUS', 1, NULL, 8, '', NULL, NULL, 0.00, 0.00, 1, 10, 'active', '2026-08-13 09:18:07', '2026-08-17 02:41:13'),
(36, 'PRD35', 'ATF SAE-20', 9, NULL, 8, '', NULL, NULL, 252.00, 950.00, 0, 10, 'active', '2026-08-17 01:49:49', '2026-08-17 02:39:13');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `category_name`, `description`, `status`, `created_at`) VALUES
(1, 'Engine Oil', 'Motor oils and engine lubricants', 'active', '2026-08-14 08:41:54'),
(2, 'Oil Filter', 'Oil filters for various engine types', 'active', '2026-08-14 08:41:54'),
(3, 'Air Filter', 'Air intake filters', 'active', '2026-08-14 08:41:54'),
(4, 'Fuel Filter', 'Fuel line and injection filters', 'active', '2026-08-14 08:41:54'),
(5, 'Brake Parts', 'Brake pads, rotors, calipers, and fluid', 'active', '2026-08-14 08:41:54'),
(6, 'Spark Plug', 'Ignition spark plugs', 'active', '2026-08-14 08:41:54'),
(7, 'Battery', 'Car batteries and terminals', 'active', '2026-08-14 08:41:54'),
(8, 'Belts & Hoses', 'Drive belts, timing belts, radiator hoses', 'active', '2026-08-14 08:41:54'),
(9, 'Coolant & Fluids', 'Coolant, transmission fluid, power steering fluid', 'active', '2026-08-14 08:41:54'),
(10, 'Suspension', 'Shocks, struts, bushings, ball joints', 'active', '2026-08-14 08:41:54'),
(11, 'Electrical', 'Bulbs, fuses, wiring, alternators, starters', 'active', '2026-08-14 08:41:54'),
(12, 'Tires & Wheels', 'Tires, rims, valve stems, wheel weights', 'active', '2026-08-14 08:41:54'),
(13, 'Wiper & Wash', 'Wiper blades, washer fluid', 'active', '2026-08-14 08:41:54'),
(14, 'Gaskets & Seals', 'Head gaskets, O-rings, valve seals', 'active', '2026-08-14 08:41:54'),
(15, 'Exhaust', 'Mufflers, catalytic converters, pipes', 'active', '2026-08-14 08:41:54'),
(16, 'Transmission', 'Clutch, gears, CV joints, axles', 'active', '2026-08-14 08:41:54'),
(17, 'Steering', 'Tie rods, rack and pinion, power steering pump', 'active', '2026-08-14 08:41:54'),
(18, 'Body Parts', 'Mirrors, bumpers, fenders, trim', 'active', '2026-08-14 08:41:54'),
(19, 'Interior', 'Upholstery, floor mats, accessories', 'active', '2026-08-14 08:41:54'),
(20, 'Adhesives & Sealants', 'Gasket maker, thread locker, body filler', 'active', '2026-08-14 08:41:54'),
(21, 'Cleaning & Detailing', 'Car wash, wax, polish, interior cleaner', 'active', '2026-08-14 08:41:54'),
(22, 'Tools & Equipment', 'Hand tools, diagnostic tools, shop supplies', 'active', '2026-08-14 08:41:54'),
(23, 'Nuts & Bolts', 'Fasteners, clips, screws, washers', 'active', '2026-08-14 08:41:54'),
(24, 'Lubricants & Grease', 'WD-40, chassis grease, bearing grease', 'active', '2026-08-14 08:41:54'),
(25, 'Others', 'Miscellaneous parts and supplies', 'active', '2026-08-14 08:41:54');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `service_code` varchar(20) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `base_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `labor_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `estimated_duration` int(11) DEFAULT NULL COMMENT 'Duration in minutes',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `service_code`, `category_id`, `description`, `base_price`, `labor_cost`, `estimated_duration`, `status`, `created_at`, `updated_at`) VALUES
(3, 'CHANGE/FLUSH BRAKE FLUID', 'SVC01', NULL, 'LABOR', 0.00, 800.00, NULL, 'active', '2026-08-12 00:19:31', '2026-08-17 03:36:55'),
(4, 'CHANGE OIL', 'SVC02', NULL, 'PACKAGE', 0.00, 500.00, NULL, 'active', '2026-08-12 13:20:29', '2026-08-17 03:21:28'),
(5, 'HEAVY PMS', 'SVC03', NULL, 'PACKAGE\n- CHANGE OIL\n- CHANGE OIL FILTER\n- BRAKE CLEANING AND ADJUST\n- CLEANING THROTTLE BODY\n- CLEANING INTAKE MANIFOLD\n- CLEANING OXYGEN SENSOR\n- CLEANING MAF SENSOR\n- FLUSHING BRAKE FLUID\n- FLUSHING COOLANT\n- REPLACE AIR FILTER\n- REPLACE SPARK PLUG\n- REPLACE CABIN FILTER\n- CHECK LIGHTS\n- CHECK UNDER CHASSIS\n- SCANNING\n- FREE CARWASH', 0.00, 3800.00, NULL, 'active', '2026-08-12 13:21:50', '2026-08-17 01:26:21'),
(6, 'REGULAR PMS', 'SVC04', NULL, 'PACKAGE\n- CHANGE OIL\n- CHANGE OIL FILTER\n- BRAKE CLEANING/ADJUST\n- CLEANING AIR/CABIN FILTER\n- CLEANING SPARK PLUG\n- BOLT AND NUT TIGHTENING\n- CHECK UNDERCHASSIS\n- CHECK FLUID\n- CHECK LIGHTS\n- CHECK TIRES\n- CHECK BATTERY CONDITION\n- CHECK BELTS', 0.00, 2800.00, NULL, 'active', '2026-08-12 13:23:28', '2026-08-17 01:22:27'),
(7, 'CHARGE FREON', 'SVC05', NULL, '', 0.00, 1500.00, NULL, 'active', '2026-08-13 06:27:04', '2026-08-13 06:27:04'),
(8, 'RADIATOR CLEANING', 'SVC06', NULL, '', 0.00, 6500.00, NULL, 'active', '2026-08-13 06:27:27', '2026-08-13 06:27:27'),
(9, 'REPLACE DRIVE BELT', 'SVC07', NULL, 'LABOR', 0.00, 600.00, NULL, 'active', '2026-08-13 06:28:04', '2026-08-13 06:28:49'),
(10, 'REPLACE DRIVE BELT (FORD)', 'SVC08', NULL, 'LABOR', 0.00, 1800.00, NULL, 'active', '2026-08-13 06:28:35', '2026-08-13 06:28:35'),
(11, 'REPLACE SPARK PLUG', 'SVC09', NULL, 'LABOR', 600.00, 0.00, NULL, 'active', '2026-08-13 06:29:13', '2026-08-17 03:44:52'),
(12, 'REPLACE AUXILIARY FAN MOTOR', 'SVC10', NULL, 'LABOR', 0.00, 1400.00, NULL, 'active', '2026-08-13 06:29:50', '2026-08-13 06:30:10'),
(13, 'PULL OUT/INSTALL FRT. LOWER SUSPENSION ASSY RH/LH', 'SVC11', NULL, '', 0.00, 1800.00, NULL, 'active', '2026-08-13 06:30:32', '2026-08-13 06:30:50'),
(14, 'FUEL INJECTOR CLEANING', 'SVC12', NULL, 'LABOR', 0.00, 2500.00, NULL, 'active', '2026-08-13 07:56:49', '2026-08-17 03:28:19'),
(15, 'WHEEL ALIGNMENT (TOE IN/TOE OUT)', 'SVC13', NULL, 'LABOR', 0.00, 1200.00, NULL, 'active', '2026-08-13 08:46:49', '2026-08-17 03:26:03'),
(16, 'WHEEL ALIGNMENT (COMPLETE)', 'SVC14', NULL, 'LABOR', 0.00, 2200.00, NULL, 'active', '2026-08-13 08:47:04', '2026-08-17 03:25:35'),
(17, 'STEERING RACK REPAIR - PULL OUT/INSTALL', 'SVC15', NULL, 'LABOR', 0.00, 3500.00, NULL, 'active', '2026-08-13 08:49:31', '2026-08-17 03:38:11'),
(18, 'LIGHT PMS GAS', 'SVC16', NULL, 'LABOR/PACKAGE\n- TOP UP ENGINE OIL\n- REPLACE OIL FILTER\n- CHECK FLUIDS\n- CHECK BELTS\n- CHECK LIGHTS\n- CHECK UNDERCHASSIS\n- BOLT AND NUT TIGHTENING\n- SCANNING', 0.00, 1800.00, NULL, 'active', '2026-08-17 01:37:34', '2026-08-17 03:59:12'),
(19, 'AIRCON CLEANING (SINGLE EVAPORATOR)', 'SVC17', NULL, 'PACKAGE', 0.00, 5500.00, NULL, 'active', '2026-08-17 03:18:12', '2026-08-17 03:18:12'),
(20, 'AIRCON CLEANING (DUAL EVAPORATOR)', 'SVC18', NULL, 'PACKAGE', 0.00, 6500.00, NULL, 'active', '2026-08-17 03:19:12', '2026-08-17 03:19:26'),
(21, 'EGR, INTAKE AND TURBO CLEANING', 'SVC19', NULL, 'LABOR', 0.00, 9500.00, NULL, 'active', '2026-08-17 03:22:13', '2026-08-17 03:22:13'),
(22, 'EGR AND INTAKE CLEANING', 'SVC20', NULL, 'LABOR', 0.00, 5500.00, NULL, 'active', '2026-08-17 03:22:59', '2026-08-17 03:37:41'),
(23, 'TURBO CLEANING', 'SVC21', NULL, 'LABOR', 0.00, 4500.00, NULL, 'active', '2026-08-17 03:23:33', '2026-08-17 03:23:33'),
(24, 'EGR, INTAKE, AND TURBO CLEANING', 'SVC22', NULL, 'PACKAGE', 0.00, 10500.00, NULL, 'active', '2026-08-17 03:24:26', '2026-08-17 03:24:26'),
(25, 'CARWASH', 'SVC23', NULL, 'LABOR', 0.00, 150.00, NULL, 'active', '2026-08-17 03:25:02', '2026-08-17 03:25:02'),
(26, 'BRAKE CLEANING', 'SVC24', NULL, 'LABOR', 0.00, 800.00, NULL, 'active', '2026-08-17 03:27:21', '2026-08-17 03:27:21'),
(27, 'DRIVE BELT REPLACEMENT', 'SVC25', NULL, 'LABOR', 0.00, 1800.00, NULL, 'active', '2026-08-17 03:30:05', '2026-08-17 03:30:05'),
(28, 'THROTTLE BODY CLEANING', 'SVC26', NULL, 'LABOR', 0.00, 800.00, NULL, 'active', '2026-08-17 03:30:35', '2026-08-17 03:30:35'),
(29, 'REPLACE AUX. FAN MOTOR', 'SVC27', NULL, 'LABOR', 0.00, 1400.00, NULL, 'active', '2026-08-17 03:31:12', '2026-08-17 03:31:12'),
(30, 'PULL OUT / INSTALL FRONT LOWER SUSP. ASSY (RH/LH)', 'SVC28', NULL, 'LABOR', 0.00, 1800.00, NULL, 'active', '2026-08-17 03:32:13', '2026-08-17 03:32:13'),
(31, 'REPLACE AIR FILTER AND CABIN FILTER', 'SVC29', NULL, 'LABOR', 0.00, 2500.00, NULL, 'active', '2026-08-17 03:33:06', '2026-08-17 03:33:06'),
(32, 'RADIATOR CLEANING', 'SVC30', NULL, 'LABOR', 0.00, 6500.00, NULL, 'active', '2026-08-17 03:33:31', '2026-08-17 03:33:31'),
(33, 'RESCUE', 'SVC31', NULL, 'LABOR', 1500.00, 0.00, NULL, 'active', '2026-08-17 03:34:07', '2026-08-17 03:34:42'),
(34, 'TOWING', 'SVC32', NULL, 'LABOR', 2500.00, 0.00, NULL, 'active', '2026-08-17 03:35:05', '2026-08-17 03:35:05'),
(35, 'TIE ROD REPLACEMENT', 'SVC33', NULL, 'LABOR', 0.00, 800.00, NULL, 'active', '2026-08-17 03:38:40', '2026-08-17 03:38:40'),
(36, 'WHEEL BALANCING', 'SVC34', NULL, 'LABOR', 0.00, 1800.00, NULL, 'active', '2026-08-17 03:39:36', '2026-08-17 03:39:36'),
(37, 'CHECK/CORRECT LEAK COMING INSIDE', 'SVC35', NULL, 'LABOR', 0.00, 500.00, NULL, 'active', '2026-08-17 03:40:15', '2026-08-17 03:40:15'),
(38, 'PULL OUT CAR MATTING (CLEAN AND DRY)', 'SVC36', NULL, 'LABOR', 0.00, 1200.00, NULL, 'active', '2026-08-17 03:40:52', '2026-08-17 03:40:52'),
(39, 'OXYGEN SENSOR CLEANING', 'SVC37', NULL, 'LABOR', 0.00, 800.00, NULL, 'active', '2026-08-17 03:41:27', '2026-08-17 03:41:27'),
(40, 'REFACE ROTOR DISC (BOTH SIDES) - SEDAN', 'SVC38', NULL, 'LABOR', 0.00, 800.00, NULL, 'active', '2026-08-17 03:43:07', '2026-08-17 03:43:58'),
(41, 'REFACE ROTOR DISC (BOTH SIDES) - PICK UP, SUV', 'SVC39', NULL, '', 0.00, 1200.00, NULL, 'active', '2026-08-17 03:43:33', '2026-08-17 03:43:45'),
(42, 'REPLACE LOWER BALL JOINT (BOTH SIDES)', 'SVC40', NULL, 'LABOR', 0.00, 3800.00, NULL, 'active', '2026-08-17 03:44:23', '2026-08-17 03:44:23'),
(43, 'LIGHT PMS DIESEL', 'SVC41', NULL, 'LABOR/PACKAGE', 0.00, 2200.00, NULL, 'active', '2026-08-17 04:00:51', '2026-08-17 04:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `service_bundles`
--

CREATE TABLE `service_bundles` (
  `id` int(11) NOT NULL,
  `bundle_name` varchar(100) NOT NULL,
  `bundle_code` varchar(20) NOT NULL,
  `bundle_type` enum('light_pms','regular_pms','heavy_pms','custom') NOT NULL,
  `description` text DEFAULT NULL,
  `package_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `estimated_duration` int(11) DEFAULT NULL COMMENT 'Duration in minutes',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_code` varchar(20) NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `full_name` varchar(100) GENERATED ALWAYS AS (concat(`first_name`,' ',`last_name`)) STORED,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text DEFAULT NULL,
  `role` enum('admin','cashier','chief_mechanic','service_adviser','technician','lead_man','stockman') NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `profile_photo` varchar(255) DEFAULT NULL,
  `hire_date` date NOT NULL,
  `status` enum('active','inactive','on_leave') NOT NULL DEFAULT 'active',
  `team_id` int(11) DEFAULT NULL,
  `supervisor_id` int(11) DEFAULT NULL,
  `hourly_rate` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `role`, `username`, `password`, `profile_photo`, `hire_date`, `status`, `team_id`, `supervisor_id`, `hourly_rate`, `created_at`, `updated_at`) VALUES
(4, '92178', 'Danilo', 'Guingue Cortez Jr.', 'theautodok@gmail.com', '09094008398', '', 'admin', '92178', '$2y$12$5aGnqjYhQawuKO8/5GMtlOq5D1Z5LSx56Q.bPdgQSZY1QDJL/wfQ.', NULL, '2026-08-10', 'active', NULL, NULL, 0.00, '2026-08-10 11:59:36', '2026-08-10 11:59:36'),
(5, '47311', 'Erin', 'Martinez', 'ptrciaerin.m@gmail.com', '09953653158', NULL, 'cashier', '47311', '$2y$12$xmEqUn18LzwrM7kDhqR5qOvvowcQP8cjVUpx.yaWlPhkSWMlQBau2', '6a7d8d1bd4761_1786613019.jpg', '2026-08-12', 'active', NULL, NULL, 0.00, '2026-08-12 11:19:51', '2026-08-13 09:23:39'),
(6, '53468', 'Lovely', 'Joyce Gambong', 'lovelyjoycegambong@gmail.com', '09186497454', '', 'cashier', '53468', '$2y$12$Y9DWyxnZ7xAuORuziv2Q9uP./CkGtNvIvEfUP5US9Nkk.sm2KIS1G', NULL, '2026-08-12', 'active', NULL, NULL, 0.00, '2026-08-12 11:22:26', '2026-08-12 11:22:26'),
(7, '65275', 'Iloisa', 'Joy P. Mejias', 'iloisajoym@gmail.com', '09973578954', '', 'cashier', '65275', '$2y$12$lLmQRB76imc4IxpMrFZmQusqBmIIAbJyiTNsWKROeiMDq83k/eN62', NULL, '2026-08-12', 'active', NULL, NULL, 0.00, '2026-08-12 11:24:05', '2026-08-12 11:24:05'),
(8, '72001', 'Aian', 'P. Alderite', 'aianalderite@gmail.com', '0936 340 8302', '', 'service_adviser', '72001', '$2y$12$cCEGDNbrfh3/pv8zcn6tpOXaZzgAm5/.WQ5Gr/i8FZsX7t14qPDh.', NULL, '2026-08-12', 'active', NULL, NULL, 0.00, '2026-08-12 11:46:14', '2026-08-12 11:46:14'),
(9, '15460', 'Nexander', 'M.Gayan', 'nexandergayan10@gmail.com', '0905 581 5476', '', 'technician', '15460', '$2y$12$f/6Q/Y.nVD8SAWFsSkd.iOZuyyv.2eVUI2TsmW.727aOBG/B5IP.m', NULL, '2026-08-12', 'active', NULL, NULL, 0.00, '2026-08-12 11:52:42', '2026-08-12 11:52:42'),
(10, '12086', 'Kineth', 'Pandian', 'kinethpandian23@gmail.com', '0951 188 7810', '', 'technician', '12086', '$2y$12$bRM585rqMBtdMqrybwj4r.fgeYMuVrxWmj63vVti49TzF3ioXz6cS', NULL, '2026-08-12', 'active', NULL, NULL, 0.00, '2026-08-12 11:58:18', '2026-08-12 11:58:18'),
(11, '95775', 'Jerald', 'E. Changco', 'jeraldchangco@gmail.com', '0915 400 4423', '', 'technician', '95775', '$2y$12$SWHJqWyT5S7Jup2z8vOMcOrUaFpF8DxbWAqgMu7EVtBU2OxUpDWru', NULL, '2026-08-12', 'active', NULL, NULL, 0.00, '2026-08-12 12:04:23', '2026-08-12 12:04:23'),
(12, '93576', 'John', 'Paul Villamente', 'johnpaulvillamente@gmail.com', '0938 173 9226', '', 'technician', '93576', '$2y$12$LobxPJUh8dneBSnRkspzW.BmVZLuhvIvxbmIXRCxSsG60R0fgnjhC', NULL, '2026-08-12', 'active', NULL, NULL, 0.00, '2026-08-12 12:07:03', '2026-08-12 12:07:03'),
(13, '97893', 'Legario', 'Mosaso', 'legariomosaso@gmail.com', '-', '', 'technician', '97893', '$2y$12$FHDB2T4Wmndkhc8uhOq.LemC1/SI5tLNwxsBlWLkHUfmfwmCIKWZ6', NULL, '2026-08-12', 'active', NULL, NULL, 0.00, '2026-08-12 12:26:30', '2026-08-12 12:26:30'),
(14, '96784', 'Jan', 'Carlo Padios', 'jancarlopadios@gmail.com', '0991 651 1233', '', 'technician', '96784', '$2y$12$u8MngbuXvLI.KM6qAVBHbOkmXzhvLrleoxdasds9K.hi.bLqxQ5y6', NULL, '2026-08-12', 'active', NULL, NULL, 0.00, '2026-08-12 12:34:01', '2026-08-12 12:34:01'),
(15, '32925', 'Artemio', 'Baquirel Jr.', 'artemiobaquirel@gmail.com', '0956 033 4033', '', 'technician', '32925', '$2y$12$6dl/tk7rM2QJHGhIzNsPI.kUQZqW6uThR/sE8Q./.e67B6ZGQosfu', NULL, '2026-08-12', 'active', NULL, NULL, 0.00, '2026-08-12 12:42:50', '2026-08-12 12:42:50'),
(16, '76319', 'Gracesilyn', 'Pelvira Chen', 'sample@gmail.com', '09000000000', '', 'admin', '76319', '$2y$12$uqzyzOJAl0t4amOC0kex3ueHdsWyc1vr8XKNfoxRZM2nCmj9/IOEK', NULL, '2026-08-12', 'active', NULL, NULL, 0.00, '2026-08-12 13:23:16', '2026-08-12 13:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `supplier_name` varchar(100) NOT NULL,
  `contact_person` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `total_purchases` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_payments` decimal(12,2) NOT NULL DEFAULT 0.00,
  `balance` decimal(12,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_transactions`
--

CREATE TABLE `supplier_transactions` (
  `id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `transaction_type` enum('purchase','payment','adjustment','return') NOT NULL,
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `reference_number` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `transaction_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_type` enum('string','number','boolean','json') NOT NULL DEFAULT 'string',
  `description` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `setting_key`, `setting_value`, `setting_type`, `description`, `updated_at`) VALUES
(1, 'user_profile_photo_admin_2', '6a788e290344e_1786285609.jpg', 'string', 'Admin profile photo filename', '2026-08-09 14:26:49'),
(3, 'user_phone_admin_2', '09943275040', 'string', 'Admin profile phone number', '2026-08-09 06:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `team_name` varchar(100) NOT NULL,
  `team_leader_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `technician_points`
--

CREATE TABLE `technician_points` (
  `id` int(11) NOT NULL,
  `technician_id` int(11) NOT NULL,
  `job_order_id` int(11) DEFAULT NULL,
  `reason` varchar(100) NOT NULL,
  `points` decimal(6,1) NOT NULL DEFAULT 0.0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(50) NOT NULL,
  `unit_symbol` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_name`, `unit_symbol`, `created_at`) VALUES
(1, 'Piece', 'pc', '2026-08-14 08:38:49'),
(2, 'Pieces', 'pcs', '2026-08-14 08:38:49'),
(3, 'Set', 'set', '2026-08-14 08:38:49'),
(4, 'Pair', 'pr', '2026-08-14 08:38:49'),
(5, 'Box', 'box', '2026-08-14 08:38:49'),
(6, 'Pack', 'pk', '2026-08-14 08:38:49'),
(7, 'Bottle', 'btl', '2026-08-14 08:38:49'),
(8, 'Liter', 'L', '2026-08-14 08:38:49'),
(9, 'Milliliter', 'mL', '2026-08-14 08:38:49'),
(10, 'Gallon', 'gal', '2026-08-14 08:38:49'),
(11, 'Quart', 'qt', '2026-08-14 08:38:49'),
(12, 'Kilogram', 'kg', '2026-08-14 08:38:49'),
(13, 'Gram', 'g', '2026-08-14 08:38:49'),
(14, 'Meter', 'm', '2026-08-14 08:38:49'),
(15, 'Centimeter', 'cm', '2026-08-14 08:38:49'),
(16, 'Inch', 'in', '2026-08-14 08:38:49'),
(17, 'Foot', 'ft', '2026-08-14 08:38:49'),
(18, 'Roll', 'roll', '2026-08-14 08:38:49'),
(19, 'Tube', 'tube', '2026-08-14 08:38:49'),
(20, 'Can', 'can', '2026-08-14 08:38:49'),
(21, 'Drum', 'drum', '2026-08-14 08:38:49'),
(22, 'Sachet', 'scht', '2026-08-14 08:38:49'),
(23, 'Sheet', 'sht', '2026-08-14 08:38:49'),
(24, 'Unit', 'unit', '2026-08-14 08:38:49'),
(25, 'Length', 'len', '2026-08-14 08:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `role` enum('admin','cashier','chief_mechanic','service_adviser','technician','lead_man','stockman') NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` varchar(45) DEFAULT NULL,
  `password_changed_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `full_name`, `email`, `role`, `status`, `last_login`, `last_login_ip`, `password_changed_at`, `created_at`, `updated_at`) VALUES
(2, '00000', '$2y$12$O9ar7m6BMLS3ta0p1NyzpeWM4AAd6KKKIQXXRgzT80Yx3ZJe6xykS', 'Dj Guingue Cortez', 'owwkxi@gmail.com', 'admin', 'active', NULL, NULL, NULL, '2026-08-09 06:10:49', '2026-08-09 14:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `vehicle_owner` varchar(100) DEFAULT NULL,
  `vehicle_type` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year_model` varchar(4) DEFAULT NULL,
  `plate_number` varchar(20) DEFAULT NULL,
  `engine_type` varchar(50) DEFAULT NULL,
  `mileage` varchar(20) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `customer_id`, `vehicle_owner`, `vehicle_type`, `brand`, `model`, `year_model`, `plate_number`, `engine_type`, `mileage`, `color`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, '', '', '', '', NULL, '', '', '2026-08-09 13:00:00', '2026-08-09 13:00:00'),
(2, 2, NULL, NULL, '', '', '', '', NULL, '', '', '2026-08-09 13:00:23', '2026-08-09 13:00:23'),
(3, 3, NULL, NULL, '', '', '', '', NULL, '', '', '2026-08-09 13:10:32', '2026-08-09 13:10:32'),
(4, 4, NULL, NULL, '', '', '', '', NULL, '', '', '2026-08-09 14:31:06', '2026-08-09 14:31:06'),
(5, 5, NULL, NULL, '', '', '', '', NULL, '', '', '2026-08-13 01:45:49', '2026-08-13 01:45:49');

-- --------------------------------------------------------

--
-- Table structure for table `work_sessions`
--

CREATE TABLE `work_sessions` (
  `id` int(11) NOT NULL,
  `job_order_technician_id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL COMMENT 'Duration in minutes',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_staff` (`staff_id`),
  ADD KEY `idx_action` (`action`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_date` (`staff_id`,`date`),
  ADD KEY `idx_date` (`date`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bundle_products`
--
ALTER TABLE `bundle_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bundle_product_unique` (`bundle_id`,`product_id`),
  ADD KEY `bundle_id` (`bundle_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `bundle_services`
--
ALTER TABLE `bundle_services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bundle_service` (`bundle_id`,`service_id`),
  ADD KEY `idx_service` (`service_id`);

--
-- Indexes for table `csrf_tokens`
--
ALTER TABLE `csrf_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `idx_expires` (`expires_at`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_code` (`customer_code`),
  ADD KEY `idx_phone` (`phone`);

--
-- Indexes for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product` (`product_id`),
  ADD KEY `idx_type` (`transaction_type`),
  ADD KEY `idx_reference` (`reference_type`,`reference_id`);

--
-- Indexes for table `job_estimates`
--
ALTER TABLE `job_estimates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `estimate_number` (`estimate_number`),
  ADD KEY `idx_created_by` (`created_by`);

--
-- Indexes for table `job_orders`
--
ALTER TABLE `job_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `job_order_number` (`job_order_number`),
  ADD KEY `idx_customer` (`customer_id`),
  ADD KEY `idx_vehicle` (`vehicle_id`),
  ADD KEY `idx_adviser` (`service_adviser_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_payment_status` (`payment_status`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `job_order_approvals`
--
ALTER TABLE `job_order_approvals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_job_order` (`job_order_id`),
  ADD KEY `idx_reviewer` (`reviewer_id`);

--
-- Indexes for table `job_order_inspections`
--
ALTER TABLE `job_order_inspections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jo_id` (`job_order_id`),
  ADD KEY `idx_result` (`result`);

--
-- Indexes for table `job_order_payments`
--
ALTER TABLE `job_order_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_job_order` (`job_order_id`);

--
-- Indexes for table `job_order_products`
--
ALTER TABLE `job_order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_job_order` (`job_order_id`),
  ADD KEY `idx_product` (`product_id`);

--
-- Indexes for table `job_order_services`
--
ALTER TABLE `job_order_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_job_order` (`job_order_id`),
  ADD KEY `idx_service` (`service_id`),
  ADD KEY `idx_bundle` (`bundle_id`);

--
-- Indexes for table `job_order_status_history`
--
ALTER TABLE `job_order_status_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_jo_id` (`job_order_id`),
  ADD KEY `idx_changed_at` (`changed_at`);

--
-- Indexes for table `job_order_technicians`
--
ALTER TABLE `job_order_technicians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_job_order` (`job_order_id`),
  ADD KEY `idx_technician` (`technician_id`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user` (`user_id`),
  ADD KEY `idx_staff` (`staff_id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_is_read` (`is_read`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_job_order` (`job_order_id`),
  ADD KEY `idx_payment_date` (`payment_date`),
  ADD KEY `idx_received_by` (`received_by`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_code` (`permission_code`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_code` (`product_code`),
  ADD KEY `idx_category` (`category_id`),
  ADD KEY `idx_brand` (`brand_id`),
  ADD KEY `idx_unit` (`unit_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_supplier` (`supplier_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role_permission` (`role`,`permission_id`),
  ADD KEY `idx_permission` (`permission_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_code` (`service_code`),
  ADD KEY `idx_category` (`category_id`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `service_bundles`
--
ALTER TABLE `service_bundles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bundle_code` (`bundle_code`),
  ADD KEY `idx_type` (`bundle_type`),
  ADD KEY `idx_status` (`status`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_code` (`category_code`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_id` (`staff_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_role` (`role`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_team` (`team_id`),
  ADD KEY `idx_supervisor` (`supervisor_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_transactions`
--
ALTER TABLE `supplier_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_supplier` (`supplier_id`),
  ADD KEY `idx_date` (`transaction_date`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leader` (`team_leader_id`);

--
-- Indexes for table `technician_points`
--
ALTER TABLE `technician_points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tech_id` (`technician_id`),
  ADD KEY `idx_jo_id` (`job_order_id`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_role` (`role`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_customer` (`customer_id`),
  ADD KEY `idx_plate` (`plate_number`);

--
-- Indexes for table `work_sessions`
--
ALTER TABLE `work_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_assignment` (`job_order_technician_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=407;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bundle_products`
--
ALTER TABLE `bundle_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bundle_services`
--
ALTER TABLE `bundle_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `csrf_tokens`
--
ALTER TABLE `csrf_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `job_estimates`
--
ALTER TABLE `job_estimates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_orders`
--
ALTER TABLE `job_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_order_approvals`
--
ALTER TABLE `job_order_approvals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_order_inspections`
--
ALTER TABLE `job_order_inspections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_order_payments`
--
ALTER TABLE `job_order_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_order_products`
--
ALTER TABLE `job_order_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_order_services`
--
ALTER TABLE `job_order_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `job_order_status_history`
--
ALTER TABLE `job_order_status_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_order_technicians`
--
ALTER TABLE `job_order_technicians`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1373;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `service_bundles`
--
ALTER TABLE `service_bundles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_transactions`
--
ALTER TABLE `supplier_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `technician_points`
--
ALTER TABLE `technician_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `work_sessions`
--
ALTER TABLE `work_sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `fk_attendance_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bundle_services`
--
ALTER TABLE `bundle_services`
  ADD CONSTRAINT `fk_bundle_services_bundle` FOREIGN KEY (`bundle_id`) REFERENCES `service_bundles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_bundle_services_service` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  ADD CONSTRAINT `fk_inventory_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_orders`
--
ALTER TABLE `job_orders`
  ADD CONSTRAINT `fk_jo_adviser` FOREIGN KEY (`service_adviser_id`) REFERENCES `staff` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_jo_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_jo_vehicle` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_order_approvals`
--
ALTER TABLE `job_order_approvals`
  ADD CONSTRAINT `fk_joa_job_order` FOREIGN KEY (`job_order_id`) REFERENCES `job_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_joa_reviewer` FOREIGN KEY (`reviewer_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_order_products`
--
ALTER TABLE `job_order_products`
  ADD CONSTRAINT `fk_jop_job_order` FOREIGN KEY (`job_order_id`) REFERENCES `job_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_jop_product` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `job_order_services`
--
ALTER TABLE `job_order_services`
  ADD CONSTRAINT `fk_jos_bundle` FOREIGN KEY (`bundle_id`) REFERENCES `service_bundles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_jos_job_order` FOREIGN KEY (`job_order_id`) REFERENCES `job_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_jos_service` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `job_order_technicians`
--
ALTER TABLE `job_order_technicians`
  ADD CONSTRAINT `fk_jot_job_order` FOREIGN KEY (`job_order_id`) REFERENCES `job_orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_jot_technician` FOREIGN KEY (`technician_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_payment_job_order` FOREIGN KEY (`job_order_id`) REFERENCES `job_orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_product_unit` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD CONSTRAINT `fk_role_permission` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `fk_service_category` FOREIGN KEY (`category_id`) REFERENCES `service_categories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `fk_staff_supervisor` FOREIGN KEY (`supervisor_id`) REFERENCES `staff` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `fk_team_leader` FOREIGN KEY (`team_leader_id`) REFERENCES `staff` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `fk_vehicle_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `work_sessions`
--
ALTER TABLE `work_sessions`
  ADD CONSTRAINT `fk_ws_assignment` FOREIGN KEY (`job_order_technician_id`) REFERENCES `job_order_technicians` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
