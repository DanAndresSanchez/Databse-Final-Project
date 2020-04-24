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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerID` int NOT NULL AUTO_INCREMENT,
  `Fname` varchar(20) DEFAULT NULL,
  `Lname` varchar(30) DEFAULT NULL,
  `caddress` varchar(100) DEFAULT NULL,
  `ccity` varchar(20) DEFAULT NULL,
  `cstate` char(2) DEFAULT NULL,
  `czip` char(5) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Allene','Iturbide','1 Central Ave','Portage','WI','54481'),(2,'Marino','Lueckenbach','1 Century Park E','San Diego','CA','92110'),(3,'Twana','Felger','1 Commerce Way','Washington','OR','97224'),(4,'Salena','Karpel','1 Garfield Ave #7','Stark','OH','44707'),(5,'Arminda','Parvis','1 Huntwood Ave','Maricopa','AZ','85017'),(6,'Nicolette','Brossart','1 Midway Rd','Worcester','MA','15281'),(7,'Joanne','Mathieu','1 N Harlem Ave #9','Essex','NJ','70503'),(8,'Jacque','Rowling','1 N San Saba','Erie','PA','16501'),(9,'Hermin','Thyberg','1 Rancho Del Mar Shopping C','Providence','RI','29103'),(10,'Johann','Leinenbach','1 Washington St','Palm Beach','FL','33461'),(11,'Roxane','Campain','1048 Main St','Fairbanks North Star','AK','99708'),(12,'Clorinda','Heimann','105 Richmond Valley Rd','San Diego','CA','92025'),(13,'Regis','Kannady','10759 Main St','Maricopa','AZ','85260'),(14,'John','Abdallah','1088 Pinehurst St','Orange','NC','27514'),(15,'Arlette','Honeywell','11279 Loytan St','Duval','FL','32254'),(16,'Aliza','Baltimore','1128 Delaware St','Santa Clara','CA','95132'),(17,'Carissa','Batman','12270 Caton Center Dr','Lane','OR','97401'),(18,'Manny','Kohnert','134 Lewis Rd','Davidson','TN','37211'),(19,'Amber','Monarrez','14288 Foster Ave #4121','Montgomery','PA','19046'),(20,'Dean','Juhas','14302 Pennsylvania Ave','Montgomery','PA','19006'),(21,'Jolene','Ostolaza','1610 14th St Nw','Newport News City','VA','23608'),(22,'Rozella','Ostrosky','17 Morena Blvd','Ventura','CA','93012'),(23,'Cyndy','Goldammer','170 Wyoming Ave','Dakota','MN','55337'),(24,'Angello','Cetta','185 Blackstone Bldge','Honolulu','HI','96817'),(25,'Paris','Wide','187 Market St','Fulton','GA','30342'),(26,'Jean','Claucherty','19 Amboy Ave','Miami-Dade','FL','33142'),(27,'Merlin','Bayless','195 13n N','Santa Clara','CA','95054'),(28,'Diane','Devreese','1953 Telegraph Rd','Buchanan','MO','64504'),(29,'Fatima','Saylors','2 Lighthouse Ave','Hennepin','MN','55343'),(30,'Kaitlyn','Ogg','2 S Biscayne Blvd','Baltimore City','MD','21230'),(31,'Sunny','Kownacki','2 Se 3rd Ave','Dallas','TX','75149'),(32,'Ray','Kampa','2 Sw Nyberg Rd','Elkhart','IN','46514'),(33,'Lili','Paskin','20113 4th Ave E','Hudson','NJ','71032'),(34,'Rebecka','Gesick','2026 N Plankinton Ave #3','Travis','TX','78754'),(35,'Micael','Rhymes','20932 Hedley St','Contra Costa','CA','94520'),(36,'Colette','Kardas','21575 S Apple Creek Rd','Douglas','NE','68124'),(37,'Refugia','Jacobos','2184 Worth St','Alameda','CA','94545'),(38,'Tresa','Sweely','22 Bridle Ln','Saint Louis','MO','63088'),(39,'Jesusa','Shin','2239 Shawnee Mission Pky','Coffee','TN','37388'),(40,'Layla','Springe','229 N Forty Driv','New York','NY','10011'),(41,'Sheldon','Zane','2409 Alabama Rd','Riverside','CA','92501'),(42,'Kiley','Caldarera','25 E 75th St #69','Los Angeles','CA','90034'),(43,'Luis','Jurney','25 Se 176th Pl','Middlesex','MA','82138'),(44,'Rasheed','Sayaphon','251 Park Ave #979','Santa Clara','CA','95070'),(45,'Renea','Monterrubio','26 Montgomery St','Fulton','GA','30328'),(46,'Carmelo','Lindall','2664 Lewis Rd','Douglas','CO','80126'),(47,'Linn','Paa','1 S Pine St','Shelby','TN','38112'),(48,'Yuki','Whobrey','1 State Route 27','Wayne','MI','48180'),(49,'Trinidad','Mcrae','10276 Brooks St','San Francisco','CA','94105'),(50,'Daniel','Perruzza','11360 S Halsted St','Orange','CA','92705');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
