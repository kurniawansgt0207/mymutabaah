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
/*Table structure for table `master_aktifitas` */

DROP TABLE IF EXISTS `master_aktifitas`;

CREATE TABLE `master_aktifitas` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `kode_aktifitas` varchar(10) DEFAULT NULL,
  `nama_aktifitas` varchar(200) DEFAULT NULL,
  `satuan_aktifitas` varchar(100) DEFAULT NULL,
  `type_aktifitas` int(2) DEFAULT '0' COMMENT '1 = checklist, 2 = input',
  `peruntukan` varchar(20) DEFAULT NULL,
  `catatan` int(1) DEFAULT '0' COMMENT '1 = Ya, 0 = Tidak',
  `active` int(1) DEFAULT '0',
  `visorder` int(2) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `master_aktifitas` */

insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (1,'MY-00001','Tahajjud','kali',1,'daily',0,1,1,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (2,'MY-00002','Tadarus Quran','juz',2,'daily',0,1,2,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (3,'MY-00003','Shaum Senin','kali',1,'daily',0,1,5,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (4,'MY-00004','Shaum Kamis','kali',1,'daily',0,1,6,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (5,'MY-00005','Olah Raga','kali',1,'daily',0,1,7,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (6,'MY-00006','Shodaqoh External','rupiah',2,'monthly',0,0,4,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (7,'MY-00007','Infaq','rupiah',2,'monthly',0,0,2,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (8,'MY-00008','Shodaqoh','rupiah',2,'monthly',0,0,3,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (9,'MY-00009','Zakat','rupiah',2,'monthly',0,0,1,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (10,'MY-00010','Ta\'awun','rupiah',2,'monthly',0,0,5,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (11,'MY-00011','Hafalan Quran','ayat',2,'daily',1,1,3,'0000-00-00 00:00:00','','0000-00-00 00:00:00','','');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (12,'MY-00012','Sholat Dhuha','kali',1,'daily',0,1,4,'0000-00-00 00:00:00','','0000-00-00 00:00:00','','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
