-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: Parcial1_problema2
-- ------------------------------------------------------
-- Server version	11.4.2-MariaDB-ubu2404

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
-- Temporary view structure for view `Autenticacion_de_Datos_de_Usuario`
--

DROP TABLE IF EXISTS `Autenticacion_de_Datos_de_Usuario`;
/*!50001 DROP VIEW IF EXISTS `Autenticacion_de_Datos_de_Usuario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Autenticacion_de_Datos_de_Usuario` AS SELECT 
 1 AS `idAutenticacion`,
 1 AS `fecha`,
 1 AS `nombre_usuario`,
 1 AS `apellido`,
 1 AS `ciudad`,
 1 AS `tipo_empresa`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Clasificacion_de_los_Tipos_de_Usuarios_`
--

DROP TABLE IF EXISTS `Clasificacion_de_los_Tipos_de_Usuarios_`;
/*!50001 DROP VIEW IF EXISTS `Clasificacion_de_los_Tipos_de_Usuarios_`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Clasificacion_de_los_Tipos_de_Usuarios_` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `tipo_empresa`,
 1 AS `nombre_usuario`,
 1 AS `categoria_usuario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Medios_de_pagos`
--

DROP TABLE IF EXISTS `Medios_de_pagos`;
/*!50001 DROP VIEW IF EXISTS `Medios_de_pagos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Medios_de_pagos` AS SELECT 
 1 AS `idPago`,
 1 AS `nombre`,
 1 AS `estado_civil`,
 1 AS `direccion`,
 1 AS `tipo_tarjeta`,
 1 AS `nombre_tarjeta_credito`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Reporte_de_Tipos_de_ Pruebas_Activas`
--

DROP TABLE IF EXISTS `Reporte_de_Tipos_de_ Pruebas_Activas`;
/*!50001 DROP VIEW IF EXISTS `Reporte_de_Tipos_de_ Pruebas_Activas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Reporte_de_Tipos_de_ Pruebas_Activas` AS SELECT 
 1 AS `idReporte`,
 1 AS `idUsuario`,
 1 AS `idTipodeprueba`,
 1 AS `fecha_generacion`,
 1 AS `resultado`,
 1 AS `referencia`,
 1 AS `nombre_prueba`,
 1 AS `descripcion`,
 1 AS `fecha_ingreso`,
 1 AS `categoria_principal`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `Reporte_de_Tipos_de_Pruebas_Activas`
--

DROP TABLE IF EXISTS `Reporte_de_Tipos_de_Pruebas_Activas`;
/*!50001 DROP VIEW IF EXISTS `Reporte_de_Tipos_de_Pruebas_Activas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Reporte_de_Tipos_de_Pruebas_Activas` AS SELECT 
 1 AS `idUsuario`,
 1 AS `idTipodeprueba`,
 1 AS `fecha_generacion`,
 1 AS `nombre_prueba`,
 1 AS `categoria_principal`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `autenticacion`
--

DROP TABLE IF EXISTS `autenticacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autenticacion` (
  `idAutenticacion` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `nombre_usuario` varchar(50) DEFAULT NULL,
  `contrasena` varchar(50) DEFAULT NULL,
  `agente_usuario` varchar(100) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`idAutenticacion`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `autenticacion_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autenticacion`
--

LOCK TABLES `autenticacion` WRITE;
/*!40000 ALTER TABLE `autenticacion` DISABLE KEYS */;
INSERT INTO `autenticacion` VALUES (51,27,'fdrake','y3s02569tlP65896','Mozilla Firefox','TK9862AZSS555588','2023-06-24'),(52,28,'hmorgan','jH3f0256msP65896','Brave','TK2871BQWW374611','2023-06-24'),(53,29,'eteach','kY2d0258thP65896','Google Chrome','TK4352CXVV843782','2023-06-24'),(54,30,'wkidd','fL8s0259plP65896','Mozilla Firefox','TK1983DZXX932665','2023-06-24'),(55,31,'elow','mQ4z0257kjP65896','Brave','TK5264EZZY294557','2023-06-24'),(56,32,'cvane','gA1x0254npP65896','Google Chrome','TK6475FYWW736981','2023-06-24'),(57,33,'sbellamy','rW3y0253thP65896','Mozilla Firefox','TK7586GZYY875422','2023-06-24'),(58,34,'sbonnet','pJ6b0251wlP65896','Brave','TK8697HZXX934213','2023-06-24'),(59,35,'bhornigold','qL7e0256drP65896','Google Chrome','TK9708IZWW465199','2023-06-24'),(60,36,'jrackham','bN5c0252mlP65896','Mozilla Firefox','TK0819JZZY592348','2023-06-24'),(61,37,'abonny','y3s02569tlP65896','Brave','TK1920KXWW384576','2023-06-24'),(62,38,'mread','jH3f0256msP65896','Google Chrome','TK3031LYZZ823655','2023-06-24'),(63,39,'jhawkins','kY2d0258thP65896','Mozilla Firefox','TK4142MXWW694728','2023-06-24'),(64,40,'broberts','fL8s0259plP65896','Brave','TK5253NZYY983547','2023-06-24'),(65,41,'glowther','mQ4z0257kjP65896','Google Chrome','TK6364OXZZ584231','2023-06-24'),(66,42,'ttew','gA1x0254npP65896','Mozilla Firefox','TK7475PYWW762398','2023-06-24'),(67,43,'hdavis','rW3y0253thP65896','Brave','TK8586QZYY495277','2023-06-24'),(68,44,'ldegraaf','pJ6b0251wlP65896','Google Chrome','TK9697RXZZ983612','2023-06-24'),(69,45,'flolonnais','qL7e0256drP65896','Mozilla Firefox','TK0818SZWW576491','2023-06-24'),(70,46,'rbrasiliano','bN5c0252mlP65896','Brave','TK1929TZYY293576','2023-06-24'),(71,47,'havery','y3s02569tlP65896','Google Chrome','TK3030UXZZ781942','2023-06-24'),(72,48,'cmyngs','jH3f0256msP65896','Mozilla Firefox','TK4141VZWW943587','2023-06-24'),(73,49,'tanstis','kY2d0258thP65896','Brave','TK5252WXYY674839','2023-06-24'),(74,50,'jnau','fL8s0259plP65896','Google Chrome','TK6363YZWW865472','2023-06-24'),(75,51,'pgilbert','mQ4z0257kjP65896','Mozilla Firefox','TK7474ZZYY235611','2023-06-24');
/*!40000 ALTER TABLE `autenticacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `idPago` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `tipo_tarjeta` enum('visa','mastercard','american express','discover network','dinners club international') DEFAULT NULL,
  `numero_tarjeta_credito` varchar(16) DEFAULT NULL,
  `nombre_tarjeta_credito` varchar(50) DEFAULT NULL,
  `cvc` int(11) DEFAULT NULL,
  `fecha_expiracion` date DEFAULT NULL,
  `imagen_tarjeta` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idPago`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (52,27,'visa','4111111111111111','Francis Drake',123,'2024-12-01','visa.jpg'),(53,28,'mastercard','5500000000000004','Henry Morgan',234,'2025-11-01','mastercard.jpg'),(54,29,'american express','340000000000009','Edward Teach',345,'2026-10-01','american_express.jpg'),(55,30,'discover network','6011000000000004','William Kidd',456,'2024-09-01','discover_network.jpg'),(56,31,'dinners club international','30000000000004','Edward Low',567,'2025-08-01','dinners_club.jpg'),(57,32,'visa','4111111111111112','Charles Vane',678,'2026-07-01','visa.jpg'),(58,33,'mastercard','5500000000000005','Samuel Bellamy',789,'2027-06-01','mastercard.jpg'),(59,34,'american express','340000000000010','Stede Bonnet',890,'2024-05-01','american_express.jpg'),(60,35,'discover network','6011000000000005','Benjamin Hornigold',901,'2025-04-01','discover_network.jpg'),(61,36,'dinners club international','30000000000005','Jack Rackham',112,'2026-03-01','dinners_club.jpg'),(62,37,'visa','4111111111111113','Anne Bonny',223,'2027-02-01','visa.jpg'),(63,38,'mastercard','5500000000000006','Mary Read',334,'2024-01-01','mastercard.jpg'),(64,39,'american express','340000000000011','John Hawkins',445,'2025-12-01','american_express.jpg'),(65,40,'discover network','6011000000000006','Bartholomew Roberts',556,'2026-11-01','discover_network.jpg'),(66,41,'dinners club international','30000000000006','George Lowther',667,'2027-10-01','dinners_club.jpg'),(67,42,'visa','4111111111111114','Thomas Tew',778,'2024-09-01','visa.jpg'),(68,43,'mastercard','5500000000000007','Howell Davis',889,'2025-08-01','mastercard.jpg'),(69,44,'american express','340000000000012','Laurens de Graaf',990,'2026-07-01','american_express.jpg'),(70,45,'discover network','6011000000000007','François lOlonnais',111,'2027-06-01','discover_network.jpg'),(71,46,'dinners club international','30000000000007','Roche Brasiliano',222,'2024-05-01','dinners_club.jpg'),(72,47,'visa','4111111111111115','Henry Avery',333,'2025-04-01','visa.jpg'),(73,48,'mastercard','5500000000000008','Christopher Myngs',444,'2026-03-01','mastercard.jpg'),(74,49,'american express','340000000000013','Thomas Anstis',555,'2027-02-01','american_express.jpg'),(75,50,'discover network','6011000000000008','Jean-David Nau',666,'2024-01-01','discover_network.jpg'),(76,51,'dinners club international','30000000000008','Pedro Gilbert',777,'2025-12-01','dinners_club.jpg');
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporte`
--

DROP TABLE IF EXISTS `reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reporte` (
  `idReporte` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `idTipodeprueba` int(11) NOT NULL,
  `fecha_generacion` datetime DEFAULT NULL,
  `resultado` text DEFAULT NULL,
  PRIMARY KEY (`idReporte`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idTipodeprueba` (`idTipodeprueba`),
  CONSTRAINT `reporte_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `reporte_ibfk_2` FOREIGN KEY (`idTipodeprueba`) REFERENCES `tipos_de_pruebas` (`idTipodeprueba`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporte`
--

LOCK TABLES `reporte` WRITE;
/*!40000 ALTER TABLE `reporte` DISABLE KEYS */;
INSERT INTO `reporte` VALUES (2,27,56,'2023-01-01 08:00:00','Informe detallado sobre los puertos abiertos encontrados.'),(3,28,57,'2023-01-02 09:15:00','Listado de servicios identificados en el sistema.'),(4,29,58,'2023-01-03 10:30:00','Enumeración completa de usuarios y recursos en la red objetivo.'),(5,30,59,'2023-01-04 11:45:00','Registro detallado de los firewalls y filtros activos identificados.'),(6,31,60,'2023-01-05 13:00:00','Análisis de vulnerabilidades en protocolos de red específicos.'),(7,32,61,'2023-01-06 14:15:00','Informe detallado sobre las vulnerabilidades de inyección SQL encontradas.'),(8,33,62,'2023-01-07 15:30:00','Registro de las vulnerabilidades XSS identificadas y su impacto potencial.'),(9,34,63,'2023-01-08 16:45:00','Detalles sobre las pruebas realizadas para evaluar la vulnerabilidad CSRF.'),(10,35,64,'2023-01-09 18:00:00','Informe detallado sobre las debilidades encontradas en la autenticación y gestión de sesiones.'),(11,36,65,'2023-01-10 19:15:00','Listado de archivos y directorios sensibles encontrados en la aplicación web objetivo.'),(12,37,66,'2023-01-11 20:30:00','Informe sobre el almacenamiento local y datos sensibles encontrados en aplicaciones móviles.'),(13,38,67,'2023-01-12 21:45:00','Análisis detallado del tráfico interceptado y posibles vulnerabilidades identificadas.'),(14,39,68,'2023-01-13 23:00:00','Informe detallado sobre la revisión del código de aplicaciones móviles y las vulnerabilidades encontradas.'),(15,40,69,'2023-01-14 08:00:00','Registro de las vulnerabilidades identificadas en los mecanismos de autenticación y autorización de aplicaciones móviles.'),(16,41,70,'2023-01-15 09:15:00','Informe sobre la manipulación exitosa de datos sensibles en aplicaciones móviles.'),(17,42,71,'2023-01-16 10:30:00','Detalles sobre la revisión de configuración y debilidades encontradas en puntos de acceso inalámbricos.'),(18,43,72,'2023-01-17 11:45:00','Registro de pruebas de fuerza bruta realizadas contra puntos de acceso inalámbricos.'),(19,44,73,'2023-01-18 13:00:00','Informe detallado sobre el tráfico inalámbrico monitoreado y la información sensible capturada.'),(20,45,74,'2023-01-19 14:15:00','Registro de ataques de desautenticación realizados y su impacto en dispositivos inalámbricos.'),(21,46,75,'2023-01-20 15:30:00','Análisis detallado de la seguridad de los protocolos inalámbricos utilizados en la red objetivo.'),(22,47,76,'2023-01-21 16:45:00','Informe detallado sobre los correos electrónicos falsos enviados y la efectividad del phishing.'),(23,48,77,'2023-01-31 18:00:00','Registro de actividades de reconocimiento y la información obtenida sobre el objetivo.'),(24,49,78,'2023-02-01 19:15:00','Informe sobre las vulnerabilidades identificadas y evaluadas en sistemas y redes.'),(25,50,79,'2023-02-02 20:30:00','Detalles sobre las vulnerabilidades explotadas y su impacto en sistemas comprometidos.'),(26,51,80,'2023-02-03 21:45:00','Registro de técnicas utilizadas para escalar privilegios después de comprometer un sistema.');
/*!40000 ALTER TABLE `reporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipos_de_pruebas`
--

DROP TABLE IF EXISTS `tipos_de_pruebas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipos_de_pruebas` (
  `idTipodeprueba` int(11) NOT NULL AUTO_INCREMENT,
  `referencia` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `estado` enum('activo','desactivado') DEFAULT 'activo',
  `categoria_principal` enum('Network Penetration Testing','Web Application Penetration Testing','Mobile Application Penetration Testing','Wireless Penetration Testing','Social Engineering Penetration Testing','Physical Penetration Testing','Red Team Penetration Testing','Purple Team Testing') DEFAULT NULL,
  PRIMARY KEY (`idTipodeprueba`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipos_de_pruebas`
--

LOCK TABLES `tipos_de_pruebas` WRITE;
/*!40000 ALTER TABLE `tipos_de_pruebas` DISABLE KEYS */;
INSERT INTO `tipos_de_pruebas` VALUES (56,'TPR-001','Escaneo de Puertos','Identificación de los puertos abiertos en un sistema para evaluar su seguridad.','2023-01-01','activo','Network Penetration Testing'),(57,'TPR-002','Identificación de Servicios','Recolección de información sobre los servicios en ejecución en un sistema objetivo.','2023-01-02','activo','Network Penetration Testing'),(58,'TPR-003','Enumeración de Usuarios y Recursos','Obtención de información detallada sobre usuarios y recursos en una red.','2023-01-03','activo','Network Penetration Testing'),(59,'TPR-004','Detección de Firewalls y Filtros','Identificación de dispositivos de seguridad como firewalls y filtros activos en la red.','2023-01-04','activo','Network Penetration Testing'),(60,'TPR-005','Exploración de Vulnerabilidades en Protocolos','Análisis de vulnerabilidades específicas en protocolos de red utilizados','2023-01-05','activo','Network Penetration Testing'),(61,'TPR-006','Inyección SQL','Prueba para detectar vulnerabilidades de inyección SQL en aplicaciones web.','2023-01-06','activo','Web Application Penetration Testing'),(62,'TPR-007','Cross-Site Scripting (XSS)','Identificación de vulnerabilidades XSS que podrían ser explotadas para ejecutar scripts maliciosos.','2023-01-07','activo','Web Application Penetration Testing'),(63,'TPR-008','Cross-Site Request Forgery (CSRF)','Evaluación de la capacidad de manipulación de solicitudes CSRF en aplicaciones web.','2023-01-08','activo','Web Application Penetration Testing'),(64,'TPR-009','Vulnerabilidades en la Autenticación y Sesiones','Identificación de debilidades en los mecanismos de autenticación y gestión de sesiones.','2023-01-09','activo','Web Application Penetration Testing'),(65,'TPR-010','Exploración de Archivos y Directorios','Búsqueda de archivos y directorios ocultos o sensibles en aplicaciones web.','2023-01-10','activo','Web Application Penetration Testing'),(66,'TPR-011','Análisis de Almacenamiento Local','Revisión de almacenamiento local en aplicaciones móviles en busca de datos sensibles.','2023-01-11','activo','Mobile Application Penetration Testing'),(67,'TPR-012','Intercepción de Tráfico','Monitoreo y análisis del tráfico de red generado por aplicaciones móviles para identificar vulnerabilidades.','2023-01-12','activo','Mobile Application Penetration Testing'),(68,'TPR-013','Reversión de Ingeniería de Aplicaciones','Análisis del código de aplicaciones móviles para descubrir lógica de negocio y vulnerabilidades.','2023-01-13','activo','Mobile Application Penetration Testing'),(69,'TPR-014','Análisis de Autenticación y Autorización','Evaluación de la seguridad de los mecanismos de autenticación y autorización en aplicaciones móviles.','2023-01-14','activo','Mobile Application Penetration Testing'),(70,'TPR-015','Manipulación de Datos Sensibles','Prueba para verificar la protección adecuada de datos sensibles en aplicaciones móviles.','2023-01-15','activo','Mobile Application Penetration Testing'),(71,'TPR-016','Análisis de Configuración de Punto de Acceso','Revisión de la configuración de puntos de acceso inalámbricos para detectar debilidades de seguridad.','2023-01-16','activo','Wireless Penetration Testing'),(72,'TPR-017','Ataques de Fuerza Bruta','Prueba de ataques de fuerza bruta contra puntos de acceso inalámbricos para evaluar su resistencia.','2023-01-17','activo','Wireless Penetration Testing'),(73,'TPR-018','Sniffing de Tráfico','Monitoreo pasivo del tráfico inalámbrico para capturar información sensible.','2023-01-18','activo','Wireless Penetration Testing'),(74,'TPR-019','Ataques de Desautenticación','Envío de paquetes de desautenticación para interrumpir la conexión entre dispositivos inalámbricos.','2023-01-19','activo','Wireless Penetration Testing'),(75,'TPR-020','Evaluación de Seguridad de Protocolos Inalámbricos','Revisión de la seguridad de los protocolos inalámbricos utilizados en una red.','2023-01-20','activo','Wireless Penetration Testing'),(76,'TPR-021','Phishing y Spear Phishing','Creación y envío de correos electrónicos falsos para engañar a los usuarios y obtener información confidencial.','2023-01-21','activo','Social Engineering Penetration Testing'),(77,'TPR-022','Reconocimiento','Actividades iniciales para obtener información sobre el objetivo y planificar el ataque.','2023-01-31','activo','Red Team Penetration Testing'),(78,'TPR-023','Análisis de Vulnerabilidades','Identificación y evaluación de vulnerabilidades en sistemas y redes.','2023-02-01','activo','Red Team Penetration Testing'),(79,'TPR-024','Explotación','Utilización de vulnerabilidades identificadas para comprometer sistemas o redes.','2023-02-02','activo','Red Team Penetration Testing'),(80,'TPR-025','Escalar Privilegios o Post-Explotación','Técnicas para aumentar los privilegios obtenidos después de comprometer un sistema.','2023-02-03','activo','Red Team Penetration Testing');
/*!40000 ALTER TABLE `tipos_de_pruebas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `nombre_usuario` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `contrasena` varchar(50) DEFAULT NULL,
  `categoria_usuario` enum('cliente','administradores','vendedores','ejecutivos','otros') DEFAULT NULL,
  `tipoUsuario` text DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `estado_civil` enum('Soltero','Casado','Unido','Divorciado','Viudo') DEFAULT NULL,
  `tipo_empresa` enum('publica','privada') DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  UNIQUE KEY `nombre_usuario` (`nombre_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (27,'Francis','Drake','fdrake','TK9862AZSS555588','y3s02569tlP65896','cliente','regular','Bocas del Toro','M','Soltero','publica','Isla Colon, calle principat'),(28,'Henry','Morgan','hmorgan','TK2871BQWW374611','jH3f0256msP65896','administradores','admin','Coclé','M','Casado','privada','Penonome, calle 34'),(29,'Edward','Teach','eteach','TK4352CXVV843782','kY2d0258thP65896','vendedores','sales','Colón','M','Unido','publica','Portobelo, calle principal'),(30,'William','Kidd','wkidd','TK1983DZXX932665','fL8s0259plP65896','ejecutivos','exec','Chiriquí','M','Divorciado','privada','Cerro Punta, calle las fresas'),(31,'Edward','Low','elow','TK5264EZZY294557','mQ4z0257kjP65896','otros','misc','Darién','M','Viudo','publica','La Palma, calle principal'),(32,'Charles','Vane','cvane','TK6475FYWW736981','gA1x0254npP65896','cliente','regular','Herrera','M','Soltero','privada','Las Minas, calle 15'),(33,'Samuel','Bellamy','sbellamy','TK7586GZYY875422','rW3y0253thP65896','administradores','admin','Los Santos','M','Casado','publica','La Villa de los Santos, calle 2'),(34,'Stede','Bonnet','sbonnet','TK8697HZXX934213','pJ6b0251wlP65896','vendedores','sales','Panamá','M','Unido','privada','Calle 50'),(35,'Benjamin','Hornigold','bhornigold','TK9708IZWW465199','qL7e0256drP65896','ejecutivos','exec','Panama Oeste','M','Divorciado','publica','La Chorrera, calle M'),(36,'Jack','Rackham','jrackham','TK0819JZZY592348','bN5c0252mlP65896','otros','misc','Veraguas','M','Viudo','privada','Santa Fe, calle principal'),(37,'Anne','Bonny','abonny','TK1920KXWW384576','y3s02569tlP65896','cliente','regular','Bocas del Toro','F','Soltero','publica','Isla Colon, calle 2'),(38,'Mary','Read','mread','TK3031LYZZ823655','jH3f0256msP65896','administradores','admin','Coclé','F','Casado','privada','Aguadulce, calle 5'),(39,'John','Hawkins','jhawkins','TK4142MXWW694728','kY2d0258thP65896','vendedores','sales','Colón','M','Unido','publica','Margarita, calle principal'),(40,'Bartholomew','Roberts','broberts','TK5253NZYY983547','fL8s0259plP65896','ejecutivos','exec','Chiriquí','M','Divorciado','privada','David, calle 4'),(41,'George','Lowther','glowther','TK6364OXZZ584231','mQ4z0257kjP65896','otros','misc','Darién','M','Viudo','publica','La Palma, calle principal'),(42,'Thomas','Tew','ttew','TK7475PYWW762398','gA1x0254npP65896','cliente','regular','Herrera','M','Soltero','privada','Ocú, calle principal'),(43,'Howell','Davis','hdavis','TK8586QZYY495277','rW3y0253thP65896','administradores','admin','Los Santos','M','Casado','publica','Las Tablas, calle 14'),(44,'Laurens','de Graaf','ldegraaf','TK9697RXZZ983612','pJ6b0251wlP65896','vendedores','sales','Panamá','M','Unido','privada','Punta Paitilla, calle principal'),(45,'François','lOlonnais','flolonnais','TK0818SZWW576491','qL7e0256drP65896','ejecutivos','exec','Panama Oeste','M','Divorciado','publica','Arraiján, calle J'),(46,'Roche','Brasiliano','rbrasiliano','TK1929TZYY293576','bN5c0252mlP65896','otros','misc','Veraguas','M','Viudo','privada','Santiago, calle principal'),(47,'Henry','Avery','havery','TK3030UXZZ781942','y3s02569tlP65896','cliente','regular','Bocas del Toro','M','Soltero','publica','Isla Colon, calle 5'),(48,'Christopher','Myngs','cmyngs','TK4141VZWW943587','jH3f0256msP65896','administradores','admin','Coclé','M','Casado','privada','Aguadulce, calle 30'),(49,'Thomas','Anstis','tanstis','TK5252WXYY674839','kY2d0258thP65896','vendedores','sales','Colón','M','Unido','publica','Margarita, calle principal'),(50,'Jean-David','Nau','jnau','TK6363YZWW865472','fL8s0259plP65896','ejecutivos','exec','Chiriquí','M','Divorciado','privada','Dolega, calle 7'),(51,'Pedro','Gilbert','pgilbert','TK7474ZZYY235611','mQ4z0257kjP65896','otros','misc','Darién','M','Viudo','publica','La Palma, calle 3');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `Autenticacion_de_Datos_de_Usuario`
--

/*!50001 DROP VIEW IF EXISTS `Autenticacion_de_Datos_de_Usuario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Autenticacion_de_Datos_de_Usuario` AS select `a`.`idAutenticacion` AS `idAutenticacion`,`a`.`fecha` AS `fecha`,`a`.`nombre_usuario` AS `nombre_usuario`,`u`.`apellido` AS `apellido`,`u`.`ciudad` AS `ciudad`,`u`.`tipo_empresa` AS `tipo_empresa` from (`autenticacion` `a` join `usuario` `u` on(`a`.`idUsuario` = `u`.`idUsuario`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Clasificacion_de_los_Tipos_de_Usuarios_`
--

/*!50001 DROP VIEW IF EXISTS `Clasificacion_de_los_Tipos_de_Usuarios_`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Clasificacion_de_los_Tipos_de_Usuarios_` AS select `usuario`.`nombre` AS `nombre`,`usuario`.`apellido` AS `apellido`,`usuario`.`tipo_empresa` AS `tipo_empresa`,`usuario`.`nombre_usuario` AS `nombre_usuario`,`usuario`.`categoria_usuario` AS `categoria_usuario` from `usuario` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Medios_de_pagos`
--

/*!50001 DROP VIEW IF EXISTS `Medios_de_pagos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Medios_de_pagos` AS select `p`.`idPago` AS `idPago`,`u`.`nombre` AS `nombre`,`u`.`estado_civil` AS `estado_civil`,`u`.`direccion` AS `direccion`,`p`.`tipo_tarjeta` AS `tipo_tarjeta`,`p`.`nombre_tarjeta_credito` AS `nombre_tarjeta_credito` from (`pago` `p` join `usuario` `u` on(`p`.`idUsuario` = `u`.`idUsuario`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Reporte_de_Tipos_de_ Pruebas_Activas`
--

/*!50001 DROP VIEW IF EXISTS `Reporte_de_Tipos_de_ Pruebas_Activas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Reporte_de_Tipos_de_ Pruebas_Activas` AS select `r`.`idReporte` AS `idReporte`,`r`.`idUsuario` AS `idUsuario`,`r`.`idTipodeprueba` AS `idTipodeprueba`,`r`.`fecha_generacion` AS `fecha_generacion`,`r`.`resultado` AS `resultado`,`t`.`referencia` AS `referencia`,`t`.`nombre` AS `nombre_prueba`,`t`.`descripcion` AS `descripcion`,`t`.`fecha_ingreso` AS `fecha_ingreso`,`t`.`categoria_principal` AS `categoria_principal` from (`reporte` `r` join `tipos_de_pruebas` `t` on(`r`.`idTipodeprueba` = `t`.`idTipodeprueba`)) where `t`.`estado` = 'activo' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `Reporte_de_Tipos_de_Pruebas_Activas`
--

/*!50001 DROP VIEW IF EXISTS `Reporte_de_Tipos_de_Pruebas_Activas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `Reporte_de_Tipos_de_Pruebas_Activas` AS select `r`.`idUsuario` AS `idUsuario`,`r`.`idTipodeprueba` AS `idTipodeprueba`,`r`.`fecha_generacion` AS `fecha_generacion`,`t`.`nombre` AS `nombre_prueba`,`t`.`categoria_principal` AS `categoria_principal` from (`reporte` `r` join `tipos_de_pruebas` `t` on(`r`.`idTipodeprueba` = `t`.`idTipodeprueba`)) where `t`.`estado` = 'activo' */;
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

-- Dump completed on 2024-06-25  1:25:28
