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
/*Table structure for table `aktifitas_bulanan` */

DROP TABLE IF EXISTS `aktifitas_bulanan`;

CREATE TABLE `aktifitas_bulanan` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `yop` int(4) DEFAULT NULL,
  `mop` int(2) DEFAULT NULL,
  `user_id` int(5) DEFAULT NULL,
  `user_fullname` varchar(255) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `aktifitas_bulanan` */

insert  into `aktifitas_bulanan`(`id`,`yop`,`mop`,`user_id`,`user_fullname`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (1,2020,5,3,'Sigit Kurniawan','2020-05-01 17:37:26','admin_r4','2020-05-01 17:37:26','admin_r4','127.0.0.1');

/*Table structure for table `aktifitas_bulanan_detail` */

DROP TABLE IF EXISTS `aktifitas_bulanan_detail`;

CREATE TABLE `aktifitas_bulanan_detail` (
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `aktifitas_bulanan_detail` */

insert  into `aktifitas_bulanan_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (1,1,'MY-00009','Zakat',1.00,'-','','2020-05-01 17:37:27','admin_r4','2020-05-01 17:37:27','admin_r4','127.0.0.1');
insert  into `aktifitas_bulanan_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (2,1,'MY-00007','Infaq',1.00,'-','','2020-05-01 17:37:27','admin_r4','2020-05-01 17:37:27','admin_r4','127.0.0.1');
insert  into `aktifitas_bulanan_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (3,1,'MY-00008','Shodaqoh',1.00,'-','','2020-05-01 17:37:27','admin_r4','2020-05-01 17:37:27','admin_r4','127.0.0.1');
insert  into `aktifitas_bulanan_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (4,1,'MY-00006','Shodaqoh External',0.00,'-','','2020-05-01 17:37:27','admin_r4','2020-05-01 17:37:27','admin_r4','127.0.0.1');
insert  into `aktifitas_bulanan_detail`(`id`,`aktifitas_id`,`kode_aktifitas`,`nama_aktifitas`,`value_aktifitas`,`satuan_aktifitas`,`catatan_aktifitas`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (5,1,'MY-00010','Ta\'awun',0.00,'-','','2020-05-01 17:37:27','admin_r4','2020-05-01 17:37:27','admin_r4','127.0.0.1');

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
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (6,'MY-00006','Shodaqoh External','-',1,'monthly',0,1,4,'0000-00-00 00:00:00','','0000-00-00 00:00:00','','');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (7,'MY-00007','Infaq','-',1,'monthly',0,1,2,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (8,'MY-00008','Shodaqoh','-',1,'monthly',0,1,3,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (9,'MY-00009','Zakat','-',1,'monthly',0,1,1,'0000-00-00 00:00:00','','0000-00-00 00:00:00','','');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (10,'MY-00010','Ta\'awun','-',1,'monthly',0,1,5,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (11,'MY-00011','Hafalan Quran','ayat',1,'daily',1,1,3,'0000-00-00 00:00:00','','0000-00-00 00:00:00','','');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`visorder`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (12,'MY-00012','Sholat Dhuha','kali',1,'daily',0,1,4,'0000-00-00 00:00:00','','0000-00-00 00:00:00','','');

/*Table structure for table `master_group_detail` */

DROP TABLE IF EXISTS `master_group_detail`;

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
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=latin1;

/*Data for the table `master_group_detail` */

insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (79,'User','MASTER_ANGGOTA',0,0,0,0,0,0,0,0,'2020-04-15 06:16:09','admin','127.0.0.1','2020-04-15 06:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (81,'User','RPT_PERIODE_ANGGOTA',1,0,0,0,0,0,0,0,'2020-04-15 06:16:09','admin','127.0.0.1','2020-04-15 06:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (80,'User','RPT_HARIAN_ANGGOTA',1,0,0,0,0,0,0,0,'2020-04-15 06:16:09','admin','127.0.0.1','2020-04-15 06:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (78,'User','MUTABAAH_YAUMIYAH',1,1,1,1,0,0,0,0,'2020-04-15 06:16:09','admin','127.0.0.1','2020-04-15 06:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (77,'User','GRAPH_QUERY',0,0,0,0,0,0,0,0,'2020-04-15 06:16:09','admin','127.0.0.1','2020-04-15 06:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (74,'User','MASTER_USER',0,0,0,0,0,0,0,0,'2020-04-15 06:16:09','admin','127.0.0.1','2020-04-15 06:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (75,'User','MASTER_GROUP',0,0,0,0,0,0,0,0,'2020-04-15 06:16:09','admin','127.0.0.1','2020-04-15 06:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (76,'User','MASTER_MODULE',0,0,0,0,0,0,0,0,'2020-04-15 06:16:09','admin','127.0.0.1','2020-04-15 06:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (73,'User','LAPORAN',1,1,1,1,1,1,1,1,'2020-04-15 06:16:09','admin','127.0.0.1','2020-04-15 06:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (72,'User','ADMIN',0,0,0,0,0,0,0,0,'2020-04-15 06:16:09','admin','127.0.0.1','2020-04-15 06:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (119,'Admin_Group','ADMIN',1,0,0,0,0,0,0,0,'2020-05-01 17:31:31','admin','127.0.0.1','2020-05-01 17:31:31','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (120,'Admin_Group','LAPORAN',1,0,0,0,0,0,0,0,'2020-05-01 17:31:31','admin','127.0.0.1','2020-05-01 17:31:31','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (121,'Admin_Group','MASTER_USER',0,0,0,0,0,0,0,0,'2020-05-01 17:31:31','admin','127.0.0.1','2020-05-01 17:31:31','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (122,'Admin_Group','MASTER_GROUP',0,0,0,0,0,0,0,0,'2020-05-01 17:31:31','admin','127.0.0.1','2020-05-01 17:31:31','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (123,'Admin_Group','MASTER_MODULE',0,0,0,0,0,0,0,0,'2020-05-01 17:31:31','admin','127.0.0.1','2020-05-01 17:31:31','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (124,'Admin_Group','GRAPH_QUERY',0,0,0,0,0,0,0,0,'2020-05-01 17:31:31','admin','127.0.0.1','2020-05-01 17:31:31','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (125,'Admin_Group','MUTABAAH_YAUMIYAH',1,0,0,0,0,0,0,0,'2020-05-01 17:31:31','admin','127.0.0.1','2020-05-01 17:31:31','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (126,'Admin_Group','MASTER_ANGGOTA',1,1,1,1,1,0,0,0,'2020-05-01 17:31:31','admin','127.0.0.1','2020-05-01 17:31:31','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (127,'Admin_Group','RPT_HARIAN_ANGGOTA',1,0,0,0,0,0,0,0,'2020-05-01 17:31:31','admin','127.0.0.1','2020-05-01 17:31:31','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (71,'User','DASHBOARD',0,0,0,0,0,0,0,0,'2020-04-15 06:16:09','admin','127.0.0.1','2020-04-15 06:16:09','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (118,'Admin_Group','DASHBOARD',0,0,0,0,0,0,0,0,'2020-05-01 17:31:31','admin','127.0.0.1','2020-05-01 17:31:31','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (140,'Admin_Dakwah','RPT_HARIAN_ANGGOTA',1,0,0,0,0,0,0,0,'2020-05-01 17:41:26','admin','127.0.0.1','2020-05-01 17:41:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (139,'Admin_Dakwah','MASTER_ANGGOTA',1,0,0,0,0,0,0,0,'2020-05-01 17:41:26','admin','127.0.0.1','2020-05-01 17:41:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (138,'Admin_Dakwah','MUTABAAH_YAUMIYAH',1,0,0,0,0,0,0,0,'2020-05-01 17:41:26','admin','127.0.0.1','2020-05-01 17:41:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (137,'Admin_Dakwah','GRAPH_QUERY',0,0,0,0,0,0,0,0,'2020-05-01 17:41:26','admin','127.0.0.1','2020-05-01 17:41:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (136,'Admin_Dakwah','MASTER_MODULE',0,0,0,0,0,0,0,0,'2020-05-01 17:41:26','admin','127.0.0.1','2020-05-01 17:41:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (135,'Admin_Dakwah','MASTER_GROUP',0,0,0,0,0,0,0,0,'2020-05-01 17:41:26','admin','127.0.0.1','2020-05-01 17:41:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (134,'Admin_Dakwah','MASTER_USER',0,0,0,0,0,0,0,0,'2020-05-01 17:41:26','admin','127.0.0.1','2020-05-01 17:41:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (133,'Admin_Dakwah','LAPORAN',1,0,0,0,0,0,0,0,'2020-05-01 17:41:26','admin','127.0.0.1','2020-05-01 17:41:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (153,'Admin_Pembinaan','RPT_HARIAN_ANGGOTA',1,0,0,0,0,0,0,0,'2020-05-01 17:41:37','admin','127.0.0.1','2020-05-01 17:41:37','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (152,'Admin_Pembinaan','MASTER_ANGGOTA',1,0,0,0,0,0,0,0,'2020-05-01 17:41:37','admin','127.0.0.1','2020-05-01 17:41:37','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (151,'Admin_Pembinaan','MUTABAAH_YAUMIYAH',1,0,0,0,0,0,0,0,'2020-05-01 17:41:37','admin','127.0.0.1','2020-05-01 17:41:37','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (150,'Admin_Pembinaan','GRAPH_QUERY',0,0,0,0,0,0,0,0,'2020-05-01 17:41:37','admin','127.0.0.1','2020-05-01 17:41:37','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (149,'Admin_Pembinaan','MASTER_MODULE',0,0,0,0,0,0,0,0,'2020-05-01 17:41:37','admin','127.0.0.1','2020-05-01 17:41:37','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (148,'Admin_Pembinaan','MASTER_GROUP',0,0,0,0,0,0,0,0,'2020-05-01 17:41:37','admin','127.0.0.1','2020-05-01 17:41:37','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (147,'Admin_Pembinaan','MASTER_USER',0,0,0,0,0,0,0,0,'2020-05-01 17:41:37','admin','127.0.0.1','2020-05-01 17:41:37','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (146,'Admin_Pembinaan','LAPORAN',1,0,0,0,0,0,0,0,'2020-05-01 17:41:37','admin','127.0.0.1','2020-05-01 17:41:37','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (145,'Admin_Pembinaan','ADMIN',1,0,0,0,0,0,0,0,'2020-05-01 17:41:37','admin','127.0.0.1','2020-05-01 17:41:37','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (144,'Admin_Pembinaan','DASHBOARD',0,0,0,0,0,0,0,0,'2020-05-01 17:41:37','admin','127.0.0.1','2020-05-01 17:41:37','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (132,'Admin_Dakwah','ADMIN',1,0,0,0,0,0,0,0,'2020-05-01 17:41:26','admin','127.0.0.1','2020-05-01 17:41:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (131,'Admin_Dakwah','DASHBOARD',0,0,0,0,0,0,0,0,'2020-05-01 17:41:26','admin','127.0.0.1','2020-05-01 17:41:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (128,'Admin_Group','RPT_PERIODE_ANGGOTA',1,0,0,0,0,0,0,0,'2020-05-01 17:31:31','admin','127.0.0.1','2020-05-01 17:31:31','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (129,'Admin_Group','MASTER_AKTIFITAS',0,0,0,0,0,0,0,0,'2020-05-01 17:31:31','admin','127.0.0.1','2020-05-01 17:31:31','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (130,'Admin_Group','MUTABAAH_SYAHRIYAH',1,1,1,1,1,0,0,0,'2020-05-01 17:31:31','admin','127.0.0.1','2020-05-01 17:31:31','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (141,'Admin_Dakwah','RPT_PERIODE_ANGGOTA',1,0,0,0,0,0,0,0,'2020-05-01 17:41:26','admin','127.0.0.1','2020-05-01 17:41:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (142,'Admin_Dakwah','MASTER_AKTIFITAS',0,0,0,0,0,0,0,0,'2020-05-01 17:41:26','admin','127.0.0.1','2020-05-01 17:41:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (143,'Admin_Dakwah','MUTABAAH_SYAHRIYAH',1,1,1,1,1,0,0,0,'2020-05-01 17:41:26','admin','127.0.0.1','2020-05-01 17:41:26','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (154,'Admin_Pembinaan','RPT_PERIODE_ANGGOTA',1,0,0,0,0,0,0,0,'2020-05-01 17:41:37','admin','127.0.0.1','2020-05-01 17:41:37','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (155,'Admin_Pembinaan','MASTER_AKTIFITAS',0,0,0,0,0,0,0,0,'2020-05-01 17:41:37','admin','127.0.0.1','2020-05-01 17:41:37','admin','127.0.0.1');
insert  into `master_group_detail`(`id`,`groupcode`,`module`,`read`,`confirm`,`entry`,`update`,`delete`,`print`,`export`,`import`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (156,'Admin_Pembinaan','MUTABAAH_SYAHRIYAH',1,1,1,1,1,0,0,0,'2020-05-01 17:41:37','admin','127.0.0.1','2020-05-01 17:41:37','admin','127.0.0.1');

/*Table structure for table `master_module` */

DROP TABLE IF EXISTS `master_module`;

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `master_module` */

insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (1,'DASHBOARD','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=1\')\">DASHBOARD </a> ','DASHBOARD','img/icon/icon-home.png','bg-aqua','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=1\')','showMenu(\'content\', \'index.php?model=graph_query&action=showGraphAll\')',0,0,'2015-05-19 08:19:47','','','2020-04-07 07:37:06','admin','127.0.0.1');
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (2,'ADMIN','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=3\')\">ADMIN </a> ','ADMIN','img/icon/icon-admin.png','bg-yellow','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=2\')','showMenu(\'content\', \'index.php?model=master_module&action=showMenUBox&id=2\')',0,0,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (3,'LAPORAN','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=4\')\">LAPORAN</a> ','LAPORAN','img/icon/icon-report.png','bg-green','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=3\')','showMenu(\'content\', \'index.php?model=master_module&action=showMenuBox&id=3\')',0,0,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (4,'MASTER_USER','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=3\')\">ADMIN </a> / USER ','USER','img/icon/icon-create-user.png','bg-orange','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=4\')','showMenu(\'content\', \'index.php?model=master_user&action=showAllJQuery\')',2,0,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (5,'MASTER_GROUP','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=3\')\">ADMIN </a> / GROUP','GROUP','img/icon/icon-group.png','bg-red','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=5\')','showMenu(\'content\', \'index.php?model=master_group&action=showAllJQuery\')',2,0,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (6,'MASTER_MODULE','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=3\')\">ADMIN </a> / MODULE','MODULE','img/icon/icon-module.png','bg-blue1','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=6\')','showMenu(\'content\', \'index.php?model=master_module&action=showAllJQuery\')',2,0,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (7,'GRAPH_QUERY','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=3\')\">ADMIN </a> / GRAPH QUERY','GRAPH QUERY','img/icon/icon-graph-query.png','bg-orange2','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=7\')','showMenu(\'content\', \'index.php?model=graph_query&action=showAllJQuery\')',2,0,NULL,NULL,NULL,NULL,NULL,NULL);
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (9,'MUTABAAH_YAUMIYAH','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=9\')\">MUTABAAH YAUMIYAH</a> ','MUTABAAH YAUMIYAH','img/icon/icon-age.png','bg-lime','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=9\')','showMenu(\'content\', \'index.php?model=mutabaah_yaumiyah&action=showFormJQuery\')',0,0,'2020-04-07 05:39:31','','','2020-04-10 19:27:57','admin','127.0.0.1');
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (10,'MASTER_ANGGOTA','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=2\')\">ADMIN</a>  / <a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=10\')\">MASTER ANGGOTA</a> ','MASTER ANGGOTA','img/icon/icon-group.png','bg-lime','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=10\')','showMenu(\'content\', \'index.php?model=master_anggota&action=showAllJQuery\')',2,0,'2020-04-07 11:17:22','admin','127.0.0.1','2020-04-07 11:17:22','admin','127.0.0.1');
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (11,'RPT_HARIAN_ANGGOTA','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=3\')\">LAPORAN</a>  / <a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=11\')\">REKAP HARIAN</a> ','REKAP HARIAN','img/icon/icon-purchasing.png','bg-fuchsia','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=11\')','showMenu(\'content\', \'index.php?model=report_query&action=showHeader&id=1\')',3,0,'2020-04-09 16:45:08','','','2020-04-15 05:24:12','admin','127.0.0.1');
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (12,'RPT_PERIODE_ANGGOTA','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=3\')\">LAPORAN</a>  / <a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=12\')\">REKAP PERIODE</a> ','REKAP PERIODE','img/icon/icon-data-pembelian.png','bg-lime','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=12\')','showMenu(\'content\', \'index.php?model=report_query&action=showHeader&id=2\')',3,0,NULL,'','','2020-04-15 05:24:40','admin','127.0.0.1');
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (13,'MASTER_AKTIFITAS','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=2\')\">ADMIN</a>  / <a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=13\')\">MASTER AKTIFITAS</a> ','MASTER AKTIFITAS','img/icon/icon-age.png','bg-teal','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=13\')','showMenu(\'content\', \'index.php?model=master_aktifitas&action=showAllJQuery\')',2,0,'2020-04-25 23:23:55','admin','127.0.0.1','2020-04-25 23:23:55','admin','127.0.0.1');
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (14,'MUTABAAH_SYAHRIYAH','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=14\')\">MUTABAAH SYAHRIYAH</a> ','MUTABAAH SYAHRIYAH','img/icon/icon-create-user.png','bg-olive','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=14\')','showMenu(\'content\', \'index.php?model=mutabaah_syahriyah&action=showFormJQuery\')',0,0,'2020-05-01 16:40:13','','','2020-05-01 16:50:45','admin','127.0.0.1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
