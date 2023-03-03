
/*
	编码区别：（说明：新建数据库时一般选用 utf8_general_ci 就可以）
	utf8_bin:将字符串中的每一个字符用二进制数据存储，区分大小写。
	utf8_genera_ci:不区分大小写，即大小写不敏感。
	utf8_general_cs:区分大小写，即大小写敏感
	utf8_unicode_ci:不能完全支持组合的记号。
*/
CREATE DATABASE IF NOT EXISTS `pageDB`  DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

--DROP TABLE IF EXISTS `SYS_USERS`;
CREATE TABLE IF NOT EXISTS `SYS_USERS`(
	`user_id` varchar(50) NOT NULL COMMENT '用户id',
  `user_name` varchar(20) NULL DEFAULT NULL COMMENT '用户账号',
  `user_password` varchar(100) NULL DEFAULT NULL COMMENT '用户密码',
  `user_nick` varchar(30) NULL DEFAULT NULL COMMENT '用户昵称',
  `user_email` varchar(50) NULL DEFAULT NULL COMMENT '电子邮箱',
  `user_phone` varchar(11) NULL DEFAULT NULL COMMENT '电话号码',
  `user_gender` tinyint(1) NULL DEFAULT NULL COMMENT '用户性别，0表示女，1表示男',
  `user_birthday` varchar(10) NULL DEFAULT NULL COMMENT '出生日期',
  `user_city` varchar(50) NULL DEFAULT NULL COMMENT '所在城市',
  `user_avatar` varchar(100) NULL DEFAULT '/images/avatar/default.png' COMMENT '用户头像',
  `user_marks` varchar(255) NULL DEFAULT NULL COMMENT '个性签名',
  `is_deleted` tinyint(1) NULL DEFAULT 0 COMMENT '是否删除，0表示没有删除，1表示删除',
  `create_by` varchar(20) NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB


INSERT INTO `SYS_USERS` VALUES ('aa8e31e6-c155-4694-b654-6f25a19bfde5', 'xiaozhang', '123456', '小张', '123@163.com', '13977943560', 1, '1995-12-21', '昆明', '/images/avatar/xiaozhang.png', '没有的才是最后的', 0, NULL, NULL, NULL);
INSERT INTO `SYS_USERS` VALUES ('b8c51c2f-fdd2-4ab6-838c-6c5e15c5fe6a', 'zhangsan', '123456', '张三', 'zhangsan@163.com', '13977943560', 1, '1995-4-11', '昆明', '/images/avatar/zhangsan.png', '最后的才是最好的', 0, NULL, NULL, NULL);
INSERT INTO `SYS_USERS` VALUES ('52bb4814-ffca-4d1e-90ff-8eb33b10ef99', 'pinpin', '112233', '萍萍', 'liupin@163.com', '13977943560', 0, '1996-8-11', '四川', '/images/avatar/pinpin.png', '在出现以前我会等', 0, NULL, NULL, NULL);
INSERT INTO `SYS_USERS` VALUES ('7bb41f4f-d744-45ab-84bb-57ce4b972542', 'libai', '$2a$10$B8HpBwd3BDH7ddae0MDqMu6r9avRyiqN9KciDT0eoTS3keLA/nw5e', '李白', '123456@163.com', '12345678910', 0, '2020-10-08', '上海', NULL, '好好学习', 0, NULL, NULL, NULL);
INSERT INTO `SYS_USERS` VALUES ('557d5c9e-d21b-4550-b63a-51fa4322abb5', 'abcder', '$2a$10$XbO576AKraDs6JrQp7I7iu0jePOK9W6UpFcvE61m8J5u/Hk0G2lz6', NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL);
INSERT INTO `SYS_USERS` VALUES ('05027437-cfc4-4b3a-ae82-3d990d8292c8', 'qwert', '$2a$10$ZnkMrd7/3MxzLBArpNsGgusge2ab7z5YiCd1MOlsnd73g/.3vEYti', NULL, NULL, '12345678910', 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL);
INSERT INTO `SYS_USERS` VALUES ('6bd21954-0053-4c27-b8c0-edbdc92e03b7', 'songsong', '$2a$10$Bv0jG32iSQj7UH0IXHQ8BeFIE1YzseL64oezps8QNEXpuhci3NQLm', '宋宋', 'songsong@qq.com', '13465782354', 1, '2008-7-26', '北京', '/images/avatar/songsong.png', '我要暴富，跟着我', 0, NULL, NULL, NULL);
INSERT INTO `SYS_USERS` VALUES ('09375fcd-f7bd-46b8-a4da-340e14c76079', 'aabbcc', '123321', 'string', 'string', 'string', 0, 'string', 'string', 'string', 'string', 0, NULL, '2020-08-18 16:19:03', '2020-08-18 16:19:03');
INSERT INTO `SYS_USERS` VALUES ('62226da9-45fc-49a6-b3a2-49d953d53d83', 'xxxxx', 'xxxxx', '', '', '', 0, '', '', '', '', 0, NULL, '2020-08-18 16:21:50', '2020-08-18 16:21:50');
INSERT INTO `SYS_USERS` VALUES ('d39491b9-51da-4f35-bd8b-0842be056317', 'xiaobai', 'xxxxx', '小白白', '25987365@qq.com', '689534782', 0, '2008-12-23', '四川', '/images/avatar/xiaobai.png', '爱疯了方法', 0, '2020-08-18 16:24:29', '2020-08-18 16:24:29');
INSERT INTO `SYS_USERS` VALUES ('b6c36892-adef-4e07-9f06-9cc595378388', 'hahh', '332211', '小哈', '25448766@qq.com', '1357846987', 1, '2008-12-23', '成都', '/images/avatar/hh.png', '刚刚去噶啥', 0, '2020-08-18 16:38:16', '2020-08-18 16:38:16');
INSERT INTO `SYS_USERS` VALUES ('ed72ab50-b85b-45f1-963e-a29b3b359f3b', 'vivi', '$2a$10$QKUsaTxUCfcdDW9jDZxSbeb/IN0SG4SzTygr7tnbNc6isE8JePCLy', '微微', '1689157364', '13977945698', 1, '2004-5-20', '曲靖', '/images/avatar/vivi.png', '天生我材必有用', 0, '2020-08-18 17:23:05', '2020-08-18 17:23:05');
