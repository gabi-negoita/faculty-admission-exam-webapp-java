-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: isi
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.14-MariaDB

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
-- Table structure for table `candidat`
--

DROP TABLE IF EXISTS `candidat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidat` (
  `cod_c` int(5) NOT NULL,
  `nume` varchar(20) NOT NULL,
  `init_tata` varchar(1) DEFAULT NULL,
  `prenume` varchar(20) NOT NULL,
  `cnp` char(13) NOT NULL,
  `data_n` date NOT NULL,
  `den_liceu` varchar(35) NOT NULL,
  `medie_liceu` float(4,2) NOT NULL,
  `medie_bac` float(4,2) NOT NULL,
  PRIMARY KEY (`cod_c`),
  UNIQUE KEY `cnp` (`cnp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidat`
--

LOCK TABLES `candidat` WRITE;
/*!40000 ALTER TABLE `candidat` DISABLE KEYS */;
INSERT INTO `candidat` VALUES (2,'Popa','B','Dragos','1726510278310','2002-11-04','Liceul Teoretic Mihai Barbu',8.46,9.54),(3,'Dumitru','B','Ionela','3965297012741','2002-12-02','Liceul Teoretic Mihai Kogalniceanu',6.78,7.35),(4,'Draghici','N','Angel','6531972391782','2002-12-02','Liceul Teoretic Mihai Kogalniceanu',7.45,8.43),(6,'Manole','T','Catalin','7419289471204','2002-10-22','Liceul Teoretic Nicolae Iorga',7.35,8.34);
/*!40000 ALTER TABLE `candidat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domeniu`
--

DROP TABLE IF EXISTS `domeniu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domeniu` (
  `cod_d` int(3) NOT NULL,
  `den_d` varchar(67) NOT NULL,
  `cod_f` int(2) NOT NULL,
  PRIMARY KEY (`cod_d`),
  KEY `cod_f` (`cod_f`),
  CONSTRAINT `domeniu_ibfk_1` FOREIGN KEY (`cod_f`) REFERENCES `facultate` (`cod_f`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domeniu`
--

LOCK TABLES `domeniu` WRITE;
/*!40000 ALTER TABLE `domeniu` DISABLE KEYS */;
INSERT INTO `domeniu` VALUES (111,'Inginerie mecanica',11),(112,'Inginerie industriala',11),(113,'Ingineria autovehiculelor',11),(114,'Ingineria mediului',11),(115,'Inginerie si management',11),(116,'Ingineria materialelor',11),(117,'Stiinte ingineresti aplicate',11),(121,'Arhitectura navala',12),(131,'Ingineria produselor alimentare',13),(132,'Zootehnie',13),(141,'Inginerie electronica, telecomunicatii si tehnologii informationale',14),(142,'Inginerie electrica',14),(143,'Ingineria sistemelor',14),(144,'Calculatoare si tehnologia informatiei',14),(151,'Educatie fizica si sport',15),(152,'Kinetoterapie',15),(153,'Stiinte ale educatiei',15),(161,'Limba si literatura',16),(162,'Limbi moderne aplicate',16),(163,'Stiinte ale comunicarii',16),(171,'Matematica',17),(172,'Stiinta mediului',17),(173,'Fizica',17),(174,'Chimie',17),(181,'Istorie',18),(182,'Relatii internationale si studii europene',18),(183,'Filosofie',18),(184,'Sociologie',18),(185,'Arte vizuale',18),(186,'Teologie',18),(191,'Inginerie mecanica',19),(192,'Inginerie si management',19),(193,'Agronomie',19),(201,'Marketing',20),(202,'Finante',20),(203,'Management',20),(204,'Administrarea afacerilor',20),(205,'Cibernetica, statistica si informatica economica',20),(206,'Contabilitate',20),(207,'Economie si afaceri internationale',20),(211,'Drept',21),(212,'Stiinte administrative',21),(221,'Sanatate',22),(231,'Teatru si artele spectacolului',23),(232,'Muzica',23),(233,'Arte vizuale',23);
/*!40000 ALTER TABLE `domeniu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examen`
--

DROP TABLE IF EXISTS `examen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examen` (
  `cod_e` int(2) NOT NULL,
  `den_e` varchar(68) NOT NULL,
  `locatie` varchar(10) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`cod_e`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examen`
--

LOCK TABLES `examen` WRITE;
/*!40000 ALTER TABLE `examen` DISABLE KEYS */;
INSERT INTO `examen` VALUES (1,'Test grila (30 intrebari) - Algebra (IX,X,XI)','AN101','2020-06-01'),(2,'Test grila (100 intrebari) - Biologie (XI)','AN102','2020-06-02'),(3,'Test grila (100 intrebari) - 60: Chimie organica + 40: Biologie (XI)','AN103','2020-06-03'),(4,'Test grila (100 intrebari) - 40: Chimie organica + 60: Biologie (XI)','AN104','2020-06-04'),(5,'Proba practica - Aptitudini motrice specifice','AN105','2020-06-05'),(6,'Proba practica - Desen si culoare','AN106','2020-06-06'),(7,'Proba practica - Calitati ritmice si muzicale','AN107','2020-06-07'),(8,'Proba practica - Canto','AN108','2020-06-08'),(9,'Proba practica - Desen','AN109','2020-06-09'),(10,'Interviu - Catehism si Mica Biblie','AN110','2020-06-10');
/*!40000 ALTER TABLE `examen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facultate`
--

DROP TABLE IF EXISTS `facultate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facultate` (
  `cod_f` int(2) NOT NULL,
  `den_f` varchar(60) NOT NULL,
  `adresa_f` varchar(40) NOT NULL,
  `cod_u` int(1) NOT NULL,
  PRIMARY KEY (`cod_f`),
  KEY `cod_u` (`cod_u`),
  CONSTRAINT `facultate_ibfk_1` FOREIGN KEY (`cod_u`) REFERENCES `universitate` (`cod_u`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facultate`
--

LOCK TABLES `facultate` WRITE;
/*!40000 ALTER TABLE `facultate` DISABLE KEYS */;
INSERT INTO `facultate` VALUES (11,'Inginerie','Str. Domneasca, Nr. 111, Galati',1),(12,'Arhitectura Navala','Str. Stiintei, Nr. 2, Galati',1),(13,'Stiinta si Ingineria Alimentelor','Str. Domneasca, Nr. 111, Galati',1),(14,'Automatica, Calculatoare, Inginerie Electrica si Electronica','Str. Stiintei, Nr. 2, Galati',1),(15,'Educatie Fizica si Sport','Str. Garii Nr. 63-65, Galati',1),(16,'Litere','Str. Domneasca, Nr. 111, Galati',1),(17,'Stiinte si Mediu','Str. Domneasca, Nr. 111, Galati',1),(18,'Istorie, Filosofie si Teologie','Str. Domneasca, Nr. 111, Galati',1),(19,'Inginerie si Agronomie din Braila','Str. Calarasilor, Nr. 29, Braila',1),(20,'Economie si Administrarea Afacerilor','Str. Nicolae Balcescu, Nr. 59-61, Galati',1),(21,'Stiinte Juridice, Sociale si Politice','Str. Domneasca, Nr. 111, Galati',1),(22,'Medicina si Farmacie','Str. Al. I. Cuza Nr. 35, Galati',1),(23,'Arte','Str. Domneasca, Nr. 111, Galati',1);
/*!40000 ALTER TABLE `facultate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loc`
--

DROP TABLE IF EXISTS `loc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loc` (
  `nr_locuri` int(4) NOT NULL,
  `buget_taxa` varchar(5) NOT NULL,
  `cod_s` int(4) NOT NULL,
  KEY `cod_s` (`cod_s`),
  CONSTRAINT `loc_ibfk_1` FOREIGN KEY (`cod_s`) REFERENCES `specializare` (`cod_s`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loc`
--

LOCK TABLES `loc` WRITE;
/*!40000 ALTER TABLE `loc` DISABLE KEYS */;
INSERT INTO `loc` VALUES (20,'buget',1111),(39,'taxa',1111),(20,'buget',1112),(39,'taxa',1112),(20,'buget',1121),(29,'taxa',1121),(30,'buget',1131),(5,'taxa',1131),(20,'buget',1141),(89,'taxa',1141),(20,'buget',1142),(89,'taxa',1142),(20,'buget',1151),(30,'taxa',1151),(20,'buget',1161),(23,'taxa',1161),(20,'buget',1162),(90,'taxa',1162),(20,'buget',1171),(90,'taxa',1171),(85,'buget',1211),(5,'taxa',1211),(85,'buget',1212),(5,'taxa',1212),(40,'buget',1311),(156,'taxa',1311),(40,'buget',1312),(156,'taxa',1312),(40,'buget',1313),(156,'taxa',1313),(0,'buget',1314),(35,'taxa',1314),(0,'buget',1315),(35,'taxa',1315),(20,'buget',1321),(30,'taxa',1321),(30,'buget',1411),(15,'taxa',1411),(40,'buget',1421),(20,'taxa',1421),(40,'buget',1422),(20,'taxa',1422),(28,'buget',1423),(2,'taxa',1423),(40,'buget',1431),(10,'taxa',1431),(72,'buget',1441),(14,'taxa',1441),(36,'buget',1511),(92,'taxa',1511),(18,'buget',1521),(55,'taxa',1521),(36,'buget',1531),(64,'taxa',1531),(40,'buget',1611),(110,'taxa',1611),(20,'buget',1612),(90,'taxa',1612),(20,'buget',1613),(78,'taxa',1613),(18,'buget',1621),(38,'taxa',1621),(17,'buget',1631),(30,'taxa',1631),(15,'buget',1711),(30,'taxa',1711),(15,'buget',1721),(30,'taxa',1721),(15,'buget',1731),(30,'taxa',1731),(15,'buget',1741),(15,'taxa',1741),(18,'buget',1811),(51,'taxa',1811),(18,'buget',1821),(32,'taxa',1821),(18,'buget',1831),(17,'taxa',1831),(18,'buget',1841),(82,'taxa',1841),(18,'buget',1842),(82,'taxa',1842),(18,'buget',1851),(29,'taxa',1851),(10,'buget',1861),(20,'taxa',1861),(40,'buget',1911),(56,'taxa',1911),(40,'buget',1912),(56,'taxa',1912),(40,'buget',1913),(56,'taxa',1913),(30,'buget',1921),(20,'taxa',1921),(30,'buget',1931),(20,'taxa',1931),(21,'buget',2011),(39,'taxa',2011),(21,'buget',2021),(38,'taxa',2021),(21,'buget',2031),(39,'taxa',2031),(21,'buget',2041),(38,'taxa',2041),(21,'buget',2042),(29,'taxa',2042),(28,'buget',2051),(32,'taxa',2051),(21,'buget',2061),(39,'taxa',2061),(21,'buget',2071),(37,'taxa',2071),(55,'buget',2111),(67,'taxa',2111),(35,'buget',2121),(38,'taxa',2121),(50,'buget',2211),(24,'taxa',2211),(65,'buget',2212),(10,'taxa',2212),(90,'buget',2213),(35,'taxa',2213),(10,'buget',2214),(30,'taxa',2214),(30,'buget',2215),(15,'taxa',2215),(30,'buget',2216),(15,'taxa',2216),(10,'buget',2311),(14,'taxa',2311),(10,'buget',2321),(13,'taxa',2321),(10,'buget',2331),(19,'taxa',2331);
/*!40000 ALTER TABLE `loc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `cod_u` int(3) NOT NULL,
  `time` datetime NOT NULL,
  `action` varchar(6) NOT NULL,
  `query` varchar(255) NOT NULL,
  KEY `cod_u` (`cod_u`),
  CONSTRAINT `log_ibfk_1` FOREIGN KEY (`cod_u`) REFERENCES `user` (`cod_u`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'2020-12-03 15:28:46','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ab\", [Liceu]: \"\"'),(1,'2020-12-03 15:28:46','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ab\", [Liceu]: \"\"'),(1,'2020-12-03 15:28:58','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ak;wj\", [Liceu]: \"\"'),(1,'2020-12-03 15:28:58','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ak;wjb\", [Liceu]: \"\"'),(1,'2020-12-03 15:28:58','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ak;wjb\", [Liceu]: \"\"'),(1,'2020-12-03 15:28:58','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ak;wjb\", [Liceu]: \"\"'),(1,'2020-12-03 15:28:58','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ak;wjb\", [Liceu]: \"\"'),(1,'2020-12-03 15:28:58','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ak;wjb\", [Liceu]: \"\"'),(5,'2020-12-03 16:46:33','SELECT','[Searched for Facultate] => Parameters: [Denumire]: \"in\"'),(5,'2020-12-03 16:46:33','SELECT','[Searched for Facultate] => Parameters: [Denumire]: \"ing\"'),(5,'2020-12-03 16:46:33','SELECT','[Searched for Facultate] => Parameters: [Denumire]: \"ing\"'),(1,'2020-12-03 16:47:26','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(5,'2020-12-03 16:47:47','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(6,'2020-12-04 14:57:47','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"a\", [Liceu]: \"\"'),(6,'2020-12-04 14:57:51','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"p\", [Liceu]: \"\"'),(6,'2020-12-04 14:57:51','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"po\", [Liceu]: \"\"'),(6,'2020-12-04 14:57:51','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"pop\", [Liceu]: \"\"'),(6,'2020-12-04 14:57:51','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"po\", [Liceu]: \"\"'),(6,'2020-12-04 14:57:52','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"p\", [Liceu]: \"\"'),(6,'2020-12-04 14:58:16','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceul Teoretic Nicolae Iorga\"'),(6,'2020-12-04 14:58:19','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceul meu XD\"'),(6,'2020-12-04 14:58:19','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceul Teoretic Ion Creanga\"'),(6,'2020-12-04 14:58:20','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceul Teoretic Ion Morar\"'),(6,'2020-12-04 14:58:20','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(6,'2020-12-04 14:58:20','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceul Teoretic Nicolae Iorga\"'),(6,'2020-12-04 14:58:20','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(6,'2020-12-04 14:58:20','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceul Teoretic Ion Morar\"'),(1,'2020-11-04 14:59:54','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"1265731682531\"'),(1,'2020-12-04 14:59:34','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"p\"'),(1,'2020-12-04 14:59:34','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"po\"'),(1,'2020-12-04 14:59:35','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"pop\"'),(1,'2020-12-04 14:59:35','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"popi\"'),(1,'2020-12-04 14:59:35','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"popica\"'),(1,'2020-12-04 14:59:35','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"popica\"'),(1,'2020-12-04 14:59:36','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"popic\"'),(1,'2020-12-04 14:59:36','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"p\"'),(1,'2020-12-04 14:59:36','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"po\"'),(1,'2020-12-04 14:59:36','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"pope\"'),(1,'2020-12-04 14:59:37','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"pope\"'),(1,'2020-12-04 14:59:37','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"popesc\"'),(1,'2020-12-04 14:59:37','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"popescu\"'),(1,'2020-12-04 14:59:37','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"popescu\"'),(1,'2020-12-04 14:59:39','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"popesc\"'),(1,'2020-12-04 14:59:39','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"popes\"'),(1,'2020-12-04 14:59:54','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"1276497126418\"'),(1,'2020-12-05 16:47:57','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"1276497126418\"'),(1,'2020-12-05 21:31:47','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"8712481274817\"'),(1,'2020-12-06 13:48:18','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"2222222222222\"'),(1,'2020-12-06 17:28:42','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"8715627961296\"'),(1,'2020-12-06 17:54:55','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"8127591256917\"'),(1,'2020-12-06 17:59:34','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"1234567891238\"'),(1,'2020-12-06 18:00:11','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"8127591256917\"'),(1,'2020-12-07 20:28:51','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"a\", [Liceu]: \"\"'),(1,'2020-12-07 20:28:51','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ab\", [Liceu]: \"\"'),(1,'2020-12-07 20:28:51','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"abc\", [Liceu]: \"\"'),(1,'2020-12-07 20:28:52','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"abc\", [Liceu]: \"\"'),(1,'2020-12-07 20:28:52','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"abc\", [Liceu]: \"\"'),(1,'2020-12-07 21:47:34','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"a\", [Liceu]: \"\"'),(1,'2020-12-07 21:47:35','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ab\", [Liceu]: \"\"'),(1,'2020-12-07 21:47:35','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"a\", [Liceu]: \"\"'),(1,'2020-12-07 21:47:36','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"de\", [Liceu]: \"\"'),(1,'2020-12-07 21:47:36','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"def\", [Liceu]: \"\"'),(1,'2020-12-07 21:47:36','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"def\", [Liceu]: \"\"'),(1,'2020-12-07 21:47:37','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"de\", [Liceu]: \"\"'),(1,'2020-12-07 21:47:37','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"d\", [Liceu]: \"\"'),(1,'2020-12-07 22:47:19','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"a\", [Liceu]: \"\"'),(1,'2020-12-07 22:47:20','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ab\", [Liceu]: \"\"'),(1,'2020-12-07 22:47:20','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"abc\", [Liceu]: \"\"'),(1,'2020-12-07 22:47:25','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"abc\", [Liceu]: \"Liceul Teoretic Ion Morar\"'),(1,'2020-12-07 22:47:28','SELECT','[Searched for Universitate] => Parameters: [Denumire]: \"a\"'),(1,'2020-12-07 22:47:33','SELECT','[Searched for Facultate] => Parameters: [Denumire]: \"a\"'),(1,'2020-12-07 22:47:34','SELECT','[Searched for Facultate] => Parameters: [Denumire]: \"ar\"'),(1,'2020-12-07 22:47:34','SELECT','[Searched for Facultate] => Parameters: [Denumire]: \"arh\"'),(1,'2020-12-07 22:47:37','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"in\"'),(1,'2020-12-07 22:47:38','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"ing\"'),(1,'2020-12-07 22:47:38','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"ing\"'),(1,'2020-12-07 22:47:38','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"ingi\"'),(1,'2020-12-07 22:47:39','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"ingine\"'),(1,'2020-12-07 22:47:39','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"inginer\"'),(1,'2020-12-07 22:47:39','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"ingineri\"'),(1,'2020-12-07 22:47:39','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"ingineri\"'),(1,'2020-12-07 22:47:39','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"inginerie \"'),(1,'2020-12-07 22:47:39','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"inginerie \"'),(1,'2020-12-07 22:47:39','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"inginerie me\"'),(1,'2020-12-07 22:47:39','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"inginerie me\"'),(1,'2020-12-07 22:47:46','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"ca\"'),(1,'2020-12-07 22:47:46','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"cal\"'),(1,'2020-12-07 22:47:46','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"calc\"'),(1,'2020-12-07 22:47:47','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"calc\"'),(1,'2020-12-07 22:47:47','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"calcu\"'),(1,'2020-12-07 22:47:50','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"calcu\"'),(1,'2020-12-07 22:49:04','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"a\", [Liceu]: \"\"'),(1,'2020-12-07 22:49:04','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ab\", [Liceu]: \"\"'),(1,'2020-12-07 22:49:07','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ab\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(1,'2020-12-07 22:49:08','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ab\", [Liceu]: \"Liceul Teoretic Ion Morar\"'),(1,'2020-12-07 22:49:08','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ab\", [Liceu]: \"Liceul Teoretic Ion Creanga\"'),(1,'2020-12-07 22:49:09','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ab\", [Liceu]: \"Liceul Teoretic Ion Morar\"'),(1,'2020-12-07 22:49:09','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ab\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(1,'2020-12-07 22:49:09','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ab\", [Liceu]: \"Liceul Teoretic Nicolae Iorga\"'),(1,'2020-12-07 22:49:10','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ab\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(1,'2020-12-07 22:49:10','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ab\", [Liceu]: \"Liceul Teoretic Ion Morar\"'),(1,'2020-12-07 22:49:10','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ab\", [Liceu]: \"Liceul Teoretic Ion Creanga\"'),(1,'2020-12-07 22:49:10','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ab\", [Liceu]: \"Liceul meu XD\"'),(1,'2020-12-07 22:49:10','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ab\", [Liceu]: \"\"'),(1,'2020-12-07 22:50:29','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"a\", [Liceu]: \"\"'),(1,'2020-12-07 22:50:30','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ab\", [Liceu]: \"\"'),(1,'2020-12-07 22:50:33','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"in\"'),(1,'2020-12-07 22:50:33','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"in\"'),(1,'2020-12-07 22:50:33','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"ing\"'),(1,'2020-12-07 23:03:39','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"7192561975619\"'),(1,'2020-12-07 23:04:34','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"2850175017581\"'),(1,'2020-12-07 23:05:12','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"gr\"'),(1,'2020-12-07 23:05:12','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"gr\"'),(1,'2020-12-07 23:05:12','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"gra\"'),(1,'2020-12-07 23:05:12','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"gr\"'),(1,'2020-12-07 23:05:13','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"g\"'),(1,'2020-12-07 23:05:13','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"d\"'),(1,'2020-12-07 23:05:14','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"du\"'),(1,'2020-12-07 23:05:15','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"d\"'),(1,'2020-12-07 23:07:00','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"1275192758175\"'),(1,'2020-12-07 23:15:42','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"1275192758175\"'),(1,'2020-12-07 23:58:25','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"a\", [Liceu]: \"\"'),(1,'2020-12-07 23:58:38','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"a\", [Liceu]: \"\"'),(1,'2020-12-07 23:59:00','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"a\", [Liceu]: \"\"'),(1,'2020-12-08 00:21:58','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"a\", [Liceu]: \"\"'),(1,'2020-12-08 01:06:48','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"1289182491824\"'),(1,'2020-12-08 01:08:32','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"1284918591825\"'),(1,'2020-12-08 01:09:08','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"1285921591825\"'),(1,'2020-12-08 01:11:39','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"3259328592835\"'),(1,'2020-12-08 01:16:39','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"7192561975619\"'),(1,'2020-12-08 01:16:48','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"1278418264821\"'),(1,'2020-12-08 15:21:35','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"1924918249128\"'),(1,'2020-12-08 15:22:02','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"1274921758175\"'),(1,'2020-12-08 15:23:48','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"8127481724812\"'),(1,'2020-12-08 15:24:14','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"7124817481724\"'),(1,'2020-12-08 15:27:41','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"2195719275211\"'),(1,'2020-12-08 15:31:20','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"8127591256917\"'),(1,'2020-12-08 15:31:46','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"8712481274817\"'),(1,'2020-12-08 15:31:50','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"8712481274817\"'),(1,'2020-12-08 15:31:50','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"8712481274817\"'),(1,'2020-12-08 15:31:54','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"8127591256917\"'),(1,'2020-12-08 15:31:58','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"8712481274817\"'),(1,'2020-12-08 15:32:13','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"1285921591825\"'),(1,'2020-12-08 15:32:29','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"7124817481724\"'),(1,'2020-12-08 15:33:37','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"1234567891236\"'),(1,'2020-12-08 15:33:45','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"1234567891236\"'),(1,'2020-12-08 15:33:53','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"1234567891236\"'),(1,'2020-12-08 15:34:24','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"1234567891236\"'),(1,'2020-12-08 17:59:54','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"8127481724812\"'),(1,'2020-12-08 18:00:05','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"3259328592835\"'),(1,'2020-12-08 18:01:18','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"2850175017581\"'),(1,'2020-12-08 18:01:23','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"2850175017581\"'),(15,'2020-12-09 20:43:13','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceu test\"'),(15,'2020-12-09 20:43:16','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(15,'2020-12-09 20:43:25','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"p\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(15,'2020-12-09 20:43:26','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(15,'2020-12-09 20:43:27','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"a\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(15,'2020-12-09 20:43:32','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(15,'2020-12-09 20:43:33','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"w\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(15,'2020-12-09 20:43:38','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(15,'2020-12-09 20:43:43','SELECT','[Searched for Universitate] => Parameters: [Denumire]: \"a\"'),(15,'2020-12-09 20:43:44','SELECT','[Searched for Universitate] => Parameters: [Denumire]: \"x\"'),(15,'2020-12-09 20:43:54','SELECT','[Searched for Facultate] => Parameters: [Denumire]: \"l\"'),(15,'2020-12-09 20:43:54','SELECT','[Searched for Facultate] => Parameters: [Denumire]: \"li\"'),(15,'2020-12-09 20:43:54','SELECT','[Searched for Facultate] => Parameters: [Denumire]: \"lit\"'),(15,'2020-12-09 20:44:00','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"in\"'),(15,'2020-12-09 20:44:00','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"in\"'),(15,'2020-12-09 20:44:00','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"i\"'),(15,'2020-12-09 20:44:00','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"a\"'),(15,'2020-12-09 20:44:01','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"ar\"'),(15,'2020-12-09 20:44:01','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"ar\"'),(15,'2020-12-09 20:44:01','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"art\"'),(15,'2020-12-09 20:44:13','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"a\"'),(15,'2020-12-09 20:44:13','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"ar\"'),(15,'2020-12-09 20:44:14','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"art\"'),(15,'2020-12-09 20:44:15','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"arte\"'),(15,'2020-12-09 20:44:16','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"art\"'),(15,'2020-12-09 20:44:17','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"arte\"'),(15,'2020-12-09 20:44:18','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"art\"'),(1,'2020-12-09 20:45:38','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"9157219571875\"'),(1,'2020-12-09 20:46:00','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"p\"'),(1,'2020-12-09 20:46:00','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"po\"'),(1,'2020-12-09 20:46:01','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"pop\"'),(1,'2020-12-09 20:46:01','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"pope\"'),(1,'2020-12-09 20:46:01','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"popesc\"'),(1,'2020-12-09 20:46:02','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"popescu\"'),(1,'2020-12-09 20:46:02','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"popescu\"'),(1,'2020-12-09 20:46:22','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"9157219571875\"'),(1,'2020-12-09 20:50:30','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"3259328592835\"'),(16,'2020-12-10 20:35:56','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"p\", [Liceu]: \"\"'),(16,'2020-12-10 20:35:56','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"po\", [Liceu]: \"\"'),(16,'2020-12-10 20:35:57','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"pop\", [Liceu]: \"\"'),(16,'2020-12-10 20:35:57','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"pope\", [Liceu]: \"\"'),(16,'2020-12-10 20:35:58','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"popes\", [Liceu]: \"\"'),(16,'2020-12-10 20:35:58','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"popesc\", [Liceu]: \"\"'),(16,'2020-12-10 20:35:58','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"popescu\", [Liceu]: \"\"'),(16,'2020-12-10 20:35:59','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"popesc\", [Liceu]: \"\"'),(16,'2020-12-10 20:35:59','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"popesci\", [Liceu]: \"\"'),(16,'2020-12-10 20:36:00','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"popesc\", [Liceu]: \"\"'),(16,'2020-12-10 20:36:01','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"popes\", [Liceu]: \"\"'),(16,'2020-12-10 20:36:01','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"pope\", [Liceu]: \"\"'),(16,'2020-12-10 20:36:02','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"s\", [Liceu]: \"\"'),(16,'2020-12-10 20:36:02','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ste\", [Liceu]: \"\"'),(16,'2020-12-10 20:36:02','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ste\", [Liceu]: \"\"'),(16,'2020-12-10 20:36:03','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"stef\", [Liceu]: \"\"'),(16,'2020-12-10 20:36:03','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ste\", [Liceu]: \"\"'),(16,'2020-12-10 20:36:03','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"st\", [Liceu]: \"\"'),(16,'2020-12-10 20:36:04','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"s\", [Liceu]: \"\"'),(16,'2020-12-10 20:36:05','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ca\", [Liceu]: \"\"'),(16,'2020-12-10 20:36:05','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"ca\", [Liceu]: \"\"'),(16,'2020-12-10 20:36:14','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(16,'2020-12-10 20:36:17','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"p\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(16,'2020-12-10 20:36:17','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"po\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(16,'2020-12-10 20:36:18','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"p\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(16,'2020-12-10 20:36:18','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(16,'2020-12-10 20:36:24','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"p\", [Liceu]: \"\"'),(16,'2020-12-10 20:36:24','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"po\", [Liceu]: \"\"'),(16,'2020-12-10 20:36:28','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"po\", [Liceu]: \"Liceul Teoretic Ion Morar\"'),(16,'2020-12-10 20:36:29','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"po\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(16,'2020-12-10 20:36:38','SELECT','[Searched for Universitate] => Parameters: [Denumire]: \"x\"'),(16,'2020-12-10 20:36:39','SELECT','[Searched for Universitate] => Parameters: [Denumire]: \"x\"'),(16,'2020-12-10 20:36:43','SELECT','[Searched for Facultate] => Parameters: [Denumire]: \"in\"'),(16,'2020-12-10 20:36:43','SELECT','[Searched for Facultate] => Parameters: [Denumire]: \"ing\"'),(16,'2020-12-10 20:36:43','SELECT','[Searched for Facultate] => Parameters: [Denumire]: \"ing\"'),(16,'2020-12-10 20:36:46','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"in\"'),(16,'2020-12-10 20:36:46','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"ing\"'),(16,'2020-12-10 20:36:46','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"ing\"'),(16,'2020-12-10 20:36:47','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"ingi\"'),(16,'2020-12-10 20:36:48','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"ingin\"'),(16,'2020-12-10 20:36:48','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"inginer\"'),(16,'2020-12-10 20:36:48','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"inginer\"'),(16,'2020-12-10 20:36:48','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"inginerie\"'),(16,'2020-12-10 20:36:48','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"inginerie\"'),(16,'2020-12-10 20:36:49','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"me\"'),(16,'2020-12-10 20:36:49','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"mec\"'),(16,'2020-12-10 20:36:49','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"mec\"'),(16,'2020-12-10 20:36:55','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"s\"'),(16,'2020-12-10 20:36:56','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"sis\"'),(16,'2020-12-10 20:36:56','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"sis\"'),(16,'2020-12-10 20:36:57','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"siste\"'),(16,'2020-12-10 20:36:57','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"sistem\"'),(16,'2020-12-10 20:36:57','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"sistem\"'),(1,'2020-12-10 20:38:49','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"3751273918274\"'),(1,'2020-12-10 20:39:09','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"p\"'),(1,'2020-12-10 20:39:09','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"po\"'),(1,'2020-12-10 20:39:09','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"pop\"'),(1,'2020-12-10 20:39:10','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"pope\"'),(1,'2020-12-10 20:39:10','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"popesc\"'),(1,'2020-12-10 20:39:10','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"popescu\"'),(1,'2020-12-10 20:39:10','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"popescu\"'),(1,'2020-12-10 20:39:23','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"3751273918274\"'),(1,'2020-12-11 18:46:55','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"8127591256917\"'),(1,'2020-12-11 18:46:57','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"8712481274817\"'),(1,'2020-12-11 18:46:59','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"2195719275211\"'),(1,'2020-12-11 18:47:01','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"1924918249128\"'),(1,'2020-12-11 18:47:03','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"1289182491824\"'),(1,'2020-12-11 18:47:05','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"1285921591825\"'),(1,'2020-12-11 18:47:07','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"8127481724812\"'),(1,'2020-12-11 18:47:11','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"1284918591825\"'),(1,'2020-12-11 18:47:13','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"1275192758175\"'),(1,'2020-12-11 18:47:18','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"7192561975619\"'),(1,'2020-12-11 18:47:20','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"2222222222222\"'),(1,'2020-12-11 18:47:21','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"2850175017581\"'),(1,'2020-12-11 18:47:23','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"1234567891238\"'),(1,'2020-12-11 18:47:25','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"1274921758175\"'),(1,'2020-12-11 18:47:27','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"1234567891234\"'),(1,'2020-12-11 18:47:28','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"8715627961296\"'),(1,'2020-12-11 18:47:30','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"1265731682531\"'),(1,'2020-12-11 18:47:32','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"1234567891237\"'),(1,'2020-12-11 18:47:34','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"9157219571875\"'),(1,'2020-12-11 18:47:35','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"3751273918274\"'),(1,'2020-12-11 18:47:37','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"1234567891235\"'),(1,'2020-12-11 18:48:51','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"2345643456789\"'),(1,'2020-12-11 18:49:58','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"1726510278310\"'),(1,'2020-12-11 18:51:11','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"3965297012741\"'),(1,'2020-12-11 18:52:10','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"6531972391782\"'),(1,'2020-12-11 18:53:18','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"4912831928319\"'),(1,'2020-12-11 18:53:49','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"P\", [Liceu]: \"\"'),(1,'2020-12-11 18:53:49','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"P\", [Liceu]: \"\"'),(1,'2020-12-11 18:53:50','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"p\", [Liceu]: \"\"'),(1,'2020-12-11 18:53:50','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"po\", [Liceu]: \"\"'),(1,'2020-12-11 18:53:51','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"p\", [Liceu]: \"\"'),(1,'2020-12-11 18:53:53','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"d\", [Liceu]: \"\"'),(1,'2020-12-11 18:53:55','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"du\", [Liceu]: \"\"'),(1,'2020-12-11 18:53:55','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"d\", [Liceu]: \"\"'),(1,'2020-12-11 18:53:56','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"d\", [Liceu]: \"\"'),(1,'2020-12-11 18:54:01','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"da\", [Liceu]: \"\"'),(1,'2020-12-11 18:54:01','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"da\", [Liceu]: \"\"'),(1,'2020-12-11 18:54:01','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"d\", [Liceu]: \"\"'),(1,'2020-12-11 18:54:03','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"mi\", [Liceu]: \"\"'),(1,'2020-12-11 18:54:03','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"mi\", [Liceu]: \"\"'),(1,'2020-12-11 18:54:03','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"m\", [Liceu]: \"\"'),(1,'2020-12-11 18:54:05','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"d\", [Liceu]: \"\"'),(1,'2020-12-11 18:54:06','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"dr\", [Liceu]: \"\"'),(1,'2020-12-11 18:54:20','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"dr\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(1,'2020-12-11 19:04:00','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"7419289471204\"'),(1,'2020-12-11 19:06:23','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"m\"'),(1,'2020-12-11 19:06:24','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"ma\"'),(1,'2020-12-11 19:06:24','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"m\"'),(1,'2020-12-11 19:06:30','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"m\"'),(1,'2020-12-11 19:08:10','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"m\"'),(1,'2020-12-11 19:08:12','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"ma\"'),(1,'2020-12-11 19:08:53','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"7419289471204\"'),(18,'2020-12-18 14:35:07','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"m\", [Liceu]: \"\"'),(18,'2020-12-18 14:35:12','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"p\", [Liceu]: \"\"'),(18,'2020-12-18 14:35:12','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"po\", [Liceu]: \"\"'),(18,'2020-12-18 14:35:12','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"pop\", [Liceu]: \"\"'),(18,'2020-12-18 14:35:13','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"po\", [Liceu]: \"\"'),(18,'2020-12-18 14:35:13','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"p\", [Liceu]: \"\"'),(18,'2020-12-18 14:35:15','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"b\", [Liceu]: \"\"'),(18,'2020-12-18 14:35:15','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"bu\", [Liceu]: \"\"'),(18,'2020-12-18 14:35:15','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"buc\", [Liceu]: \"\"'),(18,'2020-12-18 14:35:15','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"bucu\", [Liceu]: \"\"'),(18,'2020-12-18 14:35:16','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"buc\", [Liceu]: \"\"'),(18,'2020-12-18 14:35:16','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"bu\", [Liceu]: \"\"'),(18,'2020-12-18 14:35:16','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"b\", [Liceu]: \"\"'),(18,'2020-12-18 14:35:22','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceul Teoretic Nicolae Iorga\"'),(18,'2020-12-18 14:35:25','SELECT','[Searched for Candidat] => Parameters: [Nume]: \"\", [Liceu]: \"Liceul Teoretic Mihai Barbu\"'),(18,'2020-12-18 14:35:31','SELECT','[Searched for Universitate] => Parameters: [Denumire]: \"x\"'),(18,'2020-12-18 14:35:37','SELECT','[Searched for Facultate] => Parameters: [Denumire]: \"in\"'),(18,'2020-12-18 14:35:37','SELECT','[Searched for Facultate] => Parameters: [Denumire]: \"in\"'),(18,'2020-12-18 14:35:37','SELECT','[Searched for Facultate] => Parameters: [Denumire]: \"ingi\"'),(18,'2020-12-18 14:35:38','SELECT','[Searched for Facultate] => Parameters: [Denumire]: \"ingi\"'),(18,'2020-12-18 14:35:43','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"ca\"'),(18,'2020-12-18 14:35:43','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"cal\"'),(18,'2020-12-18 14:35:43','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"calc\"'),(18,'2020-12-18 14:35:43','SELECT','[Searched for Domeniu] => Parameters: [Denumire]: \"calc\"'),(18,'2020-12-18 14:35:47','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"ca\"'),(18,'2020-12-18 14:35:47','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"cal\"'),(18,'2020-12-18 14:35:47','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"calc\"'),(18,'2020-12-18 14:35:47','SELECT','[Searched for Specializare] => Parameters: [Denumire]: \"calc\"'),(1,'2020-12-18 14:37:52','INSERT','[Inserted Candidat] => Parameters: [CNP]: \"2387581274812\"'),(1,'2020-12-18 14:39:01','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"d\"'),(1,'2020-12-18 14:39:02','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"dra\"'),(1,'2020-12-18 14:39:02','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"dra\"'),(1,'2020-12-18 14:39:04','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"dr\"'),(1,'2020-12-18 14:39:05','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"d\"'),(1,'2020-12-18 14:39:05','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"d\"'),(1,'2020-12-18 14:39:05','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"dra\"'),(1,'2020-12-18 14:39:05','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"dra\"'),(1,'2020-12-18 14:39:10','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"ho\"'),(1,'2020-12-18 14:39:10','SELECT','[Searched for Candidat or CNP] => Parameters: [Keyword]: \"ho\"'),(1,'2020-12-18 14:39:17','UPDATE','[Updated Candidat] => Parameters: [CNP]: \"2387581274812\"'),(1,'2020-12-18 14:39:46','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"2345643456789\"'),(1,'2020-12-18 14:41:46','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"2387581274812\"'),(1,'2020-12-18 14:42:03','DELETE','[Deleted Candidat] => Parameters: [CNP]: \"4912831928319\"');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optiune_candidat`
--

DROP TABLE IF EXISTS `optiune_candidat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `optiune_candidat` (
  `cod_o` int(6) NOT NULL,
  `buget_taxa` varchar(5) NOT NULL,
  `cod_c` int(5) NOT NULL,
  `cod_s` int(4) NOT NULL,
  PRIMARY KEY (`cod_o`),
  KEY `cod_c` (`cod_c`),
  KEY `cod_s` (`cod_s`),
  CONSTRAINT `optiune_candidat_ibfk_1` FOREIGN KEY (`cod_c`) REFERENCES `candidat` (`cod_c`),
  CONSTRAINT `optiune_candidat_ibfk_2` FOREIGN KEY (`cod_s`) REFERENCES `specializare` (`cod_s`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optiune_candidat`
--

LOCK TABLES `optiune_candidat` WRITE;
/*!40000 ALTER TABLE `optiune_candidat` DISABLE KEYS */;
INSERT INTO `optiune_candidat` VALUES (4,'Buget',2,1441),(5,'Taxa',2,1441),(6,'Buget',2,1112),(7,'Buget',3,1311),(8,'Taxa',3,1311),(9,'Buget',3,1631),(10,'Buget',4,1441),(11,'Taxa',4,1441),(12,'Buget',4,1431),(16,'Buget',6,1441),(17,'Taxa',6,1441),(18,'Buget',6,1423);
/*!40000 ALTER TABLE `optiune_candidat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regula_admitere`
--

DROP TABLE IF EXISTS `regula_admitere`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regula_admitere` (
  `cod_r` int(2) NOT NULL,
  `descriere` varchar(92) NOT NULL,
  `cod_e` int(2) DEFAULT NULL,
  PRIMARY KEY (`cod_r`),
  KEY `cod_e` (`cod_e`),
  CONSTRAINT `regula_admitere_ibfk_1` FOREIGN KEY (`cod_e`) REFERENCES `examen` (`cod_e`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regula_admitere`
--

LOCK TABLES `regula_admitere` WRITE;
/*!40000 ALTER TABLE `regula_admitere` DISABLE KEYS */;
INSERT INTO `regula_admitere` VALUES (1,'Medie: 50% medie bacalaureat + 50% medie liceu',NULL),(2,'Medie: 50% medie bacalaureat + 50% nota examen',1),(3,'Certificat competenta lingvistica + Medie: 50% medie bacalaureat + 50% medie liceu',NULL),(4,'Testare capacitate motrica generala + Medie: 50% medie bacalaureat + 50% nota proba practica',5),(5,'Testare aptitudini pedagogice + Medie: 50% medie bacalaureat + 50% medie liceu',NULL),(6,'Testare aptitudini socio-umane + Medie: 50% medie bacalaureat + 50% nota proba practica',6),(7,'Testare aptitudini socio-umane + Medie: 50% medie bacalaureat + 50% nota interviu',10),(8,'Medie: 100% nota examen',2),(9,'Medie: 100% nota examen',3),(10,'Medie: 100% nota examen',4),(11,'Medie: 100% nota proba practica',7),(12,'Medie: 100% nota proba practica',8),(13,'Medie: 100% nota proba practica',9);
/*!40000 ALTER TABLE `regula_admitere` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rezultat`
--

DROP TABLE IF EXISTS `rezultat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rezultat` (
  `cod_c` int(5) NOT NULL,
  `cod_e` int(1) NOT NULL,
  `nota` float(4,2) NOT NULL,
  KEY `cod_c` (`cod_c`),
  KEY `cod_e` (`cod_e`),
  CONSTRAINT `rezultat_ibfk_1` FOREIGN KEY (`cod_c`) REFERENCES `candidat` (`cod_c`),
  CONSTRAINT `rezultat_ibfk_2` FOREIGN KEY (`cod_e`) REFERENCES `examen` (`cod_e`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rezultat`
--

LOCK TABLES `rezultat` WRITE;
/*!40000 ALTER TABLE `rezultat` DISABLE KEYS */;
INSERT INTO `rezultat` VALUES (2,1,0.00),(4,1,0.00),(6,1,0.00);
/*!40000 ALTER TABLE `rezultat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specializare`
--

DROP TABLE IF EXISTS `specializare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specializare` (
  `cod_s` int(4) NOT NULL,
  `den_s` varchar(79) NOT NULL,
  `durata_ani` int(1) NOT NULL,
  `cod_r` int(2) NOT NULL,
  `cod_d` int(3) NOT NULL,
  PRIMARY KEY (`cod_s`),
  KEY `cod_r` (`cod_r`),
  KEY `cod_d` (`cod_d`),
  CONSTRAINT `specializare_ibfk_1` FOREIGN KEY (`cod_r`) REFERENCES `regula_admitere` (`cod_r`),
  CONSTRAINT `specializare_ibfk_2` FOREIGN KEY (`cod_d`) REFERENCES `domeniu` (`cod_d`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specializare`
--

LOCK TABLES `specializare` WRITE;
/*!40000 ALTER TABLE `specializare` DISABLE KEYS */;
INSERT INTO `specializare` VALUES (1111,'Sisteme si echipamente termice',4,1,111),(1112,'Inginerie mecanica',4,1,111),(1121,'Tehnologia constructiilor de masini',4,1,112),(1131,'Autovehicule rutiere',4,1,113),(1141,'Ingineria si protectia mediului in industrie',4,1,114),(1142,'Amenajari hidrotehnice si protectia mediului',4,1,114),(1151,'Inginerie economica industriala',4,1,115),(1161,'Stiinta materialelor',4,1,116),(1162,'Informatica aplicata in ingineria materialelor',4,1,116),(1171,'Inginerie medicala',4,1,117),(1211,'Arhitectura navala',4,1,121),(1212,'Sisteme si echipamente navale',4,1,121),(1311,'Ingineria produselor alimentare',4,1,131),(1312,'Controlul si expertiza produselor alimentare',4,1,131),(1313,'Tehnologie si control in alimentatie publica',4,1,131),(1314,'Ingineria produselor alimentare (in limba engleza)',4,3,131),(1315,'Controlul si expertiza produselor alimentare (in limba engleza)',4,3,131),(1321,'Piscicultura si acvacultura',4,1,132),(1411,'Electronica aplicata',4,1,141),(1421,'Electronica de putere si actionari electrice',4,1,142),(1422,'Electromecanica',4,1,142),(1423,'Inginerie electrica si calculatoare',4,1,142),(1431,'Automatica si informatica aplicata',4,1,143),(1441,'Calculatoare',4,2,144),(1511,'Educatie fizica si sportiva',3,4,151),(1521,'Kinetoterapie si motricitate speciala',3,4,152),(1531,'Pedagogia invatamantului primar si prescolar',3,5,153),(1611,'Limba si literatura romana - engleza / Limba si literatura engleza - romana',3,1,161),(1612,'Limba si literatura romana - franceza / Limba si literatura franceza - romana',3,1,161),(1613,'Limba si literatura engleza - franceza / Limba si literatura franceza - engleza',3,1,161),(1621,'Limbi moderne aplicate (engleza-franceza)',3,1,162),(1631,'Jurnalism',3,1,163),(1711,'Matematica informatica',3,1,171),(1721,'Stiinta mediului',3,1,172),(1731,'Fizica medicala',3,1,173),(1741,'Chimie farmaceutica',3,1,174),(1811,'Istorie',3,1,181),(1821,'Relatii internationale si studii europene',3,1,182),(1831,'Filosofie',3,1,183),(1841,'Sociologie',3,1,184),(1842,'Resurse umane',3,1,184),(1851,'Arta sacra',3,6,185),(1861,'Teologie ortodoxa asistenta sociala',3,7,186),(1911,'Utilaje tehnologice pentru constructii',4,1,191),(1912,'Ingineria si managementul resurselor tehnologice in constructii',4,1,191),(1913,'Masini si instalatii pentru agricultura si industrie alimentara',4,1,191),(1921,'Inginerie economica in domeniul mecanic',4,1,192),(1931,'Agricultura',4,1,193),(2011,'Marketing',3,1,201),(2021,'Finante si banci',3,1,202),(2031,'Management',3,1,203),(2041,'Economia comertului, turismului si serviciilor',3,1,204),(2042,'Administrarea afacerilor in alimentatia publica',3,1,204),(2051,'Informatica economica',3,1,205),(2061,'Contabilitate si informatica de gestiune',3,1,206),(2071,'Afaceri internationale',3,1,207),(2111,'Drept',4,1,211),(2121,'Administratie publica',3,1,212),(2211,'Farmacie',5,9,221),(2212,'Medicina dentara',6,10,221),(2213,'Medicina',6,10,221),(2214,'Asistenta medicala generala',4,8,221),(2215,'Moase',4,8,221),(2216,'Tehnica dentara',3,8,221),(2311,'Artele spectacolului (actorie)',3,11,231),(2321,'Interpretare muzicala - canto',4,12,232),(2331,'Arte plastice (pictura)',3,13,233);
/*!40000 ALTER TABLE `specializare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universitate`
--

DROP TABLE IF EXISTS `universitate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `universitate` (
  `cod_u` int(1) NOT NULL,
  `den_u` varchar(28) NOT NULL,
  `adresa_u` varchar(30) NOT NULL,
  PRIMARY KEY (`cod_u`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `universitate`
--

LOCK TABLES `universitate` WRITE;
/*!40000 ALTER TABLE `universitate` DISABLE KEYS */;
INSERT INTO `universitate` VALUES (1,'Universitatea Dunarea de Jos','Str. Domneasca, Nr. 47, Galati');
/*!40000 ALTER TABLE `universitate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `cod_u` int(3) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `username` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role` varchar(13) NOT NULL,
  PRIMARY KEY (`cod_u`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'POPESCU','VASILE','adm','123','ADMINISTRATOR'),(2,'IONESCU','GIGEL','mgr','123','MANAGER'),(3,'DUMITRU','IONEL','cnd','123','CANDIDAT'),(4,'CE FACI','BUNA','cand1','abc','CANDIDAT'),(5,'IONEL','POPESCU','pionel','qwerty','CANDIDAT'),(6,'IOAN','POPESCU','abcdef','123','CANDIDAT'),(7,'ALEX','POPA','abc123','123','CANDIDAT'),(8,'MARIA','POPA','popa123','123','CANDIDAT'),(9,'IONEL','POPESCU','abc','123','CANDIDAT'),(10,'KAWJBF','KLAWJBF','adm1','123','CANDIDAT'),(11,'LKAJBWF','AUWBF','alkwjfb','123','CANDIDAT'),(12,'LKJABWF','ALWKBF','klaklwjfb','123','CANDIDAT'),(13,'LKKJABSFL','AKLSBD','adm2','123','CANDIDAT'),(14,'AWKWLB','ALWHFB','adm6','123','CANDIDAT'),(15,'MARIAN','POPESCU','pop_marian','123','CANDIDAT'),(16,'IONEL','POPESCU','pio100','123','CANDIDAT'),(17,'KJASBSF','LKASBF','pio101','123','CANDIDAT'),(18,'HOGN','POPESCU','pop123','123','CANDIDAT');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-19 17:08:10
