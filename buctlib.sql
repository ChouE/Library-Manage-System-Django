-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: buctlib
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add book',7,'add_book'),(26,'Can change book',7,'change_book'),(27,'Can delete book',7,'delete_book'),(28,'Can view book',7,'view_book'),(29,'Can add buy in',8,'add_buyin'),(30,'Can change buy in',8,'change_buyin'),(31,'Can delete buy in',8,'delete_buyin'),(32,'Can view buy in',8,'view_buyin'),(33,'Can add fine',9,'add_fine'),(34,'Can change fine',9,'change_fine'),(35,'Can delete fine',9,'delete_fine'),(36,'Can view fine',9,'view_fine'),(37,'Can add notice',10,'add_notice'),(38,'Can change notice',10,'change_notice'),(39,'Can delete notice',10,'delete_notice'),(40,'Can view notice',10,'view_notice'),(41,'Can add reader class',11,'add_readerclass'),(42,'Can change reader class',11,'change_readerclass'),(43,'Can delete reader class',11,'delete_readerclass'),(44,'Can view reader class',11,'view_readerclass'),(45,'Can add user',12,'add_user'),(46,'Can change user',12,'change_user'),(47,'Can delete user',12,'delete_user'),(48,'Can view user',12,'view_user'),(49,'Can add reader',13,'add_reader'),(50,'Can change reader',13,'change_reader'),(51,'Can delete reader',13,'delete_reader'),(52,'Can view reader',13,'view_reader'),(53,'Can add message',14,'add_message'),(54,'Can change message',14,'change_message'),(55,'Can delete message',14,'delete_message'),(56,'Can view message',14,'view_message'),(57,'Can add manager',15,'add_manager'),(58,'Can change manager',15,'change_manager'),(59,'Can delete manager',15,'delete_manager'),(60,'Can view manager',15,'view_manager'),(61,'Can add borrow',16,'add_borrow'),(62,'Can change borrow',16,'change_borrow'),(63,'Can delete borrow',16,'delete_borrow'),(64,'Can view borrow',16,'view_borrow'),(65,'Can add apply class',17,'add_applyclass'),(66,'Can change apply class',17,'change_applyclass'),(67,'Can delete apply class',17,'delete_applyclass'),(68,'Can view apply class',17,'view_applyclass');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$HfwOQjjF75QS$XfmliARSNKTlde96AthKxeSBuvLa6+8NzmS3EtzwuIc=','2020-06-03 22:02:39.142941',1,'ChouEV','','','945762681@qq.com',1,1,'2020-06-03 22:02:23.039596');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buctlib_applyclass`
--

DROP TABLE IF EXISTS `buctlib_applyclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buctlib_applyclass` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Message` longtext NOT NULL,
  `Class_id` varchar(10) NOT NULL,
  `ReaderID_id` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BuctLib_applyclass_Class_id_464e6325` (`Class_id`),
  KEY `BuctLib_applyclass_ReaderID_id_f970649e` (`ReaderID_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buctlib_applyclass`
--

LOCK TABLES `buctlib_applyclass` WRITE;
/*!40000 ALTER TABLE `buctlib_applyclass` DISABLE KEYS */;
/*!40000 ALTER TABLE `buctlib_applyclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buctlib_book`
--

DROP TABLE IF EXISTS `buctlib_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buctlib_book` (
  `BookID` int(11) NOT NULL AUTO_INCREMENT,
  `BName` varchar(40) NOT NULL,
  `Publisher` varchar(40) NOT NULL,
  `Author` varchar(30) NOT NULL,
  `Content` longtext,
  `Price` double NOT NULL,
  `NumInLib` smallint(5) unsigned NOT NULL,
  `NumNow` smallint(5) unsigned NOT NULL,
  `Category` varchar(30) NOT NULL,
  `PubTime` date NOT NULL,
  `ReadTimes` int(11) NOT NULL,
  PRIMARY KEY (`BookID`),
  CONSTRAINT `buctlib_book_chk_1` CHECK ((`NumInLib` >= 0)),
  CONSTRAINT `buctlib_book_chk_2` CHECK ((`NumNow` >= 0))
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buctlib_book`
--

LOCK TABLES `buctlib_book` WRITE;
/*!40000 ALTER TABLE `buctlib_book` DISABLE KEYS */;
INSERT INTO `buctlib_book` VALUES (1,'计算机科学导论','清华大学出版社','瞿中',NULL,79.9,21,21,'计算机类','1999-10-11',0),(2,'算法导论','清华大学出版社','未知',NULL,79.9,21,20,'计算机类','1999-10-11',0),(3,'科学发现纵横谈','中国少年儿童出版社','王梓坤',NULL,69.9,31,30,'文化科学类','1999-10-11',1),(4,'现代社会中的科学','浙江科学技术出版社','潘世墨',NULL,56.9,25,24,'文化科学类','1999-10-11',1),(5,'领导科学','高等教育出版社','黄强',NULL,89.9,26,25,'文化科学类','1999-10-11',1),(6,'科学家与科学道德','四川教育出版社','杨德荣',NULL,68.9,24,24,'文化科学类','1999-10-11',0),(7,'伊斯兰教育与科学','中国社会科学出版社','周国黎',NULL,69.9,23,23,'文化科学类','1999-10-11',0),(8,'新科学','商务印书馆','维柯',NULL,88.9,22,22,'文化科学类','1999-10-11',0),(9,'科学偶然故事','江苏科学技术出版社','陈仁政',NULL,89.9,18,18,'文化科学类','1999-10-11',0),(10,'社会科学概览','福建人民出版社','陈必滔',NULL,68.9,20,20,'文化科学类','1999-10-11',0),(11,'中国科学','科学出版社','中国科学院',NULL,59.9,23,23,'文化科学类','1999-10-11',0),(12,'军事','长江文艺出版社','麦家',NULL,79.9,20,19,'军事类','1999-10-11',0),(13,'军事科学研究与管理','军事科学出版社','刘继贤',NULL,89.9,30,30,'军事类','1999-10-11',0),(14,'国民军事学','大东书局','石铎',NULL,68.9,25,25,'军事类','1999-10-11',0),(15,'简明军事技术词典','湖南人民出版社','刘绍球',NULL,89.9,26,26,'军事类','1999-10-11',0),(16,'邓小平军事生涯','解放军出版社','郝智慧',NULL,68.9,24,23,'军事类','1999-10-11',0),(17,'中国军事思想概论','海潮出版社','李铁民',NULL,69.9,23,23,'军事类','1999-10-11',0),(18,'军队大脑','解放军出版社','沙波什尼科夫',NULL,56.9,22,22,'军事类','1999-10-11',0),(19,'军事战略','战士出版社','索科洛夫斯基',NULL,89.9,18,18,'军事类','1999-10-11',0),(20,'军事理论教程','高等教育出版社','吴温暖',NULL,68.9,20,20,'军事类','1999-10-11',0),(21,'军事人才价值研究','军事科学出版社','王鲁军',NULL,59.9,23,23,'军事类','1999-10-11',0),(22,'经济法','武汉大学出版社','曾咏梅',NULL,68.9,23,23,'经济类','1999-10-11',0),(23,'微观经济学纵横谈','三联书店',' 梁小民',NULL,69.9,22,22,'经济类','1999-10-11',0),(24,'经济人类学','人民出版社',' 陈庆德',NULL,88.9,18,18,'经济类','1999-10-11',0),(25,'管理经济学','东北财经大学出版社','李宝山',NULL,89.9,20,20,'经济类','1999-10-11',0),(26,'综观经济学',' 广东高等教育出版社','魏双凤',NULL,68.9,23,23,'经济类','1999-10-11',0),(27,'西方经济学',' 科学出版社','臧良运',NULL,12.8,20,20,'经济类','1999-10-11',0),(28,'世界经济发展研究','上海人民出版社','陈其人',NULL,79.9,30,30,'经济类','1999-10-11',0),(29,'全球化与经济安全','湖南人民出版社','龙文懋',NULL,89.9,25,25,'经济类','1999-10-11',0),(30,'中国经济前景分析','社会科学文献出版社','陈佳贵',NULL,68.9,26,26,'经济类','1999-10-11',0),(31,'全球网络经济','华夏出版社','萧琛',NULL,89.9,24,24,'经济类','1999-10-11',0);
/*!40000 ALTER TABLE `buctlib_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buctlib_borrow`
--

DROP TABLE IF EXISTS `buctlib_borrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buctlib_borrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BorrowTime` date NOT NULL,
  `ReturnDay` date NOT NULL,
  `RealreturnDay` date NOT NULL,
  `isReBorrowed` tinyint(1) NOT NULL,
  `isLegal` tinyint(1) DEFAULT NULL,
  `isDelete` tinyint(1) NOT NULL,
  `isReturned` tinyint(1) NOT NULL,
  `isAllowed` tinyint(1) DEFAULT NULL,
  `BookID_id` int(11) NOT NULL,
  `ReaderID_id` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BuctLib_borrow_BookID_id_71cf79ad` (`BookID_id`),
  KEY `BuctLib_borrow_ReaderID_id_3fa8c97b` (`ReaderID_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buctlib_borrow`
--

LOCK TABLES `buctlib_borrow` WRITE;
/*!40000 ALTER TABLE `buctlib_borrow` DISABLE KEYS */;
INSERT INTO `buctlib_borrow` VALUES (1,'2020-06-04','2020-07-04','2020-06-04',1,1,0,1,1,1,'1752188'),(2,'2020-06-04','2020-08-03','2020-01-01',1,1,0,0,1,5,'1752188'),(3,'2020-06-04','2020-07-04','2020-01-01',0,1,0,0,1,3,'1752188'),(4,'2020-06-04','2020-07-04','2020-01-01',0,1,0,0,1,4,'0000000');
/*!40000 ALTER TABLE `buctlib_borrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buctlib_buyin`
--

DROP TABLE IF EXISTS `buctlib_buyin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buctlib_buyin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buctlib_buyin`
--

LOCK TABLES `buctlib_buyin` WRITE;
/*!40000 ALTER TABLE `buctlib_buyin` DISABLE KEYS */;
/*!40000 ALTER TABLE `buctlib_buyin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buctlib_fine`
--

DROP TABLE IF EXISTS `buctlib_fine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buctlib_fine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `LimitDay` smallint(5) unsigned NOT NULL,
  `FineMoney` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `LimitDay` (`LimitDay`),
  CONSTRAINT `buctlib_fine_chk_1` CHECK ((`LimitDay` >= 0)),
  CONSTRAINT `buctlib_fine_chk_2` CHECK ((`FineMoney` >= 0))
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buctlib_fine`
--

LOCK TABLES `buctlib_fine` WRITE;
/*!40000 ALTER TABLE `buctlib_fine` DISABLE KEYS */;
INSERT INTO `buctlib_fine` VALUES (2,10,50),(3,20,200),(4,5,20);
/*!40000 ALTER TABLE `buctlib_fine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buctlib_manager`
--

DROP TABLE IF EXISTS `buctlib_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buctlib_manager` (
  `ManagerID` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `AccountID_id` varchar(40) NOT NULL,
  PRIMARY KEY (`ManagerID`),
  UNIQUE KEY `AccountID_id` (`AccountID_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buctlib_manager`
--

LOCK TABLES `buctlib_manager` WRITE;
/*!40000 ALTER TABLE `buctlib_manager` DISABLE KEYS */;
INSERT INTO `buctlib_manager` VALUES ('1625423','1','hai','A001');
/*!40000 ALTER TABLE `buctlib_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buctlib_message`
--

DROP TABLE IF EXISTS `buctlib_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buctlib_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Content` longtext NOT NULL,
  `MTime` datetime(6) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `ReaderID_id` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BuctLib_message_ReaderID_id_50a2fedf` (`ReaderID_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buctlib_message`
--

LOCK TABLES `buctlib_message` WRITE;
/*!40000 ALTER TABLE `buctlib_message` DISABLE KEYS */;
INSERT INTO `buctlib_message` VALUES (10,'借阅申请结果','您申请借阅《现代社会中的科学》的请求已通过，阅读愉快！','2020-06-04 02:53:45.301050','未读','0000000'),(8,'借阅申请','您申请借阅《现代社会中的科学》的请求已发出，管理员会尽快审核','2020-06-04 02:49:28.515557','未读','0000000'),(12,'续借通知','您借阅《领导科学》的归还日期已被延长30天, 请按期归还','2020-06-04 03:17:58.530546','未读','1752188');
/*!40000 ALTER TABLE `buctlib_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buctlib_notice`
--

DROP TABLE IF EXISTS `buctlib_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buctlib_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(40) NOT NULL,
  `NTime` datetime(6) NOT NULL,
  `Content` longtext NOT NULL,
  `ReadTimes` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buctlib_notice`
--

LOCK TABLES `buctlib_notice` WRITE;
/*!40000 ALTER TABLE `buctlib_notice` DISABLE KEYS */;
INSERT INTO `buctlib_notice` VALUES (1,'llll','2020-06-04 01:58:49.673802','ccccc',1);
/*!40000 ALTER TABLE `buctlib_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buctlib_reader`
--

DROP TABLE IF EXISTS `buctlib_reader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buctlib_reader` (
  `ReaderID` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `School` varchar(30) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `AccountID_id` varchar(40) NOT NULL,
  `Class_id` varchar(10) NOT NULL,
  PRIMARY KEY (`ReaderID`),
  UNIQUE KEY `AccountID_id` (`AccountID_id`),
  KEY `BuctLib_reader_Class_id_55a78892` (`Class_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buctlib_reader`
--

LOCK TABLES `buctlib_reader` WRITE;
/*!40000 ALTER TABLE `buctlib_reader` DISABLE KEYS */;
INSERT INTO `buctlib_reader` VALUES ('1752188','1','李淦','1','1','C001','A'),('1234576','保密',NULL,'信息技术与科学学院','学生','C00112','A'),('0000000','1','TES','1','1','Test','A');
/*!40000 ALTER TABLE `buctlib_reader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buctlib_readerclass`
--

DROP TABLE IF EXISTS `buctlib_readerclass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buctlib_readerclass` (
  `Class` varchar(10) NOT NULL,
  `Limited` smallint(5) unsigned NOT NULL,
  `Days` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`Class`),
  CONSTRAINT `buctlib_readerclass_chk_1` CHECK ((`Limited` >= 0)),
  CONSTRAINT `buctlib_readerclass_chk_2` CHECK ((`Days` >= 0))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buctlib_readerclass`
--

LOCK TABLES `buctlib_readerclass` WRITE;
/*!40000 ALTER TABLE `buctlib_readerclass` DISABLE KEYS */;
INSERT INTO `buctlib_readerclass` VALUES ('A',10,30),('B',20,60),('Z',3,45),('C',44,31);
/*!40000 ALTER TABLE `buctlib_readerclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buctlib_user`
--

DROP TABLE IF EXISTS `buctlib_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buctlib_user` (
  `AccountID` varchar(40) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Tel` varchar(20) NOT NULL,
  PRIMARY KEY (`AccountID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Tel` (`Tel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buctlib_user`
--

LOCK TABLES `buctlib_user` WRITE;
/*!40000 ALTER TABLE `buctlib_user` DISABLE KEYS */;
INSERT INTO `buctlib_user` VALUES ('C001','06253518L','2','666736@qq.com','18018594700'),('C00112','12345678L','2','456789@qq.com','13569526076'),('A001','06253518L','1','9999@qq.com','13101023549'),('Test','00000000a','2','01@gmail.com','01023124536');
/*!40000 ALTER TABLE `buctlib_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-06-04 00:12:59.160205','C001','C001',2,'[{\"changed\": {\"fields\": [\"Password\"]}}]',12,1),(2,'2020-06-04 00:15:22.379088','A','A',1,'[{\"added\": {}}]',11,1),(3,'2020-06-04 00:15:40.046789','B','B',1,'[{\"added\": {}}]',11,1),(4,'2020-06-04 00:22:18.808096','1','学生1752188借了计算机科学导论书',2,'[{\"changed\": {\"fields\": [\"IsAllowed\"]}}]',16,1),(5,'2020-06-04 02:46:46.512776','Z','Z',1,'[{\"added\": {}}]',11,1),(6,'2020-06-04 02:47:32.634904','0000000','0000000',2,'[{\"changed\": {\"fields\": [\"Class\"]}}]',13,1),(7,'2020-06-04 02:52:58.773591','0000000','0000000',2,'[{\"changed\": {\"fields\": [\"Class\"]}}]',13,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(2,'auth','permission'),(3,'auth','group'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'BuctLib','book'),(8,'BuctLib','buyin'),(9,'BuctLib','fine'),(10,'BuctLib','notice'),(11,'BuctLib','readerclass'),(12,'BuctLib','user'),(13,'BuctLib','reader'),(14,'BuctLib','message'),(15,'BuctLib','manager'),(16,'BuctLib','borrow'),(17,'BuctLib','applyclass');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'BuctLib','0001_initial','2020-06-03 21:56:06.498286'),(2,'contenttypes','0001_initial','2020-06-03 21:58:58.070492'),(3,'auth','0001_initial','2020-06-03 21:58:58.297271'),(4,'admin','0001_initial','2020-06-03 21:59:01.184210'),(5,'admin','0002_logentry_remove_auto_add','2020-06-03 21:59:02.225050'),(6,'admin','0003_logentry_add_action_flag_choices','2020-06-03 21:59:02.235028'),(7,'contenttypes','0002_remove_content_type_name','2020-06-03 21:59:02.783653'),(8,'auth','0002_alter_permission_name_max_length','2020-06-03 21:59:03.009119'),(9,'auth','0003_alter_user_email_max_length','2020-06-03 21:59:03.134190'),(10,'auth','0004_alter_user_username_opts','2020-06-03 21:59:03.145210'),(11,'auth','0005_alter_user_last_login_null','2020-06-03 21:59:03.309007'),(12,'auth','0006_require_contenttypes_0002','2020-06-03 21:59:03.312041'),(13,'auth','0007_alter_validators_add_error_messages','2020-06-03 21:59:03.326859'),(14,'auth','0008_alter_user_username_max_length','2020-06-03 21:59:03.467063'),(15,'auth','0009_alter_user_last_name_max_length','2020-06-03 21:59:03.709006'),(16,'auth','0010_alter_group_name_max_length','2020-06-03 21:59:03.924684'),(17,'auth','0011_update_proxy_permissions','2020-06-03 21:59:03.941631'),(18,'sessions','0001_initial','2020-06-03 21:59:03.971548'),(19,'BuctLib','0002_auto_20200604_0319','2020-06-04 03:19:37.345487');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('i1b4xw6mqhgzv9vnckhphwkrqnfvqzd6','MTU5MjMxYzdiZmMwOTdiMTRiMGEyZDFhNmJiMThlMTdiZGVhNDNkYzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZWNmNjM5M2ZmZDI0OGM3NTI4MGQ0Y2NhNWJlMDg3OWUxMjE1ZWJkIn0=','2020-06-17 22:02:39.144937');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-04 11:11:49
