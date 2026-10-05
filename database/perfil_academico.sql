-- MySQL dump 10.13  Distrib 26.7.0, for macos15 (arm64)
--
-- Host: localhost    Database: perfil_academico
-- ------------------------------------------------------
-- Server version	26.7.0

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
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `perfil_id` int NOT NULL,
  `titulo` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revista` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anio` year DEFAULT NULL,
  `doi` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `perfil_id` (`perfil_id`),
  CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES (1,1,'Entorno virtual de aprendizaje para la promoción del pensamiento espacial en estudiantes de grado 9 de la IED John F Kennedy del municipio de Aracataca Magdalena','South Florida Journal of Development',2025,NULL);
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diplomados`
--

DROP TABLE IF EXISTS `diplomados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diplomados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `perfil_id` int NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institucion` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anio` year DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `perfil_id` (`perfil_id`),
  CONSTRAINT `diplomados_ibfk_1` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diplomados`
--

LOCK TABLES `diplomados` WRITE;
/*!40000 ALTER TABLE `diplomados` DISABLE KEYS */;
INSERT INTO `diplomados` VALUES (1,1,'Diplomado en Excel','Escuela de Ingeniería Julio Garavito',2025),(2,1,'Diplomado en Python','Universidad Nacional',2025),(3,1,'Diplomado en Python','Universidad de Antioquia',2021),(4,1,'Diplomado en Sistemas Difusos','Universidad Nacional de Colombia',2026);
/*!40000 ALTER TABLE `diplomados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institucion_actual` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cargo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
INSERT INTO `perfil` VALUES (1,'Orlando Ramirez Rodriguez','orlando_825@hotmail.com','Universidad del Magdalena y UNICARIBE','Docente catedratico');
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ponencias`
--

DROP TABLE IF EXISTS `ponencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ponencias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `perfil_id` int NOT NULL,
  `titulo` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `evento` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lugar` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anio` year DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `perfil_id` (`perfil_id`),
  CONSTRAINT `ponencias_ibfk_1` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ponencias`
--

LOCK TABLES `ponencias` WRITE;
/*!40000 ALTER TABLE `ponencias` DISABLE KEYS */;
INSERT INTO `ponencias` VALUES (1,1,'XI Simposio Internacional de Didáctica de las Ciencias y las Matemáticas','XI Simposio Internacional de Didáctica de las Ciencias y las Matemáticas','Barranquilla',2023),(2,1,'Entorno virtual de aprendizaje para la promoción del pensamiento espacial','6TO ENCUENTRO INTERNACIONAL DE INVESTIGACIÓN EN EDUCACIÓN MATEMÁTICA (EIEM-6)','Universidad del Atlántico',2022);
/*!40000 ALTER TABLE `ponencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postdoctorados`
--

DROP TABLE IF EXISTS `postdoctorados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postdoctorados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `perfil_id` int NOT NULL,
  `titulo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `institucion` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anio` year DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `perfil_id` (`perfil_id`),
  CONSTRAINT `postdoctorados_ibfk_1` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postdoctorados`
--

LOCK TABLES `postdoctorados` WRITE;
/*!40000 ALTER TABLE `postdoctorados` DISABLE KEYS */;
INSERT INTO `postdoctorados` VALUES (1,1,'Postdoctorado en Epistemología de las Ciencias','UNEY-Venezuela',2026),(2,1,'Postdoctorado en Educación Matemáticas','UNEY-Venezuela',2026);
/*!40000 ALTER TABLE `postdoctorados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `postgrados`
--

DROP TABLE IF EXISTS `postgrados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `postgrados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `perfil_id` int NOT NULL,
  `titulo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `universidad` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anio` year DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `perfil_id` (`perfil_id`),
  CONSTRAINT `postgrados_ibfk_1` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postgrados`
--

LOCK TABLES `postgrados` WRITE;
/*!40000 ALTER TABLE `postgrados` DISABLE KEYS */;
INSERT INTO `postgrados` VALUES (1,1,'Especialización en Multimedia para la Docencia','Universidad Cooperativa de Colombia-UCC',2008),(2,1,'Especialización en Didáctica de las Matemáticas','Universidad del Atlántico',2022),(3,1,'Maestría en Matemática','Universidad del Zulia-Venezuela',2017),(4,1,'Doctorado en Educación','IESIP-Venezuela',2023);
/*!40000 ALTER TABLE `postgrados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pregrados`
--

DROP TABLE IF EXISTS `pregrados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pregrados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `perfil_id` int NOT NULL,
  `titulo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `universidad` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anio` year DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `perfil_id` (`perfil_id`),
  CONSTRAINT `pregrados_ibfk_1` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregrados`
--

LOCK TABLES `pregrados` WRITE;
/*!40000 ALTER TABLE `pregrados` DISABLE KEYS */;
INSERT INTO `pregrados` VALUES (1,1,'Licenciado en Educación Básica con Énfasis en Matemáticas','Institución Universitaria del Caribe-UNICARIBE',2001),(2,1,'Ingeniero de Telecomunicaciones','UNAD',2019);
/*!40000 ALTER TABLE `pregrados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software_registrados`
--

DROP TABLE IF EXISTS `software_registrados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `software_registrados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `perfil_id` int NOT NULL,
  `nombre` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `entidad_registro` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anio` year DEFAULT NULL,
  `numero_registro` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `perfil_id` (`perfil_id`),
  CONSTRAINT `software_registrados_ibfk_1` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software_registrados`
--

LOCK TABLES `software_registrados` WRITE;
/*!40000 ALTER TABLE `software_registrados` DISABLE KEYS */;
INSERT INTO `software_registrados` VALUES (1,1,'APP: GEOMETRÍA 3D','Programa de computador, obra inédita, individual y originaria. País de origen: Colombia. Fecha de registro: 05 de julio de 2026. Libro-Tomo-Partida: 13-109-377.','Dirección Nacional de Derecho de Autor (DNDA)',2026,'13-109-377');
/*!40000 ALTER TABLE `software_registrados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-05 18:43:38
