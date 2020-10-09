-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 09, 2020 at 04:11 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-mail-auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2020_10_06_151647_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(5,2) NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fastdelivery` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `item`, `price`, `brand`, `category`, `fastdelivery`, `created_at`, `updated_at`) VALUES
(11, 'est', 102.61, 'enim', 'Debitis odit aut.', 1, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(12, 'tempore', 507.51, 'eligendi', 'Quia alias ipsam.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(13, 'vero', 19.59, 'occaecati', 'Nobis molestiae nam est.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(14, 'velit', 790.14, 'veritatis', 'Eum inventore.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(15, 'iste', 705.21, 'atque', 'Dolor perferendis magni ea esse.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(16, 'quibusdam', 361.45, 'eos', 'Voluptate cum eius.', 1, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(17, 'aut', 748.81, 'voluptas', 'Ut consequatur consequatur libero.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(18, 'adipisci', 233.20, 'quia', 'Occaecati dolores quasi.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(19, 'architecto', 452.36, 'aut', 'Veritatis et praesentium.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(20, 'laborum', 212.79, 'earum', 'Omnis sunt deserunt.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(21, 'quisquam', 621.98, 'dolor', 'Unde sunt qui voluptates.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(22, 'non', 736.43, 'sit', 'Incidunt rerum necessitatibus et.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(23, 'iste', 892.06, 'est', 'Quam possimus dolorem omnis nulla.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(24, 'consectetur', 953.54, 'veritatis', 'Doloremque atque nesciunt.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(25, 'ad', 439.18, 'ipsam', 'Dolores iusto dolorem at.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(26, 'sit', 491.84, 'earum', 'Vel voluptatem ut.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(27, 'consectetur', 715.53, 'voluptatem', 'Velit et labore.', 1, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(28, 'voluptatem', 467.61, 'soluta', 'Maiores excepturi voluptatem.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(29, 'sequi', 416.08, 'suscipit', 'Libero error earum aspernatur sint.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(30, 'libero', 574.44, 'saepe', 'Unde aut sit omnis.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(31, 'possimus', 400.15, 'harum', 'Enim beatae modi perspiciatis.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(32, 'possimus', 741.18, 'eveniet', 'Rerum at consequatur atque.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(33, 'est', 643.38, 'voluptas', 'Est aut saepe quia.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(34, 'rem', 62.37, 'occaecati', 'Sit pariatur quasi voluptatem praesentium.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(35, 'et', 622.35, 'facilis', 'Tenetur odio aut placeat.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(36, 'aut', 263.34, 'ut', 'Cumque ut omnis velit.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(37, 'et', 247.47, 'quos', 'Sed dolorum et doloribus.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(38, 'assumenda', 97.54, 'maiores', 'Aliquam voluptatem libero dolorem quisquam.', 1, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(39, 'iusto', 967.39, 'repellat', 'Maiores et quae nulla.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(40, 'iure', 761.68, 'mollitia', 'Nihil sunt repudiandae.', 1, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(41, 'voluptatem', 896.58, 'illum', 'Doloremque dolore.', 1, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(42, 'beatae', 216.98, 'illum', 'Consequuntur molestiae et ducimus.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(43, 'dolor', 644.66, 'et', 'Modi ipsam quisquam.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(44, 'odit', 760.11, 'officiis', 'Debitis architecto beatae qui.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(45, 'quia', 466.73, 'id', 'Velit ipsum ut ut.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(46, 'dolores', 406.20, 'voluptates', 'Minus sed eum.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(47, 'veniam', 732.09, 'dolores', 'Saepe ipsam est.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(48, 'omnis', 662.33, 'et', 'Earum ut quos.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(49, 'molestiae', 692.28, 'blanditiis', 'Voluptatem magnam.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(50, 'repudiandae', 738.84, 'laudantium', 'Qui aut nihil.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(51, 'ratione', 662.04, 'repellendus', 'Qui nulla.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(52, 'velit', 702.97, 'beatae', 'Odit totam consequatur omnis.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(53, 'aut', 836.16, 'fuga', 'Dolor quidem.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(54, 'voluptas', 608.84, 'consequatur', 'Illum sed et libero.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(55, 'voluptatem', 868.84, 'magni', 'Et consequatur optio soluta.', 1, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(56, 'quia', 843.32, 'aut', 'Placeat nostrum laudantium.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(57, 'ratione', 133.37, 'quam', 'Velit dolore provident error.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(58, 'autem', 212.19, 'qui', 'Occaecati reiciendis assumenda.', 1, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(59, 'quia', 186.39, 'magni', 'Cumque perferendis est culpa laboriosam.', 1, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(60, 'soluta', 878.32, 'consequatur', 'Velit animi voluptatem.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(61, 'sequi', 367.58, 'est', 'Qui magnam veniam consequuntur.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(62, 'accusamus', 101.39, 'neque', 'Voluptas consequatur quia natus.', 1, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(63, 'pariatur', 909.48, 'quam', 'Non quasi quis.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(64, 'aut', 716.75, 'rerum', 'Velit quas temporibus animi.', 1, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(65, 'consequatur', 767.50, 'in', 'Quis ea reprehenderit.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(66, 'porro', 71.82, 'ut', 'Quibusdam harum eum.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(67, 'impedit', 645.25, 'consequatur', 'In quia ut omnis.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(68, 'veritatis', 959.24, 'ut', 'Omnis laudantium.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(69, 'quibusdam', 738.66, 'provident', 'Vel possimus culpa deleniti.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(70, 'voluptate', 320.52, 'qui', 'Qui iste inventore aut.', 1, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(71, 'et', 195.99, 'a', 'Totam qui quos ullam.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(72, 'excepturi', 808.89, 'ea', 'Saepe ratione sed aut.', 1, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(73, 'debitis', 650.02, 'molestias', 'Aspernatur voluptatem perspiciatis eaque.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(74, 'sunt', 85.44, 'et', 'Voluptatibus consequatur officia.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(75, 'veniam', 937.44, 'quasi', 'Est enim beatae.', 1, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(76, 'beatae', 662.85, 'id', 'Maiores perferendis quis aperiam.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(77, 'commodi', 403.21, 'laudantium', 'Itaque ipsum.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(78, 'qui', 197.08, 'fugiat', 'Quae commodi voluptates repellat.', 1, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(79, 'eum', 117.50, 'quia', 'Corporis doloremque ipsam voluptates officiis.', 1, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(80, 'commodi', 479.28, 'totam', 'Ut modi ut.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(81, 'voluptatem', 712.55, 'nam', 'Dignissimos rerum.', 0, '2020-10-06 13:33:58', '2020-10-06 13:33:58'),
(82, 'magnam', 8.79, 'facere', 'Velit accusantium unde.', 0, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(83, 'reprehenderit', 634.93, 'expedita', 'Omnis minus non excepturi.', 0, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(84, 'in', 572.01, 'rerum', 'Eius rerum libero quaerat.', 0, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(85, 'reprehenderit', 10.80, 'rerum', 'Qui sit consequatur cumque.', 0, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(86, 'impedit', 214.28, 'est', 'Nostrum illum eaque nisi.', 0, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(87, 'illum', 727.21, 'perferendis', 'Voluptatem impedit ut dolorum.', 0, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(88, 'neque', 420.30, 'et', 'Ut qui laboriosam ducimus rem.', 1, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(89, 'earum', 948.14, 'ut', 'Ex sit architecto dicta.', 0, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(90, 'et', 343.40, 'dignissimos', 'Ad perferendis velit aut quis.', 0, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(91, 'est', 2.26, 'non', 'Repellat consequatur suscipit sit.', 0, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(92, 'expedita', 746.39, 'esse', 'Nostrum libero quos aut.', 0, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(93, 'consequuntur', 574.24, 'quae', 'Voluptates praesentium officia nemo.', 0, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(94, 'repudiandae', 165.86, 'nihil', 'Fugiat repellat sed in.', 0, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(95, 'possimus', 921.57, 'veritatis', 'Hic et qui aut.', 0, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(96, 'ea', 888.20, 'et', 'Quo dolorem et placeat sequi.', 0, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(97, 'debitis', 101.70, 'culpa', 'Aut numquam nesciunt.', 1, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(98, 'consequatur', 665.15, 'distinctio', 'Quibusdam id eos sed.', 0, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(99, 'quia', 607.98, 'quis', 'Numquam molestias tempore.', 0, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(100, 'sint', 685.89, 'soluta', 'In distinctio sint vero iure.', 0, '2020-10-06 13:33:59', '2020-10-06 13:33:59'),
(102, 'Oggetto', 106.00, 'generico', 'universale', 1, '2020-10-06 15:43:29', '2020-10-06 15:43:29'),
(103, 'forbice', 20.00, 'generico', 'universale', 0, '2020-10-09 12:45:49', '2020-10-09 12:45:49'),
(104, 'automobile', 0.00, 'generico', 'universale', 5, '2020-10-09 13:00:39', '2020-10-09 13:00:39'),
(105, 'blabla', 0.00, 'bellarag', 'ejjrjdn', 1, '2020-10-09 13:01:11', '2020-10-09 13:01:11'),
(106, 'bella', 200.00, 'bellamarca', 'bellacategoria', 1, '2020-10-09 13:09:52', '2020-10-09 13:09:52');

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
(1, 'Marco Longo', 'marco.longo@hotmail.it', NULL, '$2y$10$K7NJi0/eqxGp54RXD2Kp1eklMWUY7ly1JJvT2IFlSzJS2QJbjDiuu', NULL, '2020-10-06 14:46:51', '2020-10-06 14:46:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
