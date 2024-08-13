-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tallerautos_vistas
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `partes`
--

DROP TABLE IF EXISTS `partes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partes` (
  `Num_Parte` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Color` varchar(50) DEFAULT NULL,
  `Peso` float DEFAULT NULL,
  `Precio` decimal(10,2) DEFAULT NULL,
  `Ciudad` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Num_Parte`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partes`
--

LOCK TABLES `partes` WRITE;
/*!40000 ALTER TABLE `partes` DISABLE KEYS */;
INSERT INTO `partes` VALUES (1,'Perno A','Negro',16.5,5.75,'Londres'),(2,'Tornillo B','Plateado',12,3.45,'Madrid'),(3,'Tuerca C','Azul',8.5,1.25,'Roma'),(4,'Arandela D','Rojo',10,0.75,'Barcelona'),(5,'Rivet E','Verde',15.2,2.50,'Madrid'),(6,'Perno F','Negro',17,6.00,'Londres'),(7,'Tornillo G','Plateado',13.5,3.90,'Madrid'),(8,'Tuerca H','Azul',9,1.50,'Roma'),(9,'Arandela I','Rojo',11,0.85,'Barcelona'),(10,'Rivet J','Verde',16,2.75,'Madrid'),(11,'Perno K','Negro',18,6.25,'Londres'),(12,'Tornillo L','Plateado',14,4.00,'Madrid'),(13,'Tuerca M','Azul',9.5,1.75,'Roma'),(14,'Arandela N','Rojo',12,1.00,'Barcelona'),(15,'Rivet O','Verde',17,3.00,'Madrid'),(16,'Perno P','Negro',19,6.50,'Londres'),(17,'Tornillo Q','Plateado',15,4.20,'Madrid'),(18,'Tuerca R','Azul',10,2.00,'Roma'),(19,'Arandela S','Rojo',13,1.25,'Barcelona'),(20,'Rivet T','Verde',18,3.25,'Madrid'),(21,'Perno U','Negro',20,6.75,'Londres'),(22,'Tornillo V','Plateado',16,4.50,'Madrid'),(23,'Tuerca W','Azul',10.5,2.25,'Roma'),(24,'Arandela X','Rojo',14,1.50,'Barcelona'),(25,'Rivet Y','Verde',19,3.50,'Madrid'),(26,'Perno Z','Negro',21,7.00,'Londres');
/*!40000 ALTER TABLE `partes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `partesportaller`
--

DROP TABLE IF EXISTS `partesportaller`;
/*!50001 DROP VIEW IF EXISTS `partesportaller`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `partesportaller` AS SELECT 
 1 AS `Nombre_Taller`,
 1 AS `Nombre_Parte`,
 1 AS `Cantidades_Utilizadas`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `ID_Proveedor` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Status` int NOT NULL,
  `Ciudad` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_Proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES (1,'Elizabeth Bennet',10,'Londres'),(2,'Fitzwilliam Darcy',10,'Madrid'),(3,'Emma Woodhouse',20,'París'),(4,'George Knightley',10,'Roma'),(5,'Elinor Dashwood',20,'Lisboa'),(6,'Marianne Dashwood',10,'Barcelona'),(7,'Edward Ferrars',20,'Ámsterdam'),(8,'Catherine Morland',10,'Berlín'),(9,'Henry Tilney',20,'Viena'),(10,'Fanny Price',10,'Estocolmo'),(11,'Edmund Bertram',20,'Bruselas'),(12,'Anne Elliot',10,'Múnich'),(13,'Captain Wentworth',20,'Lima'),(14,'John Willoughby',10,'Buenos Aires'),(15,'Charlotte Lucas',20,'Ciudad de México'),(16,'Colonel Brandon',10,'Santiago de Chile'),(17,'Lady Catherine',20,'Bogotá'),(18,'Mr. Collins',10,'Quito'),(19,'Georgiana Darcy',20,'Caracas'),(20,'Jane Bennet',10,'Rio de Janeiro'),(21,'Charles Bingley',20,'Lima'),(22,'Mary Crawford',10,'Montevideo'),(23,'Mr. Woodhouse',20,'San José'),(24,'Lady Susan',10,'Panamá'),(25,'John Thorpe',20,'Bogotá');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `proveedoresporciudad`
--

DROP TABLE IF EXISTS `proveedoresporciudad`;
/*!50001 DROP VIEW IF EXISTS `proveedoresporciudad`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `proveedoresporciudad` AS SELECT 
 1 AS `Ciudad_Proveedor`,
 1 AS `Nombre_Proveedor`,
 1 AS `Total_Partes_Utilizadas`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `proveedoresypartes`
--

DROP TABLE IF EXISTS `proveedoresypartes`;
/*!50001 DROP VIEW IF EXISTS `proveedoresypartes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `proveedoresypartes` AS SELECT 
 1 AS `Nombre_Proveedor`,
 1 AS `Parte_Utilizada`,
 1 AS `Nombre_Parte`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `proveedoresypartesutilizadas`
--

DROP TABLE IF EXISTS `proveedoresypartesutilizadas`;
/*!50001 DROP VIEW IF EXISTS `proveedoresypartesutilizadas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `proveedoresypartesutilizadas` AS SELECT 
 1 AS `ID_Proveedor`,
 1 AS `Nombre_Proveedor`,
 1 AS `Total_Partes_Utilizadas`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `taller`
--

DROP TABLE IF EXISTS `taller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taller` (
  `ID_Taller` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `ID_Proveedor` int DEFAULT NULL,
  `Proveedor` varchar(100) DEFAULT NULL,
  `Num_Parte` int DEFAULT NULL,
  `Parte_Utilizada` varchar(100) DEFAULT NULL,
  `Cantidades_Utilizadas` int DEFAULT NULL,
  `Ciudad` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_Taller`),
  KEY `ID_Proveedor` (`ID_Proveedor`),
  KEY `Num_Parte` (`Num_Parte`),
  CONSTRAINT `taller_ibfk_1` FOREIGN KEY (`ID_Proveedor`) REFERENCES `proveedor` (`ID_Proveedor`),
  CONSTRAINT `taller_ibfk_2` FOREIGN KEY (`Num_Parte`) REFERENCES `partes` (`Num_Parte`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taller`
--

LOCK TABLES `taller` WRITE;
/*!40000 ALTER TABLE `taller` DISABLE KEYS */;
INSERT INTO `taller` VALUES (1,'Magic',1,'Elizabeth Bennet',1,'Perno A',50,'Londres'),(2,'Wonder',2,'Fitzwilliam Darcy',2,'Tornillo B',60,'Madrid'),(3,'Dream',3,'Emma Woodhouse',3,'Tuerca C',55,'París'),(4,'Fantasy',4,'George Knightley',4,'Arandela D',70,'Roma'),(5,'Oasis',5,'Elinor Dashwood',5,'Rivet E',80,'Lisboa'),(6,'Anthem',6,'Marianne Dashwood',6,'Perno F',90,'Barcelona'),(7,'Quantum',7,'Edward Ferrars',7,'Tornillo G',65,'Ámsterdam'),(8,'Spectrum',8,'Catherine Morland',8,'Tuerca H',75,'Berlín'),(9,'Harmony',9,'Henry Tilney',9,'Arandela I',85,'Viena'),(10,'Freedom',10,'Fanny Price',10,'Rivet J',95,'Estocolmo'),(11,'Magic II',11,'Edmund Bertram',11,'Perno K',40,'Bruselas'),(12,'Wonder II',12,'Anne Elliot',12,'Tornillo L',50,'Múnich'),(13,'Dream II',13,'Captain Wentworth',13,'Tuerca M',60,'Lima'),(14,'Fantasy II',14,'John Willoughby',14,'Arandela N',70,'Buenos Aires'),(15,'Oasis II',15,'Charlotte Lucas',15,'Rivet O',80,'Ciudad de México'),(16,'Anthem II',16,'Colonel Brandon',16,'Perno P',90,'Santiago de Chile'),(17,'Quantum II',17,'Lady Catherine',17,'Tornillo Q',65,'Bogotá'),(18,'Spectrum II',18,'Mr. Collins',18,'Tuerca R',75,'Quito'),(19,'Harmony II',19,'Georgiana Darcy',19,'Arandela S',85,'Caracas'),(20,'Freedom II',20,'Jane Bennet',20,'Rivet T',95,'Rio de Janeiro'),(21,'Magic III',21,'Charles Bingley',21,'Perno U',50,'Lima'),(22,'Wonder III',22,'Mary Crawford',22,'Tornillo V',60,'Montevideo'),(23,'Dream III',23,'Mr. Woodhouse',23,'Tuerca W',55,'San José'),(24,'Fantasy III',24,'Lady Susan',24,'Arandela X',70,'Panamá'),(25,'Oasis III',25,'John Thorpe',25,'Rivet Y',80,'Bogotá');
/*!40000 ALTER TABLE `taller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `talleresytotalpartes`
--

DROP TABLE IF EXISTS `talleresytotalpartes`;
/*!50001 DROP VIEW IF EXISTS `talleresytotalpartes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `talleresytotalpartes` AS SELECT 
 1 AS `Nombre_Taller`,
 1 AS `Total_Partes_Utilizadas`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `partesportaller`
--

/*!50001 DROP VIEW IF EXISTS `partesportaller`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `partesportaller` AS select `t`.`Nombre` AS `Nombre_Taller`,`p`.`Nombre` AS `Nombre_Parte`,`t`.`Cantidades_Utilizadas` AS `Cantidades_Utilizadas` from (`taller` `t` join `partes` `p` on((`t`.`Num_Parte` = `p`.`Num_Parte`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `proveedoresporciudad`
--

/*!50001 DROP VIEW IF EXISTS `proveedoresporciudad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `proveedoresporciudad` AS select `p`.`Ciudad` AS `Ciudad_Proveedor`,`p`.`Nombre` AS `Nombre_Proveedor`,sum(`t`.`Cantidades_Utilizadas`) AS `Total_Partes_Utilizadas` from (`proveedor` `p` join `taller` `t` on((`p`.`ID_Proveedor` = `t`.`ID_Proveedor`))) group by `p`.`Ciudad`,`p`.`Nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `proveedoresypartes`
--

/*!50001 DROP VIEW IF EXISTS `proveedoresypartes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `proveedoresypartes` AS select `p`.`Nombre` AS `Nombre_Proveedor`,`t`.`Parte_Utilizada` AS `Parte_Utilizada`,`p2`.`Nombre` AS `Nombre_Parte` from ((`proveedor` `p` join `taller` `t` on((`p`.`ID_Proveedor` = `t`.`ID_Proveedor`))) join `partes` `p2` on((`t`.`Num_Parte` = `p2`.`Num_Parte`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `proveedoresypartesutilizadas`
--

/*!50001 DROP VIEW IF EXISTS `proveedoresypartesutilizadas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `proveedoresypartesutilizadas` AS select `p`.`ID_Proveedor` AS `ID_Proveedor`,`p`.`Nombre` AS `Nombre_Proveedor`,sum(`t`.`Cantidades_Utilizadas`) AS `Total_Partes_Utilizadas` from (`proveedor` `p` join `taller` `t` on((`p`.`ID_Proveedor` = `t`.`ID_Proveedor`))) where (`p`.`Status` = '10') group by `p`.`ID_Proveedor`,`p`.`Nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `talleresytotalpartes`
--

/*!50001 DROP VIEW IF EXISTS `talleresytotalpartes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `talleresytotalpartes` AS select `taller`.`Nombre` AS `Nombre_Taller`,sum(`taller`.`Cantidades_Utilizadas`) AS `Total_Partes_Utilizadas` from `taller` group by `taller`.`Nombre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-13 17:15:10
