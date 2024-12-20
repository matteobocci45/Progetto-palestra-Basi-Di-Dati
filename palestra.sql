-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: palestra
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `abbonamento`
--

DROP TABLE IF EXISTS `abbonamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `abbonamento` (
  `ID_abbonamento` int(11) NOT NULL AUTO_INCREMENT,
  `prezzo` decimal(6,2) NOT NULL,
  `scadenza` date DEFAULT NULL,
  `tipologia` varchar(20) NOT NULL,
  `n_ingressi_eff` int(2) DEFAULT NULL,
  `n_ingressi_disp` int(2) DEFAULT NULL,
  `cf` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`ID_abbonamento`),
  CONSTRAINT `abbonamento_chk_1` CHECK ((`prezzo` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abbonamento`
--

LOCK TABLES `abbonamento` WRITE;
/*!40000 ALTER TABLE `abbonamento` DISABLE KEYS */;
INSERT INTO `abbonamento` VALUES (1,360.00,'2018-01-08','annuale',NULL,NULL,'DMTDVD88T10F205L'),(2,40.00,'2017-03-13','mensile',NULL,NULL,'GRTBRS92D43B734O'),(3,120.00,'2018-06-30','trimestrale',NULL,NULL,'BCCMTT98S10C770S'),(4,120.00,'2019-06-20','trimestrale',NULL,NULL,'NTNLRZ98R44I156Z'),(5,360.00,'2019-12-12','annuale',NULL,NULL,'CPNLNZ98B12C770C'),(6,120.00,'2018-01-22','trimestrale',NULL,NULL,'RSSLNE98B45E783Z'),(7,50.00,'2019-05-07','mensile',NULL,NULL,'MROMRC85E04D542F'),(8,210.00,'2018-08-28','semestrale',NULL,NULL,'CPLFRC80T07G919I'),(9,210.00,'2019-09-04','semestrale',NULL,NULL,'TSTFPP90T23B157G'),(10,120.00,'2019-12-17','trimestrale',NULL,NULL,'BLRDTT96P41B468U'),(11,40.00,'2017-07-18','mensile',NULL,NULL,'GTTMTT90A05F552A'),(12,50.00,'2018-01-15','mensile',NULL,NULL,'LCNBTR92R48A271G'),(13,40.00,'2018-05-16','mensile',NULL,NULL,'GCMLNZ98H12G920R'),(14,50.00,'2019-11-22','mensile',NULL,NULL,'VRDCHR97E45A271C'),(15,110.00,'2017-03-17','trimestrale',NULL,NULL,'PTNTZN79S12A462F'),(16,210.00,'2019-05-13','semestrale',NULL,NULL,'DMTDVD88T10F205L'),(17,40.00,'2016-12-30','mensile',NULL,NULL,'CLMMRC93R63G479O'),(18,40.00,'2017-01-02','mensile',NULL,NULL,'CZZNRC96P23A662L'),(19,360.00,'2019-09-18','annuale',NULL,NULL,'BNCLNR90B60A271C'),(20,360.00,'2020-11-25','annuale',NULL,NULL,'BBRMTT98P01D542H'),(21,360.00,'2020-04-30','annuale',NULL,NULL,'DMTDVD88T10F205L'),(22,360.00,'2019-02-14','annuale',NULL,NULL,'GRTBRS92D43B734O'),(23,360.00,'2020-02-15','annuale',NULL,NULL,'GRTBRS92D43B734O'),(24,120.00,'2019-07-02','trimestrale',NULL,NULL,'BCCMTT98S10C770S'),(25,120.00,'2018-06-18','trimestrale',NULL,NULL,'NTNLRZ98R44I156Z'),(26,210.00,'2019-12-10','semestrale',NULL,NULL,'RSSLNE98B45E783Z'),(27,60.00,NULL,'10 ingressi',0,10,'MROMRC85E04D542F'),(28,60.00,NULL,'10 ingressi',1,9,'CPLFRC80T07G919I'),(29,60.00,NULL,'10 ingressi',0,10,'CPLFRC80T07G919I'),(30,40.00,'2019-06-30','mensile',NULL,NULL,'LCNBTR92R48A271G'),(31,40.00,'2019-07-30','mensile',NULL,NULL,'LCNBTR92R48A271G'),(32,360.00,'2019-10-01','annuale',NULL,NULL,'PTNTZN79S12A462F'),(33,360.00,'2020-10-02','annuale',NULL,NULL,'PTNTZN79S12A462F'),(34,50.00,'2017-08-10','mensile',NULL,NULL,'DMTDVD88T10F205L'),(35,40.00,'2019-01-03','mensile',NULL,NULL,'DMEMTT94C07A271C'),(36,120.00,'2018-04-11','trimestrale',NULL,NULL,'CLMMRC93R63G479O'),(37,120.00,'2019-05-26','trimestrale',NULL,NULL,'CZZNRC96P23A662L');
/*!40000 ALTER TABLE `abbonamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accordo`
--

DROP TABLE IF EXISTS `accordo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accordo` (
  `giorno` varchar(9) NOT NULL,
  `ora_inizio` time NOT NULL,
  `ora_fine` time NOT NULL,
  `cf` varchar(16) NOT NULL,
  PRIMARY KEY (`giorno`,`ora_inizio`,`ora_fine`,`cf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accordo`
--

LOCK TABLES `accordo` WRITE;
/*!40000 ALTER TABLE `accordo` DISABLE KEYS */;
INSERT INTO `accordo` VALUES ('giovedi','09:00:00','14:30:00','NGRNDR95A28C100S'),('giovedi','09:00:00','14:30:00','QNTFRC96H22A271H'),('giovedi','09:00:00','14:30:00','VGNLRD92R07A271O'),('giovedi','10:00:00','11:00:00','BNDLRA91S45D542H'),('giovedi','13:30:00','14:30:00','SBRMRC90M07A271H'),('giovedi','16:00:00','17:30:00','RSTSRA92E48A271D'),('giovedi','16:00:00','21:30:00','NGRNDR95A28C100S'),('giovedi','16:00:00','21:30:00','QNTFRC96H22A271H'),('giovedi','16:00:00','21:30:00','VGNLRD92R07A271O'),('giovedi','17:00:00','18:00:00','RNLLCU02R15G157K'),('giovedi','18:00:00','19:00:00','MVTCLI88C07A271B'),('giovedi','19:00:00','20:00:00','SBRMRC90M07A271H'),('giovedi','20:00:00','21:00:00','CSTSRA98R49A271H'),('lunedi','07:30:00','08:30:00','TSSVNC88M41A271S'),('lunedi','07:30:00','11:00:00','NGRNDR95A28C100S'),('lunedi','07:30:00','11:00:00','VGNLRD92R07A271O'),('lunedi','10:00:00','12:00:00','PRZRKY95S22A271N'),('lunedi','10:00:00','12:00:00','QNTFRC96H22A271H'),('lunedi','10:00:00','12:30:00','RSTSRA92E48A271D'),('lunedi','13:30:00','14:30:00','TPOSMN88B14L500V'),('lunedi','15:00:00','21:30:00','QNTFRC96H22A271H'),('lunedi','16:00:00','17:30:00','RSTSRA92E48A271D'),('lunedi','17:00:00','18:00:00','BNDLRA91S45D542H'),('lunedi','17:00:00','18:00:00','KRSZRT85A02F839F'),('lunedi','18:00:00','19:00:00','CNNSML91P25C770W'),('lunedi','18:00:00','19:00:00','KRSZRT85A02F839F'),('lunedi','19:00:00','20:00:00','MCALSM88R15D643F'),('lunedi','20:00:00','21:30:00','SBRMRC90M07A271H'),('martedi','07:30:00','12:30:00','NGRNDR95A28C100S'),('martedi','07:30:00','12:30:00','QNTFRC96H22A271H'),('martedi','07:30:00','12:30:00','VGNLRD92R07A271O'),('martedi','10:00:00','11:30:00','KRSZRT85A02F839F'),('martedi','13:30:00','14:30:00','PRZRKY95S22A271N'),('martedi','13:30:00','14:30:00','SBRMRC90M07A271H'),('martedi','13:30:00','17:30:00','QNTFRC96H22A271H'),('martedi','15:00:00','17:00:00','RSTSRA92E48A271D'),('martedi','15:30:00','21:30:00','NGRNDR95A28C100S'),('martedi','15:30:00','21:30:00','VGNLRD92R07A271O'),('martedi','17:00:00','18:00:00','PRZRKY95S22A271N'),('martedi','17:00:00','18:00:00','RNLLCU02R15G157K'),('martedi','18:00:00','19:00:00','MVTCLI88C07A271B'),('martedi','18:00:00','19:00:00','PRZRKY95S22A271N'),('martedi','20:00:00','21:00:00','CSTSRA98R49A271H'),('mercoledi','07:30:00','08:30:00','TSSVNC88M41A271S'),('mercoledi','07:30:00','09:30:00','KRSZRT85A02F839F'),('mercoledi','07:30:00','12:30:00','NGRNDR95A28C100S'),('mercoledi','07:30:00','12:30:00','VGNLRD92R07A271O'),('mercoledi','10:30:00','18:30:00','QNTFRC96H22A271H'),('mercoledi','13:30:00','14:30:00','KRSZRT85A02F839F'),('mercoledi','13:30:00','14:30:00','TPOSMN88B14L500V'),('mercoledi','14:30:00','21:30:00','NGRNDR95A28C100S'),('mercoledi','14:30:00','21:30:00','VGNLRD92R07A271O'),('mercoledi','17:00:00','18:00:00','PRZRKY95S22A271N'),('mercoledi','18:00:00','19:00:00','BNDLRA91S45D542H'),('mercoledi','18:00:00','19:00:00','CNNSML91P25C770W'),('mercoledi','18:00:00','19:00:00','PRZRKY95S22A271N'),('mercoledi','19:00:00','20:00:00','BNDLRA91S45D542H'),('mercoledi','19:00:00','20:00:00','MCALSM88R15D643F'),('mercoledi','20:00:00','21:30:00','SBRMRC90M07A271H'),('sabato','09:00:00','14:30:00','NGRNDR95A28C100S'),('sabato','09:00:00','14:30:00','VGNLRD92R07A271O'),('sabato','13:30:00','14:30:00','MVTCLI88C07A271B'),('sabato','14:30:00','15:30:00','PRZRKY95S22A271N'),('sabato','14:30:00','15:30:00','SBRMRC90M07A271H'),('venerdi','07:30:00','08:30:00','TSSVNC88M41A271S'),('venerdi','10:00:00','13:30:00','QNTFRC96H22A271H'),('venerdi','13:30:00','14:30:00','PRZRKY95S22A271N'),('venerdi','13:30:00','14:30:00','TPOSMN88B14L500V'),('venerdi','13:30:00','15:30:00','KRSZRT85A02F839F'),('venerdi','13:30:00','19:30:00','NGRNDR95A28C100S'),('venerdi','13:30:00','19:30:00','VGNLRD92R07A271O'),('venerdi','17:20:00','18:00:00','RSTSRA92E48A271D'),('venerdi','18:00:00','19:00:00','CNNSML91P25C770W'),('venerdi','18:00:00','19:00:00','PRZRKY95S22A271N'),('venerdi','19:00:00','20:00:00','MCALSM88R15D643F');
/*!40000 ALTER TABLE `accordo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attivita_extra`
--

DROP TABLE IF EXISTS `attivita_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attivita_extra` (
  `nome` varchar(20) NOT NULL,
  `costo` decimal(5,2) NOT NULL,
  `cf` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`nome`),
  CONSTRAINT `attivita_extra_chk_1` CHECK ((`costo` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attivita_extra`
--

LOCK TABLES `attivita_extra` WRITE;
/*!40000 ALTER TABLE `attivita_extra` DISABLE KEYS */;
INSERT INTO `attivita_extra` VALUES ('barbiere',15.00,'PRZRKY95S22A271N'),('estetista',10.00,'RSTSRA92E48A271D'),('fisioterapista',50.00,'KRSZRT85A02F839F'),('nutrizionista',30.00,'BNDLRA91S45D542H');
/*!40000 ALTER TABLE `attivita_extra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `cf` varchar(16) NOT NULL,
  `sesso` varchar(1) NOT NULL,
  `data_registrazione` date NOT NULL,
  PRIMARY KEY (`cf`),
  CONSTRAINT `cliente_chk_1` CHECK (((`sesso` = _utf8mb4'M') or (`sesso` = _utf8mb4'F')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('BBRMTT98P01D542H','M','2019-11-25'),('BCCMTT98S10C770S','M','2018-03-30'),('BLRDTT96P41B468U','F','2018-09-07'),('BNCLNR90B60A271C','F','2018-03-23'),('CLMMRC93R63G479O','F','2016-11-30'),('CPLFRC80T07G919I','M','2018-02-28'),('CPNLNZ98B12C770C','M','2018-12-11'),('CZZNRC96P23A662L','M','2016-12-02'),('DMEMTT94C07A271C','M','2018-11-13'),('DMTDVD88T10F205L','M','2017-01-08'),('GCMLNZ98H12G920R','M','2018-04-16'),('GRTBRS92D43B734O','F','2017-02-13'),('GTTMTT90A05F552A','M','2017-06-16'),('LCNBTR92R48A271G','F','2017-12-15'),('MROMRC85E04D542F','M','2017-11-04'),('NTNLRZ98R44I156Z','F','2018-11-05'),('PTNTZN79S12A462F','M','2016-12-17'),('RSSLNE98B45E783Z','F','2017-10-02'),('TSTFPP90T23B157G','M','2019-03-04'),('VRDCHR97E45A271C','F','2017-05-01');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `composizione`
--

DROP TABLE IF EXISTS `composizione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `composizione` (
  `allenamento` decimal(2,0) NOT NULL,
  `cod_scheda_tecnica` int(11) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `serie` decimal(1,0) NOT NULL,
  `ripetizioni` decimal(2,0) NOT NULL,
  PRIMARY KEY (`allenamento`,`cod_scheda_tecnica`,`nome`,`serie`,`ripetizioni`),
  CONSTRAINT `composizione_chk_1` CHECK ((`allenamento` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `composizione`
--

LOCK TABLES `composizione` WRITE;
/*!40000 ALTER TABLE `composizione` DISABLE KEYS */;
INSERT INTO `composizione` VALUES (1,1,'Addominali',4,10),(1,1,'Croci panca inclinata',3,10),(1,1,'Curl manubri',4,8),(1,1,'Diamond push-up',4,10),(1,1,'Panca piana',5,5),(1,2,'Curl manubri',3,12),(1,2,'French press',3,12),(1,2,'Panca piana',6,8),(1,2,'Pull-up',4,12),(1,2,'Squat',6,4),(1,3,'Arnold press',3,12),(1,3,'Chin-up',3,12),(1,3,'Croci panca inclinata',3,10),(1,3,'Hollow hold',4,1),(1,3,'Pull-up',5,8),(1,3,'Rematore manubri',3,12),(1,4,'Arnold press',3,12),(1,4,'Chin-up',3,12),(1,4,'Croci panca inclinata',3,10),(1,4,'Hollow hold',4,1),(1,4,'Pull-up',5,8),(1,4,'Rematore manubri',3,12),(1,5,'Croci panca inclinata',3,8),(1,5,'Panca piana',6,8),(1,5,'Push-up',3,12),(1,5,'Squat',5,5),(1,6,'Croci panca inclinata',3,8),(1,6,'Panca piana',6,8),(1,6,'Push-up',3,12),(1,6,'Squat',5,5),(1,7,'Addominali',4,10),(1,7,'Alzate laterali',3,12),(1,7,'Curl manubri',3,12),(1,7,'French press',4,8),(1,7,'Panca piana',5,5),(1,7,'Pull-up',5,8),(1,7,'Push-up',3,12),(1,7,'Squat',5,5),(1,8,'Croci panca inclinata',3,8),(1,8,'Panca piana',5,5),(1,8,'Pullover',3,12),(1,8,'Push-up',4,10),(1,8,'Rematore bilanciare',3,12),(1,9,'Arnold press',3,12),(1,9,'Hollow hold',4,1),(1,9,'Panca piana',6,8),(1,9,'Push-up',3,12),(1,9,'Rematore manubri',3,12),(1,9,'Stacchi da terra',4,10),(1,10,'Arnold press',3,12),(1,10,'Chin-up',3,12),(1,10,'Croci panca inclinata',3,10),(1,10,'Hollow hold',4,1),(1,10,'Pull-up',5,8),(1,10,'Rematore manubri',3,12),(1,11,'Addominali',4,10),(1,11,'Alzate laterali',4,10),(1,11,'Chin-up',4,8),(1,11,'Curl manubri',3,12),(1,11,'French press',3,12),(1,11,'Panca piana',6,8),(1,11,'Pull-up',5,8),(1,11,'Squat',5,5),(1,12,'Croci panca inclinata',3,8),(1,12,'Panca piana',6,8),(1,12,'Push-up',3,12),(1,12,'Squat',5,5),(1,13,'Curl manubri',3,12),(1,13,'French press',3,12),(1,13,'Panca piana',6,8),(1,13,'Pull-up',4,12),(1,13,'Squat',6,4),(1,14,'Croci panca inclinata',3,8),(1,14,'Panca piana',6,8),(1,14,'Push-up',3,12),(1,14,'Squat',5,5),(1,15,'Croci panca inclinata',3,10),(1,15,'Panca piana',5,5),(1,15,'Push-up',3,12),(1,16,'Arnold press',3,12),(1,16,'Hollow hold',4,1),(1,16,'Panca piana',6,8),(1,16,'Push-up',3,12),(1,16,'Rematore manubri',3,12),(1,16,'Stacchi da terra',4,10),(1,17,'Chin-up',3,12),(1,17,'Panca piana',5,5),(1,17,'Pull-up',5,8),(1,17,'Squat',5,5),(1,18,'Addominali',4,10),(1,18,'Croci panca inclinata',3,10),(1,18,'Curl manubri',4,8),(1,18,'Diamond push-up',4,10),(1,18,'Panca piana',5,5),(1,19,'Addominali',4,10),(1,19,'Croci panca inclinata',3,10),(1,19,'Curl manubri',4,8),(1,19,'Diamond push-up',4,10),(1,19,'Panca piana',5,5),(1,20,'Alzate laterali',3,12),(1,20,'Croci panca inclinata',3,10),(1,20,'French press',4,10),(1,20,'Stacchi da terra',4,10),(1,21,'Alzate laterali',3,12),(1,21,'Croci panca inclinata',3,10),(1,21,'French press',4,10),(1,21,'Stacchi da terra',4,10),(1,22,'Chin-up',3,12),(1,22,'Panca piana',5,5),(1,22,'Pull-up',5,8),(1,22,'Squat',5,5),(1,23,'Alzate laterali',3,12),(1,23,'Croci panca inclinata',3,10),(1,23,'French press',4,10),(1,23,'Stacchi da terra',4,10),(1,24,'Addominali',4,10),(1,24,'Croci panca inclinata',3,10),(1,24,'Curl manubri',4,8),(1,24,'Diamond push-up',4,10),(1,24,'Panca piana',5,5),(1,25,'Arnold press',3,12),(1,25,'Hollow hold',4,1),(1,25,'Panca piana',6,8),(1,25,'Push-up',3,12),(1,25,'Rematore manubri',3,12),(1,25,'Stacchi da terra',4,10),(1,26,'Chin-up',3,12),(1,26,'Panca piana',5,5),(1,26,'Pull-up',5,8),(1,26,'Squat',5,5),(1,27,'Arnold press',3,12),(1,27,'Chin-up',3,12),(1,27,'Croci panca inclinata',3,10),(1,27,'Hollow hold',4,1),(1,27,'Pull-up',5,8),(1,27,'Rematore manubri',3,12),(2,1,'Addominali',3,20),(2,1,'Affondi bulgari',4,8),(2,1,'Leg curl',4,10),(2,1,'Leg ext',3,10),(2,1,'Plank',4,1),(2,1,'Squat',5,5),(2,2,'Affondi bulgari',3,8),(2,2,'Hollow hold',4,1),(2,2,'Leg ext',3,10),(2,2,'Pullover',3,12),(2,2,'Stacchi da terra',4,10),(2,3,'Addominali',3,20),(2,3,'Affondi bulgari',3,8),(2,3,'Leg curl',4,10),(2,3,'Leg ext',3,10),(2,3,'Squat',6,4),(2,4,'Addominali',3,20),(2,4,'Affondi bulgari',3,8),(2,4,'Leg curl',4,10),(2,4,'Leg ext',3,10),(2,4,'Squat',6,4),(2,5,'Addominali',3,20),(2,5,'Curl hammer',4,8),(2,5,'Curl manubri',4,8),(2,5,'French press',4,10),(2,5,'Rematore manubri',3,12),(2,6,'Addominali',3,20),(2,6,'Curl hammer',4,8),(2,6,'Curl manubri',4,8),(2,6,'French press',4,10),(2,6,'Rematore manubri',3,12),(2,8,'Affondi bulgari',4,8),(2,8,'Diamond push-up',4,10),(2,8,'Leg ext',3,10),(2,8,'Panca piana',5,5),(2,8,'Stacchi da terra',4,10),(2,9,'Affondi bulgari',4,8),(2,9,'Leg curl',4,10),(2,9,'Leg ext',3,10),(2,9,'Squat',5,5),(2,10,'Addominali',3,20),(2,10,'Affondi bulgari',3,8),(2,10,'Leg curl',4,10),(2,10,'Leg ext',3,10),(2,10,'Squat',6,4),(2,12,'Addominali',3,20),(2,12,'Curl hammer',4,8),(2,12,'Curl manubri',4,8),(2,12,'French press',4,10),(2,12,'Rematore manubri',3,12),(2,13,'Affondi bulgari',3,8),(2,13,'Hollow hold',4,1),(2,13,'Leg ext',3,10),(2,13,'Pullover',3,12),(2,13,'Stacchi da terra',4,10),(2,14,'Addominali',3,20),(2,14,'Curl hammer',4,8),(2,14,'Curl manubri',4,8),(2,14,'French press',4,10),(2,14,'Rematore manubri',3,12),(2,15,'Curl hammer',3,12),(2,15,'Curl manubri',4,8),(2,15,'French press',4,8),(2,16,'Affondi bulgari',4,8),(2,16,'Leg curl',4,10),(2,16,'Leg ext',3,10),(2,16,'Squat',5,5),(2,17,'Arnold press',4,10),(2,17,'Curl hammer',4,10),(2,17,'French press',4,10),(2,17,'Rematore manubri',4,8),(2,18,'Addominali',3,20),(2,18,'Affondi bulgari',4,8),(2,18,'Leg curl',4,10),(2,18,'Leg ext',3,10),(2,18,'Plank',4,1),(2,18,'Squat',5,5),(2,19,'Addominali',3,20),(2,19,'Affondi bulgari',4,8),(2,19,'Leg curl',4,10),(2,19,'Leg ext',3,10),(2,19,'Plank',4,1),(2,19,'Squat',5,5),(2,20,'Curl hammer',4,10),(2,20,'Curl manubri',4,8),(2,20,'Diamond push-up',4,10),(2,20,'Pull-up',5,8),(2,20,'Pulley elastico',3,12),(2,20,'Pullover',3,12),(2,21,'Curl hammer',4,10),(2,21,'Curl manubri',4,8),(2,21,'Diamond push-up',4,10),(2,21,'Pull-up',5,8),(2,21,'Pulley elastico',3,12),(2,21,'Pullover',3,12),(2,22,'Arnold press',4,10),(2,22,'Curl hammer',4,10),(2,22,'French press',4,10),(2,22,'Rematore manubri',4,8),(2,23,'Curl hammer',4,10),(2,23,'Curl manubri',4,8),(2,23,'Diamond push-up',4,10),(2,23,'Pull-up',5,8),(2,23,'Pulley elastico',3,12),(2,23,'Pullover',3,12),(2,24,'Addominali',3,20),(2,24,'Affondi bulgari',4,8),(2,24,'Leg curl',4,10),(2,24,'Leg ext',3,10),(2,24,'Plank',4,1),(2,24,'Squat',5,5),(2,25,'Affondi bulgari',4,8),(2,25,'Leg curl',4,10),(2,25,'Leg ext',3,10),(2,25,'Squat',5,5),(2,26,'Arnold press',4,10),(2,26,'Curl hammer',4,10),(2,26,'French press',4,10),(2,26,'Rematore manubri',4,8),(2,27,'Addominali',3,20),(2,27,'Affondi bulgari',3,8),(2,27,'Leg curl',4,10),(2,27,'Leg ext',3,10),(2,27,'Squat',6,4),(3,1,'Arnold press',3,12),(3,1,'Chin-up',3,12),(3,1,'Plank',4,1),(3,1,'Pull-up',5,8),(3,1,'Push-up',4,10),(3,2,'Arnold press',4,10),(3,2,'Chin-up',3,12),(3,2,'Diamond push-up',4,10),(3,2,'French press',4,10),(3,2,'Rematore bilanciare',3,12),(3,3,'Curl hammer',3,12),(3,3,'Curl manubri',3,12),(3,3,'French press',3,12),(3,3,'Pulley elastico',4,10),(3,3,'Pullover',4,8),(3,3,'Push-up',3,12),(3,4,'Curl hammer',3,12),(3,4,'Curl manubri',3,12),(3,4,'French press',3,12),(3,4,'Pulley elastico',4,10),(3,4,'Pullover',4,8),(3,4,'Push-up',3,12),(3,5,'Affondi bulgari',4,8),(3,5,'Chin-up',4,8),(3,5,'Leg curl',4,10),(3,5,'Plank',4,1),(3,5,'Pull-up',4,12),(3,5,'Stacchi da terra',4,10),(3,6,'Affondi bulgari',4,8),(3,6,'Chin-up',4,8),(3,6,'Leg curl',4,10),(3,6,'Plank',4,1),(3,6,'Pull-up',4,12),(3,6,'Stacchi da terra',4,10),(3,8,'Addominali',3,20),(3,8,'Alzate laterali',3,12),(3,8,'Arnold press',4,10),(3,8,'Leg curl',4,10),(3,8,'Squat',6,4),(3,9,'Chin-up',3,12),(3,9,'Curl manubri',3,12),(3,9,'French press',3,12),(3,9,'Plank',4,1),(3,9,'Pull-up',5,8),(3,13,'Arnold press',4,10),(3,13,'Chin-up',3,12),(3,13,'Diamond push-up',4,10),(3,13,'French press',4,10),(3,13,'Rematore bilanciare',3,12),(3,15,'Affondi bulgari',3,8),(3,15,'Leg curl',4,10),(3,15,'Squat',5,5),(3,16,'Chin-up',3,12),(3,16,'Curl manubri',3,12),(3,16,'French press',3,12),(3,16,'Plank',4,1),(3,16,'Pull-up',5,8),(3,18,'Arnold press',3,12),(3,18,'Chin-up',3,12),(3,18,'Plank',4,1),(3,18,'Pull-up',5,8),(3,18,'Push-up',4,10),(3,19,'Arnold press',3,12),(3,19,'Chin-up',3,12),(3,19,'Plank',4,1),(3,19,'Pull-up',5,8),(3,19,'Push-up',4,10),(3,20,'Leg curl',4,8),(3,20,'Leg ext',4,8),(3,20,'Panca piana',5,5),(3,20,'Squat',5,5),(3,21,'Leg curl',4,8),(3,21,'Leg ext',4,8),(3,21,'Panca piana',5,5),(3,21,'Squat',5,5),(3,24,'Arnold press',3,12),(3,24,'Chin-up',3,12),(3,24,'Plank',4,1),(3,24,'Pull-up',5,8),(3,24,'Push-up',4,10),(3,25,'Chin-up',3,12),(3,25,'Curl manubri',3,12),(3,25,'French press',3,12),(3,25,'Plank',4,1),(3,25,'Pull-up',5,8),(4,1,'Addominali',4,10),(4,1,'Alzate laterali',4,10),(4,1,'Curl hammer',3,12),(4,1,'Curl manubri',4,8),(4,1,'French press',4,10),(4,1,'Pullover',3,12),(4,1,'Rematore bilanciare',3,12),(4,2,'Addominali',3,20),(4,2,'Panca piana',6,8),(4,2,'Plank',4,1),(4,2,'Squat',6,4),(4,13,'Addominali',3,20),(4,13,'Panca piana',6,8),(4,13,'Plank',4,1),(4,13,'Squat',6,4),(4,18,'Addominali',4,10),(4,18,'Alzate laterali',4,10),(4,18,'Curl hammer',3,12),(4,18,'Curl manubri',4,8),(4,18,'French press',4,10),(4,18,'Pullover',3,12),(4,18,'Rematore bilanciare',3,12),(4,19,'Addominali',4,10),(4,19,'Alzate laterali',4,10),(4,19,'Curl hammer',3,12),(4,19,'Curl manubri',4,8),(4,19,'French press',4,10),(4,19,'Pullover',3,12),(4,19,'Rematore bilanciare',3,12),(4,20,'Addominali',3,20),(4,20,'Affondi bulgari',4,8),(4,20,'Chin-up',3,12),(4,20,'Hollow hold',4,1),(4,20,'Panca piana',6,8),(4,21,'Addominali',3,20),(4,21,'Affondi bulgari',4,8),(4,21,'Chin-up',3,12),(4,21,'Hollow hold',4,1),(4,21,'Panca piana',6,8),(4,24,'Addominali',4,10),(4,24,'Alzate laterali',4,10),(4,24,'Curl hammer',3,12),(4,24,'Curl manubri',4,8),(4,24,'French press',4,10),(4,24,'Pullover',3,12),(4,24,'Rematore bilanciare',3,12);
/*!40000 ALTER TABLE `composizione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contiene`
--

DROP TABLE IF EXISTS `contiene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contiene` (
  `cod_scheda_p` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  PRIMARY KEY (`cod_scheda_p`,`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contiene`
--

LOCK TABLES `contiene` WRITE;
/*!40000 ALTER TABLE `contiene` DISABLE KEYS */;
INSERT INTO `contiene` VALUES (3,'Fratture subite'),(5,'problemi articolari'),(7,'Fratture subite'),(7,'Uso abituale farmaci'),(8,'Problemi muscolari'),(9,'Problemi muscolari'),(11,'Fratture subite'),(12,'Problemi cardiocircolari'),(15,'Problemi muscolari'),(16,'Paramorfismi'),(16,'Problemi articolari'),(16,'Problemi vertebrali'),(20,'Uso abituale farmaci');
/*!40000 ALTER TABLE `contiene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corso`
--

DROP TABLE IF EXISTS `corso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `corso` (
  `nome` varchar(30) NOT NULL,
  `prezzo` decimal(5,2) NOT NULL,
  `descrizione` varchar(90) DEFAULT NULL,
  `num_partecipanti` int(2) NOT NULL,
  `cf` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`nome`),
  CONSTRAINT `corso_chk_1` CHECK ((`prezzo` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corso`
--

LOCK TABLES `corso` WRITE;
/*!40000 ALTER TABLE `corso` DISABLE KEYS */;
INSERT INTO `corso` VALUES ('bjj',40.00,'Sport da combattimento e metodo di difesa personale',10,'SBRMRC90M07A271H'),('bjj kids',28.00,'Corso bjj riservato ai bambini dai 5 ai 12 anni',20,'RNLLCU02R15G157K'),('bjj teen',32.00,'Corso bjj riservato ai ragazzi dai 13 ai 18 anni',12,'NGRNDR95A28C100S'),('combat training',25.00,'Addestramento al combattimento',10,'TPOSMN88B14L500V'),('fitboxe',30.00,'Metodo di allenamento fitness',8,'MCALSM88R15D643F'),('functional boxe',30.00,'Allennamento ad alta intensita',10,'CSTSRA98R49A271H'),('grappling',20.00,'Stile di lotta',2,'QNTFRC96H22A271H'),('muay thai',40.00,'Sport di combattimento, arte marziale',15,'CNNSML91P25C770W'),('pilates',40.00,'Modo in cui il metodo incoraggia l\'uso della mente per controllare i muscoli',7,'TSSVNC88M41A271S'),('zumba',30.00,'Lezione di fitness musicale che utilizza i movimenti della musica afro-caraibica',10,'MVTCLI88C07A271B');
/*!40000 ALTER TABLE `corso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dipendente`
--

DROP TABLE IF EXISTS `dipendente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dipendente` (
  `cf` varchar(16) NOT NULL,
  `ruolo` varchar(50) NOT NULL,
  `stipendio` decimal(7,2) NOT NULL,
  `ore_lavoro` decimal(5,0) NOT NULL,
  PRIMARY KEY (`cf`),
  CONSTRAINT `dipendente_chk_1` CHECK (((`ruolo` = _utf8mb4'personal trainer') or (`ruolo` = _utf8mb4'estetista') or (`ruolo` = _utf8mb4'nutrizionista') or (`ruolo` = _utf8mb4'barbiere') or (`ruolo` = _utf8mb4'fisioterapista') or (`ruolo` = _utf8mb4'insegnante zumba') or (`ruolo` = _utf8mb4'insegnante muay thai') or (`ruolo` = _utf8mb4'insegnante yoga') or (`ruolo` = _utf8mb4'insegnante fitboxe') or (`ruolo` = _utf8mb4'insegnante pilates') or (`ruolo` = _utf8mb4'insegnante functional boxe') or (`ruolo` = _utf8mb4'insegnante combat training') or (`ruolo` = _utf8mb4'insegnante bjj') or (`ruolo` = _utf8mb4'insegnante bjj kids') or (`ruolo` = _utf8mb4'insegnante bjj teen') or (`ruolo` = _utf8mb4'insegnante grappling'))),
  CONSTRAINT `dipendente_chk_2` CHECK ((`stipendio` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dipendente`
--

LOCK TABLES `dipendente` WRITE;
/*!40000 ALTER TABLE `dipendente` DISABLE KEYS */;
INSERT INTO `dipendente` VALUES ('BNDLRA91S45D542H','nutrizionista',35.00,4),('CNNSML91P25C770W','insegnante muay thai',25.00,3),('CSTSRA98R49A271H','insegnante functional boxe',20.00,2),('KRSZRT85A02F839F','fisioterapista',30.00,8),('MCALSM88R15D643F','insegnante fitboxe',8.00,3),('MVTCLI88C07A271B','insegnante zumba',30.00,3),('NGRNDR95A28C100S','personal trainer',7.00,49),('PRZRKY95S22A271N','barbiere',10.00,10),('QNTFRC96H22A271H','personal trainer',6.00,40),('RNLLCU02R15G157K','insegnante bjj kids',20.00,2),('RSTSRA92E48A271D','estetista',12.00,8),('SBRMRC90M07A271H','insegnante bjj',20.00,7),('TPOSMN88B14L500V','insegnante combat training',25.00,3),('TSSVNC88M41A271S','insegnante pilates',30.00,3),('VGNLRD92R07A271O','personal trainer',7.00,49);
/*!40000 ALTER TABLE `dipendente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `esercizio`
--

DROP TABLE IF EXISTS `esercizio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `esercizio` (
  `nome` varchar(40) NOT NULL,
  `serie` decimal(1,0) NOT NULL,
  `ripetizioni` decimal(2,0) NOT NULL,
  `descrizione` varchar(360) DEFAULT NULL,
  PRIMARY KEY (`nome`,`serie`,`ripetizioni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esercizio`
--

LOCK TABLES `esercizio` WRITE;
/*!40000 ALTER TABLE `esercizio` DISABLE KEYS */;
INSERT INTO `esercizio` VALUES ('Addominali',3,20,NULL),('Addominali',4,10,NULL),('Affondi bulgari',3,8,'L\'Affondo Bulgaro è un esercizio che richiede coordinazione, forza, stabilità. Coinvolge vari muscoli tra cui glutei, femorali, quadricipiti, core.'),('Affondi bulgari',4,8,'L\'Affondo Bulgaro è un esercizio che richiede coordinazione, forza, stabilità. Coinvolge vari muscoli tra cui glutei, femorali, quadricipiti, core.'),('Alzate laterali',3,12,'Le alzate laterali rappresentano un classico esercizio per allenamento delle spalle.'),('Alzate laterali',4,10,'Le alzate laterali rappresentano un classico esercizio per allenamento delle spalle.'),('Arnold press',3,8,'Il mitico Arnold Press è sicuramente uno degli esercizi più mistici e carichi di suggestione tra i devoti del body building vecchio stampo. Spesso e volentieri è un esercizio molto amato e richiesto, un po’ per il suo nome e un po’ perché “si sente un sacco la spalla che lavora'),('Arnold press',3,12,'Il mitico Arnold Press è sicuramente uno degli esercizi più mistici e carichi di suggestione tra i devoti del body building vecchio stampo. Spesso e volentieri è un esercizio molto amato e richiesto, un po’ per il suo nome e un po’ perché “si sente un sacco la spalla che lavora'),('Arnold press',4,10,'Il mitico Arnold Press è sicuramente uno degli esercizi più mistici e carichi di suggestione tra i devoti del body building vecchio stampo. Spesso e volentieri è un esercizio molto amato e richiesto, un po’ per il suo nome e un po’ perché “si sente un sacco la spalla che lavora'),('Chin-up',3,12,'Il termine trazioni alla sbarra indica un esercizio a corpo libero che consiste nel sollevare il proprio corpo attaccati con le mani ad una sbarra,assume il nome di chin-up la variante a presa supina'),('Chin-up',4,8,'Il termine trazioni alla sbarra indica un esercizio a corpo libero che consiste nel sollevare il proprio corpo attaccati con le mani ad una sbarra,assume il nome di chin-up la variante a presa supina'),('Croci panca inclinata',3,8,'Le croci con manubri su panca inclinata servono per aumentare la massa muscolare dei pettorali.'),('Croci panca inclinata',3,10,'Le croci con manubri su panca inclinata servono per aumentare la massa muscolare dei pettorali.'),('Curl hammer',3,12,NULL),('Curl hammer',4,8,NULL),('Curl hammer',4,10,NULL),('Curl manubri',3,12,'Il curl con 2 manubri in piedi è uno degli esercizi fondamentali per i bicipiti, crea volume e massa al muscolo.'),('Curl manubri',4,8,'Il curl con 2 manubri in piedi è uno degli esercizi fondamentali per i bicipiti, crea volume e massa al muscolo.'),('Diamond push-up',3,12,'Piegamenti sulle braccia con mani ravvicinate. Lo Spazio che si verrà a formare tra le vostre mani ricorda la forma di un diamante e per questo motivo questo esercizio ha questo nome. Da questa posizione sollevatevi, mantenedo il corpo rigido come un asse.'),('Diamond push-up',4,10,'Piegamenti sulle braccia con mani ravvicinate. Lo Spazio che si verrà a formare tra le vostre mani ricorda la forma di un diamante e per questo motivo questo esercizio ha questo nome. Da questa posizione sollevatevi, mantenedo il corpo rigido come un asse.'),('French press',3,12,'La french press con manubri sdraiati su panca piana è un ottimo esercizio per aumentare la massa muscolare dei tricipiti.'),('French press',4,8,'La french press con manubri sdraiati su panca piana è un ottimo esercizio per aumentare la massa muscolare dei tricipiti.'),('French press',4,10,'La french press con manubri sdraiati su panca piana è un ottimo esercizio per aumentare la massa muscolare dei tricipiti.'),('Hollow hold',4,1,NULL),('Leg curl',4,8,'Il leg curl è un esercizio con sovraccarichi, praticato nella maggior parte dei casi alla omonima macchina specifica, mirato prevalentemente alla stimolazione dei muscoli ischio-crurali e di altri muscoli flessori del ginocchio.'),('Leg curl',4,10,'Il leg curl è un esercizio con sovraccarichi, praticato nella maggior parte dei casi alla omonima macchina specifica, mirato prevalentemente alla stimolazione dei muscoli ischio-crurali e di altri muscoli flessori del ginocchio.'),('Leg ext',3,10,NULL),('Leg ext',4,8,NULL),('Panca piana',4,10,'La panca piana è un esercizio multiarticolare full body, dato che vengono utilizzati muscoli di tutto il corpo per eseguirla, petto, braccia, spalle, ma anche il core e le gambe hanno il loro ruolo nell\'esecuzione.'),('Panca piana',5,5,'La panca piana è un esercizio multiarticolare full body, dato che vengono utilizzati muscoli di tutto il corpo per eseguirla, petto, braccia, spalle, ma anche il core e le gambe hanno il loro ruolo nell\'esecuzione.'),('Panca piana',6,8,'La panca piana è un esercizio multiarticolare full body, dato che vengono utilizzati muscoli di tutto il corpo per eseguirla, petto, braccia, spalle, ma anche il core e le gambe hanno il loro ruolo nell\'esecuzione.'),('Plank',4,1,NULL),('Pull-up',4,12,'Il termine trazioni alla sbarra indica un esercizio a corpo libero che consiste nel sollevare il proprio corpo attaccati con le mani ad una sbarra, si parla di pull-up nella versione a presa prona'),('Pull-up',5,8,'Il termine trazioni alla sbarra indica un esercizio a corpo libero che consiste nel sollevare il proprio corpo attaccati con le mani ad una sbarra, si parla di pull-up nella versione a presa prona'),('Pulley elastico',3,12,NULL),('Pulley elastico',4,10,NULL),('Pullover',3,12,NULL),('Pullover',4,8,NULL),('Push-up',3,12,'Un piegamento sulle braccia, è un comune esercizio di potenza eseguito in posizione prona, ossia con il corpo disteso orizzontalmente e faccia rivolta verso il basso, alzando ed abbassando il corpo tramite le braccia.'),('Push-up',4,10,'Un piegamento sulle braccia, è un comune esercizio di potenza eseguito in posizione prona, ossia con il corpo disteso orizzontalmente e faccia rivolta verso il basso, alzando ed abbassando il corpo tramite le braccia.'),('Rematore bilanciare',3,12,NULL),('Rematore bilanciare',4,8,NULL),('Rematore manubri',3,12,NULL),('Rematore manubri',4,8,NULL),('Rematore manubri',4,10,NULL),('Squat',5,5,'È l’esercizio fondamentale che mette in tensione ogni muscolo del corpo, in particolare per gli arti inferiori.'),('Squat',6,4,'È l’esercizio fondamentale che mette in tensione ogni muscolo del corpo, in particolare per gli arti inferiori.'),('Stacchi da terra',4,10,'Lo stacco da terra è uno degli esercizi fondamentali che coinvolge lo sviluppo di gran parte dei muscoli del corpo umano.');
/*!40000 ALTER TABLE `esercizio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iscrizione`
--

DROP TABLE IF EXISTS `iscrizione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `iscrizione` (
  `ID_iscrizione` int(11) NOT NULL AUTO_INCREMENT,
  `prezzo` decimal(5,2) NOT NULL,
  `data_iscrizione` date NOT NULL,
  `scadenza_iscrizione` date NOT NULL,
  `cf` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`ID_iscrizione`),
  CONSTRAINT `iscrizione_chk_1` CHECK ((`prezzo` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iscrizione`
--

LOCK TABLES `iscrizione` WRITE;
/*!40000 ALTER TABLE `iscrizione` DISABLE KEYS */;
INSERT INTO `iscrizione` VALUES (1,12.50,'2017-01-08','2018-01-08','DMTDVD88T10F205L'),(2,12.50,'2017-02-13','2018-02-13','GRTBRS92D43B734O'),(3,15.00,'2018-03-30','2019-03-30','BCCMTT98S10C770S'),(4,15.00,'2019-03-20','2020-03-20','NTNLRZ98R44I156Z'),(5,15.00,'2018-12-11','2019-12-11','CPNLNZ98B12C770C'),(6,12.50,'2017-10-02','2018-10-02','RSSLNE98B45E783Z'),(7,12.50,'2017-11-04','2018-11-04','MROMRC85E04D542F'),(8,15.00,'2018-02-28','2019-02-28','CPLFRC80T07G919I'),(9,15.00,'2019-03-04','2020-03-04','TSTFPP90T23B157G'),(10,15.00,'2019-09-17','2020-09-17','BLRDTT96P41B468U'),(11,12.50,'2017-06-16','2018-06-16','GTTMTT90A05F552A'),(12,12.50,'2017-12-15','2018-12-15','LCNBTR92R48A271G'),(13,15.00,'2018-04-16','2019-04-16','GCMLNZ98H12G920R'),(14,15.00,'2019-10-22','2020-10-22','VRDCHR97E45A271C'),(15,10.00,'2016-12-17','2017-12-17','PTNTZN79S12A462F'),(16,15.00,'2018-11-13','2019-11-13','DMTDVD88T10F205L'),(17,10.00,'2016-11-30','2017-11-30','CLMMRC93R63G479O'),(18,10.00,'2016-12-02','2017-12-02','CZZNRC96P23A662L'),(19,15.00,'2018-09-18','2019-09-18','BNCLNR90B60A271C'),(20,15.00,'2019-11-25','2020-11-25','BBRMTT98P01D542H'),(21,15.00,'2019-04-30','2020-04-30','DMTDVD88T10F205L'),(22,15.00,'2018-02-14','2019-02-14','GRTBRS92D43B734O'),(23,15.00,'2019-02-15','2020-02-15','GRTBRS92D43B734O'),(24,15.00,'2019-04-02','2020-04-02','BCCMTT98S10C770S'),(25,15.00,'2018-03-18','2019-03-18','NTNLRZ98R44I156Z'),(26,15.00,'2019-06-10','2020-06-10','RSSLNE98B45E783Z'),(27,15.00,'2019-04-06','2019-04-06','MROMRC85E04D542F'),(28,15.00,'2019-02-28','2020-02-28','CPLFRC80T07G919I'),(29,15.00,'2019-05-25','2020-05-25','LCNBTR92R48A271G'),(30,15.00,'2018-10-01','2019-10-01','PTNTZN79S12A462F'),(31,15.00,'2019-10-02','2020-10-02','PTNTZN79S12A462F'),(32,12.50,'2017-07-10','2018-07-10','DMTDVD88T10F205L'),(33,15.00,'2018-11-13','2019-11-13','DMEMTT94C07A271C'),(34,15.00,'2018-01-10','2019-01-10','CLMMRC93R63G479O'),(35,15.00,'2019-02-25','2020-02-25','CZZNRC96P23A662L');
/*!40000 ALTER TABLE `iscrizione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `malattia`
--

DROP TABLE IF EXISTS `malattia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `malattia` (
  `nome` varchar(25) NOT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `malattia`
--

LOCK TABLES `malattia` WRITE;
/*!40000 ALTER TABLE `malattia` DISABLE KEYS */;
INSERT INTO `malattia` VALUES ('Fratture subite'),('Ipertensione'),('Paramorfismi'),('Problemi articolari'),('Problemi cardiocircolari'),('Problemi muscolari'),('Problemi vertebrali'),('Uso abituale farmaci');
/*!40000 ALTER TABLE `malattia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `merchandising`
--

DROP TABLE IF EXISTS `merchandising`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `merchandising` (
  `nome` varchar(30) NOT NULL,
  `quantità` int(3) NOT NULL,
  `quantità_venduta` int(3) NOT NULL,
  `prezzo` decimal(5,2) NOT NULL,
  PRIMARY KEY (`nome`),
  CONSTRAINT `merchandising_chk_1` CHECK ((`prezzo` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `merchandising`
--

LOCK TABLES `merchandising` WRITE;
/*!40000 ALTER TABLE `merchandising` DISABLE KEYS */;
INSERT INTO `merchandising` VALUES ('Barrette proteiche',110,23,1.25),('Borsone white gym',10,1,52.55),('Calzini white gym',50,5,10.00),('Felpa white gym',30,10,40.50),('Maglietta white gym',40,4,20.50),('Scarpe squat',14,0,37.90),('Zaino white gym',15,7,70.00);
/*!40000 ALTER TABLE `merchandising` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orario`
--

DROP TABLE IF EXISTS `orario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orario` (
  `giorno` varchar(9) NOT NULL,
  `ora_inizio` time NOT NULL,
  `ora_fine` time NOT NULL,
  PRIMARY KEY (`giorno`,`ora_inizio`,`ora_fine`),
  CONSTRAINT `orario_chk_1` CHECK (((`giorno` = _utf8mb4'lunedi') or (`giorno` = _utf8mb4'martedi') or (`giorno` = _utf8mb4'mercoledi') or (`giorno` = _utf8mb4'giovedi') or (`giorno` = _utf8mb4'venerdi') or (`giorno` = _utf8mb4'sabato') or (`giorno` = _utf8mb4'domenica'))),
  CONSTRAINT `orario_chk_2` CHECK ((`ora_inizio` >= _utf8mb4'7:30:00')),
  CONSTRAINT `orario_chk_3` CHECK ((`ora_fine` <= _utf8mb4'21:30:00'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orario`
--

LOCK TABLES `orario` WRITE;
/*!40000 ALTER TABLE `orario` DISABLE KEYS */;
INSERT INTO `orario` VALUES ('domenica','09:00:00','11:00:00'),('domenica','11:00:00','13:00:00'),('giovedi','07:30:00','11:00:00'),('giovedi','09:00:00','14:30:00'),('giovedi','10:00:00','11:00:00'),('giovedi','11:00:00','13:00:00'),('giovedi','13:30:00','14:30:00'),('giovedi','15:00:00','19:00:00'),('giovedi','16:00:00','17:30:00'),('giovedi','16:00:00','19:00:00'),('giovedi','16:00:00','21:30:00'),('giovedi','17:00:00','18:00:00'),('giovedi','18:00:00','19:00:00'),('giovedi','19:00:00','20:00:00'),('giovedi','20:00:00','21:00:00'),('lunedi','07:30:00','08:30:00'),('lunedi','07:30:00','11:00:00'),('lunedi','09:00:00','13:30:00'),('lunedi','10:00:00','12:00:00'),('lunedi','10:00:00','12:30:00'),('lunedi','13:30:00','14:30:00'),('lunedi','14:00:00','18:30:00'),('lunedi','15:00:00','17:00:00'),('lunedi','15:00:00','21:30:00'),('lunedi','16:00:00','17:30:00'),('lunedi','17:00:00','18:00:00'),('lunedi','18:00:00','19:00:00'),('lunedi','19:00:00','20:00:00'),('lunedi','20:00:00','21:30:00'),('martedi','07:30:00','12:30:00'),('martedi','08:30:00','13:30:00'),('martedi','10:00:00','11:30:00'),('martedi','13:30:00','14:30:00'),('martedi','13:30:00','17:30:00'),('martedi','14:00:00','15:30:00'),('martedi','15:30:00','21:30:00'),('martedi','17:00:00','18:00:00'),('martedi','18:00:00','19:00:00'),('martedi','19:00:00','20:00:00'),('martedi','20:00:00','21:00:00'),('mercoledi','07:30:00','08:30:00'),('mercoledi','07:30:00','09:30:00'),('mercoledi','07:30:00','11:30:00'),('mercoledi','07:30:00','12:30:00'),('mercoledi','09:00:00','12:00:00'),('mercoledi','10:30:00','16:30:00'),('mercoledi','10:30:00','18:30:00'),('mercoledi','13:30:00','14:30:00'),('mercoledi','14:00:00','19:30:00'),('mercoledi','14:30:00','16:30:00'),('mercoledi','14:30:00','21:30:00'),('mercoledi','17:00:00','18:00:00'),('mercoledi','18:00:00','19:00:00'),('mercoledi','19:00:00','20:00:00'),('mercoledi','20:00:00','21:30:00'),('sabato','09:00:00','14:30:00'),('sabato','09:30:00','10:30:00'),('sabato','11:30:00','16:00:00'),('sabato','12:00:00','16:00:00'),('sabato','13:30:00','14:30:00'),('sabato','14:30:00','15:30:00'),('venerdi','07:30:00','08:30:00'),('venerdi','07:30:00','16:00:00'),('venerdi','10:00:00','13:30:00'),('venerdi','12:20:00','18:00:00'),('venerdi','13:30:00','14:30:00'),('venerdi','13:30:00','15:30:00'),('venerdi','13:30:00','19:30:00'),('venerdi','17:00:00','18:00:00'),('venerdi','17:20:00','18:00:00'),('venerdi','18:00:00','19:00:00'),('venerdi','18:30:00','21:30:00'),('venerdi','19:00:00','20:00:00'),('venerdi','19:00:00','21:00:00'),('venerdi','20:00:00','21:30:00');
/*!40000 ALTER TABLE `orario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partecipazione`
--

DROP TABLE IF EXISTS `partecipazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partecipazione` (
  `nome` varchar(20) NOT NULL,
  `cf` varchar(16) NOT NULL,
  PRIMARY KEY (`cf`,`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partecipazione`
--

LOCK TABLES `partecipazione` WRITE;
/*!40000 ALTER TABLE `partecipazione` DISABLE KEYS */;
INSERT INTO `partecipazione` VALUES ('functional boxe','DMEMTT94C07A271C'),('bjj','GCMLNZ98H12G920R'),('combat training','GTTMTT90A05F552A'),('bjj','LCNBTR92R48A271G'),('muay thai','MROMRC85E04D542F');
/*!40000 ALTER TABLE `partecipazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `cf` varchar(16) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `cognome` varchar(30) NOT NULL,
  `data_nascita` date NOT NULL,
  `professione` varchar(40) NOT NULL,
  PRIMARY KEY (`cf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES ('BBRMTT98P01D542H','Matteo','Abbruzzetti','1998-09-01','studente'),('BCCMTT98S10C770S','Matteo','Bocci','1998-11-10','studente'),('BLRDTT96P41B468U','Diletta','Belardinelli','1996-09-01','parrucchiera'),('BNCLNR90B60A271C','Eleonora','Bianchi','1990-02-20','promoter'),('BNDLRA91S45D542H','Laura','Biondi','1991-11-05','dipendente palestra'),('CLMMRC93R63G479O','Marica','Clemenza','1993-10-23','cameriera'),('CNNSML91P25C770W','Samuele','Canonico','1991-09-25','dipendente palestra'),('CPLFRC80T07G919I','Federico','Cipolletti','1980-12-07','dentista'),('CPNLNZ98B12C770C','Lorenzo','Iacopini','1998-02-12','studente'),('CSTSRA98R49A271H','Sara','Castretti','1998-10-09','studente'),('CZZNRC96P23A662L','Enrico','Cozza','1996-09-23','parrucchiere'),('DMEMTT94C07A271C','Mattia','Demeio','1994-03-07','bagnino'),('DMTDVD88T10F205L','Davide','Demetria','1988-12-10','impiegato'),('GCMLNZ98H12G920R','Lorenzo','Giacomozzi','1998-06-12','studente'),('GRTBRS92D43B734O','Greta','Barese','1992-04-03','infermiera'),('GTTMTT90A05F552A','Matteo','Gatti','1990-01-05','barman'),('KRSZRT85A02F839F','Kurosh','Ziarati','1985-02-01','dipendente palestra'),('LCNBTR92R48A271G','Barbara','Luconi','1992-10-08','cassiera'),('MCALSM88R15D643F','Alessandro','Amici','1988-10-15','dipendente palestra'),('MROMRC85E04D542F','Marco','Mori','1985-05-04','commercialista'),('MVTCLI88C07A271B','Cielo','Muevete','1988-03-07','Dipendente palestra'),('NGRNDR95A28C100S','Andrea','Negura','1995-01-28','studente'),('NTNLRZ98R44I156Z','Lucrezia','Antenucci','1998-10-04','studente'),('PRZRKY95S22A271N','Ricky','Perez','1995-11-22','dipendente palestra'),('PTNTZN79S12A462F','Tiziano','Potenza','1979-11-12','bidello'),('QNTFRC96H22A271H','Federico','Quintaba','1996-06-22','studente'),('RNLLCU02R15G157K','Luca','Rinaldi','2002-10-15','studente'),('RSSLNE98B45E783Z','Elena','Rossi','1998-02-05','studente'),('RSTSRA92E48A271D','Sara','Rastelli','1992-05-08','dipendente palestra'),('SBRMRC90M07A271H','Marco','Sberla','1990-07-08','dipendente palestra'),('TPOSMN88B14L500V','Simone','Topo','1987-02-14','commercialista'),('TSSVNC88M41A271S','Veronica','Tasso','1988-08-01','insegnante'),('TSTFPP90T23B157G','Filippo','Testa','1990-12-23','Operaio'),('VGNLRD92R07A271O','Leonardo','Vignoni','1992-10-07','dipendente palestra'),('VRDCHR97E45A271C','Chiara','Verdini','1997-05-05','estetista');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pianificazione`
--

DROP TABLE IF EXISTS `pianificazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pianificazione` (
  `nome` varchar(30) NOT NULL,
  `giorno` varchar(9) NOT NULL,
  `ora_inizio` time NOT NULL,
  `ora_fine` time NOT NULL,
  PRIMARY KEY (`nome`,`giorno`,`ora_inizio`,`ora_fine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pianificazione`
--

LOCK TABLES `pianificazione` WRITE;
/*!40000 ALTER TABLE `pianificazione` DISABLE KEYS */;
INSERT INTO `pianificazione` VALUES ('bjj','giovedi','13:30:00','14:30:00'),('bjj','giovedi','19:00:00','20:00:00'),('bjj','lunedi','20:00:00','21:30:00'),('bjj','martedi','13:30:00','14:30:00'),('bjj','mercoledi','20:00:00','21:30:00'),('bjj','sabato','14:30:00','15:30:00'),('bjj kids','giovedi','17:00:00','18:00:00'),('bjj kids','martedi','17:00:00','18:00:00'),('bjj teen','lunedi','17:00:00','18:00:00'),('bjj teen','mercoledi','17:00:00','18:00:00'),('bjj teen','venerdi','17:00:00','18:00:00'),('combat training','lunedi','13:30:00','14:30:00'),('combat training','mercoledi','13:30:00','14:30:00'),('combat training','venerdi','13:30:00','14:30:00'),('fit boxe','lunedi','19:00:00','20:00:00'),('fit boxe','mercoledi','19:00:00','20:00:00'),('fit boxe','venerdi','19:00:00','20:00:00'),('functional boxe','giovedi','20:00:00','21:00:00'),('functional boxe','martedi','20:00:00','21:00:00'),('grappling','martedi','19:00:00','20:00:00'),('grappling','venerdi','20:00:00','21:30:00'),('muay thai','lunedi','18:00:00','19:00:00'),('muay thai','mercoledi','18:00:00','19:00:00'),('muay thai','venerdi','18:00:00','19:00:00'),('pilates','lunedi','07:30:00','08:30:00'),('pilates','mercoledi','07:30:00','08:30:00'),('pilates','venerdi','07:30:00','08:30:00'),('zumba','giovedi','18:00:00','19:00:00'),('zumba','martedi','18:00:00','19:00:00'),('zumba','sabato','13:30:00','14:30:00');
/*!40000 ALTER TABLE `pianificazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prenotazione`
--

DROP TABLE IF EXISTS `prenotazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prenotazione` (
  `nome` varchar(20) NOT NULL,
  `giorno` varchar(9) NOT NULL,
  `ora_inizio` time NOT NULL,
  `ora_fine` time NOT NULL,
  PRIMARY KEY (`nome`,`giorno`,`ora_inizio`,`ora_fine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prenotazione`
--

LOCK TABLES `prenotazione` WRITE;
/*!40000 ALTER TABLE `prenotazione` DISABLE KEYS */;
INSERT INTO `prenotazione` VALUES ('barbiere','lunedi','10:00:00','12:00:00'),('barbiere','martedi','13:30:00','14:30:00'),('barbiere','martedi','17:00:00','18:00:00'),('barbiere','martedi','18:00:00','19:00:00'),('barbiere','mercoledi','17:00:00','18:00:00'),('barbiere','mercoledi','18:00:00','19:00:00'),('barbiere','sabato','14:30:00','15:30:00'),('barbiere','venerdi','13:30:00','14:30:00'),('barbiere','venerdi','18:00:00','19:00:00'),('estetista','giovedi','16:00:00','17:30:00'),('estetista','lunedi','10:00:00','12:30:00'),('estetista','lunedi','16:00:00','17:30:00'),('estetista','martedi','15:00:00','17:00:00'),('estetista','venerdi','17:20:00','18:00:00'),('fisioterapista','lunedi','17:00:00','18:00:00'),('fisioterapista','lunedi','18:00:00','19:00:00'),('fisioterapista','martedi','10:00:00','11:30:00'),('fisioterapista','mercoledi','07:30:00','09:30:00'),('fisioterapista','mercoledi','13:30:00','14:30:00'),('fisioterapista','venerdi','13:30:00','15:30:00'),('nutrizionista','giovedi','10:00:00','11:00:00'),('nutrizionista','lunedi','17:00:00','18:00:00'),('nutrizionista','mercoledi','18:00:00','19:00:00'),('nutrizionista','mercoledi','19:00:00','20:00:00');
/*!40000 ALTER TABLE `prenotazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheda_personale`
--

DROP TABLE IF EXISTS `scheda_personale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheda_personale` (
  `cod_scheda_p` int(11) NOT NULL AUTO_INCREMENT,
  `sport_praticati` varchar(60) DEFAULT NULL,
  `obiettivi` varchar(35) NOT NULL,
  `tempo_a_disposizione` time NOT NULL,
  `n_allenamenti` decimal(2,0) NOT NULL,
  `altezza` decimal(3,0) NOT NULL,
  `peso` decimal(3,0) NOT NULL,
  `cf` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`cod_scheda_p`),
  CONSTRAINT `scheda_personale_chk_1` CHECK ((`peso` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheda_personale`
--

LOCK TABLES `scheda_personale` WRITE;
/*!40000 ALTER TABLE `scheda_personale` DISABLE KEYS */;
INSERT INTO `scheda_personale` VALUES (1,'calcio','preparazione atletica','01:30:00',2,171,65,'DMTDVD88T10F205L'),(2,'cricket','aumento massa muscolare','02:30:00',3,166,60,'GRTBRS92D43B734O'),(3,'basket','aumento massa muscolare','02:00:00',4,181,70,'BCCMTT98S10C770S'),(4,'pallavolo','tonificazione','01:30:00',4,173,60,'NTNLRZ98R44I156Z'),(5,'calcio','aumento massa muscolare','01:00:00',4,175,75,'CPNLNZ98B12C770C'),(6,'rugby','benessere fisico','00:30:00',3,182,78,'RSSLNE98B45E783Z'),(7,'tennis','benessere fisico','01:00:00',3,180,75,'MROMRC85E04D542F'),(8,'null','aumento massa muscolare','00:50:00',2,166,64,'CPLFRC80T07G919I'),(9,'null','aumento massa muscolare','01:40:00',3,190,82,'TSTFPP90T23B157G'),(10,'danza','tonificazione','00:40:00',1,171,64,'BLRDTT96P41B468U'),(11,'atletica','tonificazione','01:30:00',2,178,74,'GTTMTT90A05F552A'),(12,'atletica','dimagrimento','01:30:00',3,173,66,'LCNBTR92R48A271G'),(13,'calcio','aumento massa muscolare','02:30:00',3,181,84,'GCMLNZ98H12G920R'),(14,'pallavolo','dimagrimento','03:00:00',2,191,75,'VRDCHR97E45A271C'),(15,'basket','aumento massa muscolare','00:30:00',4,188,87,'PTNTZN79S12A462F'),(16,'null','dimagrimento','01:10:00',2,196,104,'DMEMTT94C07A271C'),(17,'danza','aumento massa muscolare','02:00:00',3,161,55,'CLMMRC93R63G479O'),(18,'null','aumento massa muscolare','01:30:00',2,142,64,'CZZNRC96P23A662L'),(19,'basket','benessere fisico','01:00:00',2,184,76,'BNCLNR90B60A271C'),(20,'basket','aumento massa muscolare','01:45:00',1,183,82,'BBRMTT98P01D542H');
/*!40000 ALTER TABLE `scheda_personale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scheda_tecnica`
--

DROP TABLE IF EXISTS `scheda_tecnica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scheda_tecnica` (
  `cod_scheda_tecnica` int(11) NOT NULL AUTO_INCREMENT,
  `data_rinnovo` date NOT NULL,
  `data_inizio` date NOT NULL,
  `cf` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`cod_scheda_tecnica`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scheda_tecnica`
--

LOCK TABLES `scheda_tecnica` WRITE;
/*!40000 ALTER TABLE `scheda_tecnica` DISABLE KEYS */;
INSERT INTO `scheda_tecnica` VALUES (1,'2019-06-04','2019-05-05','CPNLNZ98B12C770C'),(2,'2019-10-01','2019-09-01','BCCMTT98S10C770S'),(3,'2018-10-10','2018-09-09','GRTBRS92D43B734O'),(4,'2019-07-15','2019-05-26','LCNBTR92R48A271G'),(5,'2019-04-22','2019-04-12','GRTBRS92D43B734O'),(6,'2018-06-15','2018-05-15','LCNBTR92R48A271G'),(7,'2019-12-12','2019-11-25','BBRMTT98P01D542H'),(8,'2019-05-06','2019-04-07','MROMRC85E04D542F'),(9,'2019-11-09','2019-10-09','TSTFPP90T23B157G'),(10,'2017-08-12','2017-07-13','DMTDVD88T10F205L'),(11,'2019-10-18','2019-09-18','BLRDTT96P41B468U'),(12,'2019-04-17','2019-02-26','CPLFRC80T07G919I'),(13,'2018-04-19','2018-03-18','NTNLRZ98R44I156Z'),(14,'2019-05-22','2019-05-01','DMTDVD88T10F205L'),(15,'2017-03-22','2017-02-20','GRTBRS92D43B734O'),(16,'2019-05-17','2019-05-07','MROMRC85E04D542F'),(17,'2019-09-30','2019-08-29','DMTDVD88T10F205L'),(18,'2018-10-28','2018-10-01','PTNTZN79S12A462F'),(19,'2018-01-23','2017-12-05','RSSLNE98B45E783Z'),(20,'2019-07-13','2019-06-14','RSSLNE98B45E783Z'),(21,'2019-11-26','2019-10-24','BCCMTT98S10C770S'),(22,'2019-11-30','2019-10-22','VRDCHR97E45A271C'),(23,'2018-03-20','2018-02-26','GTTMTT90A05F552A'),(24,'2019-11-30','2019-10-22','PTNTZN79S12A462F'),(25,'2018-03-20','2018-02-26','CLMMRC93R63G479O'),(26,'2019-10-18','2019-09-18','BNCLNR90B60A271C'),(27,'2019-04-17','2019-02-26','CZZNRC96P23A662L');
/*!40000 ALTER TABLE `scheda_tecnica` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-06 17:32:57
