-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 31, 2022 at 03:29 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `main-hr-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `installer`
--

DROP TABLE IF EXISTS `installer`;
CREATE TABLE IF NOT EXISTS `installer` (
  `id` int(1) NOT NULL,
  `installer_flag` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts`
--

DROP TABLE IF EXISTS `tbl_accounts`;
CREATE TABLE IF NOT EXISTS `tbl_accounts` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `balance` decimal(18,2) NOT NULL DEFAULT 0.00,
  `permission` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_accounts`
--

INSERT INTO `tbl_accounts` (`account_id`, `account_name`, `description`, `balance`, `permission`) VALUES
(1, 'مكتب تكسي الرافدين', '', '-1150.00', 'all'),
(2, 'رواتب موظفين ', '', '-9150.00', 'all'),
(3, 'كهرباء', '', '-680.00', 'all'),
(4, 'Bilsan Business Solutions', '', '174970.00', 'all'),
(5, 'قرطاسية', '', '-480.00', 'all'),
(6, 'تنظيف عمارة', '', '0.00', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_account_details`
--

DROP TABLE IF EXISTS `tbl_account_details`;
CREATE TABLE IF NOT EXISTS `tbl_account_details` (
  `account_details_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `fullname` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employment_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'en_US',
  `address` varchar(64) COLLATE utf8_unicode_ci DEFAULT '-',
  `phone` varchar(32) COLLATE utf8_unicode_ci DEFAULT '-',
  `mobile` varchar(32) COLLATE utf8_unicode_ci DEFAULT '',
  `skype` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `language` varchar(40) COLLATE utf8_unicode_ci DEFAULT 'english',
  `designations_id` int(11) DEFAULT 0,
  `avatar` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'uploads/default_avatar.jpg',
  `joining_date` date DEFAULT NULL,
  `present_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maratial_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passport` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direction` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`account_details_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_account_details`
--

INSERT INTO `tbl_account_details` (`account_details_id`, `user_id`, `fullname`, `employment_id`, `company`, `city`, `country`, `locale`, `address`, `phone`, `mobile`, `skype`, `language`, `designations_id`, `avatar`, `joining_date`, `present_address`, `date_of_birth`, `gender`, `maratial_status`, `father_name`, `mother_name`, `passport`, `direction`) VALUES
(1, 1, 'Eng. Muhammad Abu Ali', NULL, NULL, NULL, NULL, 'en_US', '-', '0562111345', '', '', 'english', 0, 'uploads/photo_2021-05-21_19-36-15.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 78, 'shahd alaa jamil enayah', '402096770', '0', NULL, NULL, 'en_US', '-', '-0597075992', '0595788188', '', 'english', 2, 'uploads/default_avatar.jpg', '2021-04-17', '', '1996-11-14', 'female', 'unmarried', 'alaa', 'amal', '', 'ltr'),
(89, 79, 'Raneem Hmadi Sabre Alawy', '', '0', NULL, NULL, 'en_US', '-', '-', '', '', 'english', 3, 'uploads/default_avatar.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(90, 80, 'hadeel nabil mustafa isifan', '403838386', '0', NULL, NULL, 'en_US', '-', '-0592888049', '0598919811', '', 'english', 3, 'uploads/default_avatar.jpg', '0000-11-30', 'Ramallah', '1998-02-19', 'female', 'unmarried', 'نبيل', 'سوسن', '', 'ltr'),
(91, 81, 'Rand Bader', '', '0', NULL, NULL, 'en_US', '-', '-', '', '', 'english', 3, 'uploads/default_avatar.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(92, 82, 'Rasha Naim Gabr Redwan', '', '0', NULL, NULL, 'en_US', '-', '-', '', '', 'english', 3, 'uploads/default_avatar.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(93, 83, 'Asmaa Ahmed Mohammed Mutier', '', '0', NULL, NULL, 'en_US', '-', '-', '', '', 'english', 3, 'uploads/default_avatar.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(94, 84, 'أ. جودت صيصان ', NULL, '114', NULL, NULL, 'en_US', '-', '0598504200', '', '', 'english', 0, 'uploads/default_avatar.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(96, 86, 'Hania Al Khairi', NULL, '110', NULL, NULL, 'en_US', '-', '', '0599579039', '', 'english', 0, 'uploads/default_avatar.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(97, 87, 'أ.وليد ابراهيم الهودلي', NULL, '120', NULL, NULL, 'en_US', '-', '', '', '', 'english', 0, 'uploads/default_avatar.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(98, 88, 'Aseel Rezeq Hussein Marabeh', '860094218', '0', NULL, NULL, 'en_US', '-', '0599740369', '', '', 'english', 2, 'uploads/photo_2021-05-25_18-06-31.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(99, 89, 'Mohamad Jamal Mustafa Isefan', '318159936', '0', NULL, NULL, 'en_US', '-', '0527726892', '0592888049', '', 'english', 3, 'uploads/default_avatar.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(100, 90, 'Dr. Atef Hasan Hussein Remawi', '954294799', '0', NULL, NULL, 'en_US', '-', '0598567197', '', '', 'english', 1, 'uploads/default_avatar.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr'),
(101, 92, 'devarabid', NULL, '134', NULL, NULL, 'en_US', '-', '-', '', '', 'english', 0, 'uploads/default_avatar.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ltr');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activities`
--

DROP TABLE IF EXISTS `tbl_activities`;
CREATE TABLE IF NOT EXISTS `tbl_activities` (
  `activities_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `module` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_field_id` int(11) DEFAULT NULL,
  `activity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `icon` varchar(32) COLLATE utf8_unicode_ci DEFAULT 'fa-coffee',
  `link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `value2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`activities_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1031 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_activities`
--

INSERT INTO `tbl_activities` (`activities_id`, `user`, `module`, `module_field_id`, `activity`, `activity_date`, `icon`, `link`, `value1`, `value2`, `deleted`) VALUES
(41, 1, 'settings', 1, 'activity_password_update', '2020-06-05 15:26:33', 'fa-coffee', NULL, 'admin', NULL, 0),
(42, 1, 'settings', 1, 'activity_save_general_settings', '2020-06-05 15:29:36', 'fa-coffee', NULL, 'DevBox Business Solutions', NULL, 0),
(43, 1, 'settings', 1, 'activity_save_theme_settings', '2020-06-05 15:31:13', 'fa-coffee', NULL, 'demo', NULL, 0),
(44, 1, 'settings', 1, 'activity_save_theme_settings', '2020-06-05 15:32:54', 'fa-coffee', NULL, 'demo', NULL, 0),
(45, 1, 'settings', 1, 'activity_save_theme_settings', '2020-06-05 15:33:35', 'fa-coffee', NULL, 'demo', NULL, 0),
(46, 1, 'settings', 1, 'activity_update_profile', '2020-06-05 15:36:00', 'fa-coffee', NULL, 'Eng. Muhammad Abu Ali', NULL, 0),
(47, 1, 'settings', 1, 'activity_update_profile', '2020-06-05 15:36:05', 'fa-coffee', NULL, 'Eng. Muhammad Abu Ali', NULL, 0),
(48, 1, 'settings', 1, 'activity_save_system_settings', '2020-06-05 15:37:08', 'fa-coffee', NULL, 'english', NULL, 0),
(49, 1, 'settings', 1, 'activity_save_general_settings', '2020-06-05 15:37:28', 'fa-coffee', NULL, 'DevBox Business Solutions', NULL, 0),
(50, 1, 'settings', 1, 'Changed email', '2020-06-05 15:38:43', 'fa-coffee', NULL, 'demo@demo.com', 'm.abuali@devboxplus.com', 0),
(51, 1, 'settings', 1, 'activity_username_updated', '2020-06-05 15:39:17', 'fa-coffee', NULL, 'admin', 'mabuali', 0),
(52, 1, 'settings', 1, 'activity_save_theme_settings', '2020-06-05 15:59:28', 'fa-coffee', NULL, 'DevBox CRM', NULL, 0),
(53, 1, 'settings', 1, 'activity_save_theme_settings', '2020-06-05 15:59:48', 'fa-coffee', NULL, 'DevBox CRM', NULL, 0),
(54, 1, 'settings', 1, 'activity_save_theme_settings', '2020-06-05 16:01:29', 'fa-coffee', NULL, 'DevBox CRM', NULL, 0),
(55, 1, 'settings', 1, 'activity_save_theme_settings', '2020-06-05 16:01:54', 'fa-coffee', NULL, 'DevBox CRM', NULL, 0),
(56, 1, 'departments', NULL, 'activity_added_a_department', '2020-06-05 16:15:55', 'fa-coffee', NULL, 'Management', NULL, 0),
(57, 1, 'user', 3, 'activity_added_new_user', '2020-06-05 16:16:03', 'fa-user', NULL, 'nadeem', NULL, 0),
(58, 1, 'user', 3, 'activity_added_new_user', '2020-06-05 16:16:23', 'fa-user', NULL, 'nadeem', NULL, 0),
(59, 1, 'settings', 1, 'activity_save_theme_settings', '2020-06-05 16:19:41', 'fa-coffee', NULL, 'DevBox CRM', NULL, 0),
(71, 1, 'client', 2, 'activity_update_company', '2020-06-08 11:38:25', 'fa-user', NULL, 'PRCS Al Bireh', NULL, 0),
(72, 1, 'client', 2, 'activity_added_new_company', '2020-06-08 11:38:49', 'fa-user', NULL, 'PRCS Al Bireh', NULL, 0),
(73, 1, 'projects', 1, 'activity_save_project', '2020-06-08 11:40:29', 'fa-folder-open-o', 'admin/projects/project_details/1', 'PRCS Hospital', NULL, 0),
(74, 1, 'client', NULL, 'activity_added_new_contact', '2020-06-08 11:42:38', 'fa-user', NULL, 'Ali Fallaheen', NULL, 0),
(82, 1, 'departments', NULL, 'activity_added_a_department', '2020-06-22 07:24:17', 'fa-coffee', NULL, 'Sales', NULL, 0),
(83, 1, 'user', 5, 'activity_added_new_user', '2020-06-22 07:26:22', 'fa-user', NULL, 'Ajadallah', NULL, 0),
(84, 1, 'user', 5, 'activity_added_new_user', '2020-06-22 07:26:35', 'fa-user', NULL, 'Ajadallah', NULL, 0),
(85, 1, 'user', 5, 'activity_change_status', '2020-06-22 12:39:51', 'fa-user', NULL, 'Ajadallah Active', NULL, 0),
(86, 1, 'user', 5, 'activity_added_new_user', '2020-06-22 12:40:07', 'fa-user', NULL, 'Ajadallah', NULL, 0),
(93, 1, 'settings', 1, 'activity_save_general_settings', '2020-11-13 15:14:24', 'fa-coffee', NULL, 'Bilsan Business Solutions', NULL, 0),
(94, 1, 'settings', 1, 'activity_save_theme_settings', '2020-11-13 15:15:13', 'fa-coffee', NULL, 'DevBox CRM', NULL, 0),
(95, 1, 'settings', 1, 'activity_save_theme_settings', '2020-11-13 15:15:53', 'fa-coffee', NULL, 'DevBox CRM', NULL, 0),
(96, 1, 'settings', 1, 'activity_save_theme_settings', '2020-11-13 15:16:23', 'fa-coffee', NULL, 'Bilsan CRM', NULL, 0),
(97, 1, 'projects', 1, 'activity_project_deleted', '2020-11-13 15:16:48', 'fa-folder-open-o', NULL, 'PRCS Hospital', NULL, 0),
(98, 1, 'projects', 2, 'activity_project_deleted', '2020-11-13 15:16:50', 'fa-folder-open-o', NULL, 'Patient.Devbox', NULL, 0),
(99, 1, 'projects', 3, 'activity_project_deleted', '2020-11-13 15:16:53', 'fa-folder-open-o', NULL, 'Patient.Devbox', NULL, 0),
(100, 1, 'projects', 4, 'activity_project_deleted', '2020-11-13 15:16:55', 'fa-folder-open-o', NULL, 'Patient.Devbox', NULL, 0),
(101, 1, 'departments', NULL, 'activity_added_a_department', '2020-11-13 16:23:51', 'fa-coffee', NULL, 'Management', NULL, 0),
(102, 1, 'user', 8, 'activity_change_status', '2020-11-13 16:24:44', 'fa-user', NULL, 'Waleed Atwan Active', NULL, 0),
(103, 1, 'user', 7, 'activity_change_status', '2020-11-13 16:25:25', 'fa-user', NULL, 'Anwar Hammad  Active', NULL, 0),
(104, 1, 'user', 9, 'activity_change_status', '2020-11-13 16:25:26', 'fa-user', NULL, 'Razansagg Active', NULL, 0),
(105, 1, 'user', 7, 'activity_added_new_user', '2020-11-13 16:30:25', 'fa-user', NULL, 'Anwar Hammad ', NULL, 0),
(106, 1, 'user', 11, 'activity_change_status', '2020-11-13 16:30:35', 'fa-user', NULL, 'odehdalia Active', NULL, 0),
(107, 1, 'user', 9, 'activity_added_new_user', '2020-11-13 16:30:53', 'fa-user', NULL, 'Razansagg', NULL, 0),
(108, 1, 'user', 11, 'activity_added_new_user', '2020-11-13 16:31:09', 'fa-user', NULL, 'odehdalia', NULL, 0),
(110, 1, 'user', 7, 'activity_added_new_user', '2020-11-13 16:33:56', 'fa-user', NULL, 'Anwar Hammad ', NULL, 0),
(116, 1, 'client', 1, 'activity_deleted_client', '2020-11-13 19:18:31', 'fa-user', NULL, NULL, NULL, 0),
(117, 1, 'client', 1, 'activity_deleted_client', '2020-11-13 19:18:31', 'fa-user', NULL, NULL, NULL, 0),
(118, 1, 'client', 1, 'activity_deleted_client', '2020-11-13 19:18:31', 'fa-user', NULL, NULL, NULL, 0),
(119, 1, 'client', 1, 'activity_deleted_client', '2020-11-13 19:18:31', 'fa-user', NULL, NULL, NULL, 0),
(120, 1, 'client', 1, 'activity_deleted_client', '2020-11-13 19:18:31', 'fa-user', NULL, NULL, NULL, 0),
(121, 1, 'client', 1, 'activity_deleted_client', '2020-11-13 19:18:42', 'fa-user', NULL, NULL, NULL, 0),
(122, 1, 'client', 1, 'activity_deleted_client', '2020-11-13 19:18:42', 'fa-user', NULL, 'ali', NULL, 0),
(123, 1, 'client', 1, 'activity_deleted_client', '2020-11-13 19:18:42', 'fa-user', NULL, NULL, NULL, 0),
(124, 1, 'client', 1, 'activity_deleted_client', '2020-11-13 19:18:42', 'fa-user', NULL, NULL, NULL, 0),
(125, 1, 'client', 1, 'activity_deleted_client', '2020-11-13 19:18:42', 'fa-user', NULL, NULL, NULL, 0),
(126, 1, 'client', 1, 'activity_deleted_client', '2020-11-13 19:18:50', 'fa-user', NULL, 'Bilsan ', NULL, 0),
(127, 1, 'client', 1, 'activity_deleted_client', '2020-11-13 19:18:50', 'fa-user', NULL, NULL, NULL, 0),
(128, 1, 'client', 1, 'activity_deleted_client', '2020-11-13 19:18:50', 'fa-user', NULL, 'Devbox', NULL, 0),
(129, 1, 'client', 1, 'activity_deleted_client', '2020-11-13 19:18:50', 'fa-user', NULL, 'PRCS Al Bireh', NULL, 0),
(130, 1, 'user', 12, 'activity_change_status', '2020-11-14 08:54:45', 'fa-user', NULL, 'hanwar Active', NULL, 0),
(131, 1, 'user', 12, 'activity_added_new_user', '2020-11-14 08:55:03', 'fa-user', NULL, 'hanwar', NULL, 0),
(133, 1, 'projects', 6, 'activity_save_project', '2020-11-14 15:23:44', 'fa-folder-open-o', 'admin/projects/project_details/6', 'JCIA', NULL, 0),
(134, 1, 'settings', 2, 'customer_group_added', '2020-11-14 15:24:59', 'fa-coffee', NULL, 'University', NULL, 0),
(135, 1, 'client', 22, 'activity_update_company', '2020-11-14 15:25:09', 'fa-user', NULL, 'الجامعة العربية الامريكية - فلسطين ', NULL, 0),
(136, 1, 'client', NULL, 'activity_added_new_contact', '2020-11-14 15:27:32', 'fa-user', NULL, 'Dr. Muhammad Asia ', NULL, 0),
(137, 1, 'client', 1, 'activity_deleted_client', '2020-11-14 15:28:16', 'fa-user', NULL, 'Razan Abu Ghalia', NULL, 0),
(139, 1, 'user', 11, 'activity_added_new_user', '2020-11-14 15:33:40', 'fa-user', NULL, 'odehdalia', NULL, 0),
(140, 1, 'user', 9, 'activity_added_new_user', '2020-11-14 15:34:13', 'fa-user', NULL, 'Razansagg', NULL, 0),
(154, 1, 'user', 9, 'activity_change_status', '2020-11-19 08:12:47', 'fa-user', NULL, 'Razansagg Deactive', NULL, 0),
(155, 1, 'user', 11, 'activity_change_status', '2020-11-19 08:12:49', 'fa-user', NULL, 'odehdalia Deactive', NULL, 0),
(162, 1, 'projects', 8, 'activity_update_project', '2020-11-19 11:16:32', 'fa-folder-open-o', 'admin/projects/project_details/8', 'عدالة - لادارة مكاتب المحاماة -', NULL, 0),
(163, 1, 'projects', 9, 'activity_save_project', '2020-11-19 12:26:50', 'fa-folder-open-o', 'admin/projects/project_details/9', 'PRCS - مستشفى  جمعية الهلال الاحمر ', NULL, 0),
(164, 1, 'tasks', 3, 'activity_update_task', '2020-11-19 12:28:45', 'fa-tasks', 'admin/tasks/view_task_details/3', 'HIS New Installation', NULL, 0),
(165, 1, 'tasks', 4, 'activity_update_task', '2020-11-19 12:29:33', 'fa-tasks', 'admin/tasks/view_task_details/4', 'ERP Installation ', NULL, 0),
(166, 1, 'tasks', 5, 'activity_update_task', '2020-11-19 12:30:22', 'fa-tasks', 'admin/tasks/view_task_details/5', 'ربط شاشات النظام الخاص ب ERP ', NULL, 0),
(167, 1, 'tasks', 6, 'activity_update_task', '2020-11-19 12:32:11', 'fa-tasks', 'admin/tasks/view_task_details/6', 'ERP Build Reports', NULL, 0),
(168, 1, 'tasks', 7, 'activity_update_task', '2020-11-19 12:36:11', 'fa-tasks', 'admin/tasks/view_task_details/7', 'خطوط عريضة لاتفاقية التفاهم  ', NULL, 0),
(169, 1, 'tasks', 7, 'activity_update_task', '2020-11-19 12:36:58', 'fa-tasks', 'admin/tasks/view_task_details/7', 'خطوط عريضة لاتفاقية التفاهم  ', NULL, 0),
(170, 1, 'tasks', 8, 'activity_update_task', '2020-11-19 12:37:42', 'fa-tasks', 'admin/tasks/view_task_details/8', 'عرض سعر لمستلزمات المشروع  ', NULL, 0),
(171, 1, 'tasks', 9, 'activity_update_task', '2020-11-19 12:38:51', 'fa-tasks', 'admin/tasks/view_task_details/9', 'ارسال التفاصيل للاخ  سليم العتيبي  لبدء كتابة الدراسة للمانح', NULL, 0),
(172, 1, 'projects', 10, 'activity_save_project', '2020-11-19 12:42:30', 'fa-folder-open-o', 'admin/projects/project_details/10', 'تدريب و تأهيل قطاع القضاء مع معهد التدريب القضائي ', NULL, 0),
(174, 1, 'tasks', 10, 'activity_update_task', '2020-11-19 20:55:30', 'fa-tasks', 'admin/tasks/view_task_details/10', 'تحضير اجتماع  مع الاخت نائلة الديك  من خلال الاخ فواز البرغوثي ', NULL, 0),
(175, 1, 'projects', 10, 'activity_update_notes', '2020-11-19 20:56:17', 'fa-folder-open-o', 'admin/projects/project_details/10/8', '<div xss=removed>يرجى تحديد  الدورات اللازمة لتوقيع اتفاقية شراكة و تعاون </div>', NULL, 0),
(176, 1, 'projects', 6, 'activity_update_project', '2020-11-21 08:28:21', 'fa-folder-open-o', 'admin/projects/project_details/6', 'JCIA', NULL, 0),
(177, 1, 'projects', 6, 'activity_update_project', '2020-11-21 08:28:40', 'fa-folder-open-o', 'admin/projects/project_details/6', 'JCIA', NULL, 0),
(178, 1, 'projects', 5, 'activity_project_deleted', '2020-11-21 08:29:57', 'fa-folder-open-o', NULL, 'QM&PST - and CPHQ', NULL, 0),
(187, 1, 'user', 17, 'activity_change_status', '2020-11-21 10:16:19', 'fa-user', NULL, 'hatvision Active', NULL, 0),
(188, 1, 'projects', 11, 'activity_save_project', '2020-11-21 10:18:15', 'fa-folder-open-o', 'admin/projects/project_details/11', 'Hatvision Website', NULL, 0),
(189, 1, 'settings', 3, 'customer_group_added', '2020-11-22 07:49:45', 'fa-coffee', NULL, 'Hospital', NULL, 0),
(248, 1, 'user', 32, 'activity_change_status', '2020-11-25 09:07:00', 'fa-user', NULL, 'farah  Active', NULL, 0),
(249, 1, 'user', 32, 'activity_added_new_user', '2020-11-25 09:09:08', 'fa-user', NULL, 'farah ', NULL, 0),
(250, 1, 'user', 32, 'activity_added_new_user', '2020-11-25 09:09:24', 'fa-user', NULL, 'farah ', NULL, 0),
(266, 1, 'projects', 11, 'activity_new_project_attachment', '2020-12-01 11:40:27', 'fa-folder-open-o', 'admin/projects/project_details/11/4', 'Products Final Sheet 01/12/2020', NULL, 0),
(267, 1, 'projects', 11, 'activity_update_notes', '2020-12-01 11:40:41', 'fa-folder-open-o', 'admin/projects/project_details/11/8', 'https://compressor.io/', NULL, 0),
(268, 1, 'projects', 9, 'activity_project_deleted', '2020-12-02 17:37:07', 'fa-folder-open-o', NULL, 'PRCS - مستشفى  جمعية الهلال الاحمر ', NULL, 0),
(269, 1, 'projects', 12, 'activity_save_project', '2020-12-02 18:29:12', 'fa-folder-open-o', 'admin/projects/project_details/12', 'iClinic', NULL, 0),
(272, 1, 'user', 38, 'activity_change_status', '2020-12-13 11:44:59', 'fa-user', NULL, 'IECT Active', NULL, 0),
(273, 1, 'user', 39, 'activity_change_status', '2020-12-13 11:56:48', 'fa-user', NULL, 'Saleem101 Active', NULL, 0),
(274, 1, 'user', 38, 'activity_added_new_user', '2020-12-13 11:57:11', 'fa-user', NULL, 'IECT', NULL, 0),
(275, 1, 'user', 39, 'activity_added_new_user', '2020-12-13 11:59:35', 'fa-user', NULL, 'Saleem101', NULL, 0),
(276, 1, 'user', 11, 'activity_change_status', '2020-12-13 12:00:14', 'fa-user', NULL, '1', NULL, 0),
(277, 1, 'user', 40, 'activity_change_status', '2020-12-17 07:12:26', 'fa-user', NULL, 'shamshajyaseen Active', NULL, 0),
(278, 1, 'user', 41, 'activity_change_status', '2020-12-17 07:12:27', 'fa-user', NULL, 'halaaladam Active', NULL, 0),
(279, 1, 'user', 40, 'activity_added_new_user', '2020-12-17 07:12:46', 'fa-user', NULL, 'shamshajyaseen', NULL, 0),
(280, 1, 'user', 41, 'activity_added_new_user', '2020-12-17 07:13:01', 'fa-user', NULL, 'halaaladam', NULL, 0),
(281, 1, 'user', 42, 'activity_change_status', '2020-12-17 09:51:09', 'fa-user', NULL, 'bahaadwekat Active', NULL, 0),
(282, 1, 'user', 42, 'activity_added_new_user', '2020-12-17 09:51:22', 'fa-user', NULL, 'bahaadwekat', NULL, 0),
(283, 1, 'user', 32, 'activity_change_status', '2020-12-18 12:44:36', 'fa-user', NULL, 'farah  Deactive', NULL, 0),
(284, 1, 'user', 43, 'activity_change_status', '2020-12-18 12:53:50', 'fa-user', NULL, 'tala Active', NULL, 0),
(285, 1, 'user', 43, 'activity_added_new_user', '2020-12-18 12:54:02', 'fa-user', NULL, 'tala', NULL, 0),
(286, 1, 'account', 1, 'activity_save_account', '2020-12-26 15:17:15', 'fa-circle-o', NULL, 'مكتب تكسي الرافدين', NULL, 0),
(287, 1, 'settings', 1, 'activity_added_a_expense_category', '2020-12-26 15:17:37', 'fa-coffee', NULL, 'مواصلات', NULL, 0),
(288, 1, 'settings', 14, 'activity_delete_a_method', '2020-12-26 15:21:05', 'fa-coffee', NULL, 'ASE', NULL, 0),
(289, 1, 'settings', 13, 'activity_delete_a_method', '2020-12-26 15:21:07', 'fa-coffee', NULL, 'asss', NULL, 0),
(290, 1, 'settings', 12, 'activity_delete_a_method', '2020-12-26 15:21:10', 'fa-coffee', NULL, 'aaaaa', NULL, 0),
(291, 1, 'settings', 11, 'activity_delete_a_method', '2020-12-26 15:21:12', 'fa-coffee', NULL, 'ass', NULL, 0),
(292, 1, 'settings', 10, 'activity_delete_a_method', '2020-12-26 15:21:15', 'fa-coffee', NULL, 'OKSSSS', NULL, 0),
(293, 1, 'settings', 9, 'activity_delete_a_method', '2020-12-26 15:21:17', 'fa-coffee', NULL, 'by hand', NULL, 0),
(294, 1, 'settings', 8, 'activity_delete_a_method', '2020-12-26 15:21:20', 'fa-coffee', NULL, 'a', NULL, 0),
(295, 1, 'settings', 7, 'activity_delete_a_method', '2020-12-26 15:21:23', 'fa-coffee', NULL, 'NOa', NULL, 0),
(296, 1, 'settings', 6, 'activity_delete_a_method', '2020-12-26 15:21:30', 'fa-coffee', NULL, 'NO', NULL, 0),
(297, 1, 'settings', 3, 'activity_delete_a_method', '2020-12-26 15:21:35', 'fa-coffee', NULL, 'Payoneer', NULL, 0),
(298, 1, 'settings', 1, 'activity_delete_a_method', '2020-12-26 15:21:38', 'fa-coffee', NULL, 'Online', NULL, 0),
(299, 1, 'settings', 2, 'activity_delete_a_method', '2020-12-26 15:21:41', 'fa-coffee', NULL, 'PayPal', NULL, 0),
(300, 1, 'settings', 15, 'activity_added_a_payment_method', '2020-12-26 15:23:32', 'fa-coffee', NULL, 'Bank Paper ', NULL, 0),
(301, 1, 'transactions', 1, 'activity_new_expense', '2020-12-26 15:25:15', 'fa-building-o', 'admin/transactions/view_details/1', 'مكتب تكسي الرافدين', '2250', 0),
(302, 1, 'account', 2, 'activity_save_account', '2020-12-26 15:25:51', 'fa-circle-o', NULL, 'رواتب موظفين ', NULL, 0),
(303, 1, 'settings', 2, 'activity_added_a_expense_category', '2020-12-26 15:27:46', 'fa-coffee', NULL, 'رواتب', NULL, 0),
(304, 1, 'transactions', 2, 'activity_new_expense', '2020-12-26 15:28:08', 'fa-building-o', 'admin/transactions/view_details/2', 'رواتب موظفين ', '4500', 0),
(305, 1, 'account', 3, 'activity_save_account', '2020-12-26 15:29:08', 'fa-circle-o', NULL, 'كهرباء', NULL, 0),
(306, 1, 'settings', 3, 'activity_added_a_expense_category', '2020-12-26 15:29:22', 'fa-coffee', NULL, 'مصروفات مكتب', NULL, 0),
(307, 1, 'transactions', 3, 'activity_new_expense', '2020-12-26 15:29:53', 'fa-building-o', 'admin/transactions/view_details/3', 'كهرباء', '350', 0),
(308, 1, 'account', 4, 'activity_save_account', '2020-12-26 15:30:46', 'fa-circle-o', NULL, 'Bilsan Business Solutions', NULL, 0),
(309, 1, 'settings', 1, 'activity_save_system_settings', '2020-12-26 15:31:07', 'fa-coffee', NULL, 'english', NULL, 0),
(310, 1, 'settings', 1, 'activity_save_system_settings', '2020-12-26 15:31:18', 'fa-coffee', NULL, 'english', NULL, 0),
(311, 1, 'transactions', 2, 'activity_delete_expense', '2020-12-26 15:33:16', 'fa-building-o', 'admin/transactions/view_details/2', 'رواتب موظفين ', '4500.00', 0),
(312, 1, 'transactions', 4, 'activity_new_expense', '2020-12-26 15:34:00', 'fa-building-o', 'admin/transactions/view_details/4', 'رواتب موظفين ', '12500', 0),
(313, 1, 'account', 5, 'activity_save_account', '2020-12-26 15:34:52', 'fa-circle-o', NULL, 'قرطاسية', NULL, 0),
(314, 1, 'transactions', 5, 'activity_new_expense', '2020-12-26 15:35:27', 'fa-building-o', 'admin/transactions/view_details/5', 'قرطاسية', '480', 0),
(315, 1, 'transactions', 6, 'activity_new_expense', '2020-12-26 15:36:14', 'fa-building-o', 'admin/transactions/view_details/6', 'Bilsan Business Solutions', '25000', 0),
(316, 1, 'transactions', 7, 'activity_new_expense', '2020-12-26 15:36:59', 'fa-building-o', 'admin/transactions/view_details/7', 'رواتب موظفين ', '650', 0),
(317, 1, 'user', 54, 'activity_added_new_user', '2021-01-12 10:59:00', 'fa-user', NULL, 'osama', NULL, 0),
(318, 1, 'user', 54, 'activity_change_status', '2021-01-12 10:59:04', 'fa-user', NULL, 'osama Active', NULL, 0),
(319, 1, 'user', 53, 'activity_change_status', '2021-01-12 10:59:06', 'fa-user', NULL, 'Nawras Active', NULL, 0),
(320, 1, 'user', 53, 'activity_added_new_user', '2021-01-12 10:59:18', 'fa-user', NULL, 'Nawras', NULL, 0),
(321, 1, 'user', 52, 'activity_change_status', '2021-01-12 10:59:22', 'fa-user', NULL, 'sondosAboHijleh Active', NULL, 0),
(322, 1, 'user', 52, 'activity_added_new_user', '2021-01-12 10:59:34', 'fa-user', NULL, 'sondosAboHijleh', NULL, 0),
(323, 1, 'user', 51, 'activity_change_status', '2021-01-12 10:59:42', 'fa-user', NULL, 'burhan Active', NULL, 0),
(324, 1, 'user', 51, 'activity_added_new_user', '2021-01-12 11:00:00', 'fa-user', NULL, 'burhan', NULL, 0),
(325, 1, 'user', 49, 'activity_change_status', '2021-01-12 11:01:07', 'fa-user', NULL, 'Asrar Bsharat Active', NULL, 0),
(326, 1, 'user', 49, 'activity_added_new_user', '2021-01-12 11:01:20', 'fa-user', NULL, 'Asrar Bsharat', NULL, 0),
(327, 1, 'user', 47, 'activity_change_status', '2021-01-12 11:01:27', 'fa-user', NULL, 'raghda khawaja Active', NULL, 0),
(328, 1, 'user', 47, 'activity_added_new_user', '2021-01-12 11:01:41', 'fa-user', NULL, 'raghda khawaja', NULL, 0),
(329, 1, 'user', 53, 'activity_added_new_user', '2021-01-13 08:00:55', 'fa-user', NULL, 'Nawras', NULL, 0),
(330, 1, 'items', 1, 'activity_save_items', '2021-01-14 07:06:51', 'fa-circle-o', NULL, 'Micro-Medical ', NULL, 0),
(331, 1, 'items', 1, 'activity_update_items', '2021-01-14 07:07:57', 'fa-circle-o', NULL, 'Micro-Medical ', NULL, 0),
(332, 1, 'items', 2, 'activity_save_items', '2021-01-14 07:09:25', 'fa-circle-o', NULL, 'ERP ', NULL, 0),
(333, 1, 'items', 3, 'activity_save_items', '2021-01-14 07:10:35', 'fa-circle-o', NULL, 'iClinic V1', NULL, 0),
(334, 1, 'items', 4, 'activity_save_items', '2021-01-14 07:11:14', 'fa-circle-o', NULL, 'iClinic V2', NULL, 0),
(335, 1, 'items', 5, 'activity_save_items', '2021-01-14 07:12:02', 'fa-circle-o', NULL, 'iLab ', NULL, 0),
(336, 1, 'items', 6, 'activity_save_items', '2021-01-14 07:13:23', 'fa-circle-o', NULL, 'iPharmacy', NULL, 0),
(337, 1, 'settings', 3, 'activity_added_a_lead_source', '2021-01-14 07:15:46', 'fa-coffee', NULL, 'Sales Department ', NULL, 0),
(338, 1, 'leads', 3, 'activity_save_leads', '2021-01-14 07:17:43', 'fa-rocket', 'admin/leads/leads_details/3', 'Media & Online Marketing ', NULL, 0),
(339, 1, 'leads', 3, 'activity_update_leads', '2021-01-14 07:18:09', 'fa-rocket', 'admin/leads/leads_details/3', 'Palestine TV  --  Media & Online Marketing ', NULL, 0),
(340, 1, 'leads', 1, 'activity_update_leads', '2021-01-14 07:19:21', 'fa-rocket', 'admin/leads/leads_details/1', 'المنهاج الفلسطيني من الاول للصف السادس', NULL, 0),
(368, 1, 'client', 84, 'activity_added_new_company', '2021-02-07 08:38:37', 'fa-user', NULL, 'Dena Rabee', NULL, 0),
(369, 1, 'user', 63, 'activity_change_status', '2021-02-07 08:39:00', 'fa-user', NULL, 'Dena Active', NULL, 0),
(370, 1, 'user', 63, 'activity_added_new_user', '2021-02-07 08:39:37', 'fa-user', NULL, 'Dena', NULL, 0),
(371, 1, 'client', 1, 'activity_deleted_client', '2021-02-07 14:16:57', 'fa-user', NULL, 'Dena Rabee', NULL, 0),
(372, 1, 'user', 65, 'activity_added_new_user', '2021-02-07 14:18:37', 'fa-user', NULL, 'dena', NULL, 0),
(373, 1, 'transactions', 8, 'activity_new_expense', '2021-02-07 14:28:22', 'fa-building-o', 'admin/transactions/view_details/8', 'مكتب تكسي الرافدين', '1100', 0),
(374, 1, 'user', 64, 'activity_change_status', '2021-02-07 17:42:54', 'fa-user', NULL, 'dujadabdoub Active', NULL, 0),
(375, 1, 'user', 64, 'activity_added_new_user', '2021-02-07 17:43:15', 'fa-user', NULL, 'dujadabdoub', NULL, 0),
(376, 1, 'user', 43, 'activity_change_status', '2021-02-07 17:44:39', 'fa-user', NULL, 'tala Deactive', NULL, 0),
(377, 1, 'client', 1, 'activity_deleted_client', '2021-02-07 17:54:29', 'fa-user', NULL, 'bilsan ', NULL, 0),
(381, 1, 'client', 86, 'activity_added_new_company', '2021-02-08 10:39:16', 'fa-user', NULL, 'وليد ابراهيم عبد الله هودلي', NULL, 0),
(382, 1, 'projects', 14, 'activity_update_project', '2021-02-08 10:39:56', 'fa-folder-open-o', 'admin/projects/project_details/14', 'نفحة فيلم ', NULL, 0),
(383, 1, 'client', 86, 'activity_added_new_company', '2021-02-08 10:40:19', 'fa-user', NULL, 'وليد ابراهيم عبد الله هودلي', NULL, 0),
(386, 1, 'user', 66, 'activity_added_new_user', '2021-02-08 11:30:58', 'fa-user', NULL, 'Adham', NULL, 0),
(387, 1, 'user', 66, 'activity_change_status', '2021-02-08 11:31:02', 'fa-user', NULL, 'Adham Active', NULL, 0),
(388, 1, 'projects', 13, 'activity_project_deleted', '2021-02-08 11:31:18', 'fa-folder-open-o', NULL, 'وليد ابراهيم عبد الله هودلي', NULL, 0),
(389, 1, 'client', 87, 'activity_added_new_company', '2021-02-08 11:32:09', 'fa-user', NULL, 'Adham Atari', NULL, 0),
(390, 1, 'client', 1, 'activity_deleted_client', '2021-02-08 11:32:20', 'fa-user', NULL, 'Adham Atari', NULL, 0),
(391, 1, 'client', 1, 'activity_deleted_client', '2021-02-08 11:32:28', 'fa-user', NULL, '', NULL, 0),
(392, 1, 'client', 1, 'activity_deleted_client', '2021-02-08 11:33:12', 'fa-user', NULL, 'Bilsan', NULL, 0),
(393, 1, 'client', 1, 'activity_deleted_client', '2021-02-08 11:33:21', 'fa-user', NULL, 'Bilsan', NULL, 0),
(394, 1, 'client', 1, 'activity_deleted_client', '2021-02-08 11:33:35', 'fa-user', NULL, 'anwar', NULL, 0),
(395, 1, 'client', 1, 'activity_deleted_client', '2021-02-08 11:33:35', 'fa-user', NULL, 'Bilsan', NULL, 0),
(396, 1, 'client', 1, 'activity_deleted_client', '2021-02-08 11:33:35', 'fa-user', NULL, 'Bilsan', NULL, 0),
(397, 1, 'client', 1, 'activity_deleted_client', '2021-02-08 11:33:41', 'fa-user', NULL, 'bilsan', NULL, 0),
(398, 1, 'client', 1, 'activity_deleted_client', '2021-02-08 11:33:41', 'fa-user', NULL, 'bilsan', NULL, 0),
(399, 1, 'client', 1, 'activity_deleted_client', '2021-02-08 11:33:52', 'fa-user', NULL, 'Asrar Bsharat', NULL, 0),
(400, 1, 'client', 1, 'activity_deleted_client', '2021-02-08 11:33:52', 'fa-user', NULL, 'Burhan Assi', NULL, 0),
(401, 1, 'client', 1, 'activity_deleted_client', '2021-02-08 11:34:47', 'fa-user', NULL, 'bilsan business solutions', NULL, 0),
(402, 1, 'client', 1, 'activity_deleted_client', '2021-02-08 11:35:02', 'fa-user', NULL, 'adanMohammad', NULL, 0),
(406, 1, 'client', 1, 'activity_deleted_client', '2021-02-08 11:39:04', 'fa-user', NULL, 'فخري ظاهر', NULL, 0),
(407, 1, 'projects', 16, 'activity_save_project', '2021-02-08 11:40:34', 'fa-folder-open-o', 'admin/projects/project_details/16', 'حوسبة مطعم أبو همام ', NULL, 0),
(408, 1, 'projects', 16, 'activity_update_project', '2021-02-08 11:41:03', 'fa-folder-open-o', 'admin/projects/project_details/16', 'حوسبة مطعم أبو همام ', NULL, 0),
(409, 1, 'client', 89, 'activity_added_new_company', '2021-02-08 11:41:41', 'fa-user', NULL, 'مطعم ابو همام', NULL, 0),
(461, 1, 'client', 104, 'activity_update_company', '2021-02-11 07:02:05', 'fa-user', NULL, 'Bilsan Business Solutions', NULL, 0),
(462, 1, 'projects', 24, 'activity_save_project', '2021-02-11 07:02:54', 'fa-folder-open-o', 'admin/projects/project_details/24', 'Bilsan ERP', NULL, 0),
(463, 1, 'tasks', 11, 'activity_update_task', '2021-02-11 07:04:29', 'fa-tasks', 'admin/tasks/view_task_details/11', 'Chart - Basic - HR ', NULL, 0),
(464, 1, 'user', 54, 'activity_added_new_user', '2021-02-11 07:06:51', 'fa-user', NULL, 'osama', NULL, 0),
(465, 1, 'user', 51, 'activity_added_new_user', '2021-02-11 07:07:14', 'fa-user', NULL, 'burhan', NULL, 0),
(466, 1, 'user', 49, 'activity_added_new_user', '2021-02-11 07:07:33', 'fa-user', NULL, 'Asrar Bsharat', NULL, 0),
(467, 1, 'tasks', 8, 'activity_task_deleted', '2021-02-11 07:08:34', 'fa-tasks', NULL, 'عرض سعر لمستلزمات المشروع  ', NULL, 0),
(468, 1, 'tasks', 9, 'activity_task_deleted', '2021-02-11 07:08:38', 'fa-tasks', NULL, 'ارسال التفاصيل للاخ  سليم العتيبي  لبدء كتابة الدراسة للمانح', NULL, 0),
(469, 1, 'tasks', 10, 'activity_task_deleted', '2021-02-11 07:08:42', 'fa-tasks', NULL, 'اجتماع مع أ. نائلة الديك ', NULL, 0),
(470, 1, 'user', 64, 'activity_added_new_user', '2021-02-11 07:09:23', 'fa-user', NULL, 'dujadabdoub', NULL, 0),
(471, 1, 'tasks', 12, 'activity_update_task', '2021-02-11 07:11:23', 'fa-tasks', 'admin/tasks/view_task_details/12', 'Stock Management ', NULL, 0),
(472, 1, 'tasks', 13, 'activity_update_task', '2021-02-11 07:12:06', 'fa-tasks', 'admin/tasks/view_task_details/13', 'Bank Management ', NULL, 0),
(473, 1, 'tasks', 14, 'activity_update_task', '2021-02-11 07:13:13', 'fa-tasks', 'admin/tasks/view_task_details/14', 'Fixed Asset  ', NULL, 0),
(474, 1, 'tasks', 15, 'activity_update_task', '2021-02-11 07:14:27', 'fa-tasks', 'admin/tasks/view_task_details/15', 'Flutter Mobile Development ', NULL, 0),
(475, 1, 'tasks', 16, 'activity_update_task', '2021-02-11 07:15:10', 'fa-tasks', 'admin/tasks/view_task_details/16', 'API  + Web App ', NULL, 0),
(476, 1, 'tasks', 17, 'activity_update_task', '2021-02-11 10:50:46', 'fa-tasks', 'admin/tasks/view_task_details/17', 'Upload Hatvision Products ', NULL, 0),
(477, 1, 'projects', 11, 'activity_update_project', '2021-02-11 10:50:59', 'fa-folder-open-o', 'admin/projects/project_details/11', 'Hatvision Website', NULL, 0),
(478, 1, 'tasks', 17, 'activity_update_task', '2021-02-11 10:51:16', 'fa-tasks', 'admin/tasks/view_task_details/17', 'Upload Hatvision Products ', NULL, 0),
(479, 1, 'tasks', 17, 'activity_update_task', '2021-02-11 10:53:57', 'fa-tasks', 'admin/tasks/view_task_details/17/4', '<p>http://hatvision.com/wp-admin</p><p>dena    </p><p>Bilsan@1984</p><p><br></p><p>https://compressor.io/<br></p>', NULL, 0),
(490, 1, 'user', 49, 'activity_added_new_user', '2021-03-03 07:23:56', 'fa-user', NULL, 'Asrar Bsharat', NULL, 0),
(491, 1, 'user', 76, 'activity_change_status', '2021-03-03 07:32:21', 'fa-user', NULL, 'Asrar Active', NULL, 0),
(492, 1, 'user', 76, 'activity_added_new_user', '2021-03-03 07:32:32', 'fa-user', NULL, 'Asrar', NULL, 0),
(497, 1, 'user', 78, 'activity_change_status', '2021-05-16 08:13:29', 'fa-user', NULL, 'shahd  Active', NULL, 0),
(498, 1, 'user', 78, 'activity_added_new_user', '2021-05-16 08:13:59', 'fa-user', NULL, 'shahd ', NULL, 0),
(499, 1, 'user', 79, 'activity_change_status', '2021-05-16 08:18:07', 'fa-user', NULL, 'RaneemAlawy Active', NULL, 0),
(500, 1, 'user', 79, 'activity_added_new_user', '2021-05-16 08:18:30', 'fa-user', NULL, 'RaneemAlawy', NULL, 0),
(501, 1, 'user', 80, 'activity_change_status', '2021-05-16 08:23:45', 'fa-user', NULL, 'hadeelnabil Active', NULL, 0),
(502, 1, 'user', 80, 'activity_added_new_user', '2021-05-16 08:24:00', 'fa-user', NULL, 'hadeelnabil', NULL, 0),
(503, 1, 'settings', 1, 'activity_update_state_reason', '2021-05-16 08:27:43', 'fa-coffee', NULL, '', NULL, 0),
(504, 78, 'client', 110, 'activity_update_company', '2021-05-16 10:19:52', 'fa-user', NULL, 'Hania Al Khairy', NULL, 0),
(505, 78, 'projects', 25, 'activity_save_project', '2021-05-16 10:22:43', 'fa-folder-open-o', 'admin/projects/project_details/25', 'توثيق صفحات مجموعة الاتصالات', NULL, 0),
(506, 78, 'projects', 26, 'activity_save_project', '2021-05-16 10:27:57', 'fa-folder-open-o', 'admin/projects/project_details/26', 'المحتوى الخاص لشركة بيلسان في مواقع التواصل الاجتماعي', NULL, 0),
(507, 78, 'projects', 26, 'activity_update_project', '2021-05-16 10:29:06', 'fa-folder-open-o', 'admin/projects/project_details/26', 'المحتوى الخاص بشركة بيلسان في مواقع التواصل الاجتماعي', NULL, 0),
(508, 78, 'projects', 25, 'activity_update_project', '2021-05-16 10:34:26', 'fa-folder-open-o', 'admin/projects/project_details/25', ' توثيق صفحات مجموعة الاتصالات الفلسطينية', NULL, 0),
(509, 78, 'user', 88, 'activity_update_user', '2021-05-16 11:05:35', 'fa-user', NULL, 'shahd alaa jamil enayah', NULL, 0),
(510, 80, 'tasks', 20, 'activity_update_task', '2021-05-17 07:42:50', 'fa-tasks', 'admin/tasks/view_task_details/20', 'عمار العكر', NULL, 0),
(511, 78, 'tasks', 21, 'activity_update_task', '2021-05-17 07:47:45', 'fa-tasks', 'admin/tasks/view_task_details/21', 'اجتماع مع أ.تهاني المدهون في نقابة المحامين', NULL, 0),
(512, 78, 'client', 111, 'activity_update_company', '2021-05-17 08:18:40', 'fa-user', NULL, 'أ.تهاني المدهون', NULL, 0),
(513, 78, 'projects', 27, 'activity_save_project', '2021-05-17 08:20:09', 'fa-folder-open-o', 'admin/projects/project_details/27', 'نظام عدالة للمحاماة', NULL, 0),
(514, 78, 'client', 112, 'activity_update_company', '2021-05-17 08:29:05', 'fa-user', NULL, 'أ.عماد ابو عواد', NULL, 0),
(515, 78, 'projects', 28, 'activity_save_project', '2021-05-17 08:29:50', 'fa-folder-open-o', 'admin/projects/project_details/28', 'التدريب مع  Usmart', NULL, 0),
(516, 78, 'tasks', 20, 'activity_new_project_attachment', '2021-05-17 08:38:32', 'fa-folder-open-o', 'admin/tasks/view_task_details/20/3', 'رسالة التوثيق', NULL, 0),
(517, 80, 'projects', 25, 'activity_update_notes', '2021-05-17 09:54:09', 'fa-folder-open-o', 'admin/projects/project_details/25/8', '<div xss=removed><span xss=removed>:اخطاء يجب تجنبها</span></div><span xss=removed><div xss=removed> تجنب المنشورات الطويلة والرسمية </div><div xss=removed>تجنب طرح المواضيع الغير مرغوبة للجمهور </div><div xss=removed>عدم توفر تعريف كامل عن عمار العكر </div><div xss=removed> عدم توفر محتوى جديد</div></span>', NULL, 0),
(518, 80, 'projects', 25, 'activity_update_notes', '2021-05-17 09:54:26', 'fa-folder-open-o', 'admin/projects/project_details/25/8', '<div xss=\"removed\"><span xss=\"removed\">:اخطاء يجب تجنبها</span></div><span xss=\"removed\"><div xss=\"removed\"> تجنب المنشورات الطويلة والرسمية </div><div xss=\"removed\">تجنب طرح المواضيع الغير مرغوبة للجمهور </div><div xss=\"removed\">عدم توفر تعريف كامل عن عمار العكر </div><div xss=\"removed\"> عدم توفر محتوى جديد</div></span>', NULL, 0),
(519, 79, 'projects', 29, 'activity_save_project', '2021-05-17 14:04:36', 'fa-folder-open-o', 'admin/projects/project_details/29', 'عمل طاقم الإنتاج الإعلامي ', NULL, 0),
(520, 79, 'projects', 29, 'activity_tasks_timer_on', '2021-05-17 14:05:07', 'fa-folder-open-o', 'admin/projects/project_details/29/7', 'عمل طاقم الإنتاج الإعلامي ', NULL, 0),
(521, 79, 'projects', 29, 'activity_tasks_timer_off', '2021-05-17 14:05:17', 'fa-folder-open-o', 'admin/projects/project_details/29/7', 'عمل طاقم الإنتاج الإعلامي ', NULL, 0),
(522, 78, 'client', 113, 'activity_update_company', '2021-05-17 22:10:10', 'fa-user', NULL, 'جميع الافراد', NULL, 0),
(523, 78, 'projects', 30, 'activity_save_project', '2021-05-17 22:14:05', 'fa-folder-open-o', 'admin/projects/project_details/30', 'يحيى - Yahia', NULL, 0),
(524, 78, 'client', 114, 'activity_update_company', '2021-05-17 22:32:20', 'fa-user', NULL, 'أ.عماد ابو عواد', NULL, 0),
(525, 78, 'projects', 31, 'activity_save_project', '2021-05-17 22:33:31', 'fa-folder-open-o', 'admin/projects/project_details/31', 'لعبة القدس', NULL, 0),
(526, 78, 'tasks', 22, 'activity_update_task', '2021-05-17 22:35:31', 'fa-tasks', 'admin/tasks/view_task_details/22', 'تجهيز سيناريو اللعبة', NULL, 0),
(527, 78, 'tasks', 23, 'activity_update_task', '2021-05-17 22:37:40', 'fa-tasks', 'admin/tasks/view_task_details/23', 'تجهيز اتفاقية الشراكة', NULL, 0),
(528, 78, 'projects', 30, 'activity_update_project', '2021-05-17 22:42:22', 'fa-folder-open-o', 'admin/projects/project_details/30', 'يحيى - Yahia', NULL, 0),
(529, 78, 'projects', 30, 'activity_update_project', '2021-05-17 22:42:57', 'fa-folder-open-o', 'admin/projects/project_details/30', 'يحيى - Yahia', NULL, 0),
(530, 78, 'tasks', 24, 'activity_update_task', '2021-05-17 22:47:29', 'fa-tasks', 'admin/tasks/view_task_details/24', 'تجهيز الفيديوهات الخاصة بالشركة لعرضها على مواقع التواصل الخاصة بنا', NULL, 0),
(531, 78, 'tasks', 25, 'activity_update_task', '2021-05-17 22:53:20', 'fa-tasks', 'admin/tasks/view_task_details/25', 'تجهيزبروفايل كامل عن خدمات الشركة الانتاجية', NULL, 0),
(532, 78, 'tasks', 26, 'activity_update_task', '2021-05-17 22:56:15', 'fa-tasks', 'admin/tasks/view_task_details/26', 'الاتفاق على اجتماع على تطبيق زوم للتنسيق والاتفاق على التفاصيل', NULL, 0),
(533, 78, 'tasks', 26, 'activity_update_task', '2021-05-17 22:58:18', 'fa-tasks', 'admin/tasks/view_task_details/26', 'الاتفاق على اجتماع على تطبيق زوم للتنسيق والاتفاق على التفاصيل', NULL, 0),
(534, 78, 'tasks', 27, 'activity_update_task', '2021-05-17 23:05:58', 'fa-tasks', 'admin/tasks/view_task_details/27', 'تحضير قائمة الفئات المستهدفة', NULL, 0),
(535, 78, 'tasks', 28, 'activity_update_task', '2021-05-17 23:14:41', 'fa-tasks', 'admin/tasks/view_task_details/28', 'تذكير بتعبئبة بيانات الموردين/شركة الاتصالات', NULL, 0),
(536, 78, 'tasks', 28, 'activity_update_task', '2021-05-17 23:18:07', 'fa-tasks', 'admin/tasks/view_task_details/28', 'تذكيرمحمد بتعبئة بيانات الموردين/شركة الاتصالات', NULL, 0),
(537, 78, 'tasks', 29, 'activity_update_task', '2021-05-17 23:19:12', 'fa-tasks', 'admin/tasks/view_task_details/29', 'تذكير بأوراق الشابين من خضوري', NULL, 0),
(538, 78, 'tasks', 30, 'activity_update_task', '2021-05-17 23:19:13', 'fa-tasks', 'admin/tasks/view_task_details/30', 'تذكير بأوراق الشابين من خضوري', NULL, 0),
(539, 78, 'tasks', 31, 'activity_update_task', '2021-05-17 23:20:40', 'fa-tasks', 'admin/tasks/view_task_details/31', 'تذكير بخط بالتل ل أ. مروان / ابو امير', NULL, 0),
(540, 78, 'tasks', 27, 'activity_update_task', '2021-05-17 23:22:56', 'fa-tasks', 'admin/tasks/view_task_details/27', 'تحضير قائمة الفئات المستهدفة', NULL, 0),
(541, 78, 'tasks', 32, 'activity_update_task', '2021-05-17 23:25:08', 'fa-tasks', 'admin/tasks/view_task_details/32', 'تذكير محمد بارسال تسجيل الصوت بخصوص النظام لتوضيح الفكرة اكثر', NULL, 0),
(542, 1, 'projects', 28, 'activity_new_project_attachment', '2021-05-18 00:27:29', 'fa-folder-open-o', 'admin/projects/project_details/28/4', 'Bilsan  - JCIA Outline', NULL, 0),
(543, 1, 'projects', 28, 'activity_new_project_attachment', '2021-05-18 00:28:33', 'fa-folder-open-o', 'admin/projects/project_details/28/4', 'Bilsan  - JCIA Team ', NULL, 0),
(544, 1, 'projects', 27, 'activity_new_project_attachment', '2021-05-18 00:29:56', 'fa-folder-open-o', 'admin/projects/project_details/27/4', 'تعاون مشترك بين نقابة المحامين و شركة بيلسان لحلول الأعمال .', NULL, 0),
(545, 78, 'client', 114, 'activity_added_new_company', '2021-05-18 13:58:05', 'fa-user', NULL, 'أ.عماد ابو عواد', NULL, 0),
(546, 78, 'client', 114, 'activity_added_new_company', '2021-05-18 14:27:20', 'fa-user', NULL, 'أ.عماد ابو عواد', NULL, 0),
(547, 78, 'client', 114, 'activity_added_new_company', '2021-05-18 14:28:40', 'fa-user', NULL, 'أ.عماد ابو عواد', NULL, 0),
(548, 80, 'tasks', 33, 'activity_update_task', '2021-05-18 22:50:17', 'fa-tasks', 'admin/tasks/view_task_details/33', 'محتوى لتوثيق صفحة عمار العكر ', NULL, 0),
(549, 1, 'user', 81, 'activity_change_status', '2021-05-19 06:11:53', 'fa-user', NULL, 'Rand Bader Active', NULL, 0),
(550, 1, 'user', 81, 'activity_added_new_user', '2021-05-19 06:12:31', 'fa-user', NULL, 'Rand Bader', NULL, 0),
(551, 81, 'tasks', 34, 'activity_update_task', '2021-05-19 08:15:51', 'fa-tasks', 'admin/tasks/view_task_details/34', 'محتوى لتوثيق صفحة عمار العكر \\ رقم1', NULL, 0),
(552, 81, 'tasks', 34, 'activity_update_task', '2021-05-19 08:17:37', 'fa-tasks', 'admin/tasks/view_task_details/34', 'محتوى لتوثيق صفحة عمار العكر \\ رقم1', NULL, 0),
(553, 81, 'tasks', 34, 'activity_update_task', '2021-05-19 08:18:17', 'fa-tasks', 'admin/tasks/view_task_details/34', 'محتوى لتوثيق صفحة عمار العكر \\ رقم1', NULL, 0),
(554, 81, 'tasks', 35, 'activity_update_task', '2021-05-19 08:28:57', 'fa-tasks', 'admin/tasks/view_task_details/35', 'محتوى لتوثيق صفحة عمار العكر \\ رقم2', NULL, 0),
(555, 81, 'tasks', 36, 'activity_update_task', '2021-05-19 08:36:44', 'fa-tasks', 'admin/tasks/view_task_details/36', 'محتوى لتوثيق صفحة عمار العكر \\ رقم3', NULL, 0),
(556, 81, 'tasks', 37, 'activity_update_task', '2021-05-19 08:48:41', 'fa-tasks', 'admin/tasks/view_task_details/37', 'محتوى لتوثيق صفحة عمار العكر \\ رقم4', NULL, 0),
(557, 81, 'tasks', 38, 'activity_update_task', '2021-05-19 09:05:12', 'fa-tasks', 'admin/tasks/view_task_details/38', 'محتوى لتوثيق صفحة عمار العكر \\ رقم5', NULL, 0),
(558, 81, 'tasks', 35, 'activity_update_task', '2021-05-19 09:06:56', 'fa-tasks', 'admin/tasks/view_task_details/35', 'محتوى لتوثيق صفحة عمار العكر \\ رقم2', NULL, 0),
(559, 78, 'projects', 24, 'activity_new_project_attachment', '2021-05-19 09:30:14', 'fa-folder-open-o', 'admin/projects/project_details/24/4', '', NULL, 0),
(560, 78, 'projects', 24, 'activity_project_attachfile_deleted', '2021-05-19 09:30:31', 'fa-folder-open-o', 'admin/projects/project_details/24/4', '', NULL, 0),
(561, 78, 'projects', 24, 'activity_new_project_attachment', '2021-05-19 09:30:53', 'fa-folder-open-o', 'admin/projects/project_details/24/4', 'بيانات الموظفين', NULL, 0),
(562, 78, 'projects', 24, 'activity_new_project_attachment', '2021-05-19 09:42:50', 'fa-folder-open-o', 'admin/projects/project_details/24/4', 'بروفايل بيلسان باللغة العربية', NULL, 0),
(563, 78, 'projects', 24, 'activity_new_project_attachment', '2021-05-19 09:44:58', 'fa-folder-open-o', 'admin/projects/project_details/24/4', 'ترويسة الشركة', NULL, 0),
(564, 78, 'projects', 28, 'activity_new_project_attachment', '2021-05-19 09:50:05', 'fa-folder-open-o', 'admin/projects/project_details/28/4', 'JCIA TEAM INFO', NULL, 0),
(565, 78, 'projects', 28, 'activity_project_attachfile_deleted', '2021-05-19 09:50:25', 'fa-folder-open-o', 'admin/projects/project_details/28/4', 'JCIA TEAM INFO', NULL, 0),
(566, 78, 'tasks', 30, 'activity_task_deleted', '2021-05-19 10:26:31', 'fa-tasks', NULL, 'تذكير بأوراق الشابين من خضوري', NULL, 0),
(567, 1, 'settings', 1, 'activity_save_theme_settings', '2021-05-19 18:07:07', 'fa-coffee', NULL, 'Bilsan CRM', NULL, 0),
(568, 1, 'settings', 1, 'activity_save_theme_settings', '2021-05-19 18:08:04', 'fa-coffee', NULL, 'Bilsan CRM', NULL, 0),
(569, 1, 'settings', 1, 'activity_save_theme_settings', '2021-05-19 18:09:08', 'fa-coffee', NULL, 'Bilsan CRM', NULL, 0),
(570, 1, 'settings', 1, 'activity_save_theme_settings', '2021-05-19 18:10:05', 'fa-coffee', NULL, 'Bilsan CRM', NULL, 0),
(571, 1, 'settings', 1, 'activity_save_theme_settings', '2021-05-19 18:12:27', 'fa-coffee', NULL, 'Bilsan CRM', NULL, 0),
(572, 78, 'tasks', 32, 'activity_task_deleted', '2021-05-20 09:12:31', 'fa-tasks', NULL, 'تذكير محمد بارسال تسجيل الصوت بخصوص النظام لتوضيح الفكرة اكثر', NULL, 0),
(573, 78, 'tasks', 31, 'activity_task_deleted', '2021-05-20 09:12:36', 'fa-tasks', NULL, 'تذكير بخط بالتل ل أ. مروان / ابو امير', NULL, 0),
(574, 78, 'tasks', 28, 'activity_task_deleted', '2021-05-20 09:15:04', 'fa-tasks', NULL, 'تذكيرمحمد بتعبئة بيانات الموردين/شركة الاتصالات', NULL, 0),
(575, 78, 'tasks', 29, 'activity_task_deleted', '2021-05-20 09:15:10', 'fa-tasks', NULL, 'تذكير بأوراق الشابين من خضوري', NULL, 0),
(576, 78, 'tasks', 26, 'activity_task_deleted', '2021-05-20 09:15:35', 'fa-tasks', NULL, 'الاتفاق على اجتماع على تطبيق زوم للتنسيق والاتفاق على التفاصيل', NULL, 0),
(577, 78, 'tasks', 27, 'activity_task_deleted', '2021-05-20 09:15:51', 'fa-tasks', NULL, 'تحضير قائمة الفئات المستهدفة', NULL, 0),
(578, 78, 'projects', 31, 'activity_update_project', '2021-05-20 09:19:28', 'fa-folder-open-o', 'admin/projects/project_details/31', 'Usmart مركزمشروع تطبيق لعبة القدس مع ', NULL, 0),
(579, 78, 'tasks', 22, 'activity_update_task', '2021-05-20 09:26:16', 'fa-tasks', 'admin/tasks/view_task_details/22', 'تجهيز سيناريو اللعبة', NULL, 0),
(580, 78, 'projects', 30, 'activity_update_project', '2021-05-20 09:27:20', 'fa-folder-open-o', 'admin/projects/project_details/30', 'يحيى - Yahia مشروع تطبيق ', NULL, 0),
(581, 78, 'projects', 28, 'activity_update_project', '2021-05-20 09:29:09', 'fa-folder-open-o', 'admin/projects/project_details/28', 'مشروع التدريب مع مركز Usmart', NULL, 0),
(582, 78, 'tasks', 39, 'activity_update_task', '2021-05-20 09:41:58', 'fa-tasks', 'admin/tasks/view_task_details/39', 'تجهيز ملف التدريبب بشكل كامل', NULL, 0),
(583, 78, 'tasks', 40, 'activity_update_task', '2021-05-20 09:42:02', 'fa-tasks', 'admin/tasks/view_task_details/40', 'تجهيز ملف التدريبب بشكل كامل', NULL, 0),
(584, 78, 'tasks', 40, 'activity_task_deleted', '2021-05-20 09:42:36', 'fa-tasks', NULL, 'تجهيز ملف التدريبب بشكل كامل', NULL, 0),
(585, 78, 'tasks', 41, 'activity_update_task', '2021-05-20 09:44:35', 'fa-tasks', 'admin/tasks/view_task_details/41', 'البروفايل الخاص بمركز Usmart  كامل.', NULL, 0),
(586, 78, 'tasks', 39, 'activity_update_task', '2021-05-20 09:52:17', 'fa-tasks', 'admin/tasks/view_task_details/39', 'تجهيز ملف التدريبب بشكل كامل', NULL, 0),
(587, 78, 'tasks', 39, 'activity_update_task', '2021-05-20 09:54:51', 'fa-tasks', 'admin/tasks/view_task_details/39', 'تجهيز ملف التدريبب بشكل كامل (اخذ كافة الملفات من المركز)', NULL, 0),
(588, 78, 'tasks', 42, 'activity_update_task', '2021-05-20 10:04:00', 'fa-tasks', 'admin/tasks/view_task_details/42', 'تجهيز المحتوى الخاص بمشروع التدريب مع Usmart', NULL, 0),
(589, 78, 'projects', 31, 'activity_update_project', '2021-05-20 10:49:48', 'fa-folder-open-o', 'admin/projects/project_details/31', 'Usmart  مشروع تطبيق لعبة القدس مع مركز', NULL, 0),
(590, 78, 'projects', 27, 'activity_update_project', '2021-05-20 11:10:05', 'fa-folder-open-o', 'admin/projects/project_details/27', 'مشروع نظام عدالة للمحاماة', NULL, 0),
(591, 78, 'projects', 28, 'activity_new_project_attachment', '2021-05-20 13:04:42', 'fa-folder-open-o', 'admin/projects/project_details/28/4', 'مرفق الملفات اللازمة لتوقيع الاتفاقية', NULL, 0),
(592, 1, 'projects', 30, 'activity_update_project', '2021-05-21 18:39:09', 'fa-folder-open-o', 'admin/projects/project_details/30', 'يحيى - Yahia مشروع تطبيق ', NULL, 0),
(593, 1, 'projects', 30, 'activity_update_project', '2021-05-21 18:39:46', 'fa-folder-open-o', 'admin/projects/project_details/30', 'Yahia - Healthcare Profile Management System ', NULL, 0),
(594, 1, 'projects', 31, 'activity_update_project', '2021-05-21 18:41:45', 'fa-folder-open-o', 'admin/projects/project_details/31', 'Usmart  مشروع تطبيق لعبة القدس مع مركز', NULL, 0),
(595, 1, 'projects', 31, 'activity_update_project', '2021-05-21 18:42:36', 'fa-folder-open-o', 'admin/projects/project_details/31', 'The sword of Jerusalem  Game | Jerusalem Center for Studies ', NULL, 0),
(596, 1, 'projects', 29, 'activity_update_project', '2021-05-21 18:44:13', 'fa-folder-open-o', 'admin/projects/project_details/29', 'Bilsan Media Production | Content Production ', NULL, 0),
(597, 1, 'projects', 28, 'activity_update_project', '2021-05-21 18:47:34', 'fa-folder-open-o', 'admin/projects/project_details/28', 'Bilsan Training Center | Training Projects With USmart Training Center ', NULL, 0),
(598, 1, 'projects', 27, 'activity_update_project', '2021-05-21 18:49:00', 'fa-folder-open-o', 'admin/projects/project_details/27', 'Law Solution | Palestine Bar', NULL, 0),
(599, 1, 'projects', 26, 'activity_update_project', '2021-05-21 18:49:49', 'fa-folder-open-o', 'admin/projects/project_details/26', 'Bilsan | Social Media Content ', NULL, 0),
(600, 1, 'projects', 25, 'activity_update_project', '2021-05-21 18:50:33', 'fa-folder-open-o', 'admin/projects/project_details/25', 'Paltel Group | Social Media & Content Production', NULL, 0),
(601, 1, 'projects', 23, 'activity_project_deleted', '2021-05-21 18:50:48', 'fa-folder-open-o', NULL, 'micro medical/ المستشفى الاسلامي -عمان', NULL, 0),
(602, 1, 'projects', 21, 'activity_project_deleted', '2021-05-21 18:50:48', 'fa-folder-open-o', NULL, 'توثيق صفحات فيس بوك لتلفزيون فلسطين ', NULL, 0),
(603, 1, 'projects', 20, 'activity_project_deleted', '2021-05-21 18:50:58', 'fa-folder-open-o', NULL, 'مستشفى النجاح الوطني /Micro Medecal', NULL, 0),
(604, 1, 'projects', 16, 'activity_project_deleted', '2021-05-21 18:51:04', 'fa-folder-open-o', NULL, 'حوسبة مطعم أبو همام ', NULL, 0),
(605, 1, 'projects', 14, 'activity_project_deleted', '2021-05-21 18:51:09', 'fa-folder-open-o', NULL, 'نفحة فيلم ', NULL, 0),
(606, 1, 'projects', 11, 'activity_project_deleted', '2021-05-21 18:51:13', 'fa-folder-open-o', NULL, 'Hatvision Website', NULL, 0),
(607, 1, 'projects', 8, 'activity_project_deleted', '2021-05-21 18:51:17', 'fa-folder-open-o', NULL, 'عدالة - لادارة مكاتب المحاماة -', NULL, 0),
(608, 1, 'projects', 19, 'activity_update_project', '2021-05-21 18:52:03', 'fa-folder-open-o', 'admin/projects/project_details/19', 'Ammar Al-Akker | Social Media & Content Production', NULL, 0),
(609, 1, 'client', 115, 'activity_added_new_company', '2021-05-21 18:52:42', 'fa-user', NULL, 'رند  بدر ', NULL, 0),
(610, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:52:55', 'fa-user', NULL, 'جميع الافراد', NULL, 0),
(611, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:52:55', 'fa-user', NULL, 'Alaa Rayan', NULL, 0),
(612, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:03', 'fa-user', NULL, 'Asrar Bsharat', NULL, 0),
(613, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:03', 'fa-user', NULL, 'Bilsan Business Solutions', NULL, 0),
(614, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:09', 'fa-user', NULL, 'micro medical/ المستشفى الاسلامي -عمان', NULL, 0),
(615, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:09', 'fa-user', NULL, 'تلفزيون فلسطين', NULL, 0),
(616, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:13', 'fa-user', NULL, 'مستشفى النجاح الوطني /Micro Medecal', NULL, 0),
(617, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:13', 'fa-user', NULL, 'توثيق صفحة الرئيس التنفيذي لمجموعة الاتصالات', NULL, 0),
(618, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:18', 'fa-user', NULL, 'مطعم ابو همام', NULL, 0),
(619, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:18', 'fa-user', NULL, 'وليد ابراهيم عبد الله هودلي', NULL, 0),
(620, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:23', 'fa-user', NULL, 'العالمية المتحدة للتأمين', NULL, 0),
(621, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:23', 'fa-user', NULL, 'فلسطين لتأمين الرهن العقاري', NULL, 0),
(622, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:29', 'fa-user', NULL, 'التكافل الفلسطينية للتأمين', NULL, 0),
(623, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:29', 'fa-user', NULL, '  الأمريكية للتأمين على الحياة ', NULL, 0),
(624, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:36', 'fa-user', NULL, 'المجموعة الأهلية للتأمين', NULL, 0),
(625, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:36', 'fa-user', NULL, 'فلسطين للتأمين', NULL, 0),
(626, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:41', 'fa-user', NULL, 'ترست العالمية للتأمين ', NULL, 0),
(627, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:41', 'fa-user', NULL, 'المشرق للتأمين ', NULL, 0),
(628, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:46', 'fa-user', NULL, 'الوطنية للتأمين ', NULL, 0),
(629, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:46', 'fa-user', NULL, 'Adan Muhammad', NULL, 0),
(630, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:52', 'fa-user', NULL, 'OSAMA NASSER', NULL, 0),
(631, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:52', 'fa-user', NULL, 'Nawras', NULL, 0),
(632, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:58', 'fa-user', NULL, 'sondosAboHijleh', NULL, 0),
(633, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:53:58', 'fa-user', NULL, 'Sahar Murrar', NULL, 0),
(634, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:03', 'fa-user', NULL, 'Raghda Khawaja', NULL, 0),
(635, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:03', 'fa-user', NULL, 'Noor Alhuda Amaireh', NULL, 0),
(636, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:08', 'fa-user', NULL, 'Noor Alhuda Amaireh', NULL, 0),
(637, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:08', 'fa-user', NULL, 'Marwa Hejazi', NULL, 0),
(638, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:12', 'fa-user', NULL, 'IECT', NULL, 0),
(639, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:12', 'fa-user', NULL, 'IECT', NULL, 0),
(640, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:17', 'fa-user', NULL, 'Al Najah Hospital ', NULL, 0),
(641, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:17', 'fa-user', NULL, 'Al Amal Hospital ', NULL, 0),
(642, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:23', 'fa-user', NULL, 'Al Razi Hospital ', NULL, 0),
(643, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:23', 'fa-user', NULL, 'مستشفى نابلس التخصصي ', NULL, 0);
INSERT INTO `tbl_activities` (`activities_id`, `user`, `module`, `module_field_id`, `activity`, `activity_date`, `icon`, `link`, `value1`, `value2`, `deleted`) VALUES
(644, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:27', 'fa-user', NULL, 'مستشفى الميزان ', NULL, 0),
(645, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:27', 'fa-user', NULL, 'مستشفى الأهلي -الخليل', NULL, 0),
(646, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:31', 'fa-user', NULL, 'جمعية الهلال الأحمر للتوليد والأطفال/ الخليل ', NULL, 0),
(647, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:31', 'fa-user', NULL, 'الزعتري للولادة ', NULL, 0),
(648, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:36', 'fa-user', NULL, 'مسشفى حقل الرعاة ', NULL, 0),
(649, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:36', 'fa-user', NULL, 'مستشفى اليمامة التخصصي ', NULL, 0),
(650, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:41', 'fa-user', NULL, 'الجمعية العربية للتأهيل ', NULL, 0),
(651, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:41', 'fa-user', NULL, 'مستشفى العائلة المقدسة ', NULL, 0),
(652, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:45', 'fa-user', NULL, 'مستشفى الدبس للولادة ', NULL, 0),
(653, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:45', 'fa-user', NULL, 'مستشفى الكاريتاس للأطفال', NULL, 0),
(654, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:49', 'fa-user', NULL, 'مستشفى الناظر للولادة ', NULL, 0),
(655, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:49', 'fa-user', NULL, 'مستشفى خالد الجراح ', NULL, 0),
(656, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:53', 'fa-user', NULL, 'مستشفى المستقبل ', NULL, 0),
(657, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:53', 'fa-user', NULL, 'مستشفى H- Clinic ', NULL, 0),
(658, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:57', 'fa-user', NULL, 'مستشفى الاستشاري ', NULL, 0),
(659, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:54:57', 'fa-user', NULL, 'مستشفى الرعاية التخصصي ', NULL, 0),
(660, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:55:01', 'fa-user', NULL, 'hatvision electronic engineering', NULL, 0),
(661, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:55:01', 'fa-user', NULL, 'مجلس القضاء الأعلى ', NULL, 0),
(662, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:55:07', 'fa-user', NULL, 'وزارة التربية والتعليم ', NULL, 0),
(663, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:55:07', 'fa-user', NULL, 'جامعة القدس أبو ديس - فلسطين ', NULL, 0),
(664, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:55:12', 'fa-user', NULL, 'جامعة بيرزيت - فلسطين ', NULL, 0),
(665, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:55:12', 'fa-user', NULL, 'جامعة بيت لحم - فلسطين ', NULL, 0),
(666, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:55:17', 'fa-user', NULL, 'الجامعة العربية الامريكية - فلسطين ', NULL, 0),
(667, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:55:17', 'fa-user', NULL, 'IECT', NULL, 0),
(668, 1, 'client', 115, 'activity_added_new_company', '2021-05-21 18:55:39', 'fa-user', NULL, 'rand bader', NULL, 0),
(669, 1, 'client', 1, 'activity_deleted_client', '2021-05-21 18:55:49', 'fa-user', NULL, 'أ.عماد ابو عواد', NULL, 0),
(670, 1, 'client', 114, 'activity_added_new_company', '2021-05-21 18:56:15', 'fa-user', NULL, 'Usmart Training Center ', NULL, 0),
(671, 1, 'client', 111, 'activity_added_new_company', '2021-05-21 18:56:43', 'fa-user', NULL, 'Palestine Bar', NULL, 0),
(673, 1, 'settings', 4, 'customer_group_added', '2021-05-21 18:58:52', 'fa-coffee', NULL, 'Employee', NULL, 0),
(674, 1, 'client', 115, 'activity_added_new_company', '2021-05-21 18:58:54', 'fa-user', NULL, 'Rand Bader', NULL, 0),
(675, 1, 'client', 114, 'activity_added_new_company', '2021-05-21 18:59:07', 'fa-user', NULL, 'Usmart Training Center ', NULL, 0),
(676, 1, 'settings', 5, 'customer_group_added', '2021-05-21 18:59:25', 'fa-coffee', NULL, 'Training ', NULL, 0),
(677, 1, 'client', 114, 'activity_added_new_company', '2021-05-21 18:59:27', 'fa-user', NULL, 'Usmart Training Center ', NULL, 0),
(678, 1, 'settings', 6, 'customer_group_added', '2021-05-21 19:00:45', 'fa-coffee', NULL, 'Organization', NULL, 0),
(679, 1, 'client', 111, 'activity_added_new_company', '2021-05-21 19:00:47', 'fa-user', NULL, 'Palestine Bar', NULL, 0),
(680, 1, 'client', 110, 'activity_added_new_company', '2021-05-21 19:01:09', 'fa-user', NULL, 'Paltel Group', NULL, 0),
(681, 1, 'settings', 7, 'customer_group_added', '2021-05-21 19:01:32', 'fa-coffee', NULL, 'Company', NULL, 0),
(682, 1, 'client', 110, 'activity_added_new_company', '2021-05-21 19:01:34', 'fa-user', NULL, 'Paltel Group', NULL, 0),
(683, 1, 'client', 109, 'activity_added_new_company', '2021-05-21 19:01:59', 'fa-user', NULL, 'Hadeel Nabil Mustafa Isifan', NULL, 0),
(684, 1, 'client', 108, 'activity_added_new_company', '2021-05-21 19:02:13', 'fa-user', NULL, 'Raneem Hmadi Sabre Alawy', NULL, 0),
(685, 1, 'client', 107, 'activity_added_new_company', '2021-05-21 19:02:38', 'fa-user', NULL, 'Shahd Alaa Jamil Enayah', NULL, 0),
(686, 1, 'client', 107, 'activity_added_new_company', '2021-05-21 19:02:50', 'fa-user', NULL, 'Shahd Alaa Jamil Enayah', NULL, 0),
(687, 1, 'settings', 1, 'activity_save_theme_settings', '2021-05-21 19:21:04', 'fa-coffee', NULL, 'Bilsan Business Solutions | Customer Relations Management', NULL, 0),
(688, 1, 'client', 116, 'activity_update_company', '2021-05-21 21:25:43', 'fa-user', NULL, 'Bilsan Business Solutions', NULL, 0),
(689, 1, 'projects', 29, 'activity_update_project', '2021-05-21 21:25:48', 'fa-folder-open-o', 'admin/projects/project_details/29', 'Bilsan Media Production | Content Production ', NULL, 0),
(690, 1, 'projects', 33, 'activity_save_project', '2021-05-21 21:26:29', 'fa-folder-open-o', 'admin/projects/project_details/33', 'Yahia - Healthcare Profile Management System ', NULL, 0),
(691, 1, 'projects', 34, 'activity_save_project', '2021-05-21 21:27:10', 'fa-folder-open-o', 'admin/projects/project_details/34', 'Ammar Al-Akker | Social Media & Content Production', NULL, 0),
(692, 1, 'projects', 29, 'activity_update_project', '2021-05-21 21:27:45', 'fa-folder-open-o', 'admin/projects/project_details/29', 'Bilsan Media Production | Content Production ', NULL, 0),
(693, 1, 'tasks', 43, 'activity_update_task', '2021-05-21 21:30:28', 'fa-tasks', 'admin/tasks/view_task_details/43', 'Meeting With Palestine Bar Project Manager | Ms.Tahani Madhoun ', NULL, 0),
(694, 1, 'tasks', 44, 'activity_update_task', '2021-05-21 21:33:10', 'fa-tasks', 'admin/tasks/view_task_details/44', 'Bilsan Team | Write Game Scenario | By Eng. Muhammad Abu Ali', NULL, 0),
(695, 1, 'tasks', 45, 'activity_update_task', '2021-05-21 21:34:20', 'fa-tasks', 'admin/tasks/view_task_details/45', 'USmart Team | Write Project Proposal | By Mr. Jawdat Sisan ', NULL, 0),
(696, 1, 'tasks', 46, 'activity_update_task', '2021-05-21 21:37:42', 'fa-tasks', 'admin/tasks/view_task_details/46', 'Create Bilsan Profile Content By Eng .Muhammad Abu Ali ', NULL, 0),
(697, 1, 'projects', 29, 'activity_new_project_attachment', '2021-05-21 21:38:45', 'fa-folder-open-o', 'admin/projects/project_details/29/4', 'Bilsan Profile Arabic | doc ', NULL, 0),
(698, 1, 'tasks', 47, 'activity_update_task', '2021-05-21 21:40:10', 'fa-tasks', 'admin/tasks/view_task_details/47', 'Design A4 pdf for Bilsan Profile | Arabic Version  ', NULL, 0),
(699, 1, 'tasks', 48, 'activity_update_task', '2021-05-21 21:42:28', 'fa-tasks', 'admin/tasks/view_task_details/48', 'iClinic promo vedio  for  Bilsan facebook  page & youtube ', NULL, 0),
(700, 1, 'tasks', 48, 'activity_update_task', '2021-05-21 21:43:52', 'fa-tasks', 'admin/tasks/view_task_details/48', 'iClinic promo vedio  for  Bilsan facebook  page & youtube ', NULL, 0),
(701, 1, 'tasks', 49, 'activity_update_task', '2021-05-21 21:47:14', 'fa-tasks', 'admin/tasks/view_task_details/49', 'Yahia App | promo vedio  | By Ms.  Rand Bader ', NULL, 0),
(702, 1, 'tasks', 50, 'activity_update_task', '2021-05-21 21:49:47', 'fa-tasks', 'admin/tasks/view_task_details/50', 'Bilsan Profile Vedio promo | for all soical media accounts ', NULL, 0),
(703, 1, 'tasks', 51, 'activity_update_task', '2021-05-21 21:54:09', 'fa-tasks', 'admin/tasks/view_task_details/51', 'Yahia App |  pdf presentation', NULL, 0),
(704, 1, 'tasks', 52, 'activity_update_task', '2021-05-21 21:55:17', 'fa-tasks', 'admin/tasks/view_task_details/52', 'Micro-Medical Solution | pdf presentation', NULL, 0),
(705, 1, 'tasks', 53, 'activity_update_task', '2021-05-21 21:57:36', 'fa-tasks', 'admin/tasks/view_task_details/53', 'Micro-Medical Solution | Vedio Tutorials ', NULL, 0),
(706, 1, 'tasks', 54, 'activity_update_task', '2021-05-21 21:58:39', 'fa-tasks', 'admin/tasks/view_task_details/54', 'Bilsan Social Media Daily Post ', NULL, 0),
(707, 1, 'client', 117, 'activity_update_company', '2021-05-22 08:19:30', 'fa-user', NULL, 'Dr Hamza Theeb ', NULL, 0),
(708, 1, 'projects', 35, 'activity_save_project', '2021-05-22 08:19:40', 'fa-folder-open-o', 'admin/projects/project_details/35', 'Dr Hamza | Social Media ', NULL, 0),
(709, 1, 'projects', 36, 'activity_save_project', '2021-05-22 08:19:47', 'fa-folder-open-o', 'admin/projects/project_details/36', 'Dr Hamza | Social Media ', NULL, 0),
(710, 1, 'tasks', 55, 'activity_update_task', '2021-05-22 08:21:30', 'fa-tasks', 'admin/tasks/view_task_details/55', 'سلسلة كورونيات - مونتاج فيديو  ', NULL, 0),
(711, 1, 'tasks', 56, 'activity_update_task', '2021-05-22 08:22:27', 'fa-tasks', 'admin/tasks/view_task_details/56', 'صفحة ويكيبيديا خاصة بالدكتور حمزة ', NULL, 0),
(712, 1, 'projects', 36, 'activity_new_project_attachment', '2021-05-22 08:24:51', 'fa-folder-open-o', 'admin/projects/project_details/36/4', 'السيرة الذاتية ', NULL, 0),
(713, 1, 'projects', 36, 'activity_new_project_attachment', '2021-05-22 08:26:58', 'fa-folder-open-o', 'admin/projects/project_details/36/4', 'كتب الدكتور حمزة ', NULL, 0),
(714, 1, 'projects', 36, 'activity_new_project_attachment', '2021-05-22 08:29:09', 'fa-folder-open-o', 'admin/projects/project_details/36/4', 'وصف عن كتب الدكتور حمزة  ذيب ', NULL, 0),
(715, 1, 'projects', 35, 'activity_project_deleted', '2021-05-22 08:32:01', 'fa-folder-open-o', NULL, 'Dr Hamza | Social Media ', NULL, 0),
(716, 80, 'tasks', 57, 'activity_update_task', '2021-05-22 08:38:43', 'fa-tasks', 'admin/tasks/view_task_details/57', 'برنامج عن المنح التي تقدمها مجموعة الاتصالات ', NULL, 0),
(728, 1, 'projects', 36, 'activity_new_project_attachment', '2021-05-22 10:05:59', 'fa-folder-open-o', 'admin/projects/project_details/36/4', 'صورة الدكتور ', NULL, 0),
(729, 80, 'tasks', 58, 'activity_update_task', '2021-05-22 10:07:36', 'fa-tasks', 'admin/tasks/view_task_details/58', 'فيديو غراف لتعريف عن عمار العكر ', NULL, 0),
(730, 80, 'tasks', 59, 'activity_update_task', '2021-05-22 10:07:39', 'fa-tasks', 'admin/tasks/view_task_details/59', 'فيديو غراف لتعريف عن عمار العكر ', NULL, 0),
(731, 1, 'user', 83, 'activity_change_status', '2021-05-22 10:10:08', 'fa-user', NULL, 'Asmaa_Mutier Active', NULL, 0),
(732, 1, 'user', 82, 'activity_change_status', '2021-05-22 10:10:09', 'fa-user', NULL, 'Rasha_Redwan Active', NULL, 0),
(733, 1, 'user', 82, 'activity_added_new_user', '2021-05-22 10:10:25', 'fa-user', NULL, 'Rasha_Redwan', NULL, 0),
(734, 1, 'user', 83, 'activity_added_new_user', '2021-05-22 10:10:39', 'fa-user', NULL, 'Asmaa_Mutier', NULL, 0),
(735, 80, 'tasks', 60, 'activity_update_task', '2021-05-22 10:14:04', 'fa-tasks', 'admin/tasks/view_task_details/60', 'تحديث بالصور ', NULL, 0),
(736, 80, 'tasks', 61, 'activity_update_task', '2021-05-22 10:20:44', 'fa-tasks', 'admin/tasks/view_task_details/61', 'سحلب فلسطيني ', NULL, 0),
(737, 80, 'tasks', 62, 'activity_update_task', '2021-05-22 10:27:02', 'fa-tasks', 'admin/tasks/view_task_details/62', 'مقابلة بعنوان عمار العكر في دقيقتين ', NULL, 0),
(738, 1, 'user', 83, 'activity_added_new_user', '2021-05-22 10:28:30', 'fa-user', NULL, 'Asmaa_Mutier', NULL, 0),
(739, 1, 'tasks', 62, 'activity_update_task', '2021-05-22 10:32:15', 'fa-tasks', 'admin/tasks/view_task_details/62', 'مقابلة بعنوان عمار العكر في دقيقتين ', NULL, 0),
(740, 1, 'tasks', 62, 'activity_new_project_attachment', '2021-05-22 10:32:47', 'fa-folder-open-o', 'admin/tasks/view_task_details/62/3', 'محاور المقابلة مع السيد عمار العكر ', NULL, 0),
(741, 80, 'tasks', 63, 'activity_update_task', '2021-05-22 11:29:39', 'fa-tasks', 'admin/tasks/view_task_details/63', 'مقابلات مع الموظفين', NULL, 0),
(742, 80, 'tasks', 64, 'activity_update_task', '2021-05-22 11:30:58', 'fa-tasks', 'admin/tasks/view_task_details/64', 'وثائق خاصة في عمار ', NULL, 0),
(743, 1, 'settings', 1, 'activity_update_profile', '2021-05-22 12:33:02', 'fa-coffee', NULL, 'Eng. Muhammad Abu Ali', NULL, 0),
(744, 1, 'projects', 36, 'activity_new_project_comment', '2021-05-23 05:49:01', 'fa-folder-open-o', 'admin/projects/project_details/36/3', 'Email  : dr.hamzatheeb1955@gmail.com', NULL, 0),
(745, 1, 'user', 81, 'activity_added_new_user', '2021-05-23 06:44:26', 'fa-user', NULL, 'Rand Bader', NULL, 0),
(746, 1, 'user', 81, 'activity_added_new_user', '2021-05-23 06:46:17', 'fa-user', NULL, 'Rand Bader', NULL, 0),
(747, 80, 'settings', 80, 'activity_password_update', '2021-05-23 06:58:40', 'fa-coffee', NULL, 'hadeelnabil', NULL, 0),
(748, 78, 'projects', 34, 'activity_new_project_comment', '2021-05-23 07:06:55', 'fa-folder-open-o', 'admin/projects/project_details/34/3', 'Gentlemen, Facebook Inc. My name is Ammar Aker, I am writing to you regarding the request to verify my personal page. I am a Palestinian businessman, as I started my work life from scratch and ran my job until I became one of the biggest businessmen in Palestine and the CEO of the largest Palestinian telecommunications company and a member of Paltel Groub’s Board of Directors, and the reason for my desire to verify my personal page on Facebook is my fear of impersonation For my page and from fake accounts that may distort my image in front of the community, as this happened before and fake accounts were created in my name.\nRegrds,\nAmmar Aker. ', NULL, 0),
(749, 78, 'tasks', 65, 'activity_update_task', '2021-05-23 08:29:36', 'fa-tasks', 'admin/tasks/view_task_details/65', 'USmart Team | Visual Content Processing | By Media Production Team', NULL, 0),
(750, 78, 'tasks', 65, 'activity_update_task', '2021-05-23 08:42:18', 'fa-tasks', 'admin/tasks/view_task_details/65', 'USmart Team | Visual Content Processing | By Media Production Team', NULL, 0),
(751, 80, 'projects', 34, 'activity_new_project_attachment', '2021-05-23 08:42:52', 'fa-folder-open-o', 'admin/projects/project_details/34/4', 'توثيق صفحة عمار العكر ', NULL, 0),
(752, 78, 'tasks', 66, 'activity_update_task', '2021-05-23 09:03:14', 'fa-tasks', 'admin/tasks/view_task_details/66', 'USmart Team | Write The Names and Information Of The Available Courses And a Full Description About Them| By Mr. Jawdat Sisan', NULL, 0),
(753, 78, 'tasks', 67, 'activity_update_task', '2021-05-23 09:22:23', 'fa-tasks', 'admin/tasks/view_task_details/67', 'USmart Team |Names And Information Of The Trainers And Their CVs | By Mr. Jawdat Sisan', NULL, 0),
(754, 1, 'projects', 31, 'activity_new_project_attachment', '2021-05-23 09:40:20', 'fa-folder-open-o', 'admin/projects/project_details/31/4', 'سيف القدس - السيناريو  ', NULL, 0),
(755, 1, 'projects', 31, 'activity_project_attachfile_deleted', '2021-05-23 10:03:56', 'fa-folder-open-o', 'admin/projects/project_details/31/4', 'سيف القدس - السيناريو  ', NULL, 0),
(756, 1, 'projects', 31, 'activity_new_project_attachment', '2021-05-23 10:04:28', 'fa-folder-open-o', 'admin/projects/project_details/31/4', 'سيف القدس - السيناريو  ', NULL, 0),
(757, 1, 'client', NULL, 'activity_added_new_contact', '2021-05-23 10:06:16', 'fa-user', NULL, 'أ. جودت صيصان ', NULL, 0),
(758, 78, 'client', 84, 'activity_update_contact', '2021-05-23 10:11:30', 'fa-user', NULL, 'أ. جودت صيصان ', NULL, 0),
(759, 81, 'tasks', 68, 'activity_update_task', '2021-05-23 10:18:00', 'fa-tasks', 'admin/tasks/view_task_details/68', 'رسالة طلب توثيق صفحة عمار العكر', NULL, 0),
(760, 81, 'tasks', 68, 'activity_new_project_attachment', '2021-05-23 10:22:25', 'fa-folder-open-o', 'admin/tasks/view_task_details/68/3', 'رسالة طلب توثيق صفحة عمار العكر', NULL, 0),
(761, 78, 'client', 114, 'activity_added_new_company', '2021-05-23 11:18:53', 'fa-user', NULL, 'Usmart Training Center ', NULL, 0),
(762, 78, 'client', NULL, 'activity_added_new_contact', '2021-05-23 11:20:51', 'fa-user', NULL, 'Hania Al Khairi', NULL, 0),
(763, 78, 'client', 85, 'activity_update_contact', '2021-05-23 11:21:59', 'fa-user', NULL, 'Hania Al Khairi', NULL, 0),
(764, 78, 'client', NULL, 'activity_added_new_contact', '2021-05-23 11:23:10', 'fa-user', NULL, 'Hania Al Khairi', NULL, 0),
(765, 78, 'client', 86, 'activity_update_contact', '2021-05-23 11:25:12', 'fa-user', NULL, 'Hania Al Khairi', NULL, 0),
(766, 1, 'client', 120, 'activity_update_company', '2021-05-23 12:34:21', 'fa-user', NULL, 'Waleed Al-Hodali', NULL, 0),
(767, 1, 'projects', 37, 'activity_save_project', '2021-05-23 12:34:42', 'fa-folder-open-o', 'admin/projects/project_details/37', 'Haf7a Film', NULL, 0),
(768, 1, 'projects', 37, 'activity_update_project', '2021-05-23 12:35:01', 'fa-folder-open-o', 'admin/projects/project_details/37', 'Naf7a Film', NULL, 0),
(769, 1, 'client', 120, 'activity_added_new_company', '2021-05-23 12:37:47', 'fa-user', NULL, 'Waleed Al-Hodali', NULL, 0),
(770, 80, 'client', NULL, 'activity_added_new_contact', '2021-05-23 13:26:09', 'fa-user', NULL, 'أ.وليد ابراهيم الهودلي', NULL, 0),
(771, 79, 'tasks', 69, 'activity_update_task', '2021-05-23 13:52:56', 'fa-tasks', 'admin/tasks/view_task_details/69', 'توحيد شارة خاصة بالفيديوهات ', NULL, 0),
(772, 1, 'tasks', 70, 'activity_update_task', '2021-05-23 14:00:24', 'fa-tasks', 'admin/tasks/view_task_details/70', '50-500  poster ', NULL, 0),
(773, 79, 'tasks', 71, 'activity_update_task', '2021-05-24 06:50:30', 'fa-tasks', 'admin/tasks/view_task_details/71', 'تصميم صورة خاصة باليوتيوب ', NULL, 0),
(774, 79, 'tasks', 72, 'activity_update_task', '2021-05-24 06:53:50', 'fa-tasks', 'admin/tasks/view_task_details/72', 'نشر مقاطع من الفيلم الخاص بوليد الهودلي على الفيسبوك ', NULL, 0),
(775, 79, 'tasks', 73, 'activity_update_task', '2021-05-24 06:54:48', 'fa-tasks', 'admin/tasks/view_task_details/73', 'بث مباشر ', NULL, 0),
(776, 79, 'tasks', 74, 'activity_update_task', '2021-05-24 06:56:01', 'fa-tasks', 'admin/tasks/view_task_details/74', 'شاشة عرض خارجية ', NULL, 0),
(777, 79, 'tasks', 75, 'activity_update_task', '2021-05-24 06:59:49', 'fa-tasks', 'admin/tasks/view_task_details/75', 'الفترة الترويجية ', NULL, 0),
(778, 79, 'tasks', 76, 'activity_update_task', '2021-05-24 07:00:58', 'fa-tasks', 'admin/tasks/view_task_details/76', 'مقابلة', NULL, 0),
(779, 79, 'tasks', 77, 'activity_update_task', '2021-05-24 07:02:08', 'fa-tasks', 'admin/tasks/view_task_details/77', 'فيديو معرفي ', NULL, 0),
(780, 79, 'tasks', 78, 'activity_update_task', '2021-05-24 07:07:08', 'fa-tasks', 'admin/tasks/view_task_details/78', 'فيديو تعريفي ', NULL, 0),
(781, 79, 'tasks', 79, 'activity_update_task', '2021-05-24 07:13:42', 'fa-tasks', 'admin/tasks/view_task_details/79', 'تصميم صورة خاصة باليوتيوب ', NULL, 0),
(782, 79, 'tasks', 80, 'activity_update_task', '2021-05-24 07:14:59', 'fa-tasks', 'admin/tasks/view_task_details/80', 'نشر مقاطع من الفيلم الخاص بوليد الهودلي على الفيسبوك ', NULL, 0),
(783, 79, 'tasks', 81, 'activity_update_task', '2021-05-24 07:16:25', 'fa-tasks', 'admin/tasks/view_task_details/81', 'بث مباشر ', NULL, 0),
(784, 79, 'tasks', 82, 'activity_update_task', '2021-05-24 07:16:31', 'fa-tasks', 'admin/tasks/view_task_details/82', 'بث مباشر ', NULL, 0),
(785, 79, 'tasks', 82, 'activity_update_task', '2021-05-24 07:19:32', 'fa-tasks', 'admin/tasks/view_task_details/82', 'شاشة عرض خارجية', NULL, 0),
(786, 79, 'tasks', 83, 'activity_update_task', '2021-05-24 07:25:41', 'fa-tasks', 'admin/tasks/view_task_details/83', 'الفترة الترويجية', NULL, 0),
(787, 79, 'tasks', 84, 'activity_update_task', '2021-05-24 07:30:12', 'fa-tasks', 'admin/tasks/view_task_details/84', 'فيديو معرفي', NULL, 0),
(788, 79, 'tasks', 85, 'activity_update_task', '2021-05-24 07:31:28', 'fa-tasks', 'admin/tasks/view_task_details/85', 'فيديو تعريفي', NULL, 0),
(789, 79, 'tasks', 86, 'activity_update_task', '2021-05-24 07:33:00', 'fa-tasks', 'admin/tasks/view_task_details/86', 'مقابلة', NULL, 0),
(790, 79, 'tasks', 87, 'activity_update_task', '2021-05-24 07:44:12', 'fa-tasks', 'admin/tasks/view_task_details/87', 'توحيد شارة خاصة بالفيديوهات', NULL, 0),
(791, 78, 'projects', 32, 'activity_new_project_attachment', '2021-05-24 07:50:15', 'fa-folder-open-o', 'admin/projects/project_details/32/4', 'مرفق الاتفاقية مع مركز Usmart', NULL, 0),
(792, 1, 'user', 84, 'activity_change_status', '2021-05-24 09:29:21', 'fa-user', NULL, 'usmart Deactive', NULL, 0),
(793, 1, 'tasks', 54, 'activity_update_task', '2021-05-24 10:02:46', 'fa-tasks', 'admin/tasks/view_task_details/54', 'Bilsan Social Media Daily Post ', NULL, 0),
(794, 78, 'client', 121, 'activity_update_company', '2021-05-27 09:34:55', 'fa-user', NULL, 'جمعية التنمية الزراعية- الإغاثة الزراعية', NULL, 0),
(795, 78, 'client', 78, 'activity_deleted_client', '2021-05-27 09:35:41', 'fa-user', NULL, 'جمعية التنمية الزراعية- الإغاثة الزراعية', NULL, 0),
(796, 78, 'client', 122, 'activity_update_company', '2021-05-27 09:44:42', 'fa-user', NULL, 'أ.مجدي', NULL, 0),
(797, 78, 'client', 122, 'activity_added_new_company', '2021-05-27 10:03:23', 'fa-user', NULL, 'Mr. Monjed Abu Jeish', NULL, 0),
(798, 78, 'projects', 38, 'activity_save_project', '2021-05-27 10:05:14', 'fa-folder-open-o', 'admin/projects/project_details/38', 'Agricultural Development Association (PARC)', NULL, 0),
(799, 80, 'projects', 37, 'activity_new_project_attachment', '2021-05-27 10:10:12', 'fa-folder-open-o', 'admin/projects/project_details/37/4', 'سناريو الفيديو التعريفي لوليد الهودلي', NULL, 0),
(800, 78, 'client', 122, 'activity_added_new_company', '2021-05-27 10:41:33', 'fa-user', NULL, 'Mr. Monjed Abu Jeish', NULL, 0),
(801, 80, 'tasks', 88, 'activity_update_task', '2021-05-27 11:08:17', 'fa-tasks', 'admin/tasks/view_task_details/88', 'تأثير رواية ستائر العتمة على ارض الواقع', NULL, 0),
(802, 78, 'user', 88, 'activity_update_user', '2021-05-29 07:52:33', 'fa-user', NULL, 'shahd alaa jamil enayah', NULL, 0),
(803, 78, 'user', 90, 'activity_update_user', '2021-05-29 07:56:43', 'fa-user', NULL, 'hadeel nabil mustafa isifan', NULL, 0),
(804, 78, 'user', 90, 'activity_update_user', '2021-05-29 08:18:27', 'fa-user', NULL, 'hadeel nabil mustafa isifan', NULL, 0),
(805, 80, 'tasks', 89, 'activity_update_task', '2021-05-29 08:23:26', 'fa-tasks', 'admin/tasks/view_task_details/89', 'معلومات عن كتب وليد الهودلي', NULL, 0),
(806, 80, 'tasks', 90, 'activity_update_task', '2021-05-29 09:05:36', 'fa-tasks', 'admin/tasks/view_task_details/90', 'تعديلات لصفحة الفيسبوك ', NULL, 0),
(807, 80, 'tasks', 87, 'activity_new_project_attachment', '2021-05-29 09:33:40', 'fa-folder-open-o', 'admin/tasks/view_task_details/87/3', 'العمل على شارة موحدة للفيديوهات', NULL, 0),
(808, 80, 'tasks', 90, 'activity_new_project_attachment', '2021-05-29 09:38:45', 'fa-folder-open-o', 'admin/tasks/view_task_details/90/3', 'تعديلات و إضافات لصفحة الفيسبوك ', NULL, 0),
(809, 80, 'tasks', 89, 'activity_new_project_attachment', '2021-05-29 09:47:46', 'fa-folder-open-o', 'admin/tasks/view_task_details/89/3', 'معلومات عن كتب وليد الهودلي', NULL, 0),
(810, 80, 'tasks', 88, 'activity_new_project_attachment', '2021-05-29 09:50:36', 'fa-folder-open-o', 'admin/tasks/view_task_details/88/3', 'تأثير رواية ستائر العتمة على ارض الواقع', NULL, 0),
(811, 80, 'tasks', 88, 'activity_new_project_attachment', '2021-05-29 09:50:42', 'fa-folder-open-o', 'admin/tasks/view_task_details/88/3', 'تأثير رواية ستائر العتمة على ارض الواقع', NULL, 0),
(812, 80, 'tasks', 83, 'activity_update_task', '2021-05-29 09:54:37', 'fa-tasks', 'admin/tasks/view_task_details/83', 'مقابلة مع وليد الهودلي ', NULL, 0),
(813, 80, 'tasks', 83, 'activity_update_task', '2021-05-29 09:55:30', 'fa-tasks', 'admin/tasks/view_task_details/83', 'مقابلة مع وليد الهودلي ', NULL, 0),
(814, 80, 'tasks', 83, 'activity_new_project_attachment', '2021-05-29 09:59:04', 'fa-folder-open-o', 'admin/tasks/view_task_details/83/3', 'مقابلة مع وليد الهودلي', NULL, 0),
(815, 80, 'tasks', 86, 'activity_task_deleted', '2021-05-29 10:02:44', 'fa-tasks', NULL, 'مقابلة', NULL, 0),
(816, 80, 'tasks', 84, 'activity_update_task', '2021-05-29 10:06:35', 'fa-tasks', 'admin/tasks/view_task_details/84', 'فيديو جراف', NULL, 0),
(817, 80, 'tasks', 84, 'activity_new_project_attachment', '2021-05-29 10:10:05', 'fa-folder-open-o', 'admin/tasks/view_task_details/84/3', 'فيديو جراف', NULL, 0),
(818, 80, 'tasks', 82, 'activity_new_project_attachment', '2021-05-29 10:18:45', 'fa-folder-open-o', 'admin/tasks/view_task_details/82/3', 'شاشة عرض خارجية', NULL, 0),
(819, 80, 'tasks', 81, 'activity_update_task', '2021-05-29 10:19:53', 'fa-tasks', 'admin/tasks/view_task_details/81', 'بث مباشر ', NULL, 0),
(820, 80, 'tasks', 80, 'activity_new_project_attachment', '2021-05-29 10:27:39', 'fa-folder-open-o', 'admin/tasks/view_task_details/80/3', 'نشر مقاطع من الفيلم الخاص بوليد الهودلي على الفيسبوك', NULL, 0),
(821, 80, 'tasks', 80, 'activity_new_project_attachment', '2021-05-29 10:27:45', 'fa-folder-open-o', 'admin/tasks/view_task_details/80/3', 'نشر مقاطع من الفيلم الخاص بوليد الهودلي على الفيسبوك', NULL, 0),
(822, 1, 'tasks', 52, 'activity_new_task_comment', '2021-05-30 07:33:13', 'fa-tasks', 'admin/tasks/view_task_details/52/2', 'http://bilsan.co/microJ.pdf', NULL, 0),
(823, 81, 'tasks', 91, 'activity_update_task', '2021-05-30 14:06:34', 'fa-tasks', 'admin/tasks/view_task_details/91', 'Yahia\'s presentation (script) _ By Muhammad Abu Ali', NULL, 0),
(824, 81, 'tasks', 92, 'activity_update_task', '2021-05-30 14:11:23', 'fa-tasks', 'admin/tasks/view_task_details/92', 'Yahia\'s presentation before  shooting', NULL, 0),
(825, 79, 'tasks', 93, 'activity_update_task', '2021-05-31 07:37:13', 'fa-tasks', 'admin/tasks/view_task_details/93', 'ترويسة A4', NULL, 0),
(826, 79, 'tasks', 94, 'activity_update_task', '2021-05-31 07:39:20', 'fa-tasks', 'admin/tasks/view_task_details/94', 'ترويسة A4/2 ', NULL, 0),
(827, 79, 'projects', 34, 'activity_new_project_attachment', '2021-05-31 12:04:23', 'fa-folder-open-o', 'admin/projects/project_details/34/4', 'قائمة الجمعيات النسوية ', NULL, 0),
(828, 79, 'projects', 34, 'activity_project_attachfile_deleted', '2021-05-31 12:05:05', 'fa-folder-open-o', 'admin/projects/project_details/34/4', 'قائمة الجمعيات النسوية ', NULL, 0),
(829, 79, 'projects', 39, 'activity_save_project', '2021-05-31 12:06:27', 'fa-folder-open-o', 'admin/projects/project_details/39', 'قائمة المؤسسات النسوية ', NULL, 0),
(830, 79, 'projects', 39, 'activity_new_project_attachment', '2021-05-31 12:08:42', 'fa-folder-open-o', 'admin/projects/project_details/39/4', 'قائمة الجمعيات النسوية ', NULL, 0),
(831, 80, 'tasks', 57, 'activity_update_task', '2021-05-31 12:55:01', 'fa-tasks', 'admin/tasks/view_task_details/57', 'برنامج عن المنح التي تقدمها مجموعة الاتصالات ', NULL, 0),
(832, 80, 'tasks', 58, 'activity_update_task', '2021-05-31 12:55:26', 'fa-tasks', 'admin/tasks/view_task_details/58', 'فيديو غراف لتعريف عن عمار العكر ', NULL, 0),
(833, 80, 'tasks', 59, 'activity_update_task', '2021-05-31 12:55:53', 'fa-tasks', 'admin/tasks/view_task_details/59', 'فيديو غراف لتعريف عن عمار العكر ', NULL, 0),
(834, 80, 'tasks', 60, 'activity_update_task', '2021-05-31 12:56:20', 'fa-tasks', 'admin/tasks/view_task_details/60', 'تحديث بالصور ', NULL, 0),
(835, 80, 'tasks', 61, 'activity_update_task', '2021-05-31 12:56:42', 'fa-tasks', 'admin/tasks/view_task_details/61', 'سحلب فلسطيني ', NULL, 0),
(836, 80, 'tasks', 62, 'activity_update_task', '2021-05-31 12:57:06', 'fa-tasks', 'admin/tasks/view_task_details/62', 'مقابلة بعنوان عمار العكر في دقيقتين ', NULL, 0),
(837, 80, 'tasks', 62, 'activity_update_task', '2021-05-31 12:57:12', 'fa-tasks', 'admin/tasks/view_task_details/62', 'مقابلة بعنوان عمار العكر في دقيقتين ', NULL, 0),
(838, 80, 'tasks', 63, 'activity_update_task', '2021-05-31 12:57:32', 'fa-tasks', 'admin/tasks/view_task_details/63', 'مقابلات مع الموظفين', NULL, 0),
(839, 80, 'tasks', 64, 'activity_update_task', '2021-05-31 12:58:01', 'fa-tasks', 'admin/tasks/view_task_details/64', 'وثائق خاصة في عمار ', NULL, 0),
(840, 80, 'tasks', 68, 'activity_update_task', '2021-05-31 12:58:25', 'fa-tasks', 'admin/tasks/view_task_details/68', 'رسالة طلب توثيق صفحة عمار العكر', NULL, 0),
(841, 80, 'tasks', 93, 'activity_update_task', '2021-05-31 12:58:48', 'fa-tasks', 'admin/tasks/view_task_details/93', 'ترويسة A4', NULL, 0),
(842, 80, 'tasks', 94, 'activity_update_task', '2021-05-31 12:59:08', 'fa-tasks', 'admin/tasks/view_task_details/94', 'ترويسة A4/2 ', NULL, 0),
(843, 1, 'projects', 39, 'activity_update_project', '2021-05-31 13:44:57', 'fa-folder-open-o', 'admin/projects/project_details/39', 'قائمة المؤسسات النسوية ', NULL, 0),
(844, 1, 'projects', 39, 'activity_update_project', '2021-05-31 13:45:53', 'fa-folder-open-o', 'admin/projects/project_details/39', 'Female Organizations Target ', NULL, 0),
(845, 79, 'projects', 39, 'activity_project_attachfile_deleted', '2021-05-31 13:46:49', 'fa-folder-open-o', 'admin/projects/project_details/39/4', 'قائمة الجمعيات النسوية ', NULL, 0),
(846, 79, 'projects', 39, 'activity_new_project_attachment', '2021-05-31 13:52:08', 'fa-folder-open-o', 'admin/projects/project_details/39/4', 'Female Organizations Target', NULL, 0),
(847, 79, 'projects', 39, 'activity_new_project_attachment', '2021-05-31 13:52:11', 'fa-folder-open-o', 'admin/projects/project_details/39/4', 'Female Organizations Target', NULL, 0),
(848, 79, 'projects', 39, 'activity_project_attachfile_deleted', '2021-05-31 13:52:28', 'fa-folder-open-o', 'admin/projects/project_details/39/4', 'Female Organizations Target', NULL, 0),
(849, 1, 'tasks', 94, 'activity_new_project_attachment', '2021-05-31 19:16:37', 'fa-folder-open-o', 'admin/tasks/view_task_details/94/3', 'AmmarAlAkerEvents ', NULL, 0),
(850, 1, 'tasks', 94, 'activity_new_project_attachment', '2021-05-31 19:16:43', 'fa-folder-open-o', 'admin/tasks/view_task_details/94/3', 'AmmarAlAkerEvents ', NULL, 0),
(851, 1, 'tasks', 94, 'activity_new_project_attachment', '2021-05-31 19:20:04', 'fa-folder-open-o', 'admin/tasks/view_task_details/94/3', 'PaltelGroupEvents', NULL, 0),
(852, 1, 'projects', 36, 'activity_new_project_attachment', '2021-05-31 19:26:53', 'fa-folder-open-o', 'admin/projects/project_details/36/4', 'كتب الدكتور حمزة ', NULL, 0),
(853, 81, 'tasks', 95, 'activity_update_task', '2021-06-01 12:26:44', 'fa-tasks', 'admin/tasks/view_task_details/95', 'أسئلة ليجيب عنها الأستاذ عمار العكر', NULL, 0),
(854, 81, 'projects', 34, 'activity_new_project_attachment', '2021-06-01 12:40:30', 'fa-folder-open-o', 'admin/projects/project_details/34/4', 'أسئلة عمار العكر', NULL, 0),
(855, 79, 'projects', 39, 'activity_project_attachfile_deleted', '2021-06-01 13:44:09', 'fa-folder-open-o', 'admin/projects/project_details/39/4', 'Female Organizations Target', NULL, 0),
(856, 79, 'projects', 39, 'activity_new_project_attachment', '2021-06-01 13:45:32', 'fa-folder-open-o', 'admin/projects/project_details/39/4', 'Female Organizations Target', NULL, 0),
(857, 78, 'user', 88, 'activity_added_new_user', '2021-06-02 06:40:57', 'fa-user', NULL, 'Aseel', NULL, 0),
(858, 1, 'user', 88, 'activity_added_new_user', '2021-06-02 08:24:41', 'fa-user', NULL, 'Aseel', NULL, 0),
(859, 78, 'leads', 9, 'activity_save_leads', '2021-06-02 11:00:11', 'fa-rocket', 'admin/leads/leads_details/9', 'الشركة الوطنية لصناعة الألمنيوم والبروفيلات (نابكو)', NULL, 0),
(860, 78, 'leads', 10, 'activity_save_leads', '2021-06-02 11:01:57', 'fa-rocket', 'admin/leads/leads_details/10', 'شركة سنيورة للصناعات', NULL, 0),
(861, 78, 'leads', 11, 'activity_save_leads', '2021-06-02 11:48:38', 'fa-rocket', 'admin/leads/leads_details/11', 'شركة يونيبال للتجارة العامة', NULL, 0),
(862, 78, 'leads', 12, 'activity_save_leads', '2021-06-02 11:50:45', 'fa-rocket', 'admin/leads/leads_details/12', 'الشركة الفلسطينية للسيارات', NULL, 0),
(863, 78, 'leads', 13, 'activity_save_leads', '2021-06-02 12:00:29', 'fa-rocket', 'admin/leads/leads_details/13', 'شركة التوريدات والخدمات الطبية', NULL, 0),
(864, 78, 'leads', 14, 'activity_save_leads', '2021-06-02 12:01:47', 'fa-rocket', 'admin/leads/leads_details/14', 'الشركة العربية الفلسطينية لمراكز التسوق (برافو)', NULL, 0),
(865, 78, 'leads', 15, 'activity_save_leads', '2021-06-02 12:09:10', 'fa-rocket', 'admin/leads/leads_details/15', 'شركة سكاي للدعاية والإعلان والترويج', NULL, 0),
(866, 78, 'leads', 16, 'activity_save_leads', '2021-06-02 12:12:29', 'fa-rocket', 'admin/leads/leads_details/16', 'PECDAR', NULL, 0),
(867, 78, 'leads', 17, 'activity_save_leads', '2021-06-02 12:22:52', 'fa-rocket', 'admin/leads/leads_details/17', 'مدى', NULL, 0),
(868, 81, 'tasks', 96, 'activity_update_task', '2021-06-02 12:28:09', 'fa-tasks', 'admin/tasks/view_task_details/96', 'promotion سلسلة كورونيات', NULL, 0),
(869, 81, 'tasks', 97, 'activity_update_task', '2021-06-02 12:28:17', 'fa-tasks', 'admin/tasks/view_task_details/97', 'promotion سلسلة كورونيات', NULL, 0),
(870, 81, 'tasks', 98, 'activity_update_task', '2021-06-02 12:28:24', 'fa-tasks', 'admin/tasks/view_task_details/98', 'promotion سلسلة كورونيات', NULL, 0),
(871, 81, 'tasks', 96, 'activity_task_deleted', '2021-06-02 12:34:00', 'fa-tasks', NULL, 'promotion سلسلة كورونيات', NULL, 0),
(872, 81, 'tasks', 98, 'activity_task_deleted', '2021-06-02 12:34:04', 'fa-tasks', NULL, 'promotion سلسلة كورونيات', NULL, 0),
(873, 1, 'projects', 34, 'activity_update_project', '2021-06-03 07:21:12', 'fa-folder-open-o', 'admin/projects/project_details/34', 'Ammar Al-Akker | Social Media & Content Production', NULL, 0),
(874, 1, 'projects', 36, 'activity_update_project', '2021-06-03 07:21:40', 'fa-folder-open-o', 'admin/projects/project_details/36', 'Dr Hamza | Social Media ', NULL, 0),
(875, 1, 'projects', 36, 'activity_new_project_attachment', '2021-06-03 08:39:13', 'fa-folder-open-o', 'admin/projects/project_details/36/4', 'Dr Hamza | logo', NULL, 0),
(876, 1, 'projects', 36, 'activity_project_attachfile_deleted', '2021-06-03 08:44:57', 'fa-folder-open-o', 'admin/projects/project_details/36/4', 'Dr Hamza | logo', NULL, 0),
(877, 1, 'projects', 36, 'activity_new_project_attachment', '2021-06-03 08:45:25', 'fa-folder-open-o', 'admin/projects/project_details/36/4', 'Dr Hamza | logo', NULL, 0),
(878, 1, 'projects', 36, 'activity_new_project_attachment', '2021-06-03 08:45:32', 'fa-folder-open-o', 'admin/projects/project_details/36/4', 'Dr Hamza | logo', NULL, 0),
(879, 1, 'projects', 29, 'activity_update_project', '2021-06-03 10:16:38', 'fa-folder-open-o', 'admin/projects/project_details/29', 'Bilsan Media Production | Content Production ', NULL, 0),
(880, 79, 'tasks', 95, 'activity_update_task', '2021-06-03 11:21:21', 'fa-tasks', 'admin/tasks/view_task_details/95', '100', NULL, 0),
(881, 79, 'tasks', 95, 'activity_task_deleted', '2021-06-03 11:21:27', 'fa-tasks', NULL, 'أسئلة ليجيب عنها الأستاذ عمار العكر', NULL, 0),
(882, 79, 'projects', 34, 'activity_new_project_attachment', '2021-06-03 11:25:35', 'fa-folder-open-o', 'admin/projects/project_details/34/4', 'اسئلة عمار العكر \" معدل\" ', NULL, 0),
(883, 78, 'transactions', 14, 'activity_new_expense', '2021-06-03 12:05:53', 'fa-building-o', 'admin/transactions/view_details/14', 'Bilsan Business Solutions', '30', 0),
(884, 88, 'client', 123, 'activity_update_company', '2021-06-03 13:14:48', 'fa-user', NULL, 'MOH', NULL, 0),
(885, 1, 'projects', 40, 'activity_save_project', '2021-06-05 10:51:58', 'fa-folder-open-o', 'admin/projects/project_details/40', 'Bilsan JCIA MOH ', NULL, 0),
(886, 1, 'leads', 8, 'activity_leads_deleted', '2021-06-05 16:50:06', 'fa-rocket', NULL, 'HIS System\\financier', NULL, 0),
(887, 1, 'leads', 7, 'activity_leads_deleted', '2021-06-05 16:50:06', 'fa-rocket', NULL, 'public relation training', NULL, 0),
(888, 1, 'leads', 6, 'activity_leads_deleted', '2021-06-05 16:50:06', 'fa-rocket', NULL, 'Training', NULL, 0),
(889, 1, 'leads', 5, 'activity_leads_deleted', '2021-06-05 16:50:06', 'fa-rocket', NULL, 'HIS System', NULL, 0),
(890, 1, 'leads', 4, 'activity_leads_deleted', '2021-06-05 16:50:06', 'fa-rocket', NULL, 'JCIA Training', NULL, 0),
(891, 1, 'projects', 39, 'activity_update_project', '2021-06-05 17:08:31', 'fa-folder-open-o', 'admin/projects/project_details/39', 'Feminist organizations in Palestine', NULL, 0),
(892, 1, 'projects', 41, 'activity_save_project', '2021-06-05 17:09:43', 'fa-folder-open-o', 'admin/projects/project_details/41', 'Bilsan | Project Manager | Task ', NULL, 0),
(893, 1, 'projects', 41, 'activity_update_project', '2021-06-05 17:11:49', 'fa-folder-open-o', 'admin/projects/project_details/41', 'Bilsan | Project Manager | Tasks', NULL, 0),
(894, 78, 'user', 89, 'activity_added_new_user', '2021-06-06 06:18:15', 'fa-user', NULL, 'Mohmad', NULL, 0),
(895, 88, 'projects', 40, 'activity_update_project', '2021-06-06 07:47:26', 'fa-folder-open-o', 'admin/projects/project_details/40', 'Bilsan JCIA MOH ', NULL, 0),
(896, 78, 'projects', 42, 'activity_save_project', '2021-06-06 11:32:30', 'fa-folder-open-o', 'admin/projects/project_details/42', 'Palestinian Bar Association | Archive Project', NULL, 0),
(897, 88, 'tasks', 98, 'activity_update_task', '2021-06-06 11:36:26', 'fa-tasks', 'admin/tasks/view_task_details/98', 'Finalize details with Mo / Prepare training description ', NULL, 0),
(898, 1, 'projects', 41, 'activity_project_deleted', '2021-06-06 11:44:32', 'fa-folder-open-o', NULL, 'Bilsan | Project Manager | Tasks', NULL, 0),
(899, 88, 'tasks', 99, 'activity_update_task', '2021-06-06 12:41:50', 'fa-tasks', 'admin/tasks/view_task_details/99', 'Contact Amal شؤون الطلبة/ الخضوري ', NULL, 0),
(900, 88, 'tasks', 100, 'activity_update_task', '2021-06-06 12:43:04', 'fa-tasks', 'admin/tasks/view_task_details/100', 'Email Amal with the training description ', NULL, 0),
(901, 88, 'tasks', 101, 'activity_update_task', '2021-06-06 12:44:25', 'fa-tasks', 'admin/tasks/view_task_details/101', 'Sign agreements with 10 students ', NULL, 0),
(902, 88, 'tasks', 102, 'activity_update_task', '2021-06-06 12:46:29', 'fa-tasks', 'admin/tasks/view_task_details/102', 'Sign agreement with Tahani ', NULL, 0),
(903, 88, 'tasks', 103, 'activity_update_task', '2021-06-06 12:47:17', 'fa-tasks', 'admin/tasks/view_task_details/103', 'Purchase 2 printers ', NULL, 0),
(904, 88, 'tasks', 104, 'activity_update_task', '2021-06-06 12:47:24', 'fa-tasks', 'admin/tasks/view_task_details/104', 'Purchase 2 printers ', NULL, 0),
(905, 88, 'tasks', 105, 'activity_update_task', '2021-06-06 12:48:35', 'fa-tasks', 'admin/tasks/view_task_details/105', 'In-house training ', NULL, 0),
(906, 88, 'projects', 42, 'activity_update_project', '2021-06-06 12:49:35', 'fa-folder-open-o', 'admin/projects/project_details/42', 'Palestinian Bar Association | Archive Project', NULL, 0),
(907, 88, 'settings', 88, 'activity_update_profile', '2021-06-06 12:50:19', 'fa-coffee', NULL, 'Aseel Rezeq Hussein Marabeh', NULL, 0),
(908, 78, 'tasks', 103, 'activity_task_deleted', '2021-06-06 12:53:12', 'fa-tasks', NULL, 'Purchase 2 printers ', NULL, 0),
(909, 88, 'settings', 88, 'activity_update_profile', '2021-06-06 12:53:37', 'fa-coffee', NULL, 'Aseel Rezeq Hussein Marabeh', NULL, 0),
(910, 88, 'settings', 88, 'activity_update_profile', '2021-06-06 12:53:48', 'fa-coffee', NULL, 'Aseel Rezeq Hussein Marabeh', NULL, 0),
(911, 88, 'tasks', 106, 'activity_update_task', '2021-06-06 12:56:36', 'fa-tasks', 'admin/tasks/view_task_details/106', 'Contact Dr. Wael Sheikh ', NULL, 0),
(912, 78, 'projects', 43, 'activity_save_project', '2021-06-06 12:58:04', 'fa-folder-open-o', 'admin/projects/project_details/43', 'NGO\'s Project', NULL, 0),
(913, 78, 'projects', 44, 'activity_save_project', '2021-06-06 12:58:13', 'fa-folder-open-o', 'admin/projects/project_details/44', 'NGO\'s Project', NULL, 0),
(914, 88, 'tasks', 107, 'activity_update_task', '2021-06-06 12:59:18', 'fa-tasks', 'admin/tasks/view_task_details/107', 'Meeting ', NULL, 0),
(915, 88, 'tasks', 108, 'activity_update_task', '2021-06-06 12:59:27', 'fa-tasks', 'admin/tasks/view_task_details/108', 'Meeting ', NULL, 0),
(916, 78, 'tasks', 109, 'activity_update_task', '2021-06-06 13:00:53', 'fa-tasks', 'admin/tasks/view_task_details/109', 'Prepare the NGOs List', NULL, 0),
(917, 88, 'tasks', 110, 'activity_update_task', '2021-06-06 13:01:53', 'fa-tasks', 'admin/tasks/view_task_details/110', 'Send an email to Salam ', NULL, 0),
(918, 88, 'tasks', 111, 'activity_update_task', '2021-06-06 13:02:40', 'fa-tasks', 'admin/tasks/view_task_details/111', 'Meeting with Salam ', NULL, 0),
(919, 78, 'tasks', 112, 'activity_update_task', '2021-06-06 13:03:41', 'fa-tasks', 'admin/tasks/view_task_details/112', 'write a sample Email with our all files that relate to the project', NULL, 0),
(920, 78, 'tasks', 113, 'activity_update_task', '2021-06-06 13:04:51', 'fa-tasks', 'admin/tasks/view_task_details/113', 'prepare an offer with our prices ', NULL, 0),
(921, 78, 'projects', 43, 'activity_project_deleted', '2021-06-07 06:28:52', 'fa-folder-open-o', NULL, 'NGO\'s Project', NULL, 0),
(922, 78, 'projects', 45, 'activity_save_project', '2021-06-07 06:30:21', 'fa-folder-open-o', 'admin/projects/project_details/45', 'Saloons Content Project', NULL, 0),
(923, 78, 'projects', 46, 'activity_save_project', '2021-06-07 06:39:10', 'fa-folder-open-o', 'admin/projects/project_details/46', 'Jericho Villas  Project | social media + content', NULL, 0),
(924, 78, 'projects', 47, 'activity_save_project', '2021-06-07 07:24:40', 'fa-folder-open-o', 'admin/projects/project_details/47', 'JCIA AAUP ', NULL, 0),
(925, 78, 'user', 89, 'activity_added_new_user', '2021-06-07 07:56:43', 'fa-user', NULL, 'Mohmad', NULL, 0),
(926, 78, 'user', 89, 'activity_added_new_user', '2021-06-07 07:57:15', 'fa-user', NULL, 'Mohmad', NULL, 0),
(927, 78, 'projects', 38, 'activity_update_project', '2021-06-07 08:01:31', 'fa-folder-open-o', 'admin/projects/project_details/38', 'Agricultural Development Association |HR System', NULL, 0),
(928, 78, 'projects', 48, 'activity_save_project', '2021-06-07 08:03:46', 'fa-folder-open-o', 'admin/projects/project_details/48', 'Al Razi Hospital | ERP ', NULL, 0),
(929, 78, 'projects', 49, 'activity_save_project', '2021-06-07 08:04:49', 'fa-folder-open-o', 'admin/projects/project_details/49', 'Al Razi Hospital | HIS ', NULL, 0),
(930, 78, 'projects', 50, 'activity_save_project', '2021-06-07 10:09:32', 'fa-folder-open-o', 'admin/projects/project_details/50', 'Honey Project ', NULL, 0),
(931, 78, 'projects', 51, 'activity_save_project', '2021-06-07 10:09:41', 'fa-folder-open-o', 'admin/projects/project_details/51', 'Honey Project ', NULL, 0),
(932, 78, 'projects', 52, 'activity_save_project', '2021-06-07 10:09:50', 'fa-folder-open-o', 'admin/projects/project_details/52', 'Honey Project ', NULL, 0),
(933, 78, 'projects', 51, 'activity_project_deleted', '2021-06-07 10:10:05', 'fa-folder-open-o', NULL, 'Honey Project ', NULL, 0),
(934, 78, 'projects', 50, 'activity_project_deleted', '2021-06-07 10:10:08', 'fa-folder-open-o', NULL, 'Honey Project ', NULL, 0),
(935, 78, 'projects', 53, 'activity_save_project', '2021-06-07 10:12:59', 'fa-folder-open-o', 'admin/projects/project_details/53', 'Jerusalem Water Undertaking - ERP ', NULL, 0),
(936, 78, 'projects', 54, 'activity_save_project', '2021-06-07 10:17:44', 'fa-folder-open-o', 'admin/projects/project_details/54', 'Al Razi Hospital | Media ', NULL, 0),
(937, 78, 'tasks', 43, 'activity_update_task', '2021-06-07 10:23:02', 'fa-tasks', 'admin/tasks/view_task_details/43', 'Meeting With Palestine Bar Project Manager | Ms.Tahani Madhoun ', NULL, 0),
(938, 78, 'tasks', 43, 'activity_update_task', '2021-06-07 10:32:12', 'fa-tasks', 'admin/tasks/view_task_details/43', 'Meeting With Palestine Bar Project Manager | Ms.Tahani Madhoun ', NULL, 0),
(939, 78, 'client', 123, 'activity_added_new_company', '2021-06-07 10:34:24', 'fa-user', NULL, 'Dr. Wael Al Sheikh ', NULL, 0),
(940, 78, 'client', 123, 'activity_added_new_company', '2021-06-07 10:36:35', 'fa-user', NULL, 'Dr. Wael Al Sheikh ', NULL, 0),
(941, 78, 'client', 122, 'activity_added_new_company', '2021-06-07 10:39:58', 'fa-user', NULL, 'Mr. Monjed Abu Jeish', NULL, 0),
(942, 78, 'client', 124, 'activity_update_company', '2021-06-07 10:42:55', 'fa-user', NULL, 'Majdi Hussein | PARC ', NULL, 0),
(943, 78, 'client', 123, 'activity_added_new_company', '2021-06-07 10:43:48', 'fa-user', NULL, 'Dr. Wael Al Sheikh | MOH', NULL, 0),
(944, 78, 'client', 124, 'activity_added_new_company', '2021-06-07 10:44:17', 'fa-user', NULL, 'Majdi Hussein | PARC ', NULL, 0),
(945, 78, 'client', 111, 'activity_added_new_company', '2021-06-07 10:46:08', 'fa-user', NULL, 'Palestinian Bar  Association(PBA)', NULL, 0),
(946, 78, 'client', 111, 'activity_added_new_company', '2021-06-07 10:46:33', 'fa-user', NULL, 'Palestinian Bar  Association(PBA)', NULL, 0),
(947, 78, 'client', 125, 'activity_update_company', '2021-06-07 10:48:59', 'fa-user', NULL, 'salam Al Ratrout  | MOH', NULL, 0),
(948, 78, 'client', 126, 'activity_update_company', '2021-06-07 10:48:59', 'fa-user', NULL, 'salam Al Ratrout  | MOH', NULL, 0),
(949, 78, 'client', 127, 'activity_update_company', '2021-06-07 10:50:50', 'fa-user', NULL, 'Eng. Khaled | Jerusalem Water ', NULL, 0),
(950, 78, 'client', 128, 'activity_update_company', '2021-06-07 10:53:49', 'fa-user', NULL, 'Dr. Fawaz Hammad | Al Razi Hospital', NULL, 0),
(951, 88, 'client', 129, 'activity_update_company', '2021-06-07 11:31:25', 'fa-user', NULL, 'Tahani Madhoon | PBA', NULL, 0),
(952, 88, 'client', 129, 'activity_added_new_company', '2021-06-07 11:34:59', 'fa-user', NULL, 'Tahani Madhoon | PBA', NULL, 0),
(953, 88, 'client', 129, 'activity_added_new_company', '2021-06-07 11:46:54', 'fa-user', NULL, 'Tahani Madhoon | PBA', NULL, 0),
(954, 88, 'settings', 88, 'activity_update_profile', '2021-06-07 11:47:49', 'fa-coffee', NULL, 'Aseel Rezeq Hussein Marabeh', NULL, 0),
(955, 88, 'tasks', 114, 'activity_update_task', '2021-06-07 11:55:15', 'fa-tasks', 'admin/tasks/view_task_details/114', 'Call Eng. Khaled ', NULL, 0),
(956, 88, 'tasks', 115, 'activity_update_task', '2021-06-07 11:57:38', 'fa-tasks', 'admin/tasks/view_task_details/115', 'Email Eng. Khaled ', NULL, 0),
(957, 88, 'tasks', 116, 'activity_update_task', '2021-06-07 11:59:25', 'fa-tasks', 'admin/tasks/view_task_details/116', 'Meeting with Eng. Khaled ', NULL, 0),
(958, 88, 'tasks', 116, 'activity_update_task', '2021-06-07 12:00:15', 'fa-tasks', 'admin/tasks/view_task_details/116', 'Meeting with Eng. Khaled ', NULL, 0),
(959, 88, 'projects', 55, 'activity_save_project', '2021-06-07 12:03:53', 'fa-folder-open-o', 'admin/projects/project_details/55', 'JCIA - Promo Video ', NULL, 0),
(960, 88, 'departments', NULL, 'activity_added_a_department', '2021-06-07 12:05:21', 'fa-coffee', NULL, 'Management', NULL, 0),
(961, 88, 'departments', NULL, 'activity_added_a_department', '2021-06-07 12:06:20', 'fa-coffee', NULL, 'Management', NULL, 0),
(962, 88, 'tasks', 117, 'activity_update_task', '2021-06-07 12:14:13', 'fa-tasks', 'admin/tasks/view_task_details/117', 'Contact Amal ', NULL, 0),
(963, 88, 'tasks', 117, 'activity_update_task', '2021-06-07 12:15:02', 'fa-tasks', 'admin/tasks/view_task_details/117', 'Contact Amal ', NULL, 0),
(964, 88, 'tasks', 117, 'activity_update_task', '2021-06-07 12:15:11', 'fa-tasks', 'admin/tasks/view_task_details/117', 'Contact Amal ', NULL, 0),
(965, 88, 'client', 130, 'activity_update_company', '2021-06-07 12:29:27', 'fa-user', NULL, 'Amal |  Palestine Technical University – Kadoorie (College)', NULL, 0),
(966, 88, 'client', 131, 'activity_update_company', '2021-06-07 12:32:13', 'fa-user', NULL, 'Palestine Technical University – Kadoorie (College)', NULL, 0),
(967, 88, 'client', 130, 'activity_added_new_company', '2021-06-07 12:32:45', 'fa-user', NULL, 'Amal Haj Mohamad |  Palestine Technical University – Kadoorie (College)', NULL, 0),
(968, 88, 'tasks', 118, 'activity_update_task', '2021-06-07 13:14:31', 'fa-tasks', 'admin/tasks/view_task_details/118', 'Email Tahani ', NULL, 0),
(969, 88, 'projects', 47, 'activity_update_project', '2021-06-07 13:15:51', 'fa-folder-open-o', 'admin/projects/project_details/47', 'JCIA | Al Razi Hosp  |  AAUP ', NULL, 0),
(970, 88, 'tasks', 119, 'activity_update_task', '2021-06-07 13:23:42', 'fa-tasks', 'admin/tasks/view_task_details/119', 'Email Dr. Fawaz Hammad ', NULL, 0),
(971, 88, 'tasks', 120, 'activity_update_task', '2021-06-07 13:24:48', 'fa-tasks', 'admin/tasks/view_task_details/120', 'Call Dr. Fawaz Hammad ', NULL, 0),
(972, 88, 'tasks', 121, 'activity_update_task', '2021-06-07 13:29:11', 'fa-tasks', 'admin/tasks/view_task_details/121', 'Meeting with Dr. Fawaz Hammad ', NULL, 0),
(973, 88, 'tasks', 122, 'activity_update_task', '2021-06-07 13:30:04', 'fa-tasks', 'admin/tasks/view_task_details/122', 'Send the agreement to Dr. Fawaz Hammad ', NULL, 0),
(974, 88, 'tasks', 123, 'activity_update_task', '2021-06-07 13:30:54', 'fa-tasks', 'admin/tasks/view_task_details/123', 'Follow up | Dr. Fawaz Hammad ', NULL, 0),
(975, 88, 'projects', 38, 'activity_update_project', '2021-06-07 13:33:25', 'fa-folder-open-o', 'admin/projects/project_details/38', 'Agricultural Development Association |HR System', NULL, 0),
(976, 88, 'tasks', 124, 'activity_update_task', '2021-06-07 13:35:36', 'fa-tasks', 'admin/tasks/view_task_details/124', 'Follow up - Majdi Hussein', NULL, 0),
(977, 88, 'tasks', 125, 'activity_update_task', '2021-06-07 13:39:51', 'fa-tasks', 'admin/tasks/view_task_details/125', 'Meeting - Majdi Hussein ', NULL, 0),
(978, 88, 'projects', 56, 'activity_save_project', '2021-06-07 13:45:11', 'fa-folder-open-o', 'admin/projects/project_details/56', 'Recruitment ', NULL, 0),
(979, 88, 'tasks', 126, 'activity_update_task', '2021-06-08 08:24:55', 'fa-tasks', 'admin/tasks/view_task_details/126', 'call Tahani Madhoon', NULL, 0),
(980, 88, 'tasks', 117, 'activity_update_task', '2021-06-08 08:26:22', 'fa-tasks', 'admin/tasks/view_task_details/117', 'Contact Amal ', NULL, 0),
(981, 88, 'tasks', 127, 'activity_update_task', '2021-06-08 08:28:05', 'fa-tasks', 'admin/tasks/view_task_details/127', 'Contact Amal', NULL, 0);
INSERT INTO `tbl_activities` (`activities_id`, `user`, `module`, `module_field_id`, `activity`, `activity_date`, `icon`, `link`, `value1`, `value2`, `deleted`) VALUES
(982, 88, 'tasks', 128, 'activity_update_task', '2021-06-08 08:28:13', 'fa-tasks', 'admin/tasks/view_task_details/128', 'Contact Amal', NULL, 0),
(983, 88, 'tasks', 127, 'activity_task_deleted', '2021-06-08 08:31:13', 'fa-tasks', NULL, 'Contact Amal', NULL, 0),
(984, 88, 'tasks', 123, 'activity_update_task', '2021-06-08 08:31:33', 'fa-tasks', 'admin/tasks/view_task_details/123', 'Follow up | Dr. Fawaz Hammad ', NULL, 0),
(985, 88, 'tasks', 124, 'activity_update_task', '2021-06-08 08:31:55', 'fa-tasks', 'admin/tasks/view_task_details/124', 'Follow up - Majdi Hussein', NULL, 0),
(986, 88, 'tasks', 110, 'activity_update_task', '2021-06-08 08:33:07', 'fa-tasks', 'admin/tasks/view_task_details/110', 'Send an email to Salam ', NULL, 0),
(987, 88, 'tasks', 110, 'activity_update_task', '2021-06-08 08:33:13', 'fa-tasks', 'admin/tasks/view_task_details/110', 'Send an email to Salam ', NULL, 0),
(988, 88, 'tasks', 128, 'activity_update_task', '2021-06-08 08:33:40', 'fa-tasks', 'admin/tasks/view_task_details/128', 'Contact Amal', NULL, 0),
(989, 88, 'tasks', 111, 'activity_update_task', '2021-06-08 08:33:58', 'fa-tasks', 'admin/tasks/view_task_details/111', 'Meeting with Salam ', NULL, 0),
(990, 88, 'tasks', 101, 'activity_update_task', '2021-06-08 08:34:21', 'fa-tasks', 'admin/tasks/view_task_details/101', 'Sign agreements with 10 students ', NULL, 0),
(991, 88, 'tasks', 102, 'activity_update_task', '2021-06-08 08:34:38', 'fa-tasks', 'admin/tasks/view_task_details/102', 'Sign agreement with Tahani ', NULL, 0),
(992, 88, 'tasks', 104, 'activity_update_task', '2021-06-08 08:34:54', 'fa-tasks', 'admin/tasks/view_task_details/104', 'Purchase 2 printers ', NULL, 0),
(993, 88, 'tasks', 105, 'activity_update_task', '2021-06-08 08:35:21', 'fa-tasks', 'admin/tasks/view_task_details/105', 'In-house training ', NULL, 0),
(994, 88, 'tasks', 115, 'activity_update_task', '2021-06-08 08:37:02', 'fa-tasks', 'admin/tasks/view_task_details/115', 'Email Eng. Khaled ', NULL, 0),
(995, 88, 'tasks', 116, 'activity_update_task', '2021-06-08 08:40:58', 'fa-tasks', 'admin/tasks/view_task_details/116', 'Meeting with Eng. Khaled ', NULL, 0),
(996, 88, 'tasks', 129, 'activity_update_task', '2021-06-08 08:54:35', 'fa-tasks', 'admin/tasks/view_task_details/129', ' email to Eng. Khaled & Malik Taha ', NULL, 0),
(997, 88, 'tasks', 129, 'activity_update_task', '2021-06-08 08:55:22', 'fa-tasks', 'admin/tasks/view_task_details/129', ' email  Eng. Khaled & Malik Taha ', NULL, 0),
(998, 88, 'client', 132, 'activity_update_company', '2021-06-08 08:58:08', 'fa-user', NULL, 'Malik Taha | Jerusalem Water Undertaking ', NULL, 0),
(999, 88, 'client', 132, 'activity_added_new_company', '2021-06-08 09:00:46', 'fa-user', NULL, 'Malik Taha | Jerusalem Water Undertaking ', NULL, 0),
(1000, 88, 'client', 127, 'activity_added_new_company', '2021-06-08 09:02:21', 'fa-user', NULL, 'Eng. Khaled | Jerusalem Water ', NULL, 0),
(1001, 88, 'projects', 57, 'activity_save_project', '2021-06-08 09:04:28', 'fa-folder-open-o', 'admin/projects/project_details/57', 'Bilsan Template Documemts ', NULL, 0),
(1002, 88, 'tasks', 126, 'activity_update_task', '2021-06-08 10:15:55', 'fa-tasks', 'admin/tasks/view_task_details/126', 'call Tahani Madhoon', NULL, 0),
(1003, 88, 'tasks', 130, 'activity_update_task', '2021-06-08 10:16:50', 'fa-tasks', 'admin/tasks/view_task_details/130', 'Follow up with the Finance department ', NULL, 0),
(1004, 88, 'tasks', 131, 'activity_update_task', '2021-06-08 10:21:05', 'fa-tasks', 'admin/tasks/view_task_details/131', 'ERP | Jerusalem Water Undertaking | Documents ', NULL, 0),
(1005, 88, 'tasks', 132, 'activity_update_task', '2021-06-08 10:31:03', 'fa-tasks', 'admin/tasks/view_task_details/132', 'Recruitment | Job descriptions', NULL, 0),
(1006, 88, 'tasks', 123, 'activity_update_task', '2021-06-08 10:35:11', 'fa-tasks', 'admin/tasks/view_task_details/123', 'Follow up | Dr. Fawaz Hammad ', NULL, 0),
(1007, 88, 'tasks', 133, 'activity_update_task', '2021-06-08 10:36:39', 'fa-tasks', 'admin/tasks/view_task_details/133', 'Call Dr. Fawaz Hammad ', NULL, 0),
(1008, 88, 'tasks', 134, 'activity_update_task', '2021-06-08 10:37:26', 'fa-tasks', 'admin/tasks/view_task_details/134', 'Sign agreement with Dr. Fawaz Hammad ', NULL, 0),
(1009, 88, 'tasks', 135, 'activity_update_task', '2021-06-08 11:40:29', 'fa-tasks', 'admin/tasks/view_task_details/135', 'Call Salam ', NULL, 0),
(1010, 88, 'tasks', 136, 'activity_update_task', '2021-06-08 11:44:41', 'fa-tasks', 'admin/tasks/view_task_details/136', 'PBA | Law system ', NULL, 0),
(1011, 88, 'projects', 58, 'activity_save_project', '2021-06-08 11:47:54', 'fa-folder-open-o', 'admin/projects/project_details/58', 'JCIA | Qatar Foundation ', NULL, 0),
(1012, 88, 'projects', 59, 'activity_save_project', '2021-06-08 11:50:28', 'fa-folder-open-o', 'admin/projects/project_details/59', 'Studio Rental ', NULL, 0),
(1013, 88, 'tasks', 137, 'activity_update_task', '2021-06-08 11:55:46', 'fa-tasks', 'admin/tasks/view_task_details/137', 'Set a PO. ', NULL, 0),
(1014, 88, 'tasks', 138, 'activity_update_task', '2021-06-08 11:57:03', 'fa-tasks', 'admin/tasks/view_task_details/138', 'Marketing Plan ', NULL, 0),
(1015, 88, 'projects', 53, 'activity_update_project', '2021-06-08 11:58:03', 'fa-folder-open-o', 'admin/projects/project_details/53', 'Jerusalem Water Undertaking - ERP ', NULL, 0),
(1016, 88, 'projects', 49, 'activity_update_project', '2021-06-08 11:58:44', 'fa-folder-open-o', 'admin/projects/project_details/49', 'Al Razi Hospital | HIS ', NULL, 0),
(1017, 88, 'projects', 48, 'activity_update_project', '2021-06-08 11:59:06', 'fa-folder-open-o', 'admin/projects/project_details/48', 'Al Razi Hospital | ERP ', NULL, 0),
(1018, 88, 'projects', 47, 'activity_update_project', '2021-06-08 11:59:27', 'fa-folder-open-o', 'admin/projects/project_details/47', 'JCIA | Al Razi Hosp  |  AAUP ', NULL, 0),
(1019, 88, 'projects', 38, 'activity_update_project', '2021-06-08 12:00:00', 'fa-folder-open-o', 'admin/projects/project_details/38', 'Agricultural Development Association |HR System', NULL, 0),
(1020, 88, 'projects', 27, 'activity_update_project', '2021-06-08 12:01:09', 'fa-folder-open-o', 'admin/projects/project_details/27', 'Law Solution | Palestine Bar', NULL, 0),
(1021, 88, 'client', 133, 'activity_update_company', '2021-06-08 12:05:37', 'fa-user', NULL, 'Sahab Zalmout |  Palestine Technical University – Kadoorie (College)', NULL, 0),
(1022, 88, 'tasks', 139, 'activity_update_task', '2021-06-08 12:07:13', 'fa-tasks', 'admin/tasks/view_task_details/139', 'Contact Sahab Zalmout', NULL, 0),
(1023, 88, 'tasks', 140, 'activity_update_task', '2021-06-08 12:09:09', 'fa-tasks', 'admin/tasks/view_task_details/140', 'Set up a marketing plan ', NULL, 0),
(1024, 88, 'projects', 60, 'activity_save_project', '2021-06-08 12:14:23', 'fa-folder-open-o', 'admin/projects/project_details/60', 'Models Database ', NULL, 0),
(1025, 88, 'projects', 61, 'activity_save_project', '2021-06-08 12:20:06', 'fa-folder-open-o', 'admin/projects/project_details/61', 'Project Management | Proposal Writing - Courses ', NULL, 0),
(1026, 88, 'tasks', 141, 'activity_update_task', '2021-06-08 12:22:17', 'fa-tasks', 'admin/tasks/view_task_details/141', 'Contact Tahani Madhoon ', NULL, 0),
(1027, 88, 'tasks', 135, 'activity_update_task', '2021-06-08 12:24:25', 'fa-tasks', 'admin/tasks/view_task_details/135', 'Call Salam ', NULL, 0),
(1028, 88, 'tasks', 102, 'activity_update_task', '2021-06-08 12:26:09', 'fa-tasks', 'admin/tasks/view_task_details/102', 'Sign agreement with Tahani ', NULL, 0),
(1029, 88, 'tasks', 101, 'activity_update_task', '2021-06-08 12:27:42', 'fa-tasks', 'admin/tasks/view_task_details/101', 'Sign agreements with 10 students ', NULL, 0),
(1030, 78, 'user', 90, 'activity_added_new_user', '2021-06-08 14:35:07', 'fa-user', NULL, 'Atef', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advance_salary`
--

DROP TABLE IF EXISTS `tbl_advance_salary`;
CREATE TABLE IF NOT EXISTS `tbl_advance_salary` (
  `advance_salary_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `advance_amount` varchar(200) NOT NULL,
  `deduct_month` varchar(30) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `request_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0 =pending,1=accpect , 2 = reject and 3 = paid',
  `approve_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`advance_salary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_allowed_ip`
--

DROP TABLE IF EXISTS `tbl_allowed_ip`;
CREATE TABLE IF NOT EXISTS `tbl_allowed_ip` (
  `allowed_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `allowed_ip` varchar(100) NOT NULL,
  `status` enum('active','reject','pending') DEFAULT 'pending',
  PRIMARY KEY (`allowed_ip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_announcements`
--

DROP TABLE IF EXISTS `tbl_announcements`;
CREATE TABLE IF NOT EXISTS `tbl_announcements` (
  `announcements_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('published','unpublished') NOT NULL DEFAULT 'unpublished' COMMENT '0 = unpublished, 1 = published',
  `view_status` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1=Read 2=Unread',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `all_client` varchar(20) DEFAULT NULL,
  `attachment` text DEFAULT NULL,
  PRIMARY KEY (`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_assign_item`
--

DROP TABLE IF EXISTS `tbl_assign_item`;
CREATE TABLE IF NOT EXISTS `tbl_assign_item` (
  `assign_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `assign_inventory` int(5) NOT NULL,
  `assign_date` date NOT NULL,
  PRIMARY KEY (`assign_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

DROP TABLE IF EXISTS `tbl_attendance`;
CREATE TABLE IF NOT EXISTS `tbl_attendance` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `leave_application_id` int(11) DEFAULT 0,
  `date_in` date DEFAULT NULL,
  `date_out` date DEFAULT NULL,
  `attendance_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'status 0=absent 1=present 3 = onleave',
  `clocking_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_attendance`
--

INSERT INTO `tbl_attendance` (`attendance_id`, `user_id`, `leave_application_id`, `date_in`, `date_out`, `attendance_status`, `clocking_status`) VALUES
(1, 1, 0, '2020-06-05', '2020-06-05', 1, 0),
(2, 1, 0, '2020-06-08', '2020-06-08', 1, 0),
(3, 7, 0, '2020-11-13', '2020-11-14', 1, 0),
(4, 12, 0, '2020-11-14', '2020-11-16', 1, 0),
(5, 12, 0, '2020-11-16', '2020-11-23', 1, 0),
(6, 12, 0, '2020-12-31', '2020-12-31', 1, 1),
(7, 1, 0, '2021-01-23', '2021-02-07', 1, 0),
(8, 1, 0, '2021-05-16', '2021-05-19', 1, 0),
(9, 78, 0, '2021-05-16', '2021-05-17', 1, 0),
(10, 80, 0, '2021-05-17', '2021-05-19', 1, 0),
(11, 78, 0, '2021-05-17', '2021-05-18', 1, 0),
(12, 78, 0, '2021-05-19', '2021-05-20', 1, 0),
(13, 78, 0, '2021-05-20', '2021-05-20', 1, 0),
(14, 1, 0, '2021-05-21', '2021-05-21', 1, 0),
(15, 78, 0, '2021-05-22', '2021-05-22', 1, 0),
(16, 78, 0, '2021-05-23', '2021-05-24', 1, 0),
(17, 78, 0, '2021-05-24', '2021-05-24', 1, 0),
(18, 78, 0, '2021-05-25', '2021-05-25', 1, 0),
(19, 78, 0, '2021-05-26', '2021-05-27', 1, 0),
(20, 78, 0, '2021-05-27', '2021-05-29', 1, 0),
(21, 80, 0, '2021-05-29', '2021-05-29', 1, 0),
(22, 78, 0, '2021-05-29', '2021-05-30', 1, 0),
(23, 78, 0, '2021-05-30', '2021-05-30', 1, 0),
(24, 78, 0, '2021-05-31', '2021-05-31', 1, 0),
(25, 80, 0, '2021-05-31', '2021-05-31', 1, 1),
(26, 78, 0, '2021-06-01', '2021-06-02', 1, 0),
(27, 78, 0, '2021-06-02', '2021-06-03', 1, 0),
(28, 88, 0, '2021-06-02', '2021-06-02', 1, 1),
(29, 78, 0, '2021-06-06', '2021-06-07', 1, 0),
(30, 78, 0, '2021-06-07', '2021-06-07', 1, 0),
(31, 78, 0, '2021-06-08', '2021-06-08', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bug`
--

DROP TABLE IF EXISTS `tbl_bug`;
CREATE TABLE IF NOT EXISTS `tbl_bug` (
  `bug_id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_no` varchar(50) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `opportunities_id` int(11) DEFAULT NULL,
  `task_id` int(11) NOT NULL DEFAULT 0,
  `bug_title` varchar(200) NOT NULL,
  `bug_description` text NOT NULL,
  `bug_status` varchar(30) DEFAULT NULL,
  `notes` text NOT NULL,
  `priority` varchar(20) NOT NULL,
  `severity` varchar(20) DEFAULT NULL,
  `reproducibility` text DEFAULT NULL,
  `reporter` int(11) DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `permission` text DEFAULT NULL,
  `client_visible` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_calls`
--

DROP TABLE IF EXISTS `tbl_calls`;
CREATE TABLE IF NOT EXISTS `tbl_calls` (
  `calls_id` int(11) NOT NULL AUTO_INCREMENT,
  `leads_id` int(11) DEFAULT NULL,
  `opportunities_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(20) CHARACTER SET latin1 NOT NULL,
  `call_summary` varchar(200) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`calls_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_checklists`
--

DROP TABLE IF EXISTS `tbl_checklists`;
CREATE TABLE IF NOT EXISTS `tbl_checklists` (
  `checklist_id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(32) DEFAULT NULL,
  `module_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `finished` int(11) DEFAULT 0,
  `create_datetime` datetime DEFAULT NULL,
  `added_from` int(11) DEFAULT NULL,
  `finished_from` int(11) DEFAULT NULL,
  `list_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`checklist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client`
--

DROP TABLE IF EXISTS `tbl_client`;
CREATE TABLE IF NOT EXISTS `tbl_client` (
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `primary_contact` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `short_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `currency` varchar(32) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `skype_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hosting_company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_status` tinyint(1) NOT NULL COMMENT '1 = person and 2 = company',
  `profile_photo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  `leads_id` int(11) NOT NULL,
  `latitude` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_group_id` int(11) DEFAULT NULL,
  `active` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `sms_notification` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_client`
--

INSERT INTO `tbl_client` (`client_id`, `primary_contact`, `name`, `email`, `short_note`, `website`, `phone`, `mobile`, `fax`, `address`, `city`, `zipcode`, `currency`, `skype_id`, `linkedin`, `facebook`, `twitter`, `language`, `country`, `vat`, `hosting_company`, `hostname`, `port`, `password`, `username`, `client_status`, `profile_photo`, `date_added`, `leads_id`, `latitude`, `longitude`, `customer_group_id`, `active`, `sms_notification`) VALUES
(107, 0, 'Shahd Alaa Jamil Enayah', 'shahdenayah@gmail.com', '', '', '', '', '', '', '', '', 'USD', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-05-16 08:06:14', 0, '', '', 4, '', NULL),
(108, 0, 'Raneem Hmadi Sabre Alawy', 'alawiraneem95@yahoo.com', '', '', '', '', '', '', '', '', 'USD', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-05-16 08:14:55', 0, '', '', 4, '', NULL),
(109, 0, 'Hadeel Nabil Mustafa Isifan', 'hadilnabil1998@gmail.com', '', '', '', '', '', '', '', '', 'USD', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-05-16 08:18:58', 0, '', '', 4, '', NULL),
(110, 95, 'Paltel Group', 'hania.khairy@paltelgroup.ps', '', '', '', '', '', '', '', '', 'ILS', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-05-16 10:19:52', 0, '', '', 7, '', NULL),
(111, NULL, 'Palestinian Bar  Association(PBA)', 'a.a@gmail.com', '', '', '', '', '', '', '', '', 'ILS', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-05-17 08:18:40', 0, '', '', 6, '', NULL),
(114, 94, 'Usmart Training Center ', 'usmart.ps@gmail.com', '', 'https://www.facebook.com/usmartps/', '0594 082 166', '0592882000', '', 'رام الله-البيرة - عمارة السلوادي - الطابق الثالث', 'Ramallah', '', 'ILS', '', '', '', '', 'english', 'Palestinian Territories', 'أ. جودت صيصان', 'Usmart', '', '', 'ZVZ1cTdjaUhqU3VlRmpqa1cyK1ZJUT09', 'Emadawwad', 0, NULL, '2021-05-17 22:32:20', 0, '', '', 5, '', NULL),
(115, 0, 'Rand Bader', 'randbader1999@hotmail.com', '', '', '', '', '', '', '', '', 'USD', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-05-18 14:18:56', 0, '', '', 4, '', NULL),
(116, NULL, 'Bilsan Business Solutions', 'info@bilsan.co', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-05-21 21:25:43', 0, '', '', NULL, '', NULL),
(117, NULL, 'Dr Hamza Theeb ', 'drhamzatheeb@gmail.com', '', '', '', '', '', '', '', '', NULL, '', '', '', '', NULL, 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-05-22 08:19:30', 0, '', '', NULL, '', NULL),
(118, 0, 'Rasha Naim Gabr Redwan', 'rasharedwankytc@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, NULL, NULL, NULL, 'english', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-05-22 08:38:43', 0, NULL, NULL, NULL, '', NULL),
(119, 0, 'Asmaa Ahmed Mohammed Mutier', 'asmaaahmed.local@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, NULL, NULL, NULL, 'english', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-05-22 08:39:05', 0, NULL, NULL, NULL, '', NULL),
(120, 97, 'Waleed Al-Hodali', 'w@bilsan.co', '', '', '0569150185', '', '', '', '', '', 'ILS', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-05-23 12:34:21', 0, '', '', 7, '', NULL),
(122, NULL, 'Mr. Monjed Abu Jeish', 'monjed@pal-arc.org', '', '', '', '', '', '', '', '', 'ILS', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-05-27 09:44:42', 0, '', '', 7, '', NULL),
(123, NULL, 'Dr. Wael Al Sheikh | MOH', 'd.m.alsheikh@moh.ps', '', '', '0562400999', '', '', '', '', '', 'ILS', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-06-03 13:14:48', 0, '', '', 3, '', NULL),
(124, NULL, 'Majdi Hussein | PARC ', 'aa@gmail.com', '', '', '0592498223', '', '', '', '', '', 'ILS', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-06-07 10:42:55', 0, '', '', 7, '', NULL),
(125, NULL, 'salam Al Ratrout  | MOH', 'salaam1413@gmail.com', '', '', '0562401064', '', '', '', '', '', 'ILS', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-06-07 10:48:59', 0, '', '', 7, '', NULL),
(126, NULL, 'salam Al Ratrout  | MOH', 'salaam1413@gmail.com', '', '', '0562401064', '', '', '', '', '', 'ILS', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-06-07 10:48:59', 0, '', '', 7, '', NULL),
(127, NULL, 'Eng. Khaled | Jerusalem Water ', 'khaled@jwu.org', '', '', '0599290574', '', '', '', '', '', 'ILS', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-06-07 10:50:50', 0, '', '', 7, '', NULL),
(128, NULL, 'Dr. Fawaz Hammad | Al Razi Hospital', 'fawaz.razihosp@gmail.com', '', '', '0597808022', '', '', '', '', '', 'ILS', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-06-07 10:53:49', 0, '', '', 3, '', NULL),
(129, NULL, 'Tahani Madhoon | PBA', 'tahaniabed2021@gmail.com', 'Project Manager at EU Funding | مديرة المنح الأوروبية', '', '0597388707', '', '', '', '', '', 'ILS', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-06-07 11:31:25', 0, '', '', 7, '', NULL),
(130, NULL, 'Amal Haj Mohamad |  Palestine Technical University – Kadoorie (College)', 'amal.hajmohamad@ptuk.edu.ps', '', '', '0599786649', '', '', '', '', '', 'ILS', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-06-07 12:29:27', 0, '', '', 7, '', NULL),
(131, NULL, 'Palestine Technical University – Kadoorie (College)', 'amal.hajmohamad@ptuk.edu.ps', '', '', '022956526', '', '', '', '', '', 'ILS', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-06-07 12:32:13', 0, '', '', 7, '', NULL),
(132, NULL, 'Malik Taha | Jerusalem Water Undertaking ', 'Malik.Taha@jwu.org', 'Information Systems Manager ', '', '022969191', '059819347', '', '', '', '', 'ILS', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-06-08 08:58:08', 0, '', '', 7, '', NULL),
(133, NULL, 'Sahab Zalmout |  Palestine Technical University – Kadoorie (College)', 'sales@bilsan.co', 'Training Coordinator ', '', '', '0569006111', '', '', '', '', 'ILS', '', '', '', '', 'english', 'Palestinian Territories', '', '', '', '', NULL, '', 0, NULL, '2021-06-08 12:05:37', 0, '', '', 7, '', NULL),
(134, 0, 'devarabid', 'devarabid22@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'USD', NULL, NULL, NULL, NULL, 'english', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-07-15 21:11:11', 0, NULL, NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_menu`
--

DROP TABLE IF EXISTS `tbl_client_menu`;
CREATE TABLE IF NOT EXISTS `tbl_client_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(20) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `icon` varchar(50) NOT NULL,
  `parent` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sort` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_client_menu`
--

INSERT INTO `tbl_client_menu` (`menu_id`, `label`, `link`, `icon`, `parent`, `time`, `sort`, `status`) VALUES
(1, 'projects', 'client/projects', 'fa fa-folder-open-o', 0, '2017-04-19 17:18:26', 3, 0),
(2, 'bugs', 'client/bugs', 'fa fa-bug', 0, '2017-04-19 17:18:39', 4, 0),
(3, 'invoices', 'client/invoice/manage_invoice', 'fa fa-shopping-cart', 0, '2017-04-19 17:18:42', 5, 0),
(4, 'estimates', 'client/estimates', 'fa fa-tachometer', 0, '2017-04-19 17:18:45', 6, 0),
(5, 'payments', 'client/invoice/all_payments', 'fa fa-money', 0, '2017-04-19 17:18:48', 7, 0),
(6, 'tickets', 'client/tickets', 'fa fa-ticket', 0, '2017-06-12 07:11:21', 8, 0),
(7, 'quotations', 'client/quotations', 'fa fa-paste', 0, '2017-04-19 17:18:56', 9, 0),
(8, 'users', 'client/user/user_list', 'fa fa-users', 0, '2017-04-19 17:18:59', 10, 0),
(9, 'settings', 'client/settings', 'fa fa-cogs', 0, '2017-04-19 17:19:03', 11, 0),
(12, 'answered', 'client/tickets/answered', 'fa fa-circle-o', 6, '2017-04-19 17:12:34', 1, 0),
(17, 'dashboard', 'client/dashboard', 'icon-speedometer', 0, '2017-04-19 17:17:21', 1, 0),
(18, 'mailbox', 'client/mailbox', 'fa fa-envelope', 0, '2017-04-19 17:17:21', 2, 0),
(19, 'private_chat', 'chat/conversations', 'fa fa-envelope', 0, '2017-12-09 21:03:43', 12, 0),
(20, 'filemanager', 'client/filemanager', 'fa fa-file', 0, '2017-06-03 05:08:23', 2, 1),
(21, 'proposals', 'client/proposals', 'fa fa-leaf', 0, '2017-07-21 04:21:08', 7, 1),
(22, 'knowledgebase', 'knowledgebase', 'fa fa-question-circle', 0, '2017-11-09 03:04:12', 12, 1),
(23, 'refund_items', 'client/invoice/refund_itemslist', 'icon-share-alt', 0, '2019-09-23 02:00:29', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_role`
--

DROP TABLE IF EXISTS `tbl_client_role`;
CREATE TABLE IF NOT EXISTS `tbl_client_role` (
  `client_role_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  PRIMARY KEY (`client_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=504 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_client_role`
--

INSERT INTO `tbl_client_role` (`client_role_id`, `user_id`, `menu_id`) VALUES
(1, 2, 3),
(2, 2, 4),
(3, 2, 6),
(4, 2, 7),
(5, 2, 18),
(6, 2, 19),
(7, 2, 21),
(8, 2, 22),
(9, 4, 1),
(10, 4, 2),
(11, 4, 3),
(12, 4, 5),
(13, 4, 6),
(14, 4, 7),
(15, 4, 17),
(16, 4, 19),
(17, 4, 20),
(18, 4, 21),
(19, 4, 22),
(104, 6, 17),
(105, 6, 20),
(106, 6, 18),
(107, 6, 1),
(108, 6, 2),
(109, 6, 3),
(110, 6, 4),
(111, 6, 5),
(112, 6, 21),
(113, 6, 6),
(114, 6, 7),
(115, 6, 22),
(224, 10, 17),
(225, 10, 20),
(226, 10, 18),
(227, 10, 1),
(228, 10, 2),
(229, 10, 3),
(230, 10, 4),
(231, 10, 5),
(232, 10, 21),
(233, 10, 6),
(234, 10, 7),
(235, 10, 22),
(248, 44, 17),
(249, 44, 20),
(250, 44, 18),
(251, 44, 1),
(252, 44, 2),
(253, 44, 3),
(254, 44, 4),
(255, 44, 5),
(256, 44, 21),
(257, 44, 6),
(258, 44, 7),
(259, 44, 22),
(260, 45, 17),
(261, 45, 20),
(262, 45, 18),
(263, 45, 1),
(264, 45, 2),
(265, 45, 3),
(266, 45, 4),
(267, 45, 5),
(268, 45, 21),
(269, 45, 6),
(270, 45, 7),
(271, 45, 22),
(272, 46, 17),
(273, 46, 20),
(274, 46, 18),
(275, 46, 1),
(276, 46, 2),
(277, 46, 3),
(278, 46, 4),
(279, 46, 5),
(280, 46, 21),
(281, 46, 6),
(282, 46, 7),
(283, 46, 22),
(296, 48, 17),
(297, 48, 20),
(298, 48, 18),
(299, 48, 1),
(300, 48, 2),
(301, 48, 3),
(302, 48, 4),
(303, 48, 5),
(304, 48, 21),
(305, 48, 6),
(306, 48, 7),
(307, 48, 22),
(320, 50, 17),
(321, 50, 20),
(322, 50, 18),
(323, 50, 1),
(324, 50, 2),
(325, 50, 3),
(326, 50, 4),
(327, 50, 5),
(328, 50, 21),
(329, 50, 6),
(330, 50, 7),
(331, 50, 22),
(380, 55, 17),
(381, 55, 20),
(382, 55, 18),
(383, 55, 1),
(384, 55, 2),
(385, 55, 3),
(386, 55, 4),
(387, 55, 5),
(388, 55, 21),
(389, 55, 6),
(390, 55, 7),
(391, 55, 22),
(392, 56, 17),
(393, 56, 20),
(394, 56, 18),
(395, 56, 1),
(396, 56, 2),
(397, 56, 3),
(398, 56, 4),
(399, 56, 5),
(400, 56, 21),
(401, 56, 6),
(402, 56, 7),
(403, 56, 22),
(416, 77, 17),
(417, 77, 20),
(418, 77, 18),
(419, 77, 1),
(420, 77, 2),
(421, 77, 3),
(422, 77, 4),
(423, 77, 5),
(424, 77, 21),
(425, 77, 6),
(426, 77, 7),
(427, 77, 22),
(462, 84, 1),
(463, 84, 2),
(464, 84, 3),
(465, 84, 5),
(466, 84, 6),
(467, 84, 7),
(468, 84, 17),
(469, 84, 19),
(470, 84, 20),
(471, 84, 21),
(472, 86, 1),
(473, 86, 2),
(474, 86, 3),
(475, 86, 5),
(476, 86, 6),
(477, 86, 7),
(478, 86, 17),
(479, 86, 19),
(480, 86, 20),
(481, 86, 21),
(482, 87, 1),
(483, 87, 2),
(484, 87, 3),
(485, 87, 5),
(486, 87, 6),
(487, 87, 7),
(488, 87, 17),
(489, 87, 19),
(490, 87, 20),
(491, 87, 21),
(492, 92, 17),
(493, 92, 20),
(494, 92, 18),
(495, 92, 1),
(496, 92, 2),
(497, 92, 3),
(498, 92, 4),
(499, 92, 5),
(500, 92, 21),
(501, 92, 6),
(502, 92, 7),
(503, 92, 22);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clock`
--

DROP TABLE IF EXISTS `tbl_clock`;
CREATE TABLE IF NOT EXISTS `tbl_clock` (
  `clock_id` int(11) NOT NULL AUTO_INCREMENT,
  `attendance_id` int(11) NOT NULL,
  `clockin_time` time DEFAULT NULL,
  `clockout_time` time DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `clocking_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1= clockin_time',
  `ip_address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`clock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_clock`
--

INSERT INTO `tbl_clock` (`clock_id`, `attendance_id`, `clockin_time`, `clockout_time`, `comments`, `clocking_status`, `ip_address`) VALUES
(1, 1, '19:30:39', '19:31:08', NULL, 0, '46.244.66.234'),
(2, 2, '10:01:07', '10:01:12', NULL, 0, '213.6.11.18'),
(3, 3, '17:45:26', '17:45:43', NULL, 0, '95.130.92.111'),
(4, 3, '20:22:03', '09:49:21', NULL, 0, '82.205.64.42'),
(5, 4, '10:06:39', '16:45:02', NULL, 0, '82.205.37.38'),
(6, 5, '16:45:06', '11:23:50', NULL, 0, '95.130.91.12'),
(7, 6, '12:44:53', NULL, NULL, 1, '84.242.51.2'),
(8, 7, '15:25:26', '09:32:49', NULL, 0, '82.102.228.43'),
(9, 8, '11:33:45', '21:10:22', NULL, 0, '37.8.114.248'),
(10, 9, '12:29:58', '10:02:02', NULL, 0, '82.205.103.231'),
(11, 10, '09:14:01', '01:53:26', NULL, 0, '82.205.103.231'),
(12, 11, '10:02:12', '02:26:57', NULL, 0, '188.227.235.111'),
(13, 12, '11:02:53', '11:02:57', NULL, 0, '37.8.66.255'),
(14, 12, '12:44:18', '03:16:37', NULL, 0, '37.8.66.255'),
(15, 13, '09:19:26', '17:09:54', NULL, 0, '37.8.66.255'),
(16, 14, '21:41:41', '22:22:03', NULL, 0, '188.161.103.129'),
(17, 15, '09:35:56', '17:00:32', NULL, 0, '82.205.33.232'),
(18, 15, '09:35:56', '09:35:56', NULL, 0, '82.205.33.232'),
(19, 15, '09:35:56', '09:35:56', NULL, 0, '82.205.33.232'),
(20, 15, '09:35:57', '09:35:57', NULL, 0, '82.205.33.232'),
(21, 15, '09:35:57', '09:35:57', NULL, 0, '82.205.33.232'),
(22, 15, '09:35:57', '09:35:57', NULL, 0, '82.205.33.232'),
(23, 15, '09:35:57', '09:35:57', NULL, 0, '82.205.33.232'),
(24, 15, '09:35:58', '09:35:58', NULL, 0, '82.205.33.232'),
(25, 15, '09:35:58', '09:35:58', NULL, 0, '82.205.33.232'),
(26, 15, '09:35:59', '09:35:59', NULL, 0, '82.205.33.232'),
(27, 15, '09:36:00', '09:36:00', NULL, 0, '82.205.33.232'),
(28, 15, '09:36:00', '09:36:00', NULL, 0, '82.205.33.232'),
(29, 15, '09:36:00', '09:36:00', NULL, 0, '82.205.33.232'),
(30, 15, '09:36:01', '09:36:01', NULL, 0, '82.205.33.232'),
(31, 15, '09:36:01', '09:36:01', NULL, 0, '82.205.33.232'),
(32, 15, '09:36:01', '09:36:01', NULL, 0, '82.205.33.232'),
(33, 15, '09:36:01', '09:36:01', NULL, 0, '82.205.33.232'),
(34, 15, '09:36:02', '09:36:02', NULL, 0, '82.205.33.232'),
(35, 15, '09:36:02', '09:36:02', NULL, 0, '82.205.33.232'),
(36, 15, '09:36:07', '09:36:07', NULL, 0, '82.205.33.232'),
(37, 16, '14:16:41', '10:05:09', NULL, 0, '82.205.33.232'),
(38, 17, '10:08:52', '16:32:32', NULL, 0, '37.8.60.253'),
(39, 18, '08:55:21', '17:09:31', NULL, 0, '37.8.48.68'),
(40, 18, '08:55:21', '08:55:21', NULL, 0, '37.8.48.68'),
(41, 18, '08:55:21', '08:55:21', NULL, 0, '37.8.48.68'),
(42, 18, '08:55:22', '08:55:22', NULL, 0, '37.8.48.68'),
(43, 18, '08:55:22', '08:55:22', NULL, 0, '37.8.48.68'),
(44, 18, '08:55:22', '08:55:22', NULL, 0, '37.8.48.68'),
(45, 18, '08:55:23', '08:55:23', NULL, 0, '37.8.48.68'),
(46, 18, '08:55:23', '08:55:23', NULL, 0, '37.8.48.68'),
(47, 18, '08:55:23', '08:55:23', NULL, 0, '37.8.48.68'),
(48, 18, '08:55:25', '08:55:25', NULL, 0, '37.8.48.68'),
(49, 18, '08:55:26', '08:55:26', NULL, 0, '37.8.48.68'),
(50, 18, '08:55:26', '08:55:26', NULL, 0, '37.8.48.68'),
(51, 18, '08:55:26', '08:55:26', NULL, 0, '37.8.48.68'),
(52, 18, '08:55:26', '08:55:26', NULL, 0, '37.8.48.68'),
(53, 18, '08:55:27', '08:55:27', NULL, 0, '37.8.48.68'),
(54, 18, '08:55:27', '08:55:27', NULL, 0, '37.8.48.68'),
(55, 18, '08:55:28', '08:55:28', NULL, 0, '37.8.48.68'),
(56, 18, '08:55:28', '08:55:28', NULL, 0, '37.8.48.68'),
(57, 18, '08:55:29', '08:55:29', NULL, 0, '37.8.48.68'),
(58, 18, '08:55:34', '08:55:34', NULL, 0, '37.8.48.68'),
(59, 18, '08:55:35', '08:55:35', NULL, 0, '37.8.48.68'),
(60, 18, '08:55:36', '08:55:36', NULL, 0, '37.8.48.68'),
(61, 18, '08:55:36', '08:55:36', NULL, 0, '37.8.48.68'),
(62, 18, '08:55:37', '08:55:37', NULL, 0, '37.8.48.68'),
(63, 18, '08:55:38', '08:55:38', NULL, 0, '37.8.48.68'),
(64, 18, '08:55:39', '08:55:39', NULL, 0, '37.8.48.68'),
(65, 18, '08:55:40', '08:55:40', NULL, 0, '37.8.48.68'),
(66, 18, '08:55:41', '08:55:41', NULL, 0, '37.8.48.68'),
(67, 18, '08:55:41', '08:55:41', NULL, 0, '37.8.48.68'),
(68, 18, '08:56:04', '08:56:04', NULL, 0, '37.8.48.68'),
(69, 19, '09:41:11', '12:05:48', NULL, 0, '37.8.35.14'),
(70, 20, '12:05:53', '10:41:41', NULL, 0, '37.8.35.14'),
(71, 21, '09:47:48', '09:48:04', NULL, 0, '37.8.35.14'),
(72, 22, '10:41:44', '10:16:35', NULL, 0, '37.8.35.14'),
(73, 23, '10:20:28', '10:21:14', NULL, 0, '37.8.35.14'),
(74, 23, '10:21:59', '17:31:09', NULL, 0, '37.8.35.14'),
(75, 24, '09:25:46', '17:03:04', NULL, 0, '37.8.35.14'),
(76, 24, '09:25:46', '09:25:46', NULL, 0, '37.8.35.14'),
(77, 24, '09:25:47', '09:25:47', NULL, 0, '37.8.35.14'),
(78, 24, '09:25:47', '09:25:47', NULL, 0, '37.8.35.14'),
(79, 24, '09:25:48', '09:25:48', NULL, 0, '37.8.35.14'),
(80, 24, '09:25:48', '09:25:48', NULL, 0, '37.8.35.14'),
(81, 24, '09:25:49', '09:25:49', NULL, 0, '37.8.35.14'),
(82, 24, '09:25:49', '09:25:49', NULL, 0, '37.8.35.14'),
(83, 24, '09:25:49', '09:25:49', NULL, 0, '37.8.35.14'),
(84, 24, '09:25:51', '09:25:51', NULL, 0, '37.8.35.14'),
(85, 24, '09:25:52', '09:25:52', NULL, 0, '37.8.35.14'),
(86, 24, '09:25:52', '09:25:52', NULL, 0, '37.8.35.14'),
(87, 24, '09:25:53', '09:25:53', NULL, 0, '37.8.35.14'),
(88, 24, '09:25:53', '09:25:53', NULL, 0, '37.8.35.14'),
(89, 24, '09:25:53', '09:25:53', NULL, 0, '37.8.35.14'),
(90, 24, '09:25:54', '09:25:54', NULL, 0, '37.8.35.14'),
(91, 24, '09:25:54', '09:25:54', NULL, 0, '37.8.35.14'),
(92, 24, '09:25:55', '09:25:55', NULL, 0, '37.8.35.14'),
(93, 24, '09:25:55', '09:25:55', NULL, 0, '37.8.35.14'),
(94, 24, '09:26:10', '09:26:10', NULL, 0, '37.8.35.14'),
(95, 25, '09:58:59', NULL, NULL, 1, '37.8.35.14'),
(96, 26, '09:37:33', '11:26:25', NULL, 0, '37.8.51.27'),
(97, 26, '09:37:34', '09:37:34', NULL, 0, '212.106.93.82'),
(98, 26, '09:37:34', '09:37:34', NULL, 0, '212.106.93.82'),
(99, 26, '09:37:34', '09:37:34', NULL, 0, '212.106.93.82'),
(100, 26, '09:37:35', '09:37:35', NULL, 0, '212.106.93.82'),
(101, 26, '09:37:35', '09:37:35', NULL, 0, '212.106.93.82'),
(102, 26, '09:37:35', '09:37:35', NULL, 0, '212.106.93.82'),
(103, 26, '09:37:36', '09:37:36', NULL, 0, '212.106.93.82'),
(104, 26, '09:37:36', '09:37:36', NULL, 0, '212.106.93.82'),
(105, 26, '09:37:37', '09:37:37', NULL, 0, '212.106.93.82'),
(106, 26, '09:37:38', '09:37:38', NULL, 0, '212.106.93.82'),
(107, 26, '09:37:38', '09:37:38', NULL, 0, '212.106.93.82'),
(108, 26, '09:37:38', '09:37:38', NULL, 0, '212.106.93.82'),
(109, 26, '09:37:39', '09:37:39', NULL, 0, '212.106.93.82'),
(110, 26, '09:37:39', '09:37:39', NULL, 0, '212.106.93.82'),
(111, 26, '09:37:39', '09:37:39', NULL, 0, '212.106.93.82'),
(112, 26, '09:37:39', '09:37:39', NULL, 0, '212.106.93.82'),
(113, 26, '09:37:40', '09:37:40', NULL, 0, '212.106.93.82'),
(114, 26, '09:37:40', '09:37:40', NULL, 0, '212.106.93.82'),
(115, 26, '09:37:45', '09:37:45', NULL, 0, '212.106.93.82'),
(116, 26, '09:37:46', '09:37:46', NULL, 0, '212.106.93.82'),
(117, 26, '09:37:46', '09:37:46', NULL, 0, '212.106.93.82'),
(118, 26, '09:37:46', '09:37:46', NULL, 0, '212.106.93.82'),
(119, 26, '09:37:47', '09:37:47', NULL, 0, '212.106.93.82'),
(120, 26, '09:37:47', '09:37:47', NULL, 0, '212.106.93.82'),
(121, 26, '09:37:47', '09:37:47', NULL, 0, '212.106.93.82'),
(122, 26, '09:37:48', '09:37:48', NULL, 0, '212.106.93.82'),
(123, 26, '09:37:48', '09:37:48', NULL, 0, '212.106.93.82'),
(124, 26, '09:37:48', '09:37:48', NULL, 0, '212.106.93.82'),
(125, 26, '09:37:54', '09:37:54', NULL, 0, '212.106.93.82'),
(126, 27, '13:39:11', '15:43:00', NULL, 0, '37.8.51.27'),
(127, 28, '13:51:21', NULL, NULL, 1, '37.8.51.27'),
(128, 29, '09:25:03', '09:23:54', NULL, 0, '37.8.95.37'),
(129, 30, '09:28:57', '14:18:33', NULL, 0, '37.8.95.37'),
(130, 31, '11:14:51', '17:35:55', NULL, 0, '37.8.95.37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clock_history`
--

DROP TABLE IF EXISTS `tbl_clock_history`;
CREATE TABLE IF NOT EXISTS `tbl_clock_history` (
  `clock_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `clock_id` int(11) NOT NULL,
  `clockin_edit` time NOT NULL,
  `clockout_edit` time DEFAULT NULL,
  `reason` varchar(300) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=pending and 2 = accept  3= reject',
  `notify_me` tinyint(4) NOT NULL DEFAULT 1,
  `view_status` tinyint(4) NOT NULL DEFAULT 2,
  `request_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`clock_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_config`
--

DROP TABLE IF EXISTS `tbl_config`;
CREATE TABLE IF NOT EXISTS `tbl_config` (
  `config_key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`config_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_config`
--

INSERT INTO `tbl_config` (`config_key`, `value`) VALUES
('2checkout_private_key', 'CE6B7C6E-CDC4-404A-80D7-08F40CC0C65D'),
('2checkout_publishable_key', 'D188F8DC-3B8A-408E-A479-15A54113C461'),
('2checkout_seller_id', '901386312'),
('2checkout_status', 'deactive'),
('absent_color', 'rgba(247,23,36,0.92)'),
('absent_on_calendar', 'on'),
('accounting_snapshot', '0'),
('active_background', '#861c1c'),
('active_color', '#c1c1c1'),
('active_cronjob', 'on'),
('active_custom_color', '1'),
('active_pre_loader', '1'),
('advance_salary', 'true'),
('advance_salary_email', '1'),
('aim_api_login_id', '7F6eJh7uFyD'),
('aim_authorize_live ', 'FALSE'),
('aim_authorize_status', 'deactive'),
('aim_authorize_transaction_key', '64uhZ93mqH6c3MWf'),
('allowed_files', 'gif|png|jpeg|jpg|pdf|doc|txt|docx|xls|zip|rar|xls|mp4|ico'),
('allow_apply_job_from_login', 'TRUE'),
('allow_client_project', 'TRUE'),
('allow_client_registration', 'TRUE'),
('allow_customer_edit_amount', 'No'),
('allow_multiple_client_in_project', NULL),
('allow_sub_tasks', 'TRUE'),
('amount_to_words_lowercase', 'No'),
('announcements_email', '1'),
('api_signature', 'AZxbwZ9bPVPFFf7hCCNemacLJwlCAqoMULHXAenCuJAwtzfjGbkbaIhV'),
('aside-collapsed', NULL),
('aside-float', NULL),
('attendance_report', '1'),
('authorize', 'login id'),
('authorize_status', 'deactive'),
('authorize_transaction_key', 'transfer key'),
('automatic_database_backup', 'on'),
('automatic_email_on_recur', 'TRUE'),
('auto_check_for_new_notifications', '0'),
('auto_close_ticket', '72'),
('award_email', '1'),
('bank_cash', '0'),
('bitcoin_address', NULL),
('bitcoin_status', 'active'),
('body_background', 'rgba(229,252,252,0.81)'),
('braintree_default_account', NULL),
('braintree_live_or_sandbox', 'TRUE'),
('braintree_merchant_id', '9m2qzhrptx7wyccy'),
('braintree_private_key', 'aa804bc269d4a9c8d8170ab8aed353b3'),
('braintree_public_key', '62grv2dnvfpg599v'),
('braintree_status', 'deactive'),
('bugs_color', '#1f3d1c'),
('bugs_on_calendar', 'on'),
('build', '0'),
('ccavenue_access_code', 'AVEB75FA40AM89BEMA'),
('ccavenue_enable_test_mode', 'TRUE'),
('ccavenue_key', '201F5203749670E18D664192B594B74E'),
('ccavenue_merchant_id', '161761'),
('ccavenue_status', 'deactive'),
('client_default_menu', 'a:1:{s:19:\"client_default_menu\";a:12:{i:0;s:2:\"17\";i:1;s:2:\"20\";i:2;s:2:\"18\";i:3;s:1:\"1\";i:4;s:1:\"2\";i:5;s:1:\"3\";i:6;s:1:\"4\";i:7;s:1:\"5\";i:8;s:2:\"21\";i:9;s:1:\"6\";i:10;s:1:\"7\";i:11;s:2:\"22\";}}'),
('company_address', 'Palestine'),
('company_city', 'Ramallah'),
('company_country', 'Palestinian Territories'),
('company_domain', 'bilsan.co'),
('company_email', 'info@bilsan.co'),
('company_legal_name', 'Bilsan'),
('company_logo', 'uploads/02.png'),
('company_name', 'Bilsan Business Solutions'),
('company_phone', '0562111345'),
('company_phone_2', ''),
('company_vat', '16'),
('company_zip_code', '00970'),
('config_additional_flag', '/novalidate-cert'),
('config_host', 'mail.coderitems.com'),
('config_imap', '0'),
('config_imap_or_pop', 'on'),
('config_mailbox', 'INBOX'),
('config_password', '1c896e7d0fcbf64bb0921dd4bec18c947d34a5397472bb13b9f9ed95e4fd10dea45f365dde644233b2eef83f34e67cfd2fcc29b99c2835b89e8ecde5cdf233081hQfQaY72VtMiijV4wlVI6nmPwdsrMgJHALC3GCDw8E='),
('config_pop3', '0'),
('config_port', '993'),
('config_ssl', 'on'),
('config_username', 'support@coderitems.com'),
('contact_person', 'Eng. Muhammad Abu Ali'),
('contract_expiration_reminder', ''),
('copyright_name', 'Uniquecoder'),
('copyright_url', 'https://codecanyon.net/user/unique_coder'),
('country', '0'),
('cron_key', '34WI2L12L87I1A65M90M9A42N41D08A26I'),
('currency_position', '1'),
('date_format', '%m.%d.%Y'),
('date_php_format', 'Y.m.d'),
('date_picker_format', 'yyyy.mm.dd'),
('decimal_separator', '2'),
('default_account', '4'),
('default_currency', 'ILS'),
('default_currency_symbol', '$'),
('default_department', NULL),
('default_language', 'english'),
('default_leads_source', '1'),
('default_lead_permission', 'all'),
('default_lead_status', '1'),
('default_payment_method', '0'),
('default_priority', 'Medium'),
('default_status', 'open'),
('default_tax', 'N;'),
('default_terms', 'Thank you for <span style=\"font-weight: bold;\">your</span> busasiness. Please process this invoice within the due date.'),
('delete_mail_after_import', NULL),
('demo_mode', 'FALSE'),
('deposit_email', '1'),
('desktop_notifications', '1'),
('developer', 'ig63Yd/+yuA8127gEyTz9TY4pnoeKq8dtocVP44+BJvtlRp8Vqcetwjk51dhSB6Rx8aVIKOPfUmNyKGWK7C/gg=='),
('display_estimate_badge', '0'),
('display_invoice_badge', 'FALSE'),
('email_account_details', 'TRUE'),
('email_estimate_message', 'Hi {CLIENT}<br>Thanks for your business inquiry. <br>The estimate EST {REF} is attached with this email. <br>Estimate Overview:<br>Estimate # : EST {REF}<br>Amount: {CURRENCY} {AMOUNT}<br> You can view the estimate online at:<br>{LINK}<br>Best Regards,<br>{COMPANY}'),
('email_invoice_message', 'Hello {CLIENT}<br>Here is the invoice of {CURRENCY} {AMOUNT}<br>You can view the invoice online at:<br>{LINK}<br>Best Regards,<br>{COMPANY}'),
('email_staff_tickets', 'TRUE'),
('enable_languages', 'TRUE'),
('encryption', 'ssl'),
('estimate_color', 'rgba(160,29,171,1)'),
('estimate_footer', '<span style=\"font-weight: bold; line-height: 21.4px; text-align: right;\">Estimate&nbsp;</span>was created on a computer and is valid without the signature and seal'),
('estimate_language', 'en'),
('estimate_number_format', '[INV]-[yyyy]-[mm]-[dd]-[number]'),
('estimate_on_calendar', 'on'),
('estimate_prefix', 'EST'),
('estimate_start_no', '1'),
('estimate_state', 'block'),
('estimate_terms', 'Hey Looking forward to doing business with you.'),
('expense_email', '1'),
('favicon', 'uploads/01.png'),
('file_max_size', '80000'),
('for_invoice', '0'),
('for_leads', NULL),
('for_tickets', NULL),
('gcal_api_key', 'AIzaSyBXcmmcboEyAgtoUtXjKXe4TfpsnEtoUDQ'),
('gcal_id', 'kla83orf1u7hrj6p0u5gdmpji4@group.calendar.google.com'),
('goal_tracking_color', '#537015'),
('goal_tracking_on_calendar', 'on'),
('google_api_key', 'AIzaSyDH0Cn1U4RGzExl3IySE9X_ZlXKpyxj2Z4'),
('gst_state', 'AN'),
('holiday_on_calendar', 'on'),
('imap_search', '0'),
('imap_search_for_leads', NULL),
('imap_search_for_tickets', NULL),
('increment_estimate_number', 'TRUE'),
('increment_invoice_number', 'TRUE'),
('increment_proposal_number', 'TRUE'),
('installed', 'TRUE'),
('invoices_due_after', '5'),
('invoice_color', '#53b567'),
('invoice_footer', 'Invoice was created on a computer and is valid without the signature and seal'),
('invoice_language', 'en'),
('invoice_logo', 'uploads/thumnail.png'),
('invoice_number_format', '[INV]-[yyyy]-[mm]-[dd]-[number]'),
('invoice_on_calendar', 'on'),
('invoice_prefix', 'INV'),
('invoice_start_no', '1'),
('invoice_state', 'block'),
('invoice_view', '0'),
('item_total_qty_alert', 'No'),
('job_circular_email', '1'),
('language', 'english'),
('languages', 'spanish'),
('last_autobackup', '1515398440'),
('last_check', '1436363002'),
('last_cronjob_run', '1515398438'),
('last_postmaster_run', '1532751856'),
('last_seen_activities', '0'),
('last_tickets_postmaster_run', '1532750363'),
('layout-boxed', NULL),
('layout-fixed', NULL),
('layout-h', NULL),
('leads_color', '#783131'),
('leads_keyword', NULL),
('leads_on_calendar', 'on'),
('leave_email', '1'),
('locale', 'en_US'),
('login_background', 'uploads/Bilsan_Background.jpg'),
('login_bg', 'bg-login.jpg'),
('login_position', 'left'),
('logofile', '0'),
('logo_or_icon', 'logo_title'),
('mark_attendance_from_login', 'Yes'),
('max_file_size', '5000'),
('milestone_color', '#a86495'),
('milestone_on_calendar', 'on'),
('mollie_api_key', 'test_tkjFqFF6fP92FDSwBDHpeCzBRMBQBD'),
('mollie_partner_id', '3106644'),
('mollie_status', 'deactive'),
('money_format', '2'),
('navbar_logo_background', 'rgba(255,255,255,0.95)'),
('notified_user', '[\"1\"]'),
('notify_bug_assignment', 'TRUE'),
('notify_bug_comments', 'TRUE'),
('notify_bug_status', 'TRUE'),
('notify_message_received', 'TRUE'),
('notify_project_assignments', 'TRUE'),
('notify_project_comments', 'TRUE'),
('notify_project_files', 'TRUE'),
('notify_task_assignments', 'TRUE'),
('notify_ticket_reopened', 'TRUE'),
('office_hours', '8'),
('office_time', 'same_time'),
('only_allowed_ip_can_clock', NULL),
('on_leave_color', '#bd1a10'),
('on_leave_on_calendar', 'on'),
('opportunities_color', '#349685'),
('opportunities_on_calendar', 'on'),
('overtime_email', '1'),
('payments_color', '#7f21c9'),
('payments_on_calendar', 'on'),
('paypal_api_password', 'e64448f3fd988dda8ad7e0b1ba21a14c3e59a959008623d9c8bcfca8ca8f73677a82bc6d14075614ea192a98fa0494259859dd0e229ff831c1cdd7751f440cb0cS8v4CPtSoiC4rDwMliNLKtf35DXaZih8pZ7W6mRM9UJg9jYeKg0wwsnFA5Kqywv'),
('paypal_api_username', 'billing_api1.itsolidity.com'),
('paypal_cancel_url', 'paypal/cancel'),
('paypal_email', 'billing@coderitems.com'),
('paypal_ipn_url', 'paypal/t_ipn/ipn'),
('paypal_live', 'TRUE'),
('paypal_status', 'deactive'),
('paypal_success_url', 'paypal/success'),
('payslip_email', '1'),
('payumoney_enable_test_mode', NULL),
('payumoney_key', '3424'),
('payumoney_salt', '342342'),
('payumoney_status', 'deactive'),
('pdf_engine', 'invoicr'),
('performance_email', '1'),
('postmark_api_key', ''),
('postmark_from_address', ''),
('project_color', '#e61755'),
('project_details_view', '1'),
('project_on_calendar', 'on'),
('project_prefix', 'PRO'),
('proposal_footer', '<span style=\"font-weight: 700; text-align: right;\">This Proposal&nbsp;</span>was created on a computer and is valid without the signature and seal'),
('proposal_number_format', '[INV]-[yyyy]-[mm]-[dd]-[number]'),
('proposal_prefix', 'PRO-'),
('proposal_start_no', '1'),
('proposal_terms', 'Hey Looking forward to doing business with you.'),
('protocol', 'smtp'),
('purchase_code', ''),
('purchase_number_format', '[INV]-[yyyy]-[mm]-[dd]-[number]'),
('purchase_prefix', 'PUR'),
('purchase_start_no', '1'),
('pusher_app_id', '401479'),
('pusher_app_key', '4cf88668659dc9c987c3'),
('pusher_app_secret', '6fce183b214d17c20dd5'),
('pusher_cluster', 'ap2'),
('qty_calculation_from_items', 'Yes'),
('realtime_notification', '0'),
('recaptcha_secret_key', ''),
('recaptcha_site_key', ''),
('recurring_invoice', '0'),
('reminder_message', 'Hello {CLIENT}<br>This is a friendly reminder to pay your invoice of {CURRENCY} {AMOUNT}<br>You can view the invoice online at:<br>{LINK}<br>Best Regards,<br>{COMPANY}'),
('reset_key', '34WI2L12L87I1A65M90M9A42N41D08A26I'),
('return_stock_number_format', '[INV]-[yyyy]-[mm]-[dd]-[number]'),
('return_stock_prefix', 'R'),
('return_stock_start_no', '1'),
('rows_per_table', '25'),
('RTL', '0'),
('security_token', '5027133599'),
('send_email_when_recur', 'TRUE'),
('settings', 'theme'),
('show-scrollbar', NULL),
('show_estimate_tax', 'TRUE'),
('show_invoice_tax', 'TRUE'),
('show_item_tax', '0'),
('show_login_image', 'TRUE'),
('show_only_logo', 'FALSE'),
('show_proposal_tax', 'TRUE'),
('sidebar_active_background', '#8e0f0f'),
('sidebar_active_color', '#b3b8cb'),
('sidebar_background', 'rgba(0,0,0,0.95)'),
('sidebar_color', '#fffafa'),
('sidebar_theme', 'bg-green'),
('site_appleicon', 'logo.png'),
('site_author', 'William M.'),
('site_desc', 'Ultimate Project Manager CRM Pro is a Web based PHP application for Freelancers - buy it on Codecanyon'),
('site_favicon', 'logo.png'),
('site_icon', 'fa-flask'),
('smtp_encryption', ''),
('smtp_host', 'ss.ss.com'),
('smtp_pass', 'L3FpSXB0bER6RWhBM2pueUYrRVlwQT09'),
('smtp_port', '587'),
('smtp_user', 'sss'),
('stripe_private_key', 'sk_test_g7PUZTcwwFnxdlHrWSOicHfu'),
('stripe_public_key', 'pk_test_x9as1c9jBDpODI7IbC7D0MEB'),
('stripe_status', 'deactive'),
('submenu_open_background', '#852222'),
('system_font', 'roboto_condensed'),
('tables_pagination_limit', '10'),
('tasks_color', '#0239c7'),
('tasks_on_calendar', 'on'),
('task_details_view', '1'),
('thousand_separator', ','),
('tickets_keyword', NULL),
('timezone', 'Asia/Jerusalem'),
('time_format', 'H:i'),
('top_bar_background', '#941f23'),
('top_bar_color', '#d9d9d9'),
('training_email', '1'),
('two_checkout_live ', 'FALSE'),
('unread_email', 'on'),
('use_gravatar', 'TRUE'),
('use_postmark', 'FALSE'),
('valid_license', 'TRUE'),
('version', '1.6.1'),
('webmaster_email', 'support@example.com'),
('website_name', 'Bilsan Business Solutions | Customer Relations Management');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contract_type`
--

DROP TABLE IF EXISTS `tbl_contract_type`;
CREATE TABLE IF NOT EXISTS `tbl_contract_type` (
  `contract_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `contract_type` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `description` varchar(500) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`contract_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

DROP TABLE IF EXISTS `tbl_countries`;
CREATE TABLE IF NOT EXISTS `tbl_countries` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `value` varchar(250) CHARACTER SET latin1 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `value`) VALUES
(1, 'Afghanistan'),
(2, 'Aringland Islands'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Anguilla'),
(9, 'Antarctica'),
(10, 'Antigua and Barbuda'),
(11, 'Argentina'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Bahamas'),
(18, 'Bahrain'),
(19, 'Bangladesh'),
(20, 'Barbados'),
(21, 'Belarus'),
(22, 'Belgium'),
(23, 'Belize'),
(24, 'Benin'),
(25, 'Bermuda'),
(26, 'Bhutan'),
(27, 'Bolivia'),
(28, 'Bosnia and Herzegovina'),
(29, 'Botswana'),
(30, 'Bouvet Island'),
(31, 'Brazil'),
(32, 'British Indian Ocean territory'),
(33, 'Brunei Darussalam'),
(34, 'Bulgaria'),
(35, 'Burkina Faso'),
(36, 'Burundi'),
(37, 'Cambodia'),
(38, 'Cameroon'),
(39, 'Canada'),
(40, 'Cape Verde'),
(41, 'Cayman Islands'),
(42, 'Central African Republic'),
(43, 'Chad'),
(44, 'Chile'),
(45, 'China'),
(46, 'Christmas Island'),
(47, 'Cocos (Keeling) Islands'),
(48, 'Colombia'),
(49, 'Comoros'),
(50, 'Congo'),
(51, 'Congo'),
(52, ' Democratic Republic'),
(53, 'Cook Islands'),
(54, 'Costa Rica'),
(55, 'Ivory Coast (Ivory Coast)'),
(56, 'Croatia (Hrvatska)'),
(57, 'Cuba'),
(58, 'Cyprus'),
(59, 'Czech Republic'),
(60, 'Denmark'),
(61, 'Djibouti'),
(62, 'Dominica'),
(63, 'Dominican Republic'),
(64, 'East Timor'),
(65, 'Ecuador'),
(66, 'Egypt'),
(67, 'El Salvador'),
(68, 'Equatorial Guinea'),
(69, 'Eritrea'),
(70, 'Estonia'),
(71, 'Ethiopia'),
(72, 'Falkland Islands'),
(73, 'Faroe Islands'),
(74, 'Fiji'),
(75, 'Finland'),
(76, 'France'),
(77, 'French Guiana'),
(78, 'French Polynesia'),
(79, 'French Southern Territories'),
(80, 'Gabon'),
(81, 'Gambia'),
(82, 'Georgia'),
(83, 'Germany'),
(84, 'Ghana'),
(85, 'Gibraltar'),
(86, 'Greece'),
(87, 'Greenland'),
(88, 'Grenada'),
(89, 'Guadeloupe'),
(90, 'Guam'),
(91, 'Guatemala'),
(92, 'Guinea'),
(93, 'Guinea-Bissau'),
(94, 'Guyana'),
(95, 'Haiti'),
(96, 'Heard and McDonald Islands'),
(97, 'Honduras'),
(98, 'Hong Kong'),
(99, 'Hungary'),
(100, 'Iceland'),
(101, 'India'),
(102, 'Indonesia'),
(103, 'Iran'),
(104, 'Iraq'),
(105, 'Ireland'),
(106, 'Israel'),
(107, 'Italy'),
(108, 'Jamaica'),
(109, 'Japan'),
(110, 'Jordan'),
(111, 'Kazakhstan'),
(112, 'Kenya'),
(113, 'Kiribati'),
(114, 'Korea (north)'),
(115, 'Korea (south)'),
(116, 'Kuwait'),
(117, 'Kyrgyzstan'),
(118, 'Lao People\'s Democratic Republic'),
(119, 'Latvia'),
(120, 'Lebanon'),
(121, 'Lesotho'),
(122, 'Liberia'),
(123, 'Libyan Arab Jamahiriya'),
(124, 'Liechtenstein'),
(125, 'Lithuania'),
(126, 'Luxembourg'),
(127, 'Macao'),
(128, 'Macedonia'),
(129, 'Madagascar'),
(130, 'Malawi'),
(131, 'Malaysia'),
(132, 'Maldives'),
(133, 'Mali'),
(134, 'Malta'),
(135, 'Marshall Islands'),
(136, 'Martinique'),
(137, 'Mauritania'),
(138, 'Mauritius'),
(139, 'Mayotte'),
(140, 'Mexico'),
(141, 'Micronesia'),
(142, 'Moldova'),
(143, 'Monaco'),
(144, 'Mongolia'),
(145, 'Montserrat'),
(146, 'Morocco'),
(147, 'Mozambique'),
(148, 'Myanmar'),
(149, 'Namibia'),
(150, 'Nauru'),
(151, 'Nepal'),
(152, 'Netherlands'),
(153, 'Netherlands Antilles'),
(154, 'New Caledonia'),
(155, 'New Zealand'),
(156, 'Nicaragua'),
(157, 'Niger'),
(158, 'Nigeria'),
(159, 'Niue'),
(160, 'Norfolk Island'),
(161, 'Northern Mariana Islands'),
(162, 'Norway'),
(163, 'Oman'),
(164, 'Pakistan'),
(165, 'Palau'),
(166, 'Palestinian Territories'),
(167, 'Panama'),
(168, 'Papua New Guinea'),
(169, 'Paraguay'),
(170, 'Peru'),
(171, 'Philippines'),
(172, 'Pitcairn'),
(173, 'Poland'),
(174, 'Portugal'),
(175, 'Puerto Rico'),
(176, 'Qatar'),
(177, 'Runion'),
(178, 'Romania'),
(179, 'Russian Federation'),
(180, 'Rwanda'),
(181, 'Saint Helena'),
(182, 'Saint Kitts and Nevis'),
(183, 'Saint Lucia'),
(184, 'Saint Pierre and Miquelon'),
(185, 'Saint Vincent and the Grenadines'),
(186, 'Samoa'),
(187, 'San Marino'),
(188, 'Sao Tome and Principe'),
(189, 'Saudi Arabia'),
(190, 'Senegal'),
(191, 'Serbia and Montenegro'),
(192, 'Seychelles'),
(193, 'Sierra Leone'),
(194, 'Singapore'),
(195, 'Slovakia'),
(196, 'Slovenia'),
(197, 'Solomon Islands'),
(198, 'Somalia'),
(199, 'South Africa'),
(200, 'South Georgia and the South Sandwich Islands'),
(201, 'Spain'),
(202, 'Sri Lanka'),
(203, 'Sudan'),
(204, 'Suriname'),
(205, 'Svalbard and Jan Mayen Islands'),
(206, 'Swaziland'),
(207, 'Sweden'),
(208, 'Switzerland'),
(209, 'Syria'),
(210, 'Taiwan'),
(211, 'Tajikistan'),
(212, 'Tanzania'),
(213, 'Thailand'),
(214, 'Togo'),
(215, 'Tokelau'),
(216, 'Tonga'),
(217, 'Trinidad and Tobago'),
(218, 'Tunisia'),
(219, 'Turkey'),
(220, 'Turkmenistan'),
(221, 'Turks and Caicos Islands'),
(222, 'Tuvalu'),
(223, 'Uganda'),
(224, 'Ukraine'),
(225, 'United Arab Emirates'),
(226, 'United Kingdom'),
(227, 'United States of America'),
(228, 'Uruguay'),
(229, 'Uzbekistan'),
(230, 'Vanuatu'),
(231, 'Vatican City'),
(232, 'Venezuela'),
(233, 'Vietnam'),
(234, 'Virgin Islands (British)'),
(235, 'Virgin Islands (US)'),
(236, 'Wallis and Futuna Islands'),
(237, 'Western Sahara'),
(238, 'Yemen'),
(239, 'Zaire'),
(240, 'Zambia'),
(241, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_credit_note`
--

DROP TABLE IF EXISTS `tbl_credit_note`;
CREATE TABLE IF NOT EXISTS `tbl_credit_note` (
  `credit_note_id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT 0,
  `credit_note_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `credit_note_month` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `credit_note_year` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'USD',
  `discount_percent` int(2) DEFAULT NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax` int(11) NOT NULL DEFAULT 0,
  `total_tax` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `date_saved` timestamp NOT NULL DEFAULT '2018-12-12 06:30:00',
  `emailed` varchar(11) DEFAULT NULL,
  `permission` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `client_visible` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'No',
  `discount_type` enum('before_tax','after_tax') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0 COMMENT 'sales agent',
  `adjustment` decimal(18,2) NOT NULL DEFAULT 0.00,
  `discount_total` decimal(18,2) NOT NULL DEFAULT 0.00,
  `show_quantity_as` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`credit_note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_advance_salaries`
--

DROP TABLE IF EXISTS `xin_advance_salaries`;
CREATE TABLE IF NOT EXISTS `xin_advance_salaries` (
  `advance_salary_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `month_year` varchar(255) NOT NULL,
  `advance_amount` varchar(255) NOT NULL,
  `one_time_deduct` varchar(50) NOT NULL,
  `monthly_installment` varchar(255) NOT NULL,
  `total_paid` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `status` int(11) DEFAULT NULL,
  `is_deducted_from_salary` int(11) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`advance_salary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_announcements`
--

DROP TABLE IF EXISTS `xin_announcements`;
CREATE TABLE IF NOT EXISTS `xin_announcements` (
  `announcement_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `company_id` int(111) NOT NULL,
  `location_id` int(11) NOT NULL,
  `department_id` int(111) NOT NULL,
  `published_by` int(111) NOT NULL,
  `summary` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_notify` int(11) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`announcement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_assets`
--

DROP TABLE IF EXISTS `xin_assets`;
CREATE TABLE IF NOT EXISTS `xin_assets` (
  `assets_id` int(111) NOT NULL AUTO_INCREMENT,
  `assets_category_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `company_asset_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `purchase_date` varchar(255) NOT NULL,
  `invoice_number` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `serial_number` varchar(255) NOT NULL,
  `warranty_end_date` varchar(255) NOT NULL,
  `asset_note` text NOT NULL,
  `asset_image` varchar(255) NOT NULL,
  `is_working` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`assets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_assets_categories`
--

DROP TABLE IF EXISTS `xin_assets_categories`;
CREATE TABLE IF NOT EXISTS `xin_assets_categories` (
  `assets_category_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`assets_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_assets_categories`
--

INSERT INTO `xin_assets_categories` (`assets_category_id`, `company_id`, `category_name`, `created_at`) VALUES
(1, 1, 'Laptop', '05-04-2018 03:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `xin_attendance_time`
--

DROP TABLE IF EXISTS `xin_attendance_time`;
CREATE TABLE IF NOT EXISTS `xin_attendance_time` (
  `time_attendance_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `attendance_date` varchar(255) NOT NULL,
  `clock_in` varchar(255) NOT NULL,
  `clock_in_ip_address` varchar(255) NOT NULL,
  `clock_out` varchar(255) NOT NULL,
  `clock_out_ip_address` varchar(255) NOT NULL,
  `clock_in_out` varchar(255) NOT NULL,
  `clock_in_latitude` varchar(150) NOT NULL,
  `clock_in_longitude` varchar(150) NOT NULL,
  `clock_out_latitude` varchar(150) NOT NULL,
  `clock_out_longitude` varchar(150) NOT NULL,
  `time_late` varchar(255) NOT NULL,
  `early_leaving` varchar(255) NOT NULL,
  `overtime` varchar(255) NOT NULL,
  `total_work` varchar(255) NOT NULL,
  `total_rest` varchar(255) NOT NULL,
  `attendance_status` varchar(100) NOT NULL,
  PRIMARY KEY (`time_attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_attendance_time`
--

INSERT INTO `xin_attendance_time` (`time_attendance_id`, `employee_id`, `attendance_date`, `clock_in`, `clock_in_ip_address`, `clock_out`, `clock_out_ip_address`, `clock_in_out`, `clock_in_latitude`, `clock_in_longitude`, `clock_out_latitude`, `clock_out_longitude`, `time_late`, `early_leaving`, `overtime`, `total_work`, `total_rest`, `attendance_status`) VALUES
(1, 5, '2019-04-17', '2019-04-17 10:36:38', '::1', '2019-04-17 10:37:36', '::1', '0', '31.450726399999997', '74.2940672', '31.450726399999997', '74.2940672', '2019-04-17 10:36:38', '2019-04-17 10:37:36', '2019-04-17 10:37:36', '0:0', '', 'Present'),
(2, 6, '2021-05-22', '2021-05-22 14:05:24', '82.205.33.232', '', '', '1', '1', '1', '', '', '2021-05-22 14:05:24', '2021-05-22 14:05:24', '2021-05-22 14:05:24', '', '', 'Present'),
(3, 17, '2021-06-01', '2021-06-01 09:45:49', '212.106.93.82', '2021-06-16 09:34:49', '82.205.61.149', '0', '1', '1', '1', '1', '2021-06-01 09:45:49', '2021-06-16 09:34:49', '2021-06-16 09:34:49', '0:0', '', 'Present'),
(4, 17, '2021-06-16', '2021-06-16 09:34:54', '82.205.61.149', '', '', '1', '1', '1', '', '', '2021-06-16 09:34:54', '2021-06-16 09:34:54', '2021-06-16 09:34:54', '', '', 'Present'),
(5, 22, '2021-06-22', '2021-06-22 14:54:21', '37.8.114.165', '2021-06-22 20:37:09', '2.58.134.246', '0', '1', '1', '1', '1', '2021-06-22 14:54:21', '2021-06-22 20:37:09', '2021-06-22 20:37:09', '5:42', '', 'Present'),
(6, 22, '2021-06-23', '2021-06-23 10:00:34', '37.8.114.165', '2021-06-23 13:56:59', '37.8.116.243', '0', '1', '1', '1', '1', '2021-06-23 10:00:34', '2021-06-23 13:56:59', '2021-06-23 13:56:59', '3:56', '', 'Present'),
(7, 22, '2021-06-28', '2021-06-28 09:18:54', '185.171.132.87', '', '', '1', '1', '1', '', '', '2021-06-28 09:18:54', '2021-06-28 09:18:54', '2021-06-28 09:18:54', '', '', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `xin_attendance_time_request`
--

DROP TABLE IF EXISTS `xin_attendance_time_request`;
CREATE TABLE IF NOT EXISTS `xin_attendance_time_request` (
  `time_request_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `request_date` varchar(255) NOT NULL,
  `request_date_request` varchar(255) NOT NULL,
  `request_clock_in` varchar(200) NOT NULL,
  `request_clock_out` varchar(200) NOT NULL,
  `total_hours` varchar(255) NOT NULL,
  `project_no` varchar(200) NOT NULL,
  `purchase_no` varchar(200) DEFAULT NULL,
  `task_id` int(11) NOT NULL,
  `request_reason` text NOT NULL,
  `is_approved` tinyint(1) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`time_request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xin_awards`
--

DROP TABLE IF EXISTS `xin_awards`;
CREATE TABLE IF NOT EXISTS `xin_awards` (
  `award_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(200) NOT NULL,
  `award_type_id` int(200) NOT NULL,
  `gift_item` varchar(200) NOT NULL,
  `cash_price` varchar(200) NOT NULL,
  `award_photo` varchar(255) NOT NULL,
  `award_month_year` varchar(200) NOT NULL,
  `award_information` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`award_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_award_type`
--

DROP TABLE IF EXISTS `xin_award_type`;
CREATE TABLE IF NOT EXISTS `xin_award_type` (
  `award_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `award_type` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`award_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_award_type`
--

INSERT INTO `xin_award_type` (`award_type_id`, `company_id`, `award_type`, `created_at`) VALUES
(1, 1, 'Performer of the Year', '22-03-2018 01:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `xin_chat_messages`
--

DROP TABLE IF EXISTS `xin_chat_messages`;
CREATE TABLE IF NOT EXISTS `xin_chat_messages` (
  `message_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `from_id` varchar(40) NOT NULL DEFAULT '',
  `to_id` varchar(50) NOT NULL DEFAULT '',
  `message_frm` varchar(255) NOT NULL,
  `is_read` int(11) NOT NULL DEFAULT 0,
  `message_content` longtext NOT NULL,
  `message_date` varchar(255) DEFAULT NULL,
  `recd` tinyint(1) NOT NULL DEFAULT 0,
  `message_type` varchar(255) NOT NULL DEFAULT '',
  `department_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_chat_messages`
--

INSERT INTO `xin_chat_messages` (`message_id`, `from_id`, `to_id`, `message_frm`, `is_read`, `message_content`, `message_date`, `recd`, `message_type`, `department_id`, `location_id`) VALUES
(1, '1', '6', '6', 1, 'hi', '2021-05-25 01:03:31', 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `xin_clients`
--

DROP TABLE IF EXISTS `xin_clients`;
CREATE TABLE IF NOT EXISTS `xin_clients` (
  `client_id` int(111) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `client_username` varchar(255) NOT NULL,
  `client_password` varchar(255) NOT NULL,
  `client_profile` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `is_changed` int(11) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `website_url` varchar(255) NOT NULL,
  `address_1` mediumtext NOT NULL,
  `address_2` mediumtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `country` int(111) NOT NULL,
  `is_active` int(11) NOT NULL,
  `last_logout_date` varchar(255) NOT NULL,
  `last_login_date` varchar(255) NOT NULL,
  `last_login_ip` varchar(255) NOT NULL,
  `is_logged_in` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_clients`
--

INSERT INTO `xin_clients` (`client_id`, `type`, `name`, `email`, `client_username`, `client_password`, `client_profile`, `contact_number`, `company_name`, `is_changed`, `gender`, `website_url`, `address_1`, `address_2`, `city`, `state`, `zipcode`, `country`, `is_active`, `last_logout_date`, `last_login_date`, `last_login_ip`, `is_logged_in`, `created_at`) VALUES
(2, '', 'أ.وليد ابراهيم الهودلي ', 'walidhudali@gmail.com', '', '$2y$12$u3ZOSMMAkHpme79kozaOO.zUFc4hh8Mh.aQ9TIwCcs7p.WM/4weqm', '', '0569150185', 'Waleed Al-Hodali', 0, '', '', '', '', 'Ramallah', '', '', 169, 1, '', '', '', 0, '2021-05-25 09:51:54'),
(3, '', 'د. حمزة ذيب', 'drhamzatheeb@gmail.com', '', '$2y$12$XwzQ6mWz1khl7bK2EeibG.1k5hwdtWOsoEsamNhBqF.HmKN5QbpQ.', '', '123456789', 'Dr. Hamza Theeb', 0, '', '', '', '', '', '', '', 169, 1, '', '', '', 0, '2021-05-25 09:58:14'),
(4, '', 'أ. جودت صيصان', 'usmart.ps@gmail.com', '', '$2y$12$m2qdvCZe85RKTH2HOB088OBLu7yUHhcLOaoGd2gBbxUftV.lq.sJ2', '', '0594 082 166', 'Usmart Training Center', 0, '', '', 'رام الله-البيرة - عمارة السلوادي - الطابق الثالث', '', 'Ramallah', '', '', 169, 1, '', '', '', 0, '2021-05-25 10:00:43'),
(5, '', 'أ. هانية الخيري', 'hania.khairy@paltelgroup.ps', '', '$2y$12$d9OHgBUPhLBjCTK6cVqFFerFYYXCouESZzHC3pBQIsITsGvGSw5Fm', '', '0599579039', 'Paltel Group', 0, '', '', '', '', 'Ramallah', '', '', 169, 1, '', '', '', 0, '2021-05-25 10:04:17'),
(6, '', 'Eng. Muhammad Abu Ali', 'code4palestine@gmail.com', '', '$2y$12$mu5DqR06bgeJOiBA6o0MjuSe37bgllQLuXLJWk5MbAbY12oKylVv6', '', '123456789', 'Bilsan Business Solutions | Palestine', 0, '', '', '', '', '', '', '', 169, 1, '', '', '', 0, '2021-05-25 11:12:41'),
(7, '', 'أ. تهاني المدهون', 'a.a@gmail.com', '', '$2y$12$HbJu971MdSGWngoNDs0Ji.X/K06D0lQNfhtM.gHOF2szY4ncPWxV.', '', '123456', 'Palestine Bar', 0, '', '', '', '', '', '', '', 169, 1, '', '', '', 0, '2021-05-25 11:20:22');

-- --------------------------------------------------------

--
-- Table structure for table `xin_companies`
--

DROP TABLE IF EXISTS `xin_companies`;
CREATE TABLE IF NOT EXISTS `xin_companies` (
  `company_id` int(111) NOT NULL AUTO_INCREMENT,
  `type_id` int(111) NOT NULL,
  `name` varchar(255) NOT NULL,
  `trading_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registration_no` varchar(255) NOT NULL,
  `government_tax` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `website_url` varchar(255) NOT NULL,
  `address_1` mediumtext NOT NULL,
  `address_2` mediumtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `country` int(111) NOT NULL,
  `is_active` int(11) NOT NULL,
  `default_currency` varchar(200) DEFAULT NULL,
  `default_timezone` varchar(200) DEFAULT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_companies`
--

INSERT INTO `xin_companies` (`company_id`, `type_id`, `name`, `trading_name`, `username`, `password`, `registration_no`, `government_tax`, `email`, `logo`, `contact_number`, `website_url`, `address_1`, `address_2`, `city`, `state`, `zipcode`, `country`, `is_active`, `default_currency`, `default_timezone`, `added_by`, `created_at`) VALUES
(1, 1, 'Bilsan Business Solutions | Palestine ', 'Test', 'test123', '', '562562850', '', 'sales@bilsan.co', 'logo_1621681157.png', '022906353', 'bilsan.oc', 'Ramallah | Betunia ', 'Bilsan Building ', 'Palestine ', 'Jordan ', '1984', 169, 0, 'USD - $', 'Asia/Jerusalem', 1, '22-05-2018');

-- --------------------------------------------------------

--
-- Table structure for table `xin_company_documents`
--

DROP TABLE IF EXISTS `xin_company_documents`;
CREATE TABLE IF NOT EXISTS `xin_company_documents` (
  `document_id` int(11) NOT NULL AUTO_INCREMENT,
  `document_type_id` int(11) NOT NULL,
  `license_name` varchar(255) NOT NULL,
  `company_id` int(11) NOT NULL,
  `expiry_date` varchar(255) NOT NULL,
  `license_number` varchar(255) NOT NULL,
  `license_notification` int(11) NOT NULL,
  `added_by` int(11) NOT NULL,
  `document` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xin_company_info`
--

DROP TABLE IF EXISTS `xin_company_info`;
CREATE TABLE IF NOT EXISTS `xin_company_info` (
  `company_info_id` int(111) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) NOT NULL,
  `logo_second` varchar(255) NOT NULL,
  `sign_in_logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `website_url` mediumtext NOT NULL,
  `starting_year` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_email` varchar(255) NOT NULL,
  `company_contact` varchar(255) NOT NULL,
  `contact_person` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address_1` mediumtext NOT NULL,
  `address_2` mediumtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `country` int(111) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  PRIMARY KEY (`company_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_company_info`
--

INSERT INTO `xin_company_info` (`company_info_id`, `logo`, `logo_second`, `sign_in_logo`, `favicon`, `website_url`, `starting_year`, `company_name`, `company_email`, `company_contact`, `contact_person`, `email`, `phone`, `address_1`, `address_2`, `city`, `state`, `zipcode`, `country`, `updated_at`) VALUES
(1, 'logo_1647819152.png', 'logo2_1520609223.png', 'signin_logo_1647819192.png', 'favicon_1647819177.png', '', '', 'Bilsan Business Solutions ', '', '', 'Bilsan ', 'info@bilsan.co', '123456789', 'Palestine | Ramallah | Betunia | ', 'Address Line 2', 'City', 'State', '11461', 169, '2017-05-20 12:05:53');

-- --------------------------------------------------------

--
-- Table structure for table `xin_company_policy`
--

DROP TABLE IF EXISTS `xin_company_policy`;
CREATE TABLE IF NOT EXISTS `xin_company_policy` (
  `policy_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(111) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`policy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_company_policy`
--

INSERT INTO `xin_company_policy` (`policy_id`, `company_id`, `title`, `description`, `attachment`, `added_by`, `created_at`) VALUES
(1, 1, 'Smoke-Free Work', '&lt;p&gt;Smoke-Free Work Environment Policy Close&lt;/p&gt;', NULL, 1, '28-02-2018');

-- --------------------------------------------------------

--
-- Table structure for table `xin_company_type`
--

DROP TABLE IF EXISTS `xin_company_type`;
CREATE TABLE IF NOT EXISTS `xin_company_type` (
  `type_id` int(111) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_company_type`
--

INSERT INTO `xin_company_type` (`type_id`, `name`, `created_at`) VALUES
(1, 'Corporation', ''),
(2, 'Exempt Organization', ''),
(3, 'Partnership', ''),
(4, 'Private Foundation', ''),
(5, 'Limited Liability Company', '');

-- --------------------------------------------------------

--
-- Table structure for table `xin_contract_type`
--

DROP TABLE IF EXISTS `xin_contract_type`;
CREATE TABLE IF NOT EXISTS `xin_contract_type` (
  `contract_type_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`contract_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_contract_type`
--

INSERT INTO `xin_contract_type` (`contract_type_id`, `company_id`, `name`, `created_at`) VALUES
(1, 1, 'Permanent', '05-04-2018 06:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `xin_countries`
--

DROP TABLE IF EXISTS `xin_countries`;
CREATE TABLE IF NOT EXISTS `xin_countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(255) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `country_flag` varchar(255) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_countries`
--

INSERT INTO `xin_countries` (`country_id`, `country_code`, `country_name`, `country_flag`) VALUES
(1, '+93', 'Afghanistan', 'flag_1500831780.gif'),
(2, '+355', 'Albania', 'flag_1500831815.gif'),
(3, 'DZ', 'Algeria', ''),
(4, 'DS', 'American Samoa', ''),
(5, 'AD', 'Andorra', ''),
(6, 'AO', 'Angola', ''),
(7, 'AI', 'Anguilla', ''),
(8, 'AQ', 'Antarctica', ''),
(9, 'AG', 'Antigua and Barbuda', ''),
(10, 'AR', 'Argentina', ''),
(11, 'AM', 'Armenia', ''),
(12, 'AW', 'Aruba', ''),
(13, 'AU', 'Australia', ''),
(14, 'AT', 'Austria', ''),
(15, 'AZ', 'Azerbaijan', ''),
(16, 'BS', 'Bahamas', ''),
(17, 'BH', 'Bahrain', ''),
(18, 'BD', 'Bangladesh', ''),
(19, 'BB', 'Barbados', ''),
(20, 'BY', 'Belarus', ''),
(21, 'BE', 'Belgium', ''),
(22, 'BZ', 'Belize', ''),
(23, 'BJ', 'Benin', ''),
(24, 'BM', 'Bermuda', ''),
(25, 'BT', 'Bhutan', ''),
(26, 'BO', 'Bolivia', ''),
(27, 'BA', 'Bosnia and Herzegovina', ''),
(28, 'BW', 'Botswana', ''),
(29, 'BV', 'Bouvet Island', ''),
(30, 'BR', 'Brazil', ''),
(31, 'IO', 'British Indian Ocean Territory', ''),
(32, 'BN', 'Brunei Darussalam', ''),
(33, 'BG', 'Bulgaria', ''),
(34, 'BF', 'Burkina Faso', ''),
(35, 'BI', 'Burundi', ''),
(36, 'KH', 'Cambodia', ''),
(37, 'CM', 'Cameroon', ''),
(38, 'CA', 'Canada', ''),
(39, 'CV', 'Cape Verde', ''),
(40, 'KY', 'Cayman Islands', ''),
(41, 'CF', 'Central African Republic', ''),
(42, 'TD', 'Chad', ''),
(43, 'CL', 'Chile', ''),
(44, 'CN', 'China', ''),
(45, 'CX', 'Christmas Island', ''),
(46, 'CC', 'Cocos (Keeling) Islands', ''),
(47, 'CO', 'Colombia', ''),
(48, 'KM', 'Comoros', ''),
(49, 'CG', 'Congo', ''),
(50, 'CK', 'Cook Islands', ''),
(51, 'CR', 'Costa Rica', ''),
(52, 'HR', 'Croatia (Hrvatska)', ''),
(53, 'CU', 'Cuba', ''),
(54, 'CY', 'Cyprus', ''),
(55, 'CZ', 'Czech Republic', ''),
(56, 'DK', 'Denmark', ''),
(57, 'DJ', 'Djibouti', ''),
(58, 'DM', 'Dominica', ''),
(59, 'DO', 'Dominican Republic', ''),
(60, 'TP', 'East Timor', ''),
(61, 'EC', 'Ecuador', ''),
(62, 'EG', 'Egypt', ''),
(63, 'SV', 'El Salvador', ''),
(64, 'GQ', 'Equatorial Guinea', ''),
(65, 'ER', 'Eritrea', ''),
(66, 'EE', 'Estonia', ''),
(67, 'ET', 'Ethiopia', ''),
(68, 'FK', 'Falkland Islands (Malvinas)', ''),
(69, 'FO', 'Faroe Islands', ''),
(70, 'FJ', 'Fiji', ''),
(71, 'FI', 'Finland', ''),
(72, 'FR', 'France', ''),
(73, 'FX', 'France, Metropolitan', ''),
(74, 'GF', 'French Guiana', ''),
(75, 'PF', 'French Polynesia', ''),
(76, 'TF', 'French Southern Territories', ''),
(77, 'GA', 'Gabon', ''),
(78, 'GM', 'Gambia', ''),
(79, 'GE', 'Georgia', ''),
(80, 'DE', 'Germany', ''),
(81, 'GH', 'Ghana', ''),
(82, 'GI', 'Gibraltar', ''),
(83, 'GK', 'Guernsey', ''),
(84, 'GR', 'Greece', ''),
(85, 'GL', 'Greenland', ''),
(86, 'GD', 'Grenada', ''),
(87, 'GP', 'Guadeloupe', ''),
(88, 'GU', 'Guam', ''),
(89, 'GT', 'Guatemala', ''),
(90, 'GN', 'Guinea', ''),
(91, 'GW', 'Guinea-Bissau', ''),
(92, 'GY', 'Guyana', ''),
(93, 'HT', 'Haiti', ''),
(94, 'HM', 'Heard and Mc Donald Islands', ''),
(95, 'HN', 'Honduras', ''),
(96, 'HK', 'Hong Kong', ''),
(97, 'HU', 'Hungary', ''),
(98, 'IS', 'Iceland', ''),
(99, 'IN', 'India', ''),
(100, 'IM', 'Isle of Man', ''),
(101, 'ID', 'Indonesia', ''),
(102, 'IR', 'Iran (Islamic Republic of)', ''),
(103, 'IQ', 'Iraq', ''),
(104, 'IE', 'Ireland', ''),
(105, 'IL', 'Israel', ''),
(106, 'IT', 'Italy', ''),
(107, 'CI', 'Ivory Coast', ''),
(108, 'JE', 'Jersey', ''),
(109, 'JM', 'Jamaica', ''),
(110, 'JP', 'Japan', ''),
(111, 'JO', 'Jordan', ''),
(112, 'KZ', 'Kazakhstan', ''),
(113, 'KE', 'Kenya', ''),
(114, 'KI', 'Kiribati', ''),
(115, 'KP', 'Korea, Democratic People\'s Republic of', ''),
(116, 'KR', 'Korea, Republic of', ''),
(117, 'XK', 'Kosovo', ''),
(118, 'KW', 'Kuwait', ''),
(119, 'KG', 'Kyrgyzstan', ''),
(120, 'LA', 'Lao People\'s Democratic Republic', ''),
(121, 'LV', 'Latvia', ''),
(122, 'LB', 'Lebanon', ''),
(123, 'LS', 'Lesotho', ''),
(124, 'LR', 'Liberia', ''),
(125, 'LY', 'Libyan Arab Jamahiriya', ''),
(126, 'LI', 'Liechtenstein', ''),
(127, 'LT', 'Lithuania', ''),
(128, 'LU', 'Luxembourg', ''),
(129, 'MO', 'Macau', ''),
(130, 'MK', 'Macedonia', ''),
(131, 'MG', 'Madagascar', ''),
(132, 'MW', 'Malawi', ''),
(133, 'MY', 'Malaysia', ''),
(134, 'MV', 'Maldives', ''),
(135, 'ML', 'Mali', ''),
(136, 'MT', 'Malta', ''),
(137, 'MH', 'Marshall Islands', ''),
(138, 'MQ', 'Martinique', ''),
(139, 'MR', 'Mauritania', ''),
(140, 'MU', 'Mauritius', ''),
(141, 'TY', 'Mayotte', ''),
(142, 'MX', 'Mexico', ''),
(143, 'FM', 'Micronesia, Federated States of', ''),
(144, 'MD', 'Moldova, Republic of', ''),
(145, 'MC', 'Monaco', ''),
(146, 'MN', 'Mongolia', ''),
(147, 'ME', 'Montenegro', ''),
(148, 'MS', 'Montserrat', ''),
(149, 'MA', 'Morocco', ''),
(150, 'MZ', 'Mozambique', ''),
(151, 'MM', 'Myanmar', ''),
(152, 'NA', 'Namibia', ''),
(153, 'NR', 'Nauru', ''),
(154, 'NP', 'Nepal', ''),
(155, 'NL', 'Netherlands', ''),
(156, 'AN', 'Netherlands Antilles', ''),
(157, 'NC', 'New Caledonia', ''),
(158, 'NZ', 'New Zealand', ''),
(159, 'NI', 'Nicaragua', ''),
(160, 'NE', 'Niger', ''),
(161, 'NG', 'Nigeria', ''),
(162, 'NU', 'Niue', ''),
(163, 'NF', 'Norfolk Island', ''),
(164, 'MP', 'Northern Mariana Islands', ''),
(165, 'NO', 'Norway', ''),
(166, 'OM', 'Oman', ''),
(167, 'PK', 'Pakistan', ''),
(168, 'PW', 'Palau', ''),
(169, 'PS', 'Palestine', ''),
(170, 'PA', 'Panama', ''),
(171, 'PG', 'Papua New Guinea', ''),
(172, 'PY', 'Paraguay', ''),
(173, 'PE', 'Peru', ''),
(174, 'PH', 'Philippines', ''),
(175, 'PN', 'Pitcairn', ''),
(176, 'PL', 'Poland', ''),
(177, 'PT', 'Portugal', ''),
(178, 'PR', 'Puerto Rico', ''),
(179, 'QA', 'Qatar', ''),
(180, 'RE', 'Reunion', ''),
(181, 'RO', 'Romania', ''),
(182, 'RU', 'Russian Federation', ''),
(183, 'RW', 'Rwanda', ''),
(184, 'KN', 'Saint Kitts and Nevis', ''),
(185, 'LC', 'Saint Lucia', ''),
(186, 'VC', 'Saint Vincent and the Grenadines', ''),
(187, 'WS', 'Samoa', ''),
(188, 'SM', 'San Marino', ''),
(189, 'ST', 'Sao Tome and Principe', ''),
(190, 'SA', 'Saudi Arabia', ''),
(191, 'SN', 'Senegal', ''),
(192, 'RS', 'Serbia', ''),
(193, 'SC', 'Seychelles', ''),
(194, 'SL', 'Sierra Leone', ''),
(195, 'SG', 'Singapore', ''),
(196, 'SK', 'Slovakia', ''),
(197, 'SI', 'Slovenia', ''),
(198, 'SB', 'Solomon Islands', ''),
(199, 'SO', 'Somalia', ''),
(200, 'ZA', 'South Africa', ''),
(201, 'GS', 'South Georgia South Sandwich Islands', ''),
(202, 'ES', 'Spain', ''),
(203, 'LK', 'Sri Lanka', ''),
(204, 'SH', 'St. Helena', ''),
(205, 'PM', 'St. Pierre and Miquelon', ''),
(206, 'SD', 'Sudan', ''),
(207, 'SR', 'Suriname', ''),
(208, 'SJ', 'Svalbard and Jan Mayen Islands', ''),
(209, 'SZ', 'Swaziland', ''),
(210, 'SE', 'Sweden', ''),
(211, 'CH', 'Switzerland', ''),
(212, 'SY', 'Syrian Arab Republic', ''),
(213, 'TW', 'Taiwan', ''),
(214, 'TJ', 'Tajikistan', ''),
(215, 'TZ', 'Tanzania, United Republic of', ''),
(216, 'TH', 'Thailand', ''),
(217, 'TG', 'Togo', ''),
(218, 'TK', 'Tokelau', ''),
(219, 'TO', 'Tonga', ''),
(220, 'TT', 'Trinidad and Tobago', ''),
(221, 'TN', 'Tunisia', ''),
(222, 'TR', 'Turkey', ''),
(223, 'TM', 'Turkmenistan', ''),
(224, 'TC', 'Turks and Caicos Islands', ''),
(225, 'TV', 'Tuvalu', ''),
(226, 'UG', 'Uganda', ''),
(227, 'UA', 'Ukraine', ''),
(228, 'AE', 'United Arab Emirates', ''),
(229, 'GB', 'United Kingdom', ''),
(230, 'US', 'United States', ''),
(231, 'UM', 'United States minor outlying islands', ''),
(232, 'UY', 'Uruguay', ''),
(233, 'UZ', 'Uzbekistan', ''),
(234, 'VU', 'Vanuatu', ''),
(235, 'VA', 'Vatican City State', ''),
(236, 'VE', 'Venezuela', ''),
(237, 'VN', 'Vietnam', ''),
(238, 'VG', 'Virgin Islands (British)', ''),
(239, 'VI', 'Virgin Islands (U.S.)', ''),
(240, 'WF', 'Wallis and Futuna Islands', ''),
(241, 'EH', 'Western Sahara', ''),
(242, 'YE', 'Yemen', ''),
(243, 'ZR', 'Zaire', ''),
(244, 'ZM', 'Zambia', ''),
(245, 'ZW', 'Zimbabwe', '');

-- --------------------------------------------------------

--
-- Table structure for table `xin_currencies`
--

DROP TABLE IF EXISTS `xin_currencies`;
CREATE TABLE IF NOT EXISTS `xin_currencies` (
  `currency_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_currencies`
--

INSERT INTO `xin_currencies` (`currency_id`, `company_id`, `name`, `code`, `symbol`) VALUES
(1, 1, 'Dollars', 'USD', '$');

-- --------------------------------------------------------

--
-- Table structure for table `xin_currency_converter`
--

DROP TABLE IF EXISTS `xin_currency_converter`;
CREATE TABLE IF NOT EXISTS `xin_currency_converter` (
  `currency_converter_id` int(11) NOT NULL AUTO_INCREMENT,
  `usd_currency` varchar(11) NOT NULL DEFAULT '1',
  `to_currency_title` varchar(200) NOT NULL,
  `to_currency_rate` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`currency_converter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_currency_converter`
--

INSERT INTO `xin_currency_converter` (`currency_converter_id`, `usd_currency`, `to_currency_title`, `to_currency_rate`, `created_at`) VALUES
(1, '1', 'MYR', '4.11', '17-08-2018 03:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `xin_database_backup`
--

DROP TABLE IF EXISTS `xin_database_backup`;
CREATE TABLE IF NOT EXISTS `xin_database_backup` (
  `backup_id` int(111) NOT NULL AUTO_INCREMENT,
  `backup_file` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`backup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_departments`
--

DROP TABLE IF EXISTS `xin_departments`;
CREATE TABLE IF NOT EXISTS `xin_departments` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(200) NOT NULL,
  `company_id` int(11) NOT NULL,
  `location_id` int(111) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_departments`
--

INSERT INTO `xin_departments` (`department_id`, `department_name`, `company_id`, `location_id`, `employee_id`, `added_by`, `created_at`, `status`) VALUES
(1, 'MD Office', 1, 1, 5, 0, '06-03-2018', 1),
(2, 'Accounts and  Finances', 1, 1, 5, 1, '17-03-2018', 1),
(3, 'Development Unit ', 1, 1, 5, 6, '2021-05-22 14:12:58', 1),
(4, 'Media Production', 1, 1, 5, 6, '2021-05-22 14:13:18', 1),
(5, 'PR & Marketing', 1, 1, 5, 6, '2021-05-22 14:20:14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xin_designations`
--

DROP TABLE IF EXISTS `xin_designations`;
CREATE TABLE IF NOT EXISTS `xin_designations` (
  `designation_id` int(11) NOT NULL AUTO_INCREMENT,
  `top_designation_id` int(11) NOT NULL DEFAULT 0,
  `department_id` int(200) NOT NULL,
  `sub_department_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `designation_name` varchar(200) NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`designation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_designations`
--

INSERT INTO `xin_designations` (`designation_id`, `top_designation_id`, `department_id`, `sub_department_id`, `company_id`, `designation_name`, `added_by`, `created_at`, `status`) VALUES
(9, 0, 1, 8, 1, 'Software Developer', 1, '06-03-2018', 1),
(10, 0, 2, 10, 1, 'Finance', 1, '18-03-2018', 1),
(11, 0, 1, 9, 1, 'Office Manager ', 1, '22-05-2021', 1),
(12, 0, 5, 15, 1, 'Manager', 1, '22-05-2021', 1),
(13, 0, 3, 12, 1, 'Mobile', 1, '23-04-2022', 1),
(14, 0, 3, 12, 1, 'Net Core', 1, '23-04-2022', 1),
(15, 0, 3, 12, 1, 'PHP - Laravel', 1, '23-04-2022', 1),
(16, 0, 4, 14, 1, 'Designer', 1, '23-04-2022', 1),
(17, 0, 3, 11, 1, 'Ux Ui', 1, '23-04-2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xin_document_type`
--

DROP TABLE IF EXISTS `xin_document_type`;
CREATE TABLE IF NOT EXISTS `xin_document_type` (
  `document_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `document_type` varchar(255) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`document_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_document_type`
--

INSERT INTO `xin_document_type` (`document_type_id`, `company_id`, `document_type`, `created_at`) VALUES
(1, 1, 'Driving License', '09-05-2018 12:34:55');

-- --------------------------------------------------------

--
-- Table structure for table `xin_email_configuration`
--

DROP TABLE IF EXISTS `xin_email_configuration`;
CREATE TABLE IF NOT EXISTS `xin_email_configuration` (
  `email_config_id` int(11) NOT NULL AUTO_INCREMENT,
  `email_type` enum('phpmail','smtp','codeigniter') COLLATE utf8_unicode_ci NOT NULL,
  `smtp_host` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_secure` enum('tls','ssl') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`email_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `xin_email_configuration`
--

INSERT INTO `xin_email_configuration` (`email_config_id`, `email_type`, `smtp_host`, `smtp_username`, `smtp_password`, `smtp_port`, `smtp_secure`) VALUES
(1, 'codeigniter', 'smtp.gmail.com', 'demo@gmail.com', '123456', 587, 'tls');

-- --------------------------------------------------------

--
-- Table structure for table `xin_email_template`
--

DROP TABLE IF EXISTS `xin_email_template`;
CREATE TABLE IF NOT EXISTS `xin_email_template` (
  `template_id` int(111) NOT NULL AUTO_INCREMENT,
  `template_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_email_template`
--

INSERT INTO `xin_email_template` (`template_id`, `template_code`, `name`, `subject`, `message`, `status`) VALUES
(2, 'code1', 'Forgot Password', 'Forgot Password', '&lt;p&gt;There was recently a request for password for your {var site_name}Â account.&lt;/p&gt;&lt;p&gt;If this was a mistake, just ignore this email and nothing will happen.&lt;br&gt;&lt;/p&gt;&lt;p&gt;To reset your password, visit the following link &lt;a href=\\&quot;\\\\\\\\\\&quot; admin=\\&quot;\\&quot; auth=\\&quot;\\&quot; password=\\&quot;\\&quot; change=\\&quot;true&amp;email={var\\&quot; title=\\&quot;\\\\\\\\\\&quot;&gt;&lt;a href=\\&quot;{var site_url}admin/auth/reset_password/?change=true&amp;email={var email}\\&quot; title=\\&quot;reset_password\\&quot;&gt;Reset Password&lt;/a&gt;&lt;/a&gt;&lt;a href=\\&quot;\\\\\\\\\\&quot; admin=\\&quot;\\\\\\\\\\&quot; auth=\\&quot;\\\\\\\\\\&quot; title=\\&quot;\\\\\\\\\\&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;p&gt;Thank you,&lt;br&gt;The {var site_name} Team&lt;/p&gt;', 1),
(3, 'code2', 'New Project', 'New Project', '&lt;p&gt;Dear {var name},&lt;/p&gt;&lt;p&gt;New project has been assigned to you.&lt;/p&gt;&lt;p&gt;Project Name: {var project_name}&lt;/p&gt;&lt;p&gt;Project Start Date:&amp;nbsp;&lt;span 1rem;\\\\\\&quot;=\\&quot;\\&quot;&gt;{var project_start_date}&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span 1rem;\\\\\\&quot;=\\&quot;\\&quot;&gt;Thank you,&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;The {var site_name} Team&lt;/p&gt;', 1),
(5, 'code3', 'Leave Request ', 'A Leave Request from you', '&lt;p&gt;Dear Admin,&lt;/p&gt;&lt;p&gt;{var employee_name}Â wants a leave from you.&lt;/p&gt;&lt;p&gt;You can view this leave request by logging in to the portal using the link below.&lt;/p&gt;&lt;p&gt;{var site_url}admin/&lt;br&gt;&lt;br&gt;Regards&lt;/p&gt;&lt;p&gt;The {var site_name} Team&lt;/p&gt;', 1),
(6, 'code4', 'Leave Approve', 'Your leave request has been approved', '&lt;p&gt;Your leave request has been approved&lt;/p&gt;&lt;p&gt;&lt;span xss=removed&gt;Congratulations! Your leave request from&lt;/span&gt;&lt;font color=\\&quot;\\\\\\\\\\&quot; face=\\&quot;\\\\\\\\\\&quot; arial,=\\&quot;\\&quot; verdana,=\\&quot;\\&quot; trebuchet=\\&quot;\\&quot;&gt;Â &lt;/font&gt;{var leave_start_date}Â toÂ {var leave_end_date}Â has been approved by your company management.&lt;/p&gt;&lt;p&gt;Check here&lt;/p&gt;&lt;p&gt;{var site_url}admin/&lt;br&gt;&lt;/p&gt;&lt;p&gt;Regards&lt;br&gt;The {var site_name} Team&lt;/p&gt;', 1),
(7, 'code5', 'Leave Reject', 'Your leave request has been Rejected', '&lt;p&gt;Your leave request has been Rejected&lt;/p&gt;&lt;p&gt;Unfortunately !Â Your leave request fromÂ {var leave_start_date}Â toÂ {var leave_end_date}Â has been Rejected by your company management.&lt;/p&gt;&lt;p&gt;Check here&lt;/p&gt;&lt;p&gt;{var site_url}admin/&lt;br&gt;&lt;/p&gt;&lt;p&gt;Regards&lt;/p&gt;&lt;p&gt;The {var site_name} Team&lt;/p&gt;', 1),
(8, 'code6', 'Welcome Email ', 'Welcome Email ', '&lt;p&gt;HelloÂ {var employee_name},&lt;/p&gt;&lt;p&gt;Welcome toÂ {var site_name}Â .Thanks for joiningÂ {var site_name}. We listed your sign in details below, make sure you keep them safe.&lt;/p&gt;&lt;p&gt;Your Username: {var username}&lt;/p&gt;&lt;p&gt;Your Employee ID: {var employee_id}&lt;br&gt;Your Email Address: {var email}&lt;br&gt;Your Password: {var password}&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;a href=\\&quot;\\\\\\\\\\&quot;&gt;&lt;/a&gt;&lt;a href=\\&quot;\\\\\\\\\\&quot; hr=\\&quot;\\\\\\\\\\&quot;&gt;&lt;/a&gt;&lt;a href=\\&quot;\\\\\\\\\\&quot; admin=\\&quot;\\&quot;&gt;Login Panel&lt;/a&gt;&lt;/p&gt;&lt;p&gt;Link doesn\\&#039;t work? Copy the following link to your browser address bar:&lt;/p&gt;&lt;p&gt;{var site_url}admin/&lt;/p&gt;&lt;p&gt;Have fun!&lt;/p&gt;&lt;p&gt;TheÂ {var site_name}Â Team.&lt;/p&gt;', 1),
(9, 'code7', 'Transfer', 'New Transfer', '&lt;p&gt;HelloÂ {var employee_name},&lt;/p&gt;&lt;p&gt;You have beenÂ transfered to another department and location.&lt;/p&gt;&lt;p&gt;You can view the transfer details by logging in to the portal using the link below.&lt;/p&gt;&lt;p&gt;{var site_url}admin/&lt;/p&gt;&lt;p&gt;Regards&lt;/p&gt;&lt;p&gt;The {var site_name} Team&lt;/p&gt;', 1),
(10, 'code8', 'Award', 'Award Received', '&lt;p&gt;HelloÂ {var employee_name},&lt;/p&gt;&lt;p&gt;You have beenÂ awardedÂ {var award_name}.&lt;/p&gt;&lt;p&gt;You can view this award by logging in to the portal using the link below.&lt;/p&gt;&lt;p&gt;&lt;span xss=removed&gt;{var site_url}admin/&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Regards&lt;/p&gt;&lt;p&gt;The {var site_name} Team&lt;/p&gt;', 1),
(14, 'code9', 'New Task', 'Task assigned', '&lt;p&gt;Dear Employee,&lt;/p&gt;&lt;p&gt;A new taskÂ &lt;span xss=\\&quot;\\\\\\\\\\&quot;&gt;{var task_name}&lt;/span&gt;Â has been assigned to you byÂ &lt;span xss=\\&quot;\\\\\\\\\\&quot;&gt;{var task_assigned_by}&lt;/span&gt;.&lt;/p&gt;&lt;p&gt;You can view this task by logging in to the portal using the link below.&lt;/p&gt;&lt;p&gt;{var site_url}admin/&lt;/p&gt;&lt;p&gt;Regards,&lt;/p&gt;&lt;p&gt;The {var site_name} Team&lt;/p&gt;', 1),
(15, 'code10', 'New Inquiry', 'New Inquiry [#{var ticket_code}]', '&lt;p xss=\\&quot;removed\\&quot; rgb(51,=\\&quot;\\\\\\&quot; font-family:=\\&quot;\\\\\\&quot; sans-serif,=\\&quot;\\\\\\&quot; arial,=\\&quot;\\\\\\&quot; verdana,=\\&quot;\\\\\\&quot; trebuchet=\\&quot;\\\\\\\\\\&quot;&gt;&lt;span xss=\\&quot;removed\\&quot;&gt;Dear Admin,&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p xss=\\&quot;removed\\&quot; rgb(51,=\\&quot;\\\\\\&quot; font-family:=\\&quot;\\\\\\&quot; sans-serif,=\\&quot;\\\\\\&quot; arial,=\\&quot;\\\\\\&quot; verdana,=\\&quot;\\\\\\&quot; trebuchet=\\&quot;\\\\\\\\\\&quot;&gt;&lt;span xss=\\&quot;removed\\&quot;&gt;Your received a new inquiry.&lt;/span&gt;&lt;/p&gt;&lt;p xss=\\&quot;removed\\&quot; rgb(51,=\\&quot;\\\\\\&quot; font-family:=\\&quot;\\\\\\&quot; sans-serif,=\\&quot;\\\\\\&quot; arial,=\\&quot;\\\\\\&quot; verdana,=\\&quot;\\\\\\&quot; trebuchet=\\&quot;\\\\\\\\\\&quot;&gt;&lt;span xss=\\&quot;removed\\&quot;&gt;Inquiry Code: #{var ticket_code}&lt;/span&gt;&lt;/p&gt;&lt;p xss=\\&quot;removed\\&quot; rgb(51,=\\&quot;\\\\\\&quot; font-family:=\\&quot;\\\\\\&quot; sans-serif,=\\&quot;\\\\\\&quot; arial,=\\&quot;\\\\\\&quot; verdana,=\\&quot;\\\\\\&quot; trebuchet=\\&quot;\\\\\\\\\\&quot;&gt;Status : Open&lt;br&gt;&lt;br&gt;Click on the below link to see the inquiry details and post additional comments.&lt;/p&gt;&lt;p xss=\\&quot;removed\\&quot; rgb(51,=\\&quot;\\\\\\&quot; font-family:=\\&quot;\\\\\\&quot; sans-serif,=\\&quot;\\\\\\&quot; arial,=\\&quot;\\\\\\&quot; verdana,=\\&quot;\\\\\\&quot; trebuchet=\\&quot;\\\\\\\\\\&quot;&gt;{var site_url}admin/tickets/&lt;br&gt;&lt;br&gt;Regards&lt;/p&gt;&lt;p xss=\\&quot;removed\\&quot; rgb(51,=\\&quot;\\\\\\&quot; font-family:=\\&quot;\\\\\\&quot; sans-serif,=\\&quot;\\\\\\&quot; arial,=\\&quot;\\\\\\&quot; verdana,=\\&quot;\\\\\\&quot; trebuchet=\\&quot;\\\\\\\\\\&quot;&gt;The {var site_name} Team&lt;/p&gt;', 1),
(16, 'code11', 'Client Welcome Email', 'Welcome Email', '&lt;p&gt;HelloÂ {var client_name},&lt;/p&gt;&lt;p&gt;Welcome toÂ {var site_name}Â .Thanks for joiningÂ {var site_name}. We listed your sign in details below, make sure you keep them safe. You can login to your panel using email and password.&lt;/p&gt;&lt;p&gt;Your Email Address: {var email}&lt;br&gt;&lt;/p&gt;&lt;p&gt;Your Password: {var password}&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;a href=\\&quot;\\\\\\\\\\&quot;&gt;&lt;/a&gt;&lt;a href=\\&quot;\\\\\\\\\\&quot; hr=\\&quot;\\\\\\\\\\&quot;&gt;&lt;/a&gt;&lt;a href=\\&quot;\\\\\\\\\\&quot; client=\\&quot;\\\\\\\\\\&quot;&gt;&lt;/a&gt;&lt;a href=\\&quot;\\\\\\\\\\&quot; client=\\&quot;\\\\\\\\\\&quot;&gt;Login Panel&lt;/a&gt;&lt;/p&gt;&lt;p&gt;Link doesn\\&#039;t work? Copy the following link to your browser address bar:&lt;/p&gt;&lt;p&gt;{var site_url}client/&lt;/p&gt;&lt;p&gt;Have fun!&lt;/p&gt;&lt;p&gt;TheÂ {var site_name}Â Team.&lt;/p&gt;', 1),
(17, 'code12', 'Password Changed Successfully', 'Password Changed Successfully', '&lt;p&gt;Hello,&lt;/p&gt;&lt;p&gt;Congratulations! Your password has been updated successfully.&lt;/p&gt;&lt;p&gt;Your new password is: {var password}&lt;/p&gt;&lt;p&gt;Thank you,&lt;br&gt;The {var site_name} Team&lt;br&gt;&lt;/p&gt;', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xin_employees`
--

DROP TABLE IF EXISTS `xin_employees`;
CREATE TABLE IF NOT EXISTS `xin_employees` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(200) NOT NULL,
  `office_shift_id` int(111) NOT NULL,
  `reports_to` int(11) NOT NULL DEFAULT 0,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date_of_birth` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `e_status` int(11) NOT NULL,
  `user_role_id` int(100) NOT NULL,
  `department_id` int(100) NOT NULL,
  `sub_department_id` int(11) NOT NULL,
  `designation_id` int(100) NOT NULL,
  `company_id` int(111) DEFAULT NULL,
  `location_id` int(11) NOT NULL,
  `view_companies_id` varchar(255) NOT NULL,
  `salary_template` varchar(255) NOT NULL,
  `hourly_grade_id` int(111) NOT NULL,
  `monthly_grade_id` int(111) NOT NULL,
  `date_of_joining` varchar(200) NOT NULL,
  `date_of_leaving` varchar(255) NOT NULL,
  `marital_status` varchar(255) NOT NULL,
  `salary` varchar(200) NOT NULL,
  `wages_type` int(11) NOT NULL,
  `basic_salary` varchar(200) NOT NULL DEFAULT '0',
  `daily_wages` varchar(200) NOT NULL DEFAULT '0',
  `salary_ssempee` varchar(200) NOT NULL DEFAULT '0',
  `salary_ssempeer` varchar(200) DEFAULT '0',
  `salary_income_tax` varchar(200) NOT NULL DEFAULT '0',
  `salary_overtime` varchar(200) NOT NULL DEFAULT '0',
  `salary_commission` varchar(200) NOT NULL DEFAULT '0',
  `salary_claims` varchar(200) NOT NULL DEFAULT '0',
  `salary_paid_leave` varchar(200) NOT NULL DEFAULT '0',
  `salary_director_fees` varchar(200) NOT NULL DEFAULT '0',
  `salary_bonus` varchar(200) NOT NULL DEFAULT '0',
  `salary_advance_paid` varchar(200) NOT NULL DEFAULT '0',
  `address` mediumtext NOT NULL,
  `state` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `zipcode` varchar(200) NOT NULL,
  `profile_picture` mediumtext NOT NULL,
  `profile_background` mediumtext NOT NULL,
  `resume` mediumtext NOT NULL,
  `skype_id` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `facebook_link` mediumtext NOT NULL,
  `twitter_link` mediumtext NOT NULL,
  `blogger_link` mediumtext NOT NULL,
  `linkdedin_link` mediumtext NOT NULL,
  `google_plus_link` mediumtext NOT NULL,
  `instagram_link` varchar(255) NOT NULL,
  `pinterest_link` varchar(255) NOT NULL,
  `youtube_link` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `last_login_date` varchar(255) NOT NULL,
  `last_logout_date` varchar(255) NOT NULL,
  `last_login_ip` varchar(255) NOT NULL,
  `is_logged_in` int(111) NOT NULL,
  `online_status` int(111) NOT NULL,
  `fixed_header` varchar(150) NOT NULL,
  `compact_sidebar` varchar(150) NOT NULL,
  `boxed_wrapper` varchar(150) NOT NULL,
  `leave_categories` varchar(255) NOT NULL DEFAULT '0',
  `ethnicity_type` int(11) NOT NULL,
  `blood_group` varchar(50) DEFAULT NULL,
  `nationality_id` int(11) NOT NULL,
  `citizenship_id` int(11) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_employees`
--

INSERT INTO `xin_employees` (`user_id`, `employee_id`, `office_shift_id`, `reports_to`, `first_name`, `last_name`, `username`, `email`, `password`, `date_of_birth`, `gender`, `e_status`, `user_role_id`, `department_id`, `sub_department_id`, `designation_id`, `company_id`, `location_id`, `view_companies_id`, `salary_template`, `hourly_grade_id`, `monthly_grade_id`, `date_of_joining`, `date_of_leaving`, `marital_status`, `salary`, `wages_type`, `basic_salary`, `daily_wages`, `salary_ssempee`, `salary_ssempeer`, `salary_income_tax`, `salary_overtime`, `salary_commission`, `salary_claims`, `salary_paid_leave`, `salary_director_fees`, `salary_bonus`, `salary_advance_paid`, `address`, `state`, `city`, `zipcode`, `profile_picture`, `profile_background`, `resume`, `skype_id`, `contact_no`, `facebook_link`, `twitter_link`, `blogger_link`, `linkdedin_link`, `google_plus_link`, `instagram_link`, `pinterest_link`, `youtube_link`, `is_active`, `last_login_date`, `last_logout_date`, `last_login_ip`, `is_logged_in`, `online_status`, `fixed_header`, `compact_sidebar`, `boxed_wrapper`, `leave_categories`, `ethnicity_type`, `blood_group`, `nationality_id`, `citizenship_id`, `created_at`) VALUES
(1, 'mabuali', 1, 0, 'Muhammad', 'Abu Ali', 'mabuali', 'code4palestine@gmail.com', '$2y$12$bBD7XOPT5Wmlx8b5wzY3ouZsWjADYY5hUPWM7qw4kvcqXTsxTEHtu', '1984-03-30', 'Male', 0, 1, 1, 8, 9, 1, 1, '0', 'monthly', 0, 0, '2018-02-01', '', 'Single', '', 1, '1000', '0', '8', '17', '10', '0', '1', '2', '3', '0', '0', '0', 'Test Address', '', '', '', 'profile_1621682847.jpg', 'profile_background_1519924152.jpg', '', '', '0568881015', '', '', '', '', '', '', '', '', 1, '21-07-2022 12:07:20', '28-06-2022 23:26:01', '213.6.24.82', 1, 1, 'fixed_layout_hrsale', '', '', '0,1,2', 0, '', 0, 0, '2018-02-28 05:30:44'),
(30, '403013675', 1, 0, 'Fatma Maher Hussein Abu Hasira', 'فاطمه ماهر حسين ابو حصيره', 'f.abuhasira', '403013675@code-clinic.co', '$2y$12$ZLrK3pW.1OuOEE6qNgPTNO7LGk12/w.PrsjBTzH65y.xstmh7IEEW', '1998-02-10', 'Female', 0, 2, 3, 12, 13, 1, 1, '0', '', 0, 0, '2022-03-10', '', 'Single', '', 1, '2000', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '059', '', '', '', '', '', '', '', '', 1, '', '', '', 0, 0, '', '', '', '0,1,2,3,4', 0, '', 0, 0, '2022-04-23 02:09:51'),
(32, '405890948', 1, 0, 'Mahmoud Ibrahim Yacoub Alaghwani', 'محمود ابراهيم يعقوب الأغواني', 'mahmoud2987925', '405890948@code-clinic.co', '$2y$12$ivcIP8BCNUiZu.AGyzKysOOFHSE3XCD4IQafQrYbuen2YzhdSXXG2', '2000-03-16', 'Male', 0, 2, 4, 14, 16, 1, 1, '0', '', 0, 0, '2022-03-20', '', 'Single', '', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '059', '', '', '', '', '', '', '', '', 1, '', '', '', 0, 0, '', '', '', '0,1,2,3,4', 0, '', 0, 0, '2022-04-23 02:14:38'),
(34, '410693808', 1, 0, 'hassan imad elhallaq', 'حسن عماد الحلاق', 'hassan.elhallaq93', '410693808@code-clinic.co', '$2y$12$QgH0k8JWB31H6KqKR/FW6eRCuhTL4rzs8cdzsIFnT2LKyPjiOaWS6', '1993-09-24', 'Male', 0, 2, 3, 12, 15, 1, 1, '0', '', 0, 0, '2022-03-01', '', 'Single', '', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '059', '', '', '', '', '', '', '', '', 1, '', '', '', 0, 0, '', '', '', '0,1,2,3,4', 0, '', 0, 0, '2022-04-23 02:19:29'),
(36, '400867842', 1, 0, 'Alaa Fayez Mahmoud Alborno', 'آلاء فايزمحمو البورنو', 'alaa_histar', '400867842@code-clinic.co', '$2y$12$JQ5pkZ6grNcvp7WtmbWOB.JYX437faNHaTRZjd97XctZxX0FOvlP6', '1995-10-28', 'Female', 0, 2, 3, 11, 17, 1, 1, '0', '', 0, 0, '2022-02-01', '', 'Single', '', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '059', '', '', '', '', '', '', '', '', 1, '11-05-2022 18:45:32', '', '176.67.109.215', 1, 0, '', '', '', '0,1,2,3,4', 0, '', 0, 0, '2022-04-23 02:24:20'),
(37, '405209172', 1, 0, 'Ola Ashraf Mohammed Sobeh', 'علا أشرف محمد صبح', 'o.a.sobeh', '405209172@code-clinic.co', '$2y$12$sIvMUolysIAeJz6nFIk/g.tUp2JsH9Kd8SwxWYh17PXXSOCp5Df4e', '1999-07-31', 'Female', 0, 2, 3, 12, 13, 1, 1, '0', '', 0, 0, '2022-03-10', '', 'Single', '', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '059', '', '', '', '', '', '', '', '', 1, '', '', '', 0, 0, '', '', '', '0,1,2,3,4', 0, '', 0, 0, '2022-04-23 02:26:46'),
(38, '405861516', 1, 0, 'Abdelrahman F. Aljazzar', 'عبد الرحمن فايز الجزار', 'Abodaljazzar2000', '405861516@code-clinic.co', '$2y$12$JLwWGi6q4PrWG8O3otRXJujHxxTT7nJGWb5v79vpsjcFR7LPeQlR6', '2000-02-08', 'Male', 0, 2, 3, 12, 14, 1, 1, '0', '', 0, 0, '2022-04-10', '', 'Single', '', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '059', '', '', '', '', '', '', '', '', 1, '', '', '', 0, 0, '', '', '', '0,1,2,3,4', 0, '', 0, 0, '2022-04-23 02:30:48'),
(40, '406095091', 1, 0, 'zaid hassan abujahal', 'زيد حسن ابوجهل', 'abujahalzaid', '406095091@code-clinic.co', '$2y$12$8QBQZ8/NoMi/6SbHy.AP2eM8JJ4eYa9LctCMvLYbfWYNlkV.fosAy', '2000-09-24', 'Male', 0, 2, 3, 12, 14, 1, 1, '0', '', 0, 0, '2022-04-10', '', 'Single', '', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '', '', '', '', '059', '', '', '', '', '', '', '', '', 1, '', '', '', 0, 0, '', '', '', '0,1,2,3,4', 0, '', 0, 0, '2022-04-23 02:35:15'),
(41, '123456789', 1, 0, 'zaid', 'mahameed', 'zaid', 'zaid@code-clinic.co', '$2y$12$zw3i6SpeYvrxf69LbIbmPOOoogk3JMErSCdznesoYbRKcKzFlB2K6', '2022-06-28', 'Male', 0, 1, 1, 8, 9, 1, 1, '', '', 0, 0, '2022-06-28', '', '', '', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'ist', '', '', '', '', '', '', '', '059', '', '', '', '', '', '', '', '', 1, '', '', '', 0, 0, '', '', '', '0,1,3', 0, NULL, 0, 0, '2022-06-28 04:25:13'),
(42, '040520843', 1, 0, 'Roi', 'arazi', 'roi', 'roi@dimensions-tech.co', '$2y$12$hIBS/oWDS3gBeK9GsY/LC.MkIyouv3BIkygdjSJNna9TPVy2erTvG', '1981-01-04', 'Male', 0, 1, 1, 8, 9, 1, 1, '', '', 0, 0, '2022-01-01', '', '', '', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'natanya haorzim 8', '', '', '', '', '', '', '', '0584848971', '', '', '', '', '', '', '', '', 1, '', '', '', 0, 0, '', '', '', '0,1,2,3,4', 0, NULL, 0, 0, '2022-07-10 11:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_bankaccount`
--

DROP TABLE IF EXISTS `xin_employee_bankaccount`;
CREATE TABLE IF NOT EXISTS `xin_employee_bankaccount` (
  `bankaccount_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `is_primary` int(11) NOT NULL,
  `account_title` varchar(255) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `bank_code` varchar(255) NOT NULL,
  `bank_branch` mediumtext NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`bankaccount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_complaints`
--

DROP TABLE IF EXISTS `xin_employee_complaints`;
CREATE TABLE IF NOT EXISTS `xin_employee_complaints` (
  `complaint_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `complaint_from` int(111) NOT NULL,
  `title` varchar(255) NOT NULL,
  `complaint_date` varchar(255) NOT NULL,
  `complaint_against` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `status` tinyint(2) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`complaint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_contacts`
--

DROP TABLE IF EXISTS `xin_employee_contacts`;
CREATE TABLE IF NOT EXISTS `xin_employee_contacts` (
  `contact_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `relation` varchar(255) NOT NULL,
  `is_primary` int(111) NOT NULL,
  `is_dependent` int(111) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `work_phone` varchar(255) NOT NULL,
  `work_phone_extension` varchar(255) NOT NULL,
  `mobile_phone` varchar(255) NOT NULL,
  `home_phone` varchar(255) NOT NULL,
  `work_email` varchar(255) NOT NULL,
  `personal_email` varchar(255) NOT NULL,
  `address_1` mediumtext NOT NULL,
  `address_2` mediumtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_employee_contacts`
--

INSERT INTO `xin_employee_contacts` (`contact_id`, `employee_id`, `relation`, `is_primary`, `is_dependent`, `contact_name`, `work_phone`, `work_phone_extension`, `mobile_phone`, `home_phone`, `work_email`, `personal_email`, `address_1`, `address_2`, `city`, `state`, `zipcode`, `country`, `created_at`) VALUES
(1, 6, 'Sibling', 0, 0, 'yana', '', '', '0595788188', '', 'a@gmail.com', '', '', '', '', '', '', '', '31-05-2021'),
(2, 7, 'Sibling', 0, 0, 'sabri', '', '', '0595062681', '', 'aa@gmail.com', '', '', '', '', '', '', '', '31-05-2021'),
(3, 14, 'Spouse', 0, 0, 'يمامة', '', '', '0512534730', '', 'a@gmail.com', '', '', '', '', '', '', '', '31-05-2021');

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_contract`
--

DROP TABLE IF EXISTS `xin_employee_contract`;
CREATE TABLE IF NOT EXISTS `xin_employee_contract` (
  `contract_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `contract_type_id` int(111) NOT NULL,
  `from_date` varchar(255) NOT NULL,
  `designation_id` int(111) NOT NULL,
  `title` varchar(255) NOT NULL,
  `to_date` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`contract_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_documents`
--

DROP TABLE IF EXISTS `xin_employee_documents`;
CREATE TABLE IF NOT EXISTS `xin_employee_documents` (
  `document_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `document_type_id` int(111) NOT NULL,
  `date_of_expiry` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `notification_email` varchar(255) NOT NULL,
  `is_alert` tinyint(1) NOT NULL,
  `description` mediumtext NOT NULL,
  `document_file` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_exit`
--

DROP TABLE IF EXISTS `xin_employee_exit`;
CREATE TABLE IF NOT EXISTS `xin_employee_exit` (
  `exit_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `exit_date` varchar(255) NOT NULL,
  `exit_type_id` int(111) NOT NULL,
  `exit_interview` int(111) NOT NULL,
  `is_inactivate_account` int(111) NOT NULL,
  `reason` mediumtext NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`exit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_exit_type`
--

DROP TABLE IF EXISTS `xin_employee_exit_type`;
CREATE TABLE IF NOT EXISTS `xin_employee_exit_type` (
  `exit_type_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`exit_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_employee_exit_type`
--

INSERT INTO `xin_employee_exit_type` (`exit_type_id`, `company_id`, `type`, `created_at`) VALUES
(1, 1, 'Test', '');

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_immigration`
--

DROP TABLE IF EXISTS `xin_employee_immigration`;
CREATE TABLE IF NOT EXISTS `xin_employee_immigration` (
  `immigration_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `document_type_id` int(111) NOT NULL,
  `document_number` varchar(255) NOT NULL,
  `document_file` varchar(255) NOT NULL,
  `issue_date` varchar(255) NOT NULL,
  `expiry_date` varchar(255) NOT NULL,
  `country_id` varchar(255) NOT NULL,
  `eligible_review_date` varchar(255) NOT NULL,
  `comments` mediumtext NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`immigration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_leave`
--

DROP TABLE IF EXISTS `xin_employee_leave`;
CREATE TABLE IF NOT EXISTS `xin_employee_leave` (
  `leave_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `contract_id` int(111) NOT NULL,
  `casual_leave` varchar(255) NOT NULL,
  `medical_leave` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`leave_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_location`
--

DROP TABLE IF EXISTS `xin_employee_location`;
CREATE TABLE IF NOT EXISTS `xin_employee_location` (
  `office_location_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `location_id` int(111) NOT NULL,
  `from_date` varchar(255) NOT NULL,
  `to_date` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`office_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_promotions`
--

DROP TABLE IF EXISTS `xin_employee_promotions`;
CREATE TABLE IF NOT EXISTS `xin_employee_promotions` (
  `promotion_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `title` varchar(255) NOT NULL,
  `promotion_date` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_qualification`
--

DROP TABLE IF EXISTS `xin_employee_qualification`;
CREATE TABLE IF NOT EXISTS `xin_employee_qualification` (
  `qualification_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `name` varchar(255) NOT NULL,
  `education_level_id` int(111) NOT NULL,
  `from_year` varchar(255) NOT NULL,
  `language_id` int(111) NOT NULL,
  `to_year` varchar(255) NOT NULL,
  `skill_id` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`qualification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_resignations`
--

DROP TABLE IF EXISTS `xin_employee_resignations`;
CREATE TABLE IF NOT EXISTS `xin_employee_resignations` (
  `resignation_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `notice_date` varchar(255) NOT NULL,
  `resignation_date` varchar(255) NOT NULL,
  `reason` mediumtext NOT NULL,
  `added_by` int(111) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`resignation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_security_level`
--

DROP TABLE IF EXISTS `xin_employee_security_level`;
CREATE TABLE IF NOT EXISTS `xin_employee_security_level` (
  `security_level_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `security_type` int(11) NOT NULL,
  `date_of_clearance` varchar(200) NOT NULL,
  `expiry_date` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`security_level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_shift`
--

DROP TABLE IF EXISTS `xin_employee_shift`;
CREATE TABLE IF NOT EXISTS `xin_employee_shift` (
  `emp_shift_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `shift_id` int(111) NOT NULL,
  `from_date` varchar(255) NOT NULL,
  `to_date` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`emp_shift_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_terminations`
--

DROP TABLE IF EXISTS `xin_employee_terminations`;
CREATE TABLE IF NOT EXISTS `xin_employee_terminations` (
  `termination_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `terminated_by` int(111) NOT NULL,
  `termination_type_id` int(111) NOT NULL,
  `termination_date` varchar(255) NOT NULL,
  `notice_date` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `status` tinyint(2) NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`termination_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_transfer`
--

DROP TABLE IF EXISTS `xin_employee_transfer`;
CREATE TABLE IF NOT EXISTS `xin_employee_transfer` (
  `transfer_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `transfer_date` varchar(255) NOT NULL,
  `transfer_department` int(111) NOT NULL,
  `transfer_location` int(111) NOT NULL,
  `description` mediumtext NOT NULL,
  `status` tinyint(2) NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`transfer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_travels`
--

DROP TABLE IF EXISTS `xin_employee_travels`;
CREATE TABLE IF NOT EXISTS `xin_employee_travels` (
  `travel_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `visit_purpose` varchar(255) NOT NULL,
  `visit_place` varchar(255) NOT NULL,
  `travel_mode` int(111) DEFAULT NULL,
  `arrangement_type` int(111) DEFAULT NULL,
  `expected_budget` varchar(255) NOT NULL,
  `actual_budget` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `status` tinyint(2) NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`travel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_warnings`
--

DROP TABLE IF EXISTS `xin_employee_warnings`;
CREATE TABLE IF NOT EXISTS `xin_employee_warnings` (
  `warning_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `warning_to` int(111) NOT NULL,
  `warning_by` int(111) NOT NULL,
  `warning_date` varchar(255) NOT NULL,
  `warning_type_id` int(111) NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `status` tinyint(2) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`warning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_employee_work_experience`
--

DROP TABLE IF EXISTS `xin_employee_work_experience`;
CREATE TABLE IF NOT EXISTS `xin_employee_work_experience` (
  `work_experience_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `from_date` varchar(255) NOT NULL,
  `to_date` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`work_experience_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_ethnicity_type`
--

DROP TABLE IF EXISTS `xin_ethnicity_type`;
CREATE TABLE IF NOT EXISTS `xin_ethnicity_type` (
  `ethnicity_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`ethnicity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xin_events`
--

DROP TABLE IF EXISTS `xin_events`;
CREATE TABLE IF NOT EXISTS `xin_events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `event_title` varchar(255) NOT NULL,
  `event_date` varchar(255) NOT NULL,
  `event_time` varchar(255) NOT NULL,
  `event_note` mediumtext NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_expenses`
--

DROP TABLE IF EXISTS `xin_expenses`;
CREATE TABLE IF NOT EXISTS `xin_expenses` (
  `expense_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(200) NOT NULL,
  `company_id` int(11) NOT NULL,
  `expense_type_id` int(200) NOT NULL,
  `billcopy_file` mediumtext NOT NULL,
  `amount` varchar(200) NOT NULL,
  `purchase_date` varchar(200) NOT NULL,
  `remarks` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `status_remarks` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`expense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_expense_type`
--

DROP TABLE IF EXISTS `xin_expense_type`;
CREATE TABLE IF NOT EXISTS `xin_expense_type` (
  `expense_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`expense_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_expense_type`
--

INSERT INTO `xin_expense_type` (`expense_type_id`, `company_id`, `name`, `status`, `created_at`) VALUES
(1, 1, 'Supplies', 1, '22-03-2018 01:17:42'),
(2, 1, 'Utility', 1, '22-03-2018 01:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `xin_file_manager`
--

DROP TABLE IF EXISTS `xin_file_manager`;
CREATE TABLE IF NOT EXISTS `xin_file_manager` (
  `file_id` int(111) NOT NULL AUTO_INCREMENT,
  `user_id` int(111) NOT NULL,
  `department_id` int(111) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_size` varchar(255) NOT NULL,
  `file_extension` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_file_manager_settings`
--

DROP TABLE IF EXISTS `xin_file_manager_settings`;
CREATE TABLE IF NOT EXISTS `xin_file_manager_settings` (
  `setting_id` int(111) NOT NULL AUTO_INCREMENT,
  `allowed_extensions` mediumtext NOT NULL,
  `maximum_file_size` varchar(255) NOT NULL,
  `is_enable_all_files` varchar(255) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_file_manager_settings`
--

INSERT INTO `xin_file_manager_settings` (`setting_id`, `allowed_extensions`, `maximum_file_size`, `is_enable_all_files`, `updated_at`) VALUES
(1, 'gif,png,pdf,txt,doc,docx', '10', '', '2019-09-30 03:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `xin_finance_bankcash`
--

DROP TABLE IF EXISTS `xin_finance_bankcash`;
CREATE TABLE IF NOT EXISTS `xin_finance_bankcash` (
  `bankcash_id` int(111) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) NOT NULL,
  `account_balance` varchar(255) NOT NULL,
  `account_opening_balance` varchar(200) NOT NULL,
  `account_number` varchar(255) NOT NULL,
  `branch_code` varchar(255) NOT NULL,
  `bank_branch` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`bankcash_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_finance_deposit`
--

DROP TABLE IF EXISTS `xin_finance_deposit`;
CREATE TABLE IF NOT EXISTS `xin_finance_deposit` (
  `deposit_id` int(111) NOT NULL AUTO_INCREMENT,
  `account_type_id` int(111) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `deposit_date` varchar(255) NOT NULL,
  `category_id` int(111) NOT NULL,
  `payer_id` int(111) NOT NULL,
  `payment_method` int(111) NOT NULL,
  `deposit_reference` varchar(255) NOT NULL,
  `deposit_file` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`deposit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_finance_expense`
--

DROP TABLE IF EXISTS `xin_finance_expense`;
CREATE TABLE IF NOT EXISTS `xin_finance_expense` (
  `expense_id` int(111) NOT NULL AUTO_INCREMENT,
  `account_type_id` int(111) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `expense_date` varchar(255) NOT NULL,
  `category_id` int(111) NOT NULL,
  `payee_id` int(111) NOT NULL,
  `payment_method` int(111) NOT NULL,
  `expense_reference` varchar(255) NOT NULL,
  `expense_file` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`expense_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_finance_payees`
--

DROP TABLE IF EXISTS `xin_finance_payees`;
CREATE TABLE IF NOT EXISTS `xin_finance_payees` (
  `payee_id` int(11) NOT NULL AUTO_INCREMENT,
  `payee_name` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`payee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_finance_payers`
--

DROP TABLE IF EXISTS `xin_finance_payers`;
CREATE TABLE IF NOT EXISTS `xin_finance_payers` (
  `payer_id` int(11) NOT NULL AUTO_INCREMENT,
  `payer_name` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`payer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_finance_transaction`
--

DROP TABLE IF EXISTS `xin_finance_transaction`;
CREATE TABLE IF NOT EXISTS `xin_finance_transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `transaction_date` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `amount` float NOT NULL,
  `transaction_type` varchar(100) NOT NULL,
  `dr_cr` enum('dr','cr') NOT NULL,
  `transaction_cat_id` int(11) NOT NULL,
  `payer_payee_id` int(11) NOT NULL,
  `payee_option` int(11) DEFAULT NULL,
  `payment_method_id` int(11) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `invoice_type` varchar(100) DEFAULT NULL,
  `attachment_file` varchar(100) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xin_finance_transactions`
--

DROP TABLE IF EXISTS `xin_finance_transactions`;
CREATE TABLE IF NOT EXISTS `xin_finance_transactions` (
  `transaction_id` int(111) NOT NULL AUTO_INCREMENT,
  `account_type_id` int(111) NOT NULL,
  `deposit_id` int(111) NOT NULL,
  `expense_id` int(111) NOT NULL,
  `transfer_id` int(111) NOT NULL,
  `transaction_type` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `transaction_debit` varchar(255) NOT NULL,
  `transaction_credit` varchar(255) NOT NULL,
  `transaction_date` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_finance_transfer`
--

DROP TABLE IF EXISTS `xin_finance_transfer`;
CREATE TABLE IF NOT EXISTS `xin_finance_transfer` (
  `transfer_id` int(111) NOT NULL AUTO_INCREMENT,
  `from_account_id` int(111) NOT NULL,
  `to_account_id` int(111) NOT NULL,
  `transfer_date` varchar(255) NOT NULL,
  `transfer_amount` varchar(255) NOT NULL,
  `payment_method` varchar(111) NOT NULL,
  `transfer_reference` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`transfer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_goal_tracking`
--

DROP TABLE IF EXISTS `xin_goal_tracking`;
CREATE TABLE IF NOT EXISTS `xin_goal_tracking` (
  `tracking_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `tracking_type_id` int(200) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `target_achiement` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `goal_progress` varchar(200) NOT NULL,
  `goal_status` int(11) NOT NULL DEFAULT 0,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`tracking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_goal_tracking_type`
--

DROP TABLE IF EXISTS `xin_goal_tracking_type`;
CREATE TABLE IF NOT EXISTS `xin_goal_tracking_type` (
  `tracking_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`tracking_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_goal_tracking_type`
--

INSERT INTO `xin_goal_tracking_type` (`tracking_type_id`, `company_id`, `type_name`, `created_at`) VALUES
(1, 1, 'Invoice Goal', '31-08-2018 01:29:44'),
(4, 1, 'Event Goal', '31-08-2018 01:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `xin_holidays`
--

DROP TABLE IF EXISTS `xin_holidays`;
CREATE TABLE IF NOT EXISTS `xin_holidays` (
  `holiday_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `event_name` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `is_publish` tinyint(1) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`holiday_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_hourly_templates`
--

DROP TABLE IF EXISTS `xin_hourly_templates`;
CREATE TABLE IF NOT EXISTS `xin_hourly_templates` (
  `hourly_rate_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `hourly_grade` varchar(255) NOT NULL,
  `hourly_rate` varchar(255) NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`hourly_rate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_hrsale_invoices`
--

DROP TABLE IF EXISTS `xin_hrsale_invoices`;
CREATE TABLE IF NOT EXISTS `xin_hrsale_invoices` (
  `invoice_id` int(111) NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(255) NOT NULL,
  `client_id` int(11) NOT NULL,
  `project_id` int(111) NOT NULL,
  `invoice_date` varchar(255) NOT NULL,
  `invoice_due_date` varchar(255) NOT NULL,
  `sub_total_amount` varchar(255) NOT NULL,
  `discount_type` varchar(11) NOT NULL,
  `discount_figure` varchar(255) NOT NULL,
  `total_tax` varchar(255) NOT NULL,
  `total_discount` varchar(255) NOT NULL,
  `grand_total` varchar(255) NOT NULL,
  `invoice_note` mediumtext NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT 'null',
  `company_name` varchar(200) NOT NULL DEFAULT 'null',
  `client_profile` varchar(200) NOT NULL DEFAULT 'null',
  `email` varchar(200) NOT NULL DEFAULT 'null',
  `contact_number` varchar(200) NOT NULL DEFAULT 'null',
  `website_url` varchar(200) NOT NULL DEFAULT 'null',
  `address_1` text NOT NULL,
  `address_2` text NOT NULL,
  `city` varchar(200) NOT NULL DEFAULT 'null',
  `state` varchar(200) NOT NULL DEFAULT 'null',
  `zipcode` varchar(200) NOT NULL DEFAULT 'null',
  `countryid` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_hrsale_invoices_items`
--

DROP TABLE IF EXISTS `xin_hrsale_invoices_items`;
CREATE TABLE IF NOT EXISTS `xin_hrsale_invoices_items` (
  `invoice_item_id` int(111) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(111) NOT NULL,
  `project_id` int(111) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_tax_type` varchar(255) NOT NULL,
  `item_tax_rate` varchar(255) NOT NULL,
  `item_qty` varchar(255) NOT NULL,
  `item_unit_price` varchar(255) NOT NULL,
  `item_sub_total` varchar(255) NOT NULL,
  `sub_total_amount` varchar(255) NOT NULL,
  `total_tax` varchar(255) NOT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_figure` varchar(255) NOT NULL,
  `total_discount` varchar(255) NOT NULL,
  `grand_total` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`invoice_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_hrsale_module_attributes`
--

DROP TABLE IF EXISTS `xin_hrsale_module_attributes`;
CREATE TABLE IF NOT EXISTS `xin_hrsale_module_attributes` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `attribute_label` varchar(255) NOT NULL,
  `attribute_type` varchar(255) NOT NULL,
  `validation` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xin_hrsale_module_attributes_select_value`
--

DROP TABLE IF EXISTS `xin_hrsale_module_attributes_select_value`;
CREATE TABLE IF NOT EXISTS `xin_hrsale_module_attributes_select_value` (
  `attributes_select_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `select_label` varchar(255) NOT NULL,
  PRIMARY KEY (`attributes_select_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xin_hrsale_module_attributes_values`
--

DROP TABLE IF EXISTS `xin_hrsale_module_attributes_values`;
CREATE TABLE IF NOT EXISTS `xin_hrsale_module_attributes_values` (
  `attributes_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `module_attributes_id` int(11) NOT NULL,
  `attribute_value` text NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`attributes_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xin_hrsale_quotes`
--

DROP TABLE IF EXISTS `xin_hrsale_quotes`;
CREATE TABLE IF NOT EXISTS `xin_hrsale_quotes` (
  `quote_id` int(111) NOT NULL AUTO_INCREMENT,
  `quote_number` varchar(255) NOT NULL,
  `project_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `quote_date` varchar(255) NOT NULL,
  `quote_due_date` varchar(255) NOT NULL,
  `client_id` int(11) NOT NULL,
  `sub_total_amount` varchar(255) NOT NULL,
  `discount_type` varchar(11) NOT NULL,
  `discount_figure` varchar(255) NOT NULL,
  `total_tax` varchar(255) NOT NULL,
  `tax_type` varchar(100) NOT NULL,
  `tax_figure` varchar(255) NOT NULL,
  `total_discount` varchar(255) NOT NULL,
  `quote_type` varchar(100) NOT NULL,
  `grand_total` varchar(255) NOT NULL,
  `quote_note` mediumtext NOT NULL,
  `name` varchar(200) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `client_profile` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact_number` varchar(200) NOT NULL,
  `website_url` varchar(200) NOT NULL,
  `address_1` text NOT NULL,
  `address_2` text NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `zipcode` varchar(200) NOT NULL,
  `countryid` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_hrsale_quotes_items`
--

DROP TABLE IF EXISTS `xin_hrsale_quotes_items`;
CREATE TABLE IF NOT EXISTS `xin_hrsale_quotes_items` (
  `quote_item_id` int(111) NOT NULL AUTO_INCREMENT,
  `quote_id` int(111) NOT NULL,
  `project_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_tax_type` varchar(255) NOT NULL,
  `item_tax_rate` varchar(255) NOT NULL,
  `item_qty` varchar(255) NOT NULL,
  `item_unit_price` varchar(255) NOT NULL,
  `item_sub_total` varchar(255) NOT NULL,
  `sub_total_amount` varchar(255) NOT NULL,
  `total_tax` varchar(255) NOT NULL,
  `tax_type` int(11) NOT NULL,
  `tax_figure` varchar(200) NOT NULL,
  `discount_type` int(11) NOT NULL,
  `discount_figure` varchar(255) NOT NULL,
  `total_discount` varchar(255) NOT NULL,
  `grand_total` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`quote_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_income_categories`
--

DROP TABLE IF EXISTS `xin_income_categories`;
CREATE TABLE IF NOT EXISTS `xin_income_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_income_categories`
--

INSERT INTO `xin_income_categories` (`category_id`, `name`, `status`, `created_at`) VALUES
(1, 'Envato', 1, '25-03-2018 09:36:20'),
(2, 'Salary', 1, '25-03-2018 09:36:28'),
(3, 'Other Income', 1, '25-03-2018 09:36:32'),
(4, 'Interest Income', 1, '25-03-2018 09:36:53'),
(5, 'Part Time Work', 1, '25-03-2018 09:37:13'),
(6, 'Regular Income', 1, '25-03-2018 09:37:17');

-- --------------------------------------------------------

--
-- Table structure for table `xin_jobs`
--

DROP TABLE IF EXISTS `xin_jobs`;
CREATE TABLE IF NOT EXISTS `xin_jobs` (
  `job_id` int(11) NOT NULL AUTO_INCREMENT,
  `employer_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `designation_id` int(111) NOT NULL,
  `job_url` varchar(255) NOT NULL,
  `job_type` int(225) NOT NULL,
  `category_url` varchar(255) NOT NULL,
  `is_featured` int(11) NOT NULL,
  `type_url` varchar(255) NOT NULL,
  `job_vacancy` int(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `minimum_experience` varchar(255) NOT NULL,
  `date_of_closing` varchar(200) NOT NULL,
  `short_description` mediumtext NOT NULL,
  `long_description` mediumtext NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_job_applications`
--

DROP TABLE IF EXISTS `xin_job_applications`;
CREATE TABLE IF NOT EXISTS `xin_job_applications` (
  `application_id` int(111) NOT NULL AUTO_INCREMENT,
  `job_id` int(111) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_id` int(111) NOT NULL,
  `message` mediumtext NOT NULL,
  `job_resume` mediumtext NOT NULL,
  `application_status` int(11) NOT NULL DEFAULT 0,
  `application_remarks` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_job_categories`
--

DROP TABLE IF EXISTS `xin_job_categories`;
CREATE TABLE IF NOT EXISTS `xin_job_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `category_url` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_job_categories`
--

INSERT INTO `xin_job_categories` (`category_id`, `category_name`, `category_url`, `created_at`) VALUES
(1, 'PHP', 'q7VJh5xWwr56ycN0mAou4266iOY8l1BbMd6H2D3rkFnjU9LgC', '2018-04-15'),
(2, 'Android', 'q7VJh5xWwr56ycN0m34Aou4266iOY8l1BbMd6H2D3rkFnjU9LgC', '2018-04-15'),
(3, 'WordPress', 'q2327VJh5xWwr56ycN0mAou4266iOY8l1BbMd6H2D3rkFnjU9LgC', '2018-04-15'),
(4, 'Design', '0oplfq7VJh5xWwr56ycN0mAou4266iOY8l1BbMd6H2D3rkFnjU9LgC', '2018-04-15'),
(5, 'Developer', '34e6zyr56ycN0mAou4266iOY8l1BbMd6H2D3rkFnjU9LgC', '2018-04-15'),
(6, 'iOS', 'l1BbMd6H2D3rkFnjU9LgCq7VJh5xWwr56ycN0mAou4266iOY8', '2018-04-15'),
(7, 'Mobile', 'l1BbMd6H2D3rkFnjU9LgCH2D3rkFnjU9BbMd6H2D3r', '2018-04-15'),
(8, 'MySQL', '2D3rkFnjU9LgCq7VJh5xWwl1BbMd6H2D3rkFnjU9LgCq7VJh5xWwr56ycN0mAou4266iOY8', '2018-04-15'),
(9, 'JavaScript', 'gCq7VJh5xWwl1BbMd6H2D3rkFnjU9LgCq7VJh5xWwl1BbMd6H2D3rkFnjU9LgCq7VJh5xWwr56ycN0mAou4266iOY8', '2018-04-15'),
(10, 'Software', 'zyr56ycN0mAou42634e6zyr56ycN0mAou4266iOY8l1BbMd6H2D3rkFnjU9LgC', '2018-04-15'),
(11, 'Website Design', '6iOY8l1BbMd6H2D3rkFnjU9LgCzyr56ycN0mAou42634e6zyr56ycN0mAou426', '2018-04-15'),
(12, 'Programming', 'jU9LgCzyr56ycN0mAou4266iOY8l1BbMd6H2D3rkFn34e6zyr56ycN0mAou426', '2018-04-15'),
(13, 'SEO', 'cN0mAou4266iOY8l1Bq2327VJh5xWwr56ybMd6H2D3rkFnjU9LgC', '2018-04-15'),
(14, 'Java', 'VJh5xWwr56ybMd6H2DcN0mAou4266iOY8l1Bq23273rkFnjU9LgC', '2018-04-15'),
(15, 'CSS', 'VJh5xWwr56ybMd6H2Dsdfkkj58234ksklEr6ybMd6H2D', '2018-04-15'),
(16, 'HTML5', '0349324k0434r23ksodfkpsodkfposakfkpww3MsH2Dei30ks', '2018-04-15'),
(17, 'Web Development', 'sdfj0rkskfskdfj329FLE34LFMsH2Dei30ks0349324k0434', '2018-04-15'),
(18, 'Web Design', 'MsH2Deiee30ks0349324k0434klEr6ybMd6234b5ksddif0k33', '2018-04-15'),
(19, 'eCommerce', 'klEr6ybMd6234bMsH2Dei30ks0349324k04345ksddif0k33', '2018-04-15'),
(20, 'Design', '234bMsklEr6ybMd6H2Dssdk5yy98ooVJh5xWwr56y435gghhole93lfkkj58', '2018-04-15'),
(21, 'Logo Design', 'k5yy98ooVJh5xWw45456y435gghhole93lfkkj58234bMsklEr6ybMd6H2D', '2018-04-15'),
(22, 'Graphic Design', 'k5yy98ooVJh5xWwr56y435gghhole93lfkkj58234bMsklEr6ybMd6H2D', '2018-04-15'),
(23, 'Video', 'k98ooVJh5xWwr56y435gghhole93lfkkj58234bMsklEr6ybMd6H2D', '2018-04-15'),
(24, 'Animation', 'ole93lfkkj58234k98ooVJh5xWwr56ybMsklEr6ybMd6H2D', '2018-04-15'),
(25, 'Adobe Photoshop', 'd6H2Dsdfkkj58234k98ooVJh5xWwr56ybMsklEr6ybMd6H2D', '2018-04-15'),
(26, 'Illustration', 'xWwr56ybMd6H2DcN0mA3405kfVJh5ou4266iOY8l1Bq23273rkFnjU9LgC', '2018-04-15'),
(27, 'Art', '3405kfVJh5ou4266iOY8l1Bq23273rk3ok3xWwr56ybMd6H2DcN0mAFnjU9LgC', '2018-04-15'),
(28, '3D', 'Md6H2DcN0mAFnjU9LfVJh5ou4266iOY8l1Bq23273rk3ok3xWwr56ybgC', '2018-04-15'),
(29, 'Adobe Illustrator', '5ou4266iOY8l1Bq23273rkMd6H2DcN0mAFnjU9LfVJh3ok3xWwr56ybgCww', '2018-04-15'),
(30, 'Drawing', '6iOY8l1Bq23273rk0234KILR23492034ksfpd456yslfdsf5ou426', '2018-04-15'),
(31, 'Web Design', '3l34l432fo232l3223DhssdfRKLl5434lsdfl3l3sfs3lllblp23D', '2018-04-15'),
(32, 'Cartoon', 'sdfowerewl567lflsdfl3l3sf3l34l432fo232l3223Dhs3lllblp23D', '2018-04-15'),
(33, 'Graphics', '3232l32hsfo23lllblp23D9LfVJkfo394s5ou42at5sd20cNsolof3llsblp23DcN', '2018-04-15'),
(34, 'Fashion Design', '9LfVJkfo394s5ou42at5sd203232l32hsfo23lllblp23DcNsolof3llsblp23DcN', '2018-04-15'),
(35, 'WordPress', 'hsfo23lllblp23DcNsolof3llsblp23DcN9LfVJkfo394s5ou42', '2018-04-15'),
(36, 'Editing', 'lof3llsblp23DcN9LfVJhsfo23lllblp23DcNsokfo394s5ou42', '2018-04-15'),
(37, 'Writing', 'blp23DcNsokfo394slof3llsblp23DcN9LfVJh5ou42', '2018-04-15'),
(38, 'T-Shirt Design', '9LfVJh5ou42blp23DcNsdf329LfVJh5ou42bsokjfwpoek0mAFnjU', '2018-04-15'),
(39, 'Display Advertising', '9LfVJh5ou42bsokjfwpoek9LfVJh5ou42blp23DcN0mAFnjU', '2018-04-15'),
(40, 'Email Marketing', 'DcN0mAFnjU9LfVJh5ou42bs66iOY8l1Bq23273rk3ok3xWwr56yMd6H2gC', '2018-04-15'),
(41, 'Lead Generation', '66iOY8l1Bq23273rk3ok3xWwr56yMd6H2DcN0mAFnjU9LfVJh5ou42bgC', '2018-04-15'),
(42, 'Market & Customer Research', 'Aou42Eou42iOY800Ke3klAou42066iOY800fklAou42', '2018-04-15'),
(43, 'Marketing Strategy', 'EKe3000fklAou4266iOY8l1kkadwlsdfk20323rlsKh4KadlLL', '2018-04-15'),
(44, 'Public Relations', 'l1kkadwlsdfk20323rlsKh4KadlLLEKe3000fklAou4266iOY8', '2018-04-15'),
(45, 'Telemarketing & Telesales', 'fklAou4266iOY8l1kkadwlsfBf329k3249owe923ksd324odLL2DcN0m', '2018-04-15'),
(46, 'Other - Sales & Marketing', 'Bf329k3249owe923ksd324odfklAou4266iOY8l1kkadwlLL2DcN0m', '2018-04-15'),
(47, 'SEM - Search Engine Marketing', 'Aou4266iOY8l1Bf329k3249owe923ksdkkadwlLL2DcN0m', '2018-04-15'),
(48, 'SEO - Search Engine Optimization', 'rk0234KILR23492034ksfpd456y6iOY8l1Bq23273slfdsf5ou426', '2018-04-15'),
(49, 'SMM - Social Media Marketing', '2DcN0mAou4266iOY8l1BVJh5xWwr56ybMd6Hq23273rkFnjU9LgC', '2018-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `xin_job_interviews`
--

DROP TABLE IF EXISTS `xin_job_interviews`;
CREATE TABLE IF NOT EXISTS `xin_job_interviews` (
  `job_interview_id` int(111) NOT NULL AUTO_INCREMENT,
  `job_id` int(111) NOT NULL,
  `interviewers_id` varchar(255) NOT NULL,
  `interview_place` varchar(255) NOT NULL,
  `interview_date` varchar(255) NOT NULL,
  `interview_time` varchar(255) NOT NULL,
  `interviewees_id` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`job_interview_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_job_pages`
--

DROP TABLE IF EXISTS `xin_job_pages`;
CREATE TABLE IF NOT EXISTS `xin_job_pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `page_details` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_job_pages`
--

INSERT INTO `xin_job_pages` (`page_id`, `page_title`, `page_url`, `page_details`, `created_at`) VALUES
(1, 'About Us', 'xl9wkRy7tqOehBo6YCDjFG2JTucpKI4gMNsn8Zdf', 'About Ussss', '2018-04-15'),
(2, 'Communications', '5uk4EUc3V9FYTbBQz7PWgKM6qCajfAipvhOJnZHl', 'Communications', '2018-04-15'),
(3, 'Lending Licenses', '5r6OCsUoHQFiRwI17W0eT38jbvpxEGuLhzgmt9lZ', 'Lending Licenses', '2018-04-15'),
(4, 'Terms of Service', 'QrfbMOUWpdYNxjLFz8G1m6t3wi0X2RKEZVC9ySka', 'Terms of Service', '2018-04-15'),
(5, 'Privacy Policy', 'rjHKhmsNezT2OJBAoQq0yU1tL5F34MCwgIiZEc7x', 'Privacy Policy', '2018-04-15'),
(6, 'Support', 'gZbBVMxnfzYLlC2AOk609Q7yWpaSjmJHuRXosr58', 'Support', '2018-04-15'),
(7, 'How It Works', 'l1BbMd6H2D3rkFnjU9LgCH2D3rkFnjU9BbMd6H2D3r', 'How It Works', '2018-04-15'),
(8, 'Disclaimers', 'CTbzS9IrWkNU7VM3HGZYjp6iwmfyXDOQgtsP8FEc', 'Disclaimers', '2018-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `xin_job_type`
--

DROP TABLE IF EXISTS `xin_job_type`;
CREATE TABLE IF NOT EXISTS `xin_job_type` (
  `job_type_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `type_url` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`job_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_job_type`
--

INSERT INTO `xin_job_type` (`job_type_id`, `company_id`, `type`, `type_url`, `created_at`) VALUES
(1, 1, 'Full Time', 'full-time', '22-03-2018 02:18:48'),
(2, 1, 'Part Time', 'part-time', '16-04-2018 06:29:45'),
(3, 1, 'Internship', 'internship', '16-04-2018 06:30:06'),
(4, 1, 'Freelance', 'freelance', '16-04-2018 06:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `xin_kpi_incidental`
--

DROP TABLE IF EXISTS `xin_kpi_incidental`;
CREATE TABLE IF NOT EXISTS `xin_kpi_incidental` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `incidental_kpi` text NOT NULL,
  `targeted_date` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `quarter` int(11) NOT NULL,
  `result` varchar(200) NOT NULL,
  `feedback` text NOT NULL,
  `year_created` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `updated_at` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xin_kpi_maingoals`
--

DROP TABLE IF EXISTS `xin_kpi_maingoals`;
CREATE TABLE IF NOT EXISTS `xin_kpi_maingoals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `main_kpi` varchar(255) NOT NULL,
  `year_created` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `approve_status` varchar(100) NOT NULL,
  `q1` varchar(100) NOT NULL,
  `q2` varchar(100) NOT NULL,
  `q3` varchar(100) NOT NULL,
  `q4` varchar(100) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `updated_at` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xin_kpi_variable`
--

DROP TABLE IF EXISTS `xin_kpi_variable`;
CREATE TABLE IF NOT EXISTS `xin_kpi_variable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `variable_kpi` varchar(200) NOT NULL,
  `targeted_date` varchar(200) NOT NULL,
  `result` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `approve_status` varchar(200) NOT NULL,
  `feedback` text NOT NULL,
  `quarter` varchar(200) NOT NULL,
  `year_created` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `updated_at` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xin_languages`
--

DROP TABLE IF EXISTS `xin_languages`;
CREATE TABLE IF NOT EXISTS `xin_languages` (
  `language_id` int(111) NOT NULL AUTO_INCREMENT,
  `language_name` varchar(255) NOT NULL,
  `language_code` varchar(255) NOT NULL,
  `language_flag` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_languages`
--

INSERT INTO `xin_languages` (`language_id`, `language_name`, `language_code`, `language_flag`, `is_active`, `created_at`) VALUES
(1, 'English', 'english', 'language_flag_1520564355.gif', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `xin_leads`
--

DROP TABLE IF EXISTS `xin_leads`;
CREATE TABLE IF NOT EXISTS `xin_leads` (
  `client_id` int(111) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `client_username` varchar(255) NOT NULL,
  `client_password` varchar(255) NOT NULL,
  `client_profile` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `is_changed` int(11) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `website_url` varchar(255) NOT NULL,
  `address_1` mediumtext NOT NULL,
  `address_2` mediumtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `country` int(111) NOT NULL,
  `is_active` int(11) NOT NULL,
  `last_logout_date` varchar(255) NOT NULL,
  `last_login_date` varchar(255) NOT NULL,
  `last_login_ip` varchar(255) NOT NULL,
  `is_logged_in` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_leads_followup`
--

DROP TABLE IF EXISTS `xin_leads_followup`;
CREATE TABLE IF NOT EXISTS `xin_leads_followup` (
  `leads_followup_id` int(11) NOT NULL AUTO_INCREMENT,
  `lead_id` int(11) NOT NULL,
  `next_followup` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`leads_followup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xin_leave_applications`
--

DROP TABLE IF EXISTS `xin_leave_applications`;
CREATE TABLE IF NOT EXISTS `xin_leave_applications` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(222) NOT NULL,
  `department_id` int(11) NOT NULL,
  `leave_type_id` int(222) NOT NULL,
  `from_date` varchar(200) NOT NULL,
  `to_date` varchar(200) NOT NULL,
  `applied_on` varchar(200) NOT NULL,
  `reason` mediumtext NOT NULL,
  `remarks` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `is_half_day` tinyint(1) DEFAULT NULL,
  `is_notify` int(11) NOT NULL,
  `leave_attachment` varchar(255) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`leave_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_leave_applications`
--

INSERT INTO `xin_leave_applications` (`leave_id`, `company_id`, `employee_id`, `department_id`, `leave_type_id`, `from_date`, `to_date`, `applied_on`, `reason`, `remarks`, `status`, `is_half_day`, `is_notify`, `leave_attachment`, `created_at`) VALUES
(1, 1, 9, 0, 3, '2021-05-25', '2021-05-25', '2021-05-25 09:54:42', 'attending my cousin wedding', 'الف مبارك&amp;nbsp;', 2, 1, 0, '', '2021-05-25 09:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `xin_leave_type`
--

DROP TABLE IF EXISTS `xin_leave_type`;
CREATE TABLE IF NOT EXISTS `xin_leave_type` (
  `leave_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `type_name` varchar(200) NOT NULL,
  `days_per_year` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`leave_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_leave_type`
--

INSERT INTO `xin_leave_type` (`leave_type_id`, `company_id`, `type_name`, `days_per_year`, `status`, `created_at`) VALUES
(1, 1, 'Casual Leave', '3', 1, '19-03-2018 07:52:20'),
(2, 1, 'Medical', '2', 1, '19-03-2018 07:52:30'),
(3, 0, 'Personal ', '10', 1, '25-05-2021 09:52:35'),
(4, 0, 'Work Meeting', '1000', 1, '25-05-2021 09:52:55');

-- --------------------------------------------------------

--
-- Table structure for table `xin_make_payment`
--

DROP TABLE IF EXISTS `xin_make_payment`;
CREATE TABLE IF NOT EXISTS `xin_make_payment` (
  `make_payment_id` int(111) NOT NULL AUTO_INCREMENT,
  `employee_id` int(111) NOT NULL,
  `department_id` int(111) NOT NULL,
  `company_id` int(111) NOT NULL,
  `location_id` int(111) NOT NULL,
  `designation_id` int(111) NOT NULL,
  `payment_date` varchar(200) NOT NULL,
  `basic_salary` varchar(255) NOT NULL,
  `payment_amount` varchar(255) NOT NULL,
  `gross_salary` varchar(255) NOT NULL,
  `total_allowances` varchar(255) NOT NULL,
  `total_deductions` varchar(255) NOT NULL,
  `net_salary` varchar(255) NOT NULL,
  `house_rent_allowance` varchar(255) NOT NULL,
  `medical_allowance` varchar(255) NOT NULL,
  `travelling_allowance` varchar(255) NOT NULL,
  `dearness_allowance` varchar(255) NOT NULL,
  `provident_fund` varchar(255) NOT NULL,
  `tax_deduction` varchar(255) NOT NULL,
  `security_deposit` varchar(255) NOT NULL,
  `overtime_rate` varchar(255) NOT NULL,
  `is_advance_salary_deduct` int(11) NOT NULL,
  `advance_salary_amount` varchar(255) NOT NULL,
  `is_payment` tinyint(1) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `hourly_rate` varchar(255) NOT NULL,
  `total_hours_work` varchar(255) NOT NULL,
  `comments` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`make_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_meetings`
--

DROP TABLE IF EXISTS `xin_meetings`;
CREATE TABLE IF NOT EXISTS `xin_meetings` (
  `meeting_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `meeting_title` varchar(255) NOT NULL,
  `meeting_date` varchar(255) NOT NULL,
  `meeting_time` varchar(255) NOT NULL,
  `meeting_room` varchar(255) NOT NULL,
  `meeting_note` mediumtext NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`meeting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_office_location`
--

DROP TABLE IF EXISTS `xin_office_location`;
CREATE TABLE IF NOT EXISTS `xin_office_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(111) NOT NULL,
  `location_head` int(111) NOT NULL,
  `location_manager` int(111) NOT NULL,
  `location_name` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `address_1` mediumtext NOT NULL,
  `address_2` mediumtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `country` int(111) NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_office_location`
--

INSERT INTO `xin_office_location` (`location_id`, `company_id`, `location_head`, `location_manager`, `location_name`, `email`, `phone`, `fax`, `address_1`, `address_2`, `city`, `state`, `zipcode`, `country`, `added_by`, `created_at`, `status`) VALUES
(1, 1, 5, 0, 'Palestine  Branch', 'sales@bilsan.co', '022906353', '1234567890', 'Ramallah | Betunia', 'Bilsan Building', 'Palestine', 'Jordan', '1984', 190, 1, '28-02-2018', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xin_office_shift`
--

DROP TABLE IF EXISTS `xin_office_shift`;
CREATE TABLE IF NOT EXISTS `xin_office_shift` (
  `office_shift_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `shift_name` varchar(255) NOT NULL,
  `default_shift` int(111) NOT NULL,
  `monday_in_time` varchar(222) NOT NULL,
  `monday_out_time` varchar(222) NOT NULL,
  `tuesday_in_time` varchar(222) NOT NULL,
  `tuesday_out_time` varchar(222) NOT NULL,
  `wednesday_in_time` varchar(222) NOT NULL,
  `wednesday_out_time` varchar(222) NOT NULL,
  `thursday_in_time` varchar(222) NOT NULL,
  `thursday_out_time` varchar(222) NOT NULL,
  `friday_in_time` varchar(222) NOT NULL,
  `friday_out_time` varchar(222) NOT NULL,
  `saturday_in_time` varchar(222) NOT NULL,
  `saturday_out_time` varchar(222) NOT NULL,
  `sunday_in_time` varchar(222) NOT NULL,
  `sunday_out_time` varchar(222) NOT NULL,
  `created_at` varchar(222) NOT NULL,
  PRIMARY KEY (`office_shift_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_office_shift`
--

INSERT INTO `xin_office_shift` (`office_shift_id`, `company_id`, `shift_name`, `default_shift`, `monday_in_time`, `monday_out_time`, `tuesday_in_time`, `tuesday_out_time`, `wednesday_in_time`, `wednesday_out_time`, `thursday_in_time`, `thursday_out_time`, `friday_in_time`, `friday_out_time`, `saturday_in_time`, `saturday_out_time`, `sunday_in_time`, `sunday_out_time`, `created_at`) VALUES
(1, 1, 'Morning Shift', 1, '08:00', '18:00', '03:00', '18:00', '08:00', '18:00', '08:00', '18:00', '08:00', '18:00', '', '', '', '', '2018-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `xin_payment_method`
--

DROP TABLE IF EXISTS `xin_payment_method`;
CREATE TABLE IF NOT EXISTS `xin_payment_method` (
  `payment_method_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `method_name` varchar(255) NOT NULL,
  `payment_percentage` varchar(200) DEFAULT NULL,
  `account_number` varchar(200) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`payment_method_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_payment_method`
--

INSERT INTO `xin_payment_method` (`payment_method_id`, `company_id`, `method_name`, `payment_percentage`, `account_number`, `created_at`) VALUES
(1, 1, 'Cash', '30', '', '23-04-2018 05:13:52'),
(2, 1, 'Paypal', '40', '1', '12-08-2018 02:18:50'),
(3, 1, 'Bank', '30', '1231232', '12-08-2018 02:18:57');

-- --------------------------------------------------------

--
-- Table structure for table `xin_payroll_custom_fields`
--

DROP TABLE IF EXISTS `xin_payroll_custom_fields`;
CREATE TABLE IF NOT EXISTS `xin_payroll_custom_fields` (
  `payroll_custom_id` int(11) NOT NULL AUTO_INCREMENT,
  `allow_custom_1` varchar(255) NOT NULL,
  `is_active_allow_1` int(11) NOT NULL,
  `allow_custom_2` varchar(255) NOT NULL,
  `is_active_allow_2` int(11) NOT NULL,
  `allow_custom_3` varchar(255) NOT NULL,
  `is_active_allow_3` int(11) NOT NULL,
  `allow_custom_4` varchar(255) NOT NULL,
  `is_active_allow_4` int(11) NOT NULL,
  `allow_custom_5` varchar(255) NOT NULL,
  `is_active_allow_5` int(111) NOT NULL,
  `deduct_custom_1` varchar(255) NOT NULL,
  `is_active_deduct_1` int(11) NOT NULL,
  `deduct_custom_2` varchar(255) NOT NULL,
  `is_active_deduct_2` int(11) NOT NULL,
  `deduct_custom_3` varchar(255) NOT NULL,
  `is_active_deduct_3` int(11) NOT NULL,
  `deduct_custom_4` varchar(255) NOT NULL,
  `is_active_deduct_4` int(11) NOT NULL,
  `deduct_custom_5` varchar(255) NOT NULL,
  `is_active_deduct_5` int(11) NOT NULL,
  PRIMARY KEY (`payroll_custom_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_performance_appraisal`
--

DROP TABLE IF EXISTS `xin_performance_appraisal`;
CREATE TABLE IF NOT EXISTS `xin_performance_appraisal` (
  `performance_appraisal_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `appraisal_year_month` varchar(255) NOT NULL,
  `customer_experience` int(111) NOT NULL,
  `marketing` int(111) NOT NULL,
  `management` int(111) NOT NULL,
  `administration` int(111) NOT NULL,
  `presentation_skill` int(111) NOT NULL,
  `quality_of_work` int(111) NOT NULL,
  `efficiency` int(111) NOT NULL,
  `integrity` int(111) NOT NULL,
  `professionalism` int(111) NOT NULL,
  `team_work` int(111) NOT NULL,
  `critical_thinking` int(111) NOT NULL,
  `conflict_management` int(111) NOT NULL,
  `attendance` int(111) NOT NULL,
  `ability_to_meet_deadline` int(111) NOT NULL,
  `remarks` mediumtext NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`performance_appraisal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_performance_appraisal_options`
--

DROP TABLE IF EXISTS `xin_performance_appraisal_options`;
CREATE TABLE IF NOT EXISTS `xin_performance_appraisal_options` (
  `performance_appraisal_options_id` int(11) NOT NULL AUTO_INCREMENT,
  `appraisal_id` int(11) NOT NULL,
  `appraisal_type` varchar(200) NOT NULL,
  `appraisal_option_id` int(11) NOT NULL,
  `appraisal_option_value` int(11) NOT NULL,
  PRIMARY KEY (`performance_appraisal_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xin_performance_indicator`
--

DROP TABLE IF EXISTS `xin_performance_indicator`;
CREATE TABLE IF NOT EXISTS `xin_performance_indicator` (
  `performance_indicator_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `designation_id` int(111) NOT NULL,
  `customer_experience` int(111) NOT NULL,
  `marketing` int(111) NOT NULL,
  `management` int(111) NOT NULL,
  `administration` int(111) NOT NULL,
  `presentation_skill` int(111) NOT NULL,
  `quality_of_work` int(111) NOT NULL,
  `efficiency` int(111) NOT NULL,
  `integrity` int(111) NOT NULL,
  `professionalism` int(111) NOT NULL,
  `team_work` int(111) NOT NULL,
  `critical_thinking` int(111) NOT NULL,
  `conflict_management` int(111) NOT NULL,
  `attendance` int(111) NOT NULL,
  `ability_to_meet_deadline` int(111) NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`performance_indicator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_performance_indicator_options`
--

DROP TABLE IF EXISTS `xin_performance_indicator_options`;
CREATE TABLE IF NOT EXISTS `xin_performance_indicator_options` (
  `performance_indicator_options_id` int(11) NOT NULL AUTO_INCREMENT,
  `indicator_id` int(11) NOT NULL,
  `indicator_type` varchar(200) NOT NULL,
  `indicator_option_id` int(11) NOT NULL,
  `indicator_option_value` int(11) NOT NULL,
  PRIMARY KEY (`performance_indicator_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xin_projects`
--

DROP TABLE IF EXISTS `xin_projects`;
CREATE TABLE IF NOT EXISTS `xin_projects` (
  `project_id` int(111) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `client_id` int(100) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `company_id` varchar(255) DEFAULT NULL,
  `assigned_to` mediumtext NOT NULL,
  `priority` varchar(255) NOT NULL,
  `project_no` varchar(255) DEFAULT NULL,
  `phase_no` varchar(200) DEFAULT NULL,
  `purchase_no` varchar(200) DEFAULT NULL,
  `budget_hours` varchar(255) DEFAULT NULL,
  `summary` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `added_by` int(111) NOT NULL,
  `project_progress` varchar(255) NOT NULL,
  `project_note` longtext NOT NULL,
  `status` tinyint(2) NOT NULL,
  `is_notify` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_projects`
--

INSERT INTO `xin_projects` (`project_id`, `title`, `client_id`, `start_date`, `end_date`, `company_id`, `assigned_to`, `priority`, `project_no`, `phase_no`, `purchase_no`, `budget_hours`, `summary`, `description`, `added_by`, `project_progress`, `project_note`, `status`, `is_notify`, `created_at`) VALUES
(2, 'Dr Hamza | Social Media', 3, '2021-05-22', '2021-06-01', '1', '7,8,9', '1', 'S23P30A', '', '', '50', '-', 'social media', 6, '0', '', 0, 0, '25-05-2021'),
(3, 'Ammar Al-Akker | Social Media & Content Production', 5, '2021-05-22', '2021-06-01', '1', '7,8,9', '1', 'S23P30A', '', '', '50', '-', '-', 6, '0', '', 0, 0, '25-05-2021'),
(8, 'Law Solution | Palestine Bar', 7, '2021-05-24', '2022-05-24', '1', '7', '1', '4204EBV', '', '', '50', '-', '-', 6, '0', '', 0, 0, '25-05-2021'),
(9, 'Yahia - Healthcare Profile Management System', 6, '2021-05-22', '2022-05-22', '1', '11,12,13,15', '1', '4204EBV', '', '', '50', '-', '', 6, '0', '', 0, 0, '25-05-2021'),
(10, 'Bilsan Media Production | Content Production', 6, '2021-05-17', '2021-06-01', '1', '7,8,9,10', '1', '4204EBV', '', '', '50', '-', '', 6, '0', '', 0, 0, '25-05-2021');

-- --------------------------------------------------------

--
-- Table structure for table `xin_projects_attachment`
--

DROP TABLE IF EXISTS `xin_projects_attachment`;
CREATE TABLE IF NOT EXISTS `xin_projects_attachment` (
  `project_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(200) NOT NULL,
  `upload_by` int(255) NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `file_description` mediumtext NOT NULL,
  `attachment_file` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`project_attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_projects_bugs`
--

DROP TABLE IF EXISTS `xin_projects_bugs`;
CREATE TABLE IF NOT EXISTS `xin_projects_bugs` (
  `bug_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(111) NOT NULL,
  `user_id` int(200) NOT NULL,
  `attachment_file` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_projects_discussion`
--

DROP TABLE IF EXISTS `xin_projects_discussion`;
CREATE TABLE IF NOT EXISTS `xin_projects_discussion` (
  `discussion_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(111) NOT NULL,
  `user_id` int(200) NOT NULL,
  `client_id` int(11) NOT NULL,
  `attachment_file` varchar(255) NOT NULL,
  `message` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`discussion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_projects_timelogs`
--

DROP TABLE IF EXISTS `xin_projects_timelogs`;
CREATE TABLE IF NOT EXISTS `xin_projects_timelogs` (
  `timelogs_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `total_hours` varchar(255) NOT NULL,
  `timelogs_memo` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`timelogs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xin_project_variations`
--

DROP TABLE IF EXISTS `xin_project_variations`;
CREATE TABLE IF NOT EXISTS `xin_project_variations` (
  `variation_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `project_id` int(111) NOT NULL,
  `created_by` int(111) NOT NULL,
  `variation_name` varchar(255) NOT NULL,
  `variation_no` varchar(255) NOT NULL,
  `assigned_to` varchar(255) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `variation_hours` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `variation_status` int(5) NOT NULL,
  `client_approval` int(11) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`variation_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_qualification_education_level`
--

DROP TABLE IF EXISTS `xin_qualification_education_level`;
CREATE TABLE IF NOT EXISTS `xin_qualification_education_level` (
  `education_level_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`education_level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_qualification_education_level`
--

INSERT INTO `xin_qualification_education_level` (`education_level_id`, `company_id`, `name`, `created_at`) VALUES
(1, 1, 'High School Diploma / GED', '09-05-2018 03:11:59');

-- --------------------------------------------------------

--
-- Table structure for table `xin_qualification_language`
--

DROP TABLE IF EXISTS `xin_qualification_language`;
CREATE TABLE IF NOT EXISTS `xin_qualification_language` (
  `language_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_qualification_language`
--

INSERT INTO `xin_qualification_language` (`language_id`, `company_id`, `name`, `created_at`) VALUES
(1, 1, 'English', '09-05-2018 03:12:03');

-- --------------------------------------------------------

--
-- Table structure for table `xin_qualification_skill`
--

DROP TABLE IF EXISTS `xin_qualification_skill`;
CREATE TABLE IF NOT EXISTS `xin_qualification_skill` (
  `skill_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_qualification_skill`
--

INSERT INTO `xin_qualification_skill` (`skill_id`, `company_id`, `name`, `created_at`) VALUES
(1, 1, 'jQuery', '09-05-2018 03:12:08');

-- --------------------------------------------------------

--
-- Table structure for table `xin_quoted_projects`
--

DROP TABLE IF EXISTS `xin_quoted_projects`;
CREATE TABLE IF NOT EXISTS `xin_quoted_projects` (
  `project_id` int(111) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `client_id` int(100) NOT NULL,
  `estimate_date` varchar(255) NOT NULL,
  `company_id` varchar(255) DEFAULT NULL,
  `assigned_to` mediumtext NOT NULL,
  `priority` varchar(255) NOT NULL,
  `project_no` varchar(255) DEFAULT NULL,
  `phase_no` varchar(200) DEFAULT NULL,
  `estimate_hrs` varchar(255) DEFAULT NULL,
  `summary` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `added_by` int(111) NOT NULL,
  `project_progress` varchar(255) NOT NULL,
  `project_note` longtext NOT NULL,
  `status` tinyint(2) NOT NULL,
  `is_notify` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_quoted_projects_attachment`
--

DROP TABLE IF EXISTS `xin_quoted_projects_attachment`;
CREATE TABLE IF NOT EXISTS `xin_quoted_projects_attachment` (
  `project_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(200) NOT NULL,
  `upload_by` int(255) NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `file_description` mediumtext NOT NULL,
  `attachment_file` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`project_attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_quoted_projects_discussion`
--

DROP TABLE IF EXISTS `xin_quoted_projects_discussion`;
CREATE TABLE IF NOT EXISTS `xin_quoted_projects_discussion` (
  `discussion_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(111) NOT NULL,
  `user_id` int(200) NOT NULL,
  `client_id` int(11) NOT NULL,
  `attachment_file` varchar(255) NOT NULL,
  `message` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`discussion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_quoted_projects_timelogs`
--

DROP TABLE IF EXISTS `xin_quoted_projects_timelogs`;
CREATE TABLE IF NOT EXISTS `xin_quoted_projects_timelogs` (
  `timelogs_id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `end_time` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `total_hours` varchar(255) NOT NULL,
  `timelogs_memo` text NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`timelogs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xin_recruitment_pages`
--

DROP TABLE IF EXISTS `xin_recruitment_pages`;
CREATE TABLE IF NOT EXISTS `xin_recruitment_pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) NOT NULL,
  `page_details` mediumtext NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_recruitment_pages`
--

INSERT INTO `xin_recruitment_pages` (`page_id`, `page_title`, `page_details`, `status`, `created_at`) VALUES
(1, 'Pages', 'Nulla dignissim gravida\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultricies dictum ex, nec ullamcorper orci luctus eget. Integer mauris arcu, pretium eget elit vel, posuere consectetur massa. Etiam non fermentum augue, vel posuere sapien. \n\nVivamus aliquet eros bibendum ipsum euismod, non interdum dui elementum. Morbi facilisis hendrerit nisi, a volutpat velit. Donec sed malesuada felis. Nulla facilisi. Vivamus a velit vel orci euismod maximus. Praesent ut blandit orci, eget suscipit lorem. Aenean dignissim, augue at porta suscipit, est enim euismod mi, a rhoncus mi lacus ac nibh. Ut pharetra ligula sed tortor congue, pellentesque ultricies augue tincidunt.', 1, ''),
(2, 'About Us', 'Nulla dignissim gravida\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultricies dictum ex, nec ullamcorper orci luctus eget. Integer mauris arcu, pretium eget elit vel, posuere consectetur massa. Etiam non fermentum augue, vel posuere sapien. \n\nVivamus aliquet eros bibendum ipsum euismod, non interdum dui elementum. Morbi facilisis hendrerit nisi, a volutpat velit. Donec sed malesuada felis. Nulla facilisi. Vivamus a velit vel orci euismod maximus. Praesent ut blandit orci, eget suscipit lorem. Aenean dignissim, augue at porta suscipit, est enim euismod mi, a rhoncus mi lacus ac nibh. Ut pharetra ligula sed tortor congue, pellentesque ultricies augue tincidunt.', 1, ''),
(3, 'Career Services', 'Career Services', 1, ''),
(4, 'Success Stories', 'Success Stories', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `xin_recruitment_subpages`
--

DROP TABLE IF EXISTS `xin_recruitment_subpages`;
CREATE TABLE IF NOT EXISTS `xin_recruitment_subpages` (
  `subpages_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `sub_page_title` varchar(255) NOT NULL,
  `sub_page_details` mediumtext NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`subpages_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_recruitment_subpages`
--

INSERT INTO `xin_recruitment_subpages` (`subpages_id`, `page_id`, `sub_page_title`, `sub_page_details`, `status`, `created_at`) VALUES
(1, 1, 'Sub Menu 1', 'Nulla dignissim gravida\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultricies dictum ex, nec ullamcorper orci luctus eget. Integer mauris arcu, pretium eget elit vel, posuere consectetur massa. Etiam non fermentum augue, vel posuere sapien. \r\n\r\nVivamus aliquet eros bibendum ipsum euismod, non interdum dui elementum. Morbi facilisis hendrerit nisi, a volutpat velit. Donec sed malesuada felis. Nulla facilisi. Vivamus a velit vel orci euismod maximus. Praesent ut blandit orci, eget suscipit lorem. Aenean dignissim, augue at porta suscipit, est enim euismod mi, a rhoncus mi lacus ac nibh. Ut pharetra ligula sed tortor congue, pellentesque ultricies augue tincidunt.', 1, ''),
(2, 1, 'Sub Menu 2', 'Nulla dignissim gravida\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultricies dictum ex, nec ullamcorper orci luctus eget. Integer mauris arcu, pretium eget elit vel, posuere consectetur massa. Etiam non fermentum augue, vel posuere sapien. \r\n\r\nVivamus aliquet eros bibendum ipsum euismod, non interdum dui elementum. Morbi facilisis hendrerit nisi, a volutpat velit. Donec sed malesuada felis. Nulla facilisi. Vivamus a velit vel orci euismod maximus. Praesent ut blandit orci, eget suscipit lorem. Aenean dignissim, augue at porta suscipit, est enim euismod mi, a rhoncus mi lacus ac nibh. Ut pharetra ligula sed tortor congue, pellentesque ultricies augue tincidunt.', 1, ''),
(3, 1, 'Sub Menu 3', 'Nulla dignissim gravida\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultricies dictum ex, nec ullamcorper orci luctus eget. Integer mauris arcu, pretium eget elit vel, posuere consectetur massa. Etiam non fermentum augue, vel posuere sapien. \r\n\r\nVivamus aliquet eros bibendum ipsum euismod, non interdum dui elementum. Morbi facilisis hendrerit nisi, a volutpat velit. Donec sed malesuada felis. Nulla facilisi. Vivamus a velit vel orci euismod maximus. Praesent ut blandit orci, eget suscipit lorem. Aenean dignissim, augue at porta suscipit, est enim euismod mi, a rhoncus mi lacus ac nibh. Ut pharetra ligula sed tortor congue, pellentesque ultricies augue tincidunt.', 1, ''),
(4, 1, 'Sub Menu 4', 'Nulla dignissim gravida\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultricies dictum ex, nec ullamcorper orci luctus eget. Integer mauris arcu, pretium eget elit vel, posuere consectetur massa. Etiam non fermentum augue, vel posuere sapien. \r\n\r\nVivamus aliquet eros bibendum ipsum euismod, non interdum dui elementum. Morbi facilisis hendrerit nisi, a volutpat velit. Donec sed malesuada felis. Nulla facilisi. Vivamus a velit vel orci euismod maximus. Praesent ut blandit orci, eget suscipit lorem. Aenean dignissim, augue at porta suscipit, est enim euismod mi, a rhoncus mi lacus ac nibh. Ut pharetra ligula sed tortor congue, pellentesque ultricies augue tincidunt.', 1, ''),
(5, 1, 'Sub Menu 5', 'Nulla dignissim gravida\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultricies dictum ex, nec ullamcorper orci luctus eget. Integer mauris arcu, pretium eget elit vel, posuere consectetur massa. Etiam non fermentum augue, vel posuere sapien. \r\n\r\nVivamus aliquet eros bibendum ipsum euismod, non interdum dui elementum. Morbi facilisis hendrerit nisi, a volutpat velit. Donec sed malesuada felis. Nulla facilisi. Vivamus a velit vel orci euismod maximus. Praesent ut blandit orci, eget suscipit lorem. Aenean dignissim, augue at porta suscipit, est enim euismod mi, a rhoncus mi lacus ac nibh. Ut pharetra ligula sed tortor congue, pellentesque ultricies augue tincidunt.', 1, ''),
(6, 1, 'Sub Menu 6', 'Nulla dignissim gravida\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ultricies dictum ex, nec ullamcorper orci luctus eget. Integer mauris arcu, pretium eget elit vel, posuere consectetur massa. Etiam non fermentum augue, vel posuere sapien. \r\n\r\nVivamus aliquet eros bibendum ipsum euismod, non interdum dui elementum. Morbi facilisis hendrerit nisi, a volutpat velit. Donec sed malesuada felis. Nulla facilisi. Vivamus a velit vel orci euismod maximus. Praesent ut blandit orci, eget suscipit lorem. Aenean dignissim, augue at porta suscipit, est enim euismod mi, a rhoncus mi lacus ac nibh. Ut pharetra ligula sed tortor congue, pellentesque ultricies augue tincidunt.', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `xin_salary_allowances`
--

DROP TABLE IF EXISTS `xin_salary_allowances`;
CREATE TABLE IF NOT EXISTS `xin_salary_allowances` (
  `allowance_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `is_allowance_taxable` int(11) NOT NULL,
  `allowance_title` varchar(200) DEFAULT NULL,
  `allowance_amount` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`allowance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_salary_allowances`
--

INSERT INTO `xin_salary_allowances` (`allowance_id`, `employee_id`, `is_allowance_taxable`, `allowance_title`, `allowance_amount`, `created_at`) VALUES
(1, 1, 0, 'Cost of Living Allowance', '100', NULL),
(2, 1, 0, 'Housing Allowance', '200', NULL),
(3, 1, 0, 'Market Adjustment', '200', NULL),
(4, 1, 0, 'Meal Allowance', '100', NULL),
(5, 1, 0, 'Transportation Allowance', '200', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `xin_salary_bank_allocation`
--

DROP TABLE IF EXISTS `xin_salary_bank_allocation`;
CREATE TABLE IF NOT EXISTS `xin_salary_bank_allocation` (
  `bank_allocation_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `pay_percent` varchar(200) NOT NULL,
  `acc_number` varchar(200) NOT NULL,
  PRIMARY KEY (`bank_allocation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_salary_commissions`
--

DROP TABLE IF EXISTS `xin_salary_commissions`;
CREATE TABLE IF NOT EXISTS `xin_salary_commissions` (
  `salary_commissions_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `commission_title` varchar(200) DEFAULT NULL,
  `commission_amount` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`salary_commissions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_salary_loan_deductions`
--

DROP TABLE IF EXISTS `xin_salary_loan_deductions`;
CREATE TABLE IF NOT EXISTS `xin_salary_loan_deductions` (
  `loan_deduction_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `loan_options` int(11) NOT NULL,
  `loan_deduction_title` varchar(200) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `monthly_installment` varchar(200) NOT NULL,
  `loan_time` varchar(200) NOT NULL,
  `loan_deduction_amount` varchar(200) NOT NULL,
  `total_paid` varchar(200) NOT NULL,
  `reason` text NOT NULL,
  `status` int(11) NOT NULL,
  `is_deducted_from_salary` int(11) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`loan_deduction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_salary_other_payments`
--

DROP TABLE IF EXISTS `xin_salary_other_payments`;
CREATE TABLE IF NOT EXISTS `xin_salary_other_payments` (
  `other_payments_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `payments_title` varchar(200) DEFAULT NULL,
  `payments_amount` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`other_payments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_salary_overtime`
--

DROP TABLE IF EXISTS `xin_salary_overtime`;
CREATE TABLE IF NOT EXISTS `xin_salary_overtime` (
  `salary_overtime_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `overtime_type` varchar(200) NOT NULL,
  `no_of_days` varchar(100) NOT NULL DEFAULT '0',
  `overtime_hours` varchar(100) NOT NULL DEFAULT '0',
  `overtime_rate` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`salary_overtime_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_salary_payslips`
--

DROP TABLE IF EXISTS `xin_salary_payslips`;
CREATE TABLE IF NOT EXISTS `xin_salary_payslips` (
  `payslip_id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_key` varchar(200) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `salary_month` varchar(200) NOT NULL,
  `wages_type` int(11) NOT NULL,
  `payslip_type` varchar(50) NOT NULL,
  `basic_salary` varchar(200) NOT NULL,
  `daily_wages` varchar(200) NOT NULL,
  `is_half_monthly_payroll` tinyint(1) NOT NULL,
  `hours_worked` varchar(50) NOT NULL DEFAULT '0',
  `total_allowances` varchar(200) NOT NULL,
  `total_commissions` varchar(200) NOT NULL,
  `total_statutory_deductions` varchar(200) NOT NULL,
  `total_other_payments` varchar(200) NOT NULL,
  `total_loan` varchar(200) NOT NULL,
  `total_overtime` varchar(200) NOT NULL,
  `statutory_deductions` varchar(200) NOT NULL,
  `net_salary` varchar(200) NOT NULL,
  `grand_net_salary` varchar(200) NOT NULL,
  `other_payment` varchar(200) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `pay_comments` mediumtext NOT NULL,
  `is_payment` int(11) NOT NULL,
  `year_to_date` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`payslip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_salary_payslip_allowances`
--

DROP TABLE IF EXISTS `xin_salary_payslip_allowances`;
CREATE TABLE IF NOT EXISTS `xin_salary_payslip_allowances` (
  `payslip_allowances_id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `allowance_title` varchar(200) NOT NULL,
  `allowance_amount` varchar(200) NOT NULL,
  `salary_month` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`payslip_allowances_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_salary_payslip_commissions`
--

DROP TABLE IF EXISTS `xin_salary_payslip_commissions`;
CREATE TABLE IF NOT EXISTS `xin_salary_payslip_commissions` (
  `payslip_commissions_id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `commission_title` varchar(200) NOT NULL,
  `commission_amount` varchar(200) NOT NULL,
  `salary_month` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`payslip_commissions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_salary_payslip_loan`
--

DROP TABLE IF EXISTS `xin_salary_payslip_loan`;
CREATE TABLE IF NOT EXISTS `xin_salary_payslip_loan` (
  `payslip_loan_id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `loan_title` varchar(200) NOT NULL,
  `loan_amount` varchar(200) NOT NULL,
  `salary_month` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`payslip_loan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_salary_payslip_other_payments`
--

DROP TABLE IF EXISTS `xin_salary_payslip_other_payments`;
CREATE TABLE IF NOT EXISTS `xin_salary_payslip_other_payments` (
  `payslip_other_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `payments_title` varchar(200) NOT NULL,
  `payments_amount` varchar(200) NOT NULL,
  `salary_month` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`payslip_other_payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_salary_payslip_overtime`
--

DROP TABLE IF EXISTS `xin_salary_payslip_overtime`;
CREATE TABLE IF NOT EXISTS `xin_salary_payslip_overtime` (
  `payslip_overtime_id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `overtime_title` varchar(200) NOT NULL,
  `overtime_salary_month` varchar(200) NOT NULL,
  `overtime_no_of_days` varchar(200) NOT NULL,
  `overtime_hours` varchar(200) NOT NULL,
  `overtime_rate` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`payslip_overtime_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_salary_payslip_statutory_deductions`
--

DROP TABLE IF EXISTS `xin_salary_payslip_statutory_deductions`;
CREATE TABLE IF NOT EXISTS `xin_salary_payslip_statutory_deductions` (
  `payslip_deduction_id` int(11) NOT NULL AUTO_INCREMENT,
  `payslip_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `deduction_title` varchar(200) NOT NULL,
  `deduction_amount` varchar(200) NOT NULL,
  `salary_month` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`payslip_deduction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_salary_statutory_deductions`
--

DROP TABLE IF EXISTS `xin_salary_statutory_deductions`;
CREATE TABLE IF NOT EXISTS `xin_salary_statutory_deductions` (
  `statutory_deductions_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `statutory_options` int(11) NOT NULL,
  `deduction_title` varchar(200) DEFAULT NULL,
  `deduction_amount` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`statutory_deductions_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_salary_templates`
--

DROP TABLE IF EXISTS `xin_salary_templates`;
CREATE TABLE IF NOT EXISTS `xin_salary_templates` (
  `salary_template_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `salary_grades` varchar(255) NOT NULL,
  `basic_salary` varchar(255) NOT NULL,
  `overtime_rate` varchar(255) NOT NULL,
  `house_rent_allowance` varchar(255) NOT NULL,
  `medical_allowance` varchar(255) NOT NULL,
  `travelling_allowance` varchar(255) NOT NULL,
  `dearness_allowance` varchar(255) NOT NULL,
  `security_deposit` varchar(255) NOT NULL,
  `provident_fund` varchar(255) NOT NULL,
  `tax_deduction` varchar(255) NOT NULL,
  `gross_salary` varchar(255) NOT NULL,
  `total_allowance` varchar(255) NOT NULL,
  `total_deduction` varchar(255) NOT NULL,
  `net_salary` varchar(255) NOT NULL,
  `added_by` int(111) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`salary_template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_salary_templates`
--

INSERT INTO `xin_salary_templates` (`salary_template_id`, `company_id`, `salary_grades`, `basic_salary`, `overtime_rate`, `house_rent_allowance`, `medical_allowance`, `travelling_allowance`, `dearness_allowance`, `security_deposit`, `provident_fund`, `tax_deduction`, `gross_salary`, `total_allowance`, `total_deduction`, `net_salary`, `added_by`, `created_at`) VALUES
(1, 1, 'Monthly', '2500', '', '50', '60', '70', '80', '40', '20', '30', '2760', '260', '90', '2670', 1, '22-03-2018 01:40:06');

-- --------------------------------------------------------

--
-- Table structure for table `xin_security_level`
--

DROP TABLE IF EXISTS `xin_security_level`;
CREATE TABLE IF NOT EXISTS `xin_security_level` (
  `type_id` int(111) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_sub_departments`
--

DROP TABLE IF EXISTS `xin_sub_departments`;
CREATE TABLE IF NOT EXISTS `xin_sub_departments` (
  `sub_department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `department_name` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`sub_department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_sub_departments`
--

INSERT INTO `xin_sub_departments` (`sub_department_id`, `department_id`, `department_name`, `created_at`) VALUES
(8, 1, 'Manager', '2019-02-15 00:22:13'),
(9, 1, 'Lead Manager', '2019-02-15 00:22:21'),
(10, 2, 'Accountant', '2019-02-15 00:22:26'),
(11, 3, 'UX & UI', '2021-05-22 14:21:24'),
(12, 3, 'Developer', '2021-05-22 14:21:33'),
(13, 4, 'Project Manager', '2021-05-22 14:21:47'),
(14, 4, 'Operation', '2021-05-22 14:21:57'),
(15, 5, 'Manager', '2021-05-22 14:24:53'),
(16, 5, 'Operations', '2021-05-22 14:25:01');

-- --------------------------------------------------------

--
-- Table structure for table `xin_support_tickets`
--

DROP TABLE IF EXISTS `xin_support_tickets`;
CREATE TABLE IF NOT EXISTS `xin_support_tickets` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `ticket_code` varchar(200) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `ticket_priority` varchar(255) NOT NULL,
  `department_id` int(111) NOT NULL,
  `assigned_to` mediumtext NOT NULL,
  `message` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `ticket_remarks` mediumtext NOT NULL,
  `ticket_status` varchar(200) NOT NULL,
  `ticket_note` mediumtext NOT NULL,
  `is_notify` int(11) NOT NULL,
  `ticket_image` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_support_tickets_employees`
--

DROP TABLE IF EXISTS `xin_support_tickets_employees`;
CREATE TABLE IF NOT EXISTS `xin_support_tickets_employees` (
  `tickets_employees_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `is_notify` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`tickets_employees_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xin_support_ticket_files`
--

DROP TABLE IF EXISTS `xin_support_ticket_files`;
CREATE TABLE IF NOT EXISTS `xin_support_ticket_files` (
  `ticket_file_id` int(111) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(111) NOT NULL,
  `employee_id` int(111) NOT NULL,
  `ticket_files` varchar(255) NOT NULL,
  `file_size` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`ticket_file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_system_setting`
--

DROP TABLE IF EXISTS `xin_system_setting`;
CREATE TABLE IF NOT EXISTS `xin_system_setting` (
  `setting_id` int(111) NOT NULL AUTO_INCREMENT,
  `application_name` varchar(255) NOT NULL,
  `default_currency` varchar(255) NOT NULL,
  `default_currency_id` int(11) NOT NULL,
  `default_currency_symbol` varchar(255) NOT NULL,
  `show_currency` varchar(255) NOT NULL,
  `currency_position` varchar(255) NOT NULL,
  `notification_position` varchar(255) NOT NULL,
  `notification_close_btn` varchar(255) NOT NULL,
  `notification_bar` varchar(255) NOT NULL,
  `enable_registration` varchar(255) NOT NULL,
  `login_with` varchar(255) NOT NULL,
  `date_format_xi` varchar(255) NOT NULL,
  `employee_manage_own_contact` varchar(255) NOT NULL,
  `employee_manage_own_profile` varchar(255) NOT NULL,
  `employee_manage_own_qualification` varchar(255) NOT NULL,
  `employee_manage_own_work_experience` varchar(255) NOT NULL,
  `employee_manage_own_document` varchar(255) NOT NULL,
  `employee_manage_own_picture` varchar(255) NOT NULL,
  `employee_manage_own_social` varchar(255) NOT NULL,
  `employee_manage_own_bank_account` varchar(255) NOT NULL,
  `enable_attendance` varchar(255) NOT NULL,
  `enable_clock_in_btn` varchar(255) NOT NULL,
  `enable_email_notification` varchar(255) NOT NULL,
  `payroll_include_day_summary` varchar(255) NOT NULL,
  `payroll_include_hour_summary` varchar(255) NOT NULL,
  `payroll_include_leave_summary` varchar(255) NOT NULL,
  `enable_job_application_candidates` varchar(255) NOT NULL,
  `job_logo` varchar(255) NOT NULL,
  `payroll_logo` varchar(255) NOT NULL,
  `is_payslip_password_generate` int(11) NOT NULL,
  `payslip_password_format` varchar(255) NOT NULL,
  `enable_profile_background` varchar(255) NOT NULL,
  `enable_policy_link` varchar(255) NOT NULL,
  `enable_layout` varchar(255) NOT NULL,
  `job_application_format` mediumtext NOT NULL,
  `technical_competencies` text DEFAULT NULL,
  `organizational_competencies` text DEFAULT NULL,
  `project_email` varchar(255) NOT NULL,
  `holiday_email` varchar(255) NOT NULL,
  `leave_email` varchar(255) NOT NULL,
  `payslip_email` varchar(255) NOT NULL,
  `award_email` varchar(255) NOT NULL,
  `recruitment_email` varchar(255) NOT NULL,
  `announcement_email` varchar(255) NOT NULL,
  `training_email` varchar(255) NOT NULL,
  `task_email` varchar(255) NOT NULL,
  `compact_sidebar` varchar(255) NOT NULL,
  `fixed_header` varchar(255) NOT NULL,
  `fixed_sidebar` varchar(255) NOT NULL,
  `boxed_wrapper` varchar(255) NOT NULL,
  `layout_static` varchar(255) NOT NULL,
  `system_skin` varchar(255) NOT NULL,
  `animation_effect` varchar(255) NOT NULL,
  `animation_effect_modal` varchar(255) NOT NULL,
  `animation_effect_topmenu` varchar(255) NOT NULL,
  `footer_text` varchar(255) NOT NULL,
  `is_ssl_available` varchar(50) NOT NULL,
  `is_active_sub_departments` varchar(10) NOT NULL,
  `default_language` varchar(200) NOT NULL,
  `statutory_fixed` varchar(100) NOT NULL,
  `system_timezone` varchar(200) NOT NULL,
  `system_ip_address` varchar(255) NOT NULL,
  `system_ip_restriction` varchar(200) NOT NULL,
  `google_maps_api_key` mediumtext NOT NULL,
  `module_recruitment` varchar(100) NOT NULL,
  `module_travel` varchar(100) NOT NULL,
  `module_performance` varchar(100) NOT NULL,
  `module_payroll` varchar(10) NOT NULL,
  `module_files` varchar(100) NOT NULL,
  `module_awards` varchar(100) NOT NULL,
  `module_training` varchar(100) NOT NULL,
  `module_inquiry` varchar(100) NOT NULL,
  `module_language` varchar(100) NOT NULL,
  `module_orgchart` varchar(100) NOT NULL,
  `module_accounting` varchar(111) NOT NULL,
  `module_events` varchar(100) NOT NULL,
  `module_goal_tracking` varchar(100) NOT NULL,
  `module_assets` varchar(100) NOT NULL,
  `module_projects_tasks` varchar(100) NOT NULL,
  `module_chat_box` varchar(100) NOT NULL,
  `enable_page_rendered` varchar(255) NOT NULL,
  `enable_current_year` varchar(255) NOT NULL,
  `employee_login_id` varchar(200) NOT NULL,
  `paypal_email` varchar(100) NOT NULL,
  `paypal_sandbox` varchar(10) NOT NULL,
  `paypal_active` varchar(10) NOT NULL,
  `stripe_secret_key` varchar(200) NOT NULL,
  `stripe_publishable_key` varchar(200) NOT NULL,
  `stripe_active` varchar(10) NOT NULL,
  `online_payment_account` int(11) NOT NULL,
  `is_half_monthly` tinyint(1) NOT NULL,
  `half_deduct_month` tinyint(1) NOT NULL,
  `invoice_terms_condition` text DEFAULT NULL,
  `estimate_terms_condition` text DEFAULT NULL,
  `staff_dashboard` int(11) DEFAULT NULL,
  `project_dashboard` int(11) DEFAULT NULL,
  `enable_auth_background` varchar(11) NOT NULL,
  `hr_version` varchar(200) NOT NULL,
  `hr_release_date` varchar(100) NOT NULL,
  `updated_at` varchar(255) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_system_setting`
--

INSERT INTO `xin_system_setting` (`setting_id`, `application_name`, `default_currency`, `default_currency_id`, `default_currency_symbol`, `show_currency`, `currency_position`, `notification_position`, `notification_close_btn`, `notification_bar`, `enable_registration`, `login_with`, `date_format_xi`, `employee_manage_own_contact`, `employee_manage_own_profile`, `employee_manage_own_qualification`, `employee_manage_own_work_experience`, `employee_manage_own_document`, `employee_manage_own_picture`, `employee_manage_own_social`, `employee_manage_own_bank_account`, `enable_attendance`, `enable_clock_in_btn`, `enable_email_notification`, `payroll_include_day_summary`, `payroll_include_hour_summary`, `payroll_include_leave_summary`, `enable_job_application_candidates`, `job_logo`, `payroll_logo`, `is_payslip_password_generate`, `payslip_password_format`, `enable_profile_background`, `enable_policy_link`, `enable_layout`, `job_application_format`, `technical_competencies`, `organizational_competencies`, `project_email`, `holiday_email`, `leave_email`, `payslip_email`, `award_email`, `recruitment_email`, `announcement_email`, `training_email`, `task_email`, `compact_sidebar`, `fixed_header`, `fixed_sidebar`, `boxed_wrapper`, `layout_static`, `system_skin`, `animation_effect`, `animation_effect_modal`, `animation_effect_topmenu`, `footer_text`, `is_ssl_available`, `is_active_sub_departments`, `default_language`, `statutory_fixed`, `system_timezone`, `system_ip_address`, `system_ip_restriction`, `google_maps_api_key`, `module_recruitment`, `module_travel`, `module_performance`, `module_payroll`, `module_files`, `module_awards`, `module_training`, `module_inquiry`, `module_language`, `module_orgchart`, `module_accounting`, `module_events`, `module_goal_tracking`, `module_assets`, `module_projects_tasks`, `module_chat_box`, `enable_page_rendered`, `enable_current_year`, `employee_login_id`, `paypal_email`, `paypal_sandbox`, `paypal_active`, `stripe_secret_key`, `stripe_publishable_key`, `stripe_active`, `online_payment_account`, `is_half_monthly`, `half_deduct_month`, `invoice_terms_condition`, `estimate_terms_condition`, `staff_dashboard`, `project_dashboard`, `enable_auth_background`, `hr_version`, `hr_release_date`, `updated_at`) VALUES
(1, 'HR Solution', 'USD - $', 1, 'USD - $', 'symbol', 'Prefix', 'toast-top-center', 'true', 'true', 'no', 'username', 'M-d-Y', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', 'yes', 'yes', 'yes', 'yes', '1', 'job_logo_1647819203.png', 'payroll_logo_1647819214.png', 0, 'employee_id', 'yes', 'yes', 'yes', 'doc,docx,pdf', 'Customer Experience,Marketing,Administration', 'Professionalism,Integrity,Attendance', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'sidebar_layout_hrsale', '', 'fixed-sidebar', 'boxed_layout_hrsale', '', 'skin-default', 'fadeInDown', 'tada', 'tada', 'Bilsan Business Solutions ', '', 'yes', 'english', '', 'Asia/Riyadh', '::1', '', 'AIzaSyB3gP8H3eypotNeoEtezbRiF_f8Zh_p4ck', '', 'true', 'yes', 'yes', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', '', 'yes', 'username', 'hrsalesoft-facilitator@gmail.com', 'yes', 'yes', 'sk_test_2XEyr1hQFGByITfQjSwFqNtm', 'pk_test_zVFISCqeQPnniD0ywHBHikMd', 'yes', 1, 0, 1, '', '', 0, 0, '', '1.0.3', '2018-03-28', '2018-03-28 04:27:32');

-- --------------------------------------------------------

--
-- Table structure for table `xin_tasks`
--

DROP TABLE IF EXISTS `xin_tasks`;
CREATE TABLE IF NOT EXISTS `xin_tasks` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `project_id` int(111) NOT NULL,
  `created_by` int(111) NOT NULL,
  `task_name` varchar(255) NOT NULL,
  `assigned_to` varchar(255) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `task_hour` varchar(200) NOT NULL,
  `task_progress` varchar(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `task_status` int(5) NOT NULL,
  `task_note` mediumtext NOT NULL,
  `is_notify` int(11) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_tasks`
--

INSERT INTO `xin_tasks` (`task_id`, `company_id`, `project_id`, `created_by`, `task_name`, `assigned_to`, `start_date`, `end_date`, `task_hour`, `task_progress`, `description`, `task_status`, `task_note`, `is_notify`, `created_at`) VALUES
(1, 1, 1, 6, '20', '7', '2021-05-25', '2021-06-25', '1', '0', '&lt;p&gt;عمل مقابلة مع الأستاذ وليد الهودلي&lt;/p&gt;', 0, '', 1, '2021-05-25 12:32:22'),
(2, 1, 1, 6, '20', '7,8', '2021-05-25', '2021-06-25', '20', '0', '&lt;p&gt;عمل فيديو تعريفي &lt;/p&gt;', 0, '', 1, '2021-05-25 12:33:31'),
(3, 1, 1, 6, '20', '7,8', '2021-05-22', '2021-05-31', '20', '0', '&lt;table id=\\&quot;table-tasks\\&quot; class=\\&quot;table table-striped\\&quot; xss=removed&gt;&lt;tbody&gt;&lt;tr xss=removed&gt;&lt;td xss=removed&gt;&lt;a class=\\&quot;text-info\\&quot; href=\\&quot;http://crm.bilsan.co/admin/tasks/view_task_details/80\\&quot; xss=removed&gt;نشر مقاطع من الفيلم الخاص بوليد الهودلي على الفيسبوك&lt;/a&gt;&lt;br&gt;&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 0, '', 1, '2021-05-25 12:47:23'),
(4, 1, 1, 6, '20', '7,8', '2021-05-22', '2021-05-31', '20', '0', '&lt;table id=\\&quot;table-tasks\\&quot; class=\\&quot;table table-striped\\&quot; xss=removed&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td xss=removed&gt;&lt;a class=\\&quot;text-info\\&quot; href=\\&quot;http://crm.bilsan.co/admin/tasks/view_task_details/79\\&quot; xss=removed&gt;تصميم صورة خاصة باليوتيوب&lt;/a&gt;&lt;br&gt;&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 0, '', 0, '2021-05-25 12:48:52'),
(5, 1, 1, 6, '20', '7,8', '2021-05-22', '2021-05-31', '20', '0', '&lt;table id=\\&quot;table-tasks\\&quot; class=\\&quot;table table-striped\\&quot; xss=removed&gt;&lt;tbody&gt;&lt;tr xss=removed&gt;&lt;td xss=removed&gt;توحيد شارة خاصة بالفيديوهات&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 0, '', 1, '2021-05-25 12:50:32'),
(6, 1, 1, 6, '21', '7,8', '2021-05-22', '2021-05-31', '20', '0', 'شاش عرض خارجية', 0, '', 1, '2021-05-25 12:52:20'),
(7, 1, 2, 6, '20', '9', '2021-05-22', '2021-05-27', '20', '0', '&lt;table id=\\&quot;table-tasks\\&quot; class=\\&quot;table table-striped\\&quot; xss=removed&gt;&lt;tbody&gt;&lt;tr xss=removed&gt;&lt;td xss=removed&gt;&lt;p xss=removed&gt;صفحة ويكيبيديا خاصة بالدكتور حمز&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 0, '', 1, '2021-05-25 12:58:16'),
(8, 1, 2, 6, '20', '7,8', '2021-05-22', '2021-06-01', '20', '0', '&lt;table id=\\&quot;table-tasks\\&quot; class=\\&quot;table table-striped\\&quot; xss=removed&gt;&lt;tbody&gt;&lt;tr xss=removed&gt;&lt;td xss=removed&gt;&lt;p xss=removed&gt;سلسلة كورونيات- مونتاج فيديو&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 0, '', 1, '2021-05-25 12:59:51'),
(9, 1, 3, 6, '24', '9', '2021-05-16', '2021-05-31', '2', '0', '&lt;table id=\\&quot;table-tasks\\&quot; class=\\&quot;table table-striped\\&quot; xss=removed&gt;&lt;tbody&gt;&lt;tr xss=removed&gt;&lt;td xss=removed&gt;&lt;a class=\\&quot;text-info\\&quot; href=\\&quot;http://crm.bilsan.co/admin/tasks/view_task_details/68\\&quot; xss=removed&gt;رسالة طلب توثيق صفحة عمار العكر&lt;/a&gt;&lt;br&gt;&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 0, '', 1, '2021-05-25 01:01:56'),
(10, 1, 3, 6, '20', '7,8', '2021-05-20', '2021-05-31', '5', '0', '&lt;table id=\\&quot;table-tasks\\&quot; class=\\&quot;table table-striped\\&quot; xss=removed&gt;&lt;tbody&gt;&lt;tr xss=removed&gt;&lt;td xss=removed&gt;وثائق خاصة في عمار&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 0, '', 1, '2021-05-25 01:05:19'),
(11, 1, 3, 6, '20', '7,8', '2021-05-20', '2021-05-31', '10', '0', '&lt;table id=\\&quot;table-tasks\\&quot; class=\\&quot;table table-striped\\&quot; xss=removed&gt;&lt;tbody&gt;&lt;tr xss=removed&gt;&lt;td xss=removed&gt;مقابلات مع الموظفين&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 0, '', 1, '2021-05-25 01:07:20'),
(12, 1, 3, 6, '20', '7,8', '2021-05-20', '2021-05-31', '2', '0', '&lt;table id=\\&quot;table-tasks\\&quot; class=\\&quot;table table-striped\\&quot; xss=removed&gt;&lt;tbody&gt;&lt;tr xss=removed&gt;&lt;td xss=removed&gt;مقابلة بعنوان عمار العكر في دقيقتين&lt;span xss=removed&gt; &lt;/span&gt;&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 0, '', 1, '2021-05-25 01:08:15'),
(13, 1, 3, 6, '20', '7,8', '2021-05-20', '2021-05-26', '5', '0', '', 0, '', 1, '2021-05-25 01:09:26'),
(14, 1, 3, 6, '20', '7,8', '2021-05-20', '2021-05-31', '5', '0', '&lt;table id=\\&quot;table-tasks\\&quot; class=\\&quot;table table-striped\\&quot; xss=removed&gt;&lt;tbody&gt;&lt;tr xss=removed&gt;&lt;td xss=removed&gt;فيديو غراف لتعريف عن عمار العكر&lt;span xss=removed&gt; &lt;/span&gt;&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 0, '', 1, '2021-05-25 01:11:41'),
(15, 1, 3, 6, '21', '7,8,9,10', '2021-05-20', '2021-05-31', '20', '0', '&lt;table id=\\&quot;table-tasks\\&quot; class=\\&quot;table table-striped\\&quot; xss=removed&gt;&lt;tbody&gt;&lt;tr xss=removed&gt;&lt;td xss=removed&gt;برنامج عن المنح التي تقدمها مجموعة الاتصالات&lt;span xss=removed&gt; &lt;/span&gt;&lt;br&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 0, '', 1, '2021-05-25 01:13:04'),
(16, 1, 7, 6, '20', '7', '2021-05-23', '2021-05-24', '2', '0', '&lt;p&gt;تجهيز سيناريو اللعبة&lt;span xss=removed&gt; &lt;/span&gt;&lt;/p&gt;', 0, '', 1, '2021-05-25 01:15:35'),
(17, 1, 10, 6, '20', '7,8,10', '2021-05-01', '2021-06-01', '50', '0', '&lt;p&gt;50-500 poster&lt;span xss=removed&gt; &lt;/span&gt;&lt;/p&gt;', 0, '', 1, '2021-05-25 01:18:20'),
(18, 1, 10, 6, '20', '7', '2021-05-20', '2021-06-01', '20', '0', '&lt;p&gt;Micro-Medical Solution | pdf presentation&lt;span xss=removed&gt; &lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 0, '', 1, '2021-05-25 01:18:52'),
(19, 1, 10, 6, '20', '7', '2021-05-20', '2021-05-20', '20', '0', '&lt;p&gt;Yahia App | pdf presentation&lt;span xss=removed&gt; &lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 0, '', 1, '2021-05-25 01:19:41'),
(20, 1, 10, 6, '21', '7,10', '2021-05-20', '2021-06-01', '20', '0', '&lt;p&gt;Bilsan Profile Vedio promo | for all social media accounts&lt;span xss=removed&gt; &lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 0, '', 1, '2021-05-25 01:20:48'),
(21, 1, 10, 6, '20', '9', '2021-05-20', '2021-06-01', '20', '0', '&lt;p&gt;Yahia App | promo vedio | By Ms. Rand Bader&lt;span xss=removed&gt; &lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 0, '', 1, '2021-05-25 01:21:28'),
(22, 1, 10, 6, '20', '7,10', '2021-05-25', '2021-06-01', '20', '0', '&lt;p&gt;iClinic promo vedio for Bilsan facebook page &amp; youtube&lt;span xss=removed&gt; &lt;/span&gt;&lt;/p&gt;', 0, '', 0, '2021-05-25 01:23:54'),
(23, 1, 10, 6, '20', '7,10', '2021-05-25', '2021-06-01', '20', '0', '&lt;p&gt;Design A4 pdf for Bilsan Profile | Arabic Version&lt;span xss=removed&gt; &lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 0, '', 0, '2021-05-25 01:24:30'),
(24, 1, 8, 6, '16', '7', '2021-05-25', '2021-05-31', '2', '0', '&lt;p&gt;Meeting With Palestine Bar Project Manager | Ms.Tahani Madhoun&lt;span xss=removed&gt; &lt;/span&gt;&lt;/p&gt;', 0, '', 0, '2021-05-25 01:27:01'),
(25, 1, 6, 6, '20', '7,8,9,10', '2021-05-01', '2021-06-01', '50', '0', '&lt;p&gt;عمار العكر&lt;span xss=removed&gt; &lt;/span&gt;&lt;/p&gt;', 0, '', 0, '2021-05-25 01:28:31');

-- --------------------------------------------------------

--
-- Table structure for table `xin_tasks_attachment`
--

DROP TABLE IF EXISTS `xin_tasks_attachment`;
CREATE TABLE IF NOT EXISTS `xin_tasks_attachment` (
  `task_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(200) NOT NULL,
  `upload_by` int(255) NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `file_description` mediumtext NOT NULL,
  `attachment_file` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`task_attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_tasks_comments`
--

DROP TABLE IF EXISTS `xin_tasks_comments`;
CREATE TABLE IF NOT EXISTS `xin_tasks_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `task_comments` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_task_categories`
--

DROP TABLE IF EXISTS `xin_task_categories`;
CREATE TABLE IF NOT EXISTS `xin_task_categories` (
  `task_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`task_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `xin_task_categories`
--

INSERT INTO `xin_task_categories` (`task_category_id`, `category_name`, `created_at`) VALUES
(11, 'Micro- Medical', '25-05-2021 11:53:34'),
(12, 'I Clinic', '25-05-2021 11:54:06'),
(13, 'Yahia', '25-05-2021 11:54:19'),
(14, 'ILab', '25-05-2021 11:54:37'),
(15, 'IPharmacy', '25-05-2021 12:00:30'),
(16, 'Web Apps', '25-05-2021 12:01:19'),
(17, 'Mobile Apps ', '25-05-2021 12:01:30'),
(18, 'Services Apps', '25-05-2021 12:02:10'),
(19, 'Network and protection systems.', '25-05-2021 12:02:28'),
(20, 'Content making ', '25-05-2021 12:08:41'),
(21, 'Managing Content', '25-05-2021 12:08:54'),
(22, 'Fund Management', '25-05-2021 12:09:06'),
(24, 'Verification Accounts', '25-05-2021 12:10:08'),
(25, 'Information Production services', '25-05-2021 12:10:30'),
(26, 'Photography and montage', '25-05-2021 12:10:50'),
(27, ' 3D filming', '25-05-2021 12:11:00'),
(28, 'Live ', '25-05-2021 12:11:24'),
(29, '3D videos', '25-05-2021 12:13:23'),
(30, 'Motion graphic', '25-05-2021 12:14:08'),
(31, 'Media broadcasting through multiple media.', '25-05-2021 12:14:20'),
(32, 'Training and consulting services', '25-05-2021 12:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `xin_tax_types`
--

DROP TABLE IF EXISTS `xin_tax_types`;
CREATE TABLE IF NOT EXISTS `xin_tax_types` (
  `tax_id` int(111) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`tax_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_tax_types`
--

INSERT INTO `xin_tax_types` (`tax_id`, `name`, `rate`, `type`, `description`, `created_at`) VALUES
(1, 'No Tax', '0', 'fixed', 'test', '25-05-2018'),
(2, 'IVU', '2', 'fixed', 'test', '25-05-2018'),
(3, 'VAT', '5', 'percentage', 'testttt', '25-05-2018');

-- --------------------------------------------------------

--
-- Table structure for table `xin_termination_type`
--

DROP TABLE IF EXISTS `xin_termination_type`;
CREATE TABLE IF NOT EXISTS `xin_termination_type` (
  `termination_type_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`termination_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_termination_type`
--

INSERT INTO `xin_termination_type` (`termination_type_id`, `company_id`, `type`, `created_at`) VALUES
(1, 1, 'Voluntary Termination', '22-03-2018 01:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `xin_theme_settings`
--

DROP TABLE IF EXISTS `xin_theme_settings`;
CREATE TABLE IF NOT EXISTS `xin_theme_settings` (
  `theme_settings_id` int(11) NOT NULL AUTO_INCREMENT,
  `fixed_layout` varchar(200) NOT NULL,
  `fixed_footer` varchar(200) NOT NULL,
  `boxed_layout` varchar(200) NOT NULL,
  `page_header` varchar(200) NOT NULL,
  `footer_layout` varchar(200) NOT NULL,
  `statistics_cards` varchar(200) NOT NULL,
  `animation_style` varchar(100) NOT NULL,
  `theme_option` varchar(100) NOT NULL,
  `dashboard_option` varchar(100) NOT NULL,
  `dashboard_calendar` varchar(100) NOT NULL,
  `login_page_options` varchar(100) NOT NULL,
  `sub_menu_icons` varchar(100) NOT NULL,
  `statistics_cards_background` varchar(200) NOT NULL,
  `employee_cards` varchar(200) NOT NULL,
  `card_border_color` varchar(200) NOT NULL,
  `compact_menu` varchar(200) NOT NULL,
  `flipped_menu` varchar(200) NOT NULL,
  `right_side_icons` varchar(200) NOT NULL,
  `bordered_menu` varchar(200) NOT NULL,
  `form_design` varchar(200) NOT NULL,
  `is_semi_dark` int(11) NOT NULL,
  `semi_dark_color` varchar(200) NOT NULL,
  `top_nav_dark_color` varchar(200) NOT NULL,
  `menu_color_option` varchar(200) NOT NULL,
  `export_orgchart` varchar(100) NOT NULL,
  `export_file_title` mediumtext NOT NULL,
  `org_chart_layout` varchar(200) NOT NULL,
  `org_chart_zoom` varchar(100) NOT NULL,
  `org_chart_pan` varchar(100) NOT NULL,
  PRIMARY KEY (`theme_settings_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_theme_settings`
--

INSERT INTO `xin_theme_settings` (`theme_settings_id`, `fixed_layout`, `fixed_footer`, `boxed_layout`, `page_header`, `footer_layout`, `statistics_cards`, `animation_style`, `theme_option`, `dashboard_option`, `dashboard_calendar`, `login_page_options`, `sub_menu_icons`, `statistics_cards_background`, `employee_cards`, `card_border_color`, `compact_menu`, `flipped_menu`, `right_side_icons`, `bordered_menu`, `form_design`, `is_semi_dark`, `semi_dark_color`, `top_nav_dark_color`, `menu_color_option`, `export_orgchart`, `export_file_title`, `org_chart_layout`, `org_chart_zoom`, `org_chart_pan`) VALUES
(1, 'false', 'true', 'false', 'breadcrumb-transparent', 'footer-light', '4', 'fadeInDown', 'template_1', 'dashboard_1', 'true', 'login_page_2', 'fa-check-circle-o', '', '', '', 'true', 'false', 'false', 'false', 'basic_form', 1, 'bg-primary', 'bg-blue-grey', 'menu-dark', 'true', 'HRSALE', 't2b', 'true', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `xin_tickets_attachment`
--

DROP TABLE IF EXISTS `xin_tickets_attachment`;
CREATE TABLE IF NOT EXISTS `xin_tickets_attachment` (
  `ticket_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(200) NOT NULL,
  `upload_by` int(255) NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `file_description` mediumtext NOT NULL,
  `attachment_file` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`ticket_attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_tickets_comments`
--

DROP TABLE IF EXISTS `xin_tickets_comments`;
CREATE TABLE IF NOT EXISTS `xin_tickets_comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `ticket_comments` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_trainers`
--

DROP TABLE IF EXISTS `xin_trainers`;
CREATE TABLE IF NOT EXISTS `xin_trainers` (
  `trainer_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `designation_id` int(111) NOT NULL,
  `expertise` mediumtext NOT NULL,
  `address` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`trainer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_training`
--

DROP TABLE IF EXISTS `xin_training`;
CREATE TABLE IF NOT EXISTS `xin_training` (
  `training_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `employee_id` varchar(200) NOT NULL,
  `training_type_id` int(200) NOT NULL,
  `trainer_option` int(11) NOT NULL,
  `trainer_id` int(200) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `finish_date` varchar(200) NOT NULL,
  `training_cost` varchar(200) NOT NULL,
  `training_status` int(200) NOT NULL,
  `description` mediumtext NOT NULL,
  `performance` varchar(200) NOT NULL,
  `remarks` mediumtext NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`training_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `xin_training_types`
--

DROP TABLE IF EXISTS `xin_training_types`;
CREATE TABLE IF NOT EXISTS `xin_training_types` (
  `training_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`training_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_training_types`
--

INSERT INTO `xin_training_types` (`training_type_id`, `company_id`, `type`, `created_at`, `status`) VALUES
(1, 1, 'Job Training', '19-03-2018 06:45:47', 1),
(2, 1, 'Workshop', '19-03-2018 06:45:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `xin_travel_arrangement_type`
--

DROP TABLE IF EXISTS `xin_travel_arrangement_type`;
CREATE TABLE IF NOT EXISTS `xin_travel_arrangement_type` (
  `arrangement_type_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`arrangement_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_travel_arrangement_type`
--

INSERT INTO `xin_travel_arrangement_type` (`arrangement_type_id`, `company_id`, `type`, `status`, `created_at`) VALUES
(1, 1, 'Corporation', 1, '19-03-2018 08:45:17'),
(2, 1, 'Guest House', 1, '19-03-2018 08:45:27');

-- --------------------------------------------------------

--
-- Table structure for table `xin_users`
--

DROP TABLE IF EXISTS `xin_users`;
CREATE TABLE IF NOT EXISTS `xin_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_role` varchar(30) NOT NULL DEFAULT 'administrator',
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_logo` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_photo` varchar(255) NOT NULL,
  `profile_background` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address_1` text NOT NULL,
  `address_2` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `country` int(11) NOT NULL,
  `last_login_date` varchar(255) NOT NULL,
  `last_login_ip` varchar(255) NOT NULL,
  `is_logged_in` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_users`
--

INSERT INTO `xin_users` (`user_id`, `user_role`, `first_name`, `last_name`, `company_name`, `company_logo`, `user_type`, `email`, `username`, `password`, `profile_photo`, `profile_background`, `contact_number`, `gender`, `address_1`, `address_2`, `city`, `state`, `zipcode`, `country`, `last_login_date`, `last_login_ip`, `is_logged_in`, `is_active`, `created_at`) VALUES
(1, 'administrator', 'Thomas', 'Fleming', '', '', 2, 'test1@test.com', 'admin', 'test123', 'user_1520720863.jpg', 'profile_background_1505458640.jpg', '12333332', 'Male', 'Address Line 1', 'Address Line 2', 'City', 'State', '12345', 230, '15-04-2018 07:36:12', '::1', 0, 1, '14-09-2017 10:02:54'),
(2, 'administrator', 'Main', 'Office', '', '', 2, 'test@test.com', 'test', 'test123', 'user_1523821315.jpg', '', '1234567890', 'Male', 'Address Line 1', 'Address Line 2', 'City', 'State', '11461', 190, '23-04-2018 05:34:47', '::1', 0, 1, '15-04-2018 06:13:08'),
(4, 'administrator', 'Fiona', 'Grace', 'HRSALE', 'employer_1524025572.jpg', 1, 'employer@test.com', '', 'test123', '', '', '1234567890', 'Male', 'Address Line 1', 'Address Line 2', 'City', 'State', '11461', 190, '23-04-2018 05:34:54', '::1', 0, 1, '18-04-2018 07:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `xin_user_roles`
--

DROP TABLE IF EXISTS `xin_user_roles`;
CREATE TABLE IF NOT EXISTS `xin_user_roles` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `role_name` varchar(200) NOT NULL,
  `role_access` varchar(200) NOT NULL,
  `role_resources` text NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_user_roles`
--

INSERT INTO `xin_user_roles` (`role_id`, `company_id`, `role_name`, `role_access`, `role_resources`, `created_at`) VALUES
(1, 1, 'Super Admin', '1', '0,103,13,13,201,202,203,372,373,393,393,394,395,396,422,351,421,88,23,23,204,205,206,231,400,22,12,14,14,207,208,209,232,15,15,210,211,212,233,16,16,213,214,215,234,406,407,408,17,17,216,217,218,235,18,18,219,220,221,236,19,19,222,223,224,237,20,20,225,226,227,238,21,21,228,229,230,239,2,3,3,240,241,242,4,4,243,244,245,249,5,5,246,247,248,6,6,250,251,252,11,11,254,255,256,257,9,9,258,259,260,96,24,25,25,262,263,264,265,26,26,266,267,268,97,98,98,269,270,271,272,99,99,273,274,275,276,27,28,28,397,423,10,10,253,261,29,29,381,30,30,277,278,279,310,401,401,402,403,31,7,7,280,281,282,2822,311,8,8,283,284,285,46,46,287,288,289,290,48,49,49,291,292,293,50,51,51,294,295,387,52,52,296,297,388,32,36,36,313,314,404,405,40,41,41,298,299,300,301,42,42,302,303,304,305,43,43,306,307,308,309,104,44,44,315,316,317,318,312,45,45,319,320,321,322,122,122,331,332,333,106,107,107,334,335,336,108,108,338,339,340,47,53,54,54,341,342,343,344,55,55,345,346,347,56,56,348,349,350,57,60,61,118,62,63,93,71,286,72,72,352,353,354,73,74,75,75,355,356,357,76,76,358,359,360,77,77,361,362,363,78,37,37,391,79,80,80,364,365,366,81,81,367,368,369,82,83,84,85,86,87,119,119,323,324,325,326,410,411,412,413,414,420,415,416,417,418,419,121,121,120,328,329,330,89,89,370,371,90,91,94,95,92,110,111,112,113,114,115,116,117,409', '28-02-2018'),
(2, 1, 'Employee', '2', '0,88,22,97,98,98,269,270,271,272,99,99,273,274,275,276,27,28,28,397,423,10,10,253,261,29,29,381,30,30,277,278,279,310,401,401,402,403,31,7,7,280,281,282,2822,311,8,8,283,284,285,46,46,287,288,289,290,43,43,306,307,308,309,104,44,44,315,316,317,318,312,45,45,319,320,321,322,122,122,331,332,333,106,107,107,334,335,336,108,108,338,339,340,47,95,92', '21-03-2018');

-- --------------------------------------------------------

--
-- Table structure for table `xin_warning_type`
--

DROP TABLE IF EXISTS `xin_warning_type`;
CREATE TABLE IF NOT EXISTS `xin_warning_type` (
  `warning_type_id` int(111) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`warning_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `xin_warning_type`
--

INSERT INTO `xin_warning_type` (`warning_type_id`, `company_id`, `type`, `created_at`) VALUES
(1, 1, 'First Written Warning', '22-03-2018 01:38:02');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
