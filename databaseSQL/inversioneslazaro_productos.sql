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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `producto_id` bigint NOT NULL AUTO_INCREMENT,
  `codigo` varchar(50) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `descripcion` varchar(1000) DEFAULT NULL,
  `foto_path` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `stock` int NOT NULL,
  PRIMARY KEY (`producto_id`),
  UNIQUE KEY `uk_producto_codigo` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'M-001','2025-10-13 00:11:54.000000','seed','Carrito sanguchero en acero, 2 repisas, ruedas giratorias, ideal para ferias y puestos ambulantes.','carrito_sanguchero_basico.jpg','Carrito Sanguchero Básico',1250.00,10),(2,'M-002','2025-10-13 00:11:54.000000','seed','Carrito profesional en acero inoxidable AISI 304, plancha integrada y cajón térmico, ruedas freno.','carrito_sanguchero_premium.jpg','Carrito Sanguchero Premium',4250.00,5),(3,'M-003','2025-10-13 00:11:54.000000','seed','Parrilla portátil de uso comercial, chapa doble y rejilla cromada, ideal para eventos.','parrilla_portatil.jpg','Parrilla Portátil Acero',980.00,8),(4,'M-004','2025-10-13 00:11:54.000000','seed','Mesa de trabajo en acero inoxidable 120x60 cm, patas reforzadas, fácil limpieza.','mesa_trabajo.jpg','Mesa de Trabajo Acero',890.00,15),(5,'M-005','2025-10-13 00:11:54.000000','seed','Vitrina caliente para exhibición de alimentos con control termostato y luz interior.','vitrina_caliente.jpg','Vitrina Caliente',2750.00,3),(6,'M-006','2025-10-13 00:11:54.000000','seed','Carrito para bebidas con cooler integrado y estantes, estructura reforzada.','carrito_bebidas.jpg','Carro de Bebidas',1350.00,6);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
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
