/*
Navicat MySQL Data Transfer

Source Server         : ssc
Source Server Version : 50638
Source Host           : 119.29.0.70:3306
Source Database       : mcss

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2018-02-07 16:10:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cs_auth
-- ----------------------------
DROP TABLE IF EXISTS `cs_auth`;
CREATE TABLE `cs_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authName` varchar(100) DEFAULT NULL COMMENT '权限名',
  `terminalNum` int(8) DEFAULT NULL COMMENT '终端个数',
  `createName` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_auth
-- ----------------------------

-- ----------------------------
-- Table structure for cs_check
-- ----------------------------
DROP TABLE IF EXISTS `cs_check`;
CREATE TABLE `cs_check` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerName` varchar(100) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `terminalNum` int(8) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `createName` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateName` varchar(50) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_check
-- ----------------------------

-- ----------------------------
-- Table structure for cs_customer
-- ----------------------------
DROP TABLE IF EXISTS `cs_customer`;
CREATE TABLE `cs_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerName` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `accountName` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL COMMENT '使用状态（已过期/使用中/冻结中）',
  `platformId` varchar(50) DEFAULT NULL COMMENT '客户统一标识ID',
  `secretKey` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `wgNum` int(10) DEFAULT NULL,
  `createName` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updateName` varchar(50) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `transferId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_customer
-- ----------------------------
INSERT INTO `cs_customer` VALUES ('1', '闪电客服', '闪电客服', 'admin', '正常', '5a5f07eafef37ec563754aa7', 'a5e8cf7f1a6cf5c6c4e7dac573efb62f', '', '', '0', 'admin', '2018-02-05 10:57:18', null, '2018-02-05 10:57:18', '2');

-- ----------------------------
-- Table structure for cs_dept
-- ----------------------------
DROP TABLE IF EXISTS `cs_dept`;
CREATE TABLE `cs_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deptName` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `createName` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `updateName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_dept
-- ----------------------------

-- ----------------------------
-- Table structure for cs_file
-- ----------------------------
DROP TABLE IF EXISTS `cs_file`;
CREATE TABLE `cs_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `file_long` int(11) DEFAULT NULL COMMENT '文件长度（目前语音用到）',
  `file_url` varchar(500) DEFAULT NULL COMMENT '文件名又用作文件地址,唯一标识',
  `member_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `file_type` varchar(30) DEFAULT NULL COMMENT '文件类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_file
-- ----------------------------
INSERT INTO `cs_file` VALUES ('257', null, '0', '1512528509750p-60ac7329.jpg', '1', '2017-12-06 10:48:29', null, null, '2');
INSERT INTO `cs_file` VALUES ('258', null, '0', '1512528522051p-60c495d9.jpg', '1', '2017-12-06 10:48:42', null, null, '2');
INSERT INTO `cs_file` VALUES ('259', null, '0', '1512528564010p-60fe4235.jpg', '1', '2017-12-06 10:49:24', 'admin', null, '2');
INSERT INTO `cs_file` VALUES ('260', null, '0', '1512528568888p-61008476.jpg', '1', '2017-12-06 10:49:28', 'admin', null, '2');
INSERT INTO `cs_file` VALUES ('307', null, '0', '151278218964234E3458E-1A79-4C60-828D-CAFB2DDF656C-321-000000289EAE284A.jpg', '1', '2017-12-09 09:16:29', null, null, '2');

-- ----------------------------
-- Table structure for cs_finance
-- ----------------------------
DROP TABLE IF EXISTS `cs_finance`;
CREATE TABLE `cs_finance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerName` varchar(255) DEFAULT NULL,
  `money` double(12,0) DEFAULT NULL,
  `payPackage` varchar(50) DEFAULT NULL,
  `payDay` int(10) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_finance
-- ----------------------------

-- ----------------------------
-- Table structure for cs_loginLog
-- ----------------------------
DROP TABLE IF EXISTS `cs_loginLog`;
CREATE TABLE `cs_loginLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) DEFAULT NULL,
  `lastLogintime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `loginuser` varchar(30) DEFAULT NULL,
  `loginIp` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_loginLog
-- ----------------------------

-- ----------------------------
-- Table structure for cs_parameter
-- ----------------------------
DROP TABLE IF EXISTS `cs_parameter`;
CREATE TABLE `cs_parameter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) DEFAULT NULL,
  `sysvalue` varchar(18000) DEFAULT NULL,
  `syskey` varchar(255) DEFAULT NULL,
  `remark` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_parameter
-- ----------------------------
INSERT INTO `cs_parameter` VALUES ('6', 'area', '广州', 'gz', null);
INSERT INTO `cs_parameter` VALUES ('7', 'area', '深圳', 'sz', null);
INSERT INTO `cs_parameter` VALUES ('8', 'customerIp', 'http://120.79.20.53:888', '1', null);
INSERT INTO `cs_parameter` VALUES ('10', 'version', '1.0.2', 'pre', '系统版本');

-- ----------------------------
-- Table structure for cs_popedom
-- ----------------------------
DROP TABLE IF EXISTS `cs_popedom`;
CREATE TABLE `cs_popedom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(30) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  `popedomUrl` varchar(255) DEFAULT NULL COMMENT '树路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_popedom
-- ----------------------------

-- ----------------------------
-- Table structure for cs_role
-- ----------------------------
DROP TABLE IF EXISTS `cs_role`;
CREATE TABLE `cs_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(30) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_role
-- ----------------------------
INSERT INTO `cs_role` VALUES ('1', 'admin', 'admin', '2018-02-04 11:59:47', 'admin', null, null);

-- ----------------------------
-- Table structure for cs_role_popedom
-- ----------------------------
DROP TABLE IF EXISTS `cs_role_popedom`;
CREATE TABLE `cs_role_popedom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `popedomId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_role_popedom
-- ----------------------------

-- ----------------------------
-- Table structure for cs_terminal
-- ----------------------------
DROP TABLE IF EXISTS `cs_terminal`;
CREATE TABLE `cs_terminal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `terminalNo` varchar(100) DEFAULT NULL,
  `terminalName` varchar(50) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `controllerIP` varchar(50) DEFAULT NULL,
  `serverAreaId` int(11) DEFAULT NULL,
  `weixinNo` varchar(255) DEFAULT NULL COMMENT '微信号',
  `userId` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_terminal
-- ----------------------------

-- ----------------------------
-- Table structure for cs_transfer
-- ----------------------------
DROP TABLE IF EXISTS `cs_transfer`;
CREATE TABLE `cs_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transferIp` varchar(40) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `createName` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updateName` varchar(50) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_transfer
-- ----------------------------

-- ----------------------------
-- Table structure for cs_user
-- ----------------------------
DROP TABLE IF EXISTS `cs_user`;
CREATE TABLE `cs_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL COMMENT '账户名',
  `pwd` varchar(100) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL COMMENT '角色id',
  `lastLoginTime` datetime DEFAULT NULL,
  `createName` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateName` varchar(50) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_user
-- ----------------------------
INSERT INTO `cs_user` VALUES ('1', 'admin', '202CB962AC59075B964B07152D234B70', '1', '2018-02-05 09:22:49', 'admin', '2017-12-20 18:09:25', null, null);

-- ----------------------------
-- Table structure for cs_words
-- ----------------------------
DROP TABLE IF EXISTS `cs_words`;
CREATE TABLE `cs_words` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `accountName` varchar(50) DEFAULT NULL COMMENT '账号',
  `userName` varchar(50) DEFAULT NULL COMMENT '姓名',
  `wxAccount` varchar(50) DEFAULT NULL COMMENT '微信账号',
  `words` varchar(50) DEFAULT NULL COMMENT '违规敏感词',
  `createTime` datetime DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_words
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
