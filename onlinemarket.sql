-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2021 at 04:20 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinemarket`
--
CREATE DATABASE IF NOT EXISTS `onlinemarket` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `onlinemarket`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add vendor', 7, 'add_vendor'),
(26, 'Can change vendor', 7, 'change_vendor'),
(27, 'Can delete vendor', 7, 'delete_vendor'),
(28, 'Can view vendor', 7, 'view_vendor'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add order item', 10, 'add_orderitem'),
(38, 'Can change order item', 10, 'change_orderitem'),
(39, 'Can delete order item', 10, 'delete_orderitem'),
(40, 'Can view order item', 10, 'view_orderitem'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order'),
(45, 'Can add product image', 12, 'add_productimage'),
(46, 'Can change product image', 12, 'change_productimage'),
(47, 'Can delete product image', 12, 'delete_productimage'),
(48, 'Can view product image', 12, 'view_productimage');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$uaB94SdTAhK1Ro0cg9ONc2$bHcSbS/dLWJ98VZmdRydLpCikPD0HiVyUhXgW6SbyUU=', '2021-06-09 13:17:34.183784', 1, 'giorgi', '', '', '', 1, 1, '2021-03-20 11:32:25.561000'),
(6, 'pbkdf2_sha256$260000$qKAPfUmPlb2QhRgRalsNa8$SETN8QyQsTNoOZ9cWURSlf9stEfg1ov8BTsY8HrUTdw=', '2021-06-09 13:19:25.987456', 0, 'codewithme01', '', '', '', 0, 1, '2021-03-20 13:33:49.078000'),
(7, 'pbkdf2_sha256$260000$qKAPfUmPlb2QhRgRalsNa8$SETN8QyQsTNoOZ9cWURSlf9stEfg1ov8BTsY8HrUTdw=', '2021-05-13 14:27:43.723519', 0, 'codewithme02', '', '', '', 0, 1, '2021-05-13 14:20:12.334830'),
(8, 'pbkdf2_sha256$260000$9gJJhj7vtzGuGpMutasAV1$YZ+kCY4NS21NFOrPcwqGdrC985bsLh8HJY2urIfglVc=', '2021-06-09 13:22:33.924410', 0, 'nino_sh', '', '', '', 0, 1, '2021-06-09 13:22:33.704603'),
(9, 'pbkdf2_sha256$260000$Fj4GuV4s0JVtiESMOm9Fub$wBvuYZX7taqxKdqt6ccxnPO3B4df4Kgp4jX1z8tS8Aw=', '2021-06-09 13:58:25.703014', 0, 'tatia_oq', '', '', '', 0, 1, '2021-06-09 13:58:25.493052');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-03-20 12:22:06.191000', '3', 'codewithme2', 2, '[]', 4, 1),
(2, '2021-03-20 12:22:11.396000', '2', 'codewithme2', 3, '', 7, 1),
(3, '2021-03-20 13:32:48.684000', '3', 'vendorwit23', 3, '', 7, 1),
(4, '2021-03-20 13:32:53.545000', '4', 'codewithme32', 3, '', 7, 1),
(5, '2021-03-20 13:32:56.583000', '1', 'codewithme', 3, '', 7, 1),
(6, '2021-03-20 16:10:23.569000', '4', 'vendorwit23', 3, '', 4, 1),
(7, '2021-03-20 16:10:32.143000', '5', 'codewithme32', 3, '', 4, 1),
(8, '2021-03-20 16:10:39.036000', '3', 'codewithme2', 3, '', 4, 1),
(9, '2021-03-20 16:10:48.462000', '2', 'codewithme', 3, '', 4, 1),
(10, '2021-03-20 16:14:38.604000', '1', 'Laptop', 1, '[{\"added\": {}}]', 8, 1),
(11, '2021-03-20 16:14:54.924000', '2', 'Headphone', 1, '[{\"added\": {}}]', 8, 1),
(12, '2021-03-20 16:15:24.460000', '3', 'Keyboard & Mouse', 1, '[{\"added\": {}}]', 8, 1),
(13, '2021-06-09 12:37:52.652414', '4', 'Tablets', 1, '[{\"added\": {}}]', 8, 1),
(14, '2021-06-09 12:38:03.436935', '4', 'Tablets', 2, '[{\"changed\": {\"fields\": [\"Ordering\"]}}]', 8, 1),
(15, '2021-06-09 12:38:27.592065', '5', 'Tv', 1, '[{\"added\": {}}]', 8, 1),
(16, '2021-06-09 13:11:59.128870', '4', 'Tablets', 3, '', 8, 1),
(17, '2021-06-09 13:12:01.785907', '5', 'Tv', 3, '', 8, 1),
(18, '2021-06-09 13:17:44.616955', '6', 'Tv', 1, '[{\"added\": {}}]', 8, 1),
(19, '2021-06-09 13:17:53.125099', '7', 'Tablets', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'order', 'order'),
(10, 'order', 'orderitem'),
(8, 'product', 'category'),
(9, 'product', 'product'),
(12, 'product', 'productimage'),
(6, 'sessions', 'session'),
(7, 'vendor', 'vendor');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-05-06 19:37:28.444978'),
(2, 'auth', '0001_initial', '2021-05-06 19:37:28.665098'),
(3, 'admin', '0001_initial', '2021-05-06 19:37:29.184659'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-05-06 19:37:29.315618'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-06 19:37:29.324710'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-05-06 19:37:29.411918'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-05-06 19:37:29.542468'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-05-06 19:37:29.566474'),
(9, 'auth', '0004_alter_user_username_opts', '2021-05-06 19:37:29.574466'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-05-06 19:37:29.634808'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-05-06 19:37:29.645066'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-05-06 19:37:29.654790'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-05-06 19:37:29.672510'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-05-06 19:37:29.705762'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-05-06 19:37:29.724902'),
(16, 'auth', '0011_update_proxy_permissions', '2021-05-06 19:37:29.734978'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-05-06 19:37:29.764375'),
(18, 'vendor', '0001_initial', '2021-05-06 19:37:29.815159'),
(19, 'product', '0001_initial', '2021-05-06 19:37:29.914851'),
(20, 'product', '0002_product', '2021-05-06 19:37:29.992782'),
(21, 'product', '0003_auto_20210320_1855', '2021-05-06 19:37:30.194824'),
(22, 'sessions', '0001_initial', '2021-05-06 19:37:30.224621'),
(23, 'vendor', '0002_auto_20210320_1855', '2021-05-06 19:37:30.325187'),
(24, 'order', '0001_initial', '2021-05-12 16:47:38.493978'),
(25, 'product', '0004_productimage', '2021-05-20 14:04:11.751417');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('05hs0u2a4xkaepil4ywi0hrgjswqwwv8', 'eyJjYXJ0Ijp7fX0:1lgzTj:TMVxpsi6_MgmESoCj7Tap4iQxTyZ7uNn8PHJ6kw37GE', '2021-05-14 00:45:27.770813'),
('1pou6uo7zn0t2xtlcjwmip1lqqpth4um', 'eyJjYXJ0Ijp7fX0:1lqyrU:M0_wGixfv0exPQGgVKBVEdtfT8voFKprkruNApTKQaQ', '2021-06-10 14:07:16.929506'),
('4hcthhqzy9dpu6rx3ha72t43wukqu058', 'eyJjYXJ0Ijp7fX0:1lqxEi:ufpKiDMvzylNbmfRD0V-Ydxt9B0ZPY1IcR90QvdgucE', '2021-06-10 12:23:08.712715'),
('6wlbs7hfzq5z5tmsb1n7r96kugya1cuq', 'eyJjYXJ0Ijp7fX0:1llZik:ZE2ByfYrRIT8Gyh0kIySbQK-CSLxZpLdacGhuUzquNs', '2021-05-26 16:15:54.347778'),
('7a4gwf7umjpcs9ugyptrcstfsjjpx2y4', 'eyJjYXJ0Ijp7fX0:1lgGGj:1khCOv2WGk0xxXjYy7d8AMnAbihhBqELR880WJkYnfY', '2021-05-12 00:29:01.501108'),
('87vm15mr8o3rmtwypcaxpa4hh7sdiqvz', '.eJxVjEEOwiAQRe_C2pDClAFcuvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWKE6_W6T04LaDfKd2m2Wa27pMUe6KPGiX1znz83K4fweVev3WRWvDCENSkMFoO7JyoBnROCKMuiTwBWgkr1x01hVG5220GTCqAZR4fwDJiTch:1lNck1:jgLxjxjUFIoXoTyqUnJpe31OkC24dGzQAjw6S6bQxz4', '2021-04-03 14:38:13.163000'),
('8c25b01tp3fnx8s44v2j77ikwspe9xlp', '.eJxVjEEOwiAQRe_C2pDClAFcuvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWKE6_W6T04LaDfKd2m2Wa27pMUe6KPGiX1znz83K4fweVev3WRWvDCENSkMFoO7JyoBnROCKMuiTwBWgkr1x01hVG5220GTCqAZR4fwDJiTch:1lTnMe:NG5cP-dMWTZx0JmWoxlwuyfz6wECw09EeWdYAxt2CUA', '2021-04-20 15:11:36.101000'),
('8sxnoy2wlx73dw905tu7s6kj46pzkd43', '.eJxVjDsOgzAQBe-ydWQtWX8p03MGtGtbMUlkJD4V4u4BiYZ2Zt7bIPK0QLvtD-h5XUq_znnqhwQtWLgx4fjN9RTpw_U9qjjWZRpEnYm67Ky6MeXf62pvB4XncqyNQ5-ZG0NJc0CthSQ3XjRZMsFHI4jhmQw1zngKziJ5i6wPFpx4hP0P_3M5dw:1llZkY:hgV-gLGJn_Cp3HBDS0S811CckXpjzhqXHxzwFmTp0i8', '2021-05-26 16:17:46.047687'),
('9h7vq18rs4fwr7gdwdb486a8npka9acf', 'eyJjYXJ0Ijp7fX0:1ljpgu:emPfThbAET7qlkK9SeJA55ChnU6MYWBAJw3E9CTqkbw', '2021-05-21 20:54:48.380307'),
('e4ohjrt0mfp75rvvt7w2zdva0kaxatbx', '.eJxVjDsOgzAQBe-ydWQtWX8p03MGtGtbMUlkJD4V4u4BiYZ2Zt7bIPK0QLvtD-h5XUq_znnqhwQtWLgx4fjN9RTpw_U9qjjWZRpEnYm67Ky6MeXf62pvB4XncqyNQ5-ZG0NJc0CthSQ3XjRZMsFHI4jhmQw1zngKziJ5i6wPFpx4hP0P_3M5dw:1lhE1L:pCF_7DYsTZf30JdCo1htyn9cO1pAwDrgXElSNpiVTS0', '2021-05-14 16:17:07.381576'),
('hmewqya0vbbuaf28hxx6tgin0s4io6hh', '.eJxVjDsOwjAQBe_iGln-fyjpOYO1a69xADlSnFSIu0OkFNC-mXkvlmBbW9oGLWkq7MwkO_1uCPlBfQflDv028zz3dZmQ7wo_6ODXudDzcrh_Bw1G-9be6YJSZJLKgQ0GQaNQJEBVY7NAbXzUVlAONYLzFgiN8DW46hVEr9n7A9qpN5g:1lNe7c:0eIvdK_QQWSyxw-ovzDF0rmomia-0eVN19eeJ-OfnkE', '2021-04-03 16:06:40.574000'),
('iqyzuq6rs95tjbvdlkanjjen12n41tzu', 'eyJjYXJ0Ijp7IjE5Ijp7InF1YW50aXR5IjoxLCJpZCI6IjE5In19fQ:1lgtHw:QSOCTe26Th51oAhZkgqBOR0F8G4W7IHtSkWJOS93oZc', '2021-05-13 18:08:52.383724'),
('kp3w9dsys9qwggi8470wd2141aeookvv', 'eyJjYXJ0Ijp7fX0:1lqx0r:35LYPnBWWKsjziQFOmkkd8X-bzj4lpyEmX0an1uDp6s', '2021-06-10 12:08:49.835720'),
('sdrtcks9pwg7g8oadtk87fa0h7ezsvuw', '.eJxVjDsOwjAQBe_iGln-fyjpOYO1a69xADlSnFSIu0OkFNC-mXkvlmBbW9oGLWkq7MwkO_1uCPlBfQflDv028zz3dZmQ7wo_6ODXudDzcrh_Bw1G-9be6YJSZJLKgQ0GQaNQJEBVY7NAbXzUVlAONYLzFgiN8DW46hVEr9n7A9qpN5g:1lNbfm:SPz_MwUTKOA4nCFFy4ZEL-SYyhD4kNQD8CLnBgpRj4s', '2021-04-03 13:29:46.251000'),
('xlyrsd3ie3oydu5q5akp9mf88tysdavw', 'eyJjYXJ0Ijp7fX0:1lqyrU:M0_wGixfv0exPQGgVKBVEdtfT8voFKprkruNApTKQaQ', '2021-06-10 14:07:16.177176'),
('xqmlm1ritxedzs880asqhlnbwb99udrb', 'eyJjYXJ0Ijp7IjI1Ijp7InF1YW50aXR5IjoxLCJpZCI6IjI1In19fQ:1lhfYC:qqemzSaRK1nd9Nu2qkeBvMCAe-hClfW51AbNp_SEkzg', '2021-05-15 21:40:52.223701'),
('y2akkp7cxwai6j3hx66uw8u66g8uhrcm', '.eJxVjEEOwiAQRe_C2pDClAFcuvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWKE6_W6T04LaDfKd2m2Wa27pMUe6KPGiX1znz83K4fweVev3WRWvDCENSkMFoO7JyoBnROCKMuiTwBWgkr1x01hVG5220GTCqAZR4fwDJiTch:1lNd2o:LlwwX_9na24FuGkeaDLrvehwVUfesy6Btk59XV60Awc', '2021-04-03 14:57:38.935000'),
('yq9ibd5qnfq4gaetflvv2gq5cmrh6qur', 'eyJjYXJ0Ijp7fX0:1lgGHh:uZjp7ye7TPLaPoW1n21iYeka_S4Ew9FOGYEs5s5rAJg', '2021-05-12 00:30:01.687798'),
('ytob95grg3l8xhpe0tjiroclkerq3vb5', '.eJxVjEEOwiAQRe_C2pDClAFcuvcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXEWKE6_W6T04LaDfKd2m2Wa27pMUe6KPGiX1znz83K4fweVev3WRWvDCENSkMFoO7JyoBnROCKMuiTwBWgkr1x01hVG5220GTCqAZR4fwDJiTch:1lPBVU:QBK0FfBePMDB0x9R7ZbxH4DMcKkBdrMw_jUCe-7u4_g', '2021-04-07 21:57:40.534000'),
('yyleysds0ue3zloux7aix5g3b0eovnin', '.eJxVjDsOgzAQBe-ydWQtWX8p03MGtGtbMUlkJD4V4u4BiYZ2Zt7bIPK0QLvtD-h5XUq_znnqhwQtWLgx4fjN9RTpw_U9qjjWZRpEnYm67Ky6MeXf62pvB4XncqyNQ5-ZG0NJc0CthSQ3XjRZMsFHI4jhmQw1zngKziJ5i6wPFpx4hP0P_3M5dw:1lhJhN:X3oZmJmeyK5G5GnDyE8hA9-mWSDOEseN1tE9CYumRX8', '2021-05-14 22:20:53.274152'),
('z3uv9501tbnlv70fein8xz2ijb7xufzp', '.eJxVjDEOgzAMRe_iuYpQFacxY_eeIXLspKGtiERgQty9ILGw_vfeX0F4mqFftxsEXuYSlpamMCj0QHDZIss3jQfQD4_vaqSO8zREcyjmpM28qqbf83QvB4Vb2WtWyrFDEW-djUieMKuLJI-OMlrkzIrMKt6pkOKObOectyp4d5xg-wNQ0jwI:1lqyqC:SWi40EX6nFSMH12r5AJ94oGCSsQfTn_EV7G_7ts3-Yw', '2021-06-10 14:05:56.980285'),
('z4sjhnoiye9cd016eyvb9qqvx0g2dslq', '.eJxVjjsOgzAQRO-yNbKwjX-U6XMGtP4FksgoYIoI-e4xEUXSbPHezGh3GHDL47CtYRkmDz1IaH6ZRfcI6RD-juk2EzenvEyWHBFy2pVcZx-elzP7NzDiOtZ2ZEwEyVtHueeCqS5QzVmQUmhEaVl03ESOHRqqrVY6BqmNsspzaWnLaR11uGTod2DiuK8NU57yG3rWwPfzyksD1PxbetrKSykfVNpK-g:1lgGMK:WAdw5wzMRh-Jkfz7wrRr18XmHsVh_yDgAb3OoPw50h4', '2021-05-12 00:34:48.387977');

-- --------------------------------------------------------

--
-- Table structure for table `order_order`
--

DROP TABLE IF EXISTS `order_order`;
CREATE TABLE `order_order` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `zip_code` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `place` varchar(150) NOT NULL,
  `created_at` date NOT NULL,
  `paid_amount` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_order`
--

INSERT INTO `order_order` (`id`, `first_name`, `last_name`, `email`, `address`, `zip_code`, `phone`, `place`, `created_at`, `paid_amount`) VALUES
(1, 'Giorgi', 'Khitarishvili', 'giorgikhitarishvili123@gmail.com', 'Tbilisi', '0186', '591953681', 'qewqe', '2021-05-12', '2500.00'),
(2, 'Giorgi', 'Khitarishvili', 'giorgikhitarishvili123@gmail.com', 'Tbilisi', '0186', '591953681', 'qeqw', '2021-05-12', '2500.00'),
(3, 'giorgi', 'khitarishvili', 'giorgi.khitarishvili@iliauni.edu.ge', 'wqeqsadqw', 'qwe', '+995591953681', 'asweqnds nak', '2021-05-12', '2500.00'),
(4, 'giorgi', 'khitarishvili', 'giorgi.khitarishvili@iliauni.edu.ge', 'wqeqsadqw', 'qwe', '4127657822', 'asweqnds nak', '2021-05-12', '2500.00'),
(6, 'giorgi', 'khitarishvili', 'giorgi.khitarishvili@iliauni.edu.ge', 'wqeqsadqw', 'qwe', '+995591953681', 'asweqnds nak', '2021-05-13', '2500.00'),
(7, 'Giorgi', 'Khitarishvili', 'giorgikhitarishvili123@gmail.com', 'Tbilisi', '0186', '591953681', 'WW', '2021-05-13', '2500.00'),
(8, 'giorgi', 'khitarishvili', 'giorgi.khitarishvili@iliauni.edu.ge', 'wqeqsadqw', '13212', '+995591953681', 'asweqnds nak', '2021-05-14', '2500.00'),
(9, 'გიორგი', 'ხითარიშვილი', 'giorgi.khitarishvili@iliauni.edu.ge', 'თბილისი', '0800', '+995591953681', '#5', '2021-05-21', '2699.99'),
(10, 'გიორგი', 'ხითარიშვილი', 'giorgi.khitarishvili@iliauni.edu.ge', 'თბილისი', '0800', '+995591953681', '6', '2021-05-25', '199.99');

-- --------------------------------------------------------

--
-- Table structure for table `order_orderitem`
--

DROP TABLE IF EXISTS `order_orderitem`;
CREATE TABLE `order_orderitem` (
  `id` bigint(20) NOT NULL,
  `vendor_paid` tinyint(1) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_orderitem`
--

INSERT INTO `order_orderitem` (`id`, `vendor_paid`, `price`, `quantity`, `order_id`, `product_id`, `vendor_id`) VALUES
(1, 1, '2500.00', 1, 1, 19, 5),
(2, 0, '2500.00', 1, 2, 19, 5),
(3, 1, '2500.00', 1, 3, 19, 5),
(4, 0, '2500.00', 1, 4, 19, 5),
(6, 0, '2500.00', 1, 6, 25, 5),
(7, 0, '2500.00', 1, 7, 25, 5),
(8, 0, '2500.00', 1, 8, 19, 5),
(9, 0, '2500.00', 1, 9, 19, 5),
(10, 0, '199.99', 1, 9, 28, 5),
(11, 0, '199.99', 1, 10, 28, 5);

-- --------------------------------------------------------

--
-- Table structure for table `order_order_vendors`
--

DROP TABLE IF EXISTS `order_order_vendors`;
CREATE TABLE `order_order_vendors` (
  `id` int(11) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_order_vendors`
--

INSERT INTO `order_order_vendors` (`id`, `order_id`, `vendor_id`) VALUES
(1, 1, 5),
(2, 2, 5),
(3, 3, 5),
(4, 4, 5),
(6, 6, 5),
(7, 7, 5),
(8, 8, 5),
(9, 9, 5),
(11, 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `title`, `slug`, `ordering`) VALUES
(1, 'Laptop', 'laptop', 1),
(2, 'Headphone', 'headphone', 1),
(3, 'Keyboard & Mouse', 'keuboard_mouse', 2),
(6, 'Tv', 'tv', 3),
(7, 'Tablets', 'tablets', 4);

-- --------------------------------------------------------

--
-- Table structure for table `product_product`
--

DROP TABLE IF EXISTS `product_product`;
CREATE TABLE `product_product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `price` decimal(6,2) NOT NULL,
  `date_added` datetime(6) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_product`
--

INSERT INTO `product_product` (`id`, `title`, `slug`, `description`, `price`, `date_added`, `image`, `thumbnail`, `category_id`, `vendor_id`) VALUES
(19, 'Microsoft Surface Laptop 3 13.5 inches Intel i5/8GB RAM/256GB Cobalt Blue', 'microsoft-surface-laptop-3-135-inches-intel-i58gb-ram256gb-cobalt-blue', 'Microsoft Surface Laptop 3 features 10th generation Intel Core i5 processor, 13.5-inch PixelSense Touchscreen Display (2256 x 1504) resolution 256GB Solid State Drive, 8GB RAM Clean, elegant design thin and light, starting at just 2.76 pounds, Surface Laptop 2 fits easily in your bag, Graphics: Intel HD Graphics 620 Bluetooth 4.0, Wi-Fi: 802.11ac Wireless LAN, Surface Pen NOT Included USB 3.0, Mini DisplayPort, SD Card Slot., Windows 10 Home', '2500.00', '2021-03-20 16:29:16.507000', 'uploads/laptop_2.png', 'uploads/uploads/laptop_2.png', 1, 5),
(25, 'Microsoft Surface Laptop 3 13.5 inches Intel i5/8GB RAM/256GB Cobalt White', 'microsoft-surface-laptop-3-135-inches-intel-i58gb-ram256gb-cobalt-white', 'Microsoft Surface Laptop 3 features 10th generation Intel Core i5 processor, 13.5-inch PixelSense Touchscreen Display (2256 x 1504) resolution 256GB Solid State Drive, 8GB RAM Clean, elegant design thin and light, starting at just 2.76 pounds, Surface Laptop 2 fits easily in your bag, Graphics: Intel HD Graphics 620 Bluetooth 4.0, Wi-Fi: 802.11ac Wireless LAN, Surface Pen NOT Included USB 3.0, Mini DisplayPort, SD Card Slot., Windows 10 Home', '2500.00', '2021-03-20 16:29:16.507000', 'uploads/laptop_2.png', 'uploads/uploads/laptop_2.png', 1, 5),
(28, 'Sony ZX Series Wired On-Ear Headphones, Black MDR-ZX110', 'sennheiser-hd-450btnc-headphones-sennheiser-hd-450btnc', 'Bluetooth-compatible\r\nUp to 30 hours of battery life\r\nIncludes USB-C to USB-A cable, quick start guide and carry case\r\nNoise cancelling\r\nImported, China', '199.99', '2021-05-20 20:06:09.703494', 'uploads/Teal_and_Yellow_Headphones_Faux_OrganicAbstract_Technology__Gaming_Facebook_Shops_Cover.png', 'uploads/uploads/Teal_and_Yellow_Headphones_Faux_OrganicAbstract_Technology__Gaming_Faceb_wtr3gww.png', 2, 5),
(29, 'ტელევიზორის TCL 40S6500 (RT41KS-RU) LED 4K (3840 x 2160)', 'tcl-40s6500-rt41ks-ru', 'ტელევიზორის კლასი: LED\r\nეკრანის დიაგონალი: 43\" (109 სმ)\r\nეკრანის გაფართოება: FHD 1920x1080\r\nSmart ტექნოლოგია: კი\r\nSmart ტექნოლოგია\r\nსისტემა: Android 5.1.1\r\nოპერატიული მეხსიერება: 1 GB\r\nშიდა მეხსიერება: 8 GB', '1265.00', '2021-06-09 13:24:57.875793', 'uploads/image_2021-06-09_172455.png', 'uploads/uploads/image_2021-06-09_172455.png', 6, 7),
(30, 'ტელევიზორი VOX 50ADWD1B LED4K (3840 x 2160) ', 'vox-50adwd1b', 'ტელევიზორის კლასი: LED\r\nეკრანის დიაგონალი: 50\" (127 სმ)\r\nეკრანის გაფართოება: 4K (3840 x 2160)\r\nსერია: ADWD1B\r\nSmart TV: კი\r\nAndroid TV: კი\r\nვიდეო\r\nსიხშირე: 60ხმა\r\nხმის გამომავალი სიმძლავრე: 16W\r\nდინამიკების რაოდენობა: 2', '1319.00', '2021-06-09 13:38:59.049373', 'uploads/image_2021-06-09_173816.png', 'uploads/uploads/image_2021-06-09_173816.png', 6, 7),
(32, 'ტელევიზორის HDR TV LG 43LM6300 LED FULL HD (1920 x 1080)', 'lg-43lm6300', 'ტელევიზორის კლასი: LED\r\nტიპი: HDR TV\r\nეკრანის დიაგონალი: 43\" (109 სმ)\r\nეკრანის გაფართოება: FULL HD (1920 x 1080)\r\nSmart ტექნოლოგია: კი\r\n\r\nვიდეო\r\nHDR10 Pro\r\nHDR Effect\r\nUpscaler\r\nრეჟიმები: Vivid, Standard, Eco, Cinema, Sports, Game, HDR Effect, (ISF)Expert(Bright Room), (ISF)Expert(Dark Room)\r\n• კადრების განახლების სიხშირე: 60 Hz\r\n\r\nხმა\r\nხმის გამომავალი სიმძლავრე: 20 W\r\nტიპი: 2.0\r\nClear Voice III\r\nLG Sound Sync\r\nBluetooth Audio Playback\r\nSurround mode\r\nDTS დეკოდერი', '1439.00', '2021-06-09 13:48:29.226003', 'uploads/image_2021-06-09_174818.png', 'uploads/uploads/image_2021-06-09_174818.png', 6, 7),
(33, 'მაუსი KINGSTON HYPERX PULSEFIRE FPS PRO (HX-MC003B) USB 2.0', 'kingston-hyperx-pulsefire-fps-pro-hx-mc003b-usb-20', 'ტიპი: მაუსი\r\nდანიშნულება: თამაშებისთვის\r\nკომპიუტერთან შეერთება: სადენით\r\nინტერფეისი: USB 2.0\r\nსენსორის ტიპი: ოპტიკური\r\n\r\nფუნქციური მახასიათებლები\r\nღილაკების რაოდენობა: 6\r\nგორგოლაჭების რაოდენობა: 1\r\nDPI ღილაკი: კი', '184.00', '2021-06-09 13:53:18.796055', 'uploads/image_2021-06-09_175317.png', 'uploads/uploads/image_2021-06-09_175317.png', 3, 7),
(34, 'ASUS W5000 WIRELESS KEYBOARD & MOUSE GREY RF 2.4GHz', 'asus-w5000-wireless-keyboard-mouse-grey-rf-24ghz', '• ტიპი: კლავიატურა + მაუსი\r\n• კლავიატურის კავშირის ტექნოლოგია: Wireless RF 2.4GHz\r\n• ძირითადი მექანიზმი: მემბრანა\r\n\r\nფუნქციები და მახასიათებლები\r\n• ელემენტის ტიპი: მაუსი: AA * 1, კლავიატურა: AAA * 2\r\n• მულტიმედიის გასაღებები\r\n• პროფილის გასაღებები: მაღალი\r\n• მასალა: პოლიკარბონატი, პოლიურეთანი\r\n• Num Lock Pad\r\n\r\nმაუსის მახასიათებლები\r\n• მაუსის დაკავშირების ტექნოლოგია: Wireless \r\n• სენსორის ტიპი: ოპტიკური\r\n• მაუსის ღილაკების რაოდენობა: 2\r\n• მაქს სიჩქარე: 1600\r\nhttps://www.be.ge/product-188587.html', '164.00', '2021-06-09 13:57:18.025469', 'uploads/image_2021-06-09_175631.png', 'uploads/uploads/image_2021-06-09_175631.png', 3, 7),
(36, 'LENOVO YOGA SMART TAB 10.1 LTE (ZA540009RU) 64GB GREY (1920 x 1200) IPS LCD', 'lenovo-yoga-smart-tab-101-lte-za540009ru-64gb-grey-1920-x-1200-ips-lcd', 'სტანდარტი\r\n2G: კი\r\n3G: კი\r\n4G: LTE\r\nSIM ბარათის რაოდენობა: 1\r\n\r\nეკრანი\r\nდიაგონალი: 10.1\"\r\nგაფართოება: 1920 x 1200\r\nმატრიცის ტიპი: IPS LCD\r\n• დიუმზე პიქსელების რაოდენობა (PPI): 224\r\n\r\nპროგრამული უზრუნველყოფა\r\nოპერაციული სისტემა: Android v9.0 (Pie)\r\n\r\nპროცესორი\r\nპროცესორის მწარმოებელი: Qualcomm\r\nპროცესორის მოდელი: SDM439 Snapdragon 439\r\nბირთვების რაოდენობა: 8 სიხშირე: 2 x 2.0 GHz + 6 x 1.45 GHz\r\nგრაფიკული ბირთვი: Adreno 505\r\n\r\nმეხსიერება\r\nოპერატიული მეხსიერება: 4 GB\r\nშიდა მეხსიერების მოცულობა: 64 GB\r\nმეხსიერების ბარათის ტიპი: microSD\r\nმეხსიერების მაქსიმალური მოცულობა: 256', '1051.00', '2021-06-09 14:04:05.969127', 'uploads/image_2021-06-09_180357.png', 'uploads/uploads/image_2021-06-09_180357.png', 7, 8);

-- --------------------------------------------------------

--
-- Table structure for table `product_productimage`
--

DROP TABLE IF EXISTS `product_productimage`;
CREATE TABLE `product_productimage` (
  `id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_productimage`
--

INSERT INTO `product_productimage` (`id`, `image`, `thumbnail`, `product_id`) VALUES
(29, 'uploads/image_2021-05-21_000728.png', 'uploads/uploads/image_2021-05-21_000728.png', 28),
(30, 'uploads/image_2021-05-21_001411.png', 'uploads/uploads/image_2021-05-21_001411.png', 28),
(31, '', '', 29),
(32, 'uploads/image_2021-06-09_173456.png', 'uploads/uploads/image_2021-06-09_173456.png', 29),
(33, '', '', 29),
(34, '', '', 29),
(35, 'uploads/image_2021-06-09_173909.png', 'uploads/uploads/image_2021-06-09_173909.png', 30),
(36, 'uploads/image_2021-06-09_173932.png', 'uploads/uploads/image_2021-06-09_173932.png', 30),
(37, '', '', 29),
(38, '', '', 29),
(39, '', '', 32),
(40, 'uploads/image_2021-06-09_175027.png', 'uploads/uploads/image_2021-06-09_175027.png', 32),
(41, 'uploads/image_2021-06-09_175040.png', 'uploads/uploads/image_2021-06-09_175040.png', 32),
(42, 'uploads/image_2021-06-09_175051.png', 'uploads/uploads/image_2021-06-09_175051.png', 32),
(43, 'uploads/image_2021-06-09_175327.png', '', 33),
(44, 'uploads/image_2021-06-09_175340.png', '', 33),
(47, 'uploads/image_2021-06-09_180434.png', 'uploads/uploads/image_2021-06-09_180434.png', 36),
(48, 'uploads/image_2021-06-09_180444.png', 'uploads/uploads/image_2021-06-09_180444.png', 36),
(49, 'uploads/image_2021-06-09_180456.png', 'uploads/uploads/image_2021-06-09_180456.png', 36);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_vendor`
--

DROP TABLE IF EXISTS `vendor_vendor`;
CREATE TABLE `vendor_vendor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor_vendor`
--

INSERT INTO `vendor_vendor` (`id`, `name`, `created_by_id`, `created_at`) VALUES
(5, 'Giorgi Khitarishvili', 6, '2021-03-20 14:55:40.437000'),
(6, 'Giorgi Khitarishvili ', 7, '2021-05-13 14:20:12.495739'),
(7, 'nino_sh', 8, '2021-06-09 13:22:33.924410'),
(8, 'tatia_oq', 9, '2021-06-09 13:58:25.703014');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `order_order`
--
ALTER TABLE `order_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_orderitem`
--
ALTER TABLE `order_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_orderitem_order_id_aba34f44_fk_order_order_id` (`order_id`),
  ADD KEY `order_orderitem_product_id_c5c6b07a_fk_product_product_id` (`product_id`),
  ADD KEY `order_orderitem_vendor_id_a78d37bb_fk_vendor_vendor_id` (`vendor_id`);

--
-- Indexes for table `order_order_vendors`
--
ALTER TABLE `order_order_vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_order_vendors_order_id_vendor_id_564c53ed_uniq` (`order_id`,`vendor_id`),
  ADD KEY `order_order_vendors_vendor_id_cafcedc5_fk_vendor_vendor_id` (`vendor_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category_slug_e1f8ccc4` (`slug`);

--
-- Indexes for table `product_product`
--
ALTER TABLE `product_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_product_category_id_0c725779_fk_product_category_id` (`category_id`),
  ADD KEY `product_product_vendor_id_49ed2699_fk_vendor_vendor_id` (`vendor_id`),
  ADD KEY `product_product_slug_76cde0ae` (`slug`);

--
-- Indexes for table `product_productimage`
--
ALTER TABLE `product_productimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_productimage_product_id_544084bb_fk_product_product_id` (`product_id`);

--
-- Indexes for table `vendor_vendor`
--
ALTER TABLE `vendor_vendor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `created_by_id` (`created_by_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_order`
--
ALTER TABLE `order_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_orderitem`
--
ALTER TABLE `order_orderitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `order_order_vendors`
--
ALTER TABLE `order_order_vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_product`
--
ALTER TABLE `product_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `product_productimage`
--
ALTER TABLE `product_productimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `vendor_vendor`
--
ALTER TABLE `vendor_vendor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `order_orderitem`
--
ALTER TABLE `order_orderitem`
  ADD CONSTRAINT `order_orderitem_order_id_aba34f44_fk_order_order_id` FOREIGN KEY (`order_id`) REFERENCES `order_order` (`id`),
  ADD CONSTRAINT `order_orderitem_product_id_c5c6b07a_fk_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`),
  ADD CONSTRAINT `order_orderitem_vendor_id_a78d37bb_fk_vendor_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_vendor` (`id`);

--
-- Constraints for table `order_order_vendors`
--
ALTER TABLE `order_order_vendors`
  ADD CONSTRAINT `order_order_vendors_order_id_ca32c08e_fk_order_order_id` FOREIGN KEY (`order_id`) REFERENCES `order_order` (`id`),
  ADD CONSTRAINT `order_order_vendors_vendor_id_cafcedc5_fk_vendor_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_vendor` (`id`);

--
-- Constraints for table `product_product`
--
ALTER TABLE `product_product`
  ADD CONSTRAINT `product_product_category_id_0c725779_fk_product_category_id` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`),
  ADD CONSTRAINT `product_product_vendor_id_49ed2699_fk_vendor_vendor_id` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_vendor` (`id`);

--
-- Constraints for table `product_productimage`
--
ALTER TABLE `product_productimage`
  ADD CONSTRAINT `product_productimage_product_id_544084bb_fk_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`);

--
-- Constraints for table `vendor_vendor`
--
ALTER TABLE `vendor_vendor`
  ADD CONSTRAINT `vendor_vendor_created_by_id_cc25b777_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
