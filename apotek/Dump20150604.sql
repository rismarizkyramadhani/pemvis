CREATE DATABASE  IF NOT EXISTS `db_apotek` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_apotek`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: localhost    Database: db_apotek
-- ------------------------------------------------------
-- Server version	5.6.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_customer`
--

DROP TABLE IF EXISTS `tb_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_customer` (
  `kode_cus` varchar(10) NOT NULL,
  `nama_cus` varchar(150) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kota` varchar(150) NOT NULL,
  `propinsi` varchar(100) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  PRIMARY KEY (`kode_cus`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_customer`
--

LOCK TABLES `tb_customer` WRITE;
/*!40000 ALTER TABLE `tb_customer` DISABLE KEYS */;
INSERT INTO `tb_customer` VALUES ('1','Firman','jl raya gedangan','sidoarjo','jawa timur','031-63726217','0899434234234','kerjo bro');
/*!40000 ALTER TABLE `tb_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_dtlpem`
--

DROP TABLE IF EXISTS `tb_dtlpem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_dtlpem` (
  `no_trans` int(10) NOT NULL,
  `kode_obat` int(10) NOT NULL,
  `jumlah` int(12) NOT NULL,
  `harga` int(12) NOT NULL,
  `total` int(10) NOT NULL,
  PRIMARY KEY (`no_trans`,`kode_obat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_dtlpem`
--

LOCK TABLES `tb_dtlpem` WRITE;
/*!40000 ALTER TABLE `tb_dtlpem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_dtlpem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_login`
--

DROP TABLE IF EXISTS `tb_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `hak_akses` varchar(20) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `hp` varchar(12) NOT NULL,
  `id_user` char(5) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_login`
--

LOCK TABLES `tb_login` WRITE;
/*!40000 ALTER TABLE `tb_login` DISABLE KEYS */;
INSERT INTO `tb_login` VALUES ('menyok','menyok','user','Satria Hernanda','Jl. mustain no. 17 Tuban','087834234556','1'),('admin','sofi','admin','Sofiyati','Jl. Kebonsari','0812334456','all'),('jefry','pesenodisek','user','Jefry Miftakhul','perum. Bukit Karang Tuban','0987683648','2');
/*!40000 ALTER TABLE `tb_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_obat`
--

DROP TABLE IF EXISTS `tb_obat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_obat` (
  `kode_obat` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `dosis` varchar(50) NOT NULL,
  `exp` date NOT NULL,
  `stok` int(20) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  PRIMARY KEY (`kode_obat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_obat`
--

LOCK TABLES `tb_obat` WRITE;
/*!40000 ALTER TABLE `tb_obat` DISABLE KEYS */;
INSERT INTO `tb_obat` VALUES (121,'qwq','asa','asa','2015-06-03',1221121,12121),(345,'','','','2015-06-03',0,0);
/*!40000 ALTER TABLE `tb_obat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pemesanan`
--

DROP TABLE IF EXISTS `tb_pemesanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pemesanan` (
  `no_trans` varchar(10) NOT NULL,
  `tgl_trans` date NOT NULL,
  `nama_customer` varchar(50) NOT NULL,
  `subtotal` int(15) NOT NULL,
  `user` varchar(50) NOT NULL,
  PRIMARY KEY (`no_trans`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pemesanan`
--

LOCK TABLES `tb_pemesanan` WRITE;
/*!40000 ALTER TABLE `tb_pemesanan` DISABLE KEYS */;
INSERT INTO `tb_pemesanan` VALUES ('1','2014-12-12','soro',20000,'sadasd');
/*!40000 ALTER TABLE `tb_pemesanan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-04 18:51:58
