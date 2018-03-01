-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2018 at 10:34 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'halo Bandung juga :)', 'isi halo Bandung isi halo Bandung isi halo Bandung', '2018-02-19 10:48:33', '2018-02-19 10:48:51', NULL),
(3, 'halo Medan', 'ini isi Halo Medan ini isi Halo Medanini isi Halo Medanini isi Halo Medan', '2018-02-19 10:49:20', '2018-02-19 10:49:20', NULL),
(4, 'Halo Palembang yg diedit', 'ini isi halo Palembang ini isi halo Palembangini i', '2018-02-19 10:55:44', '2018-02-19 10:55:57', NULL),
(5, 'tes judul validasi', 'isi judul validasi isi judul validasiisi judul validasiisi judul validasiisi', '2018-02-21 05:55:36', '2018-02-21 05:55:36', NULL),
(6, 'Miss', 'Voluptas natus velit soluta vel ipsa et aut. Aut magni ipsam doloribus. Harum et voluptatem sed est sit dolore sed tenetur.', '2018-02-26 11:52:17', NULL, NULL),
(7, 'Mr.', 'Libero perferendis vero sint itaque voluptatibus id. Est sit minima doloremque et dolorem. Accusantium asperiores quos nesciunt nobis nobis illo.', '2018-02-26 11:52:17', NULL, NULL),
(8, 'Dr.', 'Atque perspiciatis facilis velit est. Vitae rem rem corporis assumenda. Ratione aut sint laboriosam et optio.', '2018-02-26 11:52:17', NULL, NULL),
(9, 'Mr.', 'Velit harum eaque qui qui ducimus ut modi. Et eaque dicta dolor voluptates nisi odio id. Veniam qui modi sit aspernatur numquam nam magnam.', '2018-02-26 11:52:17', NULL, NULL),
(10, 'Prof.', 'Labore voluptatem cum ipsam. Maiores accusantium deleniti qui enim. Eveniet impedit pariatur non autem omnis praesentium sunt aperiam. Voluptas laboriosam voluptate tempore et.', '2018-02-26 11:52:17', NULL, NULL),
(11, 'Mr.', 'Est quis est est perferendis enim quidem. Laudantium ex quia harum. Tenetur dicta quibusdam aliquid. Et fugit vel id. Iste occaecati suscipit ut sed aut a. Optio id quia est tenetur.', '2018-02-26 11:52:17', NULL, NULL),
(12, 'Mrs.', 'Saepe quae sunt ut culpa. Consequatur iure aut ducimus. Mollitia sint voluptas modi ut. Dolorum fugiat nam numquam nesciunt quo vitae nobis.', '2018-02-26 11:52:17', NULL, NULL),
(13, 'Prof.', 'Illo repellat id ut excepturi. Quis eos officia ullam non vel alias est ad. Dolor quo reprehenderit explicabo dolorem consequuntur quia.', '2018-02-26 11:52:17', NULL, NULL),
(14, 'Mr.', 'Dolorem distinctio et eveniet est error. Voluptate tenetur fugit repellat rerum dolorum id. Vero dolores voluptas enim adipisci.', '2018-02-26 11:52:17', NULL, NULL),
(15, 'Dr.', 'Repellat iste et debitis aut qui expedita. Blanditiis et velit id iusto ab sed sint est. Sequi ea vel est. Consectetur ut itaque eum perspiciatis sint aut omnis dolorum.', '2018-02-26 11:52:17', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_24_165212_create_forums_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
