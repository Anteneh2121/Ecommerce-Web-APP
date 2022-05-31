-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `userid` int NOT NULL,
  `productid` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`userid`,`productid`),
  KEY `cart_ibfk_2` (`productid`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`),
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,2,2);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryid` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `date_posted` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`categoryid`),
  UNIQUE KEY `categoryName` (`category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Mobiles','2022-05-20 14:23:28'),(2,'TV, Appliances, Electronics','2022-05-20 14:23:28'),(3,'Computers','2022-05-20 14:23:28'),(4,'Watches','2022-05-20 14:23:28');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_price` decimal(4,1) NOT NULL DEFAULT '0.0',
  `userid` int NOT NULL,
  PRIMARY KEY (`orderid`),
  KEY `fk_Order_1` (`userid`),
  CONSTRAINT `fk_Order_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordered_product`
--

DROP TABLE IF EXISTS `ordered_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordered_product` (
  `ordproductid` int NOT NULL AUTO_INCREMENT,
  `orderid` int NOT NULL,
  `productid` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`ordproductid`),
  KEY `ordered_product_ibfk_1` (`orderid`),
  KEY `ordered_product_ibfk_2` (`productid`),
  CONSTRAINT `ordered_product_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `order` (`orderid`),
  CONSTRAINT `ordered_product_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordered_product`
--

LOCK TABLES `ordered_product` WRITE;
/*!40000 ALTER TABLE `ordered_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordered_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productid` int NOT NULL AUTO_INCREMENT,
  `sku` varchar(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `quantity` int NOT NULL,
  `discounted_price` decimal(10,1) NOT NULL DEFAULT '0.0',
  `regular_price` decimal(10,1) NOT NULL DEFAULT '0.0',
  `product_rating` decimal(3,1) NOT NULL DEFAULT '0.0',
  `product_review` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'123','Iphone-X','Iphone-X','Iphone-10.png',2,499.0,499.0,0.0,NULL),(3,'234','SamsungUHD','SAMSUNG UN43NU6900 43\" CLASS/42.5\" DIAG 4K UHD MR120 SMART TV HDR 10+ PUR COLOR','SamsungUHD.jpg',1,499.0,499.0,0.0,NULL),(4,'456','SamsungS8','SamsungS8','SamsungS8.jpeg',1,599.0,499.0,0.0,NULL),(5,'678','motorolaZ2-Force','motorolaZ2-Force','motorolaZ2-Force.png',2,999.0,499.0,0.0,NULL),(9,'8910','SamsungCurved','65\" Class Q8C Curved QLED 4K TV','SamsungCurved.jpg',1,699.0,499.0,0.0,NULL),(14,'101112','Macbook','Macbook','Macbook.jpg',1,4999.0,499.0,0.0,NULL),(15,'121314','Apple Watch','applewatch','applewatch.jpeg',1,10490.0,499.0,0.0,NULL),(16,'141516','Google Pixel','Google Pixel','GooglePixel.png',2,499.0,499.0,0.0,NULL),(17,'32434223','DellInspiron','Dell Inspiron','DellInspiron.png',1,4999.0,499.0,0.0,NULL),(18,'34543345','Andriod Watch','Andriod Watch','andriodWatch.png',1,4999.0,499.0,0.0,NULL),(19,'32434534223','Huawei','Huawei','Huawei.png',1,999.0,350.0,0.0,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
INSERT INTO `product` ( `sku`, `product_name`, `description`, `image`, `quantity`, `discounted_price`, `regular_price`, `product_rating`, `product_review`)
VALUES
	( '32434534223', 'Huawei', 'Huawei', 'Huawei.png', 1, 999.0, 350.0, 0.0, NULL);

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `categoryid` int NOT NULL,
  `productid` int NOT NULL,
  `created_on` date DEFAULT NULL,
  PRIMARY KEY (`categoryid`,`productid`),
  KEY `fk_Product_Category_2` (`productid`),
  CONSTRAINT `fk_Product_Category_1` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`),
  CONSTRAINT `fk_Product_Category_2` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,4,'2022-05-20'),(1,5,'2022-05-20'),(1,16,'2022-05-20'),(2,3,'2022-05-20'),(2,9,'2022-05-20'),(3,14,'2022-05-20'),(3,17,NULL),(4,15,'2022-05-20'),(4,18,NULL);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_transaction`
--

DROP TABLE IF EXISTS `sale_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_transaction` (
  `transactionid` int NOT NULL AUTO_INCREMENT,
  `orderid` int NOT NULL,
  `transaction_date` date NOT NULL,
  `amount` decimal(4,1) NOT NULL DEFAULT '0.0',
  `cc_number` varchar(50) NOT NULL,
  `cc_type` varchar(50) NOT NULL,
  `response` varchar(50) NOT NULL,
  PRIMARY KEY (`transactionid`),
  KEY `sale_transaction_ibfk_1` (`orderid`),
  CONSTRAINT `sale_transaction_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `order` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_transaction`
--

LOCK TABLES `sale_transaction` WRITE;
/*!40000 ALTER TABLE `sale_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `sale_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(120) NOT NULL,
  `password` varchar(60) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `image_file` varchar(20) NOT NULL DEFAULT 'default.jpg',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Anteneh','kassaw','827ccb0eea8a706c4c34a16891f84e7b',1,'','','Chicago','IL','US','60660','antukassaw1@gmail.com','1234567','default.jpg',0,'2018-12-03 11:49:36'),(4,'User2','LastName2','827ccb0eea8a706c4c34a16891f84e7b',1,'6030 N SHERIDAN ROAD','APT 811','CHICAGO','Illinois','United States','60660','antukassaw1@gmail.com','3123638771','default.jpg',0,'2022-05-20 11:53:20');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-23  1:48:55
