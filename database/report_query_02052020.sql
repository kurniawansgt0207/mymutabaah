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
  `order_concat` varchar(200) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `report_query` */

insert  into `report_query`(`id`,`reportname`,`style`,`header`,`query`,`crosstab`,`total`,`subtotal`,`order_concat`,`order_by_col_1`,`order_by_col_2`,`order_by_col_3`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (1,'RPT_ANGGOTA_HARIAN',4,'rekap_harian.php','SELECT aa.nama_aktifitas nama_aktifitas,UPPER(a.`username`) ANGGOTA,\r\nb.`description` YAYASAN,c.`description` KELAS,aa.value_aktifitas \r\nFROM\r\n(\r\nSELECT a.`tgl_aktifitas`,a.user_id,b.`kode_aktifitas`,UPPER(c.`nama_aktifitas`) nama_aktifitas,\r\nb.`value_aktifitas`,c.`visorder` \r\nFROM aktifitas_harian a \r\nINNER JOIN aktifitas_harian_detail b ON a.`id`=b.`aktifitas_id` \r\nINNER JOIN master_aktifitas c ON b.`kode_aktifitas`=c.`kode_aktifitas`\r\nWHERE a.`tgl_aktifitas`=\'2020-04-25\' \r\nAND c.`peruntukan`=\'daily\' AND c.`active`=1\r\nORDER BY c.`visorder`\r\n) AS aa\r\nRIGHT JOIN `master_user` a ON a.`id`=aa.user_id\r\nINNER JOIN master_unit b ON a.`unitid`=b.`unitid`\r\nINNER JOIN master_department c ON a.`departmentid`=c.`departmentid`\r\nWHERE a.`idanggota`<>0\r\nAND IF(\'0\'=\'<<parameter3>>\',TRUE,a.`unitid`=\'<<parameter3>>\') \r\nAND IF(\'0\'=\'<<parameter4>>\',TRUE,a.`departmentid`=\'<<parameter4>>\') ',1,0,0,'aa.visorder',2,3,1,'2020-05-02 16:02:01',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `report_query`(`id`,`reportname`,`style`,`header`,`query`,`crosstab`,`total`,`subtotal`,`order_concat`,`order_by_col_1`,`order_by_col_2`,`order_by_col_3`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (2,'RPT_ANGGOTA_PERIODE',4,'rekap_periode.php','SELECT cc.`nama_aktifitas`,cc.Anggota ANGGOTA,cc.unitid `YAYASAN`,cc.departmentid `KELAS`,\r\ncc.`value_aktifitas`\r\nFROM\r\n(\r\nSELECT bb.`nama_aktifitas`,UPPER(`username`) Anggota,aa.unitid,aa.departmentid,\r\n(bb.`value_aktifitas`) `value_aktifitas`,bb.visorder\r\nFROM\r\n(\r\nSELECT a.id,a.`username`,b.`description` unitid,c.`description` departmentid\r\nFROM `master_user` a\r\nINNER JOIN master_unit b ON a.`unitid`=b.`unitid`\r\nINNER JOIN master_department c ON a.`departmentid`=c.`departmentid`\r\nWHERE IF(\'0\'=\'<<parameter4>>\',TRUE,a.`unitid`=\'<<parameter4>>\') \r\nAND IF(\'0\'=\'<<parameter5>>\',TRUE,a.`departmentid`=\'<<parameter5>>\')\r\nAND a.`idanggota`<>0\r\n) AS aa\r\nLEFT JOIN\r\n(\r\nSELECT b.`tgl_aktifitas`,b.`user_id`,c.kode_aktifitas,UPPER(d.`nama_aktifitas`) nama_aktifitas,\r\nd.`visorder`,c.`value_aktifitas` \r\nFROM aktifitas_harian b \r\nINNER JOIN aktifitas_harian_detail c ON b.`id`=c.`aktifitas_id`\r\nINNER JOIN master_aktifitas d ON c.`kode_aktifitas`=d.`kode_aktifitas`\r\nWHERE (b.`tgl_aktifitas` BETWEEN \'<<parameter1>>\' AND \'<<parameter2>>\') \r\n) AS bb ON aa.id=bb.user_id\r\n) AS cc',1,0,0,'cc.visorder',2,3,1,'2020-05-02 17:49:08',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `report_query`(`id`,`reportname`,`style`,`header`,`query`,`crosstab`,`total`,`subtotal`,`order_concat`,`order_by_col_1`,`order_by_col_2`,`order_by_col_3`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (3,'RPT_ANGGORA_PERIODE_DTL',3,'rekap_periode.php','SELECT aa.nama_aktifitas,CONCAT(mt.tanggal,\' \',MONTHNAME(\'<<parameter1>>\'),\' \',YEAR(\'<<parameter1>>\')) TANGGAL,aa.value_aktifitas\r\nFROM\r\nmaster_tanggal mt\r\nLEFT JOIN\r\n(\r\nSELECT a.`tgl_aktifitas`,a.`user_id`,b.kode_aktifitas,UPPER(b.`nama_aktifitas`) nama_aktifitas,\r\nb.`value_aktifitas`,c.`visorder`\r\nFROM aktifitas_harian a\r\nINNER JOIN aktifitas_harian_detail b ON a.`id`=b.`aktifitas_id`\r\nINNER JOIN master_aktifitas c ON b.`kode_aktifitas`=c.`kode_aktifitas`\r\nWHERE (a.`tgl_aktifitas` BETWEEN \'<<parameter1>>\' AND \'<<parameter2>>\')\r\nAND a.`user_id`=\'<<parameter3>>\' AND c.`active`=1 AND c.`peruntukan`=\'daily\'\r\nORDER BY b.`kode_aktifitas` \r\n) AS aa\r\nON mt.`tanggal`=DAY(aa.tgl_aktifitas)\r\nWHERE (mt.`tanggal` BETWEEN DAY(\'<<parameter1>>\') AND DAY(\'<<parameter2>>\'))',1,1,0,'aa.visorder',1,0,0,'2020-05-02 20:31:03',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `report_query`(`id`,`reportname`,`style`,`header`,`query`,`crosstab`,`total`,`subtotal`,`order_concat`,`order_by_col_1`,`order_by_col_2`,`order_by_col_3`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (4,'RPT_ANGGOTA_HARIAN_DTL',4,'rekap_harian.php','SELECT UPPER(b.`nama_aktifitas`) Aktifitas,\r\nb.`value_aktifitas` Jumlah,UPPER(b.`satuan_aktifitas`) Satuan,\r\nb.catatan_aktifitas `Catatan`\r\nFROM aktifitas_harian a\r\nINNER JOIN aktifitas_harian_detail b ON a.`id`=b.`aktifitas_id`,\r\n(SELECT @ROW:=0) r\r\nWHERE a.`tgl_aktifitas` = \'<<parameter1>>\' \r\nAND a.user_id=\'<<parameter2>>\'\r\nORDER BY b.kode_aktifitas ASC, a.`tgl_aktifitas` ASC',0,0,0,NULL,0,0,0,'2020-05-02 16:03:38',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);
insert  into `report_query`(`id`,`reportname`,`style`,`header`,`query`,`crosstab`,`total`,`subtotal`,`order_concat`,`order_by_col_1`,`order_by_col_2`,`order_by_col_3`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (5,'RPT_ANGGOTA_BULANAN',4,'rekap_bulanan.php','SELECT b.`nama_aktifitas`,c.`username`,\r\nd.`description` Yayasan,e.`description` Kelas,SUM(aa.jml) jml\r\nFROM\r\n(\r\nSELECT a.`user_id`,a.`user_fullname`,b.`kode_aktifitas`,\r\nb.`value_aktifitas` jml \r\nFROM aktifitas_harian a\r\nINNER JOIN aktifitas_harian_detail b ON a.`id`=b.`aktifitas_id`\r\nWHERE (a.`tgl_aktifitas` BETWEEN \'2020-04-01\' AND \'2020-04-30\')\r\nAND a.`user_id`<>1\r\nUNION ALL\r\nSELECT a.`user_id`,a.`user_fullname`,b.`kode_aktifitas`,\r\nb.`value_aktifitas` jml\r\nFROM aktifitas_bulanan a\r\nINNER JOIN aktifitas_bulanan_detail b ON a.`id`=b.`aktifitas_id`\r\nWHERE a.`mop`=4 AND a.`yop`=2020\r\n) AS aa \r\nINNER JOIN master_aktifitas b ON aa.kode_aktifitas=b.`kode_aktifitas`\r\nRIGHT JOIN `master_user` c ON aa.user_id=c.`id` \r\nINNER JOIN master_unit d ON c.`unitid`=d.`unitid`\r\nINNER JOIN master_department e ON c.`departmentid`=e.`departmentid`\r\nWHERE c.`idanggota`<>0\r\nGROUP BY c.`id`,b.`kode_aktifitas`',1,0,0,'b.peruntukan,b.visorder',2,3,1,'2020-05-02 15:38:33',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
