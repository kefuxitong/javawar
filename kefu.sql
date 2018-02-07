/*
Navicat MySQL Data Transfer

Source Server         : 119.29.0.70
Source Server Version : 50638
Source Host           : 119.29.0.70:3306
Source Database       : kefu

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2018-02-05 08:59:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cs_admin
-- ----------------------------
DROP TABLE IF EXISTS `cs_admin`;
CREATE TABLE `cs_admin` (
  `id` int(11) NOT NULL,
  `member_id` int(11) DEFAULT NULL,
  `admin_role` varchar(50) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `create_name` varchar(50) DEFAULT NULL,
  `admin_type` int(6) DEFAULT NULL COMMENT '角色类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_anchor_point
-- ----------------------------
DROP TABLE IF EXISTS `cs_anchor_point`;
CREATE TABLE `cs_anchor_point` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `county` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_autoreply
-- ----------------------------
DROP TABLE IF EXISTS `cs_autoreply`;
CREATE TABLE `cs_autoreply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `word` varchar(30) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(30) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_autoreply_log
-- ----------------------------
DROP TABLE IF EXISTS `cs_autoreply_log`;
CREATE TABLE `cs_autoreply_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_collocation
-- ----------------------------
DROP TABLE IF EXISTS `cs_collocation`;
CREATE TABLE `cs_collocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `sound` int(6) DEFAULT NULL,
  `autobypass` int(6) DEFAULT NULL,
  `dcSend` int(6) DEFAULT NULL,
  `sendSet` int(6) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  `autoreplyStatus` int(6) DEFAULT NULL,
  `unmatched` int(6) DEFAULT NULL,
  `replyContent` varchar(255) DEFAULT NULL,
  `delay` int(6) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_customer
-- ----------------------------
DROP TABLE IF EXISTS `cs_customer`;
CREATE TABLE `cs_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(30) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `customerTypeId` int(11) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(30) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_customer_set
-- ----------------------------
DROP TABLE IF EXISTS `cs_customer_set`;
CREATE TABLE `cs_customer_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delBlackList` int(11) DEFAULT NULL,
  `autoRefuse` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_customer_type
-- ----------------------------
DROP TABLE IF EXISTS `cs_customer_type`;
CREATE TABLE `cs_customer_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_customer_weixin
-- ----------------------------
DROP TABLE IF EXISTS `cs_customer_weixin`;
CREATE TABLE `cs_customer_weixin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) DEFAULT NULL,
  `weixinId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `peopleCount` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_device
-- ----------------------------
DROP TABLE IF EXISTS `cs_device`;
CREATE TABLE `cs_device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `DeviceId` varchar(1000) DEFAULT NULL,
  `DeviceName` varchar(255) DEFAULT NULL,
  `DeviceType` varchar(1000) DEFAULT NULL,
  `weixinId` int(11) DEFAULT NULL COMMENT '微信表id',
  `UserId` int(11) DEFAULT NULL COMMENT '用户表id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_drama
-- ----------------------------
DROP TABLE IF EXISTS `cs_drama`;
CREATE TABLE `cs_drama` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(30) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_drama_role
-- ----------------------------
DROP TABLE IF EXISTS `cs_drama_role`;
CREATE TABLE `cs_drama_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dramaId` int(11) DEFAULT NULL,
  `scriptRoleId` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(30) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_enshrine
-- ----------------------------
DROP TABLE IF EXISTS `cs_enshrine`;
CREATE TABLE `cs_enshrine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `type` int(30) DEFAULT NULL,
  `memberId` int(11) DEFAULT NULL,
  `formWeixinId` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_expand_datum
-- ----------------------------
DROP TABLE IF EXISTS `cs_expand_datum`;
CREATE TABLE `cs_expand_datum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workAccountid` varchar(50) DEFAULT NULL,
  `weixinid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `nickName` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `birthday` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `qq` varchar(50) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `customerType` varchar(50) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_expand_datum_more
-- ----------------------------
DROP TABLE IF EXISTS `cs_expand_datum_more`;
CREATE TABLE `cs_expand_datum_more` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `edId` int(11) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `createName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `groupId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_friends_list
-- ----------------------------
DROP TABLE IF EXISTS `cs_friends_list`;
CREATE TABLE `cs_friends_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `phones` text,
  `status` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_friends_user
-- ----------------------------
DROP TABLE IF EXISTS `cs_friends_user`;
CREATE TABLE `cs_friends_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `friendsListId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_group
-- ----------------------------
DROP TABLE IF EXISTS `cs_group`;
CREATE TABLE `cs_group` (
  `id` int(11) NOT NULL,
  `group_name` varchar(50) DEFAULT NULL COMMENT '组名',
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人',
  `member_num` int(8) DEFAULT NULL COMMENT '成员数量',
  `update_name` varchar(50) DEFAULT NULL COMMENT '修改人',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_karakter
-- ----------------------------
DROP TABLE IF EXISTS `cs_karakter`;
CREATE TABLE `cs_karakter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dramaId` varchar(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `remark` varchar(30) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(30) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_label
-- ----------------------------
DROP TABLE IF EXISTS `cs_label`;
CREATE TABLE `cs_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `labelGroupId` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(30) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_label_group
-- ----------------------------
DROP TABLE IF EXISTS `cs_label_group`;
CREATE TABLE `cs_label_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(30) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_member
-- ----------------------------
DROP TABLE IF EXISTS `cs_member`;
CREATE TABLE `cs_member` (
  `id` int(11) NOT NULL,
  `room_id` varchar(2000) DEFAULT NULL COMMENT '房间ID',
  `account_id` varchar(20) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `bind_status` varchar(8) DEFAULT NULL,
  `bind_group_id` int(11) DEFAULT NULL,
  `bind_group_name` varchar(20) DEFAULT NULL,
  `bind_room_num` varchar(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `bind_time` datetime DEFAULT NULL,
  `create_name` varchar(50) DEFAULT NULL,
  `bind_name` varchar(50) DEFAULT NULL,
  `fixed_position_ids` varchar(50) DEFAULT NULL COMMENT '定位城市',
  `lon_and_lat` varchar(255) DEFAULT NULL COMMENT '经纬度',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_menu
-- ----------------------------
DROP TABLE IF EXISTS `cs_menu`;
CREATE TABLE `cs_menu` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL COMMENT '父节点id',
  `menu_name` varchar(100) DEFAULT NULL COMMENT '菜单名',
  `menu_url` varchar(255) DEFAULT NULL COMMENT '菜单地址',
  `admin_type` int(6) DEFAULT NULL COMMENT '权限类型1管理员，2普通成员',
  `create_name` varchar(50) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_message
-- ----------------------------
DROP TABLE IF EXISTS `cs_message`;
CREATE TABLE `cs_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(1000) DEFAULT NULL,
  `memberId` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL COMMENT '语音标题',
  `mesGroupId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_message_group
-- ----------------------------
DROP TABLE IF EXISTS `cs_message_group`;
CREATE TABLE `cs_message_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupName` varchar(50) DEFAULT NULL,
  `groupType` varchar(50) DEFAULT NULL,
  `memberId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_operate_log
-- ----------------------------
DROP TABLE IF EXISTS `cs_operate_log`;
CREATE TABLE `cs_operate_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workAccountId` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `content` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_order
-- ----------------------------
DROP TABLE IF EXISTS `cs_order`;
CREATE TABLE `cs_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` double DEFAULT NULL,
  `way` int(11) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `wxName` varchar(30) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
)  ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_phones
-- ----------------------------
DROP TABLE IF EXISTS `cs_phones`;
CREATE TABLE `cs_phones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `friendsListId` int(11) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_popedom
-- ----------------------------
INSERT INTO `cs_popedom` VALUES ('1', '1', '朋友圈', '3', '2018-01-26 14:29:38', 'admin', null, null, null);
INSERT INTO `cs_popedom` VALUES ('2', '2', '添加好友', '4', '2018-01-26 14:30:14', 'admin', null, null, null);
INSERT INTO `cs_popedom` VALUES ('3', '3', '剧本功能', '5', '2018-01-26 14:30:42', 'admin', null, null, null);
INSERT INTO `cs_popedom` VALUES ('4', '4', '自动回复', '6', '2018-01-26 14:31:11', 'admin', null, null, null);
INSERT INTO `cs_popedom` VALUES ('5', '5', '建群功能', '7', '2018-01-26 14:31:39', 'admin', null, null, null);
INSERT INTO `cs_popedom` VALUES ('6', '6', '推送助手', '8', '2018-01-26 14:32:18', 'admin', null, null, null);
INSERT INTO `cs_popedom` VALUES ('7', '7', '僵尸粉管理', '9', '2018-01-26 14:23:43', 'admin', null, null, '');
INSERT INTO `cs_popedom` VALUES ('8', '8', '客户列表', '10', '2018-01-26 14:20:17', 'admin', null, null, null);
INSERT INTO `cs_popedom` VALUES ('9', '9', '客户分析', '11', '2018-01-26 14:20:48', 'admin', null, null, null);
INSERT INTO `cs_popedom` VALUES ('10', '10', '客户类型', '12', '2018-01-26 14:22:23', 'admin', null, null, null);
INSERT INTO `cs_popedom` VALUES ('11', '11', '客服列表', '13', '2018-02-02 16:01:19', 'admin', null, null, null);
INSERT INTO `cs_popedom` VALUES ('12', '12', '客服统计', '14', '2018-01-26 14:07:51', 'admin', null, null, null);
INSERT INTO `cs_popedom` VALUES ('13', '13', '定位点管理', '15', '2018-01-26 12:14:13', 'admin', null, null, null);
INSERT INTO `cs_popedom` VALUES ('14', '14', '好友导入', '16', '2018-01-26 12:17:36', 'admin', null, null, null);
INSERT INTO `cs_popedom` VALUES ('15', '15', '风控管理', '17', '2018-01-26 12:23:26', 'admin', null, null, null);
INSERT INTO `cs_popedom` VALUES ('16', '16', '角色管理', '18', '2018-01-26 11:54:40', 'admin', null, null, null);
INSERT INTO `cs_popedom` VALUES ('17', '17', '部门列表', '19', '2017-12-26 14:18:15', 'admin', null, null, '');
INSERT INTO `cs_popedom` VALUES ('18', '18', '账号管理', '20', '2018-01-26 12:09:16', 'admin', null, null, null);

-- ----------------------------
-- Table structure for cs_position
-- ----------------------------
DROP TABLE IF EXISTS `cs_position`;
CREATE TABLE `cs_position` (
  `id` int(11) NOT NULL,
  `remark_name` varchar(50) DEFAULT NULL COMMENT '备注名',
  `province` varchar(20) DEFAULT NULL COMMENT '省',
  `city` varchar(50) DEFAULT NULL COMMENT '市',
  `county` varchar(50) DEFAULT NULL COMMENT '县镇',
  `lon_and_lat` varchar(255) DEFAULT NULL COMMENT '经纬度',
  `create_time` datetime DEFAULT NULL,
  `create_name` varchar(50) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_rank
-- ----------------------------
DROP TABLE IF EXISTS `cs_rank`;
CREATE TABLE `cs_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(30) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_role
-- ----------------------------
INSERT INTO `cs_role` VALUES ('1', '超级管理员', null, null, null, '2018-02-03 10:30:57', 'admin');

-- ----------------------------
-- Table structure for cs_role_popedom
-- ----------------------------
DROP TABLE IF EXISTS `cs_role_popedom`;
CREATE TABLE `cs_role_popedom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `popedomId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_role_popedom
-- ----------------------------
INSERT INTO `cs_role_popedom` VALUES ('1', '1', '1');
INSERT INTO `cs_role_popedom` VALUES ('2', '1', '2');
INSERT INTO `cs_role_popedom` VALUES ('3', '1', '3');
INSERT INTO `cs_role_popedom` VALUES ('4', '1', '4');
INSERT INTO `cs_role_popedom` VALUES ('5', '1', '5');
INSERT INTO `cs_role_popedom` VALUES ('6', '1', '6');
INSERT INTO `cs_role_popedom` VALUES ('7', '1', '7');
INSERT INTO `cs_role_popedom` VALUES ('8', '1', '8');
INSERT INTO `cs_role_popedom` VALUES ('9', '1', '9');
INSERT INTO `cs_role_popedom` VALUES ('10', '1', '10');
INSERT INTO `cs_role_popedom` VALUES ('11', '1', '11');
INSERT INTO `cs_role_popedom` VALUES ('12', '1', '12');
INSERT INTO `cs_role_popedom` VALUES ('13', '1', '13');
INSERT INTO `cs_role_popedom` VALUES ('14', '1', '14');
INSERT INTO `cs_role_popedom` VALUES ('15', '1', '15');
INSERT INTO `cs_role_popedom` VALUES ('16', '1', '16');
INSERT INTO `cs_role_popedom` VALUES ('17', '1', '17');
INSERT INTO `cs_role_popedom` VALUES ('18', '1', '18');

-- ----------------------------
-- Table structure for cs_script_role
-- ----------------------------
DROP TABLE IF EXISTS `cs_script_role`;
CREATE TABLE `cs_script_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dramaId` int(11) DEFAULT NULL,
  `karakterId` int(11) DEFAULT NULL,
  `executeId` int(11) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `delay` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(30) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_sensitiveword
-- ----------------------------
DROP TABLE IF EXISTS `cs_sensitiveword`;
CREATE TABLE `cs_sensitiveword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` text,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_unduelog
-- ----------------------------
DROP TABLE IF EXISTS `cs_unduelog`;
CREATE TABLE `cs_unduelog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workAccountId` int(11) DEFAULT NULL,
  `word` varchar(30) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_user
-- ----------------------------
DROP TABLE IF EXISTS `cs_user`;
CREATE TABLE `cs_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(50) DEFAULT NULL COMMENT '账户名',
  `pwd` varchar(100) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `roleId` int(11) DEFAULT NULL COMMENT '角色id',
  `userType` varchar(30) DEFAULT NULL COMMENT '员工类型',
  `deptId` int(11) DEFAULT NULL COMMENT '员工部门',
  `phone` varchar(30) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `createName` varchar(50) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateName` varchar(50) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `TerminalNum` int(8) DEFAULT NULL COMMENT '终端数量',
  `onlineStatus` varchar(30) DEFAULT NULL,
  `friendCount` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cs_user
-- ----------------------------
INSERT INTO `cs_user` VALUES ('1', 'admin', '202CB962AC59075B964B07152D234B70', '超级管理员', '1', '正式工', '0', '', '', '', 'admin', '2018-02-05 10:31:19', null, null, null, null, '0');

-- ----------------------------
-- Table structure for cs_weixin
-- ----------------------------
DROP TABLE IF EXISTS `cs_weixin`;
CREATE TABLE `cs_weixin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `HeadimgUrl` varchar(500) DEFAULT NULL,
  `LongServer` varchar(50) DEFAULT NULL,
  `Nickname` varchar(30) DEFAULT NULL,
  `Sex` int(4) DEFAULT NULL,
  `ShortServer` varchar(30) DEFAULT NULL,
  `Status` int(4) DEFAULT NULL,
  `Wxid` varchar(100) DEFAULT NULL,
  `robotId` varchar(100) DEFAULT NULL,
  `vUser` varchar(4000) DEFAULT NULL,
  `UUID` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `deviceId` varchar(1000) DEFAULT NULL,
  `deviceName` varchar(255) DEFAULT NULL,
  `deviceType` varchar(1000) DEFAULT NULL,
  `controllerIp` varchar(100) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `loginType` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_work_account
-- ----------------------------
DROP TABLE IF EXISTS `cs_work_account`;
CREATE TABLE `cs_work_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `wxName` varchar(50) DEFAULT NULL,
  `psw` varchar(50) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `loginway` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `createName` varchar(30) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `updateName` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for cs_zombie_fan
-- ----------------------------
DROP TABLE IF EXISTS `cs_zombie_fan`;
CREATE TABLE `cs_zombie_fan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chatStatus` int(11) DEFAULT NULL,
  `chat` int(11) DEFAULT NULL,
  `laudStatus` int(11) DEFAULT NULL,
  `laud` int(11) DEFAULT NULL,
  `consumeStatus` int(11) DEFAULT NULL,
  `consume` int(11) DEFAULT NULL,
  `rule` int(11) DEFAULT NULL,
  `dispose` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
