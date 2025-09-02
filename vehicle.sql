-- MySQL dump 10.13  Distrib 8.4.6, for Linux (x86_64)
--
-- Host: localhost    Database: mydatabase
-- ------------------------------------------------------
-- Server version	8.4.6

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
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add vehicle_ catagory',7,'add_vehicle_catagory'),(26,'Can change vehicle_ catagory',7,'change_vehicle_catagory'),(27,'Can delete vehicle_ catagory',7,'delete_vehicle_catagory'),(28,'Can view vehicle_ catagory',7,'view_vehicle_catagory'),(29,'Can add vehicle_type',8,'add_vehicle_type'),(30,'Can change vehicle_type',8,'change_vehicle_type'),(31,'Can delete vehicle_type',8,'delete_vehicle_type'),(32,'Can view vehicle_type',8,'view_vehicle_type'),(33,'Can add vehicle_ details',9,'add_vehicle_details'),(34,'Can change vehicle_ details',9,'change_vehicle_details'),(35,'Can delete vehicle_ details',9,'delete_vehicle_details'),(36,'Can view vehicle_ details',9,'view_vehicle_details');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1000000$VZyNwSp1D52J00CtFtePt3$dnB8VSgtG1izx57XKItO9W/dHL0IR9NXL8LvjXEoMYs=','2025-09-01 00:28:23.124464',1,'root','','','asd@asd.com',1,1,'2025-09-01 00:28:15.640645');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_vehicle_catagory`
--

DROP TABLE IF EXISTS `car_vehicle_catagory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_vehicle_catagory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Catagory_name` varchar(50) NOT NULL,
  `created` date NOT NULL,
  `updated` date NOT NULL,
  `Image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_vehicle_catagory`
--

LOCK TABLES `car_vehicle_catagory` WRITE;
/*!40000 ALTER TABLE `car_vehicle_catagory` DISABLE KEYS */;
INSERT INTO `car_vehicle_catagory` VALUES (1,'Motorcycle','2025-09-01','2025-09-01','carImages/motorcycle.jpeg'),(2,'ATV','2025-09-01','2025-09-01','carImages/atv.jpeg'),(3,'Truck','2025-09-01','2025-09-01','carImages/truck.jpeg'),(4,'Car','2025-09-01','2025-09-01','carImages/car.jpeg');
/*!40000 ALTER TABLE `car_vehicle_catagory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_vehicle_details`
--

DROP TABLE IF EXISTS `car_vehicle_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_vehicle_details` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `original_price` int NOT NULL,
  `selling_price` int NOT NULL,
  `description` longtext NOT NULL,
  `Image` varchar(100) NOT NULL,
  `created` date NOT NULL,
  `updated` date NOT NULL,
  `vehicle_type_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `car_vehicle_details_vehicle_type_id_4265ef9b_fk_car_vehic` (`vehicle_type_id`),
  CONSTRAINT `car_vehicle_details_vehicle_type_id_4265ef9b_fk_car_vehic` FOREIGN KEY (`vehicle_type_id`) REFERENCES `car_vehicle_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_vehicle_details`
--

LOCK TABLES `car_vehicle_details` WRITE;
/*!40000 ALTER TABLE `car_vehicle_details` DISABLE KEYS */;
INSERT INTO `car_vehicle_details` VALUES (1,'Brake Disk ( Front )',25,20,'Yamaha x-max 250 2012-2015 Front Brake Disk','carImages/xmax_front_brake.jpg','2025-09-01','2025-09-01',1),(2,'Absorber',60,50,'Shock rear Yamaha XMAX 250 absorber 34,3cm YSS set','carImages/yamaha_suspension.jpeg','2025-09-01','2025-09-01',1);
/*!40000 ALTER TABLE `car_vehicle_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_vehicle_type`
--

DROP TABLE IF EXISTS `car_vehicle_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_vehicle_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_name` varchar(80) NOT NULL,
  `created` date NOT NULL,
  `updated` date NOT NULL,
  `catagory_id` bigint NOT NULL,
  `Image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `car_vehicle_type_catagory_id_3fc4cab2_fk_car_vehicle_catagory_id` (`catagory_id`),
  CONSTRAINT `car_vehicle_type_catagory_id_3fc4cab2_fk_car_vehicle_catagory_id` FOREIGN KEY (`catagory_id`) REFERENCES `car_vehicle_catagory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_vehicle_type`
--

LOCK TABLES `car_vehicle_type` WRITE;
/*!40000 ALTER TABLE `car_vehicle_type` DISABLE KEYS */;
INSERT INTO `car_vehicle_type` VALUES (1,'Yamaha','2025-09-01','2025-09-01',1,'carImages/2025-motorcycles.jpg'),(2,'Honda','2025-09-01','2025-09-01',1,'carImages/honda-2.jpg'),(3,'BMW','2025-09-01','2025-09-01',1,'carImages/bmw-r-1200-gs-17-18-r-1250-gs-19_54172_2.jpg'),(4,'Mondial','2025-09-01','2025-09-01',2,'carImages/mondial-venture-200-atv.jpg'),(5,'CFMOTO','2025-09-01','2025-09-01',2,'carImages/cf-moto-cforce-1000-c5208b.jpg'),(6,'Arora','2025-09-01','2025-09-01',2,'carImages/arora-hector-450-t3-onnroad-atv.jpg'),(7,'Ford','2025-09-01','2025-09-01',3,'carImages/fordtractor-4.png'),(8,'Mercedes','2025-09-01','2025-09-01',4,'carImages/mercedes.jpeg');
/*!40000 ALTER TABLE `car_vehicle_type` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-09-01 12:34:19.904347','1','Motorcycle',1,'[{\"added\": {}}]',7,1),(2,'2025-09-01 12:34:54.555770','2','ATV',1,'[{\"added\": {}}]',7,1),(3,'2025-09-01 12:36:00.909591','3','Truck',1,'[{\"added\": {}}]',7,1),(4,'2025-09-01 12:36:33.591998','4','Car',1,'[{\"added\": {}}]',7,1),(5,'2025-09-01 12:37:25.825669','1','Yamaha',1,'[{\"added\": {}}]',8,1),(6,'2025-09-01 12:38:10.015212','2','Honda',1,'[{\"added\": {}}]',8,1),(7,'2025-09-01 12:39:01.881733','3','BMW',1,'[{\"added\": {}}]',8,1),(8,'2025-09-01 12:40:50.058931','4','Mondial',1,'[{\"added\": {}}]',8,1),(9,'2025-09-01 12:41:35.132534','5','CFMOTO',1,'[{\"added\": {}}]',8,1),(10,'2025-09-01 12:42:42.331562','6','Arora',1,'[{\"added\": {}}]',8,1),(11,'2025-09-01 12:43:39.948838','7','Ford',1,'[{\"added\": {}}]',8,1),(12,'2025-09-01 12:44:21.535896','8','Mercedes',1,'[{\"added\": {}}]',8,1),(13,'2025-09-01 22:21:08.419426','1','Brake Disk ( Front )',1,'[{\"added\": {}}]',9,1),(14,'2025-09-01 22:25:09.230118','2','Absorber',1,'[{\"added\": {}}]',9,1),(15,'2025-09-01 22:25:37.910681','2','Absorber',2,'[{\"changed\": {\"fields\": [\"Original price\", \"Selling price\"]}}]',9,1),(16,'2025-09-01 22:25:43.658094','1','Brake Disk ( Front )',2,'[{\"changed\": {\"fields\": [\"Original price\", \"Selling price\"]}}]',9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'car','vehicle_catagory'),(9,'car','vehicle_details'),(8,'car','vehicle_type'),(5,'contenttypes','contenttype'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-09-01 00:14:32.264674'),(2,'auth','0001_initial','2025-09-01 00:14:32.968700'),(3,'admin','0001_initial','2025-09-01 00:14:33.152238'),(4,'admin','0002_logentry_remove_auto_add','2025-09-01 00:14:33.173422'),(5,'admin','0003_logentry_add_action_flag_choices','2025-09-01 00:14:33.193270'),(6,'contenttypes','0002_remove_content_type_name','2025-09-01 00:14:33.349359'),(7,'auth','0002_alter_permission_name_max_length','2025-09-01 00:14:33.462275'),(8,'auth','0003_alter_user_email_max_length','2025-09-01 00:14:33.559698'),(9,'auth','0004_alter_user_username_opts','2025-09-01 00:14:33.582889'),(10,'auth','0005_alter_user_last_login_null','2025-09-01 00:14:33.677718'),(11,'auth','0006_require_contenttypes_0002','2025-09-01 00:14:33.681159'),(12,'auth','0007_alter_validators_add_error_messages','2025-09-01 00:14:33.700699'),(13,'auth','0008_alter_user_username_max_length','2025-09-01 00:14:33.802087'),(14,'auth','0009_alter_user_last_name_max_length','2025-09-01 00:14:33.918772'),(15,'auth','0010_alter_group_name_max_length','2025-09-01 00:14:33.969302'),(16,'auth','0011_update_proxy_permissions','2025-09-01 00:14:33.990932'),(17,'auth','0012_alter_user_first_name_max_length','2025-09-01 00:14:34.098354'),(18,'car','0001_initial','2025-09-01 00:14:34.293321'),(19,'car','0002_vehicle_catagory_image','2025-09-01 00:14:34.370940'),(20,'car','0003_vehicle_type_image','2025-09-01 00:14:34.451123'),(21,'sessions','0001_initial','2025-09-01 00:14:34.502107');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('txixpxyf6qi5rnvxjn657zedwl7jlzf4','.eJxVjDsOwjAQBe_iGln-rL02JT1nsNY_HECOFCcV4u4QKQW0b2beiwXa1ha2UZYwZXZmkp1-t0jpUfoO8p36beZp7usyRb4r_KCDX-dcnpfD_TtoNNq3thJKBS9MNEKBScoLtEVhNYhC2lItVNBoEEQ2WSulkbR21lVwPmVi7w-lyDZn:1ussPH:wKWIxN-ecYTgnF31tooeZvZ8V_yLgy4ESSHZYbypwF4','2025-09-15 00:28:23.127869');
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

-- Dump completed on 2025-09-01 22:39:06
