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
  CONSTRAINT `contains_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `contains_ibfk_2` FOREIGN KEY (`UPC`) REFERENCES `product` (`UPC`) ON DELETE CASCADE ON UPDATE CASCADE
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Allene','Iturbide','1 Central Ave','Portage','WI','54481'),(2,'Marino','Lueckenbach','1 Century Park E','San Diego','CA','92110'),(3,'Twana','Felger','1 Commerce Way','Washington','OR','97224'),(4,'Salena','Karpel','1 Garfield Ave #7','Stark','OH','44707'),(5,'Arminda','Parvis','1 Huntwood Ave','Maricopa','AZ','85017'),(6,'Nicolette','Brossart','1 Midway Rd','Worcester','MA','15281'),(7,'Joanne','Mathieu','1 N Harlem Ave #9','Essex','NJ','70503'),(8,'Jacque','Rowling','1 N San Saba','Erie','PA','16501'),(9,'Hermin','Thyberg','1 Rancho Del Mar Shopping C','Providence','RI','29103'),(10,'Johann','Leinenbach','1 Washington St','Palm Beach','FL','33461'),(11,'Roxane','Campain','1048 Main St','Fairbanks North Star','AK','99708'),(12,'Clorinda','Heimann','105 Richmond Valley Rd','San Diego','CA','92025'),(13,'Regis','Kannady','10759 Main St','Maricopa','AZ','85260'),(14,'John','Abdallah','1088 Pinehurst St','Orange','NC','27514'),(15,'Arlette','Honeywell','11279 Loytan St','Duval','FL','32254'),(16,'Aliza','Baltimore','1128 Delaware St','Santa Clara','CA','95132'),(17,'Carissa','Batman','12270 Caton Center Dr','Lane','OR','97401'),(18,'Manny','Kohnert','134 Lewis Rd','Davidson','TN','37211'),(19,'Amber','Monarrez','14288 Foster Ave #4121','Montgomery','PA','19046'),(20,'Dean','Juhas','14302 Pennsylvania Ave','Montgomery','PA','19006'),(21,'Jolene','Ostolaza','1610 14th St Nw','Newport News City','VA','23608'),(22,'Rozella','Ostrosky','17 Morena Blvd','Ventura','CA','93012'),(23,'Cyndy','Goldammer','170 Wyoming Ave','Dakota','MN','55337'),(24,'Angello','Cetta','185 Blackstone Bldge','Honolulu','HI','96817'),(25,'Paris','Wide','187 Market St','Fulton','GA','30342'),(26,'Jean','Claucherty','19 Amboy Ave','Miami-Dade','FL','33142'),(27,'Merlin','Bayless','195 13n N','Santa Clara','CA','95054'),(28,'Diane','Devreese','1953 Telegraph Rd','Buchanan','MO','64504'),(29,'Fatima','Saylors','2 Lighthouse Ave','Hennepin','MN','55343'),(30,'Kaitlyn','Ogg','2 S Biscayne Blvd','Baltimore City','MD','21230'),(31,'Sunny','Kownacki','2 Se 3rd Ave','Dallas','TX','75149'),(32,'Ray','Kampa','2 Sw Nyberg Rd','Elkhart','IN','46514'),(33,'Lili','Paskin','20113 4th Ave E','Hudson','NJ','71032'),(34,'Rebecka','Gesick','2026 N Plankinton Ave #3','Travis','TX','78754'),(35,'Micael','Rhymes','20932 Hedley St','Contra Costa','CA','94520'),(36,'Colette','Kardas','21575 S Apple Creek Rd','Douglas','NE','68124'),(37,'Refugia','Jacobos','2184 Worth St','Alameda','CA','94545'),(38,'Tresa','Sweely','22 Bridle Ln','Saint Louis','MO','63088'),(39,'Jesusa','Shin','2239 Shawnee Mission Pky','Coffee','TN','37388'),(40,'Layla','Springe','229 N Forty Driv','New York','NY','10011'),(41,'Sheldon','Zane','2409 Alabama Rd','Riverside','CA','92501'),(42,'Kiley','Caldarera','25 E 75th St #69','Los Angeles','CA','90034'),(43,'Luis','Jurney','25 Se 176th Pl','Middlesex','MA','82138'),(44,'Rasheed','Sayaphon','251 Park Ave #979','Santa Clara','CA','95070'),(45,'Renea','Monterrubio','26 Montgomery St','Fulton','GA','30328'),(46,'Carmelo','Lindall','2664 Lewis Rd','Douglas','CO','80126'),(47,'Linn','Paa','1 S Pine St','Shelby','TN','38112'),(48,'Yuki','Whobrey','1 State Route 27','Wayne','MI','48180'),(49,'Trinidad','Mcrae','10276 Brooks St','San Francisco','CA','94105'),(50,'Daniel','Perruzza','11360 S Halsted St','Orange','CA','92705'),(57,'Melissa','Beach','685 Ocean Ave','Cape Map','NJ','08204'),(58,'Diana','Vintage','222 Desk Road','Supourus','WI','16242'),(59,'Ginger','Seaseme','69 Plantation Road','HoldOn','KS','76842'),(60,'Dan','Sanchez','59 Road Ave','Columbia','NJ','93827');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderID` int NOT NULL AUTO_INCREMENT,
  `orderdate` date DEFAULT NULL,
  `shipdate` date DEFAULT NULL,
  `payment_type` varchar(20) DEFAULT NULL,
  `CCN` char(16) DEFAULT NULL,
  `customerID` int DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  KEY `orders_ibfk_1` (`customerID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2018-03-13','2018-03-14','DISCOVER','9164372000812465',40),(2,'2018-05-28','2018-05-30','DISCOVER','6012768542759725',47),(3,'2017-04-30','2017-05-01','VISA','8347756029370204',30),(4,'2017-04-29','0000-00-00','VISA','1114002556361579',3),(5,'2017-11-06','2017-11-06','DISCOVER','4210064978513444',50),(6,'2018-12-21','2018-12-23','MC','1118499655232199',22),(7,'2017-06-14','2017-06-16','VISA','4265118281748638',1),(8,'2017-03-18','0000-00-00','VISA','4265869811318674',28),(9,'2018-04-01','2018-04-01','MC','3452375437457477',39),(10,'2017-03-08','2017-03-10','DISCOVER','6012774573811574',5),(11,'2018-09-07','2018-09-07','MC','5468144688987718',1),(12,'2018-09-11','2018-09-13','MC','5468546846118779',17),(13,'2018-09-13','2018-09-15','DISCOVER','6012153213234465',13),(14,'2018-09-30','2018-10-12','VISA','4265289331424117',19),(15,'2017-01-15','0000-00-00','DISCOVER','6012426788599159',41),(16,'2017-01-20','2017-01-25','DISCOVER','6012768542759725',47),(17,'2017-01-25','2017-01-27','DISCOVER','6012157634756744',42),(18,'2017-01-30','2017-01-31','VISA','4265168598671186',38),(19,'2017-01-31','0000-00-00','MC','5468745248681198',34),(20,'2017-02-27','2017-03-05','MC','5468980177136168',35),(21,'2017-03-09','2017-03-15','VISA','4265869811318674',28),(22,'2017-04-17','2017-04-15','DISCOVER','6012774573811574',5),(23,'2017-06-13','2017-06-15','VISA','4265835707253080',3),(24,'2017-10-10','0000-00-00','DISCOVER','6012084174461331',4),(25,'2017-10-13','2017-10-15','MC','5468854174987618',2),(26,'2017-10-25','2017-11-01','VISA','4265118281748638',1),(27,'2017-12-10','2017-12-13','DISCOVER','6012184786257849',11),(28,'2018-06-07','2018-06-09','MC','5468798412456752',10),(29,'2018-06-09','2018-06-11','VISA','4265174686390108',9),(30,'2018-06-25','0000-00-00','VISA','4265741118566723',8),(31,'2019-12-02','2019-12-04','VISA','1932134219123456',3),(32,'2019-01-03','2019-01-04','DISCOVER','1934527846572318',1),(33,'2019-04-02','2019-04-04','MC','9847568320987564',3),(34,'2019-03-01','2019-03-02','VISA','3214356453678564',2),(35,'2019-03-25','2019-03-27','VISA','3564532567489706',3),(36,'2019-02-18','0000-00-00','DISCOVER','5743287564732811',13),(37,'2019-01-04','0000-00-00','MC','5432344566789878',1),(38,'2019-02-03','2019-02-04','VISA','3245654578765435',20),(39,'2019-02-09','2019-02-10','MC','4345675678909876',19),(40,'2019-03-04','2019-03-06','DISCOVER','3245674389876743',17),(41,'2019-01-23','2019-01-25','MC','3456554456780987',13),(42,'2019-02-05','2019-02-07','MC','4554367898374568',14),(43,'2019-04-13','0000-00-00','VISA','3234567876758976',15),(44,'2019-04-13','0000-00-00','DISCOVER','8789765467658796',10),(45,'2019-03-29','2019-03-31','MC','4435678675456798',20),(46,'2019-02-03','2019-02-05','VISA','4432345667654567',11),(47,'2019-03-14','2019-03-16','MC','3245654567345643',1),(48,'2019-01-18','2019-01-20','DISCOVER','4453678909876545',2),(49,'2019-01-01','2019-01-03','VISA','9876565476587643',30),(50,'2019-02-17','2019-02-19','MC','0987656545676789',40),(51,'2019-02-20','2019-02-21','VISA','9876545434323456',9),(52,'2019-04-14','0000-00-00','DISCOVER','7678906678432964',17),(53,'2019-04-15','0000-00-00','VISA','4456758976543298',19),(54,'2019-02-01','2019-02-03','MC','3323459807654356',23),(55,'2019-04-16','2019-04-18','VISA','8765654345467865',40),(56,'2019-03-19','2019-03-21','MC','8765654344562960',48),(57,'2019-04-17','2019-04-19','MC','7656745632231987',32),(58,'2019-02-15','2019-02-17','VISA','9876566784320984',14),(59,'2019-03-01','0000-00-00','DISCOVER','4432321234546785',23),(60,'2019-03-16','2019-03-18','VISA','4432356789876789',11),(61,'2019-04-01','0000-00-00','VISA','9339548432521315',1),(62,'2019-04-05','2019-04-08','DISCOVER','3125415914497660',5),(63,'2019-04-02','2019-04-05','VISA','9704188718576016',20),(64,'2019-03-13','2019-03-20','VISA','1294085164233338',50),(65,'2019-03-16','0000-00-00','MC','9182934429948195',49),(66,'2019-03-19','2019-03-20','MC','9820396625678803',16),(67,'2019-04-01','2019-04-02','MC','7423648540714970',15),(68,'2019-04-01','2019-04-02','MC','8070263255919104',25),(69,'2019-04-01','2019-04-02','DISCOVER','3277872856792989',29),(70,'2019-04-01','2019-04-02','DISCOVER','0432928988501514',35),(71,'2019-03-12','2019-03-15','DISCOVER','0842054108206533',36),(72,'2019-04-13','2019-04-16','DISCOVER','1791134670737410',10),(73,'2019-04-16','2019-04-19','MC','4315419472554425',4),(74,'2019-04-21','2019-04-25','MC','6961214689171867',3),(75,'2019-04-26','2019-04-30','MC','7889543366941024',6),(76,'2019-04-27','0000-00-00','MC','9176952863365214',12),(77,'2019-04-19','2019-04-22','MC','6738183497704525',14),(78,'2019-04-15','2019-04-17','VISA','9566115767216292',17),(79,'2019-03-12','2019-03-16','VISA','1344296106210289',13),(80,'2019-03-10','2019-03-12','VISA','4787510162307683',24),(81,'2019-03-19','2019-03-21','VISA','3971406033891543',27),(82,'2019-03-26','2019-03-29','VISA','7810751084510728',37),(83,'2019-02-14','0000-00-00','VISA','3677996829882834',47),(84,'2019-02-10','2019-02-11','DISCOVER','1316415311728383',49),(85,'2019-02-18','2019-02-19','DISCOVER','1695220840645544',48),(86,'2019-02-13','2019-02-14','DISCOVER','9038679024540992',26),(87,'2019-02-02','2019-02-03','DISCOVER','5719475018947608',23),(88,'2019-02-01','2019-02-05','DISCOVER','3245369873472128',22),(89,'2019-02-07','0000-00-00','DISCOVER','9334469574159454',9),(90,'2019-02-08','2019-02-10','DISCOVER','3874858422319789',29);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

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
  CONSTRAINT `prod_category_ibfk_1` FOREIGN KEY (`UPC`) REFERENCES `product` (`UPC`) ON DELETE CASCADE ON UPDATE CASCADE
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
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Sname`) REFERENCES `supplier` (`Sname`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Xtreme Graphics 5000',399.99,'Melmarc Products Inc.',50,10),(2,'Sure Feet Running Shoes',59.99,'NK Apparel',6,30),(3,'Happy Smiles Face Paints',19.99,'Bel-Art Products',3,75),(4,'Overpriced Calculator: College Edition',99.99,'ViTech Scientific',20,5),(5,'Super-Sensor Door Opener',120.00,'Motion Enhanced Technology',4,2),(6,'No More Stink Socks',9.99,'NK Apparel',134,60),(7,'Far Out! Telescope',1099.99,'Seatec Astronomy',3,1),(8,'Bass Booster Subwoofers',124.99,'Melmarc Products Inc.',3,10),(9,'Star Gazer Junior',39.99,'Seatec Astronomy',55,35),(10,'Sunshine Yellow',44.99,'Bel-Art Products',10,15),(11,'Job Hunter Discount Suit',74.99,'NK Apparel',44,30),(12,'Head Secure Hard Hat',59.99,'Grainger Industrial Supply',40,20),(13,'The Overclocker: Extreme CPU',349.99,'Melmarc Products Inc.',32,30),(14,'DG Camera',120.00,'ProtoVision',150,20),(15,'Puzzle Blocks for Kids',19.99,'HB Products LLC',0,30),(16,'Chef Gourmet Pasta',8.00,'PolyOne',50,10),(17,'Portable Motion Detector',50.00,'Motion Enhanced Technology',5,10),(18,'Smart Cooker',65.00,'Pegatron Products',150,20),(19,'Summer Dress',19.00,'Bel-Art Products',250,35),(20,'Book of Colors and Numbers',9.99,'C. C. Filson',70,10),(21,'Mini Acoustic Guitar',35.00,'Akustica',50,10),(22,'Travel Coffee Maker',39.00,'Cambridge Engineered Solutions',20,50),(23,'Car Stereo System',60.00,'Kaman Industrial Technologies',50,10),(24,'Winter Jacket',55.00,'NK Apparel',100,20),(25,'Talking Doll',25.00,'Melmarc Products Inc.',12,15),(26,'Telescope',300.00,'Seatec Astronomy',50,10),(27,'Printer Paper',4.00,'HB Products LLC',0,50),(28,'AC Unit',2000.00,'Large System Distributors',10,4),(29,'Ventilation Filter',22.00,'Kaman Industrial Technologies',0,20),(30,'Surface Pro 4',600.00,'UCA Group Inc.',30,10),(31,'Sunglasses',50.00,'ProtoVision',75,15),(32,'Thermal Sensor',350.00,'Hadden Industries',15,3),(33,'Digital Clock',15.00,'Motion Enhanced Technology',30,150),(34,'Sweater',34.99,'NK Apparel',100,25),(35,'Transformer Action Figure',5.00,'Pegatron Products',90,250),(36,'Star Wars Sticker',0.50,'Akustica',50,2000),(37,'Smartwatch',250.00,'ViTech Scientific',50,10),(38,'Winnie the Pooh Book',7.99,'C. C. Filson',80,20),(39,'Calculus Book',50.00,'HB Products LLC',250,50),(40,'Basic Telescope',100.00,'Seatec Astronomy',10,25),(41,'High End Telescope',100.00,'Seatec Astronomy',100,20),(42,'Gerber Baby Food',5.00,'HB Products LLC',0,50),(43,'Leap Frog Tablet',100.00,'Seatec Astronomy',100,20),(44,'Robot Chef',4999.99,'ViTech Scientific',75,10),(45,'Kids Baking Set',50.00,'Melmarc Products Inc.',20,20),(46,'Math Card Game',10.00,'HB Products LLC',13,20),(47,'Learn To Drive Game',50.00,'Melmarc Products Inc.',200,25),(48,'X-Ray Goggles',100.00,'ProtoVision',14,15),(49,'Babys First Game Console',150.00,'Motion Enhanced Technology',100,20),(50,'Baby Learns German',50.00,'Aleris International Inc.',175,20),(51,'Really Big Cups',12.00,'Big Cup Inc',100,100);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_rated`
--

DROP TABLE IF EXISTS `products_rated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_rated` (
  `UPC` int NOT NULL,
  `Pname` varchar(40) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `rating` decimal(7,4) DEFAULT NULL,
  `amount` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_rated`
--

LOCK TABLES `products_rated` WRITE;
/*!40000 ALTER TABLE `products_rated` DISABLE KEYS */;
INSERT INTO `products_rated` VALUES (28,'AC Unit',2000.00,3.0000,12),(50,'Baby Learns German',50.00,4.0000,7),(49,'Babys First Game Console',150.00,4.0000,7),(40,'Basic Telescope',100.00,5.0000,4),(8,'Bass Booster Subwoofers',124.99,3.3333,3),(20,'Book of Colors and Numbers',9.99,3.7500,4),(39,'Calculus Book',50.00,3.1667,6),(23,'Car Stereo System',60.00,3.4000,5),(16,'Chef Gourmet Pasta',8.00,1.0000,3),(14,'DG Camera',120.00,4.2500,4),(33,'Digital Clock',15.00,3.0714,14),(7,'Far Out! Telescope',1099.99,2.0000,4),(42,'Gerber Baby Food',5.00,2.3333,3),(3,'Happy Smiles Face Paints',19.99,3.1667,6),(12,'Head Secure Hard Hat',59.99,3.5000,4),(41,'High End Telescope',100.00,2.0000,4),(11,'Job Hunter Discount Suit',74.99,2.4286,7),(45,'Kids Baking Set',50.00,4.6667,3),(43,'Leap Frog Tablet',100.00,2.6000,5),(47,'Learn To Drive Game',50.00,3.0000,6),(46,'Math Card Game',10.00,1.0000,2),(21,'Mini Acoustic Guitar',35.00,1.5000,4),(6,'No More Stink Socks',9.99,2.8000,5),(4,'Overpriced Calculator: College Edition',99.99,3.8333,6),(17,'Portable Motion Detector',50.00,3.0000,3),(27,'Printer Paper',4.00,3.2667,15),(15,'Puzzle Blocks for Kids',19.99,3.6667,6),(44,'Robot Chef',4999.99,3.1667,6),(18,'Smart Cooker',65.00,3.0000,3),(37,'Smartwatch',250.00,2.8667,15),(9,'Star Gazer Junior',39.99,2.5000,6),(36,'Star Wars Sticker',0.50,2.5833,12),(19,'Summer Dress',19.00,4.0000,5),(31,'Sunglasses',50.00,2.8462,13),(10,'Sunshine Yellow',44.99,3.7143,7),(5,'Super-Sensor Door Opener',120.00,3.5556,9),(2,'Sure Feet Running Shoes',59.99,2.7500,4),(30,'Surface Pro 4',600.00,3.6923,13),(34,'Sweater',34.99,3.0667,15),(25,'Talking Doll',25.00,3.4286,7),(26,'Telescope',300.00,2.1538,13),(13,'The Overclocker: Extreme CPU',349.99,2.7500,4),(32,'Thermal Sensor',350.00,2.7143,14),(35,'Transformer Action Figure',5.00,3.7143,14),(22,'Travel Coffee Maker',39.00,2.3333,6),(29,'Ventilation Filter',22.00,2.8571,14),(38,'Winnie the Pooh Book',7.99,3.0000,11),(24,'Winter Jacket',55.00,3.2500,4),(48,'X-Ray Goggles',100.00,2.7500,4),(1,'Xtreme Graphics 5000',399.99,2.8750,8);
/*!40000 ALTER TABLE `products_rated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rated`
--

DROP TABLE IF EXISTS `rated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rated` (
  `customerID` int NOT NULL,
  `UPC` int NOT NULL,
  `rating` tinyint DEFAULT NULL,
  `ratingdate` date DEFAULT NULL,
  PRIMARY KEY (`customerID`,`UPC`),
  KEY `rated_ibfk_2` (`UPC`),
  CONSTRAINT `rated_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rated_ibfk_2` FOREIGN KEY (`UPC`) REFERENCES `product` (`UPC`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rated`
--

LOCK TABLES `rated` WRITE;
/*!40000 ALTER TABLE `rated` DISABLE KEYS */;
INSERT INTO `rated` VALUES (1,1,5,'2018-01-31'),(1,5,4,'2018-03-07'),(1,6,4,'2017-04-19'),(1,9,2,'2017-01-13'),(1,15,3,'2017-11-30'),(1,22,1,'2019-03-05'),(1,33,3,'2019-02-13'),(1,34,4,'2019-02-24'),(1,43,1,'2017-05-02'),(1,47,5,'2018-05-30'),(1,50,3,'2017-03-02'),(2,6,4,'2019-01-10'),(2,9,1,'2018-10-25'),(2,22,5,'2017-04-13'),(2,25,5,'2018-12-02'),(2,27,4,'2017-06-18'),(2,32,2,'2019-03-19'),(2,34,3,'2017-08-30'),(2,37,3,'2017-08-05'),(2,40,5,'2017-04-15'),(2,43,4,'2018-06-17'),(2,49,5,'2017-10-01'),(3,2,3,'2019-03-04'),(3,3,4,'2018-11-02'),(3,5,5,'2018-06-07'),(3,6,4,'2016-10-20'),(3,10,1,'2018-11-30'),(3,11,2,'2018-03-17'),(3,18,3,'2017-01-07'),(3,22,3,'2018-03-17'),(3,32,1,'2017-01-08'),(3,39,4,'2017-05-13'),(4,1,3,'2019-02-18'),(4,4,4,'2019-03-23'),(4,5,2,'2019-04-30'),(4,26,1,'2019-04-09'),(4,27,4,'2017-04-05'),(4,30,2,'2017-03-03'),(4,44,5,'2019-01-04'),(4,49,3,'2016-10-31'),(5,4,3,'2018-03-03'),(5,7,2,'2018-11-09'),(5,28,3,'2017-01-07'),(5,29,1,'2017-12-09'),(5,31,5,'2019-01-22'),(5,34,4,'2018-07-13'),(5,37,4,'2017-07-12'),(5,39,1,'2016-11-14'),(5,43,2,'2019-01-29'),(5,48,3,'2017-05-03'),(5,50,5,'2018-04-02'),(6,8,4,'2018-01-31'),(6,17,5,'2017-05-19'),(6,19,5,'2017-01-23'),(6,21,3,'2019-04-27'),(6,23,1,'2016-09-30'),(6,25,2,'2017-01-07'),(6,27,3,'2016-12-10'),(6,33,5,'2019-04-18'),(6,35,4,'2017-02-04'),(6,37,3,'2018-10-13'),(7,4,4,'2016-09-26'),(7,9,1,'2017-01-06'),(7,10,2,'2018-01-03'),(7,11,3,'2017-08-31'),(7,13,3,'2019-03-15'),(7,14,5,'2018-07-07'),(8,1,5,'2017-01-18'),(8,3,3,'2018-05-04'),(8,5,3,'2018-03-15'),(8,16,1,'2018-05-07'),(8,24,4,'2018-02-12'),(8,31,3,'2017-01-07'),(8,33,5,'2017-10-04'),(8,37,5,'2018-01-17'),(8,40,5,'2019-03-24'),(8,42,3,'2019-01-16'),(8,44,3,'2018-06-09'),(8,47,4,'2018-08-03'),(9,5,4,'2018-10-04'),(9,36,3,'2018-01-08'),(9,39,2,'2017-03-08'),(9,41,4,'2017-01-17'),(9,47,3,'2018-05-31'),(9,49,4,'2019-03-30'),(10,3,2,'2017-01-02'),(10,5,1,'2017-06-13'),(10,7,2,'2019-03-09'),(10,10,5,'2019-04-17'),(11,3,4,'2018-05-08'),(11,4,4,'2016-10-10'),(11,19,4,'2017-08-17'),(11,22,1,'2018-10-07'),(12,1,2,'2018-10-14'),(12,15,3,'2017-10-04'),(12,20,2,'2018-01-17'),(12,25,4,'2017-09-08'),(12,30,4,'2018-11-15'),(12,45,4,'2018-11-03'),(12,47,2,'2018-11-15'),(12,49,3,'2017-12-07'),(13,1,5,'2019-03-15'),(13,50,5,'2019-02-02'),(14,5,5,'2018-10-08'),(14,11,1,'2016-11-11'),(14,16,1,'2018-09-13'),(14,22,2,'2016-11-02'),(14,27,2,'2019-08-20'),(14,33,3,'2017-10-17'),(14,38,3,'2019-07-04'),(14,44,4,'2017-11-22'),(14,49,4,'2019-06-12'),(15,1,1,'2016-01-01'),(15,6,1,'2018-11-08'),(15,12,2,'2016-11-11'),(15,17,2,'2018-10-13'),(15,23,3,'2016-12-02'),(15,28,3,'2019-09-20'),(15,34,4,'2017-01-22'),(15,39,4,'2019-08-04'),(15,45,5,'2017-12-22'),(15,50,5,'2019-07-12'),(16,2,2,'2016-02-02'),(16,7,2,'2018-12-08'),(16,13,3,'2016-01-02'),(16,18,3,'2018-11-13'),(16,24,4,'2016-01-17'),(16,29,4,'2019-10-20'),(16,35,5,'2017-02-22'),(16,40,5,'2019-09-04'),(16,46,1,'2017-01-08'),(17,3,3,'2016-03-03'),(17,8,3,'2018-01-13'),(17,14,4,'2016-03-02'),(17,19,4,'2018-12-13'),(17,25,5,'2016-02-17'),(17,30,5,'2019-11-20'),(17,36,1,'2017-03-22'),(17,41,1,'2019-10-04'),(17,47,2,'2017-02-08'),(18,4,4,'2016-04-04'),(18,9,4,'2018-02-13'),(18,15,5,'2016-04-02'),(18,20,5,'2018-01-20'),(18,26,1,'2017-03-17'),(18,31,1,'2019-12-20'),(18,37,2,'2017-04-22'),(18,42,2,'2019-11-04'),(18,48,3,'2017-03-08'),(19,5,5,'2016-05-05'),(19,10,5,'2018-03-13'),(19,16,1,'2016-05-02'),(19,21,1,'2018-02-20'),(19,27,2,'2017-04-17'),(19,32,2,'2019-01-04'),(19,38,3,'2017-05-22'),(19,43,3,'2019-12-04'),(19,49,4,'2017-04-08'),(20,6,1,'2016-06-06'),(20,11,1,'2018-04-13'),(20,17,2,'2016-06-02'),(20,22,2,'2018-03-20'),(20,28,3,'2017-05-17'),(20,33,3,'2019-02-04'),(20,39,4,'2017-06-22'),(20,44,4,'2019-01-12'),(20,50,5,'2017-05-08'),(21,1,1,'2018-06-08'),(21,7,2,'2016-07-07'),(21,12,2,'2018-05-13'),(21,18,3,'2016-07-02'),(21,23,3,'2018-04-20'),(21,29,4,'2017-06-17'),(21,34,4,'2019-03-04'),(21,40,5,'2017-07-22'),(21,45,5,'2019-02-12'),(22,2,2,'2018-07-08'),(22,8,3,'2016-08-08'),(22,13,3,'2018-06-13'),(22,19,4,'2016-08-02'),(22,24,4,'2018-05-20'),(22,30,5,'2017-07-17'),(22,35,5,'2019-04-04'),(22,41,1,'2017-08-22'),(22,46,1,'2019-03-12'),(23,3,3,'2018-08-08'),(23,9,4,'2016-09-09'),(23,14,4,'2018-07-13'),(23,20,5,'2016-09-02'),(23,25,5,'2018-06-20'),(23,31,1,'2017-08-17'),(23,36,1,'2019-05-04'),(23,42,2,'2017-09-22'),(23,47,2,'2019-04-12'),(24,4,4,'2018-09-08'),(24,10,5,'2016-10-10'),(24,15,5,'2018-08-13'),(24,21,1,'2016-10-02'),(24,26,1,'2019-07-20'),(24,32,2,'2017-09-17'),(24,37,2,'2019-06-04'),(24,43,3,'2017-10-22'),(24,48,3,'2019-05-12'),(26,26,1,'2015-02-14'),(26,27,4,'2015-02-14'),(26,28,2,'2015-02-14'),(26,29,4,'2015-02-14'),(26,30,4,'2015-02-14'),(26,31,4,'2015-02-14'),(26,32,5,'2015-02-14'),(26,33,2,'2015-02-14'),(26,34,4,'2015-02-14'),(27,27,2,'2016-02-19'),(27,28,5,'2016-02-19'),(27,29,3,'2016-02-19'),(27,30,5,'2016-02-19'),(27,31,5,'2016-02-19'),(27,32,5,'2016-02-19'),(27,33,4,'2016-02-19'),(27,34,1,'2016-02-19'),(27,35,3,'2016-02-19'),(28,28,3,'2018-02-12'),(28,29,1,'2018-02-12'),(28,30,4,'2018-02-12'),(28,31,1,'2018-02-12'),(28,32,1,'2018-02-12'),(28,33,1,'2018-02-12'),(28,34,3,'2018-02-12'),(28,35,5,'2018-02-12'),(28,36,2,'2018-02-12'),(29,29,4,'2019-02-14'),(29,30,2,'2019-02-14'),(29,31,5,'2019-02-14'),(29,32,2,'2019-02-14'),(29,33,2,'2019-02-14'),(29,34,2,'2019-02-14'),(29,35,2,'2019-02-14'),(29,36,4,'2019-02-14'),(29,37,1,'2019-02-14'),(30,30,5,'2015-03-13'),(30,31,3,'2015-03-13'),(30,32,1,'2015-03-13'),(30,33,3,'2015-03-13'),(30,34,3,'2015-03-13'),(30,35,3,'2015-03-13'),(30,36,1,'2015-03-13'),(30,37,3,'2015-03-13'),(30,38,5,'2015-03-13'),(31,26,4,'2016-04-20'),(31,31,1,'2016-04-20'),(31,32,4,'2016-04-20'),(31,33,2,'2016-04-20'),(31,34,4,'2016-04-20'),(31,35,4,'2016-04-20'),(31,36,4,'2016-04-20'),(31,37,5,'2016-04-20'),(31,38,2,'2016-04-20'),(32,26,1,'2017-05-14'),(32,27,3,'2017-05-14'),(32,32,2,'2017-05-14'),(32,33,5,'2017-05-14'),(32,34,3,'2017-05-14'),(32,35,5,'2017-05-14'),(32,36,5,'2017-05-14'),(32,37,5,'2017-05-14'),(32,38,4,'2017-05-14'),(33,26,3,'2018-06-28'),(33,27,5,'2018-06-28'),(33,28,2,'2018-06-28'),(33,33,3,'2018-06-28'),(33,34,1,'2018-06-28'),(33,35,4,'2018-06-28'),(33,36,1,'2018-06-28'),(33,37,1,'2018-06-28'),(33,38,1,'2018-06-28'),(34,26,2,'2019-02-11'),(34,27,2,'2019-02-11'),(34,28,4,'2019-02-11'),(34,29,1,'2019-02-11'),(34,34,4,'2019-02-11'),(34,35,2,'2019-02-11'),(34,36,5,'2019-02-11'),(34,37,2,'2019-02-11'),(34,38,2,'2019-02-11'),(35,26,3,'2019-02-04'),(35,27,3,'2019-02-04'),(35,28,1,'2019-02-04'),(35,29,3,'2019-02-04'),(35,30,5,'2019-02-04'),(35,35,5,'2019-02-04'),(35,36,3,'2019-02-04'),(35,37,1,'2019-02-04'),(35,38,3,'2019-02-04'),(36,26,4,'2019-01-14'),(36,27,4,'2019-01-14'),(36,28,4,'2019-01-14'),(36,29,5,'2019-01-14'),(36,30,2,'2019-01-14'),(36,31,4,'2019-01-14'),(36,36,1,'2019-01-14'),(36,37,4,'2019-01-14'),(36,38,2,'2019-01-14'),(37,26,3,'2019-04-14'),(37,27,5,'2019-04-14'),(37,28,5,'2019-04-14'),(37,29,5,'2019-04-14'),(37,30,4,'2019-04-14'),(37,31,1,'2019-04-14'),(37,32,3,'2019-04-14'),(37,37,2,'2019-04-14'),(37,38,5,'2019-04-14'),(38,26,1,'2019-04-16'),(38,27,4,'2019-04-16'),(38,28,1,'2019-04-16'),(38,29,1,'2019-04-16'),(38,30,1,'2019-04-16'),(38,31,3,'2019-04-16'),(38,32,5,'2019-04-16'),(38,33,2,'2019-04-16'),(38,38,3,'2019-04-16'),(39,10,5,'2015-02-13'),(39,19,3,'2019-02-20'),(39,44,1,'2016-03-13'),(40,5,3,'2015-01-25'),(40,11,3,'2015-10-10'),(40,41,2,'2019-03-10'),(41,10,3,'2015-04-17'),(41,12,5,'2019-02-07'),(41,13,2,'2019-02-20'),(41,44,2,'2019-04-14'),(41,50,1,'2019-04-14'),(42,1,1,'2015-04-17'),(42,9,3,'2019-12-02'),(42,11,2,'2019-03-19'),(43,2,4,'2015-12-12'),(43,12,5,'2019-03-04'),(43,15,3,'2015-12-12'),(44,11,5,'2015-12-12'),(44,14,4,'2019-04-14'),(44,15,3,'2015-01-25'),(44,24,1,'2015-04-17'),(44,49,5,'2019-01-04'),(45,32,3,'2019-04-13'),(45,35,3,'2019-03-10'),(45,39,4,'2019-12-02'),(46,20,3,'2015-10-10'),(46,23,5,'2015-01-25'),(46,29,1,'2016-03-02'),(47,25,1,'2019-03-10'),(47,27,2,'2019-02-07'),(47,29,3,'2016-03-13'),(47,48,2,'2016-02-12'),(47,50,4,'2019-02-15'),(48,21,1,'2019-01-04'),(48,25,2,'2019-04-14'),(48,35,2,'2019-12-02'),(50,23,5,'2010-03-10'),(50,26,3,'2019-12-02'),(50,34,2,'2019-03-04');
/*!40000 ALTER TABLE `rated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `Sname` varchar(30) NOT NULL,
  `scity` varchar(20) DEFAULT NULL,
  `szip` char(5) DEFAULT NULL,
  PRIMARY KEY (`Sname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES ('Akustica','Pittsburgh','15203'),('Aleris International Inc.','Beachwood','44122'),('Bel-Art Products','Wayne','07470'),('Big Cup Inc','Chicago','07860'),('C. C. Filson','Seattle','98124'),('Cambridge Engineered Solutions','New Orleans','70116'),('Grainger Industrial Supply','Salt Lake City','84115'),('Hadden Industries','Oklahoma City','73160'),('HB Products LLC','Castro Valley','91546'),('Kaman Industrial Technologies','Big Timber','59011'),('Large System Distributors','Denver','80022'),('Melmarc Products Inc.','Santa Ana','92704'),('Motion Enhanced Technology','Houston','77010'),('NK Apparel','El Paso','79950'),('Pegatron Products','Taylorville','62568'),('PolyOne','Pedricktown','08067'),('Prime Technologies','West Chester','19382'),('ProtoVision','Little Rock','72201'),('Seatec Astronomy','Seattle','98124'),('UCA Group Inc.','Richmond','47374'),('ViTech Scientific','Dover','19901');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `top_products`
--

DROP TABLE IF EXISTS `top_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `top_products` (
  `UPC` int NOT NULL,
  `Pname` varchar(40) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `rating` decimal(7,4) DEFAULT NULL,
  `amount` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `top_products`
--

LOCK TABLES `top_products` WRITE;
/*!40000 ALTER TABLE `top_products` DISABLE KEYS */;
INSERT INTO `top_products` VALUES (40,'Basic Telescope',100.00,5.0000,4),(45,'Kids Baking Set',50.00,4.6667,3),(14,'DG Camera',120.00,4.2500,4),(19,'Summer Dress',19.00,4.0000,5),(50,'Baby Learns German',50.00,4.0000,7);
/*!40000 ALTER TABLE `top_products` ENABLE KEYS */;
UNLOCK TABLES;

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
  CONSTRAINT `wishes_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wishes_ibfk_2` FOREIGN KEY (`UPC`) REFERENCES `product` (`UPC`) ON DELETE CASCADE ON UPDATE CASCADE
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

--
-- Dumping routines for database 'final_project'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_customer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_customer`(
	in fname varchar(20),
    in lname varchar(30),
    in address varchar(100),
    in city varchar(20),
    in state char(2),
    in zip char(50))
BEGIN
	insert into customer(Fname, Lname, caddress, ccity, cstate, czip)
    values (fname, lname, address, city, state, zip);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_product`(
in name varchar(40), in price decimal(10.2), in Sname varchar(30), amount int, reorderlevel int
)
BEGIN
insert into product(Pname, price, Sname, amount, reorderlevel)
value (name, price, Sname, amount, reorderlevel);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_supplier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_supplier`(
in name varchar(30), city varchar(20), zip char(5))
BEGIN
	insert into supplier(Sname, scity, szip)
    values (name, city, zip);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_all_products` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_all_products`()
BEGIN
select UPC, Pname, price, avg(rating) as rating, count(rating) as amount
from rated join product using (UPC)
group by UPC
order by Pname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_best_ratings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_best_ratings`()
BEGIN
select Pname as product, avg(rating) as rating, count(rating) as amount
from rated join product using (UPC)
group by UPC
order by rating desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_product_alphabetical` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_product_alphabetical`()
BEGIN
select Pname as product, price, avg(rating) as rating, count(rating) as amount
from rated join product using (UPC)
group by UPC
order by Pname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_product_ralphabetical` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_product_ralphabetical`()
BEGIN
select Pname as product, price, avg(rating) as rating, count(rating) as amount
from rated join product using (UPC)
group by UPC
order by Pname desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_worst_ratings` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_worst_ratings`()
BEGIN
select Pname as product, avg(rating) as rating, count(rating) as amount
from rated join product using (UPC)
group by UPC
order by rating;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove product`(
in id int
)
BEGIN
delete from product
where UPC = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_customer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_customer`(
in id int
)
BEGIN
delete from customer
where customerID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `remove_supplier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `remove_supplier`(
in name varchar(40)
)
BEGIN
delete from supplier
where Sname = name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `top_products` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `top_products`()
BEGIN
select UPC, Pname, price, avg(rating) as rating, count(rating) as amount
from rated join product using (UPC)
group by UPC
order by rating desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `top_wiished` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `top_wiished`()
BEGIN
select UPC, Pname, price, count(UPC) as amount
from wishes join product using (UPC)
group by UPC
order by amount desc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_customer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_customer`(
in id int
)
BEGIN
	select *
    from customer
    where customerID = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_nonbought_wish` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_nonbought_wish`()
BEGIN
select UPC, Pname , customerID, Fname, Lname
from wishes join customer using (customerID) join product using (UPC)
where customerID not in ( select customerID
							from orders join contains using (orderID))
order by Fname;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_product` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_product`(
in id int
)
BEGIN
select *
from product
where UPC = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_supplier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_supplier`(
in name varchar(40)
)
BEGIN
select *
from supplier
where Sname = name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `view_wishlist_customer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `view_wishlist_customer`(
	in id int
)
BEGIN
	select Fname, Lname, Pname, price
    from (select *
		  from wishes
          where customerID = id) as w join product as p using(UPC) join (select Fname, Lname
																		 from customer
                                                                         where customerID = id) as c;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-26 23:13:28
