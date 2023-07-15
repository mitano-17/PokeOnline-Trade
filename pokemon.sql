-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: pokemon
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `ketchup`
--

DROP TABLE IF EXISTS `ketchup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ketchup` (
  `relish` varchar(45) NOT NULL,
  `mayo` varchar(100) DEFAULT NULL,
  `soysauce` varchar(45) DEFAULT NULL,
  `vinegar` int DEFAULT NULL,
  PRIMARY KEY (`relish`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ketchup`
--

LOCK TABLES `ketchup` WRITE;
/*!40000 ALTER TABLE `ketchup` DISABLE KEYS */;
INSERT INTO `ketchup` VALUES ('ash','asdf','a@gmail.com',12344214),('serena','$2b$10$FGeBfgl7pzYf3JSsn1XZ.eVk64SpQwxu3LbxZt/4m4bo.ASZVG6Wm','a@gmail.com',1232311);
/*!40000 ALTER TABLE `ketchup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `missingno`
--

DROP TABLE IF EXISTS `missingno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `missingno` (
  `who` varchar(45) NOT NULL,
  `what` varchar(100) DEFAULT NULL,
  `why` varchar(45) DEFAULT NULL,
  `where` int DEFAULT NULL,
  PRIMARY KEY (`who`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `missingno`
--

LOCK TABLES `missingno` WRITE;
/*!40000 ALTER TABLE `missingno` DISABLE KEYS */;
/*!40000 ALTER TABLE `missingno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `narra`
--

DROP TABLE IF EXISTS `narra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `narra` (
  `Hearts` varchar(45) NOT NULL,
  PRIMARY KEY (`Hearts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `narra`
--

LOCK TABLES `narra` WRITE;
/*!40000 ALTER TABLE `narra` DISABLE KEYS */;
/*!40000 ALTER TABLE `narra` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-13 23:48:48
