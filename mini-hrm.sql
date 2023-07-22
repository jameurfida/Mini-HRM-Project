-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table mini-hrm.companies
CREATE TABLE IF NOT EXISTS `companies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `logo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mini-hrm.companies: ~0 rows (approximately)
INSERT INTO `companies` (`id`, `logo`, `name`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'storage/uploads/1689975203_Lucky-Me-Logo (1).png', 'Lucky Me', 'japeqame@mailinator.com', '2023-07-21 15:33:23', '2023-07-21 15:33:23', NULL),
	(2, 'storage/uploads/1689975250_Super-Bowl-Logo.png', 'The Super Bowl', 'kukuzopa@mailinator.com', '2023-07-21 15:34:10', '2023-07-21 15:34:10', NULL),
	(3, 'storage/uploads/1689975268_Threads-Logo.png', 'Threads', 'rocan@mailinator.com', '2023-07-21 15:34:28', '2023-07-21 15:34:28', NULL),
	(4, 'storage/uploads/1689975290_Find-My-Device-Logo.png', 'Find-My-Device', 'nodava@mailinator.com', '2023-07-21 15:34:50', '2023-07-21 15:34:50', NULL),
	(5, 'storage/uploads/1689975310_CNET-Logo.png', 'CNET', 'lozegaf@mailinator.com', '2023-07-21 15:35:10', '2023-07-21 15:35:10', NULL),
	(6, 'storage/uploads/1689975331_Devon-Motorworks-Logo.png', 'Devon-Motorworks', 'fezico@mailinator.com', '2023-07-21 15:35:31', '2023-07-21 15:35:31', NULL),
	(7, 'storage/uploads/1689975358_DeSoto-Logo.png', 'DeSoto', 'wodamabilu@mailinator.com', '2023-07-21 15:35:58', '2023-07-21 15:35:58', NULL),
	(8, 'storage/uploads/1689975377_Derbi-Logo.png', 'Derbi', 'xufuzal@mailinator.com', '2023-07-21 15:36:17', '2023-07-21 15:36:17', NULL),
	(9, 'storage/uploads/1689975405_Yahoo-Mail-Logo.png', 'Yahoo-Mail', 'jokef@mailinator.com', '2023-07-21 15:36:45', '2023-07-21 15:36:45', NULL),
	(10, 'storage/uploads/1689975460_Facebook-logo.png', 'Facebook', 'deci@mailinator.com', '2023-07-21 15:37:18', '2023-07-21 15:37:40', NULL),
	(11, 'storage/uploads/1689975483_MG-logo.png', 'MG', 'cawano@mailinator.com', '2023-07-21 15:38:03', '2023-07-21 15:38:03', NULL),
	(12, 'storage/uploads/1689975507_Pontiac-Logo.png', 'Pontiac', 'gaduq@mailinator.com', '2023-07-21 15:38:27', '2023-07-21 15:38:27', NULL),
	(13, 'storage/uploads/1689975538_Honda-logo.png', 'Honda', 'zaxupiby@mailinator.com', '2023-07-21 15:38:58', '2023-07-21 15:38:58', NULL),
	(14, 'storage/uploads/1689975565_Ferrari-logo.png', 'Ferrari', 'fifoguqug@mailinator.com', '2023-07-21 15:39:25', '2023-07-21 15:39:25', NULL),
	(15, 'storage/uploads/1689975588_Puma-logo.png', 'Puma', 'rymydamore@mailinator.com', '2023-07-21 15:39:48', '2023-07-21 15:39:48', NULL),
	(16, 'storage/uploads/1689975669_Nike-Logo.png', 'Nike', 'kuxugi@mailinator.com', '2023-07-21 15:41:09', '2023-07-21 15:41:09', NULL),
	(17, 'storage/uploads/1689975687_Louis-Vuitton-logo.png', 'Louis-Vuitton', 'kosefi@mailinator.com', '2023-07-21 15:41:27', '2023-07-21 15:41:27', NULL),
	(18, 'storage/uploads/1689975711_Adidas-logo.png', 'Adidas', 'midip@mailinator.com', '2023-07-21 15:41:51', '2023-07-21 15:41:51', NULL),
	(19, 'storage/uploads/1689975729_logo-Los-Angeles-Rams.png', 'Los-Angeles', 'pebony@mailinator.com', '2023-07-21 15:42:09', '2023-07-21 15:42:09', NULL),
	(20, 'storage/uploads/1689975743_Seattle-Seahawks-Logo.png', 'Seattle-Seahawks', 'nefoxopac@mailinator.com', '2023-07-21 15:42:23', '2023-07-21 15:42:23', NULL),
	(21, 'storage/uploads/1689975766_Real-Madrid-logo.png', 'Real-Madrid', 'gorygiv@mailinator.com', '2023-07-21 15:42:46', '2023-07-21 15:42:46', NULL),
	(22, 'storage/uploads/1689975790_San-Francisco-49ers-Logo.png', 'San-Francisco', 'jolezisex@mailinator.com', '2023-07-21 15:43:10', '2023-07-21 15:43:10', NULL),
	(23, 'storage/uploads/1689975807_Skittles-Logo.png', 'Skittles', 'kegodo@mailinator.com', '2023-07-21 15:43:27', '2023-07-21 15:43:27', NULL),
	(24, 'storage/uploads/1689975826_McDonalds-logo.png', 'McDonalds', 'voxynile@mailinator.com', '2023-07-21 15:43:46', '2023-07-21 16:01:27', '2023-07-21 16:01:27'),
	(25, 'storage/uploads/1689975858_Google-Photos-logo.png', 'Google-Photos', 'subed@mailinator.com', '2023-07-21 15:44:18', '2023-07-21 15:44:24', '2023-07-21 15:44:24');

-- Dumping structure for table mini-hrm.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employees_company_id_foreign` (`company_id`),
  CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mini-hrm.employees: ~0 rows (approximately)
INSERT INTO `employees` (`id`, `first_name`, `last_name`, `company_id`, `email`, `phone`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Veronica', 'Lamar', 16, 'sydej@mailinator.com', '01234567890', '2023-07-21 16:16:19', '2023-07-21 16:16:19', NULL),
	(2, 'Casey', 'Shea', 2, 'punaza@mailinator.com', '01234567890', '2023-07-21 16:16:25', '2023-07-21 16:16:25', NULL),
	(3, 'Piper', 'Fulton', 6, 'goqebucyhu@mailinator.com', '01234567890', '2023-07-21 16:16:36', '2023-07-21 16:16:36', NULL),
	(4, 'Brittany', 'Sonia', 6, 'zapuca@mailinator.com', '01234567890', '2023-07-21 16:16:43', '2023-07-21 16:16:43', NULL),
	(5, 'Quin', 'Darryl', 19, 'jasy@mailinator.com', '01234567890', '2023-07-21 16:16:50', '2023-07-21 16:16:50', NULL),
	(6, 'Emmanuel', 'Jerry', 9, 'giqix@mailinator.com', '01234567890', '2023-07-21 16:16:56', '2023-07-21 16:16:56', NULL),
	(7, 'Axel', 'Keiko', 14, 'jysoh@mailinator.com', '01234567890', '2023-07-21 16:17:02', '2023-07-21 16:17:02', NULL),
	(8, 'Cameron', 'Palmer', 2, 'hemow@mailinator.com', '01234567890', '2023-07-21 16:17:07', '2023-07-21 16:17:07', NULL),
	(9, 'Josiah', 'Pascale', 19, 'zima@mailinator.com', '01234567890', '2023-07-21 16:17:14', '2023-07-21 16:17:14', NULL),
	(10, 'Yoko', 'Kenyon', 23, 'zorohav@mailinator.com', '01234567890', '2023-07-21 16:17:20', '2023-07-21 16:17:20', NULL),
	(11, 'Jessica', 'Griffith', 2, 'cygajytup@mailinator.com', '01234567890', '2023-07-21 16:17:28', '2023-07-21 16:17:28', NULL),
	(12, 'Emma', 'Macey', 20, 'kife@mailinator.com', '01234567890', '2023-07-21 16:17:36', '2023-07-21 16:17:36', NULL),
	(13, 'Deanna', 'Yoko', 14, 'pobywyfeg@mailinator.com', '01234567890', '2023-07-21 16:17:42', '2023-07-21 16:17:42', NULL),
	(14, 'Mona', 'Axel', 23, 'wonesid@mailinator.com', '01234567890', '2023-07-21 16:17:47', '2023-07-21 16:17:47', NULL),
	(15, 'August', 'Neve', 15, 'rypy@mailinator.com', '01234567890', '2023-07-21 16:17:54', '2023-07-21 16:17:54', NULL),
	(16, 'Brielle', 'Hop', 13, 'dygusul@mailinator.com', '01234567890', '2023-07-21 16:17:59', '2023-07-21 16:17:59', NULL),
	(17, 'Signe', 'Davis', 13, 'cypogeje@mailinator.com', '01234567890', '2023-07-21 16:18:04', '2023-07-21 16:18:04', NULL),
	(18, 'Marcia', 'Felix', 12, 'xodo@mailinator.com', '01234567890', '2023-07-21 16:18:08', '2023-07-21 16:18:08', NULL),
	(19, 'Marvin', 'Zorita', 21, 'vinibysavo@mailinator.com', '01234567890', '2023-07-21 16:18:13', '2023-07-21 16:18:13', NULL),
	(20, 'Summer', 'Boris', 20, 'fasy@mailinator.com', '01234567890', '2023-07-21 16:18:17', '2023-07-21 16:18:17', NULL),
	(21, 'Simone', 'Maisie', 11, 'qobikiqy@mailinator.com', '01234567890', '2023-07-21 16:18:23', '2023-07-21 16:18:23', NULL),
	(22, 'Erasmus', 'Maxwell', 15, 'sulanoxyf@mailinator.com', '01234567890', '2023-07-21 16:18:28', '2023-07-21 16:18:28', NULL),
	(23, 'Sydnee', 'Savannah', 6, 'rogonux@mailinator.com', '01234567890', '2023-07-21 16:18:33', '2023-07-21 16:18:33', NULL),
	(24, 'Herman', 'Patience', 17, 'jituse@mailinator.com', '01234567890', '2023-07-21 16:18:38', '2023-07-21 16:18:38', NULL),
	(25, 'Declan', 'Remedios', 10, 'bixucelof@mailinator.com', '01234567890', '2023-07-21 16:18:45', '2023-07-21 16:18:45', NULL),
	(26, 'Leandra', 'Sigourney', 5, 'boxuhonaxi@mailinator.com', '01234567890', '2023-07-21 16:18:50', '2023-07-21 16:18:50', NULL),
	(27, 'Dorothy', 'Mollie', 16, 'javek@mailinator.com', '01234567890', '2023-07-21 16:18:55', '2023-07-21 16:18:55', NULL),
	(28, 'Wynter', 'Kylynn', 8, 'lokomoleta@mailinator.com', '01234567890', '2023-07-21 16:18:59', '2023-07-21 16:18:59', NULL),
	(29, 'Lionel', 'Omar', 2, 'nopady@mailinator.com', '01234567890', '2023-07-21 16:19:03', '2023-07-21 16:19:03', NULL),
	(30, 'Quyn', 'Jerry', 10, 'guqef@mailinator.com', '01234567890', '2023-07-21 16:19:09', '2023-07-21 16:19:09', NULL),
	(31, 'Duncan', 'Deanna', 22, 'lovat@mailinator.com', '01234567890', '2023-07-21 16:19:14', '2023-07-21 16:19:14', NULL),
	(32, 'Curran', 'Ori', 17, 'duliz@mailinator.com', '01234567890', '2023-07-21 16:19:21', '2023-07-21 16:19:21', NULL),
	(33, 'Tyler', 'Daphne', 3, 'wusyjado@mailinator.com', '01234567890', '2023-07-21 16:19:29', '2023-07-21 16:19:29', NULL),
	(34, 'Xena', 'Renee', 1, 'xapu@mailinator.com', '01234567890', '2023-07-21 16:19:36', '2023-07-21 16:19:36', NULL),
	(35, 'Noel', 'Russell', 22, 'walicijaxy@mailinator.com', '01234567890', '2023-07-21 16:19:42', '2023-07-21 16:19:42', NULL),
	(36, 'Mary', 'Portia', 19, 'higupehi@mailinator.com', '01234567890', '2023-07-21 16:19:48', '2023-07-21 16:19:48', NULL),
	(37, 'Benedict', 'Christopher', 22, 'fivyga@mailinator.com', '01234567890', '2023-07-21 16:19:54', '2023-07-21 16:19:54', NULL),
	(38, 'Norman', 'Bo', 8, 'huduxocud@mailinator.com', '01234567890', '2023-07-21 16:20:00', '2023-07-21 16:20:00', NULL),
	(39, 'Rose', 'Quon', 3, 'danopala@mailinator.com', '01234567890', '2023-07-21 16:20:08', '2023-07-21 16:20:08', NULL),
	(40, 'Lionel', 'Jana', 10, 'waqapuxo@mailinator.com', '01234567890', '2023-07-21 16:20:12', '2023-07-21 16:20:12', NULL),
	(41, 'Erich', 'Chaney', 22, 'jajypop@mailinator.com', '01234567890', '2023-07-21 16:20:17', '2023-07-21 16:20:17', NULL),
	(42, 'Mia', 'Micah', 23, 'miqed@mailinator.com', '01234567890', '2023-07-21 16:20:22', '2023-07-21 16:20:22', NULL),
	(43, 'Russell', 'Isabella', 19, 'gypubuhan@mailinator.com', '01234567890', '2023-07-21 16:20:26', '2023-07-21 16:20:26', NULL),
	(44, 'Quinlan', 'Scarlett', 4, 'lahovawo@mailinator.com', '01234567890', '2023-07-21 16:20:33', '2023-07-21 16:20:33', NULL),
	(45, 'Blossom', 'Linus', 1, 'hemekip@mailinator.com', '01234567890', '2023-07-21 16:20:38', '2023-07-21 16:20:38', NULL),
	(46, 'Kessie', 'Kato', 1, 'padavazi@mailinator.com', '01234567890', '2023-07-21 16:20:44', '2023-07-21 16:20:44', NULL),
	(47, 'Ima', 'Maia', 23, 'kypijekozo@mailinator.com', '01234567890', '2023-07-21 16:20:50', '2023-07-21 16:20:50', NULL),
	(48, 'Brent', 'Marvin', 1, 'wequxuqy@mailinator.com', '01234567890', '2023-07-21 16:20:55', '2023-07-21 16:20:55', NULL),
	(49, 'Amir', 'Jayme', 16, 'sehy@mailinator.com', '01234567890', '2023-07-21 16:21:00', '2023-07-21 16:21:00', NULL),
	(50, 'Leila', 'Kato', 9, 'gulaxoq@mailinator.com', '01234567890', '2023-07-21 16:21:06', '2023-07-21 16:21:06', NULL),
	(51, 'Myra', 'Guinevere', 3, 'xarohi@mailinator.com', '01234567890', '2023-07-21 16:21:12', '2023-07-21 16:21:12', NULL),
	(52, 'Harriet', 'Grant', 18, 'natiqa@mailinator.com', '01234567890', '2023-07-21 16:21:18', '2023-07-21 16:21:18', NULL),
	(53, 'Grant', 'Kaye', 3, 'xepojidu@mailinator.com', '01234567890', '2023-07-21 16:21:24', '2023-07-21 16:21:24', NULL),
	(54, 'Holly', 'Cole', 19, 'biwec@mailinator.com', '01234567890', '2023-07-21 16:21:28', '2023-07-21 16:21:28', NULL),
	(55, 'Kendall', 'Kendall', 14, 'mumupyvani@mailinator.com', '01234567890', '2023-07-21 16:21:33', '2023-07-21 16:21:33', NULL),
	(56, 'Kylynn', 'Stephanie', 3, 'vodusyjym@mailinator.com', '01234567890', '2023-07-21 16:21:37', '2023-07-21 16:21:37', NULL),
	(57, 'Unity', 'Plato', 11, 'rukixiju@mailinator.com', '01234567890', '2023-07-21 16:21:43', '2023-07-21 16:21:43', NULL),
	(58, 'Wendy', 'Dacey', 7, 'dypasaf@mailinator.com', '01234567890', '2023-07-21 16:21:48', '2023-07-21 16:21:48', NULL),
	(59, 'Ginger', 'Gillian', 15, 'simyz@mailinator.com', '01234567890', '2023-07-21 16:21:53', '2023-07-21 16:21:53', NULL),
	(60, 'Briar', 'Linus', 5, 'vasaweqez@mailinator.com', '01234567890', '2023-07-21 16:21:59', '2023-07-21 16:21:59', NULL),
	(61, 'Eliana', 'Kelsie', 1, 'vevopy@mailinator.com', '01234567890', '2023-07-21 16:22:06', '2023-07-21 16:22:06', NULL),
	(62, 'Sonya', 'Ulysses', 11, 'hobew@mailinator.com', '01234567890', '2023-07-21 16:22:10', '2023-07-21 16:22:10', NULL),
	(63, 'Aquila', 'Charde', 23, 'pyzoq@mailinator.com', '01234567890', '2023-07-21 16:22:17', '2023-07-21 16:22:17', NULL),
	(64, 'Cameron', 'Darrel', 8, 'pyjireju@mailinator.com', '01234567890', '2023-07-21 16:22:39', '2023-07-21 16:22:39', NULL),
	(65, 'Lamar', 'Holly', 6, 'jiwupo@mailinator.com', '01234567890', '2023-07-21 16:22:45', '2023-07-21 16:22:45', NULL),
	(66, 'Lewis', 'Regina', 15, 'wujypohu@mailinator.com', '01234567890', '2023-07-21 16:22:56', '2023-07-21 16:22:56', NULL),
	(67, 'Hop', 'Chastity', 17, 'mivypyril@mailinator.com', '01234567890', '2023-07-21 16:23:08', '2023-07-21 16:23:08', NULL),
	(68, 'Adena', 'Roth', 15, 'rito@mailinator.com', '01234567890', '2023-07-21 16:23:21', '2023-07-21 16:23:21', NULL),
	(69, 'Rhona', 'Oprah', 4, 'zefo@mailinator.com', '01234567890', '2023-07-21 16:23:29', '2023-07-21 16:23:29', NULL),
	(70, 'Bert', 'Kameko', 3, 'cenyboc@mailinator.com', '01234567890', '2023-07-21 16:23:37', '2023-07-21 16:23:37', NULL),
	(71, 'Bert', 'Aretha', 10, 'jofoh@mailinator.com', '01234567890', '2023-07-21 16:23:46', '2023-07-21 16:23:46', NULL),
	(72, 'Indira', 'Colton', 8, 'pyfiquvyby@mailinator.com', '01234567890', '2023-07-21 16:23:51', '2023-07-21 16:23:51', NULL),
	(73, 'Omar', 'Hilary', 1, 'xyxafifu@mailinator.com', '01234567890', '2023-07-21 16:23:57', '2023-07-21 16:31:24', '2023-07-21 16:31:24'),
	(74, 'Tanisha', 'Aiko', 19, 'rucim@mailinator.com', '01234567890', '2023-07-21 16:24:03', '2023-07-21 16:24:47', '2023-07-21 16:24:47'),
	(75, 'Tucker', 'Callum', 6, 'turesaz@mailinator.com', '01234567890', '2023-07-21 16:24:10', '2023-07-21 16:24:44', '2023-07-21 16:24:44'),
	(76, 'Solomon', 'Justina', 12, 'fycynehybu@mailinator.com', '01234567890', '2023-07-21 16:24:16', '2023-07-21 16:24:41', '2023-07-21 16:24:41'),
	(77, 'Sawyer', 'Alma', 3, 'xocepugil@mailinator.com', '01234567890', '2023-07-21 16:24:21', '2023-07-21 16:24:38', '2023-07-21 16:24:38'),
	(78, 'Ishmael', 'Clementine', 7, 'zabewen@mailinator.com', '01234567890', '2023-07-21 16:24:28', '2023-07-21 16:24:33', '2023-07-21 16:24:33');

-- Dumping structure for table mini-hrm.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mini-hrm.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table mini-hrm.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mini-hrm.migrations: ~0 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_07_21_104712_create_companies_table', 2),
	(6, '2023_07_21_104806_create_employees_table', 2),
	(7, '2023_07_21_133412_add_companies_table', 3),
	(8, '2023_07_21_201531_add_employees_table', 4),
	(9, '2023_07_21_223608_add_users_table', 5);

-- Dumping structure for table mini-hrm.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mini-hrm.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table mini-hrm.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mini-hrm.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table mini-hrm.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mini-hrm.users: ~1 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
	(2, 'Admin', 'admin@admin.com', NULL, '$2y$10$2RXISkb2FHD2bODj.uvKSuNLY.cvLLRtZpV/k8quRNuYuZBsHYtYm', 'cKb5QnKn1oQhQeVCnGf5XDfTsnrkqN2bRRxgwYgJsegicUtGzDJ1fD23AP2H', NULL, NULL, 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
