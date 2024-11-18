-- MySQL dump 10.13  Distrib 8.0.39, for Win64 (x86_64)
--
-- Host: localhost    Database: ball
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `aout`
--

DROP TABLE IF EXISTS `aout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aout` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Workweek` int NOT NULL,
  `Product Name` varchar(45) NOT NULL,
  `Quantity` int NOT NULL,
  `Scenario` varchar(45) NOT NULL,
  `Creator` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aout`
--

LOCK TABLES `aout` WRITE;
/*!40000 ALTER TABLE `aout` DISABLE KEYS */;
INSERT INTO `aout` VALUES (1,202428,'Ahava',120000,'Standard','cakinghair'),(2,202429,'Ahava',120000,'Standard','cakinghair'),(3,202430,'Ahava',120000,'Standard','cakinghair'),(4,202431,'Ahava',120000,'Standard','cakinghair'),(5,202432,'Ahava',120000,'Standard','cakinghair'),(6,202433,'Ahava',120000,'Standard','cakinghair'),(7,202434,'Ahava',120000,'Standard','cakinghair'),(8,202435,'Ahava',120000,'Standard','cakinghair'),(9,202436,'Ahava',120000,'Standard','cakinghair'),(10,202437,'Ahava',120000,'Standard','cakinghair'),(11,202438,'Ahava',120000,'Standard','cakinghair'),(12,202439,'Ahava',120000,'Standard','cakinghair'),(13,202440,'Ahava',120000,'Standard','cakinghair'),(14,202441,'Ahava',120000,'Standard','cakinghair'),(15,202442,'Ahava',120000,'Standard','cakinghair'),(16,202443,'Ahava',120000,'Standard','cakinghair'),(17,202444,'Ahava',120000,'Standard','cakinghair'),(18,202445,'Ahava',120000,'Standard','cakinghair'),(19,202446,'Ahava',120000,'Standard','cakinghair'),(20,202447,'Ahava',120000,'Standard','cakinghair'),(21,202448,'Ahava',120000,'Standard','cakinghair'),(22,202449,'Ahava',120000,'Standard','cakinghair'),(23,202450,'Ahava',120000,'Standard','cakinghair'),(24,202451,'Ahava',120000,'Standard','cakinghair'),(25,202452,'Ahava',120000,'Standard','cakinghair'),(26,202428,'Nina',0,'Standard','cakinghair'),(27,202429,'Nina',0,'Standard','cakinghair'),(28,202430,'Nina',0,'Standard','cakinghair'),(29,202431,'Nina',0,'Standard','cakinghair'),(30,202432,'Nina',0,'Standard','cakinghair'),(31,202433,'Nina',0,'Standard','cakinghair'),(32,202434,'Nina',0,'Standard','cakinghair'),(33,202435,'Nina',0,'Standard','cakinghair'),(34,202436,'Nina',0,'Standard','cakinghair'),(35,202437,'Nina',0,'Standard','cakinghair'),(36,202438,'Nina',0,'Standard','cakinghair'),(37,202439,'Nina',0,'Standard','cakinghair'),(38,202440,'Nina',0,'Standard','cakinghair'),(39,202441,'Nina',0,'Standard','cakinghair'),(40,202442,'Nina',0,'Standard','cakinghair'),(41,202443,'Nina',0,'Standard','cakinghair'),(42,202444,'Nina',0,'Standard','cakinghair'),(43,202445,'Nina',0,'Standard','cakinghair'),(44,202446,'Nina',0,'Standard','cakinghair'),(45,202447,'Nina',0,'Standard','cakinghair'),(46,202448,'Nina',0,'Standard','cakinghair'),(47,202449,'Nina',0,'Standard','cakinghair'),(48,202450,'Nina',0,'Standard','cakinghair'),(49,202451,'Nina',0,'Standard','cakinghair'),(50,202452,'Nina',0,'Standard','cakinghair'),(51,202428,'Kolin',200000,'Standard','cakinghair'),(52,202429,'Kolin',200000,'Standard','cakinghair'),(53,202430,'Kolin',200000,'Standard','cakinghair'),(54,202431,'Kolin',200000,'Standard','cakinghair'),(55,202432,'Kolin',200000,'Standard','cakinghair'),(56,202433,'Kolin',200000,'Standard','cakinghair'),(57,202434,'Kolin',200000,'Standard','cakinghair'),(58,202435,'Kolin',500000,'Standard','cakinghair'),(59,202436,'Kolin',500000,'Standard','cakinghair'),(60,202437,'Kolin',500000,'Standard','cakinghair'),(61,202438,'Kolin',500000,'Standard','cakinghair'),(62,202439,'Kolin',200000,'Standard','cakinghair'),(63,202440,'Kolin',200000,'Standard','cakinghair'),(64,202441,'Kolin',200000,'Standard','cakinghair'),(65,202442,'Kolin',200000,'Standard','cakinghair'),(66,202443,'Kolin',200000,'Standard','cakinghair'),(67,202444,'Kolin',500000,'Standard','cakinghair'),(68,202445,'Kolin',500000,'Standard','cakinghair'),(69,202446,'Kolin',500000,'Standard','cakinghair'),(70,202447,'Kolin',500000,'Standard','cakinghair'),(71,202448,'Kolin',200000,'Standard','cakinghair'),(72,202449,'Kolin',200000,'Standard','cakinghair'),(73,202450,'Kolin',200000,'Standard','cakinghair'),(74,202451,'Kolin',200000,'Standard','cakinghair'),(75,202452,'Kolin',200000,'Standard','cakinghair'),(76,202428,'Henry',200000,'Standard','cakinghair'),(77,202429,'Henry',200000,'Standard','cakinghair'),(78,202430,'Henry',200000,'Standard','cakinghair'),(79,202431,'Henry',200000,'Standard','cakinghair'),(80,202432,'Henry',0,'Standard','cakinghair'),(81,202433,'Henry',200000,'Standard','cakinghair'),(82,202434,'Henry',200000,'Standard','cakinghair'),(83,202435,'Henry',200000,'Standard','cakinghair'),(84,202436,'Henry',200000,'Standard','cakinghair'),(85,202437,'Henry',0,'Standard','cakinghair'),(86,202438,'Henry',0,'Standard','cakinghair'),(87,202439,'Henry',400000,'Standard','cakinghair'),(88,202440,'Henry',200000,'Standard','cakinghair'),(89,202441,'Henry',200000,'Standard','cakinghair'),(90,202442,'Henry',200000,'Standard','cakinghair'),(91,202443,'Henry',200000,'Standard','cakinghair'),(92,202444,'Henry',200000,'Standard','cakinghair'),(93,202445,'Henry',200000,'Standard','cakinghair'),(94,202446,'Henry',200000,'Standard','cakinghair'),(95,202447,'Henry',200000,'Standard','cakinghair'),(96,202448,'Henry',0,'Standard','cakinghair'),(97,202449,'Henry',0,'Standard','cakinghair'),(98,202450,'Henry',400000,'Standard','cakinghair'),(99,202451,'Henry',200000,'Standard','cakinghair'),(100,202452,'Henry',200000,'Standard','cakinghair'),(101,202428,'Clay',0,'Standard','cakinghair'),(102,202429,'Clay',0,'Standard','cakinghair'),(103,202430,'Clay',1800000,'Standard','cakinghair'),(104,202431,'Clay',2000000,'Standard','cakinghair'),(105,202432,'Clay',50000,'Standard','cakinghair'),(106,202433,'Clay',0,'Standard','cakinghair'),(107,202434,'Clay',0,'Standard','cakinghair'),(108,202435,'Clay',0,'Standard','cakinghair'),(109,202436,'Clay',0,'Standard','cakinghair'),(110,202437,'Clay',1800000,'Standard','cakinghair'),(111,202438,'Clay',2000000,'Standard','cakinghair'),(112,202439,'Clay',50000,'Standard','cakinghair'),(113,202440,'Clay',0,'Standard','cakinghair'),(114,202441,'Clay',0,'Standard','cakinghair'),(115,202442,'Clay',0,'Standard','cakinghair'),(116,202443,'Clay',0,'Standard','cakinghair'),(117,202444,'Clay',1800000,'Standard','cakinghair'),(118,202445,'Clay',2000000,'Standard','cakinghair'),(119,202446,'Clay',50000,'Standard','cakinghair'),(120,202447,'Clay',0,'Standard','cakinghair'),(121,202448,'Clay',0,'Standard','cakinghair'),(122,202449,'Clay',0,'Standard','cakinghair'),(123,202450,'Clay',0,'Standard','cakinghair'),(124,202451,'Clay',0,'Standard','cakinghair'),(125,202452,'Clay',0,'Standard','cakinghair'),(126,202428,'Elly',400000,'Standard','cakinghair'),(127,202429,'Elly',700000,'Standard','cakinghair'),(128,202430,'Elly',700000,'Standard','cakinghair'),(129,202431,'Elly',400000,'Standard','cakinghair'),(130,202432,'Elly',400000,'Standard','cakinghair'),(131,202433,'Elly',700000,'Standard','cakinghair'),(132,202434,'Elly',700000,'Standard','cakinghair'),(133,202435,'Elly',400000,'Standard','cakinghair'),(134,202436,'Elly',400000,'Standard','cakinghair'),(135,202437,'Elly',700000,'Standard','cakinghair'),(136,202438,'Elly',700000,'Standard','cakinghair'),(137,202439,'Elly',400000,'Standard','cakinghair'),(138,202440,'Elly',400000,'Standard','cakinghair'),(139,202441,'Elly',700000,'Standard','cakinghair'),(140,202442,'Elly',700000,'Standard','cakinghair'),(141,202443,'Elly',400000,'Standard','cakinghair'),(142,202444,'Elly',400000,'Standard','cakinghair'),(143,202445,'Elly',700000,'Standard','cakinghair'),(144,202446,'Elly',700000,'Standard','cakinghair'),(145,202447,'Elly',400000,'Standard','cakinghair'),(146,202448,'Elly',400000,'Standard','cakinghair'),(147,202449,'Elly',700000,'Standard','cakinghair'),(148,202450,'Elly',700000,'Standard','cakinghair'),(149,202451,'Elly',400000,'Standard','cakinghair'),(150,202452,'Elly',400000,'Standard','cakinghair');
/*!40000 ALTER TABLE `aout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add auth group',1,'add_authgroup'),(2,'Can change auth group',1,'change_authgroup'),(3,'Can delete auth group',1,'delete_authgroup'),(4,'Can view auth group',1,'view_authgroup'),(5,'Can add auth group permissions',2,'add_authgrouppermissions'),(6,'Can change auth group permissions',2,'change_authgrouppermissions'),(7,'Can delete auth group permissions',2,'delete_authgrouppermissions'),(8,'Can view auth group permissions',2,'view_authgrouppermissions'),(9,'Can add auth permission',3,'add_authpermission'),(10,'Can change auth permission',3,'change_authpermission'),(11,'Can delete auth permission',3,'delete_authpermission'),(12,'Can view auth permission',3,'view_authpermission'),(13,'Can add auth user',4,'add_authuser'),(14,'Can change auth user',4,'change_authuser'),(15,'Can delete auth user',4,'delete_authuser'),(16,'Can view auth user',4,'view_authuser'),(17,'Can add auth user groups',5,'add_authusergroups'),(18,'Can change auth user groups',5,'change_authusergroups'),(19,'Can delete auth user groups',5,'delete_authusergroups'),(20,'Can view auth user groups',5,'view_authusergroups'),(21,'Can add auth user user permissions',6,'add_authuseruserpermissions'),(22,'Can change auth user user permissions',6,'change_authuseruserpermissions'),(23,'Can delete auth user user permissions',6,'delete_authuseruserpermissions'),(24,'Can view auth user user permissions',6,'view_authuseruserpermissions'),(25,'Can add django admin log',7,'add_djangoadminlog'),(26,'Can change django admin log',7,'change_djangoadminlog'),(27,'Can delete django admin log',7,'delete_djangoadminlog'),(28,'Can view django admin log',7,'view_djangoadminlog'),(29,'Can add django content type',8,'add_djangocontenttype'),(30,'Can change django content type',8,'change_djangocontenttype'),(31,'Can delete django content type',8,'delete_djangocontenttype'),(32,'Can view django content type',8,'view_djangocontenttype'),(33,'Can add django migrations',9,'add_djangomigrations'),(34,'Can change django migrations',9,'change_djangomigrations'),(35,'Can delete django migrations',9,'delete_djangomigrations'),(36,'Can view django migrations',9,'view_djangomigrations'),(37,'Can add django session',10,'add_djangosession'),(38,'Can change django session',10,'change_djangosession'),(39,'Can delete django session',10,'delete_djangosession'),(40,'Can view django session',10,'view_djangosession'),(41,'Can add order',11,'add_order'),(42,'Can change order',11,'change_order'),(43,'Can delete order',11,'delete_order'),(44,'Can view order',11,'view_order'),(45,'Can add aout',12,'add_aout'),(46,'Can change aout',12,'change_aout'),(47,'Can delete aout',12,'delete_aout'),(48,'Can view aout',12,'view_aout'),(49,'Can add log entry',13,'add_logentry'),(50,'Can change log entry',13,'change_logentry'),(51,'Can delete log entry',13,'delete_logentry'),(52,'Can view log entry',13,'view_logentry'),(53,'Can add permission',14,'add_permission'),(54,'Can change permission',14,'change_permission'),(55,'Can delete permission',14,'delete_permission'),(56,'Can view permission',14,'view_permission'),(57,'Can add group',15,'add_group'),(58,'Can change group',15,'change_group'),(59,'Can delete group',15,'delete_group'),(60,'Can view group',15,'view_group'),(61,'Can add user',16,'add_user'),(62,'Can change user',16,'change_user'),(63,'Can delete user',16,'delete_user'),(64,'Can view user',16,'view_user'),(65,'Can add content type',17,'add_contenttype'),(66,'Can change content type',17,'change_contenttype'),(67,'Can delete content type',17,'delete_contenttype'),(68,'Can view content type',17,'view_contenttype'),(69,'Can add session',18,'add_session'),(70,'Can change session',18,'change_session'),(71,'Can delete session',18,'delete_session'),(72,'Can view session',18,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$mLJGqk1YAwEItKMsjufXQm$fIVFJ3XnOGnA8elp86kZUXW7s3fQbOebVVcUX9asn6c=','2024-08-08 06:55:48.953365',1,'cakinghair','','','intoarmour@gmail.com',1,1,'2024-08-08 06:55:05.084073');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (13,'admin','logentry'),(15,'auth','group'),(14,'auth','permission'),(16,'auth','user'),(12,'CCB','aout'),(1,'CCB','authgroup'),(2,'CCB','authgrouppermissions'),(3,'CCB','authpermission'),(4,'CCB','authuser'),(5,'CCB','authusergroups'),(6,'CCB','authuseruserpermissions'),(7,'CCB','djangoadminlog'),(8,'CCB','djangocontenttype'),(9,'CCB','djangomigrations'),(10,'CCB','djangosession'),(11,'CCB','order'),(17,'contenttypes','contenttype'),(18,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'CCB','0001_initial','2024-08-08 06:47:23.456551'),(2,'CCB','0002_aout','2024-08-08 06:47:23.469340'),(3,'CCB','0003_alter_aout_options_alter_order_options','2024-08-08 06:47:23.480883'),(4,'CCB','0004_alter_order_options','2024-08-08 06:47:23.492185'),(5,'contenttypes','0001_initial','2024-08-08 06:47:23.593728'),(6,'auth','0001_initial','2024-08-08 06:47:24.835911'),(7,'admin','0001_initial','2024-08-08 06:47:25.038914'),(8,'admin','0002_logentry_remove_auto_add','2024-08-08 06:47:25.049903'),(9,'admin','0003_logentry_add_action_flag_choices','2024-08-08 06:47:25.056900'),(10,'contenttypes','0002_remove_content_type_name','2024-08-08 06:47:25.152908'),(11,'auth','0002_alter_permission_name_max_length','2024-08-08 06:47:25.225916'),(12,'auth','0003_alter_user_email_max_length','2024-08-08 06:47:25.254912'),(13,'auth','0004_alter_user_username_opts','2024-08-08 06:47:25.263905'),(14,'auth','0005_alter_user_last_login_null','2024-08-08 06:47:25.317917'),(15,'auth','0006_require_contenttypes_0002','2024-08-08 06:47:25.322906'),(16,'auth','0007_alter_validators_add_error_messages','2024-08-08 06:47:25.336902'),(17,'auth','0008_alter_user_username_max_length','2024-08-08 06:47:25.396729'),(18,'auth','0009_alter_user_last_name_max_length','2024-08-08 06:47:25.478646'),(19,'auth','0010_alter_group_name_max_length','2024-08-08 06:47:25.548556'),(20,'auth','0011_update_proxy_permissions','2024-08-08 06:47:25.572196'),(21,'auth','0012_alter_user_first_name_max_length','2024-08-08 06:47:25.840249'),(22,'sessions','0001_initial','2024-08-08 06:47:25.875793'),(23,'CCB','0005_alter_aout_table','2024-08-08 06:52:30.348666');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('jjrah2mu3leofrnbmkhknyjsikcrtbom','.eJxVjEEOwiAQRe_C2pBOYYC6dO8ZyDCAVA0kpV0Z765NutDtf-_9l_C0rcVvPS1-juIsQJx-t0D8SHUH8U711iS3ui5zkLsiD9rltcX0vBzu30GhXr51IocWB1KoyUS2nCZrbUbKyrGGFMKoQONIKiKCcRwM5gEmsBwVoBHvD-LAN3I:1sbx3s:hbyQ8dv8nQgVnrASmsyOhRfbdXAh4b-gkDWCbvrNA44','2024-08-22 06:55:48.957207');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `Order ID` int NOT NULL,
  `Design ID` varchar(45) NOT NULL,
  `Speed` varchar(45) DEFAULT NULL,
  `Temperature Spec` varchar(45) DEFAULT NULL,
  `Product Name` varchar(45) NOT NULL,
  `Quantity` int NOT NULL,
  `Due Date` date NOT NULL,
  `Priority` int NOT NULL,
  PRIMARY KEY (`Order ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (102049,'Y31G','14C','NA','Kolin',89200,'2024-10-29',3),(103610,'Y31G','16','NA','Ahava',1700,'2024-12-24',5),(105658,'Y31J','14C','NA','Elly',120000,'2024-09-10',2),(105884,'Y31G','14C','NA','Kolin',24800,'2024-12-03',3),(106269,'Y31G','14C','NA','Kolin',86000,'2024-12-03',3),(106448,'Y31G','14C','NA','Kolin',18800,'2024-09-03',3),(106938,'Y31G','16','NA','Ahava',19500,'2024-08-20',5),(109550,'Y31G','14C','NA','Kolin',78500,'2024-10-01',3),(109887,'Y31H','21','NA','Clay',199500,'2024-08-13',6),(110764,'Y31G','14C','NA','Kolin',24800,'2024-07-30',3),(110962,'Y31G','14C','NA','Kolin',18900,'2024-12-31',3),(117498,'Y31G','14C','NA','Kolin',83200,'2024-07-30',3),(119081,'Y31G','14','Automotive','Henry',500,'2024-10-08',1),(120349,'Y31G','14','Automotive','Henry',25200,'2024-08-13',1),(120593,'Y31H','21','NA','Clay',199500,'2024-09-10',6),(121560,'Y31J','14C','NA','Elly',59300,'2024-12-10',2),(122085,'Y31J','14C','NA','Elly',46100,'2024-12-03',2),(126726,'Y31J','14C','NA','Elly',13600,'2024-12-10',2),(128062,'Y31H','24','NA','Nina',47500,'2024-08-20',4),(131596,'Y31G','16','NA','Ahava',68200,'2024-12-24',5),(131688,'Y31H','21','NA','Clay',18500,'2024-12-03',6),(132527,'Y31G','14C','NA','Kolin',89200,'2024-12-03',3),(133487,'Y31G','16','NA','Ahava',56000,'2024-09-24',5),(134152,'Y31H','21','NA','Clay',16300,'2024-11-12',6),(134245,'Y31H','21','NA','Clay',170000,'2024-11-12',6),(134663,'Y31G','14C','NA','Kolin',22300,'2024-12-03',3),(135751,'Y31G','16','NA','Ahava',15200,'2024-12-24',5),(136065,'Y31G','14C','NA','Kolin',13800,'2024-09-03',3),(136581,'Y31J','14C','NA','Elly',125100,'2024-12-03',2),(139389,'Y31J','14C','NA','Elly',143100,'2024-10-29',2),(141533,'Y31G','14C','NA','Kolin',39700,'2024-10-01',3),(141561,'Y31G','14','Automotive','Henry',25200,'2024-11-05',1),(142559,'Y31G','14','Automotive','Henry',46300,'2024-11-26',1),(146160,'Y31G','14C','NA','Kolin',18900,'2024-12-03',3),(146803,'Y31G','14','Automotive','Henry',12200,'2024-11-26',1),(148558,'Y31H','21','NA','Clay',16300,'2024-10-08',6),(150552,'Y31H','24','NA','Nina',35800,'2024-08-20',4),(152904,'Y31G','14','Automotive','Henry',46300,'2024-09-03',1),(155692,'Y31H','24','NA','Nina',31200,'2024-11-26',4),(155913,'Y31H','21','NA','Clay',131900,'2024-10-29',6),(156192,'Y31G','14','Automotive','Henry',6100,'2024-10-15',1),(158501,'Y31H','21','NA','Clay',14300,'2024-08-27',6),(158657,'Y31G','14','Automotive','Henry',38500,'2024-08-06',1),(158744,'Y31J','14C','NA','Elly',144300,'2024-09-03',2),(162055,'Y31G','14C','NA','Kolin',22300,'2024-10-01',3),(163196,'Y31G','14C','NA','Kolin',31300,'2024-09-03',3),(163376,'Y31G','16','NA','Ahava',56000,'2024-08-20',5),(164817,'Y31G','14C','NA','Kolin',5300,'2024-07-30',3),(166631,'Y31G','16','NA','Ahava',15200,'2024-11-26',5),(167243,'Y31G','14','Automotive','Henry',38500,'2024-10-01',1),(168576,'Y31G','14','Automotive','Henry',28900,'2024-12-10',1),(170622,'Y31H','21','NA','Clay',51100,'2024-09-24',6),(171352,'Y31G','14','Automotive','Henry',42900,'2024-08-13',1),(172897,'Y31G','14C','NA','Kolin',18800,'2024-10-29',3),(173449,'Y31G','16','NA','Ahava',56000,'2024-12-24',5),(173560,'Y31G','14C','NA','Kolin',30500,'2024-10-01',3),(174632,'Y31H','21','NA','Clay',80900,'2024-10-15',6),(177035,'Y31H','21','NA','Clay',185900,'2024-08-27',6),(179885,'Y31G','14C','NA','Kolin',64300,'2024-10-29',3),(181135,'Y31G','16','NA','Ahava',20000,'2024-09-10',5),(184550,'Y31G','14C','NA','Kolin',30500,'2024-07-30',3),(184669,'Y31G','14C','NA','Kolin',24800,'2024-09-03',3),(184882,'Y31G','14','Automotive','Henry',42500,'2024-12-24',1),(186726,'Y31G','14','Automotive','Henry',500,'2024-08-13',1),(188460,'Y31H','24','NA','Nina',35800,'2024-10-22',4),(190933,'Y31G','14C','NA','Kolin',68300,'2024-10-29',3),(193803,'Y31J','14C','NA','Elly',148800,'2024-10-01',2),(194597,'Y31G','14C','NA','Kolin',79400,'2024-12-31',3),(195288,'Y31G','16','NA','Ahava',20000,'2024-08-06',5),(197513,'Y31G','16','NA','Ahava',2300,'2024-11-26',5),(198092,'Y31G','14','Automotive','Henry',33400,'2024-11-19',1),(198115,'Y31H','21','NA','Clay',164900,'2024-10-22',6),(198234,'Y31G','14','Automotive','Henry',33400,'2024-09-24',1),(199108,'Y31G','16','NA','Ahava',15200,'2024-08-20',5),(199457,'Y31G','14','Automotive','Henry',25200,'2024-10-08',1),(200298,'Y31G','16','NA','Ahava',20000,'2024-12-10',5),(201273,'Y31G','16','NA','Ahava',2300,'2024-10-22',5),(203585,'Y31G','14C','NA','Kolin',70500,'2024-12-31',3),(203921,'Y31J','14C','NA','Elly',148800,'2024-10-29',2),(207188,'Y31G','14','Automotive','Henry',35100,'2024-10-22',1),(207999,'Y31J','14C','NA','Elly',128500,'2024-09-03',2),(208816,'Y31G','14','Automotive','Henry',28900,'2024-09-17',1),(212678,'Y31G','14C','NA','Kolin',18900,'2024-10-01',3),(212993,'Y31G','14','Automotive','Henry',33400,'2024-12-24',1),(213624,'Y31G','14','Automotive','Henry',43500,'2024-11-12',1),(214888,'Y31H','24','NA','Nina',10100,'2024-09-24',4),(216432,'Y31H','21','NA','Clay',164900,'2024-09-24',6),(216718,'Y31H','21','NA','Clay',16300,'2024-09-10',6),(219651,'Y31J','14C','NA','Elly',98500,'2024-10-01',2),(225278,'Y31H','21','NA','Clay',51100,'2024-10-22',6),(227844,'Y31G','14C','NA','Kolin',43200,'2024-10-29',3),(228143,'Y31G','14C','NA','Kolin',79400,'2024-07-30',3),(228523,'Y31G','14','Automotive','Henry',28900,'2024-08-20',1),(231108,'Y31G','14','Automotive','Henry',12200,'2024-08-27',1),(231736,'Y31G','16','NA','Ahava',59900,'2024-11-26',5),(234246,'Y31J','14C','NA','Elly',35800,'2024-09-10',2),(234462,'Y31J','14C','NA','Elly',148800,'2024-09-03',2),(237674,'Y31J','14C','NA','Elly',79900,'2024-12-03',2),(238793,'Y31G','14C','NA','Kolin',5300,'2024-09-03',3),(239130,'Y31G','14C','NA','Kolin',78500,'2024-12-31',3),(240436,'Y31H','21','NA','Clay',131900,'2024-10-01',6),(241106,'Y31G','16','NA','Ahava',68200,'2024-08-20',5),(241874,'Y31G','14C','NA','Kolin',70500,'2024-07-30',3),(243423,'Y31G','14C','NA','Kolin',39700,'2024-12-03',3),(244055,'Y31G','14C','NA','Kolin',24800,'2024-10-29',3),(244878,'Y31G','16','NA','Ahava',59900,'2024-09-24',5),(245101,'Y31J','14C','NA','Elly',59700,'2024-10-01',2),(245994,'Y31G','14','Automotive','Henry',28900,'2024-11-12',1),(247484,'Y31G','14','Automotive','Henry',35300,'2024-10-15',1),(249834,'Y31G','14C','NA','Kolin',13400,'2024-12-03',3),(261474,'Y31G','14','Automotive','Henry',12200,'2024-11-19',1),(261753,'Y31J','14C','NA','Elly',35800,'2024-12-03',2),(262144,'Y31G','14C','NA','Kolin',5300,'2024-12-03',3),(262179,'Y31G','14','Automotive','Henry',35100,'2024-12-31',1),(263394,'Y31J','14C','NA','Elly',128500,'2024-12-31',2),(263449,'Y31G','14','Automotive','Henry',12200,'2024-10-22',1),(264611,'Y31G','14','Automotive','Henry',31000,'2024-08-20',1),(264923,'Y31G','14C','NA','Kolin',43100,'2024-12-03',3),(265179,'Y31H','24','NA','Nina',10100,'2024-08-20',4),(265820,'Y31H','21','NA','Clay',51100,'2024-11-26',6),(265974,'Y31J','14C','NA','Elly',122600,'2024-09-10',2),(266394,'Y31J','14C','NA','Elly',101200,'2024-10-22',2),(266930,'Y31J','14C','NA','Elly',131700,'2024-12-03',2),(267520,'Y31G','14C','NA','Kolin',31300,'2024-10-01',3),(270584,'Y31G','16','NA','Ahava',16900,'2024-08-20',5),(272566,'Y31H','21','NA','Clay',78200,'2024-12-03',6),(273737,'Y31G','16','NA','Ahava',2300,'2024-12-24',5),(275693,'Y31H','24','NA','Nina',10100,'2024-12-24',4),(277069,'Y31J','14C','NA','Elly',59300,'2024-08-06',2),(277419,'Y31G','14','Automotive','Henry',42500,'2024-10-22',1),(278253,'Y31G','14C','NA','Kolin',5300,'2024-12-31',3),(278845,'Y31G','14','Automotive','Henry',42500,'2024-09-24',1),(279170,'Y31J','14C','NA','Elly',128700,'2024-12-31',2),(284511,'Y31G','16','NA','Ahava',1700,'2024-11-26',5),(284889,'Y31G','14','Automotive','Henry',12200,'2024-09-03',1),(287311,'Y31G','14C','NA','Kolin',13400,'2024-10-01',3),(291340,'Y31J','14C','NA','Elly',79900,'2024-12-31',2),(291690,'Y31H','21','NA','Clay',185900,'2024-12-31',6),(295790,'Y31G','16','NA','Ahava',68200,'2024-11-26',5),(296934,'Y31G','14C','NA','Kolin',83200,'2024-12-03',3),(306810,'Y31H','24','NA','Nina',10100,'2024-11-26',4),(310598,'Y31J','14C','NA','Elly',79400,'2024-12-03',2),(310633,'Y31H','24','NA','Nina',93000,'2024-08-20',4),(310749,'Y31H','21','NA','Clay',80900,'2024-11-12',6),(311714,'Y31G','14C','NA','Kolin',43200,'2024-12-31',3),(313607,'Y31G','14C','NA','Kolin',39800,'2024-09-03',3),(313998,'Y31H','21','NA','Clay',199500,'2024-11-12',6),(316468,'Y31G','16','NA','Ahava',20000,'2024-08-06',5),(317023,'Y31G','14C','NA','Kolin',13400,'2024-12-31',3),(317975,'Y31G','14C','NA','Kolin',13800,'2024-10-01',3),(320973,'Y31G','14','Automotive','Henry',19800,'2024-12-24',1),(321458,'Y31G','14C','NA','Kolin',18800,'2024-10-01',3),(328149,'Y31G','16','NA','Ahava',20000,'2024-11-05',5),(330457,'Y31J','14C','NA','Elly',125100,'2024-09-03',2),(335681,'Y31G','16','NA','Ahava',53800,'2024-08-20',5),(339518,'Y31G','14C','NA','Kolin',79400,'2024-10-01',3),(340891,'Y31G','14C','NA','Kolin',77500,'2024-10-01',3),(341228,'Y31G','14C','NA','Kolin',31300,'2024-12-03',3),(341566,'Y31G','16','NA','Ahava',53800,'2024-10-22',5),(342551,'Y31G','14','Automotive','Henry',13400,'2024-08-13',1),(347308,'Y31H','24','NA','Nina',31200,'2024-10-22',4),(347924,'Y31G','14C','NA','Kolin',31300,'2024-12-31',3),(349703,'Y31H','21','NA','Clay',164900,'2024-08-27',6),(350110,'Y31J','14C','NA','Elly',59700,'2024-09-03',2),(354094,'Y31G','14C','NA','Kolin',22900,'2024-10-29',3),(354223,'Y31G','16','NA','Ahava',16900,'2024-09-24',5),(354423,'Y31G','14C','NA','Kolin',22300,'2024-10-29',3),(362576,'Y31G','16','NA','Ahava',19500,'2024-09-24',5),(365986,'Y31G','14C','NA','Kolin',22900,'2024-10-01',3),(369307,'Y31G','14','Automotive','Henry',15000,'2024-11-26',1),(370272,'Y31G','14C','NA','Kolin',86000,'2024-10-01',3),(372954,'Y31G','14C','NA','Kolin',900,'2024-10-29',3),(380192,'Y31G','14C','NA','Kolin',39700,'2024-10-29',3),(383538,'Y31J','14C','NA','Elly',143100,'2024-12-31',2),(385016,'Y31H','21','NA','Clay',14300,'2024-10-22',6),(391326,'Y31G','14C','NA','Kolin',30500,'2024-12-03',3),(391829,'Y31G','14C','NA','Kolin',30500,'2024-10-29',3),(392096,'Y31G','14C','NA','Kolin',30500,'2024-09-03',3),(393246,'Y31J','14C','NA','Elly',144300,'2024-12-31',2),(394602,'Y31G','16','NA','Ahava',53800,'2024-12-24',5),(394750,'Y31G','16','NA','Ahava',56000,'2024-10-22',5),(397145,'Y31J','14C','NA','Elly',35800,'2024-08-06',2),(400780,'Y31J','14C','NA','Elly',123500,'2024-12-31',2),(403131,'Y31J','14C','NA','Elly',101600,'2024-08-06',2),(406577,'Y31J','14C','NA','Elly',35800,'2024-10-22',2),(407067,'Y31J','14C','NA','Elly',148800,'2024-12-31',2),(408159,'Y31G','14C','NA','Kolin',39700,'2024-12-31',3),(408375,'Y31J','14C','NA','Elly',125100,'2024-10-29',2),(409744,'Y31G','16','NA','Ahava',15200,'2024-10-22',5),(411338,'Y31H','24','NA','Nina',31200,'2024-09-24',4),(412114,'Y31G','14C','NA','Kolin',79400,'2024-09-03',3),(412272,'Y31G','16','NA','Ahava',19500,'2024-10-22',5),(413165,'Y31G','14C','NA','Kolin',39800,'2024-07-30',3),(413339,'Y31J','14C','NA','Elly',101600,'2024-09-10',2),(419152,'Y31G','14C','NA','Kolin',64300,'2024-12-31',3),(424258,'Y31H','21','NA','Clay',78200,'2024-11-05',6),(424353,'Y31G','14C','NA','Kolin',68300,'2024-09-03',3),(426187,'Y31G','16','NA','Ahava',1700,'2024-07-23',5),(428643,'Y31J','14C','NA','Elly',46100,'2024-10-01',2),(429322,'Y31G','14C','NA','Kolin',86000,'2024-12-31',3),(429946,'Y31J','14C','NA','Elly',13600,'2024-11-12',2),(432177,'Y31G','14C','NA','Kolin',23500,'2024-10-01',3),(432323,'Y31G','14','Automotive','Henry',13400,'2024-12-03',1),(433361,'Y31G','16','NA','Ahava',16900,'2024-10-22',5),(437438,'Y31H','21','NA','Clay',170000,'2024-12-17',6),(438683,'Y31G','14C','NA','Kolin',68300,'2024-10-01',3),(440153,'Y31J','14C','NA','Elly',122600,'2024-12-31',2),(441953,'Y31H','21','NA','Clay',14300,'2024-09-24',6),(443440,'Y31G','14C','NA','Kolin',900,'2024-12-31',3),(447492,'Y31G','14','Automotive','Henry',38500,'2024-10-29',1),(447685,'Y31G','14C','NA','Kolin',43100,'2024-10-29',3),(448226,'Y31H','24','NA','Nina',35800,'2024-09-24',4),(448397,'Y31G','14C','NA','Kolin',900,'2024-12-03',3),(450508,'Y31G','16','NA','Ahava',2300,'2024-07-23',5),(454033,'Y31G','14C','NA','Kolin',18800,'2024-12-03',3),(458397,'Y31G','16','NA','Ahava',19500,'2024-11-26',5),(459321,'Y31G','14C','NA','Kolin',89200,'2024-10-01',3),(460138,'Y31H','21','NA','Clay',147700,'2024-10-08',6),(465379,'Y31J','14C','NA','Elly',101600,'2024-11-12',2),(466490,'Y31G','14C','NA','Kolin',43100,'2024-07-30',3),(474033,'Y31G','14C','NA','Kolin',24800,'2024-10-01',3),(474651,'Y31G','14','Automotive','Henry',38500,'2024-09-03',1),(475962,'Y31H','21','NA','Clay',182000,'2024-09-10',6),(477301,'Y31G','14C','NA','Kolin',39700,'2024-09-03',3),(482196,'Y31G','14C','NA','Kolin',77500,'2024-09-03',3),(483324,'Y31H','21','NA','Clay',80900,'2024-12-24',6),(483405,'Y31J','14C','NA','Elly',101200,'2024-09-03',2),(485819,'Y31G','14','Automotive','Henry',42900,'2024-12-03',1),(493045,'Y31G','14','Automotive','Henry',31000,'2024-09-17',1),(495131,'Y31G','14C','NA','Kolin',43200,'2024-07-30',3),(495346,'Y31J','14C','NA','Elly',46100,'2024-09-03',2),(498112,'Y31G','14','Automotive','Henry',35100,'2024-09-24',1),(499819,'Y31H','21','NA','Clay',18500,'2024-10-08',6),(501096,'Y31G','14C','NA','Kolin',73700,'2024-12-03',3),(501261,'Y31G','14','Automotive','Henry',12200,'2024-08-06',1),(501541,'Y31G','14','Automotive','Henry',35100,'2024-08-27',1),(502448,'Y31J','14C','NA','Elly',98500,'2024-12-31',2),(503828,'Y31G','14C','NA','Kolin',39800,'2024-12-03',3),(506487,'Y31G','16','NA','Ahava',59900,'2024-07-23',5),(506894,'Y31J','14C','NA','Elly',13600,'2024-09-10',2),(509635,'Y31G','14C','NA','Kolin',13800,'2024-12-31',3),(511720,'Y31H','21','NA','Clay',147700,'2024-11-12',6),(512388,'Y31H','21','NA','Clay',199500,'2024-10-08',6),(514414,'Y31G','14C','NA','Kolin',64300,'2024-07-30',3),(517968,'Y31G','14','Automotive','Henry',31000,'2024-10-15',1),(522155,'Y31J','14C','NA','Elly',101200,'2024-10-01',2),(522756,'Y31G','14','Automotive','Henry',35100,'2024-11-19',1),(524913,'Y31G','14','Automotive','Henry',42900,'2024-10-08',1),(527215,'Y31G','16','NA','Ahava',20000,'2024-10-08',5),(531194,'Y31G','14','Automotive','Henry',25200,'2024-09-10',1),(532139,'Y31G','14C','NA','Kolin',78500,'2024-10-29',3),(533241,'Y31H','21','NA','Clay',51100,'2024-12-31',6),(533519,'Y31J','14C','NA','Elly',98500,'2024-10-22',2),(534203,'Y31J','14C','NA','Elly',144300,'2024-12-03',2),(537763,'Y31G','14C','NA','Kolin',31300,'2024-07-30',3),(540382,'Y31G','16','NA','Ahava',1700,'2024-10-22',5),(546925,'Y31J','14C','NA','Elly',123500,'2024-09-03',2),(548597,'Y31J','14C','NA','Elly',125100,'2024-12-31',2),(549424,'Y31G','14C','NA','Kolin',5300,'2024-10-29',3),(550504,'Y31G','16','NA','Ahava',68200,'2024-07-23',5),(553687,'Y31H','21','NA','Clay',16300,'2024-12-10',6),(554297,'Y31H','21','NA','Clay',199500,'2024-12-03',6),(554590,'Y31G','14','Automotive','Henry',12200,'2024-10-01',1),(555173,'Y31J','14C','NA','Elly',59700,'2024-12-03',2),(555922,'Y31G','14','Automotive','Henry',42500,'2024-08-27',1),(563141,'Y31J','14C','NA','Elly',59300,'2024-11-12',2),(563466,'Y31G','14C','NA','Kolin',86000,'2024-09-03',3),(564567,'Y31H','21','NA','Clay',131900,'2024-08-06',6),(564610,'Y31G','14','Automotive','Henry',31000,'2024-11-12',1),(566726,'Y31J','14C','NA','Elly',144300,'2024-10-01',2),(569156,'Y31G','14C','NA','Kolin',22300,'2024-07-30',3),(569240,'Y31G','14C','NA','Kolin',43100,'2024-12-31',3),(569755,'Y31G','16','NA','Ahava',16900,'2024-11-26',5),(572175,'Y31G','14','Automotive','Henry',12200,'2024-10-29',1),(572728,'Y31G','14C','NA','Kolin',68300,'2024-12-03',3),(575898,'Y31G','14','Automotive','Henry',35100,'2024-12-24',1),(579768,'Y31G','16','NA','Ahava',20000,'2024-12-10',5),(583847,'Y31H','21','NA','Clay',14300,'2024-12-31',6),(584572,'Y31G','14','Automotive','Henry',35300,'2024-11-12',1),(585190,'Y31G','14','Automotive','Henry',12200,'2024-09-24',1),(585964,'Y31G','16','NA','Ahava',16900,'2024-07-23',5),(586754,'Y31G','14C','NA','Kolin',89200,'2024-07-30',3),(587258,'Y31G','14C','NA','Kolin',68300,'2024-07-30',3),(589249,'Y31G','14C','NA','Kolin',79400,'2024-12-03',3),(589986,'Y31G','14C','NA','Kolin',79400,'2024-10-29',3),(590414,'Y31G','14','Automotive','Henry',29500,'2024-10-29',1),(591309,'Y31H','21','NA','Clay',78200,'2024-08-06',6),(594770,'Y31J','14C','NA','Elly',123500,'2024-10-29',2),(594925,'Y31J','14C','NA','Elly',144300,'2024-10-29',2),(595318,'Y31G','16','NA','Ahava',59900,'2024-10-22',5),(598963,'Y31G','14C','NA','Kolin',18900,'2024-09-03',3),(601369,'Y31H','21','NA','Clay',16300,'2024-08-20',6),(603054,'Y31H','21','NA','Clay',80900,'2024-08-27',6),(603987,'Y31G','14C','NA','Kolin',78500,'2024-12-03',3),(604651,'Y31J','14C','NA','Elly',128700,'2024-09-03',2),(605748,'Y31H','21','NA','Clay',182000,'2024-12-10',6),(605935,'Y31G','14','Automotive','Henry',42900,'2024-11-05',1),(607414,'Y31J','14C','NA','Elly',143100,'2024-10-01',2),(608571,'Y31J','14C','NA','Elly',128700,'2024-12-03',2),(610034,'Y31G','14','Automotive','Henry',33400,'2024-08-27',1),(611511,'Y31J','14C','NA','Elly',128500,'2024-10-29',2),(615158,'Y31H','21','NA','Clay',190100,'2024-10-15',6),(618326,'Y31G','14C','NA','Kolin',73700,'2024-10-01',3),(619691,'Y31G','16','NA','Ahava',59900,'2024-12-24',5),(620002,'Y31G','14','Automotive','Henry',31000,'2024-12-10',1),(620307,'Y31G','14','Automotive','Henry',38500,'2024-11-26',1),(620965,'Y31G','16','NA','Ahava',15200,'2024-07-23',5),(623459,'Y31J','14C','NA','Elly',59300,'2024-10-22',2),(625021,'Y31H','24','NA','Nina',93000,'2024-10-22',4),(627944,'Y31G','16','NA','Ahava',59900,'2024-08-20',5),(628854,'Y31J','14C','NA','Elly',143100,'2024-09-03',2),(630616,'Y31G','14C','NA','Kolin',13400,'2024-09-03',3),(631474,'Y31G','14','Automotive','Henry',29500,'2024-09-03',1),(631639,'Y31G','14C','NA','Kolin',43100,'2024-10-01',3),(634428,'Y31G','14','Automotive','Henry',29500,'2024-08-06',1),(635701,'Y31H','24','NA','Nina',10100,'2024-10-22',4),(636191,'Y31J','14C','NA','Elly',125100,'2024-10-01',2),(639830,'Y31G','14C','NA','Kolin',39800,'2024-10-29',3),(640785,'Y31G','14C','NA','Kolin',77500,'2024-07-30',3),(641075,'Y31G','14','Automotive','Henry',46300,'2024-08-06',1),(642190,'Y31H','21','NA','Clay',190100,'2024-09-17',6),(642906,'Y31G','14C','NA','Kolin',13800,'2024-10-29',3),(644209,'Y31G','14','Automotive','Henry',12200,'2024-12-17',1),(645937,'Y31H','21','NA','Clay',164900,'2024-11-26',6),(647559,'Y31H','21','NA','Clay',190100,'2024-08-27',6),(648726,'Y31J','14C','NA','Elly',101200,'2024-12-31',2),(650709,'Y31H','24','NA','Nina',31200,'2024-12-24',4),(651629,'Y31G','14','Automotive','Henry',43500,'2024-08-20',1),(652393,'Y31H','21','NA','Clay',185900,'2024-09-24',6),(652768,'Y31G','14C','NA','Kolin',70500,'2024-10-01',3),(654138,'Y31G','14C','NA','Kolin',22300,'2024-12-31',3),(654777,'Y31G','14C','NA','Kolin',70500,'2024-10-29',3),(654844,'Y31H','21','NA','Clay',164900,'2024-12-31',6),(655393,'Y31G','14C','NA','Kolin',64300,'2024-09-03',3),(655648,'Y31G','14','Automotive','Henry',19800,'2024-10-22',1),(657672,'Y31G','14','Automotive','Henry',19800,'2024-12-17',1),(657835,'Y31J','14C','NA','Elly',79400,'2024-10-01',2),(660520,'Y31H','24','NA','Nina',47500,'2024-09-24',4),(661012,'Y31G','14','Automotive','Henry',19800,'2024-11-19',1),(665202,'Y31G','16','NA','Ahava',20000,'2024-10-08',5),(665232,'Y31G','14','Automotive','Henry',6100,'2024-12-31',1),(670998,'Y31G','14C','NA','Kolin',83200,'2024-10-29',3),(671167,'Y31G','14C','NA','Kolin',23500,'2024-07-30',3),(671592,'Y31G','14','Automotive','Henry',35300,'2024-08-20',1),(674511,'Y31H','21','NA','Clay',190100,'2024-12-31',6),(674668,'Y31G','14C','NA','Kolin',77500,'2024-12-03',3),(675180,'Y31G','14','Automotive','Henry',500,'2024-12-03',1),(676692,'Y31J','14C','NA','Elly',46100,'2024-12-31',2),(677236,'Y31J','14C','NA','Elly',128500,'2024-12-03',2),(679024,'Y31G','14C','NA','Kolin',23500,'2024-12-03',3),(681647,'Y31H','21','NA','Clay',170000,'2024-10-08',6),(682965,'Y31G','14','Automotive','Henry',6100,'2024-09-17',1),(684945,'Y31G','14C','NA','Kolin',39800,'2024-10-01',3),(685878,'Y31G','14','Automotive','Henry',13400,'2024-08-13',1),(685934,'Y31G','14C','NA','Kolin',18900,'2024-10-29',3),(686607,'Y31G','14C','NA','Kolin',70500,'2024-12-03',3),(690130,'Y31J','14C','NA','Elly',59300,'2024-09-10',2),(690904,'Y31H','24','NA','Nina',93000,'2024-09-24',4),(691337,'Y31G','14C','NA','Kolin',43200,'2024-09-03',3),(693579,'Y31J','14C','NA','Elly',79900,'2024-10-01',2),(697642,'Y31G','16','NA','Ahava',68200,'2024-09-24',5),(703309,'Y31J','14C','NA','Elly',79900,'2024-09-03',2),(705105,'Y31H','21','NA','Clay',131900,'2024-09-03',6),(705370,'Y31G','14C','NA','Kolin',43200,'2024-10-01',3),(707190,'Y31H','24','NA','Nina',35800,'2024-11-26',4),(707925,'Y31H','21','NA','Clay',182000,'2024-11-12',6),(708098,'Y31G','14C','NA','Kolin',86000,'2024-10-29',3),(709730,'Y31G','14','Automotive','Henry',28900,'2024-10-15',1),(710876,'Y31G','14C','NA','Kolin',18800,'2024-12-31',3),(711572,'Y31G','14C','NA','Kolin',78500,'2024-09-03',3),(711902,'Y31J','14C','NA','Elly',131700,'2024-10-01',2),(712608,'Y31H','21','NA','Clay',147700,'2024-08-20',6),(714963,'Y31G','14','Automotive','Henry',13400,'2024-12-03',1),(720100,'Y31G','14','Automotive','Henry',12200,'2024-12-24',1),(720328,'Y31G','14C','NA','Kolin',70500,'2024-09-03',3),(725656,'Y31G','16','NA','Ahava',2300,'2024-09-24',5),(729640,'Y31H','21','NA','Clay',182000,'2024-10-08',6),(731506,'Y31G','14','Automotive','Henry',25200,'2024-12-03',1),(732533,'Y31H','21','NA','Clay',141900,'2024-10-01',6),(734116,'Y31G','14','Automotive','Henry',35100,'2024-12-17',1),(734922,'Y31G','14','Automotive','Henry',13400,'2024-11-05',1),(738141,'Y31G','16','NA','Ahava',19500,'2024-07-23',5),(738352,'Y31G','14','Automotive','Henry',500,'2024-09-10',1),(739443,'Y31G','16','NA','Ahava',20000,'2024-11-05',5),(741887,'Y31J','14C','NA','Elly',98500,'2024-12-03',2),(742766,'Y31H','24','NA','Nina',47500,'2024-11-26',4),(743597,'Y31J','14C','NA','Elly',79900,'2024-10-29',2),(746495,'Y31G','14','Automotive','Henry',6100,'2024-11-12',1),(746952,'Y31J','14C','NA','Elly',143100,'2024-12-03',2),(749123,'Y31G','14','Automotive','Henry',15000,'2024-09-03',1),(750281,'Y31H','21','NA','Clay',51100,'2024-08-27',6),(752228,'Y31G','16','NA','Ahava',53800,'2024-09-24',5),(753806,'Y31J','14C','NA','Elly',79400,'2024-10-29',2),(756223,'Y31G','14','Automotive','Henry',6100,'2024-08-20',1),(757030,'Y31H','24','NA','Nina',47500,'2024-10-22',4),(758716,'Y31J','14C','NA','Elly',79400,'2024-12-31',2),(759085,'Y31H','21','NA','Clay',147700,'2024-12-10',6),(760746,'Y31G','14C','NA','Kolin',77500,'2024-10-29',3),(762294,'Y31J','14C','NA','Elly',128500,'2024-10-01',2),(762731,'Y31G','14C','NA','Kolin',13400,'2024-07-30',3),(764052,'Y31H','21','NA','Clay',185900,'2024-10-22',6),(765190,'Y31J','14C','NA','Elly',46100,'2024-10-29',2),(767244,'Y31G','14','Automotive','Henry',15000,'2024-08-06',1),(771229,'Y31G','14C','NA','Kolin',77500,'2024-12-31',3),(776067,'Y31H','21','NA','Clay',147700,'2024-09-17',6),(777065,'Y31G','14','Automotive','Henry',13400,'2024-09-10',1),(777866,'Y31G','14','Automotive','Henry',13400,'2024-11-05',1),(780241,'Y31H','21','NA','Clay',170000,'2024-08-20',6),(781499,'Y31J','14C','NA','Elly',59700,'2024-12-31',2),(788368,'Y31G','14','Automotive','Henry',33400,'2024-12-31',1),(788471,'Y31G','14','Automotive','Henry',29500,'2024-11-26',1),(789018,'Y31G','14C','NA','Kolin',31300,'2024-10-29',3),(789519,'Y31G','14C','NA','Kolin',73700,'2024-09-03',3),(790618,'Y31G','14C','NA','Kolin',23500,'2024-12-31',3),(791662,'Y31J','14C','NA','Elly',128700,'2024-10-01',2),(793485,'Y31G','14','Automotive','Henry',46300,'2024-10-01',1),(794530,'Y31H','21','NA','Clay',141900,'2024-11-05',6),(794598,'Y31J','14C','NA','Elly',122600,'2024-10-22',2),(795406,'Y31G','14C','NA','Kolin',900,'2024-07-30',3),(796999,'Y31G','14','Automotive','Henry',42500,'2024-12-31',1),(797912,'Y31G','14C','NA','Kolin',83200,'2024-12-31',3),(805488,'Y31J','14C','NA','Elly',13600,'2024-08-06',2),(807309,'Y31J','14C','NA','Elly',120000,'2024-08-06',2),(810661,'Y31J','14C','NA','Elly',101200,'2024-12-03',2),(811169,'Y31H','24','NA','Nina',93000,'2024-12-24',4),(811763,'Y31G','14','Automotive','Henry',43500,'2024-09-17',1),(811914,'Y31G','14C','NA','Kolin',78500,'2024-07-30',3),(812017,'Y31J','14C','NA','Elly',101600,'2024-12-10',2),(824682,'Y31H','21','NA','Clay',141900,'2024-12-03',6),(828018,'Y31J','14C','NA','Elly',122600,'2024-08-06',2),(832003,'Y31H','21','NA','Clay',185900,'2024-11-26',6),(837723,'Y31J','14C','NA','Elly',122600,'2024-11-12',2),(840331,'Y31G','14C','NA','Kolin',73700,'2024-10-29',3),(843789,'Y31H','21','NA','Clay',190100,'2024-11-19',6),(846830,'Y31J','14C','NA','Elly',131700,'2024-10-29',2),(847115,'Y31H','21','NA','Clay',78200,'2024-10-01',6),(856692,'Y31G','14C','NA','Kolin',22900,'2024-07-30',3),(858021,'Y31G','14','Automotive','Henry',19800,'2024-08-27',1),(858249,'Y31H','21','NA','Clay',78200,'2024-09-03',6),(858506,'Y31G','16','NA','Ahava',56000,'2024-07-23',5),(861534,'Y31G','14C','NA','Kolin',23500,'2024-10-29',3),(861825,'Y31G','16','NA','Ahava',1700,'2024-09-24',5),(861858,'Y31G','14C','NA','Kolin',22900,'2024-09-03',3),(866134,'Y31G','14','Automotive','Henry',15000,'2024-10-01',1),(868150,'Y31G','14C','NA','Kolin',86000,'2024-07-30',3),(869485,'Y31G','14C','NA','Kolin',13800,'2024-12-03',3),(869740,'Y31G','14C','NA','Kolin',18800,'2024-07-30',3),(873558,'Y31G','14C','NA','Kolin',900,'2024-10-01',3),(874917,'Y31H','21','NA','Clay',18500,'2024-11-12',6),(875488,'Y31G','14C','NA','Kolin',89200,'2024-12-31',3),(877390,'Y31G','16','NA','Ahava',16900,'2024-12-24',5),(879991,'Y31G','14C','NA','Kolin',22900,'2024-12-03',3),(880194,'Y31H','24','NA','Nina',47500,'2024-12-24',4),(883302,'Y31G','14C','NA','Kolin',64300,'2024-10-01',3),(886689,'Y31G','14C','NA','Kolin',22300,'2024-09-03',3),(886891,'Y31G','14C','NA','Kolin',23500,'2024-09-03',3),(891282,'Y31H','21','NA','Clay',182000,'2024-08-13',6),(892166,'Y31H','21','NA','Clay',18500,'2024-09-03',6),(894372,'Y31H','21','NA','Clay',170000,'2024-09-17',6),(896676,'Y31G','14C','NA','Kolin',89200,'2024-09-03',3),(897283,'Y31H','21','NA','Clay',18500,'2024-08-13',6),(898098,'Y31G','14C','NA','Kolin',900,'2024-09-03',3),(904015,'Y31J','14C','NA','Elly',123500,'2024-10-01',2),(905004,'Y31J','14C','NA','Elly',123500,'2024-12-03',2),(909532,'Y31J','14C','NA','Elly',120000,'2024-10-22',2),(910230,'Y31G','14','Automotive','Henry',500,'2024-11-05',1),(910649,'Y31G','14','Automotive','Henry',35300,'2024-12-10',1),(910767,'Y31G','16','NA','Ahava',53800,'2024-11-26',5),(912262,'Y31G','14','Automotive','Henry',15000,'2024-10-29',1),(913630,'Y31G','14','Automotive','Henry',6100,'2024-12-10',1),(917117,'Y31H','24','NA','Nina',35800,'2024-12-24',4),(917847,'Y31J','14C','NA','Elly',13600,'2024-10-22',2),(919080,'Y31H','24','NA','Nina',31200,'2024-08-20',4),(919580,'Y31G','16','NA','Ahava',20000,'2024-09-10',5),(920166,'Y31G','14','Automotive','Henry',13400,'2024-10-08',1),(920870,'Y31G','16','NA','Ahava',68200,'2024-10-22',5),(923826,'Y31G','14','Automotive','Henry',19800,'2024-09-24',1),(923884,'Y31G','14','Automotive','Henry',35300,'2024-09-17',1),(923918,'Y31G','14C','NA','Kolin',83200,'2024-10-01',3),(924250,'Y31G','14C','NA','Kolin',13400,'2024-10-29',3),(924838,'Y31G','14C','NA','Kolin',24800,'2024-12-31',3),(927846,'Y31G','14','Automotive','Henry',42500,'2024-11-19',1),(928122,'Y31J','14C','NA','Elly',98500,'2024-09-03',2),(929871,'Y31G','14','Automotive','Henry',33400,'2024-12-17',1),(931764,'Y31J','14C','NA','Elly',79400,'2024-09-03',2),(936651,'Y31G','14C','NA','Kolin',64300,'2024-12-03',3),(937745,'Y31G','14C','NA','Kolin',73700,'2024-07-30',3),(939081,'Y31G','16','NA','Ahava',15200,'2024-09-24',5),(939753,'Y31J','14C','NA','Elly',101600,'2024-10-22',2),(942558,'Y31G','14C','NA','Kolin',39800,'2024-12-31',3),(943456,'Y31G','14C','NA','Kolin',43200,'2024-12-03',3),(943741,'Y31G','14C','NA','Kolin',83200,'2024-09-03',3),(944513,'Y31H','21','NA','Clay',141900,'2024-09-03',6),(945848,'Y31G','16','NA','Ahava',19500,'2024-12-24',5),(947174,'Y31H','24','NA','Nina',93000,'2024-11-26',4),(952731,'Y31G','14','Automotive','Henry',43500,'2024-12-10',1),(953615,'Y31G','14','Automotive','Henry',42900,'2024-09-10',1),(953784,'Y31G','14','Automotive','Henry',13400,'2024-10-08',1),(954059,'Y31G','16','NA','Ahava',1700,'2024-08-20',5),(954978,'Y31J','14C','NA','Elly',128700,'2024-10-22',2),(957365,'Y31J','14C','NA','Elly',131700,'2024-12-31',2),(961663,'Y31G','14C','NA','Kolin',22900,'2024-12-31',3),(965001,'Y31G','14','Automotive','Henry',13400,'2024-09-10',1),(965387,'Y31H','21','NA','Clay',141900,'2024-08-06',6),(966473,'Y31J','14C','NA','Elly',120000,'2024-12-31',2),(967706,'Y31G','14C','NA','Kolin',43100,'2024-09-03',3),(969831,'Y31G','14','Automotive','Henry',33400,'2024-10-22',1),(970592,'Y31G','14','Automotive','Henry',42500,'2024-12-17',1),(973250,'Y31G','14','Automotive','Henry',46300,'2024-10-29',1),(974780,'Y31G','14C','NA','Kolin',73700,'2024-12-31',3),(975609,'Y31H','21','NA','Clay',14300,'2024-11-26',6),(975661,'Y31J','14C','NA','Elly',120000,'2024-11-12',2),(977064,'Y31J','14C','NA','Elly',59700,'2024-10-22',2),(977547,'Y31J','14C','NA','Elly',131700,'2024-09-03',2),(978823,'Y31J','14C','NA','Elly',35800,'2024-12-31',2),(979830,'Y31G','14C','NA','Kolin',30500,'2024-12-31',3),(979833,'Y31G','14C','NA','Kolin',39700,'2024-07-30',3),(983606,'Y31G','16','NA','Ahava',2300,'2024-08-20',5),(985572,'Y31G','14C','NA','Kolin',68300,'2024-12-31',3),(986379,'Y31H','21','NA','Clay',80900,'2024-09-17',6),(987557,'Y31G','14C','NA','Kolin',13800,'2024-07-30',3),(987970,'Y31G','14','Automotive','Henry',29500,'2024-10-01',1),(988519,'Y31J','14C','NA','Elly',148800,'2024-12-03',2),(989028,'Y31G','14','Automotive','Henry',43500,'2024-10-15',1),(992625,'Y31G','14','Automotive','Henry',35300,'2024-12-31',1),(992834,'Y31G','14C','NA','Kolin',5300,'2024-10-01',3),(995032,'Y31G','16','NA','Ahava',53800,'2024-07-23',5),(996028,'Y31G','14C','NA','Kolin',18900,'2024-07-30',3),(999461,'Y31G','16','NA','Ahava',56000,'2024-11-26',5);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-15 11:03:18
