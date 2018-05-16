/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : hotel

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2018-04-14 21:31:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hotel_customer
-- ----------------------------
DROP TABLE IF EXISTS `hotel_customer`;
CREATE TABLE `hotel_customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customerCode` varchar(20) DEFAULT NULL,
  `customerName` varchar(20) DEFAULT NULL,
  `gender` int(10) DEFAULT NULL COMMENT '性别（1:女、 2:男）',
  `customerPhone` varchar(20) DEFAULT NULL,
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
  `modifyDate` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotel_customer
-- ----------------------------

-- ----------------------------
-- Table structure for hotel_department
-- ----------------------------
DROP TABLE IF EXISTS `hotel_department`;
CREATE TABLE `hotel_department` (
  `departmentid` bigint(20) NOT NULL AUTO_INCREMENT,
  `departmentCode` varchar(20) DEFAULT NULL,
  `departmentName` varchar(20) DEFAULT NULL,
  ` departmentManager` bigint(20) DEFAULT NULL COMMENT 'userid',
  PRIMARY KEY (`departmentid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotel_department
-- ----------------------------
INSERT INTO `hotel_department` VALUES ('1', '001', '行政部', '1001');
INSERT INTO `hotel_department` VALUES ('2', '002', '财务部', '2001');
INSERT INTO `hotel_department` VALUES ('3', '003', '前厅部', '3001');
INSERT INTO `hotel_department` VALUES ('4', '004', '客房部', '4001');
INSERT INTO `hotel_department` VALUES ('5', '005', '安保部', '5001');

-- ----------------------------
-- Table structure for hotel_order
-- ----------------------------
DROP TABLE IF EXISTS `hotel_order`;
CREATE TABLE `hotel_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `orderNumber` varchar(20) DEFAULT NULL,
  `roomCode` varchar(20) DEFAULT NULL,
  `checkinDate` datetime DEFAULT NULL,
  `checkoutDate` datetime DEFAULT NULL,
  `orderCustomer` bigint(20) DEFAULT NULL,
  `entilPrice` decimal(20,2) DEFAULT NULL,
  `createBy` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifyBy` bigint(20) DEFAULT NULL,
  `modifyDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotel_order
-- ----------------------------

-- ----------------------------
-- Table structure for hotel_position
-- ----------------------------
DROP TABLE IF EXISTS `hotel_position`;
CREATE TABLE `hotel_position` (
  `positionid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `positionCode` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色编码',
  `positionName` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色名称',
  `positionWage` decimal(20,0) DEFAULT NULL,
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint(20) DEFAULT NULL COMMENT '修改者',
  `modifyDate` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`positionid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hotel_position
-- ----------------------------
INSERT INTO `hotel_position` VALUES ('1', 'admin', '系统管理员', null, '1', '2016-04-13 00:00:00', null, null);
INSERT INTO `hotel_position` VALUES ('2', 'exm', '总经理', '10000', '1', '2016-04-13 00:00:00', null, null);
INSERT INTO `hotel_position` VALUES ('3', 'gm', '部门经理', '5000', '1', '2016-04-13 00:00:00', null, null);
INSERT INTO `hotel_position` VALUES ('4', 'sv', '领班', '3500', '1', '2016-04-13 00:00:00', null, null);
INSERT INTO `hotel_position` VALUES ('5', 'norm', '普通职员', '2500', '1', '2016-04-13 00:00:00', null, null);

-- ----------------------------
-- Table structure for hotel_room
-- ----------------------------
DROP TABLE IF EXISTS `hotel_room`;
CREATE TABLE `hotel_room` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roomCode` varchar(20) DEFAULT NULL,
  `roomName` varchar(20) DEFAULT NULL,
  `roomType` bigint(20) DEFAULT NULL,
  `roomCandition` int(10) DEFAULT NULL COMMENT '1.已预订 2.使用中 3.打扫中 4空闲',
  `roomCleaner` bigint(20) DEFAULT NULL COMMENT 'userId',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotel_room
-- ----------------------------

-- ----------------------------
-- Table structure for hotel_roomtype
-- ----------------------------
DROP TABLE IF EXISTS `hotel_roomtype`;
CREATE TABLE `hotel_roomtype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `roomtypeCode` varchar(20) DEFAULT NULL,
  `roomtypeName` varchar(20) DEFAULT NULL,
  `roomMessage` varchar(255) DEFAULT NULL,
  `roomImages` varchar(255) DEFAULT NULL,
  `roomtypePrice` decimal(20,2) DEFAULT NULL,
  `createBy` bigint(20) DEFAULT NULL COMMENT 'userID',
  `createDate` datetime DEFAULT NULL,
  `modifyBy` bigint(20) DEFAULT NULL COMMENT 'userId',
  `modifyDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotel_roomtype
-- ----------------------------

-- ----------------------------
-- Table structure for hotel_user
-- ----------------------------
DROP TABLE IF EXISTS `hotel_user`;
CREATE TABLE `hotel_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `userCode` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户编码',
  `userName` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名称',
  `userPassword` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户密码',
  `gender` int(10) DEFAULT NULL COMMENT '性别（1:女、 2:男）',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机',
  `address` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地址',
  `userDepartment` bigint(20) DEFAULT NULL COMMENT '用户部门（取自部门ID）',
  `userPosition` int(10) DEFAULT NULL COMMENT '用户角色（取自角色表-角色id）',
  `wageCandition` int(10) DEFAULT NULL COMMENT '1.已发，2.未发',
  `createdBy` bigint(20) DEFAULT NULL COMMENT '创建者（userId）',
  `creationDate` datetime DEFAULT NULL COMMENT '创建时间',
  `modifyBy` bigint(20) DEFAULT NULL COMMENT '更新者（userId）',
  `modifyDate` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of hotel_user
-- ----------------------------
INSERT INTO `hotel_user` VALUES ('1', '000', '超级管理员', '1234567', '1', '1983-10-10', '13688889999', '北京市海淀区成府路207号', '1', '1', null, '1', '2013-03-21 16:52:07', null, null);
INSERT INTO `hotel_user` VALUES ('2', '001001', '李明', '0000000', '2', '1983-12-10', '13688884457', '北京市东城区前门东大街9号', '1', '2', null, '1', '0000-00-00 00:00:00', null, null);
INSERT INTO `hotel_user` VALUES ('5', '002001', '韩路彪', '0000000', '2', '1984-06-05', '18567542321', '北京市朝阳区北辰中心12号', '2', '3', null, '1', '2014-12-31 19:52:09', null, null);
INSERT INTO `hotel_user` VALUES ('6', '003001', '张华', '0000000', '1', '1983-06-15', '13544561111', '北京市海淀区学院路61号', '3', '3', null, '1', '2013-02-11 10:51:17', null, null);
INSERT INTO `hotel_user` VALUES ('7', '004001', '王洋', '0000000', '2', '1982-12-31', '13444561124', '北京市海淀区西二旗辉煌国际16层', '4', '3', null, '1', '2014-06-11 19:09:07', null, null);
INSERT INTO `hotel_user` VALUES ('8', '005001', '赵燕', '0000000', '1', '1986-03-07', '18098764545', '北京市海淀区回龙观小区10号楼', '5', '3', null, '1', '2016-04-21 13:54:07', null, null);
INSERT INTO `hotel_user` VALUES ('10', '001002', '孙磊', '0000000', '2', '1981-01-04', '13387676765', '北京市朝阳区管庄新月小区12楼', '1', '3', null, '1', '2015-05-06 10:52:07', null, null);
INSERT INTO `hotel_user` VALUES ('11', '002002', '孙兴', '0000000', '2', '1978-03-12', '13367890900', '北京市朝阳区建国门南大街10号', '2', '4', null, '1', '2016-11-09 16:51:17', null, null);
INSERT INTO `hotel_user` VALUES ('12', '002003', '张晨', '0000000', '1', '1986-03-28', '18098765434', '朝阳区管庄路口北柏林爱乐三期13号楼', '2', '5', null, '1', '2016-08-09 05:52:37', '1', '2016-04-14 14:15:36');
INSERT INTO `hotel_user` VALUES ('13', '003002', '邓超', '0000000', '2', '1981-11-04', '13689674534', '北京市海淀区北航家属院10号楼', '3', '4', null, '1', '2016-07-11 08:02:47', null, null);
INSERT INTO `hotel_user` VALUES ('14', '004003', '杨过', '0000000', '2', '1980-01-01', '13388886623', '北京市朝阳区北苑家园茉莉园20号楼', '4', '5', null, '1', '2015-02-01 03:52:07', null, null);
INSERT INTO `hotel_user` VALUES ('15', '005003', '赵敏', '0000000', '1', '1987-12-04', '18099897657', '北京市昌平区天通苑3区12号楼', '5', '5', null, '1', '2015-09-12 12:02:12', null, null);
