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

insert  into `report_query`(`id`,`reportname`,`header`,`query`,`crosstab`,`total`,`subtotal`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (1,'RPT_ANGGOTA_HARIAN','rekap_harian.php','SELECT b.`nama_aktifitas`,UPPER(a.`username`) `Anggota`,b.`value_aktifitas`\r\nFROM `master_user` a\r\nLEFT JOIN\r\n(\r\nSELECT a.`tgl_aktifitas`,a.user_id,b.`nama_aktifitas`,b.`value_aktifitas` \r\nFROM aktifitas_harian a\r\nINNER JOIN aktifitas_harian_detail b ON a.`id`=b.`aktifitas_id`\r\nWHERE a.`tgl_aktifitas`=\'<<parameter1>>\'\r\nORDER BY b.`kode_aktifitas`\r\n) AS b ON a.`id`=b.user_id\r\nWHERE a.`idanggota`<>0 AND a.`unitid`=\'<<parameter3>>\' AND a.`departmentid`=\'<<parameter4>>\'',1,0,0,'2020-04-27 22:29:42',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `report_query`(`id`,`reportname`,`header`,`query`,`crosstab`,`total`,`subtotal`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (2,'RPT_ANGGOTA_PERIODE','rekap_periode.php','SELECT bb.`nama_aktifitas`,UPPER(`username`) `Anggota`,(bb.`value_aktifitas`) `value_aktifitas`\r\nFROM\r\n(\r\nSELECT * FROM `master_user` a\r\nWHERE a.`unitid`=\'<<parameter4>>\' AND a.`departmentid`=\'<<parameter5>>\'\r\nAND a.`idanggota`<>0\r\n) AS aa\r\nLEFT JOIN\r\n(\r\nSELECT b.`tgl_aktifitas`,b.`user_id`,c.kode_aktifitas,c.`nama_aktifitas`,c.`value_aktifitas` \r\nFROM aktifitas_harian b \r\nINNER JOIN aktifitas_harian_detail c ON b.`id`=c.`aktifitas_id`\r\nWHERE (b.`tgl_aktifitas` BETWEEN \'<<parameter1>>\' AND \'<<parameter2>>\') \r\n) AS bb ON aa.id=bb.user_id',1,0,0,'2020-04-27 22:32:47',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `report_query`(`id`,`reportname`,`header`,`query`,`crosstab`,`total`,`subtotal`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (3,'RPT_ANGGORA_PERIODE_DTL','rekap_periode.php','SELECT aa.nama_aktifitas,concat(mt.tanggal,\' \') Tanggal,aa.value_aktifitas\r\nFROM\r\nmaster_tanggal mt\r\nLEFT JOIN\r\n(\r\nSELECT a.`tgl_aktifitas`,a.`user_id`,b.kode_aktifitas,b.`nama_aktifitas`,b.`value_aktifitas` \r\nFROM aktifitas_harian a\r\nINNER JOIN aktifitas_harian_detail b ON a.`id`=b.`aktifitas_id`\r\nWHERE (a.`tgl_aktifitas` BETWEEN \'<<parameter1>>\' AND \'<<parameter2>>\')\r\nAND a.`user_id`=\'<<parameter3>>\'\r\nORDER BY b.`kode_aktifitas` \r\n) AS aa\r\nON mt.`tanggal`=DAY(aa.tgl_aktifitas)',1,1,0,'2020-04-27 22:29:59',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `report_query`(`id`,`reportname`,`header`,`query`,`crosstab`,`total`,`subtotal`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (4,'RPT_ANGGOTA_HARIAN_DTL','rekap_harian.php','SELECT b.`nama_aktifitas` Aktifitas,\r\nb.`value_aktifitas` Jumlah,UPPER(b.`satuan_aktifitas`) Satuan,\r\nb.catatan_aktifitas\r\nFROM aktifitas_harian a\r\nINNER JOIN aktifitas_harian_detail b ON a.`id`=b.`aktifitas_id`,\r\n(SELECT @ROW:=0) r\r\nWHERE a.`tgl_aktifitas` = \'<<parameter1>>\' \r\nAND a.user_id=\'<<parameter2>>\'\r\nORDER BY b.kode_aktifitas ASC, a.`tgl_aktifitas` ASC',0,0,0,'2020-04-27 22:20:56',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
