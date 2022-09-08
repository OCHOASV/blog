/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : blog1

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 07/09/2022 14:42:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cursos
-- ----------------------------
DROP TABLE IF EXISTS `cursos`;
CREATE TABLE `cursos`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoria` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cursos
-- ----------------------------
INSERT INTO `cursos` VALUES (1, 'Laravel', 'laravel', 'PHP Framework', 'Programacion', '2022-06-21 14:20:01', '2022-07-02 16:57:44');
INSERT INTO `cursos` VALUES (55, 'JavaScript', 'dsfsd', 'Curso JavaScript', 'Programación', '2022-06-27 14:05:03', '2022-06-27 14:05:03');
INSERT INTO `cursos` VALUES (56, 'Curso PHP', 'zxzcgnbgvhn', 'dsfds', 'Programación', '2022-06-27 14:08:37', '2022-06-27 14:08:37');
INSERT INTO `cursos` VALUES (57, 'Curso PHP', 'curso-php', 'PHP y Laravel', 'Programación', '2022-06-27 14:35:47', '2022-07-03 10:14:12');
INSERT INTO `cursos` VALUES (58, 'Curso PHP 2', 'zxczxc', 'PHP y Laravel', 'Programación', '2022-06-27 14:36:17', '2022-06-27 14:36:17');
INSERT INTO `cursos` VALUES (59, 'Curso PHP', 'zxczxczx', 'PHP y Laravel', 'Programación', '2022-06-27 14:36:22', '2022-06-27 14:36:22');
INSERT INTO `cursos` VALUES (60, 'Curso PHP 3', 'zxczxc', 'PHP y Laravel', 'Programación', '2022-06-27 15:03:54', '2022-06-27 15:03:54');
INSERT INTO `cursos` VALUES (61, 'Curso PHP 4', 'zxcczxczx', 'PHP y Laravel', 'Programación', '2022-06-27 15:23:07', '2022-06-27 15:23:07');
INSERT INTO `cursos` VALUES (62, 'Curso PHP 5', 'zxcxcxzcz', 'PHP y Laravel', 'Programación', '2022-06-27 15:23:52', '2022-06-28 17:33:15');
INSERT INTO `cursos` VALUES (63, 'Curso PHP 6', 'dssdz', 'PHP 6, Editable con el nuevo método y con validación por Request', 'Programación', '2022-06-29 16:45:00', '2022-07-02 11:36:36');
INSERT INTO `cursos` VALUES (64, 'Curso Slug 1', 'curso-slug-1', 'con Slug actualizado', 'Progra', '2022-07-02 15:55:37', '2022-07-02 16:01:24');
INSERT INTO `cursos` VALUES (65, 'Curso Slug 2', 'curso-slug-2', 'ID = 65 => ds dasd asd sadasdasd asd', 'd asdsad', '2022-07-02 15:57:18', '2022-07-03 10:12:23');
INSERT INTO `cursos` VALUES (66, 'Curso Slug 3', 'curso-slug-3', 'Curso Slug 3, ID 66, edited', 'Progra', '2022-07-02 16:03:59', '2022-07-06 14:05:47');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (7, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (8, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (9, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (10, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (11, '2022_06_20_173948_create_cursos_table', 2);
INSERT INTO `migrations` VALUES (12, '2022_06_20_175356_add_avatar_to_users_table', 3);
INSERT INTO `migrations` VALUES (14, '2022_06_20_181004_change_prop_to_users_table', 4);
INSERT INTO `migrations` VALUES (16, '2022_06_21_141724_change_prop_to_cursos_table', 5);
INSERT INTO `migrations` VALUES (17, '2022_06_21_154011_add_catego_to_cursos_table', 6);
INSERT INTO `migrations` VALUES (18, '2022_07_02_153318_add_slug_to_cursos_table', 7);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

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
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Eleanore Collier', 'vshields@example.net', NULL, '2022-06-21 16:35:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BnNMSCtlBg', '2022-06-21 16:35:58', '2022-06-21 16:35:58');
INSERT INTO `users` VALUES (2, 'Golden Erdman', 'jazmyne96@example.com', NULL, '2022-06-21 16:35:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nnE5C5Wrv3', '2022-06-21 16:35:58', '2022-06-21 16:35:58');
INSERT INTO `users` VALUES (3, 'Dr. Ethel Predovic V', 'joe.zemlak@example.net', NULL, '2022-06-21 16:35:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'grLosDvAZG', '2022-06-21 16:35:58', '2022-06-21 16:35:58');
INSERT INTO `users` VALUES (4, 'Miss Kassandra Jacobi DVM', 'pablo83@example.net', NULL, '2022-06-21 16:35:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZPktpb6i3s', '2022-06-21 16:35:58', '2022-06-21 16:35:58');
INSERT INTO `users` VALUES (5, 'Valentin Schulist', 'clang@example.com', NULL, '2022-06-21 16:35:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dcZpAtbJwV', '2022-06-21 16:35:58', '2022-06-21 16:35:58');
INSERT INTO `users` VALUES (6, 'Dr. Johathan Heathcote', 'marc.wiegand@example.org', NULL, '2022-06-21 16:35:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7DRCeSj8Bx', '2022-06-21 16:35:58', '2022-06-21 16:35:58');
INSERT INTO `users` VALUES (7, 'Royce Strosin', 'bkessler@example.com', NULL, '2022-06-21 16:35:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rStOLVLdJR', '2022-06-21 16:35:58', '2022-06-21 16:35:58');
INSERT INTO `users` VALUES (8, 'Mrs. Esmeralda Vandervort MD', 'krystal44@example.net', NULL, '2022-06-21 16:35:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd9IRfEvDFA', '2022-06-21 16:35:58', '2022-06-21 16:35:58');
INSERT INTO `users` VALUES (9, 'Marianna Rempel', 'aylin28@example.net', NULL, '2022-06-21 16:35:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GVcrAx4A87', '2022-06-21 16:35:58', '2022-06-21 16:35:58');
INSERT INTO `users` VALUES (10, 'Malinda Ondricka', 'sanford.jameson@example.org', NULL, '2022-06-21 16:35:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DI7Cx1tpYq', '2022-06-21 16:35:58', '2022-06-21 16:35:58');
INSERT INTO `users` VALUES (11, 'CaMeLCaSe UsEr', 'dsfds@fos.com', NULL, NULL, '$2y$10$R8nlqmwZQn2lKWwXAAHQOOkPr6kKsCS.XGHSSRQrRSuTCn3MYX3hK', NULL, '2022-06-21 18:00:44', '2022-06-21 18:00:44');
INSERT INTO `users` VALUES (13, 'CaMeLCaSe UsEr', 'dsfds2@fos.com', NULL, NULL, '$2y$10$YmA4eUACv4VaLymK11rLt.VsFUlProYNPGfREx5JX1WTqgXIi4RVm', NULL, '2022-06-21 18:07:54', '2022-06-21 18:07:54');
INSERT INTO `users` VALUES (14, 'CaMeLCaSe UsEr', 'dsfds3@fos.com', NULL, NULL, '$2y$10$9J83ASaSK1fwxtMyRMzzTubEa3ekSqgZO4dRStMRUV24lxUDefhqu', NULL, '2022-06-21 18:12:04', '2022-06-21 18:12:04');
INSERT INTO `users` VALUES (15, 'camelcase user', 'dsfds4@fos.com', NULL, NULL, '$2y$10$ZQBNM0FZ6FBIcfzhEBdKT.FBiUgJISHrO2gnmBLcAyxxXWx/vtCJm', NULL, '2022-06-22 12:33:08', '2022-06-22 12:35:05');

SET FOREIGN_KEY_CHECKS = 1;
