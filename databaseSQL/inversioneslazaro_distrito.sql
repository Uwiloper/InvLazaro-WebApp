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
-- Table structure for table `distrito`
--

DROP TABLE IF EXISTS `distrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distrito` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `provincia_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKggh71vt60yk095b7pkandqqm3` (`provincia_id`),
  CONSTRAINT `FKggh71vt60yk095b7pkandqqm3` FOREIGN KEY (`provincia_id`) REFERENCES `provincia` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distrito`
--

LOCK TABLES `distrito` WRITE;
/*!40000 ALTER TABLE `distrito` DISABLE KEYS */;
INSERT INTO `distrito` VALUES (1,'Callao',1),(2,'Bellavista',1),(3,'Carmen de la Legua Reynoso',1),(4,'La Perla',1),(5,'La Punta',1),(6,'Ventanilla',1),(7,'Mi Peru',1),(8,'Lima',2),(9,'Ancon',2),(10,'Ate',2),(11,'Barranco',2),(12,'Breña',2),(13,'Carabayllo',2),(14,'Chaclacayo',2),(15,'Chorrillos',2),(16,'Cieneguilla',2),(17,'Comas',2),(18,'El Agustino',2),(19,'Independencia',2),(20,'Jesus Maria',2),(21,'La Molina',2),(22,'La Victoria',2),(23,'Lince',2),(24,'Los Olivos',2),(25,'Lurigancho',2),(26,'Lurin',2),(27,'Magdalenta del Mar',2),(28,'Pueblo Libre',2),(29,'Miraflores',2),(30,'Pachacamac',2),(31,'Pucusana',2),(32,'Puente Piedra',2),(33,'Punta Hermosa',2),(34,'Punta Negra',2),(35,'Rimac',2),(36,'San Bartolo',2),(37,'San Borja',2),(38,'San Isidro',2),(39,'San Juan de Lurigancho',2),(40,'San Juan de Miraflores',2),(41,'San Luis',2),(42,'San Martin de Porres',2),(43,'San Miguel',2),(44,'Santa Anita',2),(45,'Santa Maria del Mar',2),(46,'Santa Rosa',2),(47,'Santiago de Surco',2),(48,'Surquillo',2),(49,'Villa el Salvador',2),(50,'Villa Maria del Triunfo',2),(51,'Barranca',3),(52,'Paramonga',3),(53,'Pativilca',3),(54,'Supe',3),(55,'Supe Puerto',3),(56,'Cajatambo',3),(57,'Copa',3),(58,'Gorgor',3),(59,'Huancapon',3),(60,'Manas',3),(61,'Canta',4),(62,'Arahuay',4),(63,'Huamantanga',4),(64,'Huaros',4),(65,'Lachaqui',4),(66,'San Buenaventura',4),(67,'Santa Rosa de Quives',4),(68,'San Vicente de Cañete',5),(69,'Asia',5),(70,'Calango',5),(71,'Cerro Azul',5),(72,'Chilca',5),(73,'Coayllo',5),(74,'Imperial',5),(75,'Lunahuana',5),(76,'Mala',5),(77,'Nuevo Imperial',5),(78,'Pacaran',5),(79,'Quilmana',5),(80,'San Antonio',5),(81,'San Luis',5),(82,'Santa Cruz de Flores',5),(83,'Zuñiga',5),(84,'Huaral',6),(85,'Atavillos Alto',6),(86,'Atavillos Bajo',6),(87,'Aucallama',6),(88,'Chancay',6),(89,'Ihuari',6),(90,'Lampian',6),(91,'Pacaraos',6),(92,'San Miguel de Acos',6),(93,'Santa Cruz de Andamarca',6),(94,'Sumbilca',6),(95,'Veintisiete de Noviembre',6),(96,'Matucana',7),(97,'Antioquia',7),(98,'Callahuanca',7),(99,'Carampoma',7),(100,'Chicla',7),(101,'Cuenca',7),(102,'Huachupampa',7),(103,'Huanza',7),(104,'Huarochiri',7),(105,'Lahuaytambo',7),(106,'Langa',7),(107,'San Pedro de Laraos',7),(108,'Mariatana',7),(109,'Ricardo Palma',7),(110,'San Andres de Tupicocha',7),(111,'San Antonio',7),(112,'San Bartolome',7),(113,'San Damian',7),(114,'San Juan de Iris',7),(115,'San Juan de Tantaranche',7),(116,'San Lorenzo de Quinti',7),(117,'San Mateo',7),(118,'San Mateo de Otao',7),(119,'San Pedro de Casta',7),(120,'San Pedro de Huancayre',7),(121,'Sangallaya',7),(122,'Santa Cruz de Cocachacra',7),(123,'Santa Eulalia',7),(124,'Santiago de Anchucaya',7),(125,'Santiago de Tuna',7),(126,'Santo Domingo de los Olleros',7),(127,'Surco',7),(128,'Huacho',8),(129,'Ambar',8),(130,'Caleta de Carquin',8),(131,'Checras',8),(132,'Hualmay',8),(133,'Huaura',8),(134,'Leoncio Prado',8),(135,'Poccho',8),(136,'Santa Leonor',8),(137,'Santa Maria',8),(138,'Sayan',8),(139,'Vegueta',8),(140,'Oyon',9),(141,'Andajes',9),(142,'Caujul',9),(143,'Cochamarca',9),(144,'Navan',9),(145,'Pachangara',9),(146,'Yauyos',10),(147,'Alis',10),(148,'Allauca',10),(149,'Ayaviri',10),(150,'Azangaro',10),(151,'Cacra',10),(152,'Carania',10),(153,'Catahuasi',10),(154,'Chocos',10),(155,'Cochas',10),(156,'Colonia',10),(157,'Hongos',10),(158,'Huampara',10),(159,'Huancaya',10),(160,'Huangascar',10),(161,'Huantan',10),(162,'Huañec',10),(163,'Laraos',10),(164,'Lincha',10),(165,'Madean',10),(166,'Miraflores',10),(167,'Omas',10),(168,'Putinza',10),(169,'Quinches',10),(170,'Quinocay',10),(171,'San Joaquin',10),(172,'San Pedro de Pilas',10),(173,'Tanta',10),(174,'Tauripampa',10),(175,'Tomas',10),(176,'Tupe',10),(177,'Viñac',10),(178,'Vitis',10);
/*!40000 ALTER TABLE `distrito` ENABLE KEYS */;
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
