/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.21 : Database - uml_open_course_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`uml_open_course_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `uml_open_course_db`;

/*Table structure for table `open_course_plan` */

DROP TABLE IF EXISTS `open_course_plan`;

CREATE TABLE `open_course_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `term` int(11) DEFAULT NULL,
  `filePath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `open_course_plan` */

insert  into `open_course_plan`(`id`,`term`,`filePath`) values (15,200020011,'resource/open_course_plan_files/2000-2001年度 第一学期.pdf'),(16,200020012,'resource/open_course_plan_files/2000-2001年度 第二学期.pdf'),(17,201820192,'resource/open_course_plan_files/2018-2019年度 第二学期.pdf'),(18,201820191,'resource/open_course_plan_files/2018-2019年度 第一学期.pdf'),(19,201720182,'resource/open_course_plan_files/2017-2018年度 第二学期.pdf'),(20,201720181,'resource/open_course_plan_files/2017-2018年度 第一学期.pdf');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
