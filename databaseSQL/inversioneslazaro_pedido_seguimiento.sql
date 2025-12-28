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
-- Table structure for table `pedido_seguimiento`
--

DROP TABLE IF EXISTS `pedido_seguimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_seguimiento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comentario` varchar(500) DEFAULT NULL,
  `estado` enum('CANCELADO','EMPAQUETADO','ENTREGADO','EN_CAMINO','EN_PREPARACION','FINALIZADO','ORDEN_RECIBIDA','PENDIENTE','REAGENDADO') NOT NULL,
  `fecha_cambio` datetime(6) NOT NULL,
  `usuario_responsable` varchar(255) DEFAULT NULL,
  `pedido_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK77hbfkmkt9ladr7dhg96sti1g` (`pedido_id`),
  CONSTRAINT `FK77hbfkmkt9ladr7dhg96sti1g` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_seguimiento`
--

LOCK TABLES `pedido_seguimiento` WRITE;
/*!40000 ALTER TABLE `pedido_seguimiento` DISABLE KEYS */;
INSERT INTO `pedido_seguimiento` VALUES (1,'El estado cambió a EMPAQUETADO','EMPAQUETADO','2025-12-15 01:38:40.012660','user@user.com',1),(2,'El estado cambió a EMPAQUETADO','EMPAQUETADO','2025-12-15 01:38:49.627679','user@user.com',2),(3,'El estado cambió a EN PREPARACION','EN_PREPARACION','2025-12-15 01:39:13.098037','user@user.com',1),(4,'El estado cambió a EN PREPARACION','EN_PREPARACION','2025-12-15 01:39:13.709089','user@user.com',2),(5,'Empaquetado listo. Esperando asignación de ruta.','EMPAQUETADO','2025-12-15 01:39:23.412880','almacen@demo.com',1),(6,'El estado cambió a EMPAQUETADO','EMPAQUETADO','2025-12-15 01:39:54.345146','user@user.com',2),(7,'El estado cambió a ORDEN RECIBIDA','ORDEN_RECIBIDA','2025-12-15 01:40:05.825433','user@user.com',2),(8,'El estado cambió a ORDEN RECIBIDA','ORDEN_RECIBIDA','2025-12-15 01:40:06.430237','user@user.com',1),(9,'El estado cambió a EMPAQUETADO','EMPAQUETADO','2025-12-15 01:40:17.117647','user@user.com',1),(10,'El estado cambió a EN PREPARACION','EN_PREPARACION','2025-12-15 01:40:22.691546','user@user.com',1),(11,'Empaquetado listo. Esperando asignación de ruta.','EMPAQUETADO','2025-12-15 01:55:34.713647','almacen@demo.com',1),(12,'El estado cambió a ORDEN RECIBIDA','ORDEN_RECIBIDA','2025-12-15 01:55:42.205570','user@user.com',1),(13,'El estado cambió a EN PREPARACION','EN_PREPARACION','2025-12-15 01:55:52.971788','user@user.com',1),(14,'Empaquetado listo. Esperando asignación de ruta.','EMPAQUETADO','2025-12-15 01:56:31.655720','almacen@demo.com',1),(15,'En ruta con el chofer: Juan','EN_CAMINO','2025-12-15 01:56:47.966860','user@user.com',1),(16,'Entregado correctamente. Evidencia cargada.','ENTREGADO','2025-12-15 01:57:07.490535','chofer@demo.com',1),(17,'El estado cambió a ORDEN RECIBIDA','ORDEN_RECIBIDA','2025-12-15 01:57:27.236091','user@user.com',1),(18,'El estado cambió a EN PREPARACION','EN_PREPARACION','2025-12-15 01:57:29.316604','user@user.com',1),(19,'Empaquetado listo. Esperando asignación de ruta.','EMPAQUETADO','2025-12-15 01:58:17.831930','almacen@demo.com',1),(20,'En ruta con el chofer: Juan','EN_CAMINO','2025-12-15 01:58:36.765942','user@user.com',1),(21,'Entregado correctamente. Evidencia cargada.','ENTREGADO','2025-12-15 01:58:54.376057','chofer@demo.com',1);
/*!40000 ALTER TABLE `pedido_seguimiento` ENABLE KEYS */;
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
