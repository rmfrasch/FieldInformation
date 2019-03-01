-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: field_information
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `district_list`
--

DROP TABLE IF EXISTS `district_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `district_list` (
  `id_district_list` int(11) NOT NULL AUTO_INCREMENT,
  `district_location` varchar(45) DEFAULT NULL,
  `year` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_field_details` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_district_list`),
  KEY `id_field_details_idx` (`id_field_details`),
  CONSTRAINT `id_field_details` FOREIGN KEY (`id_field_details`) REFERENCES `field_details` (`id_field_details`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `district_list`
--

LOCK TABLES `district_list` WRITE;
/*!40000 ALTER TABLE `district_list` DISABLE KEYS */;
INSERT INTO `district_list` VALUES (18,'North','2019-03-01 06:00:00',30),(20,'South','2019-03-01 06:00:00',32);
/*!40000 ALTER TABLE `district_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `field_details`
--

DROP TABLE IF EXISTS `field_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `field_details` (
  `id_field_details` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(45) DEFAULT NULL,
  `year` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `district_list_id_district_list` int(11) NOT NULL,
  PRIMARY KEY (`id_field_details`,`district_list_id_district_list`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `field_details`
--

LOCK TABLES `field_details` WRITE;
/*!40000 ALTER TABLE `field_details` DISABLE KEYS */;
INSERT INTO `field_details` VALUES (2,'Bill',NULL,0),(3,'Bill',NULL,0),(4,'Sheldon',NULL,0),(5,'Sheldon',NULL,0),(6,'Sheldon',NULL,0),(7,'Sheldon',NULL,0),(8,'Sheldon',NULL,0),(9,'Sheldon',NULL,0),(10,'Sheldon',NULL,0),(11,'Sheldon','2019-02-28 06:00:00',0),(12,'Sheldon','2019-02-28 06:00:00',0),(13,'Sheldon','2019-02-28 06:00:00',0),(14,'Sheldon','2019-02-28 06:00:00',0),(15,'Sheldon','2019-02-28 06:00:00',0),(16,'Sheldon','2019-02-28 06:00:00',0),(17,'Sheldon','2019-02-28 06:00:00',0),(18,'Sheldon','2019-02-28 06:00:00',0),(19,'Sheldon','2019-02-28 06:00:00',0),(20,'Sheldon','2019-02-28 06:00:00',0),(21,'Sheldon','2019-02-28 06:00:00',0),(22,'Baltimore',NULL,0),(23,'Belarus',NULL,0),(24,'Birthday',NULL,0),(25,'Baltic',NULL,0),(26,'Rossie',NULL,0),(27,'Remsen',NULL,0),(28,'Missouri Valley',NULL,0),(29,'Glidden',NULL,0),(30,'Maynard',NULL,0),(31,'Missouri Valley',NULL,0),(32,'Lewis',NULL,0);
/*!40000 ALTER TABLE `field_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_of_fields`
--

DROP TABLE IF EXISTS `list_of_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `list_of_fields` (
  `field_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  KEY `field_id_idx` (`field_id`),
  KEY `LIST_ID_idx` (`list_id`),
  CONSTRAINT `LIST_ID` FOREIGN KEY (`list_id`) REFERENCES `district_list` (`id_district_list`),
  CONSTRAINT `field_id` FOREIGN KEY (`field_id`) REFERENCES `field_details` (`id_field_details`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_of_fields`
--

LOCK TABLES `list_of_fields` WRITE;
/*!40000 ALTER TABLE `list_of_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_of_fields` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-01 13:48:47
