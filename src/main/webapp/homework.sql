/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : filedownload

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-12-27 14:46:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `resources`
-- ----------------------------
DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuidname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `realname` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `savepath` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of resources
-- ----------------------------
INSERT INTO `resources` VALUES ('2', '6602b409-5c6d-4dda-858f-2921db9defa4.png', 'test.png', 'F:\\J2EE(workspace)\\.metadata\\.me_tcat85\\webapps\\UMLWork\\WEB-INF\\upload/13/12', '2018-12-27 14:44:00', '类图');
INSERT INTO `resources` VALUES ('3', '9ab39c48-f9f5-49fc-95f8-f8b289027999.png', 'test.png', 'F:\\J2EE(workspace)\\.metadata\\.me_tcat85\\webapps\\file_upload_download\\WEB-INF\\upload/13/12', '2018-12-27 14:44:19', 'ER图');
INSERT INTO `resources` VALUES ('11', '4ca8c8c7-fa12-4b67-ac33-d06b12e9dbe8.png', 'test.png', 'F:\\J2EE(workspace)\\.metadata\\.me_tcat85\\webapps\\UMLWork\\WEB-INF\\upload/13/12', '2018-12-27 14:44:26', '活动图');
INSERT INTO `resources` VALUES ('12', 'b5806eb1-0108-4e37-8af5-b4fd71e65de3.png', 'test.png', 'F:\\J2EE(workspace)\\.metadata\\.me_tcat85\\webapps\\UMLWork\\WEB-INF\\upload/13/12', '2018-12-27 14:44:32', '胡图图');
INSERT INTO `resources` VALUES ('13', '983e9ec7-f6aa-4b64-becc-9a963bfdedaa.png', 'test.png', 'F:\\J2EE(workspace)\\.metadata\\.me_tcat85\\webapps\\UMLWork\\WEB-INF\\upload/13/12', '2018-12-27 14:44:53', '截图');
INSERT INTO `resources` VALUES ('14', '21cb6c0f-b6df-44b1-8fb1-0f12fae4e7f8.png', 'test.png', 'F:\\J2EE(workspace)\\.metadata\\.me_tcat85\\webapps\\UMLWork\\WEB-INF\\upload/13/12', '2018-12-27 14:45:05', '图图图');
