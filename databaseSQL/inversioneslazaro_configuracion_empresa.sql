-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: inversioneslazaro
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `configuracion_empresa`
--

DROP TABLE IF EXISTS `configuracion_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuracion_empresa` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `asunto_bienvenida` varchar(255) DEFAULT NULL,
  `asunto_cancelado` varchar(255) DEFAULT NULL,
  `asunto_en_camino` varchar(255) DEFAULT NULL,
  `asunto_entregado` varchar(255) DEFAULT NULL,
  `asunto_reagendado` varchar(255) DEFAULT NULL,
  `footer_agradecimiento` varchar(255) DEFAULT NULL,
  `mensaje_bienvenida` varchar(2000) DEFAULT NULL,
  `mensaje_cancelado` varchar(2000) DEFAULT NULL,
  `mensaje_en_camino` varchar(2000) DEFAULT NULL,
  `mensaje_entregado` varchar(2000) DEFAULT NULL,
  `mensaje_reagendado` varchar(2000) DEFAULT NULL,
  `recomendaciones_entrega` varchar(1000) DEFAULT NULL,
  `texto_boton` varchar(255) DEFAULT NULL,
  `url_logo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracion_empresa`
--

LOCK TABLES `configuracion_empresa` WRITE;
/*!40000 ALTER TABLE `configuracion_empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuracion_empresa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-28  1:04:33
