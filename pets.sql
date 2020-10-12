/*
 Navicat Premium Data Transfer

 Source Server         : mybatis
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : pets

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 12/10/2020 10:16:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of forum
-- ----------------------------
INSERT INTO `forum` VALUES (1, 'admin', '我想求购一个xxx动物');
INSERT INTO `forum` VALUES (3, 'admin', '123456789');
INSERT INTO `forum` VALUES (5, 'jack', '1245645654');
INSERT INTO `forum` VALUES (6, 'aavbb', '13215642135');
INSERT INTO `forum` VALUES (7, '测试', '221231');
INSERT INTO `forum` VALUES (42, '11111111', '放松放松地方');
INSERT INTO `forum` VALUES (18, '111111', '奥术大师大所多');
INSERT INTO `forum` VALUES (17, '11111111', '阿文企鹅全文请问');
INSERT INTO `forum` VALUES (19, '1231231', '大叔大婶大所大所');
INSERT INTO `forum` VALUES (20, '武切维奇', '喂喂喂');
INSERT INTO `forum` VALUES (21, '请我', '喂喂喂');
INSERT INTO `forum` VALUES (34, '11111111', '法师的发送到发送到发送到');
INSERT INTO `forum` VALUES (36, 'admin', '委屈翁群翁群翁群翁群无');
INSERT INTO `forum` VALUES (37, 'qwer', '驱蚊器翁群翁无群吧');
INSERT INTO `forum` VALUES (38, '测试1', '驱蚊器翁群翁群翁群翁');
INSERT INTO `forum` VALUES (39, 'admin', '驱蚊器翁群翁');
INSERT INTO `forum` VALUES (43, 'admin', '回家考回家考');
INSERT INTO `forum` VALUES (44, 'qwer', 'qweqweqw');
INSERT INTO `forum` VALUES (45, 'admin', 'uytyutuyt');
INSERT INTO `forum` VALUES (31, '11111111', '纳斯但是诞生地阿森纳的');
INSERT INTO `forum` VALUES (33, 'admin', '的方式的发送到发送到发送到');

-- ----------------------------
-- Table structure for pet_watch
-- ----------------------------
DROP TABLE IF EXISTS `pet_watch`;
CREATE TABLE `pet_watch`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pet_number` int(11) NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `section` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `species` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rescue_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `weight` double NULL DEFAULT NULL,
  `salvor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `registration` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adoption_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `healthy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pet_pictures` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pet_watch
-- ----------------------------
INSERT INTO `pet_watch` VALUES (1, 1001, 24, '狗', '中华田园犬', '公', '山东青岛城阳区', 15, '杨帆', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UibY4.jpg\" alt=\"0UibY4.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (2, 1002, 36, '狗', '博美', '公', '山东青岛崂山区', 12, '张涛', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0Uij61.png\" alt=\"0Uij61.png\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (3, 1003, 48, '狗', '哈士奇', '公', '山东青岛市北区', 20, '张彬', '2020.10.06', '0', '健康', '\"https://s1.ax1x.com/2020/10/06/0UFpTO.jpg\" alt=\"0UFpTO.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (4, 1004, 5, '狗', '金毛', '母', '山东青岛市南区', 21, '李玉龙', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UFifH.jpg\" alt=\"0UFifH.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (5, 1005, 24, '狗', '泰迪', '公', '山东青岛城阳区', 20, '计佳琦', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UFkpd.jpg\" alt=\"0UFkpd.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (6, 1006, 48, '狗', '中华田园犬', '公', '山东青岛崂山区', 18, '陈政', '2020.10.06', '0', '健康', '\"https://s1.ax1x.com/2020/10/06/0UFE6I.jpg\" alt=\"0UFE6I.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (7, 1007, 48, '狗', '哈士奇', '母', '山东青岛市北区', 20, '杨帆', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UFenP.jpg\" alt=\"0UFenP.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (8, 1008, 4, '狗', '中华田园犬', '母', '山东青岛市南区', 21, '张涛', '2020.10.06', '0', '健康', '\"https://s1.ax1x.com/2020/10/06/0UFn78.jpg\" alt=\"0UFn78.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (9, 1009, 72, '狗', '哈士奇', '公', '山东青岛城阳区', 19, '李玉龙', '2020.10.06', '0', '健康', '\"https://s1.ax1x.com/2020/10/06/0UFMtg.jpg\" alt=\"0UFMtg.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (10, 1010, 24, '狗', '博美', '公', '山东青岛崂山区', 12, '张彬', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UFQhQ.jpg\" alt=\"0UFQhQ.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (11, 1011, 12, '狗', '中华田园犬', '母', '山东青岛市北区', 17, '杨帆', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UFgHK.jpg\" alt=\"0UFgHK.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (12, 1012, 24, '狗', '泰迪', '母', '山东青岛市南区', 15, '计佳琦', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UFWND.jpg\" alt=\"0UFWND.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (13, 1013, 3, '狗', '博美', '公', '山东青岛城阳区', 20, '陈政', '2020.10.06', '0', '健康', '\"https://s1.ax1x.com/2020/10/06/0UF49H.jpg\" alt=\"0UF49H.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (14, 1014, 48, '狗', '中华田园犬', '公', '山东青岛崂山区', 19, '李玉龙', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UF53d.jpg\" alt=\"0UF53d.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (15, 1015, 24, '狗', '泰迪', '母', '山东青岛市北区', 15, '张涛', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UkPbV.jpg\" alt=\"0UkPbV.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (16, 1016, 3, '狗', '中华田园犬', '母', '山东青岛市南区', 20, '计佳琦', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UkA5F.jpg\" alt=\"0UkA5F.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (17, 1017, 12, '狗', '哈士奇', '公', '山东青岛城阳区', 20, '陈政', '2020.10.06', '0', '健康', '\"https://s1.ax1x.com/2020/10/06/0UkVC4.jpg\" alt=\"0UkVC4.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (18, 1018, 4, '狗', '博美', '公', '山东青岛市南区', 16, '陈政', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UkmvR.jpg\" alt=\"0UkmvR.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (19, 1019, 7, '狗', '中华田园犬', '母', '山东青岛市南区', 19, '张彬', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UkuK1.jpg\" alt=\"0UkuK1.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (20, 1020, 36, '狗', '泰迪', '公', '山东青岛市南区', 14, '计佳琦', '2020.10.06', '0', '健康', '\"https://s1.ax1x.com/2020/10/06/0UkMb6.jpg\" alt=\"0UkMb6.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (21, 1021, 2, '狗', '哈士奇', '公', '山东青岛城阳区', 17, '杨帆', '2020.10.06', '0', '健康', '\"https://s1.ax1x.com/2020/10/06/0UklVK.jpg\" alt=\"0UklVK.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (22, 1022, 12, '狗', '中华田园犬', '公', '山东青岛城阳区', 15, '陈政', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0Uk35D.jpg\" alt=\"0Uk35D.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (23, 1023, 12, '狗', '博美', '母', '山东青岛市南区', 12, '陈政', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0Uk2Mn.jpg\" alt=\"0Uk2Mn.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (24, 1024, 36, '狗', '中华田园犬', '公', '山东青岛市南区', 19, '张彬', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UkhZV.jpg\" alt=\"0UkhZV.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (25, 1025, 2, '狗', '哈士奇', '公', '山东青岛城阳区', 16, '陈政', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0Uk5IU.jpg\" alt=\"0Uk5IU.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (26, 1026, 12, '猫', '暹罗猫', '公', '山东青岛市北区', 2.5, '李玉龙', '2020.10.06', '1', '健康', '\r\n\"https://s1.ax1x.com/2020/10/06/0UkTG4.jpg\" alt=\"0UkTG4.jpg\" border=\"0\"\r\n\"https://s1.ax1x.com/2020/10/06/0UkTG4.jpg\" alt=\"0UkTG4.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (27, 1027, 2, '猫', '狸花猫', '公', '山东青岛市南区', 3, '计佳琦', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0Uk7RJ.jpg\" alt=\"0Uk7RJ.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (28, 1028, 4, '猫', '橘猫', '公', '山东青岛城阳区', 6, '张涛', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UkLs1.jpg\" alt=\"0UkLs1.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (29, 1029, 48, '猫', '布偶猫', '公', '山东青岛市北区', 6, '张彬', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UkOqx.jpg\" alt=\"0UkOqx.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (30, 1030, 3, '猫', '暹罗猫', '母', '山东青岛崂山区', 5, '杨帆', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UkxIO.jpg\" alt=\"0UkxIO.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (31, 1031, 24, '猫', '狸花猫', '母', '山东青岛市南区', 3, '李玉龙', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UAVdf.jpg\" alt=\"0UAVdf.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (32, 1032, 4, '猫', '狸花猫', '母', '山东青岛城阳区', 3.6, '陈政', '2020.10.06', '0', '健康', '\"https://s1.ax1x.com/2020/10/06/0UAZo8.jpg\" alt=\"0UAZo8.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (33, 1033, 12, '猫', '橘猫', '公', '山东青岛城阳区', 3, '陈政', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UAmFS.jpg\" alt=\"0UAmFS.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (34, 1034, 3, '猫', '狸花猫', '公', '山东青岛崂山区', 6, '陈政', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UAuWQ.jpg\" alt=\"0UAuWQ.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (35, 1035, 6, '猫', '橘猫', '母', '山东青岛市南区', 5, '杨帆', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UAKzj.jpg\" alt=\"0UAKzj.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (36, 1036, 24, '猫', '狸花猫', '公', '山东青岛城阳区', 4, '陈政', '2020.10.06', '0', '健康', '\"https://s1.ax1x.com/2020/10/06/0UAlyn.jpg\" alt=\"0UAlyn.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (37, 1037, 3, '猫', '橘猫', '公', '山东青岛城阳区', 5, '李玉龙', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UA8e0.jpg\" alt=\"0UA8e0.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (38, 1038, 12, '猫', '暹罗猫', '母', '山东青岛崂山区', 2, '杨帆', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UAtFU.jpg\" alt=\"0UAtFU.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (39, 1039, 36, '猫', '狸花猫', '母', '山东青岛城阳区', 5, '李玉龙', '2020.10.06', '0', '健康', '\"https://s1.ax1x.com/2020/10/06/0UAUW4.jpg\" alt=\"0UAUW4.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (40, 1040, 24, '猫', '狸花猫', '母', '山东青岛崂山区', 3, '张涛', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UAsw6.jpg\" alt=\"0UAsw6.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (41, 1041, 36, '猫', '布偶猫', '公', '山东青岛市南区', 6, '陈政', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UAgYD.jpg\" alt=\"0UAgYD.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (42, 1042, 12, '猫', '狸花猫', '公', '山东青岛市北区', 2, '陈政', '2020.10.06', '0', '健康', '\"https://s1.ax1x.com/2020/10/06/0UA2fe.jpg\" alt=\"0UA2fe.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (43, 1043, 48, '猫', '橘猫', '母', '山东青岛市北区', 7, '计佳琦', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UAfld.jpg\" alt=\"0UAfld.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (44, 1044, 24, '猫', '暹罗猫', '母', '山东青岛市南区', 4, '张彬', '2020.10.06', '0', '健康', '\"https://s1.ax1x.com/2020/10/06/0UAImt.jpg\" alt=\"0UAImt.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (45, 1045, 24, '猫', '橘猫', '公', '山东青岛市南区', 3, '杨帆', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UATTf.jpg\" alt=\"0UATTf.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (46, 1046, 12, '猫', '狸花猫', '公', '山东青岛城阳区', 2.1, '陈政', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UAqfg.jpg\" alt=\"0UAqfg.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (47, 1047, 36, '猫', '布偶猫', '母', '山东青岛城阳区', 5, '张彬', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UAXlj.jpg\" alt=\"0UAXlj.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (48, 1048, 24, '猫', '狸花猫', '母', '山东青岛市南区', 3, '计佳琦', '2020.10.06', '0', '健康', '\"https://s1.ax1x.com/2020/10/06/0UAj6s.jpg\" alt=\"0UAj6s.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (49, 1049, 12, '猫', '暹罗猫', '母', '山东青岛崂山区', 2.4, '张涛', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UES00.jpg\" alt=\"0UES00.jpg\" border=\"0\"');
INSERT INTO `pet_watch` VALUES (50, 1050, 24, '猫', '狸花猫', '公', '山东青岛市北区', 3.9, '杨帆', '2020.10.06', '1', '健康', '\"https://s1.ax1x.com/2020/10/06/0UEPtU.jpg\" alt=\"0UEPtU.jpg\" border=\"0\"\r\n');
INSERT INTO `pet_watch` VALUES (52, NULL, 80, '熊', '熊猫', '公', 'qst', 1000, '张彬', '2020-05-06', '0', '健康', 'qweqwe');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `occupation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职业',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `intention` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收养意向',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `weChat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信',
  `authority` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收养状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123456', '阿彬', '男', 22, '码农', '13949499999', '中国', '熊猫', 'binzai@163.com', 'binzai', '一级', '1001');
INSERT INTO `user` VALUES (8, 'hahaha', '123123', '测试22222', '男', 22, '企业家', '135148000511', '美国', '珍稀动物你你是爱神的箭熬枯受淡就卡了', 'ceshi@qq.com', 'ceshi', NULL, '1023');
INSERT INTO `user` VALUES (10, 'qwer', '123456', 'sss', '男', 1212121212, '首富', '1212121', '韩国', '', '', '', NULL, '1049');
INSERT INTO `user` VALUES (11, '测试', '111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (12, '测试1', '222222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (13, '萨达所大所大所多撒', '111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (14, 'qqqq', '111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (15, 'eeee', 'qweqwe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (16, '11112222', '123123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (17, '111111111111111', '123123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
