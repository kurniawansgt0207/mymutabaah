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


/*Table structure for table `master_setting_aktifitas` */

DROP TABLE IF EXISTS `master_setting_aktifitas`;

CREATE TABLE `master_setting_aktifitas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `unit_id` int(5) DEFAULT NULL,
  `aktifitas_id` int(5) DEFAULT NULL,
  `is_active` enum('1','0') DEFAULT NULL COMMENT '1 = Aktif, 0 = Non Aktif',
  `created_date` timestamp NULL DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `ipaddress` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `master_setting_aktifitas` */

insert  into `master_setting_aktifitas`(`id`,`unit_id`,`aktifitas_id`,`is_active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ipaddress`) values (1,1,1,'1','2020-05-18 16:21:06','Admin','2020-05-18 16:21:06',NULL,'127.0.0.1');
insert  into `master_setting_aktifitas`(`id`,`unit_id`,`aktifitas_id`,`is_active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ipaddress`) values (2,1,2,'1','2020-05-18 16:21:06','Admin','2020-05-18 16:21:06',NULL,'127.0.0.1');
insert  into `master_setting_aktifitas`(`id`,`unit_id`,`aktifitas_id`,`is_active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ipaddress`) values (3,1,3,'1','2020-05-18 16:21:06','Admin','2020-05-18 16:21:06',NULL,'127.0.0.1');
insert  into `master_setting_aktifitas`(`id`,`unit_id`,`aktifitas_id`,`is_active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ipaddress`) values (4,1,4,'1','2020-05-18 16:21:06','Admin','2020-05-18 16:21:06',NULL,'127.0.0.1');
insert  into `master_setting_aktifitas`(`id`,`unit_id`,`aktifitas_id`,`is_active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ipaddress`) values (5,1,5,'1','2020-05-18 16:21:06','Admin','2020-05-18 16:21:06',NULL,'127.0.0.1');
insert  into `master_setting_aktifitas`(`id`,`unit_id`,`aktifitas_id`,`is_active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ipaddress`) values (6,1,11,'1','2020-05-18 16:21:06','Admin','2020-05-18 16:21:06',NULL,'127.0.0.1');
insert  into `master_setting_aktifitas`(`id`,`unit_id`,`aktifitas_id`,`is_active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ipaddress`) values (7,1,12,'1','2020-05-18 16:21:06','Admin','2020-05-18 16:21:06',NULL,'127.0.0.1');
insert  into `master_setting_aktifitas`(`id`,`unit_id`,`aktifitas_id`,`is_active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ipaddress`) values (8,2,1,'1','2020-05-18 16:21:06','Admin','2020-05-18 16:21:06',NULL,'127.0.0.1');
insert  into `master_setting_aktifitas`(`id`,`unit_id`,`aktifitas_id`,`is_active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ipaddress`) values (9,2,2,'1','2020-05-18 16:21:06','Admin','2020-05-18 16:21:06',NULL,'127.0.0.1');
insert  into `master_setting_aktifitas`(`id`,`unit_id`,`aktifitas_id`,`is_active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ipaddress`) values (10,2,3,'1','2020-05-18 16:21:06','Admin','2020-05-18 16:21:06',NULL,'127.0.0.1');
insert  into `master_setting_aktifitas`(`id`,`unit_id`,`aktifitas_id`,`is_active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ipaddress`) values (11,2,4,'1','2020-05-18 16:21:06','Admin','2020-05-18 16:21:06',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
