-- MySQL dump 10.13  Distrib 8.0.39, for Linux (aarch64)
--
-- Host: localhost    Database: dwa_elt_20241_target
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dim_junk_status_pilke`
--

DROP TABLE IF EXISTS `dim_junk_status_pilke`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_junk_status_pilke` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pil_ke` int NOT NULL,
  `status_seleksi_id` int NOT NULL,
  `status_seleksi_label` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_junk_status_pilke`
--

LOCK TABLES `dim_junk_status_pilke` WRITE;
/*!40000 ALTER TABLE `dim_junk_status_pilke` DISABLE KEYS */;
INSERT INTO `dim_junk_status_pilke` VALUES (1,1,1,'Diterima'),(2,1,2,'Ditolak'),(3,2,1,'Diterima'),(4,2,2,'Ditolak'),(5,3,1,'Diterima'),(6,3,2,'Ditolak');
/*!40000 ALTER TABLE `dim_junk_status_pilke` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_peserta`
--

DROP TABLE IF EXISTS `dim_peserta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_peserta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nomor` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `tahun_masuk` int NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `kota_lahir_id` int NOT NULL,
  `kota_lahir_nama` varchar(255) NOT NULL,
  `provinsi_lahir_id` int NOT NULL,
  `provinsi_lahir_nama` varchar(255) NOT NULL,
  `agama_id` int NOT NULL,
  `agama_nama` varchar(50) NOT NULL,
  `jenis_kelamin_id` int NOT NULL,
  `jenis_kelamin_nama` varchar(50) NOT NULL,
  `sekolah_id` int NOT NULL,
  `sekolah_nama` varchar(255) NOT NULL,
  `sekolah_kota_id` int NOT NULL,
  `sekolah_kota_nama` varchar(255) NOT NULL,
  `sekolah_provinsi_id` int NOT NULL,
  `sekolah_provinsi_nama` varchar(255) NOT NULL,
  `sekolah_akreditasi_id` int NOT NULL,
  `sekolah_akreditasi_nama` char(1) NOT NULL,
  `alamat_kota_id` int NOT NULL,
  `alamat_kota_nama` varchar(255) NOT NULL,
  `alamat_provinsi_id` int NOT NULL,
  `alamat_provinsi_nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `ibu_id` int NOT NULL,
  `ibu_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ibu_pekerjaan_id` int NOT NULL,
  `ibu_pekerjaan_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ibu_pendidikan_id` int NOT NULL,
  `ibu_pendidikan_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ibu_penghasilan_id` int NOT NULL,
  `ibu_penghasilan_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ayah_id` int NOT NULL,
  `ayah_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ayah_pekerjaan_id` int NOT NULL,
  `ayah_pekerjaan_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ayah_pendidikan_id` int NOT NULL,
  `ayah_pendidikan_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ayah_penghasilan_id` int NOT NULL,
  `ayah_penghasilan_nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_peserta`
--

LOCK TABLES `dim_peserta` WRITE;
/*!40000 ALTER TABLE `dim_peserta` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_peserta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_prodi`
--

DROP TABLE IF EXISTS `dim_prodi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_prodi` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode_prodi` int NOT NULL,
  `nama_prodi` varchar(200) NOT NULL,
  `kode_fakultas` int NOT NULL,
  `nama_fakultas` varchar(200) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `version` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_prodi`
--

LOCK TABLES `dim_prodi` WRITE;
/*!40000 ALTER TABLE `dim_prodi` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_prodi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_sekolah`
--

DROP TABLE IF EXISTS `dim_sekolah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_sekolah` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `kode` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kab_kota_id` int NOT NULL,
  `kab_kota_nama` varchar(255) NOT NULL,
  `provinsi_id` int NOT NULL,
  `provinsi_nama` varchar(255) NOT NULL,
  `akreditasi_id` int NOT NULL,
  `akreditasi_label` varchar(10) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `version` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_sekolah`
--

LOCK TABLES `dim_sekolah` WRITE;
/*!40000 ALTER TABLE `dim_sekolah` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_sekolah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_waktu`
--

DROP TABLE IF EXISTS `dim_waktu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dim_waktu` (
  `id` char(8) NOT NULL,
  `tanggal` int NOT NULL,
  `bulan` int NOT NULL,
  `tahun` int NOT NULL,
  `periode` char(5) NOT NULL,
  `semester` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_waktu`
--

LOCK TABLES `dim_waktu` WRITE;
/*!40000 ALTER TABLE `dim_waktu` DISABLE KEYS */;
INSERT INTO `dim_waktu` VALUES ('20200101',1,1,2020,'20192','2'),('20200102',2,1,2020,'20192','2'),('20200103',3,1,2020,'20192','2'),('20200104',4,1,2020,'20192','2'),('20200105',5,1,2020,'20192','2'),('20200106',6,1,2020,'20192','2'),('20200107',7,1,2020,'20192','2'),('20200108',8,1,2020,'20192','2'),('20200109',9,1,2020,'20192','2'),('20200110',10,1,2020,'20192','2'),('20200111',11,1,2020,'20192','2'),('20200112',12,1,2020,'20192','2'),('20200113',13,1,2020,'20192','2'),('20200114',14,1,2020,'20192','2'),('20200115',15,1,2020,'20192','2'),('20200116',16,1,2020,'20192','2'),('20200117',17,1,2020,'20192','2'),('20200118',18,1,2020,'20192','2'),('20200119',19,1,2020,'20192','2'),('20200120',20,1,2020,'20192','2'),('20200121',21,1,2020,'20192','2'),('20200122',22,1,2020,'20192','2'),('20200123',23,1,2020,'20192','2'),('20200124',24,1,2020,'20192','2'),('20200125',25,1,2020,'20192','2'),('20200126',26,1,2020,'20192','2'),('20200127',27,1,2020,'20192','2'),('20200128',28,1,2020,'20192','2'),('20200129',29,1,2020,'20192','2'),('20200130',30,1,2020,'20192','2'),('20200131',31,1,2020,'20192','2'),('20200201',1,2,2020,'20192','2'),('20200202',2,2,2020,'20192','2'),('20200203',3,2,2020,'20192','2'),('20200204',4,2,2020,'20192','2'),('20200205',5,2,2020,'20192','2'),('20200206',6,2,2020,'20192','2'),('20200207',7,2,2020,'20192','2'),('20200208',8,2,2020,'20192','2'),('20200209',9,2,2020,'20192','2'),('20200210',10,2,2020,'20192','2'),('20200211',11,2,2020,'20192','2'),('20200212',12,2,2020,'20192','2'),('20200213',13,2,2020,'20192','2'),('20200214',14,2,2020,'20192','2'),('20200215',15,2,2020,'20192','2'),('20200216',16,2,2020,'20192','2'),('20200217',17,2,2020,'20192','2'),('20200218',18,2,2020,'20192','2'),('20200219',19,2,2020,'20192','2'),('20200220',20,2,2020,'20192','2'),('20200221',21,2,2020,'20192','2'),('20200222',22,2,2020,'20192','2'),('20200223',23,2,2020,'20192','2'),('20200224',24,2,2020,'20192','2'),('20200225',25,2,2020,'20192','2'),('20200226',26,2,2020,'20192','2'),('20200227',27,2,2020,'20192','2'),('20200228',28,2,2020,'20192','2'),('20200229',29,2,2020,'20192','2'),('20200301',1,3,2020,'20192','2'),('20200302',2,3,2020,'20192','2'),('20200303',3,3,2020,'20192','2'),('20200304',4,3,2020,'20192','2'),('20200305',5,3,2020,'20192','2'),('20200306',6,3,2020,'20192','2'),('20200307',7,3,2020,'20192','2'),('20200308',8,3,2020,'20192','2'),('20200309',9,3,2020,'20192','2'),('20200310',10,3,2020,'20192','2'),('20200311',11,3,2020,'20192','2'),('20200312',12,3,2020,'20192','2'),('20200313',13,3,2020,'20192','2'),('20200314',14,3,2020,'20192','2'),('20200315',15,3,2020,'20192','2'),('20200316',16,3,2020,'20192','2'),('20200317',17,3,2020,'20192','2'),('20200318',18,3,2020,'20192','2'),('20200319',19,3,2020,'20192','2'),('20200320',20,3,2020,'20192','2'),('20200321',21,3,2020,'20192','2'),('20200322',22,3,2020,'20192','2'),('20200323',23,3,2020,'20192','2'),('20200324',24,3,2020,'20192','2'),('20200325',25,3,2020,'20192','2'),('20200326',26,3,2020,'20192','2'),('20200327',27,3,2020,'20192','2'),('20200328',28,3,2020,'20192','2'),('20200329',29,3,2020,'20192','2'),('20200330',30,3,2020,'20192','2'),('20200331',31,3,2020,'20192','2'),('20200401',1,4,2020,'20192','2'),('20200402',2,4,2020,'20192','2'),('20200403',3,4,2020,'20192','2'),('20200404',4,4,2020,'20192','2'),('20200405',5,4,2020,'20192','2'),('20200406',6,4,2020,'20192','2'),('20200407',7,4,2020,'20192','2'),('20200408',8,4,2020,'20192','2'),('20200409',9,4,2020,'20192','2'),('20200410',10,4,2020,'20192','2'),('20200411',11,4,2020,'20192','2'),('20200412',12,4,2020,'20192','2'),('20200413',13,4,2020,'20192','2'),('20200414',14,4,2020,'20192','2'),('20200415',15,4,2020,'20192','2'),('20200416',16,4,2020,'20192','2'),('20200417',17,4,2020,'20192','2'),('20200418',18,4,2020,'20192','2'),('20200419',19,4,2020,'20192','2'),('20200420',20,4,2020,'20192','2'),('20200421',21,4,2020,'20192','2'),('20200422',22,4,2020,'20192','2'),('20200423',23,4,2020,'20192','2'),('20200424',24,4,2020,'20192','2'),('20200425',25,4,2020,'20192','2'),('20200426',26,4,2020,'20192','2'),('20200427',27,4,2020,'20192','2'),('20200428',28,4,2020,'20192','2'),('20200429',29,4,2020,'20192','2'),('20200430',30,4,2020,'20192','2'),('20200501',1,5,2020,'20192','2'),('20200502',2,5,2020,'20192','2'),('20200503',3,5,2020,'20192','2'),('20200504',4,5,2020,'20192','2'),('20200505',5,5,2020,'20192','2'),('20200506',6,5,2020,'20192','2'),('20200507',7,5,2020,'20192','2'),('20200508',8,5,2020,'20192','2'),('20200509',9,5,2020,'20192','2'),('20200510',10,5,2020,'20192','2'),('20200511',11,5,2020,'20192','2'),('20200512',12,5,2020,'20192','2'),('20200513',13,5,2020,'20192','2'),('20200514',14,5,2020,'20192','2'),('20200515',15,5,2020,'20192','2'),('20200516',16,5,2020,'20192','2'),('20200517',17,5,2020,'20192','2'),('20200518',18,5,2020,'20192','2'),('20200519',19,5,2020,'20192','2'),('20200520',20,5,2020,'20192','2'),('20200521',21,5,2020,'20192','2'),('20200522',22,5,2020,'20192','2'),('20200523',23,5,2020,'20192','2'),('20200524',24,5,2020,'20192','2'),('20200525',25,5,2020,'20192','2'),('20200526',26,5,2020,'20192','2'),('20200527',27,5,2020,'20192','2'),('20200528',28,5,2020,'20192','2'),('20200529',29,5,2020,'20192','2'),('20200530',30,5,2020,'20192','2'),('20200531',31,5,2020,'20192','2'),('20200601',1,6,2020,'20192','2'),('20200602',2,6,2020,'20192','2'),('20200603',3,6,2020,'20192','2'),('20200604',4,6,2020,'20192','2'),('20200605',5,6,2020,'20192','2'),('20200606',6,6,2020,'20192','2'),('20200607',7,6,2020,'20192','2'),('20200608',8,6,2020,'20192','2'),('20200609',9,6,2020,'20192','2'),('20200610',10,6,2020,'20192','2'),('20200611',11,6,2020,'20192','2'),('20200612',12,6,2020,'20192','2'),('20200613',13,6,2020,'20192','2'),('20200614',14,6,2020,'20192','2'),('20200615',15,6,2020,'20192','2'),('20200616',16,6,2020,'20192','2'),('20200617',17,6,2020,'20192','2'),('20200618',18,6,2020,'20192','2'),('20200619',19,6,2020,'20192','2'),('20200620',20,6,2020,'20192','2'),('20200621',21,6,2020,'20192','2'),('20200622',22,6,2020,'20192','2'),('20200623',23,6,2020,'20192','2'),('20200624',24,6,2020,'20192','2'),('20200625',25,6,2020,'20192','2'),('20200626',26,6,2020,'20192','2'),('20200627',27,6,2020,'20192','2'),('20200628',28,6,2020,'20192','2'),('20200629',29,6,2020,'20192','2'),('20200630',30,6,2020,'20192','2'),('20200701',1,7,2020,'20201','1'),('20200702',2,7,2020,'20201','1'),('20200703',3,7,2020,'20201','1'),('20200704',4,7,2020,'20201','1'),('20200705',5,7,2020,'20201','1'),('20200706',6,7,2020,'20201','1'),('20200707',7,7,2020,'20201','1'),('20200708',8,7,2020,'20201','1'),('20200709',9,7,2020,'20201','1'),('20200710',10,7,2020,'20201','1'),('20200711',11,7,2020,'20201','1'),('20200712',12,7,2020,'20201','1'),('20200713',13,7,2020,'20201','1'),('20200714',14,7,2020,'20201','1'),('20200715',15,7,2020,'20201','1'),('20200716',16,7,2020,'20201','1'),('20200717',17,7,2020,'20201','1'),('20200718',18,7,2020,'20201','1'),('20200719',19,7,2020,'20201','1'),('20200720',20,7,2020,'20201','1'),('20200721',21,7,2020,'20201','1'),('20200722',22,7,2020,'20201','1'),('20200723',23,7,2020,'20201','1'),('20200724',24,7,2020,'20201','1'),('20200725',25,7,2020,'20201','1'),('20200726',26,7,2020,'20201','1'),('20200727',27,7,2020,'20201','1'),('20200728',28,7,2020,'20201','1'),('20200729',29,7,2020,'20201','1'),('20200730',30,7,2020,'20201','1'),('20200731',31,7,2020,'20201','1'),('20200801',1,8,2020,'20201','1'),('20200802',2,8,2020,'20201','1'),('20200803',3,8,2020,'20201','1'),('20200804',4,8,2020,'20201','1'),('20200805',5,8,2020,'20201','1'),('20200806',6,8,2020,'20201','1'),('20200807',7,8,2020,'20201','1'),('20200808',8,8,2020,'20201','1'),('20200809',9,8,2020,'20201','1'),('20200810',10,8,2020,'20201','1'),('20200811',11,8,2020,'20201','1'),('20200812',12,8,2020,'20201','1'),('20200813',13,8,2020,'20201','1'),('20200814',14,8,2020,'20201','1'),('20200815',15,8,2020,'20201','1'),('20200816',16,8,2020,'20201','1'),('20200817',17,8,2020,'20201','1'),('20200818',18,8,2020,'20201','1'),('20200819',19,8,2020,'20201','1'),('20200820',20,8,2020,'20201','1'),('20200821',21,8,2020,'20201','1'),('20200822',22,8,2020,'20201','1'),('20200823',23,8,2020,'20201','1'),('20200824',24,8,2020,'20201','1'),('20200825',25,8,2020,'20201','1'),('20200826',26,8,2020,'20201','1'),('20200827',27,8,2020,'20201','1'),('20200828',28,8,2020,'20201','1'),('20200829',29,8,2020,'20201','1'),('20200830',30,8,2020,'20201','1'),('20200831',31,8,2020,'20201','1'),('20200901',1,9,2020,'20201','1'),('20200902',2,9,2020,'20201','1'),('20200903',3,9,2020,'20201','1'),('20200904',4,9,2020,'20201','1'),('20200905',5,9,2020,'20201','1'),('20200906',6,9,2020,'20201','1'),('20200907',7,9,2020,'20201','1'),('20200908',8,9,2020,'20201','1'),('20200909',9,9,2020,'20201','1'),('20200910',10,9,2020,'20201','1'),('20200911',11,9,2020,'20201','1'),('20200912',12,9,2020,'20201','1'),('20200913',13,9,2020,'20201','1'),('20200914',14,9,2020,'20201','1'),('20200915',15,9,2020,'20201','1'),('20200916',16,9,2020,'20201','1'),('20200917',17,9,2020,'20201','1'),('20200918',18,9,2020,'20201','1'),('20200919',19,9,2020,'20201','1'),('20200920',20,9,2020,'20201','1'),('20200921',21,9,2020,'20201','1'),('20200922',22,9,2020,'20201','1'),('20200923',23,9,2020,'20201','1'),('20200924',24,9,2020,'20201','1'),('20200925',25,9,2020,'20201','1'),('20200926',26,9,2020,'20201','1'),('20200927',27,9,2020,'20201','1'),('20200928',28,9,2020,'20201','1'),('20200929',29,9,2020,'20201','1'),('20200930',30,9,2020,'20201','1'),('20201001',1,10,2020,'20201','1'),('20201002',2,10,2020,'20201','1'),('20201003',3,10,2020,'20201','1'),('20201004',4,10,2020,'20201','1'),('20201005',5,10,2020,'20201','1'),('20201006',6,10,2020,'20201','1'),('20201007',7,10,2020,'20201','1'),('20201008',8,10,2020,'20201','1'),('20201009',9,10,2020,'20201','1'),('20201010',10,10,2020,'20201','1'),('20201011',11,10,2020,'20201','1'),('20201012',12,10,2020,'20201','1'),('20201013',13,10,2020,'20201','1'),('20201014',14,10,2020,'20201','1'),('20201015',15,10,2020,'20201','1'),('20201016',16,10,2020,'20201','1'),('20201017',17,10,2020,'20201','1'),('20201018',18,10,2020,'20201','1'),('20201019',19,10,2020,'20201','1'),('20201020',20,10,2020,'20201','1'),('20201021',21,10,2020,'20201','1'),('20201022',22,10,2020,'20201','1'),('20201023',23,10,2020,'20201','1'),('20201024',24,10,2020,'20201','1'),('20201025',25,10,2020,'20201','1'),('20201026',26,10,2020,'20201','1'),('20201027',27,10,2020,'20201','1'),('20201028',28,10,2020,'20201','1'),('20201029',29,10,2020,'20201','1'),('20201030',30,10,2020,'20201','1'),('20201031',31,10,2020,'20201','1'),('20201101',1,11,2020,'20201','1'),('20201102',2,11,2020,'20201','1'),('20201103',3,11,2020,'20201','1'),('20201104',4,11,2020,'20201','1'),('20201105',5,11,2020,'20201','1'),('20201106',6,11,2020,'20201','1'),('20201107',7,11,2020,'20201','1'),('20201108',8,11,2020,'20201','1'),('20201109',9,11,2020,'20201','1'),('20201110',10,11,2020,'20201','1'),('20201111',11,11,2020,'20201','1'),('20201112',12,11,2020,'20201','1'),('20201113',13,11,2020,'20201','1'),('20201114',14,11,2020,'20201','1'),('20201115',15,11,2020,'20201','1'),('20201116',16,11,2020,'20201','1'),('20201117',17,11,2020,'20201','1'),('20201118',18,11,2020,'20201','1'),('20201119',19,11,2020,'20201','1'),('20201120',20,11,2020,'20201','1'),('20201121',21,11,2020,'20201','1'),('20201122',22,11,2020,'20201','1'),('20201123',23,11,2020,'20201','1'),('20201124',24,11,2020,'20201','1'),('20201125',25,11,2020,'20201','1'),('20201126',26,11,2020,'20201','1'),('20201127',27,11,2020,'20201','1'),('20201128',28,11,2020,'20201','1'),('20201129',29,11,2020,'20201','1'),('20201130',30,11,2020,'20201','1'),('20201201',1,12,2020,'20201','1'),('20201202',2,12,2020,'20201','1'),('20201203',3,12,2020,'20201','1'),('20201204',4,12,2020,'20201','1'),('20201205',5,12,2020,'20201','1'),('20201206',6,12,2020,'20201','1'),('20201207',7,12,2020,'20201','1'),('20201208',8,12,2020,'20201','1'),('20201209',9,12,2020,'20201','1'),('20201210',10,12,2020,'20201','1'),('20201211',11,12,2020,'20201','1'),('20201212',12,12,2020,'20201','1'),('20201213',13,12,2020,'20201','1'),('20201214',14,12,2020,'20201','1'),('20201215',15,12,2020,'20201','1'),('20201216',16,12,2020,'20201','1'),('20201217',17,12,2020,'20201','1'),('20201218',18,12,2020,'20201','1'),('20201219',19,12,2020,'20201','1'),('20201220',20,12,2020,'20201','1'),('20201221',21,12,2020,'20201','1'),('20201222',22,12,2020,'20201','1'),('20201223',23,12,2020,'20201','1'),('20201224',24,12,2020,'20201','1'),('20201225',25,12,2020,'20201','1'),('20201226',26,12,2020,'20201','1'),('20201227',27,12,2020,'20201','1'),('20201228',28,12,2020,'20201','1'),('20201229',29,12,2020,'20201','1'),('20201230',30,12,2020,'20201','1'),('20201231',31,12,2020,'20201','1');
/*!40000 ALTER TABLE `dim_waktu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_nilai_peserta`
--

DROP TABLE IF EXISTS `fact_nilai_peserta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_nilai_peserta` (
  `dim_peserta_id` bigint unsigned NOT NULL,
  `dim_waktu_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mata_uji` char(3) NOT NULL COMMENT 'DD',
  `nilai` decimal(8,4) NOT NULL,
  PRIMARY KEY (`dim_peserta_id`,`dim_waktu_id`,`mata_uji`),
  KEY `dim_waktu_id` (`dim_waktu_id`),
  CONSTRAINT `fact_nilai_peserta_ibfk_1` FOREIGN KEY (`dim_peserta_id`) REFERENCES `dim_peserta` (`id`),
  CONSTRAINT `fact_nilai_peserta_ibfk_2` FOREIGN KEY (`dim_waktu_id`) REFERENCES `dim_waktu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_nilai_peserta`
--

LOCK TABLES `fact_nilai_peserta` WRITE;
/*!40000 ALTER TABLE `fact_nilai_peserta` DISABLE KEYS */;
/*!40000 ALTER TABLE `fact_nilai_peserta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_peserta`
--

DROP TABLE IF EXISTS `fact_peserta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_peserta` (
  `dim_peserta_id` bigint unsigned NOT NULL,
  `dim_waktu_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dim_prodi_id` bigint unsigned NOT NULL,
  `dim_junk_status_pilke` int unsigned NOT NULL,
  `count` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`dim_peserta_id`,`dim_waktu_id`,`dim_prodi_id`),
  KEY `dim_waktu_id` (`dim_waktu_id`),
  KEY `dim_prodi_id` (`dim_prodi_id`),
  KEY `dim_junk_status_pilke` (`dim_junk_status_pilke`),
  CONSTRAINT `fact_peserta_ibfk_1` FOREIGN KEY (`dim_peserta_id`) REFERENCES `dim_peserta` (`id`),
  CONSTRAINT `fact_peserta_ibfk_2` FOREIGN KEY (`dim_waktu_id`) REFERENCES `dim_waktu` (`id`),
  CONSTRAINT `fact_peserta_ibfk_3` FOREIGN KEY (`dim_prodi_id`) REFERENCES `dim_prodi` (`id`),
  CONSTRAINT `fact_peserta_ibfk_4` FOREIGN KEY (`dim_junk_status_pilke`) REFERENCES `dim_junk_status_pilke` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_peserta`
--

LOCK TABLES `fact_peserta` WRITE;
/*!40000 ALTER TABLE `fact_peserta` DISABLE KEYS */;
/*!40000 ALTER TABLE `fact_peserta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_rekap_peserta`
--

DROP TABLE IF EXISTS `fact_rekap_peserta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fact_rekap_peserta` (
  `dim_sekolah_id` bigint unsigned NOT NULL,
  `dim_waktu_id` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dim_prodi_id` bigint unsigned NOT NULL,
  `jml_diterima` int NOT NULL,
  `jml_tidak_diterima` int NOT NULL,
  PRIMARY KEY (`dim_sekolah_id`,`dim_waktu_id`,`dim_prodi_id`),
  KEY `dim_waktu_id` (`dim_waktu_id`),
  KEY `dim_prodi_id` (`dim_prodi_id`),
  CONSTRAINT `fact_rekap_peserta_ibfk_1` FOREIGN KEY (`dim_sekolah_id`) REFERENCES `dim_sekolah` (`id`),
  CONSTRAINT `fact_rekap_peserta_ibfk_2` FOREIGN KEY (`dim_waktu_id`) REFERENCES `dim_waktu` (`id`),
  CONSTRAINT `fact_rekap_peserta_ibfk_3` FOREIGN KEY (`dim_prodi_id`) REFERENCES `dim_prodi` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_rekap_peserta`
--

LOCK TABLES `fact_rekap_peserta` WRITE;
/*!40000 ALTER TABLE `fact_rekap_peserta` DISABLE KEYS */;
/*!40000 ALTER TABLE `fact_rekap_peserta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-25  7:41:36
