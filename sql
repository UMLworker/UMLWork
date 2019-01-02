### 学生评价表 (周奕棉)


CREATE TABLE `online_evalator` (
  `evalator_id` varchar(50) NOT NULL,
  `course_teacher_name` varchar(20) DEFAULT NULL,
  `course_time` varchar(30) DEFAULT NULL,
  `course_name` varchar(30) DEFAULT NULL,
  `course_property` enum('专业课','任选课','必修课') DEFAULT NULL,
  `course_grade` double DEFAULT NULL,
  `course_level` enum('差','较差','一般','良','优秀') DEFAULT NULL,
  PRIMARY KEY (`evalator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
insert  into `online_evalator`(`evalator_id`,`course_teacher_name`,`course_time`,`course_name`,`course_property`,`course_grade`,`course_level`) values ('5','侯爱民','2015——2016第二学期','面向对象分析与设计','必修课',93.47,'优秀');

### 学生成绩表 (郑永荣)


CREATE TABLE `student_score` (
  `StudentNo` varchar(12) COLLATE utf8_unicode_520_ci NOT NULL,
  `StudentName` varchar(15) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `major` varchar(20) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `ClassName` varchar(50) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `course` varchar(30) COLLATE utf8_unicode_520_ci DEFAULT NULL,
  `score` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_520_ci;


INSERT INTO `student_score` VALUES ('1244534', 'zyr', '网络工程', '16软卓一班', 'UML', '99');
INSERT INTO `student_score` VALUES ('1297123', 'zyr', '网络工程', '16软件工程', 'UML', '100');
INSERT INTO `student_score` VALUES ('201601', '刘开创', '网络工程', '16软卓一班', 'UML', '88');
INSERT INTO `student_score` VALUES ('201618421', '郑永荣', '网络工程', '16软卓一班', 'UML', '100');
INSERT INTO `student_score` VALUES ('201641401', '2', 'wlgc', '16软件工程', '软件', '88');
INSERT INTO `student_score` VALUES ('201641404205', 'zyr', '软件工程', '16软卓一班', 'UML', '99');
INSERT INTO `student_score` VALUES ('201641420511', '胡歌', '软件工程', '16软卓一班', 'uML', '99');
INSERT INTO `student_score` VALUES ('2016418123', '李珊珊', '计算机', '15计算机科学与技术', 'UML', null);
INSERT INTO `student_score` VALUES ('201678', 'zyr', '网络工程', '16软卓一班', '软件', '55');
INSERT INTO `student_score` VALUES ('12312', 'zyr', '网络工程', '16软卓一班', 'UML', '56');
INSERT INTO `student_score` VALUES ('33', 'zyr', '软件工程', '16软卓一班', '软件', '88');
INSERT INTO `student_score` VALUES ('12311', 'zyr', '网络工程', '16软件工程', '软件', '99');
INSERT INTO `student_score` VALUES ('68757', 'zyr', '网络工程', '16软件工程', '行政管理', '77');
INSERT INTO `student_score` VALUES ('1231', 'zyr', 'wlgc', '16软件工程', 'UML', '90');
INSERT INTO `student_score` VALUES ('201641404201', '方静竹', '行政管理', '2018行政管理', '体育', '100');
INSERT INTO `student_score` VALUES ('201641404205', 'zyr', '网络工程', '16软件工程', 'UML', '99');


### 开课计划表 (陈松彬)
CREATE TABLE `open_course_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `term` int(11) DEFAULT NULL,
  `filePath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `open_course_plan` */

insert  into `open_course_plan`(`id`,`term`,`filePath`) values (15,200020011,'resource/open_course_plan_files/2000-2001年度 第一学期.pdf'),(16,200020012,'resource/open_course_plan_files/2000-2001年度 第二学期.pdf'),(17,201820192,'resource/open_course_plan_files/2018-2019年度 第二学期.pdf'),(18,201820191,'resource/open_course_plan_files/2018-2019年度 第一学期.pdf'),(19,201720182,'resource/open_course_plan_files/2017-2018年度 第二学期.pdf'),(20,201720181,'resource/open_course_plan_files/2017-2018年度 第一学期.pdf');


###上课班级表（刘世杰）
DROP TABLE IF EXISTS `classinfo`;
CREATE TABLE `classinfo` (
  `class_name` varchar(20) NOT NULL,
  `specialty` varchar(20) NOT NULL,
  `course_name` varchar(20) NOT NULL,
  PRIMARY KEY (`class_name`,`specialty`,`course_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `classinfo` VALUES ('2016软卓1班', '软件工程', 'UML');
INSERT INTO `classinfo` VALUES ('2016软卓2班', '软件工程', 'UML');
INSERT INTO `classinfo` VALUES ('2016软工1班', '软件工程', 'UML');
INSERT INTO `classinfo` VALUES ('2016软工2班', '软件工程', 'UML');
INSERT INTO `classinfo` VALUES ('2016软工3班', '软件工程', 'UML');
INSERT INTO `classinfo` VALUES ('2016软工4班', '软件工程', 'UML');





学生评价表
CREATE TABLE `online_evalator` (
  `evalator_id` varchar(50) NOT NULL,
  `course_teacher_name` varchar(20) DEFAULT NULL,
  `course_time` varchar(30) DEFAULT NULL,
  `course_name` varchar(30) DEFAULT NULL,
  `course_property` enum('专业课','任选课','必修课') DEFAULT NULL,
  `course_grade` double DEFAULT NULL,
  `course_level` enum('差','较差','一般','良','优秀') DEFAULT NULL,
  PRIMARY KEY (`evalator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `online_evalator` */

insert  into `online_evalator`(`evalator_id`,`course_teacher_name`,`course_time`,`course_name`,`course_property`,`course_grade`,`course_level`) values ('5','侯爱民','2015——2016第二学期','面向对象分析与设计','必修课',93.47,'优秀');


专家评价表
CREATE TABLE `expert_evaluation` (
  `id` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `content` text,
  `time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

insert  into `expert_evaluation`(`id`,`title`,`type`,`content`,`time`) values
('317e86ad-b9a8-4450-9a27-2bbd20b02bfb','评价1321','校外专家评价','<p>对老师评价123123</p><p><strong>Unified Modeling Language (UML)
</strong>又称统一建模语言或标准建模语言，是始于1997年一个OMG标准，它是一个支持模型化和软件系统开发的图形化语言，为软件开发的所有阶段
提供模型化和可视化支持，包括由需求分析到规格，到构造和配置。 面向对象的分析与设计(OOA&amp;D，OOAD)方法的发展在80年代末至90年代中出现了
一个高潮，UML是这个高潮的产物。它不仅统一了Booch、Rumbaugh和Jacobson的表示方法，而且对其作了进一步的发展，并最终统一为大众所接受的标准建模语言。</p><p>Grady\r\n Booch的描述对象集合和它们之间的关系的方法。James Rumbaugh的对象建模技术（OMT）
。Ivar \r\nJacobson的包括用例方法的方式。还有其他一些想法也对UML起到了作用，UML是Booch, Rumbaugh, \r\nJacobson。UML已经被对象管理组织（
OMG）接受为标准，这个组织还制定了通用对象请求代理体系结构（CORBA），是分布式对象编程行业的领头羊。计算机辅助软件工程（CASE）产品的供应商也支持UML，并且它基本上已经被所有的软件开发产品制造商所认可，这其中包括IBM和微软(用于它的VB环境)。</p><p>UML规范用来描述建模的概念有，类（对象的）
、对象、关联、职责、行为、接口、用例、包、顺序、协作，以及状态。</p><p><br/></p>','2018-12-25 19:12:00'),('67eeec99-fe5a-486c-84ff-4e286f3881fb','校外专家评价1','校外专家评价','<p>123权威<br/></p>','2018-12-25 14:12:00'),('73fd9a71-5df3-4228-a7c2-4a3243e5aef8','校内专家评价','校内督导评价','<p>校内督导评价123</p><p>校内督导评价123</p>'
,'2018-12-27 21:12:00'),('76bf87ab-6e11-4021-a35c-cb74babef193','校内专家评价123','校内督导评价','<p>校内督导评价</p><p>校内督导评价</p>','2018-12-27 21:12:00');


##林源（作业案例）
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

