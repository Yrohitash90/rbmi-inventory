-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: rbmi_inventory
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `canteen_stock`
--

DROP TABLE IF EXISTS `canteen_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canteen_stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_id` (`item_id`),
  CONSTRAINT `canteen_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items_master` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canteen_stock`
--

LOCK TABLES `canteen_stock` WRITE;
/*!40000 ALTER TABLE `canteen_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `canteen_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canteen_usage`
--

DROP TABLE IF EXISTS `canteen_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canteen_usage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `quantity_used` decimal(10,2) NOT NULL,
  `used_date` date DEFAULT (curdate()),
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `canteen_usage_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items_master` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canteen_usage`
--

LOCK TABLES `canteen_usage` WRITE;
/*!40000 ALTER TABLE `canteen_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `canteen_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_master`
--

DROP TABLE IF EXISTS `items_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items_master` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(100) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `price` decimal(10,2) DEFAULT '0.00',
  `total_qty` double DEFAULT '0',
  `total_amount` double DEFAULT '0',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_name` (`item_name`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_master`
--

LOCK TABLES `items_master` WRITE;
/*!40000 ALTER TABLE `items_master` DISABLE KEYS */;
INSERT INTO `items_master` VALUES (1,'Rice','Kg',0.00,30,1300),(2,'Aata','Kg',0.00,0,0),(3,'Refined oil (fortune)','Ltr',0.00,0,0),(4,'Mustred oil ','litre',0.00,0,0),(5,'Arahar dal','kg',0.00,12,1200),(6,'Rajma','kg',0.00,0,0),(7,'Chole','kg',0.00,0,0),(8,'Urad Dal saboot','kg',0.00,0,0),(9,'Masoore dal','kg',0.00,0,0),(10,'Besan','kg',0.00,0,0),(11,'Sugar','kg',0.00,0,0),(12,'Moong dal','kg',0.00,0,0),(13,'Surf','kg',0.00,0,0),(14,'Dal malka','kg',0.00,0,0),(15,'Maida','kg',0.00,0,0),(16,'Lobiya','kg',0.00,0,0),(17,'chane ki dal','kg',0.00,0,0),(18,'kala chana','kg',0.00,0,0),(19,'jeera','kg',0.00,0,0),(20,'Kali mirch','kg',0.00,0,0),(21,'Salt','kg',0.00,0,0),(22,'Dhaniya Powder','Kg',0.00,0,0),(23,'Red Chilli','kg',0.00,0,0),(24,'termuric powder','kg',0.00,0,0),(25,'Hing','kg',0.00,0,0),(26,'Black Salt','kg',0.00,0,0),(27,'Hari Ilaichi','kg',0.00,0,0),(28,'Methi Dana','kg',0.00,0,0),(29,'Mustured Seeds','kg',0.00,0,0),(30,'Kasuri Methi','kg',0.00,0,0),(31,'Chat masala','kg',0.00,0,0),(32,'Chana masala','kg',0.00,0,0),(33,'Raita Masala','kg',0.00,0,0),(34,'Soya Bean','kg',0.00,0,0),(35,'Soya bean chura','kg',0.00,0,0),(36,'Chowmin','kg',0.00,0,0),(37,'Tomato Souce','Count',0.00,0,0),(38,'Chilli Souce','Count',0.00,0,0),(39,'Vinegar','Count',0.00,0,0),(40,'Ajinomoto','kg',0.00,0,0),(41,'kuti mirch','kg',0.00,0,0),(42,'maggi ','count',0.00,0,0),(43,'Macroni','kg',0.00,0,0),(44,'tej patta','kg',0.00,0,0),(45,'baking powder','kg',0.00,0,0);
/*!40000 ALTER TABLE `items_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mess_stock`
--

DROP TABLE IF EXISTS `mess_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mess_stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `quantity` decimal(10,2) NOT NULL DEFAULT '0.00',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_id` (`item_id`),
  CONSTRAINT `mess_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items_master` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mess_stock`
--

LOCK TABLES `mess_stock` WRITE;
/*!40000 ALTER TABLE `mess_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `mess_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mess_usage`
--

DROP TABLE IF EXISTS `mess_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mess_usage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `quantity_used` decimal(10,2) NOT NULL,
  `used_date` date DEFAULT (curdate()),
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `mess_usage_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items_master` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mess_usage`
--

LOCK TABLES `mess_usage` WRITE;
/*!40000 ALTER TABLE `mess_usage` DISABLE KEYS */;
/*!40000 ALTER TABLE `mess_usage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(100) NOT NULL,
  `item_id` int NOT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `total_qty` decimal(10,2) DEFAULT NULL,
  `mess_qty` decimal(10,2) DEFAULT NULL,
  `canteen_qty` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `order_date` date DEFAULT (curdate()),
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items_master` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('manager','mess','canteen') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'manager','1234','manager'),(2,'mess','1234','mess'),(3,'canteen','1234','canteen');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_master`
--

DROP TABLE IF EXISTS `vendor_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_master` (
  `vendor_id` int NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(100) NOT NULL,
  PRIMARY KEY (`vendor_id`),
  UNIQUE KEY `vendor_name` (`vendor_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_master`
--

LOCK TABLES `vendor_master` WRITE;
/*!40000 ALTER TABLE `vendor_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-24 19:42:56
