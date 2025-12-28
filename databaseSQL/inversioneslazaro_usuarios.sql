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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idusuario` int NOT NULL AUTO_INCREMENT,
  `apellidos` varchar(50) NOT NULL,
  `celular` varchar(10) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `dni` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `rol` enum('ADMIN','CLIENTE') DEFAULT NULL,
  `estado` bit(1) NOT NULL,
  `fecha_act` datetime(6) DEFAULT NULL,
  `fecha_creacion` datetime(6) DEFAULT NULL,
  `fecha_expiracion_token` datetime(6) DEFAULT NULL,
  `politica` bit(1) NOT NULL,
  `token_verificacion` varchar(255) DEFAULT NULL,
  `usuario_modificacion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `UKkfsp0s1tflm1cwlj8idhqsad0` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'carrasco','9999999999','av mar','77777777','user@user.com','Wilmer','$2a$12$7wwlZzsYdG7qvSrPWrlJNeIsNLQZnzqH7gtxGjGFt8Z/o2b6PWZ2G','CLIENTE',_binary '','2025-12-14 02:25:53.225790',NULL,NULL,_binary '\0',NULL,'user@user.com'),(2,'Perez (Chofer)','999111222','Ruta 66','88888888','chofer@demo.com','Juan','$2a$12$Y/y2oikLmeo5UJODFB1s8eaxxPrOR8278InSq1OYF00tNQbVegAZy','CLIENTE',_binary '',NULL,NULL,NULL,_binary '',NULL,NULL),(3,'Bodega (Almacen)','999333444','Almacen Central','77777777','almacen@demo.com','Pepe','$2a$12$Y/y2oikLmeo5UJODFB1s8eaxxPrOR8278InSq1OYF00tNQbVegAZy','CLIENTE',_binary '',NULL,NULL,NULL,_binary '',NULL,NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
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
