/*
Navicat MySQL Data Transfer

Source Server         : MYSQL
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : ghdatabase

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-01-13 10:11:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for board
-- ----------------------------
DROP TABLE IF EXISTS `board`;
CREATE TABLE `board` (
  `boardId` int(11) NOT NULL AUTO_INCREMENT,
  `boardName` varchar(200) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`boardId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of board
-- ----------------------------
INSERT INTO `board` VALUES ('1', '恐怖类', '恐怖类的游戏');
INSERT INTO `board` VALUES ('2', '射击类', '射击类的游戏');
INSERT INTO `board` VALUES ('3', '动作冒险类', '动作冒险类的游戏');
INSERT INTO `board` VALUES ('4', '角色扮演类', '角色扮演类的游戏');
INSERT INTO `board` VALUES ('5', '策略类', '策略类的游戏');
INSERT INTO `board` VALUES ('6', '赛车类', '赛车类的游戏');
INSERT INTO `board` VALUES ('7', '体育类', '体育类的游戏');
INSERT INTO `board` VALUES ('8', '格斗对打类', '格斗对打类的游戏');
