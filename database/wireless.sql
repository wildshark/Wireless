/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : wireless

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 16/08/2022 14:22:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_account
-- ----------------------------
DROP TABLE IF EXISTS `admin_account`;
CREATE TABLE `admin_account`  (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `create_date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dob` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `religion` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nationality` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `national_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `passport_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `portal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `school_id` int NULL DEFAULT NULL,
  `status_id` int NULL DEFAULT 1,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_account
-- ----------------------------
INSERT INTO `admin_account` VALUES (1, '11', 'admin', 'pass', 'Test', 'Test', NULL, 'admin@admin.com', '11', '1', '1', '1', '1', '1', '1', '1', 'administrator', 'administration', 0, 1);
INSERT INTO `admin_account` VALUES (2, '11', 'account', 'account', 'Test', 'Test', NULL, '2', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'account', 'account', 0, 1);
INSERT INTO `admin_account` VALUES (4, '11', 'lecturer', 'lecturer', 'Test', 'Test', '', 'andy@andy.com', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'lecturer', 'lecturer', 3, 1);
INSERT INTO `admin_account` VALUES (5, '11', 'ghanacu@50', 'sedinam', 'abraham ', 'hagar', 'sedinam', 'abrahamhagar@gmail.com', '0241394477', NULL, NULL, NULL, NULL, '', 'nill', NULL, 'administration', 'administration', 0, 1);

-- ----------------------------
-- Table structure for fees_ledger
-- ----------------------------
DROP TABLE IF EXISTS `fees_ledger`;
CREATE TABLE `fees_ledger`  (
  `ledger_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NULL DEFAULT NULL,
  `tran_clock` datetime(6) NULL DEFAULT NULL,
  `tran_date` date NULL DEFAULT NULL,
  `semester_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `academic_yr` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `level_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ref` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bill` double(11, 2) NULL DEFAULT 0,
  `paid` double(11, 2) NULL DEFAULT 0,
  `status_id` int NULL DEFAULT 1,
  PRIMARY KEY (`ledger_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fees_ledger
-- ----------------------------
INSERT INTO `fees_ledger` VALUES (13, 36, '2020-05-17 03:07:26.000000', '2020-05-14', '1', '2000', NULL, '1589425646', 1000.00, 0.00, 1);
INSERT INTO `fees_ledger` VALUES (14, 36, '2020-05-17 03:44:12.000000', '2020-05-17', '1', '2000', NULL, '1589427852', 1000.00, 0.00, 1);
INSERT INTO `fees_ledger` VALUES (16, 36, '2020-05-17 15:18:42.000000', '2020-05-17', '1', '2000', NULL, '22222', 0.00, 2000.00, 2);
INSERT INTO `fees_ledger` VALUES (18, 36, '2020-05-17 14:39:59.000000', '2020-05-17', '1', '2002/2002', '100', '1589726399', 1000.00, 0.00, 1);
INSERT INTO `fees_ledger` VALUES (19, 36, '2020-05-17 15:13:57.000000', '2020-05-17', '1', '2002/2002', '100', '1589728437', 1000.00, 0.00, 1);
INSERT INTO `fees_ledger` VALUES (23, 36, '2020-05-17 20:06:21.000000', '2020-05-17', '1', '2002/2002', '100', '1589745981', 0.00, 0.00, 2);
INSERT INTO `fees_ledger` VALUES (24, 36, '2020-05-18 23:18:47.000000', '2020-05-18', '1', '2002/2002', '100', '1589843927', 0.00, NULL, 2);
INSERT INTO `fees_ledger` VALUES (25, 36, '2020-05-19 06:55:02.000000', '2020-05-19', '1', '200/200', '100', '128983', 0.00, NULL, 2);
INSERT INTO `fees_ledger` VALUES (26, 36, '2020-05-19 06:58:02.000000', '2020-05-19', '1', '200/200', '100', '22', 0.00, NULL, 2);
INSERT INTO `fees_ledger` VALUES (27, 36, '2020-05-19 06:58:45.000000', '2020-05-19', '1', '200/200', '100', '22', 0.00, NULL, 2);
INSERT INTO `fees_ledger` VALUES (28, 36, '2020-05-19 07:00:16.000000', '2020-05-19', '1', '200/200', '100', '22', 0.00, 222.00, 2);
INSERT INTO `fees_ledger` VALUES (29, 36, '2020-05-19 07:00:59.000000', '2020-05-19', '1', '200/200', '100', '22', 0.00, 222.00, 2);
INSERT INTO `fees_ledger` VALUES (30, 36, '2020-05-19 07:01:30.000000', '2020-05-19', '1', '200/200', '100', '1234567', 0.00, 500.00, 2);
INSERT INTO `fees_ledger` VALUES (31, 36, '2020-05-30 14:42:34.000000', '2020-05-30', '1', '2002', '100', '1590849754', 1000.00, 0.00, 1);
INSERT INTO `fees_ledger` VALUES (32, 36, '2020-05-30 14:49:32.000000', '2020-05-30', '1', '2002', '100', '1590850172', 1000.00, 0.00, 1);
INSERT INTO `fees_ledger` VALUES (33, 36, '2020-05-30 14:50:39.000000', '2020-05-30', '1', '2002', '100', '1590850239', 1000.00, 0.00, 1);
INSERT INTO `fees_ledger` VALUES (36, 42, '2020-06-24 19:23:35.000000', '2020-06-24', '1', '222', '100', '1593026615', 1000.00, 0.00, 1);
INSERT INTO `fees_ledger` VALUES (37, 42, '2020-06-24 20:13:24.000000', '2020-06-24', '1', '222', '100', '1593029604', 1000.00, 0.00, 1);
INSERT INTO `fees_ledger` VALUES (38, 12, '2020-06-24 20:16:59.000000', '2020-06-24', '1', '222', '100', '444', 0.00, 6000.00, 2);
INSERT INTO `fees_ledger` VALUES (39, 12, '2020-06-24 20:17:17.000000', '2020-06-24', '1', '222', '100', '450', 0.00, 600.00, 2);
INSERT INTO `fees_ledger` VALUES (40, 139, '2020-06-25 11:46:06.000000', '2020-06-25', '1', '2020/2021', '100', '1593085566', 1000.00, 0.00, 1);
INSERT INTO `fees_ledger` VALUES (41, 139, '2020-06-25 11:46:57.000000', '2020-06-25', '1', '2020/2021', '100', '77', 0.00, 5000.00, 2);
INSERT INTO `fees_ledger` VALUES (42, 1, '2020-10-11 02:05:05.000000', '2020-10-11', '1', '', '100', '1602381905', 1000.00, 0.00, 1);
INSERT INTO `fees_ledger` VALUES (43, 1, '2020-10-11 06:17:43.000000', '2020-10-11', '1', '2019/2020', '100', '1602397063', 1000.00, 0.00, 1);
INSERT INTO `fees_ledger` VALUES (44, 1, '2020-10-11 06:19:26.000000', '2020-10-11', '1', '2019/2020', '100', '1222', 0.00, 990.00, 2);
INSERT INTO `fees_ledger` VALUES (47, 11, '2022-05-13 19:51:44.000000', '2022-05-13', '11', '11', '11', '11', 11.00, 0.00, 1);
INSERT INTO `fees_ledger` VALUES (48, 1, '0000-00-00 00:00:00.000000', '2022-05-13', '1st Semester', '2002/2003', '100', 'BL1652473541', 500.00, 0.00, 1);
INSERT INTO `fees_ledger` VALUES (49, 1, '0000-00-00 00:00:00.000000', '2022-05-13', '1st Semester', '2002/2003', '100', 'BL1652473541', 500.00, 0.00, 1);
INSERT INTO `fees_ledger` VALUES (50, 36, '0000-00-00 00:00:00.000000', '2022-05-13', '1st Semester', '2002/2003', '100', 'BL1652473952', 5000.00, 0.00, 1);
INSERT INTO `fees_ledger` VALUES (51, 1, '0000-00-00 00:00:00.000000', '2022-05-13', '1st Semester', '2020/2036', '200', 'PP1652474100', 0.00, 56000.00, 1);
INSERT INTO `fees_ledger` VALUES (52, 1, '0000-00-00 00:00:00.000000', '2022-05-13', '1st Semester', '2002/2003', '100', 'PP1652474213', 0.00, 500.00, 1);
INSERT INTO `fees_ledger` VALUES (53, 1, '0000-00-00 00:00:00.000000', '2022-05-13', '1st Semester', '2002/2003', '200', 'PP1652475541', 0.00, 500.00, 1);
INSERT INTO `fees_ledger` VALUES (54, 1, '0000-00-00 00:00:00.000000', '2022-05-20', '1st Semester', '2002/2003', '100', 'PP1653048181', 0.00, 500.00, 1);
INSERT INTO `fees_ledger` VALUES (55, 1, '0000-00-00 00:00:00.000000', '2022-05-20', '1st Semester', '2002/2003', '100', 'PP1653054184', 0.00, 500.00, 1);
INSERT INTO `fees_ledger` VALUES (56, 387, '0000-00-00 00:00:00.000000', '2022-07-09', '1st Semester', '2012/2013', '100', 'PP1657362425', 0.00, 222.00, 1);
INSERT INTO `fees_ledger` VALUES (57, 387, '0000-00-00 00:00:00.000000', '2022-07-09', '1st Semester', '2012/2013', '100', 'PP1657365374', 0.00, 40.00, 1);
INSERT INTO `fees_ledger` VALUES (58, 387, '0000-00-00 00:00:00.000000', '2022-07-09', '1st Semester', '2002/2003', '100', 'PP1657379369', 0.00, 600.00, 1);
INSERT INTO `fees_ledger` VALUES (59, 36, '0000-00-00 00:00:00.000000', '2022-07-09', '1st Semester', '2012/2013', '100', 'BL1657381514', 700.00, 0.00, 1);
INSERT INTO `fees_ledger` VALUES (60, 387, '0000-00-00 00:00:00.000000', '2022-07-09', '1st Semester', '2012/2013', '100', 'PP1657382499', 0.00, 50.00, 1);
INSERT INTO `fees_ledger` VALUES (61, 387, '0000-00-00 00:00:00.000000', '2022-07-09', '1st Semester', '2012/2013', '100', 'PP1657382499', 0.00, 50.00, 1);
INSERT INTO `fees_ledger` VALUES (62, 387, '0000-00-00 00:00:00.000000', '2022-07-09', '1st Semester', '2012/2013', '100', 'PP1657382680', 0.00, 600.00, 1);
INSERT INTO `fees_ledger` VALUES (63, 387, '0000-00-00 00:00:00.000000', '2022-07-09', '1st Semester', '2012/2013', '100', 'PP1657382680', 0.00, 600.00, 1);
INSERT INTO `fees_ledger` VALUES (64, 387, '0000-00-00 00:00:00.000000', '2022-07-09', '1st Semester', '2012/2013', '100', 'PP1657382680', 0.00, 600.00, 1);
INSERT INTO `fees_ledger` VALUES (65, 387, '0000-00-00 00:00:00.000000', '2022-07-09', '1st Semester', '2012/2013', '100', 'PP1657382680', 0.00, 600.00, 1);
INSERT INTO `fees_ledger` VALUES (66, 387, '0000-00-00 00:00:00.000000', '2022-07-09', '1st Semester', '2012/2013', '100', 'PP1657382680', 0.00, 600.00, 1);
INSERT INTO `fees_ledger` VALUES (67, 387, '0000-00-00 00:00:00.000000', '2022-07-09', '1st Semester', '2012/2013', '100', 'PP1657382680', 0.00, 600.00, 1);
INSERT INTO `fees_ledger` VALUES (68, 387, '0000-00-00 00:00:00.000000', '2022-07-09', '1st Semester', '2012/2013', '100', 'PP1657382680', 0.00, 600.00, 1);
INSERT INTO `fees_ledger` VALUES (69, 387, '0000-00-00 00:00:00.000000', '2022-07-09', '1st Semester', '2012/2013', '100', 'PP1657382680', 0.00, 600.00, 1);
INSERT INTO `fees_ledger` VALUES (70, 387, '0000-00-00 00:00:00.000000', '2022-07-09', '1st Semester', '2012/2013', '100', 'PP1657382680', 0.00, 600.00, 1);
INSERT INTO `fees_ledger` VALUES (71, 387, '0000-00-00 00:00:00.000000', '2022-07-09', '1st Semester', '2012/2013', '100', 'PP1657384269', 0.00, 70.00, 1);
INSERT INTO `fees_ledger` VALUES (72, 387, '0000-00-00 00:00:00.000000', '2022-08-16', '1st Semester', '2020/2030', '100', 'PP1660657296', 0.00, 500.00, 1);

-- ----------------------------
-- Table structure for internet_token
-- ----------------------------
DROP TABLE IF EXISTS `internet_token`;
CREATE TABLE `internet_token`  (
  `tokenID` int NOT NULL AUTO_INCREMENT,
  `user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `utoken` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `acad_yr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `student_index` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`tokenID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 208 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of internet_token
-- ----------------------------
INSERT INTO `internet_token` VALUES (167, '1', '1', '1', 'GHCU12040018');
INSERT INTO `internet_token` VALUES (168, '420961700', '62fb990d260d1', '2022/2030', 'aa');
INSERT INTO `internet_token` VALUES (169, '1464661566', '62fb990d260d8', '2022/2030', 'GHCU12040018');
INSERT INTO `internet_token` VALUES (170, '619392488', '62fb990d260db', '2022/2030', 'GHCU12040018');
INSERT INTO `internet_token` VALUES (171, '1625821484', '62fb990d260dd', '2022/2030', 'GHCU12040018');
INSERT INTO `internet_token` VALUES (172, '58786897', '62fb990d260df', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (173, '1328028641', '62fb990d260e1', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (174, '1174270560', '62fb990d260e3', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (175, '1219257997', '62fb990d260e5', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (176, '2036042209', '62fb990d260e7', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (177, '502762451', '62fb990d260e9', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (178, '264137445', '62fb990d260eb', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (179, '2006468881', '62fb990d260ed', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (180, '613055877', '62fb990d260ef', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (181, '964427777', '62fb990d260f1', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (182, '981264394', '62fb990d260f2', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (183, '404898741', '62fb990d260f5', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (184, '409542295', '62fb990d260f6', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (185, '776403067', '62fb990d260f8', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (186, '1432198944', '62fb990d260fa', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (187, '1637329306', '62fb990d260fc', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (188, '1008298939', '62fb992f63da7', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (189, '124710989', '62fb992f63dac', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (190, '792930019', '62fb992f63dae', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (191, '191058079', '62fb992f63daf', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (192, '397408518', '62fb992f63db0', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (193, '1514564258', '62fb992f63db1', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (194, '652421935', '62fb992f63db2', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (195, '845362062', '62fb992f63db3', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (196, '1426080297', '62fb992f63db4', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (197, '1958004315', '62fb992f63db5', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (198, '1853863002', '62fb992f63db6', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (199, '1966090406', '62fb992f63db7', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (200, '1402955871', '62fb992f63db8', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (201, '1211828615', '62fb992f63db9', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (202, '627618801', '62fb992f63dba', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (203, '1095991437', '62fb992f63dbb', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (204, '438681360', '62fb992f63dbc', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (205, '329351517', '62fb992f63dbd', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (206, '1796002474', '62fb992f63dbe', '2022/2030', NULL);
INSERT INTO `internet_token` VALUES (207, '363851750', '62fb992f63dbf', '2022/2030', NULL);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `admission` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dob` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mobile` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `religion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gender` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `entery_yr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nationality` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `stream` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status_id` int NULL DEFAULT 1,
  `school_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`student_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 661 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, 'JANET', '', 'INKOOM', 'GHCU12040155', 'O6/08/1995', '', '0557363902', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (12, 'RICHLOVE', 'DAIKI', 'OSABUTEY', 'GHCU12040151', '4/05/1993', '', '0249360543', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (36, 'Maria', 'Naa norley', 'Barnor', 'ghcu12040129', '2/08/1996', '', '0552290991', '', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (42, 'SAMUEL', '', 'ADONGO', 'GHCU12040162', '09/12/1984', '', '0244480467', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (139, 'KESTER', 'OPPONG', 'MENSAH', 'GHCU12040108', '1983-03-09', '', '0243211790', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (240, 'PERFECT', '', 'AMPADU-ANKU', 'GHCU12040172', '', '', '0243632850', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (241, 'CHRISTIANA', '', 'AKOKA', 'GHCU12040185', '27/11/1982', '', '0548539127', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (242, 'EUNICE', '', 'ALIJA', 'GHCU12040188', '23/03/1984', '', '0243380984', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (243, 'AGOE', 'ADJORKOR', 'RUBY', 'GHCU120187', '14/07/1982', '', '0246156458', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (244, 'ASAABA', 'AYAMDOR', 'MARTIN', 'GHCU12040193', '2/03/1996', '', '0243511579', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (245, 'BARNABAS', 'KOFI', 'TETTEH', 'GHCU12040189', '09/10/1983', '', '0246754847', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (246, 'ASHIE', 'NII KOTEY', 'DAVID', 'GHCU12040182', '01/09/1993', '', '0546529616', 'Christian', '', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (247, 'DAVID', '', 'APPIAH', 'GHCU12040181', '21/08/1995', '', '0545891141', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (248, 'RAHAINA', '', 'ADAMS CHEFFA', 'GHCU12040183', '25/11/1992', '', '0542680879', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (249, 'DAVID', '', 'WINCOTT', 'GHCU12040195', '31/07/1981', '', '0244107565', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (250, 'DZORKPE', 'EDEM', 'FREEMAN', 'GHCU12040163', '07/03/1990', '', '0541816278', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (251, 'VIDA', 'SEYRAM', 'DZAKPATA', 'GHCU12040179', '23/09/1985', '', '0245524629', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (252, 'GADUGAH', '', 'VICTORIA', 'GHC', '07/08/1994', '', '0548971680', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (253, 'RUTH', '', 'ACKOM', 'GHCU12040157', '24/06/1990', '', '0241106725', 'Christian', 'Female', '2020/2021', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (254, 'JESSICA', '', 'NHAYO', 'GHCU12040109', '03/09/2001', '', '0239195378', 'Christian', 'Female', '2020/2021', '', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (255, 'JESSICA', 'AKPENE', 'NYAHO', 'GHCU12040109', '03/09/2001', '', '0239195378', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (256, 'BUAMI', 'AKPENE', 'BEAUTY', 'GHCU12040151', '1970-01-01', '', '0541768295', 'Christian', 'Female', '2020/2021', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (258, 'andrew', 'qyaue', 'quaye', 'GHCUc1234567890', '1970-01-01', 'andyquayegh@outlook.com', '233548263738', 'Christian', 'Male', '2020/2021', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (261, 'LOUIS', 'KWADWO', 'DJAN', 'GHCU12040180', '1970-01-01', '', '0246954932', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (262, 'AGNES', 'AFUA', 'MENSAH', 'GHCU12040047', '1970-01-01', '', '0244130562', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (263, 'SAMUEL', 'K', 'ADONGO', 'GHCU12040162', '1984-09-12', '', '0244480467', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (264, 'GLADYS', 'FAFALI', 'ATSINA', 'GHCU12040007', '1970-01-01', '', '0507080016', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (265, 'MILLICENT', 'NONE', 'DEY', 'GHCU12040005', '1970-01-01', '', '0546502640', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (266, 'DORINDA', 'JILL', 'ARTHUR', 'GHCU12040081', '1995-06-07', '', '0553673566', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (267, 'DANIEL', 'BOATENG', 'AGYAGYE', 'GHCU12040035', '1970-01-01', '', '0249431691', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (268, 'ADIJATU', 'ADIJATU', 'MOHAMMED', 'GHCU12040046', '1995-09-10', '', '0243774068', 'Islam', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (269, 'FAUSTINA', 'AKUA', 'DENTAH', 'GHCU12040039', '1970-01-01', '', '0246177568', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (270, 'HENRIETTA', 'YERENKYI', 'ATIWAA', 'GHCU12040083', '1970-01-01', '', '0540720446', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (271, 'BENITA', 'ELLEN', 'MINTAH', 'GHCU12040088', '1995-04-01', '', '0554551457', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (272, 'AARON', 'AARON', 'APPIAH', 'GHCU12030004', '1970-01-01', '', '0552583717', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (273, 'REJOICE', 'REJIOCE', 'AMENORNU', 'GHCU12040009', '1989-05-01', '', '0242685100', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (274, 'WASIA', 'WASIA', 'OSMAN', 'GHCU12040016', '1970-01-01', '', '0243368283', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (275, 'WILLIAM', 'WILLIAM', 'BANI', 'GHCU12040015', '1970-01-01', '', '0540955151', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (276, 'DORCAS', 'GYAMFUAH', 'DAMPRANE', 'GHCU12040056', '1987-09-10', '', '0543018454', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (277, 'FLORENCE', 'OBLITEY', 'OSABUTEY', 'GHCU12040090', '1981-01-04', '', '0242580934', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (278, 'DEBORAH', 'DEBORAH', 'ANDERSON', 'GHCU12040012', '1997-04-03', '', '0546817852', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (279, 'EMMANUEL', 'OTTO', 'OTTO', 'GHCU12040091', '1970-01-01', '', '024921768', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (280, 'EVELYN', 'OPOKUA', 'BOATENG', 'GHCU12040004', '1970-01-01', '', '0243175788', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (281, 'FAUSTINA', 'FAUSTINA', 'ESSILFIE', 'GHCU12040003', '1994-09-12', '', '0574882954', 'Christian', 'Female', '2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (282, 'OBED', 'KWAO', 'TEYE', 'GHCU12040040', '1988-12-02', '', '0541917303', 'Christian', 'Male', '2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (283, 'JULIUS', 'JEFF', 'QUAYE', 'GHCU12040022', '1970-01-01', '', '0207695876', 'Christian', 'Male', '2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (284, 'BRIGHT', 'K', 'TSIKO', 'GHCU12040001', '1970-01-01', '', '0245365891', 'Christian', 'Male', '2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (285, 'VINCENTIA', 'VINCENTIA', 'GBEDZE', 'GHCU12040050', '1970-01-01', '', '0240555351', 'Christian', 'Female', '2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (286, 'MARIAN', 'SAFOA', 'NKANSAH', 'GHCU12040049', '1982-12-02', '', '0243327140', 'Christian', 'Female', '2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (287, 'MABEL', 'EWUAH', 'DONKOR', 'GHCU12040048', '1980-03-05', '', '0269217898', 'Christian', 'Female', '2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (288, 'ANTHONY', 'NAAMWINMAALU', 'GYINOKANG', 'GHCU12040041', '1994-08-06', '', '0205433361', 'Others', 'Male', '2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (289, 'SANDRA', 'NIL', 'ADZOGBLE', 'GHCU30007', '1970-01-01', '', '0558002400', 'Christian', 'Female', '2021', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (290, 'KAREN', 'KATE', 'QUAINOO', 'CT1020006', '1970-01-01', '', '0277741342', 'Christian', 'Female', '2021', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (291, 'CELESTINA', 'NIL', 'OFOE', 'GHCU12030011', '1970-01-01', '', '057098475', 'Christian', 'Female', '2021', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (292, 'JOYCE', 'AYONGO', 'TEYE', 'GHCU12040113', '2021-03-03', '', '0246713441', 'Christian', 'Female', '2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (293, 'DORCAS', 'NAA MENA', 'ADDO', 'GHCU12040051', '1970-01-01', '', '0241980780', 'Christian', 'Female', '2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (294, 'JOYCE ', 'MENSAH', 'AFARI', 'GHCU120540008', '1978-02-08', '', '0244990209', 'Christian', 'Female', '2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (295, 'ANTHONY', 'KOFI', 'BRUCE', 'GHCU12040058', '1970-01-01', '', '0243717357', 'Christian', 'Male', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (296, 'MAVIS', 'AKOUR', 'MARTEY', 'GHCU12040077', '1992-09-01', '', '0245915341', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (297, 'ERIC', 'KELLY', 'JECHIE', 'GHCU12040092', '1970-01-01', '', '0244790366', 'Christian', 'Male', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (298, 'BERNARD', 'NIL', 'MENSAH', 'GHCU12040052', '1970-01-01', '', '0244230613', 'Christian', '', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (299, 'MARIA', 'NAA NORLEY', 'BARNOR', 'GHCU12040129', '1996-02-08', '', '0552290991', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (300, 'OWUSU', 'NIL', 'SHERIDEN', 'GHCU12030007', '1970-01-01', '', '0263989678', 'Christian', 'Female', '2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (301, 'JOHN', 'NIL', 'OPOKU', 'GHCU12030006', '1997-08-08', '', '0240729751', 'Christian', 'Male', '2020', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (302, 'JESSICA', 'ATSU', 'MENSAH', 'GHCU12010018', '1999-10-10', '', '0263429231', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (303, 'SENAM', 'ESI', 'ATSU', 'GHCU12010007', '1970-01-01', '', '0542008865', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (304, 'GIDEON', 'NIL', 'AMEDEKANYA', 'GHCU12040002', '1989-11-11', '', '02481338940', 'Christian', 'Male', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (305, 'COMFORT', 'NIL', 'AFARI', 'GHCU12040086', '1976-02-05', '', '0243784172', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (306, 'MUBARAK', 'SEINU', 'ADAM', 'GHCU12040089', '1974-05-07', '', '0243907819', 'Christian', 'Male', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (307, 'CLEMENT', 'NEWTON NTOW', 'AMOAH', 'GHCU12040079', '1991-01-05', '', '0540500088', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (308, 'ERIC', 'KOFI', 'KORANKYE', 'GHCU12040080', '1981-04-10', '', '0244411073', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (309, 'RITA', 'AKOMEA', 'ASEIDU', 'GHCU12040085', '1987-06-12', '', '0245871647', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (310, 'DIANA', 'NIL', 'OBUAH', 'GHCU12040006', '1970-01-01', '', '0547961138', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (311, 'DANIEL', 'NIL', 'ALAYI', 'GHCU12040010', '1970-01-01', '', '0248687844', 'Christian', 'Male', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (312, 'DIANA', 'BONSU', 'ADUSEI', 'GHCU12040013', '1970-01-01', '', '0544104018', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (313, 'AGNES', 'AGNES', 'ASANTE', 'GHCU12040014', '1970-01-01', '', '0245999196', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (314, 'MIUNIRATU', 'JUMAI', 'MAHAMOUD', 'GHCU12010016', '1970-01-01', '', '0540694578', 'Islam', 'Female', '2020', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (315, 'GODFRED', 'TAWIAH', 'SAAGUMAH', 'GHCU12030010', '1970-01-01', '', '0242079334', 'Christian', 'Male', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (316, 'PEARL', '', 'AFIDEMENYO', 'GHCU12010003', '1998-06-05', '', '0556709471', 'Christian', 'Female', '2020', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (317, 'PEARL', '', 'AFIDEMENYO', 'GHCU12010003', '1998-06-05', '', '0556709471', 'Christian', 'Female', '2020', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (318, 'GERTRUDE', 'AKUVI', 'NYAHO', 'GHCU12030003', '1970-01-01', '', '0506032149', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (319, 'OBED', 'KWAO', 'TEYE', 'GHCU12040040', '1988-12-02', '', '0541917303', 'Christian', 'Male', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (320, 'JENNIFER', 'LARNIE', 'AKPE', 'GHCU12030001', '1970-01-01', '', '0549198068', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (321, 'RANDY', '', 'PONGO', 'GHCU12030008', '1997-08-07', '', '0242885724', 'Christian', 'Male', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (322, 'VERA', '', 'AFRIFA', 'GHCU12030002', '1970-01-01', '', '0547861243', 'Christian', 'Female', '2020', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (323, 'ABIGAIL', 'ESSENEY', 'DZOKOTO', 'GHCU12030009', '1999-07-05', '', '0553380578', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (324, 'ELVIS', 'NII YEMOH', 'ANNANG', 'GHCU12010017', '2000-07-05', '', '0247285791', 'Christian', 'Male', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (325, 'NAOMI', 'YAA AMINA', 'KYEREMANTENG', 'GHCU12040054', '1995-05-05', '', '0547447719', 'Others', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (326, 'DANIEL', 'CUDJOE', 'ARYEE', 'GHCU12040053', '1970-01-01', '', '0244428526', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (327, 'SHABULON', '', 'NKRUMAH', 'GHCU12040055', '1970-01-01', '', '0246312699', 'Christian', 'Male', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (328, 'CATHERINE', '', 'AWUKU', 'GHCU12040148', '1970-01-01', '', '0244832243', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (329, 'DORCAS ', 'TENI ', 'ANGAABA', 'GHCU12040156', '1989-04-12', '', '0507299928', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (330, 'DAVID', 'AHWIRENG', 'DUODU', 'GHCU12040110', '1980-08-07', '', '0244892073', 'Christian', 'Male', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (331, 'EUNICE', 'YAA SEMEFA', 'KPOBI', 'GHCU12040114', '1970-01-01', '', '0544961381', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (332, 'SANDRA', '', 'SANDRA', 'GHCU12040165', '1970-01-01', '', '0205162158', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (333, 'JACOB', 'KOTEY', 'AMON', 'GHCU12040117', '1981-05-04', '', '0556679916', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (334, 'EMMANUEL', 'KWESI', 'TETTEH', 'GHCU12040120', '1970-01-01', '', '0246960871', 'Christian', 'Male', '2020', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (335, 'JESSICA', 'AKPENE', 'NYAHO', 'GHCU12040109', '2001-03-09', '', '0239195378', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (336, 'ADUTWUMWAA', '', 'SARAH', 'GHCU12040153', '1970-01-01', '', '0547055531', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (337, 'SANDRA', '', 'GOHOHO', 'GHCU12040176', '1970-01-01', '', '0545913593', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (338, 'GEORGE', 'KOFI', 'NKRUMAH', 'GHCU12040115', '1970-01-01', '', '0244862072', 'Christian', 'Male', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (339, 'MALATA', '', 'EBAN', 'GHCU12040158', '1970-01-01', '', '0552567200', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (340, 'MATILDA', '', 'DUA-ABOAGYE', 'GHCU12040034', '2002-10-04', '', '0556190952', 'Christian', 'Female', '2020', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (341, 'ESTHER', '', 'EGYAM', 'GHCU12040169', '1970-01-01', '', '0244077768', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (342, 'VIVIAN', 'AGYEIWAA', 'ASOMANING', 'GHCU12040128', '1970-01-01', '', '0261950362', 'Christian', '', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (343, 'FOSTER', 'OPPONG', 'ADARKWAH', 'GHCU12040078', '1981-01-07', '', '0244254172', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (344, 'LOVELACE', 'NAA', 'ARMAAH', 'GHCU12040038', '1970-01-01', '', '0241122969', 'Christian', 'Female', '2020', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (345, 'EMMA', '', 'ANSAH', 'GHCU12040168', '1970-01-01', '', '0248535324', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (346, 'GLORIA', '', 'GLORIA', 'GHCU12040164', '1970-01-01', '', '0542196630', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (347, 'CHRISTIANA', '', 'AKOKA', 'GHCU12040185', '1970-01-01', '', '0276338899', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (348, 'GLORIA', '', 'ACQUAH', 'SM10118016', '1994-11-11', '', '0542533184', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (349, 'PAYNE', '', 'ELSIE', 'GHCU12040123', '1970-01-01', '', '0554854950', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (350, 'LOUIS', 'KWADWO', 'DJAN', '0246954932', '1970-01-01', '', '0246954932', 'Christian', 'Male', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (351, 'MERCY', '', 'SAKYI', 'GHCU12040197', '1977-08-01', '', '0244866820', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (352, 'VICTORIA', '', 'AMPARBENG', 'GHCU12040112', '1970-01-01', '', '0209644719', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (353, 'JANET', '', 'TAKYI', 'GHCU12040167', '1996-04-07', '', '0543605219', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (354, 'LAWRENDA', '', 'KPEYIBOR', 'GHCU12040177', '1970-01-01', '', '0545114509', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (355, 'EUNICE', '', 'ACQUAH', 'GHCU120145', '1996-06-09', '', '0559329703', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (356, 'ROSEMOND', '', 'APPIAH', 'GHCU12040186', '1970-01-01', '', '0547726643', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (357, 'PATIENCE', 'ABENA', 'ODEI', 'GHCU12040170', '1993-09-03', '', '0272083000', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (358, 'AMEGAZO', '', 'LOVE', 'GHCU12040171', '1970-01-01', '', '0249952226', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (359, 'EUNICE', '', 'AFFUL', 'GHCU12040166', '1970-01-01', '', '0554474804', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (360, 'RUTH', '', 'ACKOM', 'GHCU12040157', '1970-01-01', '', '0241106725', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (361, 'MARTIN', '', 'NIMO', 'GHCU12040118', '1970-01-01', '', '0149362178', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (362, 'SOLOMON', 'LORD', 'AWUKU', 'GHCU12040057', '1970-01-01', '', '0243854040', 'Christian', 'Male', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (363, 'SOLOMON', '', 'OKPOTI', 'GHCU12040149', '1970-01-01', '', '0245400491', 'Christian', 'Male', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (364, 'OSABUTEY', 'DAIKI', 'RICHLOVE', 'GHCU12040151', '1993-04-05', '', '0249360543', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (365, 'VANESSA', 'NANA YAA', 'OKU-ANKOMAH', 'GHCU12040173', '1970-01-01', '', '0557028274', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (366, 'NORAH', '', 'ACQUAH', 'GHCU12040175', '1986-06-05', '', '02446642869', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (367, 'JOYCE ', '', 'NARTEY', 'SS10220019', '1970-01-01', '', '0246480734', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (368, 'BERNARD', '', 'FRIMPONG', 'GHCU12040143', '1986-07-07', '', '054228241', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (369, 'GRACE', 'ASABEA', 'DANKWAH', 'GHCU12040174', '1970-01-01', '', '0543809777', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (370, 'JULIET', '', 'OYIADZO', 'GHCU12040207', '1992-06-04', '', '0249116295', 'Christian', 'Female', '2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (371, 'ZIPPORAH', '', 'OBENG', 'GHCU12040204', '1970-01-01', '', '0247577747', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (372, 'GLORIA', '', 'FRIMPONG', 'GHCU12040206', '1970-01-01', '', '0242316922', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (373, 'DANIEL', '', 'APPIAH', 'GHCU12040029', '1970-01-01', '', '0240891165', 'Christian', 'Male', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (374, 'LETICIA', '', 'GADDY', 'GHCU12040019', '1970-01-01', '', '0546349241', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (375, 'EVELYN', 'YAYRA', 'ATSUTSE', 'GHCU12040033', '1995-10-06', '', '02482133946', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (376, 'EUNICE', 'AYELEY', 'ADDO', 'GHCU12040031', '1970-01-01', '', '02779090451', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (377, 'RITA', '', 'FREEMAN', 'GHCU12040021', '1990-12-04', '', '0247221290', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (378, 'PORTIA', 'MITCHELL', 'OTI', 'GCU12040199', '1970-01-01', '', '0244990380', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (379, 'DESMOND', 'NAGMEKUMAH', 'SONLAAR', 'GHCU12040103', '1970-01-01', '', '0240271880', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (380, 'CAROLINE', '', 'MENSAH', 'GHCU12040107', '1992-08-04', '', '0243789071', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (381, 'ELLEN', 'ABOAGYEWAA', 'TENKORANG', 'GHCU12040106', '1989-02-04', '', '0247548567', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (382, 'SLYVESTER', '', 'COKER', 'GHCU12040190', '2001-09-12', '', '0570618336', 'Christian', 'Male', '2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (383, 'LITIZIA', 'FRIMPONG', 'OWUSU', 'GHCU12040203', '1989-12-12', '', '0247745792', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (384, 'EUNICE', '', 'AGYAPOMAA-APPIAH', 'GHCU12040142', '1970-01-01', '', '0241717260', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (385, 'FLORENCE', '', 'ANKAMAH', 'GHCU12040028', '1995-10-07', '', '0550872009', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (386, 'MELOGY', '', 'AGBOTSE', 'GHCU12040198', '1992-10-07', '', '0246734266', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (387, '0WUSUWAAH', 'NANA', ' OSEI  ASAMOAH', 'GHCU12040018', '1995-06-10', '', '233273622996,233548629557', 'Christian', 'Female\"', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (388, 'LOIS', '', 'ADDAE', 'GHCU12040030', '1970-01-01', '', '0207393740', 'Christian', 'Female', '2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (389, 'REBECCA', 'AFUA', 'ADZIE', 'GHCU12040097', '1970-01-01', '', '0268086211', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (390, 'MARY', '', 'ADU TAWIAH', 'GHCU12040191', '1970-01-01', '', '0542867918', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (391, 'RUKAYA', 'UMAR', 'KUTA', 'GHCU12040202', '1986-02-11', '', '0244843279', 'Christian', 'Female', '2020/2021', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (392, 'RACHEAL', 'AFFUMWAA', 'APPIAH', 'GHCU12040105', '1985-07-05', '', '0240154622', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (393, 'LUCY', '', 'TSIQUAYE', 'GHCU12040024', '1993-03-01', '', '0241938731', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (394, 'MATTHEW', '', 'TEI OSABUTEY', 'GHCU12040027', '1970-01-01', '', '0247801075', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (395, 'CHARLES', '', 'BRAKO', 'GHCU12040026', '1970-01-01', '', '02455530019', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (396, 'GIFTY', '', 'OBENEWAH', 'GHCU12040017', '1970-01-01', '', '0265217786', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (397, 'JOANA', 'AYERKIE', 'AYERTEY', 'GHCU12040045', '1991-02-06', '', '0546643628', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (398, 'BERLINDA', 'BENEFA', 'PINKRAH', 'GHCU12040144', '1993-06-08', '', '0543436742', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (399, 'JACINTHA', 'QUEEDAN', 'FEDAH', 'GHCU12040102', '1970-01-01', '', '0501079493', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (400, 'THELMA', '', 'OSEI-TUTU', 'GHCU12010019', '1991-01-11', '', '0546537861', 'Christian', 'Female', '2020/2021', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (401, 'MARTHA', '', 'DENTAH', 'GHCU12040032', '1970-01-01', '', '0249660640', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (402, 'EUGENIA', '', 'DEGENU', 'GHCU12040200', '1992-06-12', '', '0249176048', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (403, 'AUSTINE', 'CHIGOZIE', 'MARK', 'GHCU12010004', '1970-01-01', '', '0594899956', 'Christian', 'Female', '2020/2021', 'Nigeria', 'Regular', 1, '3');
INSERT INTO `student` VALUES (404, 'ELLEN', '', 'OSEI-BOATENG', 'GHCU12040099', '1970-01-01', '', '0503951069', 'Christian', 'Female', '2020/2021', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (405, 'DZORGBENYUIE', 'AKPENE', 'DANSO', 'GHCU12040095', '1970-01-01', '', '0552120863', 'Christian', 'Female', '2020/2021', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (406, 'PRISCILLA', 'NAA-ANOAH', 'ASHILEY', 'GHCU12040101', '1970-01-01', '', '05434223585', 'Christian', 'Female', '2020/2021', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (407, 'ANITA', 'AKUVI', 'SOWU', 'GHCU12040093', '1970-01-01', '', '0552588853', 'Christian', 'Female', '2020/2021', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (408, 'EDMUND', '', 'DWAMENA-AKANTENG', 'GHCU12040025', '1988-07-10', '', '0548526707', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (409, 'PATRICK', 'NIMAKO', 'ASAMOAH', 'GHCU12040098', '1987-01-05', '', '0242804256', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (410, 'EVELYN', '', 'SPIO', 'GHCU12040023', '1987-09-07', '', '9/7/1987', 'Christian', 'Female', '2020/2021', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (411, 'CHRISTIANA', '', 'NKRUMAH', 'GHCU12040044', '2000-05-05', '', '0548928141', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (412, 'BERNICE', '', 'TWUMASI', 'GHCU12010002', '1970-01-01', '', '0556109546', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (413, 'EMMA', '', 'MUDOR', 'GHCU12040042', '1970-01-01', '', '0249834457', 'Christian', 'Female', '2020/2021', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (414, 'DESMOND', '', 'DOH', 'GHCU12010001', '1998-10-12', '', '0543292578', 'Christian', 'Female', '2020/2021', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (415, 'BISMARK', '', 'DUAH', 'GHCU120194', '1988-12-10', '', '0544499473', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (416, 'FREDA', 'ABENE', 'NKRUMAH', 'GHCU12040194', '1970-01-01', '', '0242734090', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (417, 'DEBORAH', '', 'CHAMBA', 'GHCU12010008', '2001-04-07', '', '0246807749', 'Christian', 'Female', '2020/2021', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (418, 'DAVID', 'OLUCHUKWU', 'MARK', 'GHCU12040096', '2003-11-08', '', '0594900024', 'Christian', 'Female', '2020/2021', 'Nigeria', 'Regular', 1, '3');
INSERT INTO `student` VALUES (419, 'PHILIP', 'OTSIBU', 'DARKOH', 'HD30220001', '1984-05-05', '', '0240651573', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (420, 'NII AMAAFIO', 'ANNAN', 'IBRAHIM', 'HD30220005', '1977-03-04', '', '0244557759', 'Islam', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (421, 'MAXWELL', 'KOFI', 'AGYEKUM', 'HD30220004', '1970-01-01', '', '0246382668', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (422, 'FREDERICK', 'ANDY', 'PARTEY', 'HD30220003', '1970-01-01', '', '0242819778', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (423, 'BONAPARTE', 'KOFI', 'SENAHIA', 'HD30220002', '1978-04-08', '', '0244203743', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (424, 'JAMES', 'NUNOO', 'AKO', 'GHCU12040147', '1970-01-01', '', '0243241404', 'Christian', 'Female', '2020/2021', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (425, 'ELORM', '', 'ADRAKI', 'GHCU12040094', '1970-01-01', '', '0548172593', 'Christian', 'Male', '2020/2021', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (426, 'SETH', '', 'OBIRI', 'GHCU12040125', '1970-01-01', '', '0558459045', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (427, 'EDWARD', 'ATTA', 'AWAYEVU', 'GHCU12040184', '1970-01-01', '', '0247233944', 'Christian', 'Male', '2020/2021', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (428, 'PETER', 'SELASI', 'DOYI', 'SS20220001', '1970-01-01', '', '0555331974', 'Christian', 'Female', '2020/2021', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (429, 'NATHALIA', 'ENYONAM', 'AMU', 'SM10119008', '1970-01-01', '', '0560504549', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (430, 'GIFTY', 'AKYE', 'ATUIMAH', 'SM90219015', '1970-01-01', '', '0541663438', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (431, 'SHADRACK', 'SM10219018', 'OHENE', 'SM10219018', '1970-01-01', '', '0553782468', 'Christian', 'Male', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (432, 'BERLINDA', '', 'AMADI', 'SM10219016', '1983-10-08', '', '0243486957', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (433, 'RICHARDSON', '', 'CLIFFORD', 'SM50219002', '1970-01-01', '', '0245175753', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (434, 'CYNTHIA', '', 'AKANPIRIGE', 'SM10219020', '1992-06-10', '', '0245501231', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (435, 'PATIENCE', 'ENTSIE', 'BENTUM', 'SM10219010', '1970-01-01', '', '0545159500', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (436, 'GRACE', '', 'NTSIFUL', 'SM10219026', '1989-06-10', '', '0555855756', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (437, 'ESTHER', '', 'SEGBEDZI', 'SM10119009', '1970-01-01', '', '0547238539', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (438, 'SALIFU', '', 'MAMUNATU', 'SM90219010', '1970-01-01', '', '0241670633', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (439, 'PATRICIA', '', 'AFRAKOMA', 'SM10219025', '1970-01-01', '', '0243366458', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (440, 'RITA', '', 'APPIAH', 'SM10219004', '1970-01-01', '', '0247164640', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (441, 'VIOLA', 'LAMISI', 'ZONG', 'SM90219002', '1970-01-01', '', '0206713811', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (442, 'JOSEPHINE', '', 'NELSON', 'SM90219001', '1979-05-11', '', '0540548953', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (443, 'JONES', '', 'VORDZOGBE', 'SM50219003', '1970-01-01', '', '0240677073', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (444, 'COLLINS', 'JACKSON', 'FOSU', 'SM10219005', '1970-01-01', '', '0243452161', 'Christian', 'Male', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (445, 'MAGDALENE', '', 'GLOVER', 'SM10219001', '1970-01-01', '', '0242256323', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (446, 'FELICIA', 'MANNAH', 'AKPOBI', 'SM30219001', '1970-01-01', '', '0246562068', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (447, 'CATHERINE', 'GYAMFUA', 'AMPONSAH', 'SM10119005', '1970-01-01', '', '0545563814', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (448, 'SALOME', '', 'ESHUN-ASANTE', 'SM10219019', '1969-09-12', '', '0243259442', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (449, 'FRANCISCA', '', 'ASAMOAH', 'SM10219027', '1987-05-05', '', '0245707057', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (450, 'SELASE', '', 'ALPHA', 'HD50119002', '1970-01-01', '', '0245166194', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (451, 'JUSTICE', '', 'OBENG', 'HD50219002', '2001-03-10', '', '0576787121', 'Christian', 'Male', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (452, 'FRANCISCA', 'AMA', 'SEMAVOR', 'HD40219001', '1997-04-01', '', '0503502841', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (453, 'RICHARD', '', 'TETTEH - FIO', 'HD30119003', '1998-10-09', '', '0557695289', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (454, 'FREDA', 'ENYONAM', 'TEKPOR', 'SM10119003', '1993-11-05', '', '0573769767', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (455, 'CHRISTOPHER', 'ELINAM', 'FIAWORNU', 'SM10219002', '1970-01-01', '', '0202532422', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (456, 'PEARL', 'ETOR', 'ABROAKWA', 'SM10219007', '1970-01-01', '', '0240263303', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (457, 'ANGELINA', '', 'KLU', 'SM10219012', '1970-01-01', '', '0245785504', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (458, 'FRANCIS', '', 'NARH', 'SM50219001', '1987-02-09', '', '0546970589', 'Christian', 'Male', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (459, 'EMMANUEL', '', 'AYITI', 'SM30219003', '1995-11-04', '', '0546163977', 'Christian', 'Male', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (460, 'GRACE', '', 'MACCARTHY', 'SM10119007', '1970-01-01', '', '0245183080', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (461, 'ARNOID', 'KOFI', 'ANNAN', 'SM30219005', '1970-01-01', '', '0244744009', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (462, 'DORIS', '', 'MENSAH', 'SM10219022', '1970-01-01', '', '0558715975', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (463, 'CHRISTABEL', '', 'ADATSI', 'SM10219017', '1970-01-01', '', '0247024545', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (464, 'SAVERA', 'SERWAH', 'BONSIE', 'HD30219001', '1970-01-01', '', '0207474426', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (465, 'MARIAN', '', 'ANINKORA', 'SM90219005', '1976-06-12', '', '0244560593', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (466, 'BERNICE', 'KUUTERANA', 'DIBAAR', 'SM10218056', '1992-06-08', '', '0244076003', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (467, 'JOSEPH', 'EBO ABOAGYE', 'ARTHUR', 'SM10219015', '1992-08-12', '', '0274442082', 'Christian', 'Male', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (468, 'AYISHATU', '', 'NASIRU', 'SM90219014', '1983-02-12', '', '0243434397', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (469, 'ELIZABETH', '', 'AMOAH', 'SM90219007', '1970-01-01', '', '0245945448', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (470, 'HARRISON', '', 'NYARKO', 'SM30219006', '1978-04-11', '', '0244749732', 'Christian', 'Male', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (471, 'ALBERTA', 'NAADU', 'LAWSON', 'SM10119012', '1970-01-01', '', '0546624223', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (472, 'JOANA', 'OFORIWAA', 'OWARE', 'SM50219004', '1987-02-09', '', '0276113127', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (473, 'PEACE', '', 'DAUTEY', 'SM10219009', '1970-01-01', '', '0547094705', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (474, 'MABEL', '', 'LAMPTEY', 'SM10218050', '1984-11-02', '', '0246921308', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (475, 'CAROLINE', '', 'ASARE', 'SM30220002', '1970-01-01', '', '0248483831', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (476, 'ZEPHERINE', '', 'DAGADU', 'SM20219001', '1970-01-01', '', '0547333531', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (477, 'ROSE', 'ABENA', 'GYIMAH', 'SM10219023', '1988-07-07', '', '0244913305', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (478, 'ABIGAIL', 'FAFA', 'SOSOO', 'SM10119002', '1970-01-01', '', '0548158355', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (479, 'SOPHIA', 'ARABA', 'BAIDOO', 'SM90119001', '1970-01-01', '', '0543442030', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (480, 'CYNTHIA', 'ARIEL', 'KASSUAH', 'SM10119004', '1970-01-01', '', '0241486564', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (481, 'FREDERICK', '', 'ANOBAAH-SAKYI', 'SM10219021', '1987-11-03', '', '0248098786', 'Christian', 'Male', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (482, 'COLLINS', '', 'GAKPO', 'SM10219011', '1970-01-01', '', '0246703544', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (483, 'LINDA', '', 'NABILLA', 'SM90119002', '1970-01-01', '', '0559161832', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (484, 'ESTHER', '', 'ANSAH', 'SM10220011', '1970-01-01', '', '0244278148', 'Christian', 'Female', '2020/2021', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (485, 'STEPHEN', 'AYETEY', 'KORANTENG', 'SM30219004', '1979-09-12', '', '0245972824', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (486, 'LOVE', '', 'ANAMOH', '0244093660', '1970-01-01', '', '0244093660', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (487, 'GIFTY', '', 'KWETEY', 'SM90219009', '1974-09-06', '', '0242555064', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (488, 'MARIAMA', '', 'IBRAHIM', 'SM90219013', '1970-01-01', '', '0543138448', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (489, 'LINDA', '', 'AGBOH', 'SM10119011', '1970-01-01', '', '0244558058', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (490, 'THERESA', '', 'BADU-NKANSAH', 'SM10219014', '1991-01-12', '', '0541173440', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (491, 'PRISCILLA', '', 'YIRENKYI', 'CT10119009', '1970-01-01', '', '0547564619', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (492, 'ESTHER', '', 'ESTHER', 'CT90119002', '2000-04-08', '', '0550920971', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (493, 'PRISCILLA', '', 'OWUSU', 'HD30118002', '1970-01-01', '', '0554471246', 'Christian', 'Female', '2018/2019', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (494, 'EMMANUELLA', '', 'ANKU', 'SS20118006', '1970-01-01', '', '0268833388', 'Christian', 'Female', '2018/2019', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (495, 'PETER', 'BONGREAT', 'MENSAH', 'SS20119001', '1970-01-01', '', '0549040026', 'Christian', 'Male', '2018/2019', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (496, 'FRANCISCA', '', 'BOAHYEWAA', 'HD30219004', '1984-11-12', '', '0246105403', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (497, 'FREDRICK', 'DEBRAH', 'AMOAKO-ATTA', 'HD30219005', '1979-06-05', '', '0547286206', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (498, 'RICHARD ', '', 'SARKODIE', 'SS20119004', '1970-01-01', '', '05018223709', 'Christian', 'Male', '2019/2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (499, 'NATHAN', 'NYANYO', 'ASIAH', 'SS20119002', '1970-01-01', '', '0242881898', 'Christian', 'Male', '2019/2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (500, 'DIANA', 'NAA OYOO', 'QUARTEY', 'SS10119005', '1970-01-01', '', '0559049943', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (501, 'CHRISTIANA', 'ASANTEWAA', 'ADDO', 'SS10119003', '1996-10-12', '', '0559503502', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (502, 'FLORENCE', '', 'BORTEY', 'SS10119010', '1995-10-06', '', '0552139173', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (503, 'JOY', '', 'WILLIAMS', 'SS10119016', '2002-02-04', '', '057578678', 'Christian', 'Female', '2019/2020', 'Benin', 'Regular', 1, '3');
INSERT INTO `student` VALUES (504, 'EDEM', 'KOMLA', 'AYAWLI', 'SS10119006', '2002-06-08', '', '0204463407', 'Christian', 'Male', '2019/2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (505, 'ISAAC', '', 'BOAKYE', ' SS10119007                                ', '1999-05-08', '', '0593281218', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (506, 'PERPETUAL', 'AKUSHIKA', 'NUTAKOR', 'SS109014', '1999-04-11', '', '0544943082', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (507, 'FAITH', 'ABENA', 'TATTEH', 'SS10119011', '1970-01-01', '', '0245287427', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (508, 'ISSABELLA', 'BUERKIE', 'ABANAM', 'S10119009', '1999-03-12', '', '0272698323', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (509, 'CYNTHIA', 'EKWUTOSI', 'AGADA', 'SS10119017', '1970-01-01', '', '0506466473', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (510, 'VICTORIA', 'HAPPY', 'ATTOR', 'SS10119018', '1985-01-01', '', '0244115495', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (511, 'MILLICENT', 'AKOMA', 'ANSAH', 'SS10119001', '2001-07-04', '', '056814110', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (512, 'EDWARD', '', 'GYEKETEY', 'HD30219003', '1970-01-01', '', '0241232535', 'Christian', 'Male', '2019/2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (513, 'FRED', '', 'BENTIL', 'HD30219001', '1981-12-04', '', '0244218290', 'Christian', 'Male', '2019/2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (514, 'EDWARD', 'MENSAH', 'MACMILLIAM', 'SS20119003', '1970-01-01', '', '05442207209', 'Christian', 'Male', '2019/2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (515, 'VIDA', 'OFORIWA', 'TANDOH', 'SS10219004', '1986-04-04', '', '0244732506', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (516, 'DEBORAH', 'SAAH', 'APRONTI', 'SS10219001', '1970-01-01', '', '0206478088', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (517, 'MARY', 'ASOMPTA', 'BESSING', 'SS10219005', '1992-06-11', '', '0242557163', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (518, 'SAWUDA', '', 'IDDRISU', 'SS10219007', '1970-01-01', '', '0240497811', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (519, 'PATIENCE', 'AMA', 'AKAGLAH', 'SS10119008', '1954-12-06', '', '0244452073', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (520, 'DARKO', 'AKOSUA', 'OTIWAA', 'SS10219003', '1970-01-01', '', '0543076690', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (521, 'AGNES', 'YAA', 'TUTUWAA', 'SS10219006', '1978-01-05', '', '0244138481', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (522, 'PATRICIA', 'YAYRA', 'GAWU', 'SS10119019', '1970-01-01', '', '0246199157', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (523, 'CALISTA', 'NOI- ANKPA', 'NUERKETI', 'SS10119015', '1998-02-12', '', '0550243670', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (524, 'SAMPAM', 'SARFOA', 'AGYEMAN', 'SS10119013', '2001-02-05', '', '0274020026', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (525, 'JOHN', '', 'AYIDAH', 'HD30219006', '1970-01-01', '', '0542294332', 'Christian', 'Male', '2019/2020', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (526, 'MARIAMA', '', 'NARTEY', 'SS10119004', '1998-08-18', '', '0242279312', 'Christian', 'Female', '2019/2020', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (527, 'LETICIA', 'SAKYIBEA', 'AGYIRI', 'SM10218018', '1989-12-12', '', '0541041135', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (528, 'EVELYN', '', 'OSEI', 'SM101130802', '1970-01-01', '', '0208313337', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (529, 'ISAAC', 'BOAKYE', 'ACHEAMPONG', 'SM10218003', '1970-01-01', '', '0274313586', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (530, 'GIFTY', 'ADU', 'LORETTA', 'SM10218008', '1970-01-01', '', '0249417826', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (531, 'JOSEPH', 'AKLI', 'TETTEH', 'SM90218009', '1979-01-07', '', '0276239433', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (532, 'NANCY', '', 'BOATEMAA', 'SM10118018', '1970-01-01', '', '0544847482', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (533, 'KATE', 'FEDELIA', 'MINTAH', 'SM10218032', '1970-01-01', '', '0206231697', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (534, 'ELLEN-JOY', 'ADJOA MANSA', 'VANDEN-BOSSCHE', 'SM50119001', '1970-01-01', '', '0277247185', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (535, 'VIVIAN', 'ADJEKAI', 'SOWAH', 'SM20218002', '1986-04-05', '', '0555298172', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (536, 'VIDA', 'TORGBOR', 'OBOSHIE', 'SM20218017', '1978-11-06', '', '0244564325', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (537, 'FLORENCE', '', 'GYIMAH', 'SM10218002', '1988-08-05', '', '0244288313', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (538, 'GLORIA', 'EFUA', 'ALLOTEY', 'SM10117012', '1970-01-01', '', '0540967113', 'Christian', 'Female', '2018/2019', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (539, 'THEOPHILUS', 'KOBINAH', 'ESHUN', 'SM10218036', '1970-01-01', '', '0247506070', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (540, 'PORTIA', '', 'AMOAH', 'SM20218007', '1970-01-01', '', '0241553005', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (541, 'REBECCA', '', 'AHIABLE', 'SM50118002', '1970-01-01', '', '0240113525', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (542, 'IRENE', '', 'ODUM', 'SM20218001', '1985-11-05', '', '0558094144', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (543, 'MOSES', '', 'AKWEI', 'SM50218012', '1970-01-01', '', '0508025338', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (544, 'REJOICE', '', 'AMU', 'SM10118009', '1970-01-01', '', '0246679096', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (545, 'GIFTY', '', 'BONSI', 'SM70117001', '1988-06-03', '', '0249478850', 'Christian', '', '2017', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (546, 'ALICE', '', 'ADDO', 'SM20218005', '1991-01-04', '', '0248994574', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (547, 'CLEMENT', '', 'SAH KATAKHIE', 'SM20218011', '1970-01-01', '', '0246847134', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (548, 'LILLIAN', 'HOLALI', 'SEDDOH', 'SM70118001', '1970-01-01', '', '0547438590', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (549, 'BERLINDA', '', 'ADADE', 'SM20218014', '1991-04-02', '', '0544289589', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (550, 'CELESTINE', '', 'SAM', 'SM10118001', '1970-01-01', '', '0541795211', 'Christian', 'Female', '2018/2019', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (551, 'THEODORA', 'KORKOR', 'BANA', 'SM10218010', '1970-01-01', '', '0509332459', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (552, 'GEORGE', 'OLIVER', 'ANANE', 'SM30218006', '1970-01-01', '', '0242601772', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (553, 'HABIB', '', 'QUARCOO', 'SM30218005', '1970-01-01', '', '0277668311', 'Islam', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (554, 'EMMANUEL', '', 'YANKYERA', 'SM10218044', '1970-01-01', '', '0545750382', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (555, 'CORNELIUS', 'EBO', 'BOISON', 'SM70118004', '1970-01-01', '', '0246894564', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (556, 'PRISCILLA', '', 'ARCHAR', 'SM10218025', '1970-01-01', '', '0546629189', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (557, 'DOREEN', '', 'ATTAGLO', 'SM90219004', '1996-03-08', '', '0503000149', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (558, 'ENOCH', 'ASIEDU', 'OPPONG', 'SM30218004', '1970-01-01', '', '0278689096', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (559, 'FELICIA', 'ADOBEA', 'ANNOR', 'SM10218005', '1986-01-04', '', '0543615504', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (560, 'EMMANUEL', '', 'DZIMALE', 'SM10118014', '1989-05-05', '', '0248218211', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (561, 'JOSHUA', '', 'AMOACHAR', 'HD50219001', '1970-01-01', '', '0554995361', 'Christian', 'Male', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (562, 'SHIPHRAH', 'BOTWE', 'BOATEMAA', 'HD50118003', '1999-03-01', '', '0278512204', 'Christian', 'Female', '2018', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (563, 'EMIL', 'AMA', 'LOUISA', 'HD50118004', '1970-01-01', '', '0202425802', 'Christian', 'Female', '2018/2019', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (564, 'REGINA', 'BONSU', 'SARFO', 'HD50118001', '1970-01-01', '', '0541403138', 'Christian', 'Female', '2018/2019', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (565, 'MAXWELL', 'JUNIOR', 'AKPOLOR', 'HD40218002', '1970-01-01', '', '0240066625', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (566, 'BERNICE', '', 'ADOMAA', 'HD30118001', '1997-07-03', '', '0241911051', 'Christian', 'Female', '2018/2019', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (567, 'MOHAMMED', '', 'ABDUL RAHIM', 'HD30118003', '1997-11-07', '', '02400655790', 'Christian', 'Male', '2018/2019', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (568, 'PORTIA', '', 'AMOAH', 'SM20218007', '1970-01-01', '', '0241553005', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (569, 'GLORIA', 'EFUA', 'ALLOTEY', 'SM10117012', '1970-01-01', '', '0540967113', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (570, 'THEOPHILUS', 'KOBINAH', 'ESHUN', 'SM10218036', '1970-01-01', '', '0247506070', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (571, 'FLORENCE', '', 'GYIMAH', 'SM10218002', '1988-08-05', '', '0244288313', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (572, 'VIDA', 'OBOSHIE', 'TORGBOR', 'SM20218017', '1978-11-07', '', '0244564325', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (573, 'VIVIAN', 'ADJEKAI', 'SOWAH', 'SM20218002', '1970-01-01', '', '0555298172', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (574, 'JACOB', 'YURI', 'AWUSANYA', 'HD30119002', '1970-01-01', '', '0246358606', 'Christian', 'Male', '2018/2019', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (575, 'AKUA', 'MAAME', 'OWUSU', 'HD30118004', '1997-05-03', '', '0248172314', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (576, 'DIANA', 'ABBEY', 'NORTEY', 'SM10118005', '1970-01-01', '', '0241152333', 'Christian', 'Female', '2018/2019', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (577, 'EVA', 'OBIA', 'OMARI', 'SM10218001', '1970-01-01', '', '0551551175/0200133574', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (578, 'JOHN', 'ALELEM', 'ANALONG-YA ', 'HD40218001', '1995-06-06', '', '0546222540', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (579, 'SHERRY', 'NYARKOAH', 'OFORI', 'HN20117001', '1970-01-01', '', '0546494706', 'Christian', '', '2018/2019', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (580, 'SULEMANA', 'ABDUL', 'SINFOR', 'SM10218002', '1990-01-12', '', '0245365280', 'Islam', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (581, 'RUTH', 'EDEM', 'AGYEMAN', 'SM50118003', '1970-01-01', '', '0545939284', 'Christian', 'Female', '2018/2019', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (582, 'EMMANUEL', 'OWUSU', 'QUANSAH', 'SM50118001', '1970-01-01', '', '0543858664', 'Christian', 'Male', '2018/2019', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (583, 'MABEL', '', 'OBENEWAA', 'SM10218030', '1970-01-01', '', '0545785644', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (584, 'SOLOMON ', 'NAGEH', 'ADJARTEY', 'SM10218015', '1970-01-01', '', '0246306523', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (585, 'REJOICE ', '', 'BAKIRIGA', 'SM10218051', '1986-10-09', '', '0242297739', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (586, 'RHODA', 'AYIMAA', 'DARKWA', 'SM10118015', '1970-01-01', '', '0245521005', 'Christian', 'Female', '2018/2019', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (587, 'SAMPSON', '', 'APPIAH', 'SM30218003', '1970-01-01', '', '0546675067', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (588, 'FRANCISCA', 'GASIKAH', 'AVAGAH', 'SM10218027', '1993-05-03', '', '0576854091', 'Christian', 'Female', '2018/2019', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (589, 'FORGIVE', '', 'APEDO', 'SM10118007', '1970-01-01', '', '0246620499', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (590, 'SOPHIA', '', 'TETTEH', 'SM20118003', '1970-01-01', '', '0548996931', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (591, 'WILHELMINA', 'YAO AMOAH', 'AGYRAH', 'SM10218033', '1993-11-06', '', '0245014522', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (592, 'PAMILA', '', 'ARYEE', 'SM10218052', '1988-10-03', '', '0507289963', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (593, 'CHARITY', '', 'AGBOLO', 'SM10118004', '1993-10-05', '', '0247644306', 'Christian', 'Female', '2018/2019', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (594, 'MABEL', 'TSOTSOO', 'BOADU', 'SM70218001', '1970-01-01', '', '0208336631', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (595, 'JEMIMA', 'SESIME', 'KUWORNU', 'SM10218023', '1970-01-01', '', '020892625', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (596, 'VICTORIA', 'ASIWOME', 'BLASU', 'SM20119001', '1970-01-01', '', '0264450441', 'Christian', 'Female', '2019/2020', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (597, 'SAMUEL', 'OFORI', 'ADJEI', 'SM30218008', '1996-01-08', '', '0246136561', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (598, 'PHILIP', '', 'ASANTE', 'SM20218008', '1970-01-01', '', '0242040633', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (599, 'EDWARD', '', 'TEKPOR', 'SM70218002', '1970-01-01', '', '0246617061', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (600, 'BISMARK', '', 'OWUSU', 'SM20118001', '1970-01-01', '', '0542713867', 'Christian', 'Male', '2018/2019', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (601, 'ALBERT', 'ATTA', 'ASUBONTENG', 'SM10218046', '1970-01-01', '', '0240507942', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (602, 'STEPHEN', '', 'MENSAH', 'SM5017001', '1970-01-01', '', '0541880467', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (603, 'LYDIA', '', 'NKETIA', 'SM20118005', '1993-12-09', '', '0541637776', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (604, 'JOSELYN', '', 'QUAYE', 'SM20218013', '1970-01-01', '', '0548680834', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (605, 'SHIRLEY', 'MALO-NARTEY', 'SOWAH', 'SM10218006', '1982-03-01', '', '0244819163', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (606, 'JAMES', '', 'TETTEH', 'SM20218015', '1970-01-01', '', '0240345176', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (607, 'BLESS', 'YAYRA', 'AKUDZI', 'SM50218001', '1970-01-01', '', '0245575281', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (608, 'EUGENIA', 'NYARKO', 'ADJEI', 'SM10218004', '1970-01-01', '', '0244905956', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (609, 'NATHANIEL', '', 'ODZI', 'SM30217004', '1970-01-01', '', '0245493681', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (610, 'FRANCIS', 'KWEKU', 'AMISSAH', 'SM70218002', '1988-10-08', '', '0248608947', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (611, 'MARY', '', 'OSEI', 'SM10218046', '1980-03-05', '', '0245088538', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (612, 'PAULINA', 'DORNUKIE', 'KWAMI', 'SM10218011', '1970-01-01', '', '0247600618', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (613, 'HENRY', 'TETTEH', 'DJIMATEY', 'SM30218007', '1970-01-01', '', '0243637770', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (614, 'JUSTICE', '0TOO', 'BAMFORD', 'SM10218034', '1970-01-01', '', '0543755077', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (615, 'ABIGAIL', '', 'AKUETEH', 'SM10118010', '1990-04-04', '', '0505817979', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (616, 'DORCAS', 'AKOTO', 'ANDERSON', 'SM10118002', '1970-01-01', '', '0208598222', 'Christian', 'Female', '2018/2019', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (617, 'VIDA', '', 'ASANTE', 'SM10218054', '1991-01-10', '', '0242240798', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (618, 'ATSEKU', '', 'NANCY', 'SM30118005', '1970-01-01', '', '0556435559', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (619, 'HAPPY', 'YAA', 'ISAMAH', 'SM10218013', '1989-11-11', '', '0541830137', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (620, 'JOSEPH', 'REHOBOTH', 'KWAMENA', 'SM10219006', '1981-07-09', '', '0242022424', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (621, 'MAVIS', 'VERA', 'WORAE', 'SM90118003', '1970-01-01', '', '0245026168', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (622, 'COMFORT', 'NAA ADJELEY', 'ANNANG', 'SM10218037', '1970-01-01', '', '0242909539', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (623, 'BEATRICE', '', 'KUDAVOR', 'SM10118013', '1988-03-12', '', '0242965935', 'Christian', 'Female', '2018/2019', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (624, 'DIANA', '', 'ESHUN', 'SM10218049', '1970-01-01', '', '0265942426', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (625, 'ROSEMARY', '', 'BELLO', 'SM20218003', '1996-01-24', '', '00548353477', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (626, 'LUIGIA', 'HANNAH', 'BLANKSON', 'SM10218020', '1970-01-01', '', '0543148466', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (627, 'PEACE', '', 'KLU', 'SM10218045', '1970-01-01', '', '0550292236', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (628, 'SHAMSU', '', 'ABASS', 'SM30218001', '1970-01-01', '', '0244160467', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (629, 'PATIENCE', 'SERWAA', 'OKRAH', 'SM10218038', '1970-01-01', '', '0208630660', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (630, 'FAUSTINA', '', 'MENSAH', 'SM20218012', '1970-01-01', '', '0242832386', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (631, 'SAMUEL', 'KOFI', 'LARBI', 'SM20218016', '1990-04-05', '', '0246292901', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (632, 'RAYMOND', '', 'EKPEDZOR', 'SM50218004', '1984-04-10', '', '0241975192', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (633, 'SOLOMON', 'OKORO', 'GHUKWUDI', 'SM20218006', '1970-01-01', '', '0544562455', 'Christian', 'Male', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (634, 'LINDA', '', 'AGYAPONG', 'SM10118006', '1970-01-01', '', '0243980524', 'Christian', 'Female', '2018/2019', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (640, 'Elizabeth', '', 'Agbanyo', 'GHCU2212029536', '1989-07-10', '', '0249402403', 'Christian', 'Female', '2021', 'Ghana', 'Weekend', 1, '2');
INSERT INTO `student` VALUES (641, 'Bismark', '', 'Mills', 'GHCU2212021242', '2021-06-03', 'mlls1995@gmail.com', '0545382372', 'Christian', 'Male', '2021', 'Ghana', 'Weekend', 1, '2');
INSERT INTO `student` VALUES (642, 'George', '', 'Kwakye', 'GHCU2212720205', '1970-01-01', 'georgekwakye1507@gmail.com', '0545427172', 'Christian', 'Male', '2021', 'Ghana', 'Weekend', 1, '2');
INSERT INTO `student` VALUES (643, 'Gabriel', 'Nyaaba', 'Aduko', 'GHCU2212225304', '1995-02-05', 'gabrieladuko@gmail.com', '0553360880', 'Christian', 'Female', '2021', 'Ghana', 'Weekend', 1, '2');
INSERT INTO `student` VALUES (644, 'Timothy ', '', 'Lansah', 'GHCU2212028996', '1981-06-08', '', '0245377489', 'Christian', 'Male', '2021', 'Ghana', 'Weekend', 1, '2');
INSERT INTO `student` VALUES (645, 'Sophia', '', 'Laate', 'GHCU2212724960', '1970-01-01', 'kollasco@gmail.com', '0244283586', 'Christian', 'Female', '2021', 'Ghana', 'Weekend', 1, '2');
INSERT INTO `student` VALUES (646, 'Philip', 'Nii Bortey', 'Borketey', 'GHCU2211927915', '1990-01-05', 'inshirab@gmail.com', '0245607001', 'Christian', 'Male', '2021', 'Ghana', 'Weekend', 1, '2');
INSERT INTO `student` VALUES (647, 'David', 'Theophilus', 'Beble', 'GHCU2212720232', '1975-09-02', 'davidbeble@gmail.com', '0245417129', 'Christian', 'Male', '2021', 'Ghana', 'Weekend', 1, '2');
INSERT INTO `student` VALUES (649, 'Jen', '', 'Saligah', 'GHCU1213121212211', '1970-01-01', '', '0242109446', 'Christian', 'Female', '', 'Ghana', 'Regular', 1, '1');
INSERT INTO `student` VALUES (651, 'BELLA', 'MAWUSI', 'AWUDI', '22142023', '1970-01-01', '', '0242175050', 'Christian', 'Female', '2021/2022', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (652, 'ANNA', '', 'SACKEY', '22142002', '1970-01-01', '', '0553424421', 'Christian', 'Female', '2021/2022', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (653, 'MARY', '', 'TITIATI', '42142009', '1970-01-01', '', '0246278408', 'Christian', 'Female', '2021/2022', 'Ghana', 'Weekend', 1, '3');
INSERT INTO `student` VALUES (654, 'PRUDENCE', '', 'GAWUGA', '22142003', '1983-02-10', '', '0249858694', 'Christian', 'Female', '2021/2022', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (655, 'VIDA', 'NARKIE', 'NARTEY', '22142027', '1970-01-01', '', '0246103918', 'Christian', 'Female', '2021/2022', 'Ghana', 'Weekend', 1, '1');
INSERT INTO `student` VALUES (656, 'Emrys', '', 'Gyanfi', '1', '1970-01-01', '', '0242109446', 'Christian', 'Male', '', 'Ghana', 'Regular', 1, '3');
INSERT INTO `student` VALUES (657, '11', '11', '11', '11', '11', '11', '11', '11', '11', '11', '11', '11', 1, '11');
INSERT INTO `student` VALUES (658, 'ss', 'sss', 'ss', 'sss', '2022-05-13', 'sss@sss.com', 'ssss', 'sss', 'Male', 'ss', 'sss', 'Regular', 1, 'STM');
INSERT INTO `student` VALUES (659, 'ss', 'sss', 'ss', 'sss', '2022-05-13', 'sss@sss.com', 'ssss', 'sss', 'Male', 'ss', 'sss', 'Regular', 1, 'STM');
INSERT INTO `student` VALUES (660, 'Andrew', 'Quaye', 'sdfs', 'sdfsdf', '2022-05-13', 'sdfsdf@sfsdf.com', 'sdfsdf', 'sdfsd', 'Female\"\"', 'sfssfdf', 'sdfs', 'Weekend', 1, 'SPS');

SET FOREIGN_KEY_CHECKS = 1;
