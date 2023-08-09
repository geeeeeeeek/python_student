/*
 Navicat Premium Data Transfer

 Source Server         : localhost连接
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : python_student

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 09/08/2023 09:08:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add tag', 13, 'add_tag');
INSERT INTO `auth_permission` VALUES (50, 'Can change tag', 13, 'change_tag');
INSERT INTO `auth_permission` VALUES (51, 'Can delete tag', 13, 'delete_tag');
INSERT INTO `auth_permission` VALUES (52, 'Can view tag', 13, 'view_tag');
INSERT INTO `auth_permission` VALUES (53, 'Can add user', 14, 'add_user');
INSERT INTO `auth_permission` VALUES (54, 'Can change user', 14, 'change_user');
INSERT INTO `auth_permission` VALUES (55, 'Can delete user', 14, 'delete_user');
INSERT INTO `auth_permission` VALUES (56, 'Can view user', 14, 'view_user');
INSERT INTO `auth_permission` VALUES (57, 'Can add thing', 15, 'add_thing');
INSERT INTO `auth_permission` VALUES (58, 'Can change thing', 15, 'change_thing');
INSERT INTO `auth_permission` VALUES (59, 'Can delete thing', 15, 'delete_thing');
INSERT INTO `auth_permission` VALUES (60, 'Can view thing', 15, 'view_thing');
INSERT INTO `auth_permission` VALUES (61, 'Can add record', 16, 'add_record');
INSERT INTO `auth_permission` VALUES (62, 'Can change record', 16, 'change_record');
INSERT INTO `auth_permission` VALUES (63, 'Can delete record', 16, 'delete_record');
INSERT INTO `auth_permission` VALUES (64, 'Can view record', 16, 'view_record');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add banner', 18, 'add_banner');
INSERT INTO `auth_permission` VALUES (70, 'Can change banner', 18, 'change_banner');
INSERT INTO `auth_permission` VALUES (71, 'Can delete banner', 18, 'delete_banner');
INSERT INTO `auth_permission` VALUES (72, 'Can view banner', 18, 'view_banner');
INSERT INTO `auth_permission` VALUES (73, 'Can add address', 19, 'add_address');
INSERT INTO `auth_permission` VALUES (74, 'Can change address', 19, 'change_address');
INSERT INTO `auth_permission` VALUES (75, 'Can delete address', 19, 'delete_address');
INSERT INTO `auth_permission` VALUES (76, 'Can view address', 19, 'view_address');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------

-- ----------------------------
-- Table structure for b_address
-- ----------------------------
DROP TABLE IF EXISTS `b_address`;
CREATE TABLE `b_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `default` tinyint(1) NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_address_user_id_a37a8d6a_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_address_user_id_a37a8d6a_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_address
-- ----------------------------

-- ----------------------------
-- Table structure for b_banner
-- ----------------------------
DROP TABLE IF EXISTS `b_banner`;
CREATE TABLE `b_banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_banner_thing_id_3f307d00_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_banner_thing_id_3f307d00_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_banner
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '数字媒体技术二班', '2023-08-08 17:43:08.581345');
INSERT INTO `b_classification` VALUES (2, '数字媒体技术一班', '2023-08-08 17:43:17.456454');
INSERT INTO `b_classification` VALUES (3, '软件工程二班', '2023-08-08 17:43:25.656795');
INSERT INTO `b_classification` VALUES (4, '软件工程一班', '2023-08-08 17:43:33.333292');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-08 16:40:54.971449');
INSERT INTO `b_login_log` VALUES (2, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-08 17:14:25.895788');
INSERT INTO `b_login_log` VALUES (3, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-08 17:20:43.191991');
INSERT INTO `b_login_log` VALUES (4, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-08 17:21:25.773549');
INSERT INTO `b_login_log` VALUES (5, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-08 17:24:46.802697');
INSERT INTO `b_login_log` VALUES (6, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-08 18:43:36.492230');
INSERT INTO `b_login_log` VALUES (7, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-08 18:53:24.433868');
INSERT INTO `b_login_log` VALUES (8, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-08 18:53:55.066696');
INSERT INTO `b_login_log` VALUES (9, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-08 18:54:26.869171');
INSERT INTO `b_login_log` VALUES (10, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', '2023-08-09 08:54:40.011285');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 454 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2023-08-08 16:03:02.049564', '/myapp/index/notice/list_api', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2023-08-08 16:03:02.059788', '/myapp/index/notice/list_api', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2023-08-08 16:03:02.064787', '/myapp/index/notice/list_api', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2023-08-08 16:03:02.076480', '/myapp/index/notice/list_api', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2023-08-08 16:03:04.811556', '/myapp/index/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2023-08-08 16:04:04.281353', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2023-08-08 16:04:04.299361', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2023-08-08 16:04:04.302361', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2023-08-08 16:04:07.287743', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2023-08-08 16:04:07.289743', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2023-08-08 16:04:07.307742', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2023-08-08 16:04:16.536985', '/myapp/admin/user/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2023-08-08 16:04:31.221162', '/myapp/admin/user/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2023-08-08 16:06:20.012073', '/myapp/admin/user/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2023-08-08 16:24:02.389075', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2023-08-08 16:24:02.396096', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2023-08-08 16:24:02.394193', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2023-08-08 16:24:08.356748', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2023-08-08 16:24:08.358467', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2023-08-08 16:24:08.362490', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2023-08-08 16:24:55.583207', '/myapp/admin/user/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2023-08-08 16:25:07.948111', '/myapp/admin/user/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2023-08-08 16:25:07.995764', '/myapp/admin/user/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2023-08-08 16:25:09.864821', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2023-08-08 16:25:09.884159', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2023-08-08 16:25:09.890160', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2023-08-08 16:25:43.209301', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2023-08-08 16:25:44.700091', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2023-08-08 16:26:51.655878', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2023-08-08 16:27:12.318097', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2023-08-08 16:35:16.262305', '/myapp/admin/user/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2023-08-08 16:35:25.144705', '/myapp/admin/user/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2023-08-08 16:36:15.494177', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2023-08-08 16:36:15.510175', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2023-08-08 16:36:15.511180', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2023-08-08 16:36:21.959447', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2023-08-08 16:36:21.961024', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2023-08-08 16:36:21.962026', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2023-08-08 16:36:23.338060', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2023-08-08 16:36:23.340059', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2023-08-08 16:36:23.342058', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2023-08-08 16:36:51.323346', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2023-08-08 16:36:51.325350', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2023-08-08 16:36:51.327351', '/myapp/admin/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2023-08-08 16:37:39.017452', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2023-08-08 16:37:40.432656', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2023-08-08 16:37:41.859572', '/myapp/admin/comment/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2023-08-08 16:37:47.463077', '/myapp/admin/user/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2023-08-08 16:37:50.002787', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2023-08-08 16:38:07.879230', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2023-08-08 16:38:09.280831', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2023-08-08 16:38:25.968046', '/myapp/admin/comment/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2023-08-08 16:38:27.114472', '/myapp/admin/user/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2023-08-08 16:38:29.175016', '/myapp/admin/overview/count', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2023-08-08 16:38:42.968929', '/myapp/admin/overview/count', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2023-08-08 16:38:44.567229', '/myapp/admin/overview/sysInfo', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2023-08-08 16:39:43.619376', '/myapp/admin/overview/sysInfo', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2023-08-08 16:39:51.324201', '/myapp/admin/overview/sysInfo', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2023-08-08 16:40:54.977149', '/myapp/admin/adminLogin', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2023-08-08 16:40:55.213679', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2023-08-08 16:40:55.215679', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2023-08-08 16:40:55.218679', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2023-08-08 16:40:57.864804', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1053');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2023-08-08 16:40:59.987658', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2023-08-08 16:40:59.988660', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2023-08-08 16:40:59.989995', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2023-08-08 16:57:27.410751', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2023-08-08 16:57:28.277978', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2023-08-08 16:57:28.305225', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2023-08-08 16:57:28.310627', '/myapp/admin/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2023-08-08 16:57:30.461937', '/myapp/admin/comment/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2023-08-08 16:57:31.694388', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2023-08-08 16:57:32.672845', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2023-08-08 16:57:33.689839', '/myapp/admin/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2023-08-08 16:57:33.694602', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2023-08-08 16:57:33.699128', '/myapp/admin/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2023-08-08 16:57:34.455204', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2023-08-08 16:57:35.250344', '/myapp/admin/tag/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2023-08-08 16:57:35.761860', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2023-08-08 16:57:35.762851', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2023-08-08 16:57:35.764937', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2023-08-08 16:59:21.229234', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2023-08-08 16:59:21.231233', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2023-08-08 16:59:21.231233', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2023-08-08 16:59:24.864203', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2023-08-08 16:59:24.869203', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2023-08-08 16:59:24.872205', '/myapp/admin/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2023-08-08 16:59:25.811136', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2023-08-08 16:59:26.852047', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2023-08-08 16:59:27.518318', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2023-08-08 16:59:27.522322', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2023-08-08 16:59:27.538046', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2023-08-08 16:59:38.231646', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2023-08-08 16:59:38.232677', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2023-08-08 16:59:38.233712', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2023-08-08 16:59:53.859956', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2023-08-08 16:59:54.498961', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2023-08-08 16:59:54.501970', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2023-08-08 16:59:54.503987', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2023-08-08 16:59:57.215555', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2023-08-08 16:59:58.065278', '/myapp/admin/overview/count', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2023-08-08 17:01:25.202845', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1038');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2023-08-08 17:01:26.050998', '/myapp/admin/ad/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2023-08-08 17:11:24.974583', '/myapp/admin/notice/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2023-08-08 17:11:30.498812', '/myapp/admin/loginLog/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2023-08-08 17:11:31.711459', '/myapp/admin/opLog/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2023-08-08 17:11:33.152336', '/myapp/admin/errorLog/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2023-08-08 17:11:34.547337', '/myapp/admin/opLog/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2023-08-08 17:11:39.027761', '/myapp/admin/errorLog/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2023-08-08 17:11:40.533846', '/myapp/admin/opLog/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2023-08-08 17:11:41.556137', '/myapp/admin/loginLog/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2023-08-08 17:11:44.177268', '/myapp/admin/overview/count', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2023-08-08 17:14:25.902785', '/myapp/admin/adminLogin', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2023-08-08 17:14:26.219647', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2023-08-08 17:14:26.221647', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2023-08-08 17:14:26.224647', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2023-08-08 17:15:01.177687', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2023-08-08 17:17:11.405893', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2023-08-08 17:19:22.200872', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2023-08-08 17:20:43.198001', '/myapp/admin/adminLogin', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2023-08-08 17:20:43.469525', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2023-08-08 17:20:43.471522', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2023-08-08 17:20:43.474522', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2023-08-08 17:21:20.669367', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2023-08-08 17:21:20.670370', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2023-08-08 17:21:20.672832', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2023-08-08 17:21:25.778555', '/myapp/admin/adminLogin', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2023-08-08 17:21:25.896143', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2023-08-08 17:21:25.899137', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2023-08-08 17:21:25.912138', '/myapp/admin/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2023-08-08 17:21:28.461513', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2023-08-08 17:21:29.142675', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2023-08-08 17:21:29.145688', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2023-08-08 17:21:29.147974', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2023-08-08 17:24:46.806699', '/myapp/admin/adminLogin', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2023-08-08 17:24:46.916872', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2023-08-08 17:24:46.919871', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2023-08-08 17:24:46.925871', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2023-08-08 17:24:52.652914', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2023-08-08 17:24:53.967801', '/myapp/admin/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2023-08-08 17:24:53.968801', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2023-08-08 17:24:53.984802', '/myapp/admin/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2023-08-08 17:24:54.690039', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2023-08-08 17:41:05.843244', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2023-08-08 17:41:07.624794', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2023-08-08 17:41:07.627080', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2023-08-08 17:41:07.628082', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2023-08-08 17:42:28.677593', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2023-08-08 17:42:28.679265', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2023-08-08 17:42:28.681268', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2023-08-08 17:42:30.441365', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2023-08-08 17:42:31.225982', '/myapp/admin/user/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2023-08-08 17:42:32.555128', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2023-08-08 17:43:08.587346', '/myapp/admin/classification/create', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2023-08-08 17:43:08.623198', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2023-08-08 17:43:17.462453', '/myapp/admin/classification/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2023-08-08 17:43:17.496833', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2023-08-08 17:43:25.658803', '/myapp/admin/classification/create', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2023-08-08 17:43:25.680242', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2023-08-08 17:43:33.338295', '/myapp/admin/classification/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2023-08-08 17:43:33.370146', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2023-08-08 17:43:47.023594', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2023-08-08 17:43:47.024594', '/myapp/admin/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2023-08-08 17:43:47.026303', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2023-08-08 17:44:00.550473', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1057');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2023-08-08 17:44:00.806445', '/myapp/admin/overview/count', 'GET', NULL, '226');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2023-08-08 17:44:01.340119', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2023-08-08 17:44:01.342684', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2023-08-08 17:44:01.353374', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2023-08-08 17:48:15.733486', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2023-08-08 17:48:15.755065', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2023-08-08 17:48:15.757303', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2023-08-08 17:48:46.951511', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2023-08-08 17:48:46.952566', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2023-08-08 17:48:46.954568', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2023-08-08 17:50:15.190508', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2023-08-08 17:50:15.192507', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2023-08-08 17:50:15.193517', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2023-08-08 17:50:31.095368', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2023-08-08 17:50:31.097084', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2023-08-08 17:50:31.115758', '/myapp/admin/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2023-08-08 17:50:50.027469', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2023-08-08 17:50:50.029025', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2023-08-08 17:50:50.030152', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2023-08-08 17:50:53.184713', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2023-08-08 17:50:53.186712', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2023-08-08 17:50:53.187714', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2023-08-08 17:51:19.456104', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2023-08-08 17:51:19.457844', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2023-08-08 17:51:19.470228', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2023-08-08 17:51:22.584423', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2023-08-08 17:51:22.602261', '/myapp/admin/thing/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2023-08-08 17:51:22.605260', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2023-08-08 17:51:29.815358', '/myapp/admin/thing/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2023-08-08 17:51:29.849773', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2023-08-08 17:51:39.750867', '/myapp/admin/thing/list', 'GET', NULL, '222');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2023-08-08 17:52:06.162906', '/myapp/admin/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2023-08-08 17:52:07.283186', '/myapp/admin/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2023-08-08 17:56:12.961850', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2023-08-08 17:56:12.963203', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2023-08-08 17:56:12.978920', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2023-08-08 18:28:17.033746', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2023-08-08 18:28:17.034746', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2023-08-08 18:28:17.037746', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2023-08-08 18:28:32.864542', '/myapp/admin/thing/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2023-08-08 18:28:32.919475', '/myapp/admin/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2023-08-08 18:29:43.667860', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2023-08-08 18:29:43.668860', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2023-08-08 18:29:43.673890', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2023-08-08 18:30:05.253222', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2023-08-08 18:30:05.260359', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2023-08-08 18:30:05.263326', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2023-08-08 18:30:10.802409', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2023-08-08 18:30:10.802409', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2023-08-08 18:30:10.807914', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2023-08-08 18:30:21.182659', '/myapp/admin/thing/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2023-08-08 18:30:21.228857', '/myapp/admin/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2023-08-08 18:32:16.846197', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2023-08-08 18:32:16.848165', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2023-08-08 18:32:16.855421', '/myapp/admin/thing/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2023-08-08 18:32:49.990299', '/myapp/admin/thing/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2023-08-08 18:32:50.055411', '/myapp/admin/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2023-08-08 18:32:53.822953', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2023-08-08 18:32:53.822953', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2023-08-08 18:32:53.832619', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2023-08-08 18:33:40.310863', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2023-08-08 18:33:40.313265', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2023-08-08 18:33:40.332893', '/myapp/admin/tag/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2023-08-08 18:33:58.010208', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2023-08-08 18:33:58.011208', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2023-08-08 18:33:58.030892', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2023-08-08 18:34:03.390211', '/myapp/admin/thing/update', 'POST', NULL, '118');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2023-08-08 18:34:39.157925', '/myapp/admin/thing/update', 'POST', NULL, '95');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2023-08-08 18:35:43.251002', '/myapp/admin/thing/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2023-08-08 18:35:43.288031', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2023-08-08 18:35:53.645452', '/myapp/admin/thing/update', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2023-08-08 18:35:53.687996', '/myapp/admin/thing/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2023-08-08 18:35:57.521400', '/myapp/admin/thing/delete', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2023-08-08 18:35:57.563920', '/myapp/admin/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2023-08-08 18:35:59.530873', '/myapp/admin/thing/delete', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2023-08-08 18:35:59.560689', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2023-08-08 18:36:01.594679', '/myapp/admin/thing/delete', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2023-08-08 18:36:01.610685', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2023-08-08 18:36:57.582727', '/myapp/admin/thing/create', 'POST', NULL, '187');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2023-08-08 18:36:57.655066', '/myapp/admin/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2023-08-08 18:37:43.133845', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2023-08-08 18:37:43.841213', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2023-08-08 18:37:43.843218', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2023-08-08 18:37:43.846218', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2023-08-08 18:37:46.494026', '/myapp/admin/ad/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2023-08-08 18:37:52.075374', '/myapp/admin/overview/count', 'GET', NULL, '256');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2023-08-08 18:38:47.752046', '/myapp/admin/overview/count', 'GET', NULL, '73');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2023-08-08 18:38:48.790978', '/myapp/admin/user/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2023-08-08 18:38:50.729241', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1059');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2023-08-08 18:39:00.164087', '/myapp/admin/loginLog/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2023-08-08 18:39:01.437553', '/myapp/admin/user/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2023-08-08 18:39:02.951690', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2023-08-08 18:39:03.805326', '/myapp/admin/user/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2023-08-08 18:39:04.401216', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2023-08-08 18:39:04.974333', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2023-08-08 18:39:04.977332', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2023-08-08 18:39:04.982343', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2023-08-08 18:39:06.776236', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1023');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2023-08-08 18:39:07.343807', '/myapp/admin/user/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2023-08-08 18:39:23.468027', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2023-08-08 18:39:24.277438', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2023-08-08 18:39:24.279098', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2023-08-08 18:39:24.295298', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2023-08-08 18:39:32.274220', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2023-08-08 18:39:33.017797', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2023-08-08 18:39:33.019797', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2023-08-08 18:39:33.020816', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2023-08-08 18:39:34.527298', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2023-08-08 18:39:35.096324', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2023-08-08 18:39:35.112869', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2023-08-08 18:39:35.123867', '/myapp/admin/classification/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2023-08-08 18:39:40.516802', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2023-08-08 18:39:40.522794', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2023-08-08 18:39:40.524794', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2023-08-08 18:40:01.202291', '/myapp/admin/thing/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2023-08-08 18:40:02.650558', '/upload/cover/1691491016343.jpeg', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2023-08-08 18:40:26.240734', '/myapp/admin/thing/update', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2023-08-08 18:40:26.306235', '/myapp/admin/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2023-08-08 18:40:35.575782', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2023-08-08 18:40:35.619471', '/myapp/admin/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2023-08-08 18:40:50.835773', '/myapp/admin/thing/update', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2023-08-08 18:40:50.887900', '/myapp/admin/thing/list', 'GET', NULL, '34');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2023-08-08 18:40:52.287065', '/upload/cover/1691491016343.jpeg', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2023-08-08 18:40:56.956264', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2023-08-08 18:40:57.003604', '/myapp/admin/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2023-08-08 18:41:12.168674', '/myapp/admin/thing/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2023-08-08 18:41:12.232147', '/myapp/admin/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2023-08-08 18:41:51.015327', '/myapp/admin/thing/create', 'POST', NULL, '16');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2023-08-08 18:41:51.090578', '/myapp/admin/thing/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2023-08-08 18:43:31.344643', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2023-08-08 18:43:31.984168', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2023-08-08 18:43:31.986169', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2023-08-08 18:43:32.004286', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2023-08-08 18:43:33.355355', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2023-08-08 18:43:33.356366', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2023-08-08 18:43:33.359543', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2023-08-08 18:43:36.497562', '/myapp/admin/adminLogin', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2023-08-08 18:43:36.610227', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2023-08-08 18:43:36.612227', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2023-08-08 18:43:36.618088', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2023-08-08 18:43:37.809485', '/myapp/admin/user/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2023-08-08 18:43:53.796453', '/myapp/admin/user/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2023-08-08 18:43:53.848214', '/myapp/admin/user/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2023-08-08 18:44:17.442170', '/myapp/admin/user/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2023-08-08 18:44:17.499806', '/myapp/admin/user/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2023-08-08 18:44:20.741550', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2023-08-08 18:44:21.391990', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2023-08-08 18:44:21.395761', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2023-08-08 18:44:21.406305', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2023-08-08 18:44:51.787456', '/myapp/admin/thing/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2023-08-08 18:44:51.813299', '/myapp/admin/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2023-08-08 18:45:13.993165', '/myapp/admin/thing/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2023-08-08 18:45:14.093500', '/myapp/admin/thing/list', 'GET', NULL, '56');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2023-08-08 18:45:44.205146', '/myapp/admin/thing/create', 'POST', NULL, '57');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2023-08-08 18:45:44.301332', '/myapp/admin/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2023-08-08 18:45:50.404347', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2023-08-08 18:45:50.512926', '/myapp/admin/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2023-08-08 18:45:54.020538', '/myapp/admin/thing/update', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2023-08-08 18:45:54.104370', '/myapp/admin/thing/list', 'GET', NULL, '60');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2023-08-08 18:46:11.426469', '/myapp/admin/thing/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2023-08-08 18:46:11.476818', '/myapp/admin/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2023-08-08 18:46:16.179090', '/myapp/admin/thing/update', 'POST', NULL, '55');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2023-08-08 18:46:16.232630', '/myapp/admin/thing/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2023-08-08 18:46:17.768210', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2023-08-08 18:46:18.584018', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2023-08-08 18:46:18.586046', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2023-08-08 18:46:18.596140', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2023-08-08 18:46:55.935152', '/myapp/admin/thing/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2023-08-08 18:46:56.041696', '/myapp/admin/thing/list', 'GET', NULL, '57');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2023-08-08 18:46:59.781808', '/myapp/admin/loginLog/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2023-08-08 18:47:00.609498', '/myapp/admin/opLog/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2023-08-08 18:47:03.965462', '/myapp/admin/errorLog/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2023-08-08 18:47:05.493293', '/myapp/admin/opLog/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2023-08-08 18:47:05.965382', '/myapp/admin/loginLog/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2023-08-08 18:47:07.685329', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1050');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2023-08-08 18:47:08.597737', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2023-08-08 18:47:08.599810', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2023-08-08 18:47:08.619627', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2023-08-08 18:47:24.397429', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2023-08-08 18:47:24.932613', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2023-08-08 18:47:24.935051', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2023-08-08 18:47:24.960719', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2023-08-08 18:47:29.652655', '/myapp/admin/thing/update', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2023-08-08 18:47:29.723507', '/myapp/admin/thing/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2023-08-08 18:47:35.957643', '/myapp/admin/thing/list', 'GET', NULL, '61');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2023-08-08 18:48:24.901220', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2023-08-08 18:48:24.903220', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2023-08-08 18:48:24.904220', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2023-08-08 18:48:29.888699', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2023-08-08 18:48:30.475132', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2023-08-08 18:48:30.477133', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2023-08-08 18:48:30.517740', '/myapp/admin/tag/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2023-08-08 18:48:55.849461', '/myapp/admin/thing/update', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2023-08-08 18:48:55.928697', '/myapp/admin/thing/list', 'GET', NULL, '58');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2023-08-08 18:49:05.009603', '/myapp/admin/thing/update', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2023-08-08 18:49:05.081341', '/myapp/admin/thing/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2023-08-08 18:49:09.714831', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2023-08-08 18:49:10.258483', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2023-08-08 18:49:10.260868', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2023-08-08 18:49:10.324428', '/myapp/admin/tag/list', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2023-08-08 18:49:58.477582', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2023-08-08 18:49:58.486262', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2023-08-08 18:49:58.515270', '/myapp/admin/tag/list', 'GET', NULL, '48');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2023-08-08 18:50:09.662812', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2023-08-08 18:50:09.665688', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2023-08-08 18:50:09.688081', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2023-08-08 18:50:11.114900', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2023-08-08 18:50:43.223243', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2023-08-08 18:50:43.232915', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2023-08-08 18:50:43.262206', '/myapp/admin/tag/list', 'GET', NULL, '53');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2023-08-08 18:50:43.691684', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2023-08-08 18:51:02.499845', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2023-08-08 18:51:02.504427', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2023-08-08 18:51:02.507423', '/myapp/admin/tag/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2023-08-08 18:51:02.938234', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2023-08-08 18:51:09.530864', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2023-08-08 18:51:18.821968', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2023-08-08 18:51:21.116441', '/myapp/admin/user/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2023-08-08 18:51:21.655624', '/myapp/admin/tag/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2023-08-08 18:51:21.657624', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2023-08-08 18:51:21.672636', '/myapp/admin/tag/list', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2023-08-08 18:53:24.437459', '/myapp/admin/adminLogin', 'POST', NULL, '37');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2023-08-08 18:53:24.540276', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2023-08-08 18:53:24.566936', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2023-08-08 18:53:24.571935', '/myapp/admin/classification/list', 'GET', NULL, '38');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2023-08-08 18:53:26.021314', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2023-08-08 18:53:26.678237', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2023-08-08 18:53:26.679594', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2023-08-08 18:53:26.698912', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2023-08-08 18:53:28.825010', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2023-08-08 18:53:29.352787', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2023-08-08 18:53:29.354752', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2023-08-08 18:53:29.385610', '/myapp/admin/tag/list', 'GET', NULL, '36');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2023-08-08 18:53:34.086833', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2023-08-08 18:53:34.914015', '/myapp/admin/user/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2023-08-08 18:53:37.502748', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1045');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2023-08-08 18:53:38.717468', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2023-08-08 18:53:39.495021', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2023-08-08 18:53:39.499627', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2023-08-08 18:53:39.535162', '/myapp/admin/tag/list', 'GET', NULL, '46');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2023-08-08 18:53:55.073736', '/myapp/admin/adminLogin', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2023-08-08 18:53:55.154550', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2023-08-08 18:53:55.156550', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2023-08-08 18:53:55.168550', '/myapp/admin/tag/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2023-08-08 18:53:58.535960', '/myapp/admin/thing/update', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2023-08-08 18:54:01.918284', '/myapp/admin/thing/delete', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2023-08-08 18:54:03.080062', '/myapp/admin/classification/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2023-08-08 18:54:05.238325', '/myapp/admin/classification/update', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2023-08-08 18:54:07.980160', '/myapp/admin/user/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2023-08-08 18:54:08.442693', '/myapp/admin/user/list', 'GET', NULL, '496');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2023-08-08 18:54:10.756265', '/myapp/admin/user/delete', 'POST', NULL, '17');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2023-08-08 18:54:13.448327', '/myapp/admin/user/update', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2023-08-08 18:54:26.874956', '/myapp/admin/adminLogin', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2023-08-08 18:54:27.017879', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2023-08-08 18:54:27.020879', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2023-08-08 18:54:27.031846', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2023-08-09 08:54:40.013568', '/myapp/admin/adminLogin', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2023-08-09 08:54:40.472342', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2023-08-09 08:54:40.486341', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2023-08-09 08:54:40.494348', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2023-08-09 08:54:44.800888', '/myapp/admin/classification/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2023-08-09 08:54:47.012753', '/myapp/admin/user/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2023-08-09 08:54:49.433971', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1064');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2023-08-09 08:54:50.013715', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2023-08-09 08:55:18.803606', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2023-08-09 08:55:18.806160', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2023-08-09 08:55:18.831473', '/myapp/admin/tag/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2023-08-09 08:55:51.477462', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2023-08-09 08:55:51.479465', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2023-08-09 08:55:51.494460', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2023-08-09 08:55:55.935235', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2023-08-09 08:55:55.936581', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2023-08-09 08:55:55.953032', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2023-08-09 08:55:58.463159', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2023-08-09 08:55:58.466166', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2023-08-09 08:55:58.504708', '/myapp/admin/tag/list', 'GET', NULL, '47');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2023-08-09 08:56:10.925171', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2023-08-09 08:56:10.926158', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2023-08-09 08:56:10.941179', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2023-08-09 08:56:18.739132', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2023-08-09 08:56:18.746941', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2023-08-09 08:56:18.757380', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2023-08-09 08:56:29.086750', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2023-08-09 08:56:29.089752', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2023-08-09 08:56:29.114188', '/myapp/admin/tag/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2023-08-09 08:56:31.173044', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2023-08-09 08:56:31.175044', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2023-08-09 08:56:31.190109', '/myapp/admin/tag/list', 'GET', NULL, '21');

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `record_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_classification_id_52591cc9_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_record_user_id_7e5958b0_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_record_classification_id_52591cc9_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_record_user_id_7e5958b0_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `birthday` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jiguan` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `minzu` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sfz` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xuehao` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (4, '', '0', '2023-08-08 18:32:49.972572', 3, '19880504', NULL, '汉族', '刘德华', '男', '370927198801233212', '100109083', 'dddd');
INSERT INTO `b_thing` VALUES (5, 'cover/1691491016343.jpeg', '0', '2023-08-08 18:36:57.572996', 2, '19900915', NULL, '汉族', '刘若英', '男', '371426199087652314', '100109081', '家庭困难');
INSERT INTO `b_thing` VALUES (6, '', '0', '2023-08-08 18:41:51.006061', 2, '19901010', NULL, '汉族', '王丽丽', '女', '370927198801233218', '100109086', 'adsdf');
INSERT INTO `b_thing` VALUES (7, '', '0', '2023-08-08 18:44:51.779531', 1, '19880504', NULL, '汉族', '周琦', '女', '370927198801233218', '100109081', 'ddssssddf');
INSERT INTO `b_thing` VALUES (8, '', '0', '2023-08-08 18:45:13.979908', 4, '19900915', NULL, '汉族', '姚明', '男', '370927198801233218', '209887656', '');
INSERT INTO `b_thing` VALUES (9, '', '0', '2023-08-08 18:45:44.186566', 3, '19900915', NULL, '汉族', '杨颖', '男', '370927198801233214', '100098011123', '该生性格较活跃');
INSERT INTO `b_thing` VALUES (10, '', '0', '2023-08-08 18:46:55.923235', 4, '19880504', NULL, '汉族', '王晓', '男', '370927198801233555', '1001090809', 'dddd');

-- ----------------------------
-- Table structure for b_thing_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_tag`;
CREATE TABLE `b_thing_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_tag_thing_id_tag_id_a5d426b2_uniq`(`thing_id`, `tag_id`) USING BTREE,
  INDEX `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `b_thing_tag_tag_id_d02b28a1_fk_b_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `b_tag` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_tag_thing_id_fb8ecf3f_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_tag
-- ----------------------------

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-08-08 16:25:07.934950', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-08-08 18:43:53.784289', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (3, 'testbbbb', '49af68ca42bddb1084e07e5e245e3f01', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2023-08-08 18:44:17.426767', 0, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (19, 'myapp', 'address');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'banner');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-08-08 16:00:31.307079');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-08-08 16:00:31.634885');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-08-08 16:00:31.689488');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-08-08 16:00:31.697935');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-08 16:00:31.709946');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-08-08 16:00:31.804187');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-08-08 16:00:31.860150');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-08-08 16:00:31.917349');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-08-08 16:00:31.929906');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-08-08 16:00:31.989170');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-08-08 16:00:31.996021');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-08-08 16:00:32.010638');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-08-08 16:00:32.079893');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-08-08 16:00:32.147367');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-08-08 16:00:32.195951');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-08-08 16:00:32.207948');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-08-08 16:00:32.264987');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2023-08-08 16:00:33.330416');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_auto_20230526_2255', '2023-08-08 16:00:33.479125');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20230527_1411', '2023-08-08 16:00:33.575852');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_thing_raw', '2023-08-08 16:00:33.626288');
INSERT INTO `django_migrations` VALUES (22, 'sessions', '0001_initial', '2023-08-08 16:00:33.665137');
INSERT INTO `django_migrations` VALUES (23, 'myapp', '0005_auto_20230808_1739', '2023-08-08 17:39:37.985261');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0006_thing_remark', '2023-08-08 17:46:37.929632');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
