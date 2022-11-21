-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_final
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Dumping data for table `banco`
--

LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
INSERT INTO `banco` VALUES (1,'Galicia','Tte. J.D. Perón 407'),(2,'Santander','Jerónimo Salguero 3212'),(3,'Patagonia','Av. Sta. Fe 3725'),(4,'HSBC','Av. del Libertador 2694'),(5,'Nacion','Av. Sta. Fe 4162'),(8,'nombre1','prueba1'),(9,'nombre1','direccion1'),(10,'nombreCambiado','direccionPrueba');
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Sara Perea','3548702810226187'),(2,'Ligia Eugenia Abella Linares','201406832377259'),(3,'Amanda Cobos Requena','3541464675567331'),(4,'Jose Carlos Jáuregui','3533446949826478'),(5,'Ezequiel Prat Castelló','3555282760882883'),(6,'Tito Boix Girón','3582444736433780'),(7,'Cruz Portero','6767844587962140293'),(8,'María José Eligia Aller Palacios','3541442744147863'),(9,'Miguela Pascual Blanco','5018768388783745290'),(10,'Azeneth del Castrillo','4911437100494289'),(11,'Milagros Pujadas Gutiérrez','5100145636720352'),(12,'Angelita Barreda','3589967492596229'),(13,'Mario Eligio Arnal Gil','201458658112567'),(14,'Brígida Doménech Lucena','5602245204021652061'),(15,'Beatriz del Guardiola','3544762838086991'),(16,'Inés Haro Barberá','4508691770768245'),(17,'Maximiano Cuenca-Pastor','3561622543886952'),(18,'Melisa Llopis Díaz','5007669839267089'),(19,'Modesto Gutierrez Sarmiento','30560630617709'),(22,'Yo con trigger 1','201406832323659'),(24,'Yo con trigger 2','201406832323659'),(25,'Yo con trigger 2','201406832323659'),(26,'Yo con trigger 2','201406832323659');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cliente_operacion_transaccion`
--

LOCK TABLES `cliente_operacion_transaccion` WRITE;
/*!40000 ALTER TABLE `cliente_operacion_transaccion` DISABLE KEYS */;
INSERT INTO `cliente_operacion_transaccion` VALUES (1,1,1,1),(2,6,2,2),(3,19,3,3),(4,3,4,4),(5,14,5,5),(6,12,3,6);
/*!40000 ALTER TABLE `cliente_operacion_transaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
INSERT INTO `cuenta` VALUES (1,3,5),(2,5,4),(3,2,6),(4,1,7),(5,6,3),(6,9,1),(7,8,9);
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `deuda`
--

LOCK TABLES `deuda` WRITE;
/*!40000 ALTER TABLE `deuda` DISABLE KEYS */;
INSERT INTO `deuda` VALUES (1,2000.00,'2022-03-02',1),(2,3400.00,'2022-05-14',4),(3,2178.00,'2021-06-03',5),(4,5000.00,'2020-05-27',3),(5,4600.00,'2019-03-26',7),(6,4850.00,'2021-12-17',8);
/*!40000 ALTER TABLE `deuda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Bernardino Acuña Ferrando'),(2,'Celestino Cerdá Riera'),(3,'Manuela Machado'),(4,'Begoña Andrade Luque'),(5,'Cristian Llamas Rojas'),(6,'Carlos de Alsina'),(7,'Adolfo Aguirre'),(8,'Roldán Pou Aranda'),(9,'Nicanor Tejedor-Infante'),(10,'Graciela Aller-Sans');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_cliente`
--

LOCK TABLES `log_cliente` WRITE;
/*!40000 ALTER TABLE `log_cliente` DISABLE KEYS */;
INSERT INTO `log_cliente` VALUES (1,'Insert','Cliente','root@localhost','2022-11-07','13:13:24'),(2,'Delete','Cliente','root@localhost','2022-11-07','13:29:03');
/*!40000 ALTER TABLE `log_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `log_transaccion`
--

LOCK TABLES `log_transaccion` WRITE;
/*!40000 ALTER TABLE `log_transaccion` DISABLE KEYS */;
INSERT INTO `log_transaccion` VALUES (1,'Insert','Transacción','root@localhost','2022-11-07','13:54:19'),(2,'Insert','Update','root@localhost','2022-11-07','13:54:19');
/*!40000 ALTER TABLE `log_transaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `operacion`
--

LOCK TABLES `operacion` WRITE;
/*!40000 ALTER TABLE `operacion` DISABLE KEYS */;
INSERT INTO `operacion` VALUES (1,'Pedido generado por home banking'),(2,'Pedido generado de forma presencial'),(3,'Consulta telefonica'),(4,'Consulta via formulario web'),(5,'Consulta via asesor online');
/*!40000 ALTER TABLE `operacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
INSERT INTO `prestamo` VALUES (1,1,5000.00,'2020-05-27'),(2,2,2000.00,'2022-03-02'),(3,3,4600.00,'2019-03-26'),(4,4,3400.00,'2022-05-14'),(5,5,4850.00,'2021-12-17');
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sucursal`
--

LOCK TABLES `sucursal` WRITE;
/*!40000 ALTER TABLE `sucursal` DISABLE KEYS */;
INSERT INTO `sucursal` VALUES (1,'Av. Francisco Beiro 4229, C1419HZE Villa Devoto, Buenos Aires',1),(2,'Av. Del Libertador Gral. San Martín 1101, B1650 San Martín, Provincia de Buenos Airess',1),(3,'Rivadavia 9711, C1407 CABA, Buenos Aires',2),(4,'Av. de los Constituyentes 5857, C1431EZJ CABA',2),(5,'Av. Cabildo 1939, C1428 CABA',3),(6,'Rivadavia 6744, C1406 CABA',3),(7,'Gral. Las Heras 2958, C1425 AST, Buenos Aires',4),(8,'Avenida Santa Fe 3117 CABA, C1425 BGG, Buenos Aires',4),(9,'Gral. Las Heras 2111, C1425 CABA',5),(10,'Av. Alvear 1936, C1129 CABA',5);
/*!40000 ALTER TABLE `sucursal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sucursal_empleado`
--

LOCK TABLES `sucursal_empleado` WRITE;
/*!40000 ALTER TABLE `sucursal_empleado` DISABLE KEYS */;
INSERT INTO `sucursal_empleado` VALUES (1,1,9),(2,2,4),(3,3,6),(4,4,5),(5,5,1),(6,6,2),(7,7,3),(8,8,5),(9,9,10),(10,10,8);
/*!40000 ALTER TABLE `sucursal_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tarjeta`
--

LOCK TABLES `tarjeta` WRITE;
/*!40000 ALTER TABLE `tarjeta` DISABLE KEYS */;
INSERT INTO `tarjeta` VALUES (1,'3530609037578144',425,'2025-12-29',1),(2,'6759468411610183179',468,'2021-04-21',3),(3,'30230722629299',852,'2024-04-28',4),(4,'5602232722839543722',265,'2026-10-13',5),(5,'676104372991118659',469,'2015-10-21',6),(6,'3570602824476474',310,'2022-09-01',2);
/*!40000 ALTER TABLE `tarjeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `transaccion`
--

LOCK TABLES `transaccion` WRITE;
/*!40000 ALTER TABLE `transaccion` DISABLE KEYS */;
INSERT INTO `transaccion` VALUES (1,'2022-02-09','3548702810226187',4300.21,'5018768388783745290'),(2,'2021-11-27','3582444736433780',1000.00,'5100145636720352'),(3,'2022-07-26','30560630617709',3462.58,'374288881511561'),(4,'2022-06-14','3541464675567331',1867.12,'3544762838086991'),(5,'2022-07-10','5602245204021652061',1868.00,'3555282760882883'),(6,'2021-11-29','3589967492596229',1687.21,'5007669839267089'),(7,'2022-02-09','3548702810226187',1000.00,'5018768388783745290');
/*!40000 ALTER TABLE `transaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `transferencia`
--

LOCK TABLES `transferencia` WRITE;
/*!40000 ALTER TABLE `transferencia` DISABLE KEYS */;
INSERT INTO `transferencia` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6);
/*!40000 ALTER TABLE `transferencia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-21 19:42:29
