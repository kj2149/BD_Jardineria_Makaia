CREATE DATABASE  IF NOT EXISTS `jardineria_makaia` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `jardineria_makaia`;
-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jardineria_makaia
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `codigo_cliente` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nombre_contacto` varchar(50) NOT NULL,
  `apellido_contacto` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `direccion1` varchar(50) NOT NULL,
  `direccion2` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `codigo_postal` varchar(50) NOT NULL,
  `codigo_empleado` int NOT NULL,
  `limite_credito` decimal(10,2) NOT NULL,
  PRIMARY KEY (`codigo_cliente`),
  KEY `CLIENTE_KF1` (`codigo_empleado`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`codigo_empleado`) REFERENCES `empleado` (`codigo_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `codigo_empleado` int NOT NULL,
  `nombre_empleado` varchar(50) NOT NULL,
  `apellido1_empleado` varchar(50) NOT NULL,
  `apellido2_empleado` varchar(50) DEFAULT NULL,
  `extension_empleado` varchar(50) NOT NULL,
  `email_empleado` varchar(50) NOT NULL,
  `codigo_oficina` int NOT NULL,
  `codigo_jefe` int NOT NULL,
  `puesto` varchar(50) NOT NULL,
  PRIMARY KEY (`codigo_empleado`),
  KEY `EMPLEADO_FK1` (`codigo_oficina`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`codigo_oficina`) REFERENCES `oficina` (`codigo_oficina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Juan','Perez','Gonzalez','101','juan.perez@example.com',1,3,'Gerente'),(2,'María','García','López','102','maria.garcia@example.com',1,4,'Supervisor'),(3,'Carlos','Martínez','Rodríguez','103','carlos.martinez@example.com',2,4,'Vendedor'),(4,'Laura','Hernández','Fernández','104','laura.hernandez@example.com',2,2,'Vendedor'),(5,'Pedro','Díaz','Sánchez','105','pedro.diaz@example.com',3,10,'Asistente de Ventas'),(6,'Ana','Gómez','Ruiz','106','ana.gomez@example.com',3,11,'Representante de Ventas'),(7,'Luis','Ruiz','Martínez','107','luis.ruiz@example.com',4,12,'Gerente de Logística'),(8,'Elena','Fernández','Pérez','108','elena.fernandez@example.com',4,7,'Asistente de Logística'),(9,'Javier','Gutiérrez','García','109','javier.gutierrez@example.com',5,5,'Gerente de Finanzas'),(10,'Sara','López','Gómez','110','sara.lopez@example.com',5,9,'Analista Financiero'),(11,'Diego','Sánchez','Hernández','111','diego.sanchez@example.com',6,7,'Gerente de Marketing'),(12,'Marta','Martínez','Díaz','112','marta.martinez@example.com',6,11,'Especialista en Marketing'),(13,'Manuel','García','Rodríguez','113','manuel.garcia@example.com',7,3,'Gerente de Recursos Humanos'),(14,'Natalia','Pérez','Fernández','114','natalia.perez@example.com',7,13,'Especialista de RRHH'),(15,'Hugo','Fernández','Sánchez','115','hugo.fernandez@example.com',8,13,'Gerente de IT'),(16,'Samuel','Cifuentes','Toro','200','samuel.cifuentes@example.com',8,12,'Gerente de finanzas');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamas_productos`
--

DROP TABLE IF EXISTS `gamas_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gamas_productos` (
  `gama` varchar(50) NOT NULL,
  `descripcion_gama` varchar(50) NOT NULL,
  `imagen` blob,
  PRIMARY KEY (`gama`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamas_productos`
--

LOCK TABLES `gamas_productos` WRITE;
/*!40000 ALTER TABLE `gamas_productos` DISABLE KEYS */;
INSERT INTO `gamas_productos` VALUES ('Automóviles','Accesorios y piezas para automóviles',NULL),('Belleza','Productos de belleza y cuidado personal',NULL),('Cocina','Utensilios y accesorios para cocina',NULL),('Deportes','Equipos y accesorios para deportes',NULL),('Electrodomésticos','Productos electrónicos para el hogar',NULL),('Electrónica','Productos electrónicos diversos',NULL),('Hogar','Artículos y accesorios para el hogar',NULL),('Jardinería','Productos y herramientas para jardinería',NULL),('Joyería','Joyería fina y accesorios',NULL),('Juguetes','Juguetes para niños de todas las edades',NULL),('Libros','Libros de diversos géneros y autores',NULL),('Muebles','Muebles para decoración de interiores',NULL),('Música','CDs y vinilos de música',NULL),('Ropa','Ropa para hombres, mujeres y niños',NULL);
/*!40000 ALTER TABLE `gamas_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `codigo_producto` int NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `gama` varchar(50) NOT NULL,
  `dimensiones` int NOT NULL,
  `proveedor` varchar(50) NOT NULL,
  `descripcion_producto` varchar(50) NOT NULL,
  `cantidad_producto` int NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `precio_proveedor` decimal(10,2) NOT NULL,
  PRIMARY KEY (`codigo_producto`),
  KEY `INVENTARIO_KF1` (`gama`),
  CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`gama`) REFERENCES `gamas_productos` (`gama`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1001,'Lavadora','Electrodomésticos',60,'ElectroHogar Inc.','Lavadora de carga frontal',20,499.99,350.00),(1002,'Sofá','Muebles',200,'ComfortHome Furnishings','Sofá de tres plazas',15,899.99,600.00),(1003,'Televisor LED','Electrónica',50,'TechZone Electronics','Televisor LED de 55 pulgadas',30,799.99,550.00),(1004,'Set de Legos','Juguetes',30,'KidsToys Corp.','Set de construcción de Lego Classic',50,49.99,30.00),(1005,'Anillo de diamantes','Joyería',5,'DiamondsRUs','Anillo de compromiso de diamante',10,1999.99,1500.00),(1006,'Camisa','Ropa',20,'FashionGlam','Camisa de manga larga para hombres',100,29.99,15.00),(1007,'Juego de sábanas','Hogar',10,'CozyBed Linens','Juego de sábanas de algodón de 4 piezas',40,39.99,25.00),(1008,'Balón de fútbol','Deportes',25,'SportsEmpire','Balón de fútbol FIFA oficial',20,19.99,10.00),(1009,'Sartén antiadherente','Cocina',15,'KitchenEssentials','Sartén antiadherente de 10 pulgadas',35,24.99,15.00),(1010,'Libro de ficción','Libros',10,'BookWorld','Novela de fantasía épica',50,14.99,8.00),(1011,'Álbum de vinilo','Música',30,'MusicStore','Álbum de vinilo de artista famoso',25,24.99,18.00),(1012,'Podadora de césped','Jardinería',100,'GreenGarden Supplies','Podadora de césped eléctrica',10,149.99,100.00),(1013,'Maquillaje','Belleza',5,'BeautyEmporium','Paleta de maquillaje profesional',20,49.99,30.00),(1014,'Aceite de motor','Automóviles',20,'AutoParts Central','Aceite de motor sintético 5W-30',30,29.99,20.00),(1015,'Aspiradora','Electrodomésticos',40,'CleanHome Appliances','Aspiradora vertical sin bolsa',15,129.99,90.00);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oficina`
--

DROP TABLE IF EXISTS `oficina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oficina` (
  `codigo_oficina` int NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `pais` varchar(50) NOT NULL,
  `region` varchar(50) NOT NULL,
  `codigo_postal` int NOT NULL,
  `telefono_oficina` int NOT NULL,
  `direccion_oficina` varchar(50) NOT NULL,
  PRIMARY KEY (`codigo_oficina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oficina`
--

LOCK TABLES `oficina` WRITE;
/*!40000 ALTER TABLE `oficina` DISABLE KEYS */;
INSERT INTO `oficina` VALUES (1,'Medellín','Colombia','Antioquia',50021,1234567890,'Calle 10 # 20-30'),(2,'Buenos Aires','Argentina','Buenos Aires',1001,987654321,'Av. Corrientes 1234'),(3,'São Paulo','Brasil','São Paulo',10000,1029384756,'Rua Augusta 456'),(4,'Lima','Perú','Lima',15001,56473,'Av. Larco 789'),(5,'Santiago','Chile','Región Metropolitana',8320000,192837465,'Calle Ahumada 345'),(6,'Ciudad de México','México','CDMX',1000,83920,'Av. Reforma 567'),(7,'Madrid','España','Madrid',28001,2736,'Gran Vía 8'),(8,'Bogotá','Colombia','Cundinamarca',110111,5647,'Carrera 7 # 45-67'),(9,'Londres','Reino Unido','Londres',1015,27456,'Baker Street 221B'),(10,'París','Francia','Île-de-France',75001,64738291,'Rue de Rivoli 1'),(11,'Nueva York','Estados Unidos','Nueva York',10001,74839,'5th Avenue 350'),(12,'Toronto','Canadá','Ontario',52113,10293,'Yonge Street 10'),(13,'Tokio','Japón','Kantō',1000001,12345,'Shibuya 109'),(14,'Berlín','Alemania','Berlín',10115,1928,'Unter den Linden 50'),(15,'Sídney','Australia','Nueva Gales del Sur',2000,564778,'George Street 60'),(16,'Bogota','Colombia','Cundinamarca',110110,6547321,'Torre ColPatria'),(17,'Medellin','Colombia','Antioquia',50001,650099,'Edificio Coltejer');
/*!40000 ALTER TABLE `oficina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `codigo_cliente` int DEFAULT NULL,
  `forma_pago` varchar(50) NOT NULL,
  `id_transaccion` int NOT NULL,
  `fecha_pago` date DEFAULT NULL,
  `total_pago` decimal(10,2) DEFAULT NULL,
  KEY `PAGOS_FK1` (`codigo_cliente`),
  CONSTRAINT `pagos_ibfk_1` FOREIGN KEY (`codigo_cliente`) REFERENCES `cliente` (`codigo_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `codigo_pedido` int NOT NULL,
  `fecha_pedido` date NOT NULL,
  `fecha_esperada` date NOT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `estado_pedido` varchar(50) NOT NULL,
  `comentarios` text,
  `codigo_cliente` int NOT NULL,
  PRIMARY KEY (`codigo_pedido`),
  KEY `PEDIDO_KF1` (`codigo_cliente`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`codigo_cliente`) REFERENCES `cliente` (`codigo_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido_realizado`
--

DROP TABLE IF EXISTS `pedido_realizado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido_realizado` (
  `codigo_pedido` int NOT NULL,
  `codigo_producto` int NOT NULL,
  `cantidad_pedido` int NOT NULL,
  `precio_unidad` int NOT NULL,
  PRIMARY KEY (`codigo_pedido`),
  KEY `pedidos_realizados_KF2` (`codigo_producto`),
  CONSTRAINT `pedido_realizado_ibfk_1` FOREIGN KEY (`codigo_pedido`) REFERENCES `pedido` (`codigo_pedido`),
  CONSTRAINT `pedido_realizado_ibfk_2` FOREIGN KEY (`codigo_producto`) REFERENCES `inventario` (`codigo_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido_realizado`
--

LOCK TABLES `pedido_realizado` WRITE;
/*!40000 ALTER TABLE `pedido_realizado` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedido_realizado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-14  0:52:58
