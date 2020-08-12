CREATE DATABASE  IF NOT EXISTS `house_of_games` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `house_of_games`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: house_of_games
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'reiciendis','2020-08-12 19:14:20','2020-08-12 19:14:20');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `description` varchar(100) NOT NULL,
  `descriptionMedium` varchar(600) NOT NULL,
  `descriptionBig` varchar(400) NOT NULL,
  `price` decimal(50,2) NOT NULL,
  `video` varchar(100) NOT NULL,
  `editor` varchar(50) NOT NULL,
  `clasification` varchar(1) NOT NULL,
  `rating` decimal(10,2) NOT NULL,
  `stock` int(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (1,'Central Metrics Strategist','Vero temporibus quod.','Saepe unde reprehenderit inventore aut voluptas.','Recusandae voluptatem possimus dolor nulla exercitationem sunt. Beatae dolor illo non. Voluptatem rerum doloremque aliquid quo debitis. Rerum iusto numquam voluptatibus itaque odio totam ut. Quaerat asperiores nostrum. Aut possimus beatae maxime commodi laudantium eligendi et voluptas.',468.00,'https://elbert.org','iusto','m',793.00,24089);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'First Person','2020-08-12 16:58:43','2020-08-12 16:58:43'),(2,'MMO','2020-08-12 16:58:54','2020-08-12 16:58:54'),(3,'Action','2020-08-12 16:59:40','2020-08-12 16:59:40'),(4,'Adventure','2020-08-12 16:59:49','2020-08-12 16:59:49'),(5,'Roleplay','2020-08-12 17:00:30','2020-08-12 17:00:30'),(6,'Shooter','2020-08-12 17:01:53','2020-08-12 17:01:53'),(7,'Survival','2020-08-12 17:02:23','2020-08-12 17:02:23'),(8,'Horror','2020-08-12 17:02:32','2020-08-12 17:02:32'),(9,'Sports','2020-08-12 17:03:15','2020-08-12 17:03:15'),(10,'Racing','2020-08-12 17:03:47','2020-08-12 17:03:47'),(11,'Third person','2020-08-12 17:04:43','2020-08-12 17:04:43'),(12,'Indie','2020-08-12 17:04:59','2020-08-12 17:04:59'),(13,'MOBA','2020-08-12 17:05:53','2020-08-12 17:05:53'),(14,'Sandbox','2020-08-12 17:06:06','2020-08-12 17:06:06');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platforms`
--

DROP TABLE IF EXISTS `platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `platforms` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platforms`
--

LOCK TABLES `platforms` WRITE;
/*!40000 ALTER TABLE `platforms` DISABLE KEYS */;
INSERT INTO `platforms` VALUES (1,'sit','2020-08-12 19:14:21','2020-08-12 19:14:21');
/*!40000 ALTER TABLE `platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('20200806211521-users_table.js'),('20200808185934-games_table.js'),('20200810191859-categories_table.js'),('20200810205933-genres_table.js'),('20200810210638-platforms_table.js'),('20200810211245-shopping_carts_table.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_carts`
--

DROP TABLE IF EXISTS `shopping_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopping_carts` (
  `id` int(100) unsigned NOT NULL AUTO_INCREMENT,
  `total_cost` int(10) NOT NULL,
  `quantity` int(1) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_carts`
--

LOCK TABLES `shopping_carts` WRITE;
/*!40000 ALTER TABLE `shopping_carts` DISABLE KEYS */;
INSERT INTO `shopping_carts` VALUES (1,676,1,'2020-08-12 19:14:21','2020-08-12 19:14:21');
/*!40000 ALTER TABLE `shopping_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` char(15) DEFAULT 'Unspecified',
  `birth_date` datetime DEFAULT NULL,
  `address` varchar(100) DEFAULT 'Unspecified',
  `avatar` varchar(100) DEFAULT '/image/defaultAvatar',
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Maxine','Moen','ad','Craig28@hotmail.com','$2b$10$0IKfBw8fJm4GlO8NToQDa.FNYKBkoFyJ9LmGwqhPYiAfSV8u2uS/K','M','0000-00-00 00:00:00','Saint Martin, Michigan, Theachester, 86948 White Mission','https://s3.amazonaws.com/uifaces/faces/twitter/edkf/128.jpg','2020-08-12 19:14:20','2020-08-12 19:14:20'),(2,'Eloy','Krajcik','minima','Pietro_Pollich@hotmail.com','$2b$10$/LCgmUEOTjRZK3u2iBhoXehOg3XIK2JHTXUJiWEI.Lha1C6uTGrYC','M','0000-00-00 00:00:00','Japan, Connecticut, Raumouth, 8874 Bradtke Forks','https://s3.amazonaws.com/uifaces/faces/twitter/ariffsetiawan/128.jpg','2020-08-12 19:14:20','2020-08-12 19:14:20'),(3,'Elnora','Bauch','autem','Cleta_Lynch@yahoo.com','$2b$10$sIUTYedigazXR3Dj6FGnKO8hSd7e2IhgMbw2DMs1UmHI9Rmdxrh.u','M','0000-00-00 00:00:00','Mexico, Georgia, Konopelskimouth, 06931 Von Ranch','https://s3.amazonaws.com/uifaces/faces/twitter/andrewcohen/128.jpg','2020-08-12 19:14:20','2020-08-12 19:14:20'),(4,'Danny','Ankunding','ipsa','Kaden_Schulist47@hotmail.com','$2b$10$1XD76UdRKfPw/DCrUk.OLu6g5ILv2bDCjI1mGHhmPLrWlCoacLPeS','H','0000-00-00 00:00:00','Jersey, Hawaii, Barrowsberg, 8832 Stiedemann Ranch','https://s3.amazonaws.com/uifaces/faces/twitter/gmourier/128.jpg','2020-08-12 19:14:20','2020-08-12 19:14:20'),(5,'Natalie','Mertz','officiis','Cheyanne67@hotmail.com','$2b$10$6XqxSkVNpwre9iLEUM.kxuZfYYalukkSSyl356/OyZcGbyyGRpt8.','M','0000-00-00 00:00:00','Tokelau, New Hampshire, New Gene, 432 Asia Estate','https://s3.amazonaws.com/uifaces/faces/twitter/richardgarretts/128.jpg','2020-08-12 19:14:20','2020-08-12 19:14:20'),(6,'Ardith','Strosin','placeat','Marge.Emard25@hotmail.com','$2b$10$ffvDJLwY3YhLbGw0BByr5.D9VdZUrkcBGrYbUMZNk7POLbYRmCPEu','H','0000-00-00 00:00:00','Norfolk Island, Washington, Port Theotown, 31856 Orie Ridges','https://s3.amazonaws.com/uifaces/faces/twitter/vonachoo/128.jpg','2020-08-12 19:14:20','2020-08-12 19:14:20'),(7,'Marley','Wolf','quasi','Kamryn45@yahoo.com','$2b$10$kMq.0MGfBj3/qvtmYI6dne6i7Q7X4Dy6d1cFtwnQlXYkgoGryU.J2','H','0000-00-00 00:00:00','Indonesia, Mississippi, North Otho, 31119 Adelia Corner','https://s3.amazonaws.com/uifaces/faces/twitter/Shriiiiimp/128.jpg','2020-08-12 19:14:20','2020-08-12 19:14:20'),(8,'Maribel','Quitzon','qui','Kaley75@gmail.com','$2b$10$wEURxF1FWuV5Hh/9fIFq2u55q1hwnweC9BDUY1Wt20gcJ/yan96Ta','M','0000-00-00 00:00:00','Denmark, Alabama, West Krystal, 75601 Leonel Roads','https://s3.amazonaws.com/uifaces/faces/twitter/diesellaws/128.jpg','2020-08-12 19:14:20','2020-08-12 19:14:20'),(9,'Frida','Mann','sit','Bradly.Kihn9@gmail.com','$2b$10$bFV5qV8FQ3GN0/E0YaiGdea40LbTXExfKsC6xy6G.NDUP..mfSPMm','M','0000-00-00 00:00:00','Ghana, California, Collierville, 921 Brakus Manors','https://s3.amazonaws.com/uifaces/faces/twitter/umurgdk/128.jpg','2020-08-12 19:14:20','2020-08-12 19:14:20'),(21,'Lafayette','Ziemann','nostrum','Katharina_Kuvalis@yahoo.com','$2b$10$h8Gi/hwZyzcUzwkygjRtE.vqeNMPLAe9LJncNGz/kYAicNz7Yjt0.','H','0000-00-00 00:00:00','Guernsey, California, East Hectorborough, 687 Bauch Cliffs','https://s3.amazonaws.com/uifaces/faces/twitter/vaughanmoffitt/128.jpg','2020-08-12 19:14:20','2020-08-12 19:14:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-12 17:31:47
