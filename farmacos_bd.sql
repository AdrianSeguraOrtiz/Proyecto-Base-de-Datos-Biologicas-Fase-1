-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: farmacos_bd
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `med_tienen_pa`
--

DROP TABLE IF EXISTS `med_tienen_pa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `med_tienen_pa` (
  `MEDICAMENTOS_codigoNacional` int NOT NULL,
  `PRINCIPIOSACTIVOS_nombre` varchar(60) NOT NULL,
  PRIMARY KEY (`MEDICAMENTOS_codigoNacional`,`PRINCIPIOSACTIVOS_nombre`),
  KEY `fk_medicamentos_has_principiosactivos_principiosactivos1_idx` (`PRINCIPIOSACTIVOS_nombre`),
  KEY `fk_medicamentos_has_principiosactivos_medicamentos_idx` (`MEDICAMENTOS_codigoNacional`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `med_tienen_pa`
--

LOCK TABLES `med_tienen_pa` WRITE;
/*!40000 ALTER TABLE `med_tienen_pa` DISABLE KEYS */;
INSERT INTO `med_tienen_pa` VALUES (651877,'Acido acetilsalicilico'),(651877,'Acido ascorbico'),(651943,'Fluocinolona'),(651943,'Gramicidina'),(651943,'Neomicina'),(664347,'Clorfenamina'),(664347,'Oximetazolina'),(681817,'Clorfenamina'),(681817,'Dextrometorfano'),(681817,'Paracetamol'),(702151,'Clorfenamina'),(702151,'Fenilefrina'),(702151,'Paracetamol'),(711033,'Dexketopofreno'),(711033,'Tramadol'),(712072,'Elbasvir'),(712072,'Grazoprevir'),(714852,'Carvedilol'),(714852,'Ivabradina'),(839720,'Clorfenamina'),(839720,'Paracetamol');
/*!40000 ALTER TABLE `med_tienen_pa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamentos`
--

DROP TABLE IF EXISTS `medicamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamentos` (
  `codigoNacional` int NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `viaAdministracion` varchar(100) NOT NULL,
  `presentacion` varchar(100) DEFAULT NULL,
  `formato` varchar(100) DEFAULT NULL,
  `claseMedicamento` varchar(105) DEFAULT NULL,
  `indicaciones` varchar(100) DEFAULT NULL,
  `comercializacion` tinyint DEFAULT NULL,
  `prescripcionMedica` tinyint DEFAULT NULL,
  `pvp` float NOT NULL,
  PRIMARY KEY (`codigoNacional`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos`
--

LOCK TABLES `medicamentos` WRITE;
/*!40000 ALTER TABLE `medicamentos` DISABLE KEYS */;
INSERT INTO `medicamentos` VALUES (651877,'Aspirina C','Oral','Comprimidos efervescentes','(400 mg / 240 mg) x 20 comp','Analgesico, Antiinflamatorio y Antipiretico','Disminuye el dolor, la inflamacion y la fiebre',1,0,5.36),(651943,'Flodermol','Topica','Pomada','Pomada 60g','Corticoide topico y antiinfeccioso','Tratar las inflamaciones de la piel y para combatir las infecciones',1,1,12.3),(664347,'Respibien antialergico','Nasal','Nebulizador Nasal','Recipiente 15 ml','Descongestionante nasal','Alivia la congestion de la nariz facilitando la respiracion',1,0,6.1),(681817,'Frenadol Forte','Oral','Sobre','10 Sobres','Analgesico, Antigripal y Antipiretico','Aliviar la gripe, disminuir el dolor y la fiebre',1,0,4.95),(702151,'Couldina con paracetamol','Oral','Comprimido efervescente','650 mg x 20 comp','Antigripal','Aliviar la gripe disminuir el dolor y la fiebre',0,1,10.51),(711033,'Enanplus','Oral','Comprimidos recubiertos','(75mg/25mg) x 20 comp','Analgesico','Aliviar el dolor',1,1,7.1),(712072,'Zepatier','Oral','Comprimidos','(50mg / 100 mg) x 28 comp','Antiviral','Tratar la infeccion producida por el virus de la hepatitis C',1,1,14460.1),(714852,'Carevalan','Oral','Comprimidos recubiertos','(12.5mg/5mg) x 56 comp','Antianginoso y antiarritmico','Previene la angina de pecho y regula el ritmo del corazon',1,1,15.87),(839720,'Gelocatil','Oral','Sobre','10 Sobres','Antigripal, Antianalgesico y Antipiretico','Aliviar la gripe y para disminuir el dolor y la fiebre',1,0,4.95);
/*!40000 ALTER TABLE `medicamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principios_activos`
--

DROP TABLE IF EXISTS `principios_activos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `principios_activos` (
  `Nombre` varchar(60) NOT NULL,
  `pesoMolecular` float DEFAULT NULL,
  `formulaMolecular` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`Nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principios_activos`
--

LOCK TABLES `principios_activos` WRITE;
/*!40000 ALTER TABLE `principios_activos` DISABLE KEYS */;
INSERT INTO `principios_activos` VALUES ('Acido acetilsalicilico',180.16,'C9 H8 O4'),('Acido ascorbico',176.12,'C6 H8 O6'),('Carvedilol',406.474,'C24 H26 N2 O4'),('Clorfenamina',274.79,'C16 H19 Cl N2'),('Dexketopofreno',254.28,'C16 H14 O3'),('Dextrometorfano',271.4,'C18 H25 N O'),('Elbasvir',882.015,'C49 H55 N9 O7'),('Fenilefrina',167.2,'C9 H13 N O2'),('Fluocinolona',452.488,'C24 H30 F2 O6'),('Gramicidina',452.488,'C99 H140 N20 O17'),('Grazoprevir',766.9,'C38 H50 N6 O9 S'),('Ivabradina',468.585,'C27 H36 N2 O5'),('Neomicina',614.644,'C23 H46 N6 O13'),('Oximetazolina',260.375,'C16 H24 N2 O'),('Paracetamol',151.16,'C8 H9 N O2'),('Tramadol',263.38,'C16 H25 N O2');
/*!40000 ALTER TABLE `principios_activos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-20 17:04:07
