/*
Navicat MySQL Data Transfer

Source Server         : MYSQL
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : ghdatabase

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-01-13 10:11:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `topicId` bigint(20) NOT NULL AUTO_INCREMENT,
  `boardId` int(11) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `content` longtext,
  `postTime` char(50) DEFAULT NULL,
  PRIMARY KEY (`topicId`),
  KEY `FK_Relationship_1` (`boardId`),
  KEY `FK_Relationship_2` (`userId`),
  CONSTRAINT `FK_Relationship_1` FOREIGN KEY (`boardId`) REFERENCES `board` (`boardId`),
  CONSTRAINT `FK_Relationship_2` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('1', '1', '1', 'test1', 'test11', '2019-01-12 08:49:24.000000');
INSERT INTO `topic` VALUES ('2', '2', '2', 'test2', 'test22', '2019-01-12 08:50:13.000000');
INSERT INTO `topic` VALUES ('3', '1', '3', 'test3', 'test33', '2019-01-12 08:50:17.000000');
INSERT INTO `topic` VALUES ('4', '1', '1', 'test4', 'test44', '2019-01-12 08:50:19.000000');
INSERT INTO `topic` VALUES ('5', '1', '1', 'test5', 'test55', '2019-01-12 08:50:23.000000');
INSERT INTO `topic` VALUES ('6', '2', '1', 'CSGO', 'CSGO真好', 'Sun Jan 13 09:47:24 CST 2019');
INSERT INTO `topic` VALUES ('7', '3', '5', '塞尔达传说', '塞尔达传说真好玩', 'Sun Jan 13 09:49:38 CST 2019');
INSERT INTO `topic` VALUES ('16', '1', '1', '123', '123', 'Sun Jan 13 10:05:43 CST 2019');
INSERT INTO `topic` VALUES ('17', '1', '1', '', '1', 'Sun Jan 13 10:05:46 CST 2019');
INSERT INTO `topic` VALUES ('18', '1', '1', '1', '', 'Sun Jan 13 10:07:07 CST 2019');
INSERT INTO `topic` VALUES ('19', '1', '1', '多', '// Mixin\r\n.text-overflow() {\r\n  overflow: hidden;\r\n  text-overflow: ellipsis;\r\n  white-space: nowrap;\r\n}\r\n\r\n// Usage\r\n.branch-name {\r\n  display: inline-block;\r\n  max-width: 200px;\r\n  .text-overflow();\r\n}\r\n视网膜屏幕（Retina）下的图片\r\n通过指定两个图片路径和 @1x 图片尺寸，Bootstrap 还提供了对 @2x 媒体查询的支持。 如果你的页面上有很多图片，建议在一个单独的媒体查询中手工编写针对视网膜屏幕的 CSS 代码。\r\n\r\nCopy\r\n.img-retina(@file-1x; @file-2x; @width-1x; @height-1x) {\r\n  background-image: url(\"@{file-1x}\");\r\n\r\n  @media\r\n  only screen and (-webkit-min-device-pixel-ratio: 2),\r\n  only screen and (   min--moz-device-pixel-ratio: 2),\r\n  only screen and (     -o-min-device-pixel-ratio: 2/1),\r\n  only screen and (        min-device-pixel-ratio: 2),\r\n  only screen and (                min-resolution: 192dpi),\r\n  only screen and (                min-resolution: 2dppx) {\r\n    background-image: url(\"@{file-2x}\");\r\n    background-size: @width-1x @height-1x;\r\n  }\r\n}', 'Sun Jan 13 10:07:32 CST 2019');
