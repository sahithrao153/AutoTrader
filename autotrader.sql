-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: autotrader
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `AdminID` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(10) DEFAULT NULL,
  `AccountStatus` varchar(255) NOT NULL,
  PRIMARY KEY (`AdminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin34','pass3423','juliecarol@gmail.com','426 Wacker Drive, Chicago, Illinois','3127831263','active');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analystaccount`
--

DROP TABLE IF EXISTS `analystaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `analystaccount` (
  `AnalystID` varchar(255) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(10) DEFAULT NULL,
  `AccountStatus` varchar(255) NOT NULL,
  PRIMARY KEY (`AnalystID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analystaccount`
--

LOCK TABLES `analystaccount` WRITE;
/*!40000 ALTER TABLE `analystaccount` DISABLE KEYS */;
INSERT INTO `analystaccount` VALUES ('Brendan78','Brendan','Hegardy','264 LakeDrive, Chicago, Illinois','Brendan.hegardy@gmail.com','3657462312','active');
/*!40000 ALTER TABLE `analystaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favoritecar`
--

DROP TABLE IF EXISTS `favoritecar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favoritecar` (
  `VehicleID` varchar(255) NOT NULL,
  `VehicleName` varchar(255) NOT NULL,
  `VehicleType` varchar(255) NOT NULL,
  `VCondition` varchar(255) NOT NULL,
  `VehicleDescription` varchar(255) DEFAULT NULL,
  `Make` varchar(255) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `QuotedPrice` int(11) NOT NULL,
  `VehicleStatus` varchar(255) NOT NULL,
  `SellerID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`VehicleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favoritecar`
--

LOCK TABLES `favoritecar` WRITE;
/*!40000 ALTER TABLE `favoritecar` DISABLE KEYS */;
INSERT INTO `favoritecar` VALUES ('001','Octivia','Sedan','Good','White Diesel','Skoda',2011,14000,'Available','00034');
/*!40000 ALTER TABLE `favoritecar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incident`
--

DROP TABLE IF EXISTS `incident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `incident` (
  `IncidentID` varchar(255) NOT NULL,
  `AnalystID` varchar(255) DEFAULT NULL,
  `VehicleID` varchar(255) DEFAULT NULL,
  `CreateDate` datetime NOT NULL,
  `AssignDate` datetime NOT NULL,
  `ClosedDate` datetime NOT NULL,
  `Priority` varchar(255) NOT NULL,
  `IncidentDescription` mediumtext NOT NULL,
  `Resolution` mediumtext NOT NULL,
  `ResolutionDate` datetime NOT NULL,
  PRIMARY KEY (`IncidentID`),
  KEY `AnalystID` (`AnalystID`),
  KEY `VehicleID` (`VehicleID`),
  CONSTRAINT `incident_ibfk_1` FOREIGN KEY (`AnalystID`) REFERENCES `analystaccount` (`AnalystID`),
  CONSTRAINT `incident_ibfk_2` FOREIGN KEY (`VehicleID`) REFERENCES `vehiclecatalogue` (`VehicleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incident`
--

LOCK TABLES `incident` WRITE;
/*!40000 ALTER TABLE `incident` DISABLE KEYS */;
INSERT INTO `incident` VALUES ('IM12668','Brendan78','0005','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','P3','Sample incident raised','Sample incident Resolved','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `incident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `UserID` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `AccountType` varchar(255) NOT NULL,
  `AccountStatus` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(10) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('kunal','root','Seller','Active','ksachdev1@hawk.iit.edu','3123839923','Bridgeport, Chiacgom, IL','Kunal','Sachdev'),('priyank','root','Buyer','Active','priyank687@gmail.com','3126473207','3001, S King Dr,Chicago,IL','Priyank','Rami'),('sahithk','root','Buyer','Active','skandel@gmail.com','3123367623','3001,S King Dr,Chicago,IL','SahithKumar','Andel'),('sandeep','root','Seller','Active','sandeep@gmail.com','3125346433','Bridgeport,Chiago,IL','Sandeep','N'),('sndeep','root','Seller','Active','sandeep@gmail.com','3125346433','Bridgeport,Chiago,IL','Sandeep','pq');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermessages`
--

DROP TABLE IF EXISTS `usermessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermessages` (
  `UserID` varchar(255) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DestinationUserID` varchar(255) NOT NULL,
  PRIMARY KEY (`Message`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `usermessages_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermessages`
--

LOCK TABLES `usermessages` WRITE;
/*!40000 ALTER TABLE `usermessages` DISABLE KEYS */;
INSERT INTO `usermessages` VALUES ('priyank','msg1','2016-06-27 16:42:26','sandeep');
/*!40000 ALTER TABLE `usermessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiclecatalogue`
--

DROP TABLE IF EXISTS `vehiclecatalogue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehiclecatalogue` (
  `VehicleID` varchar(255) NOT NULL,
  `VehicleName` varchar(255) NOT NULL,
  `VehicleType` varchar(255) NOT NULL,
  `VCondition` varchar(255) NOT NULL,
  `VehicleDescription` varchar(255) DEFAULT NULL,
  `Make` varchar(255) NOT NULL,
  `Year` int(11) DEFAULT NULL,
  `QuotedPrice` int(11) NOT NULL,
  `VehicleStatus` varchar(255) NOT NULL,
  `SellerID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`VehicleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiclecatalogue`
--

LOCK TABLES `vehiclecatalogue` WRITE;
/*!40000 ALTER TABLE `vehiclecatalogue` DISABLE KEYS */;
INSERT INTO `vehiclecatalogue` VALUES ('0001','Sonata','Sedan','Good','Silver color well maintained','Hundai',2008,8000,'Available','00056'),('0002','Accord','Sedan','Excellent','Golden Colored well maintained','Honda',2011,13000,'Available','00026'),('0003','Optima','Hatchback','Fair','White Modified','Kia',2005,2300,'Available','00057'),('0004','Accord','Sedan','Good','Company Fitted','Honda',2009,9700,'Available','00028'),('0005','Mazda6','Coupe','Excellent','Red Color','Mazda',2013,17000,'Available','00054');
/*!40000 ALTER TABLE `vehiclecatalogue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-30 16:00:59
