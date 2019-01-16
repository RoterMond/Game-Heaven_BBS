/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : ghdatabase

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-01-13 14:40:35
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
  `replyTime` datetime DEFAULT NULL,
  PRIMARY KEY (`replyId`),
  KEY `FK_Relationship_3` (`userId`),
  KEY `FK_Relationship_4` (`topicId`),
  CONSTRAINT `FK_Relationship_3` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`),
  CONSTRAINT `FK_Relationship_4` FOREIGN KEY (`topicId`) REFERENCES `topic` (`topicId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('1', '1', '1', '啊啊啊', '2019-01-12 08:48:27');
INSERT INTO `reply` VALUES ('2', '2', '1', '额额', '2019-01-12 08:48:48');
INSERT INTO `reply` VALUES ('3', '1', '1', '4', '2019-01-12 08:48:58');
INSERT INTO `reply` VALUES ('4', '2', '1', '5', '2019-01-12 08:49:00');
INSERT INTO `reply` VALUES ('5', '1', '1', '6', '2019-01-12 08:49:04');
INSERT INTO `reply` VALUES ('6', '2', '1', '7', '2019-01-12 08:49:07');
