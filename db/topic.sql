/*
Navicat MySQL Data Transfer

Source Server         : MYSQL
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : ghdatabase

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2019-01-16 18:53:36
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
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES ('20', '1', '1', '生化危机系列1-2-3-4-5-6-7 ', '链接：https://pan.baidu.com/s/1G5jS_eNlWJ3l11kYkeCxTw 密码：efce', 'Mon Jan 14 21:35:34 CST 2019');
INSERT INTO `topic` VALUES ('21', '1', '1', '逃生系列（5.20G）', '链接：https://pan.baidu.com/s/1cSKyrI9OVzhF8xWSjFXvSg 密码：7e6c', 'Mon Jan 14 21:35:45 CST 2019');
INSERT INTO `topic` VALUES ('22', '1', '1', '消逝的光芒系列 （31G）（打僵尸）', '链接：https://pan.baidu.com/s/1rSNGgBYNQgZhACBrI2ln_w 密码：34yw', 'Mon Jan 14 21:35:54 CST 2019');
INSERT INTO `topic` VALUES ('23', '1', '1', '掠食 （18.51G）', '链接：https://pan.baidu.com/s/1HNiE_k4AqqEcuMPjIzu53A 密码：r82g', 'Mon Jan 14 21:36:06 CST 2019');
INSERT INTO `topic` VALUES ('24', '1', '1', '心灵杀手 （6.07G) ', '链接：https://pan.baidu.com/s/1Dx3YgJ3OUUNXHIaP8XJ-Rw 密码：20sz', 'Mon Jan 14 21:36:22 CST 2019');
INSERT INTO `topic` VALUES ('25', '1', '1', '行尸走肉全5章', '链接：https://pan.baidu.com/s/119FYWYhJ1PoKUW87unXyNw 密码：xyrn', 'Mon Jan 14 21:36:35 CST 2019');
INSERT INTO `topic` VALUES ('26', '2', '1', '正当防卫3 (47G)   ', '链接：https://pan.baidu.com/s/117V3-CHbgi2kbSr8AU834Q 密码：dncb', 'Mon Jan 14 21:37:24 CST 2019');
INSERT INTO `topic` VALUES ('27', '2', '1', '狙击精英2 （如果是WIN10不要下2，不兼容）（5.99G）', '链接：https://pan.baidu.com/s/1796FXxGHEAp2Uq7jTMEnjg 密码：h5w4', 'Mon Jan 14 21:37:36 CST 2019');
INSERT INTO `topic` VALUES ('28', '2', '1', '狙击精英3（18.25G）', '链接：https://pan.baidu.com/s/1U4QZwO_AvAQ5fLaSFUab-w 密码：wtu1', 'Mon Jan 14 21:37:45 CST 2019');
INSERT INTO `topic` VALUES ('29', '2', '1', '狙击精英4（50.33G）', '链接：https://pan.baidu.com/s/1_oSMTZ8pQPsBA07VD3Luqg 密码：v133\r\n', 'Mon Jan 14 21:38:00 CST 2019');
INSERT INTO `topic` VALUES ('30', '2', '1', '狙击手系列 1-2-3（狙击手射击游戏 ）(53G)', '链接：https://pan.baidu.com/s/1WdKEU-78Z_Ta5rvaOP68Jg 密码：kzw6', 'Mon Jan 14 21:38:10 CST 2019');
INSERT INTO `topic` VALUES ('31', '2', '1', '使命召唤14（安装码999988）(37G)', '链接：https://pan.baidu.com/s/1slHxIUnszzSmR9A2m1ty_w 密码：fcp9', 'Mon Jan 14 21:38:20 CST 2019');
INSERT INTO `topic` VALUES ('32', '2', '1', '使命召唤其他系列 1-13  (415G)', '链接：https://pan.baidu.com/s/1Me19uXmzhaPvClGfZiu0EQ 密码：tijz', 'Mon Jan 14 21:38:30 CST 2019');
INSERT INTO `topic` VALUES ('33', '2', '1', '质量效应系列 1-2-3  (34G)（RPG单机游戏）', '游戏安装米玛：632584（重要！） \r\n 安装路径不要用中文，用英文\r\n链接：https://pan.baidu.com/s/1LXCIvEiRRZQU-7m5OfeUjw 密码：d5qf\r\n', 'Mon Jan 14 21:38:49 CST 2019');
INSERT INTO `topic` VALUES ('34', '2', '1', '仙女座  (50G） ', '装路径不要用中文，用英文\r\n链接：https://pan.baidu.com/s/1FGMKqid_ADiSBy_-MZuzGw 密码：mcp2\r\n', 'Mon Jan 14 21:39:07 CST 2019');
INSERT INTO `topic` VALUES ('35', '2', '1', '孤岛惊魂系列 （65G）   （第一人称射击游戏）', '链接：https://pan.baidu.com/s/1KZVKSQJeWLuKVxiIxBtOpw 密码：muqt', 'Mon Jan 14 21:39:17 CST 2019');
INSERT INTO `topic` VALUES ('36', '2', '1', '孤岛危机系列 （27G） （第一人称射击游戏）', '链接：https://pan.baidu.com/s/19abggAOJ_rI8dDDoqpal-g 密码：vbrd', 'Mon Jan 14 21:39:26 CST 2019');
INSERT INTO `topic` VALUES ('37', '2', '1', '茶杯头 （2.34G）   ', '链接：https://pan.baidu.com/s/1_Sh59hvKsePDgDal2yZOWA 密码：t8q1', 'Mon Jan 14 21:39:35 CST 2019');
INSERT INTO `topic` VALUES ('38', '2', '1', '战地系列 （136G）（第一人称射击游戏）单机新手必玩', '链接：https://pan.baidu.com/s/19PUHDeVrknTcN4YFq-9fow 密码：9d85', 'Mon Jan 14 21:39:47 CST 2019');
INSERT INTO `topic` VALUES ('39', '2', '1', '幽灵行动系列 （现代战术射击游戏）（15G）', '链接：https://pan.baidu.com/s/1UG4ILc0UAnSAs8sPGxK03w 密码：mi5d', 'Mon Jan 14 21:40:06 CST 2019');
INSERT INTO `topic` VALUES ('40', '2', '1', '反恐精英CS系列（614.48M）', '链接：https://pan.baidu.com/s/1fH8gleQrl2P0ekz5JeFA1w 密码：iv01', 'Mon Jan 14 21:40:14 CST 2019');
INSERT INTO `topic` VALUES ('41', '2', '1', '生化奇兵系列 （射击类游戏）（64G）', '链接：https://pan.baidu.com/s/1LQom3V2KP5FBqbTAK7rd0g 密码：c3ro', 'Mon Jan 14 21:40:23 CST 2019');
INSERT INTO `topic` VALUES ('42', '2', '1', '荣誉勋章系列 （射击类游戏）（29G）', '链接：https://pan.baidu.com/s/1MzEv1Zk3nfhq-jD29-IGcw 密码：w9hw', 'Mon Jan 14 21:40:32 CST 2019');
INSERT INTO `topic` VALUES ('43', '2', '1', '极度恐慌系列 （射击类型的心理惊悚游戏）（18G）不支持W10', '链接：https://pan.baidu.com/s/1nx9dpMt0RhROkJuZRwgs_w 密码：wf46', 'Mon Jan 14 21:40:42 CST 2019');
INSERT INTO `topic` VALUES ('44', '2', '1', '孤胆枪手系列（俯视角射击游戏，老游戏，WIN10不推荐下）（1G）', '链接：https://pan.baidu.com/s/132r6ydlZjkRr8N3ZcXgQBQ 密码：owgp', 'Mon Jan 14 21:40:51 CST 2019');
INSERT INTO `topic` VALUES ('45', '2', '1', '地狱潜者（6.29G）（俯视角射击）（6.29G） ', '链接：https://pan.baidu.com/s/1vganmbYahV51maozTLrSPw 密码：511f', 'Mon Jan 14 21:40:59 CST 2019');
INSERT INTO `topic` VALUES ('46', '2', '1', '地铁最后的曙光：回归（8.30G）（第一人称射击）', '链接：https://pan.baidu.com/s/1Aw7RPjScPZTHdHggvBk-QQ 密码：c1vw', 'Mon Jan 14 21:41:07 CST 2019');
INSERT INTO `topic` VALUES ('47', '2', '1', '绝对征服（18.38G）（动作射击）', '链接：https://pan.baidu.com/s/1fwCEK0514eKLupeLqTebmQ 密码：3tgl', 'Mon Jan 14 21:41:18 CST 2019');
INSERT INTO `topic` VALUES ('48', '2', '1', '马克思佩恩3（30.38G）（第三人称射击类）', '链接：https://pan.baidu.com/s/19ZIY8uJ-hngv2P5-YJ5hTg 密码：9p8l', 'Mon Jan 14 21:41:30 CST 2019');
INSERT INTO `topic` VALUES ('49', '2', '1', '收获日2（15.66G）（第一人称射击游戏）', '链接：https://pan.baidu.com/s/1gH_qb4y3l9nE60jZ2e0WcQ 密码：o7vq', 'Mon Jan 14 21:41:43 CST 2019');
INSERT INTO `topic` VALUES ('50', '2', '1', '疯狂MAX（32.95G）（第三人称射击，角色扮演）（32.95G）', '链接：https://pan.baidu.com/s/1xRLOvsBTjb5zbXvQLGMUSA 密码：wo2v', 'Mon Jan 14 21:42:00 CST 2019');
INSERT INTO `topic` VALUES ('51', '2', '1', '细胞分裂6（17.08G）(潜入射击类游戏)', '链接：https://pan.baidu.com/s/1cOCOsGHIu2FDlBthj7Tgog 密码：o8lo', 'Mon Jan 14 21:42:07 CST 2019');
INSERT INTO `topic` VALUES ('52', '2', '1', '毁灭战士4（51.35G）（爽快第一人称射击类）', '链接：https://pan.baidu.com/s/15Ok0R7YrkyIK8k6zsM5mKg 密码：37vx', 'Mon Jan 14 21:42:17 CST 2019');
INSERT INTO `topic` VALUES ('53', '2', '1', '量子破碎（34.69G）（第三人称射击类，无真人电影）', '链接：https://pan.baidu.com/s/1AuNb3zZS6amTvflhD-EdsA 密码：1bsn', 'Mon Jan 14 21:42:25 CST 2019');
INSERT INTO `topic` VALUES ('54', '2', '1', '影子武士（14.80G）（第一人称射击）', '链接：https://pan.baidu.com/s/1qgjzxUuHiWu6TrnYgEzJ-A 密码：qz5w', 'Mon Jan 14 21:42:38 CST 2019');
INSERT INTO `topic` VALUES ('55', '2', '1', '光晕：斯巴达突袭（1.27G）（第一人俯视角射击类）', '链接：https://pan.baidu.com/s/1cD-BccZmbBNn1AbZaiwufQ 密码：n3wn', 'Mon Jan 14 21:42:47 CST 2019');
INSERT INTO `topic` VALUES ('56', '2', '1', '光晕：斯巴达进攻（1.25G）（俯视角射击）', '链接：https://pan.baidu.com/s/1eU8GcPwfE_uADUOmqqCvDw 密码：zvko', 'Mon Jan 14 21:42:56 CST 2019');
INSERT INTO `topic` VALUES ('57', '2', '1', '泰坦陨落2（48.67G）（第一人称射击）', '链接：https://pan.baidu.com/s/1KSDjEe-VzfJ9qHZipvB6RA 密码：zhcb', 'Mon Jan 14 21:43:04 CST 2019');
INSERT INTO `topic` VALUES ('58', '2', '1', '阿廖欣的枪（3.69G）（第三人称射击）', '链接：https://pan.baidu.com/s/1h4TZtVOqb2tsPjFZJG083Q 密码：os4b', 'Mon Jan 14 21:43:13 CST 2019');
INSERT INTO `topic` VALUES ('59', '2', '1', '第八区偏见（2.90G称射击）', '链接：https://pan.baidu.com/s/1Gc2M-r0CrupLK95G34v5HQ 密码：2x67', 'Mon Jan 14 21:43:22 CST 2019');
INSERT INTO `topic` VALUES ('60', '2', '1', '反恐特遣队2海豹突击队（1.12G）（第一人称射击）', '链接：https://pan.baidu.com/s/1E6siyoum0rfjwm5MInAvjQ 密码：as69', 'Mon Jan 14 21:43:31 CST 2019');
INSERT INTO `topic` VALUES ('61', '2', '1', '荣耀战场前进30高地（1.62G）（第一人称射击）', '链接：https://pan.baidu.com/s/1rz6rnAnLh6mskvTAgJ7mow 密码：726o', 'Mon Jan 14 21:43:40 CST 2019');
INSERT INTO `topic` VALUES ('62', '2', '1', '失落的星球：极限状态（3.66G）（第三人称射击）', '链接：https://pan.baidu.com/s/1P6oq-l7s1tLa9idfhtuKmw 密码：ln79', 'Mon Jan 14 21:43:48 CST 2019');
INSERT INTO `topic` VALUES ('63', '2', '1', '时空悍将（2.74G）（射击类游戏）', '链接：https://pan.baidu.com/s/1plVTotfsIAEeM96weOtNTA 密码：v9u3', 'Mon Jan 14 21:45:38 CST 2019');
INSERT INTO `topic` VALUES ('64', '3', '1', '侠盗列车手5 简称GTA5 神作 （66.2G） （全网最稳定版本） ', '链接：https://pan.baidu.com/s/1l4J48rCAdiaHFGDHoMgzxQ 密码：xmz6', 'Mon Jan 14 21:45:54 CST 2019');
INSERT INTO `topic` VALUES ('65', '3', '1', '侠盗猎车-罪恶都市 ', '链接：https://pan.baidu.com/s/1GesRjW9JHlnk_5_T39JlLg 密码：2r4g', 'Mon Jan 14 21:46:00 CST 2019');
INSERT INTO `topic` VALUES ('66', '3', '1', '侠盗猎车盗猎车之圣安地列斯中文豪华版', '链接：https://pan.baidu.com/s/1bJwE6ZmQcpMGDPrDqYw4Cg 密码：zkuq', 'Mon Jan 14 21:46:15 CST 2019');
INSERT INTO `topic` VALUES ('67', '3', '1', '丧尸围城系列（动作类游戏） （85G）', '链接：https://pan.baidu.com/s/1C3K72hloTC0P16fR2y1Szg 密码：7sua', 'Mon Jan 14 21:46:23 CST 2019');
INSERT INTO `topic` VALUES ('68', '3', '1', '讨鬼传系列（动作类游戏）（31G）', '链接：https://pan.baidu.com/s/1wHqZQdv2o_C85RldFkJvLg 密码：erfv', 'Mon Jan 14 21:51:22 CST 2019');
INSERT INTO `topic` VALUES ('69', '3', '1', '古墓丽影系列 （特色动作冒险游戏）（51G）', '链接：https://pan.baidu.com/s/1qrTTwJk0frmIH2qBCOGTMw 密码：078n', 'Mon Jan 14 21:51:33 CST 2019');
INSERT INTO `topic` VALUES ('70', '3', '1', '鬼泣系列 （动作类型单机电子游戏）（23G）', '链接：https://pan.baidu.com/s/1VbcO_bUoMykskkAF_I_wQQ 密码：3kue', 'Mon Jan 14 21:51:44 CST 2019');
INSERT INTO `topic` VALUES ('71', '3', '1', '中土世界：战争之影  游戏安装密码：789333（重要！）（68G）', '链接：https://pan.baidu.com/s/18ApfRdvYk2F4h3pav2-smQ 密码：20sf', 'Mon Jan 14 21:51:53 CST 2019');
INSERT INTO `topic` VALUES ('72', '3', '1', '雷曼起源 （1.6G）', '链接：https://pan.baidu.com/s/1t9t_R-FTbgPkOPTWttUfSw 密码：san8', 'Mon Jan 14 21:52:01 CST 2019');
INSERT INTO `topic` VALUES ('73', '3', '1', '雷曼传奇 （5.4G）', '链接：https://pan.baidu.com/s/1tEVuDylZ9b15CG904or5_w 密码：tvz8', 'Mon Jan 14 21:52:08 CST 2019');
INSERT INTO `topic` VALUES ('74', '3', '1', '波斯王子系列 （动作游戏类的电子游戏）（10G）', '链接：https://pan.baidu.com/s/1RpajY2OFeEU_AU35oqhkHQ 密码：i5yr', 'Mon Jan 14 21:52:16 CST 2019');
INSERT INTO `topic` VALUES ('75', '3', '1', '杀手系列 （动作类游戏）(杀手5+杀手6)', '链接：https://pan.baidu.com/s/1Na53gjw1wXeJhTbpT6oAZA 密码：u2wp', 'Mon Jan 14 21:52:24 CST 2019');
INSERT INTO `topic` VALUES ('76', '3', '1', '虐杀原形系列 （动作类）', '链接：https://pan.baidu.com/s/1oPi3uJbddqRC2WLhevz2Ww 密码：xtsn', 'Mon Jan 14 21:52:31 CST 2019');
INSERT INTO `topic` VALUES ('77', '3', '1', '暗黑血统系列 （动作类）', '链接：https://pan.baidu.com/s/1dbkNapAH72UlkHvMwZn6YA 密码：6a8q', 'Mon Jan 14 21:52:39 CST 2019');
INSERT INTO `topic` VALUES ('78', '3', '1', '乐高游戏系列 （动作类剧情多人游戏可）', '链接：https://pan.baidu.com/s/1OE1y2y4CThJb27iZYryrnA 密码：hrof', 'Mon Jan 14 21:52:48 CST 2019');
INSERT INTO `topic` VALUES ('79', '3', '1', '蝙蝠侠系列 （动作类）（80G）', '链接：https://pan.baidu.com/s/1rRnAG-VDIRv4dLH3PYL9Ng 提取码：6o03 ', 'Mon Jan 14 21:52:55 CST 2019');
INSERT INTO `topic` VALUES ('80', '3', '1', '尼尔机械纪元（35.66G）（动作类游戏）', '链接：https://pan.baidu.com/s/1BqGBQ3wJKvBQ0uelPH72ZA 密码：msvs', 'Mon Jan 14 21:53:06 CST 2019');
INSERT INTO `topic` VALUES ('81', '3', '1', '迸发（10.03G）（科幻动作游戏）', '链接：https://pan.baidu.com/s/17R_GkFKrh3nawUEs3KuCag 密码：ffdx', 'Mon Jan 14 22:04:59 CST 2019');
INSERT INTO `topic` VALUES ('82', '3', '1', '迪士尼无限（12.48G）（动作类游戏）', '链接：https://pan.baidu.com/s/1EE8TT_FYNF7BRIAu0MjBnw 密码：zimi', 'Mon Jan 14 22:05:09 CST 2019');
INSERT INTO `topic` VALUES ('83', '3', '1', '过气英雄（1.07G）（冒险类游戏）', '链接：https://pan.baidu.com/s/107DuMbT_Rm7DHHcD9PZquQ 密码：8rnr', 'Mon Jan 14 22:05:16 CST 2019');
INSERT INTO `topic` VALUES ('84', '3', '1', '进击的巨人（13.54G）（动作类）', '链接：https://pan.baidu.com/s/1ZNQIOzafBy7twqzCTu8wRg 密码：6q2o', 'Mon Jan 14 22:05:54 CST 2019');
INSERT INTO `topic` VALUES ('85', '3', '1', '盐和避难所（483.55M）（横版动作类游戏）', '链接：https://pan.baidu.com/s/1vxwUV6pT7vB57-lIcSEsqQ 密码：bh4a', 'Mon Jan 14 22:06:01 CST 2019');
INSERT INTO `topic` VALUES ('86', '3', '1', '堕落之王（15.47G）（动作类游戏）', '链接：https://pan.baidu.com/s/1I9C9SAEibsZW7G0fO1sLHA 密码：szvr', 'Mon Jan 14 22:06:12 CST 2019');
INSERT INTO `topic` VALUES ('87', '3', '1', '忍者神龟：曼哈顿突变（7.56G）（动作类）', '链接：https://pan.baidu.com/s/1i7z7BM5lgqYAboLvcfVp3Q 密码：0ci7', 'Mon Jan 14 22:06:23 CST 2019');
INSERT INTO `topic` VALUES ('88', '3', '1', '塞伯利亚之谜系列 （22.46G）（冒险类游戏）', '链接：https://pan.baidu.com/s/1kxr-eBlzBpl_MhxAXgwVjw 密码：pwwz', 'Mon Jan 14 22:06:39 CST 2019');
INSERT INTO `topic` VALUES ('89', '3', '1', '圣斗士星矢：斗士之魂（2.65G）（动作类游戏）', '链接：https://pan.baidu.com/s/1RfPuPs8mYf97xLhwXMlofw 密码：pofw', 'Mon Jan 14 22:06:49 CST 2019');
INSERT INTO `topic` VALUES ('90', '3', '1', '侍道3（1.59G）（动作类游戏）', '链接：https://pan.baidu.com/s/1zmREUfhY9FfD_hmOO08zxA 密码：jpob', 'Mon Jan 14 22:06:57 CST 2019');
INSERT INTO `topic` VALUES ('91', '3', '1', '侍道4（2.11G）（动作类游戏）', '链接：https://pan.baidu.com/s/1XBbkSDNz-SRwfMtJVLterg 密码：773l', 'Mon Jan 14 22:07:08 CST 2019');
INSERT INTO `topic` VALUES ('92', '3', '1', '教父2（4.28G）（动作类）', '链接：https://pan.baidu.com/s/1bWOgFKC3r20Wu4bmamf94Q 密码：9bl4', 'Mon Jan 14 22:08:08 CST 2019');
INSERT INTO `topic` VALUES ('93', '3', '1', '海盗王双重秘宝（2.45G）（动作冒险）', '链接：https://pan.baidu.com/s/18OHwr8__3WalAEiPl2G8PQ 密码：lggp', 'Mon Jan 14 22:08:15 CST 2019');
INSERT INTO `topic` VALUES ('94', '3', '1', '红色派系末日审判（7.27G）（动作类）', '链接：https://pan.baidu.com/s/1ze-DHFfDo7SBc8sE7lBoCA 密码：s7ho', 'Mon Jan 14 22:08:23 CST 2019');
INSERT INTO `topic` VALUES ('95', '3', '1', '寂静岭系列1-5（冒险类游戏）', '链接：https://pan.baidu.com/s/1-_gK7XTZG2KAmwvSDg2_iQ 密码：gyyz', 'Mon Jan 14 22:08:34 CST 2019');
INSERT INTO `topic` VALUES ('96', '3', '1', '黑手党2 （8G）', '链接：https://pan.baidu.com/s/1lU75q4T28o0KqibJk2uWGA 密码：zpbg', 'Mon Jan 14 22:10:15 CST 2019');
INSERT INTO `topic` VALUES ('97', '3', '1', '黑手党3 （55G）', '链接：https://pan.baidu.com/s/17quyPg3wXNu0uaVFJL5peA 密码：c3uz', 'Mon Jan 14 22:10:24 CST 2019');
INSERT INTO `topic` VALUES ('98', '3', '1', '彩虹6号围攻 （13G）', '链接：https://pan.baidu.com/s/1eN0QazO39Klgb8KXq_8Xkw 密码：2zac', 'Mon Jan 14 22:10:32 CST 2019');
INSERT INTO `topic` VALUES ('99', '4', '1', '方舟 生存进化 （7.2G）', '链接：https://pan.baidu.com/s/1c5PqEm4CofUWbZ8LBXdNrw 密码：u5ln', 'Mon Jan 14 22:11:09 CST 2019');
INSERT INTO `topic` VALUES ('100', '4', '1', '看门狗1（角色扮演，沙盒类） （ 17.19G）', '链接：https://pan.baidu.com/s/1_bKRLUrkv_Vsx80O0ziG2Q 密码：dvfq', 'Mon Jan 14 22:11:15 CST 2019');
INSERT INTO `topic` VALUES ('101', '4', '1', '看门口2 （27G）', '链接：https://pan.baidu.com/s/10avDuSbAFLJCbnCvM6BEEA 密码：6fyi', 'Mon Jan 14 22:11:21 CST 2019');
INSERT INTO `topic` VALUES ('102', '4', '1', '火影龙珠海贼系列 （角色扮演类）（134G）', '链接：https://pan.baidu.com/s/1I6FN1QP8sKQ-JoRUR6ERzQ 密码：tfhv', 'Mon Jan 14 22:11:30 CST 2019');
INSERT INTO `topic` VALUES ('103', '4', '1', '巫师系列 （角色扮演类单机游戏，巫师3神作请下年度版）（74G）', '链接：https://pan.baidu.com/s/17WCT2_ik2DYw0AubPnZ_OA 密码：llo8', 'Mon Jan 14 22:11:37 CST 2019');
INSERT INTO `topic` VALUES ('104', '4', '1', '仙剑系列 （单机角色扮演游戏） （14G）', '链接：https://pan.baidu.com/s/1Bdz9Ye4WbeFSLwG3IKSoKA 密码：9t4t', 'Mon Jan 14 22:11:56 CST 2019');
INSERT INTO `topic` VALUES ('105', '4', '1', '轩辕剑系列 （单机角色扮演游戏）（28G） ', '链接：https://pan.baidu.com/s/1-FVPgKIHmDYzCre3vXGXvQ 密码：5nys', 'Mon Jan 14 22:12:06 CST 2019');
INSERT INTO `topic` VALUES ('106', '4', '1', '蜘蛛侠系列 （单机角色扮演游戏）（20G）', '链接：https://pan.baidu.com/s/1alLKxyzsxJt2qtiNwl15UA 密码：nbtt', 'Mon Jan 14 22:12:13 CST 2019');
INSERT INTO `topic` VALUES ('107', '4', '1', '辐射4（23.63G）', '链接：https://pan.baidu.com/s/1YihysPef9mmrYPkelHFYZw 密码：ksy3', 'Mon Jan 14 22:12:20 CST 2019');
INSERT INTO `topic` VALUES ('108', '4', '1', '龙腾世纪系列 （角色扮演游戏） 不支持W10', '链接：https://pan.baidu.com/s/13BCmVZ_BDVaHjLmjgOAyGQ 密码：r3xg', 'Mon Jan 14 22:12:29 CST 2019');
INSERT INTO `topic` VALUES ('109', '4', '1', '黑暗之魂系列 （高难度的硬派角色扮演游戏）', '链接：https://pan.baidu.com/s/1vRHxNSndNX46BJlBQwTCeg 密码：9uga', 'Mon Jan 14 22:12:38 CST 2019');
INSERT INTO `topic` VALUES ('110', '4', '1', '龙之信条：黑暗 （角色扮演游戏）（20G）', '链接：https://pan.baidu.com/s/1KkGtpYXW7x6chX7e2kN-VQ 密码：lisv', 'Mon Jan 14 22:13:07 CST 2019');
INSERT INTO `topic` VALUES ('111', '4', '1', '最终幻想系列 （角色扮演类电视游戏）', '链接：https://pan.baidu.com/s/1Kw8SPBJolyGrkr5-aIrZ0A 密码：n4q5', 'Mon Jan 14 22:13:14 CST 2019');
INSERT INTO `topic` VALUES ('112', '4', '1', '暴君（7.30G）（角色扮演）', '链接：https://pan.baidu.com/s/11TLgvKpcdInbhPW5K4Vldg 密码：wrcb', 'Mon Jan 14 22:13:21 CST 2019');
INSERT INTO `topic` VALUES ('113', '4', '1', '狂战传说（16.74G）（角色扮演）', '链接：https://pan.baidu.com/s/1_3wFNMx0YEDFmvqSNN8BbQ 密码：8bpp', 'Mon Jan 14 22:13:30 CST 2019');
INSERT INTO `topic` VALUES ('114', '4', '1', '魔法对抗2/魔能2（3.23G）（角色扮演）', '链接：https://pan.baidu.com/s/12duLjXqpg_On9FQgwP1ILw 密码：xa2v', 'Mon Jan 14 22:13:39 CST 2019');
INSERT INTO `topic` VALUES ('115', '4', '1', '索菲的工作室（6.23G）（回合制角色扮演）', '链接：https://pan.baidu.com/s/1WDK4OacRC5XLzjtx48NogQ 密码：gw40', 'Mon Jan 14 22:13:49 CST 2019');
INSERT INTO `topic` VALUES ('116', '4', '1', '维克多弗兰（3.41G）（类暗黑游戏）', '链接：https://pan.baidu.com/s/1S7QakLUavVIz70kVwhQwTw 密码：kf2d', 'Mon Jan 14 22:14:58 CST 2019');
INSERT INTO `topic` VALUES ('117', '4', '1', '我是刹那（1.63G）（日式RPG）', '链接：https://pan.baidu.com/s/1njcFvHWobaKQWPj6_gw_7w 密码：9fwo', 'Mon Jan 14 22:15:06 CST 2019');
INSERT INTO `topic` VALUES ('118', '4', '1', '傲世苍龙赵云传（808.92M）（角色扮演）', '链接：https://pan.baidu.com/s/1CablT54AXC5U28VneZb0cg 密码：5wfk', 'Mon Jan 14 22:15:15 CST 2019');
INSERT INTO `topic` VALUES ('119', '4', '1', '超时空英雄传说3狂神降世（1.10G）（角色扮演）', '链接：https://pan.baidu.com/s/1OO6Ded_xRCImk02YWZ8LIg 密码：h85v', 'Mon Jan 14 22:15:24 CST 2019');
INSERT INTO `topic` VALUES ('120', '4', '1', '地牢围攻3（2.58G）（角色扮演）', '链接：https://pan.baidu.com/s/1UrBR9lMSjnQnK8Akr-LLYg 密码：xh2b', 'Mon Jan 14 22:15:31 CST 2019');
INSERT INTO `topic` VALUES ('121', '4', '1', '堕落天使（1.55G）（角色扮演）', '链接：https://pan.baidu.com/s/1vi5EBJa5_yNudHJbjjH4FQ 密码：3xjz', 'Mon Jan 14 22:15:54 CST 2019');
INSERT INTO `topic` VALUES ('122', '4', '1', '废土2（8.17G）（角色扮演）', '链接：https://pan.baidu.com/s/1sX2yqudhAFuHiPZ3OPJChg 密码：wr1e', 'Mon Jan 14 22:16:08 CST 2019');
INSERT INTO `topic` VALUES ('123', '4', '1', '古龙群侠传（1.40G）（角色扮演）', '链接：https://pan.baidu.com/s/1EwwJrA_KAq9oqPmg_wvpBw 密码：avdq', 'Mon Jan 14 22:16:17 CST 2019');
INSERT INTO `topic` VALUES ('124', '4', '1', '如来神掌宇宙争雄（1.77G）（角色扮演）', '链接：https://pan.baidu.com/s/1u-mBQzqCkVL6au_4qzse5Q 密码：cga4', 'Mon Jan 14 22:26:09 CST 2019');
INSERT INTO `topic` VALUES ('125', '4', '1', '神界：龙之指挥官（8.95G）（动作角色扮演）', '链接：https://pan.baidu.com/s/1SKQdju1mfL6clreZAlVkgg 密码：0180', 'Mon Jan 14 22:26:18 CST 2019');
INSERT INTO `topic` VALUES ('126', '4', '1', '圣域1魔都魅影（1.70G）（角色扮演）', '链接：https://pan.baidu.com/s/19Yg3XiIiMK_GiFx0x-fFWw 密码：jm9u', 'Mon Jan 14 22:26:26 CST 2019');
INSERT INTO `topic` VALUES ('127', '4', '1', '双星物语2+2加强版（1.72G+1.73G）（角色扮演）', '链接：https://pan.baidu.com/s/1b1IeqNpJwTtHnzBkP4sNqw 密码：6akh', 'Mon Jan 14 22:26:35 CST 2019');
INSERT INTO `topic` VALUES ('128', '4', '1', '天河传说（1.16G）（角色扮演）', '链接：https://pan.baidu.com/s/1rnHocB0m_6BNd7Oh8_27oA 密码：71s6', 'Mon Jan 14 22:26:43 CST 2019');
INSERT INTO `topic` VALUES ('129', '4', '1', '天之劫（1.09G）（角色扮演）', '链接：https://pan.baidu.com/s/1EbXUbMXdNGYe9WbTkySJ-g 密码：5wq3', 'Mon Jan 14 22:26:51 CST 2019');
INSERT INTO `topic` VALUES ('130', '4', '1', '无双蛇魔Z（无双大蛇Z）（3.73G）', '链接：https://pan.baidu.com/s/1BbbYP3re6trUeYdhj6C-Yg 密码：00sk', 'Wed Jan 16 18:37:39 CST 2019');
INSERT INTO `topic` VALUES ('131', '4', '1', '武林立志传龙吟剑（5.84G）（角色扮演）', '链接：https://pan.baidu.com/s/1lMaL_dUybtE-j5tBuqF3JA 密码：yrar', 'Wed Jan 16 18:37:52 CST 2019');
INSERT INTO `topic` VALUES ('132', '4', '1', '西藏镇魔曲（1.29G）（角色扮演）', '链接：https://pan.baidu.com/s/10KpUCILClqkJxXXidiLctg 密码：xei3', 'Wed Jan 16 18:38:02 CST 2019');
INSERT INTO `topic` VALUES ('133', '4', '1', '侠客风云传（8.62G）（角色扮演，养成）', '链接：https://pan.baidu.com/s/1AY6s95VtZLCt3Dk9BKomgg 密码：7u8h', 'Wed Jan 16 18:41:28 CST 2019');
INSERT INTO `topic` VALUES ('134', '4', '1', '新冰城传奇（3.98G）（角色扮演）', '链接：https://pan.baidu.com/s/1rxoIpyKmh-5T0jAvvKW2Eg 密码：01w9', 'Wed Jan 16 18:41:36 CST 2019');
INSERT INTO `topic` VALUES ('135', '4', '1', '新绝代双骄1（角色扮演）（1G）', '链接：https://pan.baidu.com/s/1v9Or9q0nQK9zcrVVgy1N9Q 密码：8zbk', 'Wed Jan 16 18:41:42 CST 2019');
INSERT INTO `topic` VALUES ('136', '4', '1', '新绝代双骄2    （0.7G）', '链接：https://pan.baidu.com/s/14oD8BQrC41-pVI3BkimahQ 密码：xc5r', 'Wed Jan 16 18:41:48 CST 2019');
INSERT INTO `topic` VALUES ('137', '4', '1', '新绝代双骄3   （1.4G)', '链接：https://pan.baidu.com/s/16qhG3x_vm5136kSWZmMpgw 密码：ekvy', 'Wed Jan 16 18:41:54 CST 2019');
INSERT INTO `topic` VALUES ('138', '4', '1', '新绝代双骄前传-云海仙境  (2.37G)', '链接：https://pan.baidu.com/s/1wW0xx-Pq6H986AWYqtD-Fg 密码：quao', 'Wed Jan 16 18:41:59 CST 2019');
INSERT INTO `topic` VALUES ('139', '4', '1', '月剑痕（2.02G）（角色扮演）', '链接：https://pan.baidu.com/s/1D-_nUA3wv9h5pU4Abi8Mew 密码：pj30', 'Wed Jan 16 18:42:05 CST 2019');
INSERT INTO `topic` VALUES ('140', '4', '1', '仁王  (43G)', '链接：https://pan.baidu.com/s/1GA0Li_9dxOwLwiNFIv1nsA 密码：7na8  ', 'Wed Jan 16 18:42:10 CST 2019');
INSERT INTO `topic` VALUES ('141', '4', '1', '使命召唤1-13(色扮演） (415G)', '链接：https://pan.baidu.com/s/1Me19uXmzhaPvClGfZiu0EQ 密码：tijz', 'Wed Jan 16 18:42:16 CST 2019');
INSERT INTO `topic` VALUES ('142', '4', '1', '使命召唤14  安装码999988', '链接：https://pan.baidu.com/s/1slHxIUnszzSmR9A2m1ty_w 密码：fcp9', 'Wed Jan 16 18:42:23 CST 2019');
INSERT INTO `topic` VALUES ('143', '4', '1', '真三国无双系列', '链接：https://pan.baidu.com/s/1ooQgszEwMCT0rPWSmnWCbw 密码：34yn', 'Wed Jan 16 18:42:30 CST 2019');
INSERT INTO `topic` VALUES ('144', '4', '1', '如龙0', '链接：https://pan.baidu.com/s/1HAg7oQ1H59Yj8d2w83QORg 提取码：9vac ', 'Wed Jan 16 18:42:37 CST 2019');
INSERT INTO `topic` VALUES ('145', '5', '1', '地球帝国3 （4.4G ）', '链接：https://pan.baidu.com/s/1kgewyozqcJpdys0eHBr0fA 密码：56zh', 'Wed Jan 16 18:42:49 CST 2019');
INSERT INTO `topic` VALUES ('146', '5', '1', '魔兽争霸III：冰封王座（1.03G）（即时战略）', '链接：https://pan.baidu.com/s/1ZIlWS4JHwvQLNBySPjP8DA 密码：x8i7', 'Wed Jan 16 18:42:56 CST 2019');
INSERT INTO `topic` VALUES ('147', '5', '1', '富甲天下（3.50G）（策略战棋）', '链接：https://pan.baidu.com/s/1l-KiPEo9Z8_OjD7LypnVrQ 密码：vxeq', 'Wed Jan 16 18:43:01 CST 2019');
INSERT INTO `topic` VALUES ('148', '5', '1', '文明6和文明5 （策略类游戏）（8.6G）', '链接：https://pan.baidu.com/s/16CuzWh_ozr4T5fdWEgCMzQ 密码：4b3n', 'Wed Jan 16 18:43:07 CST 2019');
INSERT INTO `topic` VALUES ('149', '5', '1', '合金装备系列 （著名战术谍报系列游戏）（71G）', '链接：https://pan.baidu.com/s/16wN-fMJGzRN9PvlXzsJXow 密码：m253', 'Wed Jan 16 18:43:14 CST 2019');
INSERT INTO `topic` VALUES ('150', '5', '1', '王国风云2  （1.66G）', '链接：https://pan.baidu.com/s/1cb9FzULU5yj2Ah5O5HpdZg 密码：4mj0', 'Wed Jan 16 18:44:01 CST 2019');
INSERT INTO `topic` VALUES ('151', '5', '1', '红色警戒游戏 （策略类游戏）', '链接：https://pan.baidu.com/s/1i_JZqzRw5cC3qxcRZMAO3A 密码：qhwp', 'Wed Jan 16 18:44:07 CST 2019');
INSERT INTO `topic` VALUES ('152', '5', '1', '英雄无敌系列，最新的是英雄无敌7（1.8版） （策略类游戏）（23G）', '链接：https://pan.baidu.com/s/1gb_Ec8XL_Gd7XB3ozUyjYA 密码：86up', 'Wed Jan 16 18:44:14 CST 2019');
INSERT INTO `topic` VALUES ('153', '5', '1', '全面战争系列 （回合策略与即时战术相结合的大战略游戏）（60G)', '链接：https://pan.baidu.com/s/1AUOAnHqLnb5NcXtev8KaVw 密码：pf5v', 'Wed Jan 16 18:44:20 CST 2019');
INSERT INTO `topic` VALUES ('154', '5', '1', '三国志13威力加强PK版1.13（7.63G）（策略战棋类游戏）(16G)', '链接：https://pan.baidu.com/s/1YRKyRr4aWt3YLbQEiNL8Tw 密码：9cn9', 'Wed Jan 16 18:44:27 CST 2019');
INSERT INTO `topic` VALUES ('155', '5', '1', '帝国时代系列 （策略类游戏） (17G)', '链接：https://pan.baidu.com/s/1HRp4fSxjFDjsPo1HcVOrgg 密码：2c44', 'Wed Jan 16 18:44:32 CST 2019');
INSERT INTO `topic` VALUES ('156', '5', '1', '骑马与砍杀系列 （策略类游戏）（11.4G）', '连接：https://pan.baidu.com/s/1AaMXcSqXSi-u-gx21bmutg 密码：6jl7', 'Wed Jan 16 18:44:38 CST 2019');
INSERT INTO `topic` VALUES ('157', '5', '1', '盟军敢死队系列加修改器  （7.2G）  ', '链接：https://pan.baidu.com/s/1AR6E7SPSsdw9P9-7Ls1zXQ 密码：lpc3', 'Wed Jan 16 18:44:43 CST 2019');
INSERT INTO `topic` VALUES ('158', '5', '1', '星际争霸1母巢之战（1.22G）', '链接：https://pan.baidu.com/s/1JJdxt3Bk58IOU6P3_kuwyQ 密码：h2sr', 'Wed Jan 16 18:44:49 CST 2019');
INSERT INTO `topic` VALUES ('159', '5', '1', '星际2（单机版）整合了三个资源片 （台版繁体中文版）（25G）', '链接：https://pan.baidu.com/s/1vfkQRmWhQ4upiqw59VfKXw 密码：7gmr', 'Wed Jan 16 18:44:56 CST 2019');
INSERT INTO `topic` VALUES ('160', '5', '1', '钢铁之师：诺曼底44（20.52G）（策略类游戏）', '链接：https://pan.baidu.com/s/1j_oEa2dp8jcue57oaQLRHA 密码：mtnr', 'Wed Jan 16 18:45:04 CST 2019');
INSERT INTO `topic` VALUES ('161', '5', '1', '天使帝国IV（1.44G）（策略战棋）', '链接：https://pan.baidu.com/s/1w19hwB5qQm9SE9v6mLdMhQ 密码：44cp', 'Wed Jan 16 18:45:10 CST 2019');
INSERT INTO `topic` VALUES ('162', '5', '1', '信长 战国立志传（2.68G）（策略战棋类）', '链接：https://pan.baidu.com/s/14AwVFZ9J98Vv-6wp9S7wwQ 密码：4ch2', 'Wed Jan 16 18:45:16 CST 2019');
INSERT INTO `topic` VALUES ('163', '5', '1', '登陆日v2（1.02G）（即时战略）', '链接：https://pan.baidu.com/s/1vqWkw5FNG6fktIRvMAWhrg 密码：w2q8', 'Wed Jan 16 18:45:21 CST 2019');
INSERT INTO `topic` VALUES ('164', '5', '1', '地牢守护者（1.93G）（ARPG和塔防的混合系列游戏）', '链接：https://pan.baidu.com/s/106mjWUYwX_CJKp4iIkU3IA 密码：4tdt', 'Wed Jan 16 18:45:27 CST 2019');
INSERT INTO `topic` VALUES ('165', '5', '1', '第9连队（1.26G）（即时战略）', '链接：https://pan.baidu.com/s/1PFW3tuS5XH_Qk7uWnqirLA 密码：xuee', 'Wed Jan 16 18:45:31 CST 2019');
INSERT INTO `topic` VALUES ('166', '5', '1', '工人物语7：王国之路（1.10G）（策略战棋）', '链接：https://pan.baidu.com/s/11dC3KqCl1PUtcG0heGCpcQ 密码：s1of', 'Wed Jan 16 18:45:39 CST 2019');
INSERT INTO `topic` VALUES ('167', '5', '1', '信长之野望13：天道PK（686.28M）（策略战棋）', '链接：https://pan.baidu.com/s/19q1Vbew4d4AEXaqHBsSXVg 密码：57yl', 'Wed Jan 16 18:45:46 CST 2019');
INSERT INTO `topic` VALUES ('168', '5', '1', '罗马2：全面战争 （14G）', '链接：https://pan.baidu.com/s/1tltJ6fP4h5zyPexWcWy6RA 密码：1j0b', 'Wed Jan 16 18:45:51 CST 2019');
INSERT INTO `topic` VALUES ('169', '5', '1', '大富翁系列 （3.4G）', '链接：https://pan.baidu.com/s/1d9rfincZQGyvE5efzz2qtg 密码：hr5q', 'Wed Jan 16 18:45:58 CST 2019');
INSERT INTO `topic` VALUES ('170', '5', '1', '三国志系列', '链接：https://pan.baidu.com/s/1-rFpjzktsdgM6vb8A1W5_w 密码：y0hi', 'Wed Jan 16 18:46:04 CST 2019');
INSERT INTO `topic` VALUES ('171', '5', '1', '三国霸业', '链接：https://pan.baidu.com/s/1lw-sqvdclzMIJyVxP38YSw 密码：d4zn', 'Wed Jan 16 18:46:09 CST 2019');
INSERT INTO `topic` VALUES ('172', '5', '1', '巫师之昆特牌王权的陨落', '链接：https://pan.baidu.com/s/1rXW50pqMyHc8dtKRicpgeg 提取码：svgm ', 'Wed Jan 16 18:46:13 CST 2019');
INSERT INTO `topic` VALUES ('173', '6', '1', '尘埃系列 （赛车系列） （78G）', '链接：https://pan.baidu.com/s/1ikDDm_v3jbslreLJ25peDg 密码：f303', 'Wed Jan 16 18:46:30 CST 2019');
INSERT INTO `topic` VALUES ('174', '6', '1', '极品飞车系列 （赛车类游戏）', '链接：https://pan.baidu.com/s/1_dZJCQ7IKVOn14QFv1BqOg 密码：tfz6', 'Wed Jan 16 18:46:35 CST 2019');
INSERT INTO `topic` VALUES ('175', '6', '1', '赛车计划（16.58G）（赛车游戏）', '链接：https://pan.baidu.com/s/1NllRLV45rBAFbS_TQi1ckg 密码：quhe', 'Wed Jan 16 18:46:41 CST 2019');
INSERT INTO `topic` VALUES ('176', '6', '1', '越野摩托2（13.11G）（赛车类游戏）', '链接：https://pan.baidu.com/s/1OpLttNJn6FMDSemV0gvWiQ 密码：r4hs', 'Wed Jan 16 18:46:46 CST 2019');
INSERT INTO `topic` VALUES ('177', '6', '1', '世界摩托大奖赛15（18.08G）（赛车类游戏）', '链接：https://pan.baidu.com/s/1ZpivEtn4qvhHwECnOGSBLQ 密码：4gu3', 'Wed Jan 16 18:46:52 CST 2019');
INSERT INTO `topic` VALUES ('178', '6', '1', 'FIA世界汽车拉力锦标赛（2.95G）（赛车类游戏）', '链接：https://pan.baidu.com/s/1svaVRAAjjQ_bWXHzRI_BuA 密码：uy3v', 'Wed Jan 16 18:47:05 CST 2019');
INSERT INTO `topic` VALUES ('179', '6', '1', '特技摩托进化黄金版（2.58G）（赛车类）', '链接：https://pan.baidu.com/s/1XUW9A25wGPlCRU3vWX0s_A 密码：loji', 'Wed Jan 16 18:47:12 CST 2019');
INSERT INTO `topic` VALUES ('180', '7', '1', 'NBA系列 （体育类） （145G）', '链接：https://pan.baidu.com/s/1-ksB7qrdrUB6u8BfVjN80Q 密码：m82a', 'Wed Jan 16 18:47:21 CST 2019');
INSERT INTO `topic` VALUES ('181', '7', '1', '实况足球系列 （体育类） （57G）', '链接：https://pan.baidu.com/s/1dTn6dE7VLyL8rn5vZemBTw 密码：lxei', 'Wed Jan 16 18:47:27 CST 2019');
INSERT INTO `topic` VALUES ('182', '7', '1', '足球经理 （4G）', '链接：https://pan.baidu.com/s/1IC_ut8Cwddvlz_KQIwCTDg 密码：fgzl', 'Wed Jan 16 18:47:31 CST 2019');
INSERT INTO `topic` VALUES ('183', '7', '1', '镜之边缘2：催化剂', '链接：https://pan.baidu.com/s/1TXuUOmUAyYCfZ_4m3jdsCA 密码：1wto', 'Wed Jan 16 18:47:36 CST 2019');
INSERT INTO `topic` VALUES ('184', '8', '1', '死侍  （5.2G）', '链接：https://pan.baidu.com/s/1L5_RBLYPnpRamglzJsiC1w 密码：sw3d', 'Wed Jan 16 18:47:47 CST 2019');
INSERT INTO `topic` VALUES ('185', '8', '1', '街头霸王系列 （格斗对打类）（39G) ', '链接：https://pan.baidu.com/s/1Rm2L42uVlFAacGGgCYoqfg 密码：z7vg ', 'Wed Jan 16 18:47:53 CST 2019');
INSERT INTO `topic` VALUES ('186', '8', '1', '苍翼默示录：神观之梦（27.62G）（格斗游戏）', '链接：https://pan.baidu.com/s/1gpxoFD2OTGU2cqj3mbkNsg 密码：hf9z', 'Wed Jan 16 18:48:00 CST 2019');
INSERT INTO `topic` VALUES ('187', '8', '1', '街头霸王5（6.76G）（格斗类）', '链接：https://pan.baidu.com/s/1VgF07Fb0hV9gLVYMYWc1iQ 密码：iflm', 'Wed Jan 16 18:48:05 CST 2019');
INSERT INTO `topic` VALUES ('188', '8', '1', '风卷残云（269.7M）（动作格斗）', '链接：https://pan.baidu.com/s/1lJz7uss1lrLFzPc0qBa7HA 密码：08mj', 'Wed Jan 16 18:48:12 CST 2019');
INSERT INTO `topic` VALUES ('189', '8', '1', '火影忍者究极风暴合集', '游戏安装米玛：380298 （重要！） (73G)\r\n链接：https://pan.baidu.com/s/19GNablcXkQH8Pc6aM9JXtw 密码：q5j4\r\n', 'Wed Jan 16 18:48:25 CST 2019');
