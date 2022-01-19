-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table ciclms.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.categories: ~4 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
REPLACE INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `desc`) VALUES
	(1, 'Finance', '2022-01-15 20:47:00', '2022-01-15 23:51:39', '<p>Understanding money management and how needed funds are acquired.</p>'),
	(2, 'Psychology', '2022-01-15 23:49:00', '2022-01-15 23:51:53', '<p>Psychology is really a very new science, with most advances happening over the past 150 years or so.</p>'),
	(3, 'Statistics', '2022-01-15 23:50:00', '2022-01-15 23:52:01', '<p>Statistics is the science concerned with developing and studying methods for collecting, analyzing, interpreting and presenting empirical data.</p>'),
	(4, 'Management Infrormation System', '2022-01-15 23:50:00', '2022-01-15 23:52:10', '<p>study of people, technology, organizations, and the relationships among them.</p>');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table ciclms.courses
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortdesc` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.courses: ~0 rows (approximately)
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
REPLACE INTO `courses` (`id`, `name`, `category_id`, `price`, `created_at`, `updated_at`, `desc`, `image`, `shortdesc`) VALUES
	(1, 'Database Management Systems (DBMS)', 4, 10, '2022-01-16 00:47:00', '2022-01-16 01:02:29', '<p>DBMS is a general-purpose software designed to create and manage the database in an efficient manner. It allows users to define, create, maintain and share the database among various users and applications. Users can construct their own databases using DBMS to satisfy their business requirements. In fact, databases are used everywhere and are key components of e-commerce and other web-based applications.</p>\r\n<p>With DBMS, redundancy (or duplication) of data can be controlled in contrast to the traditional file systems, there is security and consistency of data and many more advantages which will be discussed. This course structure is intended for college-going students as well as for those preparing for GATE and campus interviews. Along with this, the previous year\'s GATE questions will be solved.</p>\r\n<p>Official GATE Syllabus: ER-model, Relational model (relational algebra, tuple calculus), integrity constraints, normal forms, transactions and concurrency control, file organization, indexing.</p>\r\n<p>The list of topics to be covered is as per the following order:</p>\r\n<ol>\r\n<li><strong>Introduction</strong>\r\n<ol>\r\n<li>Introduction to DBMS</li>\r\n<li>Example of Database</li>\r\n<li>Characteristics of the database approach</li>\r\n<li>Actors on the scene</li>\r\n<li>Workers behind the scene</li>\r\n<li>Advantages of DBMS Approach</li>\r\n<li>Brief history of Database Applications</li>\r\n<li>When not to use DBMS</li>\r\n<li>Data models, schemas, instances</li>\r\n<li>Three- schema architecture and data independence</li>\r\n<li>Database languages and interfaces</li>\r\n<li>Database System Environment</li>\r\n<li>Centralized and client-server architectures</li>\r\n<li>DBMS Classification</li>\r\n</ol>\r\n</li>\r\n<li><strong>Entity-Relationship Model</strong>\r\n<ol>\r\n<li>High &ndash;Level Conceptual Data Models</li>\r\n<li>Database Application Example</li>\r\n<li>Entity types, entity sets, attributes, and keys</li>\r\n<li>Relationship types, relational sets, roles, and structural constraints</li>\r\n<li>Weak entity types</li>\r\n<li>Refining ER Design</li>\r\n<li>ER Diagrams, Naming conventions, design issues</li>\r\n</ol>\r\n</li>\r\n<li><strong>Relational Model and Relational Algebra</strong>\r\n<ol>\r\n<li>Relational model concepts</li>\r\n<li>Relational model constraints and relational database schemas</li>\r\n<li>Update operations, transactions, constraint violations</li>\r\n<li>Unary relational operations (SELECT &amp; PROJECT)</li>\r\n<li>Relational algebra operations</li>\r\n<li>Binary relational operations</li>\r\n<li>Additional Relational operations</li>\r\n<li>Examples of queries in relational algebra</li>\r\n<li>Relational database design</li>\r\n</ol>\r\n</li>\r\n<li><strong>SQL &ndash; 1</strong>\r\n<ol>\r\n<li>SQL Data Definition and Data Types</li>\r\n<li>Specifying basic constraints in SQL</li>\r\n<li>Schema change statements in SQL</li>\r\n<li>Basic queries in SQL</li>\r\n<li>More complex SQL Queries</li>\r\n</ol>\r\n</li>\r\n<li><strong>SQL &ndash; 2<br /></strong>\r\n<ol>\r\n<li>Insert, Delete, and Update statements in SQL</li>\r\n<li>Specifying constraints as Assertion and Trigger</li>\r\n<li>Views (Virtual Tables) in SQL</li>\r\n<li>Additional features of SQL</li>\r\n<li>Database programming issues and techniques</li>\r\n<li>Embedded SQL, Dynamic SQL</li>\r\n<li>Database stored procedures and SQL / PSM</li>\r\n</ol>\r\n</li>\r\n<li><strong>Database Design &ndash; 1</strong>\r\n<ol>\r\n<li>Informal Design Guidelines for Relation Schemas</li>\r\n<li>Functional Dependencies</li>\r\n<li>Normal Forms Based on Primary Keys</li>\r\n<li>General Definitions of Second and Third Normal Forms</li>\r\n<li>Boyce-Codd Normal Form</li>\r\n</ol>\r\n</li>\r\n<li><strong>Database Design &ndash; 2<br /></strong>\r\n<ol>\r\n<li>Properties of Relational Decompositions</li>\r\n<li>Algorithms for Relational Database Schema Design</li>\r\n<li>Multivalued Dependencies and Fourth Normal Form</li>\r\n<li>Join Dependencies and Fifth Normal Form; Inclusion Dependencies</li>\r\n<li>Other Dependencies and Normal Forms</li>\r\n</ol>\r\n</li>\r\n<li><strong>Transaction Management</strong>\r\n<ol>\r\n<li>The ACID Properties</li>\r\n<li>Transactions and Schedules</li>\r\n<li>Concurrent Execution of Transactions</li>\r\n<li>Lock- Based Concurrency Control</li>\r\n<li>Performance of locking</li>\r\n<li>Transaction support in SQL</li>\r\n<li>Introduction to crash recovery</li>\r\n<li>2PL, Serializability, and Recoverability</li>\r\n<li>Lock Management</li>\r\n<li>Introduction to ARIES</li>\r\n<li>The log</li>\r\n<li>Other recovery-related structures</li>\r\n<li>The write-ahead log protocol</li>\r\n<li>Checkpointing</li>\r\n<li>Recovering from a System Crash</li>\r\n<li>Media Recovery</li>\r\n<li>Other approaches and interaction with concurrency control</li>\r\n</ol>\r\n</li>\r\n</ol>\r\n<p>&nbsp;</p>', 'courses\\January2022\\CKflQGamWAOxqZWrO87M.png', 'DBMS is a general-purpose software designed to create and manage the database in an efficient manner. It allows users to define, create, maintain and share the database among various users and applications.');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;

-- Dumping structure for table ciclms.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `billable_id` bigint(20) unsigned NOT NULL,
  `billable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customers_billable_id_billable_type_index` (`billable_id`,`billable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.customers: ~1 rows (approximately)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
REPLACE INTO `customers` (`id`, `billable_id`, `billable_type`, `trial_ends_at`, `created_at`, `updated_at`) VALUES
	(1, 2, 'App\\Models\\User', NULL, '2022-01-17 23:50:50', '2022-01-17 23:50:50');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Dumping structure for table ciclms.data_rows
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.data_rows: ~44 rows (approximately)
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
REPLACE INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
	(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
	(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
	(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
	(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
	(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
	(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
	(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":0}', 10),
	(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 11),
	(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
	(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
	(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
	(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(23, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
	(24, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
	(25, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
	(26, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(27, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(28, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(29, 4, 'desc', 'rich_text_box', 'Desc', 0, 1, 1, 1, 1, 1, '{}', 5),
	(30, 4, 'category_hasmany_course_relationship', 'relationship', 'courses', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\Course","table":"courses","type":"hasMany","column":"category_id","key":"id","label":"name","pivot_table":"categories","pivot":"0","taggable":null}', 6),
	(31, 5, 'course_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\Category","table":"categories","type":"belongsTo","column":"category_id","key":"id","label":"name","pivot_table":"categories","pivot":"0","taggable":"0"}', 3),
	(32, 5, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
	(33, 5, 'category_id', 'text', 'Category Id', 1, 1, 1, 1, 1, 1, '{}', 4),
	(34, 5, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 5),
	(35, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
	(36, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
	(37, 5, 'desc', 'rich_text_box', 'Course Details', 0, 1, 1, 1, 1, 1, '{}', 8),
	(38, 5, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 6),
	(39, 5, 'shortdesc', 'text_area', 'Short Description', 0, 1, 1, 1, 1, 1, '{}', 7),
	(40, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
	(41, 10, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
	(42, 10, 'course_id', 'text', 'Course Id', 0, 1, 1, 1, 1, 1, '{}', 3),
	(43, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
	(44, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
	(45, 6, 'material_belongsto_course_relationship', 'relationship', 'courses', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Models\\\\Course","table":"courses","type":"belongsTo","column":"course","key":"id","label":"name","pivot_table":"categories","pivot":"0","taggable":"0"}', 2),
	(46, 6, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
	(47, 6, 'course', 'text', 'Course', 0, 1, 1, 1, 1, 1, '{}', 3),
	(48, 6, 'desc', 'rich_text_box', 'Desc', 0, 1, 1, 1, 1, 1, '{}', 4),
	(49, 6, 'video', 'text', 'Video', 0, 1, 1, 1, 1, 1, '{}', 5),
	(50, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
	(51, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;

-- Dumping structure for table ciclms.data_types
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.data_types: ~9 rows (approximately)
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
REPLACE INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
	(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-01-08 22:56:20', '2022-01-08 22:56:20'),
	(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-01-08 22:56:21', '2022-01-08 22:56:21'),
	(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-01-08 22:56:21', '2022-01-08 22:56:21'),
	(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-folder', 'App\\Models\\Category', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2022-01-15 20:46:45', '2022-01-15 23:51:16'),
	(5, 'courses', 'courses', 'Course', 'Courses', 'voyager-study', 'App\\Models\\Course', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2022-01-15 21:01:14', '2022-01-16 00:51:19'),
	(6, 'materials', 'materials', 'Material', 'Materials', 'voyager-play', 'App\\Models\\Material', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null,"scope":null}', '2022-01-15 21:02:16', '2022-01-18 01:17:28'),
	(7, 'tests', 'tests', 'Test', 'Tests', 'voyager-file-text', 'App\\Models\\Test', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}', '2022-01-15 21:03:20', '2022-01-15 21:03:20'),
	(10, 'payments', 'payments', 'Payment', 'Payments', NULL, 'App\\Models\\Payment', NULL, NULL, NULL, 1, 0, '{"order_column":null,"order_display_column":null,"order_direction":"asc","default_search_key":null}', '2022-01-18 00:15:25', '2022-01-18 00:15:25');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;

-- Dumping structure for table ciclms.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table ciclms.materials
CREATE TABLE IF NOT EXISTS `materials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.materials: ~0 rows (approximately)
/*!40000 ALTER TABLE `materials` DISABLE KEYS */;
REPLACE INTO `materials` (`id`, `title`, `course`, `desc`, `video`, `created_at`, `updated_at`) VALUES
	(1, 'Introduction to Database Management Systems (DBMS)', 1, '<p><span class="style-scope yt-formatted-string" dir="auto">Topics discussed: </span></p>\r\n<ol>\r\n<li><span class="style-scope yt-formatted-string" dir="auto">Definitions/Terminologies. </span></li>\r\n<li><span class="style-scope yt-formatted-string" dir="auto">DBMS definition &amp; functionalities. </span></li>\r\n<li><span class="style-scope yt-formatted-string" dir="auto">Properties of the database. </span></li>\r\n<li><span class="style-scope yt-formatted-string" dir="auto">Simplified Database System environment. </span></li>\r\n<li><span class="style-scope yt-formatted-string" dir="auto">Example of a university database.</span></li>\r\n</ol>', 'https://www.youtube.com/watch?v=6Iu45VZGQDk&list=PLBlnK6fEyqRi_CUQ-FXxgzKQ1dwr_ZJWZ&index=1', '2022-01-18 01:17:56', '2022-01-18 01:17:56'),
	(2, 'DBMS Characteristics', 1, '<p><span class="style-scope yt-formatted-string" dir="auto">Topics discussed:</span></p>\r\n<p><span class="style-scope yt-formatted-string" dir="auto">Characteristics of the Database Approach:</span></p>\r\n<ul>\r\n<li><span class="style-scope yt-formatted-string" dir="auto">Self-describing Nature of a Database System.</span></li>\r\n<li><span class="style-scope yt-formatted-string" dir="auto">Insulation between Programs and Data, and Data Abstraction.</span></li>\r\n<li><span class="style-scope yt-formatted-string" dir="auto">Support of Multiple Views of the Data.</span></li>\r\n<li><span class="style-scope yt-formatted-string" dir="auto">Sharing of Data and Multiuser Transaction Processing.<br /></span></li>\r\n</ul>', 'https://www.youtube.com/watch?v=wClEbCyWryI&list=PLBlnK6fEyqRi_CUQ-FXxgzKQ1dwr_ZJWZ&index=2', '2022-01-18 01:19:39', '2022-01-18 01:19:39');
/*!40000 ALTER TABLE `materials` ENABLE KEYS */;

-- Dumping structure for table ciclms.menus
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.menus: ~0 rows (approximately)
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
REPLACE INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '2022-01-08 22:56:21', '2022-01-08 22:56:21');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Dumping structure for table ciclms.menu_items
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.menu_items: ~14 rows (approximately)
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
REPLACE INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
	(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-01-08 22:56:21', '2022-01-08 22:56:21', 'voyager.dashboard', NULL),
	(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2022-01-08 22:56:21', '2022-01-15 23:43:23', 'voyager.media.index', NULL),
	(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2022-01-08 22:56:21', '2022-01-08 22:56:21', 'voyager.users.index', NULL),
	(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2022-01-08 22:56:21', '2022-01-08 22:56:21', 'voyager.roles.index', NULL),
	(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2022-01-08 22:56:21', '2022-01-15 23:44:20', NULL, NULL),
	(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-01-08 22:56:21', '2022-01-15 23:43:23', 'voyager.menus.index', NULL),
	(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-01-08 22:56:21', '2022-01-15 23:43:23', 'voyager.database.index', NULL),
	(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-01-08 22:56:21', '2022-01-15 23:43:23', 'voyager.compass.index', NULL),
	(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-01-08 22:56:21', '2022-01-15 23:43:23', 'voyager.bread.index', NULL),
	(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 7, '2022-01-08 22:56:21', '2022-01-15 23:44:20', 'voyager.settings.index', NULL),
	(11, 1, 'Categories', '', '_self', 'voyager-folder', NULL, 15, 1, '2022-01-15 20:46:45', '2022-01-15 23:44:11', 'voyager.categories.index', NULL),
	(12, 1, 'Courses', '', '_self', 'voyager-study', NULL, 15, 2, '2022-01-15 21:01:14', '2022-01-15 23:44:13', 'voyager.courses.index', NULL),
	(13, 1, 'Materials', '', '_self', 'voyager-play', NULL, 15, 3, '2022-01-15 21:02:16', '2022-01-15 23:44:14', 'voyager.materials.index', NULL),
	(14, 1, 'Tests', '', '_self', 'voyager-file-text', NULL, 15, 4, '2022-01-15 21:03:20', '2022-01-15 23:44:17', 'voyager.tests.index', NULL),
	(15, 1, 'Courses', '', '_self', 'voyager-study', '#000000', NULL, 5, '2022-01-15 23:44:04', '2022-01-15 23:44:20', NULL, ''),
	(16, 1, 'Payments', '', '_self', NULL, NULL, NULL, 8, '2022-01-18 00:15:25', '2022-01-18 00:15:25', 'voyager.payments.index', NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;

-- Dumping structure for table ciclms.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.migrations: ~27 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_01_01_000000_add_voyager_user_fields', 1),
	(4, '2016_01_01_000000_create_data_types_table', 1),
	(5, '2016_05_19_173453_create_menu_table', 1),
	(6, '2016_10_21_190000_create_roles_table', 1),
	(7, '2016_10_21_190000_create_settings_table', 1),
	(8, '2016_11_30_135954_create_permission_table', 1),
	(9, '2016_11_30_141208_create_permission_role_table', 1),
	(10, '2016_12_26_201236_data_types__add__server_side', 1),
	(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
	(12, '2017_01_14_005015_create_translations_table', 1),
	(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
	(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
	(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
	(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
	(17, '2017_08_05_000000_add_group_to_settings_table', 1),
	(18, '2017_11_26_013050_add_user_role_relationship', 1),
	(19, '2017_11_26_015000_create_user_roles_table', 1),
	(20, '2018_03_11_000000_add_user_settings', 1),
	(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
	(22, '2018_03_16_000000_make_settings_value_nullable', 1),
	(23, '2019_08_19_000000_create_failed_jobs_table', 1),
	(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(25, '2019_05_03_000001_create_customers_table', 2),
	(26, '2019_05_03_000002_create_subscriptions_table', 2),
	(27, '2019_05_03_000003_create_receipts_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table ciclms.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table ciclms.payments
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.payments: ~0 rows (approximately)
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
REPLACE INTO `payments` (`id`, `user_id`, `course_id`, `created_at`, `updated_at`) VALUES
	(1, 2, 1, '2022-01-18 00:45:41', '2022-01-18 00:45:41');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;

-- Dumping structure for table ciclms.permission_role
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.permission_role: ~49 rows (approximately)
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
REPLACE INTO `permission_role` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(11, 1),
	(12, 1),
	(13, 1),
	(14, 1),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(21, 1),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(26, 1),
	(26, 2),
	(27, 1),
	(28, 1),
	(29, 1),
	(30, 1),
	(31, 1),
	(31, 2),
	(32, 1),
	(33, 1),
	(34, 1),
	(35, 1),
	(36, 1),
	(37, 1),
	(38, 1),
	(39, 1),
	(40, 1),
	(41, 1),
	(42, 1),
	(43, 1),
	(44, 1),
	(45, 1),
	(46, 1),
	(47, 1),
	(48, 1),
	(49, 1),
	(50, 1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Dumping structure for table ciclms.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table ciclms.receipts
CREATE TABLE IF NOT EXISTS `receipts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `billable_id` bigint(20) unsigned NOT NULL,
  `billable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paddle_subscription_id` bigint(20) unsigned DEFAULT NULL,
  `checkout_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `receipt_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paid_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `receipts_order_id_unique` (`order_id`),
  UNIQUE KEY `receipts_receipt_url_unique` (`receipt_url`),
  KEY `receipts_billable_id_billable_type_index` (`billable_id`,`billable_type`),
  KEY `receipts_paddle_subscription_id_index` (`paddle_subscription_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.receipts: ~4 rows (approximately)
/*!40000 ALTER TABLE `receipts` DISABLE KEYS */;
REPLACE INTO `receipts` (`id`, `billable_id`, `billable_type`, `paddle_subscription_id`, `checkout_id`, `order_id`, `amount`, `tax`, `currency`, `quantity`, `receipt_url`, `paid_at`, `created_at`, `updated_at`) VALUES
	(1, 2, 'App\\Models\\User', NULL, '466133-chrecf440390f26-1395efcd9b', '250578', '10', '0', 'USD', 1, 'http://sandbox-my.paddle.com/receipt/250578/466133-chrecf440390f26-1395efcd9b', '2022-01-17 23:50:48', '2022-01-17 23:50:50', '2022-01-17 23:50:50'),
	(2, 2, 'App\\Models\\User', NULL, '466136-chre6f910183483-482fe0cb9e', '250580', '10', '0', 'USD', 1, 'http://sandbox-my.paddle.com/receipt/250580/466136-chre6f910183483-482fe0cb9e', '2022-01-18 00:32:48', '2022-01-18 00:32:50', '2022-01-18 00:32:50'),
	(3, 2, 'App\\Models\\User', NULL, '466137-chre7c81689bc47-f8ff376d73', '250581', '10', '0', 'USD', 1, 'http://sandbox-my.paddle.com/receipt/250581/466137-chre7c81689bc47-f8ff376d73', '2022-01-18 00:33:57', '2022-01-18 00:33:59', '2022-01-18 00:33:59'),
	(4, 2, 'App\\Models\\User', NULL, '466138-chre1a37d560538-6f942741f7', '250582', '10', '0', 'USD', 1, 'http://sandbox-my.paddle.com/receipt/250582/466138-chre1a37d560538-6f942741f7', '2022-01-18 00:38:34', '2022-01-18 00:38:36', '2022-01-18 00:38:36');
/*!40000 ALTER TABLE `receipts` ENABLE KEYS */;

-- Dumping structure for table ciclms.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.settings: ~10 rows (approximately)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
REPLACE INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
	(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
	(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
	(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
	(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
	(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
	(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
	(7, 'admin.description', 'Admin Description', 'Welcome to CIC Admin.', '', 'text', 2, 'Admin'),
	(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
	(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
	(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Dumping structure for table ciclms.subscriptions
CREATE TABLE IF NOT EXISTS `subscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `billable_id` bigint(20) unsigned NOT NULL,
  `billable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paddle_id` int(11) NOT NULL,
  `paddle_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paddle_plan` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `paused_from` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subscriptions_paddle_id_unique` (`paddle_id`),
  KEY `subscriptions_billable_id_billable_type_index` (`billable_id`,`billable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.subscriptions: ~0 rows (approximately)
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;

-- Dumping structure for table ciclms.tests
CREATE TABLE IF NOT EXISTS `tests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.tests: ~0 rows (approximately)
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;

-- Dumping structure for table ciclms.translations
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.translations: ~0 rows (approximately)
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;

-- Dumping structure for table ciclms.user_roles
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table ciclms.user_roles: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
