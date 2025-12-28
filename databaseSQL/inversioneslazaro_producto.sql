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
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `producto_id` bigint NOT NULL AUTO_INCREMENT,
  `alto_cm` double DEFAULT NULL,
  `ancho_cm` double DEFAULT NULL,
  `cod_pro` varchar(50) NOT NULL,
  `descripcion_corta` varchar(1000) NOT NULL,
  `descripcion_larga` varchar(255) DEFAULT NULL,
  `dias_procesamiento` int NOT NULL,
  `es_destacado` bit(1) DEFAULT NULL,
  `estado` bit(1) NOT NULL,
  `fecha_act` datetime(6) DEFAULT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `ficha_tecnica` varchar(250) DEFAULT NULL,
  `fondo_cm` double DEFAULT NULL,
  `garantia_meses` int DEFAULT NULL,
  `material` varchar(100) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `nom_pro` varchar(255) NOT NULL,
  `pais_origen` varchar(100) DEFAULT NULL,
  `potencia_btu` int DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL,
  `precio_oferta` decimal(10,2) DEFAULT NULL,
  `stock` int NOT NULL,
  `id_cate` bigint NOT NULL,
  `id_marca` bigint NOT NULL,
  `id_tipo` bigint NOT NULL,
  PRIMARY KEY (`producto_id`),
  UNIQUE KEY `UKq39vplglc8xwbvu6mya1gc9ry` (`cod_pro`),
  KEY `FK42hq7rbgqon2kly93yoanxnal` (`id_cate`),
  KEY `FKpmfw7ds3rfuwge05ehb216r82` (`id_marca`),
  KEY `FK833bhaxg022lr14devyc3jle9` (`id_tipo`),
  CONSTRAINT `FK42hq7rbgqon2kly93yoanxnal` FOREIGN KEY (`id_cate`) REFERENCES `categoria` (`id_cate`),
  CONSTRAINT `FK833bhaxg022lr14devyc3jle9` FOREIGN KEY (`id_tipo`) REFERENCES `tipo_producto` (`id_tipo`),
  CONSTRAINT `FKpmfw7ds3rfuwge05ehb216r82` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id_marca`),
  CONSTRAINT `producto_chk_1` CHECK ((`dias_procesamiento` >= 0)),
  CONSTRAINT `producto_chk_2` CHECK ((`stock` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,50,70,'CCM-0192','Caja china triple función','Caja china, parrilla y chancho al palo. Fabricación integral en acero inoxidable contraplacado interior con fibra o lana de vidrio para mejorar condiciones de calor al interior',3,NULL,_binary '','2025-12-14 02:42:52.569468','2025-12-14 02:42:44.313719','',50,6,'Acero inoxidable contraplacado','Caja China','Caja china 3 en 1','Perú',122,2300.00,2000.00,9,1,1,1),(2,70,150,'CCC-0028','Cocina chifera fabricación integral en acero inoxidable grado AISI 201 ','Equipada con 3 hornillas tipo wok, especial para salteados y comida china, con sistema de gas de alta presión',7,NULL,_binary '','2025-12-14 02:45:05.150244','2025-12-14 02:45:05.150244','',80,6,'Acero inoxidable grado AISI 201 ','Cocina','Cocina chifera','Perú',1246,3500.00,3999.00,3,2,2,2),(3,180,150,'HEG-002','Horno fabricación integral en acero inoxidable grado AISI 201 sanitario','Sistema de cocción dual: a gas y carbón; para 24 pollos de capacidad, equipado con 5 quemadores infrarojos a gas y zona carbonera',0,NULL,_binary '','2025-12-14 02:47:39.704074','2025-12-14 02:47:39.703071','',100,12,'Acero inoxidable grado AISI 201 ','Cocina','Horno 24 pollos dual con freidora automática','Perú',7890,10500.00,9999.00,1,3,3,3);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
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
