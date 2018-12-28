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

