-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Oct 05, 2021 at 10:59 AM
-- Server version: 8.0.24
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `customer`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `address`, `city`, `state`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(2, 'Agama Branch', 'Back of Genesis', 'Port Harcourt', 'Rivers State', 'agama@gmail.com', '08133627610', '2021-10-05 02:50:44', '2021-10-05 02:50:44'),
(3, 'Jupiter', 'Kris Mac Guest House, Old Ikang road Marian', 'Calabar', 'Cross Rivers State', 'jupiter@gmail.com', '0813998800', '2021-10-05 02:52:10', '2021-10-05 02:52:10'),
(4, 'Abj', 'no 5, Little Bicton Place', 'Exmouth', 'Devon', 'abj@gmail.com', '0902989473', '2021-10-05 02:53:28', '2021-10-05 02:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint UNSIGNED NOT NULL,
  `customers_id` bigint UNSIGNED NOT NULL,
  `branch_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewed` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `customers_id`, `branch_id`, `title`, `message`, `reviewed`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'Testing Code', 'I dont like your services, it is very slow, Not bad thught', 1, '2021-10-05 09:31:11', '2021-10-05 09:58:31');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `branch_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `user_id`, `branch_id`, `created_at`, `updated_at`) VALUES
(1, 10, 2, '2021-10-05 03:58:35', '2021-10-05 03:58:35'),
(2, 11, 3, '2021-10-05 06:23:42', '2021-10-05 06:23:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `branch_id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `user_id`, `branch_id`, `status`, `created_at`, `updated_at`) VALUES
(2, 6, 2, 1, '2021-10-05 03:09:24', '2021-10-05 03:09:24'),
(3, 7, 3, 1, '2021-10-05 03:09:56', '2021-10-05 03:09:56'),
(5, 9, 4, 1, '2021-10-05 03:20:22', '2021-10-05 03:20:22');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_10_04_154415_create_sessions_table', 1),
(7, '2021_10_04_163435_create_branches_table', 1),
(8, '2021_10_04_163452_create_managers_table', 1),
(9, '2021_10_04_163539_create_customers_table', 1),
(10, '2021_10_04_163559_create_complaints_table', 1);

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
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0B6TKvswCLrpGeSyxYGeMhYDjLfZRIaNXZ7PW2Yx', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0pvRWxGNDlaS3pEOHF6bEJWOENZUjkzTjN3cnJ4TGh3Z0c4NkJoTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430841),
('1ibN5JNuUWPt0TNzsnzR5jSjNzgHMCljpKY0Ioiz', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid2U4MExOYUIyVzRQNUVFd1B3U1pSNWFVRGlZUlM5b2M5MDNFZFYzSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429743),
('1MSM9enhprHs0VZuHHCHX6Fi69rQJvwWHMdCgw6N', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRHRjUFVtVnR5VVFhdDNzUmNVWTNCRXVkWEhTNFNkemFtNHRXRWZzTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429489),
('1yNeYCOKOfczZYl32cpTtQiCYUe1MJYyUDQcM6Cl', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1JEZjdvMWxlZ2hKeENMU01tZXN2bjB2cGRLcVdyV2FpbEZ4RGZuWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430342),
('5B7PpORnHvCgg197jKXQuMILHyccQRPuZILzloc7', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHZ4SnhQSE1ZNGo1dXRFUEY2ZjdwZ1REREYyWWRHSHViSkgwdmZUWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429466),
('5thz5RifTSiMwK7dRGwpGuNPFzKksTmHqa3Nzrdq', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ3RrdXo0bXdVMngyM2pVbkFBcFJGZjZYcVFRN0hsWmxSUjJ0NDUyTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429482),
('62D1AGpCua91HOQ6wUDaKPq7lJurgyzlRrXw0s38', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2tMOHNWQnFLeHFsbUVNRkxzTkpENHJib1RHU3Yxa2I1TDRPYlFUWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429411),
('6lio5CArNNclVMajV0YkbBnlePSvDLLP53iM2rBx', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOE1IRVdnY0VodjBTY3FTS3l2dFRPTUhPVG1xMXczNHFGaEN1eVdPQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430285),
('6WiEDzdfopZkyQgDmeOSbkAMkOBSDKeFvLfPZqrT', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2I5c09FcTVma0tBNXV1Q2d5b0tZNkwxd2kyUEtOd1d2b0NtSWFVNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429652),
('6yfqreG0PMOXzBcky7Uj4tEPgSBOlI6HhKyWPU8p', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZlU4TzYxVU1EVzhmUlhYcmprTEdXNmNybmhXbkpYRUxZVVRHak5ZSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633431122),
('7qT2F6alE6HR7FLasK159IK2ywjBKaqMTGgCXviT', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWXFDcUt3RUthYUx5N01ZSkJOTlZmN0VXd1JxU3Joa295b0M2cmUzbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430303),
('7TcXoX4Mp2lLpIus4YltWu1K8ITunrkk3os2YReo', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTZKbFpWMHJrVUtFZ09XTE9nYlRoeUd0MkdTNDVEQXdIYTliSUJFeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429507),
('8PhIq1Bw1cWDKuQ8ZSzdMP02QIsaFbjy7mrGvO2N', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVhWTHBxdWpWWEdOMmJ3VkRLSnJ0enhhWkRzT3djV3ZzcndJNGtsaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429868),
('8y5YooQqaKrE7FVAGLWF3TZppb2quh6FlulkxJDK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWllYmowbWg5bHhCNjl4cmV4d1FFamlCcnEyV1Z4eVdIZXptMkZ5WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429326),
('9Bx4TWMOYDnuk2IqY7lB2K0DWEi0qjIuR3Uj1rq3', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXA4cmVITGZmN3ZQdjJwQ1pZVEdsZW0xcng0MndjcWk3VnZRYUVobyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430141),
('ai7ADKMCBBQ0fl0ed5pbFDkVhrUNCHA2nz6m29vK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTkR5cWJIcXZKSlJXd3ExdDljbFYwSzBNUWFKOXJYOTlEdVh4dW9mSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429435),
('AZPoUGixoVVdyd6qieeFfR7rqENPEKor23Q6a7kZ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMVJzRUxYaTJ2MzZMSERUQmNaamdFenZTTk43NjRoQTh2NVBDTXJTcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429124),
('B0k3R3G9ZFM2sLnT86PqyzpbRBOZyeazJ6ZlvLBK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidlFweGRxbllOektMUmlHQ0JXc2sxblVLdkdYbDUzb0FWVVExWlBIUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429479),
('B2jY3mwoHmdvsmjMB5z16XPqJUbiXKEwBODH94yy', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic2JWb0o0bmhVdGhxOHlUaENCc09ySUpSZnpBaEFKQWoxVXNBMlh5eCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430348),
('bm5L4GgtYDSVUQKFA00Ucii5X3PGabs8RzwjYaTj', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidzJuZnpnZHRlYjlZbEoxMGFqbEVZeWlaNmhlUkl2MUZGSTN2S0FnViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429146),
('BYKuHuFkqahcS4TkeugKsPTR7CM0rDzFdzFusY2K', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGhHZ1VYTlBSdkVFWkRCelZyemhidGRQS3hHT28wZmtqRkl5ZVhvbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430996),
('C6XKcTg1tOM9A5jrkwCIqM2o8ySVjw65YehVlBQE', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHVYU0ljcjB5TFhDQU90Y3JLMHRweTFzZVd1dGduSjVjZzhpc0M5ZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430166),
('c83VqugREdypJCi93kq3wkoKwRzsqpWnwJbNw56a', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSGt1d05xR25IU1ZtRFA3TUZ6VzVxY0RpVHVXeFhEeXhYaGVhOG5TZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429389),
('caOD1y1ebiCglFvkfX3BoHEiCrcFG1ayQnFjpRdj', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMWxjbDBjT2paaWxHTGNXcHpmNUZGZzFqZmwxZnZWUlYyYzdHeWxPQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429687),
('ccjRzo1GmWEBZY0k7ewprpO3CYIQIUcdjPsLuf5H', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiempzWHZmbFFiZThlMktXdmRtVU1XN29MdEQzbVZyRXhCSUpzVGE1TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430320),
('DbkvAds2svBNrEYwByn70pbOUlStK9hfunkMyUph', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQXJGcnltWllUa2x4SVVqc2JEMVBQczAwTjBzZWVQVk90WFl1VUxrUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430066),
('ds7JttrCdXJpvcoEPUo7HJa7Ai8is5fHl4KVcPey', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3Q2NFk4TjFqYXlseVdQZkdFeWxad01sN3Q5Nmh1MU15SFRKd1hhViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429920),
('DxvjhKHQi9HEBHYvVXlpRLC48AbaAE9Y6faaJ7WW', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmZjTHU5TG1McGxTbUcwY3RlZmtKNGhzUlZCczRMNXNjMGtwZ3UwVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430336),
('DXZFcGIk2LPnKcjFsRlk9NT4TSuYy2bh3BAz87ig', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSUVGUGF4Ukw0SUxaUkd0R2pMWncydDFac2tyNngySUh0QWhua3o0ZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633431164),
('DYevPpRpYDmOvNXkoRdK2OmqeSMvOvfIUnfDictx', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmJSckU0SFBxNUE4NGVVRnZYMUlXMjlYa3EwMjdmMzQxenJoTnBxRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430145),
('e9DGXGJa1OiChjVYHUMnTLSB0Bzaoab2Dnk1u2Wa', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoick83bFhMdVlMYVBrNE4ya0tEczNvQWMzVFRleDFVOFBvWXk3Y2p5VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430132),
('EEX6xpuZhEkm3Kj7u6EngMP3KQbXVrGM9LK4HDhR', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVEFTMFZpUGM3ZjZsd1hNNUV3NWlRRlViNGtXVmdZcFNNV0lsREpIeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429912),
('eK1rMePaAuUYrYeZrhiYOZaz4xt30nJjCqUfGsTh', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWZOTjhwa3RZT0ZWbHk0VUEwdDRBcUFQd25xb2EwTDluaXo2a3o2SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429378),
('eofc8dvj8Bp1uwBRkvLAvrahfYIOaPFnPuH78pY1', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmxCRUNRMmVuUWxHdWVpOWc3MEtNcEM4UDMxSnRZcjFjS0xWMEdkOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429657),
('eStf0b51Ta5FVVqi6hHc2QnYnwQZL7jzIPJrLYe6', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjRPY2ZKN0VPUzN6MDA1N2V4VDdHWlVYejhlZks0UzhsaW9STTZoaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430280),
('fpsQnHSvTzSNISfVQUghP8oXg63OUkyQa5kZAgM5', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakFCWEpQbkVJcG1zQm1jMVJUaE1wRHMzZDE4MzIwTXVqNGVNRE9DVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430315),
('FusgNT0uEwM52aM4qnos88vy3NaQChwGspHOefMw', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTG5oZkxFN1RqeXNKaHVjdWpETlljQVJJQ3Q0RlNybENSMEphN3ZwViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430922),
('g8t96rUgW8Uez8p6Rq7Lrr2hhW30WslPFfKMXdZV', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTm5jdmlJVDVBSlMybzVlYmY0cE1UakE0NjVxdjEzcWVXcWpmTDlLayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430350),
('gDYuJKgomy3DWWTISfEh6GodCJbDcydWb78mYJex', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmpwWVQ5YWp3MDVCRGlsN2hSZ3FJTTVma1p4OFo5NnU5c3prWTZJMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429947),
('GE8TKMBBfsmwaADsyCk4nyUIo9QhjvfxRoXwemCj', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekFhRkt4cTNZQWFPanNWSm5BS0djTG1ZWnBweDZZeTV2WkU0SWxwbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430310),
('gLtWkebpxEgo58AU6MjeLuYXIxshm4nJQQCfsfDF', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOTladjFkYVBnajB1bXNDY2ZObHhxOG1YYm9EWUhQZFhTYVNMbktkOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429988),
('gN7trWVb9aD6sQhuqYrKpGVp27J4mDFPzlDqYMPQ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzVpbkx1RjlrRTREMEMwS25VQ0FCSlprSlNIZGlPNzVDcllNOThjRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633431009),
('hdpSYw4s4KKwnAjM8AidypgEMQ3Ea4B8tiYyRLxt', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibFJsQ2tab21Md0lnb2t4WnVOMUI3YmJLbEl1RVg3OTNQeHFxd0xFbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429792),
('hRlFtnhBHLVSHpLLEnfi6Cre9j8p1o1jp1KiLQxL', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzV5a0dPMlZjODhDdEVWc3pFTDF6RTU1WFBTaGxjRXJ0UVl5MThmbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429364),
('hyC6hXIQh5VH6QIVedb0JV2YUoK0SVyBgDENkZBv', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicXZvS0UzcGxTZ2o3QUFGVlFtaVFlWURpd0lwb1RMUHRuOW9ySjA2RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430260),
('i5KlSzwqzpcblfaf5MiyMgsyVACEeTKB7WtQqznz', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDNleVhudmNlUjdqVE9VcDFGaHRlZFdRNTJNaEdHTnUzQ2hLT0lLcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633431005),
('I7jNCtC8eJphc4Xv0NVPdMj9LGPbBjQLK7RBfouy', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDBJU3NKWlFFbEV5NW93SEs1YkdUMldkeGQ0SGozRnVqUTRCaXN6RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429495),
('IDoMQji5rqiWWHoeBuZzHUncEuRhWNLnRGHsLv1R', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmFaV0dSemlIZEFvZnBkeDhOM0N2VXEycEVTZmwxemZnRWxjTjNFVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429504),
('idzrVynxYkiZtos2HxszSXiNswTp2ZG4Qf0nd5oj', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkNBVWpaZHZsTFZ1bjYyQmpHMXpob01QOGEwYWJNcld5Z2E4VWRiQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429559),
('ieijFGTr2bJbE2fUzDy6t1rLO5HmK3V3zOFhX9Qw', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0ZEaFF4Z0tmV1hKcjVBbE83OXdCT0pZOXBaakhjNXRaMjZCUTFpViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429771),
('ikIMhKx4naZo4V7qZyIgNO8NQfqt5plPKL7CfbnF', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDJFZmNSS1VZdEhnczFCUkJUc01ydFZWRng1R2pIbFpWc1JkY05FSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430332),
('ikllL374vNwlsuxIHEYj7leGrR4890jZRauY8N1a', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWE1Ynh2V3Yyb0l5YmdTMExaYXBleEw0WUo1dHlNUUxrcWtqeFpydyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430881),
('JdhuUbZmzJI9kBtKRzESlcAxH7kiFfNUGYQpLNCQ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0VYRGFsUWlxQUFnRWJFbnNMejdqRlVkYTdFTW5TMzUwZVZzOHhrNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429470),
('jpP49CKexmKyPSzKolEoryVzQvH1zl0SnZgCoGQF', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNElDSndTb3BCcHBUemdQZWJSMVUzc0Z4S1BJcFRGVkE5elNRR21xZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429783),
('JVmigHyA3eYngEWE7KDswSWme7wpSGSvE7qTMyG0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGgxdENtSUcyYkUwNDhtNGJucUhONmswaGNGWkx6b21kRDVSaDdQSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429765),
('ktkSFD006DmksATs4rHNqQxpezPl87yScPJK47Vv', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicndWTk5GV2NDazkxSVJWNm9XQk1ZckFvb1dNQ2FUTnNYdXdRSkE1WCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429406),
('l1eLB8SnGZq97OVnIWloKAl9X0Mjue4115dr07y2', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib0cyNG41SGlQZ2tWSVFwanFacklTMHYwUGtMdFQ3ZTBubmp1dm4yTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429459),
('ln8rtM6VK4KI6DxtMhTz2EXLz86uT4lxEjZXycwE', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNFRyek9qME9BVkx0ejJ5ZzFmZHNkeU1oQnRXTWU4MEdObzEwbUNFbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633431162),
('LnMD2A3yGhVAvN4G76YZUaEJ46wg2QiXIHltLjgB', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVllGUFBGNWJ3aWg2WWNva2FTek9teXJxNThVclVwV1VWOHJLdmFLZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429334),
('ME1jYRqNsOSH7oM4R9EPdsmgCff4l8RmeZiyNO5r', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMjk3ZUVneTJSa0NlT2Q5UTVISDBWN3NScjZXNDJmTndOUVU0QUdSciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429431),
('MeOD2rmWlwoA3BarO7rdJ1cpkbOHMiAWYpBYPYeC', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidXdOMEw2dXNqcTAyVmNoOGhHYkZ2WUQ3WjNaenVIZDRFTzJNclJEMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429338),
('MNUOrL0cFFijjHoqRdJQ3hWKcnkrmbrUAJIOPhIo', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiME9BUFdkbW9XcG9ObmxJM1ZQZUV6WlJ6cGk1MndvT2syT0Q4dDRBVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430998),
('MrFhDdhv0apRyXLaIRn3ML6uJnxTbaNx99ejNFTA', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoid29nWlR4TTVhc0h5MnByMTdlcml5R2VaNThIZjg1TjVLeDhZaXpzdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429759),
('NaH2VDylplGzXfgAwtFrDJIIFl9b1qbGojucMedq', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY0d2R01Md3RZVlJQdFRQZ0JYRHIwdnR1d2NObjliMVhlSlNsREdYbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633431144),
('Nf9aSFidrHrxxYjhzUyPzm25mVareJzuoN6vfoaJ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidmRreXpqdkllSHJ1c1E5Q3BKZ29yZHdVT2lmYUhSVzJZSWNuY0M5eiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429971),
('Nq7SlyA7Hfpxi7Is8xA3qmAVt34V7DaWA85ySRlJ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSU00QW9OcWxxRENiOEZ6RHF6dGxTV25JdDM1YnJwSmp0bENRSVc1ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430735),
('nwCNwsTsYHIFTRlucyA76Qzt7e2PtJWjdeglTO7U', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicVdEdDVUWWtkVVBKa1lUbmZWSkpQVVBXTVI2ckdySTVBYUs2RHVQSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430318),
('Ny2AYm5ZyR0b1Ush91mHw5FeTaEwdXHv5uOhCi5O', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQU11RnZZakd3dFhxOGQ3R0d0a0NtcmpZQTFrTUFLMVNrdmxpMEtKNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429904),
('OzFvbKRFv8Yavk1Smxiuejomry6aSvD2cEICwMwV', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT3pYUWtnaVpMZVI4WnR0TTQ5WFk2aE5iRXRuUnBlYjRqWHVFZ20ySSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429330),
('P4M2sCERoJGvYQjM3LyVUsphhTanNQuWtSJUSJSI', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHhKTWZvMU4zT3luRk95alc4eGtVeENpY1lmY2VseURaazZrVWY2ZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430089),
('PCHsb4Yc9B17EGzioR0fp6fGBCK829ljkaBiFQcY', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmwwcXhHd2MyWmdTbnRMVG9oUUs5TUQyWTlLWkQ5cVRMQUY4S1c3WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429382),
('pOEPzlmeqa8ACHeQdwaPYVdgQ4QdSOVUWhzcc9L1', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVktJeEY3Wkl3YUppcnNRRmVXaUdSMW9GR1pUeU1oM0VLU0JPT3BXdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430362),
('pvqmfVvFyGUfXWIZzazfQ4TZ8he8Yj42twfKVEVp', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmM3aFlRVjVnTzcxYm10N0ZsZld0MFdlaVFCckRqblRFbm5TamZjTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429983),
('qAUXGxb2RB6sogj89wfFpr1g1hUl17nyREuLRVAR', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2ZBZUp2eVNJRmFBc2t5UVg0NWVENWFOMHpxS2VVRnlSUGVHU0I1YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430296),
('qCpPrbhxakVVbtMIvOEkryKehlY5yi1oSUGvneVZ', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFdhTHo4NEt6VldLbXdnNkdwWVhIazdGdmJ1czZkajRuT3hNQ1hqYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633431417),
('QecEDIhM3bleZ8aZNNYeIg3dozBlDGKfR8jvySmO', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkxGRjVHNjZySVZ2SjNoZFRtS3ZZVWVWSXJkSmYxeWM4R2luYWswQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430988),
('QwZXv4A4XvA9gx0Av8ftkl5vtvRHfxOSyLGFKBha', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnRwVDg4U21MaEtPY0ZtdHZQWVVvZlVlRXFqUENnODVkc3kzNnBWUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429518),
('rkkojkJ8HyFkAkw5xQzPmJyjkMSgRrRlnsk6dmc8', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibjBHVHF5eHZvcHBoQVlvWXp5SXpTM1dKNDRIWXhsaUM2d3NYa0dEQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633431404),
('rkmUpRPi5SS7LwKSxdWORIXcIFA1wYIbs0Fh08Wz', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEFxZGVqZEl3dVMzQzVvRWVaZVJndmMzQlBpbldYVjI2YmRidlJTWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430270),
('RQx8QqtU7icdN05Gs5cGuq03wovqDYXuti08TzY0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOWNub3hVS2ROczYwS2tTTEtsbHY5cGRvUkFGcTBPN3cxMTdEZ1AzcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430007),
('RrBBQuhmbvt1fpVpZ7KT8K2TDM4ZX4fPt3tAKtC4', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXBkOXlTV1JjQk9vR2hrVTVDb2w2MjRMdkl0ZWVaUVRqOE5WSjBQQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430022),
('sBc24BeQrz13gt3nb1UnOUCnAtK67sgX0BjVgoEG', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT2VyVnNoQTFCcGZiVUJSeXp6bDVzY282aE82eklMQ0hjTzFzZmEyZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430290),
('sCG2UemtJrHnYTuue6E13Ygs3pit8WmV63Uw4GxU', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNHVtUXVMN0JFdVBvUnd4c2h1cEpZWmJpcTdDNkRHMDhnbUQwUmptUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429386),
('sLB8msosyZ3edSxsxCO1kzqBcukI70i9pR6Qc05s', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaExsSW84VG5nN20xUWd5RURIczhwd3BvOGhxSU5yT20xaTdtbWYyMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429055),
('snv2mBjkUXyexIBL5WDpVONDTEuSBuCIgFDADj3w', 2, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.164 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQXQyU0h6ZnpIeGw1SFI3eXJLQlg0dlBHcEpFcTU1Y3Y2bGExdkIzZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9tYW5hZ2VyIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJHZXckRMRWNhU1FlWnF5UXBEb201L2V0cUJEQlA1Y1pvQTg3RFZWVTF0SXh2OVV2L0lJWUtlIjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMCR2V3JETEVjYVNRZVpxeVFwRG9tNS9ldHFCREJQNWNab0E4N0RWVlUxdEl4djlVdi9JSVlLZSI7fQ==', 1633431527),
('So5zjyeAIDimt2CqbFKiSBrEO27pb6l0BSK00lgw', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFNZQ0FyZ3RBWVJWanBUT0k5UjNPelBVOW1abjM1cTY3NjZHeXVrcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633431420),
('SPTPWjzPnvRAAGNVDzYMIzQ8Rr2uKgZQW6RIlGW5', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUjdxd0RtanVCSXl2N2EyOHBNam5OUmR2NWhWZ3hBVkVBamkyOHB1MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429523),
('SwBk5TOYFvHkb0WIrQUXPFjEHzBAcpeKmlUSOGMe', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTNDOFFlMFdpMERia0RleTJ1bENMTFRUVWxvVk5FbG44WTcxV09kMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429514),
('SwdkmbwIsyE9mhThDuQ9mFXxs7Zi45eYiUquW4xV', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiblJJUk9QMjdmVnhqSEQ1WG16Y0NZSTFRZUlienN2VFczVjkwd0dCMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430339),
('THJqJAt1MmV7fVNLPAApZoAu9JWJWHnip3kMn2Oz', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiR3piTnRKQmswUE9iVGZYYWVYamp4akRyM3VWZlFxdmRNM1M4QUN0NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429104),
('trxRmLuMPhUrPXGdCnp3BKavKJsLww6VA2xJXpUy', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQnJxN3RxUm1hUmhVMGM1QkVCMVZRV2FONGZCb01Fb2MyaGpQUEJMViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429108),
('u9w17If9sdxEkN0LhPPgu4qbWjIEFWNDgWWwgV59', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHVZenUyZHh5bkdVTU80Z2djOEVaT3FvNU5QTkwwSlJTZnVaRVpzdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430149),
('UpPF39RUqxO1iR4fUBPsIqwIJtGFICGoMqi9Xm3p', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNE42RDR0UEpSNEUwakR0OW1CNThJSzJsVkxSdGI3SlVOSWpMcVJLdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429663),
('vBk0E9Xq9y9tHVxMz11WUrVmNpmgWzqpdNKqdj4o', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0VOaGQ0M1Z6RHNUaHNYcUFnQ2NRaFRScGNJSzZuUGFKSVZwVUJuVSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429945),
('vbSQ3uf6iZPBIuq9arnvmCCOr6JZhVErA12BrGp7', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1pnaGdXQUxxM2lnb09UTGVKOEtRaXNkQ0tJMHcyN1JkV0lWYkpjYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429925),
('WhYXNsu4Gyjbs2SC8uObFh1RHAQ55paXKGh36pm0', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYWlNcEhSbmY1a05UV0FSbjhEM1NnUDBVZmN3RHJEUXd0Umw4Q3hNViI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430905),
('WK0QtK9AK7M2aHzYfxsw0C8Ck7VU1C342DWrgMOS', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVkNCanJIajlYSVhXT3I3SVBaREpJT2NqOHp2bGdwYk1yS09OVlJkWSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633429512),
('xxydHmtBI9i2TlE1vBXFJhJir6ar3tYqRgQ3VvrL', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUWVEMFo2Q29wTHlvdUFQYTE5M2E2VWdBVWpCMXNYYk1vYWpUYkN5NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430357),
('Ynybm20Z479AlYNTjbZWhF38Qyncq9Ja5gGQwhl8', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2hEdjh3M2lQTzVLakp5dGtBUVJHSXU1dk53M1dYMURKYlFnTVc4dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430305),
('ZrUAJpNt2FUhnnFxvTy3Hd3ZqQWNm99ZuB94Jwer', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicDJZSFhFc3J3eGJ6VmtTbDdXZzF2ZFVQNldnZURvSkxxSndlNlIwcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1633430917);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager_id` int DEFAULT NULL,
  `customers_id` int DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `keep_track` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `manager_id`, `customers_id`, `phone`, `address`, `city`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `keep_track`) VALUES
(1, 'John', 'Dee', NULL, NULL, '08133627610', NULL, NULL, 'Johndee@gmail.com', NULL, '$2y$10$8RtENB/.F63NECbl4OdVOOrHg2YAjf/CVNUvVDs.2JlK.pwlHX8Q.', NULL, NULL, NULL, 3, NULL, '2021-10-04 16:25:37', '2021-10-04 16:25:37', ''),
(2, '1qwnB0OWOi', 'C4VL0MYOqR', NULL, NULL, '09019293929', NULL, NULL, 'admin@email.com', NULL, '$2y$10$vWrDLEcaSQeZqyQpDom5/etqBDBP5cZoA87DVVU1tIxv9Uv/IIYKe', NULL, NULL, NULL, 1, 'profile-photos/C8NV0bhaCwhALtFXl6p4DGTiS2RQypffPZiyEryo.jpg', NULL, '2021-10-05 05:24:17', ''),
(6, 'John', 'Does', 2, NULL, '0704738292', NULL, NULL, 'johndoo@gmail.com', NULL, '$2y$10$WAJXp2FWjTtuNvSXZD6FxOIfggvLnBu70WKFBtwZXuX8Er8hRKzmi', NULL, NULL, NULL, 2, NULL, '2021-10-05 03:09:24', '2021-10-05 03:09:24', ''),
(7, 'YakubU', 'Gowon', 3, NULL, '09087575645', NULL, NULL, 'gowon@gmail.com', NULL, '$2y$10$FvhgXu7KYP3rQe3hvgvcTeV/QaEhcaYFp9iiBRPPKUrYA1jyhovzS', NULL, NULL, NULL, 2, NULL, '2021-10-05 03:09:56', '2021-10-05 03:09:56', ''),
(9, 'Odera', 'Obasanjo', 5, NULL, '08133627610', NULL, NULL, 'odera@gmail.com', NULL, '$2y$10$DzKIa.ClpMCjR4KjZ7Bmde2WvMBGAZWFeUNGNaZJom4eVBgLy2E/K', NULL, NULL, NULL, 2, NULL, '2021-10-05 03:20:22', '2021-10-05 03:20:22', ''),
(11, 'Ikeogu', 'Chidera', NULL, 2, '08133627610', '333 Fremont Street, San Francisco, CA', 'Califonia', 'ikeogu322@gmail.com', NULL, '$2y$10$4pK.ZQILunJ5oEoVC27xO.AJ1mioDFCJXLF1BHdholhXlibVJFe7O', NULL, NULL, NULL, 3, NULL, '2021-10-05 06:23:42', '2021-10-05 06:24:03', 'eD6qaRWF');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
