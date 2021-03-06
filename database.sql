-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: database
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id_admin` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id_admin`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietdiem`
--

DROP TABLE IF EXISTS `chitietdiem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietdiem` (
  `maCTD` int NOT NULL AUTO_INCREMENT,
  `maLD` int NOT NULL,
  `maDiem` int NOT NULL,
  `diemSo` float NOT NULL,
  PRIMARY KEY (`maCTD`),
  KEY `maLD` (`maLD`),
  KEY `maDiem` (`maDiem`),
  CONSTRAINT `chitietdiem_ibfk_1` FOREIGN KEY (`maLD`) REFERENCES `loaidiem` (`maLD`),
  CONSTRAINT `chitietdiem_ibfk_2` FOREIGN KEY (`maDiem`) REFERENCES `diem` (`maDiem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietdiem`
--

LOCK TABLES `chitietdiem` WRITE;
/*!40000 ALTER TABLE `chitietdiem` DISABLE KEYS */;
/*!40000 ALTER TABLE `chitietdiem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diem`
--

DROP TABLE IF EXISTS `diem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diem` (
  `maDiem` int NOT NULL AUTO_INCREMENT,
  `maHK` int NOT NULL,
  `maMH` int NOT NULL,
  `maHS` int NOT NULL,
  `diemTB` float DEFAULT NULL,
  PRIMARY KEY (`maDiem`),
  KEY `maHK` (`maHK`),
  KEY `maMH` (`maMH`),
  KEY `maHS` (`maHS`),
  CONSTRAINT `diem_ibfk_1` FOREIGN KEY (`maHK`) REFERENCES `hocky` (`maHK`),
  CONSTRAINT `diem_ibfk_2` FOREIGN KEY (`maMH`) REFERENCES `monhoc` (`maMH`),
  CONSTRAINT `diem_ibfk_3` FOREIGN KEY (`maHS`) REFERENCES `hocsinh` (`maHS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diem`
--

LOCK TABLES `diem` WRITE;
/*!40000 ALTER TABLE `diem` DISABLE KEYS */;
/*!40000 ALTER TABLE `diem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hocky`
--

DROP TABLE IF EXISTS `hocky`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hocky` (
  `maHK` int NOT NULL AUTO_INCREMENT,
  `tenHK` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`maHK`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hocky`
--

LOCK TABLES `hocky` WRITE;
/*!40000 ALTER TABLE `hocky` DISABLE KEYS */;
INSERT INTO `hocky` VALUES (1,'H???c K??? 1'),(2,'H???c K??? 2');
/*!40000 ALTER TABLE `hocky` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hocsinh`
--

DROP TABLE IF EXISTS `hocsinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hocsinh` (
  `maHS` int NOT NULL AUTO_INCREMENT,
  `tenHS` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioiTinh` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngaySinh` date NOT NULL,
  `diaChi` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maLop` int DEFAULT NULL,
  PRIMARY KEY (`maHS`),
  KEY `hocsinh_ibfk_1` (`maLop`),
  CONSTRAINT `hocsinh_ibfk_1` FOREIGN KEY (`maLop`) REFERENCES `lop` (`maLop`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hocsinh`
--

LOCK TABLES `hocsinh` WRITE;
/*!40000 ALTER TABLE `hocsinh` DISABLE KEYS */;
INSERT INTO `hocsinh` VALUES (24,'Nguy???n Ho??ng Ph??c','Nam','2003-02-01','602/5 ??i???n Bi??n Ph??? , Qu???n B??nh Th???nh, H??? Ch?? Minh.',NULL,121),(25,'Tr???n Thu Hi???n','N???','2005-09-08','312/5 B???ch ?????ng , Qu???n B??nh Th???nh, H??? Ch?? Minh.',NULL,102),(26,'Nguy???n Ng???c Anh','N???','2004-02-21','127/24 Quang Trung, Qu???n G?? V???p, H??? Ch?? Minh','ngocanh2102@gmail.com',113),(27,'Nguy???n Thi??n An','Nam','2004-05-12','247/4 L?? Quang ?????nh, Qu???n G?? V???p, H??? Ch?? Minh','annguyen2004@gmail.com',113),(28,'Ho??ng Th??? Di???u Hi???n','N???','2004-09-09','512/4/2 B???ch ?????ng , Qu???n B??nh Th???nh, H??? Ch?? Minh.','hien090904@gmail.com',113),(29,'L?? Th??? Th??y D????ng','N???','2003-10-09','142 L?? L???i, Qu???n G?? V???p, H??? Ch?? Minh','',122),(30,'?????ng Minh ?????t','Nam','2003-09-09','310/2/5 C???ng H??a, Qu???n T??n B??nh, H??? Ch?? Minh','datd9923@gmail.com',121),(31,'Phan Anh Qu??n','Nam','2005-01-12','94/5 ??inh B??? L??nh, Qu???n B??nh Th???nh, H??? Ch?? Minh','',113),(32,'Phan Th??? Y???n Nhi','N???','2005-02-05','527/24 D????ng Qu???ng H??m, Qu???n G?? V???p, H??? Ch?? Minh','',NULL),(34,'Nguy???n Th??? Ng???c Linh','N???','2005-11-16','90/8 Ho??ng V??n Th??? , Qu???n B??nh Th???nh, H??? Ch?? Minh.','',NULL),(35,'H?? Th??? Nguy???t ??nh','N???','2005-12-07','122/5 Phan V??n Tr??? , Qu???n B??nh Th???nh, H??? Ch?? Minh.','',NULL);
/*!40000 ALTER TABLE `hocsinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khoi`
--

DROP TABLE IF EXISTS `khoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khoi` (
  `maKhoi` int NOT NULL AUTO_INCREMENT,
  `tenKhoi` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soLop` int NOT NULL,
  PRIMARY KEY (`maKhoi`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khoi`
--

LOCK TABLES `khoi` WRITE;
/*!40000 ALTER TABLE `khoi` DISABLE KEYS */;
INSERT INTO `khoi` VALUES (10,'Kh???i 10',4),(11,'Kh???i 11',3),(12,'Kh???i 12',2);
/*!40000 ALTER TABLE `khoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaidiem`
--

DROP TABLE IF EXISTS `loaidiem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaidiem` (
  `maLD` int NOT NULL AUTO_INCREMENT,
  `tenLD` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`maLD`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaidiem`
--

LOCK TABLES `loaidiem` WRITE;
/*!40000 ALTER TABLE `loaidiem` DISABLE KEYS */;
INSERT INTO `loaidiem` VALUES (1,'??i???m 15 ph??t'),(2,'??i???m 1 ti???t'),(3,'??i???m cu???i H???c K???');
/*!40000 ALTER TABLE `loaidiem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lop`
--

DROP TABLE IF EXISTS `lop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lop` (
  `maLop` int NOT NULL AUTO_INCREMENT,
  `tenLop` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siSo` int NOT NULL,
  `maKhoi` int NOT NULL,
  PRIMARY KEY (`maLop`),
  KEY `maKhoi` (`maKhoi`),
  CONSTRAINT `lop_ibfk_1` FOREIGN KEY (`maKhoi`) REFERENCES `khoi` (`maKhoi`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lop`
--

LOCK TABLES `lop` WRITE;
/*!40000 ALTER TABLE `lop` DISABLE KEYS */;
INSERT INTO `lop` VALUES (101,'L???p 10A1',0,10),(102,'L???p 10A2',0,10),(103,'L???p 10A3',0,10),(104,'L???p 10A4',0,10),(111,'L???p 11A1',0,11),(112,'L???p 11A2',0,11),(113,'L???p 11A3',0,11),(121,'L???p 12A1',0,12),(122,'L???p 12A2',0,12);
/*!40000 ALTER TABLE `lop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monhoc`
--

DROP TABLE IF EXISTS `monhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monhoc` (
  `maMH` int NOT NULL AUTO_INCREMENT,
  `tenMH` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`maMH`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monhoc`
--

LOCK TABLES `monhoc` WRITE;
/*!40000 ALTER TABLE `monhoc` DISABLE KEYS */;
INSERT INTO `monhoc` VALUES (1,'To??n'),(2,'L??'),(3,'H??a'),(4,'Sinh'),(5,'S???'),(6,'?????a'),(7,'V??n'),(8,'?????o ?????c'),(9,'Th??? D???c');
/*!40000 ALTER TABLE `monhoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quydinh`
--

DROP TABLE IF EXISTS `quydinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quydinh` (
  `maQD` int NOT NULL AUTO_INCREMENT,
  `tenQD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noiDung` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`maQD`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quydinh`
--

LOCK TABLES `quydinh` WRITE;
/*!40000 ALTER TABLE `quydinh` DISABLE KEYS */;
INSERT INTO `quydinh` VALUES (1,'Quy ?????nh tu???i h???c sinh','Tu???i h???c sinh t??? 15 ?????n 20.'),(2,'Quy ?????nh s??? l?????ng l???p','C?? 3 kh???i l???p ( 10, 11, 12 ). Kh???i 10 c?? 4 l???p (10A1, 10A2, 10A3,10A4 ). Kh???i 11 c?? 3 l???p ( 11A1, 11A2, 11A3 ). Kh???i 12 c?? 2 l???p (12A1, 12A2). M???i l???p kh??ng qu?? 40 h???c sinh.'),(3,'Quy ?????nh h???c k??? v?? m??n h???c','C?? 2 h???c k??? ( 1, 2 ). C?? 9 m??n h???c ( To??n, L??, H??a, Sinh, S???, ?????a, V??n, ?????o ?????c, Th??? d???c).'),(4,'Quy ?????nh ??i???m','H???c sinh ?????t m??n n???u c?? ??i???m trung b??nh >= 5.'),(5,'Quy ?????nh thay ?????i','C?? th??? thay ?????i c??c qui ?????nh : Tu???i t???i thi???u, tu???i t???i ??a. Ss?? s??? t???i ??a c???a c??c l???p, s??? l?????ng v?? t??n c??c l???p. Thay ?????i s??? l?????ng v?? t??n c??c m??n h???c. ??i???m chu???n ?????t m??n.');
/*!40000 ALTER TABLE `quydinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thaydoiqd`
--

DROP TABLE IF EXISTS `thaydoiqd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thaydoiqd` (
  `id` int NOT NULL AUTO_INCREMENT,
  `maQD` int NOT NULL,
  `maAdmin` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `maQD` (`maQD`),
  KEY `maAdmin` (`maAdmin`),
  CONSTRAINT `thaydoiqd_ibfk_1` FOREIGN KEY (`maQD`) REFERENCES `quydinh` (`maQD`),
  CONSTRAINT `thaydoiqd_ibfk_2` FOREIGN KEY (`maAdmin`) REFERENCES `admin` (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thaydoiqd`
--

LOCK TABLES `thaydoiqd` WRITE;
/*!40000 ALTER TABLE `thaydoiqd` DISABLE KEYS */;
/*!40000 ALTER TABLE `thaydoiqd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chucvu` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `user_chk_1` CHECK ((`active` in (0,1)))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Nguy???n An','admin','e10adc3949ba59abbe56e057f20f883e',NULL,'admin',1),(2,'Ng???c ??nh','giaovien1','4297f44b13955235245b2497399d7a93',NULL,'giaovien',1),(3,'H???ng Anh','giaovu1','4297f44b13955235245b2497399d7a93',NULL,'giaovu',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-15 20:54:32
