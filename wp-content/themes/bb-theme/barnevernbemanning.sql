-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16. Mar, 2022 20:20 PM
-- Tjener-versjon: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barnevernbemanning`
--

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dataark for tabell `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'En WordPress-kommentator', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-02-05 13:48:17', '2022-02-05 12:48:17', 'Hei, dette er en kommentar.\nFor å starte med moderering, redigering og sletting av kommentarer, vennligst gå til Kommentar-skjermen i kontrollpanelet.\nKommentator-avatarer kommer fra <a href=\"https://nb.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_nf3_actions`
--

CREATE TABLE `wp_nf3_actions` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `key` longtext DEFAULT NULL,
  `type` longtext DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `label` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dataark for tabell `wp_nf3_actions`
--

INSERT INTO `wp_nf3_actions` (`id`, `title`, `key`, `type`, `active`, `parent_id`, `created_at`, `updated_at`, `label`) VALUES
(1, '', '', 'save', 1, 1, '2022-02-10 11:31:41', '2022-02-10 12:31:41', 'Record Submission'),
(2, '', '', 'email', 1, 1, '2022-02-10 11:31:41', '2022-02-10 12:31:41', 'Email Confirmation'),
(3, '', '', 'email', 1, 1, '2022-02-10 11:31:41', '2022-02-10 12:31:41', 'Email Notification'),
(4, '', '', 'successmessage', 1, 1, '2022-02-10 11:31:41', '2022-02-10 12:31:41', 'Success Message'),
(5, '', '', 'save', 1, 2, '2016-08-24 14:39:20', NULL, 'Record Submission'),
(6, '', '', 'email', 1, 2, '2016-08-24 14:39:20', NULL, 'Email Confirmation'),
(7, '', '', 'email', 1, 2, '2016-08-24 14:47:39', NULL, 'Email Notification'),
(8, '', '', 'successmessage', 1, 2, '2022-02-10 11:37:32', NULL, 'Henvendelse mottatt');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_nf3_action_meta`
--

CREATE TABLE `wp_nf3_action_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext DEFAULT NULL,
  `meta_key` longtext DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dataark for tabell `wp_nf3_action_meta`
--

INSERT INTO `wp_nf3_action_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'objectType', 'Action', 'objectType', 'Action'),
(2, 1, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(3, 1, 'editActive', '', 'editActive', ''),
(4, 1, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(5, 1, 'payment_gateways', '', 'payment_gateways', ''),
(6, 1, 'payment_total', '', 'payment_total', ''),
(7, 1, 'tag', '', 'tag', ''),
(8, 1, 'to', '', 'to', ''),
(9, 1, 'email_subject', '', 'email_subject', ''),
(10, 1, 'email_message', '', 'email_message', ''),
(11, 1, 'from_name', '', 'from_name', ''),
(12, 1, 'from_address', '', 'from_address', ''),
(13, 1, 'reply_to', '', 'reply_to', ''),
(14, 1, 'email_format', 'html', 'email_format', 'html'),
(15, 1, 'cc', '', 'cc', ''),
(16, 1, 'bcc', '', 'bcc', ''),
(17, 1, 'attach_csv', '', 'attach_csv', ''),
(18, 1, 'redirect_url', '', 'redirect_url', ''),
(19, 1, 'email_message_plain', '', 'email_message_plain', ''),
(20, 2, 'to', '{field:email}', 'to', '{field:email}'),
(21, 2, 'subject', 'This is an email action.', 'subject', 'This is an email action.'),
(22, 2, 'message', 'Hello, Ninja Forms!', 'message', 'Hello, Ninja Forms!'),
(23, 2, 'objectType', 'Action', 'objectType', 'Action'),
(24, 2, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(25, 2, 'editActive', '', 'editActive', ''),
(26, 2, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(27, 2, 'payment_gateways', '', 'payment_gateways', ''),
(28, 2, 'payment_total', '', 'payment_total', ''),
(29, 2, 'tag', '', 'tag', ''),
(30, 2, 'email_subject', 'Submission Confirmation ', 'email_subject', 'Submission Confirmation '),
(31, 2, 'email_message', '<p>{all_fields_table}<br></p>', 'email_message', '<p>{all_fields_table}<br></p>'),
(32, 2, 'from_name', '', 'from_name', ''),
(33, 2, 'from_address', '', 'from_address', ''),
(34, 2, 'reply_to', '', 'reply_to', ''),
(35, 2, 'email_format', 'html', 'email_format', 'html'),
(36, 2, 'cc', '', 'cc', ''),
(37, 2, 'bcc', '', 'bcc', ''),
(38, 2, 'attach_csv', '', 'attach_csv', ''),
(39, 2, 'email_message_plain', '', 'email_message_plain', ''),
(40, 3, 'objectType', 'Action', 'objectType', 'Action'),
(41, 3, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(42, 3, 'editActive', '', 'editActive', ''),
(43, 3, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(44, 3, 'payment_gateways', '', 'payment_gateways', ''),
(45, 3, 'payment_total', '', 'payment_total', ''),
(46, 3, 'tag', '', 'tag', ''),
(47, 3, 'to', '{system:admin_email}', 'to', '{system:admin_email}'),
(48, 3, 'email_subject', 'New message from {field:name}', 'email_subject', 'New message from {field:name}'),
(49, 3, 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>', 'email_message', '<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>'),
(50, 3, 'from_name', '', 'from_name', ''),
(51, 3, 'from_address', '', 'from_address', ''),
(52, 3, 'reply_to', '{field:email}', 'reply_to', '{field:email}'),
(53, 3, 'email_format', 'html', 'email_format', 'html'),
(54, 3, 'cc', '', 'cc', ''),
(55, 3, 'bcc', '', 'bcc', ''),
(56, 3, 'attach_csv', '0', 'attach_csv', '0'),
(57, 3, 'email_message_plain', '', 'email_message_plain', ''),
(58, 4, 'message', 'Thank you {field:name} for filling out my form!', 'message', 'Thank you {field:name} for filling out my form!'),
(59, 4, 'objectType', 'Action', 'objectType', 'Action'),
(60, 4, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(61, 4, 'editActive', '', 'editActive', ''),
(62, 4, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(63, 4, 'payment_gateways', '', 'payment_gateways', ''),
(64, 4, 'payment_total', '', 'payment_total', ''),
(65, 4, 'tag', '', 'tag', ''),
(66, 4, 'to', '', 'to', ''),
(67, 4, 'email_subject', '', 'email_subject', ''),
(68, 4, 'email_message', '', 'email_message', ''),
(69, 4, 'from_name', '', 'from_name', ''),
(70, 4, 'from_address', '', 'from_address', ''),
(71, 4, 'reply_to', '', 'reply_to', ''),
(72, 4, 'email_format', 'html', 'email_format', 'html'),
(73, 4, 'cc', '', 'cc', ''),
(74, 4, 'bcc', '', 'bcc', ''),
(75, 4, 'attach_csv', '', 'attach_csv', ''),
(76, 4, 'redirect_url', '', 'redirect_url', ''),
(77, 4, 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>', 'success_msg', '<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>'),
(78, 4, 'email_message_plain', '', 'email_message_plain', ''),
(79, 5, 'title', '', 'title', ''),
(80, 5, 'key', '', 'key', ''),
(81, 5, 'type', 'save', 'type', 'save'),
(82, 5, 'active', '1', 'active', '1'),
(83, 5, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(84, 5, 'label', 'Record Submission', 'label', 'Record Submission'),
(85, 5, 'objectType', 'Action', 'objectType', 'Action'),
(86, 5, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(87, 5, 'editActive', '', 'editActive', ''),
(88, 5, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(89, 5, 'payment_gateways', '', 'payment_gateways', ''),
(90, 5, 'payment_total', '', 'payment_total', ''),
(91, 5, 'tag', '', 'tag', ''),
(92, 5, 'to', '{wp:admin_email}', 'to', '{wp:admin_email}'),
(93, 5, 'email_subject', 'Innsending av Ninja-skjema', 'email_subject', 'Innsending av Ninja-skjema'),
(94, 5, 'email_message', '{fields_table}', 'email_message', '{fields_table}'),
(95, 5, 'from_name', '', 'from_name', ''),
(96, 5, 'from_address', '', 'from_address', ''),
(97, 5, 'reply_to', '', 'reply_to', ''),
(98, 5, 'email_format', 'html', 'email_format', 'html'),
(99, 5, 'cc', '', 'cc', ''),
(100, 5, 'bcc', '', 'bcc', ''),
(101, 5, 'attach_csv', '', 'attach_csv', ''),
(102, 5, 'redirect_url', '', 'redirect_url', ''),
(103, 5, 'email_message_plain', '', 'email_message_plain', ''),
(104, 5, 'parent_id', '2', 'parent_id', '2'),
(105, 6, 'title', '', 'title', ''),
(106, 6, 'key', '', 'key', ''),
(107, 6, 'type', 'email', 'type', 'email'),
(108, 6, 'active', '1', 'active', '1'),
(109, 6, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(110, 6, 'label', 'Email Confirmation', 'label', 'Email Confirmation'),
(111, 6, 'to', '{field:epost_1644492813347}', 'to', '{field:epost_1644492813347}'),
(112, 6, 'subject', 'This is an email action.', 'subject', 'This is an email action.'),
(113, 6, 'message', 'Hello, Ninja Forms!', 'message', 'Hello, Ninja Forms!'),
(114, 6, 'objectType', 'Action', 'objectType', 'Action'),
(115, 6, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(116, 6, 'editActive', '', 'editActive', ''),
(117, 6, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(118, 6, 'payment_gateways', '', 'payment_gateways', ''),
(119, 6, 'payment_total', '', 'payment_total', ''),
(120, 6, 'tag', '', 'tag', ''),
(121, 6, 'email_subject', 'Submission Confirmation ', 'email_subject', 'Submission Confirmation '),
(122, 6, 'email_message', '<p>{all_fields_table}<br></p>', 'email_message', '<p>{all_fields_table}<br></p>'),
(123, 6, 'from_name', '', 'from_name', ''),
(124, 6, 'from_address', '', 'from_address', ''),
(125, 6, 'reply_to', '', 'reply_to', ''),
(126, 6, 'email_format', 'html', 'email_format', 'html'),
(127, 6, 'cc', '', 'cc', ''),
(128, 6, 'bcc', '', 'bcc', ''),
(129, 6, 'attach_csv', '', 'attach_csv', ''),
(130, 6, 'email_message_plain', '', 'email_message_plain', ''),
(131, 6, 'parent_id', '2', 'parent_id', '2'),
(132, 7, 'title', '', 'title', ''),
(133, 7, 'key', '', 'key', ''),
(134, 7, 'type', 'email', 'type', 'email'),
(135, 7, 'active', '1', 'active', '1'),
(136, 7, 'created_at', '2016-08-24 16:47:39', 'created_at', '2016-08-24 16:47:39'),
(137, 7, 'objectType', 'Action', 'objectType', 'Action'),
(138, 7, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(139, 7, 'editActive', '', 'editActive', ''),
(140, 7, 'label', 'Email Notification', 'label', 'Email Notification'),
(141, 7, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(142, 7, 'payment_gateways', '', 'payment_gateways', ''),
(143, 7, 'payment_total', '', 'payment_total', ''),
(144, 7, 'tag', '', 'tag', ''),
(145, 7, 'to', '{system:admin_email}', 'to', '{system:admin_email}'),
(146, 7, 'email_subject', 'Ny melding fra {field:navn_1644492768889}', 'email_subject', 'Ny melding fra {field:navn_1644492768889}'),
(147, 7, 'email_message', '<p>{field:message}</p><p>-{field:navn_1644492768889} ( {field:epost_1644492813347} )</p>', 'email_message', '<p>{field:message}</p><p>-{field:navn_1644492768889} ( {field:epost_1644492813347} )</p>'),
(148, 7, 'from_name', '', 'from_name', ''),
(149, 7, 'from_address', '', 'from_address', ''),
(150, 7, 'reply_to', '{field:epost_1644492813347}', 'reply_to', '{field:epost_1644492813347}'),
(151, 7, 'email_format', 'html', 'email_format', 'html'),
(152, 7, 'cc', '', 'cc', ''),
(153, 7, 'bcc', '', 'bcc', ''),
(154, 7, 'attach_csv', '0', 'attach_csv', '0'),
(155, 7, 'email_message_plain', '', 'email_message_plain', ''),
(156, 7, 'parent_id', '2', 'parent_id', '2'),
(157, 8, 'title', '', 'title', ''),
(158, 8, 'key', '', 'key', ''),
(159, 8, 'type', 'successmessage', 'type', 'successmessage'),
(160, 8, 'active', '1', 'active', '1'),
(161, 8, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(162, 8, 'label', 'Success Message', 'label', 'Success Message'),
(163, 8, 'message', 'Thank you {field:navn_1644492768889} for filling out my form!', 'message', 'Thank you {field:navn_1644492768889} for filling out my form!'),
(164, 8, 'objectType', 'Action', 'objectType', 'Action'),
(165, 8, 'objectDomain', 'actions', 'objectDomain', 'actions'),
(166, 8, 'editActive', '', 'editActive', ''),
(167, 8, 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}', 'conditions', 'a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}'),
(168, 8, 'payment_gateways', '', 'payment_gateways', ''),
(169, 8, 'payment_total', '', 'payment_total', ''),
(170, 8, 'tag', '', 'tag', ''),
(171, 8, 'to', '{wp:admin_email}', 'to', '{wp:admin_email}'),
(172, 8, 'email_subject', 'Innsending av Ninja-skjema', 'email_subject', 'Innsending av Ninja-skjema'),
(173, 8, 'email_message', '{fields_table}', 'email_message', '{fields_table}'),
(174, 8, 'from_name', '', 'from_name', ''),
(175, 8, 'from_address', '', 'from_address', ''),
(176, 8, 'reply_to', '', 'reply_to', ''),
(177, 8, 'email_format', 'html', 'email_format', 'html'),
(178, 8, 'cc', '', 'cc', ''),
(179, 8, 'bcc', '', 'bcc', ''),
(180, 8, 'attach_csv', '', 'attach_csv', ''),
(181, 8, 'redirect_url', '', 'redirect_url', ''),
(182, 8, 'success_msg', '<p>Din Henvendelse er mottatt, og vi vi svare deg snarlig.</p>', 'success_msg', '<p>Din Henvendelse er mottatt, og vi vi svare deg snarlig.</p>'),
(183, 8, 'email_message_plain', '', 'email_message_plain', ''),
(184, 8, 'parent_id', '2', 'parent_id', '2'),
(185, 5, 'success_msg', 'Skjemaet er sendt.', 'success_msg', 'Skjemaet er sendt.'),
(186, 5, 'submitter_email', '', 'submitter_email', ''),
(187, 5, 'fields-save-toggle', 'save_all', 'fields-save-toggle', 'save_all'),
(188, 5, 'exception_fields', 'a:0:{}', 'exception_fields', 'a:0:{}'),
(189, 5, 'set_subs_to_expire', '0', 'set_subs_to_expire', '0'),
(190, 5, 'subs_expire_time', '90', 'subs_expire_time', '90'),
(191, 7, 'drawerDisabled', '', 'drawerDisabled', ''),
(192, 8, 'drawerDisabled', '', 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_nf3_chunks`
--

CREATE TABLE `wp_nf3_chunks` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_nf3_fields`
--

CREATE TABLE `wp_nf3_fields` (
  `id` int(11) NOT NULL,
  `label` longtext DEFAULT NULL,
  `key` longtext DEFAULT NULL,
  `type` longtext DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `field_label` longtext DEFAULT NULL,
  `field_key` longtext DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `required` bit(1) DEFAULT NULL,
  `default_value` longtext DEFAULT NULL,
  `label_pos` varchar(15) DEFAULT NULL,
  `personally_identifiable` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dataark for tabell `wp_nf3_fields`
--

INSERT INTO `wp_nf3_fields` (`id`, `label`, `key`, `type`, `parent_id`, `created_at`, `updated_at`, `field_label`, `field_key`, `order`, `required`, `default_value`, `label_pos`, `personally_identifiable`) VALUES
(1, 'Name', 'name', 'textbox', 1, '2022-02-10 11:31:40', '2022-02-10 12:31:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Email', 'email', 'email', 1, '2022-02-10 11:31:40', '2022-02-10 12:31:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Message', 'message', 'textarea', 1, '2022-02-10 11:31:41', '2022-02-10 12:31:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Submit', 'submit', 'submit', 1, '2022-02-10 11:31:41', '2022-02-10 12:31:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '', 'navn_1644492768889', 'textbox', 2, '2022-02-10 11:37:32', NULL, '', 'navn_1644492768889', 1, b'0', '', 'above', b'0'),
(6, '', 'epost_1644492813347', 'email', 2, '2022-02-10 11:37:32', NULL, '', 'epost_1644492813347', 2, b'0', '', 'above', b'1'),
(7, '', 'message', 'textarea', 2, '2022-02-10 11:37:32', NULL, '', 'message', 3, b'0', '', 'above', b'0'),
(8, 'SEND', 'send_1644492880294', 'submit', 2, '2022-02-10 11:37:32', NULL, 'SEND', 'send_1644492880294', 5, b'0', '', '', b'0');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_nf3_field_meta`
--

CREATE TABLE `wp_nf3_field_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext DEFAULT NULL,
  `meta_key` longtext DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dataark for tabell `wp_nf3_field_meta`
--

INSERT INTO `wp_nf3_field_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'label_pos', 'above', 'label_pos', 'above'),
(2, 1, 'required', '1', 'required', '1'),
(3, 1, 'order', '1', 'order', '1'),
(4, 1, 'placeholder', '', 'placeholder', ''),
(5, 1, 'default', '', 'default', ''),
(6, 1, 'wrapper_class', '', 'wrapper_class', ''),
(7, 1, 'element_class', '', 'element_class', ''),
(8, 1, 'objectType', 'Field', 'objectType', 'Field'),
(9, 1, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(10, 1, 'editActive', '', 'editActive', ''),
(11, 1, 'container_class', '', 'container_class', ''),
(12, 1, 'input_limit', '', 'input_limit', ''),
(13, 1, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(14, 1, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(15, 1, 'manual_key', '', 'manual_key', ''),
(16, 1, 'disable_input', '', 'disable_input', ''),
(17, 1, 'admin_label', '', 'admin_label', ''),
(18, 1, 'help_text', '', 'help_text', ''),
(19, 1, 'desc_text', '', 'desc_text', ''),
(20, 1, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(21, 1, 'mask', '', 'mask', ''),
(22, 1, 'custom_mask', '', 'custom_mask', ''),
(23, 1, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(24, 1, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(25, 1, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(26, 1, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(27, 1, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(28, 1, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(29, 1, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(30, 1, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(31, 1, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(32, 1, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(33, 1, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(34, 1, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(35, 1, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(36, 1, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(37, 1, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(38, 1, 'label_styles_border', '', 'label_styles_border', ''),
(39, 1, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(40, 1, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(41, 1, 'label_styles_color', '', 'label_styles_color', ''),
(42, 1, 'label_styles_height', '', 'label_styles_height', ''),
(43, 1, 'label_styles_width', '', 'label_styles_width', ''),
(44, 1, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(45, 1, 'label_styles_margin', '', 'label_styles_margin', ''),
(46, 1, 'label_styles_padding', '', 'label_styles_padding', ''),
(47, 1, 'label_styles_display', '', 'label_styles_display', ''),
(48, 1, 'label_styles_float', '', 'label_styles_float', ''),
(49, 1, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(50, 1, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(51, 1, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(52, 1, 'element_styles_border', '', 'element_styles_border', ''),
(53, 1, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(54, 1, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(55, 1, 'element_styles_color', '', 'element_styles_color', ''),
(56, 1, 'element_styles_height', '', 'element_styles_height', ''),
(57, 1, 'element_styles_width', '', 'element_styles_width', ''),
(58, 1, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(59, 1, 'element_styles_margin', '', 'element_styles_margin', ''),
(60, 1, 'element_styles_padding', '', 'element_styles_padding', ''),
(61, 1, 'element_styles_display', '', 'element_styles_display', ''),
(62, 1, 'element_styles_float', '', 'element_styles_float', ''),
(63, 1, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(64, 1, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(65, 1, 'cellcid', 'c3277', 'cellcid', 'c3277'),
(66, 2, 'label_pos', 'above', 'label_pos', 'above'),
(67, 2, 'required', '1', 'required', '1'),
(68, 2, 'order', '2', 'order', '2'),
(69, 2, 'placeholder', '', 'placeholder', ''),
(70, 2, 'default', '', 'default', ''),
(71, 2, 'wrapper_class', '', 'wrapper_class', ''),
(72, 2, 'element_class', '', 'element_class', ''),
(73, 2, 'objectType', 'Field', 'objectType', 'Field'),
(74, 2, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(75, 2, 'editActive', '', 'editActive', ''),
(76, 2, 'container_class', '', 'container_class', ''),
(77, 2, 'admin_label', '', 'admin_label', ''),
(78, 2, 'help_text', '', 'help_text', ''),
(79, 2, 'desc_text', '', 'desc_text', ''),
(80, 2, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(81, 2, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(82, 2, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(83, 2, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(84, 2, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(85, 2, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(86, 2, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(87, 2, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(88, 2, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(89, 2, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(90, 2, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(91, 2, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(92, 2, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(93, 2, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(94, 2, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(95, 2, 'label_styles_border', '', 'label_styles_border', ''),
(96, 2, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(97, 2, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(98, 2, 'label_styles_color', '', 'label_styles_color', ''),
(99, 2, 'label_styles_height', '', 'label_styles_height', ''),
(100, 2, 'label_styles_width', '', 'label_styles_width', ''),
(101, 2, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(102, 2, 'label_styles_margin', '', 'label_styles_margin', ''),
(103, 2, 'label_styles_padding', '', 'label_styles_padding', ''),
(104, 2, 'label_styles_display', '', 'label_styles_display', ''),
(105, 2, 'label_styles_float', '', 'label_styles_float', ''),
(106, 2, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(107, 2, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(108, 2, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(109, 2, 'element_styles_border', '', 'element_styles_border', ''),
(110, 2, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(111, 2, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(112, 2, 'element_styles_color', '', 'element_styles_color', ''),
(113, 2, 'element_styles_height', '', 'element_styles_height', ''),
(114, 2, 'element_styles_width', '', 'element_styles_width', ''),
(115, 2, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(116, 2, 'element_styles_margin', '', 'element_styles_margin', ''),
(117, 2, 'element_styles_padding', '', 'element_styles_padding', ''),
(118, 2, 'element_styles_display', '', 'element_styles_display', ''),
(119, 2, 'element_styles_float', '', 'element_styles_float', ''),
(120, 2, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(121, 2, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(122, 2, 'cellcid', 'c3281', 'cellcid', 'c3281'),
(123, 3, 'label_pos', 'above', 'label_pos', 'above'),
(124, 3, 'required', '1', 'required', '1'),
(125, 3, 'order', '3', 'order', '3'),
(126, 3, 'placeholder', '', 'placeholder', ''),
(127, 3, 'default', '', 'default', ''),
(128, 3, 'wrapper_class', '', 'wrapper_class', ''),
(129, 3, 'element_class', '', 'element_class', ''),
(130, 3, 'objectType', 'Field', 'objectType', 'Field'),
(131, 3, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(132, 3, 'editActive', '', 'editActive', ''),
(133, 3, 'container_class', '', 'container_class', ''),
(134, 3, 'input_limit', '', 'input_limit', ''),
(135, 3, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(136, 3, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(137, 3, 'manual_key', '', 'manual_key', ''),
(138, 3, 'disable_input', '', 'disable_input', ''),
(139, 3, 'admin_label', '', 'admin_label', ''),
(140, 3, 'help_text', '', 'help_text', ''),
(141, 3, 'desc_text', '', 'desc_text', ''),
(142, 3, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(143, 3, 'textarea_rte', '', 'textarea_rte', ''),
(144, 3, 'disable_rte_mobile', '', 'disable_rte_mobile', ''),
(145, 3, 'textarea_media', '', 'textarea_media', ''),
(146, 3, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(147, 3, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(148, 3, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(149, 3, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(150, 3, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(151, 3, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(152, 3, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(153, 3, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(154, 3, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(155, 3, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(156, 3, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(157, 3, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(158, 3, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(159, 3, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(160, 3, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(161, 3, 'label_styles_border', '', 'label_styles_border', ''),
(162, 3, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(163, 3, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(164, 3, 'label_styles_color', '', 'label_styles_color', ''),
(165, 3, 'label_styles_height', '', 'label_styles_height', ''),
(166, 3, 'label_styles_width', '', 'label_styles_width', ''),
(167, 3, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(168, 3, 'label_styles_margin', '', 'label_styles_margin', ''),
(169, 3, 'label_styles_padding', '', 'label_styles_padding', ''),
(170, 3, 'label_styles_display', '', 'label_styles_display', ''),
(171, 3, 'label_styles_float', '', 'label_styles_float', ''),
(172, 3, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(173, 3, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(174, 3, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(175, 3, 'element_styles_border', '', 'element_styles_border', ''),
(176, 3, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(177, 3, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(178, 3, 'element_styles_color', '', 'element_styles_color', ''),
(179, 3, 'element_styles_height', '', 'element_styles_height', ''),
(180, 3, 'element_styles_width', '', 'element_styles_width', ''),
(181, 3, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(182, 3, 'element_styles_margin', '', 'element_styles_margin', ''),
(183, 3, 'element_styles_padding', '', 'element_styles_padding', ''),
(184, 3, 'element_styles_display', '', 'element_styles_display', ''),
(185, 3, 'element_styles_float', '', 'element_styles_float', ''),
(186, 3, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(187, 3, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(188, 3, 'cellcid', 'c3284', 'cellcid', 'c3284'),
(189, 4, 'processing_label', 'Processing', 'processing_label', 'Processing'),
(190, 4, 'order', '5', 'order', '5'),
(191, 4, 'objectType', 'Field', 'objectType', 'Field'),
(192, 4, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(193, 4, 'editActive', '', 'editActive', ''),
(194, 4, 'container_class', '', 'container_class', ''),
(195, 4, 'element_class', '', 'element_class', ''),
(196, 4, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(197, 4, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(198, 4, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(199, 4, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(200, 4, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(201, 4, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(202, 4, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(203, 4, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(204, 4, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(205, 4, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(206, 4, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(207, 4, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(208, 4, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(209, 4, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(210, 4, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(211, 4, 'label_styles_border', '', 'label_styles_border', ''),
(212, 4, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(213, 4, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(214, 4, 'label_styles_color', '', 'label_styles_color', ''),
(215, 4, 'label_styles_height', '', 'label_styles_height', ''),
(216, 4, 'label_styles_width', '', 'label_styles_width', ''),
(217, 4, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(218, 4, 'label_styles_margin', '', 'label_styles_margin', ''),
(219, 4, 'label_styles_padding', '', 'label_styles_padding', ''),
(220, 4, 'label_styles_display', '', 'label_styles_display', ''),
(221, 4, 'label_styles_float', '', 'label_styles_float', ''),
(222, 4, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(223, 4, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(224, 4, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(225, 4, 'element_styles_border', '', 'element_styles_border', ''),
(226, 4, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(227, 4, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(228, 4, 'element_styles_color', '', 'element_styles_color', ''),
(229, 4, 'element_styles_height', '', 'element_styles_height', ''),
(230, 4, 'element_styles_width', '', 'element_styles_width', ''),
(231, 4, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(232, 4, 'element_styles_margin', '', 'element_styles_margin', ''),
(233, 4, 'element_styles_padding', '', 'element_styles_padding', ''),
(234, 4, 'element_styles_display', '', 'element_styles_display', ''),
(235, 4, 'element_styles_float', '', 'element_styles_float', ''),
(236, 4, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(237, 4, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(238, 4, 'submit_element_hover_styles_background-color', '', 'submit_element_hover_styles_background-color', ''),
(239, 4, 'submit_element_hover_styles_border', '', 'submit_element_hover_styles_border', ''),
(240, 4, 'submit_element_hover_styles_border-style', '', 'submit_element_hover_styles_border-style', ''),
(241, 4, 'submit_element_hover_styles_border-color', '', 'submit_element_hover_styles_border-color', ''),
(242, 4, 'submit_element_hover_styles_color', '', 'submit_element_hover_styles_color', ''),
(243, 4, 'submit_element_hover_styles_height', '', 'submit_element_hover_styles_height', ''),
(244, 4, 'submit_element_hover_styles_width', '', 'submit_element_hover_styles_width', ''),
(245, 4, 'submit_element_hover_styles_font-size', '', 'submit_element_hover_styles_font-size', ''),
(246, 4, 'submit_element_hover_styles_margin', '', 'submit_element_hover_styles_margin', ''),
(247, 4, 'submit_element_hover_styles_padding', '', 'submit_element_hover_styles_padding', ''),
(248, 4, 'submit_element_hover_styles_display', '', 'submit_element_hover_styles_display', ''),
(249, 4, 'submit_element_hover_styles_float', '', 'submit_element_hover_styles_float', ''),
(250, 4, 'submit_element_hover_styles_show_advanced_css', '0', 'submit_element_hover_styles_show_advanced_css', '0'),
(251, 4, 'submit_element_hover_styles_advanced', '', 'submit_element_hover_styles_advanced', ''),
(252, 4, 'cellcid', 'c3287', 'cellcid', 'c3287'),
(253, 1, 'field_label', 'Name', 'field_label', 'Name'),
(254, 1, 'field_key', 'name', 'field_key', 'name'),
(255, 2, 'field_label', 'Email', 'field_label', 'Email'),
(256, 2, 'field_key', 'email', 'field_key', 'email'),
(257, 3, 'field_label', 'Message', 'field_label', 'Message'),
(258, 3, 'field_key', 'message', 'field_key', 'message'),
(259, 4, 'field_label', 'Submit', 'field_label', 'Submit'),
(260, 4, 'field_key', 'submit', 'field_key', 'submit'),
(261, 5, 'label', '', 'label', ''),
(262, 5, 'key', 'navn_1644492768889', 'key', 'navn_1644492768889'),
(263, 5, 'parent_id', '2', 'parent_id', '2'),
(264, 5, 'type', 'textbox', 'type', 'textbox'),
(265, 5, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(266, 5, 'label_pos', 'above', 'label_pos', 'above'),
(267, 5, 'required', '0', 'required', '0'),
(268, 5, 'order', '1', 'order', '1'),
(269, 5, 'placeholder', 'NAVN', 'placeholder', 'NAVN'),
(270, 5, 'default', '', 'default', ''),
(271, 5, 'wrapper_class', '', 'wrapper_class', ''),
(272, 5, 'element_class', 'navn', 'element_class', 'navn'),
(273, 5, 'objectType', 'Field', 'objectType', 'Field'),
(274, 5, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(275, 5, 'editActive', '', 'editActive', ''),
(276, 5, 'container_class', 'navnb', 'container_class', 'navnb'),
(277, 5, 'input_limit', '', 'input_limit', ''),
(278, 5, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(279, 5, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(280, 5, 'manual_key', '', 'manual_key', ''),
(281, 5, 'disable_input', '', 'disable_input', ''),
(282, 5, 'admin_label', '', 'admin_label', ''),
(283, 5, 'help_text', '', 'help_text', ''),
(284, 5, 'desc_text', '', 'desc_text', ''),
(285, 5, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(286, 5, 'mask', '', 'mask', ''),
(287, 5, 'custom_mask', '', 'custom_mask', ''),
(288, 5, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(289, 5, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(290, 5, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(291, 5, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(292, 5, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(293, 5, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(294, 5, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(295, 5, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(296, 5, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(297, 5, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(298, 5, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(299, 5, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(300, 5, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(301, 5, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(302, 5, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(303, 5, 'label_styles_border', '', 'label_styles_border', ''),
(304, 5, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(305, 5, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(306, 5, 'label_styles_color', '', 'label_styles_color', ''),
(307, 5, 'label_styles_height', '', 'label_styles_height', ''),
(308, 5, 'label_styles_width', '', 'label_styles_width', ''),
(309, 5, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(310, 5, 'label_styles_margin', '', 'label_styles_margin', ''),
(311, 5, 'label_styles_padding', '', 'label_styles_padding', ''),
(312, 5, 'label_styles_display', '', 'label_styles_display', ''),
(313, 5, 'label_styles_float', '', 'label_styles_float', ''),
(314, 5, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(315, 5, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(316, 5, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(317, 5, 'element_styles_border', '', 'element_styles_border', ''),
(318, 5, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(319, 5, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(320, 5, 'element_styles_color', '', 'element_styles_color', ''),
(321, 5, 'element_styles_height', '', 'element_styles_height', ''),
(322, 5, 'element_styles_width', '', 'element_styles_width', ''),
(323, 5, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(324, 5, 'element_styles_margin', '', 'element_styles_margin', ''),
(325, 5, 'element_styles_padding', '', 'element_styles_padding', ''),
(326, 5, 'element_styles_display', '', 'element_styles_display', ''),
(327, 5, 'element_styles_float', '', 'element_styles_float', ''),
(328, 5, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(329, 5, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(330, 5, 'cellcid', 'c3277', 'cellcid', 'c3277'),
(331, 6, 'label', '', 'label', ''),
(332, 6, 'key', 'epost_1644492813347', 'key', 'epost_1644492813347'),
(333, 6, 'parent_id', '2', 'parent_id', '2'),
(334, 6, 'type', 'email', 'type', 'email'),
(335, 6, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(336, 6, 'label_pos', 'above', 'label_pos', 'above'),
(337, 6, 'required', '0', 'required', '0'),
(338, 6, 'order', '2', 'order', '2'),
(339, 6, 'placeholder', 'E-POST', 'placeholder', 'E-POST'),
(340, 6, 'default', '', 'default', ''),
(341, 6, 'wrapper_class', '', 'wrapper_class', ''),
(342, 6, 'element_class', '', 'element_class', ''),
(343, 6, 'objectType', 'Field', 'objectType', 'Field'),
(344, 6, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(345, 6, 'editActive', '', 'editActive', ''),
(346, 6, 'container_class', '', 'container_class', ''),
(347, 6, 'admin_label', '', 'admin_label', ''),
(348, 6, 'help_text', '', 'help_text', ''),
(349, 6, 'desc_text', '', 'desc_text', ''),
(350, 6, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(351, 6, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(352, 6, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(353, 6, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(354, 6, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(355, 6, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(356, 6, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(357, 6, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(358, 6, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(359, 6, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(360, 6, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(361, 6, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(362, 6, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(363, 6, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(364, 6, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(365, 6, 'label_styles_border', '', 'label_styles_border', ''),
(366, 6, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(367, 6, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(368, 6, 'label_styles_color', '', 'label_styles_color', ''),
(369, 6, 'label_styles_height', '', 'label_styles_height', ''),
(370, 6, 'label_styles_width', '', 'label_styles_width', ''),
(371, 6, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(372, 6, 'label_styles_margin', '', 'label_styles_margin', ''),
(373, 6, 'label_styles_padding', '', 'label_styles_padding', ''),
(374, 6, 'label_styles_display', '', 'label_styles_display', ''),
(375, 6, 'label_styles_float', '', 'label_styles_float', ''),
(376, 6, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(377, 6, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(378, 6, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(379, 6, 'element_styles_border', '', 'element_styles_border', ''),
(380, 6, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(381, 6, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(382, 6, 'element_styles_color', '', 'element_styles_color', ''),
(383, 6, 'element_styles_height', '', 'element_styles_height', ''),
(384, 6, 'element_styles_width', '', 'element_styles_width', ''),
(385, 6, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(386, 6, 'element_styles_margin', '', 'element_styles_margin', ''),
(387, 6, 'element_styles_padding', '', 'element_styles_padding', ''),
(388, 6, 'element_styles_display', '', 'element_styles_display', ''),
(389, 6, 'element_styles_float', '', 'element_styles_float', ''),
(390, 6, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(391, 6, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(392, 6, 'cellcid', 'c3281', 'cellcid', 'c3281'),
(393, 7, 'label', '', 'label', ''),
(394, 7, 'key', 'message', 'key', 'message'),
(395, 7, 'parent_id', '2', 'parent_id', '2'),
(396, 7, 'type', 'textarea', 'type', 'textarea'),
(397, 7, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(398, 7, 'label_pos', 'above', 'label_pos', 'above'),
(399, 7, 'required', '0', 'required', '0'),
(400, 7, 'order', '3', 'order', '3'),
(401, 7, 'placeholder', 'MELDING', 'placeholder', 'MELDING'),
(402, 7, 'default', '', 'default', ''),
(403, 7, 'wrapper_class', '', 'wrapper_class', ''),
(404, 7, 'element_class', '', 'element_class', ''),
(405, 7, 'objectType', 'Field', 'objectType', 'Field'),
(406, 7, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(407, 7, 'editActive', '', 'editActive', ''),
(408, 7, 'container_class', '', 'container_class', ''),
(409, 7, 'input_limit', '', 'input_limit', ''),
(410, 7, 'input_limit_type', 'characters', 'input_limit_type', 'characters'),
(411, 7, 'input_limit_msg', 'Character(s) left', 'input_limit_msg', 'Character(s) left'),
(412, 7, 'manual_key', '', 'manual_key', ''),
(413, 7, 'disable_input', '', 'disable_input', ''),
(414, 7, 'admin_label', '', 'admin_label', ''),
(415, 7, 'help_text', '', 'help_text', ''),
(416, 7, 'desc_text', '', 'desc_text', ''),
(417, 7, 'disable_browser_autocomplete', '', 'disable_browser_autocomplete', ''),
(418, 7, 'textarea_rte', '', 'textarea_rte', ''),
(419, 7, 'disable_rte_mobile', '', 'disable_rte_mobile', ''),
(420, 7, 'textarea_media', '', 'textarea_media', ''),
(421, 7, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(422, 7, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(423, 7, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(424, 7, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(425, 7, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(426, 7, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(427, 7, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(428, 7, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(429, 7, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(430, 7, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(431, 7, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(432, 7, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(433, 7, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(434, 7, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(435, 7, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(436, 7, 'label_styles_border', '', 'label_styles_border', ''),
(437, 7, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(438, 7, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(439, 7, 'label_styles_color', '', 'label_styles_color', ''),
(440, 7, 'label_styles_height', '', 'label_styles_height', ''),
(441, 7, 'label_styles_width', '', 'label_styles_width', ''),
(442, 7, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(443, 7, 'label_styles_margin', '', 'label_styles_margin', ''),
(444, 7, 'label_styles_padding', '', 'label_styles_padding', ''),
(445, 7, 'label_styles_display', '', 'label_styles_display', ''),
(446, 7, 'label_styles_float', '', 'label_styles_float', ''),
(447, 7, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(448, 7, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(449, 7, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(450, 7, 'element_styles_border', '', 'element_styles_border', ''),
(451, 7, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(452, 7, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(453, 7, 'element_styles_color', '', 'element_styles_color', ''),
(454, 7, 'element_styles_height', '', 'element_styles_height', ''),
(455, 7, 'element_styles_width', '', 'element_styles_width', ''),
(456, 7, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(457, 7, 'element_styles_margin', '', 'element_styles_margin', ''),
(458, 7, 'element_styles_padding', '', 'element_styles_padding', ''),
(459, 7, 'element_styles_display', '', 'element_styles_display', ''),
(460, 7, 'element_styles_float', '', 'element_styles_float', ''),
(461, 7, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(462, 7, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(463, 7, 'cellcid', 'c3284', 'cellcid', 'c3284'),
(464, 8, 'label', 'SEND', 'label', 'SEND'),
(465, 8, 'key', 'send_1644492880294', 'key', 'send_1644492880294'),
(466, 8, 'parent_id', '2', 'parent_id', '2'),
(467, 8, 'type', 'submit', 'type', 'submit'),
(468, 8, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(469, 8, 'processing_label', 'Prosesserer', 'processing_label', 'Prosesserer'),
(470, 8, 'order', '5', 'order', '5'),
(471, 8, 'objectType', 'Field', 'objectType', 'Field'),
(472, 8, 'objectDomain', 'fields', 'objectDomain', 'fields'),
(473, 8, 'editActive', '', 'editActive', ''),
(474, 8, 'container_class', '', 'container_class', ''),
(475, 8, 'element_class', '', 'element_class', ''),
(476, 8, 'wrap_styles_background-color', '', 'wrap_styles_background-color', ''),
(477, 8, 'wrap_styles_border', '', 'wrap_styles_border', ''),
(478, 8, 'wrap_styles_border-style', '', 'wrap_styles_border-style', ''),
(479, 8, 'wrap_styles_border-color', '', 'wrap_styles_border-color', ''),
(480, 8, 'wrap_styles_color', '', 'wrap_styles_color', ''),
(481, 8, 'wrap_styles_height', '', 'wrap_styles_height', ''),
(482, 8, 'wrap_styles_width', '', 'wrap_styles_width', ''),
(483, 8, 'wrap_styles_font-size', '', 'wrap_styles_font-size', ''),
(484, 8, 'wrap_styles_margin', '', 'wrap_styles_margin', ''),
(485, 8, 'wrap_styles_padding', '', 'wrap_styles_padding', ''),
(486, 8, 'wrap_styles_display', '', 'wrap_styles_display', ''),
(487, 8, 'wrap_styles_float', '', 'wrap_styles_float', ''),
(488, 8, 'wrap_styles_show_advanced_css', '0', 'wrap_styles_show_advanced_css', '0'),
(489, 8, 'wrap_styles_advanced', '', 'wrap_styles_advanced', ''),
(490, 8, 'label_styles_background-color', '', 'label_styles_background-color', ''),
(491, 8, 'label_styles_border', '', 'label_styles_border', ''),
(492, 8, 'label_styles_border-style', '', 'label_styles_border-style', ''),
(493, 8, 'label_styles_border-color', '', 'label_styles_border-color', ''),
(494, 8, 'label_styles_color', '', 'label_styles_color', ''),
(495, 8, 'label_styles_height', '', 'label_styles_height', ''),
(496, 8, 'label_styles_width', '', 'label_styles_width', ''),
(497, 8, 'label_styles_font-size', '', 'label_styles_font-size', ''),
(498, 8, 'label_styles_margin', '', 'label_styles_margin', ''),
(499, 8, 'label_styles_padding', '', 'label_styles_padding', ''),
(500, 8, 'label_styles_display', '', 'label_styles_display', ''),
(501, 8, 'label_styles_float', '', 'label_styles_float', ''),
(502, 8, 'label_styles_show_advanced_css', '0', 'label_styles_show_advanced_css', '0'),
(503, 8, 'label_styles_advanced', '', 'label_styles_advanced', ''),
(504, 8, 'element_styles_background-color', '', 'element_styles_background-color', ''),
(505, 8, 'element_styles_border', '', 'element_styles_border', ''),
(506, 8, 'element_styles_border-style', '', 'element_styles_border-style', ''),
(507, 8, 'element_styles_border-color', '', 'element_styles_border-color', ''),
(508, 8, 'element_styles_color', '', 'element_styles_color', ''),
(509, 8, 'element_styles_height', '', 'element_styles_height', ''),
(510, 8, 'element_styles_width', '', 'element_styles_width', ''),
(511, 8, 'element_styles_font-size', '', 'element_styles_font-size', ''),
(512, 8, 'element_styles_margin', '', 'element_styles_margin', ''),
(513, 8, 'element_styles_padding', '', 'element_styles_padding', ''),
(514, 8, 'element_styles_display', '', 'element_styles_display', ''),
(515, 8, 'element_styles_float', '', 'element_styles_float', ''),
(516, 8, 'element_styles_show_advanced_css', '0', 'element_styles_show_advanced_css', '0'),
(517, 8, 'element_styles_advanced', '', 'element_styles_advanced', ''),
(518, 8, 'submit_element_hover_styles_background-color', '', 'submit_element_hover_styles_background-color', ''),
(519, 8, 'submit_element_hover_styles_border', '', 'submit_element_hover_styles_border', ''),
(520, 8, 'submit_element_hover_styles_border-style', '', 'submit_element_hover_styles_border-style', ''),
(521, 8, 'submit_element_hover_styles_border-color', '', 'submit_element_hover_styles_border-color', ''),
(522, 8, 'submit_element_hover_styles_color', '', 'submit_element_hover_styles_color', ''),
(523, 8, 'submit_element_hover_styles_height', '', 'submit_element_hover_styles_height', ''),
(524, 8, 'submit_element_hover_styles_width', '', 'submit_element_hover_styles_width', ''),
(525, 8, 'submit_element_hover_styles_font-size', '', 'submit_element_hover_styles_font-size', ''),
(526, 8, 'submit_element_hover_styles_margin', '', 'submit_element_hover_styles_margin', ''),
(527, 8, 'submit_element_hover_styles_padding', '', 'submit_element_hover_styles_padding', ''),
(528, 8, 'submit_element_hover_styles_display', '', 'submit_element_hover_styles_display', ''),
(529, 8, 'submit_element_hover_styles_float', '', 'submit_element_hover_styles_float', ''),
(530, 8, 'submit_element_hover_styles_show_advanced_css', '0', 'submit_element_hover_styles_show_advanced_css', '0'),
(531, 8, 'submit_element_hover_styles_advanced', '', 'submit_element_hover_styles_advanced', ''),
(532, 8, 'cellcid', 'c3287', 'cellcid', 'c3287'),
(533, 5, 'idAttribute', 'id', 'idAttribute', 'id'),
(534, 5, 'field_label', 'Name', 'field_label', 'Name'),
(535, 5, 'field_key', 'name', 'field_key', 'name'),
(536, 5, 'custom_name_attribute', '', 'custom_name_attribute', ''),
(537, 5, 'personally_identifiable', '', 'personally_identifiable', ''),
(538, 5, 'value', '', 'value', ''),
(539, 5, 'drawerDisabled', '', 'drawerDisabled', ''),
(540, 6, 'idAttribute', 'id', 'idAttribute', 'id'),
(541, 6, 'field_label', 'Email', 'field_label', 'Email'),
(542, 6, 'field_key', 'email', 'field_key', 'email'),
(543, 6, 'custom_name_attribute', 'email', 'custom_name_attribute', 'email'),
(544, 6, 'personally_identifiable', '1', 'personally_identifiable', '1'),
(545, 6, 'value', '', 'value', ''),
(546, 6, 'drawerDisabled', '', 'drawerDisabled', ''),
(547, 7, 'idAttribute', 'id', 'idAttribute', 'id'),
(548, 7, 'field_label', 'Message', 'field_label', 'Message'),
(549, 7, 'field_key', 'message', 'field_key', 'message'),
(550, 7, 'value', '', 'value', ''),
(551, 7, 'drawerDisabled', '', 'drawerDisabled', ''),
(552, 8, 'idAttribute', 'id', 'idAttribute', 'id'),
(553, 8, 'field_label', 'Submit', 'field_label', 'Submit'),
(554, 8, 'field_key', 'submit', 'field_key', 'submit'),
(555, 8, 'drawerDisabled', '', 'drawerDisabled', '');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_nf3_forms`
--

CREATE TABLE `wp_nf3_forms` (
  `id` int(11) NOT NULL,
  `title` longtext DEFAULT NULL,
  `key` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `subs` int(11) DEFAULT NULL,
  `form_title` longtext DEFAULT NULL,
  `default_label_pos` varchar(15) DEFAULT NULL,
  `show_title` bit(1) DEFAULT NULL,
  `clear_complete` bit(1) DEFAULT NULL,
  `hide_complete` bit(1) DEFAULT NULL,
  `logged_in` bit(1) DEFAULT NULL,
  `seq_num` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dataark for tabell `wp_nf3_forms`
--

INSERT INTO `wp_nf3_forms` (`id`, `title`, `key`, `created_at`, `updated_at`, `views`, `subs`, `form_title`, `default_label_pos`, `show_title`, `clear_complete`, `hide_complete`, `logged_in`, `seq_num`) VALUES
(1, 'Contact Me', NULL, '2022-02-10 11:31:40', '2022-02-10 12:31:40', NULL, NULL, 'Contact Me', 'above', b'1', b'1', b'1', b'0', NULL),
(2, 'kontaktskjema', NULL, '2016-08-24 14:39:20', NULL, NULL, NULL, 'kontaktskjema', 'above', b'0', b'1', b'1', b'0', 4);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_nf3_form_meta`
--

CREATE TABLE `wp_nf3_form_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext DEFAULT NULL,
  `meta_key` longtext DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dataark for tabell `wp_nf3_form_meta`
--

INSERT INTO `wp_nf3_form_meta` (`id`, `parent_id`, `key`, `value`, `meta_key`, `meta_value`) VALUES
(1, 1, 'key', '', 'key', ''),
(2, 1, 'created_at', '2022-02-10 12:31:40', 'created_at', '2022-02-10 12:31:40'),
(3, 1, 'default_label_pos', 'above', 'default_label_pos', 'above'),
(4, 1, 'conditions', 'a:0:{}', 'conditions', 'a:0:{}'),
(5, 1, 'objectType', 'Form Setting', 'objectType', 'Form Setting'),
(6, 1, 'editActive', '', 'editActive', ''),
(7, 1, 'show_title', '1', 'show_title', '1'),
(8, 1, 'clear_complete', '1', 'clear_complete', '1'),
(9, 1, 'hide_complete', '1', 'hide_complete', '1'),
(10, 1, 'wrapper_class', '', 'wrapper_class', ''),
(11, 1, 'element_class', '', 'element_class', ''),
(12, 1, 'add_submit', '1', 'add_submit', '1'),
(13, 1, 'logged_in', '', 'logged_in', ''),
(14, 1, 'not_logged_in_msg', '', 'not_logged_in_msg', ''),
(15, 1, 'sub_limit_number', '', 'sub_limit_number', ''),
(16, 1, 'sub_limit_msg', '', 'sub_limit_msg', ''),
(17, 1, 'calculations', 'a:0:{}', 'calculations', 'a:0:{}'),
(18, 1, 'formContentData', 'a:4:{i:0;a:2:{s:5:\"order\";s:1:\"0\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}s:5:\"width\";s:3:\"100\";}}}i:1;a:2:{s:5:\"order\";s:1:\"1\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:5:\"email\";}s:5:\"width\";s:3:\"100\";}}}i:2;a:2:{s:5:\"order\";s:1:\"2\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:7:\"message\";}s:5:\"width\";s:3:\"100\";}}}i:3;a:2:{s:5:\"order\";s:1:\"3\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:6:\"submit\";}s:5:\"width\";s:3:\"100\";}}}}', 'formContentData', 'a:4:{i:0;a:2:{s:5:\"order\";s:1:\"0\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}s:5:\"width\";s:3:\"100\";}}}i:1;a:2:{s:5:\"order\";s:1:\"1\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:5:\"email\";}s:5:\"width\";s:3:\"100\";}}}i:2;a:2:{s:5:\"order\";s:1:\"2\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:7:\"message\";}s:5:\"width\";s:3:\"100\";}}}i:3;a:2:{s:5:\"order\";s:1:\"3\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:6:\"submit\";}s:5:\"width\";s:3:\"100\";}}}}'),
(19, 1, 'container_styles_background-color', '', 'container_styles_background-color', ''),
(20, 1, 'container_styles_border', '', 'container_styles_border', ''),
(21, 1, 'container_styles_border-style', '', 'container_styles_border-style', ''),
(22, 1, 'container_styles_border-color', '', 'container_styles_border-color', ''),
(23, 1, 'container_styles_color', '', 'container_styles_color', ''),
(24, 1, 'container_styles_height', '', 'container_styles_height', ''),
(25, 1, 'container_styles_width', '', 'container_styles_width', ''),
(26, 1, 'container_styles_font-size', '', 'container_styles_font-size', ''),
(27, 1, 'container_styles_margin', '', 'container_styles_margin', ''),
(28, 1, 'container_styles_padding', '', 'container_styles_padding', ''),
(29, 1, 'container_styles_display', '', 'container_styles_display', ''),
(30, 1, 'container_styles_float', '', 'container_styles_float', ''),
(31, 1, 'container_styles_show_advanced_css', '0', 'container_styles_show_advanced_css', '0'),
(32, 1, 'container_styles_advanced', '', 'container_styles_advanced', ''),
(33, 1, 'title_styles_background-color', '', 'title_styles_background-color', ''),
(34, 1, 'title_styles_border', '', 'title_styles_border', ''),
(35, 1, 'title_styles_border-style', '', 'title_styles_border-style', ''),
(36, 1, 'title_styles_border-color', '', 'title_styles_border-color', ''),
(37, 1, 'title_styles_color', '', 'title_styles_color', ''),
(38, 1, 'title_styles_height', '', 'title_styles_height', ''),
(39, 1, 'title_styles_width', '', 'title_styles_width', ''),
(40, 1, 'title_styles_font-size', '', 'title_styles_font-size', ''),
(41, 1, 'title_styles_margin', '', 'title_styles_margin', ''),
(42, 1, 'title_styles_padding', '', 'title_styles_padding', ''),
(43, 1, 'title_styles_display', '', 'title_styles_display', ''),
(44, 1, 'title_styles_float', '', 'title_styles_float', ''),
(45, 1, 'title_styles_show_advanced_css', '0', 'title_styles_show_advanced_css', '0'),
(46, 1, 'title_styles_advanced', '', 'title_styles_advanced', ''),
(47, 1, 'row_styles_background-color', '', 'row_styles_background-color', ''),
(48, 1, 'row_styles_border', '', 'row_styles_border', ''),
(49, 1, 'row_styles_border-style', '', 'row_styles_border-style', ''),
(50, 1, 'row_styles_border-color', '', 'row_styles_border-color', ''),
(51, 1, 'row_styles_color', '', 'row_styles_color', ''),
(52, 1, 'row_styles_height', '', 'row_styles_height', ''),
(53, 1, 'row_styles_width', '', 'row_styles_width', ''),
(54, 1, 'row_styles_font-size', '', 'row_styles_font-size', ''),
(55, 1, 'row_styles_margin', '', 'row_styles_margin', ''),
(56, 1, 'row_styles_padding', '', 'row_styles_padding', ''),
(57, 1, 'row_styles_display', '', 'row_styles_display', ''),
(58, 1, 'row_styles_show_advanced_css', '0', 'row_styles_show_advanced_css', '0'),
(59, 1, 'row_styles_advanced', '', 'row_styles_advanced', ''),
(60, 1, 'row-odd_styles_background-color', '', 'row-odd_styles_background-color', ''),
(61, 1, 'row-odd_styles_border', '', 'row-odd_styles_border', ''),
(62, 1, 'row-odd_styles_border-style', '', 'row-odd_styles_border-style', ''),
(63, 1, 'row-odd_styles_border-color', '', 'row-odd_styles_border-color', ''),
(64, 1, 'row-odd_styles_color', '', 'row-odd_styles_color', ''),
(65, 1, 'row-odd_styles_height', '', 'row-odd_styles_height', ''),
(66, 1, 'row-odd_styles_width', '', 'row-odd_styles_width', ''),
(67, 1, 'row-odd_styles_font-size', '', 'row-odd_styles_font-size', ''),
(68, 1, 'row-odd_styles_margin', '', 'row-odd_styles_margin', ''),
(69, 1, 'row-odd_styles_padding', '', 'row-odd_styles_padding', ''),
(70, 1, 'row-odd_styles_display', '', 'row-odd_styles_display', ''),
(71, 1, 'row-odd_styles_show_advanced_css', '0', 'row-odd_styles_show_advanced_css', '0'),
(72, 1, 'row-odd_styles_advanced', '', 'row-odd_styles_advanced', ''),
(73, 1, 'success-msg_styles_background-color', '', 'success-msg_styles_background-color', ''),
(74, 1, 'success-msg_styles_border', '', 'success-msg_styles_border', ''),
(75, 1, 'success-msg_styles_border-style', '', 'success-msg_styles_border-style', ''),
(76, 1, 'success-msg_styles_border-color', '', 'success-msg_styles_border-color', ''),
(77, 1, 'success-msg_styles_color', '', 'success-msg_styles_color', ''),
(78, 1, 'success-msg_styles_height', '', 'success-msg_styles_height', ''),
(79, 1, 'success-msg_styles_width', '', 'success-msg_styles_width', ''),
(80, 1, 'success-msg_styles_font-size', '', 'success-msg_styles_font-size', ''),
(81, 1, 'success-msg_styles_margin', '', 'success-msg_styles_margin', ''),
(82, 1, 'success-msg_styles_padding', '', 'success-msg_styles_padding', ''),
(83, 1, 'success-msg_styles_display', '', 'success-msg_styles_display', ''),
(84, 1, 'success-msg_styles_show_advanced_css', '0', 'success-msg_styles_show_advanced_css', '0'),
(85, 1, 'success-msg_styles_advanced', '', 'success-msg_styles_advanced', ''),
(86, 1, 'error_msg_styles_background-color', '', 'error_msg_styles_background-color', ''),
(87, 1, 'error_msg_styles_border', '', 'error_msg_styles_border', ''),
(88, 1, 'error_msg_styles_border-style', '', 'error_msg_styles_border-style', ''),
(89, 1, 'error_msg_styles_border-color', '', 'error_msg_styles_border-color', ''),
(90, 1, 'error_msg_styles_color', '', 'error_msg_styles_color', ''),
(91, 1, 'error_msg_styles_height', '', 'error_msg_styles_height', ''),
(92, 1, 'error_msg_styles_width', '', 'error_msg_styles_width', ''),
(93, 1, 'error_msg_styles_font-size', '', 'error_msg_styles_font-size', ''),
(94, 1, 'error_msg_styles_margin', '', 'error_msg_styles_margin', ''),
(95, 1, 'error_msg_styles_padding', '', 'error_msg_styles_padding', ''),
(96, 1, 'error_msg_styles_display', '', 'error_msg_styles_display', ''),
(97, 1, 'error_msg_styles_show_advanced_css', '0', 'error_msg_styles_show_advanced_css', '0'),
(98, 1, 'error_msg_styles_advanced', '', 'error_msg_styles_advanced', ''),
(99, 2, 'title', 'Contact Me', 'title', 'Contact Me'),
(100, 2, 'key', '', 'key', ''),
(101, 2, 'created_at', '2016-08-24 16:39:20', 'created_at', '2016-08-24 16:39:20'),
(102, 2, 'default_label_pos', 'above', 'default_label_pos', 'above'),
(103, 2, 'conditions', 'a:0:{}', 'conditions', 'a:0:{}'),
(104, 2, 'objectType', 'Form Setting', 'objectType', 'Form Setting'),
(105, 2, 'editActive', '1', 'editActive', '1'),
(106, 2, 'show_title', '0', 'show_title', '0'),
(107, 2, 'clear_complete', '1', 'clear_complete', '1'),
(108, 2, 'hide_complete', '1', 'hide_complete', '1'),
(109, 2, 'wrapper_class', '', 'wrapper_class', ''),
(110, 2, 'element_class', '', 'element_class', ''),
(111, 2, 'add_submit', '1', 'add_submit', '1'),
(112, 2, 'logged_in', '0', 'logged_in', '0'),
(113, 2, 'not_logged_in_msg', '', 'not_logged_in_msg', ''),
(114, 2, 'sub_limit_number', '', 'sub_limit_number', ''),
(115, 2, 'sub_limit_msg', '', 'sub_limit_msg', ''),
(116, 2, 'calculations', 'a:0:{}', 'calculations', 'a:0:{}'),
(117, 2, 'formContentData', 'a:4:{i:0;s:18:\"navn_1644492768889\";i:1;s:19:\"epost_1644492813347\";i:2;s:7:\"message\";i:3;s:18:\"send_1644492880294\";}', 'formContentData', 'a:4:{i:0;s:18:\"navn_1644492768889\";i:1;s:19:\"epost_1644492813347\";i:2;s:7:\"message\";i:3;s:18:\"send_1644492880294\";}'),
(118, 2, 'container_styles_background-color', '', 'container_styles_background-color', ''),
(119, 2, 'container_styles_border', '', 'container_styles_border', ''),
(120, 2, 'container_styles_border-style', '', 'container_styles_border-style', ''),
(121, 2, 'container_styles_border-color', '', 'container_styles_border-color', ''),
(122, 2, 'container_styles_color', '', 'container_styles_color', ''),
(123, 2, 'container_styles_height', '', 'container_styles_height', ''),
(124, 2, 'container_styles_width', '', 'container_styles_width', ''),
(125, 2, 'container_styles_font-size', '', 'container_styles_font-size', ''),
(126, 2, 'container_styles_margin', '', 'container_styles_margin', ''),
(127, 2, 'container_styles_padding', '', 'container_styles_padding', ''),
(128, 2, 'container_styles_display', '', 'container_styles_display', ''),
(129, 2, 'container_styles_float', '', 'container_styles_float', ''),
(130, 2, 'container_styles_show_advanced_css', '0', 'container_styles_show_advanced_css', '0'),
(131, 2, 'container_styles_advanced', '', 'container_styles_advanced', ''),
(132, 2, 'title_styles_background-color', '', 'title_styles_background-color', ''),
(133, 2, 'title_styles_border', '', 'title_styles_border', ''),
(134, 2, 'title_styles_border-style', '', 'title_styles_border-style', ''),
(135, 2, 'title_styles_border-color', '', 'title_styles_border-color', ''),
(136, 2, 'title_styles_color', '', 'title_styles_color', ''),
(137, 2, 'title_styles_height', '', 'title_styles_height', ''),
(138, 2, 'title_styles_width', '', 'title_styles_width', ''),
(139, 2, 'title_styles_font-size', '', 'title_styles_font-size', ''),
(140, 2, 'title_styles_margin', '', 'title_styles_margin', ''),
(141, 2, 'title_styles_padding', '', 'title_styles_padding', ''),
(142, 2, 'title_styles_display', '', 'title_styles_display', ''),
(143, 2, 'title_styles_float', '', 'title_styles_float', ''),
(144, 2, 'title_styles_show_advanced_css', '0', 'title_styles_show_advanced_css', '0'),
(145, 2, 'title_styles_advanced', '', 'title_styles_advanced', ''),
(146, 2, 'row_styles_background-color', '', 'row_styles_background-color', ''),
(147, 2, 'row_styles_border', '', 'row_styles_border', ''),
(148, 2, 'row_styles_border-style', '', 'row_styles_border-style', ''),
(149, 2, 'row_styles_border-color', '', 'row_styles_border-color', ''),
(150, 2, 'row_styles_color', '', 'row_styles_color', ''),
(151, 2, 'row_styles_height', '', 'row_styles_height', ''),
(152, 2, 'row_styles_width', '', 'row_styles_width', ''),
(153, 2, 'row_styles_font-size', '', 'row_styles_font-size', ''),
(154, 2, 'row_styles_margin', '', 'row_styles_margin', ''),
(155, 2, 'row_styles_padding', '', 'row_styles_padding', ''),
(156, 2, 'row_styles_display', '', 'row_styles_display', ''),
(157, 2, 'row_styles_show_advanced_css', '0', 'row_styles_show_advanced_css', '0'),
(158, 2, 'row_styles_advanced', '', 'row_styles_advanced', ''),
(159, 2, 'row-odd_styles_background-color', '', 'row-odd_styles_background-color', ''),
(160, 2, 'row-odd_styles_border', '', 'row-odd_styles_border', ''),
(161, 2, 'row-odd_styles_border-style', '', 'row-odd_styles_border-style', ''),
(162, 2, 'row-odd_styles_border-color', '', 'row-odd_styles_border-color', ''),
(163, 2, 'row-odd_styles_color', '', 'row-odd_styles_color', ''),
(164, 2, 'row-odd_styles_height', '', 'row-odd_styles_height', ''),
(165, 2, 'row-odd_styles_width', '', 'row-odd_styles_width', ''),
(166, 2, 'row-odd_styles_font-size', '', 'row-odd_styles_font-size', ''),
(167, 2, 'row-odd_styles_margin', '', 'row-odd_styles_margin', ''),
(168, 2, 'row-odd_styles_padding', '', 'row-odd_styles_padding', ''),
(169, 2, 'row-odd_styles_display', '', 'row-odd_styles_display', ''),
(170, 2, 'row-odd_styles_show_advanced_css', '0', 'row-odd_styles_show_advanced_css', '0'),
(171, 2, 'row-odd_styles_advanced', '', 'row-odd_styles_advanced', ''),
(172, 2, 'success-msg_styles_background-color', '', 'success-msg_styles_background-color', ''),
(173, 2, 'success-msg_styles_border', '', 'success-msg_styles_border', ''),
(174, 2, 'success-msg_styles_border-style', '', 'success-msg_styles_border-style', ''),
(175, 2, 'success-msg_styles_border-color', '', 'success-msg_styles_border-color', ''),
(176, 2, 'success-msg_styles_color', '', 'success-msg_styles_color', ''),
(177, 2, 'success-msg_styles_height', '', 'success-msg_styles_height', ''),
(178, 2, 'success-msg_styles_width', '', 'success-msg_styles_width', ''),
(179, 2, 'success-msg_styles_font-size', '', 'success-msg_styles_font-size', ''),
(180, 2, 'success-msg_styles_margin', '', 'success-msg_styles_margin', ''),
(181, 2, 'success-msg_styles_padding', '', 'success-msg_styles_padding', ''),
(182, 2, 'success-msg_styles_display', '', 'success-msg_styles_display', ''),
(183, 2, 'success-msg_styles_show_advanced_css', '0', 'success-msg_styles_show_advanced_css', '0'),
(184, 2, 'success-msg_styles_advanced', '', 'success-msg_styles_advanced', ''),
(185, 2, 'error_msg_styles_background-color', '', 'error_msg_styles_background-color', ''),
(186, 2, 'error_msg_styles_border', '', 'error_msg_styles_border', ''),
(187, 2, 'error_msg_styles_border-style', '', 'error_msg_styles_border-style', ''),
(188, 2, 'error_msg_styles_border-color', '', 'error_msg_styles_border-color', ''),
(189, 2, 'error_msg_styles_color', '', 'error_msg_styles_color', ''),
(190, 2, 'error_msg_styles_height', '', 'error_msg_styles_height', ''),
(191, 2, 'error_msg_styles_width', '', 'error_msg_styles_width', ''),
(192, 2, 'error_msg_styles_font-size', '', 'error_msg_styles_font-size', ''),
(193, 2, 'error_msg_styles_margin', '', 'error_msg_styles_margin', ''),
(194, 2, 'error_msg_styles_padding', '', 'error_msg_styles_padding', ''),
(195, 2, 'error_msg_styles_display', '', 'error_msg_styles_display', ''),
(196, 2, 'error_msg_styles_show_advanced_css', '0', 'error_msg_styles_show_advanced_css', '0'),
(197, 2, 'error_msg_styles_advanced', '', 'error_msg_styles_advanced', ''),
(198, 2, 'seq_num', NULL, 'seq_num', NULL),
(199, 2, 'allow_public_link', '0', 'allow_public_link', '0'),
(200, 2, 'embed_form', '', 'embed_form', ''),
(201, 2, 'changeEmailErrorMsg', '', 'changeEmailErrorMsg', ''),
(202, 2, 'changeDateErrorMsg', '', 'changeDateErrorMsg', ''),
(203, 2, 'confirmFieldErrorMsg', '', 'confirmFieldErrorMsg', ''),
(204, 2, 'fieldNumberNumMinError', '', 'fieldNumberNumMinError', ''),
(205, 2, 'fieldNumberNumMaxError', '', 'fieldNumberNumMaxError', ''),
(206, 2, 'fieldNumberIncrementBy', '', 'fieldNumberIncrementBy', ''),
(207, 2, 'formErrorsCorrectErrors', '', 'formErrorsCorrectErrors', ''),
(208, 2, 'validateRequiredField', '', 'validateRequiredField', ''),
(209, 2, 'honeypotHoneypotError', '', 'honeypotHoneypotError', ''),
(210, 2, 'fieldsMarkedRequired', '', 'fieldsMarkedRequired', ''),
(211, 2, 'currency', '', 'currency', ''),
(212, 2, 'repeatable_fieldsets', '', 'repeatable_fieldsets', ''),
(213, 2, 'unique_field_error', 'A form with this value has already been submitted.', 'unique_field_error', 'A form with this value has already been submitted.'),
(214, 2, 'drawerDisabled', '', 'drawerDisabled', ''),
(215, 2, '_seq_num', '4', '_seq_num', '4');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_nf3_objects`
--

CREATE TABLE `wp_nf3_objects` (
  `id` int(11) NOT NULL,
  `type` longtext DEFAULT NULL,
  `title` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `object_title` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_nf3_object_meta`
--

CREATE TABLE `wp_nf3_object_meta` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `key` longtext NOT NULL,
  `value` longtext DEFAULT NULL,
  `meta_key` longtext DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_nf3_relationships`
--

CREATE TABLE `wp_nf3_relationships` (
  `id` int(11) NOT NULL,
  `child_id` int(11) NOT NULL,
  `child_type` longtext NOT NULL,
  `parent_id` int(11) NOT NULL,
  `parent_type` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_nf3_upgrades`
--

CREATE TABLE `wp_nf3_upgrades` (
  `id` int(11) NOT NULL,
  `cache` longtext DEFAULT NULL,
  `stage` int(11) NOT NULL DEFAULT 0,
  `maintenance` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dataark for tabell `wp_nf3_upgrades`
--

INSERT INTO `wp_nf3_upgrades` (`id`, `cache`, `stage`, `maintenance`) VALUES
(1, 'a:4:{s:2:\"id\";i:1;s:6:\"fields\";a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:70:{s:5:\"label\";s:4:\"Name\";s:3:\"key\";s:4:\"name\";s:9:\"parent_id\";i:1;s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2022-02-10 12:31:40\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"1\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:62:{s:5:\"label\";s:5:\"Email\";s:3:\"key\";s:5:\"email\";s:9:\"parent_id\";i:1;s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2022-02-10 12:31:40\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"2\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:71:{s:5:\"label\";s:7:\"Message\";s:3:\"key\";s:7:\"message\";s:9:\"parent_id\";i:1;s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2022-02-10 12:31:41\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";s:1:\"1\";s:5:\"order\";s:1:\"3\";s:11:\"placeholder\";s:0:\"\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:69:{s:5:\"label\";s:6:\"Submit\";s:3:\"key\";s:6:\"submit\";s:9:\"parent_id\";i:1;s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2022-02-10 12:31:41\";s:16:\"processing_label\";s:10:\"Processing\";s:5:\"order\";s:1:\"5\";s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";}}}s:7:\"actions\";a:4:{i:0;a:2:{s:2:\"id\";i:1;s:8:\"settings\";a:25:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2022-02-10 12:31:41\";s:5:\"label\";s:17:\"Record Submission\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:0:\"\";s:13:\"email_subject\";s:0:\"\";s:13:\"email_message\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}}i:1;a:2:{s:2:\"id\";i:2;s:8:\"settings\";a:26:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2022-02-10 12:31:41\";s:5:\"label\";s:18:\"Email Confirmation\";s:2:\"to\";s:13:\"{field:email}\";s:7:\"subject\";s:24:\"This is an email action.\";s:7:\"message\";s:19:\"Hello, Ninja Forms!\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:13:\"email_subject\";s:24:\"Submission Confirmation \";s:13:\"email_message\";s:29:\"<p>{all_fields_table}<br></p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}}i:2;a:2:{s:2:\"id\";i:3;s:8:\"settings\";a:24:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2022-02-10 12:31:41\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:5:\"label\";s:18:\"Email Notification\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:20:\"{system:admin_email}\";s:13:\"email_subject\";s:29:\"New message from {field:name}\";s:13:\"email_message\";s:60:\"<p>{field:message}</p><p>-{field:name} ( {field:email} )</p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:13:\"{field:email}\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:1:\"0\";s:19:\"email_message_plain\";s:0:\"\";}}i:3;a:2:{s:2:\"id\";i:4;s:8:\"settings\";a:27:{s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2022-02-10 12:31:41\";s:5:\"label\";s:15:\"Success Message\";s:7:\"message\";s:47:\"Thank you {field:name} for filling out my form!\";s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";s:0:\"\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:0:\"\";s:13:\"email_subject\";s:0:\"\";s:13:\"email_message\";s:0:\"\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:11:\"success_msg\";s:89:\"<p>Form submitted successfully.</p><p>A confirmation email was sent to {field:email}.</p>\";s:19:\"email_message_plain\";s:0:\"\";}}}s:8:\"settings\";a:99:{s:5:\"title\";s:10:\"Contact Me\";s:3:\"key\";s:0:\"\";s:10:\"created_at\";s:19:\"2022-02-10 12:31:40\";s:17:\"default_label_pos\";s:5:\"above\";s:10:\"conditions\";a:0:{}s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"clear_complete\";s:1:\"1\";s:13:\"hide_complete\";s:1:\"1\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"add_submit\";s:1:\"1\";s:9:\"logged_in\";s:0:\"\";s:17:\"not_logged_in_msg\";s:0:\"\";s:16:\"sub_limit_number\";s:0:\"\";s:13:\"sub_limit_msg\";s:0:\"\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:4:{i:0;a:2:{s:5:\"order\";s:1:\"0\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:4:\"name\";}s:5:\"width\";s:3:\"100\";}}}i:1;a:2:{s:5:\"order\";s:1:\"1\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:5:\"email\";}s:5:\"width\";s:3:\"100\";}}}i:2;a:2:{s:5:\"order\";s:1:\"2\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:7:\"message\";}s:5:\"width\";s:3:\"100\";}}}i:3;a:2:{s:5:\"order\";s:1:\"3\";s:5:\"cells\";a:1:{i:0;a:3:{s:5:\"order\";s:1:\"0\";s:6:\"fields\";a:1:{i:0;s:6:\"submit\";}s:5:\"width\";s:3:\"100\";}}}}s:33:\"container_styles_background-color\";s:0:\"\";s:23:\"container_styles_border\";s:0:\"\";s:29:\"container_styles_border-style\";s:0:\"\";s:29:\"container_styles_border-color\";s:0:\"\";s:22:\"container_styles_color\";s:0:\"\";s:23:\"container_styles_height\";s:0:\"\";s:22:\"container_styles_width\";s:0:\"\";s:26:\"container_styles_font-size\";s:0:\"\";s:23:\"container_styles_margin\";s:0:\"\";s:24:\"container_styles_padding\";s:0:\"\";s:24:\"container_styles_display\";s:0:\"\";s:22:\"container_styles_float\";s:0:\"\";s:34:\"container_styles_show_advanced_css\";s:1:\"0\";s:25:\"container_styles_advanced\";s:0:\"\";s:29:\"title_styles_background-color\";s:0:\"\";s:19:\"title_styles_border\";s:0:\"\";s:25:\"title_styles_border-style\";s:0:\"\";s:25:\"title_styles_border-color\";s:0:\"\";s:18:\"title_styles_color\";s:0:\"\";s:19:\"title_styles_height\";s:0:\"\";s:18:\"title_styles_width\";s:0:\"\";s:22:\"title_styles_font-size\";s:0:\"\";s:19:\"title_styles_margin\";s:0:\"\";s:20:\"title_styles_padding\";s:0:\"\";s:20:\"title_styles_display\";s:0:\"\";s:18:\"title_styles_float\";s:0:\"\";s:30:\"title_styles_show_advanced_css\";s:1:\"0\";s:21:\"title_styles_advanced\";s:0:\"\";s:27:\"row_styles_background-color\";s:0:\"\";s:17:\"row_styles_border\";s:0:\"\";s:23:\"row_styles_border-style\";s:0:\"\";s:23:\"row_styles_border-color\";s:0:\"\";s:16:\"row_styles_color\";s:0:\"\";s:17:\"row_styles_height\";s:0:\"\";s:16:\"row_styles_width\";s:0:\"\";s:20:\"row_styles_font-size\";s:0:\"\";s:17:\"row_styles_margin\";s:0:\"\";s:18:\"row_styles_padding\";s:0:\"\";s:18:\"row_styles_display\";s:0:\"\";s:28:\"row_styles_show_advanced_css\";s:1:\"0\";s:19:\"row_styles_advanced\";s:0:\"\";s:31:\"row-odd_styles_background-color\";s:0:\"\";s:21:\"row-odd_styles_border\";s:0:\"\";s:27:\"row-odd_styles_border-style\";s:0:\"\";s:27:\"row-odd_styles_border-color\";s:0:\"\";s:20:\"row-odd_styles_color\";s:0:\"\";s:21:\"row-odd_styles_height\";s:0:\"\";s:20:\"row-odd_styles_width\";s:0:\"\";s:24:\"row-odd_styles_font-size\";s:0:\"\";s:21:\"row-odd_styles_margin\";s:0:\"\";s:22:\"row-odd_styles_padding\";s:0:\"\";s:22:\"row-odd_styles_display\";s:0:\"\";s:32:\"row-odd_styles_show_advanced_css\";s:1:\"0\";s:23:\"row-odd_styles_advanced\";s:0:\"\";s:35:\"success-msg_styles_background-color\";s:0:\"\";s:25:\"success-msg_styles_border\";s:0:\"\";s:31:\"success-msg_styles_border-style\";s:0:\"\";s:31:\"success-msg_styles_border-color\";s:0:\"\";s:24:\"success-msg_styles_color\";s:0:\"\";s:25:\"success-msg_styles_height\";s:0:\"\";s:24:\"success-msg_styles_width\";s:0:\"\";s:28:\"success-msg_styles_font-size\";s:0:\"\";s:25:\"success-msg_styles_margin\";s:0:\"\";s:26:\"success-msg_styles_padding\";s:0:\"\";s:26:\"success-msg_styles_display\";s:0:\"\";s:36:\"success-msg_styles_show_advanced_css\";s:1:\"0\";s:27:\"success-msg_styles_advanced\";s:0:\"\";s:33:\"error_msg_styles_background-color\";s:0:\"\";s:23:\"error_msg_styles_border\";s:0:\"\";s:29:\"error_msg_styles_border-style\";s:0:\"\";s:29:\"error_msg_styles_border-color\";s:0:\"\";s:22:\"error_msg_styles_color\";s:0:\"\";s:23:\"error_msg_styles_height\";s:0:\"\";s:22:\"error_msg_styles_width\";s:0:\"\";s:26:\"error_msg_styles_font-size\";s:0:\"\";s:23:\"error_msg_styles_margin\";s:0:\"\";s:24:\"error_msg_styles_padding\";s:0:\"\";s:24:\"error_msg_styles_display\";s:0:\"\";s:34:\"error_msg_styles_show_advanced_css\";s:1:\"0\";s:25:\"error_msg_styles_advanced\";s:0:\"\";}}', 4, b'0'),
(2, 'a:7:{s:2:\"id\";i:2;s:20:\"show_publish_options\";b:0;s:6:\"fields\";a:4:{i:0;a:2:{s:8:\"settings\";a:76:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"1\";s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:0:\"\";s:3:\"key\";s:18:\"navn_1644492768889\";s:4:\"type\";s:7:\"textbox\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";i:0;s:11:\"placeholder\";s:4:\"NAVN\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:4:\"navn\";s:15:\"container_class\";s:5:\"navnb\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:4:\"mask\";s:0:\"\";s:11:\"custom_mask\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3277\";s:11:\"field_label\";s:4:\"Name\";s:9:\"field_key\";s:4:\"name\";s:21:\"custom_name_attribute\";s:0:\"\";s:23:\"personally_identifiable\";s:0:\"\";s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:5;}i:1;a:2:{s:8:\"settings\";a:68:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"2\";s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:0:\"\";s:3:\"key\";s:19:\"epost_1644492813347\";s:4:\"type\";s:5:\"email\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";i:0;s:11:\"placeholder\";s:6:\"E-POST\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3281\";s:11:\"field_label\";s:5:\"Email\";s:9:\"field_key\";s:5:\"email\";s:21:\"custom_name_attribute\";s:5:\"email\";s:23:\"personally_identifiable\";s:1:\"1\";s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:6;}i:2;a:2:{s:8:\"settings\";a:75:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"3\";s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:0:\"\";s:3:\"key\";s:7:\"message\";s:4:\"type\";s:8:\"textarea\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:9:\"label_pos\";s:5:\"above\";s:8:\"required\";i:0;s:11:\"placeholder\";s:7:\"MELDING\";s:7:\"default\";s:0:\"\";s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:15:\"container_class\";s:0:\"\";s:11:\"input_limit\";s:0:\"\";s:16:\"input_limit_type\";s:10:\"characters\";s:15:\"input_limit_msg\";s:17:\"Character(s) left\";s:10:\"manual_key\";s:0:\"\";s:13:\"disable_input\";s:0:\"\";s:11:\"admin_label\";s:0:\"\";s:9:\"help_text\";s:0:\"\";s:9:\"desc_text\";s:0:\"\";s:28:\"disable_browser_autocomplete\";s:0:\"\";s:12:\"textarea_rte\";s:0:\"\";s:18:\"disable_rte_mobile\";s:0:\"\";s:14:\"textarea_media\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3284\";s:11:\"field_label\";s:7:\"Message\";s:9:\"field_key\";s:7:\"message\";s:5:\"value\";s:0:\"\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:7;}i:3;a:2:{s:8:\"settings\";a:72:{s:10:\"objectType\";s:5:\"Field\";s:12:\"objectDomain\";s:6:\"fields\";s:10:\"editActive\";b:0;s:5:\"order\";s:1:\"5\";s:11:\"idAttribute\";s:2:\"id\";s:5:\"label\";s:4:\"SEND\";s:3:\"key\";s:18:\"send_1644492880294\";s:4:\"type\";s:6:\"submit\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:16:\"processing_label\";s:11:\"Prosesserer\";s:15:\"container_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:28:\"wrap_styles_background-color\";s:0:\"\";s:18:\"wrap_styles_border\";s:0:\"\";s:24:\"wrap_styles_border-style\";s:0:\"\";s:24:\"wrap_styles_border-color\";s:0:\"\";s:17:\"wrap_styles_color\";s:0:\"\";s:18:\"wrap_styles_height\";s:0:\"\";s:17:\"wrap_styles_width\";s:0:\"\";s:21:\"wrap_styles_font-size\";s:0:\"\";s:18:\"wrap_styles_margin\";s:0:\"\";s:19:\"wrap_styles_padding\";s:0:\"\";s:19:\"wrap_styles_display\";s:0:\"\";s:17:\"wrap_styles_float\";s:0:\"\";s:29:\"wrap_styles_show_advanced_css\";s:1:\"0\";s:20:\"wrap_styles_advanced\";s:0:\"\";s:29:\"label_styles_background-color\";s:0:\"\";s:19:\"label_styles_border\";s:0:\"\";s:25:\"label_styles_border-style\";s:0:\"\";s:25:\"label_styles_border-color\";s:0:\"\";s:18:\"label_styles_color\";s:0:\"\";s:19:\"label_styles_height\";s:0:\"\";s:18:\"label_styles_width\";s:0:\"\";s:22:\"label_styles_font-size\";s:0:\"\";s:19:\"label_styles_margin\";s:0:\"\";s:20:\"label_styles_padding\";s:0:\"\";s:20:\"label_styles_display\";s:0:\"\";s:18:\"label_styles_float\";s:0:\"\";s:30:\"label_styles_show_advanced_css\";s:1:\"0\";s:21:\"label_styles_advanced\";s:0:\"\";s:31:\"element_styles_background-color\";s:0:\"\";s:21:\"element_styles_border\";s:0:\"\";s:27:\"element_styles_border-style\";s:0:\"\";s:27:\"element_styles_border-color\";s:0:\"\";s:20:\"element_styles_color\";s:0:\"\";s:21:\"element_styles_height\";s:0:\"\";s:20:\"element_styles_width\";s:0:\"\";s:24:\"element_styles_font-size\";s:0:\"\";s:21:\"element_styles_margin\";s:0:\"\";s:22:\"element_styles_padding\";s:0:\"\";s:22:\"element_styles_display\";s:0:\"\";s:20:\"element_styles_float\";s:0:\"\";s:32:\"element_styles_show_advanced_css\";s:1:\"0\";s:23:\"element_styles_advanced\";s:0:\"\";s:44:\"submit_element_hover_styles_background-color\";s:0:\"\";s:34:\"submit_element_hover_styles_border\";s:0:\"\";s:40:\"submit_element_hover_styles_border-style\";s:0:\"\";s:40:\"submit_element_hover_styles_border-color\";s:0:\"\";s:33:\"submit_element_hover_styles_color\";s:0:\"\";s:34:\"submit_element_hover_styles_height\";s:0:\"\";s:33:\"submit_element_hover_styles_width\";s:0:\"\";s:37:\"submit_element_hover_styles_font-size\";s:0:\"\";s:34:\"submit_element_hover_styles_margin\";s:0:\"\";s:35:\"submit_element_hover_styles_padding\";s:0:\"\";s:35:\"submit_element_hover_styles_display\";s:0:\"\";s:33:\"submit_element_hover_styles_float\";s:0:\"\";s:45:\"submit_element_hover_styles_show_advanced_css\";s:1:\"0\";s:36:\"submit_element_hover_styles_advanced\";s:0:\"\";s:7:\"cellcid\";s:5:\"c3287\";s:11:\"field_label\";s:6:\"Submit\";s:9:\"field_key\";s:6:\"submit\";s:14:\"drawerDisabled\";b:0;}s:2:\"id\";i:8;}}s:7:\"actions\";a:4:{i:0;a:2:{s:8:\"settings\";a:30:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:4:\"save\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:5:\"label\";s:17:\"Record Submission\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:26:\"Innsending av Ninja-skjema\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";s:11:\"success_msg\";s:18:\"Skjemaet er sendt.\";s:15:\"submitter_email\";s:0:\"\";s:18:\"fields-save-toggle\";s:8:\"save_all\";s:16:\"exception_fields\";a:0:{}s:18:\"set_subs_to_expire\";s:1:\"0\";s:16:\"subs_expire_time\";s:2:\"90\";}s:2:\"id\";i:5;}i:1;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:5:\"label\";s:18:\"Email Confirmation\";s:2:\"to\";s:27:\"{field:epost_1644492813347}\";s:7:\"subject\";s:24:\"This is an email action.\";s:7:\"message\";s:19:\"Hello, Ninja Forms!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:0:{}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:13:\"email_subject\";s:24:\"Submission Confirmation \";s:13:\"email_message\";s:29:\"<p>{all_fields_table}<br></p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:19:\"email_message_plain\";s:0:\"\";}s:2:\"id\";i:6;}i:2;a:2:{s:8:\"settings\";a:25:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:5:\"email\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2016-08-24 16:47:39\";s:5:\"label\";s:18:\"Email Notification\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:20:\"{system:admin_email}\";s:13:\"email_subject\";s:41:\"Ny melding fra {field:navn_1644492768889}\";s:13:\"email_message\";s:88:\"<p>{field:message}</p><p>-{field:navn_1644492768889} ( {field:epost_1644492813347} )</p>\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:27:\"{field:epost_1644492813347}\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:10:\"attach_csv\";s:1:\"0\";s:19:\"email_message_plain\";s:0:\"\";s:14:\"drawerDisabled\";s:0:\"\";}s:2:\"id\";i:7;}i:3;a:2:{s:8:\"settings\";a:27:{s:10:\"objectType\";s:6:\"Action\";s:12:\"objectDomain\";s:7:\"actions\";s:10:\"editActive\";b:0;s:5:\"title\";s:0:\"\";s:3:\"key\";s:0:\"\";s:4:\"type\";s:14:\"successmessage\";s:6:\"active\";s:1:\"1\";s:10:\"created_at\";s:19:\"2022-02-10 12:37:32\";s:5:\"label\";s:19:\"Henvendelse mottatt\";s:7:\"message\";s:61:\"Thank you {field:navn_1644492768889} for filling out my form!\";s:10:\"conditions\";a:6:{s:9:\"collapsed\";s:0:\"\";s:7:\"process\";s:1:\"1\";s:9:\"connector\";s:3:\"all\";s:4:\"when\";a:1:{i:0;a:6:{s:9:\"connector\";s:3:\"AND\";s:3:\"key\";s:0:\"\";s:10:\"comparator\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"when\";}}s:4:\"then\";a:1:{i:0;a:5:{s:3:\"key\";s:0:\"\";s:7:\"trigger\";s:0:\"\";s:5:\"value\";s:0:\"\";s:4:\"type\";s:5:\"field\";s:9:\"modelType\";s:4:\"then\";}}s:4:\"else\";a:0:{}}s:16:\"payment_gateways\";s:0:\"\";s:13:\"payment_total\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:2:\"to\";s:16:\"{wp:admin_email}\";s:13:\"email_subject\";s:26:\"Innsending av Ninja-skjema\";s:13:\"email_message\";s:14:\"{fields_table}\";s:9:\"from_name\";s:0:\"\";s:12:\"from_address\";s:0:\"\";s:8:\"reply_to\";s:0:\"\";s:12:\"email_format\";s:4:\"html\";s:2:\"cc\";s:0:\"\";s:3:\"bcc\";s:0:\"\";s:12:\"redirect_url\";s:0:\"\";s:11:\"success_msg\";s:62:\"<p>Din Henvendelse er mottatt, og vi vi svare deg snarlig.</p>\";s:19:\"email_message_plain\";s:0:\"\";s:14:\"drawerDisabled\";s:0:\"\";}s:2:\"id\";i:8;}}s:8:\"settings\";a:116:{s:10:\"objectType\";s:12:\"Form Setting\";s:10:\"editActive\";b:1;s:5:\"title\";s:13:\"kontaktskjema\";s:10:\"created_at\";s:19:\"2016-08-24 16:39:20\";s:10:\"form_title\";s:10:\"Contact Me\";s:17:\"default_label_pos\";s:5:\"above\";s:10:\"show_title\";i:0;s:14:\"clear_complete\";s:1:\"1\";s:13:\"hide_complete\";s:1:\"1\";s:9:\"logged_in\";s:1:\"0\";s:3:\"key\";s:0:\"\";s:10:\"conditions\";a:0:{}s:13:\"wrapper_class\";s:0:\"\";s:13:\"element_class\";s:0:\"\";s:10:\"add_submit\";s:1:\"1\";s:17:\"not_logged_in_msg\";s:0:\"\";s:16:\"sub_limit_number\";s:0:\"\";s:13:\"sub_limit_msg\";s:0:\"\";s:12:\"calculations\";a:0:{}s:15:\"formContentData\";a:4:{i:0;s:18:\"navn_1644492768889\";i:1;s:19:\"epost_1644492813347\";i:2;s:7:\"message\";i:3;s:18:\"send_1644492880294\";}s:33:\"container_styles_background-color\";s:0:\"\";s:23:\"container_styles_border\";s:0:\"\";s:29:\"container_styles_border-style\";s:0:\"\";s:29:\"container_styles_border-color\";s:0:\"\";s:22:\"container_styles_color\";s:0:\"\";s:23:\"container_styles_height\";s:0:\"\";s:22:\"container_styles_width\";s:0:\"\";s:26:\"container_styles_font-size\";s:0:\"\";s:23:\"container_styles_margin\";s:0:\"\";s:24:\"container_styles_padding\";s:0:\"\";s:24:\"container_styles_display\";s:0:\"\";s:22:\"container_styles_float\";s:0:\"\";s:34:\"container_styles_show_advanced_css\";s:1:\"0\";s:25:\"container_styles_advanced\";s:0:\"\";s:29:\"title_styles_background-color\";s:0:\"\";s:19:\"title_styles_border\";s:0:\"\";s:25:\"title_styles_border-style\";s:0:\"\";s:25:\"title_styles_border-color\";s:0:\"\";s:18:\"title_styles_color\";s:0:\"\";s:19:\"title_styles_height\";s:0:\"\";s:18:\"title_styles_width\";s:0:\"\";s:22:\"title_styles_font-size\";s:0:\"\";s:19:\"title_styles_margin\";s:0:\"\";s:20:\"title_styles_padding\";s:0:\"\";s:20:\"title_styles_display\";s:0:\"\";s:18:\"title_styles_float\";s:0:\"\";s:30:\"title_styles_show_advanced_css\";s:1:\"0\";s:21:\"title_styles_advanced\";s:0:\"\";s:27:\"row_styles_background-color\";s:0:\"\";s:17:\"row_styles_border\";s:0:\"\";s:23:\"row_styles_border-style\";s:0:\"\";s:23:\"row_styles_border-color\";s:0:\"\";s:16:\"row_styles_color\";s:0:\"\";s:17:\"row_styles_height\";s:0:\"\";s:16:\"row_styles_width\";s:0:\"\";s:20:\"row_styles_font-size\";s:0:\"\";s:17:\"row_styles_margin\";s:0:\"\";s:18:\"row_styles_padding\";s:0:\"\";s:18:\"row_styles_display\";s:0:\"\";s:28:\"row_styles_show_advanced_css\";s:1:\"0\";s:19:\"row_styles_advanced\";s:0:\"\";s:31:\"row-odd_styles_background-color\";s:0:\"\";s:21:\"row-odd_styles_border\";s:0:\"\";s:27:\"row-odd_styles_border-style\";s:0:\"\";s:27:\"row-odd_styles_border-color\";s:0:\"\";s:20:\"row-odd_styles_color\";s:0:\"\";s:21:\"row-odd_styles_height\";s:0:\"\";s:20:\"row-odd_styles_width\";s:0:\"\";s:24:\"row-odd_styles_font-size\";s:0:\"\";s:21:\"row-odd_styles_margin\";s:0:\"\";s:22:\"row-odd_styles_padding\";s:0:\"\";s:22:\"row-odd_styles_display\";s:0:\"\";s:32:\"row-odd_styles_show_advanced_css\";s:1:\"0\";s:23:\"row-odd_styles_advanced\";s:0:\"\";s:35:\"success-msg_styles_background-color\";s:0:\"\";s:25:\"success-msg_styles_border\";s:0:\"\";s:31:\"success-msg_styles_border-style\";s:0:\"\";s:31:\"success-msg_styles_border-color\";s:0:\"\";s:24:\"success-msg_styles_color\";s:0:\"\";s:25:\"success-msg_styles_height\";s:0:\"\";s:24:\"success-msg_styles_width\";s:0:\"\";s:28:\"success-msg_styles_font-size\";s:0:\"\";s:25:\"success-msg_styles_margin\";s:0:\"\";s:26:\"success-msg_styles_padding\";s:0:\"\";s:26:\"success-msg_styles_display\";s:0:\"\";s:36:\"success-msg_styles_show_advanced_css\";s:1:\"0\";s:27:\"success-msg_styles_advanced\";s:0:\"\";s:33:\"error_msg_styles_background-color\";s:0:\"\";s:23:\"error_msg_styles_border\";s:0:\"\";s:29:\"error_msg_styles_border-style\";s:0:\"\";s:29:\"error_msg_styles_border-color\";s:0:\"\";s:22:\"error_msg_styles_color\";s:0:\"\";s:23:\"error_msg_styles_height\";s:0:\"\";s:22:\"error_msg_styles_width\";s:0:\"\";s:26:\"error_msg_styles_font-size\";s:0:\"\";s:23:\"error_msg_styles_margin\";s:0:\"\";s:24:\"error_msg_styles_padding\";s:0:\"\";s:24:\"error_msg_styles_display\";s:0:\"\";s:34:\"error_msg_styles_show_advanced_css\";s:1:\"0\";s:25:\"error_msg_styles_advanced\";s:0:\"\";s:17:\"allow_public_link\";i:0;s:10:\"embed_form\";s:0:\"\";s:19:\"changeEmailErrorMsg\";s:0:\"\";s:18:\"changeDateErrorMsg\";s:0:\"\";s:20:\"confirmFieldErrorMsg\";s:0:\"\";s:22:\"fieldNumberNumMinError\";s:0:\"\";s:22:\"fieldNumberNumMaxError\";s:0:\"\";s:22:\"fieldNumberIncrementBy\";s:0:\"\";s:23:\"formErrorsCorrectErrors\";s:0:\"\";s:21:\"validateRequiredField\";s:0:\"\";s:21:\"honeypotHoneypotError\";s:0:\"\";s:20:\"fieldsMarkedRequired\";s:0:\"\";s:8:\"currency\";s:0:\"\";s:20:\"repeatable_fieldsets\";s:0:\"\";s:18:\"unique_field_error\";s:50:\"A form with this value has already been submitted.\";s:14:\"drawerDisabled\";b:0;}s:14:\"deleted_fields\";a:0:{}s:15:\"deleted_actions\";a:0:{}}', 4, b'0');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dataark for tabell `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/barnevernbemanning', 'yes'),
(2, 'home', 'http://localhost/barnevernbemanning', 'yes'),
(3, 'blogname', 'Barnevernbemanning', 'yes'),
(4, 'blogdescription', 'Bare enda et WordPress-nettsted', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'Erixxn@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j. F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j. F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:96:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:29:\"^ninja-forms/([a-zA-Z0-9]+)/?\";s:36:\"index.php?nf_public_link=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:27:\"ninja-forms/ninja-forms.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'bb-theme', 'yes'),
(41, 'stylesheet', 'bb-theme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:27:\"ninja-forms/ninja-forms.php\";s:21:\"ninja_forms_uninstall\";}', 'no'),
(80, 'timezone_string', 'Europe/Oslo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '10', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1659617297', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'nb_NO', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:155:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Siste innlegg</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:229:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Siste kommentarer</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:143:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arkiv</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Kategorier</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:10:{i:1647445699;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1647478099;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1647520302;a:1:{s:22:\"nf_marketing_feed_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"nf-weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1647520303;a:1:{s:26:\"nf_weekly_promotion_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:9:\"nf-weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1647521298;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1647521313;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1647521314;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1647780498;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1649853509;a:1:{s:13:\"nf_optin_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"nf-monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2678400;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1644065822;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(126, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL-verifisering feilet.\";}}', 'yes'),
(145, 'can_compress_scripts', '1', 'no'),
(158, 'finished_updating_comment_type', '1', 'yes'),
(163, 'current_theme', 'WP Bootstrap', 'yes'),
(164, 'theme_mods_bb-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(165, 'theme_switched', '', 'yes'),
(179, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":4,\"critical\":2}', 'yes'),
(418, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(419, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(435, 'recently_activated', 'a:0:{}', 'yes'),
(812, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(1093, 'ninja_forms_oauth_client_secret', '2jbnkC7vj1ILIk9BhOOXwlYX2XNlbTHAK3Llomx5', 'yes'),
(1094, 'ninja_forms_version', '3.6.7', 'yes'),
(1095, 'ninja_forms_db_version', '1.4', 'no'),
(1096, 'ninja_forms_required_updates', 'a:6:{s:19:\"CacheCollateActions\";s:19:\"2022-02-10 11:31:40\";s:17:\"CacheCollateForms\";s:19:\"2022-02-10 11:31:40\";s:18:\"CacheCollateFields\";s:19:\"2022-02-10 11:31:40\";s:19:\"CacheCollateObjects\";s:19:\"2022-02-10 11:31:40\";s:19:\"CacheCollateCleanup\";s:19:\"2022-02-10 11:31:40\";s:25:\"CacheFieldReconcilliation\";s:19:\"2022-02-10 11:31:40\";}', 'yes'),
(1097, 'ninja_forms_settings', 'a:14:{s:11:\"date_format\";s:5:\"m/d/Y\";s:8:\"currency\";s:3:\"USD\";s:18:\"recaptcha_site_key\";s:0:\"\";s:20:\"recaptcha_secret_key\";s:0:\"\";s:20:\"recaptcha_site_key_3\";s:0:\"\";s:22:\"recaptcha_secret_key_3\";s:0:\"\";s:14:\"recaptcha_lang\";s:0:\"\";s:19:\"delete_on_uninstall\";i:0;s:21:\"disable_admin_notices\";s:1:\"0\";s:16:\"builder_dev_mode\";s:1:\"1\";s:18:\"opinionated_styles\";s:5:\"light\";s:15:\"recaptcha_theme\";s:5:\"light\";s:23:\"load_legacy_submissions\";s:1:\"0\";s:15:\"currency_symbol\";s:5:\"&#36;\";}', 'yes'),
(1098, 'ninja_forms_zuul', '67', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1101, 'ninja_forms_addons_feed', '[{\"title\":\"Conditional Logic\",\"image\":\"assets\\/img\\/add-ons\\/conditional-logic.png\",\"content\":\"Build dynamic forms that can change as a user fills out the form. Show and hide fields. Send certain email, don\'t send others. Redirect to one of many pages. The possibilities are endless!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic\",\"plugin\":\"ninja-forms-conditionals\\/conditionals.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/conditional-logic\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Conditional+Logic+Docs\",\"version\":\"3.1\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"Multi Step Forms\",\"image\":\"assets\\/img\\/add-ons\\/multi-step-forms.png\",\"content\":\"Give submissions a boost on any longer form by making it a multi-page form. Drag and drop fields between pages, add breadcrumb navigation, a progress bar, and loads more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/multi-step-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi+Step+Forms\",\"plugin\":\"ninja-forms-multi-part\\/multi-part.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/multi-step-forms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Multi+Step+Forms+Docs\",\"version\":\"3.0.26\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"Front-End Posting\",\"image\":\"assets\\/img\\/add-ons\\/front-end-posting.png\",\"content\":\"Let users publish content just by submitting a form! Completely configurable including post type, title, even categories and tags. Set post status, author, and much more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting\",\"plugin\":\"ninja-forms-post-creation\\/ninja-forms-post-creation.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/post-creation\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Front-End+Posting+Docs\",\"version\":\"3.0.10\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"File Uploads\",\"image\":\"assets\\/img\\/add-ons\\/file-uploads.png\",\"content\":\"Upload files to WordPress, Google Drive, Dropbox, or Amazon S3. Upload documents, images, media, and more. Easily control file type and size. Add an upload field to any form!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads\",\"plugin\":\"ninja-forms-uploads\\/file-uploads.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/file-uploads\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=File+Uploads+Docs\",\"version\":\"3.3.14\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"}]},{\"title\":\"Layout and Styles\",\"image\":\"assets\\/img\\/add-ons\\/layout-styles.png\",\"content\":\"Drag and drop fields into columns and rows. Resize fields. Add backgrounds, adjust borders, and more. Design gorgeous forms without being a designer!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles\",\"plugin\":\"ninja-forms-style\\/ninja-forms-style.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/layouts-and-styles\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Layout+and+Styles+Docs\",\"version\":\"3.0.29\",\"categories\":[{\"name\":\"Look &amp; Feel\",\"slug\":\"look-feel\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"Mailchimp\",\"image\":\"assets\\/img\\/add-ons\\/mailchimp.png\",\"content\":\"Bring new life to your lists with upgraded Mailchimp signup forms for WordPress! Easy to build and customize with no code required. Link to lists and interest groups!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Mailchimp\",\"plugin\":\"ninja-forms-mail-chimp\\/ninja-forms-mail-chimp.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/mailchimp\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Mailchimp+Docs\",\"version\":\"3.3.1\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Campaign Monitor\",\"image\":\"assets\\/img\\/add-ons\\/campaign-monitor.png\",\"content\":\"Make any form a custom crafted WordPress signup form for Campaign Monitor. Connect to any list, link form fields to list fields, and watch your lists grow!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor\",\"plugin\":\"ninja-forms-campaign-monitor\\/ninja-forms-campaign-monitor.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/campaign-monitor\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Campaign+Monitor+Docs\",\"version\":\"3.0.6\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"User Analytics\",\"image\":\"assets\\/img\\/add-ons\\/user-analytics.png\",\"content\":\"Get better data on where your form traffic is coming from with every submission. Add 12+ analytics fields including UTM values,  URL referrer, geo data, and more!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics\",\"plugin\":\"ninja-forms-user-analytics\\/ninja-forms-user-analytics.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/user-analytics\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Analytics+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"Constant Contact\",\"image\":\"assets\\/img\\/add-ons\\/constant-contact.png\",\"content\":\"Connect WordPress to Constant Contact with forms that you can build and design just the way you want, no tech skills required! Subscribe users to any list or interest group.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact\",\"plugin\":\"ninja-forms-constant-contact\\/ninja-forms-constant-contact.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/constant-contact\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Constant+Contact+Docs\",\"version\":\"3.1.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"AWeber\",\"image\":\"assets\\/img\\/add-ons\\/aweber.png\",\"content\":\"Build your lists faster with easy to design, professional quality WordPress signup forms. No technical skills required. Connect WordPress to AWeber with style!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber\",\"plugin\":\"ninja-forms-aweber\\/ninja-forms-aweber.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/aweber\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=AWeber+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"PayPal Express\",\"image\":\"assets\\/img\\/add-ons\\/paypal-express.png\",\"content\":\"Set up any form to accept PayPal payments with PayPal Express for WordPress! Base totals on a fixed amount, user entered amount, or a calculated total.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express\",\"plugin\":\"ninja-forms-paypal-express\\/ninja-forms-paypal-express.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/paypal-express\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PayPal+Express+Docs\",\"version\":\"3.1.1\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"MailPoet\",\"image\":\"assets\\/img\\/add-ons\\/mailpoet.png\",\"content\":\"Say hello better! Customize your MailPoet signup forms to draw more subscribers than ever before. Connect WordPress to any MailPoet list in minutes!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/mailpoet\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailPoet\",\"plugin\":\"ninja-forms-mailpoet\\/nf-mailpoet.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/mailpoet\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=MailPoet+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Zoho CRM\",\"image\":\"assets\\/img\\/add-ons\\/zoho-crm.png\",\"content\":\"Customize your forms to get the most out of your connection between WordPress and Zoho. Link form fields directly to Zoho fields, custom fields included, from almost any module.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM\",\"plugin\":\"ninja-forms-zoho-crm\\/ninja-forms-zoho-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/zoho-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zoho+CRM+Docs\",\"version\":\"3.5.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Capsule CRM\",\"image\":\"assets\\/img\\/add-ons\\/capsule-crm.png\",\"content\":\"Boost conversions from WordPress to Capsule with forms tailor made to your audience. Link form fields to Capsule fields from a wide range of modules. Custom fields too!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM\",\"plugin\":\"ninja-forms-capsule-crm\\/ninja-forms-capsule-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/capsule-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Capsule+CRM+Docs\",\"version\":\"3.4.2\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Stripe\",\"image\":\"assets\\/img\\/add-ons\\/stripe.png\",\"content\":\"Set up any WordPress form to accept credit card payments or donations through Stripe. Base totals on a fixed amount, user entered amount, or a calculated total!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe\",\"plugin\":\"ninja-forms-stripe\\/ninja-forms-stripe.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/stripe\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Stripe+Docs\",\"version\":\"3.1.4\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Insightly CRM\",\"image\":\"assets\\/img\\/add-ons\\/insightly-crm.png\",\"content\":\"Your customer\'s journey begins with your WordPress forms. Send Contacts, Leads, Opportunities, Custom fields and more seamlessly from WordPress to Insightly!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM\",\"plugin\":\"ninja-forms-insightly-crm\\/ninja-forms-insightly-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/insightly-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Insightly+CRM+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"PDF Form Submission\",\"image\":\"assets\\/img\\/add-ons\\/pdf-form-submission.png\",\"content\":\"Generate a PDF of any WordPress form submission. Export any submission as a PDF, or attach it to an email and send a copy to whoever needs one!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission\",\"plugin\":\"ninja-forms-pdf-submissions\\/nf-pdf-submissions.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/pdf\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PDF+Form+Submission+Docs\",\"version\":\"3.2.0\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"}]},{\"title\":\"Trello\",\"image\":\"assets\\/img\\/add-ons\\/trello.png\",\"content\":\"Create a new Trello card with data from any WordPress form submission. Map fields to card details, assign members and labels, upload images, embed links.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello\",\"plugin\":\"ninja-forms-trello\\/ninja-forms-trello.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/trello\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Trello+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"Elavon\",\"image\":\"assets\\/img\\/add-ons\\/elavon.png\",\"content\":\"Accept credit card payments from any of your WordPress forms. Pass customer and invoice info from any field securely into Elavon with each payment.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon\",\"plugin\":\"ninja-forms-elavon-payment-gateway\\/ninja-forms-elavon-payment-gateway.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/elavon\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Elavon+Docs\",\"version\":\"3.1.1\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Zapier\",\"image\":\"assets\\/img\\/add-ons\\/zapier.png\",\"content\":\"Don\'t see an add-on integration for a service you love? Don\'t worry! Connect WordPress to more than 1,500 different services through Zapier, no code required!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier\",\"plugin\":\"ninja-forms-zapier\\/ninja-forms-zapier.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/zapier\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Zapier+Docs\",\"version\":\"3.0.8\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"},{\"name\":\"Custom Integrations\",\"slug\":\"custom-integrations\"}]},{\"title\":\"Salesforce CRM\",\"image\":\"assets\\/img\\/add-ons\\/salesforce-crm.png\",\"content\":\"Easily map any form field to any Salesforce Object or Field. A better connection to your customers begins with a better WordPress form builder!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM\",\"plugin\":\"ninja-forms-salesforce-crm\\/ninja-forms-salesforce-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/salesforce-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Salesforce+CRM+Docs\",\"version\":\"3.3.1\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Slack\",\"image\":\"assets\\/img\\/add-ons\\/slack.png\",\"content\":\"Get realtime Slack notifications in the workspace and channel of your choice with any new WordPress form submission. @Mention any team member!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack\",\"plugin\":\"ninja-forms-slack\\/ninja-forms-slack.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/slack\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Slack+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"CleverReach\",\"image\":\"assets\\/img\\/add-ons\\/cleverreach.png\",\"content\":\"Grow the reach of your email marketing with better CleverReach signup forms. Tailor your forms to your audience with this easy to set up integration!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach\",\"plugin\":\"ninja-forms-cleverreach\\/ninja-forms-cleverreach.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/cleverreach\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=CleverReach+Docs\",\"version\":\"3.1.5\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Webhooks\",\"image\":\"assets\\/img\\/add-ons\\/webhooks.png\",\"content\":\"Can\'t find a WordPress integration for the service you love? Send WordPress forms data to any external URL using a simple GET or POST request!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks\",\"plugin\":\"ninja-forms-webhooks\\/ninja-forms-webhooks.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/webhooks\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Webhooks+Docs\",\"version\":\"3.0.5\",\"categories\":[{\"name\":\"Notifications\",\"slug\":\"notifications\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Custom Integrations\",\"slug\":\"custom-integrations\"}]},{\"title\":\"Excel Export\",\"image\":\"assets\\/img\\/add-ons\\/excel-export.png\",\"content\":\"Export any form\'s submissions as a Microsoft Excel spreadsheet. Choose a date range, the fields you want to include, and export to Excel! \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export\",\"plugin\":\"ninja-forms-excel-export\\/ninja-forms-excel-export.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/excel-export\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Excel+Export+Docs\",\"version\":\"3.3.3\",\"categories\":[{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"File Management\",\"slug\":\"file-management\"}]},{\"title\":\"Formstack Documents\",\"image\":\"assets\\/img\\/add-ons\\/webmerge.png\",\"content\":\"Create specifically formatted templates from an uploaded PDF or Word document, then auto-fill them from any WordPress form submission!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Formstack+Documents\",\"plugin\":\"ninja-forms-webmerge\\/ninja-forms-webmerge.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/webmerge\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Formstack+Documents+Docs\",\"version\":\"3.0.3\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Help Scout\",\"image\":\"assets\\/img\\/add-ons\\/help-scout.png\",\"content\":\"Offering great support is hard. Tailor your WordPress forms to match your customers\' needs with this Help Scout integration for WordPress.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout\",\"plugin\":null,\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/help-scout\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Help+Scout+Docs\",\"version\":\"3.1.3\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"Emma\",\"image\":\"assets\\/img\\/add-ons\\/emma.png\",\"content\":\"Take your email marketing further with handcrafted, easy to build signup forms that connect directly into your Emma account! \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma\",\"plugin\":\"ninja-forms-emma\\/ninja-forms-emma.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/emma\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Emma+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Developer\",\"slug\":\"developer\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"User\",\"slug\":\"user\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"ClickSend SMS\",\"image\":\"assets\\/img\\/add-ons\\/clicksend-sms.png\",\"content\":\"Get instant SMS notifications with every new WordPress form submission. Respond to leads faster and make more personal connections!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS\",\"plugin\":\"ninja-forms-clicksend\\/ninja-forms-clicksend.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/clicksend-sms\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ClickSend+SMS+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"Twilio SMS\",\"image\":\"assets\\/img\\/add-ons\\/twilio-sms.png\",\"content\":\"Get instant SMS notifications with every new WordPress form submission. Respond to leads faster and make more personal connections!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS\",\"plugin\":\"ninja-forms-twilio\\/ninja-forms-twilio.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/twilio\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Twilio+SMS+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Notification and Workflow\",\"slug\":\"notification-workflow\"}]},{\"title\":\"Recurly\",\"image\":\"assets\\/img\\/add-ons\\/recurly.png\",\"content\":\"Subscription plans a part of your business model? Let your users subscribe from any WordPress form & make management easier with Recurly!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly\",\"plugin\":\"ninja-forms-recurly\\/ninja-forms-recurly.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/recurly\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Recurly+Docs\",\"version\":\"3.0.4\",\"categories\":[{\"name\":\"Payment Gateways\",\"slug\":\"payment-gateways\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"User Management\",\"image\":\"assets\\/img\\/add-ons\\/user-management.png\",\"content\":\"Allow your users to register, login, and manage their own profiles on your website. Customizable template forms for each, or design your own!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management\",\"plugin\":\"ninja-forms-user-management\\/ninja-forms-user-management.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/user-management\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=User+Management+Docs\",\"version\":\"3.1.0\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"User Management\",\"slug\":\"user-management\"}]},{\"title\":\"Save Progress\",\"image\":\"assets\\/img\\/add-ons\\/save-progress.png\",\"content\":\"Let your users save their work and reload it all when they have time to return. Don\'t lose out on valuable submissions for longer forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress\",\"plugin\":\"ninja-forms-save-progress\\/ninja-forms-save-progress.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/save-progress\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Save+Progress+Docs\",\"version\":\"3.0.25\",\"categories\":[{\"name\":\"Content Management\",\"slug\":\"content-management\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"},{\"name\":\"Form Function and Design\",\"slug\":\"form-function-design\"}]},{\"title\":\"EmailOctopus\",\"image\":\"assets\\/img\\/add-ons\\/emailoctopus.png\",\"content\":\"Pair WordPress\' best drag and drop form builder with your EmailOctopus account for incredibly effective signup forms. Easy, complete integration.\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus\",\"plugin\":\"ninja-forms-emailoctopus\\/ninja-forms-emailoctopus.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/emailoctopus\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=EmailOctopus+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Business\",\"slug\":\"business\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"PipelineDeals CRM\",\"image\":\"assets\\/img\\/add-ons\\/pipelinedeals-crm.png\",\"content\":\"Complete, effortless integration with PipelineDeals CRM. Increase the flow of leads into your sales pipeline with upgraded lead generation forms!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PipelineDeals+CRM\",\"plugin\":\"ninja-forms-zoho-crm\\/zoho-integration.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/pipelinedeals-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=PipelineDeals+CRM+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"Highrise CRM\",\"image\":\"assets\\/img\\/add-ons\\/highrise-crm.png\",\"content\":\"Get more out of the functional simplicity of Highrise CRM with forms that can be designed from the ground up to maximize conversion. \",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/highrise-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Highrise+CRM\",\"plugin\":\"ninja-forms-highrise-crm\\/ninja-forms-highrise-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/highrise-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=Highrise+CRM+Docs\",\"version\":\"3.0.0\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"ConvertKit\",\"image\":\"assets\\/img\\/add-ons\\/convertkit.png\",\"content\":\"Connect WordPress to your ConvertKit account with completely customizable opt-in forms. Watch your audience & sales grow like never before!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit\",\"plugin\":\"ninja-forms-convertkit\\/ninja-forms-convertkit.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/convertkit\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ConvertKit+Docs\",\"version\":\"3.1.1\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Personal\",\"slug\":\"personal\"},{\"name\":\"Professional\",\"slug\":\"professional\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"OnePageCRM\",\"image\":\"assets\\/img\\/add-ons\\/onepage-crm.png\",\"content\":\"Integrate WordPress with OnePage CRM seamlessly through highly customizable WordPress forms. Make better conversions <em>your<\\/em> Next Action!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM\",\"plugin\":\"ninja-forms-onepage-crm\\/ninja-forms-onepage-crm.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/onepage-crm\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=OnePageCRM+Docs\",\"version\":\"3.0.1\",\"categories\":[{\"name\":\"CRM Integrations\",\"slug\":\"crm-integrations\"},{\"name\":\"Actions\",\"slug\":\"actions\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]},{\"title\":\"ActiveCampaign\",\"image\":\"assets\\/img\\/add-ons\\/active-campaign.png\",\"content\":\"Design custom forms that link perfectly to your ActiveCampaign account for the ultimate in marketing automation. Better leads begin here!\",\"link\":\"https:\\/\\/ninjaforms.com\\/extensions\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ActiveCampaign\",\"plugin\":\"ninja-forms-active-campaign\\/ninja-forms-active-campaign.php\",\"docs\":\"https:\\/\\/ninjaforms.com\\/docs\\/activecampaign\\/?utm_medium=plugin&utm_source=plugin-addons-page&utm_campaign=Ninja+Forms+Addons+Page&utm_content=ActiveCampaign+Docs\",\"version\":\"3.1.2\",\"categories\":[{\"name\":\"Email Marketing\",\"slug\":\"email-marketing\"},{\"name\":\"Membership\",\"slug\":\"membership\"},{\"name\":\"Agency\",\"slug\":\"agency\"}]}]', 'no'),
(1102, 'widget_ninja_forms_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1103, 'ninja-forms-views-secret', 'DdGu88NtvmrDd1fnIjJC1ZqdmTmEvDNgQNNqeofK', 'yes'),
(1107, 'ninja_forms_needs_updates', '0', 'yes'),
(1108, 'nf_admin_notice', 'a:1:{s:16:\"one_week_support\";a:2:{s:5:\"start\";s:9:\"2/17/2022\";s:3:\"int\";i:7;}}', 'yes'),
(1109, 'nf_form_tel_data', '1,2', 'no'),
(1110, 'ninja_forms_do_not_allow_tracking', '1', 'yes'),
(1111, 'ninja_forms_optin_reported', '1', 'yes'),
(1114, 'nf_sub_expiration', 'a:0:{}', 'yes'),
(1148, 'nf_form_tel_sent', 'true', 'no'),
(1182, 'nf_active_promotions', '{\"dashboard\":[{\"id\":\"personal-20\",\"location\":\"dashboard\",\"type\":\"personal\",\"content\":\"<a href=\\\"https:\\/\\/ninjaforms.com\\/personal-membership\\/?utm_source=ninja-forms-plugin&utm_medium=dashboard-banner-ad&utm_campaign=personal-banner-ad&utm_content=personal-20\\\" target=\\\"_blank\\\" class=\\\"nf-remove-promo-styling\\\"><img src=\\\"http:\\/\\/localhost\\/barnevernbemanning\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-personal-20.png\\\"><\\/a>\",\"script\":\"\"},{\"id\":\"personal-50\",\"location\":\"dashboard\",\"type\":\"personal\",\"content\":\"<a href=\\\"https:\\/\\/ninjaforms.com\\/personal-membership\\/?utm_source=ninja-forms-plugin&utm_medium=dashboard-banner-ad&utm_campaign=personal-banner-ad&utm_content=personal-50\\\" target=\\\"_blank\\\" class=\\\"nf-remove-promo-styling\\\"><img src=\\\"http:\\/\\/localhost\\/barnevernbemanning\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-personal-50.png\\\"><\\/a>\",\"script\":\"\"},{\"id\":\"sendwp-banner\",\"location\":\"dashboard\",\"content\":\"<span aria-label=\\\"SendWP. Getting WordPress email into an inbox shouldn\'t be that hard! Never miss another receipt, form submission, or any WordPress email ever again.\\\" style=\\\"cursor:pointer;width:800px;height:83px;border-radius:4px;-moz-border-radius:4px;-webkit-border-radius:4px;background-image:url(\'http:\\/\\/localhost\\/barnevernbemanning\\/wp-content\\/plugins\\/ninja-forms\\/assets\\/img\\/promotions\\/dashboard-banner-sendwp.png\');display:block;\\\"><\\/span>\",\"type\":\"sendwp\",\"script\":\"\\n      setTimeout(function(){ \\/* Wait for services to init. *\\/\\n        var data = {\\n          width: 450,\\n          closeOnClick: \'body\',\\n          closeOnEsc: true,\\n          content: \'<p><h2>Frustrated that WordPress email isn\\u2019t being received?<\\/h2><p>Form submission notifications not hitting your inbox? Some of your visitors getting form feedback via email, others not? By default, your WordPress site sends emails through your web host, which can be unreliable. Your host has spent lots of time and money optimizing to serve your pages, not send your emails.<\\/p><h3>Sign up for SendWP today, and never deal with WordPress email issues again!<\\/h3><p>SendWP is an email service that removes your web host from the email equation.<\\/p><ul style=&quot;list-style-type:initial;margin-left: 20px;&quot;><li>Sends email through dedicated email service, increasing email deliverability.<\\/li><li>Keeps form submission emails out of spam by using a trusted email provider.<\\/li><li>On a shared web host? Don\\u2019t worry about emails being rejected because of blocked IP addresses.<\\/li><li><strong>$1 for the first month. $9\\/month after. Cancel anytime!<\\/strong><\\/li><\\/ul><\\/p><br \\/>\',\\n          btnPrimary: {\\n            text: \'Sign me up!\',\\n            callback: function() {\\n              var spinner = document.createElement(\'span\');\\n              spinner.classList.add(\'dashicons\', \'dashicons-update\', \'dashicons-update-spin\');\\n              var w = this.offsetWidth;\\n              this.innerHTML = spinner.outerHTML;\\n              this.style.width = w+\'px\';\\n              ninja_forms_sendwp_remote_install();\\n            }\\n          },\\n          btnSecondary: {\\n            text: \'Cancel\',\\n            callback: function() {\\n              sendwpModal.toggleModal(false);\\n            }\\n          }\\n        }\\n        var sendwpModal = new NinjaModal(data);\\n      }, 500);\\n    \"}]}', 'no'),
(3603, '_site_transient_timeout_php_check_722257398ed85eaa39d12bc29012c839', '1647856298', 'no'),
(3604, '_site_transient_php_check_722257398ed85eaa39d12bc29012c839', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(3841, '_site_transient_timeout_theme_roots', '1647439469', 'no'),
(3842, '_site_transient_theme_roots', 'a:4:{s:8:\"bb-theme\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(3844, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/nb_NO/wordpress-5.9.2.zip\";s:6:\"locale\";s:5:\"nb_NO\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/nb_NO/wordpress-5.9.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.2\";s:7:\"version\";s:5:\"5.9.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.9.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.9.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.9.2-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.9.2-partial-0.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.2\";s:7:\"version\";s:5:\"5.9.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:3:\"5.9\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/nb_NO/wordpress-5.9.2.zip\";s:6:\"locale\";s:5:\"nb_NO\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/nb_NO/wordpress-5.9.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.2\";s:7:\"version\";s:5:\"5.9.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1647437671;s:15:\"version_checked\";s:3:\"5.9\";s:12:\"translations\";a:0:{}}', 'no'),
(3845, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1647437671;s:7:\"checked\";a:4:{s:8:\"bb-theme\";s:3:\"1.0\";s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.0\";}s:8:\"response\";a:1:{s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.1.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:2:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.9.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.5.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentytwentyone\";s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:19:\"2022-01-26 01:11:05\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentytwentyone/1.0/nb_NO.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(3846, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1647437672;s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2019-02-15 22:09:42\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/nb_NO.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:27:\"ninja-forms/ninja-forms.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/ninja-forms\";s:4:\"slug\";s:11:\"ninja-forms\";s:6:\"plugin\";s:27:\"ninja-forms/ninja-forms.php\";s:11:\"new_version\";s:5:\"3.6.7\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/ninja-forms/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/ninja-forms.3.6.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-256x256.png?rev=1649747\";s:2:\"1x\";s:64:\"https://ps.w.org/ninja-forms/assets/icon-128x128.png?rev=1649747\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/ninja-forms/assets/banner-1544x500.png?rev=2069024\";s:2:\"1x\";s:66:\"https://ps.w.org/ninja-forms/assets/banner-772x250.png?rev=2069024\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.6\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.2.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"ninja-forms/ninja-forms.php\";s:5:\"3.6.7\";}}', 'no'),
(3860, '_transient_timeout_global_styles_bb-theme', '1647443261', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3861, '_transient_global_styles_bb-theme', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dataark for tabell `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(12, 10, '_edit_lock', '1644486107:1'),
(20, 16, '_menu_item_type', 'post_type'),
(21, 16, '_menu_item_menu_item_parent', '0'),
(22, 16, '_menu_item_object_id', '10'),
(23, 16, '_menu_item_object', 'page'),
(24, 16, '_menu_item_target', ''),
(25, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(26, 16, '_menu_item_xfn', ''),
(27, 16, '_menu_item_url', ''),
(106, 10, '_edit_last', '1'),
(141, 59, '_edit_lock', '1644486124:1'),
(142, 59, '_edit_last', '1'),
(143, 61, '_edit_lock', '1644486139:1'),
(144, 61, '_edit_last', '1'),
(145, 63, '_edit_lock', '1644486166:1'),
(146, 63, '_edit_last', '1'),
(147, 65, '_edit_lock', '1644486043:1'),
(148, 65, '_edit_last', '1'),
(149, 67, '_field_5', ''),
(150, 67, '_field_6', ''),
(151, 67, '_field_7', ''),
(152, 67, '_form_id', '2'),
(153, 67, '_seq_num', '1'),
(154, 68, '_field_5', ''),
(155, 68, '_field_6', ''),
(156, 68, '_field_7', ''),
(157, 68, '_form_id', '2'),
(158, 68, '_seq_num', '2'),
(159, 69, '_field_5', ''),
(160, 69, '_field_6', ''),
(161, 69, '_field_7', ''),
(162, 69, '_form_id', '2'),
(163, 69, '_seq_num', '3');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dataark for tabell `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-02-05 13:48:17', '2022-02-05 12:48:17', '<!-- wp:paragraph -->\n<p>Velkommen til WordPress. Dette er ditt første innlegg. Rediger det eller slett det og start skrivingen!</p>\n<!-- /wp:paragraph -->', 'Hei, verden!', '', 'publish', 'open', 'open', '', 'hei-verden', '', '', '2022-02-05 13:48:17', '2022-02-05 12:48:17', '', 0, 'http://localhost/barnevernbemanning/?p=1', 0, 'post', '', 1),
(6, 1, '2022-02-07 16:19:03', '2022-02-07 15:19:03', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-bb-theme', '', '', '2022-02-07 16:19:03', '2022-02-07 15:19:03', '', 0, 'http://localhost/barnevernbemanning/2022/02/07/wp-global-styles-bb-theme/', 0, 'wp_global_styles', '', 0),
(10, 1, '2022-02-08 12:35:32', '2022-02-08 11:35:32', '', 'HJEM', '', 'publish', 'closed', 'closed', '', 'hjem', '', '', '2022-02-10 10:41:47', '2022-02-10 09:41:47', '', 0, 'http://localhost/barnevernbemanning/?page_id=10', 0, 'page', '', 0),
(11, 1, '2022-02-08 12:35:32', '2022-02-08 11:35:32', '', 'Hjem', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2022-02-08 12:35:32', '2022-02-08 11:35:32', '', 10, 'http://localhost/barnevernbemanning/?p=11', 0, 'revision', '', 0),
(16, 1, '2022-02-09 21:33:55', '2022-02-09 11:57:01', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2022-02-09 21:33:55', '2022-02-09 20:33:55', '', 0, 'http://localhost/barnevernbemanning/?p=16', 1, 'nav_menu_item', '', 0),
(35, 1, '2022-02-09 17:46:27', '2022-02-09 16:46:27', '', 'HJEM', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2022-02-09 17:46:27', '2022-02-09 16:46:27', '', 10, 'http://localhost/barnevernbemanning/?p=35', 0, 'revision', '', 0),
(59, 1, '2022-02-10 10:41:55', '2022-02-10 09:41:55', '', 'TJENESTER', '', 'publish', 'closed', 'closed', '', 'tjenester', '', '', '2022-02-10 10:42:04', '2022-02-10 09:42:04', '', 0, 'http://localhost/barnevernbemanning/?page_id=59', 1, 'page', '', 0),
(60, 1, '2022-02-10 10:41:55', '2022-02-10 09:41:55', '', 'TJENESTER', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2022-02-10 10:41:55', '2022-02-10 09:41:55', '', 59, 'http://localhost/barnevernbemanning/?p=60', 0, 'revision', '', 0),
(61, 1, '2022-02-10 10:42:12', '2022-02-10 09:42:12', '', 'KONSULENTER', '', 'publish', 'closed', 'closed', '', 'konsulenter', '', '', '2022-02-10 10:42:19', '2022-02-10 09:42:19', '', 0, 'http://localhost/barnevernbemanning/?page_id=61', 2, 'page', '', 0),
(62, 1, '2022-02-10 10:42:12', '2022-02-10 09:42:12', '', 'KONSULENTER', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2022-02-10 10:42:12', '2022-02-10 09:42:12', '', 61, 'http://localhost/barnevernbemanning/?p=62', 0, 'revision', '', 0),
(63, 1, '2022-02-10 10:42:34', '2022-02-10 09:42:34', '', 'OM OSS', '', 'publish', 'closed', 'closed', '', 'om-oss', '', '', '2022-02-10 10:42:46', '2022-02-10 09:42:46', '', 0, 'http://localhost/barnevernbemanning/?page_id=63', 3, 'page', '', 0),
(64, 1, '2022-02-10 10:42:34', '2022-02-10 09:42:34', '', 'OM OSS', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2022-02-10 10:42:34', '2022-02-10 09:42:34', '', 63, 'http://localhost/barnevernbemanning/?p=64', 0, 'revision', '', 0),
(65, 1, '2022-02-10 10:42:57', '2022-02-10 09:42:57', '', 'KONTAKT', '', 'publish', 'closed', 'closed', '', 'kontakt', '', '', '2022-02-10 10:43:03', '2022-02-10 09:43:03', '', 0, 'http://localhost/barnevernbemanning/?page_id=65', 4, 'page', '', 0),
(66, 1, '2022-02-10 10:42:57', '2022-02-10 09:42:57', '', 'KONTAKT', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2022-02-10 10:42:57', '2022-02-10 09:42:57', '', 65, 'http://localhost/barnevernbemanning/?p=66', 0, 'revision', '', 0),
(67, 1, '2022-02-10 12:58:15', '2022-02-10 11:58:15', '', '', '', 'publish', 'closed', 'closed', '', '67', '', '', '2022-02-10 12:58:15', '2022-02-10 11:58:15', '', 0, 'http://localhost/barnevernbemanning/nf_sub/67/', 0, 'nf_sub', '', 0),
(68, 1, '2022-02-10 12:59:24', '2022-02-10 11:59:24', '', '', '', 'publish', 'closed', 'closed', '', '68', '', '', '2022-02-10 12:59:24', '2022-02-10 11:59:24', '', 0, 'http://localhost/barnevernbemanning/nf_sub/68/', 0, 'nf_sub', '', 0),
(69, 1, '2022-02-10 13:00:52', '2022-02-10 12:00:52', '', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2022-02-10 13:00:52', '2022-02-10 12:00:52', '', 0, 'http://localhost/barnevernbemanning/nf_sub/69/', 0, 'nf_sub', '', 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dataark for tabell `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Ukategorisert', 'ukategorisert', 0),
(2, 'bb-theme', 'bb-theme', 0),
(3, 'menu', 'menu', 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dataark for tabell `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(16, 3, 0);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dataark for tabell `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dataark for tabell `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Erixxn'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"526bab058b225144f2c1d8e815861413363d8d9c3d62f7eac379a4e8ccd194bf\";a:4:{s:10:\"expiration\";i:1644592844;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.82 Safari/537.36\";s:5:\"login\";i:1644420044;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Tabellstruktur for tabell `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dataark for tabell `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Erixxn', '$P$BxGboVHaYhsVpFyF0ZaSQwETvzBWpG1', 'erixxn', 'Erixxn@gmail.com', 'http://localhost/barnevernbemanning', '2022-02-05 12:48:17', '', 0, 'Erixxn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_nf3_upgrades`
--
ALTER TABLE `wp_nf3_upgrades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_actions`
--
ALTER TABLE `wp_nf3_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_nf3_action_meta`
--
ALTER TABLE `wp_nf3_action_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `wp_nf3_chunks`
--
ALTER TABLE `wp_nf3_chunks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_fields`
--
ALTER TABLE `wp_nf3_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_nf3_field_meta`
--
ALTER TABLE `wp_nf3_field_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=556;

--
-- AUTO_INCREMENT for table `wp_nf3_forms`
--
ALTER TABLE `wp_nf3_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_nf3_form_meta`
--
ALTER TABLE `wp_nf3_form_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `wp_nf3_objects`
--
ALTER TABLE `wp_nf3_objects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_object_meta`
--
ALTER TABLE `wp_nf3_object_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_nf3_relationships`
--
ALTER TABLE `wp_nf3_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3862;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
