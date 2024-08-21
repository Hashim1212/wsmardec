-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2024 at 10:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `archiving`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add comm letter', 7, 'add_commletter'),
(26, 'Can change comm letter', 7, 'change_commletter'),
(27, 'Can delete comm letter', 7, 'delete_commletter'),
(28, 'Can view comm letter', 7, 'view_commletter'),
(29, 'Can add event', 8, 'add_event'),
(30, 'Can change event', 8, 'change_event'),
(31, 'Can delete event', 8, 'delete_event'),
(32, 'Can view event', 8, 'view_event'),
(33, 'Can add memorandum', 9, 'add_memorandum'),
(34, 'Can change memorandum', 9, 'change_memorandum'),
(35, 'Can delete memorandum', 9, 'delete_memorandum'),
(36, 'Can view memorandum', 9, 'view_memorandum'),
(37, 'Can add moau', 10, 'add_moau'),
(38, 'Can change moau', 10, 'change_moau'),
(39, 'Can delete moau', 10, 'delete_moau'),
(40, 'Can view moau', 10, 'view_moau'),
(41, 'Can add special order', 11, 'add_specialorder'),
(42, 'Can change special order', 11, 'change_specialorder'),
(43, 'Can delete special order', 11, 'delete_specialorder'),
(44, 'Can view special order', 11, 'view_specialorder'),
(45, 'Can add moau signatories', 12, 'add_moausignatories'),
(46, 'Can change moau signatories', 12, 'change_moausignatories'),
(47, 'Can delete moau signatories', 12, 'delete_moausignatories'),
(48, 'Can view moau signatories', 12, 'view_moausignatories'),
(49, 'Can add moau parties', 13, 'add_moauparties'),
(50, 'Can change moau parties', 13, 'change_moauparties'),
(51, 'Can delete moau parties', 13, 'delete_moauparties'),
(52, 'Can view moau parties', 13, 'view_moauparties'),
(53, 'Can add event agencies', 14, 'add_eventagencies'),
(54, 'Can change event agencies', 14, 'change_eventagencies'),
(55, 'Can delete event agencies', 14, 'delete_eventagencies'),
(56, 'Can view event agencies', 14, 'view_eventagencies'),
(57, 'Can add attainment', 15, 'add_attainment'),
(58, 'Can change attainment', 15, 'change_attainment'),
(59, 'Can delete attainment', 15, 'delete_attainment'),
(60, 'Can view attainment', 15, 'view_attainment');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-02-24 13:01:19.458345', '2', '', 1, '[{\"added\": {}}]', 6, 1),
(2, '2024-02-24 13:03:29.444236', '2', '', 3, '', 6, 1),
(3, '2024-02-24 13:03:40.934659', '3', 'mad@mail.com', 1, '[{\"added\": {}}]', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(15, 'home', 'attainment'),
(7, 'home', 'commletter'),
(8, 'home', 'event'),
(14, 'home', 'eventagencies'),
(9, 'home', 'memorandum'),
(10, 'home', 'moau'),
(13, 'home', 'moauparties'),
(12, 'home', 'moausignatories'),
(11, 'home', 'specialorder'),
(6, 'home', 'user'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-02-24 12:57:26.894153'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-02-24 12:57:26.942884'),
(3, 'auth', '0001_initial', '2024-02-24 12:57:27.184229'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-02-24 12:57:27.276509'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-02-24 12:57:27.282028'),
(6, 'auth', '0004_alter_user_username_opts', '2024-02-24 12:57:27.288318'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-02-24 12:57:27.293837'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-02-24 12:57:27.295880'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-02-24 12:57:27.305172'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-02-24 12:57:27.315280'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-02-24 12:57:27.323814'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-02-24 12:57:27.337854'),
(13, 'auth', '0011_update_proxy_permissions', '2024-02-24 12:57:27.343779'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-02-24 12:57:27.356263'),
(15, 'home', '0001_initial', '2024-02-24 12:57:27.761281'),
(16, 'admin', '0001_initial', '2024-02-24 12:57:27.867149'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-02-24 12:57:27.874622'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-02-24 12:57:27.882989'),
(19, 'home', '0002_alter_moauparties_options_and_more', '2024-02-24 12:57:27.924498'),
(20, 'home', '0003_alter_commletter_letter_file_and_more', '2024-02-24 12:57:28.074763'),
(21, 'home', '0004_moau_moau_type_alter_specialorder_so_for', '2024-02-24 12:57:28.084417'),
(22, 'home', '0005_alter_user_groups_alter_user_user_permissions', '2024-02-24 12:57:28.104853'),
(23, 'sessions', '0001_initial', '2024-02-24 12:57:28.144800');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('eyowyg0rjuv3eul4k72nx66v5nrdg401', '.eJxVjDsOwjAQBe_iGlmxs_5ASZ8zROvdNQ4gR4qTCnF3iJQC2jcz76VG3NYybk2WcWJ1UUadfreE9JC6A75jvc2a5rouU9K7og_a9DCzPK-H-3dQsJVv7ZmcQCDP2fY-xq6PCchAdGdDYiVHYEsJUcB0fcgucWeydRCceIxGvT_lsjfT:1roO2Z:mT3zSrA4U9EFEapXQVVaAtAsKSuf68-5GZhRX4GXBUk', '2024-04-07 13:37:35.115747'),
('ioe0rhvql3llcng118khgvh7g5vasovu', '.eJxVjEEOwiAQRe_C2pAyQAdcuvcMzUwZpGpKUtqV8e7apAvd_vfef6mBtrUMW5NlmJI6K6NOvxvT-JB5B-lO863qsc7rMrHeFX3Qpq81yfNyuH8HhVr51pGloz5g7JDBeYBIxN7anCQLWozg2ATjMviRIFPvED13zhAFsELq_QHWLzeZ:1rmkhv:Hw6dEpcILYKzikwutSK-s8L5bJpEjpaUMPnfpuMvl-A', '2024-04-03 01:25:31.211261'),
('o1yfsq620o8sqsh0m9qphpvtzt45ndbp', '.eJxVjEEOwiAQRe_C2pAyQAdcuvcMzUwZpGpKUtqV8e7apAvd_vfef6mBtrUMW5NlmJI6K6NOvxvT-JB5B-lO863qsc7rMrHeFX3Qpq81yfNyuH8HhVr51pGloz5g7JDBeYBIxN7anCQLWozg2ATjMviRIFPvED13zhAFsELq_QHWLzeZ:1rfM1T:YYbI2igxgaXQHF8kbfdnUyQudAU4J5ZGN3gFVBON3J8', '2024-03-13 15:39:07.476925');

-- --------------------------------------------------------

--
-- Table structure for table `home_attainment`
--

CREATE TABLE `home_attainment` (
  `id` bigint(20) NOT NULL,
  `year_attended` varchar(50) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_commletter`
--

CREATE TABLE `home_commletter` (
  `letter_no` varchar(10) NOT NULL,
  `letter_file` varchar(100) DEFAULT NULL,
  `letter_subject` varchar(255) DEFAULT NULL,
  `letter_to` varchar(100) DEFAULT NULL,
  `letter_from` varchar(100) DEFAULT NULL,
  `letter_received_by` varchar(100) DEFAULT NULL,
  `letter_received_date` date DEFAULT NULL,
  `letter_noted_by` varchar(100) DEFAULT NULL,
  `letter_recom_approval` varchar(100) DEFAULT NULL,
  `letter_approved_by` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_event`
--

CREATE TABLE `home_event` (
  `event_id` varchar(10) NOT NULL,
  `event_name` varchar(100) DEFAULT NULL,
  `event_agenda` varchar(100) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_venue` varchar(100) DEFAULT NULL,
  `no_participants` varchar(100) DEFAULT NULL,
  `impl_agency` varchar(100) DEFAULT NULL,
  `attendance_file` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_event`
--

INSERT INTO `home_event` (`event_id`, `event_name`, `event_agenda`, `event_date`, `event_venue`, `no_participants`, `impl_agency`, `attendance_file`, `created_at`, `created_by`, `modified_at`, `modified_by`) VALUES
('2222', 'birthday', 'ad', '2024-02-29', 'wmsu', '3', 'wmsuu', '22222_AIoc7UB.PNG', '2024-03-24 13:53:51.509341', 'admin', '2024-03-24 13:53:51.509341', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_eventagencies`
--

CREATE TABLE `home_eventagencies` (
  `id` bigint(20) NOT NULL,
  `agency_id` varchar(100) DEFAULT NULL,
  `agency_role` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `event_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_memorandum`
--

CREATE TABLE `home_memorandum` (
  `memo_no` varchar(10) NOT NULL,
  `memo_date` date DEFAULT NULL,
  `memo_file` varchar(100) DEFAULT NULL,
  `memo_subject` varchar(255) DEFAULT NULL,
  `memo_content` longtext DEFAULT NULL,
  `memo_to` varchar(100) DEFAULT NULL,
  `memo_to_pos` varchar(100) DEFAULT NULL,
  `memo_thru` varchar(100) DEFAULT NULL,
  `memo_thru_pos` varchar(100) DEFAULT NULL,
  `memo_from` varchar(100) DEFAULT NULL,
  `memo_from_pos` varchar(100) DEFAULT NULL,
  `memo_recomm_by` varchar(100) DEFAULT NULL,
  `memo_approved_by` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_moau`
--

CREATE TABLE `home_moau` (
  `moau_no` varchar(10) NOT NULL,
  `moau_file` varchar(100) DEFAULT NULL,
  `moau_title` varchar(255) DEFAULT NULL,
  `moau_objective` longtext DEFAULT NULL,
  `moau_approve_date` date DEFAULT NULL,
  `moau_notarized_by` varchar(100) DEFAULT NULL,
  `moau_notarized_date` date DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `moau_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_moau`
--

INSERT INTO `home_moau` (`moau_no`, `moau_file`, `moau_title`, `moau_objective`, `moau_approve_date`, `moau_notarized_by`, `moau_notarized_date`, `created_at`, `created_by`, `modified_at`, `modified_by`, `moau_type`) VALUES
('12344', '22222.PNG', 'Title MOAAAA', 'w', '2024-03-04', 'Mr. Reyes', '2024-03-09', '2024-03-24 13:47:15.945893', 'admin', '2024-03-24 13:47:15.946891', NULL, 'MOA'),
('3', 'EMODETECT-RECOMMENDATION.docx', 'asdasd', 'asdsrhyryjyd', '2024-02-24', 'nas', '2024-02-29', '2024-02-24 13:06:46.217731', 'admin', '2024-02-24 13:06:46.217731', NULL, 'MOA'),
('ahvdjabwd', 'SAB_IAS.pdf', 'titel', 'asdasdfaf', '2024-02-07', 'mahdi', '2024-02-13', '2024-02-24 13:04:42.137748', 'admin', '2024-02-24 13:04:42.137748', NULL, 'MOA'),
('vkaeyfv', '3-Chapter-1-to-7-12.14.23.pdf', 'wjkegfivwv', 'sbhfbshjbjhdf', '2024-03-26', 'nas', '2024-03-29', '2024-03-24 11:45:24.485637', 'admin', '2024-03-24 11:45:24.485637', NULL, 'MOA');

-- --------------------------------------------------------

--
-- Table structure for table `home_moauparties`
--

CREATE TABLE `home_moauparties` (
  `id` bigint(20) NOT NULL,
  `agency` varchar(100) DEFAULT NULL,
  `represented_by` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `referred_to_as` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `moau_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_moausignatories`
--

CREATE TABLE `home_moausignatories` (
  `id` bigint(20) NOT NULL,
  `signed_by` varchar(100) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `agency` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) DEFAULT NULL,
  `moau_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_specialorder`
--

CREATE TABLE `home_specialorder` (
  `so_no` varchar(10) NOT NULL,
  `so_date` date DEFAULT NULL,
  `so_file` varchar(100) DEFAULT NULL,
  `so_subject` varchar(255) DEFAULT NULL,
  `so_content` longtext DEFAULT NULL,
  `so_for` varchar(100) DEFAULT NULL,
  `so_signedby` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `modified_at` datetime(6) NOT NULL,
  `modified_by` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_user`
--

CREATE TABLE `home_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone_num` varchar(11) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `employee_num` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `nationality` varchar(150) DEFAULT NULL,
  `occupation` varchar(150) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_user`
--

INSERT INTO `home_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `name`, `email`, `phone_num`, `avatar`, `employee_num`, `gender`, `nationality`, `occupation`, `birth_date`, `address`) VALUES
(1, 'pbkdf2_sha256$600000$LiqcsSJdKDlWRldx6Xxwyu$vzadJGQzHBDrEwzMSTYF/S3Xgy08J0nBKW7EK7bflH4=', '2024-03-24 13:37:35.110761', 1, 'admin', '', '', 1, 1, '2024-02-24 12:59:53.513265', NULL, 'admin@mail.com', NULL, 'avatar.svg', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'mad', NULL, 0, 'mad@mail.com', 'mad', 'mad', 0, 1, '2024-02-24 13:03:31.000000', 'mad mad', 'mad@mail.com', NULL, 'avatar.svg', NULL, NULL, NULL, NULL, NULL, 'aysvdububwd');

-- --------------------------------------------------------

--
-- Table structure for table `home_user_groups`
--

CREATE TABLE `home_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_user_user_permissions`
--

CREATE TABLE `home_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_home_user_id` (`user_id`);

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
-- Indexes for table `home_attainment`
--
ALTER TABLE `home_attainment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_attainment_user_id_afdb697f_fk_home_user_id` (`user_id`);

--
-- Indexes for table `home_commletter`
--
ALTER TABLE `home_commletter`
  ADD PRIMARY KEY (`letter_no`);

--
-- Indexes for table `home_event`
--
ALTER TABLE `home_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `home_eventagencies`
--
ALTER TABLE `home_eventagencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_eventagencies_event_id_2ef0e7e1_fk_home_event_event_id` (`event_id`);

--
-- Indexes for table `home_memorandum`
--
ALTER TABLE `home_memorandum`
  ADD PRIMARY KEY (`memo_no`);

--
-- Indexes for table `home_moau`
--
ALTER TABLE `home_moau`
  ADD PRIMARY KEY (`moau_no`);

--
-- Indexes for table `home_moauparties`
--
ALTER TABLE `home_moauparties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_moauparties_moau_id_8229cf1b_fk_home_moau_moau_no` (`moau_id`);

--
-- Indexes for table `home_moausignatories`
--
ALTER TABLE `home_moausignatories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_moausignatories_moau_id_f9dc163e_fk_home_moau_moau_no` (`moau_id`);

--
-- Indexes for table `home_specialorder`
--
ALTER TABLE `home_specialorder`
  ADD PRIMARY KEY (`so_no`);

--
-- Indexes for table `home_user`
--
ALTER TABLE `home_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `home_user_groups`
--
ALTER TABLE `home_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_user_groups_user_id_group_id_b0f141dd_uniq` (`user_id`,`group_id`),
  ADD KEY `home_user_groups_group_id_87aa9e3d_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `home_user_user_permissions`
--
ALTER TABLE `home_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_user_user_permissions_user_id_permission_id_98b37912_uniq` (`user_id`,`permission_id`),
  ADD KEY `home_user_user_permi_permission_id_ccfbb3e4_fk_auth_perm` (`permission_id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `home_attainment`
--
ALTER TABLE `home_attainment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_eventagencies`
--
ALTER TABLE `home_eventagencies`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_moauparties`
--
ALTER TABLE `home_moauparties`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_moausignatories`
--
ALTER TABLE `home_moausignatories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_user`
--
ALTER TABLE `home_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_user_groups`
--
ALTER TABLE `home_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_user_user_permissions`
--
ALTER TABLE `home_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`);

--
-- Constraints for table `home_attainment`
--
ALTER TABLE `home_attainment`
  ADD CONSTRAINT `home_attainment_user_id_afdb697f_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`);

--
-- Constraints for table `home_eventagencies`
--
ALTER TABLE `home_eventagencies`
  ADD CONSTRAINT `home_eventagencies_event_id_2ef0e7e1_fk_home_event_event_id` FOREIGN KEY (`event_id`) REFERENCES `home_event` (`event_id`);

--
-- Constraints for table `home_moauparties`
--
ALTER TABLE `home_moauparties`
  ADD CONSTRAINT `home_moauparties_moau_id_8229cf1b_fk_home_moau_moau_no` FOREIGN KEY (`moau_id`) REFERENCES `home_moau` (`moau_no`);

--
-- Constraints for table `home_moausignatories`
--
ALTER TABLE `home_moausignatories`
  ADD CONSTRAINT `home_moausignatories_moau_id_f9dc163e_fk_home_moau_moau_no` FOREIGN KEY (`moau_id`) REFERENCES `home_moau` (`moau_no`);

--
-- Constraints for table `home_user_groups`
--
ALTER TABLE `home_user_groups`
  ADD CONSTRAINT `home_user_groups_group_id_87aa9e3d_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `home_user_groups_user_id_28bf3710_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`);

--
-- Constraints for table `home_user_user_permissions`
--
ALTER TABLE `home_user_user_permissions`
  ADD CONSTRAINT `home_user_user_permi_permission_id_ccfbb3e4_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `home_user_user_permissions_user_id_28c4b0a2_fk_home_user_id` FOREIGN KEY (`user_id`) REFERENCES `home_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
