-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2022 at 04:27 PM
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
-- Database: `uasuph`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_date` date DEFAULT NULL,
  `access_time` time DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customize_limits`
--

CREATE TABLE `customize_limits` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL,
  `limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `disabled_times`
--

CREATE TABLE `disabled_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spot_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_capacity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location_times`
--

CREATE TABLE `location_times` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_location` int(11) DEFAULT NULL,
  `id_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswas`
--

INSERT INTO `mahasiswas` (`id`, `created_at`, `updated_at`, `nim`, `nama`, `kelas`, `email`) VALUES
(1, '2022-12-15 04:22:06', '2022-12-15 04:22:06', '0381978817', 'Ikin Bahuraksa Wibowo', '19SI', '@live.com'),
(2, '2022-12-15 04:22:06', '2022-12-15 04:22:06', '0343959273', 'Kurnia Jais Mahendra', '19SI', '@live.com'),
(3, '2022-12-15 04:22:07', '2022-12-15 04:22:07', '0386023789', 'Maida Rahimah', '19SI', '@live.com'),
(4, '2022-12-15 04:22:07', '2022-12-15 04:22:07', '0399493614', 'Danuja Hasan Permadi', '19SI', '@live.com'),
(5, '2022-12-15 04:22:07', '2022-12-15 04:22:07', '0341290810', 'Kayun Lutfan Santoso S.T.', '19SI', '@live.com'),
(6, '2022-12-15 04:22:07', '2022-12-15 04:22:07', '0317420739', 'Kania Laksmiwati', '19SI', '@live.com'),
(7, '2022-12-15 04:22:07', '2022-12-15 04:22:07', '0328598137', 'Karen Riyanti', '19SI', '@live.com'),
(8, '2022-12-15 04:22:07', '2022-12-15 04:22:07', '0360768602', 'Kani Handayani', '19SI', '@live.com'),
(9, '2022-12-15 04:22:07', '2022-12-15 04:22:07', '0317794671', 'Jamalia Lestari M.Farm', '19SI', '@live.com'),
(10, '2022-12-15 04:22:07', '2022-12-15 04:22:07', '0393251180', 'Diah Wulandari', '19SI', '@live.com'),
(11, '2022-12-15 04:22:07', '2022-12-15 04:22:07', '0372450037', 'Gabriella Zulaika S.IP', '19SI', '@live.com'),
(12, '2022-12-15 04:22:07', '2022-12-15 04:22:07', '0337484850', 'Halim Hidayat', '19SI', '@live.com'),
(13, '2022-12-15 04:22:07', '2022-12-15 04:22:07', '0348498640', 'Karimah Purnawati S.Kom', '19SI', '@live.com'),
(14, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0360767637', 'Cornelia Usada', '19SI', '@live.com'),
(15, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0371357072', 'Daniswara Eko Nainggolan', '19SI', '@live.com'),
(16, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0317741046', 'Patricia Safitri', '19SI', '@live.com'),
(17, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0332618170', 'Melinda Farhunnisa Wastuti', '19SI', '@live.com'),
(18, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0340031225', 'Latif Tri Utama S.H.', '19SI', '@live.com'),
(19, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0316188400', 'Padmi Namaga', '19SI', '@live.com'),
(20, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0313672806', 'Balangga Nashiruddin', '19SI', '@live.com'),
(21, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0375232285', 'Aslijan Simanjuntak', '19SI', '@live.com'),
(22, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0368387734', 'Nyoman Ganjaran Manullang', '19SI', '@live.com'),
(23, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0381651003', 'Halima Oliva Yolanda M.Pd', '19SI', '@live.com'),
(24, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0309947208', 'Budi Mustofa', '19SI', '@live.com'),
(25, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0397429488', 'Rika Prastuti', '19SI', '@live.com'),
(26, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0322558538', 'Anom Wijaya', '19SI', '@live.com'),
(27, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0369904396', 'Shakila Puspasari S.Farm', '19SI', '@live.com'),
(28, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0385363827', 'Makuta Halim', '19SI', '@live.com'),
(29, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0377431048', 'Hardi Latupono', '19SI', '@live.com'),
(30, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0344587749', 'Julia Riyanti', '19SI', '@live.com'),
(31, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0321165621', 'Jasmani Wasita', '19SI', '@live.com'),
(32, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0363548983', 'Elvina Raina Fujiati', '19SI', '@live.com'),
(33, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0330768987', 'Langgeng Siregar', '19SI', '@live.com'),
(34, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0372836107', 'Padmi Yuniar', '19SI', '@live.com'),
(35, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0303037569', 'Zalindra Prastuti', '19SI', '@live.com'),
(36, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0359370240', 'Rahman Marsudi Simanjuntak', '19SI', '@live.com'),
(37, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0346549811', 'Janet Agustina S.Farm', '19SI', '@live.com'),
(38, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0379388898', 'Eli Rahimah', '19SI', '@live.com'),
(39, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0373463108', 'Yunita Puspasari', '19SI', '@live.com'),
(40, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0383354919', 'Unjani Oktaviani', '19SI', '@live.com'),
(41, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0320699956', 'Yuliana Wulandari', '19SI', '@live.com'),
(42, '2022-12-15 04:22:08', '2022-12-15 04:22:08', '0399735254', 'Darman Mahfud Mansur', '19SI', '@live.com'),
(43, '2022-12-15 04:22:09', '2022-12-15 04:22:09', '0328938299', 'Elma Rahmawati', '19SI', '@live.com'),
(44, '2022-12-15 04:22:09', '2022-12-15 04:22:09', '0372566539', 'Clara Aryani', '19SI', '@live.com'),
(45, '2022-12-15 04:22:09', '2022-12-15 04:22:09', '0325182154', 'Aditya Marbun', '19SI', '@live.com'),
(46, '2022-12-15 04:22:09', '2022-12-15 04:22:09', '0322690919', 'Ayu Mardhiyah', '19SI', '@live.com'),
(47, '2022-12-15 04:22:09', '2022-12-15 04:22:09', '0320817476', 'Adikara Rahmat Mahendra M.Pd', '19SI', '@live.com'),
(48, '2022-12-15 04:22:09', '2022-12-15 04:22:09', '0339576448', 'Limar Rafi Sihombing', '19SI', '@live.com'),
(49, '2022-12-15 04:22:09', '2022-12-15 04:22:09', '0367238257', 'Asmadi Mulya Pangestu', '19SI', '@live.com'),
(50, '2022-12-15 04:22:09', '2022-12-15 04:22:09', '0366105172', 'Radit Unggul Setiawan S.Psi', '19SI', '@live.com');

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
(5, '2022_12_09_072250_create_locations_table', 1),
(6, '2022_12_09_072505_create_customize_limits_table', 1),
(7, '2022_12_09_072552_create_programs_table', 1),
(8, '2022_12_09_072925_create_orders_table', 1),
(9, '2022_12_09_073109_create_admins_table', 1),
(10, '2022_12_09_073136_create_times_table', 1),
(11, '2022_12_09_073231_create_location_times_table', 1),
(12, '2022_12_09_073338_create_disabled_times_table', 1),
(13, '2022_12_09_074110_create_mahasiswas_table', 1),
(14, '2022_12_15_143455_create_usage__histories_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `oder_id` int(11) DEFAULT NULL,
  `id_location` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_time` int(11) DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present` tinyint(4) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `handle_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
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

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `program_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `times`
--

CREATE TABLE `times` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usage__histories`
--

CREATE TABLE `usage__histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Alvin Valencia', '03081190020@student.uph', NULL, '$2y$10$Wx5RDGXPcfzHhWw.f7Uj4eUrbGeWgxKNh4VZjgiiVpsJedueMW0xC', NULL, '2022-12-15 02:12:58', '2022-12-15 02:12:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customize_limits`
--
ALTER TABLE `customize_limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disabled_times`
--
ALTER TABLE `disabled_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_times`
--
ALTER TABLE `location_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usage__histories`
--
ALTER TABLE `usage__histories`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customize_limits`
--
ALTER TABLE `customize_limits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disabled_times`
--
ALTER TABLE `disabled_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location_times`
--
ALTER TABLE `location_times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `times`
--
ALTER TABLE `times`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usage__histories`
--
ALTER TABLE `usage__histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
