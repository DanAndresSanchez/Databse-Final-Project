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
-- Table structure for table `prod_category`
--

DROP TABLE IF EXISTS `prod_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prod_category` (
  `UPC` int NOT NULL,
  `category` varchar(15) NOT NULL,
  PRIMARY KEY (`UPC`,`category`),
  CONSTRAINT `prod_category_ibfk_1` FOREIGN KEY (`UPC`) REFERENCES `product` (`UPC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prod_category`
--

LOCK TABLES `prod_category` WRITE;
/*!40000 ALTER TABLE `prod_category` DISABLE KEYS */;
INSERT INTO `prod_category` VALUES (1,'baby\r'),(1,'book\r'),(1,'electronics\r'),(1,'gourmet\r'),(1,'specialty\r'),(2,'clothing\r'),(2,'educational\r'),(2,'specialty\r'),(2,'toys\r'),(3,'baby\r'),(3,'educational\r'),(3,'toys\r'),(4,'educational\r'),(4,'electronics\r'),(4,'specialty\r'),(5,'electronics\r'),(5,'food\r'),(5,'specialty\r'),(6,'clothing\r'),(6,'educational\r'),(6,'electronics\r'),(6,'food\r'),(6,'specialty\r'),(7,'educational\r'),(8,'baby\r'),(8,'electronics\r'),(8,'gourmet\r'),(9,'baby\r'),(9,'food\r'),(9,'gourmet\r'),(9,'toys\r'),(10,'clothing\r'),(10,'educational\r'),(10,'food\r'),(10,'gourmet\r'),(10,'specialty\r'),(11,'clothing\r'),(11,'educational\r'),(11,'electronics\r'),(11,'toys\r'),(12,'book\r'),(12,'clothing\r'),(12,'food\r'),(12,'specialty\r'),(13,'baby\r'),(13,'book\r'),(13,'electronics\r'),(13,'food\r'),(13,'gourmet\r'),(13,'specialty\r'),(14,'educational\r'),(14,'electronics\r'),(14,'specialty\r'),(15,'baby\r'),(15,'educational\r'),(15,'toys\r'),(16,'electronics\r'),(16,'food\r'),(16,'gourmet\r'),(16,'specialty\r'),(17,'educational\r'),(17,'electronics\r'),(17,'specialty\r'),(18,'electronics\r'),(18,'food\r'),(18,'gourmet\r'),(18,'specialty\r'),(19,'baby\r'),(19,'clothing\r'),(20,'baby\r'),(20,'books\r'),(20,'educational\r'),(21,'educational\r'),(21,'gourmet\r'),(21,'specialty\r'),(22,'electronics\r'),(22,'food\r'),(22,'gourmet\r'),(23,'electronics\r'),(23,'specialty\r'),(24,'clothing\r'),(24,'specialty\r'),(25,'baby\r'),(25,'educational\r'),(25,'electronics\r'),(25,'toys\r'),(26,'electronics\r'),(26,'toys\r'),(27,'specialty\r'),(28,'specialty\r'),(29,'specialty\r'),(30,'educational\r'),(30,'electronics\r'),(30,'specialty\r'),(31,'specialty\r'),(31,'toys\r'),(32,'electronics\r'),(32,'specialty\r'),(33,'electronics\r'),(34,'clothing\r'),(35,'baby\r'),(35,'toys\r'),(36,'baby\r'),(36,'toys\r'),(37,'electronics\r'),(38,'baby\r'),(38,'book\r'),(38,'educational\r'),(39,'book\r'),(39,'educational\r'),(40,'educational\r'),(40,'electronics\r'),(40,'speciality\r'),(41,'educational\r'),(41,'electronics\r'),(41,'speciality\r'),(42,'baby\r'),(42,'food\r'),(43,'educational\r'),(43,'electronics\r'),(43,'toys\r'),(44,'educational\r'),(44,'electronics\r'),(44,'speciality\r'),(45,'educational\r'),(45,'electronics\r'),(45,'food\r'),(45,'toys\r'),(46,'educational\r'),(46,'toys\r'),(47,'educational\r'),(47,'electronics\r'),(47,'toys\r'),(48,'educational\r'),(48,'speciality\r'),(48,'toys\r'),(49,'baby\r'),(49,'educational\r'),(49,'electronics\r'),(49,'toys\r'),(50,'baby\r'),(50,'book\r'),(50,'educational\r'),(50,'toys\r');
/*!40000 ALTER TABLE `prod_category` ENABLE KEYS */;
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
