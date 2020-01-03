/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : sss

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 25/10/2019 19:10:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `balance` decimal(11, 2) NULL DEFAULT NULL,
  `vip_level` int(2) NULL DEFAULT NULL,
  `create_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, '韦小宝', '138001', 10000.00, 1, '2019-08-01');
INSERT INTO `customer` VALUES (2, '刘德华', '138001', 20000.00, 1, '2019-07-09');
INSERT INTO `customer` VALUES (3, '周星星', '134567', 30000.00, 1, '2019-07-01');
INSERT INTO `customer` VALUES (4, '吴孟达', '133456', 20000.00, 2, '2019-07-02');
INSERT INTO `customer` VALUES (5, '无所谓', '10086', 1000.00, 3, '2019-08-07');
INSERT INTO `customer` VALUES (6, '大鹏', '10010', 1100.00, NULL, '2019-08-07');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `DEPTNO` bigint(20) NOT NULL AUTO_INCREMENT,
  `DNAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LOC` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`DEPTNO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO `dept` VALUES (20, 'RESEARCH', 'DALLAS');
INSERT INTO `dept` VALUES (30, 'SALES', 'CHICAGO');
INSERT INTO `dept` VALUES (40, 'OPERATIONS', 'BOSTON');

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp`  (
  `EMPNO` bigint(20) NOT NULL AUTO_INCREMENT,
  `ENAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `JOB` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MGR` bigint(20) NULL DEFAULT NULL,
  `HIREDATE` date NULL DEFAULT NULL,
  `SAL` double(7, 2) NULL DEFAULT NULL,
  `COMM` double(7, 2) NULL DEFAULT NULL,
  `DEPTNO` bigint(2) NULL DEFAULT NULL,
  PRIMARY KEY (`EMPNO`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7934 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES (7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800.00, NULL, 20);
INSERT INTO `emp` VALUES (7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600.00, 300.00, 30);
INSERT INTO `emp` VALUES (7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250.00, 500.00, 30);
INSERT INTO `emp` VALUES (7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975.00, NULL, 20);
INSERT INTO `emp` VALUES (7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250.00, 1400.00, 30);
INSERT INTO `emp` VALUES (7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850.00, NULL, 30);
INSERT INTO `emp` VALUES (7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450.00, NULL, 10);
INSERT INTO `emp` VALUES (7788, 'SCOTT', 'ANALYST', 7566, '1987-04-19', 3000.00, NULL, 20);
INSERT INTO `emp` VALUES (7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000.00, NULL, 10);
INSERT INTO `emp` VALUES (7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500.00, 0.00, 30);
INSERT INTO `emp` VALUES (7876, 'ADAMS', 'CLERK', 7788, '1987-05-23', 1100.00, NULL, 20);
INSERT INTO `emp` VALUES (7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950.00, NULL, 30);
INSERT INTO `emp` VALUES (7902, 'FORD', 'ANALYST', 7566, '1981-12-03', 3000.00, NULL, 20);
INSERT INTO `emp` VALUES (7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300.00, NULL, 10);

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salary` decimal(8, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, '张三', 1100.00);
INSERT INTO `employee` VALUES (2, '李四', 5400.00);
INSERT INTO `employee` VALUES (3, '王麻子', 2500.00);
INSERT INTO `employee` VALUES (4, '江城', 2200.00);
INSERT INTO `employee` VALUES (5, '王昭君', 8000.00);
INSERT INTO `employee` VALUES (6, '王昭君', 8000.00);
INSERT INTO `employee` VALUES (7, '王昭君', 8000.00);
INSERT INTO `employee` VALUES (10, '周瑜', 20000.00);
INSERT INTO `employee` VALUES (11, '王昭君', 8000.00);
INSERT INTO `employee` VALUES (12, '程咬金', 2000.00);
INSERT INTO `employee` VALUES (13, '王昭君', 8000.00);
INSERT INTO `employee` VALUES (14, '王昭君', 8000.00);
INSERT INTO `employee` VALUES (15, '王昭君', 8000.00);
INSERT INTO `employee` VALUES (16, '鲁班', 200.00);
INSERT INTO `employee` VALUES (17, '鲁班', 200.00);
INSERT INTO `employee` VALUES (18, '小乔', 2000.00);

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(3) NULL DEFAULT NULL,
  `salary` decimal(8, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES (1, '小可爱', 4, 10.00);
INSERT INTO `person` VALUES (2, '小可爱', 4, 10.00);
INSERT INTO `person` VALUES (3, '小哥哥', 5, 100.00);
INSERT INTO `person` VALUES (4, '小姐姐', 6, 200.00);
INSERT INTO `person` VALUES (6, '小可爱', 2, 10.00);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `productName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dir_id` bigint(11) NULL DEFAULT NULL,
  `salePrice` double(10, 2) NULL DEFAULT NULL,
  `supplier` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `brand` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cutoff` double(2, 2) NULL DEFAULT NULL,
  `costPrice` double(10, 2) NULL DEFAULT NULL,
  `picPath` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '罗技M90', 3, 90.00, '罗技', '罗技', 0.50, 35.00, '/upload/24624161-dcef-4934-a15d-600a9f69a0fb.jpg');
INSERT INTO `product` VALUES (2, '罗技M100', 3, 49.00, '罗技', '罗技', 0.90, 33.00, '/upload/1bb3c7c6-a37b-4b56-b1b2-10d7f751227e.jpg');
INSERT INTO `product` VALUES (3, '罗技M115', 3, 99.00, '罗技', '罗技', 0.60, 38.00, '/upload/d12fdeb2-a0ce-445b-8a93-a10b4f353811.jpg');
INSERT INTO `product` VALUES (4, '罗技M125', 3, 80.00, '罗技', '罗技', 0.90, 39.00, '/upload/ced55cb3-e2f4-47f1-b23d-37895a72f0fc.jpg');
INSERT INTO `product` VALUES (5, '罗技木星轨迹球', 3, 182.00, '罗技', '罗技', 0.80, 80.00, '/upload/28055b9f-6327-4897-9357-922b7bc4a496.jpg');
INSERT INTO `product` VALUES (6, '罗技火星轨迹球', 3, 349.00, '罗技', '罗技', 0.87, 290.00, NULL);
INSERT INTO `product` VALUES (7, '罗技G9X', 3, 680.00, '罗技', '罗技', 0.70, 470.00, NULL);
INSERT INTO `product` VALUES (8, '罗技M215', 2, 89.00, '罗技', '罗技', 0.79, 30.00, NULL);
INSERT INTO `product` VALUES (9, '罗技M305', 2, 119.00, '罗技', '罗技', 0.82, 48.00, NULL);
INSERT INTO `product` VALUES (10, '罗技M310', 2, 135.00, '罗技', '罗技', 0.92, 69.80, NULL);
INSERT INTO `product` VALUES (11, '罗技M505', 2, 148.00, '罗技', '罗技', 0.92, 72.00, NULL);
INSERT INTO `product` VALUES (12, '罗技M555', 2, 275.00, '罗技', '罗技', 0.88, 140.00, NULL);
INSERT INTO `product` VALUES (13, '罗技M905', 2, 458.00, '罗技', '罗技', 0.88, 270.00, NULL);
INSERT INTO `product` VALUES (14, '罗技MX1100', 2, 550.00, '罗技', '罗技', 0.76, 300.00, NULL);
INSERT INTO `product` VALUES (15, '罗技M950', 2, 678.00, '罗技', '罗技', 0.78, 320.00, NULL);
INSERT INTO `product` VALUES (16, '罗技MX Air', 2, 1299.00, '罗技', '罗技', 0.72, 400.00, NULL);
INSERT INTO `product` VALUES (17, '罗技G1', 4, 155.00, '罗技', '罗技', 0.80, 49.00, NULL);
INSERT INTO `product` VALUES (18, '罗技G3', 4, 229.00, '罗技', '罗技', 0.77, 96.00, NULL);
INSERT INTO `product` VALUES (19, '罗技G500', 4, 399.00, '罗技', '罗技', 0.88, 130.00, NULL);
INSERT INTO `product` VALUES (20, '罗技G700', 4, 699.00, '罗技', '罗技', 0.79, 278.00, NULL);
INSERT INTO `product` VALUES (24, '西瓜', 2, 20.00, '广州', '天津', 0.85, 10.00, '/upload/53553d0a-1c42-450f-9d13-f18d19dcc835.jpg');
INSERT INTO `product` VALUES (23, '西瓜', 2, 20.00, '广州', '天津', 0.85, 1.00, '/upload/2b9626de-8c69-4258-99ee-28fe280d9be7.jpg');

-- ----------------------------
-- Table structure for productdir
-- ----------------------------
DROP TABLE IF EXISTS `productdir`;
CREATE TABLE `productdir`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `dirName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` bigint(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of productdir
-- ----------------------------
INSERT INTO `productdir` VALUES (1, '鼠标', NULL);
INSERT INTO `productdir` VALUES (2, '无线鼠标', 1);
INSERT INTO `productdir` VALUES (3, '有线鼠标', 1);
INSERT INTO `productdir` VALUES (4, '游戏鼠标', 1);

-- ----------------------------
-- Table structure for productstock
-- ----------------------------
DROP TABLE IF EXISTS `productstock`;
CREATE TABLE `productstock`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(11) NULL DEFAULT NULL,
  `storeNum` int(10) NULL DEFAULT NULL,
  `lastIncomeDate` datetime(0) NULL DEFAULT NULL,
  `lastOutcomeDate` datetime(0) NULL DEFAULT NULL,
  `warningNum` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of productstock
-- ----------------------------
INSERT INTO `productstock` VALUES (1, 1, 182, '2015-03-12 20:33:00', '2015-03-12 20:33:04', 20);
INSERT INTO `productstock` VALUES (2, 2, 27, '2015-03-02 20:33:28', '2015-03-09 20:33:40', 20);
INSERT INTO `productstock` VALUES (3, 3, 89, '2015-02-28 20:34:13', '2015-03-12 20:34:19', 20);
INSERT INTO `productstock` VALUES (4, 5, 19, '2015-03-01 20:34:43', '2015-03-12 20:34:48', 20);
INSERT INTO `productstock` VALUES (5, 6, 3, '2015-02-01 20:35:12', '2015-03-02 20:35:16', 5);
INSERT INTO `productstock` VALUES (6, 7, 2, '2015-02-02 20:35:59', '2015-02-27 20:36:05', 3);
INSERT INTO `productstock` VALUES (7, 8, 120, '2015-03-12 20:36:31', '2015-03-12 20:36:33', 20);
INSERT INTO `productstock` VALUES (8, 9, 58, '2015-03-02 20:36:50', '2015-03-12 20:36:53', 20);
INSERT INTO `productstock` VALUES (9, 11, 28, '2015-03-02 20:37:12', '2015-03-12 20:37:15', 20);
INSERT INTO `productstock` VALUES (10, 12, 8, '2015-03-02 20:37:35', '2015-03-09 20:37:38', 5);
INSERT INTO `productstock` VALUES (11, 13, 3, '2015-03-02 20:37:58', '2015-03-12 20:38:01', 5);
INSERT INTO `productstock` VALUES (12, 14, 6, '2015-03-02 20:38:20', '2015-03-07 20:38:23', 5);
INSERT INTO `productstock` VALUES (13, 15, 2, '2015-02-02 20:38:38', '2015-02-24 20:38:44', 5);
INSERT INTO `productstock` VALUES (14, 16, 3, '2015-02-02 20:39:05', '2015-02-06 20:39:09', 3);
INSERT INTO `productstock` VALUES (15, 17, 49, '2015-03-02 20:39:36', '2015-03-12 20:39:40', 20);
INSERT INTO `productstock` VALUES (16, 18, 14, '2015-03-02 20:39:57', '2015-03-09 20:40:01', 10);
INSERT INTO `productstock` VALUES (17, 20, 7, '2015-03-02 20:40:22', '2015-03-03 20:40:25', 5);

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock`  (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES (2, '大冬瓜');
INSERT INTO `stock` VALUES (1, '大西瓜');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(3) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (7, '邢妍娉', 2);
INSERT INTO `student` VALUES (9, '李四', 18);
INSERT INTO `student` VALUES (10, '王五', 20);
INSERT INTO `student` VALUES (11, '刘六', 25);
INSERT INTO `student` VALUES (12, 'chenba', 25);
INSERT INTO `student` VALUES (13, '张就', 25);
INSERT INTO `student` VALUES (15, '小娉', 2);
INSERT INTO `student` VALUES (16, '小明', 12);
INSERT INTO `student` VALUES (17, '小明', 12);

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `number` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES (2, '事业部', '上海', 20);
INSERT INTO `t_department` VALUES (3, '事业部', '广州', 20);
INSERT INTO `t_department` VALUES (4, '事业部', '广州', 21);
INSERT INTO `t_department` VALUES (5, '事业部', '广州', 21);

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `productName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `salePrice` decimal(8, 2) NULL DEFAULT NULL,
  `cutoff` decimal(2, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `n`(`productName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES (1, '大西瓜', 80.00, 0.50);
INSERT INTO `t_product` VALUES (8, '小菠萝', 20.00, 0.80);
INSERT INTO `t_product` VALUES (9, '小菠萝', 20000.00, 0.80);
INSERT INTO `t_product` VALUES (10, '小菠萝', 20000.00, 0.80);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '憨憨', '123456');
INSERT INTO `user` VALUES (2, '憨批', '123456');
INSERT INTO `user` VALUES (3, '憨批', '123456');
INSERT INTO `user` VALUES (4, '邢憨憨', '123456');
INSERT INTO `user` VALUES (5, '邢憨憨', '123456');
INSERT INTO `user` VALUES (6, '小可爱', '123');
INSERT INTO `user` VALUES (9, 'admin', '123456');
INSERT INTO `user` VALUES (10, '阿卡丽', 'akali');
INSERT INTO `user` VALUES (11, '卡特琳娜', 'katelinna');
INSERT INTO `user` VALUES (12, '崔丝塔娜', 'cstn');
INSERT INTO `user` VALUES (13, '阿狸', 'ali');

SET FOREIGN_KEY_CHECKS = 1;
