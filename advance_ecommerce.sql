-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2023 at 10:08 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `advance_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `type`, `mobile`, `email`, `email_verified_at`, `password`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '980000000', 'admin@admin.com', NULL, '$2y$10$FQ1aN9cchCi4J/UGGST3YucgjqjSqXomC2YmV30okX0Fq7rzArowu', '39431.jpg', 1, NULL, NULL, '2023-05-05 23:35:45'),
(2, 'Rohan', 'subadmin', '980000000', 'subadmin1@admin.com', NULL, '$2y$10$FQ1aN9cchCi4J/UGGST3YucgjqjSqXomC2YmV30okX0Fq7rzArowu', '', 1, NULL, NULL, NULL),
(3, 'Sahil', 'subadmin', '980000000', 'subadmin2@admin.com', NULL, '$2y$10$FQ1aN9cchCi4J/UGGST3YucgjqjSqXomC2YmV30okX0Fq7rzArowu', '', 1, NULL, NULL, NULL),
(4, 'John', 'subadmin', '980000000', 'subadmin3@admin.com', NULL, '$2y$10$FQ1aN9cchCi4J/UGGST3YucgjqjSqXomC2YmV30okX0Fq7rzArowu', '', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `link`, `title`, `alt`, `status`, `created_at`, `updated_at`) VALUES
(4, 'banner36205.png', 'test', 'test', 'test', 0, '2023-05-21 00:43:56', '2023-05-21 02:35:37'),
(5, 'banner87347.png', 'test', 'test', 'test', 0, '2023-05-21 00:44:32', '2023-05-21 02:35:38'),
(6, 'banner17253.png', 'test', 'test', 'test', 1, '2023-05-21 02:34:01', '2023-05-21 02:34:01'),
(7, 'banner98608.png', 'test', 'test', 'test', 1, '2023-05-21 02:34:11', '2023-05-21 02:34:11'),
(8, 'banner38796.png', 'test', 'test', 'test', 1, '2023-05-21 02:34:26', '2023-05-21 02:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Peter England', 1, '2023-05-05 22:45:39', '2023-05-16 09:50:24'),
(2, 'Gucci', 1, '2023-05-05 22:45:45', '2023-05-05 22:45:45'),
(3, 'Levis', 1, '2023-05-05 22:46:55', '2023-05-05 22:46:55'),
(4, 'puma', 1, '2023-05-05 22:47:03', '2023-05-05 22:47:03');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `session_id`, `user_id`, `product_id`, `size`, `quantity`, `created_at`, `updated_at`) VALUES
(54, 'njozN59hxL0HTcExNyjPUju1uPlbuxYQ64drIgzc', 0, 1, 'small', 2, '2023-06-21 00:46:29', '2023-06-21 00:46:29'),
(57, 'sPgcXbazdfpWc6rp8lFd8ZCoPPUC1qkPthlZWnWu', 0, 1, 'medium', 5, '2023-08-27 07:51:54', '2023-08-27 07:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_discount` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `section_id`, `category_name`, `category_image`, `category_discount`, `description`, `url`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Hoodie', '683.png', 20.00, 'test', 'mens-hoodie', 'test', 'test', 'test', 1, '2023-05-05 22:41:19', '2023-05-05 22:41:30'),
(2, 1, 1, 'Plain Hoodie', '', 0.00, 'plain hoodies', 'mens-plain-hoodie', 'plain hoodies', 'plain hoodeis', 'plain hoodeis', 1, '2023-05-05 22:42:18', '2023-05-05 22:42:18'),
(3, 1, 1, 'Printed Hoodie', '', 10.00, 'printed hoodie', 'mens-printed-hoodies', 'printed hoodie', 'printed hoodies', 'printed hoodie', 1, '2023-05-05 22:43:22', '2023-05-05 22:43:22'),
(4, 0, 3, 'T shirt', '', 0.00, 'kids t shirt', 'kids-tshirt', 'kids t shirt', 'kids t shirt', 'kids t shirt', 1, '2023-05-05 22:44:01', '2023-05-05 22:44:01'),
(5, 4, 3, 'Casual T-shirt', '', 0.00, 'kids casual t shirts', 'kids-casual-tshirt', 'kids casual t shirts', 'kids casual t shirts', 'kids casual t shirts', 1, '2023-05-05 22:44:35', '2023-05-05 22:44:35'),
(6, 0, 2, 'Myanmar Dress', '', 15.00, 'Myanmar dress for ladies', 'myanmar-dress', 'Myanmar dress for ladies', 'Myanmar dress for ladies', 'Myanmar dress for ladies', 1, '2023-05-05 22:45:29', '2023-05-05 22:45:29'),
(7, 1, 1, 'Formal hoodie', '50257.jpg', 0.00, 'testtest', 'mens-hoodie', 'test', 'test', 'test', 1, '2023-05-21 02:50:44', '2023-05-21 02:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`, `status`) VALUES
(1, 'AF', 'Afghanistan', 1),
(2, 'AL', 'Albania', 1),
(3, 'DZ', 'Algeria', 1),
(4, 'AS', 'American Samoa', 1),
(5, 'AD', 'Andorra', 1),
(6, 'AO', 'Angola', 1),
(7, 'AI', 'Anguilla', 1),
(8, 'AQ', 'Antarctica', 1),
(9, 'AG', 'Antigua and Barbuda', 1),
(10, 'AR', 'Argentina', 1),
(11, 'AM', 'Armenia', 1),
(12, 'AW', 'Aruba', 1),
(13, 'AU', 'Australia', 1),
(14, 'AT', 'Austria', 1),
(15, 'AZ', 'Azerbaijan', 1),
(16, 'BS', 'Bahamas', 1),
(17, 'BH', 'Bahrain', 1),
(18, 'BD', 'Bangladesh', 1),
(19, 'BB', 'Barbados', 1),
(20, 'BY', 'Belarus', 1),
(21, 'BE', 'Belgium', 1),
(22, 'BZ', 'Belize', 1),
(23, 'BJ', 'Benin', 1),
(24, 'BM', 'Bermuda', 1),
(25, 'BT', 'Bhutan', 1),
(26, 'BO', 'Bolivia', 1),
(27, 'BA', 'Bosnia and Herzegovina', 1),
(28, 'BW', 'Botswana', 1),
(29, 'BV', 'Bouvet Island', 1),
(30, 'BR', 'Brazil', 1),
(31, 'IO', 'British Indian Ocean Territory', 1),
(32, 'BN', 'Brunei Darussalam', 1),
(33, 'BG', 'Bulgaria', 1),
(34, 'BF', 'Burkina Faso', 1),
(35, 'BI', 'Burundi', 1),
(36, 'KH', 'Cambodia', 1),
(37, 'CM', 'Cameroon', 1),
(38, 'CA', 'Canada', 1),
(39, 'CV', 'Cape Verde', 1),
(40, 'KY', 'Cayman Islands', 1),
(41, 'CF', 'Central African Republic', 1),
(42, 'TD', 'Chad', 1),
(43, 'CL', 'Chile', 1),
(44, 'CN', 'China', 1),
(45, 'CX', 'Christmas Island', 1),
(46, 'CC', 'Cocos (Keeling) Islands', 1),
(47, 'CO', 'Colombia', 1),
(48, 'KM', 'Comoros', 1),
(49, 'CD', 'Democratic Republic of the Congo', 1),
(50, 'CG', 'Republic of Congo', 1),
(51, 'CK', 'Cook Islands', 1),
(52, 'CR', 'Costa Rica', 1),
(53, 'HR', 'Croatia (Hrvatska)', 1),
(54, 'CU', 'Cuba', 1),
(55, 'CY', 'Cyprus', 1),
(56, 'CZ', 'Czech Republic', 1),
(57, 'DK', 'Denmark', 1),
(58, 'DJ', 'Djibouti', 1),
(59, 'DM', 'Dominica', 1),
(60, 'DO', 'Dominican Republic', 1),
(61, 'TL', 'East Timor', 1),
(62, 'EC', 'Ecuador', 1),
(63, 'EG', 'Egypt', 1),
(64, 'SV', 'El Salvador', 1),
(65, 'GQ', 'Equatorial Guinea', 1),
(66, 'ER', 'Eritrea', 1),
(67, 'EE', 'Estonia', 1),
(68, 'ET', 'Ethiopia', 1),
(69, 'FK', 'Falkland Islands (Malvinas)', 1),
(70, 'FO', 'Faroe Islands', 1),
(71, 'FJ', 'Fiji', 1),
(72, 'FI', 'Finland', 1),
(73, 'FR', 'France', 1),
(74, 'FX', 'France, Metropolitan', 1),
(75, 'GF', 'French Guiana', 1),
(76, 'PF', 'French Polynesia', 1),
(77, 'TF', 'French Southern Territories', 1),
(78, 'GA', 'Gabon', 1),
(79, 'GM', 'Gambia', 1),
(80, 'GE', 'Georgia', 1),
(81, 'DE', 'Germany', 1),
(82, 'GH', 'Ghana', 1),
(83, 'GI', 'Gibraltar', 1),
(84, 'GG', 'Guernsey', 1),
(85, 'GR', 'Greece', 1),
(86, 'GL', 'Greenland', 1),
(87, 'GD', 'Grenada', 1),
(88, 'GP', 'Guadeloupe', 1),
(89, 'GU', 'Guam', 1),
(90, 'GT', 'Guatemala', 1),
(91, 'GN', 'Guinea', 1),
(92, 'GW', 'Guinea-Bissau', 1),
(93, 'GY', 'Guyana', 1),
(94, 'HT', 'Haiti', 1),
(95, 'HM', 'Heard and Mc Donald Islands', 1),
(96, 'HN', 'Honduras', 1),
(97, 'HK', 'Hong Kong', 1),
(98, 'HU', 'Hungary', 1),
(99, 'IS', 'Iceland', 1),
(100, 'IN', 'India', 1),
(101, 'IM', 'Isle of Man', 1),
(102, 'ID', 'Indonesia', 1),
(103, 'IR', 'Iran (Islamic Republic of)', 1),
(104, 'IQ', 'Iraq', 1),
(105, 'IE', 'Ireland', 1),
(106, 'IL', 'Israel', 1),
(107, 'IT', 'Italy', 1),
(108, 'CI', 'Ivory Coast', 1),
(109, 'JE', 'Jersey', 1),
(110, 'JM', 'Jamaica', 1),
(111, 'JP', 'Japan', 1),
(112, 'JO', 'Jordan', 1),
(113, 'KZ', 'Kazakhstan', 1),
(114, 'KE', 'Kenya', 1),
(115, 'KI', 'Kiribati', 1),
(116, 'KP', 'Korea, Democratic People\'s Republic of', 1),
(117, 'KR', 'Korea, Republic of', 1),
(118, 'XK', 'Kosovo', 1),
(119, 'KW', 'Kuwait', 1),
(120, 'KG', 'Kyrgyzstan', 1),
(121, 'LA', 'Lao People\'s Democratic Republic', 1),
(122, 'LV', 'Latvia', 1),
(123, 'LB', 'Lebanon', 1),
(124, 'LS', 'Lesotho', 1),
(125, 'LR', 'Liberia', 1),
(126, 'LY', 'Libyan Arab Jamahiriya', 1),
(127, 'LI', 'Liechtenstein', 1),
(128, 'LT', 'Lithuania', 1),
(129, 'LU', 'Luxembourg', 1),
(130, 'MO', 'Macau', 1),
(131, 'MK', 'North Macedonia', 1),
(132, 'MG', 'Madagascar', 1),
(133, 'MW', 'Malawi', 1),
(134, 'MY', 'Malaysia', 1),
(135, 'MV', 'Maldives', 1),
(136, 'ML', 'Mali', 1),
(137, 'MT', 'Malta', 1),
(138, 'MH', 'Marshall Islands', 1),
(139, 'MQ', 'Martinique', 1),
(140, 'MR', 'Mauritania', 1),
(141, 'MU', 'Mauritius', 1),
(142, 'YT', 'Mayotte', 1),
(143, 'MX', 'Mexico', 1),
(144, 'FM', 'Micronesia, Federated States of', 1),
(145, 'MD', 'Moldova, Republic of', 1),
(146, 'MC', 'Monaco', 1),
(147, 'MN', 'Mongolia', 1),
(148, 'ME', 'Montenegro', 1),
(149, 'MS', 'Montserrat', 1),
(150, 'MA', 'Morocco', 1),
(151, 'MZ', 'Mozambique', 1),
(152, 'MM', 'Myanmar', 1),
(153, 'NA', 'Namibia', 1),
(154, 'NR', 'Nauru', 1),
(155, 'NP', 'Nepal', 1),
(156, 'NL', 'Netherlands', 1),
(157, 'AN', 'Netherlands Antilles', 1),
(158, 'NC', 'New Caledonia', 1),
(159, 'NZ', 'New Zealand', 1),
(160, 'NI', 'Nicaragua', 1),
(161, 'NE', 'Niger', 1),
(162, 'NG', 'Nigeria', 1),
(163, 'NU', 'Niue', 1),
(164, 'NF', 'Norfolk Island', 1),
(165, 'MP', 'Northern Mariana Islands', 1),
(166, 'NO', 'Norway', 1),
(167, 'OM', 'Oman', 1),
(168, 'PK', 'Pakistan', 1),
(169, 'PW', 'Palau', 1),
(170, 'PS', 'Palestine', 1),
(171, 'PA', 'Panama', 1),
(172, 'PG', 'Papua New Guinea', 1),
(173, 'PY', 'Paraguay', 1),
(174, 'PE', 'Peru', 1),
(175, 'PH', 'Philippines', 1),
(176, 'PN', 'Pitcairn', 1),
(177, 'PL', 'Poland', 1),
(178, 'PT', 'Portugal', 1),
(179, 'PR', 'Puerto Rico', 1),
(180, 'QA', 'Qatar', 1),
(181, 'RE', 'Reunion', 1),
(182, 'RO', 'Romania', 1),
(183, 'RU', 'Russian Federation', 1),
(184, 'RW', 'Rwanda', 1),
(185, 'KN', 'Saint Kitts and Nevis', 1),
(186, 'LC', 'Saint Lucia', 1),
(187, 'VC', 'Saint Vincent and the Grenadines', 1),
(188, 'WS', 'Samoa', 1),
(189, 'SM', 'San Marino', 1),
(190, 'ST', 'Sao Tome and Principe', 1),
(191, 'SA', 'Saudi Arabia', 1),
(192, 'SN', 'Senegal', 1),
(193, 'RS', 'Serbia', 1),
(194, 'SC', 'Seychelles', 1),
(195, 'SL', 'Sierra Leone', 1),
(196, 'SG', 'Singapore', 1),
(197, 'SK', 'Slovakia', 1),
(198, 'SI', 'Slovenia', 1),
(199, 'SB', 'Solomon Islands', 1),
(200, 'SO', 'Somalia', 1),
(201, 'ZA', 'South Africa', 1),
(202, 'GS', 'South Georgia South Sandwich Islands', 1),
(203, 'SS', 'South Sudan', 1),
(204, 'ES', 'Spain', 1),
(205, 'LK', 'Sri Lanka', 1),
(206, 'SH', 'St. Helena', 1),
(207, 'PM', 'St. Pierre and Miquelon', 1),
(208, 'SD', 'Sudan', 1),
(209, 'SR', 'Suriname', 1),
(210, 'SJ', 'Svalbard and Jan Mayen Islands', 1),
(211, 'SZ', 'Eswatini', 1),
(212, 'SE', 'Sweden', 1),
(213, 'CH', 'Switzerland', 1),
(214, 'SY', 'Syrian Arab Republic', 1),
(215, 'TW', 'Taiwan', 1),
(216, 'TJ', 'Tajikistan', 1),
(217, 'TZ', 'Tanzania, United Republic of', 1),
(218, 'TH', 'Thailand', 1),
(219, 'TG', 'Togo', 1),
(220, 'TK', 'Tokelau', 1),
(221, 'TO', 'Tonga', 1),
(222, 'TT', 'Trinidad and Tobago', 1),
(223, 'TN', 'Tunisia', 1),
(224, 'TR', 'Turkey', 1),
(225, 'TM', 'Turkmenistan', 1),
(226, 'TC', 'Turks and Caicos Islands', 1),
(227, 'TV', 'Tuvalu', 1),
(228, 'UG', 'Uganda', 1),
(229, 'UA', 'Ukraine', 1),
(230, 'AE', 'United Arab Emirates', 1),
(231, 'GB', 'United Kingdom', 1),
(232, 'US', 'United States', 1),
(233, 'UM', 'United States minor outlying islands', 1),
(234, 'UY', 'Uruguay', 1),
(235, 'UZ', 'Uzbekistan', 1),
(236, 'VU', 'Vanuatu', 1),
(237, 'VA', 'Vatican City State', 1),
(238, 'VE', 'Venezuela', 1),
(239, 'VN', 'Vietnam', 1),
(240, 'VG', 'Virgin Islands (British)', 1),
(241, 'VI', 'Virgin Islands (U.S.)', 1),
(242, 'WF', 'Wallis and Futuna Islands', 1),
(243, 'EH', 'Western Sahara', 1),
(244, 'YE', 'Yemen', 1),
(245, 'ZM', 'Zambia', 1),
(246, 'ZW', 'Zimbabwe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_option` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `users` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `expiry_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_option`, `coupon_code`, `categories`, `users`, `coupon_type`, `amount_type`, `amount`, `expiry_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'manual', 'test10', '1,2,4,5', 'bikashthapa2058@gmail.com,sangat202@yopmail.com', 'Multiple Times', 'Percentage', 20.00, '2023-05-25', 1, NULL, '2023-05-21 03:06:35'),
(2, 'automatic', 'v6HXFequ', '1,2,4,5', 'bbb@yopmail.com', 'Multiple Times', 'Fixed', 100.00, '2023-05-25', 1, '2023-05-05 23:39:44', '2023-05-16 07:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_addresses`
--

CREATE TABLE `delivery_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_addresses`
--

INSERT INTO `delivery_addresses` (`id`, `user_id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `status`, `created_at`, `updated_at`) VALUES
(4, 5, 'kishor pun', 'pokhara', 'pokhara', 'gandaki', 'Nepal', '33700', '9864422454', 1, '2023-05-06 10:44:44', '2023-05-06 10:44:44'),
(5, 5, 'kishor pun', 'baglung', 'pokhara', 'gandaki', 'China', '33700', '9864894584', 1, '2023-05-06 11:01:37', '2023-05-16 10:05:00'),
(8, 13, 'Kishor Pun', 'Nakkhu-13, Kathmandu', 'kathmandu', 'Kathmandu', 'Nepal', '46555', '1234567890', 1, '2023-09-24 13:35:31', '2023-09-24 13:35:31');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(4, '2022_11_22_131215_create_admins_table', 1),
(5, '2022_12_10_073528_create_sections_table', 1),
(6, '2022_12_10_145932_create_categories_table', 1),
(7, '2022_12_13_153654_create_products_table', 1),
(8, '2022_12_20_134523_create_products_attributes_table', 1),
(9, '2022_12_22_033257_create_products_images_table', 1),
(10, '2022_12_28_095406_create_brands_table', 1),
(11, '2022_12_28_122124_add_column_to_products', 1),
(12, '2023_01_01_080223_create_banners_table', 1),
(13, '2023_04_22_151531_create_carts_table', 1),
(14, '2023_04_26_160916_add_columns_to_users_table', 1),
(15, '2023_05_02_101212_create_coupons_table', 1),
(16, '2023_05_05_161727_create_delivery_addresses_table', 1),
(17, '2023_05_07_154824_create_orders_table', 2),
(18, '2023_05_07_155454_create_orders_products_table', 3),
(19, '2023_05_09_172343_create_order_statuses_table', 4),
(20, '2023_05_10_165726_create_orders_logs_table', 5),
(21, '2023_05_11_031550_update_orders_table', 6),
(22, '2023_05_16_132416_create_shipping_charges_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` double(8,2) NOT NULL,
  `coupon_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_amount` double(8,2) DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand_total` double(8,2) NOT NULL,
  `courier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `shipping_charges`, `coupon_code`, `coupon_amount`, `order_status`, `payment_method`, `payment_gateway`, `grand_total`, `courier_name`, `tracking_number`, `created_at`, `updated_at`) VALUES
(60, 13, 'Kishor Pun', 'Nakkhu-13, Kathmandu', 'kathmandu', 'Kathmandu', 'Nepal', '46555', '1234567890', 'kishorpun555@gmail.com', 20.00, NULL, NULL, 'Shipped', 'khalti', 'khalti', 5720.00, 'Fedex', '2342326', '2023-09-24 13:35:51', '2023-09-24 13:45:07'),
(61, 13, 'Kishor Pun', 'Nakkhu-13, Kathmandu', 'kathmandu', 'Kathmandu', 'Nepal', '46555', '1234567890', 'kishorpun555@gmail.com', 20.00, NULL, NULL, 'New', 'cod', 'cod', 4865.00, '', '', '2023-09-24 14:05:46', '2023-09-24 14:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `orders_logs`
--

CREATE TABLE `orders_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_logs`
--

INSERT INTO `orders_logs` (`id`, `order_id`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 21, 'Paid', '2023-05-10 11:18:43', '2023-05-10 11:18:43'),
(2, 21, 'Shipped', '2023-05-10 11:29:04', '2023-05-10 11:29:04'),
(3, 21, 'Delivered', '2023-05-10 11:33:11', '2023-05-10 11:33:11'),
(4, 21, 'Shipped', '2023-05-10 21:54:22', '2023-05-10 21:54:22'),
(5, 21, 'New', '2023-05-10 22:06:06', '2023-05-10 22:06:06'),
(6, 21, 'Shipped', '2023-05-10 22:06:15', '2023-05-10 22:06:15'),
(7, 21, 'Shipped', '2023-05-10 22:11:37', '2023-05-10 22:11:37'),
(8, 21, 'Shipped', '2023-05-10 22:12:37', '2023-05-10 22:12:37'),
(9, 6, 'Shipped', '2023-05-10 22:18:03', '2023-05-10 22:18:03'),
(10, 59, 'Delivered', '2023-07-16 09:07:39', '2023-07-16 09:07:39'),
(11, 60, 'Shipped', '2023-09-24 13:45:12', '2023-09-24 13:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_products`
--

INSERT INTO `orders_products` (`id`, `order_id`, `user_id`, `product_id`, `product_code`, `product_name`, `product_color`, `product_size`, `product_price`, `product_qty`, `created_at`, `updated_at`) VALUES
(52, 60, 13, 8, 'REDT001', 'Red T-shirt', 'Red', 'large', 1900.00, 3, '2023-09-24 13:35:51', '2023-09-24 13:35:51'),
(53, 61, 13, 8, 'REDT001', 'Red T-shirt', 'Red', 'medium', 1615.00, 3, '2023-09-24 14:05:47', '2023-09-24 14:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New', 1, NULL, NULL),
(2, 'Pending', 1, NULL, NULL),
(3, 'Hold', 1, NULL, NULL),
(4, 'Cancelled', 1, NULL, NULL),
(5, 'In Process', 1, NULL, NULL),
(6, 'Paid', 1, NULL, NULL),
(7, 'Shipped', 1, NULL, NULL),
(8, 'Delivered', 1, NULL, NULL);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_discount` double(8,2) NOT NULL,
  `product_weight` double(8,2) NOT NULL,
  `product_video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wash_care` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fabric` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pattern` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sleeve` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occasion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` enum('No','Yes') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `section_id`, `brand_id`, `product_name`, `product_code`, `product_color`, `product_price`, `product_discount`, `product_weight`, `product_video`, `main_image`, `description`, `wash_care`, `fabric`, `pattern`, `sleeve`, `fit`, `occasion`, `meta_title`, `meta_description`, `meta_keywords`, `is_featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 'Black Plain Hoodie', 'PLNHD001', 'Black', 2500.00, 50.00, 0.75, '', 'black-hoodie-8987.jpg', 'black hoodie plain', 'Machine Washable', 'Wool', 'Plain', 'Full Sleeve', 'Regular', 'Casual', 'black hoodie plain', 'Black pain Hoodie for mens', 'black hoodie plain', 'Yes', 1, '2023-05-05 22:56:02', '2023-09-24 12:57:28'),
(2, 2, 1, 2, 'White Plain Hoodie', 'PLNHD002', 'White', 2500.00, 20.00, 0.75, '', 'S1e6f7b3832dd475d922b3136b3878a013-5258.jpg', 'mens white hoodie', 'Machine washable', 'Cotton', 'Plain', 'Full Sleeve', 'Regular', 'Casual', 'mens white hoodie', '', 'mens white hoodie', 'Yes', 1, '2023-05-05 22:58:13', '2023-05-05 22:58:13'),
(3, 3, 1, 3, 'Printed Hoodie', 'PRNTHODI001', 'Multi Color', 3000.00, 20.00, 0.75, '', 'printed_hoodie-9757.jpg', 'printed hoodie', 'Machine Washable', 'Polyester', 'Printed', 'Full Sleeve', 'Regular', 'Casual', 'printed hoodie', '', 'printed hoodie', 'Yes', 1, '2023-05-05 22:59:48', '2023-05-05 22:59:48'),
(4, 3, 1, 1, 'Printed Hoodie', 'PRNTHODI002', 'Multi Color', 3200.00, 10.00, 0.75, '', 'printed_hoodie3-7534.jpg', 'printed hoodie', 'Machine Washable', 'Cotton', 'Printed', 'Full Sleeve', 'Regular', 'Casual', 'printed hoodie', '', 'printed hoodie', 'Yes', 1, '2023-05-05 23:01:25', '2023-05-05 23:01:25'),
(5, 3, 1, 4, 'Printed Hoodie', 'PRNTHODI003', 'Multi Color', 3000.00, 15.00, 0.75, '', 'printed_hoodie1-2257.png', 'printed hoodie', 'Machine Washable', 'Wool', 'Printed', 'Full Sleeve', 'Regular', 'Casual', 'printed hoodie', '', 'printed hoodie', 'Yes', 1, '2023-05-05 23:03:32', '2023-05-05 23:03:32'),
(6, 3, 1, 1, 'Printed Hoodie', 'PRNTHODI001', 'Multi Color', 3000.00, 10.00, 0.75, '', 'printed_hoodie-9846.png', 'printed hoodie', 'Machine Washable', 'Wool', 'Printed', 'Full Sleeve', 'Regular', 'Casual', 'printed hoodie', '', 'printed hoodie', 'Yes', 1, '2023-05-05 23:04:54', '2023-05-05 23:04:54'),
(7, 6, 2, 4, 'myanmar dress', 'MNMR001', 'Multi Color', 2500.00, 10.00, 0.75, '', 'lungi-myanmar-7812.jpg', 'myanmar dress', 'Machine Washable', 'Wool', 'Printed', 'Full Sleeve', 'Slim', 'Casual', 'myanmar dress', '', 'myanmar dress', 'Yes', 1, '2023-05-05 23:06:29', '2023-05-05 23:06:29'),
(8, 4, 3, 2, 'Red T-shirt', 'REDT001', 'Red', 1500.00, 5.00, 0.50, '', 'RedKidsT2-1046.png', 'Red T shirt', 'Hand Wash', 'Cotton', 'Plain', 'Half Sleeve', 'Regular', 'Casual', 'Red T shirt', '', 'Red T shirt', 'Yes', 1, '2023-05-05 23:08:18', '2023-05-05 23:09:28');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `product_id`, `size`, `price`, `stock`, `sku`, `status`, `created_at`, `updated_at`) VALUES
(4, 8, 'small', 1500.00, 5, 'RDTSRT001', 1, '2023-05-09 07:53:05', '2023-05-09 07:53:05'),
(5, 8, 'medium', 1700.00, 5, 'RDTSRT002', 1, '2023-05-09 07:53:05', '2023-05-09 07:53:05'),
(6, 8, 'large', 2000.00, 5, 'RDTSRT003', 1, '2023-05-09 07:53:05', '2023-05-09 07:53:05'),
(7, 1, 'small', 2500.00, 5, 'BLK001-S', 1, '2023-05-21 02:58:29', '2023-05-21 03:00:16'),
(8, 1, 'medium', 3000.00, 5, 'BLK001-M', 1, '2023-05-21 03:00:00', '2023-05-21 03:00:16'),
(9, 1, 'large', 3500.00, 5, 'BLK001-L', 1, '2023-05-21 03:00:00', '2023-05-21 03:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `product_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '3496471683349178.jpg', 1, '2023-05-05 23:14:38', '2023-05-05 23:14:38'),
(2, 1, '5243791683349193.jpg', 1, '2023-05-05 23:14:53', '2023-05-05 23:14:53'),
(3, 1, '4184601683349193.jpg', 1, '2023-05-05 23:14:53', '2023-05-05 23:14:53');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Men', 1, NULL, '2023-05-21 00:30:25'),
(2, 'Women', 1, NULL, NULL),
(3, 'Kids', 1, NULL, '2023-05-21 02:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_charges` double(8,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `country`, `shipping_charges`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 120.00, 1, '0000-00-00 00:00:00', '2023-05-16 09:55:33'),
(2, 'Albania', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Algeria', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'American Samoa', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Andorra', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Angola', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Anguilla', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Antarctica', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Antigua and Barbuda', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Argentina', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Armenia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Aruba', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Australia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Austria', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Azerbaijan', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Bahamas', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Bahrain', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Bangladesh', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Barbados', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Belarus', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Belgium', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Belize', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Benin', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Bermuda', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Bhutan', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Bolivia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Bosnia and Herzegovina', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Botswana', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Bouvet Island', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Brazil', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'British Indian Ocean Territory', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Brunei Darussalam', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Bulgaria', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Burkina Faso', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Burundi', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Cambodia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Cameroon', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Canada', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Cape Verde', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Cayman Islands', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Central African Republic', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Chad', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Chile', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'China', 150.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Christmas Island', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Cocos (Keeling) Islands', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Colombia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Comoros', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Democratic Republic of the Congo', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Republic of Congo', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Cook Islands', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Costa Rica', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Croatia (Hrvatska)', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Cuba', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Cyprus', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Czech Republic', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Denmark', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Djibouti', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Dominica', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Dominican Republic', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'East Timor', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Ecuador', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Egypt', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'El Salvador', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Equatorial Guinea', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Eritrea', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'Estonia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Ethiopia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Falkland Islands (Malvinas)', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Faroe Islands', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Fiji', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Finland', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'France', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'France, Metropolitan', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'French Guiana', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'French Polynesia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'French Southern Territories', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'Gabon', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'Gambia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Georgia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Germany', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Ghana', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Gibraltar', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Guernsey', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Greece', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Greenland', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Grenada', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Guadeloupe', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Guam', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Guatemala', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Guinea', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Guinea-Bissau', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Guyana', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Haiti', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Heard and Mc Donald Islands', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Honduras', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Hong Kong', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Hungary', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Iceland', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'India', 150.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Isle of Man', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Indonesia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'Iran (Islamic Republic of)', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Iraq', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Ireland', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Israel', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Italy', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Ivory Coast', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Jersey', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Jamaica', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Japan', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Jordan', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Kazakhstan', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Kenya', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Kiribati', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Korea, Democratic People\'s Republic of', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Korea, Republic of', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Kosovo', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Kuwait', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Kyrgyzstan', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Lao People\'s Democratic Republic', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Latvia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Lebanon', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Lesotho', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Liberia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Libyan Arab Jamahiriya', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Liechtenstein', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Lithuania', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Luxembourg', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Macau', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'North Macedonia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Madagascar', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Malawi', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Malaysia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Maldives', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Mali', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Malta', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Marshall Islands', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Martinique', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Mauritania', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Mauritius', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Mayotte', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Mexico', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Micronesia, Federated States of', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Moldova, Republic of', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Monaco', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Mongolia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Montenegro', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Montserrat', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Morocco', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Mozambique', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Myanmar', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Namibia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Nauru', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Nepal', 20.00, 1, '0000-00-00 00:00:00', '2023-05-16 09:29:04'),
(156, 'Netherlands', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Netherlands Antilles', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'New Caledonia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'New Zealand', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Nicaragua', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Niger', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Nigeria', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'Niue', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Norfolk Island', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Northern Mariana Islands', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Norway', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Oman', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Pakistan', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Palau', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Palestine', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Panama', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Papua New Guinea', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Paraguay', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Peru', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Philippines', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Pitcairn', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Poland', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Portugal', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Puerto Rico', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Qatar', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Reunion', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Romania', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Russian Federation', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Rwanda', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Saint Kitts and Nevis', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Saint Lucia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Saint Vincent and the Grenadines', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Samoa', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'San Marino', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Sao Tome and Principe', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Saudi Arabia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Senegal', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'Serbia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Seychelles', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Sierra Leone', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Singapore', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Slovakia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Slovenia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'Solomon Islands', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'Somalia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'South Africa', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'South Georgia South Sandwich Islands', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'South Sudan', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'Spain', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'Sri Lanka', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'St. Helena', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'St. Pierre and Miquelon', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'Sudan', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'Suriname', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'Svalbard and Jan Mayen Islands', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'Eswatini', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'Sweden', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'Switzerland', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'Syrian Arab Republic', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'Taiwan', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'Tajikistan', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'Tanzania, United Republic of', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'Thailand', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'Togo', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'Tokelau', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'Tonga', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'Trinidad and Tobago', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'Tunisia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'Turkey', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'Turkmenistan', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'Turks and Caicos Islands', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'Tuvalu', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'Uganda', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'Ukraine', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'United Arab Emirates', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'United Kingdom', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'United States', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'United States minor outlying islands', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'Uruguay', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'Uzbekistan', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'Vanuatu', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'Vatican City State', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'Venezuela', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'Vietnam', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'Virgin Islands (British)', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'Virgin Islands (U.S.)', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'Wallis and Futuna Islands', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'Western Sahara', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'Yemen', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'Zambia', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'Zimbabwe', 100.00, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `address`, `city`, `state`, `country`, `pincode`, `mobile`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'shikhar', 'pokhara 123', 'pokhara', 'gandaki', 'China', '33700', '0000000000', 'kishorpun55@gmail.com', NULL, '$2y$10$L2FnuTQtexzBldl4pveGdOOXqnmSaURwJoG024NhUeTsxhF9ZeVUK', 1, NULL, '2023-05-05 23:23:30', '2023-05-16 10:11:33'),
(13, 'Kishor Pun', '', '', '', '', '', '9234567890', 'kishorpun555@gmail.com', NULL, '$2y$10$ePpYMJzNPhVGlybdWnW/u.POYyYoobfTa0tu7nFX4OU8iQ6p1zpVa', 1, NULL, '2023-09-24 13:08:49', '2023-09-24 13:08:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders_logs`
--
ALTER TABLE `orders_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_addresses`
--
ALTER TABLE `delivery_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `orders_logs`
--
ALTER TABLE `orders_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
