-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: library_db
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book_details`
--

DROP TABLE IF EXISTS `book_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `book_details` (
  `BookId` varchar(45) NOT NULL,
  `Title` varchar(45) NOT NULL,
  `Author` varchar(45) NOT NULL,
  `MainClassification` varchar(45) NOT NULL,
  `SubClassification` varchar(45) NOT NULL,
  `YearOfPublishing` int(11) NOT NULL,
  `LastPrintedYear` int(11) NOT NULL,
  `ISBNno` varchar(45) NOT NULL,
  `NoOfPages` int(11) NOT NULL,
  PRIMARY KEY (`BookId`),
  KEY `MainClassification_idx` (`MainClassification`),
  KEY `SubClassification_idx` (`SubClassification`),
  CONSTRAINT `MainClassification` FOREIGN KEY (`MainClassification`) REFERENCES `mainclassification` (`mcid`) ON UPDATE CASCADE,
  CONSTRAINT `SubClassification` FOREIGN KEY (`SubClassification`) REFERENCES `subclassification` (`scid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_details`
--

LOCK TABLES `book_details` WRITE;
/*!40000 ALTER TABLE `book_details` DISABLE KEYS */;
INSERT INTO `book_details` VALUES ('B01','DWE','defre','MC02','S3',1526,1510,'defre',12),('B02','sds','sobi','MC02','S5',1516,1514,'defre',10),('B03','DWE','dsf','MC01','S4',1522,1521,'defre',120);
/*!40000 ALTER TABLE `book_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mainclassification`
--

DROP TABLE IF EXISTS `mainclassification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mainclassification` (
  `McID` varchar(45) NOT NULL,
  `McName` varchar(45) NOT NULL,
  PRIMARY KEY (`McID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mainclassification`
--

LOCK TABLES `mainclassification` WRITE;
/*!40000 ALTER TABLE `mainclassification` DISABLE KEYS */;
INSERT INTO `mainclassification` VALUES ('MC01','SCIENCE'),('MC02','ARTS');
/*!40000 ALTER TABLE `mainclassification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subclassification`
--

DROP TABLE IF EXISTS `subclassification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subclassification` (
  `ScID` varchar(45) NOT NULL,
  `McID` varchar(45) NOT NULL,
  `ScName` varchar(45) NOT NULL,
  PRIMARY KEY (`ScID`),
  KEY `McID_idx` (`McID`),
  CONSTRAINT `McID` FOREIGN KEY (`McID`) REFERENCES `mainclassification` (`mcid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subclassification`
--

LOCK TABLES `subclassification` WRITE;
/*!40000 ALTER TABLE `subclassification` DISABLE KEYS */;
INSERT INTO `subclassification` VALUES ('s1','MC01','CSC'),('S2','MC01','Physics'),('S3','MC02','MEDIA'),('S4','MC01','CHEMISTRY'),('S5','MC02','LAW');
/*!40000 ALTER TABLE `subclassification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-25 11:04:29
