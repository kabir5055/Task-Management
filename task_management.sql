-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 07, 2024 at 11:26 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_capable_id` bigint UNSIGNED NOT NULL,
  `activity_capable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

CREATE TABLE `audits` (
  `id` bigint UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint UNSIGNED NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci,
  `new_values` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(1023) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 5, 'updated', 'App\\Models\\User', 5, '{\"avatar\":null}', '{\"avatar\":\"\\/storage\\/images\\/5.jpg\"}', 'http://127.0.0.1:8000/account/profile?5=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-06 04:21:26', '2024-10-06 04:21:26'),
(2, 'App\\Models\\User', 5, 'updated', 'App\\Models\\Task', 12, '{\"completed_at\":null}', '{\"completed_at\":\"2024-10-06 10:23:08\"}', 'http://127.0.0.1:8000/projects/1/tasks/12/complete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-06 04:23:08', '2024-10-06 04:23:08'),
(3, 'App\\Models\\User', 5, 'updated', 'App\\Models\\Task', 12, '{\"completed_at\":\"2024-10-06 10:23:08\"}', '{\"completed_at\":null}', 'http://127.0.0.1:8000/projects/1/tasks/12/complete', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-06 04:23:11', '2024-10-06 04:23:11'),
(4, 'App\\Models\\User', 5, 'updated', 'App\\Models\\User', 5, '{\"remember_token\":\"nzUlugAFHY\"}', '{\"remember_token\":\"ADTxMJFXSKOg8J5EbNbKbDf8xKhmMURO9TDD7AbkQCYfffZYyM6mRgKZ14kZ\"}', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-06 04:38:07', '2024-10-06 04:38:07'),
(5, 'App\\Models\\User', 5, 'updated', 'App\\Models\\User', 5, '{\"remember_token\":\"ADTxMJFXSKOg8J5EbNbKbDf8xKhmMURO9TDD7AbkQCYfffZYyM6mRgKZ14kZ\"}', '{\"remember_token\":\"dJVAh49T2BoTeFtUCLYQUpTo5r4sKgqgLZYgHqTROcNndRa4Be1ZOnZW3CST\"}', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', NULL, '2024-10-07 05:25:16', '2024-10-07 05:25:16');

-- --------------------------------------------------------

--
-- Table structure for table `client_companies`
--

CREATE TABLE `client_companies` (
  `id` bigint UNSIGNED NOT NULL,
  `country_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_companies`
--

INSERT INTO `client_companies` (`id`, `country_id`, `name`, `address`, `postal_code`, `city`, `email`, `phone`, `web`, `created_at`, `updated_at`, `archived_at`) VALUES
(1, 185, 'Howell, Rutherford and Skiles', '5387 Norma Trail\nNorth Cedrickside, IL 39849-3477', '85060-4880', 'Lake Russ', 'madie06@hotmail.com', '1-667-882-7107', 'https://company.com', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(2, 172, 'Hackett-Wehner', '36296 Ratke Highway\nNorth Emeliefort, TN 93510', '94117', 'Arloland', 'annalise10@yahoo.com', '781.878.1389', 'https://company.com', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(3, 144, 'Price, Marquardt and Marvin', '334 Antonio Mews\nEast Eddmouth, HI 02049', '30748', 'Madelynntown', 'chelsey62@yahoo.com', '1-510-852-7615', 'https://company.com', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(4, 245, 'D\'Amore, Dare and Dibbert', '549 Boyle Valley Apt. 064\nStephanymouth, OR 20276-3827', '23749', 'Lake Ronny', 'kaitlin.luettgen@ferry.info', '(919) 217-5197', 'https://company.com', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(5, 130, 'Smitham-Ortiz', '3139 Padberg Square\nFerryberg, MI 80292-3507', '51445-5164', 'Beckerfort', 'trace22@gmail.com', '(575) 913-7639', 'https://company.com', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(6, 5, 'Kunde-Flatley', '98470 Rice Manor Suite 468\nEast Joshuastad, ME 67790-5611', '35569-1553', 'Grahamview', 'kaylie90@gmail.com', '331-976-6069', 'https://company.com', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(7, 67, 'Kozey, McLaughlin and Koss', '5001 Joaquin Square Suite 931\nLake Bernietown, MA 85676-4425', '14921-9728', 'East Donnyborough', 'cheyanne.wilkinson@gmail.com', '+15519871142', 'https://company.com', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(8, 92, 'King Inc', '24868 Madge Shoals Suite 474\nWest Ambroseburgh, IL 08210', '45176', 'Camronside', 'egleichner@yahoo.com', '863.919.8423', 'https://company.com', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(9, 23, 'Buckridge LLC', '6780 Cathrine Hollow\nSouth Annieland, AL 93344', '14713', 'South Odafurt', 'keara78@monahan.com', '737.461.1858', 'https://company.com', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(10, 32, 'Gleason, King and Leffler', '65198 Emerson Landing Suite 955\nSteveberg, DC 43998-3341', '70307', 'North Rosaleeborough', 'catalina74@gmail.com', '(706) 849-8015', 'https://company.com', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(11, 141, 'Spinka Group', '426 Birdie Crest\nAmeliefort, WV 66311', '67465-5270', 'Lake Hipolito', 'myah59@gmail.com', '+1 (747) 601-5018', 'https://company.com', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(12, 17, 'Ledner, Rippin and Crona', '83697 Nienow Isle Suite 685\nWest Martinaport, DC 10982-8364', '85378-3603', 'Yeseniashire', 'ziemann.darwin@ortiz.com', '(475) 263-3316', 'https://company.com', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_company`
--

CREATE TABLE `client_company` (
  `client_id` bigint UNSIGNED NOT NULL,
  `client_company_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_company`
--

INSERT INTO `client_company` (`client_id`, `client_company_id`) VALUES
(12, 1),
(13, 2),
(14, 3),
(17, 4),
(19, 5),
(21, 6),
(23, 7),
(26, 8),
(27, 9),
(28, 10),
(29, 11),
(30, 12);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Antarctica'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Antigua and Barbuda'),
(9, 'Azerbaijan'),
(10, 'Argentina'),
(11, 'Australia'),
(12, 'Austria'),
(13, 'Bahamas'),
(14, 'Bahrain'),
(15, 'Bangladesh'),
(16, 'Armenia'),
(17, 'Barbados'),
(18, 'Belgium'),
(19, 'Bermuda'),
(20, 'Bhutan'),
(21, 'Bolivia, Plurinational State of'),
(22, 'Bosnia and Herzegovina'),
(23, 'Botswana'),
(24, 'Bouvet Island'),
(25, 'Brazil'),
(26, 'Belize'),
(27, 'British Indian Ocean Territory'),
(28, 'Solomon Islands'),
(29, 'Virgin Islands, British'),
(30, 'Brunei Darussalam'),
(31, 'Bulgaria'),
(32, 'Myanmar'),
(33, 'Burundi'),
(34, 'Belarus'),
(35, 'Cambodia'),
(36, 'Cameroon'),
(37, 'Canada'),
(38, 'Cape Verde'),
(39, 'Cayman Islands'),
(40, 'Central African Republic'),
(41, 'Sri Lanka'),
(42, 'Chad'),
(43, 'Chile'),
(44, 'China'),
(45, 'Taiwan, Province of China'),
(46, 'Christmas Island'),
(47, 'Cocos (Keeling) Islands'),
(48, 'Colombia'),
(49, 'Comoros'),
(50, 'Mayotte'),
(51, 'Congo'),
(52, 'Congo, the Democratic Republic of the'),
(53, 'Cook Islands'),
(54, 'Costa Rica'),
(55, 'Croatia'),
(56, 'Cuba'),
(57, 'Cyprus'),
(58, 'Czechia'),
(59, 'Benin'),
(60, 'Denmark'),
(61, 'Dominica'),
(62, 'Dominican Republic'),
(63, 'Ecuador'),
(64, 'El Salvador'),
(65, 'Equatorial Guinea'),
(66, 'Ethiopia'),
(67, 'Eritrea'),
(68, 'Estonia'),
(69, 'Faroe Islands'),
(70, 'Falkland Islands (Malvinas)'),
(71, 'South Georgia and the South Sandwich Islands'),
(72, 'Fiji'),
(73, 'Finland'),
(74, 'Åland Islands'),
(75, 'France'),
(76, 'French Guiana'),
(77, 'French Polynesia'),
(78, 'French Southern Territories'),
(79, 'Djibouti'),
(80, 'Gabon'),
(81, 'Georgia'),
(82, 'Gambia'),
(83, 'Palestine'),
(84, 'Germany'),
(85, 'Ghana'),
(86, 'Gibraltar'),
(87, 'Kiribati'),
(88, 'Greece'),
(89, 'Greenland'),
(90, 'Grenada'),
(91, 'Guadeloupe'),
(92, 'Guam'),
(93, 'Guatemala'),
(94, 'Guinea'),
(95, 'Guyana'),
(96, 'Haiti'),
(97, 'Heard Island and McDonald Islands'),
(98, 'Holy See (Vatican City State)'),
(99, 'Honduras'),
(100, 'Hong Kong'),
(101, 'Hungary'),
(102, 'Iceland'),
(103, 'India'),
(104, 'Indonesia'),
(105, 'Iran, Islamic Republic of'),
(106, 'Iraq'),
(107, 'Ireland'),
(108, 'Israel'),
(109, 'Italy'),
(110, 'Côte d\'Ivoire'),
(111, 'Jamaica'),
(112, 'Japan'),
(113, 'Kazakhstan'),
(114, 'Jordan'),
(115, 'Kenya'),
(116, 'Korea, Democratic People\'s Republic of'),
(117, 'Korea, Republic of'),
(118, 'Kuwait'),
(119, 'Kyrgyzstan'),
(120, 'Lao People\'s Democratic Republic'),
(121, 'Lebanon'),
(122, 'Lesotho'),
(123, 'Latvia'),
(124, 'Liberia'),
(125, 'Libya'),
(126, 'Liechtenstein'),
(127, 'Lithuania'),
(128, 'Luxembourg'),
(129, 'Macao'),
(130, 'Madagascar'),
(131, 'Malawi'),
(132, 'Malaysia'),
(133, 'Maldives'),
(134, 'Mali'),
(135, 'Malta'),
(136, 'Martinique'),
(137, 'Mauritania'),
(138, 'Mauritius'),
(139, 'Mexico'),
(140, 'Monaco'),
(141, 'Mongolia'),
(142, 'Moldova, Republic of'),
(143, 'Montenegro'),
(144, 'Montserrat'),
(145, 'Morocco'),
(146, 'Mozambique'),
(147, 'Oman'),
(148, 'Namibia'),
(149, 'Nauru'),
(150, 'Nepal'),
(151, 'Netherlands'),
(152, 'Curaçao'),
(153, 'Aruba'),
(154, 'Sint Maarten (Dutch part)'),
(155, 'Bonaire, Sint Eustatius and Saba'),
(156, 'New Caledonia'),
(157, 'Vanuatu'),
(158, 'New Zealand'),
(159, 'Nicaragua'),
(160, 'Niger'),
(161, 'Nigeria'),
(162, 'Niue'),
(163, 'Norfolk Island'),
(164, 'Norway'),
(165, 'Northern Mariana Islands'),
(166, 'United States Minor Outlying Islands'),
(167, 'Micronesia, Federated States of'),
(168, 'Marshall Islands'),
(169, 'Palau'),
(170, 'Pakistan'),
(171, 'Panama'),
(172, 'Papua New Guinea'),
(173, 'Paraguay'),
(174, 'Peru'),
(175, 'Philippines'),
(176, 'Pitcairn'),
(177, 'Poland'),
(178, 'Portugal'),
(179, 'Guinea-Bissau'),
(180, 'Timor-Leste'),
(181, 'Puerto Rico'),
(182, 'Qatar'),
(183, 'Réunion'),
(184, 'Romania'),
(185, 'Russian Federation'),
(186, 'Rwanda'),
(187, 'Saint Barthélemy'),
(188, 'Saint Helena, Ascension and Tristan da Cunha'),
(189, 'Saint Kitts and Nevis'),
(190, 'Anguilla'),
(191, 'Saint Lucia'),
(192, 'Saint Martin (French part)'),
(193, 'Saint Pierre and Miquelon'),
(194, 'Saint Vincent and the Grenadines'),
(195, 'San Marino'),
(196, 'Sao Tome and Principe'),
(197, 'Saudi Arabia'),
(198, 'Senegal'),
(199, 'Serbia'),
(200, 'Seychelles'),
(201, 'Sierra Leone'),
(202, 'Singapore'),
(203, 'Slovakia'),
(204, 'Viet Nam'),
(205, 'Slovenia'),
(206, 'Somalia'),
(207, 'South Africa'),
(208, 'Zimbabwe'),
(209, 'Spain'),
(210, 'South Sudan'),
(211, 'Sudan'),
(212, 'Western Sahara'),
(213, 'Suriname'),
(214, 'Svalbard and Jan Mayen'),
(215, 'Eswatini'),
(216, 'Sweden'),
(217, 'Switzerland'),
(218, 'Syrian Arab Republic'),
(219, 'Tajikistan'),
(220, 'Thailand'),
(221, 'Togo'),
(222, 'Tokelau'),
(223, 'Tonga'),
(224, 'Trinidad and Tobago'),
(225, 'United Arab Emirates'),
(226, 'Tunisia'),
(227, 'Turkey'),
(228, 'Turkmenistan'),
(229, 'Turks and Caicos Islands'),
(230, 'Tuvalu'),
(231, 'Uganda'),
(232, 'Ukraine'),
(233, 'North Macedonia'),
(234, 'Egypt'),
(235, 'United Kingdom'),
(236, 'Guernsey'),
(237, 'Jersey'),
(238, 'Isle of Man'),
(239, 'Tanzania, United Republic of'),
(240, 'United States'),
(241, 'Virgin Islands, U.S.'),
(242, 'Burkina Faso'),
(243, 'Uruguay'),
(244, 'Uzbekistan'),
(245, 'Venezuela, Bolivarian Republic of'),
(246, 'Wallis and Futuna'),
(247, 'Samoa'),
(248, 'Yemen'),
(249, 'Zambia');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`id`, `name`, `color`, `archived_at`, `created_at`, `updated_at`) VALUES
(1, 'Confirmed', '#37B24D', NULL, NULL, NULL),
(2, 'Estimate', '#AE3EC9', NULL, NULL, NULL),
(3, 'Blocked', '#F03E3E', NULL, NULL, NULL),
(4, 'Bug', '#D6336C', NULL, NULL, NULL),
(5, 'Rework', '#F76707', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `label_task`
--

CREATE TABLE `label_task` (
  `label_id` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `label_task`
--

INSERT INTO `label_task` (`label_id`, `task_id`) VALUES
(5, 2),
(5, 3),
(1, 3),
(4, 5),
(3, 5),
(5, 6),
(2, 6),
(4, 6),
(2, 7),
(2, 8),
(1, 8),
(4, 10),
(2, 10),
(4, 11),
(4, 12),
(3, 12),
(4, 13),
(5, 13),
(4, 15),
(3, 15),
(3, 16),
(2, 16),
(2, 18),
(1, 19),
(4, 19),
(2, 19),
(4, 21),
(3, 21),
(1, 21),
(2, 24),
(5, 24),
(3, 25),
(5, 25),
(1, 25),
(5, 27),
(5, 31),
(1, 31),
(1, 32),
(3, 33),
(4, 34),
(5, 36),
(4, 37),
(2, 37),
(1, 12);

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
(163, '2014_10_12_000000_create_users_table', 1),
(164, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(165, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(166, '2023_10_26_165503_create_permission_tables', 1),
(167, '2023_10_31_105255_create_jobs_table', 1),
(168, '2023_10_31_113749_create_failed_jobs_table', 1),
(169, '2023_11_01_120111_create_labels_table', 1),
(170, '2023_11_01_182514_add_archived_at_to_roles', 1),
(171, '2023_11_02_153937_create_owner_companies_table', 1),
(172, '2023_11_03_134217_create_countries_table', 1),
(173, '2023_11_03_190241_create_client_companies_table', 1),
(174, '2023_11_04_104543_create_client_company_pivot_table', 1),
(175, '2023_11_06_094257_create_projects_table', 1),
(176, '2023_11_06_153749_create_project_user_access', 1),
(177, '2023_11_07_131704_create_task_groups_table', 1),
(178, '2023_11_07_192734_create_tasks_table', 1),
(179, '2023_11_10_144123_create_label_task_pivot_table', 1),
(180, '2023_11_15_220222_create_attachments', 1),
(181, '2023_11_17_211110_create_time_logs_table', 1),
(182, '2023_11_18_193550_create_comments_table', 1),
(183, '2023_11_28_142456_create_audits_table', 1),
(184, '2023_11_28_155542_create_activities', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(5, 'App\\Models\\User', 4),
(6, 'App\\Models\\User', 5),
(5, 'App\\Models\\User', 6),
(5, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 8),
(1, 'App\\Models\\User', 9),
(1, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 11),
(4, 'App\\Models\\User', 12),
(4, 'App\\Models\\User', 13),
(4, 'App\\Models\\User', 14),
(1, 'App\\Models\\User', 15),
(1, 'App\\Models\\User', 16),
(4, 'App\\Models\\User', 17),
(1, 'App\\Models\\User', 18),
(4, 'App\\Models\\User', 19),
(1, 'App\\Models\\User', 20),
(4, 'App\\Models\\User', 21),
(5, 'App\\Models\\User', 22),
(4, 'App\\Models\\User', 23),
(5, 'App\\Models\\User', 24),
(1, 'App\\Models\\User', 25),
(4, 'App\\Models\\User', 26),
(4, 'App\\Models\\User', 27),
(4, 'App\\Models\\User', 28),
(4, 'App\\Models\\User', 29),
(4, 'App\\Models\\User', 30);

-- --------------------------------------------------------

--
-- Table structure for table `owner_company`
--

CREATE TABLE `owner_company` (
  `id` bigint UNSIGNED NOT NULL,
  `country_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `owner_company`
--

INSERT INTO `owner_company` (`id`, `country_id`, `name`, `logo`, `address`, `postal_code`, `city`, `email`, `phone`, `web`) VALUES
(1, 90, 'Rempel, Runte and Nienow', NULL, '85629 Green Park Apt. 162', '75836-2468', 'Lake Payton', 'raphaelle.stroman@roberts.com', '417.686.2056', 'https://company.com');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view users', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(2, 'create user', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(3, 'edit user', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(4, 'archive user', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(5, 'restore user', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(6, 'view labels', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(7, 'create label', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(8, 'edit label', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(9, 'archive label', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(10, 'restore label', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(11, 'view roles', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(12, 'create role', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(13, 'edit role', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(14, 'archive role', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(15, 'restore role', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(16, 'view owner company', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(17, 'edit owner company', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(18, 'view client users', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(19, 'create client user', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(20, 'edit client user', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(21, 'archive client user', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(22, 'restore client user', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(23, 'view client companies', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(24, 'create client company', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(25, 'edit client company', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(26, 'archive client company', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(27, 'restore client company', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(28, 'view projects', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(29, 'view project', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(30, 'create project', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(31, 'edit project', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(32, 'archive project', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(33, 'restore project', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(34, 'edit project user access', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(35, 'create task group', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(36, 'edit task group', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(37, 'archive task group', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(38, 'restore task group', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(39, 'reorder task group', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(40, 'view tasks', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(41, 'create task', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(42, 'edit task', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(43, 'archive task', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(44, 'restore task', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(45, 'reorder task', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(46, 'complete task', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(47, 'add time log', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(48, 'delete time log', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(49, 'view time logs', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(50, 'view comments', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22'),
(51, 'view activities', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22');

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint UNSIGNED NOT NULL,
  `client_company_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `client_company_id`, `name`, `description`, `created_at`, `updated_at`, `archived_at`) VALUES
(1, 1, 'Demo Project', 'At rem quibusdam itaque provident laborum voluptas.', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(2, 1, 'Demo Project 2', 'Minima officia similique officiis adipisci.', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_user_access`
--

CREATE TABLE `project_user_access` (
  `user_id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `archived_at`) VALUES
(1, 'developer', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22', NULL),
(2, 'qa engineer', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22', NULL),
(3, 'designer', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22', NULL),
(4, 'client', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22', NULL),
(5, 'manager', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22', NULL),
(6, 'admin', 'web', '2024-10-06 04:20:22', '2024-10-06 04:20:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(28, 1),
(29, 1),
(40, 1),
(41, 1),
(42, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(28, 3),
(29, 3),
(40, 3),
(41, 3),
(42, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(28, 4),
(29, 4),
(40, 4),
(41, 4),
(49, 4),
(50, 4),
(1, 5),
(28, 5),
(29, 5),
(30, 5),
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 5),
(37, 5),
(38, 5),
(39, 5),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 5),
(46, 5),
(47, 5),
(48, 5),
(49, 5),
(50, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 6),
(12, 6),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(21, 6),
(22, 6),
(23, 6),
(24, 6),
(25, 6),
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 6),
(31, 6),
(32, 6),
(33, 6),
(34, 6),
(35, 6),
(36, 6),
(37, 6),
(38, 6),
(39, 6),
(40, 6),
(41, 6),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(50, 6),
(51, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `group_id` bigint UNSIGNED NOT NULL,
  `created_by_user_id` bigint UNSIGNED DEFAULT NULL,
  `assigned_to_user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `due_on` date DEFAULT NULL,
  `order_column` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `project_id`, `group_id`, `created_by_user_id`, `assigned_to_user_id`, `name`, `number`, `description`, `due_on`, `order_column`, `created_at`, `updated_at`, `assigned_at`, `completed_at`, `archived_at`) VALUES
(1, 1, 1, 5, 5, 'Illum rerum et eos nam id non sint.', 1, 'Ut voluptates aut laborum quia tempora aspernatur. Ea nesciunt ratione et id. Et nostrum est ad veniam id. Possimus nemo officiis dolorum.', '2024-10-04', 1, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(2, 1, 2, 5, 5, 'Dolor animi amet asperiores consectetur ad qui.', 2, 'Magnam nihil adipisci sed sit iure. Rerum mollitia doloremque aut quos pariatur facere. Est ipsam maiores vel ducimus. Totam alias nostrum impedit explicabo.', NULL, 2, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, '2024-10-06 04:20:25', NULL),
(3, 1, 2, 5, 5, 'Ea tenetur doloribus ab ut.', 3, 'Eos animi velit et nobis vitae. Quis cumque in totam fugit iusto ut voluptatem inventore. Dolorem eligendi et ipsa et illum ea deleniti possimus. Vel qui qui et culpa vel est accusantium.', NULL, 3, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(4, 1, 2, 5, 5, 'Id occaecati impedit et possimus amet sit sint.', 4, 'Beatae nihil aliquid est corrupti aspernatur soluta. Et quod id ratione unde et eligendi. Veniam dolore consequatur et ducimus alias. Ipsum quo atque autem animi.', '2024-09-30', 4, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(5, 1, 2, 5, 5, 'Sint est autem dolores occaecati voluptatem quo sapiente.', 5, 'Cum quia et excepturi aut vel. Qui quos beatae voluptate minima. Aliquid accusantium qui quia aut. Et qui voluptatem in ipsa eaque asperiores cupiditate.', NULL, 5, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(6, 1, 2, 5, 5, 'Ut commodi incidunt in quibusdam sunt.', 6, 'Nemo deleniti numquam sint aliquam officia. Minus molestias fuga veritatis cumque atque unde facere quis. Dolores distinctio omnis voluptatum praesentium. Ut dolores mollitia facilis quis.', NULL, 6, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(7, 1, 3, 5, 5, 'Aut recusandae asperiores consequatur.', 7, 'Eligendi molestias magnam ut porro. Modi ipsam accusamus et adipisci dicta qui odio. Commodi consectetur culpa cupiditate minima. Praesentium dolor aut excepturi.', NULL, 7, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(8, 1, 3, 5, 5, 'Hic aspernatur est ullam voluptatem asperiores doloribus modi.', 8, 'Alias non omnis qui possimus. Consequatur eum accusantium omnis impedit est aut quasi. Cumque fugit expedita qui asperiores sapiente ut dolorum. Dolorem reprehenderit vitae vel delectus eos eos aut nihil.', NULL, 8, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(9, 1, 3, 5, 5, 'At facilis et non cupiditate qui.', 9, 'Itaque similique magnam eos consequatur est. Nostrum dolores dolore alias mollitia porro. Non omnis quod nam ipsum vel molestiae quae. In modi in unde mollitia libero eligendi aut.', '2024-10-14', 9, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(10, 1, 3, 5, 5, 'Explicabo temporibus velit modi porro ut perferendis doloremque.', 10, 'Eaque vero praesentium sunt aliquid in laboriosam non. Hic eos accusamus est quo. Porro ut aut nobis tempore dolorum omnis molestiae. Sit at officia error nesciunt architecto aut voluptate.', NULL, 10, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(11, 1, 4, 5, 5, 'Dolores vero voluptatem nemo reiciendis.', 11, 'Voluptas vero omnis accusantium harum impedit omnis eaque. Corrupti autem et et sint magni magnam. Eum repudiandae amet iusto quas dicta. Non quaerat nisi aspernatur dolor officia voluptatum dolor.', NULL, 11, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(12, 1, 5, 5, 5, 'Alias distinctio asperiores sit qui aspernatur vel.', 12, 'Fugiat et a temporibus qui voluptatem aut et. Officiis ipsam sint mollitia recusandae ad aliquam. Est minus quidem animi eveniet. Praesentium ut vitae quis quibusdam rerum quia sunt.', '2024-10-14', 12, '2024-10-06 04:20:25', '2024-10-06 04:23:11', NULL, NULL, NULL),
(13, 1, 5, 5, 5, 'Temporibus aut et et quam.', 13, 'Delectus optio quia doloribus et id laborum sed eveniet. Sit similique sit nobis labore natus voluptas. Atque sit sed ipsa voluptas. Numquam et debitis et aut.', NULL, 13, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(14, 1, 5, 5, 5, 'Rerum voluptatum officia soluta nihil.', 14, 'Et esse libero pariatur non voluptates eligendi voluptatem. Dolores dolor harum non ipsa commodi dignissimos. Dicta voluptatem debitis alias laudantium sint quod. Dignissimos tempore perspiciatis beatae.', NULL, 14, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(15, 1, 6, 5, 5, 'Ratione sed quos nobis fugit impedit ratione temporibus.', 15, 'Corporis aliquid vero magnam voluptatem eos. Ipsa ex ex magni corrupti itaque id eos et. Nam sit neque omnis cumque quia voluptatum est. Quis hic omnis nihil sunt impedit.', NULL, 15, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(16, 1, 6, 5, 5, 'Assumenda enim quam quibusdam voluptatibus dicta quisquam.', 16, 'Natus vel dolor id neque iste ut. Voluptatum quisquam suscipit quidem in beatae enim iure. Consequatur laudantium et veniam reiciendis ducimus. Consequuntur qui veritatis illum est quibusdam corrupti.', '2024-10-13', 16, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(17, 2, 7, 5, 5, 'Alias voluptatem quod expedita eveniet commodi temporibus porro.', 1, 'Aliquam excepturi deserunt magni maxime delectus quia voluptatem. Tempore non veniam magnam nulla aut. Odit molestiae ab vel. Impedit consectetur ut et doloremque.', '2024-10-14', 17, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, '2024-10-06 04:20:25', NULL),
(18, 2, 7, 5, 5, 'Assumenda vel voluptatem nihil dolorum voluptate animi.', 2, 'Officiis autem aut maxime voluptatem eum rerum. Itaque corporis nihil ipsam. Dolor architecto quaerat amet eum. Soluta vitae autem ut laboriosam iste quis.', NULL, 18, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(19, 2, 7, 5, 5, 'Nam mollitia doloribus atque officia ipsa id.', 3, 'Qui accusamus quo dolore. Unde molestiae quas fuga dolor. Et animi ex laboriosam. Sapiente officia corporis illo dolorem nesciunt veritatis sunt.', NULL, 19, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(20, 2, 8, 5, 5, 'Qui autem quo minus eaque occaecati.', 4, 'Non et consequatur aliquid blanditiis qui recusandae. Placeat quae qui minima nam. Magnam porro quidem velit dolor ut eius. Facilis quia harum sed.', NULL, 20, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(21, 2, 8, 5, 5, 'Et consequatur sint provident eaque laboriosam neque.', 5, 'Qui accusantium cumque sunt tempora labore. Esse veniam nesciunt veritatis velit placeat vel est. Est odio qui tempore rerum cupiditate recusandae minima. Molestiae hic iure fugiat quisquam numquam.', NULL, 21, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, '2024-10-06 04:20:25', NULL),
(22, 2, 8, 5, 5, 'Et nobis sint consequuntur aut.', 6, 'Quia fuga sed nemo possimus incidunt voluptas ut. Officiis et ea nobis consequatur corrupti. Est autem aliquam modi non. Eum nulla a fuga esse.', NULL, 22, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(23, 2, 9, 5, 5, 'Eum tempore blanditiis quam itaque ullam et.', 7, 'Incidunt non perspiciatis harum recusandae dolor. Consequatur et corrupti assumenda enim. Ut qui quo numquam nisi eum rem est quos. Et quia et deleniti sunt.', '2024-09-29', 23, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, '2024-10-06 04:20:25', NULL),
(24, 2, 9, 5, 5, 'Et velit autem id voluptatum itaque aut deserunt.', 8, 'Ad magnam incidunt vel velit necessitatibus. Nihil excepturi culpa ut aut aliquam debitis occaecati. Aperiam voluptatem illo incidunt nesciunt rerum laudantium. Blanditiis laudantium dignissimos impedit deserunt.', NULL, 24, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(25, 2, 9, 5, 5, 'Aut cum omnis temporibus dolor temporibus.', 9, 'Ipsum illum sed quidem incidunt ea quasi. Quaerat adipisci molestiae ut similique. Sed est est et minus eos. Quo ex id excepturi architecto et.', NULL, 25, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(26, 2, 9, 5, 5, 'Vero rem autem sit in sed enim.', 10, 'Accusantium labore non rerum. Sequi rerum delectus asperiores qui pariatur fuga. Sunt sint quibusdam nulla qui possimus ut itaque. Reprehenderit id quisquam et.', NULL, 26, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(27, 2, 9, 5, 5, 'Quibusdam hic dolor vel est beatae consequatur.', 11, 'Aliquid et ipsa eveniet et omnis voluptatem possimus non. Est iure eum atque sit. Sint atque et aut reiciendis magnam voluptatum qui. Et expedita praesentium reprehenderit alias consectetur.', '2024-10-14', 27, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, '2024-10-06 04:20:25', NULL),
(28, 2, 10, 5, 5, 'Suscipit occaecati iusto enim ea esse placeat omnis.', 12, 'Praesentium veritatis quae maiores odio officia. Quia qui voluptates omnis autem sed. Natus cumque voluptatem est architecto et consequatur. Ipsam culpa atque magnam ut.', NULL, 28, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(29, 2, 11, 5, 5, 'Hic nobis unde et.', 13, 'Et numquam expedita doloribus ut sint tempora architecto. Natus qui aliquid alias laudantium. Voluptatem deserunt non nihil sint. Fugit eum dolor iste mollitia non qui excepturi.', '2024-09-28', 29, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(30, 2, 11, 5, 5, 'Aut dolorem iste eos eum libero in et.', 14, 'Minima modi aut neque. Nesciunt soluta facere quia sapiente ullam voluptatem consequatur. Ut doloremque consequatur enim perspiciatis odio. Et quis quia sed magnam.', NULL, 30, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(31, 2, 11, 5, 5, 'Cum reprehenderit minima maiores sunt quis.', 15, 'Asperiores pariatur qui eius vitae consequatur voluptatem provident. Dolorem omnis qui fugiat ut nemo reprehenderit ad. Sit quae cumque quia aspernatur blanditiis. Sequi eveniet alias ut numquam.', NULL, 31, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(32, 2, 11, 5, 5, 'Praesentium tempora repellat soluta numquam rerum aut placeat sequi.', 16, 'Libero rerum dolores ut nihil commodi sit impedit qui. Ipsa in sint ipsa soluta odio vero eius. Omnis nobis dolores ea provident aut qui. Tenetur odio consequatur dolorum a eos adipisci.', NULL, 32, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(33, 2, 11, 5, 5, 'Doloremque debitis enim voluptatem quia.', 17, 'Id tenetur sint adipisci enim corrupti ad deleniti vel. Maiores officiis possimus dolorem. Sed deleniti quae consequatur et. Rem consequuntur quia laudantium et consectetur voluptatibus error incidunt.', NULL, 33, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(34, 2, 12, 5, 5, 'Perspiciatis quo quas suscipit.', 18, 'Est enim reprehenderit sed repellendus asperiores. Doloribus voluptatem doloribus facilis repudiandae commodi nisi. Qui non labore unde aut tempora nostrum. Suscipit explicabo eius earum aut corporis.', NULL, 34, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(35, 2, 12, 5, 5, 'Numquam exercitationem consequuntur eos vitae.', 19, 'Dolor qui quibusdam repudiandae sed. Architecto architecto reprehenderit aspernatur. Iure sint voluptatem ut quo. Molestiae aspernatur nihil est odio libero.', '2024-10-02', 35, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(36, 2, 12, 5, 5, 'Rerum eveniet veritatis aut aut.', 20, 'Et quibusdam in id et et assumenda. Soluta laboriosam sed eligendi recusandae ut soluta natus corrupti. Dolorum non libero et adipisci ut ut recusandae nemo. Veritatis nemo delectus id dicta debitis.', NULL, 36, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, NULL, NULL),
(37, 2, 12, 5, 5, 'Quae rerum illum rem aperiam.', 21, 'Incidunt consequuntur nam quod voluptatem enim ullam. Amet quidem dolore qui. Consequatur necessitatibus sunt qui sint tempora accusantium sit. Incidunt eum qui nulla deleniti cumque vitae.', NULL, 37, '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL, '2024-10-06 04:20:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task_groups`
--

CREATE TABLE `task_groups` (
  `id` bigint UNSIGNED NOT NULL,
  `project_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_column` int UNSIGNED NOT NULL,
  `archived_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_groups`
--

INSERT INTO `task_groups` (`id`, `project_id`, `name`, `order_column`, `archived_at`) VALUES
(1, 1, 'Backlog', 1, NULL),
(2, 1, 'Todo', 2, NULL),
(3, 1, 'In progress', 3, NULL),
(4, 1, 'QA', 4, NULL),
(5, 1, 'Done', 5, NULL),
(6, 1, 'Deployed', 6, NULL),
(7, 2, 'Backlog', 7, NULL),
(8, 2, 'Todo', 8, NULL),
(9, 2, 'In progress', 9, NULL),
(10, 2, 'QA', 10, NULL),
(11, 2, 'Done', 11, NULL),
(12, 2, 'Deployed', 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `time_logs`
--

CREATE TABLE `time_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `task_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `minutes` smallint UNSIGNED DEFAULT NULL,
  `timer_start` int UNSIGNED DEFAULT NULL,
  `timer_stop` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_logs`
--

INSERT INTO `time_logs` (`id`, `task_id`, `user_id`, `minutes`, `timer_start`, `timer_stop`, `created_at`) VALUES
(1, 12, 5, 1, 1728210156, 1728210199, '2024-10-06 04:22:36'),
(2, 7, 5, 4, 1728212886, 1728213108, '2024-10-06 05:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar`, `phone`, `job_title`, `remember_token`, `created_at`, `updated_at`, `archived_at`) VALUES
(1, 'Itzel Hickle', 'developer@mail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '725.218.4656', 'Frontend Developer', 'V2q3aSHaK0', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(2, 'Marjolaine Dibbert', 'qa engineer@mail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '737-598-8319', 'QA Engineer', 'CK2PHRqivq', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(3, 'Mr. Osborne Jacobi', 'designer@mail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '+1-904-768-9543', 'Designer', 'VCWOnPEq0f', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(4, 'Dr. Camden Jerde', 'manager@mail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '316-266-7498', 'Manager', 'tK23oUglYL', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(5, 'Prof. Sofia Wilkinson', 'admin@mail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '/storage/images/5.jpg', '1-405-998-5397', 'Owner', 'dJVAh49T2BoTeFtUCLYQUpTo5r4sKgqgLZYgHqTROcNndRa4Be1ZOnZW3CST', '2024-10-06 04:20:25', '2024-10-06 04:21:26', NULL),
(6, 'Amparo Schaefer', 'hboyer@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '(952) 639-9651', 'Manager', 'NzxQVUAMuF', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(7, 'Alexandro Bins', 'nikolaus.tara@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '(720) 881-5394', 'Manager', 'PWW1WWB4M8', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(8, 'Waino Howell', 'amacejkovic@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '534-618-6586', 'Backend Developer', 'wd4uvA6rku', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(9, 'Don Mitchell', 'qhill@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '803-802-2580', 'Fullstack Developer', '5W68o6WuzT', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(10, 'Ruby Kulas', 'cielo27@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '870.381.9293', 'Fullstack Developer', 'T7xqIAruR5', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(11, 'Jerod Tromp', 'ilene.koss@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '1-339-316-2872', 'Designer', 'zvg5mNxOtL', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(12, 'Lindsay Champlin', 'thelma40@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '1-860-645-2416', 'Client', 'dtxMaVXVBZ', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(13, 'Miss Velva Jakubowski', 'werdman@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '+1-628-658-9587', 'Client', 'A5R0W1XMrb', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(14, 'Dr. Morgan Cummerata II', 'renner.jermain@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '910.530.6515', 'Client', 'cQpmeFWQxc', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(15, 'Irving Jaskolski', 'littel.serena@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '+1 (586) 853-3445', 'Backend Developer', '64U45wQVHO', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(16, 'Jane Dare', 'auer.velva@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '724.675.8235', 'Fullstack Developer', 'dbtD0MIBtB', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(17, 'Jamison Kertzmann', 'ellsworth33@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '(234) 824-6892', 'Client', 'fnOoQN4KVb', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(18, 'Sabrina Bradtke', 'arnaldo.funk@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '731.982.5285', 'Backend Developer', 'ZkfaGPO0uv', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(19, 'Elizabeth Simonis', 'terrence.carter@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '+1-361-996-6302', 'Client', 'qdeJtqN84V', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(20, 'Valentina Gorczany', 'maya.dubuque@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '785-443-0082', 'Backend Developer', 'CMf1YLYnQd', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(21, 'Savanah Mante', 'xhoppe@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '+1.386.721.1018', 'Client', '8fw0KT8NH0', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(22, 'Sabrina Kling', 'pharber@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '(928) 428-3626', 'Manager', 'nL5Ey1UJrl', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(23, 'Amina Greenholt', 'karley90@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '1-283-651-6547', 'Client', '2wSss7wWcK', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(24, 'Candida Osinski', 'gaston70@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '(740) 623-8040', 'Manager', 'KsbRCDIaoP', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(25, 'Jarrell Batz DDS', 'kemmer.oran@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '1-623-751-4780', 'Frontend Developer', '2KITXQww7P', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(26, 'Wyman Waters', 'annie88@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '1-660-540-9123', 'Client', 'jXbjEGi0gA', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(27, 'Kaya Murazik', 'kiara.murazik@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '+1 (661) 959-8377', 'Client', 'EQOTf7q8lU', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(28, 'Julien Spencer', 'jedidiah69@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '804.943.2610', 'Client', 'g5WlmI281Y', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(29, 'Dr. Bell Zulauf', 'dleuschke@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '1-662-434-6506', 'Client', 'KNJitqyppa', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL),
(30, 'Prof. Dave Willms', 'berenice.bergstrom@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '908-822-8875', 'Client', 'P5jZJmWGXM', '2024-10-06 04:20:25', '2024-10-06 04:20:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audits`
--
ALTER TABLE `audits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  ADD KEY `audits_user_id_user_type_index` (`user_id`,`user_type`);

--
-- Indexes for table `client_companies`
--
ALTER TABLE `client_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_company`
--
ALTER TABLE `client_company`
  ADD KEY `client_company_client_id_foreign` (`client_id`),
  ADD KEY `client_company_client_company_id_foreign` (`client_company_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `owner_company`
--
ALTER TABLE `owner_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_client_company_id_foreign` (`client_company_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_groups`
--
ALTER TABLE `task_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_logs`
--
ALTER TABLE `time_logs`
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
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audits`
--
ALTER TABLE `audits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `client_companies`
--
ALTER TABLE `client_companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `owner_company`
--
ALTER TABLE `owner_company`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `task_groups`
--
ALTER TABLE `task_groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `time_logs`
--
ALTER TABLE `time_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `client_company`
--
ALTER TABLE `client_company`
  ADD CONSTRAINT `client_company_client_company_id_foreign` FOREIGN KEY (`client_company_id`) REFERENCES `client_companies` (`id`),
  ADD CONSTRAINT `client_company_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_client_company_id_foreign` FOREIGN KEY (`client_company_id`) REFERENCES `client_companies` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
