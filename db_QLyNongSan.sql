-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: quan_ly_nong_san
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `tb_nhacungcap`
--

DROP TABLE IF EXISTS `tb_nhacungcap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_nhacungcap` (
  `mancc` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `tenncc` varchar(45) NOT NULL,
  `sdt` int NOT NULL,
  `sanphamcc` varchar(45) NOT NULL,
  `chatluong` int NOT NULL,
  PRIMARY KEY (`mancc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_nhacungcap`
--

LOCK TABLES `tb_nhacungcap` WRITE;
/*!40000 ALTER TABLE `tb_nhacungcap` DISABLE KEYS */;
INSERT INTO `tb_nhacungcap` VALUES ('NCC1','Công ty 1',123,'Lúa mì',1),('NCC2','Công ty 2',123,'Bột mì',0),('NCC3 ','Công ty 3',123,'Hạt điều',0);
/*!40000 ALTER TABLE `tb_nhacungcap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_doanhthu`
--

DROP TABLE IF EXISTS `tbl_doanhthu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_doanhthu` (
  `matt` varchar(15) NOT NULL,
  `masp` varchar(15) NOT NULL,
  `tensp` varchar(45) NOT NULL,
  `soluong` int NOT NULL,
  `trangthai` varchar(45) NOT NULL,
  `tongtien` varchar(45) NOT NULL,
  PRIMARY KEY (`matt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_doanhthu`
--

LOCK TABLES `tbl_doanhthu` WRITE;
/*!40000 ALTER TABLE `tbl_doanhthu` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_doanhthu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_donhang`
--

DROP TABLE IF EXISTS `tbl_donhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_donhang` (
  `madh` varchar(15) NOT NULL,
  `masp` varchar(45) NOT NULL,
  `soLuong` int NOT NULL,
  `tenKh` varchar(45) NOT NULL,
  `adress` varchar(45) NOT NULL,
  `sdt` int NOT NULL,
  `tongTien` float NOT NULL,
  `trangThai` varchar(45) NOT NULL,
  PRIMARY KEY (`madh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_donhang`
--

LOCK TABLES `tbl_donhang` WRITE;
/*!40000 ALTER TABLE `tbl_donhang` DISABLE KEYS */;
INSERT INTO `tbl_donhang` VALUES ('DH01','SP01',10,'Dương','Quảng Ninh',123,40000,'Đã thanh toán'),('DH02','SP04',2,'test','tesi',123,22,'Lấy hàng'),('DH03','SP04',10,'Hiếu','Nghệ an',123,70000,'Đã thanh toán'),('DH04','SP01',3,'Dũng','Sơn La',123,12000,'Đã thanh toán'),('DH05','SP05',4,'test','test',2,160,'Lấy hàng'),('DH06','SP02',5,'Dương','Quảng Ninh city',364703365,10000,'Đã thanh toán');
/*!40000 ALTER TABLE `tbl_donhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nhanvien`
--

DROP TABLE IF EXISTS `tbl_nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_nhanvien` (
  `manv` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `tennv` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `sdt` varchar(45) NOT NULL,
  `chucvu` varchar(15) NOT NULL,
  PRIMARY KEY (`manv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nhanvien`
--

LOCK TABLES `tbl_nhanvien` WRITE;
/*!40000 ALTER TABLE `tbl_nhanvien` DISABLE KEYS */;
INSERT INTO `tbl_nhanvien` VALUES ('NV1','Dương','admin','123','Nam','123','Quản lý'),('NV2','Kiên','kien','123','Nam','123','Nhân viên'),('NV3','Hoàng','hoang','123','Nam','123','Nhân viên'),('NV4','Hiếu','hieu','123','Nam','123','Nhân viên'),('NV5','Dũng','dung123','123','Nam','123','Nhân viên');
/*!40000 ALTER TABLE `tbl_nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sanpham`
--

DROP TABLE IF EXISTS `tbl_sanpham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sanpham` (
  `masp` varchar(15) NOT NULL,
  `tensp` varchar(45) NOT NULL,
  `soLuong` int NOT NULL,
  `giaNhap` float NOT NULL,
  `giaBan` float NOT NULL,
  `moTa` varchar(45) NOT NULL,
  PRIMARY KEY (`masp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sanpham`
--

LOCK TABLES `tbl_sanpham` WRITE;
/*!40000 ALTER TABLE `tbl_sanpham` DISABLE KEYS */;
INSERT INTO `tbl_sanpham` VALUES ('SP01','Lúa mạch',22,2000,4000,'k co'),('SP02','Bột mì',1000,8,2000,'đẹpg'),('SP03','Gạo',2200,12,20,'k co'),('SP04','Lúa mì',22,20,40,'ngon');
/*!40000 ALTER TABLE `tbl_sanpham` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_taikhoan`
--

DROP TABLE IF EXISTS `tbl_taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_taikhoan` (
  `username` varchar(45) NOT NULL,
  `pasword` varchar(45) NOT NULL,
  `role` int NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_taikhoan`
--

LOCK TABLES `tbl_taikhoan` WRITE;
/*!40000 ALTER TABLE `tbl_taikhoan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_thanhtoan`
--

DROP TABLE IF EXISTS `tbl_thanhtoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_thanhtoan` (
  `matt` varchar(45) NOT NULL,
  `masp` varchar(15) NOT NULL,
  `soluong` int NOT NULL,
  `tenkhachhang` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `sdtkhachhang` int NOT NULL,
  `tongtien` float NOT NULL,
  PRIMARY KEY (`matt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_thanhtoan`
--

LOCK TABLES `tbl_thanhtoan` WRITE;
/*!40000 ALTER TABLE `tbl_thanhtoan` DISABLE KEYS */;
INSERT INTO `tbl_thanhtoan` VALUES ('TT01','SP01',10,'Dương','Quảng Ninh',123,40),('TT02','SP02',8,'Kiên','Hà Nội',123,16),('TT03','SP03',10,'Hiếu','Nghệ An',123,50),('TT04','SP04',5,'Dũng','Sơn La',123,35);
/*!40000 ALTER TABLE `tbl_thanhtoan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-08 21:23:38
