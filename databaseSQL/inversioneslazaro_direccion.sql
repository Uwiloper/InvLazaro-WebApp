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
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `calle_avenida` varchar(200) NOT NULL,
  `dpto_interior` varchar(100) DEFAULT NULL,
  `es_principal` bit(1) NOT NULL,
  `numero_calle` varchar(10) NOT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `id_departamento` bigint NOT NULL,
  `distrito_id` bigint NOT NULL,
  `provincia_id` bigint NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9o1fuofurwmnmg58dp9lo00bi` (`id_departamento`),
  KEY `FKpy2p1dh69uqrdm8ed10epe5i7` (`distrito_id`),
  KEY `FKseb5v97ehmni2n3520nfkvgt4` (`provincia_id`),
  KEY `FKsevgdua41k9nn1k7hhglxgixa` (`user_id`),
  CONSTRAINT `FK9o1fuofurwmnmg58dp9lo00bi` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`),
  CONSTRAINT `FKpy2p1dh69uqrdm8ed10epe5i7` FOREIGN KEY (`distrito_id`) REFERENCES `distrito` (`id`),
  CONSTRAINT `FKseb5v97ehmni2n3520nfkvgt4` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`id`),
  CONSTRAINT `FKsevgdua41k9nn1k7hhglxgixa` FOREIGN KEY (`user_id`) REFERENCES `usuarios` (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
INSERT INTO `direccion` VALUES (1,'Av. Aviacion','201',_binary '','1234','Frente a la videna',1,22,2,1);
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-28  1:04:30
