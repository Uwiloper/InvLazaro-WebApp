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
-- Table structure for table `auditoria_general`
--

DROP TABLE IF EXISTS `auditoria_general`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditoria_general` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `accion` enum('ACTUALIZAR','CREAR','ELIMINAR','HABILITAR') NOT NULL,
  `entidad_afectada` varchar(100) NOT NULL,
  `entidad_id` varchar(50) NOT NULL,
  `fecha_accion` datetime(6) DEFAULT NULL,
  `realizado_por` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria_general`
--

LOCK TABLES `auditoria_general` WRITE;
/*!40000 ALTER TABLE `auditoria_general` DISABLE KEYS */;
INSERT INTO `auditoria_general` VALUES (1,'ACTUALIZAR','Usuario','1','2025-12-14 02:25:53.291777','user@user.com'),(2,'CREAR','Marca','1','2025-12-14 02:34:59.421995','user@user.com'),(3,'CREAR','Marca','2','2025-12-14 02:35:05.135363','user@user.com'),(4,'CREAR','Marca','3','2025-12-14 02:35:11.041455','user@user.com'),(5,'CREAR','Categoría','1','2025-12-14 02:35:27.084854','user@user.com'),(6,'ACTUALIZAR','Categoría','1','2025-12-14 02:35:37.172058','user@user.com'),(7,'CREAR','Categoría','2','2025-12-14 02:35:55.792172','user@user.com'),(8,'CREAR','Categoría','3','2025-12-14 02:36:09.230410','user@user.com'),(9,'CREAR','Tipo de Producto','1','2025-12-14 02:36:26.076051','user@user.com'),(10,'CREAR','Tipo de Producto','2','2025-12-14 02:36:47.472684','user@user.com'),(11,'CREAR','Tipo de Producto','3','2025-12-14 02:37:03.038858','user@user.com'),(12,'CREAR','Producto','CCM-0192','2025-12-14 02:42:44.387649','user@user.com'),(13,'ACTUALIZAR','producto','CCM-0192','2025-12-14 02:42:52.566468','user@user.com'),(14,'CREAR','Producto','CCC-0028','2025-12-14 02:45:05.166243','user@user.com'),(15,'CREAR','Producto','HEG-002','2025-12-14 02:47:39.731073','user@user.com'),(16,'ACTUALIZAR','Pedido (Estado)','1','2025-12-15 01:38:40.082239','user@user.com'),(17,'ACTUALIZAR','Pedido (Estado)','2','2025-12-15 01:38:49.629678','user@user.com'),(18,'ACTUALIZAR','Pedido (Estado)','1','2025-12-15 01:39:13.101035','user@user.com'),(19,'ACTUALIZAR','Pedido (Estado)','2','2025-12-15 01:39:13.712092','user@user.com'),(20,'ACTUALIZAR','Pedido (Estado)','2','2025-12-15 01:39:54.348159','user@user.com'),(21,'ACTUALIZAR','Pedido (Estado)','2','2025-12-15 01:40:05.827432','user@user.com'),(22,'ACTUALIZAR','Pedido (Estado)','1','2025-12-15 01:40:06.432217','user@user.com'),(23,'ACTUALIZAR','Pedido (Estado)','1','2025-12-15 01:40:17.119647','user@user.com'),(24,'ACTUALIZAR','Pedido (Estado)','1','2025-12-15 01:40:22.693536','user@user.com'),(25,'ACTUALIZAR','Pedido (Estado)','1','2025-12-15 01:55:42.209622','user@user.com'),(26,'ACTUALIZAR','Pedido (Estado)','1','2025-12-15 01:55:52.973795','user@user.com'),(27,'ACTUALIZAR','Pedido (Estado)','1','2025-12-15 01:57:27.239612','user@user.com'),(28,'ACTUALIZAR','Pedido (Estado)','1','2025-12-15 01:57:29.320146','user@user.com');
/*!40000 ALTER TABLE `auditoria_general` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-28  1:04:31
