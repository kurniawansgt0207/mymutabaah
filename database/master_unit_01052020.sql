/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.1.36-community-log : Database - mutabaah_yaumiyah
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `master_unit` */

DROP TABLE IF EXISTS `master_unit`;

CREATE TABLE `master_unit` (
  `unitid` int(5) NOT NULL AUTO_INCREMENT,
  `unitname` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`unitid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `master_unit` */

insert  into `master_unit`(`unitid`,`unitname`,`description`) values (1,'CB-1','Cabang 1');
insert  into `master_unit`(`unitid`,`unitname`,`description`) values (2,'CB-2','Cabang 2');
insert  into `master_unit`(`unitid`,`unitname`,`description`) values (3,'CB-3','Cabang 3');
insert  into `master_unit`(`unitid`,`unitname`,`description`) values (4,'CB-4','Cabang 4');
insert  into `master_unit`(`unitid`,`unitname`,`description`) values (5,'CB-5','Cabang 5');
insert  into `master_unit`(`unitid`,`unitname`,`description`) values (6,'CB-6','Cabang 6');
insert  into `master_unit`(`unitid`,`unitname`,`description`) values (7,'YBM','YABIM');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
