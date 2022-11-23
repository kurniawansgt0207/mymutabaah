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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

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
insert  into `master_module`(`id`,`module`,`descriptionhead`,`description`,`picture`,`classcolour`,`onclick`,`onclicksubmenu`,`parentid`,`public`,`entrytime`,`entryuser`,`entryip`,`updatetime`,`updateuser`,`updateip`) values (15,'RPT_BULANAN_ANGGOTA','<a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=3\')\">LAPORAN</a>  / <a href=\"#\" onclick=\"showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=15\')\">REKAP BULANAN</a> ','REKAP BULANAN','img/icon/icon-customer.png','bg-aqua','showMenu(\'contentmenu\', \'index.php?model=master_module&action=showMenu&id=15\')','showMenu(\'content\', \'index.php?model=report_query&action=showHeader&id=5\')',3,0,'2020-05-02 07:54:19','','','2020-05-02 07:54:38','admin','127.0.0.1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
