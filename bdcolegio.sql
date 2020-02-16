-- MySQL dump 10.12
--
-- Host: localhost    Database: bdcolegio
-- ------------------------------------------------------
-- Server version	6.0.0-alpha-community-nt-debug

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
-- Table structure for table `tblestudiante`
--

DROP TABLE IF EXISTS `tblestudiante`;
CREATE TABLE `tblestudiante` (
  `tipodoc` tinyint(4) NOT NULL,
  `numero` int(12) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `fnacimiento` date DEFAULT NULL,
  PRIMARY KEY (`numero`),
  KEY `tipodoc` (`tipodoc`),
  CONSTRAINT `tblestudiante_ibfk_1` FOREIGN KEY (`tipodoc`) REFERENCES `tbltipodocumento` (`idtipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblestudiante`
--

LOCK TABLES `tblestudiante` WRITE;
/*!40000 ALTER TABLE `tblestudiante` DISABLE KEYS */;
INSERT INTO `tblestudiante` VALUES (1,1234567890,'Juana de Arco','2000-01-02');
/*!40000 ALTER TABLE `tblestudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltipodocumento`
--

DROP TABLE IF EXISTS `tbltipodocumento`;
CREATE TABLE `tbltipodocumento` (
  `idtipo` tinyint(4) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`idtipo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltipodocumento`
--

LOCK TABLES `tbltipodocumento` WRITE;
/*!40000 ALTER TABLE `tbltipodocumento` DISABLE KEYS */;
INSERT INTO `tbltipodocumento` VALUES (1,'Tarjeta de Identidad'),(3,'Cedula'),(4,'cristian');
/*!40000 ALTER TABLE `tbltipodocumento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-16 18:32:29
