/*
 Navicat Premium Data Transfer

 Source Server         : localhost(MySQL)
 Source Server Type    : MySQL
 Source Server Version : 80100
 Source Host           : localhost:3306
 Source Schema         : pagedb

 Target Server Type    : MySQL
 Target Server Version : 80100
 File Encoding         : 65001

 Date: 22/08/2024 00:11:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门id',
  `pid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父id',
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门代码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门描述',
  `order` int(0) NULL DEFAULT NULL COMMENT '排序',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '状态，0启用，1未启用',
  `is_deleted` tinyint(1) NULL DEFAULT NULL COMMENT '删除标志，0未删除，1已删除',
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('32a912c6-3f79-4fd6-b2f0-a6232ec20d59', 'b3805b3f-ab72-4be8-a128-5c7dd395406f', 'cc', 'cc33', '', 0, 0, 1, 'admin', '2024-07-09 11:32:11', 'admin', '2024-07-09 11:32:23');
INSERT INTO `sys_dept` VALUES ('a852ff86-a331-4dfb-a8cd-bf1ebd26530e', '0', 'admin', '后台用户', '后台用户', 1, 0, 0, 'admin', '2024-07-08 22:09:18', 'admin', '2024-07-08 22:09:18');
INSERT INTO `sys_dept` VALUES ('b3805b3f-ab72-4be8-a128-5c7dd395406f', 'a852ff86-a331-4dfb-a8cd-bf1ebd26530e', 'test', '测试', '测试', 0, 0, 0, 'admin', '2024-07-09 10:56:46', 'admin', '2024-07-09 10:57:41');
INSERT INTO `sys_dept` VALUES ('ebf869d0-d6be-47c0-8b32-1a2f1ab0e7d5', '0', 'normal', '前台用户', '前台用户', 2, 0, 0, 'admin', '2024-07-08 22:16:10', 'admin', '2024-07-08 22:16:10');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单id',
  `pid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单父级id',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单代码',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `path` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单地址',
  `type` tinyint(1) NULL DEFAULT NULL COMMENT '菜单类型，0目录，1菜单，2按钮，3外链',
  `show` tinyint(1) NULL DEFAULT 0 COMMENT '是否显示，0显示，1不显示',
  `disabled` tinyint(1) NULL DEFAULT 1 COMMENT '是否禁用，0禁用，1不禁用',
  `cache` tinyint(1) NULL DEFAULT 1 COMMENT '是否缓存，0缓存，1不缓存',
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单描述',
  `order` tinyint(0) NULL DEFAULT NULL COMMENT '排序',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '删除标志，0未删除，1已删除',
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('0525fd7e-06b7-4c03-bae5-4f92af3138d6', '674113dc-0286-4faf-869f-f4ebf51391b7', '登录日志', 'signInLog', 'mdiLogin', 'logManage/signInLog', 1, 0, 1, 1, '/system/logManage/signInLog', '登录日志', 2, 0, 'admin', '2024-04-17 16:46:23', 'admin', '2024-04-17 16:46:23');
INSERT INTO `sys_menu` VALUES ('0a1969567e1842a18cac009ef0d1f79f', '6fa28cf73c6c4c11bec106553d69c1b9', '菜单管理', 'MenuManage', 'mdiMenu', 'menuManage', 1, 0, 1, 1, '/system/menuManage/index', '菜单管理', 3, 0, 'admin', '2023-10-04 14:27:49', 'admin', '2024-04-17 16:30:00');
INSERT INTO `sys_menu` VALUES ('3bf0941cbcdc4f95b03e4096997ed18d', '6fa28cf73c6c4c11bec106553d69c1b9', '用户管理', 'UserManage', 'mdiAccountMultiple', 'userManage', 1, 0, 1, 1, '/system/userManage/index', '用户管理', 1, 0, 'admin', '2023-10-04 14:27:49', 'admin', '2023-12-30 14:27:58');
INSERT INTO `sys_menu` VALUES ('674113dc-0286-4faf-869f-f4ebf51391b7', '6fa28cf73c6c4c11bec106553d69c1b9', '日志管理', 'logManage', 'mdiMathLog', 'logManage', 0, 0, 1, 1, 'aa', '日志管理', 6, 0, 'admin', '2024-04-17 16:19:36', 'admin', '2024-04-17 16:40:42');
INSERT INTO `sys_menu` VALUES ('6fa28cf73c6c4c11bec106553d69c1b9', '0', '系统管理', 'SystemManage', 'mdiCogs', '/system', 0, 0, 1, 1, NULL, '系统管理', 2, 0, 'admin', '2023-10-04 14:27:49', 'admin', '2023-12-30 14:27:58');
INSERT INTO `sys_menu` VALUES ('71fa2550-ec9b-4037-8bdb-95f837f7a748', '674113dc-0286-4faf-869f-f4ebf51391b7', '操作日志', 'operLog', 'mdiMathLog', 'logManage/operLog', 1, 0, 1, 1, '/system/logManage/operLog', '操作日志', 1, 0, 'admin', '2024-04-17 16:44:39', 'admin', '2024-04-17 16:44:39');
INSERT INTO `sys_menu` VALUES ('74c3f4f1-2245-44fa-b9f8-74716af5f1a4', '6fa28cf73c6c4c11bec106553d69c1b9', '字典管理', 'dictManage', 'mdiDictionary', 'dictManage', 1, 0, 1, 1, 'dictManage/index', '字典管理', 5, 0, 'admin', '2024-04-17 16:21:49', 'admin', '2024-04-17 16:42:34');
INSERT INTO `sys_menu` VALUES ('ab62e594a25d4c0dab54cda018b850ee', '0', '文章管理', 'ArticleManage', 'ic:outline-article', '/article', 0, 0, 1, 1, '', '文章管理', 1, 0, 'admin', '2023-10-04 14:27:49', 'admin', '2023-12-30 14:27:58');
INSERT INTO `sys_menu` VALUES ('b547c33203994ae3afa48c4807a25b8f', 'ab62e594a25d4c0dab54cda018b850ee', '发布文章', 'ReleaseArticle', 'ic:outline-article', 'releaseArticle', 1, 0, 1, 1, '/article/index', '发布文章', 1, 0, 'admin', '2023-10-04 14:27:49', 'admin', '2023-12-30 14:27:58');
INSERT INTO `sys_menu` VALUES ('c42c7755-ef28-4c83-ab61-bca1ceb3c1c0', 'ab62e594a25d4c0dab54cda018b850ee', '测试', '123', NULL, '/teset', 1, 0, 1, 1, '/tese', '13', NULL, 1, 'admin', '2024-07-10 20:13:40', NULL, '2024-07-10 20:13:40');
INSERT INTO `sys_menu` VALUES ('d9fa698b-ea02-4066-9ff5-3bef72a86a85', '6fa28cf73c6c4c11bec106553d69c1b9', '角色管理', 'roleManage', 'mdiAccountKey', 'roleManage', 1, 0, 1, 1, '/system/roleManage/index', '角色管理', 2, 0, 'admin', '2024-04-17 16:20:10', 'admin', '2024-04-17 16:32:22');
INSERT INTO `sys_menu` VALUES ('ec84932c-d7fa-4aab-abc3-a1429522d3ae', '6fa28cf73c6c4c11bec106553d69c1b9', '部门管理', 'deptManage', 'mdiFileTree', 'deptManage', 1, 0, 1, 1, '/system/deptManage/index', '部门管理', 4, 0, 'admin', '2024-04-17 16:15:01', 'admin', '2024-04-17 16:42:10');

-- ----------------------------
-- Table structure for sys_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_menus`;
CREATE TABLE `sys_menus`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单id',
  `pid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单父级id',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单代码',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `path` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单地址',
  `menu_type` tinyint(1) NULL DEFAULT NULL COMMENT '菜单类型，0目录，1菜单，2按钮，3外链',
  `show` tinyint(1) NULL DEFAULT NULL COMMENT '是否显示，0显示，1不显示',
  `disabled` tinyint(1) NULL DEFAULT NULL COMMENT '是否禁用，0禁用，1不禁用',
  `cache` tinyint(1) NULL DEFAULT NULL COMMENT '是否缓存，0缓存，1不缓存',
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单描述',
  `order` tinyint(0) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `is_deleted` tinyint(1) NULL DEFAULT NULL COMMENT '删除标志，0未删除，1已删除',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menus
-- ----------------------------
INSERT INTO `sys_menus` VALUES ('0a1969567e1842a18cac009ef0d1f79f', '6fa28cf73c6c4c11bec106553d69c1b9', '菜单管理', 'MenuManage', 'mdi:menu', 'menuManage', 1, 0, 1, 1, '/system/menuManage/index', '菜单管理', 2, 'admin', 0, '2023-10-04 14:27:49', '2023-12-30 14:27:58');
INSERT INTO `sys_menus` VALUES ('3bf0941cbcdc4f95b03e4096997ed18d', '6fa28cf73c6c4c11bec106553d69c1b9', '用户管理', 'UserManage', 'ic:baseline-settings', 'userManage', 1, 0, 1, 1, '/system/userManage/index', '用户管理', 1, 'admin', 0, '2023-10-04 14:27:49', '2023-12-30 14:27:58');
INSERT INTO `sys_menus` VALUES ('68715c7b-a1ce-4ca6-8f70-84436060a5a6', '6fa28cf73c6c4c11bec106553d69c1b9', '测试菜单', 'test', '', 'test', 1, 0, 1, 1, '/avac', '测试菜单', 3, 'admin', 0, '2023-12-30 19:25:48', '2023-12-30 19:25:48');
INSERT INTO `sys_menus` VALUES ('6fa28cf73c6c4c11bec106553d69c1b9', '0', '系统管理', 'SystemManage', 'ic:baseline-settings', '/system', 0, 0, 1, 1, NULL, '系统管理', 2, 'admin', 0, '2023-10-04 14:27:49', '2023-12-30 14:27:58');
INSERT INTO `sys_menus` VALUES ('ab62e594a25d4c0dab54cda018b850ee', '0', '文章管理', 'ArticleManage', 'ic:outline-article', '/article', 0, 0, 1, 1, '', '文章管理', 1, 'admin', 0, '2023-10-04 14:27:49', '2023-12-30 14:27:58');
INSERT INTO `sys_menus` VALUES ('b547c33203994ae3afa48c4807a25b8f', 'ab62e594a25d4c0dab54cda018b850ee', '发布文章', 'ReleaseArticle', 'ic:outline-article', 'releaseArticle', 1, 0, 1, 1, '/article/index', '发布文章', 1, 'admin', 0, '2023-10-04 14:27:49', '2023-12-30 14:27:58');

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '权限id',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限描述',
  `url` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '授权链接',
  `is_deleted` tinyint(1) NULL DEFAULT NULL COMMENT '删除标志，0未删除，1已删除',
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色id',
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色代码',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `is_deleted` tinyint(1) NULL DEFAULT NULL COMMENT '删除标志，0未删除，1已删除',
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('2cdb9cd4-4790-4667-895a-5cfa580348c7', 'normal113', '普通用户', '普通用户', 0, 'admin', '2024-07-08 22:24:47', 'admin', '2024-07-09 11:34:55');
INSERT INTO `sys_role` VALUES ('a852ff86-a331-4dfb-a8cd-bf1ebd26530e', 'admin', '超级管理员', '超级管理员', 0, 'admin', '2024-07-08 22:09:18', 'admin', '2024-07-08 22:09:18');
INSERT INTO `sys_role` VALUES ('ebf869d0-d6be-47c0-8b32-1a2f1ab0e7d5', 'normal', '普通用户', '普通用户', 0, 'admin', '2024-07-08 22:16:10', 'admin', '2024-07-08 22:16:10');
INSERT INTO `sys_role` VALUES ('fb33c1ee-0e5d-405d-8b0d-b7983f963e6d', 'normal22222222', '普通用户', '普通用户', 1, 'admin', '2024-07-08 22:24:43', 'admin', '2024-07-08 22:26:11');

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键id',
  `role_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `permission_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_role_ibfk_2`(`permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `nickname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `gender` tinyint(1) NULL DEFAULT NULL COMMENT '用户性别，0表示女，1表示男',
  `birthday` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出生日期',
  `city_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所在城市的id',
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/images/avatar/default.png' COMMENT '用户头像',
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '用户状态，0正常，1停用',
  `remarks` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除，0表示没有删除，1表示删除',
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`, `is_deleted`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('0e7b7d5c-8096-4a83-9a2c-6fb24f4e0b8a', 'admin123', '$2a$10$HnxSgJzKXCBoCK2n.Z4N9ekIgPafgnbpLFEsfXe7a2JsGytvnNRse', '老板', '2514627157@qq.com', '13333333333', 0, '2024-08-31', NULL, '', 1, '', 0, 'admin', '2024-08-21 22:49:41', 'admin', '2024-08-21 23:22:14');
INSERT INTO `sys_user` VALUES ('52bb4814-ffca-4d1e-90ff-8eb33b10ef99', 'pinpin', '$2a$10$7xJ.hVhM3DMOd6XHAdL3EecIM.l5XhcFYUw8JGXDGVdNYGPQ4vomK', '萍萍', 'liupin@163.com', '13977943560', 0, '1996-8-11', '四川', '/images/avatar/pinpin.png', 0, '在出现以前我会等', 0, 'admin', '2020-08-18 16:38:16', 'admin', '2020-08-18 16:38:16');
INSERT INTO `sys_user` VALUES ('5d5e6d0a-d1ef-4802-bf13-ca4ea72d4f13', 'laowang', '$2a$10$okGRxN4JbDy1a1DWsSImX.A888dH1/7nTOH8rkG.ZEkXrmkUizgOK', '老瓦', '2644337213@qq.com', '13335555555', 1, '2024-08-31', NULL, '', 0, '涝洼港', 0, 'admin', '2024-08-21 23:24:48', 'admin', '2024-08-22 00:10:55');
INSERT INTO `sys_user` VALUES ('74eee865-0cbd-438d-91ff-b3b1371d8c28', 'admin', '$2a$10$YBv/v.BCfFxDxw4ztNXFC.O9Nz25nMSsMpihLNaaA7gG37HuEv.3m', '超级管理员', 'admin@page.com', '18888888888', 1, '2000-01-01', '云南', '/images/avatar/admin.png', 0, '超级无敌管理员', 0, 'admin', '2023-12-29 17:57:33', 'admin', '2023-12-29 17:57:33');
INSERT INTO `sys_user` VALUES ('7bb41f4f-d744-45ab-84bb-57ce4b972542', 'libai', '$2a$10$YBv/v.BCfFxDxw4ztNXFC.O9Nz25nMSsMpihLNaaA7gG37HuEv.3m', '李白', '123456@163.com', '12345678910', 0, '2020-10-08', '上海', NULL, 0, '好好学习', 0, 'admin', '2020-08-18 16:38:16', 'admin', '2020-08-18 16:38:16');
INSERT INTO `sys_user` VALUES ('aa8e31e6-c155-4694-b654-6f25a19bfde5', 'xiaozhang', '$2a$10$YBv/v.BCfFxDxw4ztNXFC.O9Nz25nMSsMpihLNaaA7gG37HuEv.3m', '小张', '123@163.com', '13977943560', 1, '1995-12-21', '昆明', '/images/avatar/xiaozhang.png', 0, '没有的才是最后的', 0, 'admin', '2020-08-18 16:38:16', 'admin', '2020-08-18 16:38:16');
INSERT INTO `sys_user` VALUES ('b6c36892-adef-4e07-9f06-9cc595378388', 'hahh', '$2a$10$YBv/v.BCfFxDxw4ztNXFC.O9Nz25nMSsMpihLNaaA7gG37HuEv.3m', '小哈', '25448766@qq.com', '1357846987', 1, '2008-12-23', '成都', '/images/avatar/hh.png', 0, '刚刚去噶啥', 0, 'admin', '2020-08-18 16:38:16', 'admin', '2020-08-18 16:38:16');
INSERT INTO `sys_user` VALUES ('b8c51c2f-fdd2-4ab6-838c-6c5e15c5fe6a', 'zhangsan', '$2a$10$YBv/v.BCfFxDxw4ztNXFC.O9Nz25nMSsMpihLNaaA7gG37HuEv.3m', '张三', 'zhangsan@163.com', '13977943560', 1, '1995-4-11', '昆明', '/images/avatar/zhangsan.png', 0, '最后的才是最好的', 0, 'admin', '2020-08-18 16:38:16', 'admin', '2020-08-18 16:38:16');
INSERT INTO `sys_user` VALUES ('d39491b9-51da-4f35-bd8b-0842be056317', 'xiaobai', '$2a$10$YBv/v.BCfFxDxw4ztNXFC.O9Nz25nMSsMpihLNaaA7gG37HuEv.3m', '小白白', '25987365@qq.com', '689534782', 0, '2008-12-23', '四川', '/images/avatar/xiaobai.png', 0, '爱疯了方法', 0, 'admin', '2020-08-18 16:24:29', 'admin', '2020-08-18 16:24:29');
INSERT INTO `sys_user` VALUES ('d4fe12ba-0d9a-4e94-a2c8-a560e4ce8382', 'root', '$2a$10$YBv/v.BCfFxDxw4ztNXFC.O9Nz25nMSsMpihLNaaA7gG37HuEv.3m', '超级管理员', 'admin@page.com', '18888888888', 1, '2000-01-01', '云南', '/images/avatar/admin.png', 0, '超级无敌管理员', 0, 'admin', '2024-05-30 22:31:37', 'admin', '2024-05-30 22:31:37');
INSERT INTO `sys_user` VALUES ('ed72ab50-b85b-45f1-963e-a29b3b359f3b', 'vivi', '$2a$10$YBv/v.BCfFxDxw4ztNXFC.O9Nz25nMSsMpihLNaaA7gG37HuEv.3m', '微微', 'vv@qq.com', '13977945698', 1, '2004-5-20', '曲靖', '/images/avatar/vivi.png', 0, '天生我材必有用', 0, 'admin', '2020-08-18 17:23:05', 'admin', '2020-08-18 17:23:05');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键id',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_role_ibfk_2`(`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users`  (
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户id',
  `user_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户账号',
  `user_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `user_nick` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `user_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `user_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `user_gender` tinyint(1) NULL DEFAULT NULL COMMENT '用户性别，0表示女，1表示男',
  `user_birthday` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出生日期',
  `user_city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所在城市',
  `user_avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/images/avatar/default.png' COMMENT '用户头像',
  `user_marks` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '个性签名',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '是否删除，0表示没有删除，1表示删除',
  `create_by` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES ('52bb4814-ffca-4d1e-90ff-8eb33b10ef99', 'pinpin', '112233', '萍萍', 'liupin@163.com', '13977943560', 0, '1996-8-11', '四川', '/images/avatar/pinpin.png', '在出现以前我会等', 0, NULL, '2020-08-18 16:38:16', '2020-08-18 16:38:16');
INSERT INTO `sys_users` VALUES ('74eee865-0cbd-438d-91ff-b3b1371d8c28', 'admin', '$2a$10$7xJ.hVhM3DMOd6XHAdL3EecIM.l5XhcFYUw8JGXDGVdNYGPQ4vomK', NULL, NULL, NULL, NULL, NULL, NULL, '/images/avatar/default.png', NULL, 0, 'admin', '2023-12-29 17:57:33', '2023-12-29 17:57:33');
INSERT INTO `sys_users` VALUES ('7bb41f4f-d744-45ab-84bb-57ce4b972542', 'libai', '$2a$10$B8HpBwd3BDH7ddae0MDqMu6r9avRyiqN9KciDT0eoTS3keLA/nw5e', '李白', '123456@163.com', '12345678910', 0, '2020-10-08', '上海', NULL, '好好学习', 0, NULL, '2020-08-18 16:38:16', '2020-08-18 16:38:16');
INSERT INTO `sys_users` VALUES ('aa8e31e6-c155-4694-b654-6f25a19bfde5', 'xiaozhang', '123456', '小张', '123@163.com', '13977943560', 1, '1995-12-21', '昆明', '/images/avatar/xiaozhang.png', '没有的才是最后的', 0, NULL, '2020-08-18 16:38:16', '2020-08-18 16:38:16');
INSERT INTO `sys_users` VALUES ('b6c36892-adef-4e07-9f06-9cc595378388', 'hahh', '332211', '小哈', '25448766@qq.com', '1357846987', 1, '2008-12-23', '成都', '/images/avatar/hh.png', '刚刚去噶啥', 0, 'admin', '2020-08-18 16:38:16', '2020-08-18 16:38:16');
INSERT INTO `sys_users` VALUES ('b8c51c2f-fdd2-4ab6-838c-6c5e15c5fe6a', 'zhangsan', '123456', '张三', 'zhangsan@163.com', '13977943560', 1, '1995-4-11', '昆明', '/images/avatar/zhangsan.png', '最后的才是最好的', 0, NULL, '2020-08-18 16:38:16', '2020-08-18 16:38:16');
INSERT INTO `sys_users` VALUES ('d39491b9-51da-4f35-bd8b-0842be056317', 'xiaobai', 'xxxxx', '小白白', '25987365@qq.com', '689534782', 0, '2008-12-23', '四川', '/images/avatar/xiaobai.png', '爱疯了方法', 0, 'admin', '2020-08-18 16:24:29', '2020-08-18 16:24:29');
INSERT INTO `sys_users` VALUES ('ed72ab50-b85b-45f1-963e-a29b3b359f3b', 'vivi', '21232f297a57a5a743894a0e4a801fc3', '微微', 'vv@qq.com', '13977945698', 1, '2004-5-20', '曲靖', '/images/avatar/vivi.png', '天生我材必有用', 0, 'admin', '2020-08-18 17:23:05', '2020-08-18 17:23:05');

SET FOREIGN_KEY_CHECKS = 1;
