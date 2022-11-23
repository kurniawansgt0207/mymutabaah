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
/*Table structure for table `aktifitas_harian` */

CREATE TABLE `aktifitas_harian` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `tgl_aktifitas` date DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  `user_fullname` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

/*Data for the table `aktifitas_harian` */

insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (1,'2020-04-07',1,'admin','2020-04-07 00:00:00','admin','2020-04-07 00:00:00','admin','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (2,'2020-04-07',3,'Sigit Kurniawan','2020-04-07 00:00:00','skurniawan','2020-04-07 00:00:00','skurniawan','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (3,'2020-04-06',3,'Sigit Kurniawan','2020-04-07 17:49:13','skurniawan','2020-04-07 17:49:13','skurniawan','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (4,'2020-04-09',1,'admin','2020-04-09 23:40:09','admin','2020-04-09 23:40:09','admin','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (5,'2020-04-10',1,'admin','2020-04-09 21:42:00','admin','2020-04-09 21:42:00','admin','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (6,'2020-04-01',1,'admin','2020-04-09 23:35:41','admin','2020-04-09 23:35:41','admin','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (7,'2020-04-02',1,'admin','2020-04-09 23:38:30','admin','2020-04-09 23:38:30','admin','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (8,'2020-04-03',1,'admin','2020-04-09 23:38:55','admin','2020-04-09 23:38:55','admin','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (9,'2020-04-04',1,'admin','2020-04-09 23:39:11','admin','2020-04-09 23:39:11','admin','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (10,'2020-04-05',1,'admin','2020-04-09 23:39:24','admin','2020-04-09 23:39:24','admin','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (11,'2020-04-06',1,'admin','2020-04-09 23:39:44','admin','2020-04-09 23:39:44','admin','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (12,'2020-04-08',1,'admin','2020-04-09 23:40:00','admin','2020-04-09 23:40:00','admin','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (13,'2020-04-01',3,'Sigit Kurniawan','2020-04-15 11:18:52','SKurniawan','2020-04-15 11:18:52','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (14,'2020-04-02',3,'Sigit Kurniawan','2020-04-15 11:19:04','SKurniawan','2020-04-15 11:19:04','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (15,'2020-04-03',3,'Sigit Kurniawan','2020-04-15 11:19:13','SKurniawan','2020-04-15 11:19:13','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (16,'2020-04-04',3,'Sigit Kurniawan','2020-04-15 11:19:32','SKurniawan','2020-04-15 11:19:32','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (17,'2020-04-05',3,'Sigit Kurniawan','2020-04-15 14:25:02','admin_r4','2020-04-15 14:25:02','admin_r4','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (18,'2020-04-08',3,'Sigit Kurniawan','2020-04-15 14:50:04','admin_r4','2020-04-15 14:50:04','admin_r4','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (19,'2020-04-09',3,'Sigit Kurniawan','2020-04-15 14:56:29','admin_r4','2020-04-15 14:56:29','admin_r4','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (20,'2020-04-10',3,'Sigit Kurniawan','2020-04-15 14:57:55','admin_r4','2020-04-15 14:57:55','admin_r4','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (21,'2020-04-11',3,'Sigit Kurniawan','2020-04-15 15:41:03','admin_r4','2020-04-15 15:41:03','admin_r4','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (22,'2020-04-12',3,'Sigit Kurniawan','2020-04-15 15:42:09','admin_r4','2020-04-15 15:42:09','admin_r4','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (23,'2020-04-26',3,'Sigit Kurniawan','2020-04-26 15:24:47','admin_pembinaan_r4_s1','2020-04-26 15:24:47','admin_pembinaan_r4_s1','127.0.0.1');
insert  into `aktifitas_harian`(`id`,`tgl_aktifitas`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (24,'2020-04-25',3,'Sigit Kurniawan','2020-04-26 15:06:54','admin_pembinaan_r4_s1','2020-04-26 15:06:54','admin_pembinaan_r4_s1','127.0.0.1');

/*Table structure for table `aktifitas_harian_detail` */

CREATE TABLE `aktifitas_harian_detail` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `aktifitas_id` int(5) DEFAULT NULL,
  `kode_aktifitas` varchar(20) DEFAULT NULL,
  `nama_aktifitas` varchar(200) DEFAULT NULL,
  `value_aktifitas` double(10,2) DEFAULT NULL,
  `satuan_aktifitas` varchar(10) DEFAULT NULL,
  `catatan_aktifitas` text,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

/*Data for the table `aktifitas_harian_detail` */

insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (1,1,'MY-00001','Tahajjud',1.00,'kali','','2020-04-07 00:00:00','admin','2020-04-07 00:00:00','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (2,1,'MY-00002','Tadarus Qur\'an',1.00,'juz','','2020-04-07 00:00:00','admin','2020-04-07 00:00:00','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (3,1,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-07 00:00:00','admin','2020-04-07 00:00:00','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (4,1,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-07 00:00:00','admin','2020-04-07 00:00:00','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (5,1,'MY-00005','Olah Raga',1.00,'kali','','2020-04-07 00:00:00','admin','2020-04-07 00:00:00','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (6,2,'MY-00001','Tahajjud',1.00,'kali','','2020-04-07 00:00:00','skurniawan','2020-04-07 00:00:00','skurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (7,2,'MY-00002','Tadarus Qur\'an',5.00,'juz','','2020-04-07 00:00:00','skurniawan','2020-04-07 00:00:00','skurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (8,2,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-07 00:00:00','skurniawan','2020-04-07 00:00:00','skurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (9,2,'MY-00004','Shaum Kamis',1.00,'kali','','2020-04-07 00:00:00','skurniawan','2020-04-07 00:00:00','skurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (10,2,'MY-00005','Olah Raga',1.00,'kali','','2020-04-07 00:00:00','skurniawan','2020-04-07 00:00:00','skurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (11,3,'MY-00001','Tahajjud',1.00,'kali','','2020-04-07 17:49:13','skurniawan','2020-04-07 17:49:13','skurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (12,3,'MY-00002','Tadarus Qur\'an',2.50,'juz','','2020-04-07 17:49:13','skurniawan','2020-04-07 17:49:13','skurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (13,3,'MY-00003','Shaum Senin',1.00,'kali','','2020-04-07 17:49:13','skurniawan','2020-04-07 17:49:13','skurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (14,3,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-07 17:49:13','skurniawan','2020-04-07 17:49:13','skurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (15,3,'MY-00005','Olah Raga',1.00,'kali','','2020-04-07 17:49:13','skurniawan','2020-04-07 17:49:13','skurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (16,4,'MY-00001','Tahajjud',1.00,'kali','','2020-04-09 23:40:09','admin','2020-04-09 23:40:09','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (17,4,'MY-00002','Tadarus Qur\'an',0.50,'juz','','2020-04-09 23:40:09','admin','2020-04-09 23:40:09','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (18,4,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-09 23:40:09','admin','2020-04-09 23:40:09','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (19,4,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-09 23:40:09','admin','2020-04-09 23:40:09','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (20,4,'MY-00005','Olah Raga',0.00,'kali','','2020-04-09 23:40:09','admin','2020-04-09 23:40:09','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (21,5,'MY-00001','Tahajjud',1.00,'kali','','2020-04-09 21:42:00','admin','2020-04-09 21:42:00','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (22,5,'MY-00002','Tadarus Qur\'an',1.50,'juz','','2020-04-09 21:42:00','admin','2020-04-09 21:42:00','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (23,5,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-09 21:42:00','admin','2020-04-09 21:42:00','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (24,5,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-09 21:42:00','admin','2020-04-09 21:42:00','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (25,5,'MY-00005','Olah Raga',0.00,'kali','','2020-04-09 21:42:00','admin','2020-04-09 21:42:00','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (26,6,'MY-00001','Tahajjud',1.00,'kali','','2020-04-09 23:35:41','admin','2020-04-09 23:35:41','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (27,6,'MY-00002','Tadarus Qur\'an',1.00,'juz','','2020-04-09 23:35:41','admin','2020-04-09 23:35:41','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (28,6,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-09 23:35:41','admin','2020-04-09 23:35:41','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (29,6,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-09 23:35:41','admin','2020-04-09 23:35:41','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (30,6,'MY-00005','Olah Raga',0.00,'kali','','2020-04-09 23:35:41','admin','2020-04-09 23:35:41','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (31,7,'MY-00001','Tahajjud',1.00,'kali','','2020-04-09 23:38:30','admin','2020-04-09 23:38:30','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (32,7,'MY-00002','Tadarus Qur\'an',1.50,'juz','','2020-04-09 23:38:30','admin','2020-04-09 23:38:30','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (33,7,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-09 23:38:30','admin','2020-04-09 23:38:30','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (34,7,'MY-00004','Shaum Kamis',1.00,'kali','','2020-04-09 23:38:30','admin','2020-04-09 23:38:30','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (35,7,'MY-00005','Olah Raga',0.00,'kali','','2020-04-09 23:38:30','admin','2020-04-09 23:38:30','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (36,8,'MY-00001','Tahajjud',1.00,'kali','','2020-04-09 23:38:55','admin','2020-04-09 23:38:55','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (37,8,'MY-00002','Tadarus Qur\'an',1.00,'juz','','2020-04-09 23:38:55','admin','2020-04-09 23:38:55','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (38,8,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-09 23:38:55','admin','2020-04-09 23:38:55','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (39,8,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-09 23:38:55','admin','2020-04-09 23:38:55','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (40,8,'MY-00005','Olah Raga',1.00,'kali','','2020-04-09 23:38:55','admin','2020-04-09 23:38:55','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (41,9,'MY-00001','Tahajjud',1.00,'kali','','2020-04-09 23:39:11','admin','2020-04-09 23:39:11','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (42,9,'MY-00002','Tadarus Qur\'an',1.00,'juz','','2020-04-09 23:39:11','admin','2020-04-09 23:39:11','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (43,9,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-09 23:39:11','admin','2020-04-09 23:39:11','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (44,9,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-09 23:39:11','admin','2020-04-09 23:39:11','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (45,9,'MY-00005','Olah Raga',0.00,'kali','','2020-04-09 23:39:11','admin','2020-04-09 23:39:11','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (46,10,'MY-00001','Tahajjud',1.00,'kali','','2020-04-09 23:39:24','admin','2020-04-09 23:39:24','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (47,10,'MY-00002','Tadarus Qur\'an',1.00,'juz','','2020-04-09 23:39:24','admin','2020-04-09 23:39:24','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (48,10,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-09 23:39:24','admin','2020-04-09 23:39:24','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (49,10,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-09 23:39:24','admin','2020-04-09 23:39:24','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (50,10,'MY-00005','Olah Raga',0.00,'kali','','2020-04-09 23:39:24','admin','2020-04-09 23:39:24','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (51,11,'MY-00001','Tahajjud',1.00,'kali','','2020-04-09 23:39:44','admin','2020-04-09 23:39:44','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (52,11,'MY-00002','Tadarus Qur\'an',1.00,'juz','','2020-04-09 23:39:44','admin','2020-04-09 23:39:44','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (53,11,'MY-00003','Shaum Senin',1.00,'kali','','2020-04-09 23:39:44','admin','2020-04-09 23:39:44','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (54,11,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-09 23:39:44','admin','2020-04-09 23:39:44','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (55,11,'MY-00005','Olah Raga',0.00,'kali','','2020-04-09 23:39:44','admin','2020-04-09 23:39:44','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (56,12,'MY-00001','Tahajjud',1.00,'kali','','2020-04-09 23:40:00','admin','2020-04-09 23:40:00','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (57,12,'MY-00002','Tadarus Qur\'an',0.50,'juz','','2020-04-09 23:40:00','admin','2020-04-09 23:40:00','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (58,12,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-09 23:40:00','admin','2020-04-09 23:40:00','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (59,12,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-09 23:40:00','admin','2020-04-09 23:40:00','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (60,12,'MY-00005','Olah Raga',0.00,'kali','','2020-04-09 23:40:00','admin','2020-04-09 23:40:00','admin','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (61,13,'MY-00001','Tahajjud',1.00,'kali','','2020-04-15 11:18:52','SKurniawan','2020-04-15 11:18:52','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (62,13,'MY-00002','Tadarus Qur\'an',1.00,'juz','','2020-04-15 11:18:52','SKurniawan','2020-04-15 11:18:52','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (63,13,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-15 11:18:52','SKurniawan','2020-04-15 11:18:52','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (64,13,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-15 11:18:52','SKurniawan','2020-04-15 11:18:52','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (65,13,'MY-00005','Olah Raga',1.00,'kali','','2020-04-15 11:18:52','SKurniawan','2020-04-15 11:18:52','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (66,14,'MY-00001','Tahajjud',1.00,'kali','','2020-04-15 11:19:04','SKurniawan','2020-04-15 11:19:04','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (67,14,'MY-00002','Tadarus Qur\'an',0.50,'juz','','2020-04-15 11:19:04','SKurniawan','2020-04-15 11:19:04','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (68,14,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-15 11:19:04','SKurniawan','2020-04-15 11:19:04','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (69,14,'MY-00004','Shaum Kamis',1.00,'kali','','2020-04-15 11:19:04','SKurniawan','2020-04-15 11:19:04','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (70,14,'MY-00005','Olah Raga',0.00,'kali','','2020-04-15 11:19:04','SKurniawan','2020-04-15 11:19:04','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (71,15,'MY-00001','Tahajjud',1.00,'kali','','2020-04-15 11:19:13','SKurniawan','2020-04-15 11:19:13','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (72,15,'MY-00002','Tadarus Qur\'an',1.00,'juz','','2020-04-15 11:19:13','SKurniawan','2020-04-15 11:19:13','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (73,15,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-15 11:19:13','SKurniawan','2020-04-15 11:19:13','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (74,15,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-15 11:19:13','SKurniawan','2020-04-15 11:19:13','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (75,15,'MY-00005','Olah Raga',0.00,'kali','','2020-04-15 11:19:13','SKurniawan','2020-04-15 11:19:13','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (76,16,'MY-00001','Tahajjud',1.00,'kali','','2020-04-15 11:19:32','SKurniawan','2020-04-15 11:19:32','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (77,16,'MY-00002','Tadarus Qur\'an',1.50,'juz','','2020-04-15 11:19:32','SKurniawan','2020-04-15 11:19:32','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (78,16,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-15 11:19:32','SKurniawan','2020-04-15 11:19:32','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (79,16,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-15 11:19:32','SKurniawan','2020-04-15 11:19:32','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (80,16,'MY-00005','Olah Raga',0.00,'kali','','2020-04-15 11:19:32','SKurniawan','2020-04-15 11:19:32','SKurniawan','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (81,17,'MY-00001','Tahajjud',1.00,'kali','','2020-04-15 14:25:02','admin_r4','2020-04-15 14:25:02','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (82,17,'MY-00002','Tadarus Qur\'an',1.00,'juz','','2020-04-15 14:25:02','admin_r4','2020-04-15 14:25:02','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (83,17,'MY-00003','Shaum Senin',1.00,'kali','','2020-04-15 14:25:02','admin_r4','2020-04-15 14:25:02','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (84,17,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-15 14:25:02','admin_r4','2020-04-15 14:25:02','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (85,17,'MY-00005','Olah Raga',0.00,'kali','','2020-04-15 14:25:02','admin_r4','2020-04-15 14:25:02','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (86,18,'MY-00001','Tahajjud',1.00,'kali','','2020-04-15 14:50:04','admin_r4','2020-04-15 14:50:04','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (87,18,'MY-00002','Tadarus Qur\'an',1.00,'juz','','2020-04-15 14:50:04','admin_r4','2020-04-15 14:50:04','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (88,18,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-15 14:50:04','admin_r4','2020-04-15 14:50:04','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (89,18,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-15 14:50:04','admin_r4','2020-04-15 14:50:04','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (90,18,'MY-00005','Olah Raga',1.00,'kali','','2020-04-15 14:50:04','admin_r4','2020-04-15 14:50:04','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (91,19,'MY-00001','Tahajjud',1.00,'kali','','2020-04-15 14:56:29','admin_r4','2020-04-15 14:56:29','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (92,19,'MY-00002','Tadarus Qur\'an',1.00,'juz','','2020-04-15 14:56:29','admin_r4','2020-04-15 14:56:29','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (93,19,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-15 14:56:29','admin_r4','2020-04-15 14:56:29','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (94,19,'MY-00004','Shaum Kamis',1.00,'kali','','2020-04-15 14:56:29','admin_r4','2020-04-15 14:56:29','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (95,19,'MY-00005','Olah Raga',0.00,'kali','','2020-04-15 14:56:29','admin_r4','2020-04-15 14:56:29','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (96,20,'MY-00001','Tahajjud',1.00,'kali','','2020-04-15 14:57:55','admin_r4','2020-04-15 14:57:55','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (97,20,'MY-00002','Tadarus Qur\'an',1.00,'juz','','2020-04-15 14:57:55','admin_r4','2020-04-15 14:57:55','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (98,20,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-15 14:57:55','admin_r4','2020-04-15 14:57:55','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (99,20,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-15 14:57:55','admin_r4','2020-04-15 14:57:55','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (100,20,'MY-00005','Olah Raga',0.00,'kali','','2020-04-15 14:57:55','admin_r4','2020-04-15 14:57:55','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (101,21,'MY-00001','Tahajjud',0.00,'kali','','2020-04-15 15:41:03','admin_r4','2020-04-15 15:41:03','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (102,21,'MY-00002','Tadarus Qur\'an',0.00,'juz','','2020-04-15 15:41:03','admin_r4','2020-04-15 15:41:03','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (103,21,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-15 15:41:03','admin_r4','2020-04-15 15:41:03','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (104,21,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-15 15:41:03','admin_r4','2020-04-15 15:41:03','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (105,21,'MY-00005','Olah Raga',0.00,'kali','','2020-04-15 15:41:03','admin_r4','2020-04-15 15:41:03','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (106,22,'MY-00001','Tahajjud',1.00,'kali','','2020-04-15 15:42:09','admin_r4','2020-04-15 15:42:09','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (107,22,'MY-00002','Tadarus Qur\'an',2.00,'juz','','2020-04-15 15:42:09','admin_r4','2020-04-15 15:42:09','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (108,22,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-15 15:42:09','admin_r4','2020-04-15 15:42:09','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (109,22,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-15 15:42:09','admin_r4','2020-04-15 15:42:09','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (110,22,'MY-00005','Olah Raga',0.00,'kali','','2020-04-15 15:42:09','admin_r4','2020-04-15 15:42:09','admin_r4','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (111,23,'MY-00001','Tahajjud',1.00,'kali','','2020-04-26 15:24:47','admin_pembinaan_r4_s1','2020-04-26 15:24:47','admin_pembinaan_r4_s1','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (112,23,'MY-00002','Tadarus Qur\'an',1.00,'juz','','2020-04-26 15:24:47','admin_pembinaan_r4_s1','2020-04-26 15:24:47','admin_pembinaan_r4_s1','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (113,23,'MY-00003','Shaum Senin',1.00,'kali','','2020-04-26 15:24:47','admin_pembinaan_r4_s1','2020-04-26 15:24:47','admin_pembinaan_r4_s1','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (114,23,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-26 15:24:47','admin_pembinaan_r4_s1','2020-04-26 15:24:47','admin_pembinaan_r4_s1','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (115,23,'MY-00005','Olah Raga',1.00,'kali','','2020-04-26 15:24:47','admin_pembinaan_r4_s1','2020-04-26 15:24:47','admin_pembinaan_r4_s1','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (116,24,'MY-00001','Tahajjud',1.00,'kali','','2020-04-26 15:06:54','admin_pembinaan_r4_s1','2020-04-26 15:06:54','admin_pembinaan_r4_s1','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (117,24,'MY-00002','Tadarus Qur\'an',1.00,'juz','','2020-04-26 15:06:54','admin_pembinaan_r4_s1','2020-04-26 15:06:54','admin_pembinaan_r4_s1','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (118,24,'MY-00003','Shaum Senin',0.00,'kali','','2020-04-26 15:06:54','admin_pembinaan_r4_s1','2020-04-26 15:06:54','admin_pembinaan_r4_s1','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (119,24,'MY-00004','Shaum Kamis',0.00,'kali','','2020-04-26 15:06:54','admin_pembinaan_r4_s1','2020-04-26 15:06:54','admin_pembinaan_r4_s1','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (120,24,'MY-00005','Olah Raga',0.00,'kali','','2020-04-26 15:06:54','admin_pembinaan_r4_s1','2020-04-26 15:06:54','admin_pembinaan_r4_s1','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (121,24,'MY-00011','Hafalan Qur\'an',1.00,'halaman','','2020-04-26 15:06:54','admin_pembinaan_r4_s1','2020-04-26 15:06:54','admin_pembinaan_r4_s1','127.0.0.1');
insert  into `aktifitas_harian_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (122,23,'MY-00011','Hafalan Qur\'an',1.00,'halaman','Al-baqarah : 20-33','2020-04-26 15:24:47','admin_pembinaan_r4_s1','2020-04-26 15:24:47','admin_pembinaan_r4_s1','127.0.0.1');

/*Table structure for table `dashboard_user` */

CREATE TABLE `dashboard_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `graph_query_id` varchar(5) DEFAULT NULL,
  `user` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `dashboard_user` */

/*Table structure for table `graph_model` */

CREATE TABLE `graph_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `xaxiscategories` text,
  `xaxistitle` varchar(255) DEFAULT NULL,
  `yaxistitle` varchar(255) DEFAULT NULL,
  `tooltips` varchar(255) DEFAULT NULL,
  `series` text,
  `entrytime` timestamp NULL DEFAULT NULL,
  `entryuser` varchar(255) DEFAULT NULL,
  `entryip` varchar(255) DEFAULT NULL,
  `updatetime` timestamp NULL DEFAULT NULL,
  `updateuser` varchar(255) DEFAULT NULL,
  `updateip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `graph_model` */

insert  into `graph_model`(`id`,`type`,`name`,`filename`,`description`,`title`,`subtitle`,`xaxiscategories`,`xaxistitle`,`yaxistitle`,`tooltips`,`series`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (1,'area','areabasic','areabasic','Area','Historic and Estimated Worldwide Population Growth by Region','Source: Wikipedia.org','\'1750\', \'1800\', \'1850\', \'1900\', \'1950\', \'1999\', \'2050\'','Test','Billions',' millions','\r\n[{\r\n                name: \'Asia\',\r\n                data: [502, 635, 809, 947, 1402, 3634, 5268]\r\n            }, {\r\n                name: \'Africa\',\r\n                data: [106, 107, 111, 133, 221, 767, 1766]\r\n            }, {\r\n                name: \'Europe\',\r\n                data: [163, 203, 276, 408, 547, 729, 628]\r\n            }, {\r\n                name: \'America\',\r\n                data: [18, 31, 54, 156, 339, 818, 1201]\r\n            }, {\r\n                name: \'Oceania\',\r\n                data: [2, 2, 2, 6, 13, 30, 46]\r\n            }]\r\n            ',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `graph_model`(`id`,`type`,`name`,`filename`,`description`,`title`,`subtitle`,`xaxiscategories`,`xaxistitle`,`yaxistitle`,`tooltips`,`series`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (2,'area','areastacked','areastacked','Stacked Area','Historic and Estimated Worldwide Population Growth by Region','Source: Wikipedia.org','\'1750\', \'1800\', \'1850\', \'1900\', \'1950\', \'1999\', \'2050\'','Test','Billions',' millions','\r\n[{\r\n                name: \'Asia\',\r\n                data: [502, 635, 809, 947, 1402, 3634, 5268]\r\n            }, {\r\n                name: \'Africa\',\r\n                data: [106, 107, 111, 133, 221, 767, 1766]\r\n            }, {\r\n                name: \'Europe\',\r\n                data: [163, 203, 276, 408, 547, 729, 628]\r\n            }, {\r\n                name: \'America\',\r\n                data: [18, 31, 54, 156, 339, 818, 1201]\r\n            }, {\r\n                name: \'Oceania\',\r\n                data: [2, 2, 2, 6, 13, 30, 46]\r\n            }]\r\n            ',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `graph_model`(`id`,`type`,`name`,`filename`,`description`,`title`,`subtitle`,`xaxiscategories`,`xaxistitle`,`yaxistitle`,`tooltips`,`series`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (3,'bar','barbasic','barbasic','Bar','Historic and Estimated Worldwide Population Growth by Region','Source: Wikipedia.org','\'1750\', \'1800\', \'1850\', \'1900\', \'1950\', \'1999\', \'2050\'','Test','Billions',' millions','\r\n[{\r\n                name: \'Asia\',\r\n                data: [502, 635, 809, 947, 1402, 3634, 5268]\r\n            }, {\r\n                name: \'Africa\',\r\n                data: [106, 107, 111, 133, 221, 767, 1766]\r\n            }, {\r\n                name: \'Europe\',\r\n                data: [163, 203, 276, 408, 547, 729, 628]\r\n            }, {\r\n                name: \'America\',\r\n                data: [18, 31, 54, 156, 339, 818, 1201]\r\n            }, {\r\n                name: \'Oceania\',\r\n                data: [2, 2, 2, 6, 13, 30, 46]\r\n            }]\r\n            ',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `graph_model`(`id`,`type`,`name`,`filename`,`description`,`title`,`subtitle`,`xaxiscategories`,`xaxistitle`,`yaxistitle`,`tooltips`,`series`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (4,'bar','barstacked','barstacked','Bar Stacked','Historic and Estimated Worldwide Population Growth by Region','Source: Wikipedia.org','\'1750\', \'1800\', \'1850\', \'1900\', \'1950\', \'1999\', \'2050\'','Test','Billions',' millions','\r\n[{\r\n                name: \'Asia\',\r\n                data: [502, 635, 809, 947, 1402, 3634, 5268]\r\n            }, {\r\n                name: \'Africa\',\r\n                data: [106, 107, 111, 133, 221, 767, 1766]\r\n            }, {\r\n                name: \'Europe\',\r\n                data: [163, 203, 276, 408, 547, 729, 628]\r\n            }, {\r\n                name: \'America\',\r\n                data: [18, 31, 54, 156, 339, 818, 1201]\r\n            }, {\r\n                name: \'Oceania\',\r\n                data: [2, 2, 2, 6, 13, 30, 46]\r\n            }]\r\n            ',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `graph_model`(`id`,`type`,`name`,`filename`,`description`,`title`,`subtitle`,`xaxiscategories`,`xaxistitle`,`yaxistitle`,`tooltips`,`series`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (5,'column','columnbasic','columnbasic','Bar Column','Historic and Estimated Worldwide Population Growth by Region','Source: Wikipedia.org','\'1750\', \'1800\', \'1850\', \'1900\', \'1950\', \'1999\', \'2050\'','Test','Billions',' millions','\r\n[{\r\n                name: \'Asia\',\r\n                data: [502, 635, 809, 947, 1402, 3634, 5268]\r\n            }, {\r\n                name: \'Africa\',\r\n                data: [106, 107, 111, 133, 221, 767, 1766]\r\n            }, {\r\n                name: \'Europe\',\r\n                data: [163, 203, 276, 408, 547, 729, 628]\r\n            }, {\r\n                name: \'America\',\r\n                data: [18, 31, 54, 156, 339, 818, 1201]\r\n            }, {\r\n                name: \'Oceania\',\r\n                data: [2, 2, 2, 6, 13, 30, 46]\r\n            }]\r\n            ',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `graph_model`(`id`,`type`,`name`,`filename`,`description`,`title`,`subtitle`,`xaxiscategories`,`xaxistitle`,`yaxistitle`,`tooltips`,`series`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (6,'column','columnstacked','columnstacked','Column Staced','Historic and Estimated Worldwide Population Growth by Region','Source: Wikipedia.org','\'1750\', \'1800\', \'1850\', \'1900\', \'1950\', \'1999\', \'2050\'','Test','Billions',' millions','\r\n[{\r\n                name: \'Asia\',\r\n                data: [502, 635, 809, 947, 1402, 3634, 5268]\r\n            }, {\r\n                name: \'Africa\',\r\n                data: [106, 107, 111, 133, 221, 767, 1766]\r\n            }, {\r\n                name: \'Europe\',\r\n                data: [163, 203, 276, 408, 547, 729, 628]\r\n            }, {\r\n                name: \'America\',\r\n                data: [18, 31, 54, 156, 339, 818, 1201]\r\n            }, {\r\n                name: \'Oceania\',\r\n                data: [2, 2, 2, 6, 13, 30, 46]\r\n            }]\r\n            ',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `graph_model`(`id`,`type`,`name`,`filename`,`description`,`title`,`subtitle`,`xaxiscategories`,`xaxistitle`,`yaxistitle`,`tooltips`,`series`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (7,'line','linebasic','linebasic','Line','Browser market shares at a specific website, 2010','Source: Wikipedia.org','\'1750\', \'1800\', \'1850\', \'1900\', \'1950\', \'1999\', \'2050\'','Test','Percentage',' millions','\r\n[{\r\n                name: \'Asia\',\r\n                data: [502, 635, 809, 947, 1402, 3634, 5268]\r\n            }, {\r\n                name: \'Africa\',\r\n                data: [106, 107, 111, 133, 221, 767, 1766]\r\n            }, {\r\n                name: \'Europe\',\r\n                data: [163, 203, 276, 408, 547, 729, 628]\r\n            }, {\r\n                name: \'America\',\r\n                data: [18, 31, 54, 156, 339, 818, 1201]\r\n            }, {\r\n                name: \'Oceania\',\r\n                data: [2, 2, 2, 6, 13, 30, 46]\r\n            }]\r\n            ',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `graph_model`(`id`,`type`,`name`,`filename`,`description`,`title`,`subtitle`,`xaxiscategories`,`xaxistitle`,`yaxistitle`,`tooltips`,`series`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (8,'pie','piebasic','piebasic','Pie','Browser market shares at a specific website, 2010','Source: Wikipedia.org',NULL,'Test','Percentage','{series.name}: <b>{point.percentage}%</b>','[{\r\ntype: \'pie\',\r\nname: \'Delapan\',\r\ndata : [\r\n[\'area\', 33 ],\r\n[\'bar\', 52 ],\r\n[\'column\', 63 ],\r\n[\'line\', 55 ],\r\n[\'pie\', 88 ]\r\n]\r\n\r\n}]\r\n',NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `graph_model`(`id`,`type`,`name`,`filename`,`description`,`title`,`subtitle`,`xaxiscategories`,`xaxistitle`,`yaxistitle`,`tooltips`,`series`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (9,'table','table','table','Table Model','Browser market shares at a specific website, 2010','Source: Wikipedia.org','SELECT c.prod_name,(SUM(a.prod_quantity)) AS quantity\r\nFROM product_transaction a\r\nINNER JOIN transaction_log b ON a.trans_number = b.trans_number \r\nINNER JOIN master_product c ON a.prod_number = c.prod_number\r\nWHERE b.trans_type_id IN (1,6) \r\nAND (YEAR(b.trans_date) =  \'2015\') \r\nGROUP BY a.prod_number\r\nORDER BY SUM(a.prod_quantity) DESC\r\nLIMIT 10','Test','Percentage',' millions',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `graph_query` */

CREATE TABLE `graph_query` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_graph_model` int(11) DEFAULT NULL,
  `group_code` varchar(200) DEFAULT NULL,
  `query` text,
  `crosstab` int(11) DEFAULT '0',
  `tabletemp` varchar(200) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `timing` int(11) DEFAULT '0',
  `month` int(11) DEFAULT '0',
  `year` int(11) DEFAULT '0',
  `Title` varchar(255) DEFAULT NULL,
  `SubTitle` varchar(255) DEFAULT NULL,
  `xaxistitle` varchar(255) DEFAULT NULL,
  `yaxistitle` varchar(255) DEFAULT NULL,
  `tooltips` varchar(255) DEFAULT NULL,
  `querytable` text,
  `querytable2` text,
  `entrytime` timestamp NULL DEFAULT NULL,
  `entryuser` varchar(255) DEFAULT NULL,
  `entryip` varchar(255) DEFAULT NULL,
  `updatetime` timestamp NULL DEFAULT NULL,
  `updateuser` varchar(255) DEFAULT NULL,
  `updateip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `graph_query` */

insert  into `graph_query`(`id`,`id_graph_model`,`group_code`,`query`,`crosstab`,`tabletemp`,`lastupdate`,`timing`,`month`,`year`,`Title`,`SubTitle`,`xaxistitle`,`yaxistitle`,`tooltips`,`querytable`,`querytable2`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (1,7,NULL,'SELECT \'customer\', 10 a,20 b',0,'temp_customer_growth','2016-03-07 08:00:04',43200,0,0,'Customer Growth','Per Year','posisi','Jumlah Dalam Ribuan','',NULL,NULL,NULL,'','','2015-10-20 07:59:13','windu','::1');

/*Table structure for table `initial_company` */

CREATE TABLE `initial_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `database_name` varchar(200) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `bgfile` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `initial_company` */

insert  into `initial_company`(`id`,`company_name`,`username`,`database_name`,`logo`,`bgfile`) values (1,'Mutabaah','admin','mutabaah_yaumiyah','logo-masjid.png','logo-masjid.png');

/*Table structure for table `master_aktifitas` */

CREATE TABLE `master_aktifitas` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `kode_aktifitas` varchar(10) DEFAULT NULL,
  `nama_aktifitas` varchar(200) DEFAULT NULL,
  `satuan_aktifitas` varchar(100) DEFAULT NULL,
  `type_aktifitas` int(2) DEFAULT '0' COMMENT '1 = checklist, 2 = input',
  `peruntukan` varchar(20) DEFAULT NULL,
  `catatan` int(1) DEFAULT '0' COMMENT '1 = Ya, 0 = Tidak',
  `active` int(1) DEFAULT '0',
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `master_aktifitas` */

insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (1,'MY-00001','Tahajjud','kali',1,'daily',0,1,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (2,'MY-00002','Tadarus Qur\'an','juz',2,'daily',0,1,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (3,'MY-00003','Shaum Senin','kali',1,'daily',0,1,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (4,'MY-00004','Shaum Kamis','kali',1,'daily',0,1,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (5,'MY-00005','Olah Raga','kali',1,'daily',0,1,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (6,'MY-00006','Shodaqoh External','rupiah',2,'monthly',0,0,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (7,'MY-00007','Infaq','rupiah',2,'monthly',0,0,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (8,'MY-00008','Shodaqoh','rupiah',2,'monthly',0,0,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (9,'MY-00009','Zakat','rupiah',2,'monthly',0,0,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (10,'MY-00010','Ta\'awun','rupiah',2,'monthly',0,0,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (11,'MY-00011','Hafalan Qur\'an','halaman',2,'daily',1,1,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `master_anggota` */

CREATE TABLE `master_anggota` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama_anggota` varchar(200) DEFAULT NULL,
  `cabang_id` int(5) DEFAULT NULL,
  `ranting_id` int(5) DEFAULT NULL,
  `group_id` int(5) DEFAULT NULL,
  `shaff` int(5) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `ip_address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Data for the table `master_anggota` */

insert  into `master_anggota`(`id`,`nama_anggota`,`cabang_id`,`ranting_id`,`group_id`,`shaff`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (1,'Ivan Ramdana',1,4,4,1,'2020-04-26 12:42:55','admin','2020-04-26 12:42:55','admin','127.0.0.1');
insert  into `master_anggota`(`id`,`nama_anggota`,`cabang_id`,`ranting_id`,`group_id`,`shaff`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (2,'Sigit Kurniawan',1,4,5,1,'2020-04-11 04:07:19','admin','2020-04-11 04:07:19','admin','127.0.0.1');
insert  into `master_anggota`(`id`,`nama_anggota`,`cabang_id`,`ranting_id`,`group_id`,`shaff`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (3,'Bagus Subarkah',1,4,4,2,'2020-04-26 12:43:09','admin','2020-04-26 12:43:09','admin','127.0.0.1');
insert  into `master_anggota`(`id`,`nama_anggota`,`cabang_id`,`ranting_id`,`group_id`,`shaff`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (4,'Abdurahman Arif',1,4,5,1,'2020-04-11 04:12:29','admin','2020-04-11 04:12:29','admin','127.0.0.1');
insert  into `master_anggota`(`id`,`nama_anggota`,`cabang_id`,`ranting_id`,`group_id`,`shaff`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (5,'Iqbal Baehaqy',1,4,5,2,'2020-04-26 13:20:00','admin','2020-04-26 13:20:00','admin','127.0.0.1');
insert  into `master_anggota`(`id`,`nama_anggota`,`cabang_id`,`ranting_id`,`group_id`,`shaff`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (6,'Ferry Ferdinand',1,4,5,2,'2020-04-26 13:20:07','admin','2020-04-26 13:20:07','admin','127.0.0.1');
insert  into `master_anggota`(`id`,`nama_anggota`,`cabang_id`,`ranting_id`,`group_id`,`shaff`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (7,'Rosyid',1,8,5,1,'2020-04-15 13:21:14','admin_c1','2020-04-15 13:21:14','admin_c1','127.0.0.1');
insert  into `master_anggota`(`id`,`nama_anggota`,`cabang_id`,`ranting_id`,`group_id`,`shaff`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (8,'Setio Hadi',1,8,5,1,'2020-04-15 13:21:26','admin_c1','2020-04-15 13:21:26','admin_c1','127.0.0.1');
insert  into `master_anggota`(`id`,`nama_anggota`,`cabang_id`,`ranting_id`,`group_id`,`shaff`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (9,'Herman',1,8,5,1,'2020-04-15 13:21:38','admin_c1','2020-04-15 13:21:38','admin_c1','127.0.0.1');
insert  into `master_anggota`(`id`,`nama_anggota`,`cabang_id`,`ranting_id`,`group_id`,`shaff`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (10,'Imam Suwanto',1,8,5,1,'2020-04-15 13:21:53','admin_c1','2020-04-15 13:21:53','admin_c1','127.0.0.1');
insert  into `master_anggota`(`id`,`nama_anggota`,`cabang_id`,`ranting_id`,`group_id`,`shaff`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (11,'Iskandar',1,8,5,1,'2020-04-15 13:22:05','admin_c1','2020-04-15 13:22:05','admin_c1','127.0.0.1');
insert  into `master_anggota`(`id`,`nama_anggota`,`cabang_id`,`ranting_id`,`group_id`,`shaff`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (12,'Erlangga',1,8,5,1,'2020-04-15 13:22:17','admin_c1','2020-04-15 13:22:17','admin_c1','127.0.0.1');
insert  into `master_anggota`(`id`,`nama_anggota`,`cabang_id`,`ranting_id`,`group_id`,`shaff`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (13,'Mujiburohman',1,4,4,1,'2020-04-26 12:43:18','admin','2020-04-26 12:43:18','admin','127.0.0.1');

/*Table structure for table `master_department` */

CREATE TABLE `master_department` (
  `departmentid` int(5) NOT NULL AUTO_INCREMENT,
  `description` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`departmentid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `master_department` */

insert  into `master_department`(`departmentid`,`description`) values (1,'RT-1');
insert  into `master_department`(`departmentid`,`description`) values (2,'RT-2');
insert  into `master_department`(`departmentid`,`description`) values (3,'RT-3');
insert  into `master_department`(`departmentid`,`description`) values (4,'RT-4');
insert  into `master_department`(`departmentid`,`description`) values (5,'RT-5');
insert  into `master_department`(`departmentid`,`description`) values (6,'RT-6');
insert  into `master_department`(`departmentid`,`description`) values (7,'RT-7');
insert  into `master_department`(`departmentid`,`description`) values (8,'CABANG');
insert  into `master_department`(`departmentid`,`description`) values (9,'YABIM');

/*Table structure for table `master_group` */

CREATE TABLE `master_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupcode` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(100) DEFAULT NULL,
  `entrytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entryuser` varchar(255) DEFAULT NULL,
  `entryip` varchar(255) DEFAULT NULL,
  `updatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updateuser` varchar(255) DEFAULT NULL,
  `updateip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`groupcode`),
  UNIQUE KEY `idxMasterGroup` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `master_group` */

insert  into `master_group`(`id`,`groupcode`,`description`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (1,'Admin','Ini Admin','2015-06-20 01:10:06','','','2015-06-20 00:10:30','windu','::1');
insert  into `master_group`(`id`,`groupcode`,`description`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (2,'User','Pengguna','2020-04-07 14:35:15','admin','127.0.0.1','2020-04-07 14:35:15','admin','127.0.0.1');
insert  into `master_group`(`id`,`groupcode`,`description`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (3,'Admin_Group','Administrator Group','2020-04-15 18:57:58','','','2020-04-15 11:57:58','admin','127.0.0.1');
insert  into `master_group`(`id`,`groupcode`,`description`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (4,'Admin_Dakwah','Admin Group Dakwah & Kaderisasi','2020-04-26 13:59:21','admin','127.0.0.1','2020-04-26 06:48:54','admin','127.0.0.1');
insert  into `master_group`(`id`,`groupcode`,`description`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (5,'Admin_Pembinaan','Admin Group Pembinaan','2020-04-26 13:59:18','admin','127.0.0.1','2020-04-26 06:49:11','admin','127.0.0.1');

/*Table structure for table `master_group_detail` */

CREATE TABLE `master_group_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupcode` varchar(20) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `read` int(1) DEFAULT '0',
  `confirm` int(1) DEFAULT '0',
  `entry` int(1) DEFAULT '0',
  `update` int(1) DEFAULT '0',
  `delete` int(1) DEFAULT '0',
  `print` int(1) DEFAULT '0',
  `export` int(1) DEFAULT '0',
  `import` int(1) DEFAULT '0',
  `entrytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entryuser` varchar(255) DEFAULT NULL,
  `entryip` varchar(255) DEFAULT NULL,
  `updatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updateuser` varchar(255) DEFAULT NULL,
  `updateip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `idxGroupModule` (`groupcode`,`module`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;

/*Data for the table `master_group_detail` */

insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (79,'User','MASTER_ANGGOTA',0,0,0,0,0,0,0,0,'2020-04-15 13:16:09','admin','127.0.0.1','2020-04-15 13:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (81,'User','RPT_PERIODE_ANGGOTA',1,0,0,0,0,0,0,0,'2020-04-15 13:16:09','admin','127.0.0.1','2020-04-15 13:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (80,'User','RPT_HARIAN_ANGGOTA',1,0,0,0,0,0,0,0,'2020-04-15 13:16:09','admin','127.0.0.1','2020-04-15 13:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (78,'User','MUTABAAH_YAUMIYAH',1,1,1,1,0,0,0,0,'2020-04-15 13:16:09','admin','127.0.0.1','2020-04-15 13:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (77,'User','GRAPH_QUERY',0,0,0,0,0,0,0,0,'2020-04-15 13:16:09','admin','127.0.0.1','2020-04-15 13:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (74,'User','MASTER_USER',0,0,0,0,0,0,0,0,'2020-04-15 13:16:09','admin','127.0.0.1','2020-04-15 13:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (75,'User','MASTER_GROUP',0,0,0,0,0,0,0,0,'2020-04-15 13:16:09','admin','127.0.0.1','2020-04-15 13:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (76,'User','MASTER_MODULE',0,0,0,0,0,0,0,0,'2020-04-15 13:16:09','admin','127.0.0.1','2020-04-15 13:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (73,'User','LAPORAN',1,1,1,1,1,1,1,1,'2020-04-15 13:16:09','admin','127.0.0.1','2020-04-15 13:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (72,'User','ADMIN',0,0,0,0,0,0,0,0,'2020-04-15 13:16:09','admin','127.0.0.1','2020-04-15 13:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (69,'Admin_Group','RPT_HARIAN_ANGGOTA',1,0,0,0,0,0,0,0,'2020-04-15 13:16:03','admin','127.0.0.1','2020-04-15 13:16:03','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (68,'Admin_Group','MASTER_ANGGOTA',1,1,1,1,1,0,0,0,'2020-04-15 13:16:03','admin','127.0.0.1','2020-04-15 13:16:03','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (66,'Admin_Group','GRAPH_QUERY',0,0,0,0,0,0,0,0,'2020-04-15 13:16:03','admin','127.0.0.1','2020-04-15 13:16:03','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (67,'Admin_Group','MUTABAAH_YAUMIYAH',1,0,0,0,0,0,0,0,'2020-04-15 13:16:03','admin','127.0.0.1','2020-04-15 13:16:03','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (65,'Admin_Group','MASTER_MODULE',0,0,0,0,0,0,0,0,'2020-04-15 13:16:03','admin','127.0.0.1','2020-04-15 13:16:03','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (64,'Admin_Group','MASTER_GROUP',0,0,0,0,0,0,0,0,'2020-04-15 13:16:03','admin','127.0.0.1','2020-04-15 13:16:03','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (63,'Admin_Group','MASTER_USER',0,0,0,0,0,0,0,0,'2020-04-15 13:16:03','admin','127.0.0.1','2020-04-15 13:16:03','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (61,'Admin_Group','ADMIN',1,0,0,0,0,0,0,0,'2020-04-15 13:16:03','admin','127.0.0.1','2020-04-15 13:16:03','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (62,'Admin_Group','LAPORAN',1,0,0,0,0,0,0,0,'2020-04-15 13:16:03','admin','127.0.0.1','2020-04-15 13:16:03','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (60,'Admin_Group','DASHBOARD',0,0,0,0,0,0,0,0,'2020-04-15 13:16:03','admin','127.0.0.1','2020-04-15 13:16:03','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (71,'User','DASHBOARD',0,0,0,0,0,0,0,0,'2020-04-15 13:16:09','admin','127.0.0.1','2020-04-15 13:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (70,'Admin_Group','RPT_PERIODE_ANGGOTA',1,0,0,0,0,0,0,0,'2020-04-15 13:16:03','admin','127.0.0.1','2020-04-15 13:16:03','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (115,'Admin_Dakwah','RPT_HARIAN_ANGGOTA',1,0,0,0,0,0,0,0,'2020-04-26 13:24:26','admin','127.0.0.1','2020-04-26 13:24:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (114,'Admin_Dakwah','MASTER_ANGGOTA',1,0,0,0,0,0,0,0,'2020-04-26 13:24:26','admin','127.0.0.1','2020-04-26 13:24:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (113,'Admin_Dakwah','MUTABAAH_YAUMIYAH',1,0,0,0,0,0,0,0,'2020-04-26 13:24:26','admin','127.0.0.1','2020-04-26 13:24:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (112,'Admin_Dakwah','GRAPH_QUERY',0,0,0,0,0,0,0,0,'2020-04-26 13:24:26','admin','127.0.0.1','2020-04-26 13:24:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (111,'Admin_Dakwah','MASTER_MODULE',0,0,0,0,0,0,0,0,'2020-04-26 13:24:26','admin','127.0.0.1','2020-04-26 13:24:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (110,'Admin_Dakwah','MASTER_GROUP',0,0,0,0,0,0,0,0,'2020-04-26 13:24:26','admin','127.0.0.1','2020-04-26 13:24:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (109,'Admin_Dakwah','MASTER_USER',0,0,0,0,0,0,0,0,'2020-04-26 13:24:26','admin','127.0.0.1','2020-04-26 13:24:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (108,'Admin_Dakwah','LAPORAN',1,0,0,0,0,0,0,0,'2020-04-26 13:24:26','admin','127.0.0.1','2020-04-26 13:24:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (107,'Admin_Dakwah','ADMIN',1,0,0,0,0,0,0,0,'2020-04-26 13:24:26','admin','127.0.0.1','2020-04-26 13:24:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (106,'Admin_Dakwah','DASHBOARD',0,0,0,0,0,0,0,0,'2020-04-26 13:24:25','admin','127.0.0.1','2020-04-26 13:24:25','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (94,'Admin_Pembinaan','DASHBOARD',0,0,0,0,0,0,0,0,'2020-04-26 13:24:18','admin','127.0.0.1','2020-04-26 13:24:18','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (95,'Admin_Pembinaan','ADMIN',1,0,0,0,0,0,0,0,'2020-04-26 13:24:18','admin','127.0.0.1','2020-04-26 13:24:18','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (96,'Admin_Pembinaan','LAPORAN',1,0,0,0,0,0,0,0,'2020-04-26 13:24:18','admin','127.0.0.1','2020-04-26 13:24:18','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (97,'Admin_Pembinaan','MASTER_USER',0,0,0,0,0,0,0,0,'2020-04-26 13:24:18','admin','127.0.0.1','2020-04-26 13:24:18','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (98,'Admin_Pembinaan','MASTER_GROUP',0,0,0,0,0,0,0,0,'2020-04-26 13:24:18','admin','127.0.0.1','2020-04-26 13:24:18','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (99,'Admin_Pembinaan','MASTER_MODULE',0,0,0,0,0,0,0,0,'2020-04-26 13:24:18','admin','127.0.0.1','2020-04-26 13:24:18','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (100,'Admin_Pembinaan','GRAPH_QUERY',0,0,0,0,0,0,0,0,'2020-04-26 13:24:18','admin','127.0.0.1','2020-04-26 13:24:18','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (101,'Admin_Pembinaan','MUTABAAH_YAUMIYAH',1,0,0,0,0,0,0,0,'2020-04-26 13:24:18','admin','127.0.0.1','2020-04-26 13:24:18','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (102,'Admin_Pembinaan','MASTER_ANGGOTA',1,0,0,0,0,0,0,0,'2020-04-26 13:24:18','admin','127.0.0.1','2020-04-26 13:24:18','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (103,'Admin_Pembinaan','RPT_HARIAN_ANGGOTA',1,0,0,0,0,0,0,0,'2020-04-26 13:24:18','admin','127.0.0.1','2020-04-26 13:24:18','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (104,'Admin_Pembinaan','RPT_PERIODE_ANGGOTA',1,0,0,0,0,0,0,0,'2020-04-26 13:24:18','admin','127.0.0.1','2020-04-26 13:24:18','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (105,'Admin_Pembinaan','MASTER_AKTIFITAS',0,0,0,0,0,0,0,0,'2020-04-26 13:24:18','admin','127.0.0.1','2020-04-26 13:24:18','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (116,'Admin_Dakwah','RPT_PERIODE_ANGGOTA',1,0,0,0,0,0,0,0,'2020-04-26 13:24:26','admin','127.0.0.1','2020-04-26 13:24:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (117,'Admin_Dakwah','MASTER_AKTIFITAS',0,0,0,0,0,0,0,0,'2020-04-26 13:24:26','admin','127.0.0.1','2020-04-26 13:24:26','admin','127.0.0.1');

/*Table structure for table `master_module` */

CREATE TABLE `master_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) NOT NULL,
  `descriptionhead` varchar(800) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `classcolour` varchar(255) DEFAULT NULL,
  `onclick` text,
  `onclicksubmenu` text,
  `parentid` int(11) DEFAULT NULL,
  `public` int(11) DEFAULT '0',
  `entrytime` timestamp NULL DEFAULT NULL,
  `entryuser` varchar(255) DEFAULT NULL,
  `entryip` varchar(255) DEFAULT NULL,
  `updatetime` timestamp NULL DEFAULT NULL,
  `updateuser` varchar(255) DEFAULT NULL,
  `updateip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `master_module` */

insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (1,'DASHBOARD','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=1\')\">DASHBOARD </a> ','DASHBOARD','img/icon/icon-home.png','bg-aqua','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=1\')','showMenu(\'content\', \'index.php?model=graph_query&action=showGraphAll\')',0,0,'2015-05-19 15:19:47','','','2020-04-07 14:37:06','admin','127.0.0.1');
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (2,'ADMIN','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=3\')\">ADMIN </a> ','ADMIN','img/icon/icon-admin.png','bg-yellow','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=2\')','showMenu(\'content\', \'index.php?model=master_module&action=showMenUBox&id=2\')',0,0,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (3,'LAPORAN','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=4\')\">LAPORAN</a> ','LAPORAN','img/icon/icon-report.png','bg-green','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=3\')','showMenu(\'content\', \'index.php?model=master_module&action=showMenuBox&id=3\')',0,0,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (4,'MASTER_USER','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=3\')\">ADMIN </a> / USER ','USER','img/icon/icon-create-user.png','bg-orange','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=4\')','showMenu(\'content\', \'index.php?model=master_user&action=showAllJQuery\')',2,0,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (5,'MASTER_GROUP','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=3\')\">ADMIN </a> / GROUP','GROUP','img/icon/icon-group.png','bg-red','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=5\')','showMenu(\'content\', \'index.php?model=master_group&action=showAllJQuery\')',2,0,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (6,'MASTER_MODULE','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=3\')\">ADMIN </a> / MODULE','MODULE','img/icon/icon-module.png','bg-blue1','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=6\')','showMenu(\'content\', \'index.php?model=master_module&action=showAllJQuery\')',2,0,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (7,'GRAPH_QUERY','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=3\')\">ADMIN </a> / GRAPH QUERY','GRAPH QUERY','img/icon/icon-graph-query.png','bg-orange2','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=7\')','showMenu(\'content\', \'index.php?model=graph_query&action=showAllJQuery\')',2,0,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (9,'MUTABAAH_YAUMIYAH','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=9\')\">MUTABAAH YAUMIYAH</a> ','MUTABAAH YAUMIYAH','img/icon/icon-age.png','bg-lime','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=9\')','showMenu(\'content\', \'index.php?model=mutabaah_yaumiyah&action=showFormJQuery\')',0,0,'2020-04-07 12:39:31','','','2020-04-11 02:27:57','admin','127.0.0.1');
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (10,'MASTER_ANGGOTA','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=2\')\">ADMIN</a>  / <a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=10\')\">MASTER ANGGOTA</a> ','MASTER ANGGOTA','img/icon/icon-group.png','bg-lime','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=10\')','showMenu(\'content\', \'index.php?model=master_anggota&action=showAllJQuery\')',2,0,'2020-04-07 18:17:22','admin','127.0.0.1','2020-04-07 18:17:22','admin','127.0.0.1');
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (11,'RPT_HARIAN_ANGGOTA','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=3\')\">LAPORAN</a>  / <a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=11\')\">REKAP HARIAN</a> ','REKAP HARIAN','img/icon/icon-purchasing.png','bg-fuchsia','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=11\')','showMenu(\'content\', \'index.php?model=report_query&action=showHeader&id=1\')',3,0,'2020-04-09 23:45:08','','','2020-04-15 12:24:12','admin','127.0.0.1');
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (12,'RPT_PERIODE_ANGGOTA','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=3\')\">LAPORAN</a>  / <a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=12\')\">REKAP PERIODE</a> ','REKAP PERIODE','img/icon/icon-data-pembelian.png','bg-lime','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=12\')','showMenu(\'content\', \'index.php?model=report_query&action=showHeader&id=2\')',3,0,NULL,'','','2020-04-15 12:24:40','admin','127.0.0.1');
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (13,'MASTER_AKTIFITAS','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=2\')\">ADMIN</a>  / <a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=13\')\">MASTER AKTIFITAS</a> ','MASTER AKTIFITAS','img/icon/icon-age.png','bg-teal','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=13\')','showMenu(\'content\', \'index.php?model=master_aktifitas&action=showAllJQuery\')',2,0,'2020-04-26 06:23:55','admin','127.0.0.1','2020-04-26 06:23:55','admin','127.0.0.1');

/*Table structure for table `master_profil` */

CREATE TABLE `master_profil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nik` varchar(30) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `avatar` mediumblob,
  `departmentid` int(11) DEFAULT NULL,
  `unitid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `master_profil` */

insert  into `master_profil`(`id`,`nik`,`user`,`avatar`,`departmentid`,`unitid`) values (1,'0','admin','20200409141409komunikasi.png',0,0);

/*Table structure for table `master_shaff` */

CREATE TABLE `master_shaff` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `kode_shaff` varchar(10) DEFAULT NULL,
  `nama_shaff` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `master_shaff` */

insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (1,'SHF-0001','Shaff 1');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (2,'SHF-0002','Shaff 2');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (3,'SHF-0003','Shaff 3');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (4,'SHF-0004','Shaff 4');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (5,'SHF-0005','Shaff 5');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (6,'SHF-0006','Shaff 6');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (7,'SHF-0007','Shaff 7');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (8,'SHF-0008','Shaff 8');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (9,'SHF-0009','Shaff 9');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (10,'SHF-0010','Shaff 10');

/*Table structure for table `master_unit` */

CREATE TABLE `master_unit` (
  `unitid` int(5) NOT NULL AUTO_INCREMENT,
  `unitname` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`unitid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `master_unit` */

insert  into `master_unit`(`unitid`,`unitname`,`description`) values (1,'CB-1','CB-1');
insert  into `master_unit`(`unitid`,`unitname`,`description`) values (2,'CB-2','CB-2');
insert  into `master_unit`(`unitid`,`unitname`,`description`) values (3,'CB-3','CB-3');
insert  into `master_unit`(`unitid`,`unitname`,`description`) values (4,'CB-4','CB-4');
insert  into `master_unit`(`unitid`,`unitname`,`description`) values (5,'CB-5','CB-5');
insert  into `master_unit`(`unitid`,`unitname`,`description`) values (6,'CB-6','CB-6');
insert  into `master_unit`(`unitid`,`unitname`,`description`) values (7,'YBM','YABIM');

/*Table structure for table `master_user` */

CREATE TABLE `master_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `nik` varchar(50) DEFAULT NULL,
  `departmentid` int(11) DEFAULT NULL,
  `unitid` int(11) DEFAULT NULL,
  `shaffid` int(11) DEFAULT '0',
  `defaultpassword` varchar(255) DEFAULT NULL,
  `idanggota` int(11) DEFAULT NULL,
  `entrytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entryuser` varchar(255) DEFAULT NULL,
  `entryip` varchar(255) DEFAULT NULL,
  `updatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updateuser` varchar(255) DEFAULT NULL,
  `updateip` varchar(255) DEFAULT NULL,
  `avatar` text,
  PRIMARY KEY (`user`),
  UNIQUE KEY `iduser` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `master_user` */

insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (1,'admin','Administrator','e10adc3949ba59abbe56e057f20f883e','admin','0',0,0,0,'123456',0,'2020-04-26 13:44:46','','','2020-04-07 18:04:20','admin','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (0,'IRamdana','Pengguna CBG: 1 RT: 4','e10adc3949ba59abbe56e057f20f883e','Ivan Ramdana','0',4,1,1,'123456',1,'2020-04-26 19:42:55','admin','127.0.0.1','2020-04-26 12:42:55','admin','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (3,'SKurniawan','Pengguna CBG: 1 RT: 4','e10adc3949ba59abbe56e057f20f883e','Sigit Kurniawan','0',4,1,1,'123456',2,'2020-04-26 13:44:39','admin','127.0.0.1','2020-04-11 04:07:20','admin','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (4,'BSubarkah','Pengguna CBG: 1 RT: 4','e10adc3949ba59abbe56e057f20f883e','Bagus Subarkah','0',4,1,2,'123456',3,'2020-04-26 19:43:09','admin','127.0.0.1','2020-04-26 12:43:09','admin','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (5,'AArif','Pengguna CBG: 1 RT: 4','e10adc3949ba59abbe56e057f20f883e','Abdurahman Arif','0',4,1,1,'123456',4,'2020-04-26 13:44:39','admin','127.0.0.1','2020-04-11 04:12:29','admin','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (6,'IBaehaqy','Pengguna CBG: 1 RT: 4','e10adc3949ba59abbe56e057f20f883e','Iqbal Baehaqy','0',4,1,2,'123456',5,'2020-04-26 20:20:00','admin','127.0.0.1','2020-04-26 13:20:00','admin','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (7,'admin_r4','Administrator Group','e10adc3949ba59abbe56e057f20f883e','Admin Group R-4','0',4,1,1,'',0,'2020-04-26 13:44:39','admin','127.0.0.1','2020-04-15 12:00:10','admin','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (8,'FFerdinand','Pengguna CBG: 1 RT: 4','e10adc3949ba59abbe56e057f20f883e','Ferry Ferdinand','0',4,1,2,'123456',6,'2020-04-26 20:20:07','admin_r4','127.0.0.1','2020-04-26 13:20:07','admin','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (9,'admin_c1','Administrator Group','202cb962ac59075b964b07152d234b70','Admin Cabang 1','0',8,1,1,'',0,'2020-04-26 13:44:39','admin','127.0.0.1','2020-04-15 13:20:22','admin','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (10,'Rosyid','Pengguna CBG: 1 RT: 8','e10adc3949ba59abbe56e057f20f883e','Rosyid','0',8,1,1,'123456',7,'2020-04-26 13:44:39','admin_c1','127.0.0.1','2020-04-15 13:21:14','admin_c1','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (11,'SHadi','Pengguna CBG: 1 RT: 8','e10adc3949ba59abbe56e057f20f883e','Setio Hadi','0',8,1,1,'123456',8,'2020-04-26 13:44:39','admin_c1','127.0.0.1','2020-04-15 13:21:26','admin_c1','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (12,'Herman','Pengguna CBG: 1 RT: 8','e10adc3949ba59abbe56e057f20f883e','Herman','0',8,1,1,'123456',9,'2020-04-26 13:44:39','admin_c1','127.0.0.1','2020-04-15 13:21:38','admin_c1','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (13,'ISuwanto','Pengguna CBG: 1 RT: 8','e10adc3949ba59abbe56e057f20f883e','Imam Suwanto','0',8,1,1,'123456',10,'2020-04-26 13:44:39','admin_c1','127.0.0.1','2020-04-15 13:21:53','admin_c1','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (14,'Iskandar','Pengguna CBG: 1 RT: 8','e10adc3949ba59abbe56e057f20f883e','Iskandar','0',8,1,1,'123456',11,'2020-04-26 13:44:39','admin_c1','127.0.0.1','2020-04-15 13:22:05','admin_c1','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (15,'Erlangga','Pengguna CBG: 1 RT: 8','e10adc3949ba59abbe56e057f20f883e','Erlangga','0',8,1,1,'123456',12,'2020-04-26 13:44:39','admin_c1','127.0.0.1','2020-04-15 13:22:17','admin_c1','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (16,'Mujiburohman','Pengguna CBG: 1 RT: 4','e10adc3949ba59abbe56e057f20f883e','Mujiburohman','0',4,1,1,'123456',13,'2020-04-26 19:43:18','admin_r4','127.0.0.1','2020-04-26 12:43:18','admin','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (17,'admin_dakwah_r4','Administrator Group','202cb962ac59075b964b07152d234b70','Admin Dakwah R-4','0',4,1,1,'123',0,'2020-04-26 20:11:31','admin','127.0.0.1','2020-04-26 13:11:31','admin','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (18,'admin_dakwah_r4_s1','Administrator Group','202cb962ac59075b964b07152d234b70','Admin Dakwah R-4 S-1','0',4,1,1,'123',0,'2020-04-26 13:15:09','admin','127.0.0.1','2020-04-26 13:15:09','admin','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (19,'admin_dakwah_r4_s2','Administrator Group','202cb962ac59075b964b07152d234b70','Admin Dakwah R-4 S-2','0',4,1,2,'123',0,'2020-04-26 13:18:22','admin','127.0.0.1','2020-04-26 13:18:22','admin','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (20,'admin_pembinaan_r4_s1','Administrator Group','202cb962ac59075b964b07152d234b70','Admin Pembinaan R-4 S-1','0',4,1,1,'123',0,'2020-04-26 20:23:51','admin','127.0.0.1','2020-04-26 13:23:51','admin','127.0.0.1','');
insert  into `master_user`(`id`,`user`,`description`,`password`,`username`,`nik`,`departmentid`,`unitid`,`shaffid`,`defaultpassword`,`idanggota`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`,`avatar`) values (21,'admin_pembinaan_r4_s2','Administrator Group','202cb962ac59075b964b07152d234b70','Admin Pembinaan R-4 S-2','0',4,1,2,'123',0,'2020-04-26 20:23:59','admin','127.0.0.1','2020-04-26 13:23:59','admin','127.0.0.1','');

/*Table structure for table `master_user_detail` */

CREATE TABLE `master_user_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) DEFAULT NULL,
  `groupcode` varchar(20) DEFAULT NULL,
  `entrytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entryuser` varchar(255) DEFAULT NULL,
  `entryip` varchar(255) DEFAULT NULL,
  `updatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updateuser` varchar(255) DEFAULT NULL,
  `updateip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usergroup` (`user`,`groupcode`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `master_user_detail` */

insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (1,'admin','Admin','2020-04-11 11:09:37',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (2,'IRamdana','User','2020-04-26 19:42:55','admin','127.0.0.1','2020-04-26 12:42:55','admin','127.0.0.1');
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (3,'Skurniawan','User','2020-04-11 11:10:04',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (4,'BSubarkah','User','2020-04-26 19:43:09','admin','127.0.0.1','2020-04-26 12:43:09','admin','127.0.0.1');
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (5,'AArif','User','2020-04-11 04:12:29','admin','127.0.0.1','2020-04-11 04:12:29','admin','127.0.0.1');
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (6,'IBaehaqy','User','2020-04-26 20:20:00','admin','127.0.0.1','2020-04-26 13:20:00','admin','127.0.0.1');
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (7,'admin_r4','Admin_Group','2020-04-15 12:00:10','admin','127.0.0.1','2020-04-15 12:00:10','admin','127.0.0.1');
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (8,'FFerdinand','User','2020-04-26 20:20:07','admin','127.0.0.1','2020-04-26 13:20:07','admin','127.0.0.1');
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (9,'admin_c1','Admin_Group','2020-04-15 13:20:22','admin','127.0.0.1','2020-04-15 13:20:22','admin','127.0.0.1');
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (10,'Rosyid','User','2020-04-15 13:21:14','admin_c1','127.0.0.1','2020-04-15 13:21:14','admin_c1','127.0.0.1');
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (11,'SHadi','User','2020-04-15 13:21:26','admin_c1','127.0.0.1','2020-04-15 13:21:26','admin_c1','127.0.0.1');
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (12,'Herman','User','2020-04-15 13:21:39','admin_c1','127.0.0.1','2020-04-15 13:21:39','admin_c1','127.0.0.1');
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (13,'ISuwanto','User','2020-04-15 13:21:53','admin_c1','127.0.0.1','2020-04-15 13:21:53','admin_c1','127.0.0.1');
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (14,'Iskandar','User','2020-04-15 13:22:05','admin_c1','127.0.0.1','2020-04-15 13:22:05','admin_c1','127.0.0.1');
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (15,'Erlangga','User','2020-04-15 13:22:18','admin_c1','127.0.0.1','2020-04-15 13:22:18','admin_c1','127.0.0.1');
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (16,'Mujiburohman','User','2020-04-26 19:43:18','admin','127.0.0.1','2020-04-26 12:43:18','admin','127.0.0.1');
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (22,'admin_dakwah_r4','Admin_Dakwah','2020-04-26 13:11:31','admin','127.0.0.1','2020-04-26 13:11:31','admin','127.0.0.1');
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (23,'admin_dakwah_r4_s1','Admin_Dakwah','2020-04-26 13:15:10','admin','127.0.0.1','2020-04-26 13:15:10','admin','127.0.0.1');
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (24,'admin_dakwah_r4_s2','Admin_Dakwah','2020-04-26 13:18:22','admin','127.0.0.1','2020-04-26 13:18:22','admin','127.0.0.1');
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (27,'admin_pembinaan_r4_s1','Admin_Pembinaan','2020-04-26 13:23:51','admin','127.0.0.1','2020-04-26 13:23:51','admin','127.0.0.1');
insert  into `master_user_detail`(`id`,`user`,`groupcode`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (28,'admin_pembinaan_r4_s2','Admin_Pembinaan','2020-04-26 13:23:59','admin','127.0.0.1','2020-04-26 13:23:59','admin','127.0.0.1');

/*Table structure for table `replace_character` */

CREATE TABLE `replace_character` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sourcetext` varchar(255) DEFAULT NULL,
  `replacetext` varchar(255) DEFAULT NULL,
  `find` int(1) DEFAULT '1',
  `save` int(1) DEFAULT '1',
  `entrytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entryuser` varchar(255) DEFAULT NULL,
  `entryip` varchar(255) DEFAULT NULL,
  `updatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updateuser` varchar(255) DEFAULT NULL,
  `updateip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `replace_character` */

insert  into `replace_character`(`id`,`sourcetext`,`replacetext`,`find`,`save`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (1,'\'','\\\'',1,1,'2015-06-17 16:20:52',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `replace_character`(`id`,`sourcetext`,`replacetext`,`find`,`save`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (2,'javascript','',1,1,'2015-06-17 16:21:05',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `replace_character`(`id`,`sourcetext`,`replacetext`,`find`,`save`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (3,'script','',1,1,'2015-06-17 16:21:12',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `replace_character`(`id`,`sourcetext`,`replacetext`,`find`,`save`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (4,'union',' ',1,0,'2015-10-20 18:58:03',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `replace_character`(`id`,`sourcetext`,`replacetext`,`find`,`save`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (5,' or ',' ',1,0,'2015-10-20 18:58:06',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `replace_character`(`id`,`sourcetext`,`replacetext`,`find`,`save`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (6,'--',' ',1,1,'2015-09-28 10:35:11',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `replace_character`(`id`,`sourcetext`,`replacetext`,`find`,`save`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (7,'JAVASCRIPT',' ',1,1,'2015-09-28 10:46:19',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `replace_character`(`id`,`sourcetext`,`replacetext`,`find`,`save`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (8,'SCRIPT',' ',1,1,'2015-09-28 10:46:21',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `replace_character`(`id`,`sourcetext`,`replacetext`,`find`,`save`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (9,'UNION',' ',1,0,'2015-10-20 18:58:13',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `replace_character`(`id`,`sourcetext`,`replacetext`,`find`,`save`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (10,' OR ',' ',1,0,'2015-10-20 18:58:16',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `replace_character`(`id`,`sourcetext`,`replacetext`,`find`,`save`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (11,'Javascript',' ',1,1,'2015-09-28 10:46:23',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `replace_character`(`id`,`sourcetext`,`replacetext`,`find`,`save`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (12,'Script',' ',1,1,'2015-09-28 10:46:24',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `replace_character`(`id`,`sourcetext`,`replacetext`,`find`,`save`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (13,'Union',' ',1,0,'2015-10-20 18:58:20',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `replace_character`(`id`,`sourcetext`,`replacetext`,`find`,`save`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (14,' Or ',' ',1,0,'2015-10-20 18:58:22',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);

/*Table structure for table `report_query` */

CREATE TABLE `report_query` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reportname` varchar(255) DEFAULT NULL,
  `header` varchar(255) DEFAULT NULL,
  `query` mediumtext,
  `crosstab` int(11) DEFAULT '0',
  `total` int(11) DEFAULT '0',
  `subtotal` int(11) DEFAULT '0',
  `entrytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entryuser` varchar(255) DEFAULT NULL,
  `entryip` varchar(255) DEFAULT NULL,
  `updatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updateuser` varchar(255) DEFAULT NULL,
  `updateip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `report_query` */

insert  into `report_query`(`id`,`reportname`,`header`,`query`,`crosstab`,`total`,`subtotal`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (1,'RPT_ANGGOTA_HARIAN','rekap_harian.php','SELECT b.`nama_aktifitas`,UPPER(a.`user_fullname`) `Anggota`,b.`value_aktifitas`\r\nFROM aktifitas_harian a\r\nINNER JOIN aktifitas_harian_detail b ON a.`id`=b.`aktifitas_id`\r\nINNER JOIN `master_user` c ON a.`user_id`=c.`id`\r\nWHERE (a.`tgl_aktifitas`=\'<<parameter1>>\') \r\nAND IF(\'0\'=\'<<parameter2>>\', TRUE, a.user_id=\'<<parameter2>>\')\r\nAND c.`unitid`=\'<<parameter3>>\' AND c.`departmentid`=\'<<parameter4>>\'\r\nORDER BY b.kode_aktifitas ASC',1,0,0,'2020-04-15 20:48:07',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `report_query`(`id`,`reportname`,`header`,`query`,`crosstab`,`total`,`subtotal`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (2,'RPT_ANGGOTA_PERIODE','rekap_periode.php','SELECT b.`nama_aktifitas`,UPPER(a.`user_fullname`) `Anggota`,\r\nb.`value_aktifitas`\r\nFROM aktifitas_harian a\r\nINNER JOIN aktifitas_harian_detail b ON a.`id`=b.`aktifitas_id`\r\nINNER JOIN `master_user` c ON a.`user_id`=c.`id`\r\nWHERE (a.`tgl_aktifitas` BETWEEN \'<<parameter1>>\' AND \'<<parameter2>>\') \r\nAND IF(\'0\'=\'<<parameter3>>\', TRUE, a.user_id=\'<<parameter3>>\')\r\nAND c.`unitid`=\'<<parameter4>>\' AND c.`departmentid`=\'<<parameter5>>\'\r\nORDER BY b.kode_aktifitas ASC',1,0,0,'2020-04-15 20:59:52',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `report_query`(`id`,`reportname`,`header`,`query`,`crosstab`,`total`,`subtotal`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (3,'RPT_ANGGORA_PERIODE_DTL','rekap_periode.php','SELECT b.`nama_aktifitas`,a.`tgl_aktifitas` `Tgl_Aktifitas`,\r\nb.`value_aktifitas` Jumlah\r\nFROM aktifitas_harian a\r\nINNER JOIN aktifitas_harian_detail b ON a.`id`=b.`aktifitas_id`\r\nWHERE (a.`tgl_aktifitas` BETWEEN \'<<parameter1>>\' AND \'<<parameter2>>\') \r\nAND a.user_id=\'<<parameter3>>\'\r\nORDER BY b.kode_aktifitas ASC, a.`tgl_aktifitas` ASC',1,1,0,'2020-04-15 21:00:52',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `report_query`(`id`,`reportname`,`header`,`query`,`crosstab`,`total`,`subtotal`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (4,'RPT_ANGGOTA_HARIAN_DTL','rekap_harian.php','SELECT @ROW:=@ROW+1 No,b.`nama_aktifitas` Aktifitas,\r\nb.`value_aktifitas` Jumlah,UPPER(b.`satuan_aktifitas`) Satuan\r\nFROM aktifitas_harian a\r\nINNER JOIN aktifitas_harian_detail b ON a.`id`=b.`aktifitas_id`,\r\n(SELECT @ROW:=0) r\r\nWHERE a.`tgl_aktifitas` = \'<<parameter1>>\' \r\nAND a.user_id=\'<<parameter2>>\'\r\nORDER BY b.kode_aktifitas ASC, a.`tgl_aktifitas` ASC',0,0,0,'2020-04-15 20:05:28',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
