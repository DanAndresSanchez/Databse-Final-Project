-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: final_project
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `contains`
--

DROP TABLE IF EXISTS `contains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contains` (
  `orderID` int NOT NULL AUTO_INCREMENT,
  `UPC` int NOT NULL,
  `quantity` tinyint NOT NULL,
  PRIMARY KEY (`orderID`,`UPC`),
  KEY `UPC` (`UPC`),
  CONSTRAINT `contains_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`),
  CONSTRAINT `contains_ibfk_2` FOREIGN KEY (`UPC`) REFERENCES `product` (`UPC`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contains`
--

LOCK TABLES `contains` WRITE;
/*!40000 ALTER TABLE `contains` DISABLE KEYS */;
INSERT INTO `contains` VALUES (1,19,7),(1,21,6),(1,40,3),(2,4,7),(2,35,3),(2,44,3),(3,5,10),(3,19,8),(3,32,9),(4,9,10),(4,33,4),(4,34,5),(4,47,9),(5,20,5),(5,22,2),(5,38,5),(5,43,3),(6,3,1),(6,24,1),(6,25,9),(6,28,1),(7,38,8),(7,39,2),(7,44,7),(7,50,5),(8,19,6),(8,25,7),(8,26,4),(9,12,7),(9,17,5),(9,37,6),(10,11,10),(10,14,8),(10,33,5),(11,1,3),(11,22,8),(11,48,1),(11,49,6),(12,5,9),(12,18,8),(12,23,4),(12,31,10),(13,3,7),(13,37,5),(13,43,7),(14,8,2),(14,13,7),(14,30,10),(15,5,3),(15,15,2),(15,50,5),(16,7,4),(16,16,9),(16,42,4),(17,27,2),(17,41,7),(17,42,1),(17,44,9),(18,2,9),(18,26,10),(18,48,10),(19,12,10),(19,19,8),(19,33,2),(20,30,6),(20,41,9),(20,45,8),(21,16,1),(21,33,10),(21,34,3),(21,45,1),(22,7,8),(22,8,1),(22,49,6),(23,17,6),(23,18,6),(23,41,4),(24,1,8),(24,5,2),(24,35,6),(25,3,3),(25,9,8),(25,41,8),(26,10,5),(26,36,4),(26,39,10),(27,24,7),(27,28,9),(27,30,5),(28,10,3),(28,14,10),(28,48,4),(29,10,7),(29,12,8),(29,32,10),(29,47,4),(30,2,4),(30,9,4),(30,13,4),(30,39,3),(31,48,3),(32,1,2),(32,6,3),(33,4,4),(33,31,7),(33,38,5),(34,21,1),(35,17,7),(36,10,5),(36,40,3),(37,1,7),(37,7,4),(37,28,1),(38,9,5),(38,12,2),(38,13,6),(38,14,8),(38,21,1),(38,28,5),(38,37,6),(38,39,7),(38,40,6),(39,20,3),(39,34,1),(39,42,9),(39,44,4),(40,7,2),(40,8,8),(40,31,8),(40,47,9),(41,12,3),(41,44,4),(42,3,2),(42,15,6),(42,33,9),(42,35,1),(42,37,9),(42,44,5),(42,46,6),(42,49,10),(43,3,3),(43,16,6),(43,27,6),(44,23,3),(44,27,4),(44,35,2),(44,42,10),(44,44,4),(44,45,4),(45,6,8),(45,28,7),(45,33,10),(46,3,6),(46,12,10),(46,13,9),(46,23,8),(46,36,9),(47,14,8),(47,22,7),(47,23,9),(47,28,5),(47,36,7),(48,1,4),(48,5,2),(48,10,8),(48,18,8),(48,23,3),(48,29,6),(48,36,4),(49,10,1),(49,19,5),(49,28,6),(50,8,9),(50,11,2),(50,23,1),(50,26,9),(50,38,8),(51,2,8),(51,8,5),(51,10,7),(51,13,9),(51,23,2),(51,30,4),(51,31,5),(51,32,3),(51,37,1),(51,47,10),(51,50,8),(52,4,8),(52,14,2),(52,27,1),(52,38,2),(53,7,6),(53,25,2),(54,14,3),(54,16,9),(54,22,4),(54,24,7),(55,6,6),(55,10,8),(55,20,6),(55,31,5),(55,50,3),(56,13,8),(56,17,4),(56,37,10),(56,40,3),(56,47,10),(57,27,5),(57,28,3),(57,31,7),(57,37,10),(57,40,4),(57,41,7),(57,45,2),(58,9,2),(58,18,6),(58,19,9),(58,23,3),(58,25,1),(58,31,9),(58,34,5),(59,17,7),(59,20,9),(59,44,1),(60,5,4),(60,8,9),(60,9,1),(60,35,9),(60,37,10),(60,42,2),(60,46,3),(60,49,3),(61,1,7),(61,24,10),(61,38,6),(61,39,1),(61,46,2),(61,48,3),(62,12,1),(62,33,9),(62,34,8),(62,38,1),(62,41,2),(62,45,4),(62,49,1),(62,50,1),(63,7,8),(63,35,3),(63,38,2),(64,15,2),(64,16,1),(64,18,8),(64,28,4),(64,42,1),(65,5,1),(65,14,1),(65,17,4),(65,19,7),(65,25,1),(65,35,3),(65,46,10),(66,2,9),(66,7,1),(66,26,1),(66,35,6),(66,40,1),(66,41,1),(67,34,2),(67,45,9),(68,18,9),(68,42,5),(68,48,8),(69,1,5),(69,27,3),(69,33,1),(70,12,5),(70,15,6),(70,39,3),(70,47,4),(71,2,10),(71,8,2),(71,21,2),(71,23,1),(71,24,3),(71,25,2),(71,26,4),(71,37,1),(71,44,1),(72,3,6),(72,31,1),(72,37,7),(72,49,2),(73,6,1),(73,36,8),(73,40,3),(73,50,1),(74,8,2),(74,15,1),(74,17,6),(74,18,1),(74,19,2),(74,29,1),(74,36,2),(75,1,1),(75,13,1),(75,17,3),(75,39,8),(76,10,1),(76,23,4),(76,24,7),(77,21,10),(77,22,1),(77,23,1),(77,30,2),(78,2,3),(78,20,1),(78,31,1),(78,35,4),(78,38,6),(79,3,2),(79,9,5),(79,14,6),(79,36,3),(79,45,1),(80,8,2),(80,46,8),(80,48,1),(81,23,1),(82,11,1),(83,11,1),(83,12,1),(84,28,1),(84,29,3),(85,9,2),(86,4,1),(86,16,1),(86,27,2),(86,30,1),(87,4,1),(88,4,1),(89,24,1),(89,36,4),(90,16,1),(90,30,1);
/*!40000 ALTER TABLE `contains` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-16 16:59:58