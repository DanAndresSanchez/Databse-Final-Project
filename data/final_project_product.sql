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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `UPC` int NOT NULL AUTO_INCREMENT,
  `Pname` varchar(40) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `Sname` varchar(30) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `reorderlevel` int DEFAULT NULL,
  PRIMARY KEY (`UPC`),
  KEY `Sname` (`Sname`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Sname`) REFERENCES `supplier` (`Sname`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Xtreme Graphics 5000',399.99,'Melmarc Products Inc.',50,10),(2,'Sure Feet Running Shoes',59.99,'NK Apparel',6,30),(3,'Happy Smiles Face Paints',19.99,'Bel-Art Products',3,75),(4,'Overpriced Calculator: College Edition',99.99,'ViTech Scientific',20,5),(5,'Super-Sensor Door Opener',120.00,'Motion Enhanced Technology',4,2),(6,'No More Stink Socks',9.99,'NK Apparel',134,60),(7,'Far Out! Telescope',1099.99,'Seatec Astronomy',3,1),(8,'Bass Booster Subwoofers',124.99,'Melmarc Products Inc.',3,10),(9,'Star Gazer Junior',39.99,'Seatec Astronomy',55,35),(10,'Sunshine Yellow',44.99,'Bel-Art Products',10,15),(11,'Job Hunter Discount Suit',74.99,'NK Apparel',44,30),(12,'Head Secure Hard Hat',59.99,'Grainger Industrial Supply',40,20),(13,'The Overclocker: Extreme CPU',349.99,'Melmarc Products Inc.',32,30),(14,'DG Camera',120.00,'ProtoVision',150,20),(15,'Puzzle Blocks for Kids',19.99,'HB Products LLC',0,30),(16,'Chef Gourmet Pasta',8.00,'PolyOne',50,10),(17,'Portable Motion Detector',50.00,'Motion Enhanced Technology',5,10),(18,'Smart Cooker',65.00,'Pegatron Products',150,20),(19,'Summer Dress',19.00,'Bel-Art Products',250,35),(20,'Book of Colors and Numbers',9.99,'C. C. Filson',70,10),(21,'Mini Acoustic Guitar',35.00,'Akustica',50,10),(22,'Travel Coffee Maker',39.00,'Cambridge Engineered Solutions',20,50),(23,'Car Stereo System',60.00,'Kaman Industrial Technologies',50,10),(24,'Winter Jacket',55.00,'NK Apparel',100,20),(25,'Talking Doll',25.00,'Melmarc Products Inc.',12,15),(26,'Telescope',300.00,'Seatec Astronomy',50,10),(27,'Printer Paper',4.00,'HB Products LLC',0,50),(28,'AC Unit',2000.00,'Large System Distributors',10,4),(29,'Ventilation Filter',22.00,'Kaman Industrial Technologies',0,20),(30,'Surface Pro 4',600.00,'UCA Group Inc.',30,10),(31,'Sunglasses',50.00,'ProtoVision',75,15),(32,'Thermal Sensor',350.00,'Hadden Industries',15,3),(33,'Digital Clock',15.00,'Motion Enhanced Technology',30,150),(34,'Sweater',34.99,'NK Apparel',100,25),(35,'Transformer Action Figure',5.00,'Pegatron Products',90,250),(36,'Star Wars Sticker',0.50,'Akustica',50,2000),(37,'Smartwatch',250.00,'ViTech Scientific',50,10),(38,'Winnie the Pooh Book',7.99,'C. C. Filson',80,20),(39,'Calculus Book',50.00,'HB Products LLC',250,50),(40,'Basic Telescope',100.00,'Seatec Astronomy',10,25),(41,'High End Telescope',100.00,'Seatec Astronomy',100,20),(42,'Gerber Baby Food',5.00,'HB Products LLC',0,50),(43,'Leap Frog Tablet',100.00,'Seatec Astronomy',100,20),(44,'Robot Chef',4999.99,'ViTech Scientific',75,10),(45,'Kids Baking Set',50.00,'Melmarc Products Inc.',20,20),(46,'Math Card Game',10.00,'HB Products LLC',13,20),(47,'Learn To Drive Game',50.00,'Melmarc Products Inc.',200,25),(48,'X-Ray Goggles',100.00,'ProtoVision',14,15),(49,'Babys First Game Console',150.00,'Motion Enhanced Technology',100,20),(50,'Baby Learns German',50.00,'Aleris International Inc.',175,20);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-16 16:59:57
