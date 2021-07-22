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
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (13,'In ea aliquid eum te','','2006-02-11','jewady@mailinator.com','Chanda Mercado','0','+1 (418) 961-5685','Placeat labore dese',2,5,10),(10,'Mollit perferendis u','','1975-12-18','rykeqynyj@mailinator.com','Drake Daugherty','0','+1 (163) 726-3952','Et nihil ea ducimus',2,5,10),(11,'Expedita aspernatur ','','1992-08-22','zucehe@mailinator.com','Khoa','0','+1 (452) 131-1186','Minus sed culpa non',2,4,3),(12,'In odio iure proiden','','1976-03-04','kytimeje@mailinator.com','Trần Hữu Nam','0','+1 (121) 203-9888','Et cupidatat praesen',2,4,12),(20,'Et accusantium qui i','','2005-05-12','zulemyzo@mailinator.com','Phoebe Sosa','0','+1 (121) 565-2723','Modi sed dolore aliq',1,1,2),(17,'Ipsam pariatur Ea s','','2020-11-16','luzis@mailinator.com','Tin Trầnzxvc','1','+1 (574) 659-6977','Rerum nulla rerum vo',2,7,7),(18,'Voluptate deserunt a','','2014-05-26','xocolu@mailinator.com','Dominiquesdssf','0','+1 (739) 119-4603','Rerum nulla rerum vo',NULL,NULL,NULL),(19,'Ut tempor dolore rat','','1972-11-08','gytamo@mailinator.com','Kibo Waters','0','+1 (994) 782-3681','In aut consequuntur ',2,5,10),(21,'Amet sint eos in q','','1996-04-17','xudenydu@mailinator.com','Hedy Blankenship','0','+1 (581) 425-1287','Dolorem sit laborum',1,3,5),(22,'Aut quo ut vero temp','','1995-06-28','tiwizyp@mailinator.com','Hiếu','1','+1 (245) 176-1991','Rerum nulla rerum vo',2,4,3),(23,'Ducimus laborum Se','','','wysuwita@mailinator.com','Phúc','0','+17581923678','Rerum nulla rerum vo',2,4,3),(24,'Cillum architecto qu','','2017-03-23','fexaja@mailinator.com','Yoko Collins','1','+1 (217) 879-5594','Rerum nulla rerum vo',1,1,2),(25,'Consectetur ullam l','','2000-04-19','xuzic@mailinator.com','Huy Anh','0','+1 (202) 404-7334','Rerum nulla rerum vo',2,6,9),(26,'Blanditiis fugiat r','','1980-03-02','kifawis@mailinator.com','Tân','1','+1 (368) 771-5775','Rerum nulla rerum vo',2,6,9),(28,'Ea asperiores omnis ','','2020-03-07','gezoq@mailinator.com','Bùi Công Bình Minh','0','+1 (266) 817-8252','Rerum nulla rerum vo',2,4,3),(29,'Rem necessitatibus u','','1997-07-22','horit@mailinator.com','Anh Hiếu','1','+1 (696) 669-7821','Rerum nulla rerum vo',2,6,9);
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
INSERT INTO `hibernate_sequence` VALUES (16);
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
  PRIMARY KEY (`id`),
  KEY `FKcr314r8lnpby0r1wg3y8yi6in` (`employee_id`),
  KEY `FKoqe0avplj7inyd9govv2sp7f7` (`patient_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicalbills`
--

LOCK TABLES `medicalbills` WRITE;
/*!40000 ALTER TABLE `medicalbills` DISABLE KEYS */;
INSERT INTO `medicalbills` VALUES (1,'2020','Ho',12,1),(2,'16-07-2021 16:44','Ho',12,1),(3,'16-07-2021 16:44','Ho',12,1),(4,'16-07-2021 17:03','Ho',12,1),(5,'16-07-2021 17:06','Ho Cảm,Đau Bụng',23,1),(6,'16-07-2021 17:07','Ho Cảm,Đau Bụng,Khám Đông Y',11,1),(7,'16-07-2021 17:12','Ho Cảm,Đau Bụng',28,2),(8,'16-07-2021 17:12','Chấn Thương',25,2),(9,'17-07-2021 15:17','Ho Cảm,Đau Bụng',28,3),(10,'17-07-2021 15:26','Đau Bụng,Khám Đông Y,Khám Sức Khoẻ Toàn Diện',25,3),(11,'18-07-2021 17:09','Ho Cảm,Khám Đông Y',23,4),(12,'19-07-2021 08:54','Đau Bụng',28,15),(13,'19-07-2021 09:09','Ho Cảm',29,15),(14,'19-07-2021 09:31','',22,11),(15,'19-07-2021 09:32','Chấn Thương',28,5);
/*!40000 ALTER TABLE `medicalbills` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'191779345','1980-06-16','Francesca Cross','0931935255',1),(2,'191949498','1987-05-17','Jared Schmidt','0931921655',2),(3,'456789098','1987-12-17','Lyle Castaneda','4567890987',2),(4,'573232123','2020-02-28','Claire Shepherd','2132131233',2),(5,'552312312','2019-07-24','Willow Hays','3213213232',2),(6,'252341342','1995-03-02','Davis Sherman','21343132123',2),(7,'493212321','1983-03-12','Virginia Wilkerson','43523431233',2),(8,'384312324','1974-02-14','Amena Ellison','43124523552',2),(9,'873423412','1975-04-10','Sierra Espinoza','23254555442',2),(10,'383123312','1996-09-13','Uma Wilkinson','2354234123',1),(11,'813123232','2014-11-18','Kennedy Britt','34234123123',1),(12,'383123233','2009-05-27','Hunter Juarez','3123125663',2),(13,'132132182','2015-02-14','Cain Shaw','0991919782',1),(14,'231231232','1976-01-19','Lisandra Duran','3213223323',2),(15,'191862332','1995-11-27','Tin Mập','0905707543',2);
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

-- Dump completed on 2021-07-19 11:58:24
