-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2019 at 05:44 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `churchcms2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branchname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branchcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `branch_id` varchar(30) NOT NULL,
  `branchcode` varchar(30) NOT NULL,
  `details` text NOT NULL,
  `by_who` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `stop_date` varchar(255) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `stop_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `male` bigint(20) NOT NULL,
  `female` bigint(20) NOT NULL,
  `children` bigint(20) NOT NULL,
  `service_types_id` int(10) UNSIGNED NOT NULL,
  `other` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `branch_id`, `male`, `female`, `children`, `service_types_id`, `other`, `attendance_date`, `created_at`, `updated_at`) VALUES
(1, '346', 44, 22, 15, 1, '', '2018-07-01', '2018-07-05 13:07:36', '2019-01-07 13:43:19'),
(3, '1007', 34, 45, 27, 1, '', '2018-07-02', '2018-07-09 16:38:23', '2019-01-07 13:43:19'),
(4, '1009', 10, 15, 20, 1, '', '2004-12-12', '2018-07-09 18:30:34', '2019-01-07 13:43:19'),
(5, '1009', 11, 15, 2, 1, '', '1992-03-02', '2018-07-09 18:32:24', '2019-01-07 13:43:19'),
(6, '1009', 12, 12, 12, 1, '', '2004-09-14', '2018-07-09 18:38:27', '2019-01-07 13:43:19'),
(7, '487', 55, 55, 10, 1, '', '2018-07-17', '2018-07-19 20:00:14', '2019-01-07 13:43:19'),
(8, '487', 10, 20, 32, 1, '', '2018-07-18', '2018-07-19 20:02:38', '2019-01-07 13:43:19'),
(12, '500', 50000, 100000, 200000, 1, '', '2018-02-12', '2018-08-06 05:42:11', '2019-01-07 13:43:19'),
(13, '600', 75000, 100000, 1500000, 1, '', '2018-04-08', '2018-08-06 06:07:04', '2019-01-07 13:43:19'),
(14, '45555', 17, 20, 12, 1, 'age', '2018-08-12', '2018-08-13 16:22:43', '2019-01-07 13:43:19'),
(15, '45555', 25, 44, 23, 1, NULL, '2018-08-13', '2018-08-14 13:04:50', '2019-01-07 13:43:19'),
(16, '45555', 200, 300, 45, 1, NULL, '2018-08-05', '2018-08-14 13:09:40', '2019-01-07 13:43:19'),
(17, '45555', 12, 54, 77, 1, NULL, '2016-06-15', '2018-08-14 13:17:03', '2019-01-07 13:43:20'),
(18, '45555', 11, 22, 33, 1, NULL, '2015-06-24', '2018-08-14 13:20:58', '2019-01-07 13:43:20'),
(19, '45555', 55, 47, 66, 1, NULL, '2018-08-07', '2018-08-14 16:26:33', '2019-01-07 13:43:20'),
(20, '45555', 250, 500, 400, 1, 'Special Thanksgiving', '2018-08-14', '2018-08-14 16:56:30', '2019-01-07 13:43:20'),
(21, '101142', 2000, 3333, 5500, 1, NULL, '2018-08-14', '2018-08-17 12:47:41', '2019-01-07 13:43:20'),
(22, '101142', 445, 222, 114, 1, NULL, '2018-05-06', '2018-08-17 12:49:06', '2019-01-07 13:43:20'),
(23, '101142', 1212, 33443, 4455, 1, NULL, '2018-08-16', '2018-08-17 13:25:56', '2019-01-07 13:43:20'),
(24, '101142', 5353, 355, 55, 1, NULL, '2018-08-01', '2018-08-17 15:59:39', '2019-01-07 13:43:20'),
(25, '101142', 55, 66, 2000, 1, NULL, '2018-08-15', '2018-08-17 16:01:15', '2019-01-07 13:43:20'),
(26, '45555', 450, 500, 600, 1, NULL, '2018-08-20', '2018-08-20 10:18:05', '2019-01-07 13:43:20'),
(27, '45555', 50, 50, 50, 1, NULL, '2018-08-21', '2018-08-23 10:08:35', '2019-01-07 13:43:20'),
(28, '45555', 100, 100, 100, 1, NULL, '2017-08-23', '2018-08-23 10:12:33', '2019-01-07 13:43:20'),
(29, '45555', 100, 100, 100, 1, NULL, '2018-08-04', '2018-08-23 11:28:58', '2019-01-07 13:43:20'),
(30, '45555', 100, 100, 100, 1, NULL, '2017-08-04', '2018-08-23 11:32:19', '2019-01-07 13:43:20'),
(31, '45555', 200, 200, 200, 1, NULL, '2018-06-13', '2018-08-23 11:36:51', '2019-01-07 13:43:20'),
(32, '45555', 100, 100, 100, 1, NULL, '2018-08-22', '2018-08-23 11:46:51', '2019-01-07 13:43:20'),
(33, '45555', 100, 100, 100, 1, NULL, '2018-08-19', '2018-08-23 11:48:13', '2019-01-07 13:43:21'),
(34, '45555', 100, 200, 300, 1, NULL, '2018-08-23', '2018-08-23 12:29:01', '2019-01-07 13:43:21'),
(35, '45555', 300, 200, 100, 1, NULL, '2017-08-22', '2018-08-23 12:29:54', '2019-01-07 13:43:21'),
(36, '45555', 100, 200, 300, 1, NULL, '2018-08-27', '2018-08-27 16:15:47', '2019-01-07 13:43:21'),
(37, '45555', 300, 200, 100, 1, NULL, '2018-08-28', '2018-08-28 10:57:45', '2019-01-07 13:43:21'),
(38, '45555', 100, 100, 100, 1, NULL, '2018-08-29', '2018-08-29 14:43:45', '2019-01-07 13:43:21'),
(39, '45555', 450, 600, 400, 1, NULL, '2018-08-15', '2018-08-29 16:24:00', '2019-01-07 13:43:21'),
(40, '45555', 500, 600, 400, 1, NULL, '2018-08-06', '2018-08-29 16:32:48', '2019-01-07 13:43:21'),
(41, '45555', 400, 500, 600, 1, NULL, '2018-08-30', '2018-08-30 07:40:26', '2019-01-07 13:43:21'),
(42, '45555', 600, 200, 400, 1, NULL, '2018-08-24', '2018-08-30 07:41:25', '2019-01-07 13:43:21'),
(43, '45555', 600, 400, 300, 1, NULL, '2018-08-26', '2018-08-30 14:55:32', '2019-01-07 13:43:21'),
(44, '45555', 450, 350, 250, 1, NULL, '2018-08-31', '2018-08-31 16:21:43', '2019-01-07 13:43:21'),
(46, '101225', 400, 300, 200, 1, NULL, '2018-09-18', '2018-09-18 13:56:33', '2019-01-07 13:43:21'),
(47, 'LMS-101226', 300, 400, 200, 1, NULL, '2018-09-21', '2018-09-21 11:41:50', '2019-01-07 13:43:21'),
(48, 'LMS-101225', 400, 300, 500, 1, NULL, '2018-10-22', '2018-10-22 07:32:25', '2019-01-07 13:43:22'),
(50, '101225', 400, 300, 100, 3, NULL, '2019-01-02', '2019-01-07 13:59:58', '2019-01-07 13:59:58'),
(51, '101225', 400, 500, 100, 2, NULL, '2019-01-14', '2019-01-14 12:48:23', '2019-01-14 12:48:23'),
(52, '101225', 235, 351, 251, 3, NULL, '2019-01-18', '2019-01-18 08:01:50', '2019-01-18 08:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `collections_commissions`
--

CREATE TABLE `collections_commissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `settled` tinyint(1) NOT NULL DEFAULT '0',
  `saving_date_collected` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections_commissions`
--

INSERT INTO `collections_commissions` (`id`, `branch_id`, `created_at`, `updated_at`, `settled`, `saving_date_collected`) VALUES
(1, 13, '2019-02-07 10:14:58', '2019-02-07 10:14:58', 0, '2019-01-14'),
(2, 13, '2019-02-07 10:14:58', '2019-02-07 10:14:58', 0, '2019-02-06'),
(3, 13, '2019-02-07 14:50:37', '2019-02-07 14:50:37', 0, '2019-02-07'),
(4, 13, '2019-02-07 14:54:04', '2019-02-07 14:54:04', 0, '2019-02-07'),
(5, 13, '2019-02-07 15:05:56', '2019-02-07 15:05:56', 0, '2018-11-04');

-- --------------------------------------------------------

--
-- Table structure for table `collections_types`
--

CREATE TABLE `collections_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections_types`
--

INSERT INTO `collections_types` (`id`, `branch_id`, `name`, `created_at`, `updated_at`) VALUES
(2, 13, 'Offering', '2018-12-20 14:20:31', '2018-12-21 15:37:31'),
(3, 13, 'Building_Collection', '2018-12-21 15:37:55', '2018-12-21 15:51:50'),
(4, 13, 'Seed_Offering', '2018-12-21 15:39:40', '2018-12-21 15:51:58'),
(5, 13, 'Favour_Collection', '2018-12-21 15:40:33', '2018-12-21 15:52:08'),
(6, 13, 'Building_Management', '2019-01-07 11:40:21', '2019-01-22 11:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `ID` int(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `code` varchar(2) NOT NULL,
  `dial_code` varchar(5) NOT NULL,
  `currency_name` varchar(20) NOT NULL,
  `currency_symbol` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `currency_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`ID`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES
(1, 'Afghanistan', 'AF', '+93', 'Afghan afghani', '؋', 'AFN'),
(2, 'Aland Islands', 'AX', '+358', '', '', ''),
(3, 'Albania', 'AL', '+355', 'Albanian lek', 'L', 'ALL'),
(4, 'Algeria', 'DZ', '+213', 'Algerian dinar', 'د.ج', 'DZD'),
(5, 'AmericanSamoa', 'AS', '+1684', '', '', ''),
(6, 'Andorra', 'AD', '+376', 'Euro', '€', 'EUR'),
(7, 'Angola', 'AO', '+244', 'Angolan kwanza', 'Kz', 'AOA'),
(8, 'Anguilla', 'AI', '+1264', 'East Caribbean dolla', '$', 'XCD'),
(9, 'Antarctica', 'AQ', '+672', '', '', ''),
(10, 'Antigua and Barbuda', 'AG', '+1268', 'East Caribbean dolla', '$', 'XCD'),
(11, 'Argentina', 'AR', '+54', 'Argentine peso', '$', 'ARS'),
(12, 'Armenia', 'AM', '+374', 'Armenian dram', '', 'AMD'),
(13, 'Aruba', 'AW', '+297', 'Aruban florin', 'ƒ', 'AWG'),
(14, 'Australia', 'AU', '+61', 'Australian dollar', '$', 'AUD'),
(15, 'Austria', 'AT', '+43', 'Euro', '€', 'EUR'),
(16, 'Azerbaijan', 'AZ', '+994', 'Azerbaijani manat', '', 'AZN'),
(17, 'Bahamas', 'BS', '+1242', '', '', ''),
(18, 'Bahrain', 'BH', '+973', 'Bahraini dinar', '.د.ب', 'BHD'),
(19, 'Bangladesh', 'BD', '+880', 'Bangladeshi taka', '৳', 'BDT'),
(20, 'Barbados', 'BB', '+1246', 'Barbadian dollar', '$', 'BBD'),
(21, 'Belarus', 'BY', '+375', 'Belarusian ruble', 'Br', 'BYR'),
(22, 'Belgium', 'BE', '+32', 'Euro', '€', 'EUR'),
(23, 'Belize', 'BZ', '+501', 'Belize dollar', '$', 'BZD'),
(24, 'Benin', 'BJ', '+229', 'West African CFA fra', 'Fr', 'XOF'),
(25, 'Bermuda', 'BM', '+1441', 'Bermudian dollar', '$', 'BMD'),
(26, 'Bhutan', 'BT', '+975', 'Bhutanese ngultrum', 'Nu.', 'BTN'),
(27, 'Bolivia, Plurination', 'BO', '+591', '', '', ''),
(28, 'Bosnia and Herzegovi', 'BA', '+387', '', '', ''),
(29, 'Botswana', 'BW', '+267', 'Botswana pula', 'P', 'BWP'),
(30, 'Brazil', 'BR', '+55', 'Brazilian real', 'R$', 'BRL'),
(31, 'British Indian Ocean', 'IO', '+246', '', '', ''),
(32, 'Brunei Darussalam', 'BN', '+673', '', '', ''),
(33, 'Bulgaria', 'BG', '+359', 'Bulgarian lev', 'лв', 'BGN'),
(34, 'Burkina Faso', 'BF', '+226', 'West African CFA fra', 'Fr', 'XOF'),
(35, 'Burundi', 'BI', '+257', 'Burundian franc', 'Fr', 'BIF'),
(36, 'Cambodia', 'KH', '+855', 'Cambodian riel', '៛', 'KHR'),
(37, 'Cameroon', 'CM', '+237', 'Central African CFA ', 'Fr', 'XAF'),
(38, 'Canada', 'CA', '+1', 'Canadian dollar', '$', 'CAD'),
(39, 'Cape Verde', 'CV', '+238', 'Cape Verdean escudo', 'Esc or $', 'CVE'),
(40, 'Cayman Islands', 'KY', '+ 345', 'Cayman Islands dolla', '$', 'KYD'),
(41, 'Central African Repu', 'CF', '+236', '', '', ''),
(42, 'Chad', 'TD', '+235', 'Central African CFA ', 'Fr', 'XAF'),
(43, 'Chile', 'CL', '+56', 'Chilean peso', '$', 'CLP'),
(44, 'China', 'CN', '+86', 'Chinese yuan', '¥ or 元', 'CNY'),
(45, 'Christmas Island', 'CX', '+61', '', '', ''),
(46, 'Cocos (Keeling) Isla', 'CC', '+61', '', '', ''),
(47, 'Colombia', 'CO', '+57', 'Colombian peso', '$', 'COP'),
(48, 'Comoros', 'KM', '+269', 'Comorian franc', 'Fr', 'KMF'),
(49, 'Congo', 'CG', '+242', '', '', ''),
(50, 'Congo, The Democrati', 'CD', '+243', '', '', ''),
(51, 'Cook Islands', 'CK', '+682', 'New Zealand dollar', '$', 'NZD'),
(52, 'Costa Rica', 'CR', '+506', 'Costa Rican colón', '₡', 'CRC'),
(53, 'Cote d\'Ivoire', 'CI', '+225', 'West African CFA fra', 'Fr', 'XOF'),
(54, 'Croatia', 'HR', '+385', 'Croatian kuna', 'kn', 'HRK'),
(55, 'Cuba', 'CU', '+53', 'Cuban convertible pe', '$', 'CUC'),
(56, 'Cyprus', 'CY', '+357', 'Euro', '€', 'EUR'),
(57, 'Czech Republic', 'CZ', '+420', 'Czech koruna', 'Kč', 'CZK'),
(58, 'Denmark', 'DK', '+45', 'Danish krone', 'kr', 'DKK'),
(59, 'Djibouti', 'DJ', '+253', 'Djiboutian franc', 'Fr', 'DJF'),
(60, 'Dominica', 'DM', '+1767', 'East Caribbean dolla', '$', 'XCD'),
(61, 'Dominican Republic', 'DO', '+1849', 'Dominican peso', '$', 'DOP'),
(62, 'Ecuador', 'EC', '+593', 'United States dollar', '$', 'USD'),
(63, 'Egypt', 'EG', '+20', 'Egyptian pound', '£ or ج.م', 'EGP'),
(64, 'El Salvador', 'SV', '+503', 'United States dollar', '$', 'USD'),
(65, 'Equatorial Guinea', 'GQ', '+240', 'Central African CFA ', 'Fr', 'XAF'),
(66, 'Eritrea', 'ER', '+291', 'Eritrean nakfa', 'Nfk', 'ERN'),
(67, 'Estonia', 'EE', '+372', 'Euro', '€', 'EUR'),
(68, 'Ethiopia', 'ET', '+251', 'Ethiopian birr', 'Br', 'ETB'),
(69, 'Falkland Islands (Ma', 'FK', '+500', '', '', ''),
(70, 'Faroe Islands', 'FO', '+298', 'Danish krone', 'kr', 'DKK'),
(71, 'Fiji', 'FJ', '+679', 'Fijian dollar', '$', 'FJD'),
(72, 'Finland', 'FI', '+358', 'Euro', '€', 'EUR'),
(73, 'France', 'FR', '+33', 'Euro', '€', 'EUR'),
(74, 'French Guiana', 'GF', '+594', '', '', ''),
(75, 'French Polynesia', 'PF', '+689', 'CFP franc', 'Fr', 'XPF'),
(76, 'Gabon', 'GA', '+241', 'Central African CFA ', 'Fr', 'XAF'),
(77, 'Gambia', 'GM', '+220', '', '', ''),
(78, 'Georgia', 'GE', '+995', 'Georgian lari', 'ლ', 'GEL'),
(79, 'Germany', 'DE', '+49', 'Euro', '€', 'EUR'),
(80, 'Ghana', 'GH', '+233', 'Ghana cedi', '₵', 'GHS'),
(81, 'Gibraltar', 'GI', '+350', 'Gibraltar pound', '£', 'GIP'),
(82, 'Greece', 'GR', '+30', 'Euro', '€', 'EUR'),
(83, 'Greenland', 'GL', '+299', '', '', ''),
(84, 'Grenada', 'GD', '+1473', 'East Caribbean dolla', '$', 'XCD'),
(85, 'Guadeloupe', 'GP', '+590', '', '', ''),
(86, 'Guam', 'GU', '+1671', '', '', ''),
(87, 'Guatemala', 'GT', '+502', 'Guatemalan quetzal', 'Q', 'GTQ'),
(88, 'Guernsey', 'GG', '+44', 'British pound', '£', 'GBP'),
(89, 'Guinea', 'GN', '+224', 'Guinean franc', 'Fr', 'GNF'),
(90, 'Guinea-Bissau', 'GW', '+245', 'West African CFA fra', 'Fr', 'XOF'),
(91, 'Guyana', 'GY', '+595', 'Guyanese dollar', '$', 'GYD'),
(92, 'Haiti', 'HT', '+509', 'Haitian gourde', 'G', 'HTG'),
(93, 'Holy See (Vatican Ci', 'VA', '+379', '', '', ''),
(94, 'Honduras', 'HN', '+504', 'Honduran lempira', 'L', 'HNL'),
(95, 'Hong Kong', 'HK', '+852', 'Hong Kong dollar', '$', 'HKD'),
(96, 'Hungary', 'HU', '+36', 'Hungarian forint', 'Ft', 'HUF'),
(97, 'Iceland', 'IS', '+354', 'Icelandic króna', 'kr', 'ISK'),
(98, 'India', 'IN', '+91', 'Indian rupee', '₹', 'INR'),
(99, 'Indonesia', 'ID', '+62', 'Indonesian rupiah', 'Rp', 'IDR'),
(100, 'Iran, Islamic Republ', 'IR', '+98', '', '', ''),
(101, 'Iraq', 'IQ', '+964', 'Iraqi dinar', 'ع.د', 'IQD'),
(102, 'Ireland', 'IE', '+353', 'Euro', '€', 'EUR'),
(103, 'Isle of Man', 'IM', '+44', 'British pound', '£', 'GBP'),
(104, 'Israel', 'IL', '+972', 'Israeli new shekel', '₪', 'ILS'),
(105, 'Italy', 'IT', '+39', 'Euro', '€', 'EUR'),
(106, 'Jamaica', 'JM', '+1876', 'Jamaican dollar', '$', 'JMD'),
(107, 'Japan', 'JP', '+81', 'Japanese yen', '¥', 'JPY'),
(108, 'Jersey', 'JE', '+44', 'British pound', '£', 'GBP'),
(109, 'Jordan', 'JO', '+962', 'Jordanian dinar', 'د.ا', 'JOD'),
(110, 'Kazakhstan', 'KZ', '+7 7', 'Kazakhstani tenge', '', 'KZT'),
(111, 'Kenya', 'KE', '+254', 'Kenyan shilling', 'Sh', 'KES'),
(112, 'Kiribati', 'KI', '+686', 'Australian dollar', '$', 'AUD'),
(113, 'Korea, Democratic Pe', 'KP', '+850', '', '', ''),
(114, 'Korea, Republic of S', 'KR', '+82', '', '', ''),
(115, 'Kuwait', 'KW', '+965', 'Kuwaiti dinar', 'د.ك', 'KWD'),
(116, 'Kyrgyzstan', 'KG', '+996', 'Kyrgyzstani som', 'лв', 'KGS'),
(117, 'Laos', 'LA', '+856', 'Lao kip', '₭', 'LAK'),
(118, 'Latvia', 'LV', '+371', 'Euro', '€', 'EUR'),
(119, 'Lebanon', 'LB', '+961', 'Lebanese pound', 'ل.ل', 'LBP'),
(120, 'Lesotho', 'LS', '+266', 'Lesotho loti', 'L', 'LSL'),
(121, 'Liberia', 'LR', '+231', 'Liberian dollar', '$', 'LRD'),
(122, 'Libyan Arab Jamahiri', 'LY', '+218', '', '', ''),
(123, 'Liechtenstein', 'LI', '+423', 'Swiss franc', 'Fr', 'CHF'),
(124, 'Lithuania', 'LT', '+370', 'Euro', '€', 'EUR'),
(125, 'Luxembourg', 'LU', '+352', 'Euro', '€', 'EUR'),
(126, 'Macao', 'MO', '+853', '', '', ''),
(127, 'Macedonia', 'MK', '+389', '', '', ''),
(128, 'Madagascar', 'MG', '+261', 'Malagasy ariary', 'Ar', 'MGA'),
(129, 'Malawi', 'MW', '+265', 'Malawian kwacha', 'MK', 'MWK'),
(130, 'Malaysia', 'MY', '+60', 'Malaysian ringgit', 'RM', 'MYR'),
(131, 'Maldives', 'MV', '+960', 'Maldivian rufiyaa', '.ރ', 'MVR'),
(132, 'Mali', 'ML', '+223', 'West African CFA fra', 'Fr', 'XOF'),
(133, 'Malta', 'MT', '+356', 'Euro', '€', 'EUR'),
(134, 'Marshall Islands', 'MH', '+692', 'United States dollar', '$', 'USD'),
(135, 'Martinique', 'MQ', '+596', '', '', ''),
(136, 'Mauritania', 'MR', '+222', 'Mauritanian ouguiya', 'UM', 'MRO'),
(137, 'Mauritius', 'MU', '+230', 'Mauritian rupee', '₨', 'MUR'),
(138, 'Mayotte', 'YT', '+262', '', '', ''),
(139, 'Mexico', 'MX', '+52', 'Mexican peso', '$', 'MXN'),
(140, 'Micronesia, Federate', 'FM', '+691', '', '', ''),
(141, 'Moldova', 'MD', '+373', 'Moldovan leu', 'L', 'MDL'),
(142, 'Monaco', 'MC', '+377', 'Euro', '€', 'EUR'),
(143, 'Mongolia', 'MN', '+976', 'Mongolian tögrög', '₮', 'MNT'),
(144, 'Montenegro', 'ME', '+382', 'Euro', '€', 'EUR'),
(145, 'Montserrat', 'MS', '+1664', 'East Caribbean dolla', '$', 'XCD'),
(146, 'Morocco', 'MA', '+212', 'Moroccan dirham', 'د.م.', 'MAD'),
(147, 'Mozambique', 'MZ', '+258', 'Mozambican metical', 'MT', 'MZN'),
(148, 'Myanmar', 'MM', '+95', 'Burmese kyat', 'Ks', 'MMK'),
(149, 'Namibia', 'NA', '+264', 'Namibian dollar', '$', 'NAD'),
(150, 'Nauru', 'NR', '+674', 'Australian dollar', '$', 'AUD'),
(151, 'Nepal', 'NP', '+977', 'Nepalese rupee', '₨', 'NPR'),
(152, 'Netherlands', 'NL', '+31', 'Euro', '€', 'EUR'),
(153, 'Netherlands Antilles', 'AN', '+599', '', '', ''),
(154, 'New Caledonia', 'NC', '+687', 'CFP franc', 'Fr', 'XPF'),
(155, 'New Zealand', 'NZ', '+64', 'New Zealand dollar', '$', 'NZD'),
(156, 'Nicaragua', 'NI', '+505', 'Nicaraguan córdoba', 'C$', 'NIO'),
(157, 'Niger', 'NE', '+227', 'West African CFA fra', 'Fr', 'XOF'),
(158, 'Nigeria', 'NG', '+234', 'Nigerian naira', '₦', 'NGN'),
(159, 'Niue', 'NU', '+683', 'New Zealand dollar', '$', 'NZD'),
(160, 'Norfolk Island', 'NF', '+672', '', '', ''),
(161, 'Northern Mariana Isl', 'MP', '+1670', '', '', ''),
(162, 'Norway', 'NO', '+47', 'Norwegian krone', 'kr', 'NOK'),
(163, 'Oman', 'OM', '+968', 'Omani rial', 'ر.ع.', 'OMR'),
(164, 'Pakistan', 'PK', '+92', 'Pakistani rupee', '₨', 'PKR'),
(165, 'Palau', 'PW', '+680', 'Palauan dollar', '$', ''),
(166, 'Palestinian Territor', 'PS', '+970', '', '', ''),
(167, 'Panama', 'PA', '+507', 'Panamanian balboa', 'B/.', 'PAB'),
(168, 'Papua New Guinea', 'PG', '+675', 'Papua New Guinean ki', 'K', 'PGK'),
(169, 'Paraguay', 'PY', '+595', 'Paraguayan guaraní', '₲', 'PYG'),
(170, 'Peru', 'PE', '+51', 'Peruvian nuevo sol', 'S/.', 'PEN'),
(171, 'Philippines', 'PH', '+63', 'Philippine peso', '₱', 'PHP'),
(172, 'Pitcairn', 'PN', '+872', '', '', ''),
(173, 'Poland', 'PL', '+48', 'Polish z?oty', 'zł', 'PLN'),
(174, 'Portugal', 'PT', '+351', 'Euro', '€', 'EUR'),
(175, 'Puerto Rico', 'PR', '+1939', '', '', ''),
(176, 'Qatar', 'QA', '+974', 'Qatari riyal', 'ر.ق', 'QAR'),
(177, 'Romania', 'RO', '+40', 'Romanian leu', 'lei', 'RON'),
(178, 'Russia', 'RU', '+7', 'Russian ruble', '', 'RUB'),
(179, 'Rwanda', 'RW', '+250', 'Rwandan franc', 'Fr', 'RWF'),
(180, 'Reunion', 'RE', '+262', '', '', ''),
(181, 'Saint Barthelemy', 'BL', '+590', '', '', ''),
(182, 'Saint Helena, Ascens', 'SH', '+290', '', '', ''),
(183, 'Saint Kitts and Nevi', 'KN', '+1869', '', '', ''),
(184, 'Saint Lucia', 'LC', '+1758', 'East Caribbean dolla', '$', 'XCD'),
(185, 'Saint Martin', 'MF', '+590', '', '', ''),
(186, 'Saint Pierre and Miq', 'PM', '+508', '', '', ''),
(187, 'Saint Vincent and th', 'VC', '+1784', '', '', ''),
(188, 'Samoa', 'WS', '+685', 'Samoan t?l?', 'T', 'WST'),
(189, 'San Marino', 'SM', '+378', 'Euro', '€', 'EUR'),
(190, 'Sao Tome and Princip', 'ST', '+239', '', '', ''),
(191, 'Saudi Arabia', 'SA', '+966', 'Saudi riyal', 'ر.س', 'SAR'),
(192, 'Senegal', 'SN', '+221', 'West African CFA fra', 'Fr', 'XOF'),
(193, 'Serbia', 'RS', '+381', 'Serbian dinar', 'дин. or din.', 'RSD'),
(194, 'Seychelles', 'SC', '+248', 'Seychellois rupee', '₨', 'SCR'),
(195, 'Sierra Leone', 'SL', '+232', 'Sierra Leonean leone', 'Le', 'SLL'),
(196, 'Singapore', 'SG', '+65', 'Brunei dollar', '$', 'BND'),
(197, 'Slovakia', 'SK', '+421', 'Euro', '€', 'EUR'),
(198, 'Slovenia', 'SI', '+386', 'Euro', '€', 'EUR'),
(199, 'Solomon Islands', 'SB', '+677', 'Solomon Islands doll', '$', 'SBD'),
(200, 'Somalia', 'SO', '+252', 'Somali shilling', 'Sh', 'SOS'),
(201, 'South Africa', 'ZA', '+27', 'South African rand', 'R', 'ZAR'),
(202, 'South Georgia and th', 'GS', '+500', '', '', ''),
(203, 'Spain', 'ES', '+34', 'Euro', '€', 'EUR'),
(204, 'Sri Lanka', 'LK', '+94', 'Sri Lankan rupee', 'Rs or රු', 'LKR'),
(205, 'Sudan', 'SD', '+249', 'Sudanese pound', 'ج.س.', 'SDG'),
(206, 'Suriname', 'SR', '+597', 'Surinamese dollar', '$', 'SRD'),
(207, 'Svalbard and Jan May', 'SJ', '+47', '', '', ''),
(208, 'Swaziland', 'SZ', '+268', 'Swazi lilangeni', 'L', 'SZL'),
(209, 'Sweden', 'SE', '+46', 'Swedish krona', 'kr', 'SEK'),
(210, 'Switzerland', 'CH', '+41', 'Swiss franc', 'Fr', 'CHF'),
(211, 'Syrian Arab Republic', 'SY', '+963', '', '', ''),
(212, 'Taiwan', 'TW', '+886', 'New Taiwan dollar', '$', 'TWD'),
(213, 'Tajikistan', 'TJ', '+992', 'Tajikistani somoni', 'ЅМ', 'TJS'),
(214, 'Tanzania, United Rep', 'TZ', '+255', '', '', ''),
(215, 'Thailand', 'TH', '+66', 'Thai baht', '฿', 'THB'),
(216, 'Timor-Leste', 'TL', '+670', '', '', ''),
(217, 'Togo', 'TG', '+228', 'West African CFA fra', 'Fr', 'XOF'),
(218, 'Tokelau', 'TK', '+690', '', '', ''),
(219, 'Tonga', 'TO', '+676', 'Tongan pa?anga', 'T$', 'TOP'),
(220, 'Trinidad and Tobago', 'TT', '+1868', 'Trinidad and Tobago ', '$', 'TTD'),
(221, 'Tunisia', 'TN', '+216', 'Tunisian dinar', 'د.ت', 'TND'),
(222, 'Turkey', 'TR', '+90', 'Turkish lira', '', 'TRY'),
(223, 'Turkmenistan', 'TM', '+993', 'Turkmenistan manat', 'm', 'TMT'),
(224, 'Turks and Caicos Isl', 'TC', '+1649', '', '', ''),
(225, 'Tuvalu', 'TV', '+688', 'Australian dollar', '$', 'AUD'),
(226, 'Uganda', 'UG', '+256', 'Ugandan shilling', 'Sh', 'UGX'),
(227, 'Ukraine', 'UA', '+380', 'Ukrainian hryvnia', '₴', 'UAH'),
(228, 'United Arab Emirates', 'AE', '+971', 'United Arab Emirates', 'د.إ', 'AED'),
(229, 'United Kingdom', 'GB', '+44', 'British pound', '£', 'GBP'),
(230, 'United States', 'US', '+1', 'United States dollar', '$', 'USD'),
(231, 'Uruguay', 'UY', '+598', 'Uruguayan peso', '$', 'UYU'),
(232, 'Uzbekistan', 'UZ', '+998', 'Uzbekistani som', '', 'UZS'),
(233, 'Vanuatu', 'VU', '+678', 'Vanuatu vatu', 'Vt', 'VUV'),
(234, 'Venezuela, Bolivaria', 'VE', '+58', '', '', ''),
(235, 'Vietnam', 'VN', '+84', 'Vietnamese ??ng', '₫', 'VND'),
(236, 'Virgin Islands, Brit', 'VG', '+1284', '', '', ''),
(237, 'Virgin Islands, U.S.', 'VI', '+1340', '', '', ''),
(238, 'Wallis and Futuna', 'WF', '+681', 'CFP franc', 'Fr', 'XPF'),
(239, 'Yemen', 'YE', '+967', 'Yemeni rial', '﷼', 'YER'),
(240, 'Zambia', 'ZM', '+260', 'Zambian kwacha', 'ZK', 'ZMW'),
(241, 'Zimbabwe', 'ZW', '+263', 'Botswana pula', 'P', 'BWP');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `by_who` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assign_to` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `branch_id`, `title`, `details`, `location`, `time`, `by_who`, `assign_to`, `date`, `created_at`, `updated_at`) VALUES
(1, '346', 'Namin Ceremony', NULL, 'Children Church', '06:30', 'Head Pastor', NULL, '2018-07-21', '2018-07-05 12:50:20', '2018-07-05 12:50:20'),
(2, '345', 'Namin Ceremony II', NULL, 'Adult Church', '09:30', 'Assistant Pastor', NULL, '2018-07-17', '2018-07-05 12:52:10', '2018-07-05 12:52:10'),
(4, '1007', 'Wedding', NULL, 'Ajah', '09:30', 'Mr&Mrs John', NULL, '2018-07-04', '2018-07-09 17:11:16', '2018-07-09 17:11:16'),
(5, '1007', 'Birthday', NULL, 'Surulere', '09:30', 'Pastor', NULL, '2018-07-08', '2018-07-09 17:13:21', '2018-07-09 17:13:21'),
(6, '1009', 'baptismal service', NULL, 'ikeja', '07:12', 'dr. olukoya', NULL, '2018-07-17', '2018-07-09 18:52:05', '2018-07-09 18:52:05'),
(7, '1009', 'workers meeting', NULL, 'lekki', '12:55', 'mr leonard', NULL, '2018-07-09', '2018-07-09 18:54:19', '2018-07-09 18:54:19'),
(8, '487', 'NAMING CEREMONY', NULL, 'Children Church', '12:30', 'Assistant Pastor', NULL, '2018-07-07', '2018-07-19 20:05:48', '2018-07-19 20:05:48'),
(9, '487', 'PRAYER MEETING', NULL, 'MAIN AUDITORIUM', '05:30', 'PASTOR JOE', NULL, '2018-09-26', '2018-07-19 20:09:19', '2018-07-19 20:09:19'),
(10, '487', 'Men\'s Fellowship Meetings', NULL, 'Pastor\'s John Residence', '21:30', 'Pastor John', NULL, '2018-10-24', '2018-07-19 20:24:55', '2018-07-19 20:24:55'),
(11, '487', 'Wedding Ceremony', NULL, 'Lekki Auditorium', '09:30', 'Pastor Jack', NULL, '2018-12-29', '2018-07-19 20:26:42', '2018-07-19 20:26:42'),
(12, '487', 'Wedding Anniversary', NULL, 'The Main Church Auditorium', '03:10', 'Pastor Jerome', NULL, '2018-10-27', '2018-07-23 15:12:05', '2018-07-23 15:12:05'),
(16, '600', 'Crusade', NULL, 'Church Auditorium', '03:46', 'Pastor Jack', NULL, '2018-09-25', '2018-08-06 06:13:32', '2018-08-06 06:13:32'),
(17, '600', 'On God', NULL, 'Lekki Auditorium', '01:25', 'UAAC', NULL, '2018-09-26', '2018-08-08 01:26:40', '2018-08-08 01:26:40'),
(18, '45555', 'wedding', NULL, 'ajah', '02:16', 'michael', NULL, '2018-08-22', '2018-08-13 16:36:17', '2018-08-13 16:36:17'),
(19, '101225', 'my birthday', NULL, 'lagos eti osa', '09:30', 'john', NULL, '2018-08-22', '2018-08-17 09:02:01', '2018-08-17 09:02:01'),
(21, '45555', 'Seven days Night Vigil', 'Come and experience the abundant blessings', 'Vision Estate', '12:50', 'Pastor Oyewole', NULL, '2018-08-31', '2018-08-28 14:34:08', '2018-08-28 14:34:08'),
(24, '45555', 'test', 'lekki', 'ajaj', '09:30', 'ace', 'jambguru101@gmail.com,money-jane@hotmail.com,Ajiboye31@gmail.com,iio@email.com,ii@ii.com,uu@u.com,u@ema.com,ii@n.com,iob@hmail.com,u@e.com,bb@w.com', '2018-09-20', '2018-09-20 10:32:14', '2018-09-20 10:32:14'),
(25, '45555', 'test', 'lekki', 'ajaj', '09:30', 'ace', 'jambguru101@gmail.com,money-jane@hotmail.com,Ajiboye31@gmail.com,iio@email.com,ii@ii.com,uu@u.com,u@ema.com,ii@n.com,iob@hmail.com,u@e.com,bb@w.com', '2018-09-20', '2018-09-20 10:32:57', '2018-09-20 10:32:57'),
(26, '45555', 'test', 'lekki', 'ajaj', '09:30', 'ace', 'jambguru101@gmail.com,money-jane@hotmail.com,Ajiboye31@gmail.com,iio@email.com,ii@ii.com,uu@u.com,u@ema.com,ii@n.com,iob@hmail.com,u@e.com,bb@w.com', '2018-09-20', '2018-09-20 10:33:11', '2018-09-20 10:33:11'),
(27, '45555', 'test', 'lekki', 'ajaj', '09:30', 'ace', 'jambguru101@gmail.com,money-jane@hotmail.com,Ajiboye31@gmail.com,iio@email.com,ii@ii.com,uu@u.com,u@ema.com,ii@n.com,iob@hmail.com,u@e.com,bb@w.com', '2018-09-20', '2018-09-20 10:34:12', '2018-09-20 10:34:12'),
(28, '45555', 'Five', 'ajah', 'jiji', '09:30', 'Mike', 'classipa.ng@gmail.com,jambguru101@gmail.com,money-jane@hotmail.com,Ajiboye31@gmail.com,iio@email.com,ii@ii.com,uu@u.com,u@ema.com,ii@n.com,iob@hmail.com,u@e.com,bb@w.com', '2018-09-21', '2018-09-20 11:14:50', '2018-09-20 11:14:50'),
(29, '45555', 'Five Years in battle', 'kill till the end', 'ajah state', '09:30', 'ajanoku', 'classipa.ng@gmail.com,jambguru101@gmail.com,money-jane@hotmail.com,Ajiboye31@gmail.com,iio@email.com,ii@ii.com,uu@u.com,u@ema.com,ii@n.com,iob@hmail.com,u@e.com,bb@w.com', '2018-09-21', '2018-09-20 11:18:34', '2018-09-20 11:18:34'),
(30, '45555', 'Five Years in battle', 'kill till the end', 'ajah state', '09:30', 'ajanoku', 'classipa.ng@gmail.com,jambguru101@gmail.com,money-jane@hotmail.com,Ajiboye31@gmail.com,iio@email.com,ii@ii.com,uu@u.com,u@ema.com,ii@n.com,iob@hmail.com,u@e.com,bb@w.com', '2018-12-21', '2018-09-20 11:20:11', '2018-09-20 11:20:11'),
(31, '45555', 'Five Years in battle', 'kill till the end', 'ajah state', '09:30', 'ajanoku', 'classipa.ng@gmail.com,jambguru101@gmail.com,money-jane@hotmail.com,Ajiboye31@gmail.com,iio@email.com,ii@ii.com,uu@u.com,u@ema.com,ii@n.com,iob@hmail.com,u@e.com,bb@w.com', '2018-09-21', '2018-09-20 11:22:24', '2018-09-20 11:22:24'),
(32, '45555', 'Five Years in battle', 'kill till the end', 'ajah state', '09:30', 'ajanoku', 'classipa.ng@gmail.com,jambguru101@gmail.com,money-jane@hotmail.com,Ajiboye31@gmail.com,iio@email.com,ii@ii.com,uu@u.com,u@ema.com,ii@n.com,iob@hmail.com,u@e.com,bb@w.com', '2018-09-21', '2018-09-20 11:23:13', '2018-09-20 11:23:13'),
(33, '45555', 'New Ace', 'join us now', 'lekki view', '09:30', 'Ace', 'classipa.ng@gmail.com,jambguru101@gmail.com,money-jane@hotmail.com,Ajiboye31@gmail.com', '2018-09-27', '2018-09-20 11:39:07', '2018-09-20 11:39:07'),
(34, '45555', 'edd', 'dwqd', 'wqdqwd', '09:30', 'wdd', 'classipa.ng@gmail.com', '2018-09-26', '2018-09-20 15:58:34', '2018-09-20 15:58:34'),
(35, '101225', 'Night Vigil', 'First Night vigil of every night', 'Children\'s Church', '11:45', 'david', 'myckhel123@gmail.com,james@yahoo.com,loshiyemi@hoffenheimtechnologies.com', '2018-09-28', '2018-09-20 16:57:36', '2018-09-20 16:57:36'),
(36, 'LMS-101226', 'Event Demo 1', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'Ajah', '09:30', 'demo user', 'member1@gmail.com', '2018-09-28', '2018-09-21 12:03:26', '2018-09-21 12:03:26'),
(37, 'LMS-101225', 'ace of maga', 'g ifgh ighoirh goih erioghiore g hergh eirui eguierfiugeruifgiu erui er', 'ajah lekki', '09:30', 'michael', 'm@email.com,my@email.com', '2019-02-06', '2019-02-01 15:39:16', '2019-02-01 15:39:16');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) NOT NULL,
  `branch_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `branch_id`, `name`, `created_at`, `updated_at`) VALUES
(1, '345', 'Camp Committee', NULL, NULL),
(9, '487', 'ELDERS GROUP', '2018-07-19 20:04:02', '2018-07-19 20:04:02'),
(10, '487', 'Prayer Warrior', '2018-07-19 20:35:17', '2018-07-19 20:35:17'),
(14, '45555', 'Campus', '2018-08-13 16:30:23', '2018-08-13 16:30:23'),
(15, '45555', 'EVANGELISM', '2018-08-14 17:46:54', '2018-08-14 17:46:54'),
(16, '45555', 'CHILDREN CHURCH', '2018-08-14 17:47:13', '2018-08-14 17:47:13'),
(25, '101142', 'new', '2018-08-15 12:45:48', '2018-08-15 12:45:48'),
(26, '101142', 'PRAYER WARRIOR', '2018-08-17 14:10:37', '2018-08-17 14:10:37'),
(27, '101225', 'ticketing', '2018-09-19 12:39:21', '2018-09-19 12:39:21'),
(28, 'LMS-101226', 'Church Group 1', '2018-09-21 11:48:20', '2018-09-21 11:48:20'),
(31, '101225', 'age', '2018-12-20 13:15:14', '2018-12-20 13:15:14'),
(32, '101225', 'agents group', '2019-01-14 13:33:43', '2019-01-14 13:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `id` bigint(20) NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `for_branch` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`id`, `member_id`, `group_id`, `for_branch`, `created_at`, `updated_at`) VALUES
(53, 58, 28, 'LMS-101226', '2018-09-21 11:58:39', '2018-09-21 11:58:39'),
(54, 54, 27, '101225', '2018-10-05 10:57:30', '2018-10-05 10:57:30'),
(55, 35, 16, '45555', '2018-10-22 15:32:46', '2018-10-22 15:32:46'),
(56, 34, 14, '45555', '2018-10-23 08:08:44', '2018-10-23 08:08:44'),
(57, 33, 14, '45555', '2018-10-23 08:08:49', '2018-10-23 08:08:49'),
(58, 35, 14, '45555', '2018-10-23 08:08:53', '2018-10-23 08:08:53'),
(59, 31, 32, '101225', '2019-01-14 13:33:59', '2019-01-14 13:33:59'),
(60, 74, 32, '101225', '2019-01-14 13:34:05', '2019-01-14 13:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `head_office_options`
--

CREATE TABLE `head_office_options` (
  `HOID` int(10) NOT NULL,
  `HOSNAME` varchar(255) NOT NULL,
  `HOLNAME` varchar(40) NOT NULL,
  `HOADDRESS` varchar(255) NOT NULL,
  `HOADDRESS2` varchar(255) NOT NULL,
  `HOCITY` varchar(255) NOT NULL,
  `HOSTATE` varchar(20) NOT NULL,
  `HOCOUNTRY` varchar(40) NOT NULL,
  `HOPOSTAL_CODE` varchar(20) NOT NULL,
  `HOPHONE1` int(20) NOT NULL,
  `HOPHONE2` int(20) NOT NULL,
  `HOPHONE3` int(20) NOT NULL,
  `HOPHONE4` int(20) NOT NULL,
  `HOEMAIL` varchar(40) NOT NULL,
  `HOLOGO` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `head_office_options`
--

INSERT INTO `head_office_options` (`HOID`, `HOSNAME`, `HOLNAME`, `HOADDRESS`, `HOADDRESS2`, `HOCITY`, `HOSTATE`, `HOCOUNTRY`, `HOPOSTAL_CODE`, `HOPHONE1`, `HOPHONE2`, `HOPHONE3`, `HOPHONE4`, `HOEMAIL`, `HOLOGO`) VALUES
(1, 'Winners Chapel', 'Living Faith Church', 'Zion city estate, FUTA Rd, Akure, Nigeria', 'Zion city estate, FUTA Rd, Akure, Nigeria', 'Lagos', 'Lagos', 'Nigeria', '101225', 811645852, 811546558, 844544458, 811458865, 'myckhel1@hotmail.com', 0x89504e470d0a1a0a0000000d4948445200000392000000e40806000000eae21b53000000097048597300002e2300002e230178a53f760000000974455874436f6d6d656e740000892a8d060000200049444154789cecdd695414e79a07f05bd541938c313977eedc4c4ee6ccdce54cce64ee95de58022a82b805cd4463dc13374070432428200834a0020ab28948c41d44902c12a3511325710911306e51bbaa17baba9b359ac52511ba7abaaa4541ba01152c94ff87df11e8a6fb69fcf43fcff33eef1fcc66f31f00000000000000ba4af002000000000000e0c9227801000000000000f06411bc0000000000000078b2085e000000000000003c59042f000000000000009e2c8217000000000000004f16c10b00000000000080278be005000000000000c09345f002005abba1d7138d39d9645d6cb4a86ceb3652e87a0000000000a03dc10b0068715da9247ebe729ab87aa8d4a1614b5ebffa039f3c23744d0000000000d09ee0050070eae21584de7f2e51b77ff7ff1862c216ea02fc3f306e4899f6d3ad5b22a16b030000000080b6042f00a021238da88b8b21eb4f1efc0f4372d427ea373d6fa84779fc664c893b73f3f6edfe75b1d10447e83a0100000000c04af002001ab23244353f9c1a58b335354933d9e7a652fccfdf55c3dc4d86758a4396c70904490000000080de45f002a06f33a4ad17d5967dee60dc99359b099851a7940c325172994935dcc36c581bbb997b0e82240000000040ef227801d07755e4e61295b13122e3a1bdff6d880b3d4abb49592e44525209ab1a3ed4ac5f179bce3def1b8582e0085d2f000000000058095e00f45daa2347f87068dcb83a5a357ed44d4ae668a25ce466251f243d2c415291c83d5e1e1181100900000000d08b085e00f44d8d05f9e4b5c2dda4beecb3d7f4217e46da45c68fb452ce3233d791a4bd3dcd4c727414f75c4dc03c044900000000805e44f002a06f3a14a7206bce55f4d76727c5a8dff4322b258e961029672dac41728497b93a292a9c7b6ed1b871a4d0f50200000000c03d8217007d4f75c95ef2a22296d417e5391ba382bea7e48ed66ea493cc4cb9dce9488ef0346b93a3c2b8e723480200000000f42e8217007d4fe3963c91e158e900fd7a45a2e66def9b4a89b8993b1bc90749ae2329b304c9915e664de28ae5dcf3a9713e08920000000000bd88e00540df52969a4a561efb82d0e765c8f54b7c2b29a9a3897295b39493d4cc9f8f6c0992dec3cc9ad561186d0500000000e885042f00fa96daa808d2b0afa0bf617ddc52d5d8e1d729a9a4991f6775ba83fb5a26b504490fb326ee033e489e9a3a15cb7600000000007a11c10b80bee3d763c7886bbb0b085df18e57f42b167d4dbb39716723d9bb21b2a523c99d91f41a6a56c7852670bf670c0946900400000000e845042f00fa0e4d4438413b8b097d76a29feaed9126a5d4d1baa5d5a95547920f9252961e36c4ac890dcde57eaf2e369aa88b57204c0200000000f4128217007dc3d701018405597db47400131352aa1aea62a2641293cd2029939ae8a16e664dd8c23ddceff241d242e8cf000000000000568217007d833ae77df21befe184ae28cf8d097caf86920e6adb8d746e1526e532961eecc26a96ccfdf690e6ec3308920000000000bd8be00540df70629d42a456573dabcf484850fb78ddb25ef9d12a403ab709932ced2267d5fed3eb2bf715bf5a13162a48903446469035c989d8180b00000000701fc10b00e15cafac7c2ce1ecfae9d3fcfb303bb2e5fa6581df2b258e2ce52467db05c8bbff5a1ee3ae0079779cf9e2a694d1b4939838a178bc6724fff54f7f2698e35f3eaf3b71b4ff7e3f3fe2b79bdfa0230a000000007087e0058020885f2a77928f2b485e887e9b3b1be9c0a4c705aa278eb94649b9b391ad4264fb20c92ddc31a94679982fad59b132fa54f9630b92bf9cc8242cc8c6ebcc33b57bb706d5966cf76facf87600337b30d79944980400000000302348f64584668cb7e8e72fee8d8a72ddb79e7abf9691545de1a63fe96343b6d16e4e2c7fe50717166d8fb55a83a45c66a2dd9d587a59c0bef2d28217bf9c35ebb18c989e1a2a212cc8865347ff6a4808531a42e6e86af76c09ac3f57febcdac34d64469804000000004090ec4baeed2d26ae15ee26ea2b8f3f57b73b7744ddee4d5b6b4bf78c6ca83a2d6ac88ae991807468f33be4a1f431842e67adb3ce7f064dc9f99156b65d47b27590b4864b96924acc9a5913ab7f4889f5a6e58ec4b922498f87b88ff3b69157afdf206a8bb7bfc7f8bdf7332577bccdcc9f79b5667b5610fd456e3f6ae35c91d0ff8f00000000004213bc00783c7e397c98b0206bbfdcf772cdceec50fdc2596a26f0fddb35db3283eabe3fe9c0ec8ae99180c4f8cee13b89fab4f858d5186feeca0fb66df7f1beafef61f9f1d6d1c36ed0918b5656ecd8f0eceeb8f81eef4a9e9b39535477eef44bc6ec942d2a6fb726a5c4b1997695989880e9f586ed1913ebe993fd1ab3e763010f00000000f4698217003def97931bc85f2b3e276b4a0b5f35e6accda89e3df127cad9f1b66aec885bfaccc460fd3787fa952914dd1e245baeed505f281fc0442eaaa287b8b0945ccab63d0f692348defbb9897291b3dac019653fac5bf9faf9a262ae23d9635dc903078f90dc621fe3e745929a84f02a4afa4f965ffc23979a2827479361d9bc73ba1d59a36863e533f549cb112601000000a0cf12bc00e85917f61489941fef216b8ab6fe67cdba984fd563bd6e51524933259734abc67899f4eb6212759f153e77323aba478224ed2c2674455bbd3533de69a2a4626b30b31f1cdb7eedc29d95b484b8b1c36fd28aa5e1173f5cdbff7872728f05b89aed3964c3d54691213f67a6ce6f6a83522c36f135b8dc09b5ce92667dd09c4add86644f55e156d1e99c1c844900000000e893042f007a8e323f9facc8cd258d7b36ffa5665df4a72a2f77b3f5fe46279692494db487bb59bf3a62bb2e7fe30b1a9f11dd1e8af82079ee98832e2d619d7ae450b3522ab12ed9b1b960c74ea094cb58da55ce6afda75eb892b4e2efd4c14c82d3137fafafe7be4e18beda37d090aa48a33d5d9bf9107b37d472b5484cb49b8c6582fd4e687253ff51a65010150a05c22400000000f4398217003d863b1349e83fd9f1d7daf4f89daae1eeb795524713df11e4c21c1724dd5dcdcccae04fb439c92f72239dddf9fe3f7e984be8e7f992d5070bffc6442dfed612c2b86dad269be7216d9f916cb5c155cad2a3bd9a68c507a1959bfc89cf3282bb3d48366eca212d08fd8eecff3244071fa39ca5d631dcd6db65399670497bba9bb42b1697a8f66e7f45ede146d6c53fde3b2e010000000084267801d023f86063385cf247636e72a6faff86dfb47622e5f7b6a5f29d3e6796090928d3ac55fcb1bb6ba84f5ec377ea7439c953aae74cae538ab9b15619dbaeeb68ab3b79ffcfb8ab405ce5ac7ade8c0b553bb25e3bb56081c8a25bc3dbb1f9f3490b42bf39ddb37ace5423bf59d6563d9660a9944a9ad5e3bc6fa8935746579dfcf2b93a45cf2c2a0200000000e8ad042f00ba5ff59cd964cdbe7d0e860f5393d553c635f167229d5b85486b38e2ba6d26adef34e6f2f6acfffd7aeb3682d35d3534a4ad2399cf8b5f6614a105aa616f989452a9f5bc61479d485b63ae2de14d2c31a9460efd9d5e19b4fec4de1d038c99ddbbc1b5367c99357ca7c66d508d18d6760cf7fe6ea9259073c15c3d695cbd363122e05c414effabdbb662c41500000000fa0cc10b80eea53d7e9cbc58bc97341cf8c84b1fecd7483b8b9b292729db2ea439714b6fa426fadd71b7945949e3b4a11f1016dd12867e2a7e9750cd994ce836a73b310b679fa364dc8828b7aca68320696bdcb5cda8ab9cbf3a443367d2a54bebe33c5695a48bb8338add516fcb76596df9a1014cd8c20bb49b333786db3648b60fbcdcdf8fd5fa4efe81ca4c18c6bd8e664910c22400000000f409821700dde786d14818162f208c5f94bc664c8f3f42bb8a596e418c9d6066e682996ab497599d18b9ec8ac76082d31d75584219c91cfcd48159abf0574df0f9d912249bdb74239d645d1b6dbdfbb5dcbac1d5f23af4f021b7e8b0f9c967b6a40d544d99d42d23a50d5919fce7aede9be7a19931f137eb5d97f77570ef3fbfe97ce7bce450b766edb2c07dfb2b2afa19c297930da96b715e12000000009e7a821700dde7ea891c91feccc901860f53e334937dae2bc5839af800662fb4c9a4ac6aa81bab0e9bff51cac9a30e86a8a06e09416a4f7792d996f5923e3aa4981efc06bf21d6e698a8bd10d96e8b6bcba657ee4e4759b3e6fd89f4a5d4788f8bab57116753d63d72983444461086b2c3225dc6ea64f5480f6eacd574e7ca0ffb6737ef9d9734d3634734d1e909c1ca2de9fff2e3c183e84a02000000c0534ff002a07bec8f8d259547bf20f5c5db461996055ca1648e26fe9a0fbb1d35b975898d8bdca4f19b4a9dddb5f1f5ef6266882c1e294c36e664131ca660e3e06affe90dfcfd8b723b8b6bba1a2c5b6f70b55e5bc2aac317eebcb033a79f72ec9bdc15278f54f3111f1f5257bae7356645d07794d39dedb2ce363aa8b66bb43c5fcc6afd26fdac4d898eba5298f782216811c224000000003cd5042f001e1d77cd87362991ac3ebcef2563c6aa02d5a8214d6dee40b43596d9d25193484cf4f831bf5e4a8ef27fb7a4843c18b6fc9142d08f5b36f3a14e9f169ba0f2196e564ac56cbbb39136aff9e820b4b5ed56f2e72dd533de6938bf6bc3eb552b67919c87adb771d34652cb9c17e93e4cf1d5ce7ca7d1ba5d566e3fe8dabaebd289bfebd2a4f59d7c5999b1caf3c2e152d1b5dd0518710500000080a796e005c0a32b0a0f278f3b3b134cc9ced15adfa9bf5272eebec8fbba80f6ba925269333dc4b5990ef52baa2adcf8f2d95509cf3c6c1dc71313090b52ab3a3f90895cf4956ab00b4b495b055a5bdd47fbe1ccee221e2efcaa477bb25442e8d233c90b086366c24307c9abdbb791ccbe82979998a5bbe9212e267e0cd7c5ceb8aded606be69f2fe3cf4b36692216e65dca5e33b0362a024112000000009e5a8217008fe6f85765c4b7f905a4a1bcec7943c69abd6aefc1267eacd5deb9c3fb43923377958584d5cc18afbabc26624cf947f9649cafdf4305b3b3c1c1c499800092d991f5a676e6a46b94b51b69b2bf44a7554d9d9d476cf359b8d794b0da25732ace6f5eff0fee3dcf47843f7070bb7ef62c5173f624c16c48f4acf69d4659422f4bb9c84d1d764ced7d6fbd77d2444f1a7b5d99a27897db02db72972600000000c0d346f002e0d15ccbdf45d04e62425fba67b43e785e3d251d64e297d2d81b0fbd3f98ddd986aaf21a7c8b5e169878362f63203d63fa4375252f967c44567f77f439ddba98d5ea37bd6e29c58ef7ee8eeca88ecece47b61b2de54672c5cdeac93e3f52abc3179cdeffb18366d7ae075ebaa37b7f3ac9946c7f569f1415a71ae5f9fbddedb21d8d03dbab8bfbd7124455435c59cdb280d2aa03c52f5c2c51204802000000c05349f002e0d118838348e6fbe303f4396bb3d4633c6e2ba5e2f6a3a41d86b2966e9adca4993bf9ec85f478d99590a5dc029b070e41ca091344badd9b06e923169ea4e4d23b4b6b3a09b21d9e939477f47833e56aa939c47fcfc54d6b5fb96279efe853e55dee4a7267186bc242097d71de5ff4a1f3aa686e31117f77e4037623db3ec6725787a8a78dafbd9cb96aa472823b8224000000003c95042f001e5e7dd26a3ea83085b972c3f2c0334ae920b64d37b2b3ada3adb7a14aa52c3d6c70b33a72d1e6f39b521c34b1310f342a7aadb84874b9aabc9f6e7d7c8066ca5b3f2a25e2264bd0eb3cc47665018fadcea52b5f7393e6bd772e5f5eb57cc8fecdd9e4d198982e772575be52c2b86329a9cf4858a11a37a299e2aefc68f9db75ba3dd65ebd5ca754daacf274bf4d472ece292f2d78a9714760b7dc750900000000d09b085e003cbc9aa815a4faf81107667d5ca07ac2e86bca96c536f63a921d0538be2b69094153defae942d6aa211715b1249d9cd4e58e5af5a285a2eaad19ffce440615d1ee4e26be1be962239075d6d5eb4aa86c3957299735d32386de54ad0c5af6fda6b5fdcffbfb77a9decbf303090b5273a0f02f4c88ff19da456ebdebb2b3b39c5d196fe5c2a84cc26a7da75cb99c11ef595298262a5328b07807000000009e2a8217000fe7aba3ef11751bde26747bb6fe9b5eb13c9f76979bf87152673b5dc0ae044a6ef3e86067960a0bccafcadff067c6cf5b541119da6908aaceca242d88eaecc437aafda72b29b9c4f639cdae8eb4daabf3fe9f593e2ffd86b3a97ac9dc8faeac5afee277919144795656a7f5d22b22444665553f5dd6aaa5eaf1636e2825e2b667393bfa1b75f6592c0157299534a97cbc7ea5572e89a8f838ffb9338ad887de840b00000000d01b095e003c9c838b679007174e23989db983750b66a9292769c723adf63a7d6db6a75a17efd0e3475ea5133e083f5bb265405d9a7fa7a39986c50b4826d08f60d6c624a9467a345132f1bd40dbe54e5e079d4b7b8b83f83b25e5dc9d92864b29d14ec698f184216642875dc96bd59788cb1f1710d579692e4c88df694be865adafd3852ea4bd51dbf69d4c2e98b2dac5b34b2fa52a5e55cff3277faaaf475712000000009e1a8217000fe7d8b4697c60d267ae51a8467b9995d23be1ed81ce46dafa9e0b939266f594b7183a3e74ea0fa9710e17d6ac10556ef2b71984ea62a2480e7da0e86fba8533f5b48bcc3ad6da5967b12b81aca36079f74ca298558d1c66a6e39745ff3f7b671a16c595aff1a71bcc32b9937867eedcc9dcc9dc7b73b7496632a11768145454885b88bba012541451a3221a7041141105a2204a5004158d66342e59c668d418c71817342e7105ecaaea0ddcbdd94d62a08be9530d88d075ce6993e76991f7c3ef01aa6bf9d7a9fef2e3fdd73964b29d92f90b5485ed444989e6e2eb29feb6f585ffe2489fba56ea1e52e39ea9555508d5eb53dbd75d1799b8a7d6327c80ad3c272de4584686c60526de0100000000000f0c3e2f00780f59a39070e1c64dbfea8ce49d52e78eca64391e459227996c2667eed9568db265e4900b9579e91144224f96a47b142171e408ed99dd7bb4b66519899617c3eb943651b5496b789251b5d4524de00c7aa7d4c9244bd3e277bfffc17b8f4919715a171e65f2c8d66d7e44261d8be78c9106475e555a7059edb4ac14d2f318ba4452ef147b74fb41c8484e16a3a3342e30e90e00000000007860f07901c07b1a44b2eac481df3926c75d134d06777b26af08f1a4812e99143b06cab689b1a72a0b179888809d9a3edd6f6e66f65d92661b11e267de54f29fb694840362905e1128aa6cf1be1b494b049bb7b7922537460c769c5eb9e8cfb64126cdcd95292d44f2c34d9bb59533a66b2c1b8b03ede362aa9531331a5a0aaf9ac0f24865530c7a59ecd441b6ce18bf995cff506aaa66cbb677d1de0a00000000001e087c5e00f09e8a8c799aac679fd5546d2ded2b45f595497ba7c7c96d78923dd57653d2e2ea92c960a36c8d8f2a17164c1b78645dc16327834d9ae363c76abf7c2b5a637e63a5ffa73bb73d62c99ef9aa6540cf2fcd0101b5ca7b96deb4a9d2d24a5a4ad8649bebba4ecb805e5f57e4a4bebcf65cb9e6bd0d1bef4a4f6f94acd44aeb0adb89eb0a3bda93138e891deb676965b5fff2a4b96ac710110f0eacb58e7fd97678fbe6a74eadc8d3127cfddd010000000000e0e7c0e70500ef2169e4a5afbed656152dcab6f4ea5a67d6e9e4bbda4979def163b56a3669732532290e897458664dc8a82c5cf84cd9eeb71e26351cdfb5597bf1f5ac507bc2b0d3ee24d2287b942f563ac99358aaa598eef6d65aa95bc86df3cc49b91f7cb4fd91bdc9439536d2b30b633597a70dd78a6f2cf7938a1685db278f3c2276ea50e35e26c5a85e234b7269f7d6f819696fd539a5a1fd7e3cbf7a4998383a5c4bf0f577070000000000809f039f1700bca76ccc186d75d9fe5f5765a57d208604d6a76b4615a1511125b594afc5df4665990d21d02593119dbfb34f1e71c0bc607a7a65fefc5e17d6e477b726276c15bb84dc26e925355da4b584d2f6e13ba74b60f5b29818b7fb5471de53fbfa18fc0ea7a6fa1191dc7b74ff43e665f3a3ac63a34f8a9d826b04229126cab55969294dc2efdad7482640724a2f45c8158be6c493e7762d13eb4902000000008007039f1700bcc35aba46630e784ee378674350f5cc57cc0299ad35d0e06c9c688726875c2dadaadb1ade7f94a55e61b72cc3fa5fb50c1f78458ce8745b55aed45a446932cb930236c76490cd7a9dd3161775f67c4e6a2019a7b3cb16f89f295dfaef62664aa635a6df65c1a4772aef4406515a6f79afa726e84db791f52475ba5a29bc936cce98bae4ed8aa30f7db1270713ee00000000008007029f1700bca3ec83dd1a31304053b53277906374f41573c0f3752dde8f648922ad4d94d5961a48a44d2f9b030214ee7ad7d0d3b978534996d429185b9edb9d9a2a7588fd5eb859993e75dcb9dcf4a7c5398949d6b1434f4a3dc26a9577488908374f2255db7d2952ae366e2dc65579c7b456ea1c2c8bc9e3b61cdeb9e5890b19f3fc5d2095040000000000ad1e9f1700bce360468656ba24f83b96644e2513ccd42fb7e1dd3b7eb4e48d4be8eae5ada9c0deab20d2aea1267a9e91855093531a3becb46de288bd42cfb0efc50e81ca8cae2dde87544b125992cd92eee6d4bf5f2a4d8adb7772fd8adf9f4d49f1730191040000000000ad1e9f1700bce3f3b5a55aeb918f1eafca495d2e8587fe485a3aef9a2995960ab2249325463c22c6122d9a20aaed43fbbcf97582158173b7e12aadac2a92c823dbf77a7f777e9705bdaece9230fcc2d915d9cf0b263d26db0100000000000f043e2f0078c7cd15b15ac78e8dbf75cc49dc22860691b510ef88246f02a9965cb2c48fb6bd794b288fb4d2e4952709f42cce441ee5c67a68e34193409674728db75126adc7b6d151b6f2c5695d484bb2f95dac250900000000005a3f3e2f00f0533dfecf1a6baf2e5ac79b2bfebb2a79dcbefa77fed8adad9e923d5a0b292d75e33d8e47667924912672f434505d0e69b57a23d9b46493fc6e5244d2698b1d74a93c2b35923cc3c2a2554825010000000040abc7e705007ebefff60dcdb5f4148d6355aeae3a31ee9460d093d48b6fc656de6d2cb9a2b59daac9214d2259e99f37a9a037c9a19af0f24a31addec66dc63a9748d65887f6bb76715e72147986d6ad5b21920000000000a0d5e3f302003fcb73f395b648c7f2ecd0aaf1b1a259a7734f78434be86842d4b0dde4a524b112428ffba94c78a3562b2b21656da7a59d3c49254fadb43155c6958864408d75509f1b17674f19419eddd19c4c2c010200000000005a3d3e2f00f0232d4bd454dacb35f6c2ecdef65151571a27da61891c4fbbe9bda674deb687f2a6a13c12ebed791aff36f2c92c4f0a49ab9188a44e57638d8cf8f2625a52d27be70eb53b5992e2efebef110000000000003f159f1700f8a9d89aa115c54ffdeccb738659a2fb7ed1422455c54945865809a39a70d1523c9e648fb5afda369a00d35247565dbc63c2937c36c564a833ebf535965e61b7849993e67ebceb9d472f15cf8548020000000080568fcf0b00fc9c7c2dc74f3cb8b39d7d69e60469409fef04bdaef6aea53f68a96490e1ee1656de74d1d3be3409e3492b59e7e78527a954134d6f5247de7bf434de06438dd43de40773f2f8bc4f36adf965e5ab0910490000000000d0eaf17901809f0319197e96f7df7ad8b1383d558c8cf85130e85b8aa49af8f1481d6b3f1eb9f2a655944722efb5d554edfe78c595966cd2c6a2e93988481a0db562a8a9469896507a7c5dc1afcbe3e220920000000000a0d5e3f302c01dbef978bfe69ba34755d7195444f2bd4d8fda1767bc26f6ea2e0bfa2622a996d4f1a4803cad9e3439f4b64d94d68aca3a3f4d8059024d4b30599fd164546dbceb9767113b186561cad8adc78b963c29750ac6643b0000000000a0d5e3f30240239a2622e9512689484aeffcf531fbe279cbc41e5deb1a13493549f42681a3c9258f60f12477b4d4524de65869254b1879ef8b26ae2cd9a64936599ec5a8abb324c6ef3c53b8e80f82fe2fdab965c754ff59000000000000406bc0e7050037d7f7fc4dfbc5a7077ff5f9c9234f5c3fb04b73f3f49916b24144d2bcb9f4315bf6ec02f185b0ba16adad34e963a56fcdb77993e6f1c82aaf18d2524556adacfad5ee454d0a79e49c29c146d9acd7d5d9268cd8539e37ef69c1f8bcf684cd0191040000000000ad1a9f17d0d6f9f6983b9dbafefed6df5f5fb76cd3b5d2fc0d57766d7bf2f8cb2f6bad6facbb4b381491dcb4ca2592b30ac41ecd44923779e4153396f4d1524696bcf18a248fbcb224919558f248356d6c59026b32ca825e27db13861faac8497d963cc765852b21920000000000a055e3f302da3ad7d2d3b4e4e7d50d45bd1c63875fb78d18f0dd95d28299967317fccf2cc9f33b5152d2281d6e915cfd0bebc299f9e20b5dea04a38744d2dbf4f15ee54a2d35e4114e3551a5a583de481c6d2c5809aba7e3bd11d5e69f93e7a3d7d5d847479fbe98996220cf71774101de93040000000000ad1a9f17d096b9b1344f7325659a228ad7562f5d6ce9ddb5d61cf09c7c69da98aaeab7d7f4261279f5cd0dda86fd894856bcb5ee1169c1ac8562cfae4eaa48b296fa60b56fd244cbdb9451ad0e9e6bd0e48e26b9cd85d4db73d2ee8129954dd6f60c3692e4b8c6327c80b562c1cc88bfeddaa63dbefc158824000000000068d5f8bc80b6ccb579733584ea2afb3f5dca9e7d41ec145c67d61b6a85209db36a4adc05c7bad7c31d1b57b5fb72c70e452689489ed9bafe2131734692f862c40f2d44524dec78123a569ac9124393876dbcb0523e566ac9124a5e69e4d9c633b64deb713f9f1ab16f8f6f2a3267241cde5ad2aea2700444120000000000b46a7c5e405b8648a4ad6f1fcdb523fb755549f1b70563804c2667115c322976ee50e3484ef8d0b2794d4045d01fb5650be3b5652e913cb57d4b3b216bd638b17f8f5b8a48061bd912c523609e248857fc68a2494b0f7993bf9feb33dabdd30498f5194dbc0946bd53e8165a2bce9e9c797645ce235766456a7dfddd030000000000e0a7e0f302da32c5f317286dad97776c1d668d1958670ef88b5b2483947648a7d4bdf3f7f65913779e7f7ffdbf99039ed59aa726f9effb648f5f45d6f4c1e2e0de370583c1a9ec4b4bec683249933e9a807a235b2cc964892a4b0679ee97376964dd036bccd4eedb6890c50e414e7b52dcf6ca8529ed8fa6a569caf2f331e10e000000000068b5f8bc80b6cce58c74b7486e5c9d61eddbd32592cfcbf58bd8bb05441f502b750ba9b1ce9ebcf9fcc6e2ff356724b74b5dbf4e732e6b66b825a6bf431149322b284b7cd4a48926546a02c74a1659c7d0f6f53621544b5469f7c4ba3eeb7e69b5a84bb32c9a8cb59698018e738bd39f3b1317a725f8fafb0700a273378e000020004944415400000000c0bde2f302da32a4b5d571c3e257fd7a769114dea9ceacd739ef7ad790ac41a80b704ae19d6f5b27c6febd3c6f4ee4d1edeb1e2dcf49d35be3a23f138ccabe3255b25809a19a84b1923d4ffbb28ee71555568ac84a2c69e9e1bdc822ab6ed6382b0973806cee13eeacc89a395c0c0cd054043c8744120000000000b45a7c5e405b86886495f0e92fabb266be2b8606caa49db5858c10b1746d173b9a9c96d8fe823077d2ecb385d991d609b147eae5c6dddecadba6c9253e2a9ff1a47cbcfba99dd39b7a7912c59ff2f94fbde7866dae6768d607c8527817599c3325953cfb55a5ebb52e34fba2a234fb860d433a0900000000005a153e2fa02df3516cacb6eac0ce27abe64c39209a74b232294b9087c973c836a34b1803f5b2d4a7db379631d1566140af6fa86d95de8aa49ae4f1a68e9ef6a7d5e2cdbe3c12c87bffde249acde5d1d3319ce36fd6eb9d5258a82c4d1f5f489efdbed772b42e3496e27cadb4b64073233f17092500000000006835f8bc80b68a2db2a7c6d6b7b7d6b1fdaf7faa4a997081b43ebad345aa40c902697f352ad2a92e2e347963257b3421e2953eda7eb4848ff6374b5ad5eeb5e13393ca312c7965ed4f13c9a67590c993ba74744ad31236ce2d3ba639326386d68546285a34c652923bc4529cf7e8ad8b894826010000000040abc0e705b455beb55834e45db9aa8dc5ddab13e3ecca443b41863bef487a4cc81ad34aa70b992a32acd48c2697b4f378733c6faae8e99e5932ca925cdaf56863c41a03ea36ca0cba8a4876708a49f15b328ffedd9f3cfb5d66c1cf3e37e978f5945117adf9f35f1237aef43f3d712264120000000000dcf7f8bc80368cd2cae8589d17e5183bf4aa5b248d3253ecd4644a2df96325673489ba97149276fd7b49fcd4ceef49e46809264f7ac8925ede71f274df0d22392d7e4b46d9417ff2ec3f3a76f0096b42ac450a0b76da278d2c1337143ee3983c494bde9dbd0fbe9f000000000000a8e2f302da2a2bb31729c9936359e618ebb0be9f9b030248c2d872290fde544f4dfa58c2a4266f2c01e49129b524cfa4728c9a24aa9d8f961cb26ae139376b6c782533c8e87e47b24b882c248f2b25adade4d99f7abbf4292976d0e78231c02975ed58639b93b8492c2dfcc5c1c242edde15459049000000000070dfe2f302da2a3796256a6dd6f287aaf2d2e75afa46dc32ebc8d21f46cf72436be964c90c2dad6c223a5c29234f6ddec8278ff87a2b77bc09274b3ed5c68d56a7ea581191d4c952f7ce72656ae2c286efc0e9554b42c5417d6a0583ebd993354307477e2d1664c5967ff8b69f3d0933b9020000000080fb179f17d056f9626396d67ee883f655d9b38aa5f0d01a92582922c94abf58e9e2bd24843c49254dea58e7e2954e9af07a9b9af28a244d4cb9249171bff5c790e53fc41e5debcecf4f4e6cf80e9ccf4d8f975e8c2092495a5f6bc50e814edbf471ef9b372eff0ff1e5ae1049000000000070dfe2f302da22bff9d72735374bc7686dbbb63ce9c878759bd8c9240b0603239134b614281ea15213321ed9523b8e26ad3429fba9fba92584b4fa68a923cf7578d248f618c942a0de691ed0f3f689456991e43bb077c7db9aca39531649dd4294f7278560639d59a7abb10eef7b43ca9d1377fed09e76278a8afc7cfd5d050000000000c0133e2fa02d4266ecb4470dd4da36ad7eba2a75f21e31b87e9d48b5593fd5123a1ee163491f6bbba99ec6da8c77b693c9819aa2cc266b742af76274c953237acaef4dff6e42c379c84ff7bba30dd7f120cb46f63d3112438fe7e14d4d5989a5eb7e5ccfd8298d1d66ffb828ef4fe43b7070e3eadf0953c7ee1783dd9fd72f4fe2144303655bcaf86d4271ee6fcfa54e8048020000000080fb129f17d016b99a16a8b14484681d6b96fe5fd5d4f8032e595224a2c532183c09212d79e36cbb6cb9afab1e251d55e4505684cea0af35eb754ed2a2d9807bed4b3d113da7683290d6cc5a31b881a03b74f084a9e536657fd39de34ce43cc65a726e21c8751d63fdb575ca4fa7b2a6a6ab2eb7702a222e37d6aec018279e31e24d6669e722b2dc31c829cc98b87d6f71c1afc877e0b325f3ba59e386d80483ae5ec0ebcf61d4d7dae387960bb9e93ab29fb0bb002dae0000000000e0bec3e705b445bebfb55373a33057632f5aacaf9a34ea3341af27d2e6bc2b1163b5aa7adb96da42841a92c57ae90a34126124b258630e08a821cb919875cfbb2447278b2181b2d439d829857554268c117b84d509bdc3ebcc913dea2ef6ed596b1ef8e26df39097be126306548b71d17671f4d00a292eeaa8ebe7213121e6903861c42161c2c843e22ba31484497187cc2e8449eedf05b27dfc08655f69ccd043d2e8e8c32e4e8aa3874962eca04b4274bfff370f89bc6deedfbb4e88eca95c5bea11e6aa2554264b6a489d8264b18341a9d555739d523bb907bdbe4630b82434b021c9347a1e439e0493a79dd5d3b94cf569738fb0ef4fa7a74cdfb5b6e4e12587cbfccfcc9f3e45ec1bf1a54b86efac071ae47e0662ffde5f985f9b1d752e3b4be302a9240000000000b8eff079016d916f2b2a94a51dec0559a18eb131a2599109a34c151c4f4243934bcf02d9d052ea5430b8444bafab1548ba17a497c52ec1b552cf2e3f5806f7feca1233f0ba342afaf2c58418a162f2c8c317a6c6ef389732e1cdb3a9490b4fa74d4b3c91397342594edaa8b2acb4173f599cf1c2de250b42f616e6fe714771e1ff6c2959f987821505ff5c529cff78cedac2f639ab8bda67ad5ed93e6b4d3da5c5ed17b85858eafe9d6ccb76edb3744df113c5ab0a1fdff07aeee31b8a97ff66fbeae5ffb56fe5d267f62f7b2df060fec217ca16cf8ff97471c6f85359b392cea427679d9f3e71d5f957c76d2f4f1cfd71e5f89873c2c841a2347ce06529badf0da97fcfafa59e61df8b5d3ad4907b53124c9daec675ff354a02a88c41fd9878d31aacfe1ea4e7bf8948bac6d83a6a48c591acb4d0d987ffc1de9580e594bdf1a7c2cce83ff8cf669d613623c692124954b4695712a54551a2c82ead52222a956522d490c83249b6c632b8922d46b6beafa2ec4b76addfbdff73be7b3f6ef73be7defbc57f98e7a9e7f93dd577dff73deb3de7fccefb9ef3116a2752e3bb5c9bee9d23d11f40b7053b6cb87f3f99d478085916316bc9e15eddd58ef7eaf1aff04812bdb5ba01648b40900a365b8ab4b98c915713290f310c93e61601bd2f01b444a6e1c7b19dc223bb0ea0054f5d7ccba3bb5e853a8576fc0036031401dc04780250097009e038c04e8008007b80ef9ad81fac55680b3ecc15915622400107d355c8eb68917919c2d299f29ecac785352b8db122750671caf393483deff7f8feb700b005580390077011e011c05d80ab4c9b6c0598076006d09aa53b58647ec720d214a317a5e23b0eb11251464d117a5d59f2535568f74c8015006100feb0af01bcd3d80ff475019602ec002804b803f0104002708669a7680027808e2cbdff88cc733422cd8522755b8a2c83d8792595c7069c17d239f20e3cf2e305d2eac7a3ab016001f01bc001821e53619dc3f115be137b08fa1dd011597e3d15fad036265dd8a6336019615b8a4c67ad08fbe92af6bf4891f986ef631a40324030d31f7f149986b3c8347c786cf446c877e1914fe249279391d116992f4f8eed64917a9b993683799943d073f5b72ab64fac0a7d8b0f71ef651269866ab8b23245ede4956bea37929758dd7077be2b0fd1d4d32179c90c378c121506cbf6343221a97292ca844f4a07e836c8d319ac47494618564bed2d1e94b93a4aca7d5dcf5f0bf43a7869b6dfe60b0ba6c7172c9a33f5f49250fb930931868752137be564a5765cb7677bdb79c7f23e53a59ce789028dcdebd67f96bc3c5133262a46333c3c4a33627e886644708866785438400440b4e6d2e8584d28b361cddacf4e9d2cc42ea6b98828286cb5262fb7edd6cc8cf60752137e3cb63caa77c1e2b0a167a2e63b9c0d9b197861fed4d8e25953365c0df43e50eee75e54eeee54267130af920c1b2c930c1a20f702cbeb04124b504725dada7418ef00e6cce2dbbac47b1f85cfafc290659964fac41dc7921677de93b359fd5c5cb87999bb633920f28d3710e06f900fe99041e48d39fe5b3f743f55056030e900b0178004a030b8c537a0236cc285225c7cd6f2d87c0ab08891870b06b868aae39187f9838b5ae4440e3e4f20e8053057af1e2007a00d412f6efee44903a202c08d631b4e12d53c3ab379eae21b807d88fa7d0db046445dfeca0cfaf502f9e6e27913fbc350800b2aa685428e403a9d3065baae425ee1c2ef8a403ee0c25b9ba5b3f13d940d8520561a908c5f1590870bd53e9cf27461fa389f1edc4070790fef3d241d70417257c5729ab16cf4013829200f17e2369cb4e1a21d9221198fde6380608e1e24157cefe10b807844593f25e87710971e7cd68125ef0e70e31dfac27d80d5005fa9d01e700cf42168d2a24a5a712c1b9f11c263c54b804844fa214cfde1f4e0d80cc76851f33c90eb28a26fc0392099c7860e4267278fbc25416fa8a1d28263da2f081d38578502dc56a1ceff023014287f2f8013efd087603fcf05d017482749a0dde03c8325eb189bb3993edcd4bc5f27e80dcd2f78d2b022e8b181cf0edc38c18e75e0591442c79d477e0141cfef5c1df8be6c63647e61da972f5fe5004e1cdbb14c7f6e6a9dc1f77e1621620381e9afa8b58eaa287aa749a4194d436976b6faf5b3c75bdc4c8cf12875b47e06c843c39b1b5b7121aba8cb5d1a5f3c23f736cacf31f6836717fb0242a227931a199025e6c694c4d9f649d9c47145a5015ebb2fcff05d55342f70feb9b059ae27a3438c0b1787f43f9a14d36d6fdaeaaf7edfb1e53f734f9ce4db09555bb376c3278e1e13beb47371f9d9c4daaeefe0e123f48ccccc2dfbe9e9dbf41da0e730c8d068c29061c653061b18ce1e66343cd6c26c64bcb98555bcf9489b78cb9156f1a6961036f116d676f12301ac006c6cec968fb4b259626c6236dfd078c454fda14693faebe98fee3740dfcad0c4cc668495ed70132bdb7e3efe813d8223a23a2424ad6a0bf202f3a986cae7c2532734d6eddeda3a2f3dedbf479297743db53844e744ec02b3b3e133bdff9ee31f777dfac4b4d2291e074a3d465f2fb1b77c211961444a8719c0305efa2c66bfbe32f9f73bea2a2efae9ffd66bc8e7356e44f6e14dac7deb4b1dcd9f9e0f9f119493b1a615b13a56f36a68c02aa98961bddc1ba9c769d7feda32e9e081b29b81de47928bfe563f909808812ce3c70830a8c460061bb8a013bd20e2d874c3d8840bba9e0879079e414fd07b07275d443ace08b9244c1a70626b8bb13d88c0936db838eb2a90b7488e8e9988f240cf0877e10cc9f92a82f60e410f16f40ac105e8698e5c938824932e5c5ce11664a94cbb2a0077d0e1aef4138e9c10910ce569eb5e2ae4b515c0398c9d5d006a1c792e91ac21e8457f00539eed185b2b98e7d02bbc01a081f33c88930e242f9730b6fe1028530a460f92c8cfdfc3bb0e174bc51cdb703105bd924604bde102bd62d184f2669019c796229a0095df6b009ff0e46322460f9216a46783a077f071fd464fa0dc01089de518d97604ed0944a50317c9906cfa3075845b78560ae58949eb7382f64a71f5f3097a4cec4ed01b4ab0beb8c43f0e61cf8fa75e95c65d965e77447b2b30a109fd4c9da037f170eda544ec38fadc3113022ea0b1eb1ca63f9ee7e8c0ba559a8b099aec72db0e8e074b0006027c0f60c2bc17dcb11fbeff3344d44126a6ecbb619d0278103489cf24d01ba9f0b36902690ce5a9e3914d1c23be63ea02653380e9ff90f8c0b91437ce3d2738d13d9c343a03dcc3e8429bbcc78308f4a64b9a804e378e3c6c5737845c1a265f90dc6a626cf7c7e8d4b1da1a7a21e1f85e8a91855ef0317c6560d2fa89509e8314f0241acfd1b0bde01cc71dcf9a89e487c0a998188df2bdd9ad2a621604965a8da8965f18a387b83114790652e72d717ceb75945f8223d5d791958e30ac93da8fac968c1ff5e4da349f3357164cdb78216aee8c53cb22cd7293637e38133dffeb6309d16d72d6affc34317fef9b172c76d94a3567371f8de136f62d274c9cdc7ab4ebf876e3bd277676f7f1d31be3e9ed60e5303ac0dcca36c2ccc27a9da191c936af89938f0406cd2af69b12581e347b5e456864d4fd25cb121fa4ac4e7db87153d6934d995b9fa7a6a5bfdcbee38fea9c9cbc9a3db9fb6af6e61da8d9bf2fbf2677cfbe9acd5bb2e5bff7edcfafc9039fc3bf7372f654ffbe29ebe5fa8d9b9e6766653f5bbb3ee3517cd2cafb91d14b1ecc0a0eb9eb1730ad1ce4eb9a8de3e89316b60e7bf506e96f18666ab17ca4c3e8590e2e6e761e1327f7f29b3dbfc3a4c0a0b680c87e0a645aba7a4fd2884c48960ffe8b4e1d505bbf634b8bfc95719a279746b63b1735b7fd9ff1913dcf4487585d8c981d70393860c3757f8fcb5237872aa9bd6575a98941bd444f9bb9dca71f738b2c130aabcb2295482fb2fcdca90c9edb94047a5c3c961c2d0f872112a30ca4eea3ee4af574deda6293509086547f80ec86af5bd1c1a222cd33aba7aa437ce83e2b16605031c00c4ab9ef60f34bdc60cca383dbc50e15915e1b8ece768c9c05268d4c01fb553c13366f3d71eab7564459c210694052df07230f09157b51d46422c9d80bc194d30b230fc38cd864124b2409da2385da19562044c5bc2ec5d851f2a2138d89249c88f539cf7104d79123c7dd24510afd2668f289b23549a03cb618bd4defd2a68c6db8407eceb10b178ca618796e39953640087a9184caaf52982947af2b46ef128f4e2b8cce3d1165d742e819f3c8e33615b411b28e049a08c005233622083c6b0b7019a10749148afcfcc4693f1491fc16936f416f3f417b9350ba1d847431f6505e4505da09e81661f49063204b8f4dcaa1474e6923147cf635a1ec1183efc1108c4d18468fda480c10c80b6e3315e51586fd1315c900374407f2a4a14628bfd38af234790d42d0d11ca8bc2b791a093aa4fb1a463e1d970f02ed5584382290372e217cf3be09e8c1ba626f961cc4c83961ecf37a7709f4e6d36b841cdc64811ef45b98746245b40f2e1a07b97947d0e3023bd2a299487e08fc1519a9519e9dfe59c5a279d1d2e1431b1a1149e4793b1d1671949f6f249990495232dca0b6748cf5bdb249632f5d993929b7286c46d4e9d83097436b9669afdbbbbf4d584161a349047ef5088457c0740d771fffcf1d9cc67534b5b4ee696de738c2ced1c5cfc9c56df138378f5c6737f78bbe01d34ae786843f9f3177816cd56f6914207c54ee9ebd2471f23479e65c11595c7c957cf8f031f9e4e933f2f98b97e4ab57afc99a9a5ab2bebe817c5cf544565a7653565179bbbebabaa61ea4fd06b5b5b5f5b76edfa907b28d3e0768a8abab97ddb97b5ff6e2c52b12fc4dbe7e5d2db7fdb8ea29f9f0d163f2baa48c3c76bc00e4a190ccfff32899bd7d17b56e4306b574796243e0ccb98f26fa07482607069df7f4f6dde6e6e5bdc87eb4cb64331b7b4bbdc1c37a5b5a3b760b981bd2e6c8d113d84171d7eeac2f8fa62c1d707a71a8dbc590a0e5d7827c0e81babd52ea6cfd50623850c66a07ba2d141e4bd4cdb7807c965a9a90676382678076503fbc3ea9ddd559bebba58683283aac15b1590089e4a0010de53ee34a8feddfd9fe4252923ac487eeb3620106957e984169f33bd8fc1463f31c8fce248c8ee0229aa0c98c421e4efac83331047e079737d4143c2fc3e829e028326ff705d2194b282f5ae0ff06027a862cf9772592419832228924a3b39025c747246d39e512dd3f30f6c231794579a3d9445269f79a10492419d953ace72822198db1354a857614dd3f45d4932641efa873edf29e4b251a7ba75144d219935fa5c532478fbbf1a34081801eca6b86dd9c62e97540e8e9f2c8a763f2a744241979dc8606d6a3844903863462a35938fd1d4524bfc0e48310514785185d5167f63036b9de6f058c7874bec38c0d1042e48d4d80900b7f02ed455f2060772d420792b5de3c3ab8281be4bb41d0840c55ee2302794385a83f6a6a9b31368f62f28e0c5965fa1d81d151eaa78ccecf18f92a817700155da000f6cc21411f1f60cb223db6044df250b69709d4196a7c5522929cfce00821efbd14049ee8f34581f8b0e49a89e487c0e5d1a3d56fa6affebc32726e8674883efd85f4ec10c7b797afd084113e8767e7f47448a9c120aac4dcb8aed4d5ae421ae879e8e28280c5676217b89c4a88e8bf3f63f5d7a1c7098d901e5a6a5bac7a340afbcc9b11a4a16762dad6d8c2aa97a1b1a99593f3b8c96e137c12c78ef7caf6f4f13b1d1a197d3b3e31a57a63faefe4a1437f51e72f5c222f155f915db97c4d76ebf65dd98b97afe48411fc4deedb974ffaf84f95b9fbf8ca00b9945dbd5e22bb0448e5fe0387c883f94720c1a316c6c6514e63dd28bbd12ed41fbbf3289224df00d8a24a24a514209e8d3e57e0e1a32aeaf69d7b1424a420ef24fc01bf650a00620ac9a69cb8d6d6d591f07f60539ecf33e72e90278842f2f889026a5bf64e59c28a949ab08531f7264d09bc60eb3866bf9d934be29871ee3e764e63ac4cad1d7e75f39bd2ae2c23a351e80324daf077f4e1fc56f91b523a9d5a1ea977266681c795397e6b4ba78c3f2675b1bd55623a4c26351848c9c93c3c834a5fde237b1306abab23835e47a987d39d83eb92b5f23667b43e17131c58626ffe821532ab7ca61212c981ba0de5de2e95057bb774be1c19a101f06f22927d308352c63bd8c4790f4ef3e8c09d6254c8c65dbe8985d19dc5923fca23370493af1401fb253c931704dce146861e128dbd21b779d2d0c42c0a7688acf3c38cbee0c25ac0ce344c19f988e457041d920477d557f1c8e531b65e11e8c519443715f2aa0af96313492562aea2ada97c933e81df6db711280f37445b016c9d8aaca755983edb4a40cf87e953104688e7b8dd7b5ecf3278de1aa3c74b7808f439c96b22caff1542af3f8ffc064cfe7044f2178cfcef18f95108594822843c6e3fb3da230cf1bc1d261f4745d4118e08b416d2e5b189db50c12e9409fa522cdc388b8c3461f4a087977d4614e53d466d7cc0b148c843da1d939f2c1e1d3b8c0e76938540130be871e42356a8339e0f9ada668ccdc398bcf39d7decc6d4255707cee9b8fb0d501e7988ef79d2c9e7e91f4aa1aa2c3d57965c3981f7949a636c2f11a83394471f4b24191d5d02bde681f5d88d470fb7e9c347243f21e873f8708eded5e4ced18ca661d5b4696a999e5e6a95abe3bebc1512745c3a6800eddd7a7bcbe75bf228bfcd555bfe351725f696a46482cbad9299bed917c3664e2f8c0b1f5ab82cf2fbbcacb4d6d37337a907fca2a59ed7b33b2444f241021049b58e9dbb68fcaaabd769b089a9c510a3e1318e2e6ebb82c3179e5d9a9054b13123f3e9a6ccad7539b97924205fd4fd078f4840c61aaaabab65b5b5b524fcbff2d61db947502693914f9f3d278b2f5f2583e686503dfb6a53ed3b74a2befaa63da5f56b1f4a477f08a53d7030d5a3775f4aab4f3ff9f32e5dbb52df74e848b5efd88932b3b1a78a8baf5275f5d0e94851af5e575365e515d49367cf29609ba27922f5e6372086d4cd8a4aeaf98b978d3e6793cdaa274fe43235353534d3a485e4c4f2c1c34772ef65754d8d0cd86878f4b84a76ad4442e6e6eda7d6a6a5d72524a554c52c5d5e316dd6fc0bf68e8ebb4ccccd179a5adb3ab87af9747f98bc424d41242152b47aa8bb0262ee9a95a57e744dfc17a79784fe54101b6a7c3164c6bc9220df3c89cfd887125b33526a3810107dd08eb0cd74e00547daf5126303f2f282c0f511274fb53cb12cd2a4dc67cc25b9f759f1bd91a873950c912c9be072f3afbd599d9a8964d38824a37704a3875cc0b1f4d867e5c6f2c8bd0f22f907c6c60a8cae5822390f6397f7d285ff437f5099488ab40b171a8a4b4fa03706e71d56e5966055c8df70822680fea845848ab6be666c412879bf898f8848127498392af452e906cf26d86e2692d49bf10e75d14d21461eb51044caaad81e1f1b91c41d9be0238407303a100f080ca9221a93c4bf3132284fdb5e916541b5196cf3ce18f9a61049dcb9d24e3c3a1f059164f422307ad918f9388c3c921012f46601dfc57c6b79f2c63eb3ba9047ee1f23928c1e6e433551c5be088125925c34b97334a369b8537c590de26666ea0f95533d4ba5031467e574e81b43fbcbc32529e930fd3ae9288bc7a5be2e978a2366af399d1c3b767ffa9aaea939bb3ed9133eaf4556f06cb5c81e5a1a477b75575fb8384eddd36b628b2edf75fddc74a44d57731ba76163c64f98ed3b2570e79ce0d01b314b96d76ccdded9b06dfb4ed9868ccdf2f05040b664801ccaeaeb1b648083414f9f9c8b011249ddba7d87ba7bef012069b572d206e4a8538567a915296b282bdb51949b970f6564664975fbf167eadb6edfcb09e337ed3b82bf7f0004b29b1c8abf7ff8f9173999d43530a48e1d2f909349481e2b6edda60e1f394e5554de7e430e153fb457f23105886ca3cfd93f0a993b77ef517575758d6c3400fb372b6e517fecde432d5e1a4fc5c5afa0ce15fd4dbe7cf54a06d29701922c2b2bbf49deb8590949b46c73e6d686b0c845b513fd031e8c1d3f21d7d9cd236c9ca7b785e724ff6eae9edeed26f907b4b4b473544fd0d26a11d2434b7dc3bcb16a7f2e0e6b917a30bf75fec6d53dcf2c8d987279ded45dd7fdddcf97b93adc930e1f522d1da44d96f9b91517242ed6295811d3bb64aae76189beaec26b89ff9a91b7a1ad57f79dc8f9e2dc6f09ea101fbadf8a05f17111c9408c1ef69c24d13874f401df604abc1f220977a75f226cc09d45a57039423c91445d5c006f83fb47bf9794f8ff1149b677c288a0cf4ba26ea03ba6824dd1e4ef1fb6f5311149dcc53646efa1af3413495a5e0d93b7a3085978910b2a8471d17b688f8f8d48c277fc31c266156a5c23e8906745f832eea6dd5f3169b1435667219ec3f06694f747f00c3ea31f8fc9cf788c7c5388641646e7bf3c3a1f1391c479e66118701b84bc31461ef9b525e0f3312c1954ff4046e310f4adc68ab3a4f0ddfb89a70cff349134c1a4076fcfc5794d9b89e4bf0d25a911ea006a959b560dbde1e5fc4ca2dbaf81097584b77592525bd3c7e5139c0baecff45d75213ad8a360edf21ef07c5dda643fb5df9c9cd47f33eca39e6664d4225df77fec9d075854c7da809f5dc8bdc98dc9ff27162cb15794d8d0c46e820d3b8a1d0b2460c1820a584041144b2ca8a8012b7683b1c48a8208a2838a1a8d3d8a35f726267663f406d99d7fbe39e790e1ecccee594059fe2ccff33dcbcecc37674ed9ddf39eaf3576b8181aa2f7f61d5ea35b8f5e9e4486f5e93f70f18490b0e3f31746ffba7c659c213e7e1b5efaf572e3eebd09605d348c9d10626cd4acb971def30411e00000200049444154a225c6478f9f1a150ba102617ffcf10785c87bbfdea780f7e0e1630a7ef03f812eea6e4a208cc87d701bcd058c65cb57c065ca7d844b13815780c7b21f95c7e5483b582a2367cfc357afdda0f33d7ef2141f3b7682c65ca6a41ecbb13ce65ecb0b4c8017bf78f112abff1460ccca7a45d6fb0bbe7fff618e6513e6bf70f10a1e3a720cae5db73e055c584fb3d66df0a22531743c585c1f3c7c64bc96798bbac882d5158ec7cd5b778d494929c615abd719274e9df68480e5490294b1049c878746447eba76c3960fcf5fb8ac5fd3b4a67e978787c3ce169d751bfd7a399ceddc49b72025f99d036b9755ca981fd1e562e8b879d78347249f890c1d99b22af67faf848e8ecf6cd732ebba6bfd57c2322f8d18d7d6a60424870d3abde1fcc9774e2e1ea30729eceb56ab20db0249517c8cf0693de95b60c5977d4180e407484a27ce9be73452dd20a1dc6e515c904452163bde7e6b7a5a5ec0d78366904452420928bf22acf1c65c0f4a96be4c245b1510bf2407dc2038695cab1d242daf4554f6264f19995573db41523c3f08afb6e544c158a1278515e7c3a640529e5794bdd424ab2d9212db28fdbcef0690911c3d2869f342ee07582cc31923ca68aba9362b8cd37a8ee5f17901495ed910e1c34759c7664052d6e5c50a82b871c642dde9a7bc7d46fc84539bd05fbf11eb05db31b110a3dcaee496be63de34488a8e010837bb31d2089248726785248690bc2a573847bebe68ec62bd5c8de9a327a2fb69d5029fcc6e6db3af37ae67bcd1b6a5f1e6a01ef76e05fa6dbf1236cefb44f4ac8f53b7ae7a7f7c4aaa7ebf87877e66fffe8e0b860c7100909ce35e47173a31e41f4387f9d7eed9bbdff0566ddaa7b9d46ff88b7bb71e4f376e8e37ecd8b1c71845403168f21463f7defd8cf51a7d4ade2f35a61fcfa02ea800771fbb36c621e1d329c83d7cf4840218001b58f7c0caf7cdd6edb85d97ee78fcc4508cd0496a9d7cf52a3b07f2002abd87fa5340038004682c55fa2f29e9541a7f54a1226d0797d798156bf0b367bf53d87b4e60f5f889d3787f42123e783099be669c3e4bdb953f05081548e45925a10de67b4ae6bd7de72eb5a442dbf5cc9bd8b39f57ce1aca11a1a04bf6bb4a8d5a784440208e27fb1715bd0c0ff11b81c7917d4c3e9c46f6f15723002624f621906b3c7428d5909878d8b076fd66e3b4c8394f7a0f18787ef4b8a08d21d366f893f78d56ae59ffaf99fd5d29487a3ad7d62f0f0a7644c1c10e77faf7d1edda155f2c2536aada9198a8f7b7edd8fac1a5c92333ae776f67cc6cd1989614b9d6a07e368d7ffd8463996cd8c098d9ec13c3ed515fa4cc3f7d567f3b36560752d8d7ad5641360492b22e2f901c7e384cb20722a95cc53d668cd9a2c8a86040d20949c9844409780254ba952cdd1490f67e82b9cc06f8bfa6eb41134822c90a7347ee13bae1c86359b7b350a69d172b066236bb29a36f0749cb6be15984e0663bdf0fbb901d2495f1bc0c9df06088074bf182b9db14c0f9b0459014652f35497043da3630c70e1e2af26eb0b772f4d8ef4feec33724cea4eca1713f4489b00e0bc65b059248fa5de1c5189a754147b60792a2eb9b9b780a893324d7518d03e052b2a743ac9f08f80670b6c15a7a2d65ce7ea32029eb8a4a6ef5168cd70a92fd99be8e6c5fbebe68ec62bddcf176d681fc67f5c290ff8cfff2c59d615e176ecd98107d2d6676b3ab0ba77db82f7e9de3e16edd1c368d1ae530715ca0433de7da8ea3478ed6fb0cf6f9e7b05101e57af71bdcc7bd4bf7b5cd5a7dfe638dda2e4f4b972d672c55ba8ce1d3569f1b66ce5d60e8d9d7cb58a152150a4e4e14eccae0ce1e9ed4c5b371f356b49de8500804d754b0d2018c41bc2140e5defd0731e8433fbcba3470c53b77eda1a007a006af93c222e81c608d0458540420122c92e0ce0adbe9deab2f263096a30b964780c684038728441e8057d20fef4f7fff03b542fefccbaf78d337dbf0eab51b3124cc81f76c1c25fcb1319300b8602505eb25b8cefaf98fa2dbae58a51a5d8bb236d81f05282b54ae9a03bad05ecba52eee3370309eb770310e0e0dc3755d3fc12d3e6f8701c0f7ec3b680c8f9c63a8ee5cc7d8e433b76c3fffd1cf02c64db83b726cd0b76133667b472f8dadbe7dc7ae77bfdbb2d5c1aba6b37efa97be8ea7a2a2f47b7d7c1c7e8e08d767ac5ce2706c4164adb3b3a6845e0df4cbc8ecd5e5d98d564d5ed1acad0d205ed2954dae248164f34f8db78386d1a428bfcd99a9bb1f35cf0e92fc39b580648840d7e4c931920ac02bfd0735cc5d1020595e6e13d5b503179a8f18ddb24c9f0824c70ae6329b4df0355d0f164112491019ccf45902c964795cb6ead88025810707091ad75ad440126e94a79891e502bd3c8124921e78f02cdd164b66689c5f04924916f693572710a4c881a43c372f1957b460ee34c1dc6613ed683c1f2290bc69e17c80dc11e8e617244b20be4b698a6a1c3c14541e7a9c90dbf670f4c0e54f5d237627d3cf2d648fc46ea3dcb21f1cfd7a02fdef05e3358324924a42f062e520310ab77621a36b6b2029aa853b43305e544248fd40967583857c02909c8e97c579854a0fc629a128f0fd6129b1526180e44ec136b9b538911824c1a2ef21bf86a1dc213876902c4cf9755a980ee4f6d675ae77e216fb5cdf165729ede2653d9a3449773c2848ff6dec4a870d9bb7eabfdbbdcfc1bd5b4fc7217e234af41fe4ddaa43178f594d5b7e76daa57ec36c0244c612a59c400c00922c304980571997af5899ba95c27b8049002b00a8924e65681b40244055cbb61db07f4010b53e2e8b5d896bd6a99b03910a50d672a947e3231f3c7844dd5efb0df6a1ed303fc0230b6a15c9bcb09d3efdbcf0addb7773ac980f1e3ec2c7d0496a813c204324fb0aeddf9fbb48c113e015d60c719513a784e3f4e3a7f04b29a94e2ed75770618dff76079e1a310b77f5ec83abd776a17ab05f346eb3746ec885575863a56a35e8f150e23915575c382e8a4b2e6d233ac54b94c2254a3a419f118ebb6bd316864e1e3d8d5e3ebe460295af460504669235ae8b9c3dafe798a089d5c971fad79a759bf4a4df2166c51afdd66d3b7531d3237547222274bbb66f2c95be6866bfcb8143d7dff4f6bc94d9bed58b9c6cafae90c55506c9d6cdf18dd031f466fab27b8722e3d60a826c0f246b09747772c6b27131664b2bc8e30b0224ab32eda2e408f1cc18f626560492a2ec86266e5c6fe07a108124dc68828b0c1483565b0acc250680b81905664cac05a46d2f675b7f5afac197758b1a48e655f20a929504f309eb355a39bf0824f32a45022491645185ef4d1f649a691912b0cc47e2f82691eb5f9eea35aae61681647e245f2029afebb8e033fe2e33a635d31722b7894a11d566f4de67ae0b8829e7d6ee44e29216ce1af7a1aa40ffa660bc59904452fc681524959be059a4d2b45c13c8f640729a4097fb1b41dacb20fec3aebdaa710bd5e71fe5ae9facc88f2a3dd65d3a5ec3fa0b03245708b6192c182f0249736207495b917be19d74f7a383f477070dd07db370917e7764a4c3befd89fa55711bf487928fbc3b614a7807e7baf557d5aa53f71a79cd2a57a1a2a19453196a8124c06364ad811420093c524ba40c448a28564816ac14f8cb81c00a1571650258305602b1bf7401b6ead46b806396afc64f9e3ec5c303c653c0827618475d5cc9b8f2e47d4bb7f67872f8741a0fa9580c013e538f209ca08648958065322d2d1d6fdcf22dee3d6090147349d6ddc2ad1ddeb1730f99eb1575c1cdbc719b5a52dd3a76c5359cebe4c023802d75b555edbf89a8fa291493fd57e23d95fd51fea78029eb80cb2cf411e036346adadcd0b653170a965d3d7bdff3e8d52f6588efb0f09973e637ddb96b6f31804822fac47d071c0fc7c4eacfaf0fd42f4fdaaedfbb65c50767674f6c7e29c47fe6cd219e9733dbb4caca6cd208b2f4428dd0acebee6e59d72282c75ef0f6d61179a3c951f22bc8c64052d6e7a54187a76b6f3363201be57fe53ef83175d4306f4180a433d30eee57bf0be67493c7fc0fd32602c968c11c5f14c2f520024973620e24d9241526ae3a485c3fd44bc35a8b1a48c20df54e33c2bb3102c92b483610cc77b480ae1511485eb6b09fbb057ab60e927fca6be0ddf8826b3dc47055b7b096fb82b9dfb6b41f1af6530492f72d9c0f109e0b34484180e414c1dc1d9931f399f63a729bc80a3882d1635d678545e349df39c15cc25a902afdb202fd1f05e34520f94abe8678597e4120ce9e5be350b01d5b034951fe805966744e73c6c3efea3f98319972fb35a62d5cb0ad32cc18f661b3c5e38a0a072479e59940b80f92911824f723c98a0f998fef8a3e6b20f9fa40db25ef92d9d455f764f7620049ddd6d56b1d681297759b74bbf6ecff2701aad607130f2f25ff5f1b3f29f4954bfd86af08c01808c01825b7d10a2616378b2280abd2b2651104c089b56e2a963cc515146a42420ce5948848ba7db0582a164fd7662d70c8b4e934a61292e9803b2a647dbd96798bc620e6b8b3aaad918a307d283d031f3d7a1c1390c6c54b96a2d0dab1bb2785cc55abd761b70e9de99a007ce19502a40ccb1621d24a319993fc5f5a864b804a029ac6cad56b1a2b55adf68a1c2343bd469f3e77efe271b5bb67df65b3e72e6c7b38e5e8dbc74f9cd6659c3eabbf792ecde1c7a58b751911631caf44f4d21f895b5cecd48288c6574302226efa0df8e186fbe7d9d71bd53364766ff7dbd5afa67639b764898e881d24f30f92220b9d3b3386ad37264ce7ad9ab72040b29eaa4ff4d41c8a7183bbd63b4c9bb516496e016e24dd3c3dd620c2a2eb66f655049291449a20298e0f6292d85856d1d366d877e506156e664dea1622e989342f039fb04400a35bd440f28dc648222943286f3e6e79843cccff778b91342770335c47c35a0ac32299aa41f7b5c448ca733714cc1dc58c51be63af336de042ff1b47ef1b660cfb5042e8a68ac471689f69dc07512dc91382f122903427004f9ec842dd64d5766c0d2445253db8d6355967ba40a795dc5f87699bc7e8897ecffbc9fd103aa1c49d82e7809687cd850192a2845426f19ef2788b31924872975ec7f4d941d21664cce8b13a024e3ab040eed977e02df27fc5c4a4142f22df11797e242ddd90927acc907efc547652520a9e337f116ee1d69e8213000d4014c01d05bf7cc0139b2447049a6069ace9529726cd81243860597469d888c642821b2d405e6aea319a9407fa41206e9126d5d99f980b124dfee7b4819b2b940681b8c9f51bb7e0ce3d7bd1ed50d75527c9fa08eea94e32c45a05d40520acb556718385f3025049de67bb3470350687861976ef4d78967c283591ec535f724ecb251d4a7debd4e9b30e7171eb74f7be5ea27bb03cd0e1ecf628dd0f73a7ebd3b7ac2a7b657af0a43bfe03cfdf9dec7fe4fcfcb01aff5eb55247c4eeda9a7f906c24d05fca8cc990db20fea6bcc6790b02241baafac045e98c60de6172bff25e04921304fa9305e321cbeb1c247eaa0d9693d98893725dc331d29a6ca714fa2b4645049283197db8911b2810decd1058a0cddec4223b485a5a4731c17cbfe4f5b3ad9affef069250fb141e7cc0f708ef660e6adc997547477c374f104d96310b73db2a480210fecc99fbbcdccf96489aafd2e5256ff9459e13bc3d14af949c6cd08235f0e22d357fbe91f4108da72f4aee2302c9af887c88a4df5d9127ca76adc71dd91e488aea22f6cdc3b19d2ef74f66da5a327a709fc1f3088a95fbd9244c0b34ee7b6180e47ec1365b0ac66b4db6031e53ca435a3b4816a6f80c1ba98b5bbf5937222010e2201d0f241caa9470e090d7a1e42389c987d31e13803212e03010f83090762358f12089cc8993672864cd8d5a843b74eb81eb376e22b9731298a46e98f4b542bec152edf2099637c8bc4a60173f7cf49826ce2130843f69f999147759a90a5e181d43ad9090180712f65cba720d937d201099646a85b4f49e814948c47382c028816a1c31f32bdcacb51b05362599508e15f20d42246c4f71a3555c60e1b551d316b84da7ae3870f254c87a6b24e06820e7d39842ce2739b78f89ec23fbe54bf6a9320164dd951f33f53b76eed1a7acf1d3a74744e833889c8d99e7783e7a66c38b8ba637bb103387c666142f51aac824da0141b609926c4650566ecbfdec13cadd56acabc04152ee7745fc841270c3538ce91381e400c1bab8093b18bd18815e6c3ece9d35e53fe0e60c60364a3097e8e654ab98cda888ec20a9652d3cf8827396efef29547440b22447af9e99f17182f53560c6bc47e4df9c31e0f6dad1ccdc22a031298f9087f361932029cfbf5a70ac00ccd90769ad547ac304eb8258fa21ccfb300bdb5f2698476b86e84e02fd7982f19a92ed2071198b188debb23590145d4715cde8c0c3569ecbf771b93f5dd92f645a5e2b81a37745eedba1e5f3ae9aaf3040f23647374bf4d94356d49144527803807aae9c03f9fe40db45bbb46ae7ae77ae5b9ffee0f6ed3ba05a5844e4e88484a43d29a9c7ee11d00080cc06802462645d3e13e4d7e4e42334610dc41b42898ea09030dcba7d476aad53804ac9a6aa6428cd89f153591fb508c41b9628e5845bb66d8fcffe70816676bd71f30efee1fc253c6a5c30dd86dfc8007ceacc396a81bc70f12a853e137755b5f02c93829849e8076b27b8ccc23e07044fa696591a0b2ac3ae141b5ac1ec7e5a63996575940cb7307f2ed75fd20ff00e719afe018134d32cc033403f39970a40c379a4e795b46593f3fc808064c2c10349fdc96bf1d89571baa69fb5d187cd984d41f244f402fdbdf04e8a05b24801a422c80641529e6391600e58ef5ce67d672be67c2d206961bd90a152b9011681a4c86d8a9b5a9ed11b25d0f3cfc7b9d30c92565c579069f15b337240b04d6e616a661b7690b4bc165e391d90a258479217c7774bc33acb73f484aea44863d656242edbf3b3e8f822c95380a7f3ffb28e2433bfa7607ef04850ea27024ca841a19a400f00739ffc3f0069650bdb1f2298275ce3fa7dadf94c23ed20591a494982d4e3609f2cfeb6211b024924fdeef31ef6701312a9743770f4e0012c246b53ac6a6b387a418263578359cb592bf6fd4dd7912c23d8de31333a9a415224f9fe40dbc5b28c9b18aaab50b9aa7e6268d85ba1e1532b0ff972e8b8413ebee7b76dffeef9e194a3d98989871580e45be818a0044b1d000b8015b88e42fbaab51b706844246edfd58342a592ad1532b402fc00582a7009164c25294d5939b63047205652aebd0852b5a63385a890693368d6d5972f5fe2e77fbcc02ffffb277563058be19973e7a9287190096a97554b50690e34e5b84a3a2fb8bb926d1018c3db77ecc69173e6e1769dba5298833502f829719eec7e29206dd67229f72b1646e558c0dc00a94a1ca892940832dd4296dbaf97afc63b77edc5e07a0ceb028054d6aa8264004a03d917b0521a52528e3e24c76e3f39979e31cbd7141bec3bdc81c0b1de77e060ddeae9c110275b24211204e5112449ff2ad10f0c2a18906c2d98632af3e3790b59510f0fbd5e90040bc54f82f9151181245860794f64ef9bdb3fd2e72dd8cec07c5c0f0505926c02014b60c1a6fe6705ea86bd6546cf0e9296d7324d30a7e6073066e67ed3207983a3f34cc33ad599a0b32c7caee204eb5383247c6e456eed2b05738bbe831616c0f9b065907c5f3eeeeaf9c1ad4ff1d88813e8f2bc53e0e193e25a7f44c3f64540aab5d410cfc5f60512649746d695ff08138c85df13b34998501e4012e5ce646af20003e51d243b0bf4266938befd05ba6c56efee1c3d51fc2d1b3b3bce8aebf44d83a49f607b83cce8e40924497f63247d677be6fb036d17b1b8366da1ab5edb45efd6b18b6e7cd0c4925e83bc87fa07049e5816b332ebe2c5abc60b17af1809504816480bd63905aa14b0dab7ef207d05803b7aec043e79f20cce38f53d1dbbf4eb1578c49871b8496b37ea96ea5caf3e2df7013004896b4a9672ca8127b0b095914581ade2259d68c90b487403d6bf4b97afe1ec6c03fe332b8bbab60254debaf313b54c1228a22eac0a401eb4b41f1a2c91a271b47408790fc00650096d1b37c7e3f019b3b17bb71ef863d7c6b84a8d5a743fe54438396ea8e5d4d0ac0268053e4107001cf61ddc689debd6a7c7d0bdbb279e1231136fd8bc954223240482384e807abab6fd897f01a43a9150eea4420672cea9cb2b99e779f4b2e571c303c6b7899c33ffbd4d21a1fa51e327e866cd8dfa5b8124926ea014b72e78fae7a8ea2f08900477175ea205b6f484557516d16b0449799ca8b6a4225c909475170874842e6f482a3fc0d3b198f1d4cc9cf9064924b9f32ae709ae8f4a1a74b608b6dbce8c8e1d242dafa5b160ce651a74a1c6db15599a73fadf3448f2dcd8402cd5da6ba71a7fd7c2f838c176787524459f798026132b1992bed71e70c6c38da8d9df112401b1723e4c9297201b0649791b224051a48795e74311931ac382795238ba1063f79e05bdb710df6a28fcdd40d681249cb7c782f1a32cac2d2f20c9ba199b643235739e2c81e4218e0e3c202caee1dc40dc282f3c449117bc6b11494965789f2745c08ddfc98a6bf48d81a4bcf64b1cbd5bc80c14a23c802492eed994ccb7bf17c807da2ea652ddb98ebe46ed8f755f2d58fcb697f797cd067fe1bb7ad69cf94f8ea4a51b9f3efbddf0ecf7e7065a12c39cc5ce126cc9164005e200aec052994e2027ed683a3e98988cb7efd88557afdb88bf8a5a8c478f9f8087f88dc05e3ebed8b3ff609a85b54bcfdeb8738f5e54e07d6fafc178b0ef30ece73f1afb8f0dfa3ff6ce043c8a62dbe35fc2bb3eef7b57bdbeab6c57164110902b2888c8724550143754041736911d2e4840088435be04411623ab2c6191e5b1045009ab7841a55904095bf68d1056814020249064a65efdabbb269d4e554f4f028668cdf7fdbf99e9a9aaaeaaee99e95f9f53e7908d915b98f531f5443a397a2c860114b7bc6da2f0c4e1ce71bf4dd6554f245727564b138cf1398325106eaf70278ddcbc8d842f594e2890910ffbfd8b8de5f9575e67300dc0ac55a71e05433dca2c20d1c80d49aad5a8c982f83cdea8092bfbc2abedc91b1ddf235d3eeccdacbcb3e62e202b574790c8c8ad643bdd1fe618f00e6bacd002eb4c6e0a9dee9f0f46611d6c1e3d2ef1dd7bf60b9d1fbe94857a6fdcbca53f3d6fca244c6ac50349f37a916b82cfff53d2a6639034da592869875fa8f914e9509383a4ed45b55638d262232f6565c985213b90aca589efd82fb7a9230bb55e12901c2269d3712a125ab6bfa9de2f0eebc8eecc4ad70a69f23bf9c5813f595b6f17a3ad10495bde40b299af73e0a02fb880105d185ea5badf4b5d7358feb682cf3b4afaeb0d24ff5b526f8f977ac325f53a79a91764295f2427ada5fc62c97e8a7cf78df995a59610ba66db7c6f5ff2d22fb35b6c91b579389e92767739384ff648eada42ba8fe7a2c80d912b5bb62fbabdab4d3d44e57414548c967b5dd286303ab6a99e687d24f65bdda68eec068330c2b8268f5c8a1bb67fb1d98f2888911424351d5acd37634537887c06494deefa5b24e5934d1bbb256d40dfd8d48bb0a9b7d1c773f425493bb7032445ff39806969f461a35e7140b2b5f99cba255f68a5025110f3a3a0e65ff9a12a7ebdfa0ef873970f7a8e1834e4e3e8b5111b722f5ebaeccacbcb77d372eef8c4140662b7c2fdd30c95003b6e1983b50cd083758b7bf7ff42f6fd7c88ec3f70885080217bf71e60b0b973d74fac0cac6b2ca8cfbe836ccde3fe0351ac1cc09159ddcced8bfa6a0793a6d7dca20a10fb6ec74ecf6b617d877059d0de2e26001f07bd88f55f93e5ffb79a2c5cf415cb3d89e8b7c1133f63c049618d84cd9843162c5ec62c8d709905247f6fc022e66487d1a6d9c576ab19208b6371e520bc63971be7c4a1c3c75c53a7cfb8dea3cf80ddb46fed4e9f39c7d21af4ec3f08ee52650a28e98f4a13c98f921024351d12f7997f940465ee95b4e953da014dee2a03ad2dc6589f97b415eea59ed965b58d97b20f69fa45ba683f529034ea8a2e3061d1135ae5e8f6ef24fb290948064ada74b4ee52d3dd54534cf59639ac27b39c5d92fd416af2b4293e8f9fd699780bdb9285c0b7bda8d2e41731d29b090efb8364ead705ed22ecbcf0f78a6e7fda525604925d24fd0df1d21fd9baa0635eeac16a21b20c6db31907a0d5ea1a699b4f4e9387e37f4e52be8da4bc5b326fb0704509cac375f73ec93ee03a6fb63e8940b2a2a41fc2141596bac725754b9c96c4b48f7a927d40d2a0699a3c8723b4c2c73e88d6e2c11a58d566dee37cfd5da09fbf23e9af2cc235f6238242487aa353132f09b003c94996b2f505656437158a80a4a65bd50668e2b591e37d3c36d61b3e66496f641afb97d5730cb2465b324bf2175eea89dcaf8520697cfff15f6f4d7b0588eceda08f47247d94fd4fe29acdec821f734bbed04ababe98f5a55feb76affa5300f8af7f0d0e68fe61df815b29209094d434777ebecb45cb10b7dbcddc4301779b45ae90dea04c0469a6bae628a91cfc20402b97d905739b49dc52682ecf2d8eac0c85b36da2fe5ac1560681a6cf60e184a513c0c622b4dac0a7149e4de290b7c500dd6d0648c382f8c30f1a0b5284dc94b0d8e2f5ee3dba00cf700dc6f160e0484112edf179f380b30c749dbaf15ac686b9c4fc528884dbb03b3b3b8759a83f1e353a33e0e3910b67cc9ed770cebcf0724f366d8e603c65062635791082559a7ef7920b80840bdd1f2de5a2056dcae0146e447ff6a16ff801cc94b4650b7492f664c169a496104dbf7835a7d9e8ef603f32f7506f2009b737d1452c2e747061e26794831564b0cd9f674940724971fe484df5ada94c563bacf784cd78849115b5c251f9ccb20519495b324bb2a31ca596b6649139bd4596945965bd8280833ee1fcc9967ccfab58cab6d28a26b41601910ce4d779e98becf7016b62bda57cc15a2ab7a02ebc17fe66298b801bd69b2d5ecf474d0c79d2f3d0a8b3565207179845e050d3a12a5550fe18e6c752b6ba56d44a2402c956923ec0f5cf6eadf19f34b97ba030054109cec314c97e6cdd5335dd9d5754ef451ff77f8f602e8971bec305dacf54b6a1563458152efe031dec67bca4bfc27421469dce923a38df8bdcc4d0f41b32a2ef02d6d69bffbb91fe06de38330565addf7d590455085e33b8495cd9981b009c083aaf783b9e92f13794ec17735edea69e750db4f9f7c4768da9a02dd98dd4ed3675908646e44d9463cc3d3ec7f513d673c2e3e7a8a0ec39cd4b9472635fb82692dda8c67eee3609ef7143d0ea72bcf7967da1ffe8c2c53e02ea0c193ae2c1f7bbf70818161814470124fff2954c371eb40c834817e5c91369e945e1c4178ba42c908d17b8e1ae984e55084ebd01a20c9c4caf79a0a0e3d1710ca0f6ec3d40129292c98f14e218e03a711315af3b145a29b9b08693883aa55c00002000494441548983a145e6ed1c1ca516475f2dc7929b04dcc2097845ea149c1e00cae8d804f7ac39f35dc3468d3d103476c25b4b97afba0f515def7498347e68b0064ab40ed117ed31b509c0798b2ac6a63c22ed3de3433f456be7b066d197a4cdb04af436fe5864fdc29f6c2d4b3db88358135963be007152972f4dff333e28d8872d489ae610772b451624dc7d46fe4cbb35215071ac68b828c1c58f6c9d0afe14e15a5853521f7f9470bdb3de65c51f2c00be92cd78b1d64e965f0f0200e10ffeaf469d2a927d71e18f167fd8b6ae9b465b0d34dd8268d7166e0c5477d016f276214f9ce8e20eca34dafaaba51ed60cf6d1ec8335213f5bed127ee71b6885d7fb72e146092ed47151284a6901b535b573bf31bf223025c63904c8b45ea4e25877a23a64334eac836ce6651c88962a5a538673ed98712ea5098ee922aabb6cdac505a99d3bfdafc6b8456bb570ecb324f5b00e0abf8bfe963ab84925bbe970c2381ef192f3c99c98bd9c31af8992b620dc28794ad06f40fd1a9b7ad83f2ccfb7e4ff4c13a7e1c071b25dc726a98773b55c31fa00709eae1504eb310b564178dca408e61ddb6cc155d3c1ed239b730142fec81a92dfc21f2475701376a8665805e9735badb067507175af69ff8d34fba519de94618c4df85befe0b898632f98258d606aaa2baae7380d96a60332c05806693817a65a8f9ba60705dc5982390340e2bfccc97f15a0705309f6c5b5adc45fe43fba7a0ffcc86f60c07076a13f6afc2755dfefda7de1a429d32e461d39eeba999beb3218923df0fa7a760e7331f558e14a02244ea0ce9b45cf0e688bb30f4b19eeb60a500434a59c38c9b63dd3aa0d69dcbc058b7c0aeb24dc69517ed3a6ed0516523b2bad13d0f4757e9dcc5771e7c6da2fc32a09984c493dc96e30e0fcc877e5bb2958bae8f9e1ee3f38206dc8f051a1b3e62ea8d8f0a9a67e351fad7bc702a5a65f5496f40709da626af36e87750efbd0cf4e82fac37c1c6b4b87fd5a60a9278a12c9d5d4cb3e45b925bd82a4a97e054d5f6b7740d00eff6303e476a36aae15c0257257fa7497ded89f6c6da455425732cdde2d09fa54524f167845a4f6469df10ecb7b4da9a0c92fdcacf2ba4e51935be8acea60a92773ebb5ca362894c3e38c4058af6aba8b9f2cc087e77cd574b751807655531ba2efa4489f08f6eda4de4f0ebf1f2335fd868d0808b8928dfe178128419b326bbca3efbe83ef806c0d6063a38f27bcd4c78d0804c541fed8674df5ffc761bf8b785ef870fefb64d9b19963d17a43db204b46bdb704f56cd7ad396813f08f5452b040cb6e242175d13ae39cf70aadb4cc9b0ee753f67b8898057936f5de37ca9d75b81f3b61ccfea67def745007408b1b5eb86183ff1fdc0809358eab636f239bf99b2fd86791c052827aa27c9cbedcb06ee770ce3eb7d413dd9833cb2d98b3af357d7d245ce2a59e02823efe7c0b8e39b4a6c45fe43fba9e7fe5f5723d7af7bfab7bcf3e6dbaf5ecbd77fdfa6f737fbd709172818b19223948f2d7e7ce5ff044fa2c09086eb183bf9200925df96294d5ad903b59a09e8ccb9924363e89d47fa2118b90cad29154a9caf261c2c514d649582999657073814bada33ed85945659ffb525e52ced17a51c9feb855121177af5fcff69c2778602d6dd491e37993a64ccb193c2c70f3f4b0597075fdd3e08f47faafdfb0f18e84c9b2204dbf7b5cdd22c7f9927e0fd2f428a870d3433016b8af3d629d034dbf28aa5cda7d552a5b32ce2d9c4f2d8c73eb49e3bd30adc19d284d075458139b181767cd8cef4b991983692c771bbf714d8db13431c606702ef3ff239abe86dafa7bee24aae75d827ab73210d07dc63ce3dc794ed381aef2ef61cecb9234dd32683dce5e0155d32dc1d67aead84954ea1d28ab8265e8a1aad5fc83433fbbe7c35efd7b078c084adef1fd2e3705807cc278a0c01249f40d24372f8fb9754a5d381d5ab910a994af2df4444db56bd32904daedd78776f435983bc8bf77fd44280c51783ecf528724a7a4110a420c20abd57884c164d5ea3558ca91864d9e216133e7905fa28e92e3c7e3588e4c0077a1316e13a417f1158a7d19af0dac338bf2f67f93ef8d3595c5eecb563dfa2cd68bf29b0dfcdcc1cd8873e72fb8e6ce5be81e3a7cd4d16961333bac5815f1979dbb76fb53a91f352525252525252525a55253a977a02c8ac2107333fc3474d2fd6f777a6fdce429d3cf1e8a3aeab6bab2f207df762deb3ad9bd7b9f27f2a723eb97e93dac74080a93967e8a2425a792c314d2b0be10e52223b77982f79883e7d802aa2fb06871cdf404e9315c5739f06ddfb19305b4894b4824172e5e22376edc64392811d0a66bcf3ee4e1476a332b24f25896af589941648d5a8f120ae5e4913af548bbf66f921933e732904c484a65208a6039d82772676e36d652f2f109d76f3ab1eada01a3648c3c00110017fd8b8e8e63708cc8b68502273998bfada6fea3eeb1e3b16c9eace70d7425f3aa6bc3fa6ff370b3626c7068c0a2a52bee5db93ac2ffcb058ba549b0959494949494949494946ea74abd03654d6b2236f8bfd1f13dfff12193ca777ce7fdc913274fcb389196ee42a01497ab3008f00707c95367ce895d351dbcd683c66c67ee9fabd6ac63390ef13e2e3e916d43f01a44288ddcbc956cdcb495e555e469318a80a50cbe6cac9945a2bb1a915df97e9046e4c8d1e3e4d4e9b3242b2b8be4e5e579c69d9c72823cf17433667de41648a8d2df1f621059810225723a0230019a551fae49fef9c24b644ad84c96a624262e81b9c41e3818c5c608a0c6183799a0523846eb3865128c91af5fc49a4dec0baf01c3c763e2d99ac6283adf14e4c8e2af569258da3f6b802247d666631b4012aebdd9393784e70f1e88eabafdbb9df943034767847e3af5d3b09973cbcd0f5faa60524949494949494949a95454ea1d284b024452f9f5ff6858dd2edd3f8cf872fea29b97af640a5d59cd0f0026dc5ae1b6e9c91de9d45a663ca31ecff1f8ec8b2f93f2152b91071eac40deedd6834c9f319ba5ad387a349a410dac78b09821b80d072269fe473b6ba4013ae63422d8bee3fb5d14aaf6b2f1c022f7eb858b0c1ecd20cdad697979f964d98a55ccfa58a3761d6689044456a4108931001a03024713b8c27678b70bfbacce3f1a30f757bc065c628c134226b33988894b64fb8c8e4d60eb29e1e60bd7d02d5b0be7b9dc628abe5a280aeb567184da42115de9fbed74de600945decda3c763d9fef6edff85aca6103f6a7c3069d1e645d6ff46cd5ab0fde3b81439b6769660cbfc42583f2b7a98e6d21575e4982b70ec04da874f66ad5c1d5199c26d3905934a4a4a4a4a4a4a4a4abfb54abd03654500482868ccf86abdfa0dfc7ac1c225b9172f65e4bbdd6e2944b2289cf92e722533939c3d775ecf1dc961c3e93a3a5339581fbf5cb0843c58a1125b6308c8c23ac32ad51f264d5ab6221d3b7723134227933511eb99bb65744c1c894f4c61d6bc23143201973b2978013ab753f82964ade4ee9c741b3edbb163175b8789dc8670558535f038052a44583dffeb459279f51ac9cec9610174b0fed13a6efe0c805eb47405ed734552a5dac30c0ed16758211b347e9a7c31732e0351402802f2b469f70aa94cc78531c15ac982f254adc640f4a9e6ff24ef74fd80044d0821cb56aea1f3a99143878fd27ad1ac6f18e3c1a8230cf8902b122088f1621d23c6039754401f9e3107181f3e873570efbe03e4e0a1c3ccc5349659401368bbb10c9ac3972c27fd3f1a465e7afd2d52abee63baf594f609d653bc9e1032899c3a7d8681bb30ad8b03800784c6272409cf233e97c6f9e48e4b4874078e1997153866fcfcf51b36d6a0b00b98546b269594949494949494947e33957a07ca82264fffc2ef833e03fc46068dadfeda1b1d567eb5724dfe95ccabf97666487ee17ff5da35061967ce9ef744e9f46a81b4bc87a5ec270a3b80c2ce3d7a317881c50ecf1c24015d004be8b1064f90a75a3c4bbaf7ee47a64c9f4156ac8a60fb8d8e49a0d0768959bed24f9d2169274fb19c9670d584fb292011ef4fd1cf10fc0565018a58db999373830123c0980f1beb1f519e471c15cd01b348ae5cc5e0176eaddc9db5e6a375c9fcf025acedb88464067e19972f938d915b48dbd7dab3f592b0f8a11cea0044799457bc7fb4fee3a471f3960cee020283c8dcf98b989bed6e6d1fb39446c7c6b3761392524962720a49484c66eb36d9b6c42492989442c12d9159388f51803d78e808d943e11bf3b474c56a121cfa1969dff15df2e433cd48ed7af57578af598b013cc0167d00f0c2b2fadc8bafb0f904b0dbe69fb4014a80e4cf070e11c46ab2b36eb35ca46e973beaf031f798e090ac7113421753f07f00564905934a4a4a4a4a4a4a4a4abf954abd0377ba868c08f2ebd17760b9b19f4cacd1b377bfe5f3172cbe919d9d93678eae297be4dcb8c1400bd6bb93143436466ef5046e71eada8af2800c58ca602984150cf00890e16b0d61ad0374613b87b40a46201b6ed143bde961b34816853ede7758012910b3fee13597397aa828fa2cdf76fdfa753abe930c28654186d01efacdfb0c18ac45c12c64d25406ab1863cbe7dbb23e0e1cf23149a7d00d2883d5b079eb17483d0ac5e33e994866cd5d40ead46fc0cad5aef70fd606400e80079843fb1ca41b3dd382bcfef63ba45bafbea4ffe000123022880c0f1a47468e0d864b28091c3b9e0c0d1c4d060d194e3ee83b80bcd9e97dd2f4d9d614126b7ada60f35b5177adad49a1160059910508aae40912c4409e7e8e6d6bd6ae67600e4ba7cfa94a8c9b05b068e258783baf30a7b04c46c726b8c60687e6864c9cba78e5ea88fb0193e14b962b98545252525252525252baed2af50edcc9a230e247c1c77ff484ffadd0bd679ff0b9f3c273322eb335915ead46b0c49d4c3fcddc401178e6c8b1181269079236c16e0062481b327cf4380638d56bd6f2c08c59d806cb1d874aac3f0458a23c40e9dbc8cde4e6cd5c0f2cc2ed1456c84b19573cfdb693f57185424fdac97466a9b48b560b581d131ccad648a2ffd3c26632f7d139f3c23d9654801aa0f0b36961082cc3e62f2e3189ac89d8c0e610b03a6bce02364eeeeaca5d6051574f275295c11df621123ee3927d8e366179c49ca16ddd1a5a894934e79867d46bd7be0373a1c59aca2dd608aea2003c827300d64c40b4b7f30b0f03faddf4bc700d0f1a9b133a79dab4b5ebbe7e10a941e0825ddadf1d2525252525252525a5dfb74abd0377aa5ab77bd5affe938dfd7ffc69ef5dfd060d191df6c5ecac5367ce09d37b581f28033843945600115c3f598a88cddb0ba7ab90b9b39ad24fc01a09774dd46fd9ba2d03170093086a0a4365254f24d4ba8f3724ebd67fc32c88e607dc5553d34ed2e71caf63123d2e5fc924a7e918ad692bac8fabd7b2c8ccd9f3089d4f06b7743e498fbe031958b2f1c00a48e110e086e8ae704be5f3688654b8e076e9d18b74eadc8d811b1f239eb985b092619d449b004e5840b136136d1712dd86cf5086af35655068587ab995d76e8eb938744e9e1a46813fb628483ab13cc32a498f756c6c223b679c3e6099dcbbf7806bd4b8e08cb019b3476fdcb4f59e09a193fd90e794dc01df232525252525252525a5dfa74abd0377aa868e1c536e60c070ffee3dfb741e3566c2b9f8842417052237d63c625d1fe0c82cbe2d8bc21af227c2e276f15206b3ae5dcab8ccd256788d926af90c70f16de41672e4583459bd761da9ffc493cc6d95038e0e3b950bb95b9ab703940047cfbdf40a0bbc0370443fb9b05612d1480184d7ae156cb78ecd3c3efdb53ecef453a719dc99dbcca2023843b022628de5dc790b996b2d7317355903ff6eac31647da7db0163e8f3c2c5cbd87a43582293924f909f0f4631eb2eda8a898967b0b6f82b3d800fb708169e8f02f1ed22ebad75becc759c8a459ead5e833c50be02e9f05e57b6de12417cbce695b488e7938445132ebf984b588c01d2b936c2e7f4b8babef966936be8f051e7c3172feb3e6858a0ffab6f7554915c9594949494949494946e9b4abd0377a23af7e8e5ffd9e733fe63d0d011ed060f1d9e402feeddbf5eb8e44e3d91c6d63c9e40909a93d6e753242d5d072b580f1181146ea3e9a7cf92e4d4344f4454c7d15a0d5747582493925309523e70b75600540523d00e8345b8781a1636063806ac01de2850b07c87313109ac3f8914cc006708aeb37fff2f2c7d06de23f80c82d2e019016acc8a373e4b3084d729a92758b453a4e0d083f5a4b16d3c708f1ebc278d7c3e63b6e1765ab0aeb30af2493e5c93f5d30a6e00331e48e78d8eefb17c9200b5562fbe4cbaf6ec43fa0e1a42baf7eecfa2bb62bc7039f505fc6eb5ca1b3930d1c766ad9e67916211fd15817f6c2d91821c9600c9ddbbf751188da6cf7bd8f1825252d30a09f35af0fe247b9f7632ddbd74f92ad798e09033b4bda7e9fefde97b05934a4a4a4a4a4a4a4a4ab745a5de813b4de34326f9357db635d645d61e3038601bbd20cfbb999beb42344d58889872f5e7bc22eff3c9b9f3e799f5ecc6cd9b6c3d222c4600359e9bb0904bab9d7babe1ea88002c48fb815c8adc6d93bb74eaaf2b93bf3d58814155cdda753c115d0158219f4e61e00bab28fa7193f5e926c9b97193590b61514480186cc37bfe39d70dcbb3558047b8b6f2363df58cf6b1aeb3cdcbafb17e03740b2ca9958a58513d564258178db189d6317248e66ebbbe5a106f0f4c5662d05ebbee6364f1572b993515eb616ddd5af9f137599f718e20dd8a6e894d61296370ecb88557a4ecec6ce6b28c79bf7829c3352d6c26a2b96edcf8ed961a582f191d9ba05c5c9594949494949494fe9fbdab008fe25adb7f02ed6d6f7bad4a4bb1526ad4855ba1b7ee2dc5ab508a15f71012421412424808ee047797e0cee00e41820408aec12dbbf39ff7cc9ccdecec39b3b3c9c2d2f60ccffb6cd839f2cd99d9dd79e7fd44c2ef08b80177121057d6ac4d3b7ae34d4864d7d4eebdafe2e63c2fd98cb85e24369027287870ffcc2b227f93ba8f426de22a921665214046501202ee8e1f7df9ad5a92909547f564310f11f258aefcffd406cd5ba98d08ba76eba17622c4f1914735920917d84d9bb77924ca617f83f41e3e728cbadfdac9406b3e5e247b41a29dd367ceb98dcb36ac45176213c81ed447bbf18634d69165612d5ec245281117ca621e99f24ad548ddad35d044128a2494e2769131f41ae03e281025dd31b445b65ab846834042e1853bb20fe7c499b9776f6ecbb6e197527bf44d58bb7ed3bf7af51d584874bd4b484848484848484848e4170137e04e02215fc16151b1c1d11d3b7f19da3eea7ad6816ca7bea9561b2356478e1ea36a9231d329943ad428440296b96612e12546522bfbb1431d3b7e122d7901b20237569017c4e32176f0fc850b6ad68143b46c04621e51f202b186a111519484888824144a94da402c9ef17d3b1bcbf80aa5f55c4e0eb70dea3522369391c1fc2a87c63847f6370824ca82bcf6d6bb1af1cc2799f4979a0922c94a86fc50a316756b5ebc64851627c953a0790f11f4843b78854a8ceb09195c8f1e3bee56bbd3ceb9993d67416efb0e3187870e1f5d9dd85178e88831d2c5554242424242424242c2af08b80177123eaf5029b873979427eb356aba60c992154e07241e9b37f0e7cf5fa071817067c596576bf18aba6ad53a71a17a91dba3fe0a4296d0b51b4de602450eea1ee224fb0e1842dd19313e08071440100ec4d84109443fa31de60ded0f1d3e42952f5f378c89febbf7eca7ea2b6f9b316b8eab26637e891e57adc45884003e53f625aac6be59fe7dada4074bda63630c565b9325ea2928a1447f5623f3a3cfbf56d7acdba0ae5abd9e3e08102acf9cff53c59afc8db8479c4b9c5b904a46f6ed9c17e0ecb9f3ce3efd0639e3e2bb2c9f362dbd1419330850ef80cf988484848484848484c49f030137e04e0132b44e9930fdef0d1a370feb949044f8d165db121dd4b983b466e429fa7fa30a88eca62b9435ee44d24b3d41bc87f6707304216cd9ae3d253c2c49cd8bafbf494907c80614d08d9bb7695954890d20919d129369121ca88ee6cd6817e2274108f3b35d260474f7de7d94889a154fd8d5bbdf20eaea59545750fd09903610eb6a3fd7a40a2cd60424ce0e210479845b30ab27897e507a59d98f82105c90d3b22fbf4acfe1ba8d5bdc89a4cd870738ef20e8703d862a79f2d469f5e8b113f46f3b1b53c7d7aedf849220d707a58d08256fff9fb2722d54494926252424242424242424fc82801b702720fbf0d1a0a9d36705b56bdfe1f5f00ed11b56afd980bb76af6a24db0f550ed935af5ebbe6b10f6ad2f215abf388a455921d63c6d6d9f3d5c58b97d3f8ca1ab5ebd11841101eb8ad22a3e9ca556b697c62624a77b5fc479fa953a6cd5457af5eaffef46b6df5adf73ea0aeb0181f4491771c28f901251324383f1b882892ed18eb3cb2e3c6beb611912ef2eb6f220980b43df5ecf3343eb44295ea945c5ac562b2043de5c8da249135abdfa4855ae6f9175caaa4b18448be6cd21304813c8f183556ddb235c3b30488957b2b4bb044fa6464eca6e7058490c54ada5525b1a1dfe5cb579ca3c68c872ab96ff192152ffefc5bdda065cb574922292121212121212121e11704dc803b01917109c19d1292fe1e1216913a78e8889b840851f9c70e9184fa06c508ca9131210feb8bd84594d8986d957c85432c4028505e037509bfa85089c6463eaebb89223b68ed064dd41a75ead1ff3ff8f0236a8b9030ea5e7bee5c8eba6efd26f5eb4a5529d19a34793a7581351f0b92eca05ea12ff177c60dc4062e98482664269288d5acf2fd2f54e503e1f3776655e64a0a17d70f3efb524d1b3a9292692be2cab2be22b672c7ae3d6a0e592b64574556dce664ed9075d548287944d19b8b2e8824ce05d4583c00b0739edd5c5bf50708dbb6ef721149ac27aeaf4384f4fb921409edb20f1f453990eb7dfb0f4e5dbd66c3fdc42e192b292121212121212121e11704dc8040032412d95ac323a25e6a1d1abe7fdd864d7a68a4bd1b76c4b18150e1d5b8b1fe50fe4056acb2b3f2909e3e5f559435b484c6fb842cc1059395bb00907006c492b966f6ecdd9faa83201f78ddb67da7fad9b7150909ad4c93e29849084824e0f031632bdb2e5cbca81e3878c88d88b239e06afbc2abaf1bca95f85f91a499524b95a604b0ffc034eaca0bf28c9a9545f412226ef352c5b03875899d3b7f91cb6eac17dc83c3a3e3a8ade8cf735b6578ccc20516a419e72539b52725a973e759b8b272de67b52491ac8729bd0055250f1cf4399e15eeb123478f73b6098bc898326de63b4b97ad0c424910f50ef8dc494848484848484848fcb1117003028d99e973a9bb5fbb0ed1515d53ba3bce9ccd718aca7cf0369031d463342b7b4622b9984724bdb8b7429942717ba87b3d7af7539f7be9659a64a7a8aef081f4004f9679467de1b537d46933d25d36308204558c10095ad7d24c240f651f26639fcc57e90f6c39e4b850fe83a9666c1f08753f42ec68d98f5be4d6ca5449561aa4f2f73f53d762c41686b48fa4f3d2d84c8382c84aa240c59c3c65ba7af3c64db7b5825b30d44a569fd3d54f5732415ca136621f6a627a105502fa3e79af7372374224f750c2eacd85994b24b766b8b90ce3f5c8b1e3b42c88afe76be7ae4c476858c4d5de7d0746afdbb0f9be4ad57f92b1921212121212121212120546c00d082446b7681144103c65da8c275bb76db775c3a6ad50226d656a451bdcec67eecba2eeabbcfdd8b88aa4b7643b7ad2159490407fc41c0e4a1baebef6f63b548583fb26233b2c36b0fa2fbfaa93264fa344ce587ec448f48cb6edcf3aa89e3e7dd6673592b5876b6cb6ee6ec9dea7495ed66d54fffbbf0f6fa91a69266f98ab65db70aa922e21e4fb99175ed24aa5e8f36b2eafa5e83a41dd2584ca2d11116c87ab6b58542c5514599d4aeaae5a4cab5f89244643478e55df78f77fae7a966e195f31078824f93b322e81bacfce9fbf58fc0081e3e62a2292d8700d98e370ed6cd7ae5d7742958c4f4c5e3f6ec2e4e7c85bffb73d639724921212121212121212120542c00d08243efbb662d0a0b411c1f1895d6b774e4abe70e6ec391ae4689748827c641d3848e3d978640d1b482694c5d93cd7562fc976408ace9ed3ea348248806430f74d1633098592c5053668d692da642477bc0dcae59e7dfb2949f57563041531a1878f1c7323ad889b8cee94488916d453249eb9952492298d8cb4c2bd17eea4655f794d530e91e55657274b3ef5b4fa7bb316b42c07945446fe8df663bdd9588feb75211167dab96b2a4d6c84ba9ccb56ac52eb376946d54b9ac0c7e0ea0ab20a7b422222a91a8cacbbaef36e4eb6c42905c2736d651bdc54e1427de66c8e6d55d298c1b563e7ae57468d99501fd77cd59f6ade76f756e5c5e7de205865c20a827bfd38c7c304136c2082d337c246bf9e7e5e9397386bb292e09f7e1abf9bcdf5286b31467d53db148bb625bdccd3546fd7c8a65dcf18c67ede4bdb5a5ed6a2a645df1a86764f7899a7999779beb3e8dbd8d0aeb0cd35b083baf93cefc07082648270fd5cbf90cf6bed3f043f10f425500876139c263841b08f6013c14c8244fd5c94f0e3e7e801ac2dc1308285047b08ce1164136c23584e3090a009c1bba6be4d6cae531953bf7236fb55f2f1581e51b4ef00f3f742191fc6e8e3c3f91f4a9040d0423f7f2f7a19fb0d3f5eb76f18c67dc8669f0efeba6efc74ed952288249844b046bfe64eebd73f3e07dd09aa10dc6773bcfef9fcecd6550cdf97f93c967f1334201845b054ffdc9ed55fd7e99f2fccf3981fd68d773f80cfa9adfb01d2ee6e3f5e87b50de3be6ab34fad405f7b7712026e4020414864a11953673fd0b0698ba193274fbf496ed673eddea0b3a432c78e9fe0ded41bcb6c2c5fbe8a5f47d2c2d5358f489e778d07c29ab9374b4d20c4e6d3afbe75b976d2b8be228fab3d089162a4d64836ccf669e3ece32aa9768f1d71854802631c1fe4f2e7dfea529b8ade82243b4232a993bfe75e7849addba091fae57755d467cbbe44d54546341393bb537b71ec8819052133af0ddc94a158a27d19726f8dd7b6115194443265176bb67bcf5e75c8b091ea2be5ded6b2beea352c199144c6da8c1dbbdc89a4b75849b7643b3bdd1e4e304208fb40def120c0978d5ca7ce94d45ece3e7d074d193a624cd0aecc7d415bb666dc5655927cf1a611a81c7ce7c739f043389d20573017801bdb169cbe4df41f4c513fdc1c24fb794dfa0ae6fac14fe37725b866714c0e82c5044f5a8cb1cbd4e726c13f046d8be8371bbc39b17e75f576bf106459d8052c22286e18bb947eb3216a7f49b12027645f25452318e67e38e7150ded1ed1d7c4299807c7ff92c53c1f116ce7f43b4cf0aba15d21823104d7bdac831df436d9d049d188547ec7c33a4511dc570c9f9c00002000494441546de31abb9f208ee0bc8f7344fae1fa7e465fc3ab3ecc7bd3340648ed012f7d5619af45bddf0b045bbdf4db49f0a98fc7142a182bd4873152f2713ecc9f093cecb98b33f67304cbfc70cd02df1ac6fd17c134c5fb77774b7f7e0717e0da2baf587f4f987192a09db7cf14d99f4a70a1006b9aa15f43857d38966204a37df81ce1fb1dbf5df926944a01ef0748bb7bfd740dba7d1729da77ca122fedb308aa06fa1abc9310700302896a3fd70c4e4aee51ae51b3965bd6aedbe8931a09c508c5e2a1008ada6083aba9b272ad772269fa3f736d35121e068cb96dfb0eb54fffc1ea77d57ed0ea2a3efca83a62f4788fc4378c8440d1623194b01df184be9494301e9746a24fa8274ee5d5cdc40692d5ac4d288d2704b90591bb1d4492b9afb2acb62092a93dfaa8dd7bf6a52ea9b366cda5c7cad602ca1e5c73cdca1ec81b8823c6801b2cb060e152da8711499c0fd40c859adb2ab43d555d412071ac78853ded63e228919c377f31ffbc0b62245de53f76667255ee1cb2be5907b369165e5fced7952b579dc3478e71764ae87a72d396ed2593527b06f5ea3bf0b6114945532bae08be9487dd82f9da0ae6ba4c50d4a25f09413f3c817cc0cf36fec3e286619c1fe7f9d1e20731da4bdf6704fdbef071fd8f299e37e2b8713c2c18bfbbc5d822f20d4cf762d73d8aa614b0f6204c7f17b48db598078a9150d55734b571b5a13d6e22ff2d68fb8b608efdfa3e23b0ae20eae61bbede9c715f54f837b97878505bd10814c802148d1d021bd6123c6e719c0f988e53d5e78422f6054169824f144d3139636a57202249fa57e57c7e4ee873bdae68eaf88704334c6d6e72c6c203a8a38235f0585b53df29827e1b141b44dc3456b0227e98b5c6c7b1fe2b18e78ae1fcd7d7aff38d82b68b15817704797f84a0cf54d335fb2b410cc11c4edb6f39e3b6118c8b6bfe89825c33fe82a2a9b7374cf641c1aba85ff3afe96bcbbba6a0ba3de265fc77056b70c970ee9a2a9adac97b380680ec3f64e3583e56b4ef27f3770fec8717087e032a2b9ada6a9ee30841b97cac5f81ef07143e91841a0c751daa6a5d13ccdf03c6ef8c7f71c61f2c688ff5b6a52eff951070030285e1a3c615da9eb1ab70dbf691bf2524753b75fcc4e95cd5870db5231167e8eda61eee906bd76fa24a939048725e4140162d5a46090f36b3ba78fec205aa8642a1eadeab9ffac63befd2da88500a4134e11e89acaa20ba6bd66d54870c1da58e244473fbf69d94f0a106a439d3ac9dcda88e41a933bf9f91b14bfdb67235ea4e7a3b55494a2675651299596bd6a9af4e9d3653ddb8792b5d4363ac28dc9159b91633599b38692a25c148ac53ee9df7685ca2b19d563f338b9ed7a9d367a9655f7e552d51ba8c2b5e13ca706c4292ba63c76e4a24ed904737259abc427506f137db866bed60f6617aed19af056fe70b4f4756ad5eef0c6d1fa5ce983587baf1f5ee37e87612c9e6822f650037981e4fbe0b38df0b82b9967be9f72aa70f5c8dfcee0a4cc6fcdd624d70837c8f1fe732ab8a0c0dbdf40b11f44bf0d2afa2a97d3d41bb7182f1852a0e676c332a7bb16d90f1dc5ab413ddcc31fcee659e0443dbc916edfe23187fbd459fff29ee37b25cb243de3fc8199747a4ee52b49b7d9e1dd32cece0dd9cd516b4851bb79100e79b482a1ad930936490612ed15034b54578fc7a9b8982e3ffca8b2d0d05fd12f3715c9f5b5c6f4ed1f1598c779a33ce794ebb20820e8279b937f68af80155470b7ba24d6d7944f279c1b82bf27bbdf8138ae6e561b60da4a310a7ed030aff21cd66c5cbf7bbc2f72838c369f737457b18c45bb3e15ee6801bbe5901860bbac74353457b38368a33c74582a77d5cc302df0f289e44f290627a5869688b074566b2cc5047d0a7aaa0fdc0405f837722026e40a01011d3a9f0e42933fe151e15db7df8c83137ae5cbd668b4852c2a4c708221baa959b2155ffc8cdffa6cddba8d234779e218b272f56ce402a4028162c584288e149d758aef9f592152091d8406ea64e9fa9bef7d1676aa3166da812f779854aeaef4d5ba8a11da2d5773ffa9492a3d24f3fab7ef4e5376a526a4f75d3966daec42dbed627cc7568b53399db2ddb1c4e0792bba8643db5b224a54abb654ebd2dd04b7f40a57df98dff5257d5e4eebd5c4988b04149865bb239e32c3610ec6fab56571f7ce811b569eb504aba8d6dae91350311bd4cd67c57e63ef513b29e988f9667d1cb7f7449eda1eedc9d495d552d33b69a14e8b9fadf20af9e4992b49aa5478e1e773d5cf06523c7ec24d7ba3a62d4b85ee498ee42c91bf5367ccef49b14f6632a7203fac4cf739614cc33cb4bbf91a6f6bd61ff2d5a978d5ed6c4e326ab0073b517cc31c04bbfe5827e2bbdf46b69687b4a11c4bd90f78708c6ffafc5d81f58dc8400782acd75bdd5fba718da76b66857d6cb3cb8d12b62d1bf9da1ed608b76770bc6171249bd5f9af13a15b4e1ddc48a88143ea78b04b6bcc369cf53bc4e587d5e144d4d656df3452449bf3715cdbdd8382fdc8385b19d8a167f77ddcbf10f131cbbf05ad4fb890895cfb17c4a9eba29fa4e68e2e378bc07091e44d270fe79aa13146c0f2f0ef25e05818d5644f22e934d3c225942306e7a7eae177f42d1dcd6cde706ea9d30ae4fd1d4499ebb6e0f2f73f1bc353c88a4de166ef2eb38ed9da2cf85a2b9f09f30b5879dcf5bd8f44f85ef068edf325baeb48a9fee07144f22f9b545dbee8279e071c17d484cdeff52d0a76ba0afc33b1101372040084a1b3e3a28a55bcf273ac4744ac74dfccd9bb9b6dd5aa11681c4d13a8c9caca8e6b67055445d484a24452a24e73db46764d1335eee04057b0f8475c0e061944c31b7ccc7f4d21550e9d87b8f17d56a257e5bf97b1ac367244a76364a24733522694ed6c3c6812b2f92dc78abbb081758b886e2d5df84126eae288d021be06e0b158fd9876cb3583b4f22a9d56c4cec9a4a13068110b336acdd8d1b3768e914648805a1abd7b829552191cc07eb0c25b3679ffed4b5d523d18e8df21fec9c8bc83d54e06cfd9af0e59c91f3ec484eed8958c9251b376f2b52a34efddb92704771bff1efa1df9898bf9cfbf879cee2821f01a1eba3a2c5d019dbe229f3ad2291c69b709055f38d3130c48ff38914da75167d1e12dc000150c3eeb7e83bd5d036c9a2dd20c1f86f58f4292fe86384956b6c17433bab9b5e915baf11a32dfa1bd55c2be5b3b0606c6f44f259458bc103b8a44ce1c76a728994de5ee466eb916048e1abd527ad3e338a4602b7e968908febf85efd78cdf3a6d9e88b584ab8581f16ec4f131cfb6b5ec6152917e13e1edb1386ef01283fa738632ef271cc2cce185c22a9b717c567d6e0b4fd46d056f899d2fbd5335cb71f72f617138c3bd3d7ebc59f20f3ff5db09ead6cf49dcbe987ef502bb7f1439c3e5c22a9b76f2c58b75f05ed79de2096a1017abf768279aad95c47e3fd404f259ff7038a3b910421e6125945fbede3fdbe82c4be6531bec83bc0674f83bf02026e40203072cc846082207263fd62e7aea9191b366dcdb52284e60df16b070e6573e3ec8c1b235dfbb20e52d7d6798c487a2b056278ddbbff0067cc5c42e48e7bb8bdc2adb4fc071feb25424ab95441163b0814756554d5e2187fadd750ddb235c3a30ea66863c704658c9ff5d54989da67df547495dd60aea766375710af52848081b4f99b48b27a90387eaca5719d0e1f394a8970ae835ffb13446ec6ccd9f43840088d6eb038f778ffdcf9f3547d4d1b3e9aae27b2bbc2a5f6871ab55442d468899174e6ceccc9d0ca2bff81bf172e5aa69e3aed7e5e8ddbc54b97a862e94bc21dfd9c39a64c9be1ecd4b9ebde458b97bfd5ac4dbba0bdfb0edc725552bf81c31770ae7eb3c44b9882580bbf115bc54722a96819e42e19da8df4a73d9cf9d84d2b7ecc9e54b45824b3ada7453f8ef99c93f724192a0d97102a5a6c136f0d193e13f4c30ffc45433b611648a5e04412eb96c3e98f6bed7541fffc10c9b5fa35eacb3adc522269f39cfb4a24457175bd386dfb09da0a150d3f1c8f48fd7bd70f63a709c6be5d4432cad0f703813db821f61af76618338b33861591fc41702c6d386df345246dd87ca712c96a02bb4adbe85b43d037d6a28faf44f233c11cf19cb68f2afc87845c374f535ffcb6f29444cbb011437fe3fd4051259ff7038aa66ef7d5f19b45bb85827519ea657c49247d40c00d080492527b1642c291fe03d3be4e49ed7972dffe832092b614496c50ff107fc8542e2b220980b48024cce329925e12af6c27e4909775359b90a17339396eef639e1f6bd576657335c60f9aff66b510e19659b1da8f2a21d3dc042fbc6382ca2a22928c6c4d9e32dd558603640e04966538c52babd50802c6def75fbce463744ecc111e1de78a29641b6c3f4c2022cf4cf545bfe88e897af98fb36e6a348bbb443991773ffc444fb85384d69084cabb42594355681161e4bd070513997a45099cb021363373cf3eeace6c77d38fd1b97acd7a352a2ee1d8f499b32b3ff8d02341a3c64ebca54452d1dc67984b59bafe5e98e00bfa6d3fce6b9b482a9a1bec31431b24d6f11b81e3cc674c34b0487faf85c0de8ffc386f1fc11c5c9720252f668cf7c418e824e857d9d066a3179b0a4a24f154bd95608cf50a3f6e293f44122e9fa29b41245ff0706d53fe9844f225812d1eaab2a26597e4b5859b9b5f135319e6e425b6c9f1c7e755092091d4af816cbddf5e4573ff337b4830086f9a39e36671fa5b1149d19c1e0443f9eb11499e8277dc66dfd28263122650527c2792224f0d0f176b451cd7fb9ccde3e1b94c83180a430af47ec6fb8159fa7bb7ec7ec0e2b3898cc6c2b004bdaf24923e20e0060402cddab42b04452639a5c7ef4929a9578f1d3f49e32311e367cc76ca0336c4db8148c20d129bb73ec8f489ec9f7613ae30a4a7cfa3897a18e161a049570e1d762b0d9247e066a82fbcfa3a55c9bcb98c6a8ae193947055f9b1062593204ade8e294f95bb206c0b12367cd438f593af2bd0c43bb4e6a2ae88e2154ae48fbfd6a68a1e6239a9724a08654193f3a03fe602512ef7de07eaf215abddb2ae62d388e431f5666eaee57182b4b58b8c513ff8fc2bba36f41a21e31c39769cc658b2e39c3879aafac6bbefa90f3ff2a8dab0796b4ae8972e5ba911499e1ac97988c04a7fac5cb54ebda46798e5aefd8d9b34d90f7b886074cd155daf8c48eecedceb08098b38470824dcca8208e9bda5eead8abbab5455fd3d513205a10b643ee6b54524c9ff1f27c834deac283e665acc876dc64403bfe8ef3d29b0d76f752b2d6efc52396d91c081a98ac846b89fd38f9bfc82bc3fd6d0a6b9179b0a4a24412cf0649ae7eec89d5f714f82639748a2de296eee570ae6f11847718f13f50b9154b44cac9b74085d8b0ded7d2592a2b8a05a9cb656d9805116e33d3f7f6e109fc52b4fe05336538bf1d304c7723b88a431815484fede7d0a3fb3e50c1fc6cde2f4b72292f505c7e2f1404bf181482a5a62315cb3436dd87cc7114945cbf67c9163d3269bfd918df712a73f481537e98ee23b9114a9c91ec9c7c87bf3056db999a539fdd3ed5e27a67e46b758763f208a452fd0fd80a279c6f0bc70000f859dd35f12491f10700302014232820982a23b768e4ee9d6d379facc3987373268046ef4b3b38f50d7463bed413ca1508128cce5914901a048a20625e6c1e62292376ed0f92f1ab277329753a85aaf957b8b12353bb187680332098257a1eaf7541133d730346f370999394c88a459e9336e8cf0220329c8628d3af529c145ec6499e75f50bb76eb49c928e6dab465bbfad117df523259c40fc979683c289907f53679b5324102a96bab17f750b8bea24c0a623e59a9141c17ebcf361cc3ccf4b9ea17152aabbffdde981ef3a2c5cbf35c5b7944d24426e7ea0f0e323276bbc83c6f0391c543045616c6972dfbc851479bb0882b83868c88ca397fe16fe4186ea5fba631953de27dee36ece3a52cdfebc7b9bd124945ab79682420f3443fea7eb4cb9868004acabd867ddb38f642a5f08b6aac68313ebc1bf1ed9cb6464201c58f47f87013741f670e76c38418206f69ee0b4a24d953ed2f04e320fbed13a6fec6eca4b65d5bf5f710e3c75368b116cf99fa3731ecf71791ec65d8cf2dcb606aef2b91e425a5c075ca4b8f7f8f2226f00c28d25ec64fd7ef5b8239fc423094c012c9d97a1fa83ac50ceff3b2e2e2336ca9fc18fa6771fa5b11c9e19cf6c709fec6696b8b482aee0f7a141b36df8944b28cc0a6f93e8cb145304659417b5f89e4504e7bc40e7afca629fc443ef8beb6f55b23f89e001a5bf4b9adf7038a678660065c8b76b2c24a22e903026e402050b27419fa8109098be8d925b91b142a27d435287c70d774478eeb6fec472dbf23478fd1d839b8376afb3568fd73dcfae06fb82a220e71d6ac79d644d2442e685ce5fc45749ccb57ae6a6391f9412276eecaa48406640e6409ea28c84dcdba0df4f8c0e2b6d53d90c9c775d5f0cd77df537bf4ee4fdd37e13e89f141a200fc7de9d225723ce7d59dbbf7d2644397f47d22a03dfa21c3edaa35eb690ca0b26a2d2d8f91438e0b766fdfbe83d67e04f9830df95525d10fea27e23fcb7ff419750b0689c77120cb2a5e311f620cf7ed3fa0d947f6a30dde37e3b2eb6f6d3f6b8763c118502c2febfd41f6b767eca4c707f2c95c55adce2f4f913ca43fa070b7e98a9b0d7bf71da064d2dd5efe31b03eb0955ce78e90f00ed77bf519d02d73cf81fbc74f9c722b89a4f1e6be9b699f285db9b0d0bb8f738b88249ec442d5f955f174cf697fabbf77c81cef1be6eb6bdad75160b365d6481fe79fcd191ff12e8f9bda19dd609f22f84960db27a67ec638223b891b0a4a24e71bde9f26186b92a9bf3183ad5d22b9d986cd4b8d37628abbba931f220917c78a3a7ed6cf893136c9af4452d19252981f34603e8f442b863e88a9e425b2300224bb9322a8d7e9c3b52b72bbf44b522a454c24910c2bc2026304fd6c114945f346600f27669bf6d5138c5ddde6d8599cbea2acadf014b9cc69df4ed05e44242718ae5b7c068c316a7f5422f99ec0a6b13e8cb14c300637be57f1814892f7cb713e87b8a62a72dae261a6b9062660cb4d571f43546357f81baadcc6fb01450b5711d5a9fcdce6189248fa80801b1048fcdea8e9908ef15dd4cc7dfb9d070f6553720097d50307c9dfe415ff47a907ed355bdd9f7580eedbb66d075518f7ecdb4fdd0cd92bc3de7d59f4669feedbbb9f12bc03e4c67f56fa3cfb3505f5ffa30ffa83b4627ed885311532ff8e5dbba93d00c84b444c27aaf6814ce5a7ec06c82762fdd0bf4d78044dde635c17bce2ff382e28a5204e2034da1a1d24f61da2366a38485fd116afe8876ca720e1997bf7a9cb487f94c8c07b88ddfbf2bb4a2e17d87cbbb7a20c072dc15144ed94d8d560579e7da8c3b87aed0675d5aa7586f37b503fef79c8d2a11df741d72b8e63fdc6cdea9a751b74427988ae01febf4259ad9e38754addbc753b552885d97939f19220910b172ea5655da0d442d504d9d590776de11856ac5ca32a04dafa1e74db6fbc06b57d075dc4336367a6a349cb909b71f149fd57ae5affaf5b4c24a7887e1014ad0e1eef4b3ada4f738b88a4b71b5e6e82163fae89f1a6b39c695f39815dc21215f998bfa9608e5f0d6d70a3c1e2b5b6e9ef41bde5255888338d3fc1b0af8a0d7b0a4a24979ace39cffd0cf8d2d0ce18bb689748ee30bcffa022ae4956d3d0ae96e1fdfc10496f28309154b4785d287da8216826918823b2937c033788676dd88b0737550b70ed36128ceb971b3b454c24f30bbb44d2e86a5dcdb40f9f3b9e026e8bc0283688a4a2d5d8fb55d19447735b28ca1e71c67a3f1191b4c21f95488a54676ed91dc118227750518cba259154b4acdaef28da431a3331442dc61f04e33e24b023c38763692b18c32a43b7f17ee045d3bef705e345e7f37c896ac20a6be272c69044d20704dc8040a256edfa437bf4ea07c5cf0977514f5ca7ee990c508af0fe99b3e728a980c265dccf03ea0ea26404544324dbf1707714b93deae5204048a03e626e3a3f19134a1a0805944afc1f6a136a4e3ef3c24b3413ab55c90d6f8a1ed44c94cd78fdad77d479f317d3b1816bfaf103c81c0a320872cbdecbc3351ddadfacff15e0ca555abbf2cc997384f8eea56b827da74e9f51eb346c4ab39e429584a2981fdb4184116789d8c85d997b88cd6cfeabae5796280924922976c6fd56d0da5e2344ef0825efecd8a014376ed986c699225b2b12f0b81e1a88e2220dff676ead20e74cddc4b8b8be34d5d41d38f7209ae67dc6ff9bff86ed649da148e6b6098b1842e6fdcfad22928a7b2afbb59cfda87bc52b96bdc54ff38b88247e607729e20432707b29907262619331d1c036ce7e10385e66d0dd7eb44194f46184a1cdeb86f73b19dee79192e586fdf72b798a06d6d9c31d8e634f4189e42ad33e51e29d4c668fe21ea36a9748ee35ed1325de41d2a67fea6d8c2a6e7e88245c4a67e858acafa9717f7e892400d2784db00fe73091e0411faf2b51cd5133fa2bf9c888ac886ba186f9e9b39126181f6b3fc5026b05fdbc124945ab21ca6af99de67d66147e56cb0b363f5f599cbef8eec3f7dc6e7d6e5ef6ceebfa352074f557c444728fe1ba5da3b83fa0f8a312c9ba029bfaf930c624c118a2accf3c22e9f4f2d9c5c31fb8ee7bb8a21bc67d4ad0d7f6ef8c227e20e99121566f7fdbee0714add6a7e83bef491fc69144d20704dc8040a27ec34643537bf401a1b15f48916c70d5448c224889dd0d716f48a402c230d74aa932c7cd11e209f593c5e861c3bc3446527f0fc4a3df8021548d433dc38226ab011903aafcf80b254c88cb336e981f4a1cdc56f3b3d1644587b2f5d84f2d9672c4e8f1ead3cfbfa8967efab97cd5952ca2ab9120a243878fb69c1f0a2fdc72731df64b6818b713274fba6a786283fd50707faa558726475ab868a97be90fe3b9169c6f104fc48ae23a41ad48288838bfbc384ea896acd6a42f1b19cf11161993db362272d082854b6f25918c327cf13614b41115007fca0ff35bc64892d70f157ef203c0f653661f6d32261e6a2968232aa9202cb69e0f3b7671c607010ad2f71b634bca19faf5e0f4c30dcdbdfa7e63b2075b7541958213c90da67d20651b0563b6d3db183316da2592874cfb40fa45092b92f5364615a3c031928a966cc6786c0521925618af78c96868311fc8c5661b73706f38bd8c2daa9377ab15c95b162369facc7824bdd2db88b25a0a0bb01bfa66f970de71a30fd28acfbfd7ef60c57e8ce42b4ade77ed1f95487e2fb069820f63cc138cf1a6a03d8f487ac350c5cb0320457ba0c9eb7bda876309178c1122686ffc4de1d68f55fc703fa068dfa5bc5c0396dff582b12491f40101372010f8a1e66ff4a6a97568fbfec9dd7b21b6514b6b69ba311765c144317ab83832226927d32bb61dbbf6f0098617cc9fbf98921f96795453d5b25d8964a01622a10d881414c98226ab818b28cbb25ab3eeefea9a751b297966f38300c2adf28229d98f1d6083a2b9ffc041aa4e624c9025b89abefe4e79ea5aeb7329103dfb6ce9679e53a33b25ba12d188e6070963c9769c3632f51ae1706ae55c90f9d53866e69efd5489dcba2d232f3692472005ca2488e4c1ec23ea8913a76909916fab545743da4752626a4eea84f9a18ab23a987641ae73476844d48dc4aea9bdb76ccdf8e7ad20928a7b2a7b003780bf70d0df971f231f6db0936ce767411b3cf5fdcacf6b624c3400b414ac492f814d1e29dc0b604b8a608e17f5fd8cac401d35c6fc7d27e8f791be7fb2e13d61a167932d0525921e4fac152d210e4f65c1d3fa87157775c12e913ccad98f041cbce445507310f756c1f09ebf92ed5437eccf2f91c4dac09db1846e6336a70d5c553ff136bec5b55e4b11d7dd04405a9ef671dcea82b16e758ce4ad24928b0dede1a2c8fb4e88168c3fd8c6f8599c7e17f4ebf359452bf7f234c1038a8f2ab1e25bd6d621fabe3f2a9114918a453e8cb15e3006b70ea5c2279267f5cf6e49822a4a9e9a6d045c94857555152d2337cf8e5cbbd70069972418835726c6eefdc000c198b6ef0748db66823130ff7d76c7f172ce2591e420e006040284ac04a38e5e4ca7c4ae5d92698d402afb785378f288d065976ba32ffda082c15d94ebeec8231a706f9db788c6cf65eccca46eb52c6b2b14ab1cbd8e23c818b2adb2da89fec87cfa284dd8538caa83701505b9c13163a344921041abacad561b944cb8063382840d7181d57eaee92a49e28b2a8963865b6bfd262de8ba9809bc793b7ce4284d54642c096267a34412e53f0889c4b934bf8feb62cd9a0dee49764424d2141f397fc112ba9eab497fac37e23c716c9f7ef31d758966ca24e642e9129420f155913c71f2345c5baff51b3024f150f691bfdf22225951f0056c172bfd6083ddf21fbc2c850014ba87fdb826a21f25bbb0acc7e8a32d9f08e6805b286ee2582c643f53bf7f2b7c8206572a6369865d3ed8e27722a9b711651584aa5ad3f0ff7c1349bd4d84601ec4c21a33dffa8b48c215f22d1ddcd835537bafc976142dfd3e2ff9068877a9025c677075ee6b714d47fb389ec865cd76390c2fe3a709c6bf254492ec7f4ee1c71ddb05325f5ad6cf547cccdaeae37af942241fd1af596e865253db3b91483e27b0c9b6eba5e2fe2091e182e81c2a3692ed285ab22b5e980662b8855e050a3f1e16b0e5ce4eda0d16f4f77880a8dca6fb01457b48784e3006375ed4cb789248fa80801b1008346ad8a41001ea488626764dc9657524ed12421048a847577c249270e9847beb6cb352e54599447bb8b732e2a6d5713ca29e35286f7077fcba5255ad562392ed1494481a481a0085f297da75a91ae60f22c91449b8b6b29a8d69c346d0b94088ed240ba26eb8fab1fef46b1d9a54c60e3904d9c47a39bc104ede7984ebe921b2f6703f35beefa065414ed3acad765c598d6412eecea85389f38a78d1d1e326aaf51a37a7b54051c6e5f30a95e87e4658e1d67ce2e4299fecc6967520dbd13a34fcd29061a3da5ebf71a370a7c4e45b41248d994117285a02161178aa057e181f2fa00d7689e4bf04375b80edc07c1bf618130d2cf6b2262297a67cdfd49b6cb95bbf81318f8f6410c684265f72faf2e2c190add4a8eefa52f6e05611c97f287ca50d6a6194e1ff05259258cb1d9c7940108cee5f7e2192f938d7b6b2b62ae2ac89c834e995b05acc0f17e08182b127fa389628f1cc1fb28e24d9dfcd780c5ebe134465563ef03207efbbedb613491fc7bd13892454f61c8e4d276df6c7679c174a31c7a28fadacad8af83b14dfe7dc721ee4fde9823eb64228147ef66f1c9f47590de536dd0f587ccfb865d3f6e19c4b22e903026e402030b3df8042044143868efc3939b5e7f9fd5987729ddaa65a6d6c3f752d256484b996da21238c8420498a87eba38dbfa16442b50391c0382074274f4dd38b7200002000494441549d768d0d12327ee214f599b22fd19a907e51251fcb2b0d025203956cc2a429940022590daf46a39dcda8483222890d59685f29f7b65ebea498adecad7085c52b922669aeaadecf0592ed60edbc2997bc738875c6b947b918b763ba7c85c6388ab2b25a114a9c5b63cc234829c6c2030100ebd1ac4d28ad1b8a63cc3a7898969af1c56ebc6cdeb2ddd9b67de41942547f25ffffbf018387f995482aeea9ecdd6a4509da8b1268342aa01db688a4de16a9dd794a1b50df0f6b624c340095c732990fd9df5a604b2b3f9ea7c99cf17123b048ff9b9bcc4371cf30c98038c9b9861ffde23ed8714b88a4de4e542ec2d64daf6283481aae1f6fcad22d21928a96311544e603c17ebb44f201fddaf4fb6740d11ed6f03e5fc29b688bb1780f32a084df5b101bf5b1d304c7ef7722a968c5d259a65b7c668ae5738e1e5efa6571fa0494482a9a525d55c7b39cfdf922928abbbb25d75db480c7cb234f809d78525196f2d6167dec12c9a20adfc51ef85e30b628eb6a5d1bc782fab13c52ece119a0f87e3f20f2f0b0bc1f50b40471bc874cf8de7959d007eec10375789404512491f409013720105056ae0d26081a3662ccff9252ba1fdcb0696b2eb941f74a24b131327188903aa852be9011b443fc1edc5067eb5959edc448ced193ee6cdcbc95bab5824c1e3f7192828d0b208bea6ff51b522209f297ef321a5c37d7e234abead4e9335d8ae4f90b17bc1c317fbbc8716dc52bea6d366e19a2b9b7962865cb36d6ae5bf7de2ed75f6fe700594fb156ecff76375e7c2adb40ac9139d7527d34bb2deb6eadcb57acf688374546de56eddaab9f7e5381c6bd7e5da90a5521718cfbb27c53837525d33967ee0235aa63e76c722d7d01d76e721c7e2976cf40be643b1bbe70bd26ad216d5e157c59730b3d2b5a898cf226f00a2edb26927a7b1e4152f51f4c6e4175454b2261b6c5236e4d7157c0ecc43589dca8967bebebc37912652164182fe8f7a9977e0b7cb4e3961149bdada8b6a4d79b5ec52691d4db8a9e8633f89d482ada0d24bb79e29232c5b73a92f1023b50b6e36e535b28b13b75d8f99cf38ab10bd7c4629c28818d7612cf0cd5eddd2ed89f2618fb5610c95a86760b6dd80ed7719efb31c886f03b5cb93389e46f86b62d38fbf34b248dd7fa4386f78b289edfd3962ec13e9ee7a636fa2672fa41e1b4caaeea4b1d49516c7d86c2897b24ef3d26b89e26d938962f04737dc8697b4bef07f43ef07a5829e8279c93ec8b34b46bc3d92f89a40f08b80181c0a9d367e8976fef3e03ca744a485a377ffe62e7cd9bb9b6892454212882d43dd287cc9f8c88406d9ac5b2b78a8886691f8827880a5c1f310e1435c4ea193710b3f0e838aa1c22f14e7eb29f72dd479f28465d5b5ffdef3bd47df4faf51b6a162153397e2692204984d8ab8f16d15c6aedbade8278366ad186922f6fe710096ab4d229796ec1be6c70c1456d4763c65a3c5858b96aad676917abda9186f8d7eddb77d1318c0f25705de141056a6df6e8dd8faefdc6cddb68190fa8dabe640cd6132439fa0d4c73c6c477d941886bd9af2a560d5ebd6683df88a4a23d653706ff7b4dd6a1682e43bcb4df50f03ce235c87b47396d3d9e3e2b5a2211de8f808848e2c69877b30b4005f178924adedbc469fb0e67dcc386fddfda5c4b918bcf637e3a572021562ada2f827e7f57c4a9e7819a3eda218ab5b14b24b77a19dfaab6a4e54dafe24e248f7999e701859ff882c18a48de25e8e38d487630b415117f6eb21d41db872cd6aa89a9ad316107ca85fcc38badbccf56ed7c5cb78f2bfc38a8b936fa31555444a4d304c7ee8d485613f4b32ace6e54569b588d6fe823ba592e67d1278bd3de5f44f25b5f3f537abf1556d780920f22a968f197c6b67719f6d5e48ce535569333071ef8f0e21ce1da2e74ffd6fb6572fac57a998f9b044bd0166b26fa5eae21e8c3cb928adf5d4b8f1285ff9dbd8cd3ce9ff70320bddcf84d455c8ae9b4a88fde6fb7a12d8f488a0873177f7c7efe6c08b80181c2db1f7c1c3c75faac47121293c78c1c35ce891b6dd5c696a7fe9da32a14dc4ced6e8c24808082447093ec5864fc444d4914bb079185b27928fbb0dbd837736f5232f3f21bffa5b175fe22928cd4857688a684c795ece7bc7f8924c6eedaad07b5dbae2209928bd7d7cabd4533c91ad799b7dd24731424be13fdf6ecdbef966809e773b64ef6b9e53e2c5c5c1153c9e22d45ea366a41e27a81fb2b9450945ef155493d7ee2b4b37d749cdaa7dfa0c987b28ffc33322ec1df6aa4b9b694ad384725cf9dd28cc69cb67689e4d38231e759d8f18a92e7826a4632a7bd1d226956fe6cd5b152c4c5ab3d7ef00a70be78f6b39b89072cfa2d16f40309b9df471b460ac62a6fd1c7a88a1eb431474bc11c9637bdfaf5c0da5db5318f280b30604524ef17f4111249457b506224540305edf60ac6e69e27455c6a026eafc50dedcc991f852e968aa6b09bddcef03916d628f4b2ce750436726f98f53e31c6eb5bd0668c60dc77f2690f57b9503c55fd8f6c1e771fc13c3d2dfa1ce3b407a12ef077bf2256e8ac3e53e6321a55386dca08c6e5124945236ac6d21a974dfb2b70c6fa2e9fc7fcaec2ff8db0529f799f29c41e7bc4139afa9de4f4bb293a778ad8ab06e378248e23ef3da8f0c9ea1c45408cf5e337bba9637c0ff2a9dc9efb01c4c2f3ee09006ed931bd9ff9bb9a47244559cabb17f4b3f36744c00d0814c64d985c78ebb61d7f4fec9ada3eb5479f4be466fea62f6eaac8d00965080a912f1b5325919d339d15adb7999805ea1588c7d973e728a10071027964e30220685f55aceaaa05595022c9ea339679aeac3a7de66c3ad74dddb5d7df44126b1911d3498f7d7cd23691848d70ff44e90d3696f1d5b85dbb7e8dae1b121ff97adeb0213611b683f4d2f1c8316cdcb435ef5cf2ce21e7dcced54b7e6cd99ae152233116ce2b8bf5842a09924a881f6d83ff438906a1f4d5ee1dbb76a3f4873a61e29408f2df207f1249457be26f56d14adaec2baaaf0535e51e535bbb4452f42300373d615ca8a2d5d0e3f5837a57cbd4d692482a5aa6c283a6fd1e3141023b442e9978b26d1963e9c339eb2498c3d2d54e7157c28c18960f1b3608c6aa67d1a7b9a11d6283feed650e14bb16a5deb7bae9fdc9d4d6328e4def23aa2d694524df10f44119967b4c806af8b5e24910790f3a4050452ac5ab025b4010770bfacc619f1dc59348e2f3916c3c178ae672f616673cd894afd222867179d960a15a84183f1f8ae611807203c69b7f1191143d58f1286960ea172de83799d3f6ef9c6bfe0b9bc7cdabe30a9c217884d31e444114fbed8f5abda278b6cea66b16c70c0f88268aa65e1bdb7eca199747fcd8f5f76f03f09bf399e219bb78d4341e2f3eb156018ebbaee2492671fd2798ae7f909c38c5d3f3036af4a35ee6c06f072fe60f10950bc1e79d470c016ebd4b450b15e17952cc34cea368dfa1f83e34c75123fbebdb9c716fc5fd00ea439aef07782ec3c00efdfaffb7097838d89673fe7844325430b6f061f45f1901372050d8b97b6ff0a5cb9783fb0e1852a17d74dc21422aa148fa14270955ce98bdd3970d64c04dc51264f4349210a852501c89ed948c65eedda727acc9b30b0409b531a1223e59e69902a9922c2b2a885ad51f7fa19962b1b1cca5e772ec277c316e20e13c2289b5ac55bf91465e89fd76623c517392d5cf5cb57a9d8b8031d5d6b83ed8b03e2092c6b9ed6c6c5cb81683d831b277fcc40975c1c2a5decf212789128824882236a88ee3c64f529bb46aab1e3b7e828e8df73a7549563b77ed46155028c198db5827d38edd70db26733a633a75712c5eb2e26390c86123c7fae3a9346eeaf0643a83f3858b9b6aab7a564f295a5c96e86647d57f548ce4cc92482a9a9b209e365a15731ead7002f015adae1a2f990703ececaae84f5f150b22a96829cf79ee7c8b152d398be8a9724945534f44ca288027b6fff3c3b97b57307ef37cf6b3a5ace863c06d5454370cc0cd0d6ed88ca400374ac82a6bce9e88f5f088cf31cdf7bae03ae3952a0049fa4df1bcc1c2b561e99aac5fd35738f378104945fbece03ae17d767c45a4696cb8ff2eb0688f8734dc94f88a7bd91233e6e8638b6ad181cced2158a7f093f71c5038892df279fdc265d14c4c00248a5a6f6183b9fc093ef7a2585d00aa5e1dc5f40047d16e4c5b28794973cc008140029827f4f61f2b5a064973bbad8a168fc54d4442de7f54d16e7e45c990003c74a860e8f3a1a2a95ea2f620b3f8def6394991a2254f82da64e5326e17e50ce3e2bb1bf5044564c82e769aecfd2fa78dcfe5204c63a28412cfcd159ffd2dfaf93027a4c10394548593c4cc3436cadcacb0383e8c5d59d0d7acf81a81cce16f72fae0376709a73d882c628a915198e76e8aef82a29cef34d1fd007ecbfd763fa068caf5753f5c83401b831d8847c6ef0c2fb339fb5ce33ec09677d15f0501372090681e125698dccc9769d9367cc98449531d841ce4fa422e4e9d3ae3caa4ea6bac1d48c19a759bf2e2ea6c14ad67a540162d5e4ec9c6befd596a8e21e94b9e2a99ad7efcc557946815b7a9ec8980fec54b3da9a6a4f6a68a21cb3e8b12145046f3b36944f2805bd656607bc62ef585575ed3b2b6da4c16642492cacab5aeacb69b366f53e3e2bba8bb32f7b9b98c626e3c00602aa0dd4d8b8dcda5f527411e31cfd5ab57d5f51b37d373485d956db827bb9227111209551aea345c65e312ba50e2ffec8b2f4335a4d74706590f94fe40fc27ec0609c63907c16436d9b1fbfc858bce7e038638537af4cec8397fe19fcbbacd0d5ad963813f88a4285188ebc7c8a26f4f9b5ff28aa18f372259d2e6981ec949142d19879dbe9df5f65644d28a0802a29bc62e366dd8e0877387a7cc67386397f4d20f377ce69b484ba59733c6109bc7697c88f0be45bb1d36e64ce5f4e311c9e72de6396d631e5e26621e9114c546e6072d4c63db25a7dc7346de9f6ad10724149f7b7c7e91ad374b11ab27006ef6162a5ab1f002675735d989d8543c70c0432b5ef21006dc9c4219458981887c7eeedf32f5b35b1f2f4c6fbfc74bbba705c7d8d8e63c670c7d0ed8ec238cafb45873516c647ef0ac615c5182345fb1da642f2f29d02b7eb8f6f019f8956086c22f0dc2ae7d45d11e0eda8a6f57dc63ea45b868d15fe41a0a086b32927d1f108c50c4441e040adf2bf006107934dcb6fb01f25add8fd7a191485a3d4833a29b3fbfcbfee808b80181c4aad5eb83cf9ccdb9a74bd76e1d3bc677b97afacc59872fe402c40af1768c60d9dd18b141c21e947ef088a7b348bac3c8e4fa8d5bd4c384c49e3b7fde636c10a9850b97aacfbdf40a2582b4d6222167be6671652ea32fbefaba3a6bd65c17f9c2f85054cf9ecbb17dccc60da488a9828c4882508d1d3f49ab23496cb65bbe044980a89da5cba8dbb6efa4eeb658d34ad57e543ffce26b5a52c44824517b13e4df6ea910e3a6d5ef3c4a8f1bfdf1f7fc058bad95470e70fe162f5941b3bf8e183d5efdaa62657acc2092389e3a0d1ad36b63e4e87134d6b5469dfa34cb2ce63da093603b1b3beedd7bf63be313539c83868ca05f7e8498060d4a1be1d71849893f1e142d7b5f49036c95ee5034d725633f0fd73a89bf0e14cd8511656e40c2e12e0755e51d455319fc4a1e2d6c801a02d7df17f4f9cbeb7f17bf5d3648dc795034975a2301d8acf82146d434071eca9520784dbff6e0d2fdf41ff5bad37f175ed2c96579fd736d194220f1d746c00d0824468e9910d46f605af0a489533f6917dee1242167706db54d26a14ac1d51037f9f9a949789910d0b5eb37792a5ade6a0f92f741960e1c1227fb01b91d9c3642fdaeda0faec43b457c24938c4822790f0813e6626ea32092ac8486af9b91481acb5d74888da7318fa85969d72597d5ccfce2bb4ab43c064aa47cfcc537f4383f32114946de8f1d3fe973d9166c20bb5033a108421d84023adbea9c71f6b1f61b366e51478c1aab3efff2ab943cb3ecb378452dcde4d49e6a4d42201f7ce811b5ca8f3568865ea8d08891f4450127a4d33969f274477854ec7172bd7fdeaa5d4450624a77bfd68f949090909090b8d34008d02a038984bbe97381b64942e2cf86801b106864eccc0cdaba25e3be2ec9a9b3d2868d721292602b4e926d2040fbf61ff4a91c03dbb418bb5384a42db18eb1e3bc97aed71fe4258d61f66ba52a0eaa1d3b275182c6c88a2f4412245423924b5c4412387aec38b53d3f1b8f48223eb27948984b5db44b24697657d267e090e1742d868d1cab3ef9f4b36ad162c5d56f2a57a3aa1f9b03041844f0cc59df5c72cd6eb1b01b6550dcdc922d1448a3ca8c84494b97ad5467a5cf55df2cff3e3d56961517e417c70f5592ba1413c06db762b51fe9790499f4354910395667c7842ecef8c4e469647e1ad34088a454232524242424feb450dc4b7f20dce0a740db2421f16744c00d08343a774d0d26081a3a624cf5e8d8f82b5bb7653850bcdd2e9904b9ca3a7828dfaa244819e2f83cea4a5a1112bd983dc8c8b6ed3bd46bd73d13c718553890b6b7fef701252945697d497b4412840644f2cd77ff479553662f005263ae63697743090d9e6bebe871135daead8f7a21bcac2c4949625fcbb6e174fd1153f8fe675f5272062575e0e061944cb375c01cfbc8bcbe96fe606b0be20c4513a417aec3966a24e79cb16cad704b6ed8bc3525f7b0d34c9a99124cdd929f28ae7e51a1b2ba6ec3269a31d65797dc65cb563a42c2234f8e183dbe2659a3c2f3e62f966aa484848484c49f168a962996652d466c7d811394494848f0117003028df113a7d0520853a7cd2c1215db69e1804169ce8b97eca99246b74cc42bda8d5d336e5a49873334f3273783ab20ee6eaefede82054be8dc3c774746fc605f83662d5dae9376d548b89822d90b21daae0cad6c4cb8871e3e72d4e738436cac748991486243cce1a7df7ce795f0521249f68368d56fd28c966101491c386828b51931a1afbc598e90afcd867571524571f79ebd1e995ced9e27b8f34289dd80721fcc1dd99b1bb229c1ce9a751bd5b4e1a3d5675e78492d56b294a5bb311209816ca246e6a2c5cb7cae594a08b32329a5bb2331b9fbdc458b973f896b9dec926aa484848484c49f1a8a968809c9678a04da1609893f33026ec09d80eebdfa052f5daadc95d2ad67ddc8988ee7b667ec4476299b244953ba0e651ff6487c636783c204952b6367661e99b4ab72e9895b56286b28d1e329a24c898b89efa2b982dac8e2ca6a5056f9e1175ae7103181e671a100e2981949f365039184ab262392cc4e10a5be0386a80f3df2a82b41108f443ea6132cc417e2d859a98f3a0d9bd2f71f7eb4088db7c43c6e8976ce9da704d6e174e4e33ce56a255708119d377f91301babe85ca5eb354051a2a452f59fb463a09969c52ebc347b2d399e67cbbea42e5fb1cab54ede3646f6172f59e168ddaec3c5711326d73f7ee254e183870e4b355242424242e22f017f27d6919090f044c00db853d0aa5d44f09cd90b8a45c6264cead56740eef51b376cb18d3c92728e9666b899eb9b6a840da42ceb60b6ba2d63172586737904524028e7eaf192282582043bbc398011a3c752d2026262ed32fa98a65a12c216df25859250231963afc88e7af05076beb29f1a89a4b9efb2e5abd4e75e784918cf09fba0e4c1be7a8d9bd2ba8ed84e9d3eabfe5cbb9efae0c38fd0f8c82d5bb7bb1d3f804435488ee4ebc6fa1f21847ff1e2e5ee64df1b99d4f72139d2d66d3bd4e88e89b69561904d1ccb3b1f7ea26edbbecb277b8f1e3be1e898d0c5919cda333d736fd67fa6464f0e9ed57986fc51959090909090909090f00b026ec09d829e7d0604eddcbd17b1925fb56cd3ee0062cb0849b2ede24a6b2b1ececbe0eacb869a81a8258818bcd5abd77baa9236142f2471d9b16b8f477d44f6f79a351bd457de28672be14ef152a5d572e5ffa72e59aa78104563e21990b25c1f3288b2768851cc3ae04e24d9ebc64d5bd5ff967f5fb3931029917d209283d286bbdc54110b09d515e4ebf30a15691c231b979d1fc47432e2e9ab8a0a9b51b2c39560c76696569618094ae4f499b3d5175e7d9dbae5c24e6fb1aa8fe935323ffeea5beabe6b5c27c3aaba1d0bf6634da64c99e1888e4d383571c2942fc8dbffd7a3777fa9464a4848484848484848f80d0137e04e02c8e4ca55ebee4f4eed991c1e158b8c9f4e42f29c50fa405450805e8c6beaf90b17680c1edc4cf17faddf55fa6a856bd7ae1162954d81383c576d498ba42d1e6a18799d4ffa21ab2848d3cd1b375df383a86edab25d7de7838f29417b4c40d0a8da57a214552d7ffbbd31255ed7ae5fa380326904cb568be334efb304b1056ea8997bf751326adc07bb376ede4615381028119164096ac68d9fe89a1fe469e5aab56af98f3e559bb60e552f5dba44e6ca1b1beeb9585fd491840d76ed0531bb42e6d8b435438b8be4c5ae0a883f538b41c8172f59ae56f9e167aaa63e6133e111cbb45bf5a79aea61722ee0ae4acfad00ec21c2b6ed3b73c322636ea4f4e8dd87ccfdcfbe03860413122cd548090909090909090909bf21e006dc49183d6e62d0d8d1e38256ac58fd78444cc70c422c1d842c3991e913e51ec4c8a26ead070e1e52d7aedf4ccb72802861df1ef29a6906219b46ecddb71f37ff34860e1960a13ea5b32caede8add1bfecf0add9f38799a12bd1d19bbd49dbb3269098c19b3e6a82fbefe267595b4522491a515096b7af51940e309f7ecdd4f8f4dc301faba3feb201d176e9e997bf6d1ff6bfb8daf46e4bd073207b753248f01e9c61cd88fb582a20bd2f53621bc20513c22c9620b9f7fe5354acee05ebb87aef57e3adeccf4b9ea523206c6c55ae33da8bddb3276d2b1515712c7b43b732fb51dfbdd90a9bdeecadc435553105028bdc2f5b748b4335b8f8ddc4ee676953601097ed47b6913104d4a2409e9acdda009b51931a9583f9c4f5c6b7087c6f542ff3e70883e842070744c48727488895f3969f2f4d7c8751544ae274922252424242424242424fc8a801b70a721a662c5e0bacf3d1f3464d8a84a6ddb471e993173b6e3cad56b4e4d91b4065431d4f9c3cd3e12e83055324fd1bcc65524d1073870e8b07a8890292861eb376ce1d72914b9bdeaf192202f4b96296af691a384045da1aadfd56bd7d459b3e6aac54b96a244d2aab4c653cf3eaf3ef3fc8bb41c0948145c3af18a7118602b25aa3b76d19a8c97f579282eb27697a82ae8ea7b31af2f5c78b793be1883edc73c581f90e8af2b567125fc7153ee88dd50f44076bbf5e84dc7423fc46b22ee128a30c6b84cd614ef31601f32db821c9ecbc971db27c679f51c79ddb97baf3a0fd959ad88a448a524d8b479bbdaa3773f9a18e8c932cf788d5165ca308e15596991dd156551700ce774dbce51db18b4f79048e8ccd91ce7b8f193721b356b7560e2a46955c8fa16ea3730ad50a03f531212121212121212127f3e04dc803b11fd070d0d1a3761f23f3a262475681f1d97b363d71e24de711ae3f9cc60652c009099ec23c7289962ededf4030182920672954348d6ca55eb68ec2337f98e05d2f5a2f7c6aca563c74f521f7ce8112191d112f114a7ae945f7e57852aa4a2ba98780f6e945003b563f42d732bad238918c9ebd73cc60729aadbb0098d81842dc8c00adba04e2236b2ccf32fa891b1f1eab1e3276cd7ed844b2854dae3274e70cba4f08e0fb1a18801859bb15b59161ea1e4fd4d5e517b132af3abe5fe4bd7168a24cbc42a22f354892ca69d0700719f88f7b4b2598f0175ae58b1dad1262c02f533a3c9dcffe8d577a08c8b949090909090909090b82508b8017722506f2f31a57b302163c5a2e212c6754eea76e3f499b3b64b82a00d142d9650c60ec962251ba064a23ea3565ff2b4ba881011a6368a4a80f048264df0428828942a8c3d74c4189ad194171fc94a6a80b83cf5ec73b43e228b0f14d98a983c1049103f5f37105cb8039bb3b6d25225376ea883d34650651428a2bbb23285b265687beada698710b20db642254666572bf2c9f6b1922c0b17096a7bf21448535c24b2cf2a2bd7aa5f56a84cd7fde5d7cbd1d8cd6a3fd5a0e498e7b6ab65a47d92aac60f3dfca89a94924a09b0d5b1329bc9f139e2e2939cf189c9f3172c5cfa60e7aea94123c74c902ead121212121212121212b7040137e04ec5b8099383aafff26bf092a54ae9f691312b527bf4769c3875ca6157d1c206b7cf6cdd55d52e0185d20702caea4222cb2855c5ccd942ad12f180781232989e3e9fd61f446912909ba2bad2652493cc7514fbe036dabbef4057a6562bf28275801b2e12e7f8ba5122b99f4f24b18140d76bd494da559a9049d80635b277bf8134ce128aa62f9971912c077192507aad368d20df24e7eca8ba70e1527702cf23949c843bb3f57a916bd76d547fabdf88bab4c6744c50d7aedf48dd9841686bd6fd9d2635724bba035756728c20cd5f10f23975fa2cafd70d3b47c78e9f74c475ea7233222a6ed1a4c9d39eeb37302db8ffa0a1528d949090909090909090b86508b8017732c8cd3cbd191f396a6cf990f00e3b868f1ce3389793e3b04b6240b6e04e79fcc4494a50ec1250a888201cd7742281bfe72f58e2ddbd95a352824042194302990eb1f134e6aea8abfcc463d4d5127f3ff9d4d36af7eebdd5f3bac26887c020ab2b489faf9ba6481ee0d69164241584b141f356ea475f7ea37efacd77eaa0b41154fd444219d868d7ad151bc82e12d5dcb871c3f298a05c1e3894ad2ed26b45b298533b89756809167dfd71be76edd947c7c9d899e9e6628c635b4348e67b9f7cae250ed2930a4189c4dff51a37a771952c03abe818310eda906bc5d1abefc09b8d9ab7d9306efce44f0e651fb90b4452bd033e3f1212121212121212127f5e04dc803b1d73e72d0a9e3c695ae17e0386546bdb3e72efd011a39dd7af5f77d82132d455939041b8498270d9253e200870df3c71f2948b30ec21c48b267dd1dd27bd65703502897340269138a67352379a3914a40584122a18084d58640c255c98cfee76e2e4497a6cbeb89962b322926cc398e7cee5a8bb329115f6905e26e53a5d1724d9b1b3b908efb1e3c2f567ef8144bac5448a54488b2447c0f68cdd544586aa89736fb483018a6a4ca7447a0e9e7efe45aab8a2be64545c025d4fd862159f4ad79090e9050b96387bf6eaef681b11953d72cc84ca4b962af7c8e43a121212121212121212b7030137e08f80f90b9604931bf5bb7bf619f063e3166db266cc9a83da92f6c9e48d1b544983abab37d2c5f6c10d13a489b9635ebf7e836634654a1997445a901e16b787f216c8020a12435d29c92bea362aabd6523b7dd94e9f394b0913233e76373b44d29ca0485b932b744d90ccc8cec6d61e253240de4473c00e94d780ea3bdbae3bab8144e26f1050905e9a4828eb80cbfd96a7b8029bb66c53df78b73c5584c8626ccc00001cf049444154df2cffbe3a62cc04611f633fb66fc1c225ce773efc38b7469dfaa706a78dac3976fca4bbeb356e2e63222524242424242424246e0b026ec01f01fd06a60541e9c1eb90b411dfb50a093f4c88a593b9b9da2151203488974406ce5c1b641284136d91dd9411b5dcdc5c4a26598d42db995c75c2033209774bc4604e9f99ae7ef27505aa46764a4ca6ae9f88cbf4455dcc218410350cedc680b2cd0e9164eb605c5ff443821faca5ddf9d007c4ee06c7b59866ca25e474ebb61d79aea956eeab9c043be8b360e1525ad20476c1ddf7d4a93396366904f7baaaac5ca3d669d8589d38791ab5c38a44e2bcb0d8d53367731c356ad7bb59b172f5fda3c74ca8bd7ce98abb890d209192484a4848484848484848dc1604dc803f0a8c6432b567df1a6dc22232478d19ef3c772e2797ecb7456ca0a4c17511ae8f2005565b5ee2972394a4381cb92e850dca1714b0396675d206b9443218b8c822766fd5eaf56afdc6cd54721c545d646e957637288450fb3485d037220942ec8d489a3796bcc88e029a9705f73855838d0a2736ea3a4b88f3baf59bacd547deda32775610f345cbe8bae17cc2d5f7e0a1c35cd26adc30376a6c22232b8838ea689a49a4f16fb8f5ae5eb30124d579facc39c7c0c1c31cbfd4aabba777ef81bf2e5eb2e2beb5eb374902292121212121212121715b117003fe48606472c8b0517febd36f70d516addbededdd778023e7fc05cabeecc417d21a93840cb1983d6f84086a1f14c41c3dc10ce6c07bbbf7ee77919bb97aeca4a57ac671c9dcb869abba71f336ea9e0a72b72feb805b5c9f9d6341fca2b76ca8e6edfc850b3e1149d606b523410cedaaa620ddfbb30eba32cb1a4924489ca2acc9cb862baa0b69111389ecac20a95a52a5533413ad9dccb057ae5c51478c1aa37efcd5b7f4a180d136e30642ba7bcf7eb573d75435be4b8aba7ec366476af7dece5621e1c7468d9af0edb429b3eeeddeab9f4cac23212121212121212171db117003fe88983e7376a1818387078d1e37f1cde621614a524af71b8410387273e1e9ea9d1c4251838a0530e2c653f48cf19220932cce8fd53a44721890488fcca25edc5c8d4978162f59415534286420b8e7ce9f779bdb6a03d181eb2d5c707dc9a29a1f220940bd839aebcd3ea32b2cb2b0deb871d3f53ec86fc6ceddaea43a96249c535685c59b2e59aab89213e1f891659691486f351ff1506066fa1cb57d548c7af8e871b73eecdcc2f537aa6367b556fd46eae0a1239d6bd76f7424764db9deac75e8b291632694fffc9b4a412d43db0793b6528d949090909090909090b8ed08b8017f4444c62504a5f4e84d95a0295366bcd43aacc3c4a8984e1756afd9e020e4ca6997841d3b7e92c6d4c175119b557c1c2b61c1c8170348202b5721521fbdc54da2ef96ad195455c3f8225bcc1b23b350f71c4efbb195bebab6b2d21c206b288d62a77d5ee9152df32dfa83f06dd8b4d575cc73cdeb655e375e9d48f20a2513aec02c032b1200599d43b6c18eb3e772d4c347340518719166155b532cafaa13264d55095144fca673e5cad58e98b884eb2ddb868f1e9c36f295a3c74e14fee4eb0ac1b80ed53be0f3202121212121212121f1d743c00df823a347effe414b97ad2c3475faacd21151b15ddab46b9f43488ae3e2a5cb600796ea248b8184c20632e88d4c82b49d3a7d5a2b2ba1675765ef83902e5bb6524d4f9fa7296c3cf2e82d7692ec5fb67c2555fd40728d738b3690201061802582b1b34191dce3638c2494c4dd7bf7b9e209bd6dd7ae5da3c702a287794042c9b912abb73c02ce5c870d996fd7aedfe44a4a8473061537c7a2f6267b4f3b7fdab966045294d53597ac3f1e1c9c3a75c6317dfa2c67eb7611574223a27a0e4a1b5162c0e061c10d9ab792eeac1212121212121212120145c00df8a323b567dfa0d884a442bdfb0ebcaf7bcfbe359ab60a3dd2a7dfa0dc43878f3a18b9b22293201420225a1ce47957121e2ec1c8cd75a9988cecb131507311b5224176e69a88905d575746b2366cde4a15379678c7aa1c05dab14caa76b7fc10491ac349c8a0b74436ae921ed7af530512e46dfdc62dee596ead12eb08d45cacebf68c5daeecaad7ae5fa36a2c736fb52291581bb831239e9229be22dbf587034ed236b74bb71eb94d9ab7c9ecdc35b53199ff3f0949dd8222e31224899490909090909090900838026ec09f0170314c4ce94e6ff0870e1df17e93e6ada744c6c65f58b66c25d449a7be591220286750ab9050262f6ed273630a248dafa4e42d6f5c56ca629e5195f4b144088b9d44498b9dbb322981e3116263fc26ecf6c525d61722c9f62363ab31fbaa555b46ce77eede4bb3aaa6a7cfb756662ddea34975c85ac01597917cad2ee8514a54ad4824259ce418b309e1c4f932927f417b27b1dbb164c90a677854ec95daf51a4def3730ad3c3907d4955595e53d242424242424242424ee1004dc803f0bc64f9c123475faaca05d99fb0a0d1a3cbc5487a88e912d42c20e0e1d3e1a0408eaa4abe6a4880cc17df3f0d163d47d157f9b4b56b0bfb57a85c7b4d844438c9da6945da7a407e4c7a54eda4dc0635627110fb8722d8d010461e4114910a583d987bd269a316e2092ac8ea49db22120702062274e9db26ce7405d48ea6e7a545da1ac76af0dc9238d0202893563f1a3cb96afa20496a9b3587b107964dde5957031bab2422506c906e1e4952c315e0be4d57128fb88b3ef8021cee62161d9a111d18923464f2c8187145285949090909090909090b8d3107003fe6c6037fe8458de9fd835f58bd66ddb2b31b1f137972c559c3774366222106ed092c29c55f7ed3f4055384614cded3532799cd62e342a866c8c63274ed1f2143367ceb1248cdec0329bae5ebbc1cda596d9828ca8d9478eba92e0988fc70c6c500b4176af5ebbe6b53d3b56241a0201356e466246554262df9a751ba922eb917cc88bebaa5985c4baa176236c658411c78ef223274e9e1212436c5a4dc9d3eafeac03b47f9e6a29ac13e958bd7abd233c3a2eb7518b36cb1393bb7f376aecc47f162f555a26d4919090909090909090b823117003fe8cc0cd7f85aadf07ff50f3b7a009e3273d1811d3b1e5cfbfd6d9da77e0901b193b773b08717073773503c4034965a066b112214642e98aa573e452b50c64f286294691651485abebfcf98bdd5c576d432756549d4b9f475d5e57ad5eaf950bb97c9912265643112eb97637d8857847ab7841e306751673e2951d1b36cc7ff9ca15ba4620bab08faab0aca487b79848b312a9bb04a3240a88ae913453724e8e11249fa74462c35ac0bdf890eeca2a8a1b656eace4f89d1b366dbdd92539f57add864df64575ec1cba4259f340951f7e091a38647821f50eb896252424242424242424247808b8017f66f4e8dd3fb8ed4f3f0565acdf78774ab7de6f356919323c222aeec8d01163720951715cbc7809319454cd3b7dfa2c4ddcc2702e2787ba4feedeb357ddb8791b2527a8f188843c688ffdf83f54cbccbd7bd55dbb33693fc43422ab680e70fe02327faa3b76edd64a8410926597547990495de563440dc40d351a613fe63b49e64116533af779860bba1d9a3dd807fb407e376dd94e4919f6e1fd73a657637b1cfbd66d192ef7591039adb666b6ba76fd4675fe82255a1ca41571b491680858b96a1d25ad98f7e2a54b741eaceb9ebdfb6986d60bf4fdcb6e0079c439397cf8a89ab13393f60759c63ef64ac7baa4659025633af6671dca9d30698aa375bb0e47eb34689a96daa3cf27a3c74dbc0b0f20089184a22d95480909090909090909893b160137e0cf0e10c9c15d5382eb356e1e3464d8a8221151b13f346ed126bd65dbf0ebc3468c726cdb96e1387aecb813ae9bc8dc0a202611a52b4048f0fef6ed3bd555abd7a9abd7ac27a4711f8d01c43e1039902cf4417dc435eb36d0d843ec03c96200213d45882a4a5730c234574422adc8a581a88194c28514c40b6539501f916570853d7bf7ed27c852f7edd7b01720b6611f48e4a2c5cb2849c67b50fff00a77de3da41f481b8063857b2888f4ba0d9b69aca196e1369b1eebdc790bf3c8b13742cc390697daaa1fcb36b2ce181f2ebc9817eb98b9671f5561376cdae23a2ffbf5f344cf01790ff6ad50d6d0f5ddb16b8fab1dda601c421a59bd4d6746c6aedc3efd06a1a4c7d556a1614bc22263abf7ea3bb8c8d885130a4f4e9f11dc6f609a2490121212121212121212773c026ec05f05847404c5c47729dcb7efc0c2fd060c7930322ea176f336ed948e09491767a5cf731092940b5747b85022ee10af006a0a4281835b2762f340ae50d202eeaeac0d03de07c9820a46c7b9a98dc36228a186613fcd643a7b7efe88a4a9b622881c0077501031b87442cd837d70eda4af3a900808368110823c42a963eda0eae1ffb091bd8775c0df2077870e1f51b76ccba0f3cc9ea3cdc994524bf5d12a2e120a6bfa7c9a5008eeb9b00deea9cc5e28a2598410c25eec834dd70cc783984d90461060b4a5c7a7db8c3a96f458481f72ee9c645d72172c58e2888bef72f1b77a0d57878477683860f0b0a28438168eead83938a9770f9950474242424242424242e20f83801bf05702dc155b86b60f6ed4a24d302127c1a3c74e2cd6b4454893babf375a9492da2b67ce9cf94e42381d201eaa209d29c8165c2c016322186c204170b1c43ebc9a33bab257f4dbb0699b3a6ffee23c426945bebc914c5dd503e066ba6ad53aaa30c2251404d81c539883f21ffbf653f28836283512d93141edd2ad0755f4407ee1268b7d1867cdba4da4cd92bc18485d49f49a3c87976c4727bf1807c98876efd94fe7626be3aacb99739e2abf586f8facb9842822990e4824abb7c9298f4263200941754c9e32c311d329f162a3e6add6346b19da6ae88831c5a05013521cd4293119b1905285949090909090909090f84321e006fc150102d13aac43306a4f2a2bd7ded5293eb94cf356a12ddab46bbf3022a6e3c50993a6c2d51544c4e134b01363817ba88f70994416511021461a590d45b854c2a59595ad309712815a06774ba87120551e65326c12485eac2112f3e0ef254b1575fdc6cd940c42d5bb7af5aa9e90e6b2ba737726259049ddbaabe1d1716af39076eac021c3a8db2bd44ab8b22e59b2c24552678b08afd57ba6fd341b6bfa5c3a2fd4531e0964aa2dd68fc564b20d8498aaa3d987a95b2b4826cbc86a18c349c8b3831cb373dab459ce8e9d936e1002b9f8b77a0dda764a487a29a47d64e157cabd1d8c070ab80e027d2d4a484848484848484848e4070137e0af8c15ca9aa0e62161347e72fcf8497febd9ab5fa9666ddafddab8459b051151b1d7468e1ee7d8ba6d8713e521506790f47153cd407a50d3707fd641eaf66a2c78cf88e2e12347a982c6de67afe80f802c419503b982e2e746d87c2813224c60a3935424fb59bb6e238d9b448220a8a670519d3173b6ba3d6317cde28a0cb3cb96ad74c5717a9042abff7bb117e4166eb0eb376ea14a2332dd42b5bd7efd866b3de0deda6fe010b562b51fd5d88424fa7fb65e5056b538d66c1a0f6a2a83e2d41548c7cedd7b9d43868e74b40e0dbfd4a465dba5addb75684ace71b17e03d3eefdf1d7dac1bfd4ae174c88a424901212121212121212127f6804dc00095a2e04eeae853ef8fc2b4a30c64d98fcb7c8d8f88f1b356bd5b76e83c6190949dd2ecf9fbfd8999d7dc4818c9fb9b97942255ee1220a374b9034287f208eb43c48ae468e407e988ba69188b28d8c46fb21610f6210e730226797505a903c903757c6d7f4f994acc2a5164ae846321f944716b33963d61c5756d8b9e6b1ecb8b1f2882c014b0a04b573c182256a48fb48b5d2f73faa557ef8596d1719a34e983c55edd96780fa6d95eaeac38f3caa3efad8e3ea43e4f5b7df1ba9bb33f752e572cfde7d642d4f1809a493acb393905142f6773a468f9de0ecdaadc7e5064d5becaf59bbfe88f0e8b84fa74c9b793fce6799e75f08fadfa75f14923521252424242424242424fe2c08b8011279183c746450e7aea9c13fd5aa4309c7c83113ee6b131e59ae4e83c651cd5bb55d18d7a9cbf121c34639090943f2164a64542d969226e9415c9f9649f410253f37f4443d70c7cc3e72949245fcffc8d163340b2cca70c0fdf5ecb97354259cbf60b13a91902a10ca65cb57b9e2093dca6af8a2541ab2a3b2b846e6feca6215a9126a68c7258a5e92e67864642580ca0ac20a0c183c4cfda5763df58d77dfa324f1f1278a513cf2e863ea33655f548b162bae1679bc287d2df1e453ea13254aa8c54a9652abfc58439d327d165d438793fc73389c84cc3b0969774c9d36d39994d2dd191e157ba2659bf059f59bb4882424f5c311a3a6fc13e7af66dddf832a55ff2998bc17fce0438f4812292121212121212121f1a741c00d90f0c4ccf4b941c9dd7b057f5ba53a2520e3264cbea775bb88d2addb75a8d0ac6548bfc62ddaec8f8ae9943b71d214e7aecc7d50c59c84204262745cbf7103ffa799444128e1ba0a82397cf458eaae896438646c4aa8aafe5043adfd7b53b565687b352a2e41fdb24265f5e537feab26a6a46ab522d76ca0718adc184a1ea9b39301d617a5d397b10caeb4781f44180ae4ac59f3d49a757e579f7efe45f5b1a24fa8c54b3ea93e4ec8a20b4f14a7ef31e0ff8f16795cc3638f1372f984b356fd468e8387b21d478e1e772e5bb6d23968c8703534223ab75568fb6d2ddbb6ef1ddd29b162bf81c34a8c9f38e59ed49e7d83aafd5c33b842d5ef834024037d2d49484848484848484848dc0a04dc00096b346d1d1afc43cddf82cb3c573668f0d091c17dfb0dbab77d745cc990f6913f3668d23cad41d3167b623a25e60c1f35eea6a2ac41cc24b2bee65ebf7edd0102b97357a63324228aaa6c20465489a304aa98812c15a5248bbea7fffd6ab977a8db27081a143d64389dab9335afc4d12a8ed10e49f491603202099759d889f7fa0f4c53eb3468ac3e53f6257a7c4f9428491546fc8d6366c789b5c0ebc38f3e4641f63bb10e2fbcf6a68310c2dcd08828474262b29a94d2fd0621f2e71a356fbd232c3236ad4b52f76a43874f2c9a98947a2f21feb474c7eb6f970f26445296f1909090909090909090f8d323e00648d8c3b419e94148d252e5c71a414d5ab545cc5dd0c1438783bb74eb51b669abb6757ea8512badf6ef8dd7768cef726248da88eb5014f7ee3b80643db9ed63e29c9f7e5bd1f9ca9b6f394a3ff3acf3e1478b50174e28702057c54b95564b942e43df03b162840b2ea0ef7ef4a9da3aac834a882a55291143399f1036b7384a8e5b2937b6d14ec21c1fc8e66cbd9e255456c459c2be5e7d07a93fff565725c49b1e03551cc9f151926c20cd2c0e92fced2c59ba8ce3e9b22f3ade7aff2367b51f7fc925e4dc1111d351edd2b5dbb52ec9a98723a262573769d66650544cc28f13264d7d6ac7ae3d773d51bc4410621e5f7abd5c507c97942019ff282121212121212121f15742c00d90f01d2092c9dd7b05356cde3ae88b0a9583a188f51f34f4df84f0bdd4a465db6a0d9bb6e8d4b26df8acf00ed10708b1bcd17fe06075e8f0d18ebe038638c2a2629ddf55fbc1f1da5befe63efdfc8b0e28702096cc9df391228f51b5ae68f1121ab1d463095f7fbbbc5aaf717375e2e469b4ac07082514c0d97a690e8fe43c56318cbe28982622cad447466a910d96906c3529a5074d9653f695d75442f25c765305921c17d4c6871ea6b191cea79e2beb78f1f53773dff9e85347a56a3f3aeb3468ec68dca28d1384b9434ca72b9d1292321393526692d7988ef149dfc527a6bc306deaac7f55fbb966509d864d83c9f107b56a1721c9a38484848484848484c45f16013740a2604046d0b73ff838a853a58ec14f3c512278d2e4e9c1293d7adfd72a24ac48b31621afa33e65fdc6cd06376bdd6e73646cfcd9946e3daf27a7f6bcd92126ce4108a9b3fa2fb59c9f55a894fbd6071fdd7ce685971cc54a967280586a788c124b46caa8cbe7abafab751b3551fb0d4ca35958118bb858aff7689930c70e8914bc674cd203f28af930eff499b3d598f82e2a397eaa3a32b2089b1f29a2a98fa59f791ea4d951fe93cf6e7efacd77b9557faae924ebe16c1e12961b1e1d7bb34374dcb5f6d17127c3a3e25646c4741ad0b55bcf9ae4d85e246b548490f3bf0f1c323cb841b396c1b5ea370aeed37f70d02b6fbe25c9a38484848484848484c45f1e013740c27f401c65f75efd82baf5e853a8fcc79f074331abd3b029253ec3264e7ba0656887579b340ff9a169ebb04e61ed2327b68f8ccd68d721269b10a8b3ed3a44df68dea69db37e93166ac5ea3fe5befbf167375f7deb9d9b4f977d3197904b67d1e2259c259e7c0af183ba8af998f3b36f2b3a41e4264f9941dd4b41f228a1342a94765d590544d2454ee72da2e34f9a3c4d4deededb59b75133e7ab6fbdeb7ca24449905f67d9575f771242e9f8f8cbaf73bfa95cfde60f356bdfac59a77e6e9d068d9d0d9bb77686b48fbc1a11d3f114c181a898f8d51151b1a3a3e212e26213922a2727f72a3b7cd4b8fb91d8086eaa0b162e0d22eb10141e1d5708353e037d5e25242424242424242424ee3404dc00895b0390229d480613d285bf831bfcd434b8d9dbcd82f6ed3f58a84bd7ee0f86b68f2ad72224ec9bb0c898061da23af68e888a9b4808d6c2b0a8d89dcd43c28efddea4d985dfea37727c5fe357e77755ab3bbea85029f74342d4deffec0bc7dbfffbd0f1f29be59cafbf53def955e56a6aa316ad1d83d2863b162d5eee58bf718b63c952c541889f8390c07c811047da7f85b2868e37337d8e83903ce7cfbfd5757ef0f9578e72ef7de0f8e4dbef727fae5527f797dfeae6d6aadbc0d1b4555b2721c3b9adc33a5c0ced107d22242c6247ebd0f0c52d42c227b78f8eeb12db31f1d7c8d884cf7bf619f0f4b09163ff3565dacc42a59e7a3a98906f4abadf2cff3e8864308864a0cf9f848484848484848484c49d8c801b20717b00a2448864d080b04141d366a407133255b861f3d634c3e8d4e9b30a774dedfd9f0eb19d1feb101df764624af7373a76ee5a21262ea10e215f71e151b1e35a85842d6cd6b2edda662d430efcdea4f955421c9de4556dd0aca55ab35e43b5ea4fbf38eb366ae2ecd567807366fa5ce7ec39f39d84543a972c59e15c4c5e17e958b868991b1619b098b445fba54b15fa4aec728e1d37d189da99517109cefa8d9aaa757f6fa4625e42186fb6eb107dbc6d78e4aed6a1edd790bfe745c726a411421c1d1e19573f26be4ba584c4e472a111514f4546c53fde77c0907f2e5fb19a96532124b9704a8fde8541ae2b7fff33557165bca3848484848484848484847d04dc0089c0a247effe50e30ab58d88baabca8f350abdf3e127c113264d0dea3f686870b71e7d0a2725f7b8bb637c977b929253ef1b3068e87f08e97a3a21a9db27f19dbb568e8e8dff35ba63e786a47f6878746ce736e191bd1b356b3dba4efd46735ab70d57060e19be6af69c05cbe6ce5db86aeebc45ebc9eb26f2ba75cedc85dbc9df1973b5d7ade4bd4d74ffbc45abc8bea5e4bdf984402e8c8c8d5fd1a859cbe9f51a36e91f12dea1536c4252cbd88e9d7f8f8b4ffe85d8f055ef7e835eec3730ad589f7e83ff3d68c8f0bf474475bc27323afeee98f8e4c2bdfa0e2c943e7b7e50c9d26582deffeccbc223468f2f3c7adcc4e065cb5749c228212121212121212121514004dc00893b0e4123c74c084e4aed598810c4c26151b185d66fdc82b84b10cee0e4eebd82bfaf512bb8f433cf0541dd33f63d73362778ebb61df74e9b91fe00219c8f93b645a7cf9c5d64fe82254509a92b41486229822709b97c6adefcc54f11e2f814f9bb3479af24792d41f004419199e9731fecd967c0c364cec766a5cffbd7c953a70b1be7c1bcb0a163e7aec1d19d128309810d1e3a624cd00bafbd11f4d9b7158389cd501ba9e228954609090909090909090909ff23e00648dcf91011c9c79f28163470c87010b52042068353627b068fef362938be4b4ae1a6ad430b8d9f380524d427ac5eb301fd0a136258a879485821325fa1666dda15eaf7ffeddd210e02311884d1f4962812ce85e0aafcadc6a086619f78b2e9977563bacfd7befbdc77bb3f3e0ec9f477020080ab8807f03f6648ae1992e7e5d319926b06e1da23f41b3324cfb93d0c67489eff65ce9034120100e087c403000000e8120f000000a04b3c000000802ef100000000bac403000000e8120f000000a04b3c000000802ef100000000bac403000000e8120f000000a04b3c000000802ef100000000bac403000000e8120f000000a04b3c000000802ef100000000bac403000000e8f20623e18562b91c50520000000049454e44ae426082);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` enum('Mr','Mrs','Miss','Dr (Mrs)','Dr','Prof','Chief','Chief (Mrs)','Engr','Surveyor','HRH','Elder','Oba','Olori') COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` enum('worker','senior pastor','pastor','elder','usher','member','chorister','technician','instrumentalist','deacon','deaconess','evangelist','minister','protocol','hod') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'member',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital_status` enum('married','single') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wedding_anniversary` date NOT NULL DEFAULT '1990-02-02',
  `member_since` date NOT NULL DEFAULT '1990-02-02',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `member_status` enum('old','new') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'old',
  `relative` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `branch_id`, `title`, `firstname`, `lastname`, `email`, `dob`, `phone`, `occupation`, `position`, `address`, `address2`, `state`, `city`, `country`, `postal`, `sex`, `marital_status`, `wedding_anniversary`, `member_since`, `photo`, `member_status`, `relative`, `created_at`, `updated_at`) VALUES
(3, '345', 'Mr', 'Oni', 'Aleogbin', 'iamblizzyy@gmail.ca', '1988-11-01', '08149090022', 'Doctor', 'senior pastor', 'Zion city estate, FUTA Rd, Akure, Nigeria', 'Zion city estate, FUTA Rd, Akure, Nigeria', 'Ondo', '', 'Nigeria', '', 'male', 'married', '2018-07-25', '2019-02-11', '1530864614.jpg', 'old', NULL, '2018-07-06 07:10:14', '2019-02-04 12:10:43'),
(4, '345', 'Mr', 'Oni', 'Gbenga', 'iamblizzyy@gmail.com', '1981-11-08', '8149090022', 'Doctor', 'senior pastor', 'Zion city estate, FUTA Rd, Akure, Nigeria', 'Zion city estate, FUTA Rd, Akure, Nigeria', 'Ondo', '', 'Nigeria', '', 'male', 'married', '2018-01-10', '2018-08-13', 'profile.png', 'old', '[{\"id\":\"3\",\"relationship\":\"brother\"}]', '2018-07-06 07:11:18', '2019-02-04 12:10:43'),
(5, '1007', 'Mr', 'Adekunle', 'Alugbin', 'alugbin96@gmail.com', '1989-10-27', '08105507172', 'Doctor', 'senior pastor', 'No 6 remoye', 'No 6 remoye', 'Lagos', '', NULL, '', 'male', 'married', '2019-04-16', '2018-03-03', 'profile.png', 'old', NULL, '2018-07-09 16:37:45', '2019-02-04 12:10:43'),
(6, '1009', 'Mrs', 'Aderonke', 'Ajiboye', 'ajiboyefavour31@gmail.com', '1981-06-27', '08101597010', 'Retired', 'usher', 'Ganikale court, Boladale', 'Oshodi Lagos', 'lagos state', '', 'NIgeria', '', 'female', 'single', '2018-06-10', '2018-12-25', 'profile.png', 'old', NULL, '2018-07-09 17:58:51', '2019-02-04 12:10:43'),
(7, '1009', 'Dr', 'Leonard', 'Oshiyemi', 'loshiyemi@gmail.com', '1999-04-13', '08115789252', 'Engineer', 'pastor', '163, broad street, first floor, lagos', '123, badore, lagos', 'Lagos', '', 'NIgeria', '', 'male', 'married', '2019-04-01', '2018-01-24', 'profile.png', 'old', NULL, '2018-07-09 18:15:25', '2019-02-04 12:10:43'),
(8, '1009', 'Dr', 'Jake', 'Jones', 'james@gmail.com', '1983-05-19', '08105507172', 'Doctor', 'pastor', '125 James Bond Road, Ikoyi', NULL, 'Lagos', '', 'NIgeria', '', 'female', 'married', '2019-05-04', '2018-12-15', 'profile.png', 'old', NULL, '2018-07-09 18:20:49', '2019-02-04 12:10:43'),
(9, '1009', 'Dr (Mrs)', 'Adejoke', 'Ajiboye', 'jesutofunmi@gmail.com', '1985-01-03', '08167303168', 'Doctor', 'chorister', '4, broadway, lekki', NULL, 'lagos', '', NULL, '', 'male', 'single', '2018-04-17', '2019-06-24', 'profile.png', 'old', NULL, '2018-07-09 18:26:04', '2019-02-04 12:10:44'),
(11, '487', 'Surveyor', 'Leonard', 'Oshiyemi', 'lloshiyemi@gmail.com', '1984-11-21', '08115789252', 'Doctor', 'senior pastor', '15 Teddy Road', '15 Teddy Road', 'MA', '', 'United States', '', 'female', 'married', '2019-06-21', '2019-11-05', 'profile.png', 'old', NULL, '2018-07-19 19:58:39', '2019-02-04 12:10:44'),
(12, '487', 'Chief (Mrs)', 'Josephine', 'London', 'jlondon@ymail.com', '1980-03-11', '6672311625', 'Lecturer', 'chorister', '1145 Admiralty Way', NULL, 'Lagos State', '', 'NIGERIA', '', 'female', 'married', '2018-02-06', '2018-10-20', 'profile.png', 'old', '[{\"id\":\"11\",\"relationship\":\"father\"}]', '2018-07-19 20:38:36', '2019-02-04 12:10:44'),
(13, '487', 'Olori', 'Amaka', 'Duke', 'amaka@gmail.com', '1981-06-07', '6672311625', 'Business Person', 'usher', '6009 Genesys Road', NULL, 'Oyo State', '', 'NIGERIA', '', 'female', 'single', '2019-05-27', '2019-10-01', 'profile.png', 'old', NULL, '2018-07-19 20:57:49', '2019-02-04 12:10:44'),
(24, '500', 'Mr', 'Leonard', 'Oshiyemi', 'leonard.oshyemi@gmail.com', '1995-03-05', '6672311625', 'Doctor', 'senior pastor', '15 Teddy Road', '15 Teddy Road', 'MA', '', 'United States', '', 'male', 'single', '2019-06-25', '2019-12-13', 'profile.png', 'old', NULL, '2018-08-06 05:38:40', '2019-02-04 12:10:44'),
(26, '500', 'Mrs', 'Joke', 'Oshiyemi', 'kingkyle3001@gmail.com', '1986-04-08', '6672311625', 'Doctor', 'senior pastor', '15 Teddy Road', '15 Teddy Road', 'MA', '', 'United States', '', 'female', 'married', '2018-04-08', '2019-11-28', 'profile.png', 'old', '[{\"id\":\"24\",\"relationship\":\"husband\"}]', '2018-08-06 05:40:47', '2019-02-04 12:10:44'),
(28, '600', 'Mr', 'Leonard', 'Oshiyemi', 'loshiyemi@gmail.com2', '1991-03-25', '6672311625', 'Doctor', 'senior pastor', '15 Teddy Road', '15 Teddy Road', 'MA', '', 'United States', '', 'male', 'single', '2019-05-22', '2018-10-15', 'profile.png', 'old', NULL, '2018-08-06 06:03:02', '2019-02-04 12:10:44'),
(29, '600', 'Mr', 'kyle', 'Oshiyemi', 'kingkyle300@gmail.com1', '1998-10-15', '6672311625', 'Doctor', 'senior pastor', '15 Teddy Road', '15 Teddy Road', 'MA', '', 'United States', '', 'male', 'single', '2019-06-22', '2019-09-05', 'profile.png', 'old', '[{\"id\":\"28\",\"relationship\":\"father\"}]', '2018-08-06 06:04:36', '2019-02-04 12:10:44'),
(30, '600', 'Miss', 'Bibire', 'Oshiyemi', 'mrkilltheshow@gmail.com2', '1982-04-01', '6672311625', 'Doctor', 'senior pastor', '15 Teddy Road', '15 Teddy Road', 'MA', '', 'United States', '', 'male', 'single', '2019-12-22', '2019-08-11', 'profile.png', 'old', '[{\"id\":\"29\",\"relationship\":\"brother\"}]', '2018-08-06 06:05:48', '2019-02-04 12:10:44'),
(31, '101225', 'Mr', 'Michael', 'Ishola', 'myckhel123@gmail.com', '1993-08-21', '08110000606', 'Doctor', 'worker', 'ikate', NULL, 'lagos', 'nigriea', 'nigriea', '101225', 'male', 'single', '2018-08-12', '2018-12-23', '1533747775.jpg', 'new', NULL, '2015-08-09 00:02:55', '2019-02-04 12:10:44'),
(32, '600', 'Chief (Mrs)', 'Alake', 'Oladipupo', 'kingkyle3003@gmail.com', '1982-11-17', '6672311625', 'Lecturer', 'deaconess', '15 Teddy Road', '15 Teddy Road', 'MA', 'Worcester', 'United States', '01603', 'female', 'married', '2018-10-14', '2019-09-06', 'profile.png', 'old', '[{\"id\":\"28\",\"relationship\":\"wife\"}]', '2018-08-09 00:14:24', '2019-02-04 12:10:44'),
(33, '45555', 'Mr', 'michael', 'ishola', 'classipa.ng@gmail.com', '1981-04-27', '090793881188', 'Business Person', 'pastor', 'ajah 2', 'ajah 3', 'lagos', 'lagos', 'nigeria', '101225', 'female', 'married', '2018-11-14', '2018-04-20', 'profile.png', 'old', NULL, '2018-08-13 16:12:48', '2019-02-04 12:10:44'),
(34, '45555', 'Mr', 'emeka', 'uche', 'jambguru101@gmail.com', '1998-12-07', '08067542131', 'Surveyor', 'pastor', 'ikeja 1', 'ikeja 2', 'lagos', 'lagos', 'nigeria', '101225', 'female', 'single', '2019-06-16', '2018-06-03', 'profile.png', 'old', NULL, '2018-08-13 16:14:03', '2019-02-04 12:10:45'),
(35, '45555', 'Olori', 'Jane', 'Money-Jane', 'money-jane@hotmail.com', '1986-07-10', '07039344380', 'Retired', 'pastor', '13485 Jane Street', NULL, 'Manitoba', 'Winnipeg', 'Canada', '13132123', 'female', 'married', '2018-05-23', '2018-05-14', 'profile.png', 'old', NULL, '2018-08-14 16:55:14', '2019-02-04 12:10:45'),
(36, '45555', 'Miss', 'Favour', 'Ajiboye', 'Ajiboye31@gmail.com', '1982-10-02', '08101597010', 'Professor', 'senior pastor', 'Ikeja', 'Lagos Island', 'Lagos', 'Lagos', 'Nigeria', '101245', 'female', 'single', '2019-11-16', '2019-10-12', 'profile.png', 'old', '[{\"id\":\"33\",\"relationship\":\"sister\"}]', '2018-08-15 09:20:49', '2019-02-04 12:10:45'),
(37, '101142', 'Chief (Mrs)', 'John', 'James', 'john@email.com', '1985-06-26', '0814454565', 'Engineer', 'chorister', 'ajah', 'lekki', 'lagos', 'lagos', 'nigeria', '101225', 'male', 'single', '2018-07-17', '2019-08-11', 'profile.png', 'old', NULL, '2018-08-15 12:16:11', '2019-02-04 12:10:45'),
(39, '101225', 'Mr', 'sarah', 'esther', 'esther@gmail.com', '1992-10-17', '08110000231', 'Business Person', 'worker', 'lekki', 'lagos', 'lagos', 'lagos', 'nigeria', '1001225', 'male', 'single', '2019-05-22', '2019-04-15', 'profile.png', 'old', NULL, '2018-08-17 09:24:27', '2019-02-04 12:10:45'),
(40, '101225', 'Mr', 'james', 'kenth', 'james@yahoo.com', '1983-12-10', '08012454455', 'Doctor', 'senior pastor', 'ajah', 'ajah', 'lagos', 'lagos', 'nigeria', '101225', 'male', 'single', '2019-02-18', '2018-02-23', 'profile.png', 'old', NULL, '2018-08-17 11:02:17', '2019-02-04 12:10:45'),
(41, '101142', 'Mrs', 'Doris', 'Chapman', 'chapman76@hotmail.com', '1988-09-20', '08103245131', 'Retired', 'evangelist', '1231 Government District', NULL, 'GB', 'Liverpool', 'United Kingdom', '132031', 'female', 'married', '2018-02-11', '2018-09-28', 'profile.png', 'old', '[{\"id\":\"37\",\"relationship\":\"brother\"}]', '2018-08-17 14:03:39', '2019-02-04 12:10:45'),
(42, '45555', 'Mr', 'ezekiel', 'olamide', 'eze@gmail.com', '1993-05-16', '07055546480', 'Trader', 'instrumentalist', 'aja', 'ajah', 'lagos', 'lagos', 'Nigeria', NULL, 'female', 'married', '2019-06-21', '2019-06-21', '1535716592.png', 'old', NULL, '2018-08-31 10:56:32', '2019-02-04 12:10:45'),
(43, '45555', 'Dr', 'uj iuu', 'uiuugu', 'ags@email.com', '1998-10-24', '08146666054', 'Professor', 'technician', 'adrress', '1234', 'lagos', 'lagos', 'Nigeria', NULL, 'female', 'married', '2019-05-19', '2019-06-19', '1535716960.png', 'old', NULL, '2018-08-31 11:02:40', '2019-02-04 12:10:45'),
(44, '45555', 'Mr', 'kbnoiio', 'iioboiboi', 'iio@email.com', '1983-10-15', '05887777987', 'Doctor', 'senior pastor', 'ddd', NULL, 'ffef', 'fefe', 'Nigeria', 'eedf', 'female', 'married', '2019-07-21', '2019-03-19', 'profile.png', 'old', NULL, '2018-08-31 13:56:59', '2019-02-04 12:10:45'),
(45, '45555', 'Mr', 'biobiob', 'ioboi', 'ii@ii.com', '1999-07-25', '08446666054', 'Doctor', 'senior pastor', 'vuu', 'u', 'ivv', 'uviu', 'Nigeria', 'uviuviuvu', 'male', 'married', '2019-03-24', '2018-07-12', 'profile.png', 'old', NULL, '2018-08-31 13:59:23', '2019-02-04 12:10:45'),
(49, '45555', 'Mr', 'boboi', 'ib', 'iob@hmail.com', '1984-04-24', '08778899098', 'Doctor', 'senior pastor', 'uuiuiu', NULL, 'uiuigui', 'iui', 'United States', 'uiiui', 'male', 'married', '2018-08-15', '2018-12-10', 'profile.png', 'new', NULL, '2018-08-31 14:11:58', '2019-02-04 12:10:46'),
(51, '45555', 'Mr', 'bobb', 'bu', 'bb@w.com', '1983-07-05', '088844545456', 'Professor', 'senior pastor', 'vvuvvu', 'u', 'vuvu', 'v', 'Nigeria', 'vuvu', 'male', 'single', '2019-03-18', '2019-10-19', 'profile.png', 'new', NULL, '2018-08-31 14:22:19', '2019-02-04 12:10:46'),
(52, '45555', 'Chief', 'Jickson', 'Hannah', 'jj@gmail.com', '1988-10-09', '0815464584', 'Doctor', 'deacon', 'lekki phase 1', NULL, 'lagos', 'lagos', 'Nigeria', '101225', 'female', 'married', '2019-04-13', '2018-08-03', '1535736022.jpg', 'old', NULL, '2018-08-31 16:20:22', '2019-02-04 12:10:46'),
(53, '45555', 'Chief (Mrs)', 'john', 'okekachi', 'johnok@gmail.com', '1995-10-17', '07066454541', 'Pharmacist', 'instrumentalist', 'aah', NULL, 'lagos', 'lagos', 'Nigeria', '101225', 'female', 'married', '2019-07-06', '2019-03-24', 'profile.png', 'old', NULL, '2016-09-06 12:41:18', '2019-02-04 12:10:46'),
(54, '101225', 'Mr', 'Leon', 'Leon', 'loshiyemi@hoffenheimtechnologies.com', '1981-03-20', '6672311625', 'Doctor', 'senior pastor', '15 Teddy Road', '15 Teddy Road', 'MA', 'Worcester', 'United States', '01603', 'male', 'single', '2019-10-13', '2019-08-15', 'profile.png', 'old', NULL, '2018-09-20 16:55:03', '2019-02-04 12:10:46'),
(55, '422', 'Engr', 'Jeremy', 'Duke', 'jeremy@gmail.com', '1987-11-26', '9022222282', 'Doctor', 'senior pastor', '5675 ISLINGTON AVENUE', NULL, 'Ontario', 'Etobicoke', 'Canada', 'M5C2K2', 'male', 'married', '2019-03-26', '2018-03-27', 'profile.png', 'old', NULL, '2018-09-21 10:51:38', '2019-02-04 12:10:46'),
(56, '422', 'Chief (Mrs)', 'Stephanie', 'Duke', 'stepduke@gmail.com', '1990-08-11', '90222222810', 'Doctor', 'pastor', '4575 ISLINGTON AVENUE', NULL, 'Ontario', 'Etobicoke', 'Canada', 'M5C2K2', 'male', 'married', '2019-07-19', '2018-10-02', 'profile.png', 'old', '[{\"id\":\"55\",\"relationship\":\"husband\"}]', '2018-09-21 10:54:42', '2019-02-04 12:10:46'),
(57, 'LMS-101226', 'Mr', 'Member 1 fname', 'Member 1 lname', 'member1@gmail.com', '1985-05-15', '08110000060', 'Surveyor', 'pastor', 'Lekki Epe Express Way', NULL, 'Lagos', 'Lagos', 'Nigeria', NULL, 'male', 'married', '2019-04-14', '2019-08-22', '1537533510.png', 'old', NULL, '2018-09-21 11:38:30', '2019-02-04 12:10:46'),
(58, 'LMS-101226', 'Miss', 'Member 2 fname', 'Member 2 lname', 'member2@gmail.com', '1996-04-26', '08110000505', 'Pharmacist', 'member', 'Jakande Estate', NULL, 'Lagos', 'Lagos', 'Nigeria', NULL, 'female', 'single', '2019-02-07', '2018-01-05', '1537533647.png', 'old', NULL, '2018-09-21 11:40:47', '2019-02-04 12:10:46'),
(59, 'LMS-101225', 'Mr', 'michael', 'ishola', 'm@email.com', '1999-03-11', '08110000606', 'Doctor', 'senior pastor', 'ajah', NULL, 'lagos', 'lagos', 'Nigeria', '101225', 'male', 'married', '2019-04-17', '2019-01-27', '1540199773.png', 'old', NULL, '2018-10-22 08:16:13', '2019-02-04 12:10:46'),
(60, 'LMS-101225', 'Mr', 'junior', 'ishola', 'my@email.com', '1981-08-20', '08110000601', 'Doctor', 'senior pastor', 'ajah', NULL, 'lagos', 'lagos', 'Nigeria', '101225', 'female', 'married', '2018-06-17', '2018-04-21', '1540201081.jpeg', 'old', '[{\"id\":\"59\",\"relationship\":\"sister\"}]', '2018-10-22 08:38:01', '2019-02-04 12:10:47'),
(61, '45555', 'Mr', 'egerg', 'etget', 'myckhel1@hotmail.com', '1992-02-13', '46544465456', 'Doctor', 'senior pastor', 'ggui', 'g', 'yuygug', 'yuguyg', 'Guyana', 'yugguy', 'male', 'single', '2019-04-09', '2018-06-08', 'profile.png', 'old', NULL, '2018-12-07 08:26:03', '2019-02-04 12:10:47'),
(62, '45555', 'Mr', 'ergr', 'reg', 'rg@f.h', '1980-01-18', '56575', 'Doctor', 'senior pastor', 'hthrth', NULL, 'trhh', 'rthhrt', 'Reunion', 'rthrth', 'male', 'single', '2019-03-10', '2019-08-18', 'profile.png', 'new', NULL, '2018-12-07 08:28:03', '2019-02-04 12:10:47'),
(65, '45555', 'Mr', 'rr', 'rere', 'rr@f.c', '1994-03-05', '5444', 'Business Person', 'chorister', 'wgfr', NULL, 'reger', 'rgrg', 'Angola', 'ewfgwrg', 'female', 'married', '2018-03-11', '2019-08-03', 'profile.png', 'new', '[{\"id\":\"53\",\"relationship\":\"relative\"}]', '2018-12-07 09:24:17', '2019-02-04 12:10:47'),
(66, '45555', 'Mr', 'gregre', 'ergreg', 'rr@jhf.com', '1995-03-09', '4884888', 'Pharmacist', 'instrumentalist', 'regeg', NULL, 'rgrge', 'regrg', 'Argentina', 'regreg', 'male', 'single', '2018-12-13', '2018-03-11', 'profile.png', 'new', '[{\"id\":\"36\",\"relationship\":\"sister\"}]', '2018-12-07 09:25:26', '2019-02-04 12:10:47'),
(67, '45555', 'Mr', 'gfi', 'gugiugi', 'uyy@ljf.com', '1988-08-02', '0844060665654', 'Lecturer', 'technician', 'jboki egofg', NULL, 'yuf fuy', 'yuffyuf', 'United States', 'uy fifyugi', 'male', 'single', '2019-07-11', '2018-05-25', 'profile.png', 'new', NULL, '2018-12-07 09:48:34', '2019-02-04 12:10:47'),
(68, '45555', 'Mr', 'ambode', 'alhaja', 'ambode@alhaja.com', '1996-06-16', '07056484654', 'Lecturer', 'elder', 'john d baptist', NULL, 'lagos', 'lagos', 'Nigeria', '101254', 'male', 'married', '2018-05-26', '2018-05-18', 'profile.png', 'old', '[{\"id\":\"33\",\"relationship\":\"brother\"}]', '2018-12-10 07:34:53', '2019-02-04 12:10:47'),
(69, '45555', 'Mr', 'Fifty', 'Nifty', 'fifty@nifty.com', '1999-08-28', '09064845454', 'Trader', 'minister', 'john akerelere', NULL, 'lagos', 'lagos', 'Nigeria', '231544', 'male', 'single', '2019-08-26', '2019-03-18', 'profile.png', 'new', '[{\"id\":\"33\",\"relationship\":\"father\"}]', '2018-12-10 07:51:24', '2019-02-04 12:10:47'),
(70, '45555', 'Mr', 'biguiob', 'ugiogbiog', 'b@j.com', '1980-11-13', '07056455489', 'Professor', 'worker', 'uigui h uig ug ioew', 'hioh ooi', 'lagos', 'lagos', 'Nigeria', '101224', 'male', 'married', '2018-05-03', '2019-09-15', 'profile.png', 'new', '[{\"id\":\"33\",\"relationship\":\"father\"}]', '2018-12-12 10:18:34', '2019-02-04 12:10:47'),
(71, '45555', 'Mr', 'ohiohbio', 'iiighi', 'ddf@df.con', '1993-02-13', '07155464584', 'Pharmacist', 'instrumentalist', 'hiofop foepwhf e', NULL, 'lagos', 'lagos', 'Nigeria', '1012445', 'male', 'married', '2018-11-15', '2018-03-01', 'profile.png', 'new', '[{\"id\":\"33\",\"relationship\":\"father\"}]', '2018-12-12 12:29:04', '2019-02-04 12:10:47'),
(72, '45555', 'Mr', 'mihi', 'ugguig', 'fe@df.com', '1991-02-18', '085455456655', 'Trader', 'worker', 'ujkh jhigiugoi r', NULL, 'lagos', 'lagos', 'Nigeria', '101112', 'male', 'married', '2019-06-19', '2019-11-24', '1540201081.jpeg', 'new', NULL, '2018-12-13 09:12:31', '2019-02-04 12:10:47'),
(73, '101225', 'Mr', 'Myckhel', 'Ishola', 'myckhel1@gmail.com', '1984-08-22', '08110000646', 'Pharmacist', 'technician', 'ajah', NULL, 'Lagos', 'Lagos', 'Nigeria', '101245', 'male', 'single', '2018-12-13', '2018-04-28', 'profile.png', 'new', '[{\"id\":\"31\",\"relationship\":\"brother\"}]', '2018-12-20 12:35:07', '2019-02-04 12:10:48'),
(74, '101225', 'Mr', 'vuiuiguifiu', 'fgifi', 'uifui@igi.con', '1986-04-03', '00545554544', 'Lecturer', 'usher', 'biuguigu', NULL, 'LAga', 'lGOA', 'Niger', '01221124', 'male', 'single', '2019-12-17', '2018-12-04', 'profile.png', 'old', NULL, '2018-12-20 12:36:38', '2019-02-04 12:10:48'),
(75, '101225', 'Mr', 'Janet', 'Akinjole', 'akinjole@gmail.com', '1991-08-22', '08074600651', 'Lecturer', 'member', 'ajah', NULL, 'lagos', 'lagos', 'Nigeria', '101235', 'male', 'married', '2019-10-09', '2018-07-07', 'profile.png', 'new', NULL, '2019-01-16 13:54:07', '2019-02-04 12:10:48'),
(76, '101225', 'Mr', 'g4g', '45g4g', 'rge@rg.vom', '1991-02-11', '014122221', 'Business Person', 'member', 'd fbf', NULL, 'lagos', 'lagos', 'Nigeria', '5455', 'male', 'single', '2018-11-06', '2019-02-25', 'profile.png', 'new', NULL, '2019-01-16 14:06:17', '2019-02-04 12:10:48'),
(77, '101225', 'Miss', 'efrf', 'ger', 'df@dwgfr.com', '1990-04-13', '054455554', 'Doctor', 'senior pastor', 'sfewf', NULL, 'lagos', 'lagos', 'Nigeria', '5338', 'male', 'single', '2019-12-03', '2019-05-16', 'profile.png', 'new', NULL, '2019-01-16 14:17:14', '2019-02-04 12:10:48'),
(78, '101225', 'Mr', 'grihiu', 'ihiuihg', 's@df.com', '1992-09-17', '0111222454', 'Doctor', 'senior pastor', 'dfd', NULL, 'lagos', 'lagos', 'Nigeria', '101211', 'male', 'single', '2019-11-03', '2018-08-03', 'profile.png', 'new', NULL, '2019-01-16 14:20:13', '2019-02-04 12:10:48'),
(79, '101225', 'Mr', 'dfrf', 'yuyfy', 'fg@ghr', '1993-05-12', '65765773', 'Doctor', 'senior pastor', 'trhrth', NULL, 'rthrh', 'rthh', 'Reunion', 'trhrh', 'male', 'single', '2019-12-06', '2018-07-16', 'profile.png', 'new', NULL, '2019-01-16 14:57:34', '2019-02-04 12:10:48'),
(80, '101225', 'Mr', 'jytjyt', 'ytjj', 'tyjty@hj', '1988-01-21', '22545544', 'Doctor', 'senior pastor', 'yrjyj', NULL, 'ytjytj', 'ytjyj', 'Yemen', 'yjyj', 'male', 'single', '2019-08-11', '2019-06-09', 'profile.png', 'new', NULL, '2019-01-16 15:02:40', '2019-02-04 12:10:48'),
(81, '101225', 'Mr', 'regerg', 'geg', 'erg@ghtr', '1981-01-16', '6475866768', 'Doctor', 'senior pastor', 'ytjhty', NULL, 'tyjty', 'tyjyt', 'Taiwan, Province of China', 'ytytj', 'male', 'single', '2019-06-09', '2018-01-17', 'profile.png', 'new', NULL, '2019-01-16 15:57:47', '2019-02-04 12:10:48'),
(82, '101225', 'Mr', 'ewfwf', 'ewfwe', 'ewewf@grh', '1991-10-23', '45756878', 'Doctor', 'senior pastor', 'wrgerg', NULL, 'reg', 'regrg', 'Gabon', 'regre', 'male', 'single', '2019-02-28', '2019-05-02', 'profile.png', 'new', NULL, '2019-01-16 16:00:05', '2019-02-04 12:10:48'),
(83, '101225', 'Mr', 'ewfewf', 'wef', 'wef@rh', '1995-12-18', '56765765', 'Doctor', 'senior pastor', 'fdg', NULL, 'reg', 'reg', 'Eritrea', 'regrg', 'male', 'single', '2018-08-04', '2018-05-27', '1547658220.jpg', 'new', NULL, '2019-01-16 16:03:39', '2019-02-04 12:10:48'),
(84, '101225', 'Mr', 'thtrh', 'rthrth', 'trh@th.com', '1989-07-06', '6767688', 'Doctor', 'senior pastor', 'jytjt', NULL, 'ytjj', 'ytjtyj', 'Yemen', 'jtytyj', 'male', 'single', '2019-03-07', '2019-09-21', 'profile.png', 'new', NULL, '2019-01-17 11:06:41', '2019-02-04 12:10:48'),
(85, '101225', 'Mr', 'ergerg', 'regeg', 'erg@ghr.vrg', '1992-01-14', '675677886', 'Doctor', 'senior pastor', 'trhtrh', NULL, 'trh', 'trh', 'Haiti', 'rth', 'male', 'single', '2018-09-03', '2019-03-10', 'profile.png', 'new', NULL, '2019-01-17 11:11:57', '2019-02-04 12:10:48'),
(86, '101225', 'Mr', 'ergerg', 'regrg', 'reg@fn.tr', '1991-11-12', '656757686', 'Doctor', 'senior pastor', 'thrth', NULL, 'rhh', 'rthrh', 'Reunion', 'trhrh', 'male', 'single', '2019-02-19', '2018-10-21', 'profile.png', 'new', NULL, '2019-01-17 11:14:19', '2019-02-04 12:10:49'),
(87, '101225', 'Mr', 'rwgerg', 'erge', 'rgerg@j.trh', '1996-08-23', '77688787', 'Doctor', 'senior pastor', 'rthrth', NULL, 'trhrt', 'trhhrt', 'Reunion', 'rthrth', 'male', 'single', '2018-08-19', '2019-03-19', 'profile.png', 'old', NULL, '2019-01-17 11:16:03', '2019-02-04 12:10:49'),
(88, '101225', 'Mr', 'referf', 'rfre', 'ref@tgt.h', '1982-05-15', '5676', 'Doctor', 'senior pastor', 'tfwefwef', NULL, 'trh', 'trhrth', 'Trinidad and Tobago', 'trhrt', 'male', 'single', '2019-12-10', '2018-10-09', 'profile.png', 'new', NULL, '2019-01-17 11:23:39', '2019-02-04 12:10:49'),
(89, '101225', 'Mr', 'ergreg', 'erg', 'reg@gh.tr', '1997-12-19', '565777676', 'Doctor', 'senior pastor', 'trhrth', NULL, 'trh', 'trhtrh', 'Angola', 'rthrth', 'male', 'single', '2018-07-19', '2019-11-02', 'profile.png', 'old', NULL, '2019-01-17 11:27:51', '2019-02-04 12:10:49'),
(90, '101225', 'Mr', 'thrth', 'trhrth', 'rth@hnt.rth', '1991-10-21', '65578', 'Doctor', 'senior pastor', 'trhrth', NULL, 'trhht', 'trhh', 'Trinidad and Tobago', 'rthrththr', 'male', 'single', '2018-09-06', '2018-05-25', 'profile.png', 'new', NULL, '2019-01-17 11:31:44', '2019-02-04 12:10:49'),
(91, '101225', 'Mr', 'rgerg', 'regreg', 'eger@yjt.ytj', '1991-08-17', '7889999889', 'Doctor', 'senior pastor', 'rthyh', NULL, 'rthrth', 'rthrth', 'Reunion', 'rthrth', 'male', 'single', '2018-11-16', '2019-09-01', '1547728568.jpeg', 'new', NULL, '2019-01-17 11:36:06', '2019-02-04 12:10:49'),
(92, '101225', 'Mr', 'uykuyk', 'kuik', 'uik@k.uu', '1992-07-21', '87787997', 'Doctor', 'senior pastor', 'yuk', NULL, 'yukyk', 'uykyuk', 'Yemen', 'uykuyk', 'male', 'single', '2019-11-22', '2019-08-28', 'profile.png', 'new', NULL, '2019-01-17 11:46:30', '2019-02-04 12:10:50'),
(93, '101225', 'Mr', 'trhtrh', 'trh', 'trh@t.j', '1985-10-12', '66787789', 'Doctor', 'senior pastor', 'trh', NULL, 'tyj', 'tyj', 'Yemen', 'tyj', 'male', 'single', '2018-10-12', '2019-11-15', 'profile.png', 'new', NULL, '2019-01-17 11:47:49', '2019-02-04 12:10:50'),
(94, '101225', 'Mr', 'regerg', 'reg', 'reg@yj.tj', '1981-01-03', '65777667', 'Doctor', 'senior pastor', 'ytjtyj', NULL, 'tyj', 'tyjtj', 'Yemen', 'ytjtyj', 'male', 'single', '2018-09-16', '2018-04-25', 'profile.png', 'new', NULL, '2019-01-17 11:49:45', '2019-02-04 12:10:50'),
(95, '101225', 'Mr', 'regerg', 'reg', 'reg@yj.tjer', '1981-07-26', '657776674', 'Doctor', 'senior pastor', 'ytjtyj', NULL, 'tyj', 'tyjtj', 'Yemen', 'ytjtyj', 'male', 'single', '2019-03-19', '2019-06-03', 'profile.png', 'new', NULL, '2019-01-17 11:50:39', '2019-02-04 12:10:50'),
(96, '101225', 'Mr', 'regerg', 'reg', 'reg@yj.tjerr', '1989-02-09', '6577766743', 'Doctor', 'senior pastor', 'ytjtyj', NULL, 'tyj', 'tyjtj', 'Yemen', 'ytjtyj', 'male', 'single', '2019-04-21', '2018-04-06', 'profile.png', 'new', NULL, '2019-01-17 11:52:00', '2019-02-04 12:10:50'),
(97, '101225', 'Mr', 'regerg', 'reg', 'reg@yj.tjerre', '1986-10-28', '65777667436', 'Doctor', 'senior pastor', 'ytjtyj', NULL, 'tyj', 'tyjtj', 'Yemen', 'ytjtyj', 'male', 'single', '2018-12-09', '2018-01-21', '1547730093.jpg', 'new', NULL, '2019-01-17 12:01:32', '2019-02-04 12:10:50'),
(98, '101225', 'Mr', 'regerg', 'reg', 'reg@yj.tjerreg', '1984-07-28', '657776674364', 'Doctor', 'senior pastor', 'ytjtyj', NULL, 'tyj', 'tyjtj', 'Yemen', 'ytjtyj', 'male', 'single', '2019-03-14', '2019-10-27', '1547730857.jpg', 'new', NULL, '2019-01-17 12:14:16', '2019-02-04 12:10:50'),
(99, '101225', 'Miss', 'ewfwgf', 'rgrg', 'grgre@hr.com', '1993-07-25', '6566555657', 'Retired', 'deaconess', 'rgergh rth', NULL, 'hgghgh', 'fdfg', 'Ghana', '446546', 'female', 'married', '2018-10-22', '2018-06-13', '1548234380.jpg', 'new', NULL, '2019-01-23 08:06:19', '2019-02-04 12:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `members_attendances`
--

CREATE TABLE `members_attendances` (
  `id` int(11) NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attendance` enum('yes','no') NOT NULL,
  `service_types_id` int(10) UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members_attendances`
--

INSERT INTO `members_attendances` (`id`, `member_id`, `branch_id`, `attendance`, `service_types_id`, `attendance_date`, `created_at`, `updated_at`) VALUES
(26, 33, '45555', 'yes', 1, '2018-08-16', NULL, '2019-01-07 14:47:05'),
(27, 34, '45555', 'no', 1, '2018-08-16', NULL, '2019-01-07 14:47:05'),
(28, 35, '45555', 'no', 1, '2018-08-16', NULL, '2019-01-07 14:47:05'),
(29, 36, '45555', 'yes', 1, '2018-08-16', NULL, '2019-01-07 14:47:05'),
(30, 33, '45555', 'no', 1, '2018-08-17', NULL, '2019-01-07 14:47:05'),
(31, 34, '45555', 'no', 1, '2018-08-17', NULL, '2019-01-07 14:47:06'),
(32, 35, '45555', 'no', 1, '2018-08-17', NULL, '2019-01-07 14:47:06'),
(33, 36, '45555', 'no', 1, '2018-08-17', NULL, '2019-01-07 14:47:06'),
(34, 33, '45555', 'yes', 1, '2018-08-12', NULL, '2019-01-07 14:47:06'),
(35, 34, '45555', 'yes', 1, '2018-08-12', NULL, '2019-01-07 14:47:06'),
(36, 35, '45555', 'no', 1, '2018-08-12', NULL, '2019-01-07 14:47:06'),
(37, 36, '45555', 'no', 1, '2018-08-12', NULL, '2019-01-07 14:47:06'),
(38, 33, '45555', 'yes', 1, '2018-08-05', NULL, '2019-01-07 14:47:06'),
(39, 34, '45555', 'no', 1, '2018-08-05', NULL, '2019-01-07 14:47:06'),
(40, 35, '45555', 'yes', 1, '2018-08-05', NULL, '2019-01-07 14:47:06'),
(41, 36, '45555', 'yes', 1, '2018-08-05', NULL, '2019-01-07 14:47:06'),
(42, 33, '45555', 'yes', 1, '2018-06-19', NULL, '2019-01-07 14:47:06'),
(43, 34, '45555', 'yes', 1, '2018-06-19', NULL, '2019-01-07 14:47:06'),
(44, 35, '45555', 'no', 1, '2018-06-19', NULL, '2019-01-07 14:47:06'),
(45, 36, '45555', 'yes', 1, '2018-06-19', NULL, '2019-01-07 14:47:06'),
(46, 33, '45555', 'no', 1, '2018-08-28', NULL, '2019-01-07 14:47:06'),
(47, 34, '45555', 'yes', 1, '2018-08-28', NULL, '2019-01-07 14:47:06'),
(48, 35, '45555', 'yes', 1, '2018-08-28', NULL, '2019-01-07 14:47:06'),
(49, 36, '45555', 'no', 1, '2018-08-28', NULL, '2019-01-07 14:47:06'),
(50, 33, '45555', 'yes', 1, '2018-09-19', NULL, '2019-01-07 14:47:06'),
(51, 34, '45555', 'no', 1, '2018-09-19', NULL, '2019-01-07 14:47:07'),
(52, 35, '45555', 'yes', 1, '2018-09-19', NULL, '2019-01-07 14:47:07'),
(53, 36, '45555', 'no', 1, '2018-09-19', NULL, '2019-01-07 14:47:07'),
(54, 57, 'LMS-101226', 'yes', 1, '2018-09-16', NULL, '2019-01-07 14:47:07'),
(55, 58, 'LMS-101226', 'no', 1, '2018-09-16', NULL, '2019-01-07 14:47:07'),
(56, 57, 'LMS-101226', 'yes', 1, '2018-09-16', NULL, '2019-01-07 14:47:07'),
(57, 58, 'LMS-101226', 'yes', 1, '2018-09-16', NULL, '2019-01-07 14:47:07'),
(58, 57, 'LMS-101226', 'no', 1, '2018-09-02', NULL, '2019-01-07 14:47:07'),
(59, 58, 'LMS-101226', 'yes', 1, '2018-09-02', NULL, '2019-01-07 14:47:07'),
(60, 31, '101225', 'yes', 1, '2018-10-05', NULL, '2019-01-07 14:47:07'),
(61, 39, '101225', 'yes', 1, '2018-10-05', NULL, '2019-01-07 14:47:07'),
(62, 40, '101225', 'yes', 1, '2018-10-05', NULL, '2019-01-07 14:47:07'),
(63, 54, '101225', 'yes', 1, '2018-10-05', NULL, '2019-01-07 14:47:07'),
(64, 31, '101225', 'no', 1, '2018-10-04', NULL, '2019-01-07 14:47:07'),
(65, 39, '101225', 'yes', 1, '2018-10-04', NULL, '2019-01-07 14:47:07'),
(66, 40, '101225', 'no', 1, '2018-10-04', NULL, '2019-01-07 14:47:07'),
(67, 54, '101225', 'yes', 1, '2018-10-04', NULL, '2019-01-07 14:47:07'),
(68, 31, '101225', 'no', 3, '2019-01-02', '2019-01-07 15:03:35', '2019-01-07 15:03:35'),
(69, 39, '101225', 'no', 3, '2019-01-02', '2019-01-07 15:03:35', '2019-01-07 15:03:35'),
(70, 40, '101225', 'no', 3, '2019-01-02', '2019-01-07 15:03:35', '2019-01-07 15:03:35'),
(71, 54, '101225', 'no', 3, '2019-01-02', '2019-01-07 15:03:35', '2019-01-07 15:03:35'),
(72, 73, '101225', 'no', 3, '2019-01-02', '2019-01-07 15:03:35', '2019-01-07 15:03:35'),
(73, 74, '101225', 'no', 3, '2019-01-02', '2019-01-07 15:03:35', '2019-01-07 15:03:35'),
(74, 31, '101225', 'yes', 4, '2019-01-14', '2019-01-14 12:48:34', '2019-01-14 12:48:34'),
(75, 39, '101225', 'no', 4, '2019-01-14', '2019-01-14 12:48:34', '2019-01-14 12:48:34'),
(76, 40, '101225', 'yes', 4, '2019-01-14', '2019-01-14 12:48:34', '2019-01-14 12:48:34'),
(77, 54, '101225', 'yes', 4, '2019-01-14', '2019-01-14 12:48:34', '2019-01-14 12:48:34'),
(78, 73, '101225', 'yes', 4, '2019-01-14', '2019-01-14 12:48:34', '2019-01-14 12:48:34'),
(79, 74, '101225', 'no', 4, '2019-01-14', '2019-01-14 12:48:34', '2019-01-14 12:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `member_savings`
--

CREATE TABLE `member_savings` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `collections_types_id` int(10) UNSIGNED NOT NULL,
  `service_types_id` int(10) UNSIGNED NOT NULL,
  `amount` bigint(20) NOT NULL,
  `date_collected` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_savings`
--

INSERT INTO `member_savings` (`id`, `branch_id`, `member_id`, `collections_types_id`, `service_types_id`, `amount`, `date_collected`, `created_at`, `updated_at`) VALUES
(33, 13, 31, 2, 1, 0, '2018-12-11', '2018-12-21 15:24:59', '2018-12-21 15:24:59'),
(34, 13, 39, 2, 1, 44, '2018-12-11', '2018-12-21 15:24:59', '2018-12-21 15:24:59'),
(35, 13, 40, 2, 1, 0, '2018-12-11', '2018-12-21 15:24:59', '2018-12-21 15:24:59'),
(36, 13, 54, 2, 1, 44, '2018-12-11', '2018-12-21 15:24:59', '2018-12-21 15:24:59'),
(37, 13, 73, 2, 1, 0, '2018-12-11', '2018-12-21 15:24:59', '2018-12-21 15:24:59'),
(38, 13, 74, 2, 1, 4, '2018-12-11', '2018-12-21 15:24:59', '2018-12-21 15:24:59'),
(45, 13, 31, 2, 2, 54, '2018-12-20', '2018-12-21 15:34:47', '2018-12-21 15:34:47'),
(46, 13, 39, 2, 2, 45, '2018-12-20', '2018-12-21 15:34:47', '2018-12-21 15:34:47'),
(47, 13, 40, 2, 2, 455, '2018-12-20', '2018-12-21 15:34:47', '2018-12-21 15:34:47'),
(48, 13, 54, 2, 2, 155, '2018-12-20', '2018-12-21 15:34:47', '2018-12-21 15:34:47'),
(49, 13, 73, 2, 2, 45, '2018-12-20', '2018-12-21 15:34:47', '2018-12-21 15:34:47'),
(50, 13, 74, 2, 2, 8448, '2018-12-20', '2018-12-21 15:34:47', '2018-12-21 15:34:47'),
(57, 13, 31, 2, 2, 0, '2018-12-18', '2018-12-21 15:35:35', '2018-12-21 15:35:35'),
(58, 13, 39, 2, 2, 0, '2018-12-18', '2018-12-21 15:35:35', '2018-12-21 15:35:35'),
(59, 13, 40, 2, 2, 0, '2018-12-18', '2018-12-21 15:35:35', '2018-12-21 15:35:35'),
(60, 13, 54, 2, 2, 0, '2018-12-18', '2018-12-21 15:35:35', '2018-12-21 15:35:35'),
(61, 13, 73, 2, 2, 0, '2018-12-18', '2018-12-21 15:35:35', '2018-12-21 15:35:35'),
(62, 13, 74, 2, 2, 0, '2018-12-18', '2018-12-21 15:35:35', '2018-12-21 15:35:35'),
(63, 13, 31, 2, 2, 200, '2019-01-02', '2019-01-07 08:36:48', '2019-01-07 08:36:48'),
(64, 13, 39, 2, 2, 600, '2019-01-02', '2019-01-07 08:36:48', '2019-01-07 08:36:48'),
(65, 13, 40, 2, 2, 200, '2019-01-02', '2019-01-07 08:36:48', '2019-01-07 08:36:48'),
(66, 13, 54, 2, 2, 400, '2019-01-02', '2019-01-07 08:36:48', '2019-01-07 08:36:48'),
(67, 13, 73, 2, 2, 400, '2019-01-02', '2019-01-07 08:36:48', '2019-01-07 08:36:48'),
(68, 13, 74, 2, 2, 100, '2019-01-02', '2019-01-07 08:36:48', '2019-01-07 08:36:48'),
(69, 13, 31, 3, 2, 300, '2019-01-02', '2019-01-07 08:36:48', '2019-01-07 08:36:48'),
(70, 13, 39, 3, 2, 400, '2019-01-02', '2019-01-07 08:36:49', '2019-01-07 08:36:49'),
(71, 13, 40, 3, 2, 100, '2019-01-02', '2019-01-07 08:36:49', '2019-01-07 08:36:49'),
(72, 13, 54, 3, 2, 500, '2019-01-02', '2019-01-07 08:36:49', '2019-01-07 08:36:49'),
(73, 13, 73, 3, 2, 800, '2019-01-02', '2019-01-07 08:36:49', '2019-01-07 08:36:49'),
(74, 13, 74, 3, 2, 200, '2019-01-02', '2019-01-07 08:36:49', '2019-01-07 08:36:49'),
(75, 13, 31, 4, 2, 400, '2019-01-02', '2019-01-07 08:36:49', '2019-01-07 08:36:49'),
(76, 13, 39, 4, 2, 800, '2019-01-02', '2019-01-07 08:36:49', '2019-01-07 08:36:49'),
(77, 13, 40, 4, 2, 200, '2019-01-02', '2019-01-07 08:36:49', '2019-01-07 08:36:49'),
(78, 13, 54, 4, 2, 400, '2019-01-02', '2019-01-07 08:36:49', '2019-01-07 08:36:49'),
(79, 13, 73, 4, 2, 100, '2019-01-02', '2019-01-07 08:36:49', '2019-01-07 08:36:49'),
(80, 13, 74, 4, 2, 300, '2019-01-02', '2019-01-07 08:36:49', '2019-01-07 08:36:49'),
(81, 13, 31, 5, 2, 500, '2019-01-02', '2019-01-07 08:36:49', '2019-01-07 08:36:49'),
(82, 13, 39, 5, 2, 400, '2019-01-02', '2019-01-07 08:36:49', '2019-01-07 08:36:49'),
(83, 13, 40, 5, 2, 300, '2019-01-02', '2019-01-07 08:36:49', '2019-01-07 08:36:49'),
(84, 13, 54, 5, 2, 600, '2019-01-02', '2019-01-07 08:36:49', '2019-01-07 08:36:49'),
(85, 13, 73, 5, 2, 200, '2019-01-02', '2019-01-07 08:36:49', '2019-01-07 08:36:49'),
(86, 13, 74, 5, 2, 400, '2019-01-02', '2019-01-07 08:36:49', '2019-01-07 08:36:49'),
(87, 13, 31, 2, 2, 100, '2019-01-09', '2019-01-09 11:14:19', '2019-01-09 11:14:19'),
(88, 13, 39, 2, 2, 600, '2019-01-09', '2019-01-09 11:14:19', '2019-01-09 11:14:19'),
(89, 13, 40, 2, 2, 100, '2019-01-09', '2019-01-09 11:14:19', '2019-01-09 11:14:19'),
(90, 13, 54, 2, 2, 700, '2019-01-09', '2019-01-09 11:14:19', '2019-01-09 11:14:19'),
(91, 13, 73, 2, 2, 100, '2019-01-09', '2019-01-09 11:14:19', '2019-01-09 11:14:19'),
(92, 13, 74, 2, 2, 100, '2019-01-09', '2019-01-09 11:14:19', '2019-01-09 11:14:19'),
(93, 13, 31, 3, 2, 200, '2019-01-09', '2019-01-09 11:14:19', '2019-01-09 11:14:19'),
(94, 13, 39, 3, 2, 700, '2019-01-09', '2019-01-09 11:14:19', '2019-01-09 11:14:19'),
(95, 13, 40, 3, 2, 200, '2019-01-09', '2019-01-09 11:14:19', '2019-01-09 11:14:19'),
(96, 13, 54, 3, 2, 800, '2019-01-09', '2019-01-09 11:14:19', '2019-01-09 11:14:19'),
(97, 13, 73, 3, 2, 600, '2019-01-09', '2019-01-09 11:14:19', '2019-01-09 11:14:19'),
(98, 13, 74, 3, 2, 900, '2019-01-09', '2019-01-09 11:14:19', '2019-01-09 11:14:19'),
(99, 13, 31, 4, 2, 300, '2019-01-09', '2019-01-09 11:14:20', '2019-01-09 11:14:20'),
(100, 13, 39, 4, 2, 800, '2019-01-09', '2019-01-09 11:14:20', '2019-01-09 11:14:20'),
(101, 13, 40, 4, 2, 300, '2019-01-09', '2019-01-09 11:14:20', '2019-01-09 11:14:20'),
(102, 13, 54, 4, 2, 900, '2019-01-09', '2019-01-09 11:14:20', '2019-01-09 11:14:20'),
(103, 13, 73, 4, 2, 400, '2019-01-09', '2019-01-09 11:14:20', '2019-01-09 11:14:20'),
(104, 13, 74, 4, 2, 1000, '2019-01-09', '2019-01-09 11:14:20', '2019-01-09 11:14:20'),
(105, 13, 31, 5, 2, 400, '2019-01-09', '2019-01-09 11:14:20', '2019-01-09 11:14:20'),
(106, 13, 39, 5, 2, 900, '2019-01-09', '2019-01-09 11:14:20', '2019-01-09 11:14:20'),
(107, 13, 40, 5, 2, 400, '2019-01-09', '2019-01-09 11:14:20', '2019-01-09 11:14:20'),
(108, 13, 54, 5, 2, 600, '2019-01-09', '2019-01-09 11:14:20', '2019-01-09 11:14:20'),
(109, 13, 73, 5, 2, 300, '2019-01-09', '2019-01-09 11:14:20', '2019-01-09 11:14:20'),
(110, 13, 74, 5, 2, 400, '2019-01-09', '2019-01-09 11:14:20', '2019-01-09 11:14:20'),
(111, 13, 31, 2, 2, 0, '2017-10-04', '2019-01-09 11:15:27', '2019-01-09 11:15:27'),
(112, 13, 39, 2, 2, 450, '2017-10-04', '2019-01-09 11:15:27', '2019-01-09 11:15:27'),
(113, 13, 40, 2, 2, 0, '2017-10-04', '2019-01-09 11:15:27', '2019-01-09 11:15:27'),
(114, 13, 54, 2, 2, 0, '2017-10-04', '2019-01-09 11:15:27', '2019-01-09 11:15:27'),
(115, 13, 73, 2, 2, 0, '2017-10-04', '2019-01-09 11:15:27', '2019-01-09 11:15:27'),
(116, 13, 74, 2, 2, 0, '2017-10-04', '2019-01-09 11:15:27', '2019-01-09 11:15:27'),
(117, 13, 31, 3, 2, 0, '2017-10-04', '2019-01-09 11:15:27', '2019-01-09 11:15:27'),
(118, 13, 39, 3, 2, 0, '2017-10-04', '2019-01-09 11:15:27', '2019-01-09 11:15:27'),
(119, 13, 40, 3, 2, 0, '2017-10-04', '2019-01-09 11:15:28', '2019-01-09 11:15:28'),
(120, 13, 54, 3, 2, 0, '2017-10-04', '2019-01-09 11:15:28', '2019-01-09 11:15:28'),
(121, 13, 73, 3, 2, 600, '2017-10-04', '2019-01-09 11:15:28', '2019-01-09 11:15:28'),
(122, 13, 74, 3, 2, 0, '2017-10-04', '2019-01-09 11:15:28', '2019-01-09 11:15:28'),
(123, 13, 31, 4, 2, 0, '2017-10-04', '2019-01-09 11:15:28', '2019-01-09 11:15:28'),
(124, 13, 39, 4, 2, 0, '2017-10-04', '2019-01-09 11:15:28', '2019-01-09 11:15:28'),
(125, 13, 40, 4, 2, 0, '2017-10-04', '2019-01-09 11:15:28', '2019-01-09 11:15:28'),
(126, 13, 54, 4, 2, 0, '2017-10-04', '2019-01-09 11:15:28', '2019-01-09 11:15:28'),
(127, 13, 73, 4, 2, 0, '2017-10-04', '2019-01-09 11:15:28', '2019-01-09 11:15:28'),
(128, 13, 74, 4, 2, 0, '2017-10-04', '2019-01-09 11:15:28', '2019-01-09 11:15:28'),
(129, 13, 31, 5, 2, 0, '2017-10-04', '2019-01-09 11:15:28', '2019-01-09 11:15:28'),
(130, 13, 39, 5, 2, 0, '2017-10-04', '2019-01-09 11:15:28', '2019-01-09 11:15:28'),
(131, 13, 40, 5, 2, 0, '2017-10-04', '2019-01-09 11:15:28', '2019-01-09 11:15:28'),
(132, 13, 54, 5, 2, 0, '2017-10-04', '2019-01-09 11:15:28', '2019-01-09 11:15:28'),
(133, 13, 73, 5, 2, 0, '2017-10-04', '2019-01-09 11:15:28', '2019-01-09 11:15:28'),
(134, 13, 74, 5, 2, 0, '2017-10-04', '2019-01-09 11:15:28', '2019-01-09 11:15:28'),
(135, 13, 31, 2, 3, 400, '2019-01-14', '2019-01-14 13:31:00', '2019-01-14 13:31:00'),
(136, 13, 39, 2, 3, 600, '2019-01-14', '2019-01-14 13:31:00', '2019-01-14 13:31:00'),
(137, 13, 40, 2, 3, 300, '2019-01-14', '2019-01-14 13:31:01', '2019-01-14 13:31:01'),
(138, 13, 54, 2, 3, 800, '2019-01-14', '2019-01-14 13:31:01', '2019-01-14 13:31:01'),
(139, 13, 73, 2, 3, 200, '2019-01-14', '2019-01-14 13:31:01', '2019-01-14 13:31:01'),
(140, 13, 74, 2, 3, 800, '2019-01-14', '2019-01-14 13:31:01', '2019-01-14 13:31:01'),
(141, 13, 31, 3, 3, 200, '2019-01-14', '2019-01-14 13:31:01', '2019-01-14 13:31:01'),
(142, 13, 39, 3, 3, 700, '2019-01-14', '2019-01-14 13:31:01', '2019-01-14 13:31:01'),
(143, 13, 40, 3, 3, 400, '2019-01-14', '2019-01-14 13:31:01', '2019-01-14 13:31:01'),
(144, 13, 54, 3, 3, 900, '2019-01-14', '2019-01-14 13:31:01', '2019-01-14 13:31:01'),
(145, 13, 73, 3, 3, 400, '2019-01-14', '2019-01-14 13:31:02', '2019-01-14 13:31:02'),
(146, 13, 74, 3, 3, 600, '2019-01-14', '2019-01-14 13:31:02', '2019-01-14 13:31:02'),
(147, 13, 31, 4, 3, 300, '2019-01-14', '2019-01-14 13:31:02', '2019-01-14 13:31:02'),
(148, 13, 39, 4, 3, 800, '2019-01-14', '2019-01-14 13:31:02', '2019-01-14 13:31:02'),
(149, 13, 40, 4, 3, 500, '2019-01-14', '2019-01-14 13:31:03', '2019-01-14 13:31:03'),
(150, 13, 54, 4, 3, 100, '2019-01-14', '2019-01-14 13:31:03', '2019-01-14 13:31:03'),
(151, 13, 73, 4, 3, 500, '2019-01-14', '2019-01-14 13:31:03', '2019-01-14 13:31:03'),
(152, 13, 74, 4, 3, 400, '2019-01-14', '2019-01-14 13:31:03', '2019-01-14 13:31:03'),
(153, 13, 31, 5, 3, 400, '2019-01-14', '2019-01-14 13:31:03', '2019-01-14 13:31:03'),
(154, 13, 39, 5, 3, 100, '2019-01-14', '2019-01-14 13:31:03', '2019-01-14 13:31:03'),
(155, 13, 40, 5, 3, 600, '2019-01-14', '2019-01-14 13:31:03', '2019-01-14 13:31:03'),
(156, 13, 54, 5, 3, 200, '2019-01-14', '2019-01-14 13:31:03', '2019-01-14 13:31:03'),
(157, 13, 73, 5, 3, 600, '2019-01-14', '2019-01-14 13:31:04', '2019-01-14 13:31:04'),
(158, 13, 74, 5, 3, 100, '2019-01-14', '2019-01-14 13:31:04', '2019-01-14 13:31:04'),
(159, 13, 31, 6, 3, 500, '2019-01-14', '2019-01-14 13:31:04', '2019-01-14 13:31:04'),
(160, 13, 39, 6, 3, 200, '2019-01-14', '2019-01-14 13:31:04', '2019-01-14 13:31:04'),
(161, 13, 40, 6, 3, 400, '2019-01-14', '2019-01-14 13:31:04', '2019-01-14 13:31:04'),
(162, 13, 54, 6, 3, 300, '2019-01-14', '2019-01-14 13:31:04', '2019-01-14 13:31:04'),
(163, 13, 73, 6, 3, 700, '2019-01-14', '2019-01-14 13:31:04', '2019-01-14 13:31:04'),
(164, 13, 74, 6, 3, 300, '2019-01-14', '2019-01-14 13:31:04', '2019-01-14 13:31:04'),
(165, 32, 59, 2, 3, 200, '2019-01-31', '2019-01-31 07:56:46', '2019-01-31 07:56:46'),
(166, 32, 60, 2, 3, 400, '2019-01-31', '2019-01-31 07:56:46', '2019-01-31 07:56:46'),
(167, 32, 59, 3, 3, 200, '2019-01-31', '2019-01-31 07:56:46', '2019-01-31 07:56:46'),
(168, 32, 60, 3, 3, 500, '2019-01-31', '2019-01-31 07:56:46', '2019-01-31 07:56:46'),
(169, 32, 59, 4, 3, 300, '2019-01-31', '2019-01-31 07:56:46', '2019-01-31 07:56:46'),
(170, 32, 60, 4, 3, 600, '2019-01-31', '2019-01-31 07:56:46', '2019-01-31 07:56:46'),
(171, 32, 59, 5, 3, 400, '2019-01-31', '2019-01-31 07:56:46', '2019-01-31 07:56:46'),
(172, 32, 60, 5, 3, 200, '2019-01-31', '2019-01-31 07:56:46', '2019-01-31 07:56:46'),
(173, 32, 59, 6, 3, 200, '2019-01-31', '2019-01-31 07:56:46', '2019-01-31 07:56:46'),
(174, 32, 60, 6, 3, 100, '2019-01-31', '2019-01-31 07:56:46', '2019-01-31 07:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `messagings`
--

CREATE TABLE `messagings` (
  `id` int(10) NOT NULL,
  `msg_from` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg_to` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `msg` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messagings`
--

INSERT INTO `messagings` (`id`, `msg_from`, `msg_to`, `seen`, `msg`, `date`) VALUES
(4, '101225', '345', 0, '<p>rwe tgreg eg erg gre r rr</p>', '2018-09-11 11:50:08'),
(5, '101225', '346', 0, '<p>rwe tgreg eg erg gre r rr</p>', '2018-09-11 11:50:08'),
(6, '101225', '02', 0, '<p>rwe tgreg eg erg gre r rr</p>', '2018-09-11 11:50:08'),
(7, '101225', '03', 0, '<p>rwe tgreg eg erg gre r rr</p>', '2018-09-11 11:50:08'),
(8, '101225', '1007', 0, '<p>rwe tgreg eg erg gre r rr</p>', '2018-09-11 11:50:08'),
(9, '101225', '1009', 0, '<p>rwe tgreg eg erg gre r rr</p>', '2018-09-11 11:50:08'),
(10, '101225', '487', 0, '<p>rwe tgreg eg erg gre r rr</p>', '2018-09-11 11:50:08'),
(11, '101225', '500', 0, '<p>rwe tgreg eg erg gre r rr</p>', '2018-09-11 11:50:08'),
(12, '101225', '600', 0, '<p>rwe tgreg eg erg gre r rr</p>', '2018-09-11 11:50:08'),
(14, '101225', '700', 0, '<p>rwe tgreg eg erg gre r rr</p>', '2018-09-11 11:50:08'),
(15, '101225', '101142', 0, '<p>rwe tgreg eg erg gre r rr</p>', '2018-09-11 11:50:08'),
(16, '101225', '45555', 0, '<p>rwe tgreg eg erg gre r rr</p>', '2018-09-11 11:50:08'),
(17, '101225', '14', 0, '<p>rwe tgreg eg erg gre r rr</p>', '2018-09-11 11:50:08'),
(18, '101225', '345', 0, '<p>yt jytjyj ju ujuj</p>', '2018-09-11 11:50:57'),
(19, '101225', '346', 0, '<p>yt jytjyj ju ujuj</p>', '2018-09-11 11:50:57'),
(20, '101225', '02', 0, '<p>yt jytjyj ju ujuj</p>', '2018-09-11 11:50:57'),
(21, '101225', '03', 0, '<p>yt jytjyj ju ujuj</p>', '2018-09-11 11:50:57'),
(22, '101225', '1007', 0, '<p>yt jytjyj ju ujuj</p>', '2018-09-11 11:50:57'),
(23, '101225', '1009', 0, '<p>yt jytjyj ju ujuj</p>', '2018-09-11 11:50:57'),
(24, '101225', '487', 0, '<p>yt jytjyj ju ujuj</p>', '2018-09-11 11:50:57'),
(25, '101225', '500', 0, '<p>yt jytjyj ju ujuj</p>', '2018-09-11 11:50:57'),
(26, '101225', '600', 0, '<p>yt jytjyj ju ujuj</p>', '2018-09-11 11:50:57'),
(28, '101225', '700', 0, '<p>yt jytjyj ju ujuj</p>', '2018-09-11 11:50:57'),
(29, '101225', '101142', 0, '<p>yt jytjyj ju ujuj</p>', '2018-09-11 11:50:57'),
(30, '101225', '45555', 0, '<p>yt jytjyj ju ujuj</p>', '2018-09-11 11:50:57'),
(31, '101225', '14', 0, '<p>yt jytjyj ju ujuj</p>', '2018-09-11 11:50:57'),
(32, '101225', '346', 0, '<p>re eretry</p>', '2018-09-11 11:51:28'),
(33, '101225', '500', 0, '<p>re eretry</p>', '2018-09-11 11:51:29'),
(34, '101225', '345', 0, '<p>t rt hythyt ytjy</p>', '2018-09-11 11:53:37'),
(35, '101225', '346', 0, '<p>t rt hythyt ytjy</p>', '2018-09-11 11:53:37'),
(36, '101225', '03', 0, '<p>t rt hythyt ytjy</p>', '2018-09-11 11:53:37'),
(37, '101225', '1007', 0, '<p>t rt hythyt ytjy</p>', '2018-09-11 11:53:37'),
(38, '101225', '487', 0, '<p>t rt hythyt ytjy</p>', '2018-09-11 11:53:37'),
(39, '101225', '500', 0, '<p>t rt hythyt ytjy</p>', '2018-09-11 11:53:37'),
(40, '101225', '600', 0, '<p>t rt hythyt ytjy</p>', '2018-09-11 11:53:37'),
(42, '101225', '101142', 0, '<p>t rt hythyt ytjy</p>', '2018-09-11 11:53:37'),
(43, '101225', '45555', 0, '<p>t rt hythyt ytjy</p>', '2018-09-11 11:53:37'),
(44, '101225', '14', 0, '<p>t rt hythyt ytjy</p>', '2018-09-11 11:53:37'),
(45, '45555', '345', 0, '<p> gu gugui uigi glfff  ffe</p>', '2018-09-11 15:32:52'),
(46, '45555', '346', 0, '<p> gu gugui uigi glfff  ffe</p>', '2018-09-11 15:32:53'),
(47, '45555', '02', 0, '<p> gu gugui uigi glfff  ffe</p>', '2018-09-11 15:32:53'),
(48, '45555', '03', 0, '<p> gu gugui uigi glfff  ffe</p>', '2018-09-11 15:32:53'),
(49, '45555', '1007', 0, '<p> gu gugui uigi glfff  ffe</p>', '2018-09-11 15:32:53'),
(50, '45555', '1009', 0, '<p> gu gugui uigi glfff  ffe</p>', '2018-09-11 15:32:53'),
(51, '45555', '487', 0, '<p> gu gugui uigi glfff  ffe</p>', '2018-09-11 15:32:53'),
(52, '45555', '500', 0, '<p> gu gugui uigi glfff  ffe</p>', '2018-09-11 15:32:53'),
(53, '45555', '600', 0, '<p> gu gugui uigi glfff  ffe</p>', '2018-09-11 15:32:53'),
(54, '45555', '101225', 0, '<p> gu gugui uigi glfff  ffe</p>', '2018-09-11 15:32:53'),
(55, '45555', '700', 0, '<p> gu gugui uigi glfff  ffe</p>', '2018-09-11 15:32:53'),
(56, '45555', '101142', 0, '<p> gu gugui uigi glfff  ffe</p>', '2018-09-11 15:32:53'),
(58, '45555', '14', 0, '<p> gu gugui uigi glfff  ffe</p>', '2018-09-11 15:32:53'),
(59, '45555', '101225', 0, '<p>ytjytj ytejyt jyt</p>', '2018-09-11 17:23:25'),
(60, '101142', '101225', 0, '<p>replied</p>', '2018-09-12 09:10:05'),
(61, '101142', '101225', 0, '<p>good oone</p>', '2018-09-12 09:17:30'),
(62, '101142', '101225', 0, '<p>another reply to ace from branch 2<br></p>', '2018-09-12 14:29:04'),
(63, '101142', '45555', 0, '<p>replied replied replied replied<br></p>', '2018-09-12 14:37:32'),
(64, '45555', '101142', 0, '<p>did u?<br></p>', '2018-09-12 14:41:54'),
(65, '101142', '45555', 0, '<p>good</p>', '2018-09-12 14:44:14'),
(66, '101142', '45555', 0, '<p>2</p><table class=\"table table-bordered\"><tbody><tr><td>3</td><td><br></td></tr></tbody></table><p>age</p>', '2018-09-12 14:45:04'),
(68, '101225', '101142', 0, 'wfrwf', '2018-09-12 17:51:20'),
(69, '101225', '101142', 0, 'fdg dfgre', '2018-09-12 17:56:21'),
(70, '101225', '101142', 0, 'htrrt  tr', '2018-09-12 18:05:45'),
(71, '101225', '101142', 0, 'htrrt  tr', '2018-09-12 18:06:45'),
(72, '101142', '101225', 0, 'ty y', '2018-09-12 18:09:03'),
(73, '101142', '45555', 0, 'ty y', '2018-09-12 18:10:39'),
(74, '101142', '700', 0, 'hello', '2018-09-13 10:11:42'),
(75, '101142', '45555', 0, 'ok o', '2018-09-13 11:06:48'),
(76, '101142', '45555', 0, 'ok o', '2018-09-13 11:06:52'),
(77, '45555', '101142', 0, 'hi', '2018-09-13 15:34:01'),
(78, '101142', '500', 0, '<p>rew g</p><p><br></p><ol><li>rehge</li></ol>', '2018-09-13 16:42:24'),
(79, '101142', '600', 0, '<ol><li> yjjtjty</li><li>iopoi</li></ol>', '2018-09-13 16:43:03'),
(80, '101142', '101225', 0, 'reply', '2018-09-13 17:56:35'),
(81, '45555', '101142', 0, 'I can see u online', '2018-09-13 18:05:01'),
(82, '101142', '45555', 0, 'u', '2018-09-14 10:12:10'),
(83, '101142', '101225', 0, 'u', '2018-09-14 10:12:37'),
(84, '101142', '45555', 0, 'uuyuyyu', '2018-09-14 10:12:51'),
(85, '101142', '45555', 0, 'dfds f', '2018-09-14 13:33:23'),
(86, '101142', '45555', 0, 'is it working?', '2018-09-14 13:45:43'),
(87, '101142', '45555', 0, 'not yet', '2018-09-14 13:46:38'),
(88, '101142', '45555', 0, 'is it working?', '2018-09-14 13:47:31'),
(89, '101142', '45555', 0, 'yes that part is working', '2018-09-14 13:47:44'),
(90, '45555', '101142', 0, 'hi', '2018-09-14 13:55:13'),
(91, '101142', '45555', 0, 'xup', '2018-09-14 13:55:47'),
(92, '101142', '101225', 0, 'okay o', '2018-09-14 14:51:34'),
(93, '101225', '45555', 0, 'w fwgr\r\n\r\n\r\n\r\n errrg\r\n\r\n\r\n\r\n\r\n\r\n ewgrg', '2018-09-19 09:13:16'),
(94, '101225', '45555', 0, '3 gw3 \r\nace\r\n\r\n\r\n\r\njohn\r\n\r\n\r\n\r\ngood', '2018-09-19 09:13:34'),
(107, '101225', '45555', 0, 'rgr', '2018-09-19 09:22:58'),
(108, '101225', '345', 0, 'wef wef', '2018-09-19 09:23:22'),
(109, '101225', '101142', 0, 'wef ewf', '2018-09-19 09:23:40'),
(112, '101225', '45555', 0, 'jhdv', '2018-09-19 09:25:30'),
(116, '101225', 'bbbb', 0, 'hi', '2018-09-19 09:38:32'),
(117, 'bbbb', '101225', 1, 'cool', '2018-09-19 09:51:34'),
(118, '101225', 'bbbb', 1, 'nice one', '2018-09-19 09:43:59'),
(119, '101225', '45555', 0, 'wad', '2018-09-19 11:08:51'),
(120, '101225', 'bbbb', 0, 'dd d', '2018-09-19 11:09:41'),
(121, '45555', '101225', 0, 'ok', '2018-09-20 12:00:48'),
(122, '45555', '487', 0, 'kk', '2018-09-20 12:01:28'),
(123, '45555', '101142', 0, 'jiji', '2018-09-25 09:59:54'),
(124, '101225', 'bbbb', 0, 'kkk', '2018-09-25 16:12:29'),
(125, '101225', '101142', 0, 'okay', '2018-10-08 09:20:40'),
(126, '45555', '422', 0, 'k', '2018-12-12 14:02:42');

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
(8, '2014_10_12_000000_create_users_table', 1),
(9, '2014_10_12_100000_create_password_resets_table', 1),
(10, '2018_06_21_102424_create_members_table', 1),
(11, '2018_06_21_102515_create_collections_table', 1),
(12, '2018_06_21_102546_create_attendances_table', 1),
(13, '2018_06_22_082217_create_events_table', 1),
(14, '2018_07_05_104257_create_admins_table', 1),
(15, '2018_07_12_122248_create_groups_table', 2),
(16, '2018_07_12_123555_create_group_members_table', 3),
(17, '2018_08_17_092910_create_head_office_options_table', 4),
(18, '2018_08_24_111333_members_attendance', 4),
(19, '2018_09_11_113254_create_messaging_table', 4),
(20, '2018_09_13_162055_create_announcements_table', 4),
(21, '2018_12_14_114432_create_options_table', 5),
(22, '2018_12_20_134016_create_collections_types_table', 6),
(23, '2018_12_20_154810_create_service_types_table', 7),
(24, '2018_12_21_113603_create_savings_table', 8),
(25, '2018_12_21_135705_add_date_collected_to_savings', 9),
(26, '2018_12_21_154726_create_member_savings_table', 10),
(28, '2019_01_07_134527_edit_attendance_table', 11),
(29, '2019_01_07_153815_edit_members_attendance_table', 12),
(30, '2019_01_07_155513_drop_members_attendance_columns', 13),
(31, '2019_01_07_160619_drop_members_attendance_date_submitted', 14),
(32, '2019_01_31_141809_drop_helper_country_table', 15),
(33, '2019_01_31_143247_drop_currency_table', 16),
(34, '2019_02_07_100143_drop_collections_table', 17),
(35, '2019_02_07_100313_drop_members_collection_table', 17),
(36, '2019_02_07_101424_create_collections_commissions_table', 18),
(37, '2019_02_07_102846_edit_collections_commissions_table', 19),
(38, '2019_02_07_132857_change_saving_id_column_from_collections_commissions', 20);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `branch_id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(2, 13, 'smsapi', 'http://www.smsmobile24.com/index.php?option=com_spc&comm=spc_api&username=myckhel&password=january123&sender=Ace%20Branch1', '2018-12-14 13:59:07', '2019-01-15 12:39:02'),
(4, 13, 'branchname', 'Ace\'s Of God', '2018-12-14 15:29:30', '2018-12-20 12:03:56'),
(5, 13, 'currency', '₦', '2018-12-14 15:55:27', '2018-12-14 15:55:50'),
(6, 13, 'branchaddress', 'Zion city estate, FUTA Rd, Akure, Nigeria', '2018-12-17 11:39:49', '2018-12-17 11:39:49'),
(7, 13, 'branchline1', '08110000606', '2018-12-17 11:53:16', '2018-12-17 11:53:28'),
(8, 13, 'branchline2', '08110000606', '2018-12-17 12:00:34', '2019-02-07 08:15:51'),
(9, 13, 'branchcity', 'Lagos', '2018-12-17 12:14:15', '2018-12-17 12:14:19'),
(10, 13, 'branchstate', 'Lagos', '2018-12-17 12:14:24', '2018-12-17 12:14:24'),
(11, 24, 'smsapi', 'https://smartsmssolutioon.net?username=myckhel&sender=Branch%203', '2019-01-15 14:54:53', '2019-01-15 14:54:53'),
(12, 13, 'smsbalanceapi', 'http://www.smsmobile24.com/index.php?option=com_spc&comm=spc_api&username=myckhel&password=january123&balance=true', '2019-01-15 15:08:35', '2019-01-15 15:08:35'),
(13, 13, 'branchcountry', 'Nigeria', '2019-02-07 07:59:39', '2019-02-07 07:59:39'),
(14, 13, 'collection_commission', '30', '2019-02-07 08:17:05', '2019-02-07 08:47:24'),
(15, 12, 'collection_commission', '32', '2019-02-07 08:17:05', '2019-02-07 11:47:24'),
(16, 23, 'branchname', 'Branch 2', '2019-02-07 15:28:05', '2019-02-07 15:28:05');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `ID` int(11) NOT NULL,
  `selector` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `expires` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`ID`, `selector`, `email`, `token`, `created_at`, `expires`) VALUES
(11, NULL, 'myckhel123@gmail.com', '$2y$10$dXfoV/.De82fq/Uif4ZIMeG/RrT0p922cKSira5b6TZUS2EnNHNhy', '2018-08-30 13:40:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `savings`
--

CREATE TABLE `savings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `collections_types_id` int(10) UNSIGNED NOT NULL,
  `service_types_id` int(10) UNSIGNED NOT NULL,
  `amount` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_collected` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `savings`
--

INSERT INTO `savings` (`id`, `branch_id`, `collections_types_id`, `service_types_id`, `amount`, `created_at`, `updated_at`, `date_collected`) VALUES
(2, 13, 2, 2, 4, '2018-12-21 14:20:44', '2018-12-21 14:20:44', '2018-12-02'),
(4, 13, 2, 2, 141, '2018-12-21 15:34:11', '2018-12-21 15:34:11', '2018-12-20'),
(5, 13, 2, 4, 4000, '2018-12-21 15:43:42', '2018-12-21 15:43:42', '2018-12-03'),
(6, 13, 2, 4, 4500, '2018-12-21 15:53:11', '2018-12-21 15:53:11', '2018-12-04'),
(7, 13, 3, 4, 5000, '2018-12-21 15:53:11', '2018-12-21 15:53:11', '2018-12-04'),
(8, 13, 4, 4, 4000, '2018-12-21 15:53:11', '2018-12-21 15:53:11', '2018-12-04'),
(9, 13, 5, 4, 3000, '2018-12-21 15:53:11', '2018-12-21 15:53:11', '2018-12-04'),
(10, 13, 2, 4, 400, '2019-01-07 12:18:42', '2019-01-07 12:18:42', '2019-01-02'),
(11, 13, 3, 4, 500, '2019-01-07 12:18:42', '2019-01-07 12:18:42', '2019-01-02'),
(12, 13, 4, 4, 600, '2019-01-07 12:18:42', '2019-01-07 12:18:42', '2019-01-02'),
(13, 13, 5, 4, 400, '2019-01-07 12:18:43', '2019-01-07 12:18:43', '2019-01-02'),
(14, 13, 6, 4, 100, '2019-01-07 12:18:43', '2019-01-07 12:18:43', '2019-01-02'),
(15, 13, 2, 2, 500, '2019-01-08 13:33:24', '2019-01-08 13:33:24', '2019-01-08'),
(16, 13, 3, 2, 300, '2019-01-08 13:33:25', '2019-01-08 13:33:25', '2019-01-08'),
(17, 13, 4, 2, 400, '2019-01-08 13:33:25', '2019-01-08 13:33:25', '2019-01-08'),
(18, 13, 5, 2, 600, '2019-01-08 13:33:25', '2019-01-08 13:33:25', '2019-01-08'),
(19, 13, 2, 2, 4, '2019-01-08 13:35:03', '2019-01-08 13:35:03', '2018-12-30'),
(20, 13, 3, 2, 0, '2019-01-08 13:35:04', '2019-01-08 13:35:04', '2018-12-30'),
(21, 13, 4, 2, 0, '2019-01-08 13:35:04', '2019-01-08 13:35:04', '2018-12-30'),
(22, 13, 5, 2, 0, '2019-01-08 13:35:04', '2019-01-08 13:35:04', '2018-12-30'),
(23, 13, 2, 2, 100, '2019-01-09 09:39:41', '2019-01-09 09:39:41', '2019-01-09'),
(24, 13, 3, 2, 200, '2019-01-09 09:39:41', '2019-01-09 09:39:41', '2019-01-09'),
(25, 13, 4, 2, 300, '2019-01-09 09:39:41', '2019-01-09 09:39:41', '2019-01-09'),
(26, 13, 5, 2, 400, '2019-01-09 09:39:41', '2019-01-09 09:39:41', '2019-01-09'),
(27, 13, 2, 4, 500, '2019-01-14 13:30:07', '2019-01-14 13:30:07', '2019-01-14'),
(28, 13, 3, 4, 600, '2019-01-14 13:30:08', '2019-01-14 13:30:08', '2019-01-14'),
(29, 13, 4, 4, 400, '2019-01-14 13:30:08', '2019-01-14 13:30:08', '2019-01-14'),
(30, 13, 5, 4, 100, '2019-01-14 13:30:08', '2019-01-14 13:30:08', '2019-01-14'),
(31, 13, 6, 4, 200, '2019-01-14 13:30:08', '2019-01-14 13:30:08', '2019-01-14'),
(32, 24, 2, 2, 400, '2019-01-14 15:24:44', '2019-01-14 15:24:44', '2019-01-14'),
(33, 24, 3, 2, 500, '2019-01-14 15:24:44', '2019-01-14 15:24:44', '2019-01-14'),
(34, 24, 4, 2, 600, '2019-01-14 15:24:45', '2019-01-14 15:24:45', '2019-01-14'),
(35, 24, 5, 2, 700, '2019-01-14 15:24:45', '2019-01-14 15:24:45', '2019-01-14'),
(36, 24, 6, 2, 800, '2019-01-14 15:24:45', '2019-01-14 15:24:45', '2019-01-14'),
(37, 13, 2, 1, 322, '2019-01-22 13:41:55', '2019-01-22 13:41:55', '2019-01-21'),
(38, 13, 3, 1, 325, '2019-01-22 13:41:55', '2019-01-22 13:41:55', '2019-01-21'),
(39, 13, 4, 1, 451, '2019-01-22 13:41:55', '2019-01-22 13:41:55', '2019-01-21'),
(40, 13, 5, 1, 325, '2019-01-22 13:41:55', '2019-01-22 13:41:55', '2019-01-21'),
(41, 13, 6, 1, 145, '2019-01-22 13:41:55', '2019-01-22 13:41:55', '2019-01-21'),
(42, 32, 2, 1, 500, '2019-01-24 09:57:52', '2019-01-24 09:57:52', '2019-01-24'),
(43, 32, 3, 1, 300, '2019-01-24 09:57:52', '2019-01-24 09:57:52', '2019-01-24'),
(44, 32, 4, 1, 400, '2019-01-24 09:57:53', '2019-01-24 09:57:53', '2019-01-24'),
(45, 32, 5, 1, 200, '2019-01-24 09:57:53', '2019-01-24 09:57:53', '2019-01-24'),
(46, 32, 6, 1, 300, '2019-01-24 09:57:53', '2019-01-24 09:57:53', '2019-01-24'),
(47, 23, 2, 4, 2300, '2019-01-24 14:29:52', '2019-01-24 14:29:52', '2019-01-24'),
(48, 23, 3, 4, 3200, '2019-01-24 14:29:52', '2019-01-24 14:29:52', '2019-01-24'),
(49, 23, 4, 4, 4200, '2019-01-24 14:29:52', '2019-01-24 14:29:52', '2019-01-24'),
(50, 23, 5, 4, 6410, '2019-01-24 14:29:52', '2019-01-24 14:29:52', '2019-01-24'),
(51, 23, 6, 4, 5410, '2019-01-24 14:29:52', '2019-01-24 14:29:52', '2019-01-24'),
(52, 32, 2, 1, 4520, '2019-01-24 14:32:59', '2019-01-24 14:32:59', '2019-01-23'),
(53, 32, 3, 1, 2354, '2019-01-24 14:32:59', '2019-01-24 14:32:59', '2019-01-23'),
(54, 32, 4, 1, 4521, '2019-01-24 14:32:59', '2019-01-24 14:32:59', '2019-01-23'),
(55, 32, 5, 1, 3654, '2019-01-24 14:32:59', '2019-01-24 14:32:59', '2019-01-23'),
(56, 32, 6, 1, 5214, '2019-01-24 14:32:59', '2019-01-24 14:32:59', '2019-01-23'),
(57, 32, 2, 2, 5600, '2019-01-29 13:52:55', '2019-01-29 13:52:55', '2019-01-29'),
(58, 32, 3, 2, 2360, '2019-01-29 13:52:55', '2019-01-29 13:52:55', '2019-01-29'),
(59, 32, 4, 2, 3000, '2019-01-29 13:52:55', '2019-01-29 13:52:55', '2019-01-29'),
(60, 32, 5, 2, 5000, '2019-01-29 13:52:55', '2019-01-29 13:52:55', '2019-01-29'),
(61, 32, 6, 2, 4040, '2019-01-29 13:52:55', '2019-01-29 13:52:55', '2019-01-29'),
(62, 23, 2, 1, 2000, '2019-01-29 13:54:46', '2019-01-29 13:54:46', '2019-01-29'),
(63, 23, 3, 1, 3000, '2019-01-29 13:54:46', '2019-01-29 13:54:46', '2019-01-29'),
(64, 23, 4, 1, 1000, '2019-01-29 13:54:47', '2019-01-29 13:54:47', '2019-01-29'),
(65, 23, 5, 1, 1000, '2019-01-29 13:54:47', '2019-01-29 13:54:47', '2019-01-29'),
(66, 23, 6, 1, 3000, '2019-01-29 13:54:47', '2019-01-29 13:54:47', '2019-01-29'),
(67, 32, 2, 3, 100, '2019-01-30 13:53:06', '2019-01-30 13:53:06', '2019-01-30'),
(68, 32, 3, 3, 200, '2019-01-30 13:53:06', '2019-01-30 13:53:06', '2019-01-30'),
(69, 32, 4, 3, 300, '2019-01-30 13:53:06', '2019-01-30 13:53:06', '2019-01-30'),
(70, 32, 5, 3, 150, '2019-01-30 13:53:06', '2019-01-30 13:53:06', '2019-01-30'),
(71, 32, 6, 3, 250, '2019-01-30 13:53:06', '2019-01-30 13:53:06', '2019-01-30'),
(72, 24, 2, 3, 233, '2019-01-30 14:24:07', '2019-01-30 14:24:07', '2018-12-04'),
(73, 24, 3, 3, 2000, '2019-01-30 14:24:07', '2019-01-30 14:24:07', '2018-12-04'),
(74, 24, 4, 3, 3000, '2019-01-30 14:24:07', '2019-01-30 14:24:07', '2018-12-04'),
(75, 24, 5, 3, 4000, '2019-01-30 14:24:07', '2019-01-30 14:24:07', '2018-12-04'),
(76, 24, 6, 3, 2000, '2019-01-30 14:24:08', '2019-01-30 14:24:08', '2018-12-04'),
(77, 24, 2, 2, 4000, '2019-01-30 14:25:33', '2019-01-30 14:25:33', '2019-01-30'),
(78, 24, 3, 2, 5000, '2019-01-30 14:25:33', '2019-01-30 14:25:33', '2019-01-30'),
(79, 24, 4, 2, 3000, '2019-01-30 14:25:33', '2019-01-30 14:25:33', '2019-01-30'),
(80, 24, 5, 2, 4000, '2019-01-30 14:25:33', '2019-01-30 14:25:33', '2019-01-30'),
(81, 24, 6, 2, 2000, '2019-01-30 14:25:33', '2019-01-30 14:25:33', '2019-01-30'),
(82, 13, 2, 3, 2000, '2019-01-30 14:41:47', '2019-01-30 14:41:47', '2019-01-30'),
(83, 13, 3, 3, 3000, '2019-01-30 14:41:47', '2019-01-30 14:41:47', '2019-01-30'),
(84, 13, 4, 3, 4000, '2019-01-30 14:41:47', '2019-01-30 14:41:47', '2019-01-30'),
(85, 13, 5, 3, 1000, '2019-01-30 14:41:47', '2019-01-30 14:41:47', '2019-01-30'),
(86, 13, 6, 3, 10000, '2019-01-30 14:41:47', '2019-01-30 14:41:47', '2019-01-30'),
(87, 32, 2, 3, 100, '2019-01-31 07:55:52', '2019-01-31 07:55:52', '2019-01-31'),
(88, 32, 3, 3, 200, '2019-01-31 07:55:52', '2019-01-31 07:55:52', '2019-01-31'),
(89, 32, 4, 3, 300, '2019-01-31 07:55:52', '2019-01-31 07:55:52', '2019-01-31'),
(90, 32, 5, 3, 400, '2019-01-31 07:55:52', '2019-01-31 07:55:52', '2019-01-31'),
(91, 32, 6, 3, 500, '2019-01-31 07:55:52', '2019-01-31 07:55:52', '2019-01-31'),
(92, 13, 2, 2, 200, '2019-01-31 08:08:34', '2019-01-31 08:08:34', '2019-01-31'),
(93, 13, 3, 2, 300, '2019-01-31 08:08:35', '2019-01-31 08:08:35', '2019-01-31'),
(94, 13, 4, 2, 400, '2019-01-31 08:08:35', '2019-01-31 08:08:35', '2019-01-31'),
(95, 13, 5, 2, 500, '2019-01-31 08:08:35', '2019-01-31 08:08:35', '2019-01-31'),
(96, 13, 6, 2, 100, '2019-01-31 08:08:35', '2019-01-31 08:08:35', '2019-01-31'),
(97, 24, 2, 3, 400, '2019-01-31 08:09:41', '2019-01-31 08:09:41', '2019-01-31'),
(98, 24, 3, 3, 200, '2019-01-31 08:09:41', '2019-01-31 08:09:41', '2019-01-31'),
(99, 24, 4, 3, 300, '2019-01-31 08:09:41', '2019-01-31 08:09:41', '2019-01-31'),
(100, 24, 5, 3, 400, '2019-01-31 08:09:42', '2019-01-31 08:09:42', '2019-01-31'),
(101, 24, 6, 3, 500, '2019-01-31 08:09:42', '2019-01-31 08:09:42', '2019-01-31'),
(102, 32, 2, 3, 200, '2019-01-31 12:00:01', '2019-01-31 12:00:01', '2018-06-19'),
(103, 32, 3, 3, 500, '2019-01-31 12:00:01', '2019-01-31 12:00:01', '2018-06-19'),
(104, 32, 4, 3, 300, '2019-01-31 12:00:01', '2019-01-31 12:00:01', '2018-06-19'),
(105, 32, 5, 3, 400, '2019-01-31 12:00:01', '2019-01-31 12:00:01', '2018-06-19'),
(106, 32, 6, 3, 600, '2019-01-31 12:00:01', '2019-01-31 12:00:01', '2018-06-19'),
(107, 23, 2, 4, 6000, '2019-01-31 12:05:55', '2019-01-31 12:05:55', '2019-01-31'),
(108, 23, 3, 4, 4000, '2019-01-31 12:05:55', '2019-01-31 12:05:55', '2019-01-31'),
(109, 23, 4, 4, 3000, '2019-01-31 12:05:55', '2019-01-31 12:05:55', '2019-01-31'),
(110, 23, 5, 4, 2000, '2019-01-31 12:05:55', '2019-01-31 12:05:55', '2019-01-31'),
(111, 23, 6, 4, 5000, '2019-01-31 12:05:55', '2019-01-31 12:05:55', '2019-01-31'),
(112, 13, 2, 1, 2500, '2019-02-06 11:26:52', '2019-02-06 11:26:52', '2019-02-06'),
(113, 13, 3, 1, 4500, '2019-02-06 11:26:52', '2019-02-06 11:26:52', '2019-02-06'),
(114, 13, 4, 1, 2000, '2019-02-06 11:26:52', '2019-02-06 11:26:52', '2019-02-06'),
(115, 13, 5, 1, 3000, '2019-02-06 11:26:53', '2019-02-06 11:26:53', '2019-02-06'),
(116, 13, 6, 1, 1000, '2019-02-06 11:26:53', '2019-02-06 11:26:53', '2019-02-06'),
(117, 13, 2, 2, 4500, '2019-02-07 14:50:37', '2019-02-07 14:50:37', '2019-02-07'),
(118, 13, 3, 2, 4570, '2019-02-07 14:50:37', '2019-02-07 14:50:37', '2019-02-07'),
(119, 13, 4, 2, 6001, '2019-02-07 14:50:37', '2019-02-07 14:50:37', '2019-02-07'),
(120, 13, 5, 2, 4501, '2019-02-07 14:50:37', '2019-02-07 14:50:37', '2019-02-07'),
(121, 13, 6, 2, 5210, '2019-02-07 14:50:37', '2019-02-07 14:50:37', '2019-02-07'),
(122, 13, 2, 2, 4580, '2019-02-07 14:54:03', '2019-02-07 14:54:03', '2018-11-06'),
(123, 13, 3, 2, 4510, '2019-02-07 14:54:03', '2019-02-07 14:54:03', '2018-11-06'),
(124, 13, 4, 2, 2504, '2019-02-07 14:54:03', '2019-02-07 14:54:03', '2018-11-06'),
(125, 13, 5, 2, 200, '2019-02-07 14:54:04', '2019-02-07 14:54:04', '2018-11-06'),
(126, 13, 6, 2, 300, '2019-02-07 14:54:04', '2019-02-07 14:54:04', '2018-11-06'),
(127, 13, 2, 2, 4580, '2019-02-07 15:03:28', '2019-02-07 15:03:28', '2018-11-05'),
(128, 13, 3, 2, 4510, '2019-02-07 15:03:28', '2019-02-07 15:03:28', '2018-11-05'),
(129, 13, 4, 2, 2504, '2019-02-07 15:03:28', '2019-02-07 15:03:28', '2018-11-05'),
(130, 13, 5, 2, 200, '2019-02-07 15:03:28', '2019-02-07 15:03:28', '2018-11-05'),
(131, 13, 6, 2, 300, '2019-02-07 15:03:28', '2019-02-07 15:03:28', '2018-11-05'),
(132, 13, 2, 1, 4512, '2019-02-07 15:05:56', '2019-02-07 15:05:56', '2018-11-04'),
(133, 13, 3, 1, 1214, '2019-02-07 15:05:56', '2019-02-07 15:05:56', '2018-11-04'),
(134, 13, 4, 1, 2120, '2019-02-07 15:05:56', '2019-02-07 15:05:56', '2018-11-04'),
(135, 13, 5, 1, 201, '2019-02-07 15:05:56', '2019-02-07 15:05:56', '2018-11-04'),
(136, 13, 6, 1, 230, '2019-02-07 15:05:56', '2019-02-07 15:05:56', '2018-11-04');

-- --------------------------------------------------------

--
-- Table structure for table `service_types`
--

CREATE TABLE `service_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_types`
--

INSERT INTO `service_types` (`id`, `branch_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 13, 'Sunday Service', '2018-12-20 15:06:56', '2018-12-21 11:39:39'),
(2, 13, 'Revival Service', '2018-12-21 11:39:52', '2018-12-21 11:39:52'),
(3, 13, 'Environmental Service', '2018-12-21 15:40:03', '2018-12-21 15:40:03'),
(4, 13, 'Anu Service', '2018-12-21 15:40:16', '2018-12-21 15:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isadmin` enum('true','false') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `branchname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branchcode` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` int(5) NOT NULL,
  `city` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` int(5) NOT NULL DEFAULT '158',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `isadmin`, `branchname`, `branchcode`, `email`, `country`, `city`, `state`, `currency`, `address`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'false', 'JESUS PARISH', '345', 'iamblizzyy@gmail.comm', 5, 'Lagos', 'Lagos', 6, 'Zion city estate, FUTA Rd, Akure, Nigeria', '$2y$10$rRrLHmPHFVdqXqNAxeFc8e5fbskwnkM2zzoAGpM1.x7CHoUAtZ5Wa', '6YYxkznWjf4wksP9WNrp4HNLgmquk150YmXeIvtNtdMibd6WmRAgKWSrxk5f', '2018-07-05 10:46:21', '2019-01-22 11:56:08'),
(2, 'true', 'JESUS COURT', '346', 'onigbenga@yahoo.ca', 158, '', '', 158, 'Zion city estate, FUTA Rd, Akure, Nigeria', '$2y$10$6KHyGNA00jHwc/3evJ3X2eIuMUld4Na42oc9CzMpiNw9LXGZjzrVy', '7co7QzSyE0OW546uoRy5sLwxJKlBjyoh2uZuhm0jTe2CR485qjNNcc0QGbHS', '2018-07-05 12:26:50', '2018-07-05 12:26:50'),
(3, 'false', 'LIVING WATERS CHURCH OF GOD', '02', 'lekkibranch@livingwater.com', 158, '', '', 158, 'Lekki, Lagos', '$2y$10$sZp0cxiqG.hjaWZ8HWnoUuX5ec82TYoy/0FHtiAmF9IlYoKisQRYW', 'GnY6NBSCSEX3krOKsMHBKVNuDAbBeMawHOxQyPVqLUSQX4w6PyNo0zm8dLP5', '2018-07-05 15:36:52', '2018-07-05 15:36:52'),
(4, 'false', 'LIVING WATERS CHURCH OF GOD, ABUJA', '03', 'lekkibranch2@livingwater.com', 158, '', '', 158, 'Maitama, Abuja', '$2y$10$BdVt1NY5XpILbtgGHkz/6OLdenI67lUYaYZtG8vrlc4tE.YUe8QBC', NULL, '2018-07-05 15:44:31', '2018-07-05 15:44:31'),
(5, 'false', 'Wonder Branch', '1007', 'alugbin96@gmail.com', 158, '', '', 158, 'No 6 remoye', '$2y$10$LZBNqBGTHEtC5Xp23FAQhe7kO480SuHPcIvRjF50e273RgYs9MiTS', NULL, '2018-07-09 16:33:54', '2018-07-09 16:33:54'),
(6, 'false', 'favours land', '1009', 'ajiboyefavour31@gmail.com', 158, '', '', 158, 'No 6, owutedo street, ile epo alhaji bus stop, egbeda, lagos', '$2y$10$szZ1cHfybq8Kc5Xqa7mSBek.tkp9o7rHcT1nn7fjyJfFNjiM/oXhq', NULL, '2018-07-09 17:37:53', '2018-07-09 17:37:53'),
(7, 'false', 'NEW BRANCH', '487', 'hoffenhiemtech@gmail.com', 158, '', '', 158, '15 Teddy Road', '$2y$10$0zMVXPv3ZX1etxJiyVs68eoCCF/AFd6oF1Ha6A0LkpIsbWtavF8b6', 'Ah4FsHxxWujJ9sHHCRgCNm2qYc8UCXzYZEeOdRwvtCBoa0ikSVAz6AVW00id', '2018-07-19 19:48:38', '2018-07-19 19:48:38'),
(11, 'false', 'HOUSE OF GOLIATH', '500', 'leonard.oshyemi@gmail.com', 158, '', '', 158, '57 Clifton Road', '$2y$10$tdZlDDHQpyBjlb/Y8C11UuBgKxwzpsY1CwSepdZH3A9ZFFA70xZY.', 'Cqa5cOxiIb8u4lF9U17FQN1iJ2EJcM7anUmJ7nvkggkvgKnD0Ph9AW2B4Raj', '2018-08-06 05:36:41', '2018-08-06 05:36:41'),
(12, 'false', 'House of Solomon', '600', 'mrkilltheshow@gmail.com', 158, '', '', 158, '15 Teddy Road', '$2y$10$uIxdVc82a8kyHUqefmP9..8SeRHwDYAiY.NPN/qs0QftmGtbSrMJS', 'LT03psjzo9Az3XGk60hoOvMxkWxcVdigg2KhLughIFwqdvNCURH8ZgmQuXu4', '2018-08-06 05:51:17', '2018-08-06 05:51:17'),
(13, 'true', 'Ace', '101225', 'myckhel1@hotmail.com', 158, '', '', 158, 'eko akete', '$2y$10$f4zR.QDOPnBvv6ySwi.94.5rISeD6DhHWI0yFNk1FZDb1rveMPM4K', 'I1MOb23uZeAndiaRwmZj0WEeAtp4AP2rthyYhkSAy3LcGIS8NZ6nuxYqGcXE', '2018-08-06 22:20:01', '2018-08-06 22:20:01'),
(14, 'false', 'New Goliath Church of God', '700', 'goliathchurch@gmail.com', 158, '', '', 158, '123 Ishola-Sanni Avenue, Lagos, Nigeria', '$2y$10$GaTcmX9IrrzKHuJlrfV7luoEOVoh1n2XDf250j1BBymuH.kVJ2WVC', '5EThP5ZEMxDIgWaq4sPVgfVU2lZvgLJosqIy4stMOnxMAVtLxDSfxBpuq3j8', '2018-08-09 16:43:11', '2018-08-09 16:43:11'),
(23, 'false', 'Branch 2', '101142', 'myckhel123@gmail.com', 158, '', '', 158, 'ajah branch', '$2y$10$BRdn9sT7cMi3cm0mGTb9auOtjvBep7kyDfvP5VXklwvze5p1jk4lK', 'TDaNdz8iAggZ7cguo7alTnq426xlVY4zteOXAuCkFEjHGZkL8EDF7Iz7hEXM', '2018-08-13 15:36:22', '2018-08-13 15:36:22'),
(24, 'false', 'Branch 3', '45555', 'myckhel1@gmail.com', 158, '', '', 158, 'ajah', '$2y$10$0ofyfMHM8rErB9tFrvqXZ.M9RQ.6WAVLLh6g1NmpUepZMq1Zn3/52', 'NsVSinqYfAsfGGnpP6nUbMH76xlL3Bm1UpJqfw2NhmecAfNP74GROcYQVAKY', '2018-08-13 16:09:59', '2018-08-13 16:09:59'),
(25, 'false', 'Branch Fourteen', '14', 'branch14@gmail.com', 158, '', '', 158, '142 Branch 14 Road, Lekki Ajah Lagos', '$2y$10$fPp8ge09ZcCtXVoXkOyACODNLPtA1T2ZN0tq.pwQrd1qy74KX8M2e', NULL, '2018-08-14 18:03:17', '2018-08-14 18:03:17'),
(27, 'false', 'ds sf', 'ef ewe', 'myckhel1122@hotmail.com', 158, 'dsfdsfdsf', 'dh', 158, 'hd d', '$2y$10$qtijld5wjqffRW111.OO9.8OOzX7RV5I/m2BzYVXIqH6dNlKHGxgq', NULL, '2018-09-14 17:19:07', '2018-09-14 17:19:07'),
(28, 'false', 'new', '120339', 'gmai@gmail.com', 158, 'lagos', 'lagos', 158, 'ajah', '$2y$10$2kt/zGE2BRCj..CP7I.j6.ZwUUopMc/nkiC/7TkMfIqEzzFusebrK', NULL, '2018-09-17 10:15:51', '2018-09-17 10:15:51'),
(29, 'false', 'jjd', '135464', '6jd@gmail.com', 158, 'lagos', 'lagos', 62, 'ajah', '$2y$10$C8XvBXv5MiDGvRPbJppCfeTRsW3zgnqaGdrSlEYlre2HPut.Fd1I2', NULL, '2018-09-17 10:17:50', '2018-09-17 10:17:50'),
(30, 'false', 'aaaa', 'aaar', 'aaa@gmail.com', 158, 'ikeja', 'Lagos', 62, 'ajsh', '$2y$10$zv5jpJvegb8ZSMjbTYeAF.MU3U6PweBvBh.9XHYtHQSjtaRkwzfRa', NULL, '2018-09-18 06:54:14', '2018-09-18 06:54:14'),
(31, 'false', 'bbb', 'bbbb', 'mac@gemail.com', 158, 'ikeja', 'Lagos', 152, 'ajah', '$2y$10$9PynqPlOnhqZtF.d9pyw5uiBd71eWABuTqe.zOzhGVPUdIBTenBhG', NULL, '2018-09-18 06:56:29', '2018-09-18 06:56:29'),
(32, 'true', 'Demo Head Branch', 'LMS-101225', 'demoadmin@gmail.com', 158, 'Lagos', 'Lagos', 158, 'City Of Praise Plaza', '$2y$10$U89BtOB00ogdCMUjr2Qa.OA4Xh.dRTwX8K2N4LpRhv17g7vnYQr3S', 'i1DeVFNFGBB2lmNZPjqxphE50AJBVvLRJml7MpXzfcqZIT9q8SBCbeXuXlRB', '2018-09-21 09:56:50', '2018-09-21 09:56:50'),
(33, 'false', 'Demo Branch', 'LMS-101226', 'demo@gmail.com', 158, 'Lagos', 'Lagos', 158, 'Marshy Hill Estate', '$2y$10$G3eR.wzFmLo4kQ6hDFeGM.6EugrlozsTV6KEl3DIgeNs18g/hObA2', 'of13w7ZGQI9taIaPXCqzTe96C2oYOqI7IpKjQmKGIrqTR20AdQyIUAIVPQMW', '2018-09-21 09:57:49', '2018-09-21 09:57:49'),
(34, 'false', 'HOUSE OF ESTHER', '422', 'houseofesther@gmail.com', 158, 'TORONTO', 'Ontario', 38, '15 Teddy Road', '$2y$10$h4X5xEXgXE.yyh.I7ppvmuOx3a4yrbitIUqfcd1p6wyGdak3ukovy', 'c5PC53nSPmwhqjlFOkvgrOqZ6DbjL8rEuYoXbKEdCZy6R7KHgBIkZv0iet3L', '2018-09-21 10:46:25', '2018-09-21 10:46:25');

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
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id_index` (`branch_id`),
  ADD KEY `attendances_service_types_id_foreign` (`service_types_id`);

--
-- Indexes for table `collections_commissions`
--
ALTER TABLE `collections_commissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `collections_commissions_branch_id_foreign` (`branch_id`),
  ADD KEY `saving_date_collected` (`saving_date_collected`);

--
-- Indexes for table `collections_types`
--
ALTER TABLE `collections_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `collections_types_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `for_branch` (`for_branch`);

--
-- Indexes for table `head_office_options`
--
ALTER TABLE `head_office_options`
  ADD PRIMARY KEY (`HOID`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`),
  ADD KEY `branch_id_index` (`branch_id`);
ALTER TABLE `members` ADD FULLTEXT KEY `FullText` (`firstname`,`lastname`);

--
-- Indexes for table `members_attendances`
--
ALTER TABLE `members_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `members_attendances_service_types_id_foreign` (`service_types_id`);

--
-- Indexes for table `member_savings`
--
ALTER TABLE `member_savings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_savings_branch_id_foreign` (`branch_id`),
  ADD KEY `member_savings_member_id_foreign` (`member_id`),
  ADD KEY `member_savings_collections_types_id_foreign` (`collections_types_id`),
  ADD KEY `member_savings_service_types_id_foreign` (`service_types_id`);

--
-- Indexes for table `messagings`
--
ALTER TABLE `messagings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `msg_from` (`msg_from`),
  ADD KEY `msg_to` (`msg_to`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `options_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `savings`
--
ALTER TABLE `savings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `savings_branch_id_foreign` (`branch_id`),
  ADD KEY `savings_collections_types_id_foreign` (`collections_types_id`),
  ADD KEY `savings_service_types_id_foreign` (`service_types_id`),
  ADD KEY `savings_date_collected_index` (`date_collected`);

--
-- Indexes for table `service_types`
--
ALTER TABLE `service_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_types_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `branchcode` (`branchcode`),
  ADD KEY `country` (`country`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `collections_commissions`
--
ALTER TABLE `collections_commissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `collections_types`
--
ALTER TABLE `collections_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `head_office_options`
--
ALTER TABLE `head_office_options`
  MODIFY `HOID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `members_attendances`
--
ALTER TABLE `members_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `member_savings`
--
ALTER TABLE `member_savings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `messagings`
--
ALTER TABLE `messagings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `savings`
--
ALTER TABLE `savings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `service_types`
--
ALTER TABLE `service_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `users` (`branchcode`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_ibfk_2` FOREIGN KEY (`service_types_id`) REFERENCES `service_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_service_types_id_foreign` FOREIGN KEY (`service_types_id`) REFERENCES `service_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `collections_commissions`
--
ALTER TABLE `collections_commissions`
  ADD CONSTRAINT `collections_commissions_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `collections_commissions_ibfk_1` FOREIGN KEY (`saving_date_collected`) REFERENCES `savings` (`date_collected`) ON DELETE CASCADE;

--
-- Constraints for table `collections_types`
--
ALTER TABLE `collections_types`
  ADD CONSTRAINT `collections_types_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `users` (`branchcode`) ON DELETE CASCADE;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `users` (`branchcode`) ON DELETE CASCADE;

--
-- Constraints for table `group_members`
--
ALTER TABLE `group_members`
  ADD CONSTRAINT `group_members_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_members_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_members_ibfk_3` FOREIGN KEY (`for_branch`) REFERENCES `users` (`branchcode`) ON DELETE CASCADE;

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `users` (`branchcode`) ON DELETE CASCADE;

--
-- Constraints for table `members_attendances`
--
ALTER TABLE `members_attendances`
  ADD CONSTRAINT `members_attendances_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `users` (`branchcode`) ON DELETE CASCADE,
  ADD CONSTRAINT `members_attendances_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `members_attendances_service_types_id_foreign` FOREIGN KEY (`service_types_id`) REFERENCES `service_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `member_savings`
--
ALTER TABLE `member_savings`
  ADD CONSTRAINT `member_savings_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `member_savings_collections_types_id_foreign` FOREIGN KEY (`collections_types_id`) REFERENCES `collections_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `member_savings_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `member_savings_service_types_id_foreign` FOREIGN KEY (`service_types_id`) REFERENCES `service_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messagings`
--
ALTER TABLE `messagings`
  ADD CONSTRAINT `messagings_ibfk_1` FOREIGN KEY (`msg_from`) REFERENCES `users` (`branchcode`) ON DELETE CASCADE,
  ADD CONSTRAINT `messagings_ibfk_2` FOREIGN KEY (`msg_to`) REFERENCES `users` (`branchcode`) ON DELETE CASCADE;

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD CONSTRAINT `password_resets_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`) ON DELETE CASCADE;

--
-- Constraints for table `savings`
--
ALTER TABLE `savings`
  ADD CONSTRAINT `savings_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `savings_collections_types_id_foreign` FOREIGN KEY (`collections_types_id`) REFERENCES `collections_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `savings_service_types_id_foreign` FOREIGN KEY (`service_types_id`) REFERENCES `service_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_types`
--
ALTER TABLE `service_types`
  ADD CONSTRAINT `service_types_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`country`) REFERENCES `country` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
