/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.1.36-community-log : Database - my_mutabaah
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `aktifitas_kajian` */

DROP TABLE `aktifitas_kajian`;

CREATE TABLE `aktifitas_kajian` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `tgl_kajian` date DEFAULT NULL,
  `lokasi_kajian` varchar(255) DEFAULT NULL,
  `kelompok_kajian` varchar(100) DEFAULT NULL,
  `tipe_kelompok` int(5) DEFAULT NULL,
  `level_kelompok` int(2) DEFAULT NULL,
  `waktu_mulai_kajian` varchar(10) DEFAULT NULL,
  `waktu_selesai_kajian` varchar(10) DEFAULT NULL,
  `pengisi_kajian` varchar(255) DEFAULT NULL,
  `materi_kajian` int(5) DEFAULT NULL,
  `rangkuman_materi` text,
  `jumlah_peserta_kajian` int(5) DEFAULT NULL,
  `jumlah_peserta_tidak_hadir` int(5) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `master_materi` */

CREATE TABLE `master_materi` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `kode_materi` varchar(10) DEFAULT NULL,
  `nama_materi` varchar(100) DEFAULT NULL,
  `alias_materi` varchar(100) DEFAULT NULL,
  `level` int(2) DEFAULT NULL,
  `created_by` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` varchar(20) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
