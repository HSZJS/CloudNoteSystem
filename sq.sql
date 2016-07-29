/*
SQLyog Ultimate v8.32 
MySQL - 5.0.22-community-nt : Database - cloudnotesystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cloudnotesystem` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cloudnotesystem`;

/*Table structure for table `t_course` */

DROP TABLE IF EXISTS `t_course`;

CREATE TABLE `t_course` (
  `id` int(11) NOT NULL auto_increment,
  `user` int(11) default NULL,
  `c_title` varchar(255) default NULL,
  `c_time` varchar(255) default NULL,
  `c_addr` varchar(255) default NULL,
  `c_ks` varchar(255) default NULL,
  `c_score` varchar(255) default NULL,
  `c_bz` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK2C201E6649912131` (`user`),
  CONSTRAINT `FK2C201E6649912131` FOREIGN KEY (`user`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_course` */

insert  into `t_course`(`id`,`user`,`c_title`,`c_time`,`c_addr`,`c_ks`,`c_score`,`c_bz`) values (1,2,'asdfa','05/12/2016','12','12','12','asdsdf'),(2,2,'dsf','05/11/2016','22','22','222','22');

/*Table structure for table `t_coursestudent` */

DROP TABLE IF EXISTS `t_coursestudent`;

CREATE TABLE `t_coursestudent` (
  `id` int(11) NOT NULL auto_increment,
  `course` int(11) default NULL,
  `user` int(11) default NULL,
  `c_reason` varchar(255) default NULL,
  `c_time` varchar(255) default NULL,
  `c_bz` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKAA111CF549912131` (`user`),
  KEY `FKAA111CF5EBFD0F11` (`course`),
  CONSTRAINT `FKAA111CF549912131` FOREIGN KEY (`user`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FKAA111CF5EBFD0F11` FOREIGN KEY (`course`) REFERENCES `t_course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_coursestudent` */

insert  into `t_coursestudent`(`id`,`course`,`user`,`c_reason`,`c_time`,`c_bz`) values (1,2,3,'sadfs','05/13/2016','asdfdf');

/*Table structure for table `t_guestbook` */

DROP TABLE IF EXISTS `t_guestbook`;

CREATE TABLE `t_guestbook` (
  `id` int(11) NOT NULL auto_increment,
  `user` int(11) default NULL,
  `g_title` varchar(255) default NULL,
  `g_time` varchar(255) default NULL,
  `g_bz` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK6169D69649912131` (`user`),
  CONSTRAINT `FK6169D69649912131` FOREIGN KEY (`user`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_guestbook` */

/*Table structure for table `t_notes` */

DROP TABLE IF EXISTS `t_notes`;

CREATE TABLE `t_notes` (
  `id` int(11) NOT NULL auto_increment,
  `user` int(11) default NULL,
  `n_title` varchar(255) default NULL,
  `n_time` varchar(255) default NULL,
  `n_bz` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK9EEE9B1649912131` (`user`),
  CONSTRAINT `FK9EEE9B1649912131` FOREIGN KEY (`user`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_notes` */

/*Table structure for table `t_replyguestbook` */

DROP TABLE IF EXISTS `t_replyguestbook`;

CREATE TABLE `t_replyguestbook` (
  `id` int(11) NOT NULL auto_increment,
  `guestbook` int(11) default NULL,
  `user` int(11) default NULL,
  `r_title` varchar(255) default NULL,
  `r_time` varchar(255) default NULL,
  `r_bz` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKE8B3344249912131` (`user`),
  KEY `FKE8B33442252CF8C7` (`guestbook`),
  CONSTRAINT `FKE8B33442252CF8C7` FOREIGN KEY (`guestbook`) REFERENCES `t_guestbook` (`id`),
  CONSTRAINT `FKE8B3344249912131` FOREIGN KEY (`user`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_replyguestbook` */

/*Table structure for table `t_studentnote` */

DROP TABLE IF EXISTS `t_studentnote`;

CREATE TABLE `t_studentnote` (
  `id` int(11) NOT NULL auto_increment,
  `user` int(11) default NULL,
  `tp` varchar(255) default NULL,
  `scsj` varchar(255) default NULL,
  `wjm` varchar(255) default NULL,
  `s_title` varchar(255) default NULL,
  `s_bz` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKDE07096249912131` (`user`),
  CONSTRAINT `FKDE07096249912131` FOREIGN KEY (`user`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_studentnote` */

/*Table structure for table `t_studentwork` */

DROP TABLE IF EXISTS `t_studentwork`;

CREATE TABLE `t_studentwork` (
  `id` int(11) NOT NULL auto_increment,
  `user` int(11) default NULL,
  `tp` varchar(255) default NULL,
  `scsj` varchar(255) default NULL,
  `wjm` varchar(255) default NULL,
  `s_title` varchar(255) default NULL,
  `s_score` varchar(255) default NULL,
  `s_bz` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKDE0B208149912131` (`user`),
  CONSTRAINT `FKDE0B208149912131` FOREIGN KEY (`user`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_studentwork` */

/*Table structure for table `t_teacherfile` */

DROP TABLE IF EXISTS `t_teacherfile`;

CREATE TABLE `t_teacherfile` (
  `id` int(11) NOT NULL auto_increment,
  `user` int(11) default NULL,
  `tp` varchar(255) default NULL,
  `scsj` varchar(255) default NULL,
  `wjm` varchar(255) default NULL,
  `t_title` varchar(255) default NULL,
  `t_bz` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKB49B6D1349912131` (`user`),
  CONSTRAINT `FKB49B6D1349912131` FOREIGN KEY (`user`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_teacherfile` */

insert  into `t_teacherfile`(`id`,`user`,`tp`,`scsj`,`wjm`,`t_title`,`t_bz`) values (1,2,'新建文本文档1463195145178.txt','2016-05-14 11-05-45','新建文本文档.txt','啊手动阀','阿斯顿法定');

/*Table structure for table `t_tickling` */

DROP TABLE IF EXISTS `t_tickling`;

CREATE TABLE `t_tickling` (
  `id` int(11) NOT NULL auto_increment,
  `user` int(11) default NULL,
  `t_title` varchar(255) default NULL,
  `t_time` varchar(255) default NULL,
  `t_bz` varchar(255) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK2E03C29E49912131` (`user`),
  CONSTRAINT `FK2E03C29E49912131` FOREIGN KEY (`user`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_tickling` */

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `birthday` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  `jjlxr` varchar(255) default NULL,
  `jjtel` varchar(255) default NULL,
  `jg` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `bm` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `by_1` varchar(255) default NULL,
  `by_2` varchar(255) default NULL,
  `by_3` varchar(255) default NULL,
  `bz` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`username`,`password`,`name`,`birthday`,`sex`,`tel`,`jjlxr`,`jjtel`,`jg`,`address`,`bm`,`type`,`by_1`,`by_2`,`by_3`,`bz`) values (1,'admin','admin','admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'admin',NULL,NULL,NULL,NULL),(2,'111','111','111','05/14/2016','男','','','','','','asf','teacher',NULL,NULL,NULL,'asdfds'),(3,'222','222','222','','男','','','','','','','student',NULL,NULL,NULL,'asdf');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
