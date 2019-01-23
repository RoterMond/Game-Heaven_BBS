/*
Navicat MySQL Data Transfer

Source Server         : MYSQL
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : ghdatabase

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-01-23 13:08:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `replyId` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) DEFAULT NULL,
  `topicId` bigint(20) DEFAULT NULL,
  `content` longtext,
  `replyTime` char(50) DEFAULT NULL,
  PRIMARY KEY (`replyId`),
  KEY `FK_Relationship_3` (`userId`),
  KEY `FK_Relationship_4` (`topicId`),
  CONSTRAINT `FK_Relationship_3` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  CONSTRAINT `FK_Relationship_4` FOREIGN KEY (`topicId`) REFERENCES `topic` (`topicId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('1', '2', '21', '很棒，想玩', 'Wed Jan 23 12:00:16 CST 2019');
INSERT INTO `reply` VALUES ('2', '2', '20', '可以哦', 'Wed Jan 23 12:00:35 CST 2019');
INSERT INTO `reply` VALUES ('3', '2', '65', '不错', 'Wed Jan 23 12:01:20 CST 2019');
INSERT INTO `reply` VALUES ('4', '2', '99', '还可以', 'Wed Jan 23 12:01:30 CST 2019');
INSERT INTO `reply` VALUES ('5', '2', '174', '喜欢这个类型的游戏', 'Wed Jan 23 12:01:40 CST 2019');
INSERT INTO `reply` VALUES ('6', '2', '146', 'war3真好玩', 'Wed Jan 23 12:01:51 CST 2019');
INSERT INTO `reply` VALUES ('7', '2', '180', 'NBA2K19垃圾', 'Wed Jan 23 12:02:00 CST 2019');
INSERT INTO `reply` VALUES ('8', '2', '189', '没玩过', 'Wed Jan 23 12:02:10 CST 2019');
INSERT INTO `reply` VALUES ('9', '2', '64', '???', 'Wed Jan 23 12:03:39 CST 2019');
INSERT INTO `reply` VALUES ('10', '2', '64', '我觉得也是', 'Wed Jan 23 12:30:41 CST 2019');
INSERT INTO `reply` VALUES ('11', '2', '26', '？', 'Wed Jan 23 12:31:12 CST 2019');
INSERT INTO `reply` VALUES ('12', '2', '173', '垃圾游戏', 'Wed Jan 23 12:38:51 CST 2019');
INSERT INTO `reply` VALUES ('13', '1', '34', '仙女座真的是垃圾游戏我佛了', 'Wed Jan 23 12:44:59 CST 2019');
INSERT INTO `reply` VALUES ('14', '1', '25', '行尸走肉', 'Wed Jan 23 12:49:46 CST 2019');
