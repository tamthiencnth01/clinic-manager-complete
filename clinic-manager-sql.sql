-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: clinic_manager_complete
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `departmentName` varchar(255) NOT NULL,
  `employeeTypeId` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpsbioj23bqwwbrc3jlb6wul1h` (`employeeTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Bảo Vệ',1),(2,'Hành Chính - Kế Toán',1),(3,'Kho',1),(4,'Khoa Nội',2),(5,'Khoa Xét Nghiệm',2),(6,'Khoa Ngoại',2),(7,'Dược',2);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments_departments`
--

DROP TABLE IF EXISTS `departments_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments_departments` (
  `Department_id` bigint NOT NULL,
  `departmentPosition_id` bigint NOT NULL,
  `positions_id` bigint NOT NULL,
  PRIMARY KEY (`Department_id`,`departmentPosition_id`),
  UNIQUE KEY `UK_kwlx8l1g7ql4p4f06kmk5rfp9` (`departmentPosition_id`),
  UNIQUE KEY `UK_kn8sh0o41ogu2kmdm1q9w5tdn` (`positions_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments_departments`
--

LOCK TABLES `departments_departments` WRITE;
/*!40000 ALTER TABLE `departments_departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments_positions`
--

DROP TABLE IF EXISTS `departments_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments_positions` (
  `Department_id` bigint NOT NULL,
  `positions_id` bigint NOT NULL,
  PRIMARY KEY (`Department_id`,`positions_id`),
  UNIQUE KEY `UK_lr9tlks8oqlr5tmudlicqkgp1` (`positions_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments_positions`
--

LOCK TABLES `departments_positions` WRITE;
/*!40000 ALTER TABLE `departments_positions` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments_positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `workResume` varchar(255) DEFAULT NULL,
  `employeeTypeId` bigint DEFAULT NULL,
  `departmentId` bigint DEFAULT NULL,
  `positionId` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjc1u1rm8xrg078ex7cwqpw2iq` (`departmentId`),
  KEY `FKk48peeor1mojronsq7t4441xp` (`employeeTypeId`),
  KEY `FK8begpv696yjbe76c083y5m0nt` (`positionId`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (30,'Qui laborum aut quid','','1990-01-18','posoqy@mailinator.com','Christiano Ronaldo','1','+1 (664) 536-3864',NULL,2,4,3),(31,'Dolor animi sed ess','','1975-01-26','loxytezuq@mailinator.com','Anh Khoa','1','+1 (517) 722-3807',NULL,2,4,3),(32,'Tempora voluptates i','','2000-12-15','nijofu@mailinator.com','Anh Phúc','0','+1 (287) 671-2008',NULL,2,6,9),(35,'Non et ipsum aliqui','','2006-02-02','byzic@mailinator.com','Anh Minh','1','+1 (263) 679-1187',NULL,2,4,3),(34,'Ut voluptatum cupida','','2010-12-09','velica@mailinator.com','Ngọc Trinh','1','+1 (159) 933-4443',NULL,1,2,8),(36,'Quo eaque deserunt c','','2018-10-29','lameciqi@mailinator.com','Anh Hiếu','1','+1 (493) 349-5783',NULL,2,4,3),(37,'Nihil numquam rerum ','','2011-04-21','nujoty@mailinator.com','Jermaine Hardy','0','+1 (826) 716-8013',NULL,1,1,2),(38,'Debitis quae minus d','','1976-01-29','vogacy@mailinator.com','Hamilton Craft','0','+1 (424) 541-5934',NULL,2,4,4),(39,'Perferendis ipsum q','','1991-09-12','nemabyp@mailinator.com','Yua Mikami','0','+1 (188) 919-1868',NULL,2,4,4),(40,'Aliquid esse odio ex','','2000-01-01','hocyfevuzy@mailinator.com','Eimi Fukada','0','+1 (737) 332-3459',NULL,1,2,15),(41,'Aspernatur ad iste u','','1997-03-08','zuvaguvivu@mailinator.com','Rola Takizawa','0','0901122334',NULL,2,6,14),(42,'Ipsam deleniti iure ','','2013-08-13','hubodazuky@mailinator.com','Quang Mập','1','+1 (631) 224-9187',NULL,1,1,2);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees_medicalbills`
--

DROP TABLE IF EXISTS `employees_medicalbills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees_medicalbills` (
  `Employee_id` bigint NOT NULL,
  `listEmployees_id` bigint NOT NULL,
  PRIMARY KEY (`Employee_id`,`listEmployees_id`),
  UNIQUE KEY `UK_k2lg62r04gu8cac9kd3fy0bgs` (`listEmployees_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees_medicalbills`
--

LOCK TABLES `employees_medicalbills` WRITE;
/*!40000 ALTER TABLE `employees_medicalbills` DISABLE KEYS */;
/*!40000 ALTER TABLE `employees_medicalbills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeetypes`
--

DROP TABLE IF EXISTS `employeetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeetypes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `typeName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeetypes`
--

LOCK TABLES `employeetypes` WRITE;
/*!40000 ALTER TABLE `employeetypes` DISABLE KEYS */;
INSERT INTO `employeetypes` VALUES (1,'Hành Chính'),(2,'Y Tế');
/*!40000 ALTER TABLE `employeetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeetypes_departments`
--

DROP TABLE IF EXISTS `employeetypes_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeetypes_departments` (
  `EmployeeType_id` bigint NOT NULL,
  `departments_id` bigint NOT NULL,
  PRIMARY KEY (`EmployeeType_id`,`departments_id`),
  UNIQUE KEY `UK_83obw2wpxgs0ofs59ihlj85o5` (`departments_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeetypes_departments`
--

LOCK TABLES `employeetypes_departments` WRITE;
/*!40000 ALTER TABLE `employeetypes_departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `employeetypes_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeetypes_employees`
--

DROP TABLE IF EXISTS `employeetypes_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeetypes_employees` (
  `EmployeeType_id` bigint NOT NULL,
  `employees_id` bigint NOT NULL,
  PRIMARY KEY (`EmployeeType_id`,`employees_id`),
  UNIQUE KEY `UK_jlw4pu7oecnenfaj9v9y3s2qy` (`employees_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeetypes_employees`
--

LOCK TABLES `employeetypes_employees` WRITE;
/*!40000 ALTER TABLE `employeetypes_employees` DISABLE KEYS */;
/*!40000 ALTER TABLE `employeetypes_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (73);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicalbills`
--

DROP TABLE IF EXISTS `medicalbills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicalbills` (
  `id` bigint NOT NULL,
  `dateOnExamination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symptom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL,
  `patient_id` bigint DEFAULT NULL,
  `medicine_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKcr314r8lnpby0r1wg3y8yi6in` (`employee_id`),
  KEY `FKj56is1p7rae7rhn6gcfitempa` (`medicine_id`),
  KEY `FKoqe0avplj7inyd9govv2sp7f7` (`patient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicalbills`
--

LOCK TABLES `medicalbills` WRITE;
/*!40000 ALTER TABLE `medicalbills` DISABLE KEYS */;
INSERT INTO `medicalbills` VALUES (66,'21-07-2021 22:45','Chấn Thương',35,9,1),(65,'21-07-2021 22:45','',35,12,1),(64,'21-07-2021 22:45','Đau Bụng',36,8,1),(63,'21-07-2021 22:45','Chấn Thương',32,6,1),(62,'21-07-2021 22:45','',36,5,1),(61,'21-07-2021 22:44','Ho Cảm',35,4,1),(60,'21-07-2021 22:44','',31,3,1),(59,'21-07-2021 22:44','Ho Cảm',30,2,1),(67,'21-07-2021 23:00','Ho Cảm',36,15,1),(68,'21-07-2021 23:14','Ho Cảm',31,13,1),(69,'21-07-2021 23:15','Ho Cảm',36,24,1),(70,'21-07-2021 23:15','Chấn Thương',30,7,2),(71,'21-07-2021 23:26','',31,2,1),(72,'22-07-2021 08:22','Ho Cảm',36,2,4);
/*!40000 ALTER TABLE `medicalbills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicinecategories`
--

DROP TABLE IF EXISTS `medicinecategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicinecategories` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicinecategories`
--

LOCK TABLES `medicinecategories` WRITE;
/*!40000 ALTER TABLE `medicinecategories` DISABLE KEYS */;
INSERT INTO `medicinecategories` VALUES (1,'Thuốc Chống Co Giật'),(2,'Thuốc Giải Độc'),(3,'Thuốc Chống Dị Ứng'),(4,'Thuốc Giảm Đau Hạ Sốt'),(5,'Thuốc Gây Tê');
/*!40000 ALTER TABLE `medicinecategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicinecategories_medicines`
--

DROP TABLE IF EXISTS `medicinecategories_medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicinecategories_medicines` (
  `MedicineCategory_id` bigint NOT NULL,
  `medicines_id` bigint NOT NULL,
  PRIMARY KEY (`MedicineCategory_id`,`medicines_id`),
  UNIQUE KEY `UK_hv578ppccb9uckh30nlvw6pye` (`medicines_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicinecategories_medicines`
--

LOCK TABLES `medicinecategories_medicines` WRITE;
/*!40000 ALTER TABLE `medicinecategories_medicines` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicinecategories_medicines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicines`
--

DROP TABLE IF EXISTS `medicines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicines` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `dailyDefaultAmount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `howToUse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `importPrice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ingredients` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salePrice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicineCategory_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkj7b20gufhb152m747e0qfwny` (`medicineCategory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines`
--

LOCK TABLES `medicines` WRITE;
/*!40000 ALTER TABLE `medicines` DISABLE KEYS */;
INSERT INTO `medicines` VALUES (1,'Ipsum dolorem velit','Laborum Neque illum','405','Libero dolore mollit','Motilium-M','Autem sit minus labo','670','Nostrud qui qui quod',2),(2,'Exercitation fuga U','Quam temporibus dele','4','Tempore sit rem dol','Montegol 5','Non rerum aut et sol','499','A magnam in dolor al',5),(3,'Reprehenderit est r','Labore aliqua Fugit','771','Veniam est ut quasi','Mixtard 30 Flexpeni','Enim eos ut asperior','590','Dicta earum dolorem ',5),(4,'10','1 ngày 3 lần','2000','Nicotine, Paradol','Paracetamol','uống sau khi ăn','10000','vỉ',4),(5,'10','uống khi đau bụng','1500','Lá Ổi','Berberin','ăn nhậu đau bụng mới uống','9500','viên',2),(6,'10','Uống Trước Khi Ăn','5000','Thuốc Dù','Amoxeceline','Ăn Trươc khi uống','15000','10',1);
/*!40000 ALTER TABLE `medicines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicines_medicalbills`
--

DROP TABLE IF EXISTS `medicines_medicalbills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicines_medicalbills` (
  `Medicine_id` bigint NOT NULL,
  `listMedicines_id` bigint NOT NULL,
  PRIMARY KEY (`Medicine_id`,`listMedicines_id`),
  UNIQUE KEY `UK_6xl4m747mrw0kkj1syf3ovmoe` (`listMedicines_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicines_medicalbills`
--

LOCK TABLES `medicines_medicalbills` WRITE;
/*!40000 ALTER TABLE `medicines_medicalbills` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicines_medicalbills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cmnd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4uep0g7kcu02sl8k9x2j5kesx` (`ward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (2,'191949498','1987-05-17','Jared Schmidt 1','0931921655',2),(3,'456789098','1987-12-17','Lyle Castaneda','4567890987',2),(4,'573232123','2020-02-28','Claire Shepherd','2132131233',2),(5,'552312312','2019-07-24','Willow Hays','3213213232',2),(6,'252341342','1995-03-02','Davis Sherman','21343132123',2),(7,'493212321','1983-03-12','Virginia Wilkerson','43523431233',2),(8,'384312324','1974-02-14','Amena Ellison','43124523552',2),(9,'873423412','1975-04-10','Sierra Espinoza','23254555442',2),(11,'813123232','2014-11-18','Kennedy Britt','34234123123',1),(12,'383123233','2009-05-27','Hunter Juarez','3123125663',2),(13,'132132182','2015-02-14','Cain Shaw','0991919782',1),(14,'231231232','1976-01-19','Lisandra Duran','3213223323',2),(15,'191862332','1995-11-27','Tin Mập','0905707543',2),(16,'231565487','1971-03-06','Chastity Hess','0931929245',1),(17,'121312321','1970-05-13','Coby Berger','0936165897',2),(18,'643232323','1996-01-12','Pandora Garrison','2312312322',2),(19,'503323232','1970-10-24','Irene Harrell','3231232323',2),(21,'523212321','1996-06-23','Thane Newton','3232132321',2),(22,'163112322','2007-06-11','Brielle Patterson','3123231232',2),(28,'732123223','1981-03-01','Tarik Herman','31231321223',1),(24,'123123212','1983-05-05','Roth Salazar','0912312321',2),(25,'832123223','1987-08-25','Jasmine Shaffer','31233212312',2),(26,'832123223','1987-08-25','Jasmine Shaffer','31233212312',2),(27,'631231323','2001-10-28','Kylee Henderson3','4323423214',1),(29,'191784226','1998-02-06','Hope Roach','0935621477',2);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients_medicalbills`
--

DROP TABLE IF EXISTS `patients_medicalbills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients_medicalbills` (
  `Patient_id` bigint NOT NULL,
  `listPatient_id` bigint NOT NULL,
  PRIMARY KEY (`Patient_id`,`listPatient_id`),
  UNIQUE KEY `UK_qqfrcpjyty06fvvd7qpyf4o0t` (`listPatient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients_medicalbills`
--

LOCK TABLES `patients_medicalbills` WRITE;
/*!40000 ALTER TABLE `patients_medicalbills` DISABLE KEYS */;
/*!40000 ALTER TABLE `patients_medicalbills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positions`
--

DROP TABLE IF EXISTS `positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `positions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `positionName` varchar(255) NOT NULL,
  `departmentId` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtcvwtvsymoc59yk2v33mgigdl` (`departmentId`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positions`
--

LOCK TABLES `positions` WRITE;
/*!40000 ALTER TABLE `positions` DISABLE KEYS */;
INSERT INTO `positions` VALUES (1,'Trưởng Phòng Hành ',2),(2,'Nhân Viên',1),(3,'BS Nội Tiêu Hóa',4),(4,'Y Tá ',4),(5,'Thủ Kho',3),(6,'Kế Toán',2),(7,'Dược Sĩ',7),(8,'Lễ Tân',2),(9,'BS Ngoại Tổng Quát',6),(10,'BS Xét Nghiệm',5),(11,'Y Tá',5),(12,'Trưởng Khoa',4),(13,'Trưởng Khoa',5),(14,'Y Tá',6),(15,'Nhân Viên',2),(16,'Nhân Viên',3);
/*!40000 ALTER TABLE `positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wards`
--

DROP TABLE IF EXISTS `wards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wards` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wards`
--

LOCK TABLES `wards` WRITE;
/*!40000 ALTER TABLE `wards` DISABLE KEYS */;
INSERT INTO `wards` VALUES (1,'Phường Gia Hội'),(2,'Phường Đông Ba');
/*!40000 ALTER TABLE `wards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wards_patients`
--

DROP TABLE IF EXISTS `wards_patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wards_patients` (
  `Ward_id` bigint NOT NULL,
  `list_id` bigint NOT NULL,
  UNIQUE KEY `UK_th4y3dj81a5o7x6w76mll2ut7` (`list_id`),
  KEY `FKcw2pc3fp9fw6brke74es5nj11` (`Ward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wards_patients`
--

LOCK TABLES `wards_patients` WRITE;
/*!40000 ALTER TABLE `wards_patients` DISABLE KEYS */;
/*!40000 ALTER TABLE `wards_patients` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-22 10:39:47
