-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: datn_en
-- ------------------------------------------------------
-- Server version	8.0.30
DROP DATABASE if exists datn_en;
create DATABASE if not exists datn_en;
use datn_en;
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_customer` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_customer` (`id_customer`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'123 Main St, Anytown USA','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL,1),(2,'456 Oak Ave, Somecity USA','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL,2),(3,'789 Elm St, Anothercity USA','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL,3),(4,'101 Maple Dr, Yourtown USA','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL,4),(5,'321 Pine Rd, Afinalcity USA','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL,5),(6,'555 Cedar St, Anytown USA','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL,2),(7,'777 Oak Blvd, Somecity USA','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL,3),(8,'999 Elm St, Anothercity USA','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL,4),(9,'111 Maple Dr, Yourtown USA','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL,5),(10,'333 Pine Rd, Afinalcity USA','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL,1),(12,'HCM','2023-07-14 10:30:33','2023-07-14 11:14:55','active',9);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `total_payment` decimal(10,0) DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `id_customer` bigint unsigned DEFAULT NULL,
  `id_staff` bigint unsigned DEFAULT NULL,
  `payments` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_customer` (`id_customer`),
  KEY `id_staff` (`id_staff`),
  CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`),
  CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`id_staff`) REFERENCES `staff` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,'123','123123123','hi@gmail.com',NULL,NULL,NULL,'2023-07-03 22:00:05','2023-07-01 22:00:05','Thành công',NULL,1,NULL,NULL),(2,'123','1313231235','hi13@gmail.com',NULL,NULL,NULL,'2023-07-03 23:57:02','2023-07-02 22:00:05','Thành công',NULL,5,NULL,NULL),(7,'Tiến','0333489895','tientv@gmail.com','Hà Nội',10000,'Khong note','2023-07-10 16:19:44','2023-07-10 16:19:44','Chờ xác nhận',NULL,2,NULL,'offline'),(8,'Tiến','0333489895','tientv@gmail.com','Hà Nội',NULL,'Khong note','2023-07-10 16:39:44','2023-07-10 16:39:44','Chờ xác nhận',NULL,2,NULL,NULL),(9,'Tiến','0333489895','tientienty0603@gmail.com','Hà Nội',NULL,'Khong note','2023-07-10 16:44:08','2023-07-10 16:44:08','Chờ xác nhận',NULL,2,NULL,NULL),(10,'Tiến','0333489895','tientienty0603@gmail.com','Hà Nội',NULL,'Khong note','2023-07-10 16:46:39','2023-07-10 16:46:39','Chờ xác nhận',NULL,2,NULL,NULL),(11,'Tiến','0333489895','tientienty0603@gmail.com','Hà Nội',NULL,'Khong note','2023-07-10 16:47:45','2023-07-10 16:47:45','Chờ xác nhận',NULL,2,NULL,NULL),(12,'Tiến','0333489895','tientienty0603@gmail.com','Hà Nội',NULL,'Khong note','2023-07-10 16:51:18','2023-07-10 16:51:18','Chờ xác nhận',NULL,2,NULL,NULL),(13,'Tiến','0333489895','tientienty0603@gmail.com','Hà Nội',23123323,'Khong note','2023-07-10 16:52:14','2023-07-10 16:52:14','Chờ xác nhận',NULL,2,NULL,NULL),(14,'Tiến','0333489895','tientienty0603@gmail.com','Hà Nội',23123323,'Khong note','2023-07-10 16:56:20','2023-07-10 16:56:20','Chờ xác nhận',NULL,2,NULL,NULL),(15,'Tiến','0333489895','tientienty0603@gmail.com','Hà Nội',23123323,'Khong note','2023-07-10 16:59:42','2023-07-10 16:59:42','Chờ xác nhận',NULL,2,NULL,NULL),(16,'Tiến','0333489895','tientienty0603@gmail.com','Hà Nội',23123323,'Khong note','2023-07-18 12:57:15','2023-07-18 12:57:16','Chờ xác nhận',NULL,2,NULL,NULL),(17,'Tiến','0333489895','tientienty0603@gmail.com','Hà Nội',23123323,'Khong note','2023-07-18 13:08:46','2023-07-18 13:08:46',NULL,NULL,2,NULL,NULL),(18,'Tiến','0333489895','tientienty0603@gmail.com','Hà Nội',23123323,'Khong note','2023-07-18 13:16:32','2023-07-18 13:16:32','Chờ xác nhận',NULL,2,NULL,NULL),(19,'Tiến','0333489895','tientienty0603@gmail.com','Hà Nội',23123323,'Khong note','2023-07-18 13:21:38','2023-07-18 13:21:38','Chờ xác nhận',NULL,2,NULL,NULL),(20,'Tiến','0333489895','tientienty0603@gmail.com','Hà Nội',23123323,'Khong note','2023-07-18 13:25:44','2023-07-18 13:25:44','Chờ xác nhận',NULL,2,NULL,NULL),(21,'Tiến','0333489895','hieu98kmhd@gmail.com','Hà Nội',23123323,'Khong note','2023-07-18 13:26:56','2023-07-18 13:26:56','Chờ xác nhận',NULL,2,NULL,NULL),(22,'Tiến','0333489895','hieu98kmhd@gmail.com','Hà Nội',23123323,'Khong note','2023-07-18 13:30:32','2023-07-18 13:30:32','Chờ xác nhận',NULL,2,NULL,NULL),(24,'Tiến','0333489895','hieu98kmhd@gmail.com','Hà Nội',23123323,'Khong note','2023-07-18 13:36:19','2023-07-18 13:36:19','đang chuẩn bị hàng',NULL,2,NULL,NULL),(25,'Tiến','0333489895','hieu98kmhd@gmail.com','Hà Nội',23123323,'Khong note','2023-07-24 12:41:56','2023-07-24 12:41:56','Chờ thanh toán',NULL,2,NULL,NULL),(28,'Tiến','0333489895','hieu98kmhd@gmail.com','Hà Nội',23123323,'Khong note','2023-07-24 13:38:26','2023-07-24 13:38:26','Chờ xác nhận',NULL,2,NULL,'offline'),(29,'Tiến','0333489895','hieu98kmhd@gmail.com','Hà Nội',23123323,'Khong note','2023-07-24 15:32:43','2023-07-24 15:32:43','Chờ xác nhận',NULL,2,NULL,'offline'),(30,'Tiến','0333489895','hieu98kmhd@gmail.com','Hà Nội',23123323,'Khong note','2023-07-24 15:34:54','2023-07-24 15:34:54','Chờ xác nhận',NULL,2,NULL,'offline');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill_detail`
--

DROP TABLE IF EXISTS `bill_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill_detail` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `unit_price` decimal(10,0) DEFAULT '0',
  `amount` int unsigned DEFAULT '0',
  `note` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_bill` bigint unsigned DEFAULT NULL,
  `id_product_details` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_bill` (`id_bill`),
  KEY `id_product_details` (`id_product_details`),
  CONSTRAINT `bill_detail_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `bill` (`id`),
  CONSTRAINT `bill_detail_ibfk_2` FOREIGN KEY (`id_product_details`) REFERENCES `product_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill_detail`
--

LOCK TABLES `bill_detail` WRITE;
/*!40000 ALTER TABLE `bill_detail` DISABLE KEYS */;
INSERT INTO `bill_detail` VALUES (5,2000,2,NULL,7,1),(6,2000,2,NULL,8,1),(7,2000,2,NULL,9,1),(8,2000,2,NULL,10,1),(9,2000,2,NULL,11,1),(10,2000,2,NULL,12,1),(11,2000,2,NULL,13,1),(12,2000,2,NULL,14,1),(13,2000,2,NULL,15,1),(14,2000,2,NULL,16,1),(15,2000,2,NULL,17,1),(16,2000,2,NULL,18,1),(17,2000,2,NULL,19,1),(18,2000,2,NULL,20,1),(19,2000,2,NULL,21,1),(20,2000,2,NULL,22,1),(22,2000,2,NULL,24,1),(23,2000,2,NULL,25,1),(26,2000,2,NULL,28,1),(27,2000,2,NULL,29,1),(28,2000,2,NULL,30,1);
/*!40000 ALTER TABLE `bill_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_customer` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_customer` (`id_customer`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (2,'2023-06-24 06:38:35','2023-06-24 06:38:35','active',1),(3,'2023-07-08 09:47:29','2023-07-08 09:47:29','active',6);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_detail`
--

DROP TABLE IF EXISTS `cart_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_detail` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_cart` bigint unsigned DEFAULT NULL,
  `id_product_detail` bigint unsigned DEFAULT NULL,
  `amount` int unsigned DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cart` (`id_cart`),
  KEY `id_product_detail` (`id_product_detail`),
  CONSTRAINT `cart_detail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id`),
  CONSTRAINT `cart_detail_ibfk_2` FOREIGN KEY (`id_product_detail`) REFERENCES `product_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_detail`
--

LOCK TABLES `cart_detail` WRITE;
/*!40000 ALTER TABLE `cart_detail` DISABLE KEYS */;
INSERT INTO `cart_detail` VALUES (8,2,1,10,'inactive'),(9,2,3,30,'active'),(10,2,4,2,'active'),(11,2,5,2345,'active'),(12,3,3,12,'active');
/*!40000 ALTER TABLE `cart_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Category 1','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL),(2,'Category 2','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL),(3,'Category 3','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL),(4,'Category 4','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL),(5,'Category 5','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_detail`
--

DROP TABLE IF EXISTS `category_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_detail` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_product` bigint unsigned DEFAULT NULL,
  `id_category` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_product` (`id_product`),
  KEY `id_category` (`id_category`),
  CONSTRAINT `category_detail_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  CONSTRAINT `category_detail_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_detail`
--

LOCK TABLES `category_detail` WRITE;
/*!40000 ALTER TABLE `category_detail` DISABLE KEYS */;
INSERT INTO `category_detail` VALUES (1,1,1),(2,1,2),(3,2,2),(4,3,3),(5,4,4),(6,5,5);
/*!40000 ALTER TABLE `category_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `color`
--

DROP TABLE IF EXISTS `color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `color` (
  `id` varchar(20) NOT NULL,
  `name` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color`
--

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;
INSERT INTO `color` VALUES ('000000','Đen','2023-05-23 09:24:11','2023-05-23 09:24:11','active'),('000001','Test upadte color','2023-07-28 17:46:28','2023-07-28 17:47:20','active'),('0000FF','Xanh Dương','2023-05-23 09:24:11','2023-05-23 09:24:11','active'),('008000','Xanh Lá','2023-05-23 09:24:11','2023-05-23 09:24:11','active'),('800080','Tím','2023-05-23 09:24:11','2023-05-23 09:24:11','active'),('808080','Xám','2023-05-23 09:24:11','2023-05-23 09:24:11','active'),('FF0000','Đỏ','2023-05-23 09:24:11','2023-05-23 09:24:11','active'),('FFCCFF','Hồng','2023-05-23 09:24:11','2023-05-23 09:24:11','active'),('FFFF00','Vàng','2023-05-23 09:24:11','2023-05-23 09:24:11','active'),('FFFFFF','Trắng','2023-05-23 09:24:11','2023-05-23 09:24:11','active'),('xx1001','Tràm','2023-07-30 19:07:16','2023-07-30 19:07:16','active');
/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_customer` bigint unsigned DEFAULT NULL,
  `id_product` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_customer` (`id_customer`),
  KEY `id_product` (`id_product`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id`),
  CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'Great product!','2023-06-24 02:15:22','2023-06-24 02:15:22','Thành công',1,2),(2,'I love this!','2023-06-24 02:15:22','2023-06-24 02:15:22','Thành công',2,1),(3,'Not what I expected','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL,3,2),(4,'Could be better','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL,4,3),(5,'Amazing!','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL,5,4),(6,'Perfect for my needs','2023-06-24 02:15:22','2023-06-24 02:15:22',NULL,1,5),(20,' xin chào nhé111','2023-07-03 17:45:47',NULL,'active',2,1),(25,'ok nhé a Quyền','2023-07-04 05:31:32',NULL,'active',1,1);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Sarah Lee','0333333333','Hisarahlee@example.com','2000-11-02','sarahlee','$2a$10$S0Lh2jleCaER2Fdh1ZUjWO.f9HWOhKOlYC0WpQ4mFzqXltT/owz5u','2023-06-24 02:15:22','2023-07-08 03:08:15','disable',NULL),(2,'Trần Tiến','0999989898','hieu98kmhd@gmail.com','2000-02-02','davidkim','$2y$10$jiYllkBh.jbzPoy.kw1kzuEIN/mVJTbETXpNKVQ3z5hFoybTdII7W','2023-06-24 02:15:22','2023-07-18 12:54:37','enable',NULL),(3,'Karen Chen','7777777777','karenchen@example.com','1988-01-01','karenchen','$2y$10$yBsaz8ysgDmMm.wQzBNlAurhd0xP9vxem7R3L5sgPp4Hbhj17rFwG','2023-06-24 02:15:22','2023-06-24 02:15:22','enable',NULL),(4,'Mark Davis','8888888888','tientienty0602223@gmail.com','1980-01-01','markdavis','$2y$10$s8lJrBNAHKO9/v.T1kbXrurS3YJDQgCCfOWs4wutNnpXwxKzB6hem','2023-06-24 02:15:22','2023-06-24 02:15:22','enable',NULL),(5,'Linda Nguyen','9999999999','lindanguyen@example.com','1992-01-01','lindanguyen','$2y$10$MgP5mKqs/v.ij35JQ44fWuz37P6E6aJ/jY3TVxKDGAwJ456nKRWsK','2023-06-24 02:15:22','2023-06-24 02:15:22','enable',NULL),(6,'Tien123','0123123123','Linhtinh@gmail.com','1998-01-01','hihi123','$2a$10$IeZC2mLOGdgL80nT6wnGMu/cWv0E10qedpvcWV5Sc/u4TynOJHddG','2023-07-08 02:44:31','2023-07-21 09:39:13','enable','nam'),(7,'Deo co ten','0123123124','Linhtinh1@gmail.com',NULL,'hihi1234','$2a$10$EGsC1AhhJxQ5FkODGvRyV.h24d/IkLs7pmX/URbR7WYXycc4f4st2','2023-07-08 03:07:04',NULL,'enable',NULL),(9,'TranVanTien','09898989878','tientienty0603@gmail.com','2021-05-22','user16','$2a$10$zRfpNizBWewlYNMKNSmstO0vQ6XkSC2qUr7r2FC7yj0Uc7wnEUKwa','2023-07-14 10:30:33',NULL,'enable',NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `id_pcs` bigint unsigned DEFAULT NULL,
  `path` varchar(255) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `name` (`name`),
  KEY `id_pcs` (`id_pcs`),
  CONSTRAINT `image_ibfk_1` FOREIGN KEY (`id_pcs`) REFERENCES `product_color_size` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `product_code` varchar(25) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `manufacturer` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `is_new` tinyint unsigned DEFAULT '0',
  `is_best_seller` tinyint unsigned DEFAULT '0',
  `is_active` tinyint unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code` (`product_code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Product 1','P001','Manufacturer A','2023-06-24 02:15:22','2023-06-24 02:15:22','active',1,0,1),(2,'Product 2','P002','Manufacturer B','2023-06-24 02:15:22','2023-06-24 02:15:22','active',0,1,0),(3,'Product 3','P003','Manufacturer C','2023-06-24 02:15:22','2023-06-24 02:15:22','active',0,0,1),(4,'Product 4','P004','Manufacturer A','2023-06-24 02:15:22','2023-06-24 02:15:22','active',1,0,0),(5,'Product 5','P005','Manufacturer B','2023-06-24 02:15:22','2023-06-24 02:15:22','active',0,1,1),(6,'Product 6','P006','Manufacturer C','2023-06-24 02:15:22','2023-06-24 02:15:22','active',0,0,1),(7,'Product 7','P007','Manufacturer B','2023-06-24 02:15:22','2023-06-24 02:15:22','active',1,0,1),(8,'Product 8','P008','Manufacturer A','2023-06-24 02:15:22','2023-06-24 02:15:22','active',0,1,0),(9,'Product 9','P009','Manufacturer C','2023-06-24 02:15:22','2023-06-24 02:15:22','active',1,0,0),(10,'Product 10','P010','Manufacturer B','2023-06-24 02:15:22','2023-06-24 02:15:22','active',0,1,1),(11,'Giày','pd12334','nxs 123','2023-07-30 19:50:02','2023-07-30 19:50:02','active',0,0,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_color_size`
--

DROP TABLE IF EXISTS `product_color_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_color_size` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `price` decimal(10,0) DEFAULT '0',
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_product` bigint unsigned DEFAULT NULL,
  `id_color` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_product` (`id_product`),
  KEY `id_color` (`id_color`),
  CONSTRAINT `product_color_size_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  CONSTRAINT `product_color_size_ibfk_2` FOREIGN KEY (`id_color`) REFERENCES `color` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_color_size`
--

LOCK TABLES `product_color_size` WRITE;
/*!40000 ALTER TABLE `product_color_size` DISABLE KEYS */;
INSERT INTO `product_color_size` VALUES (1,11,'2023-06-24 02:15:22','2023-06-24 02:15:22','Active',1,'0000FF'),(2,15,'2023-06-24 02:15:22','2023-06-24 02:15:22','Active',2,'800080'),(3,9,'2023-06-24 02:15:22','2023-06-24 02:15:22','active',3,'008000'),(4,21,'2023-06-24 02:15:22','2023-06-24 02:15:22','active',4,'0000FF'),(5,13,'2023-06-24 02:15:22','2023-06-24 02:15:22','active',5,'800080'),(6,12,'2023-06-24 02:15:22','2023-06-24 02:15:22','active',1,'0000FF'),(7,15,'2023-06-24 02:15:22','2023-06-24 02:15:22','active',1,'0000FF'),(8,20,'2023-06-24 02:15:22','2023-06-24 02:15:22','active',2,'808080'),(9,17,'2023-06-24 02:15:22','2023-06-24 02:15:22','active',2,'0000FF'),(10,11,'2023-06-24 02:15:22','2023-06-24 02:15:22','active',3,'FF0000'),(11,17,'2023-06-24 02:15:22','2023-06-24 02:15:22','active',3,'FFFF00'),(12,23,'2023-06-24 02:15:22','2023-06-24 02:15:22','active',4,'FFCCFF'),(13,19,'2023-06-24 02:15:22','2023-06-24 02:15:22','active',4,'FFFFFF'),(14,14,'2023-06-24 02:15:22','2023-06-24 02:15:22','active',5,'800080'),(15,16,'2023-06-24 02:15:22','2023-06-24 02:15:22','active',5,'FFFFFF');
/*!40000 ALTER TABLE `product_color_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_detail`
--

DROP TABLE IF EXISTS `product_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_detail` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `amount` int DEFAULT '0',
  `id_pcs` bigint unsigned DEFAULT NULL,
  `id_size` int unsigned DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pcs` (`id_pcs`),
  KEY `id_size` (`id_size`),
  CONSTRAINT `product_detail_ibfk_1` FOREIGN KEY (`id_pcs`) REFERENCES `product_color_size` (`id`),
  CONSTRAINT `product_detail_ibfk_2` FOREIGN KEY (`id_size`) REFERENCES `size` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_detail`
--

LOCK TABLES `product_detail` WRITE;
/*!40000 ALTER TABLE `product_detail` DISABLE KEYS */;
INSERT INTO `product_detail` VALUES (1,32,1,1,'active'),
(2,20,2,2,'active'),
(3,30,3,3,'active'),
(4,40,4,4,'active'),
(5,50,5,5,'active'),
(6,15,6,1,'active'),
(7,25,7,2,'active'),
(8,35,8,3,'active'),
(9,45,9,4,'active'),
(10,55,10,5,'active'),
(11,20,1,2,'active'),
(12,30,2,3,'active'),
(13,40,3,4,'active'),
(14,50,4,5,'active'),
(15,5,5,1,'active');
/*!40000 ALTER TABLE `product_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `discount_value` decimal(10,0) DEFAULT NULL,
  `start_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (1,'Summer Sale','Get 20% off all items!',30,'2023-05-31 17:00:00','2023-07-29 17:00:00','2023-06-24 02:15:22','2023-07-27 14:44:55','Active'),(2,'Back to School','Buy one get one free!',100,'2023-08-01 00:00:00','2023-08-31 00:00:00','2023-06-24 02:15:22','2023-06-24 02:15:22','Inactive'),(3,'Holiday Special','Spend $50 and get $10 off!',10,'2023-12-01 00:00:00','2023-12-31 00:00:00','2023-06-24 02:15:22','2023-06-24 02:15:22','Active'),(4,'New Year Sale','Get 30% off all items!',30,'2024-01-01 00:00:00','2024-01-31 00:00:00','2023-06-24 02:15:22','2023-06-24 02:15:22','Active'),(5,'Spring Clearance','Everything must go!',50,'2024-04-01 00:00:00','2024-04-30 00:00:00','2023-06-24 02:15:22','2023-06-24 02:15:22','Inactive'),(6,'test','test',10,'2023-07-27 05:34:56','2023-07-28 05:34:56','2023-07-26 12:51:34','2023-07-26 12:51:34','active'),(7,'test','test',10,'2023-07-27 05:34:56','2023-07-28 05:34:56','2023-07-26 12:54:40','2023-07-26 12:54:40','active'),(8,'test','test',10,'2023-07-26 17:00:00','2023-07-27 17:00:00','2023-07-26 12:59:24','2023-07-26 12:59:24','active');
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_detail`
--

DROP TABLE IF EXISTS `promotion_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion_detail` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_pcs` bigint unsigned DEFAULT NULL,
  `id_promotion` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pcs` (`id_pcs`),
  KEY `id_promotion` (`id_promotion`),
  CONSTRAINT `promotion_detail_ibfk_1` FOREIGN KEY (`id_pcs`) REFERENCES `product_color_size` (`id`),
  CONSTRAINT `promotion_detail_ibfk_2` FOREIGN KEY (`id_promotion`) REFERENCES `promotion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_detail`
--

LOCK TABLES `promotion_detail` WRITE;
/*!40000 ALTER TABLE `promotion_detail` DISABLE KEYS */;
INSERT INTO `promotion_detail` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,3),(5,5,4),(6,1,6),(7,1,1);
/*!40000 ALTER TABLE `promotion_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'DIRECTOR','2023-05-01 09:34:48','2023-05-01 09:34:57','1'),(2,'STAFF','2023-05-01 09:35:28','2023-05-01 09:35:33','1');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serial_code`
--

DROP TABLE IF EXISTS `serial_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serial_code` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `serial_code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `import_date` datetime NOT NULL,
  `sale_date` datetime DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_product_detail` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `serial_code` (`serial_code`),
  UNIQUE KEY `sale_date` (`sale_date`),
  KEY `id_product_detail` (`id_product_detail`),
  CONSTRAINT `serial_code_ibfk_1` FOREIGN KEY (`id_product_detail`) REFERENCES `product_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serial_code`
--

LOCK TABLES `serial_code` WRITE;
/*!40000 ALTER TABLE `serial_code` DISABLE KEYS */;
INSERT INTO `serial_code` VALUES (1,'SC0001','2023-06-01 00:00:00','2023-06-24 17:03:44','Available',1),(2,'SC0002','2023-06-02 00:00:00','2023-06-06 00:00:00','Available',2),(3,'SC0003','2023-06-03 00:00:00','2023-06-07 00:00:00','Sold',3),(4,'SC0004','2023-06-04 00:00:00','2023-06-08 00:00:00','Available',4),(5,'SC0005','2023-06-05 00:00:00','2023-06-09 00:00:00','Available',5),(6,'SC0006','2023-06-06 00:00:00','2023-06-10 00:00:00','Available',6),(7,'SC0007','2023-06-07 00:00:00','2023-06-11 00:00:00','Sold',7),(8,'SC0008','2023-06-08 00:00:00','2023-06-12 00:00:00','Available',8),(9,'SC0009','2023-06-09 00:00:00','2023-06-13 00:00:00','Available',9),(10,'SC0010','2023-06-10 00:00:00','2023-06-14 00:00:00','Available',10),(11,'P0058000803615SR11','2023-06-24 16:53:38',NULL,'Available',15),(12,'P0058000803615SR12','2023-06-24 16:53:38',NULL,'Available',15),(13,'P0058000803615SR13','2023-06-24 16:53:38',NULL,'Available',15),(14,'P0058000803615SR14','2023-06-24 16:53:38',NULL,'Available',15),(15,'P0058000803615SR15','2023-06-24 16:53:38',NULL,'Available',15);
/*!40000 ALTER TABLE `serial_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serial_code_bill_detail`
--

DROP TABLE IF EXISTS `serial_code_bill_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serial_code_bill_detail` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_bill_detail` bigint unsigned DEFAULT NULL,
  `id_serial_code` bigint unsigned DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_bill_detail` (`id_bill_detail`),
  KEY `id_serial_code` (`id_serial_code`),
  CONSTRAINT `serial_code_bill_detail_ibfk_1` FOREIGN KEY (`id_bill_detail`) REFERENCES `bill_detail` (`id`),
  CONSTRAINT `serial_code_bill_detail_ibfk_2` FOREIGN KEY (`id_serial_code`) REFERENCES `serial_code` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serial_code_bill_detail`
--

LOCK TABLES `serial_code_bill_detail` WRITE;
/*!40000 ALTER TABLE `serial_code_bill_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `serial_code_bill_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (1,'36','2001-06-04 18:46:18','2018-09-07 02:14:18','Active'),(2,'37','2011-05-04 16:49:49','2006-08-02 07:13:47','Active'),(3,'38','2016-07-30 05:33:25','2010-12-28 18:45:47','Active'),(4,'39','2014-05-04 17:25:16','2011-01-22 23:55:21','Active'),(5,'40','2009-09-11 16:57:43','2002-08-06 17:56:29','Active'),(6,'41','2005-01-05 20:02:07','2020-10-24 19:52:57','Active'),(7,'42','2011-05-10 16:37:52','2018-05-17 05:49:44','Active'),(8,'43','2000-05-09 03:01:45','2022-08-01 23:30:02','Active'),(9,'44','2018-10-11 04:30:45','2018-03-07 12:32:51','Active'),(10,'45','2012-10-07 15:46:34','2007-08-21 04:48:06','Active'),(11,'47','2023-07-28 19:00:49','2023-07-28 19:00:49','active'),(12,'','2023-07-28 17:50:19','2023-07-28 17:50:19','active');
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `staff_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `id_role` int unsigned NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`),
  KEY `id_role` (`id_role`),
  CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'admin','1234567811','admin@example.com','1980-01-01','admin','$2y$10$c1qONZVnI6N/UEBAct6kCeLiwaCkgUNsOFVCex/kuC.X0VTGy8huy','2023-06-24 02:15:22','2023-06-24 02:15:22','enable',1,NULL),(2,'bùi tú minh','1234567890','minh@example.com','1980-01-01','minhbt','$2y$10$aubILiH8XFOX5JSjvaJ04uYJ00m7bC/Na.hRnD.t.p02G6PYFyLga','2023-06-24 02:15:22','2023-06-24 02:15:22','enable',2,NULL),(3,'Lê hùng yên','0987654321','yen@example.com','1990-01-01','yenlh','$2y$10$5V.v856gAUVYNlfCm3kXyuyzQTo76..Pwq0B5Hr0XTs3mb8T5/99S','2023-06-24 02:15:22','2023-06-24 02:15:22','enable',2,NULL),(4,'trần văn tiến','5555555555','tien@example.com','1975-01-01','tientv','$2y$10$.aYmr6bXem4X4mCvyFedS.mk1FLco0Na1nPLP5Qt9W35QuYa1q9B2','2023-06-24 02:15:22','2023-06-24 02:15:22','enable',2,NULL),(5,'nguyễn đình quyền','1111111111','quyen@example.com','1985-01-01','quyennv','$2y$10$FhyP7Sy87YL1JgMC39a1.ee/muRfM3am4bqlqwmCB/4Ae/mt2u3OO','2023-06-24 02:15:22','2023-06-24 02:15:22','enable',2,NULL),(6,'hoàng minh quân','2222222222','quan@example.com','1995-01-01','quanhm','$2y$10$RGrEv4qbfxc1hgprNWvfZezQiWq5S23y3ohhlGZeFu2Chty2P4NO2','2023-06-24 02:15:22','2023-06-24 02:15:22','enable',2,NULL);
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-31  6:27:57
