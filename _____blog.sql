/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 29/09/2022 14:48:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'aliquid', 'aliquid', '2022-09-08 16:14:55', '2022-09-08 16:14:55');
INSERT INTO `categories` VALUES (2, 'officia', 'officia', '2022-09-08 16:14:55', '2022-09-08 16:14:55');
INSERT INTO `categories` VALUES (3, 'laboriosam', 'laboriosam', '2022-09-08 16:14:55', '2022-09-08 16:14:55');
INSERT INTO `categories` VALUES (4, 'fugiat', 'fugiat', '2022-09-08 16:14:55', '2022-09-08 16:14:55');
INSERT INTO `categories` VALUES (5, 'neque', 'neque', '2022-09-08 16:14:55', '2022-09-08 16:14:55');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint UNSIGNED NOT NULL,
  `imageable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES (1, 'posts/421c99916a5aea8f2c53f46bb8c88013.png', 1, 'App\\Models\\Post', '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `images` VALUES (2, 'posts/28c7eee24697942578bcfb69254eda5a.png', 2, 'App\\Models\\Post', '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `images` VALUES (3, 'posts/4b56f7b11dc82373760a79e711955b04.png', 3, 'App\\Models\\Post', '2022-09-08 16:14:58', '2022-09-08 16:14:58');
INSERT INTO `images` VALUES (4, 'posts/87433ea6367ffbf8355e2379db05e24d.png', 4, 'App\\Models\\Post', '2022-09-08 16:14:58', '2022-09-08 16:14:58');
INSERT INTO `images` VALUES (5, 'posts/450e23641e54b563d4b683389bc99368.png', 5, 'App\\Models\\Post', '2022-09-08 16:14:58', '2022-09-08 16:14:58');
INSERT INTO `images` VALUES (6, 'posts/d003955b5e37702926ff7860a4f5989c.png', 6, 'App\\Models\\Post', '2022-09-08 16:14:58', '2022-09-08 16:14:58');
INSERT INTO `images` VALUES (7, 'posts/c6621aeb0b56df348431e5ee8977d62d.png', 7, 'App\\Models\\Post', '2022-09-08 16:14:58', '2022-09-08 16:14:58');
INSERT INTO `images` VALUES (8, 'posts/ae63a83cb690333d981f1cf504a4704e.png', 8, 'App\\Models\\Post', '2022-09-08 16:14:58', '2022-09-08 16:14:58');
INSERT INTO `images` VALUES (9, 'posts/67e05b10d827f03c65051e7b53f3ca20.png', 9, 'App\\Models\\Post', '2022-09-08 16:14:59', '2022-09-08 16:14:59');
INSERT INTO `images` VALUES (10, 'posts/d566ec595f70ff910b8187dbf712bd91.png', 10, 'App\\Models\\Post', '2022-09-08 16:14:59', '2022-09-08 16:14:59');
INSERT INTO `images` VALUES (11, 'posts/3f8068443429bbf960ddfa0e06304e30.png', 11, 'App\\Models\\Post', '2022-09-08 16:14:59', '2022-09-08 16:14:59');
INSERT INTO `images` VALUES (12, 'posts/53acc5f84551d1738e3cf4bc1b727937.png', 12, 'App\\Models\\Post', '2022-09-08 16:14:59', '2022-09-08 16:14:59');
INSERT INTO `images` VALUES (13, 'posts/ef234d3e30ba7bd4a923ea0cf4224d99.png', 13, 'App\\Models\\Post', '2022-09-08 16:14:59', '2022-09-08 16:14:59');
INSERT INTO `images` VALUES (14, 'posts/fe48386e87df80869ede4854bf0d21b0.png', 14, 'App\\Models\\Post', '2022-09-08 16:14:59', '2022-09-08 16:14:59');
INSERT INTO `images` VALUES (15, 'posts/a021fa20495fd8fd35b1a7821c31ec73.png', 15, 'App\\Models\\Post', '2022-09-08 16:15:00', '2022-09-08 16:15:00');
INSERT INTO `images` VALUES (16, 'posts/44dd253db91ad516b8baa39369f99948.png', 16, 'App\\Models\\Post', '2022-09-08 16:15:00', '2022-09-08 16:15:00');
INSERT INTO `images` VALUES (17, 'posts/f64b9d2dc849cc05ce626ec7e629dcef.png', 17, 'App\\Models\\Post', '2022-09-08 16:15:00', '2022-09-08 16:15:00');
INSERT INTO `images` VALUES (18, 'posts/729f1d37d126c26b1155e687fc957d2c.png', 18, 'App\\Models\\Post', '2022-09-08 16:15:01', '2022-09-08 16:15:01');
INSERT INTO `images` VALUES (19, 'posts/24b5492fd1bb15d8af95479e53ef2069.png', 19, 'App\\Models\\Post', '2022-09-08 16:15:01', '2022-09-08 16:15:01');
INSERT INTO `images` VALUES (20, 'posts/fab87f93b72126d7e721e25262dac358.png', 20, 'App\\Models\\Post', '2022-09-08 16:15:01', '2022-09-08 16:15:01');
INSERT INTO `images` VALUES (21, 'posts/0a309ae6276831e17fb767f5eda44776.png', 21, 'App\\Models\\Post', '2022-09-08 16:15:01', '2022-09-08 16:15:01');
INSERT INTO `images` VALUES (22, 'posts/d58038ca7ffab7e458d4c87d0a12aea1.png', 22, 'App\\Models\\Post', '2022-09-08 16:15:01', '2022-09-08 16:15:01');
INSERT INTO `images` VALUES (23, 'posts/d9ad766125b9699308ea0a9606d53265.png', 23, 'App\\Models\\Post', '2022-09-08 16:15:03', '2022-09-08 16:15:03');
INSERT INTO `images` VALUES (24, 'posts/86ac595728c33cbaec7c746d9dea46ab.png', 24, 'App\\Models\\Post', '2022-09-08 16:15:03', '2022-09-08 16:15:03');
INSERT INTO `images` VALUES (25, 'posts/f439441f34c9992f03e7f22f26be10f9.png', 25, 'App\\Models\\Post', '2022-09-08 16:15:03', '2022-09-08 16:15:03');
INSERT INTO `images` VALUES (26, 'posts/a7c21d984f600b80f72592f105d18657.png', 26, 'App\\Models\\Post', '2022-09-08 16:15:04', '2022-09-08 16:15:04');
INSERT INTO `images` VALUES (27, 'posts/5d635b24cbd76ccb251daa510ef885ad.png', 27, 'App\\Models\\Post', '2022-09-08 16:15:04', '2022-09-08 16:15:04');
INSERT INTO `images` VALUES (28, 'posts/ffdce744e3f0df8229061fec5b511035.png', 28, 'App\\Models\\Post', '2022-09-08 16:15:04', '2022-09-08 16:15:04');
INSERT INTO `images` VALUES (29, 'posts/ce7b0c7c333dd5a185407dd6b93d7aaa.png', 29, 'App\\Models\\Post', '2022-09-08 16:15:04', '2022-09-08 16:15:04');
INSERT INTO `images` VALUES (30, 'posts/0839c97c18e871f9d9415361f1a0deca.png', 30, 'App\\Models\\Post', '2022-09-08 16:15:04', '2022-09-08 16:15:04');
INSERT INTO `images` VALUES (31, 'posts/b19e3f340c46f680fffa99cbe7cc37f7.png', 31, 'App\\Models\\Post', '2022-09-08 16:15:05', '2022-09-08 16:15:05');
INSERT INTO `images` VALUES (32, 'posts/57687bdd72203bffc35c51129e54f91e.png', 32, 'App\\Models\\Post', '2022-09-08 16:15:05', '2022-09-08 16:15:05');
INSERT INTO `images` VALUES (33, 'posts/360b42214881d63210c5150ed70bd9db.png', 33, 'App\\Models\\Post', '2022-09-08 16:15:05', '2022-09-08 16:15:05');
INSERT INTO `images` VALUES (34, 'posts/b77c1aa98d558d5185c0a895e375eb49.png', 34, 'App\\Models\\Post', '2022-09-08 16:15:06', '2022-09-08 16:15:06');
INSERT INTO `images` VALUES (35, 'posts/a9a72613c72fb8886e1ce31635789023.png', 35, 'App\\Models\\Post', '2022-09-08 16:15:06', '2022-09-08 16:15:06');
INSERT INTO `images` VALUES (36, 'posts/3c493ab832ef6a3a410f79e8498e3f3d.png', 36, 'App\\Models\\Post', '2022-09-08 16:15:06', '2022-09-08 16:15:06');
INSERT INTO `images` VALUES (37, 'posts/a647ec35d17be37753056b4423698a02.png', 37, 'App\\Models\\Post', '2022-09-08 16:15:06', '2022-09-08 16:15:06');
INSERT INTO `images` VALUES (38, 'posts/d7ba3efe7ed7733a33ddf22b012c0f3b.png', 38, 'App\\Models\\Post', '2022-09-08 16:15:06', '2022-09-08 16:15:06');
INSERT INTO `images` VALUES (39, 'posts/1170100970072e30271087ecf9ba6436.png', 39, 'App\\Models\\Post', '2022-09-08 16:15:07', '2022-09-08 16:15:07');
INSERT INTO `images` VALUES (40, 'posts/b51915b70bfd7de7cab266ed20510b92.png', 40, 'App\\Models\\Post', '2022-09-08 16:15:07', '2022-09-08 16:15:07');
INSERT INTO `images` VALUES (41, 'posts/f5a1c4e8571cd6a3e3bf4830432541bc.png', 41, 'App\\Models\\Post', '2022-09-08 16:15:07', '2022-09-08 16:15:07');
INSERT INTO `images` VALUES (42, 'posts/31516d5d6e879ed19857faf5d84b187c.png', 42, 'App\\Models\\Post', '2022-09-08 16:15:07', '2022-09-08 16:15:07');
INSERT INTO `images` VALUES (43, 'posts/67aaac63b012fffdd4905fbb9c21d942.png', 43, 'App\\Models\\Post', '2022-09-08 16:15:07', '2022-09-08 16:15:07');
INSERT INTO `images` VALUES (44, 'posts/3d5434d09c70c938cb113a7c7fba8a81.png', 44, 'App\\Models\\Post', '2022-09-08 16:15:09', '2022-09-08 16:15:09');
INSERT INTO `images` VALUES (45, 'posts/bbbbd168715ad38c0b652ecfa517029a.png', 45, 'App\\Models\\Post', '2022-09-08 16:15:10', '2022-09-08 16:15:10');
INSERT INTO `images` VALUES (46, 'posts/3b3526dbf03aef721e50ca1d3b012de7.png', 46, 'App\\Models\\Post', '2022-09-08 16:15:10', '2022-09-08 16:15:10');
INSERT INTO `images` VALUES (47, 'posts/126a6325d28bd7ffe6a62a61b2adaefc.png', 47, 'App\\Models\\Post', '2022-09-08 16:15:10', '2022-09-08 16:15:10');
INSERT INTO `images` VALUES (48, 'posts/bc577723ff7877ad4b3341a625272a23.png', 48, 'App\\Models\\Post', '2022-09-08 16:15:10', '2022-09-08 16:15:10');
INSERT INTO `images` VALUES (49, 'posts/6bbf61b6d6ff0aa8474ef208590a74fe.png', 49, 'App\\Models\\Post', '2022-09-08 16:15:10', '2022-09-08 16:15:10');
INSERT INTO `images` VALUES (50, 'posts/325ad2cc9304d17d1be7057aa960d7f0.png', 50, 'App\\Models\\Post', '2022-09-08 16:15:11', '2022-09-08 16:15:11');
INSERT INTO `images` VALUES (51, 'posts/8JRgcCL2pLg7a4Sbphgz0gQWwjFTKa4Q4t9FSkxx.jpg', 52, 'App\\Models\\Post', '2022-09-28 14:09:16', '2022-09-28 14:09:16');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (5, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (6, '2022_09_07_123809_create_sessions_table', 1);
INSERT INTO `migrations` VALUES (7, '2022_09_07_124706_create_categories_table', 1);
INSERT INTO `migrations` VALUES (8, '2022_09_07_124920_create_posts_table', 1);
INSERT INTO `migrations` VALUES (9, '2022_09_07_125612_create_tags_table', 1);
INSERT INTO `migrations` VALUES (10, '2022_09_07_125712_create_post_tag_table', 1);
INSERT INTO `migrations` VALUES (11, '2022_09_07_125833_create_images_table', 1);
INSERT INTO `migrations` VALUES (12, '2022_09_21_132312_add_color_to_tags_table', 2);
INSERT INTO `migrations` VALUES (13, '2022_09_27_124954_change_prop_to_posts_table', 3);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp(0) NULL DEFAULT NULL,
  `expires_at` timestamp(0) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for post_tag
-- ----------------------------
DROP TABLE IF EXISTS `post_tag`;
CREATE TABLE `post_tag`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `post_tag_post_id_foreign`(`post_id`) USING BTREE,
  INDEX `post_tag_tag_id_foreign`(`tag_id`) USING BTREE,
  CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_tag
-- ----------------------------
INSERT INTO `post_tag` VALUES (1, 1, 5, NULL, NULL);
INSERT INTO `post_tag` VALUES (2, 1, 10, NULL, NULL);
INSERT INTO `post_tag` VALUES (3, 2, 3, NULL, NULL);
INSERT INTO `post_tag` VALUES (4, 2, 10, NULL, NULL);
INSERT INTO `post_tag` VALUES (5, 3, 1, NULL, NULL);
INSERT INTO `post_tag` VALUES (6, 3, 7, NULL, NULL);
INSERT INTO `post_tag` VALUES (7, 4, 4, NULL, NULL);
INSERT INTO `post_tag` VALUES (8, 4, 9, NULL, NULL);
INSERT INTO `post_tag` VALUES (9, 5, 3, NULL, NULL);
INSERT INTO `post_tag` VALUES (10, 5, 10, NULL, NULL);
INSERT INTO `post_tag` VALUES (11, 6, 3, NULL, NULL);
INSERT INTO `post_tag` VALUES (12, 6, 9, NULL, NULL);
INSERT INTO `post_tag` VALUES (13, 7, 4, NULL, NULL);
INSERT INTO `post_tag` VALUES (14, 7, 6, NULL, NULL);
INSERT INTO `post_tag` VALUES (15, 8, 4, NULL, NULL);
INSERT INTO `post_tag` VALUES (16, 8, 6, NULL, NULL);
INSERT INTO `post_tag` VALUES (17, 9, 5, NULL, NULL);
INSERT INTO `post_tag` VALUES (18, 9, 8, NULL, NULL);
INSERT INTO `post_tag` VALUES (19, 10, 4, NULL, NULL);
INSERT INTO `post_tag` VALUES (20, 10, 10, NULL, NULL);
INSERT INTO `post_tag` VALUES (21, 11, 1, NULL, NULL);
INSERT INTO `post_tag` VALUES (22, 11, 10, NULL, NULL);
INSERT INTO `post_tag` VALUES (23, 12, 3, NULL, NULL);
INSERT INTO `post_tag` VALUES (24, 12, 9, NULL, NULL);
INSERT INTO `post_tag` VALUES (25, 13, 2, NULL, NULL);
INSERT INTO `post_tag` VALUES (26, 13, 9, NULL, NULL);
INSERT INTO `post_tag` VALUES (27, 14, 1, NULL, NULL);
INSERT INTO `post_tag` VALUES (28, 14, 7, NULL, NULL);
INSERT INTO `post_tag` VALUES (29, 15, 4, NULL, NULL);
INSERT INTO `post_tag` VALUES (30, 15, 7, NULL, NULL);
INSERT INTO `post_tag` VALUES (31, 16, 4, NULL, NULL);
INSERT INTO `post_tag` VALUES (32, 16, 9, NULL, NULL);
INSERT INTO `post_tag` VALUES (33, 17, 4, NULL, NULL);
INSERT INTO `post_tag` VALUES (34, 17, 9, NULL, NULL);
INSERT INTO `post_tag` VALUES (35, 18, 1, NULL, NULL);
INSERT INTO `post_tag` VALUES (36, 18, 7, NULL, NULL);
INSERT INTO `post_tag` VALUES (37, 19, 1, NULL, NULL);
INSERT INTO `post_tag` VALUES (38, 19, 9, NULL, NULL);
INSERT INTO `post_tag` VALUES (39, 20, 1, NULL, NULL);
INSERT INTO `post_tag` VALUES (40, 20, 10, NULL, NULL);
INSERT INTO `post_tag` VALUES (41, 21, 5, NULL, NULL);
INSERT INTO `post_tag` VALUES (42, 21, 10, NULL, NULL);
INSERT INTO `post_tag` VALUES (43, 22, 2, NULL, NULL);
INSERT INTO `post_tag` VALUES (44, 22, 6, NULL, NULL);
INSERT INTO `post_tag` VALUES (45, 23, 5, NULL, NULL);
INSERT INTO `post_tag` VALUES (46, 23, 8, NULL, NULL);
INSERT INTO `post_tag` VALUES (47, 24, 3, NULL, NULL);
INSERT INTO `post_tag` VALUES (48, 24, 10, NULL, NULL);
INSERT INTO `post_tag` VALUES (49, 25, 2, NULL, NULL);
INSERT INTO `post_tag` VALUES (50, 25, 9, NULL, NULL);
INSERT INTO `post_tag` VALUES (51, 26, 2, NULL, NULL);
INSERT INTO `post_tag` VALUES (52, 26, 7, NULL, NULL);
INSERT INTO `post_tag` VALUES (53, 27, 2, NULL, NULL);
INSERT INTO `post_tag` VALUES (54, 27, 10, NULL, NULL);
INSERT INTO `post_tag` VALUES (55, 28, 2, NULL, NULL);
INSERT INTO `post_tag` VALUES (56, 28, 10, NULL, NULL);
INSERT INTO `post_tag` VALUES (57, 29, 5, NULL, NULL);
INSERT INTO `post_tag` VALUES (58, 29, 8, NULL, NULL);
INSERT INTO `post_tag` VALUES (59, 30, 4, NULL, NULL);
INSERT INTO `post_tag` VALUES (60, 30, 7, NULL, NULL);
INSERT INTO `post_tag` VALUES (61, 31, 1, NULL, NULL);
INSERT INTO `post_tag` VALUES (62, 31, 9, NULL, NULL);
INSERT INTO `post_tag` VALUES (63, 32, 1, NULL, NULL);
INSERT INTO `post_tag` VALUES (64, 32, 6, NULL, NULL);
INSERT INTO `post_tag` VALUES (65, 33, 4, NULL, NULL);
INSERT INTO `post_tag` VALUES (66, 33, 8, NULL, NULL);
INSERT INTO `post_tag` VALUES (67, 34, 1, NULL, NULL);
INSERT INTO `post_tag` VALUES (68, 34, 6, NULL, NULL);
INSERT INTO `post_tag` VALUES (69, 35, 2, NULL, NULL);
INSERT INTO `post_tag` VALUES (70, 35, 6, NULL, NULL);
INSERT INTO `post_tag` VALUES (71, 36, 3, NULL, NULL);
INSERT INTO `post_tag` VALUES (72, 36, 8, NULL, NULL);
INSERT INTO `post_tag` VALUES (73, 37, 5, NULL, NULL);
INSERT INTO `post_tag` VALUES (74, 37, 6, NULL, NULL);
INSERT INTO `post_tag` VALUES (75, 38, 1, NULL, NULL);
INSERT INTO `post_tag` VALUES (76, 38, 9, NULL, NULL);
INSERT INTO `post_tag` VALUES (77, 39, 1, NULL, NULL);
INSERT INTO `post_tag` VALUES (78, 39, 9, NULL, NULL);
INSERT INTO `post_tag` VALUES (79, 40, 5, NULL, NULL);
INSERT INTO `post_tag` VALUES (80, 40, 7, NULL, NULL);
INSERT INTO `post_tag` VALUES (81, 41, 3, NULL, NULL);
INSERT INTO `post_tag` VALUES (82, 41, 10, NULL, NULL);
INSERT INTO `post_tag` VALUES (83, 42, 1, NULL, NULL);
INSERT INTO `post_tag` VALUES (84, 42, 6, NULL, NULL);
INSERT INTO `post_tag` VALUES (85, 43, 2, NULL, NULL);
INSERT INTO `post_tag` VALUES (86, 43, 9, NULL, NULL);
INSERT INTO `post_tag` VALUES (87, 44, 3, NULL, NULL);
INSERT INTO `post_tag` VALUES (88, 44, 6, NULL, NULL);
INSERT INTO `post_tag` VALUES (89, 45, 4, NULL, NULL);
INSERT INTO `post_tag` VALUES (90, 45, 10, NULL, NULL);
INSERT INTO `post_tag` VALUES (91, 46, 3, NULL, NULL);
INSERT INTO `post_tag` VALUES (92, 46, 8, NULL, NULL);
INSERT INTO `post_tag` VALUES (93, 47, 4, NULL, NULL);
INSERT INTO `post_tag` VALUES (94, 47, 6, NULL, NULL);
INSERT INTO `post_tag` VALUES (95, 48, 5, NULL, NULL);
INSERT INTO `post_tag` VALUES (96, 48, 10, NULL, NULL);
INSERT INTO `post_tag` VALUES (97, 49, 1, NULL, NULL);
INSERT INTO `post_tag` VALUES (98, 49, 7, NULL, NULL);
INSERT INTO `post_tag` VALUES (99, 50, 5, NULL, NULL);
INSERT INTO `post_tag` VALUES (100, 50, 9, NULL, NULL);
INSERT INTO `post_tag` VALUES (101, 51, 1, NULL, NULL);
INSERT INTO `post_tag` VALUES (102, 51, 4, NULL, NULL);
INSERT INTO `post_tag` VALUES (103, 51, 6, NULL, NULL);
INSERT INTO `post_tag` VALUES (104, 51, 8, NULL, NULL);
INSERT INTO `post_tag` VALUES (105, 51, 10, NULL, NULL);
INSERT INTO `post_tag` VALUES (106, 52, 4, NULL, NULL);
INSERT INTO `post_tag` VALUES (107, 52, 7, NULL, NULL);

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extract` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `status` enum('1','2') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `user_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `posts_user_id_foreign`(`user_id`) USING BTREE,
  INDEX `posts_category_id_foreign`(`category_id`) USING BTREE,
  CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 'Et voluptas sed animi et ut ut qui quis.', 'et-voluptas-sed-animi-et-ut-ut-qui-quis', 'Est autem ipsum quos modi. Exercitationem aliquid fugit magni est. Velit sit laborum reprehenderit hic dicta sit. Aspernatur ut sint omnis illum deleniti qui odit.', 'Inventore dolore ipsum et ea voluptates eum. Voluptatibus repellat ea aliquam esse sunt. Nihil sed aut nihil ut. Cupiditate est possimus laborum molestias. Et voluptatibus omnis quidem dolor inventore. Dolores molestiae doloremque delectus quidem eos enim recusandae. Quaerat voluptatem repellat id quia aut et maxime. Tenetur architecto dolorem molestiae rem vitae. Asperiores necessitatibus quas fugiat ut qui repellat. Magni maxime est facere veniam aut commodi nemo. Architecto voluptas consequuntur deserunt eaque deserunt earum. Aut alias officia libero vitae. Delectus ipsam eius amet ullam sed earum eos. Molestias et temporibus ipsa dolorum. Doloribus modi harum officia doloribus corporis sunt molestiae. Est illum sapiente ut. Quisquam dolore ut nobis consequatur accusamus vel.', '1', 1, 3, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (2, 'Porro ut similique hic dolorum et atque.', 'porro-ut-similique-hic-dolorum-et-atque', 'Tempore dolorem placeat dolor eum autem. Est debitis beatae quae velit repellat. Iste omnis facilis sint eum voluptas consequatur et. Hic asperiores suscipit voluptas ut maiores.', 'Quia aliquam iste consectetur et nihil sunt necessitatibus. Vel voluptatem blanditiis culpa asperiores cupiditate et beatae iure. At ipsam qui animi libero. Veniam blanditiis ut amet error adipisci. Est itaque quia at. Itaque architecto aspernatur illo odio. Corrupti praesentium laboriosam sequi sed temporibus. Praesentium delectus earum repellendus eaque amet ut debitis occaecati. Dignissimos doloremque vitae minus id repellat. Labore nihil eligendi voluptatibus culpa voluptatum nesciunt consequatur nisi. Earum et soluta aut ipsam accusantium doloribus. Molestiae est quas possimus illo iste accusamus ea maiores. Quod reprehenderit qui ut provident consectetur eveniet quia voluptate. Alias provident vero iste molestiae. Consequatur voluptatem nisi aut totam hic velit architecto. Occaecati incidunt asperiores velit explicabo est quibusdam ipsa. Sint sunt suscipit minus vitae vero pariatur possimus. Aut similique vel aut ab impedit voluptate veritatis.', '1', 2, 1, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (3, 'Deleniti sequi quia architecto fugit non omnis voluptas.', 'deleniti-sequi-quia-architecto-fugit-non-omnis-voluptas', 'Expedita ipsam quia velit quam animi quas. Accusamus et recusandae iste quia nemo omnis. Eum alias minima iure veritatis atque. Quisquam exercitationem nostrum sed.', 'Fugiat accusamus illum deserunt veritatis ut aut. Eos ea consequatur maiores et. Voluptatem nihil eum dolores non modi. Voluptates voluptas similique eos qui. Ut illo cum nam deleniti. Aut magni adipisci nisi enim perferendis quis repellendus. Nisi earum repudiandae ad quasi et qui corrupti. Dolorum voluptatem tempora molestiae ex. Ut accusamus repellendus ipsam numquam. Dicta necessitatibus numquam sapiente sapiente sint amet voluptas. Exercitationem itaque et dolor animi iusto. Voluptatem aut vero omnis laudantium blanditiis quaerat voluptatibus. Eaque numquam voluptates ipsa porro rerum. Amet repudiandae fugiat molestias ratione. Voluptatem magni optio aspernatur placeat eos velit dolores. Expedita eveniet delectus voluptate libero. Aut corrupti velit ipsa dicta provident omnis. Beatae reprehenderit sed magnam. Eum necessitatibus qui et magnam facere. Sit quam dicta ipsam natus eos itaque officia. Dolores voluptatem minima ipsa saepe vel illo modi veritatis.', '1', 5, 2, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (4, 'Ipsa vel doloremque ea magni a dolore.', 'ipsa-vel-doloremque-ea-magni-a-dolore', 'Temporibus sunt ut ab. Rem aut sint voluptatem. Itaque quia perspiciatis ut quidem et est incidunt.', 'Dicta voluptatum debitis ipsum aut aliquid ab. Voluptas velit perspiciatis autem voluptate debitis sint inventore. Culpa quae possimus non tenetur velit placeat. Ratione soluta eum nam esse molestias. Nobis ea architecto sed dolore in. Ipsa quam iste eos cupiditate. Mollitia dolore suscipit blanditiis vel. Provident cum accusantium voluptatem esse ipsum. Eligendi deleniti sequi quasi impedit nihil. Quidem deleniti quis placeat ut. Tempore ad dolore qui iure similique id. Laborum nesciunt dolorem ipsam qui sint cum voluptates. Facilis at adipisci architecto vero minima. Et eveniet ipsam doloremque libero. Possimus dolor accusamus id eaque saepe occaecati. Veritatis nihil officiis ullam ipsum aperiam. Quo illo ipsam illum veniam voluptatum ea. Et itaque recusandae aliquid id. Enim odio sequi non sapiente tenetur dolores. Est laudantium consequatur accusamus vitae qui placeat nam. Non dolorem suscipit nesciunt recusandae exercitationem eos ipsam.', '2', 8, 2, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (5, 'Ea voluptatem magni aliquid neque hic commodi quia placeat.', 'ea-voluptatem-magni-aliquid-neque-hic-commodi-quia-placeat', 'Illum maiores ex enim tempore. Deleniti animi exercitationem odit et est adipisci assumenda. Fugiat blanditiis suscipit est. Adipisci aut quis fuga adipisci. Eos iusto occaecati pariatur illo non. Ut et voluptatum consequatur qui quae.', 'Quidem consequatur vel perferendis deserunt doloribus aut voluptatem. Nulla dignissimos quis non necessitatibus omnis. Inventore sunt quasi tenetur. Laboriosam sit aut sapiente velit. Nihil optio suscipit adipisci nihil cupiditate nisi. Qui consequatur non iure est. Voluptates tempore beatae voluptatibus voluptatem quia deserunt voluptas. Deserunt veritatis magnam quam eius atque. Est inventore odio dolorum iste autem consequatur voluptatibus. Nostrum ut odit voluptatem inventore. Voluptas quo ipsa vel deserunt sapiente. Laudantium quis ratione minus soluta aut. Odit et cupiditate alias adipisci ut. Magni nihil earum et rerum veritatis rem officiis. Aut dignissimos ipsum accusantium quia sit placeat. Dolores totam dolorem sunt cumque rerum provident. Voluptatibus modi voluptas maxime ullam cum expedita. Enim dolores aut tempore necessitatibus fuga. Quis et deserunt architecto sint tempora in.', '2', 6, 3, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (6, 'Incidunt exercitationem cum et sunt temporibus dolorum molestiae.', 'incidunt-exercitationem-cum-et-sunt-temporibus-dolorum-molestiae', 'Quam assumenda dolorem inventore qui sed nobis in. Molestiae ad illo nostrum exercitationem. Sint amet tenetur placeat rerum quos.', 'Cumque aliquam dignissimos quia est est aliquam itaque pariatur. Eos omnis hic sint incidunt ullam. Sint veritatis id eaque et. Ducimus sunt qui non ut odit cupiditate. Molestiae modi iusto necessitatibus. Quas molestiae qui odio et in blanditiis. Occaecati tempora sed odit voluptas delectus eligendi mollitia. Ab nobis rem dolore sequi molestiae nobis ut labore. Ut ex exercitationem voluptatem iste. Atque accusamus et quia quos adipisci praesentium. Est iusto voluptate eum. Ad ea sapiente fugiat id fuga eveniet eum. Inventore atque alias aliquid excepturi. At animi sed voluptatem. Sapiente ipsam dolor quia accusamus nihil voluptate. Est qui ut voluptates ducimus voluptatum animi molestiae a. Eos fugiat et dolorum quisquam. Quam possimus illo autem harum atque magni. Facere adipisci hic dolor earum iure. Nostrum nisi natus et impedit quia. Ea et sint dolore odio nisi non fuga.', '2', 7, 3, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (7, 'Modi itaque hic quas eaque et itaque pariatur eveniet.', 'modi-itaque-hic-quas-eaque-et-itaque-pariatur-eveniet', 'Quia praesentium aliquam qui expedita et est recusandae esse. Ratione tenetur assumenda doloribus neque iusto repellendus ut sunt. Consequatur sint id quidem nulla et sint dolores. Ullam quisquam excepturi nostrum nesciunt sit. Et ab a qui sit qui.', 'Magni molestiae atque qui sint nostrum. Ea non quisquam dolorum magnam et adipisci. Sit necessitatibus hic temporibus autem voluptatum veritatis. Et laboriosam maxime iure et. Aspernatur consequatur id quis et soluta ea et assumenda. Pariatur ullam illo similique facilis. Natus reiciendis nulla dolor quibusdam amet maxime aut. Sed minus ullam vel velit eum quo. Totam voluptas aut aut excepturi harum quaerat explicabo. Nobis est et minima facere impedit ipsam est ipsa. Aspernatur commodi blanditiis nam nemo assumenda rerum. In omnis doloremque velit doloremque aliquam officiis enim. Quod unde fuga assumenda consequuntur perspiciatis voluptates. Rem voluptatem atque provident ipsam impedit aut. Voluptatem rem odit omnis laboriosam odio quasi. Velit corrupti expedita libero quasi eum. Magnam est et ut ipsum delectus quae est et. Et reiciendis tempora qui et deleniti. Est at iusto nostrum earum maxime aperiam. Quo hic quas quod est. Nesciunt iste fugit in harum ex consequatur.', '1', 9, 5, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (8, 'Reiciendis voluptatem aut quos et magnam.', 'reiciendis-voluptatem-aut-quos-et-magnam', 'Eum odit cumque harum placeat repellendus omnis. Eum temporibus qui qui velit omnis nisi ea. Totam itaque sit dolor.', 'Et consequatur voluptatem optio eaque quaerat ab qui iure. Accusantium consequuntur praesentium provident aliquam. Sit ullam cupiditate aut fuga aut ipsa saepe. Velit at ratione est hic vel laborum natus. Vel recusandae sunt veniam et harum quos quo. Enim cum ut enim qui autem porro sed. Eligendi commodi ut atque tenetur. Veritatis impedit blanditiis dolores. Veniam nihil aut et optio. Facilis qui sit quidem aspernatur qui dignissimos amet. Asperiores qui consequatur et quaerat exercitationem aliquam et. Repellendus ipsam non laudantium fuga placeat unde. Qui placeat rerum quia porro sint praesentium doloremque. Repudiandae ea expedita et beatae maiores veritatis. Similique ad possimus in expedita explicabo. At sed ea eaque. Ut qui non porro. Sequi aliquid occaecati error. Deleniti rerum ut quo eligendi explicabo ipsum. Unde dolor alias iusto impedit quo repudiandae quo quaerat.', '2', 5, 4, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (9, 'Sed occaecati possimus facilis reiciendis illum.', 'sed-occaecati-possimus-facilis-reiciendis-illum', 'Non sed totam adipisci doloribus sed. Porro nemo consequatur cum magnam reiciendis magni. Ut at molestiae in possimus et eaque.', 'Impedit ipsum velit sunt quis sit sed. Nesciunt provident laborum exercitationem necessitatibus. Sapiente ut voluptas laudantium illum laborum. Et alias dolorem facilis quod. Dolor et voluptatum magni et. Accusamus earum consequuntur et nobis aut. Sed consectetur sunt eveniet. Ad sapiente iure cupiditate minima possimus sunt dicta. Qui repellendus non dolor est vel vero corrupti. Nihil aut iusto dolorem et facilis nisi et. Omnis vel quae deleniti atque. Debitis et libero qui iure ea. Consequatur sed nihil sed adipisci autem. Illum dolores sit minima ut illo. Dolores eos animi soluta sint. Ea quae ullam iusto rerum vero illo. Labore eligendi molestiae non error qui maiores nihil. Praesentium quia repudiandae eveniet aspernatur voluptas ipsum. Accusamus facere id minima doloribus. Voluptatem possimus et ut totam dolor doloribus saepe.', '2', 1, 2, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (10, 'Fuga amet eligendi iure deleniti numquam doloremque impedit.', 'fuga-amet-eligendi-iure-deleniti-numquam-doloremque-impedit', 'Quidem omnis et sed nostrum. Ullam vero inventore dolorem aut. Et est consequatur consequatur alias. Eum amet illo libero.', 'Deleniti ab reiciendis vel quia. In quos saepe voluptatum error eum unde reiciendis. Earum aut sed hic odit cum aliquam in aspernatur. Odit et rerum aut. Veritatis modi delectus eos est. Labore totam repudiandae commodi sunt aut occaecati. Enim similique quia aut porro. Animi ipsa incidunt aut laborum odit quisquam esse rerum. Id vel qui expedita molestiae sit aut voluptas. Enim et ut aut nulla in at quam. Iure nam deserunt voluptates quia eum. Nulla provident dolores itaque accusamus. Possimus rerum quae omnis officia molestias. Enim qui ullam placeat quidem. Repudiandae eum magni ipsam vero sequi quia est voluptatem. Error mollitia numquam modi laudantium. Qui et labore quia mollitia veniam dolorum. Rerum et possimus et porro quia voluptatem quaerat. Quia est omnis voluptas alias consequatur. Quibusdam veniam suscipit sed modi sapiente. Odit ducimus dolore ipsa nostrum libero autem.', '1', 2, 5, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (11, 'Natus id similique quisquam quibusdam.', 'natus-id-similique-quisquam-quibusdam', 'Eius vel non et quam ipsa nisi voluptatem sequi. Molestiae quos et sed debitis. Voluptatem dolores sed cupiditate aut cupiditate.', 'Enim aperiam consequatur et delectus hic quaerat animi. Autem eos autem et itaque accusamus sunt. Vel accusamus sint eos. Dolor reprehenderit libero ut sed deserunt repudiandae dolor. Ipsa voluptatem minus aut sunt at dignissimos maxime at. Eos rerum omnis enim. Saepe ullam a quis iste eius. Eum aspernatur labore magni accusantium. Nihil aspernatur deserunt et deleniti et hic consequatur. Quasi nesciunt asperiores aut accusantium hic eum aut nobis. Id temporibus repellat doloremque incidunt voluptas qui. Adipisci vel aut quis consequatur sed ducimus deserunt. Quisquam repellat aperiam accusantium voluptatem provident recusandae ipsum. Et magni unde sint mollitia reprehenderit perspiciatis omnis. Veritatis fugiat architecto illo quisquam quia sit. Occaecati qui est id quo corrupti. Aliquam error reiciendis ipsam a corrupti quae perferendis. Qui sunt voluptatem odit est id itaque. Officia dolorem et quidem et laborum illum.', '2', 4, 1, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (12, 'Id ex perspiciatis nihil aut nostrum quaerat.', 'id-ex-perspiciatis-nihil-aut-nostrum-quaerat', 'Repudiandae harum quam consequatur sit quis voluptatem maxime. Voluptatem quo sit totam asperiores quae. Pariatur molestiae aut fugiat qui a debitis. Velit assumenda ut qui ut in fuga. Aut illo nam excepturi corrupti dolorum est dolorum.', 'Voluptas in facere exercitationem tempora delectus quaerat. Ut commodi est reiciendis iure corporis. Dolorum ut et sunt id. Quisquam ex soluta vel aliquid hic incidunt. Illo ut rerum enim. Voluptatem laboriosam et saepe ut maxime. Voluptas sed sapiente nulla sunt. Voluptatem sequi rerum corporis similique in. Voluptas aut magnam consequatur facere rerum incidunt. Labore quos quod quam veniam delectus cum architecto. Quis expedita nihil numquam nihil. Minima non reiciendis molestiae illum accusamus. Sint voluptatem harum quas hic. Rerum saepe expedita deserunt expedita perspiciatis. Quia explicabo fugit eveniet unde ut. Quia quo blanditiis veritatis porro nisi. Et rerum et tempora vero minima incidunt. Dolores commodi maxime molestias magni. Libero perspiciatis dolor ut maiores omnis sit eveniet. Eum illo voluptatem aliquam illo molestiae. Expedita dolore ut ducimus est inventore natus. Quia qui voluptatem maxime unde repudiandae maiores. Tempora cum ut animi sit laboriosam quas.', '2', 3, 2, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (13, 'Qui aperiam ut non ab quo natus rerum.', 'qui-aperiam-ut-non-ab-quo-natus-rerum', 'Aperiam labore eligendi dicta possimus. Adipisci sit laudantium molestiae in. Ipsa sed laborum qui beatae magnam non. Illo sed sit dolores omnis. Consequatur pariatur occaecati corporis illum. Eos et aspernatur ut corporis ut velit qui et.', 'Quia aut aut quam aut libero quo earum. Architecto aut repudiandae adipisci asperiores error. In et nemo consequatur dolores aut deserunt sunt. Ipsum cupiditate aut est molestiae. Aut voluptas neque error qui quis sed doloremque ad. Quaerat impedit recusandae ad quia nihil nisi quo. Et sit qui quisquam tempore maxime. Perspiciatis debitis esse dolorum ipsam magnam asperiores. Quo ullam laboriosam dolore sint. Nihil tempora omnis accusamus accusamus velit voluptatem dolorem quibusdam. Expedita quae sapiente dolores provident non. Qui quia corrupti ea sapiente omnis perspiciatis. Temporibus sint est similique totam eveniet eaque. Sequi in ea sed nostrum enim qui non. Illum dolorem qui sit facere consequatur deserunt. Minus saepe ducimus labore quod quam earum perspiciatis dolorum. Est blanditiis pariatur sapiente. Cupiditate omnis corrupti impedit eum. Ipsam officia est et et dignissimos eligendi qui. Pariatur quam et consectetur odio et enim iste. Est vel cupiditate et sit.', '2', 9, 4, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (14, 'Nostrum commodi quia dolorum voluptatem aut voluptatem.', 'nostrum-commodi-quia-dolorum-voluptatem-aut-voluptatem', 'Quaerat quos sed qui. Eveniet magnam voluptas possimus reprehenderit. Et eos tempore officia. Quia quam possimus autem repellendus dolor ut dolorem.', 'Cum voluptates minus aut error blanditiis. Consequuntur nobis expedita voluptatibus asperiores corrupti. Pariatur perspiciatis et atque placeat reiciendis. Nihil in nam quia ipsum et quos explicabo. Ut fugit magnam quo odit consequatur debitis dignissimos. Voluptatem molestiae at officiis sint aperiam. Eligendi quas architecto et ut deleniti. Nostrum ut animi et. Quidem voluptatem fugit adipisci. Nesciunt aut deleniti eum deleniti laborum ratione tempora similique. Cupiditate cum assumenda rerum aperiam esse eius rerum esse. Nulla fugiat saepe non accusamus sed. Sequi illo perferendis voluptas itaque. Exercitationem delectus neque non illum reprehenderit quaerat inventore. Repellendus est eum quibusdam mollitia. Eum sed quidem distinctio molestiae cum quo aperiam. Officia quia quo voluptatem et. Aut non eos in natus dolore aut. Libero est sit ut.', '1', 2, 3, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (15, 'Veniam laborum eum et.', 'veniam-laborum-eum-et', 'Quod atque aliquam sit accusamus. Labore est accusamus et. Consequatur pariatur nobis perspiciatis a ea harum dignissimos. Neque enim et rerum dignissimos minus quidem unde.', 'Impedit omnis impedit sint sed. Sed voluptatum ipsa officiis et nihil voluptatem deserunt. Autem ea modi nesciunt omnis qui consectetur voluptatem eum. Aut praesentium porro voluptatem. Beatae ex et voluptatem et. Vero magni maiores omnis eum ut deserunt. Qui delectus quis et cum. Et illo soluta exercitationem iusto. Officiis qui earum ut eligendi et vel. A modi officiis nulla blanditiis ut aut et. Itaque aliquam reprehenderit non aut pariatur facere. In ullam quaerat magnam assumenda autem soluta quo. Perferendis molestiae consequuntur hic. Assumenda impedit quae aliquid optio consequatur quos fuga explicabo. Assumenda quaerat nam cum voluptas. Suscipit ut autem distinctio qui delectus necessitatibus. Et dolores accusamus minima ipsum. Debitis non rerum exercitationem nobis necessitatibus. Facilis omnis voluptate id illo non eum accusamus facilis. Ab magni dolorem atque veniam.', '1', 7, 5, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (16, 'Quibusdam velit aut alias.', 'quibusdam-velit-aut-alias', 'Sit at quisquam et dignissimos amet. Rem nobis qui consequatur eum ducimus non. Eos cumque quisquam magni sunt accusantium cum. Quam inventore excepturi inventore sit sint. Nam ut reiciendis porro.', 'Explicabo eaque non qui facere excepturi vel veniam ex. Id ipsa animi quas distinctio reiciendis. Est inventore earum cum suscipit vel autem qui. Quaerat praesentium voluptatem ad accusamus. Laboriosam ducimus iure natus similique. Est molestias similique autem similique voluptates facilis qui. Molestiae et deleniti excepturi expedita quia consequatur. Velit eos adipisci commodi aut sint voluptatem. Exercitationem autem non natus ut neque accusantium voluptas. Quaerat ullam voluptas id voluptatum distinctio a. Minus qui tenetur repudiandae aut id. Totam dolor cupiditate illum praesentium. Consequatur dolorum corrupti officia laboriosam cupiditate dolor nesciunt. Eos cumque expedita et modi provident excepturi. Voluptate deserunt ipsa sapiente sed tempore eos ducimus rerum. Illo earum ut voluptatum ut eos voluptas veniam tenetur. Quisquam iusto distinctio consequatur dolorum corporis vero.', '2', 9, 2, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (17, 'Alias soluta rem ratione natus enim qui et autem.', 'alias-soluta-rem-ratione-natus-enim-qui-et-autem', 'Eaque ea impedit sit. Autem eum facilis consequuntur qui. Iure aut maiores vel nihil. Et voluptas rerum perspiciatis molestias aut est esse.', 'Quod consequuntur quam non. Impedit dolores beatae facere maiores aut sapiente minima. Non maxime ut et necessitatibus exercitationem rem cupiditate. Quam voluptas id est quaerat officia quia. Hic sit rerum quis culpa deleniti. Et earum ad officia velit. Rerum eveniet enim omnis dolor. Quidem sint maiores accusamus laborum quis incidunt. Accusamus et eveniet molestiae est. Minus et qui ut voluptatem repellendus necessitatibus totam. Possimus voluptatem velit dolor fugit dolore sed maxime. Nihil quasi reiciendis dicta blanditiis. Quisquam dolores dolor qui illo minima. Quo suscipit amet minima nulla est perspiciatis nihil. Porro modi fugiat nihil explicabo. Doloremque et fugiat non dolores delectus odio. Sit quod quo occaecati aut. Corrupti qui rerum nulla nesciunt non ex omnis. Odit doloremque nisi voluptatem accusantium sed quis ipsam. Nesciunt delectus asperiores laborum cum sint a. Aut omnis est provident aperiam excepturi culpa.', '1', 4, 3, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (18, 'Eligendi voluptatem nisi neque.', 'eligendi-voluptatem-nisi-neque', 'Molestiae voluptas rerum voluptates. Et quo rem perspiciatis ipsa ut quis in. Nulla et explicabo minima ea recusandae veritatis. Eum et et molestias voluptas et quas in.', 'Adipisci assumenda velit distinctio distinctio aliquam optio. Architecto adipisci laborum vel id accusantium. Est praesentium veniam eos explicabo. Unde vel et vitae dolor eaque adipisci officiis. Laborum officiis nesciunt ut eveniet. Molestiae quaerat dolorem in voluptas. Ab quo aperiam nihil. Blanditiis voluptatem ratione voluptatibus ducimus et sunt. Minima earum et doloribus. Occaecati quia aperiam ducimus est error consequuntur eligendi. Aspernatur eos corrupti quaerat. Quia rerum repudiandae vel id suscipit. Voluptatibus eligendi esse iste maxime. Debitis id iusto omnis inventore. Quis culpa placeat culpa omnis. Ex et consequatur magnam aut necessitatibus. Qui quisquam voluptate harum voluptatem quibusdam velit. Aut non molestiae esse. Dolor tempora quia placeat impedit est. Architecto sunt et ut quisquam alias. Impedit sint sunt exercitationem esse a vel laboriosam. Quia dolore quo aspernatur consequatur exercitationem sed.', '1', 1, 5, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (19, 'Nemo libero ut modi.', 'nemo-libero-ut-modi', 'Deleniti rerum quo qui ut ex et sit repudiandae. Voluptas quasi repudiandae aperiam earum id saepe. Voluptas fugit eos est ipsam necessitatibus est sunt.', 'Aperiam sint maxime nulla voluptate neque. Quam dolores blanditiis est facilis. Autem et sed laborum voluptatem quidem tenetur quibusdam. Ea vel dolor alias consectetur voluptatem. Veritatis voluptatem molestiae doloremque. Suscipit veritatis et mollitia minus. Rerum laborum hic et quas et. Aut dolores doloribus omnis aut quaerat consequatur. Rem animi est similique eius quasi deleniti. Est a et quod distinctio omnis molestias laudantium et. Ea alias molestias corporis veritatis quae. Libero repudiandae repellendus blanditiis molestiae. Quisquam cum adipisci maxime exercitationem. Laborum nam odit cupiditate et aut aperiam enim. Ut aut incidunt voluptatem quia eos odio suscipit. Praesentium harum similique ut fugiat. Eum ex modi eius. Eius rerum quae optio totam at est.', '2', 5, 2, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (20, 'Quo sed id aut minus.', 'quo-sed-id-aut-minus', 'Soluta recusandae asperiores possimus alias sint est sunt. Ea non vel consectetur et et. Est asperiores qui qui.', 'Repellat commodi a odio consequatur itaque quis. Minima eos maiores praesentium numquam et et pariatur dolorum. Et sint consequuntur dolore architecto. Quia qui qui quibusdam sed nihil consequatur. Eaque nisi veniam quo aut inventore praesentium velit. Quae labore sed quis qui. Quia aliquid quae dicta nisi in. Cum a aut quibusdam sunt. Non et ab et non odit rem aliquid. Magni neque eos ad rerum. Quis non perferendis neque est nisi debitis voluptatem. Sunt consequatur dolore vel excepturi molestias. Ut reiciendis explicabo iure veniam omnis quod temporibus consequatur. Quisquam quasi amet ratione et. Non doloribus incidunt possimus voluptatum repellendus corporis. Eaque tenetur omnis quis et. Magni voluptatum nostrum atque temporibus totam autem. Qui dolor blanditiis sit facere. Doloremque maxime veniam consectetur voluptatem eveniet. Ut dolorum qui in atque ad voluptatem omnis neque.', '1', 6, 1, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (21, 'Aut omnis suscipit cupiditate rerum minima.', 'aut-omnis-suscipit-cupiditate-rerum-minima', 'Ullam ut veniam est aut tempora. Magni corporis aliquid vero hic repellat. Voluptatem culpa et et eaque itaque vel. Iste quia vitae consequuntur quasi aut non.', 'Libero labore sint corporis voluptas deserunt sequi qui ut. Sed cum vel quis sit. Sed doloribus dolorum consequatur. Dolorum eligendi quia est fuga. Suscipit cupiditate voluptatibus pariatur sint et molestias libero. Qui dicta numquam asperiores. Est eligendi quasi est omnis ipsum. Magni qui quis earum corrupti unde sit ut. Sapiente laboriosam sequi est molestiae dicta suscipit alias voluptas. Quas omnis vel molestiae voluptas. Nisi molestias voluptatem ipsa. Et rerum quos provident unde maiores omnis repudiandae. Est velit unde qui asperiores sit qui ab quae. Quisquam et architecto eos nihil qui. Suscipit sint repellendus beatae eaque delectus amet qui. Sit quia aperiam voluptatibus et quia molestiae. Dolorum aut repellat laboriosam voluptates modi facilis temporibus aut. Dolore beatae omnis laboriosam quia dolores.', '1', 10, 1, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (22, 'Quisquam fuga est rem.', 'quisquam-fuga-est-rem', 'Officia harum alias quo cumque velit. Eum eum distinctio quis praesentium. Enim perferendis velit esse quas vel aut.', 'Et impedit eveniet aut aliquid accusantium libero tempore. Dolor repudiandae repellendus laborum et fugiat aut cum. Est et voluptas ut enim aspernatur sed nisi. Voluptate sed repellat eveniet. Sit nesciunt dolore voluptas praesentium qui rem amet nobis. Non necessitatibus aut molestiae quia cumque eos omnis est. Cupiditate est saepe porro dolore amet nostrum. Earum nemo laboriosam voluptatem labore velit suscipit. Consequatur officia sit sit hic eos mollitia ea. Facilis blanditiis laboriosam nihil enim sequi pariatur. Qui necessitatibus autem impedit qui incidunt velit tenetur iure. Commodi nulla minus minima quis aut dolorem sunt molestias. Rerum voluptatem unde perferendis nisi nihil consectetur. Est repellendus ratione earum voluptatem voluptas. Minus voluptatem voluptatem non reprehenderit id. Aut et delectus nemo.', '1', 8, 1, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (23, 'Quis nihil nulla accusamus et.', 'quis-nihil-nulla-accusamus-et', 'Totam ea asperiores et in quis accusantium omnis. Cum minus itaque ut animi. Et aut aut molestias quasi quae quis facere.', 'Et corporis sapiente cumque vel dolor iusto. Ipsam sed qui culpa est et. Sunt quae sit qui. Amet rerum inventore vel laudantium corporis et. Itaque rerum officia iste. Nesciunt tempora voluptate omnis. Et ratione ipsa culpa. Rerum a quia veritatis omnis vitae at facere. Reprehenderit quis alias sunt. Voluptates dolorum et beatae ducimus natus. Ipsam tenetur quo placeat saepe temporibus architecto voluptatum. Et dolores dignissimos quia incidunt incidunt magni voluptatem. Impedit doloribus dolorem sit voluptas culpa qui dignissimos unde. Repudiandae ipsum autem voluptatem ut. Ut blanditiis dolorum maxime mollitia atque omnis aperiam. Quae deleniti est aut voluptatem molestias porro aliquam. Voluptas aliquid voluptatum vel totam sunt et quia. Ipsam odio officia qui sed et quia.', '1', 3, 3, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (24, 'Necessitatibus eveniet harum commodi voluptas delectus officiis.', 'necessitatibus-eveniet-harum-commodi-voluptas-delectus-officiis', 'Quas modi voluptatem officia architecto repellat rem quibusdam. Minima magnam eos consequuntur excepturi. Alias quo consequatur corporis asperiores aspernatur sunt atque. Incidunt deserunt distinctio consequuntur reiciendis cupiditate.', 'Nemo eum quia omnis. Aut quis itaque doloremque et quod soluta quasi quis. Nobis rem odio quod et. Eaque at sint dignissimos maxime occaecati. Autem sapiente aut at quis quam. Qui libero aut aut quo iusto placeat. Doloribus ad animi tenetur enim tenetur velit qui. Dolorem consequatur maxime a doloribus. Rem et enim at eum vero consectetur occaecati. Sint error optio odio et aut aliquam voluptates. Unde veniam aut enim sed quia. Aut repellat ut odit mollitia sit officia rerum. Debitis laborum velit temporibus doloremque enim aspernatur consequatur. Doloremque rerum molestiae molestiae asperiores maiores numquam. Quia cupiditate autem id exercitationem excepturi consectetur est labore. Provident illo quae sit. Et enim voluptatibus reprehenderit hic ratione velit. Ea odio dolor vitae ipsum suscipit. Rerum reiciendis qui omnis magni sapiente ad quidem. Enim similique aut eligendi culpa in et aut possimus. Libero unde quia eaque ducimus ut voluptatem qui.', '1', 9, 2, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (25, 'Omnis rerum aut enim.', 'omnis-rerum-aut-enim', 'Non earum similique aliquid saepe. Nulla consequatur officiis nam totam id. Odit a et et quisquam et cum. Ut vel ullam quae dolorum quis ea debitis inventore.', 'Est sunt numquam debitis consequuntur enim. Non est dolorem unde. Quis accusantium architecto dolor nostrum voluptates minima. Eligendi est tempora vero vitae. Esse velit qui facilis omnis cumque amet. Deserunt odio deserunt ut similique totam tenetur cumque. Quisquam vel sapiente ut. Quis enim sint ipsum maiores dolores qui. Quasi sint eveniet sint. Tempora aut ipsum amet laborum. Esse voluptatem est non repellendus nisi quis rem. Vel autem dignissimos veniam ipsa numquam. Est qui illum ut voluptas. Porro hic perspiciatis dolores ducimus. Architecto dolorum tempora odit facilis quibusdam quasi accusantium. Ut eum inventore non ab minima. Nostrum doloremque minus voluptatem et nihil perspiciatis atque. Aliquid reprehenderit quis est occaecati eveniet. Vel possimus minima et officia accusamus a sint. Nobis velit nesciunt tempore. Debitis enim dolore aut sed sit laborum quidem. Voluptatem aut esse dicta ipsam. Cum quisquam libero explicabo corporis et molestiae autem vitae.', '2', 5, 1, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (26, 'In ea eveniet eius recusandae.', 'in-ea-eveniet-eius-recusandae', 'Veritatis commodi reiciendis dolorum sunt incidunt dolor rerum eveniet. Est fugit et illo consequatur omnis quis. Ut illum voluptatem magni ducimus dolores molestiae. At tempora impedit sit culpa ullam dolor.', 'Quia rerum doloribus quas cupiditate. Nostrum id nam quidem quia enim. Non sunt voluptas et aut iusto explicabo. Natus et est eligendi sunt corporis. Dolorem accusamus incidunt reprehenderit voluptate mollitia. Quasi dolores incidunt optio qui ratione. Ab nesciunt consequatur consequuntur mollitia placeat illo. Et in voluptatem voluptatem occaecati rerum. Non odit illum ipsam sit perspiciatis. Eius inventore voluptas odit exercitationem aut ad recusandae. Quo laborum aut qui error blanditiis distinctio quia. Ratione magnam laborum quis numquam dolorum perspiciatis possimus. Nihil maxime consequatur numquam. Fuga natus assumenda repellat natus. Aliquam modi magni dolorem non praesentium qui provident. Non nemo commodi laboriosam. Quod debitis veritatis sunt. Assumenda deleniti explicabo possimus facilis esse mollitia. Exercitationem cumque minus vel vel numquam nemo. Sit velit mollitia illo culpa. Velit reprehenderit eveniet accusamus nisi quidem odit ipsa. A nihil et vitae autem non.', '2', 2, 1, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (27, 'Omnis blanditiis labore omnis natus nihil autem incidunt.', 'omnis-blanditiis-labore-omnis-natus-nihil-autem-incidunt', 'Dignissimos quisquam magni non quod quas. Sit sunt est consequatur quis quibusdam. Dignissimos aspernatur cum qui iusto cumque velit.', 'Explicabo et voluptatem consequatur sunt itaque voluptatem. Sint omnis itaque sed harum blanditiis voluptates ut. Vel iusto aut perferendis eum sit consequatur assumenda magni. Et vero veritatis occaecati. Quia unde excepturi nemo tempora officiis rerum repellat. Quod ullam velit distinctio voluptatem ut. Quidem culpa ea non dolorum dolorem. Voluptates illum fugit non et. Accusamus omnis quia ut ex quo. Reprehenderit vero alias molestiae autem. Iusto rerum totam exercitationem. Aspernatur tempora et sint voluptatem velit mollitia deleniti. Non aut quia non voluptas repellendus omnis harum. Sequi assumenda repellendus reiciendis ut ut ipsum earum est. Eum rem aut voluptatibus beatae harum sequi. Quo fugiat nemo voluptas alias quae et est ut. Ex magni voluptatem consequatur atque. Corporis provident blanditiis rem est et. Consequatur non non laborum officia earum. Et aliquid eum ab consequatur. Enim ut et accusantium qui quos quo deleniti repellendus.', '1', 4, 4, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (28, 'Assumenda cupiditate molestias quo autem est.', 'assumenda-cupiditate-molestias-quo-autem-est', 'Nesciunt ullam aut aut. Temporibus dolor hic aut dolore autem sed. Impedit in maiores velit magni. Atque sint nulla est beatae. Ut in eum minus vero. Fugiat cupiditate nam exercitationem eos eaque.', 'Eaque ut aut dolorum at dolores ea nemo dolorum. Vero maiores nemo sint error voluptatem. Provident consequatur eum similique enim earum quibusdam autem. Est hic error illum exercitationem repudiandae autem. Unde mollitia ut laborum fugit beatae. Quibusdam porro autem explicabo iusto sed. Dolorum voluptas commodi odio et exercitationem totam. Quia a culpa soluta quam. Eum magnam distinctio sed harum. Deserunt sint placeat ea commodi sapiente quidem. Dolores omnis et animi in maxime voluptas. Ipsam dolore cupiditate voluptatem recusandae eligendi quod dolorem. Voluptas quos commodi iste non quam aut reprehenderit doloremque. Voluptatem accusantium enim dolorum nemo et. Ratione nemo voluptatem id aut. Possimus neque minus ipsum voluptatem. Neque eos accusantium voluptas aut. Et laboriosam eum nemo. Dolorem omnis dolor architecto iusto veniam. Et in sit non inventore voluptatem doloremque esse.', '1', 10, 1, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (29, 'Dolores aliquam perferendis et.', 'dolores-aliquam-perferendis-et', 'Ut totam omnis non. Aut eos vel molestiae doloremque aut. Veritatis dolores dolor odit voluptatum. Dignissimos aut fugiat error ratione.', 'Facilis quidem a molestiae placeat amet totam necessitatibus. Facere dolore quia eum eligendi voluptatem. Quibusdam in necessitatibus tenetur. Et occaecati modi perferendis doloremque. Debitis aspernatur dolores eveniet officiis totam aperiam. Est soluta modi debitis cupiditate nesciunt suscipit blanditiis. Earum quisquam doloribus quo in. Voluptatem omnis maxime provident et quos sint autem. Saepe est rem magni rem non. Et animi voluptatum dolor aut eos. Corporis fugiat tempore rerum id ullam inventore labore velit. Neque sapiente dicta neque dolorem iste. Assumenda ipsum voluptatem quibusdam quia similique. Ea voluptas sint consequatur itaque incidunt commodi fugit. Expedita soluta animi placeat voluptatem possimus illum beatae sit. Quisquam facilis exercitationem veritatis facilis qui voluptatem porro. Qui nam quia ut est sit. Pariatur iste est a mollitia. Reiciendis quia fugiat similique et iste laboriosam. Labore voluptate aspernatur eius fugiat non ipsum.', '2', 3, 3, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (30, 'Rerum cumque tempora deserunt dolor beatae.', 'rerum-cumque-tempora-deserunt-dolor-beatae', 'Cumque cum aut occaecati alias consectetur aut sed. Quod perferendis non sint in tenetur dignissimos nostrum in. Quae voluptas tempore asperiores nulla.', 'Excepturi consectetur vitae consectetur iure culpa placeat sed culpa. A animi quos eveniet maiores consequatur ipsum et nisi. Quo similique sit qui aliquam. Rerum et voluptatum aliquam molestiae odio blanditiis et. Et optio odit ex est velit. Fuga eaque dignissimos et dolorem et. Facilis consequatur sunt sit aut. Sint eos sint nihil culpa deserunt. Ut veniam enim aut cumque provident porro illo. Voluptatem nobis ea quos consequatur. Debitis ullam aut consequatur aperiam nam. Molestias rerum adipisci tempora quis non velit non. Veniam vel voluptatem labore quae qui at et. Aliquam unde officiis perferendis placeat. Eum officia id aliquam voluptatem omnis hic. Perferendis aspernatur rerum enim omnis. Beatae autem aut voluptas incidunt quo laudantium ratione. Quos facilis nam cupiditate qui exercitationem qui corrupti suscipit. Et placeat ut nemo quia ex in velit.', '1', 3, 1, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (31, 'Asperiores cumque voluptas cupiditate doloribus.', 'asperiores-cumque-voluptas-cupiditate-doloribus', 'Eum ducimus eum qui quasi ea. Voluptate itaque omnis praesentium incidunt dolorem enim quos. Et officia culpa hic et minima est voluptatem. Officiis et occaecati dolor provident.', 'Error ea omnis qui quam occaecati ut. Minima est eos consectetur quis beatae voluptates. Aut ut commodi molestiae voluptatibus laudantium quibusdam. Autem qui tempora voluptatibus ut et. Repellendus autem et officiis rerum voluptas fuga quam. Nam quis similique dolor consequatur. Magnam magni odit quas temporibus commodi non. Molestiae cum praesentium eveniet iure. Placeat et rem velit molestias nemo expedita ducimus. Repellat velit vitae alias provident. Nostrum incidunt nulla eligendi ipsam molestiae totam quod quam. Minima officia aut sed neque. Deserunt perspiciatis distinctio fuga nemo quia. Non modi est nihil accusamus quidem enim consequatur. Id repellat commodi quam. Maxime a dolore voluptatum quas error ad voluptatem. Et similique temporibus molestias labore voluptates maiores odit voluptates. Nihil quis ut sit animi ea rerum. Ratione rerum dignissimos blanditiis maiores vel et. Qui magni unde sed natus aut qui.', '1', 1, 1, '2022-09-08 16:14:56', '2022-09-08 16:14:56');
INSERT INTO `posts` VALUES (32, 'Accusantium nam placeat adipisci dolor rerum fuga.', 'accusantium-nam-placeat-adipisci-dolor-rerum-fuga', 'Molestias dolorem sint praesentium magnam quis delectus. Quo et error voluptatibus adipisci voluptates. Deleniti dolorum maxime cum. Provident aliquam ut dolores dolorem. Doloremque et esse velit omnis quia reprehenderit sit.', 'Ducimus ducimus ea fugit non. Voluptatibus nisi maiores quia voluptatem. Odio necessitatibus aut iure ex vel ut. Aut corporis eligendi distinctio sunt perferendis. Sit repudiandae non eos. Cum similique eos praesentium aut ea ipsum et. Rerum deserunt autem consequatur magnam vel. Sit fuga architecto dolorem blanditiis sed quibusdam qui. Consequuntur et cum repellat. Nihil nam soluta dolorum mollitia. Reprehenderit officiis impedit explicabo itaque nobis sunt. Illum quos nobis neque. Molestiae totam aliquid suscipit modi quo. Illo quis nihil sit vitae dolores voluptatem ipsa tenetur. Enim nihil et aut molestias. Facere doloremque est unde ut ea. Fugit quo occaecati est nihil totam quae. Harum labore vel et aliquam distinctio reprehenderit fugiat. Adipisci consectetur nobis rerum voluptatem. Voluptas non ipsum id corporis veritatis. Doloribus rerum ex explicabo aut unde.', '2', 5, 2, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (33, 'Nihil quos omnis dolor maxime mollitia.', 'nihil-quos-omnis-dolor-maxime-mollitia', 'Eveniet id pariatur et exercitationem. Sunt repellat dolorem ab aspernatur. Velit necessitatibus sit incidunt nemo et aut ut. Molestiae et et non ut excepturi temporibus ut ut. Eum architecto consectetur aut.', 'Et est aut autem non asperiores dicta sequi. Quos facilis inventore a ipsum optio. Accusantium omnis consequatur dolor distinctio vel. A quis delectus facilis nesciunt consequatur repellendus sint. Rem blanditiis nostrum nobis delectus voluptas qui amet et. Aut est perspiciatis magnam rerum culpa. Sed qui perferendis dolores. Qui quisquam harum sunt delectus et doloremque illum. Facilis cum saepe quae tenetur dolor voluptate. Eos facere facilis omnis fuga reiciendis possimus. Nostrum ad dolorem dignissimos fuga et soluta similique. Laboriosam tempora culpa facilis ut. Unde maxime magni architecto rerum dolor doloribus debitis. Dolore quaerat et quia alias dolore aliquid. Laudantium est ut unde at quia reprehenderit voluptas ut. Ullam ea culpa accusamus in neque fuga. Veritatis aut iure voluptatem quia aut. Cum dignissimos rerum dolorem ab voluptatibus qui. Eligendi esse est omnis sequi fuga. Ex non excepturi quas.', '2', 6, 1, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (34, 'Voluptatem a id temporibus.', 'voluptatem-a-id-temporibus', 'Inventore eaque sequi fuga corrupti. Voluptatem in incidunt veritatis. Sit qui ad sequi et quae maiores. Provident et aliquam qui et molestiae animi. Suscipit placeat qui porro.', 'Occaecati delectus hic cum sint. Error aut quas error qui neque. Repudiandae iste ut pariatur repellat atque excepturi. Doloremque hic expedita magnam impedit. Quibusdam ab ut vero incidunt. Illum ab delectus minus dolore fugit incidunt. Sint qui itaque dolor ut nobis magni. Voluptas ipsa natus quasi est temporibus. Assumenda suscipit facere et sapiente eligendi est dolores. Occaecati expedita dolores aut vero. Et distinctio et tempore vero soluta libero. Ut inventore iste corrupti suscipit itaque. Repudiandae ea non sequi quidem laborum. Molestiae natus ea et quas distinctio explicabo. Omnis ut maxime sint eos veritatis et. Nobis sed harum qui reprehenderit optio in. Quia quam ducimus et repellendus. Labore aut et eveniet nobis quia accusantium voluptatibus nobis. Omnis dolorum veritatis placeat voluptas qui et. Neque saepe nostrum ipsa nihil.', '1', 4, 5, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (35, 'In aperiam ipsa recusandae quae cum inventore nostrum sit.', 'in-aperiam-ipsa-recusandae-quae-cum-inventore-nostrum-sit', 'Est maiores voluptates neque ea tempora. Esse aperiam amet quis rerum. Qui voluptatum voluptates deleniti.', 'Illum architecto enim occaecati voluptatibus molestiae dignissimos. Et quidem porro quos a sit. Quia voluptate sint maxime rem natus fuga. Iure quos aut ex ad ipsa suscipit. Omnis sunt aut recusandae rerum velit. Rerum et placeat quam quis et. Consequatur corrupti ullam eum consequuntur quam nobis. Eligendi aperiam sed aut minus est. Officiis excepturi voluptatem provident delectus. Consectetur enim laboriosam neque. Nobis iste molestiae consectetur tempore reprehenderit molestias. Voluptatem et accusantium voluptate velit. Quae nihil laudantium et veniam. Quisquam cum expedita occaecati necessitatibus voluptate itaque. Excepturi quia fugiat et omnis. Ipsa quas et culpa. Odio quo delectus porro nihil. Dolorem voluptatem est totam accusamus. Rerum optio eaque voluptate. Dolores laudantium maiores repudiandae consequatur. Tenetur sint consequatur excepturi occaecati. Maxime eius corrupti illum reiciendis. Doloribus qui exercitationem omnis.', '1', 5, 4, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (36, 'Quis quas repudiandae voluptate consequatur voluptatibus libero eum.', 'quis-quas-repudiandae-voluptate-consequatur-voluptatibus-libero-eum', 'Consequatur commodi voluptatem quisquam delectus voluptatibus. Sed soluta qui qui ut sunt dicta. Quisquam et aperiam tempore laboriosam omnis et.', 'Minima non tempore sed veniam eveniet illo culpa doloribus. Adipisci et maiores itaque deleniti. Magni recusandae quibusdam et eum. Facilis natus esse quasi qui. Earum nostrum quaerat soluta est pariatur explicabo fuga et. Nulla repellat quo et repellendus. Non et eos omnis qui. Fugit sed fugit et velit. Nobis consequuntur blanditiis aliquid et dolor inventore optio. Enim eum et dicta alias ipsa. Dolores enim tempora vel. Quo aliquam quis et nihil consectetur. Veritatis nihil voluptatem nulla non. Quae aut consequatur impedit expedita pariatur quos. Molestiae officia soluta architecto eligendi. Incidunt quia quo ratione est atque odio est sit. Modi et sunt autem modi eligendi sit incidunt est. In sed dignissimos modi qui. Delectus quam atque eveniet sunt sed. Qui possimus molestiae cupiditate eos. In autem dolor sequi. Iure et id numquam facere officia eligendi. Eum eveniet quae culpa et distinctio dolore.', '2', 2, 3, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (37, 'Qui debitis sequi qui aut.', 'qui-debitis-sequi-qui-aut', 'Minima aut facilis sed non ipsa nobis temporibus itaque. Amet fuga sequi ut praesentium. Sit et deleniti harum molestias. Voluptas consequatur commodi sint non. Possimus et enim provident et ipsa. Ut mollitia iste dolorem optio et delectus illum.', 'Illum doloribus repudiandae repellat quisquam non est. Nulla omnis nihil rerum aliquid non quis delectus saepe. Facere sit consequatur vel quidem rerum qui. Ea consequatur consequatur corporis laborum similique quidem. Laudantium modi molestiae facere numquam. Eos pariatur eligendi rerum aspernatur modi velit. Et impedit aliquid vero aliquam accusantium deserunt. Nihil non et aut enim quia harum animi. Debitis ut at assumenda est quo ut. Et eum quibusdam ex numquam iste. Fugiat exercitationem nihil molestiae. Similique quia minus accusantium quam unde dolorum explicabo dolores. Unde quia aut facilis perferendis. Rerum ut tempora voluptatem. Doloribus porro est eum quas placeat qui id. Cumque deserunt et voluptatum. Praesentium eos et ipsum eveniet. Molestiae molestiae tempore perspiciatis minima laboriosam minima dolores et. Cum illo voluptatum tempora quis. Nihil laborum est quia dolorem officiis. Eveniet nisi animi consequatur non dignissimos recusandae consequatur.', '1', 1, 5, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (38, 'Nihil excepturi quis ipsum pariatur.', 'nihil-excepturi-quis-ipsum-pariatur', 'Accusantium quia quis assumenda. Nisi reiciendis natus et omnis. Dolores odit in ratione esse et nisi molestiae rerum. Sit at non doloribus placeat aliquam provident dolores.', 'Soluta quis saepe pariatur dolorem et cupiditate suscipit. Suscipit porro nisi et deleniti ducimus numquam error itaque. Dicta iusto aut voluptate provident quo perferendis ipsum vero. Aspernatur tempora porro cupiditate. Laudantium natus labore cumque nostrum molestiae. Sed dolorem sunt provident. Molestiae aperiam odit sed odit est quo tempora. Magni velit cupiditate dolorum qui nam architecto. Nesciunt placeat eligendi soluta dolore natus amet. Sint fugiat aut quae iusto molestiae et architecto voluptas. Quo ut pariatur consequatur suscipit. Sed dolores veniam eos voluptatem aliquam. Voluptas in voluptas sed quia. Eum et repellendus amet harum explicabo. Adipisci necessitatibus eveniet et consectetur eos assumenda. Corrupti dolorem aliquid qui in optio sint. Cum voluptate repudiandae odio ullam dicta. Quos dicta sed repellendus ut recusandae. Veniam voluptatem aperiam quas distinctio. Aliquid accusantium dolorem ea ea dolores.', '2', 3, 3, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (39, 'Optio cumque fuga voluptatem excepturi qui facere.', 'optio-cumque-fuga-voluptatem-excepturi-qui-facere', 'Corporis deleniti et sint est architecto rerum repellat. Voluptates ut qui qui assumenda a soluta dolor. Distinctio ipsum id beatae sed alias sit. Qui enim architecto sit aliquid.', 'Eos est iusto eius tenetur non quod eum. Sit quam et eos qui consequatur ullam accusantium. Atque iste eum quia perspiciatis atque eum aliquid. Veritatis voluptatum autem dolor ducimus. Sapiente repellendus impedit voluptas dicta enim modi. Porro dolores quia autem et unde. Ipsum blanditiis aliquid molestias eius mollitia dolores. Nobis sed nemo quidem vel. Tempora provident incidunt incidunt sint. Autem aut atque ipsa ad qui. Mollitia a necessitatibus doloribus magni quo. Voluptas similique voluptas in molestias assumenda dolores. Modi distinctio quasi aut culpa corrupti alias. Est quam deleniti quam enim iste autem deleniti. Ab et nulla nihil. Odio libero rerum rem recusandae pariatur vel sit. A omnis culpa blanditiis beatae reprehenderit sapiente et. Voluptatem labore quis sunt perspiciatis cupiditate explicabo exercitationem temporibus. Autem quo fuga ea recusandae dolore facere animi.', '1', 3, 1, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (40, 'Quia blanditiis quia sunt non rem.', 'quia-blanditiis-quia-sunt-non-rem', 'Impedit ex possimus ducimus voluptate. Nobis quia doloremque qui dolor quasi fuga et rerum. Vitae qui eveniet facere blanditiis laboriosam omnis. Quis aut non exercitationem repellat dolorum et.', 'Placeat et commodi repudiandae culpa. Dolore iusto et impedit necessitatibus est et quis. Non rerum vero corporis qui qui eligendi ut. Maxime explicabo temporibus in dolorem quis praesentium id ut. Laboriosam aliquid sunt aut quia aut sapiente. Iusto perferendis omnis fugit sit sit. Doloribus eum at beatae quisquam. Corporis veritatis maiores atque eum. Ratione aut est sed voluptate debitis ipsa qui. Qui suscipit numquam iure optio modi. Sint assumenda quo qui molestiae. Non reprehenderit laudantium beatae sint pariatur commodi qui non. Vel quia repudiandae recusandae. Saepe voluptas soluta accusamus blanditiis praesentium sint. Corporis enim sint deleniti possimus iste. Voluptatum voluptatum perspiciatis tenetur optio. Aut et itaque quam sunt. Non voluptate minus ut rerum voluptas illum. Velit provident et possimus optio magni. Beatae et voluptatem nisi eum maxime. Veritatis a labore hic mollitia architecto. Velit voluptas nobis qui aspernatur amet odio. Consectetur rerum nostrum ex.', '2', 9, 1, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (41, 'Quam omnis debitis nihil.', 'quam-omnis-debitis-nihil', 'Qui veniam aspernatur quos aut consequuntur quo. Tempore consectetur et pariatur molestiae sunt libero est. Qui id architecto porro quia commodi sed ullam earum.', 'Dolorem quis iure et vero nisi doloremque quia ducimus. Facilis aliquam quis doloribus occaecati asperiores dolores. Laudantium aut itaque expedita velit voluptas corrupti. Non non dolorem nobis eum asperiores reprehenderit quae non. Ipsum hic et neque provident delectus quia. Possimus cupiditate dignissimos et eaque iste. Aut eos consectetur dolores est modi doloremque assumenda. Natus facere eos necessitatibus fugiat. Deleniti unde dolores sint qui. Atque vitae vero ullam et quibusdam voluptatem. Doloribus quis dolorem eum repellendus similique pariatur sed qui. Id rerum eos voluptas id totam. Veniam ut eum recusandae perferendis vitae. Eaque perspiciatis aut dolore iusto quasi minima. Cumque ullam ipsa corrupti aut animi voluptatem. Sapiente perferendis fuga laborum quia sequi. Odit alias sapiente quibusdam. Itaque voluptas voluptatem occaecati tenetur odit quia.', '1', 1, 1, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (42, 'Harum enim id eligendi eaque quod et.', 'harum-enim-id-eligendi-eaque-quod-et', 'Enim nihil dolorum fuga. Repellat architecto impedit nobis ut quia voluptas sint. Alias mollitia illo sit adipisci saepe dolores dolor.', 'Beatae eligendi assumenda nemo nobis in. Voluptatem illo a facere natus. Et incidunt odio voluptatem unde aut a corrupti consequatur. Ut harum illum est ut officiis fuga sint. Doloremque et est rerum dolores dignissimos explicabo vel deserunt. Molestiae ipsum et eaque quos voluptas voluptatem. Sed distinctio quia quae est eaque voluptas. Recusandae quos ratione qui cupiditate. Placeat excepturi laboriosam ut fugiat in est aut. Officia velit provident omnis. Dolore vitae nesciunt recusandae atque voluptas qui. Voluptas saepe itaque sint est. Ipsa ullam est quo rerum. Dolores ipsam exercitationem odio nesciunt possimus perspiciatis. Ullam dolorem nihil vero. Magni sint quidem fuga. Et similique nisi facilis id vel est. Et labore hic quaerat adipisci soluta eum. Et quisquam odit non sed. Sed cum et magni et vel dolorem id ipsam. Fuga vel blanditiis autem qui quia aut officiis. Est voluptatibus eveniet et deserunt. Odit id laborum fuga ullam. Velit quia deserunt libero.', '2', 10, 1, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (43, 'Rerum ut ut ipsa laboriosam quia.', 'rerum-ut-ut-ipsa-laboriosam-quia', 'Magnam commodi alias quia commodi reprehenderit. Modi expedita voluptatibus et. Quo quia velit tempora saepe eum accusamus saepe. Rerum fugiat cumque voluptatem dolores eveniet sunt.', 'Libero vitae unde velit eum voluptatem voluptate ex. Asperiores quasi non ullam voluptatibus. Beatae repellat sunt eaque delectus sint. Veniam aliquid mollitia et cupiditate unde. Sapiente cum magni velit aut minus. Ut deleniti necessitatibus ut vero. Et adipisci molestias voluptatem doloribus sed est repudiandae at. Ducimus debitis sit qui commodi minima et. Ab aperiam sunt saepe nisi quae alias ut. Sit exercitationem sed nam facere id deleniti aut facere. Qui vel qui atque quia odit dignissimos. In dolor harum et mollitia sit. Ipsa rerum quia et natus hic et consequatur. Ad adipisci rerum omnis. Et placeat et sequi quisquam est doloremque. Sit magnam et est non eos. Fuga provident nihil repellendus quasi dignissimos laudantium. Ea excepturi quia id velit harum aut tenetur. At doloribus repudiandae recusandae nobis autem. Molestiae facilis nobis labore dolorem tempora error porro qui.', '2', 3, 5, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (44, 'Placeat vero molestiae facilis.', 'placeat-vero-molestiae-facilis', 'Aut maxime enim quo non. Ab quasi accusantium quasi facilis. Voluptate eum sint quis eaque. Inventore et necessitatibus voluptatum non delectus officia exercitationem.', 'Eius modi minus placeat incidunt deleniti eaque libero. Aspernatur quasi autem eum consequuntur. Sunt aperiam odio earum rerum modi. Accusamus nihil asperiores consequatur adipisci omnis eveniet. Error doloribus qui ut. Dolores iure a quod quam sed veritatis ratione. Fugiat omnis velit deserunt nesciunt at. Repellat est non qui non repellendus ipsum eius. Eum necessitatibus rerum vel perspiciatis labore dolor in. Sed alias doloribus saepe eius est. Occaecati porro labore provident. Labore quis provident autem. Eaque molestiae magnam quae ducimus. Ea dolorum voluptas illo earum ut. Et fuga iste facere doloremque. Aut id quos neque quaerat esse laudantium modi alias. Dolores maiores et eos et temporibus veniam. Necessitatibus qui dolore facilis aut dicta. Aut ipsum eius aut saepe. Nostrum voluptatum quia dolores expedita. Labore earum nobis facilis aut quo. Quod ea ratione saepe ipsa. Officia molestiae voluptatum quos esse quo.', '2', 2, 4, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (45, 'Unde sit numquam aut illum et facere.', 'unde-sit-numquam-aut-illum-et-facere', 'Ut aut officia cum et autem. Dicta ad quis ipsa nobis delectus inventore consectetur. Dolorem quis quisquam impedit ut aliquid sit aspernatur asperiores. Quasi voluptatem inventore nihil et repudiandae.', 'Eaque voluptate rerum dolorum quaerat magnam recusandae. Odio atque aut molestias sint eaque accusantium non. Delectus amet molestias id praesentium dolorum esse tenetur. Deleniti soluta eos explicabo laborum rerum totam accusamus. Voluptate reiciendis temporibus et ut. Iste molestiae ut recusandae ea aut numquam. Minus earum et provident ad laudantium alias. Cumque ullam voluptatum sed. Assumenda ipsam totam fuga quidem praesentium fugiat doloremque amet. Qui ipsum provident consequuntur nihil perspiciatis et. Et ea accusamus id dolores non. Sunt et harum enim culpa. Rem porro aut saepe dolor sunt tenetur tempore. Eaque eum consequatur repudiandae et eligendi. Facilis in maiores ea ratione. Ex pariatur iste et magnam quia. Et dolorem est fugit corporis vel placeat dolorem et. Tenetur nobis inventore sit et. Alias delectus blanditiis est.', '2', 1, 4, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (46, 'Laborum sapiente velit iusto asperiores.', 'laborum-sapiente-velit-iusto-asperiores', 'Quos consequuntur explicabo vel. Nam sit voluptas ad ratione id quisquam consequatur nulla. Iure est minus ab quis.', 'Tempore possimus illo et et perspiciatis. Qui consequuntur suscipit ut deleniti quasi nobis. Dignissimos placeat minus ea maxime libero inventore. Ut voluptas vitae itaque rem quam dolorem vero. Provident dolor cum voluptates culpa magni quasi tenetur. Beatae eaque saepe iusto doloribus. Quis odio dolorem sunt occaecati. Et quia saepe et quis quibusdam vitae occaecati. Et quia nemo dolores ex repudiandae consequuntur aut. Dolor dolorem tempore accusantium sunt iure. Deserunt deleniti voluptatem qui non vero. Necessitatibus ea quis quia distinctio. Labore voluptatem voluptas est aliquid enim. Dolore est qui debitis rerum blanditiis aut nobis. Vel facere at a quia praesentium. Consequatur culpa at incidunt inventore qui repellendus libero. Officia rerum maxime quia nam. Laboriosam enim eum animi omnis possimus consequatur dolor dolores. Explicabo cumque cum ad ratione est vero iste. Sed rerum beatae non distinctio itaque non mollitia. Modi dolores at architecto.', '1', 3, 1, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (47, 'Ut similique recusandae aut officiis.', 'ut-similique-recusandae-aut-officiis', 'Ipsa itaque quidem molestiae rem perspiciatis. Doloremque qui sed possimus beatae. Totam ea voluptatibus eum consequatur omnis aliquam. Nihil consequuntur adipisci eos adipisci ea qui quos. Voluptatibus quidem dolor recusandae maxime at dicta.', 'At at rerum sint ea quaerat. Dolor iste sapiente magni earum molestiae sint. Nihil non qui quisquam voluptas. Suscipit numquam tempore perspiciatis laborum. Laborum sed facilis itaque est enim. Cum a ut nostrum quas et. Provident sit eaque illo fugit ipsa. Tempora totam mollitia labore omnis quisquam. Aspernatur officia voluptatem tenetur voluptatem. Possimus possimus accusamus soluta aut molestiae. Nulla optio ipsum aut aut non voluptatibus. Nemo nisi dolorem et quidem illum rerum iste. Qui in quis non corporis aut vero. Ut quia sunt ab quis iusto excepturi iste. Inventore maxime enim ea dolorem omnis. Tempore hic ab nam voluptas eum nesciunt. Qui ex in velit quasi ducimus soluta. Qui sit ex aut qui dolores veniam. Et sint cupiditate voluptatem tempora. Incidunt debitis quasi nihil ipsam ab neque dolor. Omnis nostrum qui consequatur voluptas pariatur qui eveniet. Fuga vel quam et ad tempore. Blanditiis est provident id explicabo soluta aut recusandae culpa.', '1', 6, 2, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (48, 'Ut deleniti ea magnam sed.', 'ut-deleniti-ea-magnam-sed', 'Quis autem eius repellendus quia rerum. Molestiae repellat explicabo quidem aut. Aliquid tempora necessitatibus et laborum. Eveniet magni aut omnis accusamus beatae.', 'Eius ut dolor officia tenetur voluptas perferendis odio. Qui sint iusto harum molestiae accusantium recusandae aut. Debitis odio id eos veritatis. Itaque sapiente voluptas qui qui inventore odio. Dolor assumenda quam et voluptatem. Illum facilis rem voluptas ut quod fugit quibusdam. Officia non qui ut qui porro dignissimos ex. Velit sit culpa quos quod. Quod laudantium et optio nostrum repellendus eius eligendi. Enim et consequatur illum molestiae nisi qui repellat. Iste ut odio quia excepturi ipsum non recusandae. Ab soluta recusandae provident rem beatae velit placeat. Esse omnis sit ut autem quis. Harum eum dignissimos aut quia non. Incidunt non illo rerum. Ut nam non et recusandae minima. Voluptatibus eveniet autem modi voluptatibus voluptas sunt. Eos non quidem autem hic facere eum alias. Voluptate ut vel ipsum nobis consequatur. Voluptatibus fugit molestias qui quia ipsa sapiente. Accusantium nisi vel suscipit ipsa adipisci. Maiores hic soluta tenetur ullam quibusdam.', '2', 5, 3, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (49, 'Tempora minus et id eaque.', 'tempora-minus-et-id-eaque', 'Amet id sit quasi ducimus. Ut consequatur cupiditate placeat aliquid ea commodi dolor illo. Voluptatum voluptate sapiente ut aut sunt. Esse temporibus laboriosam quo molestiae.', 'Sequi blanditiis occaecati quod facere possimus id. Accusantium veniam omnis et officia quia eligendi. Earum laudantium recusandae quia iusto praesentium. Nobis libero laborum praesentium ab rerum. Consequatur ipsum repellat veniam qui ut ea. Temporibus voluptas animi ut tenetur. Sequi dolore sed perferendis autem veritatis accusamus. Eum nemo et sint provident iusto aspernatur fugit. Laudantium minus non sunt et exercitationem ea quas. Provident rerum debitis est alias. Vitae tempora laboriosam eaque. Quisquam voluptas dolor quos deserunt tempore. Autem et aliquam sed eum iste officiis. Iste repudiandae quo suscipit est quia non omnis. Amet at consequatur maiores. Maiores neque architecto aut ullam quia eum ducimus. Dolor quibusdam eaque nobis dignissimos. Exercitationem non eveniet aut perspiciatis quaerat repudiandae. Velit molestiae non voluptas aut iusto. Unde fuga et eligendi in corporis rerum autem.', '2', 1, 2, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (50, 'Laboriosam voluptatum voluptates ea non nisi doloremque laborum.', 'laboriosam-voluptatum-voluptates-ea-non-nisi-doloremque-laborum', 'Tempora provident labore quasi eum. Qui dolor ea vel. Illo eos et et et quis atque reiciendis. Laborum ipsum omnis et et dolor. Ullam non quo dolores dolores nemo quibusdam adipisci. Vel vero magni ex. Dolorum nobis magni vitae eveniet qui id.', 'Eaque sed aperiam accusantium cumque dignissimos earum. Dolorem consequatur dolor dolor sed voluptatem dolorem et. Ipsum optio quia porro voluptas voluptas consequatur laborum. Inventore iusto veniam eum cupiditate eos incidunt. Qui nam voluptas et excepturi. Ex temporibus voluptas et ut dolores est et. Autem numquam vel commodi quia qui quasi enim. Cumque voluptatem eligendi iste enim. Sunt autem explicabo eius dolorem. Rerum molestiae rem autem sapiente. Rerum maiores perferendis soluta. Alias sunt libero quod voluptatem voluptate consequatur. Harum provident qui temporibus quas. Maxime enim consequatur quibusdam provident exercitationem. Id quis molestiae rerum. Earum officiis perspiciatis voluptatum exercitationem consequatur. Non qui praesentium deserunt voluptatum voluptas eveniet quia enim. Itaque corrupti excepturi modi ea. Et omnis deleniti autem. Ut dicta placeat eos maiores sint officia et. Repellendus non voluptas facilis. Vel et quam qui rerum.', '2', 1, 4, '2022-09-08 16:14:57', '2022-09-08 16:14:57');
INSERT INTO `posts` VALUES (51, 'Primer Post de Prueba', 'primer-post-de-prueba', '<p><i>Head</i></p>', '<p><strong>Body</strong></p>', '2', 1, 3, '2022-09-27 14:50:25', '2022-09-27 14:50:25');
INSERT INTO `posts` VALUES (52, 'Post con Imagen subida', 'post-con-imagen-subida', '<ul><li>Resumen</li></ul>', '<ol><li><i><strong>Cuerpo</strong></i></li></ol>', '2', 1, 1, '2022-09-28 14:09:16', '2022-09-28 14:09:16');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id`) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('tqg7XhiTVHprDay17oIZTd54OE5TpUXv9VrG7TMy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTZidXFwQlVNa0hOT2tkenYzanNEbzBGMjdQeThHODRvd2JreDBDNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTY6Imh0dHA6Ly9ibG9nLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1664455678);
INSERT INTO `sessions` VALUES ('zJTX3obg1RJtRtfd5DCjGKYXoju9hH51uVghXZRh', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOU1nTjBHNHBVd0hMbGljbkpQbEM5M2cyQXc4RGR2Z0lFRnBVZ3dZZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9ibG9nLnRlc3QvcG9zdHMvNTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1664374642);

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES (1, 'dolores', 'dolores', 'red', '2022-09-08 16:14:55', '2022-09-21 13:49:34');
INSERT INTO `tags` VALUES (2, 'beatae', 'beatae', 'yellow', '2022-09-08 16:14:56', '2022-09-21 13:50:05');
INSERT INTO `tags` VALUES (3, 'ut', 'ut', 'green', '2022-09-08 16:14:56', '2022-09-21 13:51:42');
INSERT INTO `tags` VALUES (4, 'eveniet', 'eveniet', 'blue', '2022-09-08 16:14:56', '2022-09-21 13:53:21');
INSERT INTO `tags` VALUES (5, 'numquam', 'numquam', 'indigo', '2022-09-08 16:14:56', '2022-09-21 13:54:14');
INSERT INTO `tags` VALUES (6, 'rerum', 'rerum', 'purple', '2022-09-08 16:14:56', '2022-09-21 13:54:23');
INSERT INTO `tags` VALUES (7, 'mollitia', 'mollitia', 'pink', '2022-09-08 16:14:56', '2022-09-21 13:54:30');
INSERT INTO `tags` VALUES (8, 'voluptatibus', 'voluptatibus', 'purple', '2022-09-08 16:14:56', '2022-09-21 13:54:38');
INSERT INTO `tags` VALUES (9, 'quia', 'quia', 'blue', '2022-09-08 16:14:56', '2022-09-21 13:54:45');
INSERT INTO `tags` VALUES (10, 'eos', 'eos', 'red', '2022-09-08 16:14:56', '2022-09-21 13:54:51');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `two_factor_recovery_codes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `two_factor_confirmed_at` timestamp(0) NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `current_team_id` bigint UNSIGNED NULL DEFAULT NULL,
  `profile_photo_path` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Carlos Ochoa', 'ochoa.ini@gmail.com', NULL, '$2y$10$hv9sEteLrq1SOPbnArlzjeeH6ReWNRvH0cUKGkhl3EZZ/SYx/aQUa', NULL, NULL, NULL, 'gR9yizL3u4s29pny2FBv2XE5C3QpJYvVmY8Fkx6K1KbO7edUlDguKLr95Lrq', NULL, NULL, '2022-09-08 16:13:39', '2022-09-08 16:13:39');
INSERT INTO `users` VALUES (2, 'Iris Ochoa', 'iris@gmail.com', NULL, '$2y$10$gSMs/0/GONPSld7lWHCV3u3MkweLUGRvi6vku.x138FiDcry7UVHK', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 16:13:57', '2022-09-08 16:13:57');
INSERT INTO `users` VALUES (3, 'Josué Ochoa', 'josue@gmail.com', NULL, '$2y$10$NT6u1CKWTb5YY2x1PobqJe/YJCdpIqbwHQng7DCW6SKLmV88AUmUa', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 16:14:14', '2022-09-08 16:14:14');
INSERT INTO `users` VALUES (4, 'Alice Ochoa', 'alice@gmail.com', NULL, '$2y$10$cPXu3MvhRo1WBjcr9SD6vOEKRZS10iplhryQdMgG9jAwTaSupZrt6', NULL, NULL, NULL, NULL, NULL, NULL, '2022-09-08 16:14:30', '2022-09-08 16:14:30');
INSERT INTO `users` VALUES (5, 'Prof. Aileen Steuber', 'mills.mary@example.org', '2022-09-08 16:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '1Df5b3wyVT', NULL, NULL, '2022-09-08 16:14:55', '2022-09-08 16:14:55');
INSERT INTO `users` VALUES (6, 'Kelly Kohler', 'hhermann@example.net', '2022-09-08 16:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'w3cfPkvUar', NULL, NULL, '2022-09-08 16:14:55', '2022-09-08 16:14:55');
INSERT INTO `users` VALUES (7, 'Frederick Leannon', 'estrella66@example.net', '2022-09-08 16:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '2Qf1EaHXmz', NULL, NULL, '2022-09-08 16:14:55', '2022-09-08 16:14:55');
INSERT INTO `users` VALUES (8, 'Lela Ankunding', 'olarkin@example.org', '2022-09-08 16:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'loOE56x6cM', NULL, NULL, '2022-09-08 16:14:55', '2022-09-08 16:14:55');
INSERT INTO `users` VALUES (9, 'Anahi Moore', 'theller@example.net', '2022-09-08 16:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, 'vla9dmZzWs', NULL, NULL, '2022-09-08 16:14:55', '2022-09-08 16:14:55');
INSERT INTO `users` VALUES (10, 'Cloyd Gorczany', 'luisa.bashirian@example.com', '2022-09-08 16:14:55', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, NULL, NULL, '8IUnXnvAkn', NULL, NULL, '2022-09-08 16:14:55', '2022-09-08 16:14:55');

SET FOREIGN_KEY_CHECKS = 1;
