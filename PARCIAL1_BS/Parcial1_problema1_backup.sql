-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: Parcial1_problema1
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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `empresa` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  `codigoPostal` varchar(15) DEFAULT NULL,
  `país` varchar(50) DEFAULT NULL,
  `empleadoAtiende` int(11) DEFAULT NULL,
  `limiteCredito` double DEFAULT NULL,
  `tipo_cliente` enum('Regular','VIP') DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `email` (`email`),
  KEY `empleadoAtiende` (`empleadoAtiende`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`empleadoAtiende`) REFERENCES `empleados` (`documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Conway','Rulli','Peter','+507 1234567','Albrook Mall','Panamá','Panamá','0801','Panamá',2455889,10000,'Regular','p.rulli@conway.com'),(2,'El Costo','Kahlo','Frida','+507 2345678','Metromall','Panamá','Panamá','0802','Panamá',2455889,15000,'Regular','frida.kahlo@elcosto.com'),(3,'El Campeón','Van Gogh','Vicent','+507 3456789','Albrook Mall','Panamá','Panamá','0803','Panamá',82231155,20000,'Regular','v.vangogh@elcampeon.com'),(4,'H&M','Rubier','Ana','+507 4567890','Multiplaza','Panamá','Panamá','0804','Panamá',8821459,250000,'VIP','ana.rub@hm.com'),(5,'Collins','Flores','Laura','+507 5678901','Multiplaza','Panamá','Panamá','0805','Panamá',35557869,300000,'VIP','laura.f@collins.com'),(6,'Steven','Santana','Carlos','+507 6789012','Multiplaza','Panamá','Panamá','0806','Panamá',35557869,350000,'VIP','carlos.santana@steven.com'),(7,'El Titán','Ramirez','Luis','+507 7890123','Metromall','Panamá','Panamá','0807','Panamá',82231155,40000,'Regular','luis.ramirez@eltitan.com');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallesordenes`
--

DROP TABLE IF EXISTS `detallesordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallesordenes` (
  `id_orden` int(11) NOT NULL,
  `id_producto` varchar(15) DEFAULT NULL,
  `cantidadPedida` int(11) DEFAULT NULL,
  `valorUnitario` double DEFAULT NULL,
  `ordenEntrega` int(6) DEFAULT NULL,
  `requiere_revision` tinyint(1) DEFAULT NULL,
  `nivelCalidad` enum('Excelente','Bueno','Regular','Malo') DEFAULT NULL,
  PRIMARY KEY (`id_orden`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `detallesordenes_ibfk_1` FOREIGN KEY (`id_orden`) REFERENCES `ordenes` (`id_orden`),
  CONSTRAINT `detallesordenes_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallesordenes`
--

LOCK TABLES `detallesordenes` WRITE;
/*!40000 ALTER TABLE `detallesordenes` DISABLE KEYS */;
INSERT INTO `detallesordenes` VALUES (1,'PR001',50,25,1,1,'Malo'),(2,'PR002',350,30,2,0,'Regular'),(3,'PR003',2540,15,3,0,'Bueno'),(4,'PR004',25,50,4,1,'Malo'),(5,'PR005',4589,40,5,0,'Excelente'),(6,'PR006',28,20,6,1,'Malo'),(7,'PR007',300,35,7,0,'Regular');
/*!40000 ALTER TABLE `detallesordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `documento` int(11) NOT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `extension` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `id_oficina` varchar(10) DEFAULT NULL,
  `jefe` int(11) DEFAULT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  `status_activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`documento`),
  UNIQUE KEY `departamento` (`departamento`),
  KEY `id_oficina` (`id_oficina`),
  KEY `jefe` (`jefe`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`id_oficina`) REFERENCES `oficinas` (`id_oficina`),
  CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`jefe`) REFERENCES `empleados` (`documento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (2455889,'Gómez','María','ext102','maria.gomez@cye.com','OF002',8821459,'Gerente de Sucursal','Operaciones',1),(7889965,'Rodríguez','Laura','ext105','laura.rodriguez@cye.com','OF005',2455889,'Supervisor de Recursos Humanos','Recursos Humanos',1),(8821459,'Pérez','Juan','ext101','juan.perez@cye.com','OF001',NULL,'Gerente General','Administración',1),(35557869,'López','Pedro','ext103','pedro.lopez@cye.com','OF003',8821459,'Gerente de Ventas','Comercial',1),(37899696,'Sánchez','Carlos','ext106','carlos.sanchez@cye.com','OF006',2455889,'Contador','Contabilidad',1),(82231155,'Ramírez','Luis','ext107','luis.ramirez@cye.com','OF007',35557869,'Asistente de Ventas','Ventas',1),(82456117,'Martínez','Ana','ext104','ana.martinez@cye.com','OF004',8821459,'Gerente de Logística','Logística',0);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineasproductos`
--

DROP TABLE IF EXISTS `lineasproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lineasproductos` (
  `id_lineaproducto` int(5) NOT NULL,
  `nombreLinea` varchar(50) DEFAULT NULL,
  `textoDescripcion` varchar(4000) DEFAULT NULL,
  `htmlDescripcion` varchar(200) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `clasificacion` enum('A','B','C') DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_lineaproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineasproductos`
--

LOCK TABLES `lineasproductos` WRITE;
/*!40000 ALTER TABLE `lineasproductos` DISABLE KEYS */;
INSERT INTO `lineasproductos` VALUES (1,'Ropa de Oficina','Ropa formal y semi-formal para uso en oficina.','<p>Ropa formal y semi-formal para uso en oficina.</p>','ropa_oficina.jpg','A',1),(2,'Ropa Casual','Ropa casual para el día a día.','<p>Ropa casual para el día a día.</p>','ropa_casual.jpg','A',1),(3,'Ropa Deportiva','Ropa para actividades deportivas.','<p>Ropa para actividades deportivas.</p>','ropa_deportiva.jpg','B',1),(4,'Ropa de Noche','Ropa elegante para eventos nocturnos.','<p>Ropa elegante para eventos nocturnos.</p>','ropa_noche.jpg','A',1),(5,'Ropa de Invierno','Ropa abrigada para el invierno.','<p>Ropa abrigada para el invierno.</p>','ropa_invierno.jpg','B',1),(6,'Ropa de Verano','Ropa ligera para el verano.','<p>Ropa ligera para el verano.</p>','ropa_verano.jpg','C',1),(7,'Accesorios','Complementos de moda.','<p>Complementos de moda.</p>','accesorios.jpg','A',1);
/*!40000 ALTER TABLE `lineasproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oficinas`
--

DROP TABLE IF EXISTS `oficinas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oficinas` (
  `id_oficina` varchar(10) NOT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `codigopostal` varchar(15) DEFAULT NULL,
  `continente` varchar(10) DEFAULT NULL,
  `operativa` tinyint(1) DEFAULT NULL,
  `zona` enum('ZonaNorte','ZonaSur','ZonaEste','ZonaOeste') DEFAULT NULL,
  PRIMARY KEY (`id_oficina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oficinas`
--

LOCK TABLES `oficinas` WRITE;
/*!40000 ALTER TABLE `oficinas` DISABLE KEYS */;
INSERT INTO `oficinas` VALUES ('OF001','Panamá','+507 2134567','Las Cumbres','Administrativo','Panamá','12345','América',1,'ZonaNorte'),('OF002','La Chorrera','+507 7654321','Avenida Central','Operaciones','Panamá','54321','América',0,'ZonaSur'),('OF003','Arraiján','+507 9876543','Calle 10','Ventas','Panamá','67890','América',1,'ZonaEste'),('OF004','Panamá','+507 2468013','Avenida Principal','Logística','Panamá','13579','América',1,'ZonaOeste'),('OF005','Chame','+507 2122334','Avenida Norte','Recursos Humanos','Panamá','24680','América',1,'ZonaNorte'),('OF006','San Carlos','+507 5566778','Calle Central','Contabilidad','Panamá','98765','América',1,'ZonaSur'),('OF007','Capira','+507 3344556','Avenida Sur','Tecnología','Panamá','54321','América',0,'ZonaEste');
/*!40000 ALTER TABLE `oficinas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenes`
--

DROP TABLE IF EXISTS `ordenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenes` (
  `id_orden` int(11) NOT NULL,
  `fechaRecibido` date DEFAULT NULL,
  `fechaLimiteEntrega` date DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `observacion` text DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `tipo_orden` enum('Normal','Urgente') DEFAULT NULL,
  `tracking_number` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_orden`),
  UNIQUE KEY `tracking_number` (`tracking_number`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `ordenes_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenes`
--

LOCK TABLES `ordenes` WRITE;
/*!40000 ALTER TABLE `ordenes` DISABLE KEYS */;
INSERT INTO `ordenes` VALUES (1,'2024-06-01','2024-06-10','Pendiente','Blusa de seda, talla M, color blanco',1,'Normal','CYE00000001'),(2,'2024-06-02','2024-06-28','Procesando','Falda lápiz, talla L, color negro',2,'Normal','CYE00000002'),(3,'2024-06-03','2024-06-12','Enviado','Pantalón de vestir, talla S, color azul marino',3,'Normal','CYE00000003'),(4,'2024-06-04','2024-06-27','Prioridad','Vestido de cóctel, talla M, color rojo',4,'Urgente','CYE00000004'),(5,'2024-06-05','2024-06-27','Prioridad','Blazer de lana, talla L, color gris',5,'Urgente','CYE00000005'),(6,'2024-06-06','2024-06-09','Enviado','Abrigo de invierno, talla M, color negro',6,'Urgente','CYE00000006'),(7,'2024-06-07','2024-06-15','Cancelado','Chaqueta de cuero, talla XL, color marrón',7,'Normal','CYE00000007');
/*!40000 ALTER TABLE `ordenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `id_cliente` int(11) DEFAULT NULL,
  `numeroFactura` varchar(50) NOT NULL,
  `fechaPago` date DEFAULT NULL,
  `totalPago` double DEFAULT NULL,
  `metodo_pago` enum('Tarjeta','Efectivo','Transferencia') DEFAULT NULL,
  `confirmado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`numeroFactura`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` varchar(15) NOT NULL,
  `nombreProducto` varchar(70) DEFAULT NULL,
  `id_lineaProducto` int(5) DEFAULT NULL,
  `escala` varchar(10) DEFAULT NULL,
  `cantidad` int(6) DEFAULT NULL,
  `precioVenta` double DEFAULT NULL,
  `MSRP` double DEFAULT NULL,
  `disponibilidad` tinyint(1) DEFAULT NULL,
  `codigo_barras` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  UNIQUE KEY `codigo_barras` (`codigo_barras`),
  KEY `id_lineaProducto` (`id_lineaProducto`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_lineaProducto`) REFERENCES `lineasproductos` (`id_lineaproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('PR001','Blusa de seda',1,'M',100,50,55,1,'0123456789012'),('PR002','Falda lápiz',1,'L',100,45,50,1,'0123456789013'),('PR003','Pantalón de vestir',1,'S',100,60,65,1,'0123456789014'),('PR004','Vestido de cóctel',4,'M',100,70,75,1,'0123456789015'),('PR005','Blazer de lana',1,'L',100,80,85,1,'0123456789016'),('PR006','Abrigo de invierno',5,'M',100,90,95,1,'0123456789017'),('PR007','Chaqueta de cuero',1,'XL',100,100,105,1,'0123456789018');
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

-- Dump completed on 2024-06-25  1:23:30
