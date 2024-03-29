/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3307
 Source Schema         : vuets

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 06/02/2023 14:36:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clockdepall
-- ----------------------------
DROP TABLE IF EXISTS `clockdepall`;
CREATE TABLE `clockdepall`  (
  `clockDay` date NOT NULL,
  `dno` int(0) NOT NULL,
  `allClockMorning` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false',
  `allClockAfter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clockdepall
-- ----------------------------
INSERT INTO `clockdepall` VALUES ('2022-12-14', 39, 'true', 'true');
INSERT INTO `clockdepall` VALUES ('2022-12-13', 39, 'true', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-19', 1, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-19', 16, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-20', 1, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-20', 2, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-21', 1, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-21', 2, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-21', 39, 'true', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-21', 16, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-22', 16, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-22', 1, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-22', 2, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-22', 39, 'true', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-23', 1, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-23', 16, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-23', 2, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-23', 39, 'true', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-24', 1, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-24', 16, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-24', 2, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-24', 39, 'true', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-26', 1, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-26', 16, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-26', 2, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-26', 39, 'true', 'true');
INSERT INTO `clockdepall` VALUES ('2022-12-27', 1, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-27', 16, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-27', 2, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-27', 39, 'true', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-28', 1, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-28', 2, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-28', 39, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2022-12-28', 16, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-01-03', 1, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-01-03', 2, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-01-03', 39, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-01-03', 16, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-01-06', 1, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-01-06', 16, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-01-07', 1, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-01-07', 16, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-01-11', 1, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-01-11', 16, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-01-11', 2, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-01-11', 39, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-01-13', 1, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-01-13', 16, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-01-17', 1, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-01-17', 16, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-01-17', 2, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-01-17', 39, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-02-04', 1, 'false', 'false');
INSERT INTO `clockdepall` VALUES ('2023-02-04', 16, 'false', 'false');

-- ----------------------------
-- Table structure for clockemploye
-- ----------------------------
DROP TABLE IF EXISTS `clockemploye`;
CREATE TABLE `clockemploye`  (
  `dno` int(0) NOT NULL,
  `deptid` int(0) NOT NULL,
  `employeno` int(0) NOT NULL,
  `employename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `clockTime` datetime(0) NOT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`employeno`, `clockTime`, `employename`, `deptid`, `dno`, `type`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of clockemploye
-- ----------------------------
INSERT INTO `clockemploye` VALUES (1, 1, 1, '鲁潜223', '上午', '2022-12-19 18:35:21', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 1, '鲁潜223', '上午', '2022-12-19 18:35:21', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 1, '鲁潜223', '下午', '2022-12-19 18:35:26', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 1, '鲁潜223', '下午', '2022-12-19 18:35:26', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 1, '鲁潜223', '上午', '2022-12-21 10:50:16', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 1, '鲁潜223', '上午', '2022-12-21 10:50:16', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 1, '鲁潜223', '上午', '2022-12-22 10:50:16', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 1, '鲁潜223', '上午', '2022-12-23 14:12:35', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 1, '鲁潜223', '上午', '2022-12-23 14:12:35', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 1, '鲁潜223', '上午', '2022-12-24 14:02:33', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 1, '鲁潜223', '上午', '2022-12-24 14:02:33', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 1, '鲁潜223', '上午', '2022-12-26 15:13:35', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 1, '鲁潜223', '上午', '2022-12-26 15:13:35', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 1, '鲁潜223', '下午', '2022-12-26 18:04:33', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 1, '鲁潜223', '下午', '2022-12-26 18:04:33', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 1, '鲁潜223', '上午', '2022-12-27 14:21:31', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 1, '鲁潜223', '上午', '2022-12-27 14:21:31', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 1, '鲁潜223', '上午', '2022-12-28 16:04:32', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 1, '鲁潜223', '上午', '2022-12-28 16:04:32', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 1, '鲁潜223', '上午', '2023-01-03 11:15:49', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 1, '鲁潜223', '上午', '2023-01-03 11:15:49', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 1, '鲁潜223', '上午', '2023-01-06 14:19:09', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 1, '鲁潜223', '上午', '2023-01-06 14:19:09', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 1, '鲁潜223', '上午', '2023-01-07 10:41:50', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 1, '鲁潜223', '上午', '2023-01-07 10:41:50', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 1, '鲁潜223', '上午', '2023-01-11 17:31:40', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 1, '鲁潜223', '上午', '2023-01-11 17:31:40', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 1, '鲁潜223', '上午', '2023-01-13 15:43:09', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 1, '鲁潜223', '上午', '2023-01-13 15:43:09', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 1, '鲁潜223', '上午', '2023-01-17 11:12:44', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 1, '鲁潜223', '上午', '2023-01-17 11:12:44', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 1, '鲁潜223', '上午', '2023-02-04 08:28:03', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 1, '鲁潜223', '上午', '2023-02-04 17:28:03', NULL);
INSERT INTO `clockemploye` VALUES (39, 112, 2, '邵金鑫', '上午', '2022-12-13 18:17:31', '广州');
INSERT INTO `clockemploye` VALUES (39, 112, 2, '邵金鑫', '上午', '2022-12-14 18:17:31', '广州');
INSERT INTO `clockemploye` VALUES (1, 1, 2, '邵金鑫', '上午', '2022-12-20 10:12:27', NULL);
INSERT INTO `clockemploye` VALUES (2, 5, 2, '邵金鑫', '上午', '2022-12-20 10:12:27', NULL);
INSERT INTO `clockemploye` VALUES (39, 112, 2, '邵金鑫', '上午', '2022-12-20 10:12:27', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 2, '邵金鑫', '上午', '2022-12-21 10:50:02', NULL);
INSERT INTO `clockemploye` VALUES (2, 5, 2, '邵金鑫', '上午', '2022-12-21 10:50:02', NULL);
INSERT INTO `clockemploye` VALUES (39, 112, 2, '邵金鑫', '上午', '2022-12-21 10:50:02', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 2, '邵金鑫', '上午', '2022-12-22 15:31:30', NULL);
INSERT INTO `clockemploye` VALUES (2, 5, 2, '邵金鑫', '上午', '2022-12-22 15:31:30', NULL);
INSERT INTO `clockemploye` VALUES (39, 112, 2, '邵金鑫', '上午', '2022-12-22 15:31:30', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 2, '邵金鑫', '上午', '2022-12-23 14:12:43', NULL);
INSERT INTO `clockemploye` VALUES (2, 5, 2, '邵金鑫', '上午', '2022-12-23 14:12:43', NULL);
INSERT INTO `clockemploye` VALUES (39, 112, 2, '邵金鑫', '上午', '2022-12-23 14:12:43', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 2, '邵金鑫', '上午', '2022-12-24 14:02:41', NULL);
INSERT INTO `clockemploye` VALUES (2, 5, 2, '邵金鑫', '上午', '2022-12-24 14:02:41', NULL);
INSERT INTO `clockemploye` VALUES (39, 112, 2, '邵金鑫', '上午', '2022-12-24 14:02:41', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 2, '邵金鑫', '上午', '2022-12-26 15:20:03', NULL);
INSERT INTO `clockemploye` VALUES (2, 5, 2, '邵金鑫', '上午', '2022-12-26 15:20:03', NULL);
INSERT INTO `clockemploye` VALUES (39, 112, 2, '邵金鑫', '上午', '2022-12-26 15:20:03', NULL);
INSERT INTO `clockemploye` VALUES (39, 112, 2, '邵金鑫', '下午', '2022-12-26 18:20:03', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 2, '邵金鑫', '上午', '2022-12-27 14:21:40', NULL);
INSERT INTO `clockemploye` VALUES (2, 5, 2, '邵金鑫', '上午', '2022-12-27 14:21:40', NULL);
INSERT INTO `clockemploye` VALUES (39, 112, 2, '邵金鑫', '上午', '2022-12-27 14:21:40', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 2, '邵金鑫', '上午', '2022-12-28 16:04:25', NULL);
INSERT INTO `clockemploye` VALUES (2, 5, 2, '邵金鑫', '上午', '2022-12-28 16:04:25', NULL);
INSERT INTO `clockemploye` VALUES (39, 112, 2, '邵金鑫', '上午', '2022-12-28 16:04:25', NULL);
INSERT INTO `clockemploye` VALUES (39, 112, 2, '邵金鑫', '上午', '2023-01-03 07:15:39', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 2, '邵金鑫', '上午', '2023-01-03 11:15:39', NULL);
INSERT INTO `clockemploye` VALUES (2, 5, 2, '邵金鑫', '上午', '2023-01-03 11:15:39', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 2, '邵金鑫', '上午', '2023-01-11 17:34:27', NULL);
INSERT INTO `clockemploye` VALUES (2, 5, 2, '邵金鑫', '上午', '2023-01-11 17:34:27', NULL);
INSERT INTO `clockemploye` VALUES (39, 112, 2, '邵金鑫', '上午', '2023-01-11 17:34:27', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 2, '邵金鑫', '上午', '2023-01-17 14:11:28', NULL);
INSERT INTO `clockemploye` VALUES (2, 5, 2, '邵金鑫', '上午', '2023-01-17 14:11:28', NULL);
INSERT INTO `clockemploye` VALUES (39, 112, 2, '邵金鑫', '上午', '2023-01-17 14:11:28', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 4, '潘 琪', '上午', '2022-12-26 15:22:00', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 4, '潘 琪', '上午', '2022-12-26 15:22:00', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 4, '潘 琪', '下午', '2022-12-26 18:10:16', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 4, '潘 琪', '下午', '2022-12-26 18:10:16', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 4, '潘 琪', '上午', '2022-12-27 14:21:47', NULL);
INSERT INTO `clockemploye` VALUES (16, 76, 4, '潘 琪', '上午', '2022-12-27 14:21:47', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 16, '顾金鑫1', '上午', '2022-12-26 15:14:11', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 16, '顾金鑫1', '上午', '2022-12-27 08:21:55', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 16, '顾金鑫1', '上午', '2022-12-28 16:04:15', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 16, '顾金鑫1', '上午', '2023-01-03 11:16:02', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 16, '顾金鑫1', '上午', '2023-01-07 11:27:41', NULL);
INSERT INTO `clockemploye` VALUES (1, 1, 16, '顾金鑫1', '上午', '2023-01-17 14:11:37', NULL);
INSERT INTO `clockemploye` VALUES (39, 110, 262, 'testboss', '上午', '2022-12-27 09:37:49', NULL);

-- ----------------------------
-- Table structure for covidinfo
-- ----------------------------
DROP TABLE IF EXISTS `covidinfo`;
CREATE TABLE `covidinfo`  (
  `depallid` int(0) NOT NULL,
  `deptid` int(0) NOT NULL,
  `employid` int(0) NOT NULL,
  `firstInoculation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' COMMENT '第一针接种情况',
  `secondInoculation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' COMMENT '第二针',
  `threeInoculation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false' COMMENT '第三针',
  PRIMARY KEY (`employid`, `deptid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of covidinfo
-- ----------------------------
INSERT INTO `covidinfo` VALUES (1, 1, 1, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (16, 76, 1, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 1, 2, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 2, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (39, 112, 2, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 1, 3, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (16, 76, 3, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (1, 1, 4, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (16, 76, 4, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (1, 1, 5, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 1, 6, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 1, 7, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (7, 17, 7, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (16, 76, 7, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (1, 1, 8, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 1, 10, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (39, 114, 10, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (1, 1, 11, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (16, 76, 11, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (39, 114, 11, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (1, 1, 12, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 1, 14, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 1, 16, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 1, 17, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 1, 18, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 1, 19, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 21, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 22, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 23, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 24, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 25, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 26, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 27, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 28, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 29, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 30, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 31, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 32, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 33, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (16, 76, 33, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 34, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 35, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 36, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 37, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 38, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 39, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (16, 76, 39, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 2, 40, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 41, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 42, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 43, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 44, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 45, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 46, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 47, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 48, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 49, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 50, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 51, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 52, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 53, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 54, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 55, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 56, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 57, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 58, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 59, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 3, 60, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 61, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 62, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 63, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 64, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 65, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 66, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 67, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 68, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 69, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 70, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 71, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 72, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 73, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 74, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 75, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 76, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 77, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 78, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 79, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 80, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 81, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 82, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 83, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 84, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 85, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 86, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 87, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 88, 'true', 'true', 'false');
INSERT INTO `covidinfo` VALUES (2, 5, 89, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 90, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 91, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 92, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 93, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 94, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 95, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 96, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 97, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 98, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 99, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 5, 100, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 6, 101, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 6, 102, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 6, 103, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 6, 104, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 6, 105, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 6, 106, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 6, 107, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 6, 108, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 6, 109, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 6, 110, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 7, 111, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 7, 112, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 7, 113, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 7, 114, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 7, 115, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 7, 116, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 7, 117, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 7, 118, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 7, 119, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (2, 7, 120, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 8, 121, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 8, 122, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 8, 123, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 8, 124, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 8, 125, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 8, 126, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 8, 127, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 8, 128, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 8, 129, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 8, 130, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 9, 131, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 9, 132, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 9, 133, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 9, 134, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 9, 135, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 9, 136, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 9, 137, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 9, 138, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 9, 139, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (3, 9, 140, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 10, 141, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 10, 142, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 10, 143, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 10, 144, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 10, 145, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 10, 146, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 10, 147, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 10, 148, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 10, 149, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 10, 150, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 11, 151, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 11, 152, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 11, 153, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 11, 154, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 11, 155, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 11, 156, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 11, 157, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 11, 158, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 11, 159, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 11, 160, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 12, 161, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 12, 162, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 12, 163, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 12, 164, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 12, 165, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 12, 166, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 12, 167, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 12, 168, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 12, 169, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 12, 170, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 13, 171, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 13, 172, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 13, 173, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 13, 174, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 13, 175, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 13, 176, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 13, 177, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 13, 178, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 13, 179, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 13, 180, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 14, 181, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 14, 182, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 14, 183, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 14, 184, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 14, 185, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 14, 186, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 14, 187, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 14, 188, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 14, 189, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 14, 190, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 15, 191, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 15, 192, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 15, 193, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 15, 194, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 15, 195, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 15, 196, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 15, 197, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 15, 198, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 15, 199, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 15, 200, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (6, 16, 201, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (6, 16, 202, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (6, 16, 203, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (6, 16, 204, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (6, 16, 205, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (6, 16, 206, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (6, 16, 207, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (6, 16, 208, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (6, 16, 209, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (6, 16, 210, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (7, 17, 211, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (7, 17, 212, 'true', 'true', 'false');
INSERT INTO `covidinfo` VALUES (7, 17, 213, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (7, 17, 214, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (7, 17, 215, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (7, 17, 216, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (7, 17, 217, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (7, 17, 218, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (7, 17, 219, 'true', 'true', 'false');
INSERT INTO `covidinfo` VALUES (6, 16, 220, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (1, 4, 225, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (1, 4, 226, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (1, 1, 227, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (2, 5, 228, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (2, 5, 229, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (1, 1, 230, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (1, 1, 231, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (1, 2, 233, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (5, 13, 240, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (1, 1, 242, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (1, 1, 243, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (3, 8, 244, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (4, 10, 245, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (2, 5, 246, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (4, 10, 247, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (6, 16, 248, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (6, 16, 249, 'true', 'true', 'true');
INSERT INTO `covidinfo` VALUES (5, 13, 250, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (1, 1, 252, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (1, 2, 253, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (39, 110, 262, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (39, 112, 263, 'false', 'false', 'false');
INSERT INTO `covidinfo` VALUES (39, 112, 264, 'false', 'false', 'false');

-- ----------------------------
-- Table structure for depall
-- ----------------------------
DROP TABLE IF EXISTS `depall`;
CREATE TABLE `depall`  (
  `dno` int(0) NOT NULL AUTO_INCREMENT,
  `dname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `explain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` int(0) NOT NULL DEFAULT 0,
  `groupCount` int(0) NOT NULL DEFAULT 0,
  `isAllCovid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false',
  `noCovid` int(0) NOT NULL DEFAULT 0,
  `allClockMorning` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false',
  `allClockAfter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'false',
  PRIMARY KEY (`dno`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of depall
-- ----------------------------
INSERT INTO `depall` VALUES (1, '爬虫团队', '参与分布式爬虫和数据采集系统的架构设计和开发,负责大规模文本、图像数据的抓取、抽取，去重、分类，垃圾过滤，质量识别等工作', 'https://img0.baidu.com/it/u=3104250705,162290846&fm=253&fmt=auto&app=138&f=JPG\r\n', 86, 4, 'false', 10, 'false', 'false');
INSERT INTO `depall` VALUES (2, '后端团队', '设计开发以及测试并且维护后端的各个子系统，负责线上服务器运行期间的安全以及稳定性，负责相关后台服务的工发工作', '\r\nhttps://mms2.baidu.com/it/u=1219526164,3946276492&fm=253&app=138&f=JPEG', 44, 3, 'false', 4, 'false', 'false');
INSERT INTO `depall` VALUES (3, 'UI团队', '负责软件界面的美术设计、创意工作和制作工作，根据各种相关软件的用户群，提出构思新颖、有高度吸引力的创意设计', 'https://img1.baidu.com/it/u=3213166844,1927952924&fm=253&fmt=auto&app=138&f=PNG', 21, 2, 'true', 0, 'false', 'false');
INSERT INTO `depall` VALUES (4, '前端团队', '配合UI设计师实现预期的视觉交互效果，定期的更新和优化产品，保持产品的生命力和可用性，配合后端工程师完成相关应用的开发工作', 'https://img2.baidu.com/it/u=2213282682,62301055&fm=253&fmt=auto&app=138&f=JPEG', 32, 3, 'false', 2, 'false', 'false');
INSERT INTO `depall` VALUES (5, '运维团队', '设计并开发高效的监控平台和告警平台，以可控的方式，尽可能高效的完成产品功能的迭代的变更工作', 'https://img0.baidu.com/it/u=3231418332,3200306261&fm=253&fmt=auto&app=138&f=JPEG', 32, 3, 'false', 2, 'false', 'false');
INSERT INTO `depall` VALUES (6, '经营团队', '以可控的方式，尽可能高效的完成产品功能的迭代的变更工作，搞好市场调查与预测，选定产品发展方向，制定长期发展规划', 'https://img1.baidu.com/it/u=312885407,2370214083&fm=253&fmt=auto&app=138&f=JPEG', 13, 1, 'false', 1, 'false', 'false');
INSERT INTO `depall` VALUES (7, '行政团队', '负责公司全体员工的后勤保障工作，负责接待来宾（比如：政府部门、职能部门人员），接听或转接外部电话，负责公司员工的考勤管理', 'https://img0.baidu.com/it/u=3450002477,2924136512&fm=253&fmt=auto&app=138&f=PNG', 10, 1, 'false', 2, 'false', 'false');
INSERT INTO `depall` VALUES (16, '测试团队', '在规定的条件下对程序进行操作，以发现程序错误，衡量软件质量，并对其是否能满足设计要求进行评估', 'http://127.0.0.1:8888/images/uploadAvatarZengYu76264logo.jpg', 7, 1, 'false', 4, 'false', 'false');
INSERT INTO `depall` VALUES (39, 'test1', '参与分布式test', 'http://127.0.0.1:8888/images/uploadAvatarZengYu46412log.jpg', 6, 3, 'false', 5, 'false', 'false');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `deptno` int(0) NOT NULL,
  `deptname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` int(0) NOT NULL DEFAULT 0,
  `countCovid` int(0) NOT NULL DEFAULT 0 COMMENT '三针接种人数',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_dno`(`deptno`) USING BTREE,
  CONSTRAINT `fk_dno` FOREIGN KEY (`deptno`) REFERENCES `depall` (`dno`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 115 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (1, 1, '爬虫团队1组', '广州', 22, 16);
INSERT INTO `dept` VALUES (2, 1, '爬虫团队2组', '深圳', 22, 20);
INSERT INTO `dept` VALUES (3, 1, '爬虫团队3组', '广州', 20, 20);
INSERT INTO `dept` VALUES (4, 1, '爬虫团队4组', '长沙', 22, 20);
INSERT INTO `dept` VALUES (5, 2, '后端团队1组', '广州', 24, 20);
INSERT INTO `dept` VALUES (6, 2, '后端团队2组', '深圳', 10, 10);
INSERT INTO `dept` VALUES (7, 2, '后端团队3组', '北京', 10, 10);
INSERT INTO `dept` VALUES (8, 3, 'UI团队1组', '北京', 11, 11);
INSERT INTO `dept` VALUES (9, 3, 'UI团队2组', '深圳', 10, 10);
INSERT INTO `dept` VALUES (10, 4, '前端团队1组', '广州', 12, 10);
INSERT INTO `dept` VALUES (11, 4, '前端团队2组', '广州', 10, 10);
INSERT INTO `dept` VALUES (12, 4, '前端团队3组', '北京', 10, 10);
INSERT INTO `dept` VALUES (13, 5, '运维团队1组', '广州', 12, 10);
INSERT INTO `dept` VALUES (14, 5, '运维团队2组', '广州', 10, 10);
INSERT INTO `dept` VALUES (15, 5, '运维团队3组', '深圳', 10, 10);
INSERT INTO `dept` VALUES (16, 6, '经营团队1组', '广州', 13, 12);
INSERT INTO `dept` VALUES (17, 7, '行政团队1组', '广州', 10, 8);
INSERT INTO `dept` VALUES (76, 16, '测试小组1组', '北京', 7, 3);
INSERT INTO `dept` VALUES (110, 39, 'test1小组1', '河源', 1, 1);
INSERT INTO `dept` VALUES (112, 39, '贴图', '贴图', 3, 1);
INSERT INTO `dept` VALUES (113, 16, 'test', 'test', 0, 0);
INSERT INTO `dept` VALUES (114, 39, 'test222', '123', 2, 1);

-- ----------------------------
-- Table structure for deptredo
-- ----------------------------
DROP TABLE IF EXISTS `deptredo`;
CREATE TABLE `deptredo`  (
  `id` int(0) NOT NULL,
  `deptno` int(0) NOT NULL,
  `deptname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `count` int(0) NOT NULL,
  `countCovid` int(0) NOT NULL,
  `confirmTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `whichDone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of deptredo
-- ----------------------------
INSERT INTO `deptredo` VALUES (90, 30, '123', '123', 0, 0, '2022-11-16 18:28:27', 'admin');
INSERT INTO `deptredo` VALUES (91, 30, '123', '123', 0, 0, '2022-11-16 18:28:57', 'admin');
INSERT INTO `deptredo` VALUES (92, 30, '123', '123', 0, 0, '2022-11-16 18:29:19', 'admin');
INSERT INTO `deptredo` VALUES (93, 30, '123', '123', 0, 0, '2022-11-16 18:33:01', 'admin');
INSERT INTO `deptredo` VALUES (95, 31, 'test', '11', 2, 0, '2022-11-24 11:50:42', 'admin');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `deptno` int(0) NOT NULL,
  `employno` int(0) NOT NULL AUTO_INCREMENT,
  `employname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employsex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employidcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entryDate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employemail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employsalary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isuse` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'true' COMMENT '是否补贴',
  PRIMARY KEY (`employno`, `deptno`) USING BTREE,
  INDEX `deptno`(`deptno`) USING BTREE,
  INDEX `employname`(`employname`) USING BTREE,
  INDEX `employno`(`employno`) USING BTREE,
  CONSTRAINT `fk_deptno` FOREIGN KEY (`deptno`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 265 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, 1, '鲁潜223', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省 佛山市', '4000', 'true');
INSERT INTO `employee` VALUES (76, 1, '鲁潜223', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (1, 2, '邵金鑫', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 2, '邵金鑫', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '123@qq.com', '河南省洛阳市', '3500', 'true');
INSERT INTO `employee` VALUES (112, 2, '邵金鑫', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (1, 3, '陈昊强', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (76, 3, '陈昊强', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (1, 4, '潘 琪', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '24@yahoo.com', '河南省三门峡市', '3500', 'true');
INSERT INTO `employee` VALUES (76, 4, '潘 琪', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '24@yahoo.com', '河南省三门峡市', '3500', 'true');
INSERT INTO `employee` VALUES (1, 5, '洪弘文', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (1, 6, '顾金鑫', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (1, 7, '卢文昊', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (17, 7, '卢文昊', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '123@qq.com', '河南省洛阳市', '3500', 'true');
INSERT INTO `employee` VALUES (76, 7, '卢文昊', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (1, 8, '韦苑博', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (1, 10, '严耀杰', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (114, 10, '严耀杰', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (1, 11, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (76, 11, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省汕头市', '3500', 'true');
INSERT INTO `employee` VALUES (114, 11, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (1, 12, '邵金鑫1', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (1, 14, '潘 琪1', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (1, 16, '顾金鑫1', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (1, 17, '卢文昊1', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (1, 18, '韦苑博1', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (1, 19, '江涛1', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 21, '鲁潜', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 22, '邵金鑫', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 23, '陈昊强', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 24, '	潘 琪', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 25, '洪弘文', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 26, '顾金鑫', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 27, '卢文昊', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 28, '韦苑博', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 29, '江涛', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 30, '严耀杰', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 31, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 32, '邵金鑫1', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 33, '陈昊1', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (76, 33, '陈昊1', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 34, '潘 琪1', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 35, '洪弘文1', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 36, '顾金鑫1', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 37, '卢文昊1', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 38, '韦苑博1', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (2, 39, '江涛1', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (76, 39, '江涛1', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '94@gmail.com', '广东省汕头市', '3500', 'true');
INSERT INTO `employee` VALUES (2, 40, '严耀杰1', '20', '男', '440106199003072656', '5733-56739802', '2022-02-12', '96@gmail.com', '广东省广州市', '3500', 'true');
INSERT INTO `employee` VALUES (3, 41, '鲁潜', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 42, '邵金鑫', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 43, '陈昊强', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 44, '	潘 琪', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 45, '洪弘文', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 46, '顾金鑫', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 47, '卢文昊', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 48, '韦苑博', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 49, '江涛', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 50, '严耀杰', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 51, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 52, '邵金鑫1', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 53, '陈昊1', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 54, '潘 琪1', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 55, '洪弘文1', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 56, '顾金鑫1', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 57, '卢文昊1', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 58, '韦苑博1', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 59, '江涛1', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (3, 60, '严耀杰1', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 61, '鲁潜', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 62, '邵金鑫', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 63, '陈昊强', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 64, '	潘 琪', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 65, '洪弘文', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 66, '顾金鑫', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 67, '卢文昊', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 68, '韦苑博', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 69, '江涛', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 70, '严耀杰', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 71, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 72, '邵金鑫1', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 73, '陈昊1', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 74, '潘 琪1', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 75, '洪弘文1', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 76, '顾金鑫1', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 77, '卢文昊1', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 78, '韦苑博1', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 79, '江涛1', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 80, '严耀杰1', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 81, '鲁潜', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 82, '邵金鑫', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 83, '陈昊强', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 84, '	潘 琪', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 85, '洪弘文', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 86, '顾金鑫', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 87, '卢文昊', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 88, '韦苑博', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 89, '江涛', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 90, '严耀杰', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 91, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 92, '邵金鑫1', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 93, '陈昊1', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 94, '潘 琪1', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 95, '洪弘文1', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 96, '顾金鑫1', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 97, '卢文昊1', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 98, '韦苑博1', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 99, '江涛1', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (5, 100, '严耀杰1', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (6, 101, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (6, 102, '邵金鑫1', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (6, 103, '陈昊1', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (6, 104, '潘 琪1', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (6, 105, '洪弘文1', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (6, 106, '顾金鑫1', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (6, 107, '卢文昊1', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (6, 108, '韦苑博1', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (6, 109, '江涛1', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (6, 110, '严耀杰1', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (7, 111, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (7, 112, '邵金鑫1', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (7, 113, '陈昊1', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (7, 114, '潘 琪1', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (7, 115, '洪弘文1', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (7, 116, '顾金鑫1', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (7, 117, '卢文昊1', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (7, 118, '韦苑博1', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (7, 119, '江涛1', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (7, 120, '严耀杰1', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (8, 121, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (8, 122, '邵金鑫1', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (8, 123, '陈昊1', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (8, 124, '潘 琪1', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (8, 125, '洪弘文1', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (8, 126, '顾金鑫1', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (8, 127, '卢文昊1', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (8, 128, '韦苑博1', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (8, 129, '江涛1', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (8, 130, '严耀杰1', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (9, 131, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (9, 132, '邵金鑫1', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (9, 133, '陈昊1', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (9, 134, '潘 琪1', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (9, 135, '洪弘文1', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (9, 136, '顾金鑫1', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (9, 137, '卢文昊1', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (9, 138, '韦苑博1', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (9, 139, '江涛1', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (9, 140, '严耀杰1', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (10, 141, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (10, 142, '邵金鑫1', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (10, 143, '陈昊1', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (10, 144, '潘 琪1', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (10, 145, '洪弘文1', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (10, 146, '顾金鑫1', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (10, 147, '卢文昊1', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (10, 148, '韦苑博1', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (10, 149, '江涛1', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (10, 150, '严耀杰1', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (11, 151, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (11, 152, '邵金鑫1', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (11, 153, '陈昊1', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (11, 154, '潘 琪1', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (11, 155, '洪弘文1', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (11, 156, '顾金鑫1', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (11, 157, '卢文昊1', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (11, 158, '韦苑博1', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (11, 159, '江涛1', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (11, 160, '严耀杰1', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (12, 161, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (12, 162, '邵金鑫1', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (12, 163, '陈昊1', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (12, 164, '潘 琪1', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (12, 165, '洪弘文1', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (12, 166, '顾金鑫1', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (12, 167, '卢文昊1', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (12, 168, '韦苑博1', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (12, 169, '江涛1', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (12, 170, '严耀杰1', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (13, 171, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (13, 172, '邵金鑫1', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (13, 173, '陈昊1', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (13, 174, '潘 琪1', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (13, 175, '洪弘文1', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (13, 176, '顾金鑫1', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (13, 177, '卢文昊1', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (13, 178, '韦苑博1', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (13, 179, '江涛1', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (13, 180, '严耀杰1', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (14, 181, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (14, 182, '邵金鑫1', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (14, 183, '陈昊1', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (14, 184, '潘 琪1', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (14, 185, '洪弘文1', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (14, 186, '顾金鑫1', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (14, 187, '卢文昊1', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (14, 188, '韦苑博1', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (14, 189, '江涛1', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (14, 190, '严耀杰1', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (15, 191, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (15, 192, '邵金鑫1', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (15, 193, '陈昊1', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (15, 194, '潘 琪1', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (15, 195, '洪弘文1', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (15, 196, '顾金鑫1', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (15, 197, '卢文昊1', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (15, 198, '韦苑博1', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (15, 199, '江涛1', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (15, 200, '严耀杰1', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (16, 201, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (16, 202, '邵金鑫1', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (16, 203, '陈昊1', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (16, 204, '潘 琪1', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (16, 205, '洪弘文1', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (16, 206, '顾金鑫1', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (16, 207, '卢文昊1', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', '	.zts@yahoo.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (16, 208, '韦苑博1', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (16, 209, '江涛1', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '	95@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (16, 210, '严耀杰1', '20', '男', '	440106199003072656', '5733-56739802', '2022-02-12', '	96@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (17, 211, '鲁潜1', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (17, 212, '邵金鑫1', '21', '男', '110101200106072592', '18968451285', '2022-02-12', '	.zs@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (17, 213, '陈昊1', '28', '男', '	110101199503072072', '	4706-51611314', '2022-02-12', '	_56@gmail.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (17, 214, '潘 琪1', '23', '女', '110101199903075088', '8667-21583259', '2022-02-12', '	24@yahoo.com', '北京市北京市辖区东城区', '3500', 'true');
INSERT INTO `employee` VALUES (17, 215, '洪弘文1', '20', '男', '	310101200203072479', '	3461-57848206', '2022-02-12', '	91@hotmail.com', '上海市上海市市辖区黄浦区', '3500', 'true');
INSERT INTO `employee` VALUES (17, 216, '顾金鑫1', '21', '男', '	440106199003078230', '	95655935425', '2022-02-12', '_588@hotmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (17, 217, '卢文昊1', '21', '男', '	440106199003072699', '	626-83028149', '2022-02-12', 'zts@yahoo.com', '广东省汕头市', '3500', 'true');
INSERT INTO `employee` VALUES (17, 218, '韦苑博1', '28', '男', '440106199003077115', '3141-91971190', '2022-02-12', '	94@gmail.com', '广东省广州市天河区', '3500', 'true');
INSERT INTO `employee` VALUES (17, 219, '江涛1', '23', '男', '	440106199003077174', '156-45629045', '2022-02-12', '231@gmail.com', '广东省汕头市', '3500', 'true');
INSERT INTO `employee` VALUES (16, 220, '李四1', '18', '男', '441623200210151548', '13825361949', '2022-5-7', '123@qq.com', '上海市上海城区', '3500', 'true');
INSERT INTO `employee` VALUES (4, 225, '陆语熙', '123123', '女', '12312312312312', '123', '2022-09-22', '123', '广东省 惠州市', '3500', 'true');
INSERT INTO `employee` VALUES (4, 226, '陆语熙1', '123', '男', '123123', '123123', '2022-09-23', '123123', '广东省 佛山市', '3500', 'true');
INSERT INTO `employee` VALUES (1, 227, '陆语熙141', '123', '女', '123123', '123123', '2022-09-09', '123123', '广东省 汕头市', '3500', 'true');
INSERT INTO `employee` VALUES (5, 228, '陆语熙', '123', '男', '123', '123', '2022-09-02', '123', '广东省 汕头市', '3500', 'true');
INSERT INTO `employee` VALUES (5, 229, '陆语熙', '123', '男', '123', '123', '2022-09-02', '123', '广东省 汕头市', '3500', 'true');
INSERT INTO `employee` VALUES (1, 230, '鲁潜2233', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省 佛山市', '3500', 'true');
INSERT INTO `employee` VALUES (1, 231, '鲁潜2234', '21', '男', '441623200110158757', '13825361944', '2022-02-12', '_50@hotmail.com', '广东省 汕头市', '3500', 'true');
INSERT INTO `employee` VALUES (2, 233, '艾尔2', '123', '女', '1', '1', '2022-09-22', '1', '河南省 洛阳市', '3500', 'true');
INSERT INTO `employee` VALUES (13, 240, '123123', '123', '男', '123', '123', '2022-09-14', '123', '新疆维吾尔自治区 和田地区', '3500', 'true');
INSERT INTO `employee` VALUES (1, 242, 'test', '1', '男', '123', '123', '2022-11-17', '123', '广东省 汕头市', '3500', 'true');
INSERT INTO `employee` VALUES (1, 243, 'test1', '1', '男', '1', '1', '2022-11-23', '1', '广东省 肇庆市', '3500', 'true');
INSERT INTO `employee` VALUES (8, 244, 'test3', '1', '男', '1', '1', '2022-12-02', '1', '广东省 深圳市', '3500', 'true');
INSERT INTO `employee` VALUES (10, 245, 'test4', '1', '男', '1', '1', '2022-11-16', '123', '内蒙古自治区 乌海市', '3500', 'true');
INSERT INTO `employee` VALUES (5, 246, '她222', '22', '男', '2', '2', '2022-11-16', '2', '广东省 深圳市', '3500', 'true');
INSERT INTO `employee` VALUES (10, 247, '123', '123', '男', '123', '123', '2022-11-11', '123', '黑龙江省 佳木斯市', '3500', 'true');
INSERT INTO `employee` VALUES (16, 248, '啊啊啊', '12', '女', '2', '2', '2022-12-01', '2', '湖北省 十堰市', '3500', 'true');
INSERT INTO `employee` VALUES (16, 249, '啊11', '12', '女', '2', '2', '2022-12-01', '2', '湖北省一堰市', '123123', 'true');
INSERT INTO `employee` VALUES (13, 250, '1231231', '22', '女', '2', '2', '2022-11-22', '2', '湖北省 黄冈市', '3500', 'true');
INSERT INTO `employee` VALUES (1, 252, 'test22', '2', '男', '2', '2', '2022-12-29', '2', '广东省 珠海市', '2222', 'true');
INSERT INTO `employee` VALUES (2, 253, 'test2玩玩', '2', '男', '2', '2', '2022-12-29', '2', '广东省 珠海市', '2222', 'true');
INSERT INTO `employee` VALUES (110, 262, 'testboss', '19', '男', '123', '123', '2022-12-23', '123', '广东省 湛江市', '1111', 'true');
INSERT INTO `employee` VALUES (112, 263, '新人1', '22', '男', '441623200210195225', '13825361945', '2023-01-07', '1698680988@qq.com', '广东省 广州市', '4500', 'true');
INSERT INTO `employee` VALUES (112, 264, '123', '123', '女', '11', '111', '2023-01-07', '111', '广东省 佛山市', '1111', 'true');

-- ----------------------------
-- Table structure for employeredo
-- ----------------------------
DROP TABLE IF EXISTS `employeredo`;
CREATE TABLE `employeredo`  (
  `dno` int(0) NOT NULL,
  `deptno` int(0) NOT NULL,
  `employno` int(0) NOT NULL,
  `employname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employage` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employsex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employidcard` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employphone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entryDate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employemail` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employsalary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isuse` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `confirmTime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `whichDone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employeredo
-- ----------------------------
INSERT INTO `employeredo` VALUES (5, 13, 241, 'ZHANGSAN', '123', '女', '12322', '12322', '2022-09-14', '1232', '新疆维吾尔自治区 和田地区', '123123', 'true', '2022-09-29 17:10:55', 'admin');
INSERT INTO `employeredo` VALUES (6, 16, 251, '啊121', '12', '女', '2', '2', '2022-12-01', '2', '湖北省 十堰市', '123123', 'true', '2022-11-21 16:25:17', 'admin');

-- ----------------------------
-- Table structure for employesalary
-- ----------------------------
DROP TABLE IF EXISTS `employesalary`;
CREATE TABLE `employesalary`  (
  `deptno` int(0) NOT NULL COMMENT '部门所属团队',
  `deptid` int(0) NOT NULL COMMENT '团队号',
  `socialSub` int(0) NOT NULL DEFAULT 150 COMMENT '社保钱',
  `houseSub` int(0) NOT NULL DEFAULT 800 COMMENT '房补金',
  `eatSub` int(0) NOT NULL DEFAULT 650 COMMENT '餐补',
  `transSub` int(0) NOT NULL DEFAULT 500 COMMENT '交通补贴',
  `hotSub` int(0) NOT NULL DEFAULT 300 COMMENT '高温补贴',
  `performance` int(0) NOT NULL DEFAULT 100 COMMENT '绩效',
  `isuse` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'true' COMMENT '是否把补贴计入',
  PRIMARY KEY (`deptid`) USING BTREE,
  INDEX `deptno`(`deptno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employesalary
-- ----------------------------
INSERT INTO `employesalary` VALUES (1, 1, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (1, 2, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (1, 3, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (1, 4, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (2, 5, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (2, 6, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (2, 7, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (3, 8, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (3, 9, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (4, 10, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (4, 11, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (4, 12, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (5, 13, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (5, 14, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (5, 15, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (6, 16, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (7, 17, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (16, 76, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (39, 110, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (39, 112, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (16, 113, 150, 800, 650, 500, 300, 100, 'true');
INSERT INTO `employesalary` VALUES (39, 114, 150, 800, 650, 500, 300, 100, 'true');

-- ----------------------------
-- Table structure for employesalarydetail
-- ----------------------------
DROP TABLE IF EXISTS `employesalarydetail`;
CREATE TABLE `employesalarydetail`  (
  `deptno` int(0) NOT NULL,
  `employno` int(0) NOT NULL COMMENT '员工号',
  `employname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名字',
  `usesocialSub` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'true' COMMENT '是否社保',
  `usehouseSub` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'true' COMMENT '是否有房补',
  `useeatSub` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'true' COMMENT '是否有餐补',
  `usetransSub` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'true' COMMENT '是否有交通补',
  `usehotSub` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'true' COMMENT '是否有高温补',
  `usePerformance` int(0) NOT NULL DEFAULT 100 COMMENT '是否有绩效',
  `salary` int(0) NOT NULL COMMENT '底薪',
  `isuse` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'true' COMMENT '是否拥有补贴 取决于团队整体',
  PRIMARY KEY (`employno`, `deptno`) USING BTREE,
  INDEX `detail_deptno`(`deptno`) USING BTREE,
  INDEX `detail_name`(`employname`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employesalarydetail
-- ----------------------------
INSERT INTO `employesalarydetail` VALUES (1, 1, '鲁潜223', 'true', 'true', 'true', 'true', 'true', 100, 4000, 'true');
INSERT INTO `employesalarydetail` VALUES (76, 1, '鲁潜223', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 2, '邵金鑫', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 2, '邵金鑫', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (112, 2, '邵金鑫', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 3, '陈昊强', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (76, 3, '陈昊强', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 4, '潘 琪', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (76, 4, '潘 琪', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 5, '洪弘文', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 6, '顾金鑫', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 7, '卢文昊', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (17, 7, '卢文昊', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (76, 7, '卢文昊', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 8, '韦苑博', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 10, '严耀杰', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (114, 10, '严耀杰', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 11, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (76, 11, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (114, 11, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 12, '邵金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 14, '潘 琪1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 16, '顾金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 17, '卢文昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 18, '韦苑博1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 19, '江涛1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 21, '鲁潜', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 22, '邵金鑫', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 23, '陈昊强', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 24, '	潘 琪', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 25, '洪弘文', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 26, '顾金鑫', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 27, '卢文昊', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 28, '韦苑博', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 29, '江涛', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 30, '严耀杰', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 31, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 32, '邵金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 33, '陈昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (76, 33, '陈昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 34, '潘 琪1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 35, '洪弘文1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 36, '顾金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 37, '卢文昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 38, '韦苑博1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 39, '江涛1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (76, 39, '江涛1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 40, '严耀杰1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 41, '鲁潜', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 42, '邵金鑫', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 43, '陈昊强', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 44, '	潘 琪', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 45, '洪弘文', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 46, '顾金鑫', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 47, '卢文昊', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 48, '韦苑博', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 49, '江涛', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 50, '严耀杰', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 51, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 52, '邵金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 53, '陈昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 54, '潘 琪1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 55, '洪弘文1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 56, '顾金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 57, '卢文昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 58, '韦苑博1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 59, '江涛1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (3, 60, '严耀杰1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 61, '鲁潜', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 62, '邵金鑫', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 63, '陈昊强', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 64, '	潘 琪', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 65, '洪弘文', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 66, '顾金鑫', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 67, '卢文昊', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 68, '韦苑博', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 69, '江涛', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 70, '严耀杰', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 71, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 72, '邵金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 73, '陈昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 74, '潘 琪1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 75, '洪弘文1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 76, '顾金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 77, '卢文昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 78, '韦苑博1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 79, '江涛1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 80, '严耀杰1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 81, '鲁潜', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 82, '邵金鑫', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 83, '陈昊强', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 84, '	潘 琪', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 85, '洪弘文', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 86, '顾金鑫', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 87, '卢文昊', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 88, '韦苑博', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 89, '江涛', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 90, '严耀杰', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 91, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 92, '邵金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 93, '陈昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 94, '潘 琪1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 95, '洪弘文1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 96, '顾金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 97, '卢文昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 98, '韦苑博1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 99, '江涛1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 100, '严耀杰1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (6, 101, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (6, 102, '邵金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (6, 103, '陈昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (6, 104, '潘 琪1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (6, 105, '洪弘文1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (6, 106, '顾金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (6, 107, '卢文昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (6, 108, '韦苑博1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (6, 109, '江涛1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (6, 110, '严耀杰1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (7, 111, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (7, 112, '邵金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (7, 113, '陈昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (7, 114, '潘 琪1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (7, 115, '洪弘文1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (7, 116, '顾金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (7, 117, '卢文昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (7, 118, '韦苑博1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (7, 119, '江涛1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (7, 120, '严耀杰1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (8, 121, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (8, 122, '邵金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (8, 123, '陈昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (8, 124, '潘 琪1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (8, 125, '洪弘文1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (8, 126, '顾金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (8, 127, '卢文昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (8, 128, '韦苑博1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (8, 129, '江涛1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (8, 130, '严耀杰1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (9, 131, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (9, 132, '邵金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (9, 133, '陈昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (9, 134, '潘 琪1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (9, 135, '洪弘文1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (9, 136, '顾金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (9, 137, '卢文昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (9, 138, '韦苑博1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (9, 139, '江涛1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (9, 140, '严耀杰1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (10, 141, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (10, 142, '邵金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (10, 143, '陈昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (10, 144, '潘 琪1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (10, 145, '洪弘文1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (10, 146, '顾金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (10, 147, '卢文昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (10, 148, '韦苑博1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (10, 149, '江涛1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (10, 150, '严耀杰1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (11, 151, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (11, 152, '邵金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (11, 153, '陈昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (11, 154, '潘 琪1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (11, 155, '洪弘文1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (11, 156, '顾金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (11, 157, '卢文昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (11, 158, '韦苑博1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (11, 159, '江涛1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (11, 160, '严耀杰1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (12, 161, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (12, 162, '邵金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (12, 163, '陈昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (12, 164, '潘 琪1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (12, 165, '洪弘文1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (12, 166, '顾金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (12, 167, '卢文昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (12, 168, '韦苑博1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (12, 169, '江涛1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (12, 170, '严耀杰1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (13, 171, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (13, 172, '邵金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (13, 173, '陈昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (13, 174, '潘 琪1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (13, 175, '洪弘文1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (13, 176, '顾金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (13, 177, '卢文昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (13, 178, '韦苑博1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (13, 179, '江涛1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (13, 180, '严耀杰1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (14, 181, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (14, 182, '邵金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (14, 183, '陈昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (14, 184, '潘 琪1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (14, 185, '洪弘文1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (14, 186, '顾金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (14, 187, '卢文昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (14, 188, '韦苑博1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (14, 189, '江涛1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (14, 190, '严耀杰1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (15, 191, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (15, 192, '邵金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (15, 193, '陈昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (15, 194, '潘 琪1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (15, 195, '洪弘文1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (15, 196, '顾金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (15, 197, '卢文昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (15, 198, '韦苑博1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (15, 199, '江涛1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (15, 200, '严耀杰1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (16, 201, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (16, 202, '邵金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (16, 203, '陈昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (16, 204, '潘 琪1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (16, 205, '洪弘文1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (16, 206, '顾金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (16, 207, '卢文昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (16, 208, '韦苑博1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (16, 209, '江涛1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (16, 210, '严耀杰1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (17, 211, '鲁潜1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (17, 212, '邵金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (17, 213, '陈昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (17, 214, '潘 琪1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (17, 215, '洪弘文1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (17, 216, '顾金鑫1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (17, 217, '卢文昊1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (17, 218, '韦苑博1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (17, 219, '江涛1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (16, 220, '李四1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 225, '陆语熙', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (4, 226, '陆语熙1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 227, '陆语熙141', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 228, '陆语熙', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 229, '陆语熙', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 230, '鲁潜2233', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 231, '鲁潜2234', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 233, '艾尔2', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (13, 240, '123123', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 242, 'test', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 243, 'test1', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (8, 244, 'test3', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (10, 245, 'test4', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (5, 246, '她222', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (10, 247, '123', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (16, 248, '啊啊啊', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (16, 249, '啊11', 'true', 'true', 'true', 'true', 'true', 100, 123123, 'true');
INSERT INTO `employesalarydetail` VALUES (13, 250, '1231231', 'true', 'true', 'true', 'true', 'true', 100, 3500, 'true');
INSERT INTO `employesalarydetail` VALUES (1, 252, 'test22', 'true', 'true', 'true', 'true', 'true', 100, 2222, 'true');
INSERT INTO `employesalarydetail` VALUES (2, 253, 'test2玩玩', 'true', 'true', 'true', 'true', 'true', 100, 2222, 'true');
INSERT INTO `employesalarydetail` VALUES (110, 262, 'testboss', 'true', 'true', 'true', 'true', 'true', 100, 1111, 'true');
INSERT INTO `employesalarydetail` VALUES (112, 263, '新人1', 'true', 'true', 'true', 'true', 'true', 100, 4500, 'true');
INSERT INTO `employesalarydetail` VALUES (112, 264, '123', 'true', 'true', 'true', 'true', 'true', 100, 1111, 'true');

-- ----------------------------
-- Table structure for employesub
-- ----------------------------
DROP TABLE IF EXISTS `employesub`;
CREATE TABLE `employesub`  (
  `socialSub` int(0) NOT NULL,
  `houseSub` int(0) NOT NULL,
  `eatSub` int(0) NOT NULL,
  `transSub` int(0) NOT NULL,
  `hotSub` int(0) NOT NULL,
  `performance` int(0) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employesub
-- ----------------------------
INSERT INTO `employesub` VALUES (150, 800, 650, 500, 300, 1000);

-- ----------------------------
-- Table structure for eusers
-- ----------------------------
DROP TABLE IF EXISTS `eusers`;
CREATE TABLE `eusers`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '88888888',
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '普通员工',
  `islock` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eusers
-- ----------------------------
INSERT INTO `eusers` VALUES ('1', '12345', '普通员工', '0', '2', '');
INSERT INTO `eusers` VALUES ('10', '88888888', '普通员工', '0', '2', NULL);
INSERT INTO `eusers` VALUES ('11', '88888888', '普通员工', '1', '2', NULL);
INSERT INTO `eusers` VALUES ('12', '88888888', '普通员工', '1', '2', NULL);
INSERT INTO `eusers` VALUES ('14', '88888888', '普通员工', '1', '2', NULL);
INSERT INTO `eusers` VALUES ('16', '88888888', '普通员工', '0', '2', NULL);
INSERT INTO `eusers` VALUES ('2', '88888888', '普通员工', '0', '2', ' ');
INSERT INTO `eusers` VALUES ('262', '88888888', '普通员工', '0', '2', NULL);
INSERT INTO `eusers` VALUES ('263', '88888888', '普通员工', '0', '2', NULL);
INSERT INTO `eusers` VALUES ('264', '88888888', '普通员工', '0', '2', NULL);
INSERT INTO `eusers` VALUES ('3', '88888888', '普通员工', '0', '2', NULL);
INSERT INTO `eusers` VALUES ('4', '88888888', '普通员工', '0', '2', NULL);
INSERT INTO `eusers` VALUES ('5', '88888888', '普通员工', '0', '2', NULL);
INSERT INTO `eusers` VALUES ('6', '88888888', '普通员工', '0', '2', NULL);
INSERT INTO `eusers` VALUES ('7', '88888888', '普通员工', '0', '2', NULL);
INSERT INTO `eusers` VALUES ('8', '88888888', '普通员工', '1', '2', NULL);

-- ----------------------------
-- Table structure for leaverequest
-- ----------------------------
DROP TABLE IF EXISTS `leaverequest`;
CREATE TABLE `leaverequest`  (
  `leaveNumber` int(0) NOT NULL AUTO_INCREMENT,
  `whyLeave` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `leaveLong` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `employeno` int(0) NOT NULL,
  `leaveWhen` datetime(0) NOT NULL,
  `reply` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '暂无答复' COMMENT '答复',
  `verfiyState` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL DEFAULT 'none',
  `deptid` int(0) NOT NULL COMMENT '小组号',
  `dno` int(0) NOT NULL COMMENT '所在团队',
  `whichVerfiy` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '暂无人核审' COMMENT '谁核审',
  `employename` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NOT NULL COMMENT '员工姓名',
  `postTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`leaveNumber`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 138253622 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leaverequest
-- ----------------------------
INSERT INTO `leaverequest` VALUES (138253607, '事假', '1天', 1, '2022-12-16 00:06:00', '<p>去了就别回来了！😸</p>', 'true', 1, 1, 'admin', '鲁潜223', '2022-12-16 00:06:00');
INSERT INTO `leaverequest` VALUES (138253608, '事假', '3天', 1, '2023-01-11 15:03:43', '<p>今天人数满了 明天再申请🤣</p>', 'false', 76, 16, 'admin', '鲁潜223', '2022-12-30 15:26:14');
INSERT INTO `leaverequest` VALUES (138253609, '事假', '1天', 1, '2022-12-30 15:26:14', '不予通过', 'false', 76, 16, 'admin', '鲁潜223', '2022-12-30 15:26:14');
INSERT INTO `leaverequest` VALUES (138253610, '事假', '1周', 1, '2022-12-19 09:16:37', '<p>允许通过😇</p>', 'true', 1, 1, 'admin', '鲁潜223', '2022-12-30 15:26:14');
INSERT INTO `leaverequest` VALUES (138253611, '事假', '1天', 2, '2022-12-23 14:24:19', '<p>去去去😿👎👎</p>', 'true', 112, 39, 'admin', '邵金鑫', '2022-12-30 15:26:14');
INSERT INTO `leaverequest` VALUES (138253612, '事假', '1天', 16, '2022-12-26 15:14:32', '<p>最近人手缺 晚点请</p>', 'false', 1, 1, 'admin', '顾金鑫1', '2022-12-30 15:26:14');
INSERT INTO `leaverequest` VALUES (138253613, '病假', '一周以上', 4, '2022-12-26 15:22:07', '不予通过', 'false', 1, 1, 'admin', '潘 琪', '2022-12-30 15:26:14');
INSERT INTO `leaverequest` VALUES (138253614, '病假', '一周以上', 4, '2022-12-27 15:22:07', '<p>😌</p>', 'true', 1, 1, 'admin', '潘 琪', '2022-12-30 15:26:14');
INSERT INTO `leaverequest` VALUES (138253615, '事假', '1天', 4, '2022-12-27 07:16:40', '<p>不准请假😋</p>', 'false', 1, 1, 'admin', '潘 琪', '2022-12-30 15:26:14');
INSERT INTO `leaverequest` VALUES (138253616, '事假', '1天', 16, '2023-01-03 11:16:14', '<p>💚早去早回</p>', 'true', 1, 1, 'admin', '顾金鑫1', '2022-12-30 15:26:14');
INSERT INTO `leaverequest` VALUES (138253617, '事假', '1天', 1, '2023-01-06 16:38:45', '<p>😋</p>', 'true', 76, 16, 'admin', '鲁潜223', '2022-12-30 15:26:14');
INSERT INTO `leaverequest` VALUES (138253618, '事假', '1天', 1, '2023-01-07 16:11:45', '不予通过', 'false', 1, 1, 'admin', '鲁潜223', '2022-12-30 15:26:14');
INSERT INTO `leaverequest` VALUES (138253619, '事假', '1天', 2, '2023-01-12 17:40:53', '不予通过', 'false', 1, 1, 'admin', '邵金鑫', '2023-01-11 17:42:06');
INSERT INTO `leaverequest` VALUES (138253620, '事假', '1天', 1, '2023-01-17 11:17:25', '<p>测试修改😂</p>', 'true', 1, 1, 'admin', '鲁潜223', '2023-01-17 11:17:28');
INSERT INTO `leaverequest` VALUES (138253621, '事假', '1天', 16, '2023-01-17 14:11:42', '暂无答复', 'none', 1, 1, '暂无人核审', '顾金鑫1', '2023-01-17 14:11:44');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `thyme` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `specialDno` int(0) UNSIGNED NULL DEFAULT 0,
  `specialDeptId` int(0) UNSIGNED NULL DEFAULT 0,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `isAll` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `startTime` date NULL DEFAULT NULL,
  `endTime` date NULL DEFAULT NULL,
  `postMan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `postTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('春节放假通知', 0, 0, '放假时间', 'true', 1, '2023-01-05', '2023-01-06', 'admin', '2023-01-05 16:08:05');
INSERT INTO `notice` VALUES ('今日公告1', 0, 0, '<p>今天天气真好</p><div class=\"media-wrap image-wrap\"><img src=\"http://localhost:8888/images/Notice/uploadNoticeZengYu110634005HW7sRly8h8vh4v2jmrj30go0goq3p.jpg\"/></div><p></p>', 'true', 16, '2023-01-05', '2023-01-06', 'admin', '2023-01-05 16:11:11');
INSERT INTO `notice` VALUES ('公告test公告test', 1, 3, '<p>🤣公告test</p><p><u>哈哈</u></p><ul><li>你好</li></ul>', 'false', 19, '2023-01-05', '2023-01-06', 'admin', '2023-01-05 17:29:19');
INSERT INTO `notice` VALUES ('公告test公告test', 1, 1, '<p>🤣公告test</p><p><u>哈哈</u></p><ul><li>你好</li></ul>', 'false', 20, '2023-01-05', '2023-01-06', 'admin', '2023-01-05 17:29:19');
INSERT INTO `notice` VALUES ('放假通知！', 0, 0, '<p></p><div class=\"media-wrap image-wrap\"><img src=\"http://localhost:8888/images/Notice/uploadNoticeZengYu4571440a85adf-7a9c-4ab4-a22f-65f7426c7ba6.png\"/></div><p></p>', 'true', 22, '2023-01-19', '2023-01-29', 'admin', '2023-01-06 11:40:42');
INSERT INTO `notice` VALUES ('今日公告测试', 0, 0, '<p>好好干 公司不会亏待你的</p><p></p><div class=\"media-wrap image-wrap\"><img src=\"http://localhost:8888/images/Notice/uploadNoticeZengYu4543240a85adf-7a9c-4ab4-a22f-65f7426c7ba6.png\"/></div><p></p>', 'true', 27, '2023-01-07', '2023-01-15', 'admin', '2023-01-07 11:28:43');
INSERT INTO `notice` VALUES ('全体成员必看！', 0, 0, '<p></p><div class=\"media-wrap image-wrap\"><img src=\"http://localhost:8888/images/Notice/uploadNoticeZengYu107245wallhaven-vm2dwl.png\"/></div><p></p>', 'true', 28, '2023-01-11', '2023-01-12', 'admin', '2023-01-11 17:30:16');
INSERT INTO `notice` VALUES ('123123', 1, 1, '<p>201902150497曾裕</p><div class=\"media-wrap image-wrap\"><img src=\"http://localhost:8888/images/Notice/uploadNoticeZengYu253661.jpg\"/></div><p></p>', 'false', 30, '2023-01-16', '2023-01-20', 'admin', '2023-01-16 16:57:57');
INSERT INTO `notice` VALUES ('毕设公告模块展示', 0, 0, '<p></p><div class=\"media-wrap image-wrap\"><img src=\"http://localhost:8888/images/Notice/uploadNoticeZengYu107312222.jpg\"/></div><p>公告发布啦~</p>', 'true', 31, '2023-01-17', '2023-01-19', 'admin', '2023-01-17 14:59:08');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `islock` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nickname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'token',
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('admin', '12345', '0', '1', 'http://127.0.0.1:8888/images/Avatar/uploadUserAvatarZengYu43460avatar.jpg', 'UnfunLady', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImFkbWluIiwiaWF0IjoxNjYwMTgxNDg4LCJleHAiOjE2NjAyMTc0ODh9.eBx6WgQdnhvyXVZKysGgokiIF0oOlGciJ_YNkKJz_N4');
INSERT INTO `users` VALUES ('hello', 'world', '0', '0', 'https://himg.bdimg.com/sys/portrait/item/public.1.9d62a83f.ak8wyGYgvIRgx1ZEi2Lv4A.jpg', 'Luyuxi', '');

-- ----------------------------
-- Triggers structure for table clockemploye
-- ----------------------------
DROP TRIGGER IF EXISTS `isAllClock`;
delimiter ;;
CREATE TRIGGER `isAllClock` AFTER INSERT ON `clockemploye` FOR EACH ROW begin
declare cDeptCount int(255);
declare cNowCount int(255);
declare cNowCountAfter int(255);
declare isExist int(10);
declare nowDateFormat date;
set nowDateFormat=(SELECT DATE_FORMAT(new.clockTime, '%Y-%m-%d'));
set cDeptCount=(select count from depall where dno=new.dno);
set cNowCount=(select count(*) from clockemploye where dno=new.dno AND type="上午" AND (SELECT DATE_FORMAT(clockTime, '%Y-%m-%d'))=nowDateFormat);
set cNowcountAfter=(select count(*) from clockemploye where dno=new.dno AND type="下午" AND (SELECT DATE_FORMAT(clockTime, '%Y-%m-%d'))=nowDateFormat);
-- 判段部门打卡表是否有今天数据 没有则新增有则修改
-- 如果上午打卡人数等于总数 则上午全勤 下午同理
-- 如果没有则insert新的数据
set isExist=(select count(*) from clockdepall where (clockDay=nowDateFormat) AND dno=new.dno) ;
if(isExist>0) then	if(cDeptCount=cNowCount) then
	update clockdepall set allClockMorning ='true' WHERE dno=new.dno AND clockDay=nowDateFormat;
	end if;
	if(cDeptCount=cNowCountAfter) then
	update clockdepall set allClockAfter ='true' WHERE dno=new.dno AND clockDay=nowDateFormat;
	end if;
else
INSERT INTO `clockdepall`(`clockDay`, `dno`) VALUES (nowDateFormat,new.dno);
	if(cDeptCount=cNowCount) then
	update clockdepall set allClockMorning ='true' WHERE dno=new.dno AND clockDay=nowDateFormat;
	end if;
	if(cDeptCount=cNowCountAfter) then
	update clockdepall set allClockAfter ='true' WHERE dno=new.dno AND clockDay=nowDateFormat;
	end if;
end if;

end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table covidinfo
-- ----------------------------
DROP TRIGGER IF EXISTS `add_count`;
delimiter ;;
CREATE TRIGGER `add_count` AFTER INSERT ON `covidinfo` FOR EACH ROW begin
-- 接种三针疫苗情况
DECLARE covidSuccessCount int(255);
-- 没有接种的人数
DECLARE noCovid int(255);
-- 获取三针都是true的人数更新到 小组表
set covidSuccessCount=(SELECT count(*) from covidinfo  WHERE (depallid=new.depallid AND firstInoculation='true' AND secondInoculation='true' AND threeInoculation='true'));
-- 更新
update dept set countCovid=covidSuccessCount where id=new.deptid;

set noCovid=(select DISTINCT count(*) as noCovid from covidinfo,
      depall WHERE covidinfo.threeInoculation='false' AND 
      depall.dno=covidinfo.depallid AND depallid=new.depallid );

UPDATE  depall set noCovid=noCovid WHERE dno =new.depallid;


end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table covidinfo
-- ----------------------------
DROP TRIGGER IF EXISTS `delete_count`;
delimiter ;;
CREATE TRIGGER `delete_count` AFTER DELETE ON `covidinfo` FOR EACH ROW begin
-- 没有接种的人数
DECLARE oldNoCovid int(255);


set oldNoCovid=(select DISTINCT count(*) as noCovid from covidinfo,
      depall WHERE covidinfo.threeInoculation='false' AND 
      depall.dno=covidinfo.depallid AND depallid=old.depallid );


UPDATE  depall set noCovid=oldNoCovid WHERE dno =OLD.depallid;

end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table covidinfo
-- ----------------------------
DROP TRIGGER IF EXISTS `update_count`;
delimiter ;;
CREATE TRIGGER `update_count` AFTER UPDATE ON `covidinfo` FOR EACH ROW begin
-- 接种三针疫苗情况
DECLARE covidSuccessCount int(255);
DECLARE covidSuccessCountOld int(255);
-- 没有接种的人数
DECLARE oldNoCovid int(255);
DECLARE newNoCovid int(255);
-- 获取三针都是true的人数更新到 小组表
set covidSuccessCount=(SELECT count(*) from covidinfo  WHERE (deptid=new.deptid AND firstInoculation='true' AND secondInoculation='true' AND threeInoculation='true'));
-- 获取三针都是true的人数更新到 小组表
set covidSuccessCountOld=(SELECT count(*) from covidinfo  WHERE (deptid=old.deptid AND firstInoculation='true' AND secondInoculation='true' AND threeInoculation='true'));
-- 更新
update dept set countCovid=covidSuccessCount where id=new.deptid;
update dept set countCovid=covidSuccessCountOld where id=old.deptid;
set oldNoCovid=(select DISTINCT count(*) as noCovid from covidinfo,
      depall WHERE covidinfo.threeInoculation='false' AND 
      depall.dno=covidinfo.depallid AND depallid=old.depallid );
set newNoCovid=(select DISTINCT count(*) as noCovid from covidinfo,
      depall WHERE covidinfo.threeInoculation='false' AND 
      depall.dno=covidinfo.depallid AND depallid=new.depallid );

UPDATE  depall set noCovid=oldNoCovid WHERE dno =OLD.depallid;
UPDATE  depall set noCovid=newNoCovid WHERE dno =new.depallid;




end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table dept
-- ----------------------------
DROP TRIGGER IF EXISTS `update`;
delimiter ;;
CREATE TRIGGER `update` AFTER UPDATE ON `dept` FOR EACH ROW BEGIN
-- 获取部门号
DECLARE dpno int(255);
-- 获取团队总人数
DECLARE allCount int(255);
-- 存放接种完毕的人数
DECLARE allCovid int(255);
-- 获取团队总人数和接种人数对比
DECLARE deptCount int(255);
-- 总人数修改时 修改部门人数
set dpno=(select deptno from dept WHERE dept.id=new.id);
set allCount=(select  sum(dept.count) from dept where dept.deptno=dpno);
UPDATE depall SET count=allCount WHERE dno=dpno;
-- 部门团队人数修改
update depall set groupCount=(select count(*) from dept where deptno=new.deptno) WHERE dno=new.deptno;
-- 判断是否全部疫苗接种完 如果接种完 部门就设置全部接种为true
set allCovid=(select countCovid from dept where id =new.id);
set deptCount=(select count from dept where id =new.id);
if(allCovid=deptCount) then 
update depall set isAllCovid ='true' where dno=dpno;
else update depall set isAllCovid ='false' where dno=dpno;
end if;

END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table dept
-- ----------------------------
DROP TRIGGER IF EXISTS `delSalary`;
delimiter ;;
CREATE TRIGGER `delSalary` AFTER DELETE ON `dept` FOR EACH ROW begin 
delete from employesalary WHERE deptno=old.deptno AND deptid=old.id;

delete from covidinfo WHERE  deptid=old.id;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table dept
-- ----------------------------
DROP TRIGGER IF EXISTS `salary`;
delimiter ;;
CREATE TRIGGER `salary` AFTER INSERT ON `dept` FOR EACH ROW BEGIN
INSERT INTO `employesalary`(`deptno`, `deptid`) VALUES (new.deptno, new.id);
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table employee
-- ----------------------------
DROP TRIGGER IF EXISTS `triggercountadd`;
delimiter ;;
CREATE TRIGGER `triggercountadd` AFTER INSERT ON `employee` FOR EACH ROW begin
declare newcoun int(255);
-- 查询新员工的部门号
declare depaid int (255);
-- 更新小组总数
set newcoun=(select count(*) from employee,dept where employee.deptno=dept.id and employee.deptno=new.deptno);
update dept  set  count =newcoun where dept.id=new.deptno;

-- 工资细节插入新的
INSERT INTO `employesalarydetail`(`deptno`, `employno`, `employname`,`salary`) VALUES (new.deptno, new.employno, new.employname,new.employsalary);


-- 查询新员工部门号用于插入到疫苗表
set depaid=(select DISTINCT dept.deptno from dept WHERE id=new.deptno);
-- 插入数据到疫苗表
INSERT INTO `covidinfo`(`depallid`, `deptid`, `employid`, `firstInoculation`, `secondInoculation`, `threeInoculation`) VALUES (depaid, new.deptno, new.employno, 'false', 'false', 'false');
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table employee
-- ----------------------------
DROP TRIGGER IF EXISTS `triggercountupdate`;
delimiter ;;
CREATE TRIGGER `triggercountupdate` AFTER UPDATE ON `employee` FOR EACH ROW begin
declare newcoun int(255);
declare oldcoun int(255);
declare newDepallid int(255);

set newcoun=(select count(*) from employee,dept where employee.deptno=dept.id and employee.deptno=new.deptno);
update dept  set  count =newcoun where dept.id=new.deptno;

set oldcoun=(select count(*) from employee,dept where employee.deptno=dept.id and employee.deptno=old.deptno);
update dept  set  count =oldcoun where dept.id=old.deptno;

-- 删掉之前的薪资信息
DELETE from employesalarydetail WHERE employno=old.employno AND deptno=old.deptno;

-- 工资细节插入新的
INSERT INTO `employesalarydetail`(`deptno`, `employno`, `employname`,`salary`) VALUES (new.deptno, new.employno, new.employname,new.employsalary);

set newDepallid=(SELECT DISTINCT d.deptno from dept d,depall de WHERE d.id=new.deptno);
UPDATE `covidinfo` SET `depallid` = newDepallid,deptid=new.deptno  WHERE `deptid` =old.deptno AND `employid` = old.employno;

end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table employee
-- ----------------------------
DROP TRIGGER IF EXISTS `triggercountdelete`;
delimiter ;;
CREATE TRIGGER `triggercountdelete` AFTER DELETE ON `employee` FOR EACH ROW begin
declare newcoun int(255);
-- 删除后更新总数
set newcoun=(select count(*) from employee,dept where employee.deptno=dept.id and employee.deptno=old.deptno);
update dept  set  count =newcoun where dept.id=old.deptno;
-- 删除员工明细
delete from employesalarydetail where employno=old.employno AND deptno=old.deptno;
-- 删除员工疫苗表
delete from covidinfo where employid=old.employno AND deptid=old.deptno;
-- 删除员工表账号密码
delete from eusers WHERE username=old.employno;
end
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table employesalary
-- ----------------------------
DROP TRIGGER IF EXISTS `changeUse`;
delimiter ;;
CREATE TRIGGER `changeUse` AFTER UPDATE ON `employesalary` FOR EACH ROW begin

DECLARE isusesub VARCHAR(10);

set isusesub=(select isuse from employesalary where deptid=new.deptid);

UPDATE employesalarydetail SET  usePerformance=new.performance WHERE deptno =new.deptid;
update  employee  set isuse=isusesub WHERE deptno=new.deptid;
update  employesalarydetail  set isuse=isusesub WHERE deptno=new.deptid;


END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table employesub
-- ----------------------------
DROP TRIGGER IF EXISTS `changeSub`;
delimiter ;;
CREATE TRIGGER `changeSub` AFTER UPDATE ON `employesub` FOR EACH ROW begin

update  employesalary SET socialSub=new.socialSub,houseSub=new.houseSub,eatSub=new.eatSub,transSub=new.transSub,hotSub=new.hotSub;

end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
