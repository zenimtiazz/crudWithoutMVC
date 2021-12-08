-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (arm64)
--
-- Host: localhost    Database: crud
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `CLASS`
--

DROP TABLE IF EXISTS `CLASS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLASS` (
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `c_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLASS`
--

LOCK TABLES `CLASS` WRITE;
/*!40000 ALTER TABLE `CLASS` DISABLE KEYS */;
INSERT INTO `CLASS` VALUES ('Lammar','Antwerp',1),('Giertz','Gent',2),('Giertz','Antwerp',3),('Lammar','Brussels',4);
/*!40000 ALTER TABLE `CLASS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `STUDENT`
--

DROP TABLE IF EXISTS `STUDENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STUDENT` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `c_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `STUDENT_FK` (`c_id`),
  CONSTRAINT `STUDENT_FK` FOREIGN KEY (`c_id`) REFERENCES `CLASS` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STUDENT`
--

LOCK TABLES `STUDENT` WRITE;
/*!40000 ALTER TABLE `STUDENT` DISABLE KEYS */;
INSERT INTO `STUDENT` VALUES (1,'zain','zenimtiaz@gmail.com',1),(2,'Daryle','darylbecode@gmail.com',1),(3,'sofiane','sofianebecode@gmail.com',1),(4,'neha','nehabecode@gmail.com',1),(5,'nama','namabecode@gmail.com',2),(7,'iara','iarakhan@gmail.com',3),(9,'sonia','sonia@gmail.com',3),(12,'xioqi','xiaoqiki@gmail.com',2),(13,'ali','ali@gmail.com',3);
/*!40000 ALTER TABLE `STUDENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TEACHER`
--

DROP TABLE IF EXISTS `TEACHER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TEACHER` (
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id` int DEFAULT NULL,
  `c_id` int DEFAULT NULL,
  KEY `TEACHER_FK_1` (`c_id`),
  CONSTRAINT `TEACHER_FK_1` FOREIGN KEY (`c_id`) REFERENCES `CLASS` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TEACHER`
--

LOCK TABLES `TEACHER` WRITE;
/*!40000 ALTER TABLE `TEACHER` DISABLE KEYS */;
INSERT INTO `TEACHER` VALUES ('Tim','timbroos@gmail.com',1,NULL),('sicco','siccosmith@gmail.com',2,NULL),('sharron','sharon@gmail.com',3,NULL),('Nick','nickbecode.com',4,NULL);
/*!40000 ALTER TABLE `TEACHER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'crud'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-08  8:54:06
