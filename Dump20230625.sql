CREATE DATABASE  IF NOT EXISTS `muebles_paz` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `muebles_paz`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: muebles_paz
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `audits`
--

DROP TABLE IF EXISTS `audits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audits` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `entity` varchar(100) DEFAULT NULL,
  `entity_id` int DEFAULT NULL,
  `insert_dt` datetime DEFAULT NULL,
  `delete_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audits`
--

LOCK TABLES `audits` WRITE;
/*!40000 ALTER TABLE `audits` DISABLE KEYS */;
/*!40000 ALTER TABLE `audits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `Categoria_id` int NOT NULL AUTO_INCREMENT,
  `Nombre_categoria` varchar(45) NOT NULL,
  PRIMARY KEY (`Categoria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Mesa'),(14,'Silla'),(15,'mesa ratona');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `categoria_info`
--

DROP TABLE IF EXISTS `categoria_info`;
/*!50001 DROP VIEW IF EXISTS `categoria_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `categoria_info` AS SELECT 
 1 AS `Categoria_id`,
 1 AS `Nombre_categoria`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `Ciudad_id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`Ciudad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Cordoba'),(2,'Carlos Paz'),(3,'La Falda'),(4,'Villa Allende'),(5,'Rosario'),(6,'Munro'),(7,'Gobernador Roca'),(8,'Villa Giardino');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `Cliente_id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Ciudad_id` int NOT NULL,
  `Provincia_id` int NOT NULL,
  `Pais` varchar(45) NOT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Cliente_id`),
  KEY `Ciudad_id` (`Ciudad_id`),
  KEY `Provincia_id` (`Provincia_id`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`Ciudad_id`) REFERENCES `ciudad` (`Ciudad_id`),
  CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`Provincia_id`) REFERENCES `provincia` (`Provincia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Andres ','Gutierrez','Guemes 567 PB 2',4,1,'Argentina','3542345678'),(2,'Carlos ','Gutierrez','San Lorenzo 567 2B',1,1,'Argentina','2963980498'),(3,'Felipe ','Sosa','San Lorenzo 1302',1,1,'Argentina','2962845689'),(4,'Guillermo ','Lezcano','San Pedro 1302',4,1,'Argentina','3512567895'),(5,'Ana Laura','Lezcano','Libertad 1302',4,1,'Argentina','3512567800'),(6,'Andrea','Gimenez','Lima 945 3C',2,1,'Argentina','3512567811'),(7,' Laura','Gimenez','Libertad 1456',4,1,'Argentina','3512567855'),(8,'Carlos','Perez','Obispo Oro 876 ',5,2,'Argentina','4562567888'),(9,'Carlos','Rojas','Lugones 933 ',5,2,'Argentina','4562567888');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `clientes_datos`
--

DROP TABLE IF EXISTS `clientes_datos`;
/*!50001 DROP VIEW IF EXISTS `clientes_datos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `clientes_datos` AS SELECT 
 1 AS `Cliente_id`,
 1 AS `Nombre`,
 1 AS `Apellido`,
 1 AS `Direccion`,
 1 AS `Ciudad_id`,
 1 AS `Provincia_id`,
 1 AS `Pais`,
 1 AS `Telefono`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `detalle_orden`
--

DROP TABLE IF EXISTS `detalle_orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_orden` (
  `Detalle_id` int NOT NULL AUTO_INCREMENT,
  `Producto_id` int NOT NULL,
  `Orden_id` int NOT NULL,
  `Transportista_id` int DEFAULT NULL,
  `Precio_unitario` int NOT NULL,
  `Cantidad` int NOT NULL,
  `Descuento` int DEFAULT NULL,
  PRIMARY KEY (`Detalle_id`),
  KEY `detalle_orden_ibfk_1` (`Producto_id`),
  KEY `detalle_orden_ibfk_2` (`Orden_id`),
  KEY `detalle_orden_ibfk_3` (`Transportista_id`),
  CONSTRAINT `detalle_orden_ibfk_1` FOREIGN KEY (`Producto_id`) REFERENCES `producto` (`Producto_id`),
  CONSTRAINT `detalle_orden_ibfk_2` FOREIGN KEY (`Orden_id`) REFERENCES `orden` (`Orden_id`),
  CONSTRAINT `detalle_orden_ibfk_3` FOREIGN KEY (`Transportista_id`) REFERENCES `transportista` (`Transportista_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_orden`
--

LOCK TABLES `detalle_orden` WRITE;
/*!40000 ALTER TABLE `detalle_orden` DISABLE KEYS */;
INSERT INTO `detalle_orden` VALUES (1,6,13,1,180000,1,0),(2,6,14,1,180000,1,0),(3,6,15,2,180000,1,0),(4,6,16,2,180000,1,0),(5,6,13,1,180000,1,0),(6,6,14,1,180000,1,0),(7,6,15,2,180000,1,0),(8,6,16,2,180000,1,0),(9,1,1,1,20000,4,0),(10,2,2,1,100000,1,0),(11,2,3,1,100000,1,0),(12,2,4,2,100000,2,0),(13,2,5,2,100000,1,0),(14,5,6,2,60000,2,0),(15,5,7,2,60000,1,0),(16,5,8,4,60000,2,0),(17,5,9,4,60000,3,0),(18,5,10,4,60000,1,0),(19,5,11,4,60000,4,0),(20,5,12,4,60000,4,0),(21,6,13,3,180000,1,0),(22,6,14,3,180000,1,0),(23,6,15,3,180000,1,0),(24,6,16,3,180000,1,0),(25,6,17,1,180000,1,0),(26,6,18,1,180000,1,0),(27,6,19,1,180000,2,0),(28,6,20,3,180000,2,0),(29,8,21,3,25000,6,0),(30,8,22,3,25000,8,0),(31,8,23,4,25000,4,0);
/*!40000 ALTER TABLE `detalle_orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado_venta`
--

DROP TABLE IF EXISTS `empleado_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado_venta` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `tabla` varchar(45) DEFAULT NULL,
  `orden_id` int DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado_venta`
--

LOCK TABLES `empleado_venta` WRITE;
/*!40000 ALTER TABLE `empleado_venta` DISABLE KEYS */;
INSERT INTO `empleado_venta` VALUES (1,NULL,28,'root@localhost','2023-06-08 00:20:59'),(2,'orden',30,'root@localhost','2023-06-08 00:25:25');
/*!40000 ALTER TABLE `empleado_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden`
--

DROP TABLE IF EXISTS `orden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orden` (
  `Orden_id` int NOT NULL AUTO_INCREMENT,
  `Nombre_producto` varchar(45) NOT NULL,
  `Fecha_orden` date NOT NULL,
  `Cliente_id` int NOT NULL,
  PRIMARY KEY (`Orden_id`),
  KEY `Cliente_id` (`Cliente_id`),
  CONSTRAINT `orden_ibfk_1` FOREIGN KEY (`Cliente_id`) REFERENCES `cliente` (`Cliente_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden`
--

LOCK TABLES `orden` WRITE;
/*!40000 ALTER TABLE `orden` DISABLE KEYS */;
INSERT INTO `orden` VALUES (1,'Eames','2023-02-05',1),(2,'Vintage','2023-02-06',2),(3,'Vintage','2023-02-07',3),(4,'Vintage','2023-02-08',9),(5,'Vintage','2023-02-09',9),(6,'Tom','2023-02-10',9),(7,'Tom','2023-03-11',7),(8,'Tom','2023-03-12',7),(9,'Tom','2023-03-13',7),(10,'Tom','2023-03-14',9),(11,'Tom','2023-03-15',8),(12,'Tom','2023-03-16',8),(13,'Sam ','2023-03-17',8),(14,'Sam ','2023-03-18',8),(15,'Sam ','2023-04-01',8),(16,'Sam ','2023-04-02',8),(17,'Sam ','2023-04-03',3),(18,'Sam ','2023-04-04',3),(19,'Sam ','2023-04-05',3),(20,'Sam ','2023-04-06',5),(21,'Colores','2023-04-07',5),(22,'Colores','2023-04-08',5),(23,'Colores','2023-04-09',5),(28,'Eames','2023-04-05',1),(30,'Eames','2023-04-05',1);
/*!40000 ALTER TABLE `orden` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_venta` AFTER INSERT ON `orden` FOR EACH ROW INSERT INTO empleado_venta (tabla, orden_id, usuario, fecha) 
VALUES ("orden", NEW.orden_id, USER(), CURRENT_TIMESTAMP()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `Producto_id` int NOT NULL AUTO_INCREMENT,
  `Nombre_producto` varchar(45) NOT NULL,
  `Proveedores_id` int NOT NULL,
  `Precio_unitario` int NOT NULL,
  `Stock` int NOT NULL,
  `Categoria_id` int NOT NULL,
  PRIMARY KEY (`Producto_id`),
  KEY `Categoria_id` (`Categoria_id`),
  KEY `Proveedores_id` (`Proveedores_id`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`Categoria_id`) REFERENCES `categoria` (`Categoria_id`),
  CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`Proveedores_id`) REFERENCES `proveedores` (`Proveedores_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Eames',1,8800,100,14),(2,'Vintage',1,50000,10,1),(3,'Cleo',1,50000,8,1),(4,'Totem',5,20000,8,14),(5,'Tom',3,30000,8,15),(6,'Sam',3,100000,100,15),(7,'Timoti',6,10000,20,1),(8,'Colores',6,13000,24,1),(9,'Lola',1,16000,100,1);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `inser_producto` AFTER DELETE ON `producto` FOR EACH ROW INSERT INTO audits (entity, entity_id, insert_dt, delete_by)
VALUES (producto, OLD.producto_id, current_timestamp(), user()) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `producto_masvendido`
--

DROP TABLE IF EXISTS `producto_masvendido`;
/*!50001 DROP VIEW IF EXISTS `producto_masvendido`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `producto_masvendido` AS SELECT 
 1 AS `nombre_producto`,
 1 AS `count(*)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `producto_ventas`
--

DROP TABLE IF EXISTS `producto_ventas`;
/*!50001 DROP VIEW IF EXISTS `producto_ventas`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `producto_ventas` AS SELECT 
 1 AS `nombre_producto`,
 1 AS `count(*)`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `Proveedores_id` int NOT NULL AUTO_INCREMENT,
  `Razon_Social` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Ciudad_id` int NOT NULL,
  `Provincia_id` int NOT NULL,
  `Pais` varchar(45) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  PRIMARY KEY (`Proveedores_id`),
  KEY `Ciudad_id` (`Ciudad_id`),
  KEY `Provincia_id` (`Provincia_id`),
  CONSTRAINT `proveedores_ibfk_1` FOREIGN KEY (`Ciudad_id`) REFERENCES `ciudad` (`Ciudad_id`),
  CONSTRAINT `proveedores_ibfk_2` FOREIGN KEY (`Provincia_id`) REFERENCES `provincia` (`Provincia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Muebles MB','Ruta Nacinal 4789',6,5,'Argentina','1123456789','mb@gmail.com'),(2,'Margaritas','Ruta Nacional 47',7,5,'Argentina','1129345678','margaritas@gmail.com'),(3,'Genera Paz','Catamarca 47',1,1,'Argentina','1129345678','gp@gmail.com'),(4,'Vimtage','Catamarca 990',1,1,'Argentina','3519345678','vv@gmail.com'),(5,'Todo Madera','Catamarca 990',5,2,'Argentina','3519345678','td@gmail.com'),(6,'DecoH','Catamarca 990',5,2,'Argentina','4419345678','dh@gmail.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincia` (
  `Provincia_id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`Provincia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (1,'Cordoba'),(2,'Santa Fe'),(3,'Corrientes'),(4,'La Pampa'),(5,'Buenos Aires'),(6,'San Juan'),(7,'Mendoza'),(8,'San Luis'),(9,'Rio Negro');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transportista`
--

DROP TABLE IF EXISTS `transportista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transportista` (
  `Transportista_id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Documento` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `Ciudad_id` int NOT NULL,
  `Provincia_id` int NOT NULL,
  PRIMARY KEY (`Transportista_id`),
  KEY `Ciudad_id` (`Ciudad_id`),
  KEY `Provincia_id` (`Provincia_id`),
  CONSTRAINT `transportista_ibfk_1` FOREIGN KEY (`Ciudad_id`) REFERENCES `ciudad` (`Ciudad_id`),
  CONSTRAINT `transportista_ibfk_2` FOREIGN KEY (`Provincia_id`) REFERENCES `provincia` (`Provincia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportista`
--

LOCK TABLES `transportista` WRITE;
/*!40000 ALTER TABLE `transportista` DISABLE KEYS */;
INSERT INTO `transportista` VALUES (1,'Federico','Sosa','2345676543','3512345638',1,1),(2,'Alejandro','Smith','3145676599','3512345698',2,1),(3,'Santiago','Lopez','3045676555','3512345678',4,1),(4,'Claudio','Hans','2845676543','7772345678',5,2),(5,'Tamara','Gimenez','2545676576','7772345678',5,2);
/*!40000 ALTER TABLE `transportista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `transportista_ciudad`
--

DROP TABLE IF EXISTS `transportista_ciudad`;
/*!50001 DROP VIEW IF EXISTS `transportista_ciudad`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `transportista_ciudad` AS SELECT 
 1 AS `nombre`,
 1 AS `apellido`,
 1 AS `ciudad_id`,
 1 AS `telefono`,
 1 AS `nombre_ciudad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `venta_xcliente`
--

DROP TABLE IF EXISTS `venta_xcliente`;
/*!50001 DROP VIEW IF EXISTS `venta_xcliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `venta_xcliente` AS SELECT 
 1 AS `cliente_id`,
 1 AS `total_venta`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'muebles_paz'
--
/*!50003 DROP FUNCTION IF EXISTS `consultarStockDisponible` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `consultarStockDisponible`(id_producto INT) RETURNS int
    DETERMINISTIC
BEGIN
	DECLARE 
    stock_total INT;
    DECLARE
    ventas_realizadas INT;
    SELECT stock INTO stock_total
    FROM producto as p
    WHERE Producto_id = id_producto;
    
    SELECT COALESCE(SUM(cantidad), 0) INTO ventas_realizadas
    FROM detalle_orden as d
    WHERE  Producto_id = id_producto;
    
    RETURN stock_total - ventas_realizadas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `costo_envio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `costo_envio`(distanciaenKM INT) RETURNS int
    DETERMINISTIC
BEGIN
  DECLARE costo INT;
  DECLARE preciokilometro INT;
  set preciokilometro = 300;
  set costo = (distanciaenKM * precioKilometro);
    RETURN  costo;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `venta_final` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `venta_final`(precio INTEGER, cantidad INTEGER) RETURNS int
    DETERMINISTIC
BEGIN
	DECLARE resultado integer;
	SET resultado = (precio * cantidad);
	RETURN resultado;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `aumento_precio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `aumento_precio`(
in Codigo_producto int,
in aumento int,
out precio_nuevo float
)
begin
  DECLARE Precio_original int;
  SELECT Precio_unitario INTO Precio_original
  FROM producto
  WHERE Producto_id =  Codigo_producto;
  
  SET precio_nuevo = Precio_original * (1 + (aumento/100));
  
  UPDATE producto SET Precio_unitario = precio_nuevo
  where Producto_id = Codigo_producto;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertar_producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_producto`( 
in Producto_id INT,
in Nombre_producto VARCHAR(30),
in Proveedores_id INT,
in Precio_unitario INT,
in Stock INT,
in Categoria_id INT
)
begin 
   INSERT INTO producto VALUES(Producto_id,Nombre_producto, Proveedores_id, Precio_unitario, Stock, Categoria_id);

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ver_productos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ver_productos`(
in campoordenamiento VARCHAR(30),
in orden VARCHAR(10)
)
begin
  SELECT * FROM producto ORDER BY  + campoordenamiento + ' ' + orden;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `categoria_info`
--

/*!50001 DROP VIEW IF EXISTS `categoria_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `categoria_info` AS select `categoria`.`Categoria_id` AS `Categoria_id`,`categoria`.`Nombre_categoria` AS `Nombre_categoria` from `categoria` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clientes_datos`
--

/*!50001 DROP VIEW IF EXISTS `clientes_datos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `clientes_datos` AS select `cliente`.`Cliente_id` AS `Cliente_id`,`cliente`.`Nombre` AS `Nombre`,`cliente`.`Apellido` AS `Apellido`,`cliente`.`Direccion` AS `Direccion`,`cliente`.`Ciudad_id` AS `Ciudad_id`,`cliente`.`Provincia_id` AS `Provincia_id`,`cliente`.`Pais` AS `Pais`,`cliente`.`Telefono` AS `Telefono` from `cliente` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `producto_masvendido`
--

/*!50001 DROP VIEW IF EXISTS `producto_masvendido`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `producto_masvendido` AS select `orden`.`Nombre_producto` AS `nombre_producto`,count(0) AS `count(*)` from `orden` group by `orden`.`Nombre_producto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `producto_ventas`
--

/*!50001 DROP VIEW IF EXISTS `producto_ventas`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `producto_ventas` AS select `orden`.`Nombre_producto` AS `nombre_producto`,count(0) AS `count(*)` from `orden` group by `orden`.`Nombre_producto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `transportista_ciudad`
--

/*!50001 DROP VIEW IF EXISTS `transportista_ciudad`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `transportista_ciudad` AS select `t`.`Nombre` AS `nombre`,`t`.`Apellido` AS `apellido`,`t`.`Ciudad_id` AS `ciudad_id`,`t`.`telefono` AS `telefono`,`c`.`Nombre` AS `nombre_ciudad` from (`transportista` `t` left join `ciudad` `c` on((`c`.`Ciudad_id` = `t`.`Ciudad_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `venta_xcliente`
--

/*!50001 DROP VIEW IF EXISTS `venta_xcliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `venta_xcliente` AS select `o`.`Cliente_id` AS `cliente_id`,sum((`d`.`Cantidad` * `d`.`Precio_unitario`)) AS `total_venta` from (`detalle_orden` `d` join `orden` `o`) where (`d`.`Orden_id` = `o`.`Orden_id`) group by `o`.`Orden_id` order by `total_venta` desc */;
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

-- Dump completed on 2023-06-25 18:40:11
