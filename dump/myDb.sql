-- MySQL dump 10.13  Distrib 8.0.16, for Linux (x86_64)
--
-- Host: localhost    Database: myDb
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `user_id` int(10) NOT NULL,
  `parent_id` int(10) NOT NULL,
  `start` datetime DEFAULT CURRENT_TIMESTAMP,
  `finish` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`user_id`),
  KEY `finish` (`finish`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (41,'Тест','Lorem ipsum Lorem ipsum Lorem ',30,0,'2019-05-11 14:03:46','2019-05-22 10:49:00',0),(57,'Сделать что то','ssssssssssss',30,41,'2019-05-12 09:13:36','2019-05-19 11:13:00',0),(58,'Сделать что то 5','aaaaaaaaaaaa',30,41,'2019-05-12 09:14:29','2019-05-17 11:14:00',0),(59,'Сделать что то 5','dddddddddddddddd',30,0,'2019-05-12 10:59:21','2019-05-23 10:59:00',0),(61,'Сделать что то','xxxxxxxxxxxxxxxxxxxxxxx',30,59,'2019-05-12 12:29:53','2019-05-22 12:29:00',0),(62,'Сделать что то','ssssssssssssssssss',30,41,'2019-05-12 12:31:59','2019-05-21 12:31:00',0),(67,'Сделать что то','sssssssssssssss',30,0,'2019-05-12 13:20:35','2019-05-13 13:20:00',0);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (30,'user','user@user.cc','$2y$10$UPY6337Sc4UK.6E4a3.yrOloA6xd6ohSDnclbbWhCBnljV6sT374y','2019-05-09 11:52:26'),(34,'user1','udj@ujd.dd','$2y$10$5imjxh1yFm8eGto/zmYuH.z/vZmksWvGbFTM.2J8PfPIju94.nq0u','2019-05-09 19:05:42'),(35,'user2','user2@user.cc','$2y$10$WeBz3seCccHmLlPtvEibA.QFupa20kdl8qK.MFMr5BF1QdvN69.G2','2019-05-10 09:18:43'),(36,'user3','user3@user.cc','$2y$10$72HxWcy0b.lc8Cv.4F9yC.tVpDpGREgptPUc3wPZT0g.FjVsZx6XK','2019-05-10 09:20:57'),(37,'user4','user4@user.cc','$2y$10$pXCZGWVZsMFm9zgiRWhTlOcbHNhIV9FZgvVxUJcBm6TcO61H8HJJ6','2019-05-10 09:23:42'),(38,'user6','user6@user.cc','$2y$10$wyu3Jx1xc9pLzFEk50EHsuGi2BlSMNFC2ryct2L6d4oQbzM6ZWY/G','2019-05-10 09:26:10'),(39,'user7','user7@user.cc','$2y$10$i65soIU0epv76CvZPOHfNODju7JesUvaUlihkShVlTkAbncE0qRDS','2019-05-10 09:53:54'),(40,'user8','user8@user.cc','$2y$10$TwqN4lYbZOr/eEKbuVyF/.L7MQOObCDw6X5o.5PbEf4WqP03Jr8kG','2019-05-10 09:54:47'),(41,'user9','user9@user.cc','$2y$10$W9xaCv4CVToN/uwoMPFituHEwBqKoKtyFFAQmYTOK5N64L1p4zVTm','2019-05-10 10:03:57'),(42,'user10','user10@user.cc','$2y$10$9KxcL2CXZGgNY8IvXQ8Aje5jNVVoh9vfxQVSbz1yTAWQk9TzaHfdS','2019-05-10 10:07:59'),(43,'user11','user11@user.cc','$2y$10$jwiYaLLPafIOo8dgZHxehufUwGDVFJqoovUaGFf9b3RhZMfRHf4pu','2019-05-10 10:14:05'),(44,'user12','user12@user.cc','$2y$10$846DiXbiG.jN.xPaS76hcOALw.xUsnkdHHbQSmfkRpsdxh.DU.emW','2019-05-10 10:16:58'),(45,'user13','user13@user.cc','$2y$10$KTBkfOr3CDTfgRnLShbPpO7gi1y1t09DGuF2H8ZL21ot0VYd4yKjK','2019-05-10 10:22:05'),(46,'user15','user15@user.cc','$2y$10$Mzvm47KXcn1x.0qIotrvt.6FA5Hk8ZVs5Z/QbDP8ijAl0.51gqWxm','2019-05-11 07:19:07'),(47,'user125','user125@user.cc','$2y$10$LswuiANps.rFvKqAyMhQ/OzApRjGVxj6BvVEYXVZIwGNIy1vFZ1m6','2019-05-11 21:39:33');
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

-- Dump completed on 2019-05-13  6:44:09
