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
/*Table structure for table `master_shaff` */

CREATE TABLE `master_shaff` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `kode_shaff` varchar(10) DEFAULT NULL,
  `nama_shaff` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `master_shaff` */

insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (1,'SHF-0000','Pengurus');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (2,'SHF-0001','Kelompok 1');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (3,'SHF-0002','Kelompok 2');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (4,'SHF-0003','Kelompok 3');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (5,'SHF-0004','Kelompok 4');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (6,'SHF-0005','Kelompok 5');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (7,'SHF-0006','Kelompok 6');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (8,'SHF-0007','Kelompok 7');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (9,'SHF-0008','Kelompok 8');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (10,'SHF-0009','Kelompok 9');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (11,'SHF-0010','Kelompok 10');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (12,'SHF-0011','Kelompok 11');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (13,'SHF-0012','Kelompok 12');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (14,'SHF-0013','Kelompok 13');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (15,'SHF-0014','Kelompok 14');
insert  into `master_shaff`(`id`,`kode_shaff`,`nama_shaff`) values (16,'SHF-0015','Kelompok 15');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
