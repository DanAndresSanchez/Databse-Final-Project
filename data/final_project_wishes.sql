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
-- Table structure for table `wishes`
--

DROP TABLE IF EXISTS `wishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishes` (
  `customerID` int NOT NULL,
  `UPC` int NOT NULL,
  PRIMARY KEY (`customerID`,`UPC`),
  KEY `UPC` (`UPC`),
  CONSTRAINT `wishes_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`),
  CONSTRAINT `wishes_ibfk_2` FOREIGN KEY (`UPC`) REFERENCES `product` (`UPC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishes`
--

LOCK TABLES `wishes` WRITE;
/*!40000 ALTER TABLE `wishes` DISABLE KEYS */;
INSERT INTO `wishes` VALUES (9,1),(10,1),(13,1),(15,1),(17,1),(24,1),(46,1),(50,1),(9,2),(15,2),(23,2),(30,2),(39,2),(9,3),(15,3),(17,3),(20,3),(23,3),(31,3),(35,3),(38,3),(46,3),(9,4),(15,4),(39,4),(40,4),(9,5),(13,5),(14,5),(19,5),(29,5),(37,5),(44,5),(48,5),(8,6),(12,6),(14,6),(18,6),(34,6),(36,6),(39,6),(41,6),(8,7),(14,7),(34,7),(37,7),(41,7),(46,7),(50,7),(8,8),(11,8),(13,8),(29,8),(34,8),(39,8),(44,8),(45,8),(8,9),(22,9),(31,9),(34,9),(46,9),(49,9),(8,10),(16,10),(24,10),(28,10),(30,10),(41,10),(50,10),(7,11),(11,11),(16,11),(17,11),(18,11),(23,11),(32,11),(33,11),(36,11),(40,11),(42,11),(43,11),(49,11),(7,12),(12,12),(16,12),(17,12),(21,12),(34,12),(39,12),(42,12),(43,12),(48,12),(49,12),(7,13),(16,13),(18,13),(19,13),(23,13),(29,13),(33,13),(36,13),(39,13),(44,13),(7,14),(16,14),(34,14),(40,14),(44,14),(45,14),(47,14),(48,14),(49,14),(7,15),(10,15),(15,15),(21,15),(36,15),(37,15),(46,15),(48,15),(6,16),(18,16),(29,16),(31,16),(33,16),(34,16),(36,16),(37,16),(38,16),(42,16),(47,16),(49,16),(6,17),(12,17),(17,17),(23,17),(34,17),(6,18),(14,18),(29,18),(38,18),(41,18),(6,19),(18,19),(26,19),(33,19),(43,19),(45,19),(50,19),(6,20),(28,20),(39,20),(42,20),(45,20),(5,21),(13,21),(18,21),(23,21),(25,21),(30,21),(32,21),(35,21),(36,21),(38,21),(46,21),(5,22),(11,22),(12,22),(22,22),(23,22),(27,22),(32,22),(49,22),(5,23),(20,23),(30,23),(45,23),(5,24),(19,24),(40,24),(42,24),(49,24),(5,25),(20,25),(23,25),(26,25),(30,25),(40,25),(4,26),(27,26),(34,26),(38,26),(42,26),(45,26),(4,27),(27,27),(35,27),(37,27),(39,27),(48,27),(4,28),(20,28),(26,28),(27,28),(30,28),(34,28),(44,28),(4,29),(27,29),(44,29),(4,30),(17,30),(23,30),(30,30),(31,30),(41,30),(43,30),(46,30),(49,30),(3,31),(18,31),(20,31),(23,31),(25,31),(35,31),(38,31),(49,31),(3,32),(12,32),(26,32),(35,32),(39,32),(41,32),(3,33),(11,33),(35,33),(3,34),(18,34),(33,34),(35,34),(36,34),(38,34),(41,34),(48,34),(3,35),(16,35),(24,35),(33,35),(35,35),(2,36),(15,36),(39,36),(42,36),(44,36),(2,37),(14,37),(38,37),(46,37),(2,38),(13,38),(34,38),(35,38),(45,38),(46,38),(2,39),(12,39),(40,39),(42,39),(2,40),(11,40),(23,40),(31,40),(34,40),(41,40),(44,40),(49,40),(1,41),(10,41),(38,41),(45,41),(47,41),(1,42),(9,42),(10,42),(14,42),(23,42),(37,42),(44,42),(1,43),(8,43),(13,43),(38,43),(41,43),(44,43),(47,43),(1,44),(7,44),(10,44),(11,44),(35,44),(40,44),(1,45),(6,45),(10,45),(36,45),(38,45),(39,45),(47,45),(5,46),(36,46),(39,46),(49,46),(4,47),(23,47),(29,47),(39,47),(43,47),(3,48),(19,48),(34,48),(37,48),(45,48),(2,49),(38,49),(48,49),(1,50),(18,50),(28,50),(29,50),(35,50),(44,50),(45,50);
/*!40000 ALTER TABLE `wishes` ENABLE KEYS */;
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