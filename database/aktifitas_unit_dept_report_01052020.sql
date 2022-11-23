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
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(100) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(100) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `master_aktifitas` */

insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (1,'MY-00001','Tahajjud','kali',1,'daily',0,1,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (2,'MY-00002','Tadarus Quran','juz',2,'daily',0,1,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (3,'MY-00003','Shaum Senin','kali',1,'daily',0,1,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (4,'MY-00004','Shaum Kamis','kali',1,'daily',0,1,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (5,'MY-00005','Olah Raga','kali',1,'daily',0,1,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (6,'MY-00006','Shodaqoh External','rupiah',2,'monthly',0,0,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (7,'MY-00007','Infaq','rupiah',2,'monthly',0,0,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (8,'MY-00008','Shodaqoh','rupiah',2,'monthly',0,0,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (9,'MY-00009','Zakat','rupiah',2,'monthly',0,0,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (10,'MY-00010','Ta\'awun','rupiah',2,'monthly',0,0,'2020-04-07 19:59:39','Admin','2020-04-07 19:59:39','Admin','127.0.0.1');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (11,'MY-00011','Hafalan Quran','ayat',2,'daily',1,1,'0000-00-00 00:00:00','','0000-00-00 00:00:00','','');
insert  into `master_aktifitas`(`id`,`kode_aktifitas`,`nama_aktifitas`,`satuan_aktifitas`,`type_aktifitas`,`peruntukan`,`catatan`,`active`,`created_date`,`created_by`,`updated_date`,`updated_by`,`ip_address`) values (12,'MY-00012','Sholat Dhuha','kali',2,'daily',0,1,'0000-00-00 00:00:00','','0000-00-00 00:00:00','','');

/*Table structure for table `master_department` */

DROP TABLE IF EXISTS `master_department`;

CREATE TABLE `master_department` (
  `departmentid` int(5) NOT NULL AUTO_INCREMENT,
  `description` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`departmentid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `master_department` */

insert  into `master_department`(`departmentid`,`description`) values (1,'Kelas 1');
insert  into `master_department`(`departmentid`,`description`) values (2,'Kelas 2');
insert  into `master_department`(`departmentid`,`description`) values (3,'Kelas 3');
insert  into `master_department`(`departmentid`,`description`) values (4,'Kelas 4');
insert  into `master_department`(`departmentid`,`description`) values (5,'Kelas 5');
insert  into `master_department`(`departmentid`,`description`) values (6,'Kelas 6');
insert  into `master_department`(`departmentid`,`description`) values (7,'Kelas 7');
insert  into `master_department`(`departmentid`,`description`) values (8,'Kelas 8');
insert  into `master_department`(`departmentid`,`description`) values (9,'Kelas 9');
insert  into `master_department`(`departmentid`,`description`) values (10,'Pengajar');
insert  into `master_department`(`departmentid`,`description`) values (11,'Pembina');

/*Table structure for table `master_unit` */

DROP TABLE IF EXISTS `master_unit`;

CREATE TABLE `master_unit` (
  `unitid` int(5) NOT NULL AUTO_INCREMENT,
  `unitname` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`unitid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `master_unit` */

insert  into `master_unit`(`unitid`,`unitname`,`description`) values (1,'CB-1','Al-Fath');
insert  into `master_unit`(`unitid`,`unitname`,`description`) values (2,'CB-2','Cabang 2');
insert  into `master_unit`(`unitid`,`unitname`,`description`) values (3,'CB-3','Cabang 3');
insert  into `master_unit`(`unitid`,`unitname`,`description`) values (4,'CB-4','Cabang 4');
insert  into `master_unit`(`unitid`,`unitname`,`description`) values (5,'CB-5','Cabang 5');
insert  into `master_unit`(`unitid`,`unitname`,`description`) values (6,'CB-6','Cabang 6');
insert  into `master_unit`(`unitid`,`unitname`,`description`) values (7,'YBM','YABIM');

/*Table structure for table `report_query` */

DROP TABLE IF EXISTS `report_query`;

CREATE TABLE `report_query` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reportname` varchar(255) DEFAULT NULL,
  `style` int(1) DEFAULT '0',
  `header` varchar(255) DEFAULT NULL,
  `query` mediumtext,
  `crosstab` int(11) DEFAULT '0',
  `total` int(11) DEFAULT '0',
  `subtotal` int(11) DEFAULT '0',
  `order_by_col_1` int(11) DEFAULT '0',
  `order_by_col_2` int(11) DEFAULT '0',
  `order_by_col_3` int(11) DEFAULT '0',
  `entrytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `entryuser` varchar(255) DEFAULT NULL,
  `entryip` varchar(255) DEFAULT NULL,
  `updatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updateuser` varchar(255) DEFAULT NULL,
  `updateip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `report_query` */

insert  into `report_query`(`id`,`reportname`,`style`,`header`,`query`,`crosstab`,`total`,`subtotal`,`order_by_col_1`,`order_by_col_2`,`order_by_col_3`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (1,'RPT_ANGGOTA_HARIAN',4,'rekap_harian.php','SELECT \r\naa.`nama_aktifitas`,aa.Anggota,b.`unitname` `Yayasan`,c.`description` `Kelas`,aa.`value_aktifitas` \r\nFROM\r\n(\r\nSELECT b.`nama_aktifitas`,UPPER(a.`username`) `Anggota`, b.`value_aktifitas`,a.`unitid`,a.`departmentid` \r\nFROM `master_user` a \r\nLEFT JOIN \r\n( \r\n	SELECT a.`tgl_aktifitas`,a.user_id,b.`nama_aktifitas`,b.`value_aktifitas` \r\n	FROM aktifitas_harian a \r\n	INNER JOIN aktifitas_harian_detail b ON a.`id`=b.`aktifitas_id` \r\n	WHERE a.`tgl_aktifitas`=\'2020-04-25\' \r\n	ORDER BY b.`kode_aktifitas` \r\n) AS b ON a.`id`=b.user_id \r\nWHERE a.`idanggota`<>0 \r\nAND IF(\'0\'=\'0\',TRUE,a.`unitid`=\'0\') \r\nAND IF(\'0\'=\'0\',TRUE,a.`departmentid`=\'0\') \r\n) AS aa\r\nINNER JOIN master_unit b ON aa.`unitid`=b.`unitid` \r\nINNER JOIN master_department c ON aa.`departmentid`=c.`departmentid` ',1,0,0,2,3,1,'2020-05-01 22:33:27',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `report_query`(`id`,`reportname`,`style`,`header`,`query`,`crosstab`,`total`,`subtotal`,`order_by_col_1`,`order_by_col_2`,`order_by_col_3`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (2,'RPT_ANGGOTA_PERIODE',4,'rekap_periode.php','SELECT \r\ncc.`nama_aktifitas`,cc.Anggota,cc.unitid `Yayasan`,cc.departmentid `Kelas`,cc.`value_aktifitas`\r\nFROM\r\n(\r\nSELECT bb.`nama_aktifitas`,UPPER(`username`) Anggota,aa.unitid,aa.departmentid,\r\n(bb.`value_aktifitas`) `value_aktifitas`\r\nFROM\r\n(\r\nSELECT a.id,a.`username`,b.`description` unitid,c.`description` departmentid\r\nFROM `master_user` a\r\nINNER JOIN master_unit b ON a.`unitid`=b.`unitid`\r\nINNER JOIN master_department c ON a.`departmentid`=c.`departmentid`\r\nWHERE IF(\'0\'=\'0\',TRUE,a.`unitid`=\'0\') \r\nAND IF(\'0\'=\'0\',TRUE,a.`departmentid`=\'0\')\r\nAND a.`idanggota`<>0\r\n) AS aa\r\nLEFT JOIN\r\n(\r\nSELECT b.`tgl_aktifitas`,b.`user_id`,c.kode_aktifitas,c.`nama_aktifitas`,c.`value_aktifitas` \r\nFROM aktifitas_harian b \r\nINNER JOIN aktifitas_harian_detail c ON b.`id`=c.`aktifitas_id`\r\nWHERE (b.`tgl_aktifitas` BETWEEN \'<<parameter1>>\' AND \'<<parameter2>>\') \r\n) AS bb ON aa.id=bb.user_id\r\n) AS cc',1,0,0,2,3,1,'2020-05-01 22:33:36',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `report_query`(`id`,`reportname`,`style`,`header`,`query`,`crosstab`,`total`,`subtotal`,`order_by_col_1`,`order_by_col_2`,`order_by_col_3`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (3,'RPT_ANGGORA_PERIODE_DTL',3,'rekap_periode.php','SELECT aa.nama_aktifitas,concat(mt.tanggal,\' \') Tanggal,aa.value_aktifitas\r\nFROM\r\nmaster_tanggal mt\r\nLEFT JOIN\r\n(\r\nSELECT a.`tgl_aktifitas`,a.`user_id`,b.kode_aktifitas,b.`nama_aktifitas`,b.`value_aktifitas` \r\nFROM aktifitas_harian a\r\nINNER JOIN aktifitas_harian_detail b ON a.`id`=b.`aktifitas_id`\r\nWHERE (a.`tgl_aktifitas` BETWEEN \'<<parameter1>>\' AND \'<<parameter2>>\')\r\nAND a.`user_id`=\'<<parameter3>>\'\r\nORDER BY b.`kode_aktifitas` \r\n) AS aa\r\nON mt.`tanggal`=DAY(aa.tgl_aktifitas)\r\nWHERE (mt.`tanggal` BETWEEN DAY(\'<<parameter1>>\') AND DAY(\'<<parameter2>>\'))',1,1,0,1,0,0,'2020-05-01 22:23:41',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `report_query`(`id`,`reportname`,`style`,`header`,`query`,`crosstab`,`total`,`subtotal`,`order_by_col_1`,`order_by_col_2`,`order_by_col_3`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (4,'RPT_ANGGOTA_HARIAN_DTL',4,'rekap_harian.php','SELECT b.`nama_aktifitas` Aktifitas,\r\nb.`value_aktifitas` Jumlah,UPPER(b.`satuan_aktifitas`) Satuan,\r\nb.catatan_aktifitas `Catatan`\r\nFROM aktifitas_harian a\r\nINNER JOIN aktifitas_harian_detail b ON a.`id`=b.`aktifitas_id`,\r\n(SELECT @ROW:=0) r\r\nWHERE a.`tgl_aktifitas` = \'<<parameter1>>\' \r\nAND a.user_id=\'<<parameter2>>\'\r\nORDER BY b.kode_aktifitas ASC, a.`tgl_aktifitas` ASC',0,0,0,0,0,0,'2020-05-01 22:26:10',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
