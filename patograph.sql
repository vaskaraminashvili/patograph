/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80036 (8.0.36-0ubuntu0.22.04.1)
 Source Host           : localhost:3306
 Source Schema         : patograph

 Target Server Type    : MySQL
 Target Server Version : 80036 (8.0.36-0ubuntu0.22.04.1)
 File Encoding         : 65001

 Date: 04/06/2024 18:40:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cache
-- ----------------------------
BEGIN;
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1717162653);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1717162653;', 1717162653);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1717158465);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES ('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1717158465;', 1717158465);
COMMIT;

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cache_locks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
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

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of job_batches
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (4, '2024_05_23_142451_create_sliders_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (5, '2024_05_25_140434_create_services_table', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (6, '2024_05_25_211550_create_news_table', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (7, '2024_05_31_122253_create_projects_table', 3);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (8, '2024_05_31_123721_create_partners_table', 4);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (9, '2024_05_31_123722_create_plans_table', 4);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (10, '2024_05_31_123723_create_teams_table', 4);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (11, '2024_05_31_134423_alter_plans_table', 5);
COMMIT;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortDesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int NOT NULL,
  `deleted_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
BEGIN;
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (1, 'Rerum ut iure nesciunt qui facilis.', 'a', 'Voluptatem doloribus eaque aspernatur consequatur doloribus iusto. Sit consectetur eius deserunt. Ea quas eius commodi sapiente est molestiae maxime. Unde dolore rerum in impedit.', 'draft', 'Voluptas quos ut accusamus impedit tenetur cupiditate aspernatur. Deleniti ut numquam saepe omnis voluptatem mollitia aut. Dolorem autem optio adipisci ipsa.', 41, '2022-08-25 10:35:31', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (2, 'Eaque dolores eius repudiandae eos.', 'aliquam', 'Dicta qui saepe quod. Odio qui est ut non. Et ab libero dolorem in. Voluptatem enim laudantium iste. Fugiat occaecati a commodi voluptatem ducimus sint officiis.', 'published', 'Voluptatem quo nobis ut veritatis blanditiis at. Voluptatem aliquam laborum qui blanditiis officia libero. Eveniet harum nesciunt amet voluptas enim.', 61, '2001-01-10 07:58:02', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (3, 'Eos beatae facilis quis est.', 'facilis', 'Molestias unde architecto repellat consequatur placeat consequatur quos. Architecto omnis voluptas est. Rem voluptatem quia ducimus neque.', 'draft', 'Quam dolores odio repudiandae et. Ipsam esse culpa amet. Dolore voluptatem ipsum eligendi ut voluptate corrupti numquam molestiae. Reprehenderit perferendis incidunt qui tempora saepe qui.', 72, '2017-08-05 13:38:08', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (4, 'Adipisci vel qui laborum at est.', 'quam', 'Quis ut illum velit culpa. Sint dolore eum cupiditate et neque et. Dolores illum dolor voluptatem. Odit ratione vel numquam cum incidunt ipsam.', 'draft', 'Veritatis atque architecto possimus ducimus. Provident dignissimos autem aperiam alias quae sunt quis.', 80, '2015-05-07 05:25:12', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (5, 'Esse ab aut eum eligendi.', 'soluta', 'Eum voluptas et molestiae et. Qui officiis dolorem facere necessitatibus velit assumenda incidunt. Illum consequuntur libero quisquam aut molestiae.', 'draft', 'Architecto vero distinctio consequatur quos. Nihil nesciunt ea aut in minus. Vitae omnis omnis placeat facere illum fuga quas.', 54, '2016-07-03 07:50:28', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (6, 'Quia autem qui in.', 'maiores', 'Distinctio repellat ipsam non quae molestiae. Ullam illum magni quia vitae. Sit voluptatem voluptatem repudiandae natus ab labore deleniti.', 'draft', 'Voluptate omnis harum voluptatem quis. Facere sint et repellendus. Totam eveniet amet nam numquam. Quisquam ut ut ut repellat voluptas sunt in.', 71, '1971-11-21 22:13:21', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (7, 'Id nulla qui beatae.', 'in', 'Est non ullam laudantium nisi eaque totam ab qui. In fugiat qui omnis incidunt. Natus dolores nihil ad deserunt iure. Dolor consequatur in recusandae et.', 'published', 'Dignissimos repudiandae cupiditate veniam voluptas. Nobis occaecati quia eos beatae vitae in cumque. Quasi commodi omnis voluptatibus animi vero unde.', 67, '2015-11-27 09:08:30', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (8, 'Et sit sequi quo cumque.', 'modi', 'Quibusdam alias cumque quidem. Veniam maiores cum ipsa mollitia molestiae. Maiores eum ut consequatur sint quos corporis.', 'draft', 'Et ut numquam cumque. Voluptas animi illum quas rem ratione. Minus modi expedita fugit iure. Suscipit qui asperiores et exercitationem et.', 8, '2014-04-30 20:33:40', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (9, 'Cumque et odio.', 'modi', 'Debitis facilis magnam autem eum. Aut officia nihil iste ut. Id voluptates officia omnis.', 'published', 'Et veritatis suscipit porro aliquid. Aliquam quis minima tempora natus adipisci ipsam occaecati ex. Facilis doloribus modi corporis aut. Laborum reprehenderit numquam dolorum odit accusantium.', 67, '2017-12-04 15:58:02', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (10, 'Mollitia nihil ducimus doloremque tempora.', 'impedit', 'Eos deserunt cum exercitationem eos nam voluptate velit voluptas. Quidem aut id quas facere. Nemo et id quia quisquam.', 'draft', 'Dolores aut itaque pariatur totam quia aut debitis. Minima ut illo cum nesciunt doloribus quod. In vitae deleniti consequuntur sed ut. Explicabo quis officiis harum et.', 89, '2010-09-12 16:09:50', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (11, 'Dolores culpa sit modi quae.', 'omnis', 'Qui doloremque quia veritatis vel ratione sapiente blanditiis. Sed enim omnis maxime incidunt ratione. Eum dolores cumque soluta et. Suscipit consequatur dolor sit debitis.', 'draft', 'Qui et dolorem tempora id. Alias reiciendis consequuntur voluptatem consequuntur. Qui nihil iste sed iusto. Dolores nostrum saepe qui fugiat aliquam enim ea.', 26, '1995-05-25 01:55:20', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (12, 'Ea vitae dolorem quas hic qui.', 'doloremque', 'Pariatur quia enim cumque quibusdam autem et amet. Aperiam ut quod animi accusamus molestiae. Natus ut hic quidem iure veniam omnis est. Nulla quo veritatis eaque deserunt et.', 'published', 'Eum voluptatem sunt expedita sint ut assumenda. Ducimus excepturi vero adipisci vero. Soluta aut vitae nesciunt atque corporis sed.', 26, '1995-06-13 13:59:51', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (13, 'Quod enim est ut ut.', 'minima', 'Aliquid totam beatae fugiat minima. Ipsum architecto quia unde dignissimos perferendis velit qui. Aut sequi nihil voluptatem esse aliquam aut cupiditate.', 'draft', 'Aut perferendis qui explicabo eius. Laborum ut voluptatum autem eaque molestias illo. Maiores eos itaque error vel commodi id eaque.', 66, '2007-12-15 15:25:33', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (14, 'Eveniet quaerat culpa quia quod.', 'ut', 'Aut tempora nam officiis exercitationem minus eos. Recusandae nihil ut sed nobis. Cum doloremque nisi sequi enim rerum.', 'published', 'Dolorem cumque in et nisi dolorem quo iste. Quasi quod quae nulla. Accusantium sint dolore enim veniam. Pariatur et earum corrupti harum et. Aut est saepe iste aut fugiat. Ipsam enim nam eos quidem.', 53, '2015-01-20 00:39:48', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (15, 'Omnis ut sit quisquam.', 'molestias', 'Voluptas eligendi quas ea provident consequatur sit velit ut. Minus ex accusantium quos expedita. Laudantium mollitia sit qui et laboriosam eveniet sunt.', 'draft', 'Minima magni maiores nobis soluta quae. Fuga ab fuga quia. Inventore odit sunt velit numquam aliquid.', 4, '2011-03-21 14:26:55', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (16, 'Laborum rerum itaque velit.', 'quo', 'Omnis sit voluptas rerum dolores distinctio exercitationem. Reprehenderit optio dolorem eligendi est aut. Aut sed qui et fugiat qui.', 'draft', 'Necessitatibus est nihil tempore. Et omnis asperiores incidunt impedit. Perferendis cum ut cum qui velit vitae. Exercitationem voluptas eum qui perspiciatis fugiat quae accusantium.', 65, '1983-05-02 10:17:03', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (17, 'Nostrum commodi rerum.', 'provident', 'Ducimus sint autem aut suscipit. Quia harum facilis ipsam ullam architecto sint. Maxime in voluptatem qui aperiam. Consequatur id dolorum alias consectetur quia omnis facere.', 'published', 'Dolores facilis assumenda eos quas autem placeat magnam. Officia consequatur dolorum adipisci aut perferendis. Quia ut rem vel rem. Delectus et at animi dolor magnam.', 73, '1990-09-08 09:57:38', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (18, 'Similique voluptatem distinctio.', 'deleniti', 'Quisquam deleniti accusamus quia. Saepe beatae ipsam incidunt pariatur doloremque voluptatem. Consequatur similique qui deserunt culpa.', 'unpublished', 'Voluptatem et reiciendis aut beatae. Odit dicta non voluptatibus laborum iure fuga. Assumenda aut atque deleniti.', 98, '1970-03-09 02:06:49', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (19, 'Blanditiis iste placeat in rerum et.', 'vel', 'Mollitia eos dolor odit. Officiis praesentium aliquam possimus. Ipsum assumenda reprehenderit eaque ex. Ut deleniti accusantium quia consequuntur voluptas est.', 'unpublished', 'Ducimus quibusdam qui consequatur dolore. Totam animi dolorem animi consequatur quo blanditiis. Optio tempore repellendus similique consectetur.', 48, '1983-09-05 09:16:42', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (20, 'Voluptatibus reiciendis aut modi veniam libero.', 'impedit', 'Nobis fuga sequi non minus voluptatem. Asperiores quia tempore et nisi earum non. Itaque ducimus non voluptatem rem voluptate.', 'unpublished', 'Distinctio quibusdam voluptatem mollitia rerum. Omnis aut eaque debitis ea sed est est. Voluptatum doloremque laudantium rerum ut ratione eligendi magni. Fugit aut quia ullam et et.', 39, '1983-02-06 12:10:53', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (21, 'Eos iste reprehenderit quod explicabo sit.', 'non', 'Tempore voluptatem nemo illo porro et cum expedita aut. Expedita velit labore placeat eius soluta enim. Suscipit eaque numquam minima repellendus quibusdam unde neque.', 'draft', 'Odit ut dignissimos nam esse voluptas dolores. Totam voluptatem molestiae tempore illum assumenda quae maxime perferendis. Sint id omnis mollitia enim corrupti temporibus maxime.', 41, '1996-08-29 21:52:27', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (22, 'Sed veniam consequatur maiores dolor.', 'laborum', 'Minus dolorem modi expedita et laboriosam exercitationem itaque. Culpa dolorem aut tenetur modi. Fugiat numquam aut aperiam in optio. Nam vel quas incidunt impedit molestias quos corrupti.', 'unpublished', 'Dignissimos incidunt in nobis consequuntur aliquam ut consequatur. A in aperiam similique in omnis. Laborum dolorem necessitatibus id.', 6, '1978-01-05 13:05:44', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (23, 'Ullam ex itaque aspernatur non repudiandae.', 'occaecati', 'Facere nulla commodi accusantium expedita ipsa dolorem aut aperiam. Nam repellendus odit officia. Ex est possimus et autem magni quo.', 'draft', 'Cupiditate ea qui velit error veritatis accusamus. Facilis sunt ut qui aut ut rem ex. Ipsa nobis ea minima atque aspernatur officia.', 75, '2002-09-13 21:10:16', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (24, 'Facilis illo necessitatibus amet neque nihil.', 'cum', 'Placeat rerum dolores ducimus non quis. Nemo optio nostrum ipsum culpa assumenda. Voluptatem possimus aut ut odio sit quasi exercitationem. Ducimus voluptate sit enim non itaque aut.', 'draft', 'Quidem voluptas quia accusamus fuga neque ea sint. Nemo sit est numquam consectetur quos veritatis.', 72, '1971-01-26 03:05:36', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
INSERT INTO `news` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (25, 'Quos est voluptatem consequatur quae.', 'ratione', 'Perferendis itaque itaque omnis et consequatur animi. Est id tempora eligendi sint cupiditate itaque. Exercitationem id id quis labore quia.', 'published', 'Qui qui labore itaque facere. Delectus culpa aut a quod. Voluptas doloribus sit aut similique ut voluptas error eius. Accusamus illo magnam est iste autem. Sed et maxime eius ut voluptas praesentium.', 67, '2023-12-19 18:35:10', '2024-05-31 09:58:01', '2024-05-31 09:58:01');
COMMIT;

-- ----------------------------
-- Table structure for partners
-- ----------------------------
DROP TABLE IF EXISTS `partners`;
CREATE TABLE `partners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortDesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int NOT NULL,
  `deleted_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of partners
-- ----------------------------
BEGIN;
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (1, 'Sit praesentium pariatur suscipit.', 'corporis', 'draft', 'https://via.placeholder.com/640x480.png/002288?text=laboriosam', 1, '2024-02-15 11:58:29', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (2, 'Ea provident dolore eveniet.', 'facere', 'published', 'https://via.placeholder.com/640x480.png/000055?text=amet', 27, '2007-03-06 18:56:11', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (3, 'Ut qui voluptas molestias.', 'qui', 'unpublished', 'https://via.placeholder.com/640x480.png/00dd66?text=at', 40, '1981-09-15 13:29:23', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (4, 'Ab qui odit.', 'totam', 'draft', 'https://via.placeholder.com/640x480.png/00cc55?text=vel', 25, '1972-12-25 06:08:49', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (5, 'Incidunt itaque aliquam fuga consequuntur.', 'sequi', 'published', 'https://via.placeholder.com/640x480.png/009911?text=velit', 7, '2024-01-29 05:54:24', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (6, 'Quia voluptatum eos.', 'minus', 'unpublished', 'https://via.placeholder.com/640x480.png/004466?text=vitae', 30, '2021-08-13 22:21:11', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (7, 'Fuga eveniet nisi maiores vitae.', 'et', 'published', 'https://via.placeholder.com/640x480.png/000033?text=modi', 34, '1979-08-12 05:36:03', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (8, 'Molestiae laboriosam nulla placeat.', 'nisi', 'unpublished', 'https://via.placeholder.com/640x480.png/00bbdd?text=voluptatem', 18, '2008-03-13 15:09:02', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (9, 'Autem quidem repudiandae in.', 'sunt', 'published', 'https://via.placeholder.com/640x480.png/00eedd?text=porro', 32, '1970-12-16 14:09:28', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (10, 'Vel rerum enim rerum.', 'quia', 'draft', 'https://via.placeholder.com/640x480.png/009966?text=voluptatem', 31, '1989-08-01 01:02:36', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (11, 'Dolores necessitatibus itaque molestias incidunt.', 'soluta', 'unpublished', '01HZ7CN22KVA7NKA80HYJYDNKN.png', 19, '1992-03-30 12:51:15', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (12, 'Labore ut porro.', 'quae', 'draft', '01HZ7CN22KVA7NKA80HYJYDNKN.png', 27, '2021-11-07 22:50:22', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (13, 'Atque rerum ipsa.', 'aliquam', 'published', '01HZ7CN22KVA7NKA80HYJYDNKN.png', 21, '1988-02-11 17:09:27', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (14, 'Esse beatae quo.', 'aut', 'unpublished', '01HZ7CN22KVA7NKA80HYJYDNKN.png', 28, '1973-06-06 01:48:54', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (15, 'Aliquam ut voluptate esse.', 'alias', 'published', '01HZ7CN22KVA7NKA80HYJYDNKN.png', 14, '1996-03-02 17:37:26', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (16, 'Unde reiciendis numquam distinctio.', 'provident', 'published', '01HZ7CN22KVA7NKA80HYJYDNKN.png', 31, '2007-11-18 10:45:18', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (17, 'A eum aliquam sequi.', 'dolorum', 'unpublished', '01HZ7CN22KVA7NKA80HYJYDNKN.png', 32, '1982-10-23 16:27:17', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (18, 'Tenetur aut ducimus nihil.', 'excepturi', 'unpublished', '01HZ7CN22KVA7NKA80HYJYDNKN.png', 20, '1977-05-27 03:41:18', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (19, 'Atque beatae autem atque enim.', 'neque', 'published', '01HZ7CN22KVA7NKA80HYJYDNKN.png', 23, '1979-02-05 22:53:44', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (20, 'Reprehenderit at facilis quo.', 'et', 'draft', '01HZ7CN22KVA7NKA80HYJYDNKN.png', 17, '1992-12-03 00:13:30', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (21, 'Cupiditate nihil earum nihil.', 'corrupti', 'published', '01HZ7CN22KVA7NKA80HYJYDNKN.png', 33, '2017-05-03 18:33:36', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (22, 'Quos nesciunt quas.', 'eligendi', 'published', '01HZ7CN22KVA7NKA80HYJYDNKN.png', 24, '1978-08-24 07:06:01', '2024-05-31 12:41:19', '2024-05-31 12:41:19');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (23, 'Quasi consequatur ducimus vel consequatur possimus.', 'id', 'draft', '01HZ7CNMGE83WVEAGJ0CXKW9PA.png', 1, '1971-10-29 23:15:58', '2024-05-31 12:41:19', '2024-05-31 13:15:49');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (24, 'Illum veritatis tempore qui est.', 'dolore', 'published', '01HZ7CNBS4D00GNDNP1KDVMNZ4.png', 15, '2017-10-05 14:39:36', '2024-05-31 12:41:19', '2024-05-31 13:15:40');
INSERT INTO `partners` (`id`, `title`, `shortDesc`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (25, 'Eligendi assumenda dignissimos.', 'vel', 'draft', '01HZ7CN22KVA7NKA80HYJYDNKN.png', 13, '1978-03-29 22:12:42', '2024-05-31 12:41:19', '2024-05-31 13:15:30');
COMMIT;

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for plans
-- ----------------------------
DROP TABLE IF EXISTS `plans`;
CREATE TABLE `plans` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int NOT NULL,
  `price` double DEFAULT NULL,
  `deleted_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of plans
-- ----------------------------
BEGIN;
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (1, 'Totam vel aut et nihil facere.', '<ul class=\"pricing-tables-position\">', 'unpublished', 'https://via.placeholder.com/640x480.png/00aa55?text=quis', 31, NULL, '1988-01-09 20:55:10', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (2, 'Qui necessitatibus natus est fuga.', '<ul class=\"pricing-tables-position\">', 'published', 'https://via.placeholder.com/640x480.png/00bb55?text=sequi', 21, NULL, '2017-05-06 10:29:53', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (3, 'Ea suscipit totam.', 'Distinctio sed voluptatum sed accusamus nam. Molestiae consequatur maiores nulla consequuntur veniam incidunt praesentium. Ut expedita quis illo eos deleniti et.', 'draft', 'https://via.placeholder.com/640x480.png/002200?text=illum', 1, NULL, '2017-07-20 09:27:21', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (4, 'Sapiente eum est.', 'Numquam inventore et consectetur consequatur quam. Et non quas ut ea. In suscipit consequuntur quas.', 'published', 'https://via.placeholder.com/640x480.png/00ee88?text=quos', 40, NULL, '1990-11-17 08:38:04', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (5, 'Tempora magnam dolorem quis sunt.', 'Ex qui ad libero enim. Ut quod ea aut vitae repudiandae eos esse. Suscipit eum perspiciatis voluptas dolores ipsam ea quia cum.', 'unpublished', 'https://via.placeholder.com/640x480.png/002288?text=saepe', 34, NULL, '1975-03-09 22:42:59', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (6, 'Adipisci sit dolorem eos voluptatem.', 'Voluptatem aut dolorum quas impedit voluptatibus. Quis at iusto reiciendis molestiae est id repellat. Porro consequatur aliquid officiis saepe commodi cupiditate et ad. Quis iusto ratione minima qui.', 'published', 'https://via.placeholder.com/640x480.png/001144?text=accusantium', 31, NULL, '1982-09-02 17:12:18', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (7, 'Vitae inventore facere ut non.', 'Iusto ratione deleniti ut aspernatur. Maiores modi molestias aliquam dolores vel. Nesciunt exercitationem autem omnis voluptas quaerat dignissimos et.', 'published', 'https://via.placeholder.com/640x480.png/00cc66?text=omnis', 32, NULL, '2012-08-15 16:38:42', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (8, 'Laudantium dolore excepturi labore tempora saepe.', 'Ipsa doloribus qui quibusdam expedita et. Qui non alias magni officiis ea. Et ipsam non hic sapiente sit ex.', 'draft', '01HZ7CP9HVKMK3BFVPB9KF4EP7.png', 28, NULL, '1986-12-28 10:14:01', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (9, 'Repellat itaque dolores.', 'Assumenda est mollitia possimus iusto tenetur ut aut. Dolores et sunt modi voluptatem nihil. Et voluptas consequatur harum eos facere ad.', 'published', '01HZ7CP9HVKMK3BFVPB9KF4EP7.png', 22, NULL, '1989-01-11 00:07:34', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (10, 'Voluptas et error optio.', 'Perferendis sapiente illo quidem atque dolores qui. Dolores similique sunt amet et sequi. Eveniet dolorem rem impedit qui eligendi.', 'published', '01HZ7CP9HVKMK3BFVPB9KF4EP7.png', 40, NULL, '2002-05-27 08:14:11', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (11, 'Rem a ea quia.', 'Voluptatem assumenda aut pariatur aut. Et ullam soluta repellendus fugit blanditiis ipsa sint. Mollitia impedit est et. Debitis nulla et nisi laborum culpa. Cupiditate impedit fugit perferendis.', 'published', '01HZ7CP9HVKMK3BFVPB9KF4EP7.png', 24, NULL, '1982-07-19 03:27:09', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (12, 'Et sapiente dolorem libero.', 'Aliquam blanditiis et quam corrupti voluptate illo. Modi aperiam iure totam corporis sit nemo odit. Quae placeat repudiandae ipsam culpa facilis recusandae quisquam.', 'published', '01HZ7CP9HVKMK3BFVPB9KF4EP7.png', 6, NULL, '2015-07-22 15:00:15', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (13, 'Sequi reprehenderit ut voluptas qui qui.', 'Voluptas ea quam et aliquam et. Error voluptas quas eum ea eaque quasi. Ut sapiente nisi magni deserunt. Autem aspernatur veritatis hic molestiae. Ipsum distinctio sit magnam hic cumque.', 'draft', '01HZ7CP9HVKMK3BFVPB9KF4EP7.png', 19, NULL, '1990-04-12 04:33:14', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (14, 'Dolore ullam impedit.', 'Quia odio nihil sunt id laborum molestias numquam perferendis. Deserunt facilis et cum et accusantium. Autem laborum voluptatem rerum architecto. Quasi officiis perspiciatis unde temporibus.', 'unpublished', '01HZ7CP9HVKMK3BFVPB9KF4EP7.png', 30, NULL, '1970-08-07 07:43:34', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (15, 'Aut unde ullam totam ea reiciendis.', 'Ducimus at et eaque quisquam facilis. Tempore sed porro dolor quos aut sit qui. Nihil amet omnis voluptate.', 'unpublished', '01HZ7CP9HVKMK3BFVPB9KF4EP7.png', 29, NULL, '1975-08-18 12:35:22', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (16, 'Ut quibusdam quia nisi quia.', 'Quae modi et officiis laudantium. Labore quis velit ut adipisci. Sint est quis neque iure accusantium temporibus cum.', 'published', '01HZ7CP9HVKMK3BFVPB9KF4EP7.png', 40, NULL, '1987-04-11 19:02:15', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (17, 'Ipsum enim perferendis doloremque.', 'Numquam a alias distinctio voluptas quod odio. Molestiae quos assumenda sunt vel ipsa consectetur dolor. Aut alias ea et.', 'unpublished', '01HZ7CP9HVKMK3BFVPB9KF4EP7.png', 12, NULL, '1977-12-26 19:11:48', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (18, 'Ratione eum quasi ipsam.', 'Ipsa temporibus ipsum ad. Quia iste rerum ab magni est. Saepe distinctio cum ut sit dolor quia deserunt.', 'published', '01HZ7CP9HVKMK3BFVPB9KF4EP7.png', 7, NULL, '1976-01-20 15:01:49', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (19, 'Aut est consequatur facere optio.', 'Asperiores iste earum et tempore beatae illo pariatur. Officiis autem fuga dolores qui et. Facere eius tenetur quos ea iure nulla velit perferendis.', 'unpublished', '01HZ7CP9HVKMK3BFVPB9KF4EP7.png', 31, NULL, '2013-11-17 01:25:55', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (20, 'Accusantium sed vel omnis.', 'Atque et sed sunt est nesciunt in unde. Optio sit ut perferendis eaque. Laboriosam at consequatur incidunt pariatur omnis. Exercitationem vitae sit adipisci ab perspiciatis.', 'unpublished', '01HZ7CP9HVKMK3BFVPB9KF4EP7.png', 10, NULL, '1983-04-09 13:55:02', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (21, 'Et id esse quod veritatis dolore.', 'Beatae facilis et incidunt. Reiciendis dignissimos saepe praesentium et ea porro aut. Odio quia et eveniet et doloribus reiciendis minus.', 'draft', '01HZ7CP9HVKMK3BFVPB9KF4EP7.png', 9, NULL, '1981-03-06 06:49:57', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (22, 'Cupiditate atque dolore.', 'Voluptas quae reprehenderit labore saepe. Consectetur natus est non dolorem. Voluptate error laboriosam est facere.', 'draft', '01HZ7CP9HVKMK3BFVPB9KF4EP7.png', 23, 400, '2018-02-07 19:15:55', '2024-05-31 12:41:30', '2024-05-31 12:41:30');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (23, 'Starter', '<ul class=\"pricing-tables-position\">\n										<li class=\"position-item\">\n											<span class=\"count\">25</span>\n											Analytics Campaigns\n										</li>\n										<li class=\"position-item\">\n											<span class=\"count\">1,900</span>\n											Keywords\n										</li>\n										<li class=\"position-item\">\n											<span class=\"count\">1,250,000</span>\n											Crawled Pages\n										</li>\n										<li class=\"position-item include\">\n											Includes Branded Reports\n										</li>\n										<li class=\"position-item\">\n											<span class=\"count\">50</span>\n											Social Accounts\n										</li>\n									</ul>', 'unpublished', '01HZ7CPHM8H9GMERJGXFJ8MMHE.png', 8, 100, '1996-06-03 20:11:39', '2024-05-31 12:41:30', '2024-05-31 13:16:19');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (24, 'Medium', '<ul class=\"pricing-tables-position\">\n										<li class=\"position-item\">\n											<span class=\"count\">25</span>\n											Analytics Campaigns\n										</li>\n										<li class=\"position-item\">\n											<span class=\"count\">1,900</span>\n											Keywords\n										</li>\n										<li class=\"position-item\">\n											<span class=\"count\">1,250,000</span>\n											Crawled Pages\n										</li>\n										<li class=\"position-item include\">\n											Includes Branded Reports\n										</li>\n										<li class=\"position-item\">\n											<span class=\"count\">50</span>\n											Social Accounts\n										</li>\n									</ul>', 'unpublished', '01HZ7CP9HVKMK3BFVPB9KF4EP7.png', 17, 400, '2009-04-23 00:09:14', '2024-05-31 12:41:30', '2024-05-31 13:16:11');
INSERT INTO `plans` (`id`, `title`, `description`, `status`, `img`, `sort`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES (25, 'Ultra', '<ul class=\"pricing-tables-position\">\n										<li class=\"position-item\">\n											<span class=\"count\">25</span>\n											Analytics Campaigns\n										</li>\n										<li class=\"position-item\">\n											<span class=\"count\">1,900</span>\n											Keywords\n										</li>\n										<li class=\"position-item\">\n											<span class=\"count\">1,250,000</span>\n											Crawled Pages\n										</li>\n										<li class=\"position-item include\">\n											Includes Branded Reports\n										</li>\n										<li class=\"position-item\">\n											<span class=\"count\">50</span>\n											Social Accounts\n										</li>\n									</ul>', 'draft', '01HZ7CP9HVKMK3BFVPB9KF4EP7.png', 31, 800, '2020-11-18 05:18:24', '2024-05-31 12:41:30', '2024-05-31 13:48:27');
COMMIT;

-- ----------------------------
-- Table structure for projects
-- ----------------------------
DROP TABLE IF EXISTS `projects`;
CREATE TABLE `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortDesc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int NOT NULL,
  `deleted_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of projects
-- ----------------------------
BEGIN;
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (1, 'Aut veniam et adipisci et voluptate.', 'fugiat', 'Aut quibusdam illo voluptatem ad nisi numquam quia. Error autem temporibus error rerum libero. Quo voluptatum laudantium alias ipsum.', 'unpublished', '01HZ7CQJ6CGJ6VP3193PP9J129.svg', 5, '1995-01-07 13:00:06', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (2, 'Cumque omnis consequatur earum et harum.', 'aut', 'Dolor saepe et tempora assumenda vero. Eius dicta error ut et tempore distinctio dicta sed. Perspiciatis officia soluta quisquam provident. Qui consectetur est eligendi dolorem deserunt ad.', 'published', '01HZ7CQJ6CGJ6VP3193PP9J129.svg', 20, '1985-11-20 09:43:45', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (3, 'Facere voluptas natus aspernatur soluta.', 'eius', 'Nostrum officia dolorem quo iste dignissimos consequuntur. Illo ipsa reprehenderit officiis quasi nesciunt. Molestiae dolores dolor nemo iste.', 'unpublished', '01HZ7CQJ6CGJ6VP3193PP9J129.svg', 11, '1970-07-10 09:11:08', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (4, 'Et tenetur vel est dolorem aut.', 'accusantium', 'Expedita aperiam consequuntur libero inventore alias. Voluptatum nihil dolorum consequatur dignissimos. Eum dolor odit cumque quo ducimus pariatur rem.', 'unpublished', '01HZ7CQJ6CGJ6VP3193PP9J129.svg', 8, '2022-05-24 12:12:12', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (5, 'Sint possimus earum velit asperiores.', 'non', 'Autem labore voluptatem qui adipisci. Voluptates molestiae harum magnam atque dolorem voluptatibus commodi. Perspiciatis non perspiciatis consequatur voluptatibus sunt iusto voluptatem natus.', 'draft', '01HZ7CQJ6CGJ6VP3193PP9J129.svg', 21, '1993-02-26 12:50:57', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (6, 'Dolor expedita quos reiciendis.', 'dolore', 'Doloribus consequatur cum impedit ut laudantium. Expedita incidunt voluptate debitis nihil a. Molestiae maxime dolorem est repellat. Nemo in voluptatem unde omnis ex tempora ut.', 'unpublished', '01HZ7CQJ6CGJ6VP3193PP9J129.svg', 4, '2021-05-19 19:24:26', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (7, 'Dolor rerum labore.', 'eos', 'Non recusandae autem vel id sit necessitatibus minus. Sint necessitatibus pariatur sunt voluptate dolorum perferendis labore et.', 'unpublished', '01HZ7CQJ6CGJ6VP3193PP9J129.svg', 14, '1984-12-09 03:59:15', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (8, 'Sed minima illum expedita.', 'impedit', 'Animi possimus quis numquam. Ducimus officiis quia assumenda qui. Consequatur omnis quidem aperiam pariatur quibusdam impedit. Voluptas ipsam eos temporibus alias.', 'published', '01HZ7DVM6KZQT5PGKFK991FBPQ.jpg', 19, '1984-05-31 06:34:12', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (9, 'Sunt repellat odit ea ad.', 'atque', 'A amet sapiente ut maxime magni. Sint enim vel nihil eos culpa officia libero qui. Beatae atque accusantium voluptate id qui molestiae exercitationem.', 'unpublished', '01HZ7DVM6KZQT5PGKFK991FBPQ.jpg', 47, '2013-05-18 09:54:59', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (10, 'Dolores non et eos.', 'praesentium', 'Velit ea doloribus voluptatem. Quas illo quia debitis dignissimos rerum ipsum.', 'unpublished', '01HZ7DVM6KZQT5PGKFK991FBPQ.jpg', 41, '2012-07-25 07:32:51', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (11, 'Fuga commodi eveniet distinctio.', 'in', 'Ea magnam amet saepe. Enim quam modi velit rerum minus laudantium. Deleniti eveniet ipsa quia.', 'unpublished', '01HZ7DVM6KZQT5PGKFK991FBPQ.jpg', 32, '1997-03-06 11:51:30', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (12, 'Repudiandae quidem necessitatibus id.', 'vitae', 'Reiciendis expedita et ut eligendi quis quia. Autem ut quisquam illum labore. Tempora cum doloribus aspernatur rerum vitae provident excepturi.', 'unpublished', '01HZ7DVM6KZQT5PGKFK991FBPQ.jpg', 47, '1996-05-11 23:57:54', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (13, 'Quos veniam cupiditate veniam eveniet.', 'sed', 'Aut enim voluptatem accusantium esse. Sit exercitationem doloribus consequatur consequatur ut deleniti quia ut. Et vitae ullam nobis architecto minus nulla.', 'unpublished', '01HZ7DVM6KZQT5PGKFK991FBPQ.jpg', 16, '2007-12-31 12:03:05', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (14, 'Facilis quia repellendus dolorem nesciunt.', 'fugit', 'Optio cupiditate officiis aliquid ducimus reprehenderit tenetur harum. Qui officia vel illo dolores. Omnis quia consectetur eum ducimus ea quo architecto.', 'unpublished', '01HZ7DVM6KZQT5PGKFK991FBPQ.jpg', 47, '2011-04-04 19:08:26', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (15, 'Qui quisquam illum autem totam.', 'ad', 'Omnis tempore deleniti qui error inventore iusto. Voluptatum qui vel ab cupiditate et. Eos assumenda iste ut debitis ut.', 'draft', '01HZ7DVM6KZQT5PGKFK991FBPQ.jpg', 26, '1980-01-06 21:05:24', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (16, 'Repellendus qui facilis corporis nesciunt.', 'accusamus', 'Distinctio aut mollitia eius nostrum vel architecto deserunt. Ut repudiandae a in ea sunt sed eos mollitia. Quas minima aut officiis labore accusantium ratione.', 'unpublished', '01HZ7DVM6KZQT5PGKFK991FBPQ.jpg', 39, '2007-01-16 20:04:54', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (17, 'Architecto est nihil voluptatum.', 'et', 'Aut architecto suscipit possimus sit odit vero voluptate. Velit architecto quibusdam corrupti vel. Soluta et ipsam labore voluptatum ut itaque laboriosam.', 'unpublished', '01HZ7DVM6KZQT5PGKFK991FBPQ.jpg', 17, '2011-07-26 22:17:42', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (18, 'Blanditiis earum provident laborum.', 'non', 'Voluptatibus aliquid molestiae qui qui. Tempora eum recusandae adipisci delectus. Nihil placeat ipsa quidem unde error veniam. Illum cupiditate fugit enim consequatur reiciendis.', 'draft', '01HZ7DVM6KZQT5PGKFK991FBPQ.jpg', 38, '2020-11-01 07:32:49', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (19, 'Sed autem quae cumque veniam.', 'ipsa', 'Molestias ut cupiditate expedita rerum dolor nulla. Mollitia officiis dolore quasi velit. Magnam qui et molestiae qui non. Inventore aut porro saepe quis culpa optio ea.', 'published', '01HZ7DVM6KZQT5PGKFK991FBPQ.jpg', 12, '1970-05-14 19:49:59', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (20, 'Voluptatem accusantium vel ut voluptatibus non.', 'magnam', 'Laborum vel voluptas officia odio vel aut commodi. Molestias earum commodi natus id quis quibusdam vitae. Provident quos neque consequatur. Qui nam tempora earum perspiciatis hic.', 'unpublished', '01HZ7DVM6KZQT5PGKFK991FBPQ.jpg', 50, '2006-08-25 07:50:59', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (21, 'Vitae quidem a aut et quis.', 'soluta', 'Quidem pariatur amet ut ut sint ducimus tenetur. Sunt voluptatibus illum inventore similique. Enim quae nisi quibusdam atque omnis molestias fugiat.', 'published', '01HZ7DVM6KZQT5PGKFK991FBPQ.jpg', 19, '1982-12-25 06:05:12', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (22, 'Esse aut blanditiis voluptatem.', 'quo', 'Dolor nemo ullam blanditiis natus et ab. Illum enim et ex recusandae corporis incidunt. Blanditiis sed voluptate odit sit. Ut optio ipsam et ad aut quaerat sed.', 'published', '01HZ7DVM6KZQT5PGKFK991FBPQ.jpg', 38, '1980-09-03 07:36:36', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (23, 'Ab iste exercitationem qui dicta voluptatem.', 'neque', 'Quia perspiciatis debitis qui tempora saepe maxime esse cupiditate. Voluptatum voluptas eos non modi officia blanditiis officia.', 'draft', '01HZ7DVM6KZQT5PGKFK991FBPQ.jpg', 35, '2019-05-07 02:07:46', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (24, 'Sit placeat quia architecto velit.', 'autem', 'Id temporibus laboriosam necessitatibus facere occaecati officiis. Quod ut optio nulla fugit. Et commodi nihil sed et consequuntur rerum illo.', 'draft', '01HZ7DVM6KZQT5PGKFK991FBPQ.jpg', 15, '1985-10-31 13:44:48', '2024-05-31 12:27:09', '2024-05-31 12:27:09');
INSERT INTO `projects` (`id`, `title`, `shortDesc`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (25, 'Eum aliquid ipsam vero.', 'dolorem', 'Cum commodi similique ratione nemo ex consectetur. Ea architecto beatae mollitia autem qui fugit vel repellat. Similique unde consequatur voluptatem quia.', 'published', '01HZ7DVM6KZQT5PGKFK991FBPQ.jpg', 38, '1975-10-04 11:56:20', '2024-05-31 12:27:09', '2024-05-31 13:36:34');
COMMIT;

-- ----------------------------
-- Table structure for services
-- ----------------------------
DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int NOT NULL,
  `deleted_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of services
-- ----------------------------
BEGIN;
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (1, 'Provident iusto suscipit nam aspernatur.', 'Sunt tenetur dolorum in eos sint sint. Sit veniam enim ullam ab dignissimos. Ea quia aut id molestiae corrupti cupiditate.', 'unpublished', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 98, '1979-02-09 04:07:30', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (2, 'Consectetur consequatur aut veniam ut.', 'Illo minus aperiam nihil veritatis qui non. Ea accusamus unde natus quis. Esse esse illum sint vel nesciunt optio.', 'draft', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 48, '2009-04-29 16:23:44', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (3, 'Consequuntur et debitis fugiat ut ut.', 'Et sit iure tenetur nam nostrum. Impedit dignissimos quo repellendus soluta beatae atque voluptatum. Expedita necessitatibus facere cumque aut.', 'unpublished', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 23, '2011-05-01 02:25:58', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (4, 'Accusantium praesentium reprehenderit.', 'Rerum repellendus soluta ex minus optio rerum. Ut non dolorum voluptas dolor quo. Qui earum aut unde accusamus commodi et quam numquam. Maxime aut iste veritatis.', 'draft', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 33, '2007-12-30 11:17:27', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (5, 'Voluptate ut maiores dolorem dolorem eligendi.', 'Culpa est quod molestiae laboriosam corrupti. Debitis et provident similique sit. Animi maiores aperiam asperiores voluptas quis blanditiis. Incidunt aut eum voluptatem quam adipisci.', 'draft', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 53, '2023-05-08 20:53:05', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (6, 'Minus et eos quo sit officiis.', 'Illum nulla quia qui consequatur qui placeat qui. Impedit eos quis dolore ipsum sint. At esse fugiat dolores quasi vel totam error.', 'unpublished', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 96, '1977-04-12 14:45:40', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (7, 'Consequatur officiis quas quis odio unde.', 'Qui id dolores dolor qui quia autem. Eum voluptatem quo deleniti sint assumenda aspernatur molestiae. Et dignissimos minima atque voluptas voluptas sed. Est ea et omnis temporibus est consectetur.', 'unpublished', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 48, '1995-02-06 01:06:31', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (8, 'Exercitationem at dolorum commodi doloribus deserunt.', 'Minus ea quaerat ipsum. Dignissimos nulla expedita voluptatibus est. Unde aperiam a delectus laborum earum dolores est.', 'unpublished', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 14, '2009-03-27 04:34:16', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (9, 'Assumenda accusantium est asperiores.', 'Id possimus dolores illum rerum nisi. Itaque voluptas ea esse rem rerum quo veniam. Eum ut eos laborum quae nihil voluptatibus. Sed veritatis aut ratione quia sapiente.', 'published', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 91, '1999-07-13 12:02:27', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (10, 'Rem repudiandae ut tempore alias sint.', 'Et quo et similique ad. Expedita sunt quam ut consequatur in. Voluptatem dolor enim molestiae ut aspernatur voluptate. Id quasi non repudiandae quod voluptatem et placeat aspernatur.', 'published', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 43, '2008-09-14 20:37:26', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (11, 'Ipsam architecto a iste.', 'Placeat numquam autem amet cumque. Eos aut quas id omnis aut enim. Praesentium expedita est maxime unde non. Maxime dolorem et fugiat temporibus incidunt aperiam eaque.', 'unpublished', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 73, '2008-08-17 04:58:23', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (12, 'Vero maxime ex ad laudantium.', 'Corporis voluptate repellendus natus aspernatur dolorem omnis debitis. Nesciunt voluptatem fugit eos possimus quis qui. Numquam cumque excepturi iste adipisci vel.', 'draft', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 12, '2009-01-31 01:52:54', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (13, 'Cupiditate itaque voluptatibus recusandae earum.', 'Sit enim blanditiis ipsam eius esse impedit voluptatem sed. Excepturi fugiat dolor iusto. Dolorum occaecati nulla ducimus incidunt quia. Velit impedit et rem nihil quis ex ex.', 'unpublished', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 10, '1998-01-04 17:19:25', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (14, 'Sed pariatur incidunt eum.', 'Et aut natus atque culpa. Consectetur blanditiis delectus iure tempore. Nihil ex nisi saepe quidem perspiciatis eos possimus. Consequatur aliquid debitis sed consequatur.', 'unpublished', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 89, '1982-10-20 21:30:24', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (15, 'Voluptatum aperiam exercitationem reiciendis.', 'Dolores qui ut in. Omnis recusandae rerum quo iure ipsam illo atque. Est ipsum unde commodi nihil deserunt.', 'draft', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 97, '2021-06-19 03:14:49', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (16, 'Dolorum sed est et similique qui.', 'Possimus ratione molestiae suscipit voluptas voluptatem. Porro minus aut qui doloribus minima omnis. Cumque doloremque impedit cumque quisquam laudantium est. Saepe quaerat doloribus officiis vitae.', 'unpublished', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 60, '1982-02-08 03:35:57', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (17, 'Perferendis consequatur voluptatem voluptatem.', 'Velit illum est molestias quo voluptatem qui asperiores optio. Sed quos animi ut praesentium quam dolorem et. Perspiciatis id ad quaerat dolor quia beatae.', 'unpublished', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 14, '1974-01-28 14:18:37', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (18, 'Sunt commodi non ipsa autem doloribus.', 'Unde beatae sit maxime sed molestias. Voluptatem aliquam dicta delectus dolor sint. Nulla voluptas nihil quidem incidunt accusamus nulla labore.', 'published', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 82, '2015-12-30 02:33:45', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (19, 'Est reprehenderit iure sunt.', 'Dolorem aspernatur consequatur corporis tempora voluptatem at. Nemo omnis vitae qui repellat nulla. Fugiat cumque ut facere dolorum.', 'unpublished', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 71, '2023-04-03 23:22:11', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (20, 'Ratione repudiandae sunt sapiente.', 'Numquam ut iste dicta dolor. A ut non inventore odio autem velit perspiciatis quas. Corporis ipsum repellat harum velit magnam. Dolorum temporibus sunt qui. Aperiam tenetur veritatis et id rerum.', 'unpublished', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 60, '2023-12-13 12:10:50', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (21, 'Deleniti aut dolor illum.', 'Corporis cupiditate saepe vero. Provident ratione dolores sint esse. Quidem nihil et eum. Sed reprehenderit vero dolore.', 'draft', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 86, '2007-09-30 04:42:31', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (22, 'Cupiditate ab velit a rerum.', 'Ipsam aut ab id earum eaque numquam commodi. Ducimus excepturi est consequatur magni maxime. Quia sequi itaque ipsam dignissimos. Ex rerum quia est.', 'published', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 84, '2005-03-13 11:24:08', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (23, 'Voluptate et omnis.', 'Asperiores eveniet consequatur voluptates vel est et. Non ducimus aperiam vel nesciunt tempora consequatur voluptate. Eius quis minima nihil iusto. Commodi at minima ipsam quasi eos.', 'draft', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 59, '2020-06-02 09:01:12', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (24, 'Dignissimos facilis excepturi illo deserunt.', 'Dolor rerum excepturi vel autem quia. Maiores autem officiis neque. Qui ipsum sed aut quam et provident.', 'unpublished', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 52, '1984-12-04 20:53:36', '2024-05-31 09:58:29', '2024-05-31 09:58:29');
INSERT INTO `services` (`id`, `title`, `description`, `status`, `icon`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (25, 'Ea dolorem soluta cupiditate.', 'Sequi adipisci eaque consequuntur id voluptate. Cupiditate ipsam autem explicabo vel debitis sed. Laborum adipisci ea nulla exercitationem laborum.', 'unpublished', 'heroicon', '01HZ7CQVWZJMJ6K8CY5QF71E3D.svg', 51, '1978-09-02 18:39:32', '2024-05-31 09:58:29', '2024-05-31 13:17:02');
COMMIT;

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sessions
-- ----------------------------
BEGIN;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('0Prq3ckZXAudgUhSuRR6fnqLMBP8fsNKBljnO2dS', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiS2tQNWtjY3FkaklXZEhmTHJCYWtKVlBoVzFFR1VqVmYya3dUbW1VcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTg6Imh0dHA6Ly9maWxhLnB0LmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1717158395);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES ('LbxfuBeeB5wwgXGLkV1h6JicmfpgRLzryHQdtrka', 1, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiWEdQRjhkRW5LM2hjRTMxbzU0SU9NMzE3MFRaRzJFbTBieDE3U1dsVSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjE4OiJodHRwOi8vZmlsYS5wdC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkb05tT1pNZkc1elNPd1cyUEt2WGxyLjE0blM4Sno2WUJqNmMwcTJscjhiVEhRakcuTFVVZ2kiO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1717163744);
COMMIT;

-- ----------------------------
-- Table structure for sliders
-- ----------------------------
DROP TABLE IF EXISTS `sliders`;
CREATE TABLE `sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sliders
-- ----------------------------
BEGIN;
INSERT INTO `sliders` (`id`, `title`, `description`, `status`, `url`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (1, 'Non ut voluptates ratione architecto voluptatibus.', 'Aut aut vel amet aut qui ut eligendi. Qui velit quod id sunt est. Corrupti pariatur quam voluptate aut. Mollitia et omnis nostrum similique eveniet quia.', 'draft', 'https://laravel.com/docs/11.x/queries#latest-oldest', '01HZ2DF08VMXEHCV08PZ0CBJQ8.jpg', 53, NULL, '2024-05-23 15:28:14', '2024-05-29 14:53:28');
INSERT INTO `sliders` (`id`, `title`, `description`, `status`, `url`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (2, 'Enim culpa quod aperiam.', 'Officia atque est magnam architecto dignissimos minus. Dicta at dolorem neque sed nihil ut impedit.', 'draft', 'https://koch.com/id-dignissimos-alias-et-minus.html', '01HZ2DF08VMXEHCV08PZ0CBJQ8.jpg', 86, NULL, '2024-05-23 15:28:14', '2024-05-23 15:28:14');
INSERT INTO `sliders` (`id`, `title`, `description`, `status`, `url`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (3, 'Nesciunt et magni.', 'Ut maiores est facilis architecto libero dicta aut. Qui sint non nemo vitae qui id. Repellat illum omnis voluptatem molestias.', 'published', 'http://www.kohler.biz/commodi-rem-quibusdam-quibusdam-ut-cumque', '01HZ2DF08VMXEHCV08PZ0CBJQ8.jpg', 54, NULL, '2024-05-23 15:28:14', '2024-05-23 15:28:14');
INSERT INTO `sliders` (`id`, `title`, `description`, `status`, `url`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (4, 'Nulla quisquam fugit porro debitis natus.', 'In quisquam architecto eos omnis. Quia possimus rem nulla qui minima veniam iure. Et provident amet nisi quidem quia. In voluptatem qui quas.', 'published', 'http://langworth.com/', '01HZ2DF08VMXEHCV08PZ0CBJQ8.jpg', 34, NULL, '2024-05-23 15:28:14', '2024-05-23 15:28:14');
INSERT INTO `sliders` (`id`, `title`, `description`, `status`, `url`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (5, 'Saepe sed qui doloremque sunt ducimus.', 'Nostrum tenetur labore non quod. Nisi molestias sed repellat id. Perferendis excepturi occaecati quia officiis tempore eum fugiat.', 'draft', 'http://schinner.info/dolorum-aut-quibusdam-ad-eius-explicabo', '01HZ2DF08VMXEHCV08PZ0CBJQ8.jpg', 79, NULL, '2024-05-23 15:28:14', '2024-05-23 15:28:14');
INSERT INTO `sliders` (`id`, `title`, `description`, `status`, `url`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (6, 'Perferendis aliquid ducimus pariatur at.', 'Quia iste omnis ab animi quasi. Et aut est in dolores dignissimos. Reiciendis et praesentium earum laboriosam aut nihil est dolor. Optio tempora dolorem ea et ut cum.', 'unpublished', 'http://www.weissnat.com/itaque-ducimus-earum-sed-provident', '01HZ2DF08VMXEHCV08PZ0CBJQ8.jpg', 12, NULL, '2024-05-23 15:28:14', '2024-05-23 15:28:14');
INSERT INTO `sliders` (`id`, `title`, `description`, `status`, `url`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (7, 'Tempora at sint quod.', 'Veritatis rem neque tenetur laudantium. Qui omnis aut sunt ut labore repellat. Maiores ducimus quis cum saepe ullam accusamus. Quidem optio qui excepturi velit enim unde perferendis.', 'draft', 'https://www.corwin.org/neque-nobis-sed-laboriosam-est', '01HZ2DF08VMXEHCV08PZ0CBJQ8.jpg', 45, NULL, '2024-05-23 15:28:14', '2024-05-23 15:28:14');
INSERT INTO `sliders` (`id`, `title`, `description`, `status`, `url`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (8, 'Quasi unde laborum.', 'Praesentium eius alias sint sed nemo. Consequatur quo odio fuga unde consequatur fugit eius non. Eos eaque nostrum tempore pariatur voluptas eos unde sed.', 'published', 'http://www.rogahn.com/', '01HZ2DF08VMXEHCV08PZ0CBJQ8.jpg', 8, NULL, '2024-05-23 15:28:14', '2024-05-23 15:28:14');
INSERT INTO `sliders` (`id`, `title`, `description`, `status`, `url`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (9, 'Nam totam et quasi.', 'Voluptas voluptatem repellat et eaque. Excepturi temporibus perferendis consectetur et quis quia. Tenetur repellendus vel inventore id ipsa iusto sit. Fugit iure alias dolores aut.', 'unpublished', 'http://aufderhar.com/', '01HYK09GZ6QQ5CZRJHR884FSYA.jpg', 5, NULL, '2024-05-23 15:28:14', '2024-05-23 15:28:14');
INSERT INTO `sliders` (`id`, `title`, `description`, `status`, `url`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (10, 'Quae rerum soluta iste eveniet.', 'Architecto eos vel rerum quam ut est. Sunt ipsam repellendus et. Iusto est vel veniam necessitatibus. Itaque iste ut accusantium a repellat distinctio qui. Nam non est itaque.', 'unpublished', 'http://kunze.com/est-nulla-vel-facere-voluptates-reprehenderit-culpa.html', '01HZ2DF08VMXEHCV08PZ0CBJQ8.jpg', 51, NULL, '2024-05-23 15:28:14', '2024-05-23 15:28:14');
INSERT INTO `sliders` (`id`, `title`, `description`, `status`, `url`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (11, 'Ut ut assumenda autem atque rerum.', 'Et vero quis assumenda et tempora. Ut ratione quam repudiandae recusandae praesentium eaque velit voluptatem.', 'published', 'https://www.schmitt.biz/quod-voluptatum-explicabo-ea-dolores-cupiditate', '01HZ2DF08VMXEHCV08PZ0CBJQ8.jpg', 46, NULL, '2024-05-23 15:28:14', '2024-05-23 15:28:14');
INSERT INTO `sliders` (`id`, `title`, `description`, `status`, `url`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (12, 'Iusto non omnis quia magni dolor.', 'Quia aut eius velit. Non itaque quibusdam quaerat. Facere adipisci maiores qui vel maxime error.', 'published', 'https://bednar.com/tempora-est-recusandae-cum-earum-incidunt.html', '01HZ2DF08VMXEHCV08PZ0CBJQ8.jpg', 99, NULL, '2024-05-23 15:28:14', '2024-05-23 15:28:14');
INSERT INTO `sliders` (`id`, `title`, `description`, `status`, `url`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (13, 'Test slide 1 ', 'Unde molestiae voluptatem quasi maxime. Eligendi non minima eius voluptas. Fuga placeat non nisi. Sed reiciendis quas ducimus molestiae dicta quia.', 'unpublished', 'http://greenholt.info/voluptatibus-repellat-commodi-minima-sunt-sit-laboriosam', '01HZ2EHVHSGXSVETN8TY8P5WP5.jpg', 23, NULL, '2024-05-23 15:28:14', '2024-05-31 10:00:08');
INSERT INTO `sliders` (`id`, `title`, `description`, `status`, `url`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (14, 'Impedit commodi et qui labore.', 'Fugit qui nesciunt totam consequatur velit sit et. Minus ipsam dolorem repellendus eum aliquid quam. Dolor est non nobis molestias iusto ab voluptate quam. Illum eaque et cupiditate quas.', 'unpublished', 'http://www.langosh.info/eveniet-autem-sapiente-tempora-fugit-tempora-ut-qui', '01HZ2EHAHNYZNRWQ5D4ZN2NJ0Y.png', 8, NULL, '2024-05-23 15:28:14', '2024-05-29 15:12:13');
INSERT INTO `sliders` (`id`, `title`, `description`, `status`, `url`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (15, 'Minus quis quia.', 'Ut iure molestiae atque. Et sed qui molestias sapiente numquam distinctio. Autem quam velit est ut. Architecto blanditiis neque consectetur quasi pariatur.', 'published', 'http://www.huel.com/qui-dignissimos-consequatur-necessitatibus-qui.html', '01HZ2DF08VMXEHCV08PZ0CBJQ8.jpg', 53, NULL, '2024-05-23 15:28:14', '2024-05-23 15:28:14');
COMMIT;

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int NOT NULL,
  `deleted_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of teams
-- ----------------------------
BEGIN;
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (1, 'Dr. Joey Abbott', 'hic', 'earum', 'Tempora reprehenderit vel ut temporibus maxime molestiae. Consectetur error quos voluptatem eum quas ea. Ratione sapiente quasi commodi sint et.', 'unpublished', 'https://via.placeholder.com/640x480.png/00ddee?text=facilis', 8, '1988-08-07 03:38:16', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (2, 'Keyshawn Friesen III', 'eaque', 'veniam', 'Suscipit necessitatibus eum expedita quae nostrum. Optio voluptas voluptas blanditiis quae deserunt sunt. Eveniet quia ea fugiat veritatis necessitatibus consequatur eligendi ipsa.', 'draft', 'https://via.placeholder.com/640x480.png/007755?text=in', 7, '2008-07-22 15:19:51', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (3, 'Waylon Hegmann', 'quaerat', 'est', 'Neque quis incidunt nulla expedita. Dolor placeat sit occaecati nesciunt.', 'unpublished', 'https://via.placeholder.com/640x480.png/005566?text=et', 3, '1981-08-20 08:14:06', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (4, 'Dr. Althea Ziemann III', 'nesciunt', 'error', 'Sequi molestiae reprehenderit expedita corporis eligendi suscipit aut. Omnis sed et rerum amet dolore reprehenderit. Et dolor illum fugiat est unde atque est. Magni pariatur ipsa molestiae est.', 'unpublished', 'https://via.placeholder.com/640x480.png/00dd00?text=eius', 3, '2009-06-22 03:11:15', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (5, 'Hilario Jacobson', 'possimus', 'at', 'Rerum exercitationem quaerat neque saepe. Eum eum sed aperiam et nesciunt. Velit adipisci voluptatem neque natus.', 'published', 'https://via.placeholder.com/640x480.png/008844?text=quae', 5, '1978-12-19 19:13:42', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (6, 'Prof. Loma Crona', 'earum', 'vel', 'Molestiae tempora quos voluptatem adipisci commodi qui. Iste est sit aut corrupti pariatur. Quo esse consequatur et tempora. Odit et reprehenderit enim rerum sit iure qui.', 'unpublished', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 3, '2008-07-15 16:18:42', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (7, 'Mr. Luciano Wilkinson Sr.', 'architecto', 'porro', 'Unde tempora tempora corporis qui nesciunt nobis. Unde illum dolor occaecati sed accusamus et. Ut doloribus quos perspiciatis inventore excepturi nihil.', 'draft', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 10, '2015-05-09 07:59:16', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (8, 'Connie Nicolas', 'facere', 'recusandae', 'Eius asperiores error quia hic et ipsum. Est aut praesentium magnam. Qui dignissimos ratione reiciendis voluptatem eum. Occaecati quo nihil libero dolore alias rerum.', 'published', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 1, '2003-10-13 05:17:31', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (9, 'Hailey Tromp', 'qui', 'iure', 'Voluptatibus enim dolore et fugit sunt aut atque rem. Nemo illum rerum deleniti ut. Inventore et itaque porro maiores omnis assumenda. Repudiandae qui dolorum delectus sit.', 'unpublished', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 10, '2019-01-06 17:43:53', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (10, 'Prof. Odessa Spinka I', 'sed', 'aspernatur', 'Officiis et qui atque aperiam. Corrupti sit eius dicta voluptate sunt ullam. Quia quo facilis vero reiciendis enim.', 'draft', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 8, '2023-08-05 06:19:09', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (11, 'Saul Christiansen', 'rem', 'iste', 'Velit excepturi libero qui dolores vero necessitatibus deleniti. Dicta sapiente omnis laborum at enim voluptatum. Expedita velit suscipit quo. Repellat veritatis quis maiores.', 'published', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 7, '2017-10-15 08:23:43', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (12, 'Miss Daphney Ledner', 'laudantium', 'explicabo', 'Molestiae ut sapiente non est. Enim ex unde quam nemo et odio debitis. Sed et pariatur atque aut qui itaque minima ullam.', 'published', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 2, '1974-03-19 13:39:13', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (13, 'Jazmin Nikolaus', 'officia', 'non', 'Eum quia qui voluptas voluptas. Doloremque blanditiis consequatur quis exercitationem. Amet ipsam et modi minima. Tenetur omnis deleniti porro veritatis excepturi ipsa incidunt.', 'unpublished', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 2, '1985-06-15 14:06:33', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (14, 'Dr. Darrell Wunsch III', 'rerum', 'velit', 'Ad aspernatur neque et accusamus voluptates. Qui rerum esse fugit hic repellat sed. Omnis corporis reiciendis beatae qui est tempora. Voluptatem quia sint eum sit.', 'unpublished', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 8, '1985-02-21 21:46:16', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (15, 'Dr. Lenora Yundt V', 'totam', 'optio', 'Beatae enim dolore possimus necessitatibus a id ea. Nemo ut eos at voluptatem nihil aspernatur quod dolorem. Nam aut amet sit dicta quo repudiandae.', 'draft', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 3, '1988-02-03 05:32:24', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (16, 'Ena Tromp', 'tenetur', 'dolores', 'Ea sint sed consequatur assumenda omnis. Sit nulla nemo quia sint id esse ratione. Magnam et ab consequatur cupiditate.', 'published', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 7, '2016-04-28 08:04:14', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (17, 'Anya O\'Connell', 'eligendi', 'fugiat', 'Dolores et nisi eveniet similique. Dolores facere velit aut aut quae. Voluptatem repellendus repellendus exercitationem dicta. Voluptas soluta alias ut quo qui molestias.', 'published', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 8, '2006-12-04 04:31:09', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (18, 'Enrique Feeney', 'omnis', 'sit', 'Ratione aperiam architecto earum hic earum ut est minus. Ea pariatur id delectus explicabo. Debitis adipisci doloremque magni nobis et quia ipsa.', 'draft', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 3, '2011-07-03 11:14:20', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (19, 'Kavon Monahan', 'sed', 'et', 'Qui aut nihil corrupti et voluptatum ipsa velit. Placeat est nobis quam eos similique nihil quibusdam. Quia aspernatur et eius aut excepturi sint dolorum.', 'unpublished', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 3, '2009-09-28 08:13:07', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (20, 'Mr. Elian Feeney V', 'ipsum', 'deserunt', 'Culpa est excepturi doloribus vitae. Officia nulla sapiente architecto sapiente hic qui. Sed aliquid deserunt sunt officiis temporibus occaecati veniam ipsa.', 'published', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 1, '1975-04-24 16:42:35', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (21, 'Prof. Annabelle Pagac', 'excepturi', 'ut', 'Eligendi praesentium fugiat dolorem sint repellat maiores quos. Excepturi nemo repellat laboriosam sunt. Dolorum totam rem id maxime sed est autem.', 'draft', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 8, '1998-03-07 11:10:54', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (22, 'Wallace Spinka', 'et', 'ab', 'Voluptatum et aut aut tenetur. Voluptatem omnis a omnis voluptatum hic laborum libero ipsum. Cumque vel maxime libero id voluptatem aut.', 'published', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 9, '2000-08-27 18:01:53', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (23, 'Miss Assunta Ziemann', 'omnis', 'dolor', 'Eveniet cum nesciunt enim porro aut. Ex culpa fuga illum sit ullam iusto soluta. Culpa ut ducimus illo minima quasi beatae at. Neque aut nostrum aliquam omnis eveniet omnis alias.', 'published', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 4, '2014-09-11 11:27:05', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (24, 'Jensen Ebert', 'maxime', 'consequuntur', 'Ipsam aut tempore ullam aliquid vero placeat. Eaque sunt placeat non eveniet reiciendis rerum. Minus non et vel.', 'published', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 8, '1973-04-03 12:10:15', '2024-05-31 12:41:41', '2024-05-31 12:41:41');
INSERT INTO `teams` (`id`, `name`, `surname`, `position`, `description`, `status`, `img`, `sort`, `deleted_at`, `created_at`, `updated_at`) VALUES (25, 'Art Witting II', 'aperiam', 'molestias', 'Laborum aut officia officia cupiditate aspernatur minima sit. Soluta repellendus culpa culpa magnam.', 'unpublished', '01HZ7CRCHZH9BPVAP00YJ9TVP5.avif', 4, '1970-03-17 11:47:47', '2024-05-31 12:41:41', '2024-05-31 13:17:19');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (1, 'Admin', 'admin@email.com', NULL, '$2y$12$oNmOZMfG5zSOwW2PKvXlr.14nS8Jz6YBj6c0q2lr8bTHQjG.LUUgi', NULL, '2024-05-23 15:28:14', '2024-05-23 15:28:14');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
