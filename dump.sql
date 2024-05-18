-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: aura_sneakers
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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `image` text,
  `brand` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Tênis Nike Air Force 1 07 Feminino',799.99,'https://artwalk.vteximg.com.br/arquivos/ids/236413-760-760/Tenis-Nike-Air-Force-1-07-Feminino-Branco.jpg?v=637637032760830000','nike'),(2,'Tênis New Balance 9060',1500.00,'https://artwalk.vteximg.com.br/arquivos/ids/479031-760-760/U60EE-B-600-1.jpg?v=638442271735400000','new balance'),(3,'Tênis adidas Ozweego Og W Feminino',799.99,'https://artwalk.vteximg.com.br/arquivos/ids/463661-760-760/IE699-8-100-1.jpg?v=638339508206230000','adidas'),(4,'Tênis Puma Scoot 1 Cheetos Unissex',999.99,'https://artwalk.vteximg.com.br/arquivos/ids/478692-760-760/30984-0-002-1.jpg?v=638440552917830000','puma'),(5,'Tênis Adidas Yeezy 500',1300.00,'https://artwalk.vteximg.com.br/arquivos/ids/290901-760-760/GX360-6-200-1.jpg?v=638025829369170000','adidas'),(6,'Tênis Puma Prevail',479.99,'https://artwalk.vteximg.com.br/arquivos/ids/359386-1000-1000/38944-5-001-1.jpg?v=638137892115000000','puma'),(7,'Tênis Adidas Forum Bold Stripes Feminino',799.99,'https://artwalk.vteximg.com.br/arquivos/ids/479152-1000-1000/IG397-2-400-1.jpg?v=638442272431530000','adidas'),(8,'Tênis Nike W Cortez VNTG Feminino',699.99,'https://artwalk.vteximg.com.br/arquivos/ids/475334-1000-1000/FJ253-0-300-1.jpg?v=638411188533800000','nike'),(9,'Tênis Adidas Rivalry Low W Feminino',699.99,'https://artwalk.vteximg.com.br/arquivos/ids/463591-1000-1000/ID756-0-100-1.jpg?v=638339494943430000','adidas');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-14 21:04:10
