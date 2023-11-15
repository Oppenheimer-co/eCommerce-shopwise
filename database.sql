-- MySQL dump 10.13  Distrib 8.0.32, for macos13.0 (arm64)
--
-- Host: localhost    Database: shopwise
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'izbceFG7jraZYT70NhfwvNLv6Mnsj04i',1,'2023-05-02 21:00:42','2023-05-02 21:00:42','2023-05-02 21:00:42'),(2,2,'WC5SEyh5N5zTBl8b76flzafb750EWL8O',1,'2023-05-02 21:00:42','2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES (1,'Homepage middle 1','2028-05-03 00:00:00','not_set','IZ6WU8KUALYD','promotion/1.jpg','/product-categories/headphone',0,1,'published','2023-05-02 21:00:43','2023-05-02 21:00:43',1),(2,'Homepage middle 2','2028-05-03 00:00:00','not_set','ILSFJVYFGCPZ','promotion/2.jpg','/product-categories/camera',0,2,'published','2023-05-02 21:00:43','2023-05-02 21:00:43',1),(3,'Homepage middle 3','2028-05-03 00:00:00','not_set','ZDOZUZZIU7FT','promotion/3.jpg','/product-categories/watches',0,3,'published','2023-05-02 21:00:43','2023-05-02 21:00:43',1);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Ecommerce',0,'Rerum et alias et dolores maxime. Nesciunt nesciunt id voluptatum neque. Delectus minus saepe maxime sunt voluptas qui. Omnis quaerat dolor nemo est quo ipsam non sit.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(2,'Fashion',0,'Quidem neque dolores maiores sit odit. Quia sed cumque ea rerum quia pariatur.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(3,'Electronic',0,'Asperiores quisquam est repudiandae molestias sit minus. Facere nesciunt et est iste ducimus. Est maxime dolor illum reiciendis. Quisquam officiis quis et sed enim aut. Vel sed vero quia consequatur.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(4,'Commercial',0,'Soluta eligendi ut qui et. Reprehenderit mollitia soluta labore. Pariatur voluptatem iste est quam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2023-05-02 21:00:41','2023-05-02 21:00:41');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
INSERT INTO `categories_translations` VALUES ('vi',1,'Thương mại điện tử',NULL),('vi',2,'Thời trang',NULL),('vi',3,'Điện tử',NULL),('vi',4,'Thương mại',NULL);
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint unsigned NOT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'Fashion live',NULL,NULL,'brands/1.png','published',0,1,'2023-05-02 21:00:31','2023-05-02 21:00:31'),(2,'Hand crafted',NULL,NULL,'brands/2.png','published',1,1,'2023-05-02 21:00:31','2023-05-02 21:00:31'),(3,'Mestonix',NULL,NULL,'brands/3.png','published',2,1,'2023-05-02 21:00:31','2023-05-02 21:00:31'),(4,'Sunshine',NULL,NULL,'brands/4.png','published',3,1,'2023-05-02 21:00:31','2023-05-02 21:00:31'),(5,'Pure',NULL,NULL,'brands/5.png','published',4,1,'2023-05-02 21:00:31','2023-05-02 21:00:31'),(6,'Anfold',NULL,NULL,'brands/6.png','published',5,1,'2023-05-02 21:00:31','2023-05-02 21:00:31'),(7,'Automotive',NULL,NULL,'brands/7.png','published',6,1,'2023-05-02 21:00:31','2023-05-02 21:00:31');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
INSERT INTO `ec_brands_translations` VALUES ('vi',1,'Fashion live',NULL),('vi',2,'Hand crafted',NULL),('vi',3,'Mestonix',NULL),('vi',4,'Sunshine',NULL),('vi',5,'Pure',NULL),('vi',6,'Anfold',NULL),('vi',7,'Automotive',NULL);
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2023-05-02 21:00:31','2023-05-02 21:00:31'),(2,'EUR','€',0,2,1,0,0.84,'2023-05-02 21:00:31','2023-05-02 21:00:31'),(3,'VND','₫',0,0,2,0,23203,'2023-05-02 21:00:31','2023-05-02 21:00:31');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'John Smith','john.smith@botble.com','+15514253019','MA','Texas','South Jadaland','221 Moen Expressway Apt. 734',1,1,'2023-05-02 21:00:32','2023-05-02 21:00:32','34066-4140'),(2,'John Smith','john.smith@botble.com','+13648348714','JM','Delaware','Burniceborough','2991 Kulas Hollow Apt. 018',1,0,'2023-05-02 21:00:32','2023-05-02 21:00:32','12338'),(3,'Everett VonRueden','crippin@example.net','+19348937231','GW','California','Runolfssonland','786 Janick Crest',2,1,'2023-05-02 21:00:33','2023-05-02 21:00:33','63411'),(4,'Chauncey Hayes','gebert@example.com','+18655481893','SS','Massachusetts','East Miloville','87011 Pierre Ranch Suite 846',3,1,'2023-05-02 21:00:33','2023-05-02 21:00:33','68195'),(5,'Gerry Yundt','nmuller@example.net','+15856545854','TV','Iowa','South Luther','880 Cartwright Run Suite 550',4,1,'2023-05-02 21:00:33','2023-05-02 21:00:33','80214-5101'),(6,'Ashley Schamberger','verona21@example.com','+14063773865','HU','Washington','New Pablo','581 Una Spur Apt. 610',5,1,'2023-05-02 21:00:33','2023-05-02 21:00:33','77671'),(7,'Dr. Dylan Lehner I','candice.morissette@example.net','+18434647325','PR','Colorado','South Markus','447 Brock Shoal Apt. 600',6,1,'2023-05-02 21:00:33','2023-05-02 21:00:33','50396'),(8,'Xzavier Nicolas','barton24@example.net','+18176539232','PF','Maryland','Nolanborough','459 Sylvester Stream Apt. 630',7,1,'2023-05-02 21:00:33','2023-05-02 21:00:33','68436'),(9,'Blaise Runolfsdottir','nolan.rosalyn@example.net','+19109791592','NL','Virginia','West Jaquanhaven','813 Schmidt Meadow Apt. 708',8,1,'2023-05-02 21:00:33','2023-05-02 21:00:33','17949-9933'),(10,'Miss Hortense Leannon Sr.','langosh.brandon@example.org','+18782592177','SZ','Mississippi','DuBuqueton','569 Harry Knolls',9,1,'2023-05-02 21:00:33','2023-05-02 21:00:33','37215'),(11,'Ceasar Wisoky','aniyah61@example.com','+16416680161','SS','New Hampshire','Gaylordhaven','331 Elnora Isle Suite 459',10,1,'2023-05-02 21:00:33','2023-05-02 21:00:33','94610-7049'),(12,'Mr. Presley Von MD','estamm@example.com','+15416665609','BN','Pennsylvania','Brodyhaven','27368 Nolan Plains',11,1,'2023-05-02 21:00:33','2023-05-02 21:00:33','30165');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'John Smith','john.smith@botble.com','$2y$10$DtYZEBBmAcGy.71NvTRgCO3CL3nZ8uB64ExJSSWnsjuwAraYihf5u','customers/1.jpg','1996-04-10','+12694518170',NULL,'2023-05-02 21:00:32','2023-05-02 21:00:32','2023-05-03 04:00:32',NULL,'activated'),(2,'Everett VonRueden','crippin@example.net','$2y$10$UwIzrgqWH/jrQAvDwp1Hsek7V4V8XkBwL5EzFn9ubxnc/tpdydbe.','customers/1.jpg','1984-04-19','+14353943260',NULL,'2023-05-02 21:00:33','2023-05-02 21:00:33','2023-05-03 04:00:33',NULL,'activated'),(3,'Chauncey Hayes','gebert@example.com','$2y$10$9UoOMQ.BxyxWlXZHkwQaHeRnnJJRdtML2oqmBR7meDsxALe/iSy8m','customers/2.jpg','1973-04-03','+13313211566',NULL,'2023-05-02 21:00:33','2023-05-02 21:00:33','2023-05-03 04:00:33',NULL,'activated'),(4,'Gerry Yundt','nmuller@example.net','$2y$10$x5UKbrcZRRmz3hqvcTXQB.2sYhrCLAnSRs4g4INzIJxFb6fk0VJeO','customers/3.jpg','1998-04-26','+16282977645',NULL,'2023-05-02 21:00:33','2023-05-02 21:00:33','2023-05-03 04:00:33',NULL,'activated'),(5,'Ashley Schamberger','verona21@example.com','$2y$10$F5F6bR58A9HAKelUDnM/qeYrPwQ.TJQc24alAWO.m3eyd.2Lwzd1S','customers/4.jpg','1974-04-08','+13609707526',NULL,'2023-05-02 21:00:33','2023-05-02 21:00:33','2023-05-03 04:00:33',NULL,'activated'),(6,'Dr. Dylan Lehner I','candice.morissette@example.net','$2y$10$bu88GzH7/ndbgsrka6k6GeEugmR4hxdiqWlNR8ROxnlZeQ81DhYyy','customers/5.jpg','2002-04-12','+12143795730',NULL,'2023-05-02 21:00:33','2023-05-02 21:00:33','2023-05-03 04:00:33',NULL,'activated'),(7,'Xzavier Nicolas','barton24@example.net','$2y$10$gYjQ3POjM.de1/T9yTrVCOM1JQjIwL5xhY.Ew3lJ16HwRLH//8cKS','customers/6.jpg','1996-04-19','+18202742480',NULL,'2023-05-02 21:00:33','2023-05-02 21:00:33','2023-05-03 04:00:33',NULL,'activated'),(8,'Blaise Runolfsdottir','nolan.rosalyn@example.net','$2y$10$wnULePsVO5cEhTtsCXFTsOZNNuqtzBHKIhdYo1s0r5RAElPpddUhy','customers/7.jpg','1976-04-23','+19599403576',NULL,'2023-05-02 21:00:33','2023-05-02 21:00:33','2023-05-03 04:00:33',NULL,'activated'),(9,'Miss Hortense Leannon Sr.','langosh.brandon@example.org','$2y$10$/EOVUZahD6TMGjil9dDd3Ov8RayEVwT9oNRnhGCQSdKA7q4Xp6r9i','customers/8.jpg','2000-04-26','+18306335423',NULL,'2023-05-02 21:00:33','2023-05-02 21:00:33','2023-05-03 04:00:33',NULL,'activated'),(10,'Ceasar Wisoky','aniyah61@example.com','$2y$10$HmCvn8BL2oLd4lD1ANiyKOxSkGqq0o1VZZfrY3EcyYy5KITk1iuCO','customers/9.jpg','1977-04-09','+12018453539',NULL,'2023-05-02 21:00:33','2023-05-02 21:00:33','2023-05-03 04:00:33',NULL,'activated'),(11,'Mr. Presley Von MD','estamm@example.com','$2y$10$tvv/7Jc0NK05U6cNQQbrq.4nJ0j97dDKbzih9p9tPmcPX3rkJ5Cza','customers/10.jpg','1985-04-07','+19715935282',NULL,'2023-05-02 21:00:33','2023-05-02 21:00:33','2023-05-03 04:00:33',NULL,'activated');
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,31,38.64,16,4),(2,6,50.15,10,1);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Deal of the Day.','2023-05-22 00:00:00','published','2023-05-02 21:00:39','2023-05-02 21:00:39'),(2,'Gadgets &amp; Accessories','2023-05-28 00:00:00','published','2023-05-02 21:00:39','2023-05-02 21:00:39');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
INSERT INTO `ec_flash_sales_translations` VALUES ('vi',1,'Khuyến mãi trong ngày.'),('vi',2,'Tiện ích & Phụ kiện');
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(1,2,'2 Year',10,9999,0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(1,3,'3 Year',20,9999,0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(2,4,'4GB',0,9999,0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(2,5,'8GB',10,9999,0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(2,6,'16GB',20,9999,0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(3,7,'Core i5',0,9999,0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(3,8,'Core i7',10,9999,0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(3,9,'Core i9',20,9999,0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(4,10,'128GB',0,9999,0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(4,11,'256GB',10,9999,0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(4,12,'512GB',20,9999,0,'2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
INSERT INTO `ec_invoice_items` VALUES (1,1,'Botble\\Ecommerce\\Models\\Product',70,'Cool Smart Watches (Digital)',NULL,'products/17.jpg',1,111.00,111.00,11.10,0.00,122.10,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(2,1,'Botble\\Ecommerce\\Models\\Product',95,'Smart Watches',NULL,'products/26.jpg',3,40.50,121.50,4.05,0.00,125.55,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(3,1,'Botble\\Ecommerce\\Models\\Product',106,'Samsung Smart TV',NULL,'products/31.jpg',2,56.00,112.00,5.60,0.00,117.60,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(4,2,'Botble\\Ecommerce\\Models\\Product',60,'Apple Watch Serial 7',NULL,'products/11-1.jpg',2,112.00,224.00,11.20,0.00,235.20,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(5,2,'Botble\\Ecommerce\\Models\\Product',90,'Dual Camera 20MP (Digital)',NULL,'products/25.jpg',2,80.25,160.50,8.03,0.00,168.53,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(6,3,'Botble\\Ecommerce\\Models\\Product',64,'MacSafe 80W',NULL,'products/14-1.jpg',2,130.00,260.00,13.00,0.00,273.00,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(7,3,'Botble\\Ecommerce\\Models\\Product',83,'Black Glasses',NULL,'products/22.jpg',3,127.00,381.00,12.70,0.00,393.70,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(8,3,'Botble\\Ecommerce\\Models\\Product',92,'Smart Watches',NULL,'products/26.jpg',3,40.50,121.50,4.05,0.00,125.55,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(9,4,'Botble\\Ecommerce\\Models\\Product',50,'Leather Watch Band',NULL,'products/7-1.jpg',3,118.00,354.00,11.80,0.00,365.80,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(10,4,'Botble\\Ecommerce\\Models\\Product',62,'Apple Keyboard (Digital)',NULL,'products/13.jpg',2,113.00,226.00,11.30,0.00,237.30,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(11,4,'Botble\\Ecommerce\\Models\\Product',92,'Smart Watches',NULL,'products/26.jpg',2,40.50,81.00,4.05,0.00,85.05,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(12,5,'Botble\\Ecommerce\\Models\\Product',32,'Smart Home Speaker (Digital)',NULL,'products/1.jpg',1,494.00,494.00,49.40,0.00,543.40,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(13,5,'Botble\\Ecommerce\\Models\\Product',83,'Black Glasses',NULL,'products/22.jpg',3,127.00,381.00,12.70,0.00,393.70,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(14,5,'Botble\\Ecommerce\\Models\\Product',108,'Samsung Smart TV',NULL,'products/31.jpg',2,56.00,112.00,5.60,0.00,117.60,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(15,6,'Botble\\Ecommerce\\Models\\Product',58,'Macbook Air 12 inch',NULL,'products/10-1.jpg',2,492.00,984.00,49.20,0.00,1033.20,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(16,6,'Botble\\Ecommerce\\Models\\Product',91,'Dual Camera 20MP (Digital)',NULL,'products/25-1.jpg',2,80.25,160.50,8.03,0.00,168.53,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(17,7,'Botble\\Ecommerce\\Models\\Product',60,'Apple Watch Serial 7',NULL,'products/11-1.jpg',1,112.00,112.00,11.20,0.00,123.20,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(18,7,'Botble\\Ecommerce\\Models\\Product',71,'Cool Smart Watches (Digital)',NULL,'products/17.jpg',3,111.00,333.00,11.10,0.00,344.10,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(19,8,'Botble\\Ecommerce\\Models\\Product',36,'Headphone Ultra Bass',NULL,'products/2-2.jpg',3,495.00,1485.00,49.50,0.00,1534.50,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(20,8,'Botble\\Ecommerce\\Models\\Product',51,'Leather Watch Band',NULL,'products/7.jpg',3,118.00,354.00,11.80,0.00,365.80,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(21,8,'Botble\\Ecommerce\\Models\\Product',71,'Cool Smart Watches (Digital)',NULL,'products/17.jpg',1,111.00,111.00,11.10,0.00,122.10,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(22,8,'Botble\\Ecommerce\\Models\\Product',72,'Cool Smart Watches (Digital)',NULL,'products/17.jpg',3,111.00,333.00,11.10,0.00,344.10,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(23,9,'Botble\\Ecommerce\\Models\\Product',35,'Headphone Ultra Bass',NULL,'products/2-1.jpg',1,495.00,495.00,49.50,0.00,544.50,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(24,9,'Botble\\Ecommerce\\Models\\Product',39,'Boxed - Bluetooth Headphone',NULL,'products/3.jpg',3,277.00,831.00,27.70,0.00,858.70,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(25,9,'Botble\\Ecommerce\\Models\\Product',49,'Leather Watch Band',NULL,'products/7.jpg',1,118.00,118.00,11.80,0.00,129.80,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(26,9,'Botble\\Ecommerce\\Models\\Product',103,'Audio Equipment (Digital)',NULL,'products/29.jpg',2,59.00,118.00,5.90,0.00,123.90,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(27,10,'Botble\\Ecommerce\\Models\\Product',44,'Camera Hikvision HK-35VS8 (Digital)',NULL,'products/5.jpg',3,47.00,141.00,4.70,0.00,145.70,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(28,10,'Botble\\Ecommerce\\Models\\Product',64,'MacSafe 80W',NULL,'products/14-1.jpg',3,130.00,390.00,13.00,0.00,403.00,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(29,10,'Botble\\Ecommerce\\Models\\Product',70,'Cool Smart Watches (Digital)',NULL,'products/17.jpg',2,111.00,222.00,11.10,0.00,233.10,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(30,10,'Botble\\Ecommerce\\Models\\Product',82,'Historic Alarm Clock (Digital)',NULL,'products/21.jpg',2,112.00,224.00,11.20,0.00,235.20,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(31,11,'Botble\\Ecommerce\\Models\\Product',39,'Boxed - Bluetooth Headphone',NULL,'products/3.jpg',3,277.00,831.00,27.70,0.00,858.70,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(32,11,'Botble\\Ecommerce\\Models\\Product',49,'Leather Watch Band',NULL,'products/7.jpg',2,118.00,236.00,11.80,0.00,247.80,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(33,11,'Botble\\Ecommerce\\Models\\Product',101,'Audio Equipment (Digital)',NULL,'products/29.jpg',1,59.00,59.00,5.90,0.00,64.90,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(34,11,'Botble\\Ecommerce\\Models\\Product',104,'Smart Televisions',NULL,'products/30.jpg',2,125.00,250.00,12.50,0.00,262.50,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(35,12,'Botble\\Ecommerce\\Models\\Product',54,'Macbook Pro 2015 (Digital)',NULL,'products/9.jpg',2,116.00,232.00,11.60,0.00,243.60,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(36,12,'Botble\\Ecommerce\\Models\\Product',60,'Apple Watch Serial 7',NULL,'products/11-1.jpg',3,112.00,336.00,11.20,0.00,347.20,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(37,12,'Botble\\Ecommerce\\Models\\Product',86,'Phillips Mouse',NULL,'products/23.jpg',2,121.00,242.00,12.10,0.00,254.10,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(38,13,'Botble\\Ecommerce\\Models\\Product',32,'Smart Home Speaker (Digital)',NULL,'products/1.jpg',3,494.00,1482.00,49.40,0.00,1531.40,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(39,13,'Botble\\Ecommerce\\Models\\Product',35,'Headphone Ultra Bass',NULL,'products/2-1.jpg',2,495.00,990.00,49.50,0.00,1039.50,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(40,14,'Botble\\Ecommerce\\Models\\Product',42,'Chikie - Bluetooth Speaker',NULL,'products/4-2.jpg',1,73.00,73.00,7.30,0.00,80.30,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(41,14,'Botble\\Ecommerce\\Models\\Product',74,'Leather Watch Band Serial 3',NULL,'products/19.jpg',3,116.00,348.00,11.60,0.00,359.60,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(42,15,'Botble\\Ecommerce\\Models\\Product',44,'Camera Hikvision HK-35VS8 (Digital)',NULL,'products/5.jpg',1,47.00,47.00,4.70,0.00,51.70,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(43,15,'Botble\\Ecommerce\\Models\\Product',82,'Historic Alarm Clock (Digital)',NULL,'products/21.jpg',1,112.00,112.00,11.20,0.00,123.20,'[]','2023-05-02 21:00:40','2023-05-02 21:00:40'),(44,16,'Botble\\Ecommerce\\Models\\Product',55,'Macbook Pro 2015 (Digital)',NULL,'products/9-1.jpg',2,116.00,232.00,11.60,0.00,243.60,'[]','2023-05-02 21:00:41','2023-05-02 21:00:41'),(45,16,'Botble\\Ecommerce\\Models\\Product',67,'Hand playstation',NULL,'products/15-1.jpg',2,124.00,248.00,12.40,0.00,260.40,'[]','2023-05-02 21:00:41','2023-05-02 21:00:41'),(46,16,'Botble\\Ecommerce\\Models\\Product',85,'Black Glasses',NULL,'products/22.jpg',3,127.00,381.00,12.70,0.00,393.70,'[]','2023-05-02 21:00:41','2023-05-02 21:00:41'),(47,16,'Botble\\Ecommerce\\Models\\Product',97,'Beat Headphone',NULL,'products/27-1.jpg',1,20.00,20.00,2.00,0.00,22.00,'[]','2023-05-02 21:00:41','2023-05-02 21:00:41'),(48,17,'Botble\\Ecommerce\\Models\\Product',40,'Chikie - Bluetooth Speaker',NULL,'products/4.jpg',3,73.00,219.00,7.30,0.00,226.30,'[]','2023-05-02 21:00:41','2023-05-02 21:00:41'),(49,17,'Botble\\Ecommerce\\Models\\Product',54,'Macbook Pro 2015 (Digital)',NULL,'products/9.jpg',3,116.00,348.00,11.60,0.00,359.60,'[]','2023-05-02 21:00:41','2023-05-02 21:00:41'),(50,17,'Botble\\Ecommerce\\Models\\Product',80,'Historic Alarm Clock (Digital)',NULL,'products/21.jpg',3,112.00,336.00,11.20,0.00,347.20,'[]','2023-05-02 21:00:41','2023-05-02 21:00:41'),(51,17,'Botble\\Ecommerce\\Models\\Product',82,'Historic Alarm Clock (Digital)',NULL,'products/21.jpg',3,112.00,336.00,11.20,0.00,347.20,'[]','2023-05-02 21:00:41','2023-05-02 21:00:41'),(52,18,'Botble\\Ecommerce\\Models\\Product',34,'Headphone Ultra Bass',NULL,'products/2.jpg',2,495.00,990.00,49.50,0.00,1039.50,'[]','2023-05-02 21:00:41','2023-05-02 21:00:41'),(53,18,'Botble\\Ecommerce\\Models\\Product',43,'Chikie - Bluetooth Speaker',NULL,'products/4-3.jpg',1,73.00,73.00,7.30,0.00,80.30,'[]','2023-05-02 21:00:41','2023-05-02 21:00:41'),(54,18,'Botble\\Ecommerce\\Models\\Product',85,'Black Glasses',NULL,'products/22.jpg',2,127.00,254.00,12.70,0.00,266.70,'[]','2023-05-02 21:00:41','2023-05-02 21:00:41'),(55,19,'Botble\\Ecommerce\\Models\\Product',65,'MacSafe 80W',NULL,'products/14.jpg',2,130.00,260.00,13.00,0.00,273.00,'[]','2023-05-02 21:00:41','2023-05-02 21:00:41'),(56,19,'Botble\\Ecommerce\\Models\\Product',94,'Smart Watches',NULL,'products/26-2.jpg',3,40.50,121.50,4.05,0.00,125.55,'[]','2023-05-02 21:00:41','2023-05-02 21:00:41'),(57,19,'Botble\\Ecommerce\\Models\\Product',96,'Beat Headphone',NULL,'products/27.jpg',3,20.00,60.00,2.00,0.00,62.00,'[]','2023-05-02 21:00:41','2023-05-02 21:00:41'),(58,19,'Botble\\Ecommerce\\Models\\Product',107,'Samsung Smart TV',NULL,'products/31-1.jpg',2,56.00,112.00,5.60,0.00,117.60,'[]','2023-05-02 21:00:41','2023-05-02 21:00:41'),(59,20,'Botble\\Ecommerce\\Models\\Product',61,'Macbook Pro 13 inch',NULL,'products/12.jpg',1,113.00,113.00,11.30,0.00,124.30,'[]','2023-05-02 21:00:41','2023-05-02 21:00:41'),(60,20,'Botble\\Ecommerce\\Models\\Product',64,'MacSafe 80W',NULL,'products/14-1.jpg',1,130.00,130.00,13.00,0.00,143.00,'[]','2023-05-02 21:00:41','2023-05-02 21:00:41'),(61,20,'Botble\\Ecommerce\\Models\\Product',94,'Smart Watches',NULL,'products/26-2.jpg',3,40.50,121.50,4.05,0.00,125.55,'[]','2023-05-02 21:00:41','2023-05-02 21:00:41');
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
INSERT INTO `ec_invoices` VALUES (1,'Botble\\Ecommerce\\Models\\Order',1,'INV-1','Dr. Dylan Lehner I','',NULL,'candice.morissette@example.net','+18434647325','447 Brock Shoal Apt. 600, South Markus, Colorado, PR',NULL,344.50,20.75,0.00,0.00,'1','default',NULL,NULL,365.25,NULL,1,'completed','2023-05-02 21:00:40','2023-04-19 13:00:40','2023-05-02 21:00:40'),(2,'Botble\\Ecommerce\\Models\\Order',2,'INV-2','Chauncey Hayes','',NULL,'gebert@example.com','+18655481893','87011 Pierre Ranch Suite 846, East Miloville, Massachusetts, SS',NULL,384.50,19.23,0.00,0.00,'1','default',NULL,NULL,403.73,NULL,2,'completed','2023-05-02 21:00:40','2023-04-20 05:00:40','2023-05-02 21:00:40'),(3,'Botble\\Ecommerce\\Models\\Order',3,'INV-3','Mr. Presley Von MD','',NULL,'estamm@example.com','+15416665609','27368 Nolan Plains, Brodyhaven, Pennsylvania, BN',NULL,762.50,29.75,0.00,0.00,'1','default',NULL,NULL,792.25,NULL,3,'completed','2023-05-02 21:00:40','2023-04-19 09:00:40','2023-05-02 21:00:40'),(4,'Botble\\Ecommerce\\Models\\Order',4,'INV-4','Everett VonRueden','',NULL,'crippin@example.net','+19348937231','786 Janick Crest, Runolfssonland, California, GW',NULL,661.00,27.15,0.00,0.00,'1','default',NULL,NULL,688.15,NULL,4,'completed','2023-05-02 21:00:40','2023-04-25 19:00:40','2023-05-02 21:00:40'),(5,'Botble\\Ecommerce\\Models\\Order',5,'INV-5','Ceasar Wisoky','',NULL,'aniyah61@example.com','+16416680161','331 Elnora Isle Suite 459, Gaylordhaven, New Hampshire, SS',NULL,987.00,67.70,0.00,0.00,'1','default',NULL,NULL,1054.70,NULL,5,'completed','2023-05-02 21:00:40','2023-04-19 13:00:40','2023-05-02 21:00:40'),(6,'Botble\\Ecommerce\\Models\\Order',6,'INV-6','Ceasar Wisoky','',NULL,'aniyah61@example.com','+16416680161','331 Elnora Isle Suite 459, Gaylordhaven, New Hampshire, SS',NULL,1144.50,57.23,0.00,0.00,'1','default',NULL,NULL,1201.73,NULL,6,'completed','2023-05-02 21:00:40','2023-04-25 09:00:40','2023-05-02 21:00:40'),(7,'Botble\\Ecommerce\\Models\\Order',7,'INV-7','Ashley Schamberger','',NULL,'verona21@example.com','+14063773865','581 Una Spur Apt. 610, New Pablo, Washington, HU',NULL,445.00,22.30,0.00,0.00,'1','default',NULL,NULL,467.30,NULL,7,'completed','2023-05-02 21:00:40','2023-04-30 13:00:40','2023-05-02 21:00:40'),(8,'Botble\\Ecommerce\\Models\\Order',8,'INV-8','Xzavier Nicolas','',NULL,'barton24@example.net','+18176539232','459 Sylvester Stream Apt. 630, Nolanborough, Maryland, PF',NULL,2283.00,83.50,0.00,0.00,'1','default',NULL,NULL,2366.50,NULL,8,'completed','2023-05-02 21:00:40','2023-04-27 11:00:40','2023-05-02 21:00:40'),(9,'Botble\\Ecommerce\\Models\\Order',9,'INV-9','Chauncey Hayes','',NULL,'gebert@example.com','+18655481893','87011 Pierre Ranch Suite 846, East Miloville, Massachusetts, SS',NULL,1562.00,94.90,0.00,0.00,'1','default',NULL,NULL,1656.90,NULL,9,'completed','2023-05-02 21:00:40','2023-05-01 21:00:40','2023-05-02 21:00:40'),(10,'Botble\\Ecommerce\\Models\\Order',10,'INV-10','Dr. Dylan Lehner I','',NULL,'candice.morissette@example.net','+18434647325','447 Brock Shoal Apt. 600, South Markus, Colorado, PR',NULL,977.00,40.00,0.00,0.00,'1','default',NULL,NULL,1017.00,NULL,10,'completed','2023-05-02 21:00:40','2023-04-26 11:00:40','2023-05-02 21:00:40'),(11,'Botble\\Ecommerce\\Models\\Order',11,'INV-11','Miss Hortense Leannon Sr.','',NULL,'langosh.brandon@example.org','+18782592177','569 Harry Knolls, DuBuqueton, Mississippi, SZ',NULL,1376.00,57.90,0.00,0.00,'1','default',NULL,NULL,1433.90,NULL,11,'pending',NULL,'2023-04-27 01:00:40','2023-05-02 21:00:40'),(12,'Botble\\Ecommerce\\Models\\Order',12,'INV-12','Mr. Presley Von MD','',NULL,'estamm@example.com','+15416665609','27368 Nolan Plains, Brodyhaven, Pennsylvania, BN',NULL,810.00,34.90,0.00,0.00,'1','default',NULL,NULL,844.90,NULL,12,'pending',NULL,'2023-04-26 21:00:40','2023-05-02 21:00:40'),(13,'Botble\\Ecommerce\\Models\\Order',13,'INV-13','John Smith','',NULL,'john.smith@botble.com','+15514253019','221 Moen Expressway Apt. 734, South Jadaland, Texas, MA',NULL,2472.00,98.90,0.00,0.00,'1','default',NULL,NULL,2570.90,NULL,13,'completed','2023-05-02 21:00:40','2023-04-26 21:00:40','2023-05-02 21:00:40'),(14,'Botble\\Ecommerce\\Models\\Order',14,'INV-14','Gerry Yundt','',NULL,'nmuller@example.net','+15856545854','880 Cartwright Run Suite 550, South Luther, Iowa, TV',NULL,421.00,18.90,0.00,0.00,'1','default',NULL,NULL,439.90,NULL,14,'completed','2023-05-02 21:00:40','2023-04-27 15:00:40','2023-05-02 21:00:40'),(15,'Botble\\Ecommerce\\Models\\Order',15,'INV-15','Dr. Dylan Lehner I','',NULL,'candice.morissette@example.net','+18434647325','447 Brock Shoal Apt. 600, South Markus, Colorado, PR',NULL,159.00,15.90,0.00,0.00,'1','default',NULL,NULL,174.90,NULL,15,'completed','2023-05-02 21:00:40','2023-04-30 21:00:40','2023-05-02 21:00:40'),(16,'Botble\\Ecommerce\\Models\\Order',16,'INV-16','Chauncey Hayes','',NULL,'gebert@example.com','+18655481893','87011 Pierre Ranch Suite 846, East Miloville, Massachusetts, SS',NULL,881.00,38.70,0.00,0.00,'1','default',NULL,NULL,919.70,NULL,16,'completed','2023-05-02 21:00:41','2023-04-29 13:00:40','2023-05-02 21:00:41'),(17,'Botble\\Ecommerce\\Models\\Order',17,'INV-17','Miss Hortense Leannon Sr.','',NULL,'langosh.brandon@example.org','+18782592177','569 Harry Knolls, DuBuqueton, Mississippi, SZ',NULL,1239.00,41.30,0.00,0.00,'1','default',NULL,NULL,1280.30,NULL,17,'pending',NULL,'2023-04-30 13:00:41','2023-05-02 21:00:41'),(18,'Botble\\Ecommerce\\Models\\Order',18,'INV-18','Ceasar Wisoky','',NULL,'aniyah61@example.com','+16416680161','331 Elnora Isle Suite 459, Gaylordhaven, New Hampshire, SS',NULL,1317.00,69.50,0.00,0.00,'1','default',NULL,NULL,1386.50,NULL,18,'pending',NULL,'2023-05-02 15:00:41','2023-05-02 21:00:41'),(19,'Botble\\Ecommerce\\Models\\Order',19,'INV-19','Gerry Yundt','',NULL,'nmuller@example.net','+15856545854','880 Cartwright Run Suite 550, South Luther, Iowa, TV',NULL,553.50,24.65,0.00,0.00,'1','default',NULL,NULL,578.15,NULL,19,'completed','2023-05-02 21:00:41','2023-05-02 05:00:41','2023-05-02 21:00:41'),(20,'Botble\\Ecommerce\\Models\\Order',20,'INV-20','Xzavier Nicolas','',NULL,'barton24@example.net','+18176539232','459 Sylvester Stream Apt. 630, Nolanborough, Maryland, PF',NULL,364.50,28.35,0.00,0.00,'1','default',NULL,NULL,392.85,NULL,20,'completed','2023-05-02 21:00:41','2023-05-02 13:00:41','2023-05-02 21:00:41');
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
INSERT INTO `ec_order_addresses` VALUES (1,'Dr. Dylan Lehner I','+18434647325','candice.morissette@example.net','PR','Colorado','South Markus','447 Brock Shoal Apt. 600',1,'50396','shipping_address'),(2,'Chauncey Hayes','+18655481893','gebert@example.com','SS','Massachusetts','East Miloville','87011 Pierre Ranch Suite 846',2,'68195','shipping_address'),(3,'Mr. Presley Von MD','+15416665609','estamm@example.com','BN','Pennsylvania','Brodyhaven','27368 Nolan Plains',3,'30165','shipping_address'),(4,'Everett VonRueden','+19348937231','crippin@example.net','GW','California','Runolfssonland','786 Janick Crest',4,'63411','shipping_address'),(5,'Ceasar Wisoky','+16416680161','aniyah61@example.com','SS','New Hampshire','Gaylordhaven','331 Elnora Isle Suite 459',5,'94610-7049','shipping_address'),(6,'Ceasar Wisoky','+16416680161','aniyah61@example.com','SS','New Hampshire','Gaylordhaven','331 Elnora Isle Suite 459',6,'94610-7049','shipping_address'),(7,'Ashley Schamberger','+14063773865','verona21@example.com','HU','Washington','New Pablo','581 Una Spur Apt. 610',7,'77671','shipping_address'),(8,'Xzavier Nicolas','+18176539232','barton24@example.net','PF','Maryland','Nolanborough','459 Sylvester Stream Apt. 630',8,'68436','shipping_address'),(9,'Chauncey Hayes','+18655481893','gebert@example.com','SS','Massachusetts','East Miloville','87011 Pierre Ranch Suite 846',9,'68195','shipping_address'),(10,'Dr. Dylan Lehner I','+18434647325','candice.morissette@example.net','PR','Colorado','South Markus','447 Brock Shoal Apt. 600',10,'50396','shipping_address'),(11,'Miss Hortense Leannon Sr.','+18782592177','langosh.brandon@example.org','SZ','Mississippi','DuBuqueton','569 Harry Knolls',11,'37215','shipping_address'),(12,'Mr. Presley Von MD','+15416665609','estamm@example.com','BN','Pennsylvania','Brodyhaven','27368 Nolan Plains',12,'30165','shipping_address'),(13,'John Smith','+15514253019','john.smith@botble.com','MA','Texas','South Jadaland','221 Moen Expressway Apt. 734',13,'34066-4140','shipping_address'),(14,'Gerry Yundt','+15856545854','nmuller@example.net','TV','Iowa','South Luther','880 Cartwright Run Suite 550',14,'80214-5101','shipping_address'),(15,'Dr. Dylan Lehner I','+18434647325','candice.morissette@example.net','PR','Colorado','South Markus','447 Brock Shoal Apt. 600',15,'50396','shipping_address'),(16,'Chauncey Hayes','+18655481893','gebert@example.com','SS','Massachusetts','East Miloville','87011 Pierre Ranch Suite 846',16,'68195','shipping_address'),(17,'Miss Hortense Leannon Sr.','+18782592177','langosh.brandon@example.org','SZ','Mississippi','DuBuqueton','569 Harry Knolls',17,'37215','shipping_address'),(18,'Ceasar Wisoky','+16416680161','aniyah61@example.com','SS','New Hampshire','Gaylordhaven','331 Elnora Isle Suite 459',18,'94610-7049','shipping_address'),(19,'Gerry Yundt','+15856545854','nmuller@example.net','TV','Iowa','South Luther','880 Cartwright Run Suite 550',19,'80214-5101','shipping_address'),(20,'Xzavier Nicolas','+18176539232','barton24@example.net','PF','Maryland','Nolanborough','459 Sylvester Stream Apt. 630',20,'68436','shipping_address');
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
INSERT INTO `ec_order_histories` VALUES (1,'create_order_from_seeder','Order is created from the checkout page',NULL,1,NULL,'2023-04-19 13:00:40','2023-04-19 13:00:40'),(2,'confirm_order','Order was verified by %user_name%',0,1,NULL,'2023-04-19 13:00:40','2023-04-19 13:00:40'),(3,'confirm_payment','Payment was confirmed (amount $365.25) by %user_name%',0,1,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(4,'create_shipment','Created shipment for order',0,1,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(5,'create_order_from_seeder','Order is created from the checkout page',NULL,2,NULL,'2023-04-20 05:00:40','2023-04-20 05:00:40'),(6,'confirm_order','Order was verified by %user_name%',0,2,NULL,'2023-04-20 05:00:40','2023-04-20 05:00:40'),(7,'confirm_payment','Payment was confirmed (amount $403.73) by %user_name%',0,2,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(8,'create_shipment','Created shipment for order',0,2,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(9,'create_order_from_seeder','Order is created from the checkout page',NULL,3,NULL,'2023-04-19 09:00:40','2023-04-19 09:00:40'),(10,'confirm_order','Order was verified by %user_name%',0,3,NULL,'2023-04-19 09:00:40','2023-04-19 09:00:40'),(11,'confirm_payment','Payment was confirmed (amount $792.25) by %user_name%',0,3,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(12,'create_shipment','Created shipment for order',0,3,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(13,'create_order_from_seeder','Order is created from the checkout page',NULL,4,NULL,'2023-04-25 19:00:40','2023-04-25 19:00:40'),(14,'confirm_order','Order was verified by %user_name%',0,4,NULL,'2023-04-25 19:00:40','2023-04-25 19:00:40'),(15,'confirm_payment','Payment was confirmed (amount $688.15) by %user_name%',0,4,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(16,'create_shipment','Created shipment for order',0,4,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(17,'create_order_from_seeder','Order is created from the checkout page',NULL,5,NULL,'2023-04-19 13:00:40','2023-04-19 13:00:40'),(18,'confirm_order','Order was verified by %user_name%',0,5,NULL,'2023-04-19 13:00:40','2023-04-19 13:00:40'),(19,'confirm_payment','Payment was confirmed (amount $1,054.70) by %user_name%',0,5,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(20,'create_shipment','Created shipment for order',0,5,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(21,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(22,'create_order_from_seeder','Order is created from the checkout page',NULL,6,NULL,'2023-04-25 09:00:40','2023-04-25 09:00:40'),(23,'confirm_order','Order was verified by %user_name%',0,6,NULL,'2023-04-25 09:00:40','2023-04-25 09:00:40'),(24,'confirm_payment','Payment was confirmed (amount $1,201.73) by %user_name%',0,6,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(25,'create_shipment','Created shipment for order',0,6,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(26,'create_order_from_seeder','Order is created from the checkout page',NULL,7,NULL,'2023-04-30 13:00:40','2023-04-30 13:00:40'),(27,'confirm_order','Order was verified by %user_name%',0,7,NULL,'2023-04-30 13:00:40','2023-04-30 13:00:40'),(28,'confirm_payment','Payment was confirmed (amount $467.30) by %user_name%',0,7,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(29,'create_shipment','Created shipment for order',0,7,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(30,'create_order_from_seeder','Order is created from the checkout page',NULL,8,NULL,'2023-04-27 11:00:40','2023-04-27 11:00:40'),(31,'confirm_order','Order was verified by %user_name%',0,8,NULL,'2023-04-27 11:00:40','2023-04-27 11:00:40'),(32,'confirm_payment','Payment was confirmed (amount $2,366.50) by %user_name%',0,8,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(33,'create_shipment','Created shipment for order',0,8,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(34,'create_order_from_seeder','Order is created from the checkout page',NULL,9,NULL,'2023-05-01 21:00:40','2023-05-01 21:00:40'),(35,'confirm_order','Order was verified by %user_name%',0,9,NULL,'2023-05-01 21:00:40','2023-05-01 21:00:40'),(36,'confirm_payment','Payment was confirmed (amount $1,656.90) by %user_name%',0,9,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(37,'create_shipment','Created shipment for order',0,9,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(38,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(39,'create_order_from_seeder','Order is created from the checkout page',NULL,10,NULL,'2023-04-26 11:00:40','2023-04-26 11:00:40'),(40,'confirm_order','Order was verified by %user_name%',0,10,NULL,'2023-04-26 11:00:40','2023-04-26 11:00:40'),(41,'confirm_payment','Payment was confirmed (amount $1,017.00) by %user_name%',0,10,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(42,'create_shipment','Created shipment for order',0,10,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(43,'create_order_from_seeder','Order is created from the checkout page',NULL,11,NULL,'2023-04-27 01:00:40','2023-04-27 01:00:40'),(44,'confirm_order','Order was verified by %user_name%',0,11,NULL,'2023-04-27 01:00:40','2023-04-27 01:00:40'),(45,'create_shipment','Created shipment for order',0,11,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(46,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(47,'create_order_from_seeder','Order is created from the checkout page',NULL,12,NULL,'2023-04-26 21:00:40','2023-04-26 21:00:40'),(48,'confirm_order','Order was verified by %user_name%',0,12,NULL,'2023-04-26 21:00:40','2023-04-26 21:00:40'),(49,'create_shipment','Created shipment for order',0,12,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(50,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(51,'create_order_from_seeder','Order is created from the checkout page',NULL,13,NULL,'2023-04-26 21:00:40','2023-04-26 21:00:40'),(52,'confirm_order','Order was verified by %user_name%',0,13,NULL,'2023-04-26 21:00:40','2023-04-26 21:00:40'),(53,'confirm_payment','Payment was confirmed (amount $2,570.90) by %user_name%',0,13,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(54,'create_shipment','Created shipment for order',0,13,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(55,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(56,'create_order_from_seeder','Order is created from the checkout page',NULL,14,NULL,'2023-04-27 15:00:40','2023-04-27 15:00:40'),(57,'confirm_order','Order was verified by %user_name%',0,14,NULL,'2023-04-27 15:00:40','2023-04-27 15:00:40'),(58,'confirm_payment','Payment was confirmed (amount $439.90) by %user_name%',0,14,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(59,'create_shipment','Created shipment for order',0,14,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(60,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(61,'create_order_from_seeder','Order is created from the checkout page',NULL,15,NULL,'2023-04-30 21:00:40','2023-04-30 21:00:40'),(62,'confirm_order','Order was verified by %user_name%',0,15,NULL,'2023-04-30 21:00:40','2023-04-30 21:00:40'),(63,'confirm_payment','Payment was confirmed (amount $174.90) by %user_name%',0,15,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(64,'create_shipment','Created shipment for order',0,15,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40'),(65,'create_order_from_seeder','Order is created from the checkout page',NULL,16,NULL,'2023-04-29 13:00:40','2023-04-29 13:00:40'),(66,'confirm_order','Order was verified by %user_name%',0,16,NULL,'2023-04-29 13:00:40','2023-04-29 13:00:40'),(67,'confirm_payment','Payment was confirmed (amount $919.70) by %user_name%',0,16,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(68,'create_shipment','Created shipment for order',0,16,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(69,'create_order_from_seeder','Order is created from the checkout page',NULL,17,NULL,'2023-04-30 13:00:41','2023-04-30 13:00:41'),(70,'confirm_order','Order was verified by %user_name%',0,17,NULL,'2023-04-30 13:00:41','2023-04-30 13:00:41'),(71,'create_shipment','Created shipment for order',0,17,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(72,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(73,'create_order_from_seeder','Order is created from the checkout page',NULL,18,NULL,'2023-05-02 15:00:41','2023-05-02 15:00:41'),(74,'confirm_order','Order was verified by %user_name%',0,18,NULL,'2023-05-02 15:00:41','2023-05-02 15:00:41'),(75,'create_shipment','Created shipment for order',0,18,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(76,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(77,'create_order_from_seeder','Order is created from the checkout page',NULL,19,NULL,'2023-05-02 05:00:41','2023-05-02 05:00:41'),(78,'confirm_order','Order was verified by %user_name%',0,19,NULL,'2023-05-02 05:00:41','2023-05-02 05:00:41'),(79,'confirm_payment','Payment was confirmed (amount $578.15) by %user_name%',0,19,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(80,'create_shipment','Created shipment for order',0,19,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(81,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(82,'create_order_from_seeder','Order is created from the checkout page',NULL,20,NULL,'2023-05-02 13:00:41','2023-05-02 13:00:41'),(83,'confirm_order','Order was verified by %user_name%',0,20,NULL,'2023-05-02 13:00:41','2023-05-02 13:00:41'),(84,'confirm_payment','Payment was confirmed (amount $392.85) by %user_name%',0,20,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(85,'create_shipment','Created shipment for order',0,20,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(86,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(87,'update_status','Order confirmed by %user_name%',0,5,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(88,'update_status','Order confirmed by %user_name%',0,9,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(89,'update_status','Order confirmed by %user_name%',0,13,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(90,'update_status','Order confirmed by %user_name%',0,14,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(91,'update_status','Order confirmed by %user_name%',0,19,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(92,'update_status','Order confirmed by %user_name%',0,20,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41');
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
INSERT INTO `ec_order_product` VALUES (1,1,1,111.00,11.10,'[]',NULL,70,'Cool Smart Watches (Digital)','products/17.jpg',723.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','digital',3),(2,1,3,40.50,4.05,'[]',NULL,95,'Smart Watches','products/26.jpg',2085.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(3,1,2,56.00,5.60,'[]',NULL,106,'Samsung Smart TV','products/31.jpg',1182.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(4,2,2,112.00,11.20,'[]',NULL,60,'Apple Watch Serial 7','products/11-1.jpg',1072.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(5,2,2,80.25,8.03,'[]',NULL,90,'Dual Camera 20MP (Digital)','products/25.jpg',1360.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','digital',10),(6,3,2,130.00,13.00,'[]',NULL,64,'MacSafe 80W','products/14-1.jpg',1782.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(7,3,3,127.00,12.70,'[]',NULL,83,'Black Glasses','products/22.jpg',2679.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(8,3,3,40.50,4.05,'[]',NULL,92,'Smart Watches','products/26.jpg',2085.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(9,4,3,118.00,11.80,'[]',NULL,50,'Leather Watch Band','products/7-1.jpg',1953.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(10,4,2,113.00,11.30,'[]',NULL,62,'Apple Keyboard (Digital)','products/13.jpg',1294.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','digital',2),(11,4,2,40.50,4.05,'[]',NULL,92,'Smart Watches','products/26.jpg',1390.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(12,5,1,494.00,49.40,'[]',NULL,32,'Smart Home Speaker (Digital)','products/1.jpg',876.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','digital',8),(13,5,3,127.00,12.70,'[]',NULL,83,'Black Glasses','products/22.jpg',2679.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(14,5,2,56.00,5.60,'[]',NULL,108,'Samsung Smart TV','products/31.jpg',1182.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(15,6,2,492.00,49.20,'[]',NULL,58,'Macbook Air 12 inch','products/10-1.jpg',1788.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(16,6,2,80.25,8.03,'[]',NULL,91,'Dual Camera 20MP (Digital)','products/25-1.jpg',1360.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','digital',0),(17,7,1,112.00,11.20,'[]',NULL,60,'Apple Watch Serial 7','products/11-1.jpg',536.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(18,7,3,111.00,11.10,'[]',NULL,71,'Cool Smart Watches (Digital)','products/17.jpg',2169.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','digital',9),(19,8,3,495.00,49.50,'[]',NULL,36,'Headphone Ultra Bass','products/2-2.jpg',2364.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(20,8,3,118.00,11.80,'[]',NULL,51,'Leather Watch Band','products/7.jpg',1953.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(21,8,1,111.00,11.10,'[]',NULL,71,'Cool Smart Watches (Digital)','products/17.jpg',723.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','digital',7),(22,8,3,111.00,11.10,'[]',NULL,72,'Cool Smart Watches (Digital)','products/17.jpg',2169.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','digital',10),(23,9,1,495.00,49.50,'[]',NULL,35,'Headphone Ultra Bass','products/2-1.jpg',788.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(24,9,3,277.00,27.70,'[]',NULL,39,'Boxed - Bluetooth Headphone','products/3.jpg',1965.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(25,9,1,118.00,11.80,'[]',NULL,49,'Leather Watch Band','products/7.jpg',651.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(26,9,2,59.00,5.90,'[]',NULL,103,'Audio Equipment (Digital)','products/29.jpg',1150.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','digital',9),(27,10,3,47.00,4.70,'[]',NULL,44,'Camera Hikvision HK-35VS8 (Digital)','products/5.jpg',2361.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','digital',3),(28,10,3,130.00,13.00,'[]',NULL,64,'MacSafe 80W','products/14-1.jpg',2673.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(29,10,2,111.00,11.10,'[]',NULL,70,'Cool Smart Watches (Digital)','products/17.jpg',1446.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','digital',8),(30,10,2,112.00,11.20,'[]',NULL,82,'Historic Alarm Clock (Digital)','products/21.jpg',1440.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','digital',5),(31,11,3,277.00,27.70,'[]',NULL,39,'Boxed - Bluetooth Headphone','products/3.jpg',1965.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(32,11,2,118.00,11.80,'[]',NULL,49,'Leather Watch Band','products/7.jpg',1302.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(33,11,1,59.00,5.90,'[]',NULL,101,'Audio Equipment (Digital)','products/29.jpg',575.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','digital',9),(34,11,2,125.00,12.50,'[]',NULL,104,'Smart Televisions','products/30.jpg',1456.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(35,12,2,116.00,11.60,'[]',NULL,54,'Macbook Pro 2015 (Digital)','products/9.jpg',1186.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','digital',1),(36,12,3,112.00,11.20,'[]',NULL,60,'Apple Watch Serial 7','products/11-1.jpg',1608.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(37,12,2,121.00,12.10,'[]',NULL,86,'Phillips Mouse','products/23.jpg',1608.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(38,13,3,494.00,49.40,'[]',NULL,32,'Smart Home Speaker (Digital)','products/1.jpg',2628.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','digital',10),(39,13,2,495.00,49.50,'[]',NULL,35,'Headphone Ultra Bass','products/2-1.jpg',1576.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(40,14,1,73.00,7.30,'[]',NULL,42,'Chikie - Bluetooth Speaker','products/4-2.jpg',695.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(41,14,3,116.00,11.60,'[]',NULL,74,'Leather Watch Band Serial 3','products/19.jpg',1620.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','physical',0),(42,15,1,47.00,4.70,'[]',NULL,44,'Camera Hikvision HK-35VS8 (Digital)','products/5.jpg',787.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','digital',7),(43,15,1,112.00,11.20,'[]',NULL,82,'Historic Alarm Clock (Digital)','products/21.jpg',720.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','digital',2),(44,16,2,116.00,11.60,'[]',NULL,55,'Macbook Pro 2015 (Digital)','products/9-1.jpg',1186.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','digital',0),(45,16,2,124.00,12.40,'[]',NULL,67,'Hand playstation','products/15-1.jpg',1796.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','physical',0),(46,16,3,127.00,12.70,'[]',NULL,85,'Black Glasses','products/22.jpg',2679.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','physical',0),(47,16,1,20.00,2.00,'[]',NULL,97,'Beat Headphone','products/27-1.jpg',861.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','physical',0),(48,17,3,73.00,7.30,'[]',NULL,40,'Chikie - Bluetooth Speaker','products/4.jpg',2085.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','physical',0),(49,17,3,116.00,11.60,'[]',NULL,54,'Macbook Pro 2015 (Digital)','products/9.jpg',1779.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','digital',2),(50,17,3,112.00,11.20,'[]',NULL,80,'Historic Alarm Clock (Digital)','products/21.jpg',2160.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','digital',4),(51,17,3,112.00,11.20,'[]',NULL,82,'Historic Alarm Clock (Digital)','products/21.jpg',2160.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','digital',9),(52,18,2,495.00,49.50,'[]',NULL,34,'Headphone Ultra Bass','products/2.jpg',1576.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','physical',0),(53,18,1,73.00,7.30,'[]',NULL,43,'Chikie - Bluetooth Speaker','products/4-3.jpg',695.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','physical',0),(54,18,2,127.00,12.70,'[]',NULL,85,'Black Glasses','products/22.jpg',1786.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','physical',0),(55,19,2,130.00,13.00,'[]',NULL,65,'MacSafe 80W','products/14.jpg',1782.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','physical',0),(56,19,3,40.50,4.05,'[]',NULL,94,'Smart Watches','products/26-2.jpg',2085.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','physical',0),(57,19,3,20.00,2.00,'[]',NULL,96,'Beat Headphone','products/27.jpg',2583.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','physical',0),(58,19,2,56.00,5.60,'[]',NULL,107,'Samsung Smart TV','products/31-1.jpg',1182.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','physical',0),(59,20,1,113.00,11.30,'[]',NULL,61,'Macbook Pro 13 inch','products/12.jpg',857.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','physical',0),(60,20,1,130.00,13.00,'[]',NULL,64,'MacSafe 80W','products/14-1.jpg',891.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','physical',0),(61,20,3,40.50,4.05,'[]',NULL,94,'Smart Watches','products/26-2.jpg',2085.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','physical',0);
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT NULL,
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
INSERT INTO `ec_orders` VALUES (1,'#10000001',6,'1','default','pending',365.25,20.75,0.00,NULL,NULL,0.00,344.50,1,NULL,1,NULL,'anoomk7ErjWMI2Is5ADYznOQBiUOj',1,'2023-04-19 13:00:40','2023-05-02 21:00:40'),(2,'#10000002',3,'1','default','pending',403.73,19.23,0.00,NULL,NULL,0.00,384.50,1,NULL,1,NULL,'DrljROGlqSa93TRj94oqLTgTbylVj',2,'2023-04-20 05:00:40','2023-05-02 21:00:40'),(3,'#10000003',11,'1','default','pending',792.25,29.75,0.00,NULL,NULL,0.00,762.50,1,NULL,1,NULL,'Q3BZMF5GunBSziya0UJDNyFYtPVDt',3,'2023-04-19 09:00:40','2023-05-02 21:00:40'),(4,'#10000004',2,'1','default','pending',688.15,27.15,0.00,NULL,NULL,0.00,661.00,1,NULL,1,NULL,'8IUJiMQuz2jOsAVziYGqYMHENpKmB',4,'2023-04-25 19:00:40','2023-05-02 21:00:40'),(5,'#10000005',10,'1','default','completed',1054.70,67.70,0.00,NULL,NULL,0.00,987.00,1,NULL,1,'2023-05-02 21:00:41','umsrnqsL0Moj8fa7ga1But1b8gjP3',5,'2023-04-19 13:00:40','2023-05-02 21:00:41'),(6,'#10000006',10,'1','default','pending',1201.73,57.23,0.00,NULL,NULL,0.00,1144.50,1,NULL,1,NULL,'bK8o9KHjVw0o4zHp9arYDnF1OrO6s',6,'2023-04-25 09:00:40','2023-05-02 21:00:40'),(7,'#10000007',5,'1','default','pending',467.30,22.30,0.00,NULL,NULL,0.00,445.00,1,NULL,1,NULL,'FHqrrW4YwmlHpOt3eQjvIqm14S8Z5',7,'2023-04-30 13:00:40','2023-05-02 21:00:40'),(8,'#10000008',7,'1','default','pending',2366.50,83.50,0.00,NULL,NULL,0.00,2283.00,1,NULL,1,NULL,'xfpRGn8tFrU3VUZrda27wjJBDJruo',8,'2023-04-27 11:00:40','2023-05-02 21:00:40'),(9,'#10000009',3,'1','default','completed',1656.90,94.90,0.00,NULL,NULL,0.00,1562.00,1,NULL,1,'2023-05-02 21:00:41','MsM6gmDhUjWhsJueo7ZErL4z97cBS',9,'2023-05-01 21:00:40','2023-05-02 21:00:41'),(10,'#10000010',6,'1','default','pending',1017.00,40.00,0.00,NULL,NULL,0.00,977.00,1,NULL,1,NULL,'snCvIqAPlpnE3KPIpsVNkpbHaLPRg',10,'2023-04-26 11:00:40','2023-05-02 21:00:40'),(11,'#10000011',9,'1','default','completed',1433.90,57.90,0.00,NULL,NULL,0.00,1376.00,1,NULL,1,'2023-05-02 21:00:40','DXPx91Tk05vEgeKwvSxKag7qMaHZq',11,'2023-04-27 01:00:40','2023-05-02 21:00:40'),(12,'#10000012',11,'1','default','completed',844.90,34.90,0.00,NULL,NULL,0.00,810.00,1,NULL,1,'2023-05-02 21:00:40','7bo6l0BMQ7NG8d7sZcMMETM5O23d2',12,'2023-04-26 21:00:40','2023-05-02 21:00:40'),(13,'#10000013',1,'1','default','completed',2570.90,98.90,0.00,NULL,NULL,0.00,2472.00,1,NULL,1,'2023-05-02 21:00:41','ocM6SuWIUaWO2trTItyZaL9a9xOLY',13,'2023-04-26 21:00:40','2023-05-02 21:00:41'),(14,'#10000014',4,'1','default','completed',439.90,18.90,0.00,NULL,NULL,0.00,421.00,1,NULL,1,'2023-05-02 21:00:41','nu2tCzLBWbqjEZIzdbdvXKv3pW1aj',14,'2023-04-27 15:00:40','2023-05-02 21:00:41'),(15,'#10000015',6,'1','default','pending',174.90,15.90,0.00,NULL,NULL,0.00,159.00,1,NULL,1,NULL,'wzWpMmXqlCaH8aFEgZflxJTMbr5Jy',15,'2023-04-30 21:00:40','2023-05-02 21:00:40'),(16,'#10000016',3,'1','default','pending',919.70,38.70,0.00,NULL,NULL,0.00,881.00,1,NULL,1,NULL,'W0RgTr6YFNDuybNgCwdfVMz340T7M',16,'2023-04-29 13:00:40','2023-05-02 21:00:41'),(17,'#10000017',9,'1','default','completed',1280.30,41.30,0.00,NULL,NULL,0.00,1239.00,1,NULL,1,'2023-05-02 21:00:41','yUbqiC1dkQ13WWfUI0QIf7UYxP4EK',17,'2023-04-30 13:00:41','2023-05-02 21:00:41'),(18,'#10000018',10,'1','default','completed',1386.50,69.50,0.00,NULL,NULL,0.00,1317.00,1,NULL,1,'2023-05-02 21:00:41','gcLFHsKJ6gGOcsI0jUEBswHi9AuIU',18,'2023-05-02 15:00:41','2023-05-02 21:00:41'),(19,'#10000019',4,'1','default','completed',578.15,24.65,0.00,NULL,NULL,0.00,553.50,1,NULL,1,'2023-05-02 21:00:41','jJP6A1owCnmad3mOCLZKhby5iIC43',19,'2023-05-02 05:00:41','2023-05-02 21:00:41'),(20,'#10000020',7,'1','default','completed',392.85,28.35,0.00,NULL,NULL,0.00,364.50,1,NULL,1,'2023-05-02 21:00:41','5zGhvRno7UfWDMDcliSvoLt06Ebc4',20,'2023-05-02 13:00:41','2023-05-02 21:00:41');
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'swatch_dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2023-05-02 21:00:32','2023-05-02 21:00:32',1),(2,'Size','size','text',1,1,1,'published',1,'2023-05-02 21:00:32','2023-05-02 21:00:32',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets_translations` VALUES ('vi',1,'Màu sắc'),('vi',2,'Kích thước');
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_attributes_attribute_set_id_status_index` (`attribute_set_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'published','2023-05-02 21:00:32','2023-05-02 21:00:32'),(2,1,'Blue','blue','#333333',NULL,0,2,'published','2023-05-02 21:00:32','2023-05-02 21:00:32'),(3,1,'Red','red','#DA323F',NULL,0,3,'published','2023-05-02 21:00:32','2023-05-02 21:00:32'),(4,1,'Black','back','#2F366C',NULL,0,4,'published','2023-05-02 21:00:32','2023-05-02 21:00:32'),(5,1,'Brown','brown','#87554B',NULL,0,5,'published','2023-05-02 21:00:32','2023-05-02 21:00:32'),(6,2,'S','s',NULL,NULL,1,1,'published','2023-05-02 21:00:32','2023-05-02 21:00:32'),(7,2,'M','m',NULL,NULL,0,2,'published','2023-05-02 21:00:32','2023-05-02 21:00:32'),(8,2,'L','l',NULL,NULL,0,3,'published','2023-05-02 21:00:32','2023-05-02 21:00:32'),(9,2,'XL','xl',NULL,NULL,0,4,'published','2023-05-02 21:00:32','2023-05-02 21:00:32'),(10,2,'XXL','xxl',NULL,NULL,0,5,'published','2023-05-02 21:00:32','2023-05-02 21:00:32');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
INSERT INTO `ec_product_attributes_translations` VALUES ('vi',1,'Xanh lá cây'),('vi',2,'Xanh da trời'),('vi',3,'Đỏ'),('vi',4,'Đen'),('vi',5,'Nâu'),('vi',6,'S'),('vi',7,'M'),('vi',8,'L'),('vi',9,'XL'),('vi',10,'XXL');
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Television',0,NULL,'published',0,'product-categories/p-1.png',1,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(2,'Home Audio & Theaters',1,NULL,'published',0,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(3,'TV & Videos',1,NULL,'published',1,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(4,'Camera, Photos & Videos',1,NULL,'published',2,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(5,'Cellphones & Accessories',1,NULL,'published',3,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(6,'Headphones',1,NULL,'published',4,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(7,'Videos games',1,NULL,'published',5,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(8,'Wireless Speakers',1,NULL,'published',6,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(9,'Office Electronic',1,NULL,'published',7,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(10,'Mobile',0,NULL,'published',1,'product-categories/p-2.png',1,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(11,'Digital Cables',10,NULL,'published',0,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(12,'Audio & Video Cables',10,NULL,'published',1,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(13,'Batteries',10,NULL,'published',2,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(14,'Headphone',0,NULL,'published',2,'product-categories/p-3.png',1,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(15,'Computer & Tablets',14,NULL,'published',0,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(16,'Laptop',14,NULL,'published',1,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(17,'Monitors',14,NULL,'published',2,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(18,'Computer Components',14,NULL,'published',3,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(19,'Watches',0,NULL,'published',3,'product-categories/p-4.png',1,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(20,'Drive & Storages',19,NULL,'published',0,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(21,'Gaming Laptop',19,NULL,'published',1,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(22,'Security & Protection',19,NULL,'published',2,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(23,'Accessories',19,NULL,'published',3,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(24,'Game',0,NULL,'published',4,'product-categories/p-5.png',1,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(25,'Camera',0,NULL,'published',5,'product-categories/p-6.png',1,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(26,'Audio',0,NULL,'published',6,'product-categories/p-7.png',1,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(27,'Mobile & Tablet',0,NULL,'published',7,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(28,'Accessories',0,NULL,'published',8,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(29,'Home Audio & Theater',0,NULL,'published',9,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(30,'Tv & Smart Box',0,NULL,'published',10,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(31,'Printer',0,NULL,'published',11,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(32,'Computer',0,NULL,'published',12,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(33,'Fax Machine',0,NULL,'published',13,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32'),(34,'Mouse',0,NULL,'published',14,NULL,0,'2023-05-02 21:00:32','2023-05-02 21:00:32');
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
INSERT INTO `ec_product_categories_translations` VALUES ('vi',1,'Tivi',NULL),('vi',2,'Home Audio & Theaters',NULL),('vi',3,'TV & Videos',NULL),('vi',4,'Camera, Photos & Videos',NULL),('vi',5,'Cellphones & Accessories',NULL),('vi',6,'Headphones',NULL),('vi',7,'Videos games',NULL),('vi',8,'Wireless Speakers',NULL),('vi',9,'Office Electronic',NULL),('vi',10,'Di động',NULL),('vi',11,'Digital Cables',NULL),('vi',12,'Audio & Video Cables',NULL),('vi',13,'Batteries',NULL),('vi',14,'Tai nghe',NULL),('vi',15,'Computer & Tablets',NULL),('vi',16,'Laptop',NULL),('vi',17,'Monitors',NULL),('vi',18,'Computer Components',NULL),('vi',19,'Đồng hồ',NULL),('vi',20,'Drive & Storages',NULL),('vi',21,'Gaming Laptop',NULL),('vi',22,'Security & Protection',NULL),('vi',23,'Accessories',NULL),('vi',24,'Trò chơi',NULL),('vi',25,'Máy ảnh',NULL),('vi',26,'Âm thanh',NULL),('vi',27,'Di động & Máy tính bảng',NULL),('vi',28,'Phụ kiện',NULL),('vi',29,'Âm thanh & hình ảnh',NULL),('vi',30,'Tv & Smart Box',NULL),('vi',31,'Máy in',NULL),('vi',32,'Máy tính',NULL),('vi',33,'Máy Fax',NULL),('vi',34,'Chuột máy tính',NULL);
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,3),(1,23),(2,17),(2,29),(3,2),(3,13),(3,15),(3,20),(3,21),(3,31),(4,4),(4,26),(5,22),(5,24),(5,27),(6,5),(6,19),(6,25),(7,6),(8,1),(8,7),(8,12),(9,8),(10,18),(10,28),(11,9),(11,16),(11,30),(12,14),(13,11),(14,10);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,14),(1,16),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,26),(2,3),(2,6),(2,9),(2,24),(2,28),(2,30),(3,1),(3,2),(3,4),(3,5),(3,7),(3,8),(3,10),(3,11),(3,12),(3,13),(3,15),(3,17),(3,25),(3,27),(3,29),(3,31);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'New Arrival','new-arrival',NULL,NULL,'published','2023-05-02 21:00:32','2023-05-02 21:00:32',0),(2,'Best Sellers','best-sellers',NULL,NULL,'published','2023-05-02 21:00:32','2023-05-02 21:00:32',0),(3,'Special Offer','special-offer',NULL,NULL,'published','2023-05-02 21:00:32','2023-05-02 21:00:32',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
INSERT INTO `ec_product_collections_translations` VALUES ('vi',1,'Hàng mới về',NULL),('vi',2,'Bán chạy nhất',NULL),('vi',3,'Khuyến mãi đặc biệt',NULL);
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,6),(1,16),(1,23),(1,30),(2,8),(2,14),(2,16),(2,30),(3,1),(3,19),(3,30),(4,7),(4,19),(4,27),(4,31),(5,1),(5,6),(5,19),(5,28),(6,3),(6,4),(6,7),(6,19),(7,4),(7,8),(7,14),(8,3),(8,9),(8,15),(8,19),(9,2),(9,8),(9,25),(10,3),(10,12),(10,18),(10,22),(11,10),(11,23),(11,25),(12,15),(12,16),(12,19),(12,27),(13,11),(13,14),(13,24),(13,27),(14,3),(14,21),(14,29),(14,30),(15,4),(15,18),(15,24),(15,29),(16,11),(16,20),(16,21),(16,23),(17,5),(17,9),(17,21),(17,23),(18,8),(18,17),(18,24),(18,27),(19,10),(19,15),(19,16),(19,17),(20,7),(20,17),(20,23),(20,28),(21,4),(21,7),(21,12),(21,24),(22,12),(22,16),(22,19),(22,23),(23,1),(23,17),(23,20),(23,27),(24,4),(24,6),(24,14),(25,8),(25,18),(25,21),(25,23),(26,2),(26,11),(26,17),(26,24),(27,5),(27,6),(27,9),(27,17),(28,4),(28,7),(28,18),(28,22),(29,1),(29,3),(29,13),(29,22),(30,14),(30,18),(30,20),(30,21),(31,1),(31,8),(31,17),(31,28);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,32,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:37\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-05-02 21:00:37','2023-05-02 21:00:37'),(2,32,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:37\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-05-02 21:00:37','2023-05-02 21:00:37'),(3,32,'product-files/1-2.jpg','{\"filename\":\"1-2.jpg\",\"url\":\"product-files\\/1-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:37\",\"name\":\"1-2\",\"extension\":\"jpg\"}','2023-05-02 21:00:37','2023-05-02 21:00:37'),(4,32,'product-files/1-3.jpg','{\"filename\":\"1-3.jpg\",\"url\":\"product-files\\/1-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:37\",\"name\":\"1-3\",\"extension\":\"jpg\"}','2023-05-02 21:00:37','2023-05-02 21:00:37'),(5,33,'product-files/1.jpg','{\"filename\":\"1.jpg\",\"url\":\"product-files\\/1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:37\",\"name\":\"1\",\"extension\":\"jpg\"}','2023-05-02 21:00:37','2023-05-02 21:00:37'),(6,33,'product-files/1-1.jpg','{\"filename\":\"1-1.jpg\",\"url\":\"product-files\\/1-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:37\",\"name\":\"1-1\",\"extension\":\"jpg\"}','2023-05-02 21:00:37','2023-05-02 21:00:37'),(7,33,'product-files/1-2.jpg','{\"filename\":\"1-2.jpg\",\"url\":\"product-files\\/1-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:37\",\"name\":\"1-2\",\"extension\":\"jpg\"}','2023-05-02 21:00:37','2023-05-02 21:00:37'),(8,33,'product-files/1-3.jpg','{\"filename\":\"1-3.jpg\",\"url\":\"product-files\\/1-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:37\",\"name\":\"1-3\",\"extension\":\"jpg\"}','2023-05-02 21:00:37','2023-05-02 21:00:37'),(9,44,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(10,44,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(11,44,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(12,44,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(13,45,'product-files/5.jpg','{\"filename\":\"5.jpg\",\"url\":\"product-files\\/5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"5\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(14,45,'product-files/5-1.jpg','{\"filename\":\"5-1.jpg\",\"url\":\"product-files\\/5-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"5-1\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(15,45,'product-files/5-2.jpg','{\"filename\":\"5-2.jpg\",\"url\":\"product-files\\/5-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"5-2\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(16,45,'product-files/5-3.jpg','{\"filename\":\"5-3.jpg\",\"url\":\"product-files\\/5-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"5-3\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(17,54,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(18,54,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(19,55,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(20,55,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(21,56,'product-files/9.jpg','{\"filename\":\"9.jpg\",\"url\":\"product-files\\/9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"9\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(22,56,'product-files/9-1.jpg','{\"filename\":\"9-1.jpg\",\"url\":\"product-files\\/9-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"9-1\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(23,62,'product-files/13.jpg','{\"filename\":\"13.jpg\",\"url\":\"product-files\\/13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"13\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(24,62,'product-files/13-1.jpg','{\"filename\":\"13-1.jpg\",\"url\":\"product-files\\/13-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"13-1\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(25,70,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(26,71,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(27,72,'product-files/17.jpg','{\"filename\":\"17.jpg\",\"url\":\"product-files\\/17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"17\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(28,80,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(29,80,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:38\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-05-02 21:00:38','2023-05-02 21:00:38'),(30,81,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:39\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-05-02 21:00:39','2023-05-02 21:00:39'),(31,81,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:39\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-05-02 21:00:39','2023-05-02 21:00:39'),(32,82,'product-files/21.jpg','{\"filename\":\"21.jpg\",\"url\":\"product-files\\/21.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:39\",\"name\":\"21\",\"extension\":\"jpg\"}','2023-05-02 21:00:39','2023-05-02 21:00:39'),(33,82,'product-files/21-1.jpg','{\"filename\":\"21-1.jpg\",\"url\":\"product-files\\/21-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:39\",\"name\":\"21-1\",\"extension\":\"jpg\"}','2023-05-02 21:00:39','2023-05-02 21:00:39'),(34,90,'product-files/25.jpg','{\"filename\":\"25.jpg\",\"url\":\"product-files\\/25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:39\",\"name\":\"25\",\"extension\":\"jpg\"}','2023-05-02 21:00:39','2023-05-02 21:00:39'),(35,90,'product-files/25-1.jpg','{\"filename\":\"25-1.jpg\",\"url\":\"product-files\\/25-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:39\",\"name\":\"25-1\",\"extension\":\"jpg\"}','2023-05-02 21:00:39','2023-05-02 21:00:39'),(36,91,'product-files/25.jpg','{\"filename\":\"25.jpg\",\"url\":\"product-files\\/25.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:39\",\"name\":\"25\",\"extension\":\"jpg\"}','2023-05-02 21:00:39','2023-05-02 21:00:39'),(37,91,'product-files/25-1.jpg','{\"filename\":\"25-1.jpg\",\"url\":\"product-files\\/25-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:39\",\"name\":\"25-1\",\"extension\":\"jpg\"}','2023-05-02 21:00:39','2023-05-02 21:00:39'),(38,101,'product-files/29.jpg','{\"filename\":\"29.jpg\",\"url\":\"product-files\\/29.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:39\",\"name\":\"29\",\"extension\":\"jpg\"}','2023-05-02 21:00:39','2023-05-02 21:00:39'),(39,101,'product-files/29-1.jpg','{\"filename\":\"29-1.jpg\",\"url\":\"product-files\\/29-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:39\",\"name\":\"29-1\",\"extension\":\"jpg\"}','2023-05-02 21:00:39','2023-05-02 21:00:39'),(40,102,'product-files/29.jpg','{\"filename\":\"29.jpg\",\"url\":\"product-files\\/29.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:39\",\"name\":\"29\",\"extension\":\"jpg\"}','2023-05-02 21:00:39','2023-05-02 21:00:39'),(41,102,'product-files/29-1.jpg','{\"filename\":\"29-1.jpg\",\"url\":\"product-files\\/29-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:39\",\"name\":\"29-1\",\"extension\":\"jpg\"}','2023-05-02 21:00:39','2023-05-02 21:00:39'),(42,103,'product-files/29.jpg','{\"filename\":\"29.jpg\",\"url\":\"product-files\\/29.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:39\",\"name\":\"29\",\"extension\":\"jpg\"}','2023-05-02 21:00:39','2023-05-02 21:00:39'),(43,103,'product-files/29-1.jpg','{\"filename\":\"29-1.jpg\",\"url\":\"product-files\\/29-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":2165,\"modified\":\"2023-05-03 04:00:39\",\"name\":\"29-1\",\"extension\":\"jpg\"}','2023-05-02 21:00:39','2023-05-02 21:00:39');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,3),(1,6),(1,9),(1,12),(1,24),(1,27),(2,15),(2,30),(3,18),(3,21);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#ec2434','published','2023-05-02 21:00:32','2023-05-02 21:00:32'),(2,'New','#00c9a7','published','2023-05-02 21:00:32','2023-05-02 21:00:32'),(3,'Sale','#fe9931','published','2023-05-02 21:00:32','2023-05-02 21:00:32');
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
INSERT INTO `ec_product_labels_translations` VALUES ('vi',1,'Nổi bật',NULL),('vi',2,'Mới',NULL),('vi',3,'Giảm giá',NULL);
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,2),(1,4),(2,3),(2,6),(3,2),(3,3),(3,4),(4,3),(4,4),(4,5),(5,2),(5,3),(5,4),(6,1),(6,3),(6,6),(7,1),(7,6),(8,1),(8,6),(9,6),(10,3),(10,6),(11,2),(11,5),(12,1),(12,3),(12,5),(13,1),(13,3),(13,6),(14,3),(14,6),(15,3),(15,4),(16,2),(16,3),(16,4),(17,4),(17,5),(18,1),(18,2),(18,3),(19,2),(19,3),(19,4),(20,2),(20,5),(20,6),(21,1),(21,3),(22,2),(22,5),(23,2),(23,5),(23,6),(24,1),(24,2),(24,4),(25,1),(25,2),(25,6),(26,6),(27,2),(27,5),(28,3),(28,4),(28,5),(29,1),(29,5),(30,2),(30,5),(30,6),(31,1),(31,4),(31,5);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2023-05-02 21:00:39','2023-05-02 21:00:39'),(2,'Mobile',NULL,'published','2023-05-02 21:00:39','2023-05-02 21:00:39'),(3,'Iphone',NULL,'published','2023-05-02 21:00:39','2023-05-02 21:00:39'),(4,'Printer',NULL,'published','2023-05-02 21:00:39','2023-05-02 21:00:39'),(5,'Office',NULL,'published','2023-05-02 21:00:39','2023-05-02 21:00:39'),(6,'IT',NULL,'published','2023-05-02 21:00:39','2023-05-02 21:00:39');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_variation_items_attribute_id_variation_id_index` (`attribute_id`,`variation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (33,1,17),(35,1,18),(37,1,19),(87,1,44),(99,1,50),(113,1,57),(135,1,68),(141,1,71),(145,1,73),(1,2,1),(17,2,9),(21,2,11),(23,2,12),(43,2,22),(47,2,24),(53,2,27),(55,2,28),(67,2,34),(83,2,42),(93,2,47),(97,2,49),(103,2,52),(111,2,56),(133,2,67),(147,2,74),(153,2,77),(3,3,2),(5,3,3),(7,3,4),(9,3,5),(25,3,13),(27,3,14),(41,3,21),(45,3,23),(51,3,26),(71,3,36),(109,3,55),(115,3,58),(119,3,60),(129,3,65),(137,3,69),(139,3,70),(149,3,75),(11,4,6),(13,4,7),(15,4,8),(19,4,10),(49,4,25),(63,4,32),(65,4,33),(77,4,39),(81,4,41),(85,4,43),(143,4,72),(29,5,15),(31,5,16),(39,5,20),(57,5,29),(59,5,30),(61,5,31),(69,5,35),(73,5,37),(75,5,38),(79,5,40),(89,5,45),(91,5,46),(95,5,48),(101,5,51),(105,5,53),(107,5,54),(117,5,59),(121,5,61),(123,5,62),(125,5,63),(127,5,64),(131,5,66),(151,5,76),(42,6,21),(62,6,31),(64,6,32),(72,6,36),(76,6,38),(120,6,60),(134,6,67),(136,6,68),(4,7,2),(10,7,5),(32,7,16),(44,7,22),(48,7,24),(78,7,39),(84,7,42),(86,7,43),(90,7,45),(98,7,49),(102,7,51),(104,7,52),(124,7,62),(132,7,66),(138,7,69),(142,7,71),(148,7,74),(154,7,77),(6,8,3),(12,8,6),(14,8,7),(16,8,8),(20,8,10),(26,8,13),(38,8,19),(50,8,25),(60,8,30),(68,8,34),(70,8,35),(74,8,37),(122,8,61),(152,8,76),(2,9,1),(8,9,4),(18,9,9),(24,9,12),(28,9,14),(30,9,15),(34,9,17),(52,9,26),(58,9,29),(66,9,33),(80,9,40),(82,9,41),(88,9,44),(94,9,47),(112,9,56),(116,9,58),(128,9,64),(140,9,70),(150,9,75),(22,10,11),(36,10,18),(40,10,20),(46,10,23),(54,10,27),(56,10,28),(92,10,46),(96,10,48),(100,10,50),(106,10,53),(108,10,54),(110,10,55),(114,10,57),(118,10,59),(126,10,63),(130,10,65),(144,10,72),(146,10,73);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ec_product_variations_product_id_configurable_product_id_index` (`product_id`,`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,32,1,1),(2,33,1,0),(3,34,2,1),(4,35,2,0),(5,36,2,0),(6,37,2,0),(7,38,2,0),(8,39,3,1),(9,40,4,1),(10,41,4,0),(11,42,4,0),(12,43,4,0),(13,44,5,1),(14,45,5,0),(15,46,6,1),(16,47,6,0),(17,48,6,0),(18,49,7,1),(19,50,7,0),(20,51,7,0),(21,52,8,1),(22,53,8,0),(23,54,9,1),(24,55,9,0),(25,56,9,0),(26,57,10,1),(27,58,10,0),(28,59,11,1),(29,60,11,0),(30,61,12,1),(31,62,13,1),(32,63,14,1),(33,64,14,0),(34,65,14,0),(35,66,15,1),(36,67,15,0),(37,68,16,1),(38,69,16,0),(39,70,17,1),(40,71,17,0),(41,72,17,0),(42,73,18,1),(43,74,19,1),(44,75,19,0),(45,76,19,0),(46,77,19,0),(47,78,20,1),(48,79,20,0),(49,80,21,1),(50,81,21,0),(51,82,21,0),(52,83,22,1),(53,84,22,0),(54,85,22,0),(55,86,23,1),(56,87,23,0),(57,88,24,1),(58,89,24,0),(59,90,25,1),(60,91,25,0),(61,92,26,1),(62,93,26,0),(63,94,26,0),(64,95,26,0),(65,96,27,1),(66,97,27,0),(67,98,28,1),(68,99,28,0),(69,100,28,0),(70,101,29,1),(71,102,29,0),(72,103,29,0),(73,104,30,1),(74,105,30,0),(75,106,31,1),(76,107,31,0),(77,108,31,0);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2023-05-03',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,1,0),(2,1,0),(1,2,0),(2,2,0),(1,3,0),(2,3,0),(1,4,0),(2,4,0),(1,5,0),(2,5,0),(1,6,0),(2,6,0),(1,7,0),(2,7,0),(1,8,0),(2,8,0),(1,9,0),(2,9,0),(1,10,0),(2,10,0),(1,11,0),(2,11,0),(1,12,0),(2,12,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,16,0),(2,16,0),(1,17,0),(2,17,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(1,20,0),(2,20,0),(1,21,0),(2,21,0),(1,22,0),(2,22,0),(1,23,0),(2,23,0),(1,24,0),(2,24,0),(1,25,0),(2,25,0),(1,26,0),(2,26,0),(1,27,0),(2,27,0),(1,28,0),(2,28,0),(1,29,0),(2,29,0),(1,30,0),(2,30,0),(1,31,0),(2,31,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `wide` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_products_barcode_unique` (`barcode`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `ec_products_sale_type_index` (`sale_type`),
  KEY `ec_products_start_date_index` (`start_date`),
  KEY `ec_products_end_date_index` (`end_date`),
  KEY `ec_products_sale_price_index` (`sale_price`),
  KEY `ec_products_is_variation_index` (`is_variation`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Smart Home Speaker (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/1.jpg\",\"products\\/1-1.jpg\",\"products\\/1-2.jpg\",\"products\\/1-3.jpg\"]','HS-132-A0',0,14,0,1,1,2,0,0,494,NULL,NULL,NULL,20.00,10.00,15.00,876.00,1,73506,'2023-05-02 21:00:37','2023-05-02 21:00:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(2,'Headphone Ultra Bass','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/2.jpg\",\"products\\/2-1.jpg\",\"products\\/2-2.jpg\",\"products\\/2-3.jpg\"]','HS-170-A0',0,18,0,1,1,1,0,0,495,NULL,NULL,NULL,12.00,18.00,16.00,788.00,1,92664,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(3,'Boxed - Bluetooth Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/3.jpg\",\"products\\/3-1.jpg\",\"products\\/3-2.jpg\",\"products\\/3-3.jpg\"]','HS-121-A0',0,15,0,1,1,6,0,0,277,NULL,NULL,NULL,14.00,13.00,11.00,655.00,1,187904,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(4,'Chikie - Bluetooth Speaker','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/4.jpg\",\"products\\/4-1.jpg\",\"products\\/4-2.jpg\",\"products\\/4-3.jpg\"]','HS-182-A0',0,16,0,1,1,4,0,0,73,57.67,NULL,NULL,15.00,17.00,16.00,695.00,1,17640,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(5,'Camera Hikvision HK-35VS8 (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/5.jpg\",\"products\\/5-1.jpg\",\"products\\/5-2.jpg\",\"products\\/5-3.jpg\"]','HS-185-A0',0,17,0,1,1,7,0,0,47,NULL,NULL,NULL,18.00,20.00,10.00,787.00,1,187642,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(6,'Camera Samsung SS-24','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/6.jpg\",\"products\\/6-1.jpg\"]','HS-192-A0',0,15,0,1,1,4,0,0,59,NULL,NULL,NULL,12.00,15.00,15.00,830.00,1,106533,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(7,'Leather Watch Band','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/7.jpg\",\"products\\/7-1.jpg\"]','HS-158-A0',0,20,0,1,1,1,0,0,118,NULL,NULL,NULL,17.00,20.00,20.00,651.00,1,49512,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(8,'Apple iPhone 13 Plus','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/8.jpg\",\"products\\/8-1.jpg\"]','HS-108-A0',0,18,0,1,1,2,0,0,122,92.72,NULL,NULL,10.00,18.00,19.00,738.00,1,38856,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(9,'Macbook Pro 2015 (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/9.jpg\",\"products\\/9-1.jpg\"]','HS-118-A0',0,11,0,1,1,7,0,0,116,NULL,NULL,NULL,18.00,17.00,15.00,593.00,1,146728,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(10,'Macbook Air 12 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/10.jpg\",\"products\\/10-1.jpg\"]','HS-158-A0',0,10,0,1,1,6,0,0,492,NULL,NULL,NULL,14.00,16.00,13.00,894.00,1,38540,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(11,'Apple Watch Serial 7','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/11.jpg\",\"products\\/11-1.jpg\"]','HS-172-A0',0,19,0,1,1,3,0,0,112,NULL,NULL,NULL,19.00,10.00,19.00,536.00,1,28370,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(12,'Macbook Pro 13 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/12.jpg\",\"products\\/12-1.jpg\"]','HS-156-A0',0,10,0,1,1,5,0,0,113,81.36,NULL,NULL,12.00,19.00,15.00,857.00,1,157450,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(13,'Apple Keyboard (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/13.jpg\",\"products\\/13-1.jpg\"]','HS-146-A0',0,14,0,1,1,3,0,0,113,NULL,NULL,NULL,20.00,20.00,16.00,647.00,1,179949,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(14,'MacSafe 80W','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/14.jpg\",\"products\\/14-1.jpg\"]','HS-185-A0',0,16,0,1,1,1,0,0,130,NULL,NULL,NULL,14.00,19.00,15.00,891.00,1,168821,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(15,'Hand playstation','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/15.jpg\",\"products\\/15-1.jpg\"]','HS-101-A0',0,18,0,1,1,5,0,0,124,NULL,NULL,NULL,11.00,20.00,19.00,898.00,1,13130,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(16,'Apple Airpods Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/16.jpg\"]','HS-190-A0',0,15,0,1,1,2,0,0,116,103.24,NULL,NULL,15.00,11.00,11.00,503.00,1,70559,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(17,'Cool Smart Watches (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/17.jpg\"]','HS-179-A0',0,15,0,1,1,3,0,0,111,NULL,NULL,NULL,12.00,18.00,19.00,723.00,1,53798,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(18,'Black Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/18.jpg\",\"products\\/18-1.jpg\",\"products\\/18-2.jpg\"]','HS-186-A0',0,10,0,1,1,6,0,0,120,NULL,NULL,NULL,18.00,15.00,15.00,504.00,1,128789,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(19,'Leather Watch Band Serial 3','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/19.jpg\",\"products\\/19-1.jpg\"]','HS-172-A0',0,18,0,1,1,2,0,0,116,NULL,NULL,NULL,10.00,19.00,10.00,540.00,1,117444,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(20,'Macbook Pro 2015 13 inch','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/20.jpg\",\"products\\/20-1.jpg\"]','HS-118-A0',0,20,0,1,1,7,0,0,115,92,NULL,NULL,20.00,17.00,16.00,501.00,1,106474,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(21,'Historic Alarm Clock (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/21.jpg\",\"products\\/21-1.jpg\"]','HS-158-A0',0,11,0,1,1,2,0,0,112,NULL,NULL,NULL,11.00,17.00,15.00,720.00,1,29331,'2023-05-02 21:00:37','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(22,'Black Glasses','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/22.jpg\",\"products\\/22-1.jpg\"]','HS-152-A0',0,18,0,1,1,7,0,0,127,NULL,NULL,NULL,15.00,11.00,17.00,893.00,1,4774,'2023-05-02 21:00:37','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(23,'Phillips Mouse','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/23.jpg\",\"products\\/23-1.jpg\"]','HS-170-A0',0,12,0,1,1,4,0,0,121,NULL,NULL,NULL,18.00,15.00,11.00,804.00,1,5437,'2023-05-02 21:00:37','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(24,'Gaming Keyboard','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/24.jpg\",\"products\\/24-1.jpg\"]','HS-164-A0',0,15,0,1,1,7,0,0,111,79.92,NULL,NULL,13.00,16.00,19.00,618.00,1,142430,'2023-05-02 21:00:37','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(25,'Dual Camera 20MP (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/25.jpg\",\"products\\/25-1.jpg\"]','HS-134-A0',0,13,0,1,0,5,0,0,80.25,NULL,NULL,NULL,11.00,16.00,16.00,680.00,1,98405,'2023-05-02 21:00:37','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(26,'Smart Watches','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/26.jpg\",\"products\\/26-1.jpg\",\"products\\/26-2.jpg\"]','HS-166-A0',0,10,0,1,0,4,0,0,40.5,NULL,NULL,NULL,18.00,12.00,17.00,695.00,1,198419,'2023-05-02 21:00:37','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(27,'Beat Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/27.jpg\",\"products\\/27-1.jpg\"]','HS-150-A0',0,15,0,1,0,6,0,0,20,NULL,NULL,NULL,16.00,12.00,15.00,861.00,1,37573,'2023-05-02 21:00:37','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(28,'Red &amp; Black Headphone','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/28.jpg\",\"products\\/28-1.jpg\"]','HS-188-A0',0,15,0,1,0,4,0,0,53,37.63,NULL,NULL,18.00,14.00,19.00,729.00,1,124461,'2023-05-02 21:00:37','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(29,'Audio Equipment (Digital)','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/29.jpg\",\"products\\/29-1.jpg\"]','HS-128-A0',0,15,0,1,0,3,0,0,59,NULL,NULL,NULL,17.00,14.00,14.00,575.00,1,146362,'2023-05-02 21:00:37','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(30,'Smart Televisions','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/30.jpg\",\"products\\/30-1.jpg\"]','HS-162-A0',0,20,0,1,0,6,0,0,125,NULL,NULL,NULL,15.00,17.00,10.00,728.00,1,82325,'2023-05-02 21:00:37','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(31,'Samsung Smart TV','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline.</p>','<p>Short Hooded Coat features a straight body, large pockets with button flaps, ventilation air holes, and a string detail along the hemline. The style is completed with a drawstring hood, featuring Rains’ signature built-in cap. Made from waterproof, matte PU, this lightweight unisex rain jacket is an ode to nostalgia through its classic silhouette and utilitarian design details.</p>\n                                <p>- Casual unisex fit</p>\n\n                                <p>- 64% polyester, 36% polyurethane</p>\n\n                                <p>- Water column pressure: 4000 mm</p>\n\n                                <p>- Model is 187cm tall and wearing a size S / M</p>\n\n                                <p>- Unisex fit</p>\n\n                                <p>- Drawstring hood with built-in cap</p>\n\n                                <p>- Front placket with snap buttons</p>\n\n                                <p>- Ventilation under armpit</p>\n\n                                <p>- Adjustable cuffs</p>\n\n                                <p>- Double welted front pockets</p>\n\n                                <p>- Adjustable elastic string at hempen</p>\n\n                                <p>- Ultrasonically welded seams</p>\n\n                                <p>This is a unisex item, please check our clothing &amp; footwear sizing guide for specific Rains jacket sizing information. RAINS comes from the rainy nation of Denmark at the edge of the European continent, close to the ocean and with prevailing westerly winds; all factors that contribute to an average of 121 rain days each year. Arising from these rainy weather conditions comes the attitude that a quick rain shower may be beautiful, as well as moody- but first and foremost requires the right outfit. Rains focus on the whole experience of going outside on rainy days, issuing an invitation to explore even in the most mercurial weather.</p>','published','[\"products\\/31.jpg\",\"products\\/31-1.jpg\"]','HS-125-A0',0,17,0,1,0,6,0,0,56,NULL,NULL,NULL,10.00,11.00,10.00,591.00,1,32975,'2023-05-02 21:00:37','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(32,'Smart Home Speaker (Digital)',NULL,NULL,'published','[\"products\\/1.jpg\"]','HS-132-A0',0,14,0,1,0,2,1,0,494,NULL,NULL,NULL,20.00,10.00,15.00,876.00,NULL,0,'2023-05-02 21:00:37','2023-05-02 21:00:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(33,'Smart Home Speaker (Digital)',NULL,NULL,'published','[\"products\\/1-1.jpg\"]','HS-132-A0-A1',0,14,0,1,0,2,1,0,494,NULL,NULL,NULL,20.00,10.00,15.00,876.00,NULL,0,'2023-05-02 21:00:37','2023-05-02 21:00:37','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(34,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-170-A0',0,18,0,1,0,1,1,0,495,NULL,NULL,NULL,12.00,18.00,16.00,788.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(35,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2-1.jpg\"]','HS-170-A0-A1',0,18,0,1,0,1,1,0,495,NULL,NULL,NULL,12.00,18.00,16.00,788.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(36,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2-2.jpg\"]','HS-170-A0-A2',0,18,0,1,0,1,1,0,495,NULL,NULL,NULL,12.00,18.00,16.00,788.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(37,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2-3.jpg\"]','HS-170-A0-A3',0,18,0,1,0,1,1,0,495,NULL,NULL,NULL,12.00,18.00,16.00,788.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(38,'Headphone Ultra Bass',NULL,NULL,'published','[\"products\\/2.jpg\"]','HS-170-A0-A4',0,18,0,1,0,1,1,0,495,NULL,NULL,NULL,12.00,18.00,16.00,788.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(39,'Boxed - Bluetooth Headphone',NULL,NULL,'published','[\"products\\/3.jpg\"]','HS-121-A0',0,15,0,1,0,6,1,0,277,NULL,NULL,NULL,14.00,13.00,11.00,655.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(40,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4.jpg\"]','HS-182-A0',0,16,0,1,0,4,1,0,73,57.67,NULL,NULL,15.00,17.00,16.00,695.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(41,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4-1.jpg\"]','HS-182-A0-A1',0,16,0,1,0,4,1,0,73,60.59,NULL,NULL,15.00,17.00,16.00,695.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(42,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4-2.jpg\"]','HS-182-A0-A2',0,16,0,1,0,4,1,0,73,60.59,NULL,NULL,15.00,17.00,16.00,695.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(43,'Chikie - Bluetooth Speaker',NULL,NULL,'published','[\"products\\/4-3.jpg\"]','HS-182-A0-A3',0,16,0,1,0,4,1,0,73,51.1,NULL,NULL,15.00,17.00,16.00,695.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(44,'Camera Hikvision HK-35VS8 (Digital)',NULL,NULL,'published','[\"products\\/5.jpg\"]','HS-185-A0',0,17,0,1,0,7,1,0,47,NULL,NULL,NULL,18.00,20.00,10.00,787.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(45,'Camera Hikvision HK-35VS8 (Digital)',NULL,NULL,'published','[\"products\\/5-1.jpg\"]','HS-185-A0-A1',0,17,0,1,0,7,1,0,47,NULL,NULL,NULL,18.00,20.00,10.00,787.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(46,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-192-A0',0,15,0,1,0,4,1,0,59,NULL,NULL,NULL,12.00,15.00,15.00,830.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(47,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6-1.jpg\"]','HS-192-A0-A1',0,15,0,1,0,4,1,0,59,NULL,NULL,NULL,12.00,15.00,15.00,830.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(48,'Camera Samsung SS-24',NULL,NULL,'published','[\"products\\/6.jpg\"]','HS-192-A0-A2',0,15,0,1,0,4,1,0,59,NULL,NULL,NULL,12.00,15.00,15.00,830.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(49,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-158-A0',0,20,0,1,0,1,1,0,118,NULL,NULL,NULL,17.00,20.00,20.00,651.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(50,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7-1.jpg\"]','HS-158-A0-A1',0,20,0,1,0,1,1,0,118,NULL,NULL,NULL,17.00,20.00,20.00,651.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(51,'Leather Watch Band',NULL,NULL,'published','[\"products\\/7.jpg\"]','HS-158-A0-A2',0,20,0,1,0,1,1,0,118,NULL,NULL,NULL,17.00,20.00,20.00,651.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(52,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8.jpg\"]','HS-108-A0',0,18,0,1,0,2,1,0,122,92.72,NULL,NULL,10.00,18.00,19.00,738.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(53,'Apple iPhone 13 Plus',NULL,NULL,'published','[\"products\\/8-1.jpg\"]','HS-108-A0-A1',0,18,0,1,0,2,1,0,122,106.14,NULL,NULL,10.00,18.00,19.00,738.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(54,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-118-A0',0,11,0,1,0,7,1,0,116,NULL,NULL,NULL,18.00,17.00,15.00,593.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(55,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/9-1.jpg\"]','HS-118-A0-A1',0,11,0,1,0,7,1,0,116,NULL,NULL,NULL,18.00,17.00,15.00,593.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(56,'Macbook Pro 2015 (Digital)',NULL,NULL,'published','[\"products\\/9.jpg\"]','HS-118-A0-A2',0,11,0,1,0,7,1,0,116,NULL,NULL,NULL,18.00,17.00,15.00,593.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(57,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10.jpg\"]','HS-158-A0',0,10,0,1,0,6,1,0,492,NULL,NULL,NULL,14.00,16.00,13.00,894.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(58,'Macbook Air 12 inch',NULL,NULL,'published','[\"products\\/10-1.jpg\"]','HS-158-A0-A1',0,10,0,1,0,6,1,0,492,NULL,NULL,NULL,14.00,16.00,13.00,894.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(59,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11.jpg\"]','HS-172-A0',0,19,0,1,0,3,1,0,112,NULL,NULL,NULL,19.00,10.00,19.00,536.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(60,'Apple Watch Serial 7',NULL,NULL,'published','[\"products\\/11-1.jpg\"]','HS-172-A0-A1',0,19,0,1,0,3,1,0,112,NULL,NULL,NULL,19.00,10.00,19.00,536.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(61,'Macbook Pro 13 inch',NULL,NULL,'published','[\"products\\/12.jpg\"]','HS-156-A0',0,10,0,1,0,5,1,0,113,81.36,NULL,NULL,12.00,19.00,15.00,857.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(62,'Apple Keyboard (Digital)',NULL,NULL,'published','[\"products\\/13.jpg\"]','HS-146-A0',0,14,0,1,0,3,1,0,113,NULL,NULL,NULL,20.00,20.00,16.00,647.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(63,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-185-A0',0,16,0,1,0,1,1,0,130,NULL,NULL,NULL,14.00,19.00,15.00,891.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(64,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14-1.jpg\"]','HS-185-A0-A1',0,16,0,1,0,1,1,0,130,NULL,NULL,NULL,14.00,19.00,15.00,891.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(65,'MacSafe 80W',NULL,NULL,'published','[\"products\\/14.jpg\"]','HS-185-A0-A2',0,16,0,1,0,1,1,0,130,NULL,NULL,NULL,14.00,19.00,15.00,891.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(66,'Hand playstation',NULL,NULL,'published','[\"products\\/15.jpg\"]','HS-101-A0',0,18,0,1,0,5,1,0,124,NULL,NULL,NULL,11.00,20.00,19.00,898.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(67,'Hand playstation',NULL,NULL,'published','[\"products\\/15-1.jpg\"]','HS-101-A0-A1',0,18,0,1,0,5,1,0,124,NULL,NULL,NULL,11.00,20.00,19.00,898.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(68,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-190-A0',0,15,0,1,0,2,1,0,116,103.24,NULL,NULL,15.00,11.00,11.00,503.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(69,'Apple Airpods Serial 3',NULL,NULL,'published','[\"products\\/16.jpg\"]','HS-190-A0-A1',0,15,0,1,0,2,1,0,116,103.24,NULL,NULL,15.00,11.00,11.00,503.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(70,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-179-A0',0,15,0,1,0,3,1,0,111,NULL,NULL,NULL,12.00,18.00,19.00,723.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(71,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-179-A0-A1',0,15,0,1,0,3,1,0,111,NULL,NULL,NULL,12.00,18.00,19.00,723.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(72,'Cool Smart Watches (Digital)',NULL,NULL,'published','[\"products\\/17.jpg\"]','HS-179-A0-A2',0,15,0,1,0,3,1,0,111,NULL,NULL,NULL,12.00,18.00,19.00,723.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(73,'Black Smart Watches',NULL,NULL,'published','[\"products\\/18.jpg\"]','HS-186-A0',0,10,0,1,0,6,1,0,120,NULL,NULL,NULL,18.00,15.00,15.00,504.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(74,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-172-A0',0,18,0,1,0,2,1,0,116,NULL,NULL,NULL,10.00,19.00,10.00,540.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(75,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19-1.jpg\"]','HS-172-A0-A1',0,18,0,1,0,2,1,0,116,NULL,NULL,NULL,10.00,19.00,10.00,540.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(76,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-172-A0-A2',0,18,0,1,0,2,1,0,116,NULL,NULL,NULL,10.00,19.00,10.00,540.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(77,'Leather Watch Band Serial 3',NULL,NULL,'published','[\"products\\/19.jpg\"]','HS-172-A0-A3',0,18,0,1,0,2,1,0,116,NULL,NULL,NULL,10.00,19.00,10.00,540.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(78,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20.jpg\"]','HS-118-A0',0,20,0,1,0,7,1,0,115,92,NULL,NULL,20.00,17.00,16.00,501.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(79,'Macbook Pro 2015 13 inch',NULL,NULL,'published','[\"products\\/20-1.jpg\"]','HS-118-A0-A1',0,20,0,1,0,7,1,0,115,83.95,NULL,NULL,20.00,17.00,16.00,501.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(80,'Historic Alarm Clock (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-158-A0',0,11,0,1,0,2,1,0,112,NULL,NULL,NULL,11.00,17.00,15.00,720.00,NULL,0,'2023-05-02 21:00:38','2023-05-02 21:00:38','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(81,'Historic Alarm Clock (Digital)',NULL,NULL,'published','[\"products\\/21-1.jpg\"]','HS-158-A0-A1',0,11,0,1,0,2,1,0,112,NULL,NULL,NULL,11.00,17.00,15.00,720.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(82,'Historic Alarm Clock (Digital)',NULL,NULL,'published','[\"products\\/21.jpg\"]','HS-158-A0-A2',0,11,0,1,0,2,1,0,112,NULL,NULL,NULL,11.00,17.00,15.00,720.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(83,'Black Glasses',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-152-A0',0,18,0,1,0,7,1,0,127,NULL,NULL,NULL,15.00,11.00,17.00,893.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(84,'Black Glasses',NULL,NULL,'published','[\"products\\/22-1.jpg\"]','HS-152-A0-A1',0,18,0,1,0,7,1,0,127,NULL,NULL,NULL,15.00,11.00,17.00,893.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(85,'Black Glasses',NULL,NULL,'published','[\"products\\/22.jpg\"]','HS-152-A0-A2',0,18,0,1,0,7,1,0,127,NULL,NULL,NULL,15.00,11.00,17.00,893.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(86,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23.jpg\"]','HS-170-A0',0,12,0,1,0,4,1,0,121,NULL,NULL,NULL,18.00,15.00,11.00,804.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(87,'Phillips Mouse',NULL,NULL,'published','[\"products\\/23-1.jpg\"]','HS-170-A0-A1',0,12,0,1,0,4,1,0,121,NULL,NULL,NULL,18.00,15.00,11.00,804.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(88,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24.jpg\"]','HS-164-A0',0,15,0,1,0,7,1,0,111,79.92,NULL,NULL,13.00,16.00,19.00,618.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(89,'Gaming Keyboard',NULL,NULL,'published','[\"products\\/24-1.jpg\"]','HS-164-A0-A1',0,15,0,1,0,7,1,0,111,93.24,NULL,NULL,13.00,16.00,19.00,618.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(90,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/25.jpg\"]','HS-134-A0',0,13,0,1,0,5,1,0,80.25,NULL,NULL,NULL,11.00,16.00,16.00,680.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(91,'Dual Camera 20MP (Digital)',NULL,NULL,'published','[\"products\\/25-1.jpg\"]','HS-134-A0-A1',0,13,0,1,0,5,1,0,80.25,NULL,NULL,NULL,11.00,16.00,16.00,680.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(92,'Smart Watches',NULL,NULL,'published','[\"products\\/26.jpg\"]','HS-166-A0',0,10,0,1,0,4,1,0,40.5,NULL,NULL,NULL,18.00,12.00,17.00,695.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(93,'Smart Watches',NULL,NULL,'published','[\"products\\/26-1.jpg\"]','HS-166-A0-A1',0,10,0,1,0,4,1,0,40.5,NULL,NULL,NULL,18.00,12.00,17.00,695.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(94,'Smart Watches',NULL,NULL,'published','[\"products\\/26-2.jpg\"]','HS-166-A0-A2',0,10,0,1,0,4,1,0,40.5,NULL,NULL,NULL,18.00,12.00,17.00,695.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(95,'Smart Watches',NULL,NULL,'published','[\"products\\/26.jpg\"]','HS-166-A0-A3',0,10,0,1,0,4,1,0,40.5,NULL,NULL,NULL,18.00,12.00,17.00,695.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(96,'Beat Headphone',NULL,NULL,'published','[\"products\\/27.jpg\"]','HS-150-A0',0,15,0,1,0,6,1,0,20,NULL,NULL,NULL,16.00,12.00,15.00,861.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(97,'Beat Headphone',NULL,NULL,'published','[\"products\\/27-1.jpg\"]','HS-150-A0-A1',0,15,0,1,0,6,1,0,20,NULL,NULL,NULL,16.00,12.00,15.00,861.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(98,'Red & Black Headphone',NULL,NULL,'published','[\"products\\/28.jpg\"]','HS-188-A0',0,15,0,1,0,4,1,0,53,37.63,NULL,NULL,18.00,14.00,19.00,729.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(99,'Red &amp; Black Headphone',NULL,NULL,'published','[\"products\\/28-1.jpg\"]','HS-188-A0-A1',0,15,0,1,0,4,1,0,53,43.99,NULL,NULL,18.00,14.00,19.00,729.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(100,'Red &amp; Black Headphone',NULL,NULL,'published','[\"products\\/28.jpg\"]','HS-188-A0-A2',0,15,0,1,0,4,1,0,53,46.64,NULL,NULL,18.00,14.00,19.00,729.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(101,'Audio Equipment (Digital)',NULL,NULL,'published','[\"products\\/29.jpg\"]','HS-128-A0',0,15,0,1,0,3,1,0,59,NULL,NULL,NULL,17.00,14.00,14.00,575.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(102,'Audio Equipment (Digital)',NULL,NULL,'published','[\"products\\/29-1.jpg\"]','HS-128-A0-A1',0,15,0,1,0,3,1,0,59,NULL,NULL,NULL,17.00,14.00,14.00,575.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(103,'Audio Equipment (Digital)',NULL,NULL,'published','[\"products\\/29.jpg\"]','HS-128-A0-A2',0,15,0,1,0,3,1,0,59,NULL,NULL,NULL,17.00,14.00,14.00,575.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'digital',NULL,NULL),(104,'Smart Televisions',NULL,NULL,'published','[\"products\\/30.jpg\"]','HS-162-A0',0,20,0,1,0,6,1,0,125,NULL,NULL,NULL,15.00,17.00,10.00,728.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(105,'Smart Televisions',NULL,NULL,'published','[\"products\\/30-1.jpg\"]','HS-162-A0-A1',0,20,0,1,0,6,1,0,125,NULL,NULL,NULL,15.00,17.00,10.00,728.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(106,'Samsung Smart TV',NULL,NULL,'published','[\"products\\/31.jpg\"]','HS-125-A0',0,17,0,1,0,6,1,0,56,NULL,NULL,NULL,10.00,11.00,10.00,591.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(107,'Samsung Smart TV',NULL,NULL,'published','[\"products\\/31-1.jpg\"]','HS-125-A0-A1',0,17,0,1,0,6,1,0,56,NULL,NULL,NULL,10.00,11.00,10.00,591.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL),(108,'Samsung Smart TV',NULL,NULL,'published','[\"products\\/31.jpg\"]','HS-125-A0-A2',0,17,0,1,0,6,1,0,56,NULL,NULL,NULL,10.00,11.00,10.00,591.00,NULL,0,'2023-05-02 21:00:39','2023-05-02 21:00:39','in_stock',0,'Botble\\ACL\\Models\\User',NULL,'physical',NULL,NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
INSERT INTO `ec_products_translations` VALUES ('vi',1,'Loa thông minh',NULL,NULL),('vi',2,'Tai nghe Ultra Bass',NULL,NULL),('vi',3,'Đóng hộp - Tai nghe Bluetooth',NULL,NULL),('vi',4,'Chikie - Loa Bluetooth',NULL,NULL),('vi',5,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',6,'Camera Samsung SS-24',NULL,NULL),('vi',7,'Dây đeo đồng hồ bằng da',NULL,NULL),('vi',8,'Apple iPhone 13 Plus',NULL,NULL),('vi',9,'Macbook Pro 2015',NULL,NULL),('vi',10,'Macbook Air 12 inch',NULL,NULL),('vi',11,'Apple Watch Serial 7',NULL,NULL),('vi',12,'Macbook Pro 13 inch',NULL,NULL),('vi',13,'Bàn phím Apple',NULL,NULL),('vi',14,'MacSafe 80W',NULL,NULL),('vi',15,'Máy chơi game cầm tay',NULL,NULL),('vi',16,'Tai nghe Apple Airpods Serial 3',NULL,NULL),('vi',17,'Đồng hồ thông minh',NULL,NULL),('vi',18,'Đồng hồ thông minh màu đen',NULL,NULL),('vi',19,'Dây đeo đồng hồ dây da Serial 3',NULL,NULL),('vi',20,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',21,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',22,'Kính đen',NULL,NULL),('vi',23,'Chuột máy tính Phillips',NULL,NULL),('vi',24,'Bàn phím Trò chơi',NULL,NULL),('vi',25,'Camera kép 20MP',NULL,NULL),('vi',26,'Đồng hồ thông minh',NULL,NULL),('vi',27,'Tai nghe Best',NULL,NULL),('vi',28,'Tai nghe Đỏ & Đen',NULL,NULL),('vi',29,'Thiết bị âm thanh',NULL,NULL),('vi',30,'Tivi thông minh',NULL,NULL),('vi',31,'Tivi thông minh Samsung',NULL,NULL),('vi',32,'Loa thông minh',NULL,NULL),('vi',33,'Loa thông minh',NULL,NULL),('vi',34,'Tai nghe Ultra Bass',NULL,NULL),('vi',35,'Tai nghe Ultra Bass',NULL,NULL),('vi',36,'Tai nghe Ultra Bass',NULL,NULL),('vi',37,'Tai nghe Ultra Bass',NULL,NULL),('vi',38,'Tai nghe Ultra Bass',NULL,NULL),('vi',39,'Đóng hộp - Tai nghe Bluetooth',NULL,NULL),('vi',40,'Chikie - Loa Bluetooth',NULL,NULL),('vi',41,'Chikie - Loa Bluetooth',NULL,NULL),('vi',42,'Chikie - Loa Bluetooth',NULL,NULL),('vi',43,'Chikie - Loa Bluetooth',NULL,NULL),('vi',44,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',45,'Camera Hikvision HK-35VS8',NULL,NULL),('vi',46,'Camera Samsung SS-24',NULL,NULL),('vi',47,'Camera Samsung SS-24',NULL,NULL),('vi',48,'Camera Samsung SS-24',NULL,NULL),('vi',49,'Dây đeo đồng hồ bằng da',NULL,NULL),('vi',50,'Dây đeo đồng hồ bằng da',NULL,NULL),('vi',51,'Dây đeo đồng hồ bằng da',NULL,NULL),('vi',52,'Apple iPhone 13 Plus',NULL,NULL),('vi',53,'Apple iPhone 13 Plus',NULL,NULL),('vi',54,'Macbook Pro 2015',NULL,NULL),('vi',55,'Macbook Pro 2015',NULL,NULL),('vi',56,'Macbook Pro 2015',NULL,NULL),('vi',57,'Macbook Air 12 inch',NULL,NULL),('vi',58,'Macbook Air 12 inch',NULL,NULL),('vi',59,'Apple Watch Serial 7',NULL,NULL),('vi',60,'Apple Watch Serial 7',NULL,NULL),('vi',61,'Macbook Pro 13 inch',NULL,NULL),('vi',62,'Bàn phím Apple',NULL,NULL),('vi',63,'MacSafe 80W',NULL,NULL),('vi',64,'MacSafe 80W',NULL,NULL),('vi',65,'MacSafe 80W',NULL,NULL),('vi',66,'Máy chơi game cầm tay',NULL,NULL),('vi',67,'Máy chơi game cầm tay',NULL,NULL),('vi',68,'Tai nghe Apple Airpods Serial 3',NULL,NULL),('vi',69,'Tai nghe Apple Airpods Serial 3',NULL,NULL),('vi',70,'Đồng hồ thông minh',NULL,NULL),('vi',71,'Đồng hồ thông minh',NULL,NULL),('vi',72,'Đồng hồ thông minh',NULL,NULL),('vi',73,'Đồng hồ thông minh màu đen',NULL,NULL),('vi',74,'Dây đeo đồng hồ dây da Serial 3',NULL,NULL),('vi',75,'Dây đeo đồng hồ dây da Serial 3',NULL,NULL),('vi',76,'Dây đeo đồng hồ dây da Serial 3',NULL,NULL),('vi',77,'Dây đeo đồng hồ dây da Serial 3',NULL,NULL),('vi',78,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',79,'Macbook Pro 2015 13 inch',NULL,NULL),('vi',80,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',81,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',82,'Đồng hồ báo thức cổ điển',NULL,NULL),('vi',83,'Kính đen',NULL,NULL),('vi',84,'Kính đen',NULL,NULL),('vi',85,'Kính đen',NULL,NULL),('vi',86,'Chuột máy tính Phillips',NULL,NULL),('vi',87,'Chuột máy tính Phillips',NULL,NULL),('vi',88,'Bàn phím Trò chơi',NULL,NULL),('vi',89,'Bàn phím Trò chơi',NULL,NULL),('vi',90,'Camera kép 20MP',NULL,NULL),('vi',91,'Camera kép 20MP',NULL,NULL),('vi',92,'Đồng hồ thông minh',NULL,NULL),('vi',93,'Đồng hồ thông minh',NULL,NULL),('vi',94,'Đồng hồ thông minh',NULL,NULL),('vi',95,'Đồng hồ thông minh',NULL,NULL),('vi',96,'Tai nghe Best',NULL,NULL),('vi',97,'Tai nghe Best',NULL,NULL),('vi',98,'Tai nghe Đỏ & Đen',NULL,NULL),('vi',99,'Tai nghe Đỏ & Đen',NULL,NULL),('vi',100,'Tai nghe Đỏ & Đen',NULL,NULL),('vi',101,'Thiết bị âm thanh',NULL,NULL),('vi',102,'Thiết bị âm thanh',NULL,NULL),('vi',103,'Thiết bị âm thanh',NULL,NULL),('vi',104,'Tivi thông minh',NULL,NULL),('vi',105,'Tivi thông minh',NULL,NULL),('vi',106,'Tivi thông minh Samsung',NULL,NULL),('vi',107,'Tivi thông minh Samsung',NULL,NULL),('vi',108,'Tivi thông minh Samsung',NULL,NULL);
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double(8,2) NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `ec_reviews_product_id_customer_id_status_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,7,27,2.00,'Good app, good backup service and support. Good documentation.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(2,6,9,2.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\"]'),(3,3,15,1.00,'Good app, good backup service and support. Good documentation.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(4,3,30,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\"]'),(5,3,19,2.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/11.jpg\"}'),(6,8,9,2.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\"]'),(7,5,24,1.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\"]'),(8,6,18,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(9,7,16,2.00,'Good app, good backup service and support. Good documentation.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(10,2,29,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(11,8,10,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(12,7,13,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(13,5,23,2.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\",\"products\\/5.jpg\"]'),(14,6,3,4.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(15,2,24,1.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(16,4,11,2.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/31.jpg\"]'),(17,5,21,2.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\"]'),(18,3,5,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\",\"products\\/6.jpg\",\"products\\/24.jpg\"]'),(19,4,13,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-05-02 21:00:39','2023-05-02 21:00:39','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/23.jpg\"}'),(20,3,27,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/30.jpg\"}'),(21,1,4,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/23.jpg\"]'),(23,11,1,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\",\"products\\/7.jpg\"]'),(25,4,17,3.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/1.jpg\"]'),(26,9,27,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/14.jpg\"]'),(27,8,3,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(28,11,14,5.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/1.jpg\"]'),(29,1,10,5.00,'Best ecommerce CMS online store!','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(30,3,20,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(31,9,23,3.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/20.jpg\"]'),(32,4,5,3.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\"]'),(33,7,31,3.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/27.jpg\"]'),(34,5,9,1.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\"]'),(35,6,17,1.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(36,7,20,1.00,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(37,11,12,5.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\",\"products\\/6.jpg\"]'),(38,6,24,4.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\"]'),(39,1,9,1.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\",\"products\\/7.jpg\",\"products\\/27.jpg\"]'),(40,11,24,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/22.jpg\"}'),(41,4,27,1.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-05-02 21:00:39','2023-05-02 21:00:39','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/12.jpg\"}'),(42,1,27,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/24.jpg\"]'),(43,2,31,4.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/1.jpg\"]'),(44,3,29,3.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\"]'),(45,1,1,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(46,2,12,5.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\"]'),(47,11,23,2.00,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\"]'),(48,2,13,1.00,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/1.jpg\",\"products\\/5.jpg\"]'),(49,9,24,3.00,'Good app, good backup service and support. Good documentation.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\"]'),(50,7,12,3.00,'The code is good, in general, if you like it, can you give it 5 stars?','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/1.jpg\",\"products\\/5.jpg\",\"products\\/27.jpg\"]'),(52,3,11,4.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/19.jpg\"]'),(54,9,31,3.00,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','{\"0\":\"products\\/1.jpg\",\"2\":\"products\\/15.jpg\"}'),(55,6,19,4.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(56,6,13,3.00,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(57,6,12,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\",\"products\\/6.jpg\"]'),(58,8,12,1.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/12.jpg\"]'),(59,4,22,5.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/19.jpg\"]'),(60,10,1,3.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/1.jpg\"]'),(61,11,4,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\",\"products\\/5.jpg\",\"products\\/23.jpg\"]'),(62,9,10,1.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\"]'),(63,1,8,1.00,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/21.jpg\"]'),(67,9,19,2.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-05-02 21:00:39','2023-05-02 21:00:39','{\"0\":\"products\\/2.jpg\",\"2\":\"products\\/31.jpg\"}'),(68,7,29,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\",\"products\\/7.jpg\"]'),(69,10,27,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\"]'),(70,4,4,4.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(71,2,19,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-05-02 21:00:39','2023-05-02 21:00:39','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/14.jpg\"}'),(73,5,5,1.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\",\"products\\/6.jpg\",\"products\\/15.jpg\"]'),(74,7,15,1.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(75,6,4,4.00,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\",\"products\\/6.jpg\"]'),(76,11,7,2.00,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(77,2,11,3.00,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\"]'),(78,10,20,1.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/31.jpg\"]'),(80,7,18,5.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/13.jpg\"]'),(81,3,6,3.00,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\",\"products\\/7.jpg\",\"products\\/19.jpg\"]'),(83,1,14,2.00,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','{\"0\":\"products\\/3.jpg\",\"2\":\"products\\/12.jpg\"}'),(84,6,2,3.00,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\"]'),(85,2,20,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\"]'),(86,5,1,2.00,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/1.jpg\",\"products\\/7.jpg\",\"products\\/25.jpg\"]'),(87,11,6,4.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/17.jpg\"]'),(88,7,30,2.00,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\"]'),(89,9,3,4.00,'Good app, good backup service and support. Good documentation.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/4.jpg\",\"products\\/7.jpg\",\"products\\/13.jpg\"]'),(90,8,15,4.00,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/2.jpg\",\"products\\/5.jpg\"]'),(91,7,21,5.00,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(92,8,8,2.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/1.jpg\",\"products\\/6.jpg\"]'),(93,9,22,3.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\"]'),(94,1,21,5.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/1.jpg\",\"products\\/6.jpg\",\"products\\/13.jpg\"]'),(95,7,28,4.00,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\",\"products\\/5.jpg\"]'),(96,8,28,5.00,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/1.jpg\",\"products\\/7.jpg\"]'),(98,2,4,5.00,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\",\"products\\/6.jpg\",\"products\\/16.jpg\"]'),(99,8,17,1.00,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2023-05-02 21:00:39','2023-05-02 21:00:39','[\"products\\/3.jpg\"]'),(100,4,14,3.00,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2023-05-02 21:00:39','2023-05-02 21:00:39','{\"0\":\"products\\/4.jpg\",\"2\":\"products\\/10.jpg\"}');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
INSERT INTO `ec_shipment_histories` VALUES (1,'create_from_order','Shipping was created from order %order_id%',0,1,1,'2023-04-19 13:00:40','2023-04-19 13:00:40','Botble\\ACL\\Models\\User'),(2,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,1,1,'2023-05-01 05:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(3,'create_from_order','Shipping was created from order %order_id%',0,2,2,'2023-04-20 05:00:40','2023-04-20 05:00:40','Botble\\ACL\\Models\\User'),(4,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,2,2,'2023-05-01 07:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(5,'create_from_order','Shipping was created from order %order_id%',0,3,3,'2023-04-19 09:00:40','2023-04-19 09:00:40','Botble\\ACL\\Models\\User'),(6,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,3,3,'2023-05-01 09:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(7,'create_from_order','Shipping was created from order %order_id%',0,4,4,'2023-04-25 19:00:40','2023-04-25 19:00:40','Botble\\ACL\\Models\\User'),(8,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,4,4,'2023-05-01 11:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(9,'create_from_order','Shipping was created from order %order_id%',0,5,5,'2023-04-19 13:00:40','2023-04-19 13:00:40','Botble\\ACL\\Models\\User'),(10,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,5,5,'2023-05-01 13:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(11,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,5,5,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(12,'create_from_order','Shipping was created from order %order_id%',0,6,6,'2023-04-25 09:00:40','2023-04-25 09:00:40','Botble\\ACL\\Models\\User'),(13,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,6,6,'2023-05-01 15:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(14,'create_from_order','Shipping was created from order %order_id%',0,7,7,'2023-04-30 13:00:40','2023-04-30 13:00:40','Botble\\ACL\\Models\\User'),(15,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,7,7,'2023-05-01 17:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(16,'create_from_order','Shipping was created from order %order_id%',0,8,8,'2023-04-27 11:00:40','2023-04-27 11:00:40','Botble\\ACL\\Models\\User'),(17,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,8,8,'2023-05-01 19:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(18,'create_from_order','Shipping was created from order %order_id%',0,9,9,'2023-05-01 21:00:40','2023-05-01 21:00:40','Botble\\ACL\\Models\\User'),(19,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,9,9,'2023-05-01 21:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(20,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,9,9,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(21,'create_from_order','Shipping was created from order %order_id%',0,10,10,'2023-04-26 11:00:40','2023-04-26 11:00:40','Botble\\ACL\\Models\\User'),(22,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,10,10,'2023-05-01 23:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(23,'create_from_order','Shipping was created from order %order_id%',0,11,11,'2023-04-27 01:00:40','2023-04-27 01:00:40','Botble\\ACL\\Models\\User'),(24,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,11,11,'2023-05-02 01:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(25,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,11,11,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(26,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,11,11,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(27,'create_from_order','Shipping was created from order %order_id%',0,12,12,'2023-04-26 21:00:40','2023-04-26 21:00:40','Botble\\ACL\\Models\\User'),(28,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,12,12,'2023-05-02 03:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(29,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,12,12,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(30,'create_from_order','Shipping was created from order %order_id%',0,13,13,'2023-04-26 21:00:40','2023-04-26 21:00:40','Botble\\ACL\\Models\\User'),(31,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,13,13,'2023-05-02 05:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(32,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,13,13,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(33,'create_from_order','Shipping was created from order %order_id%',0,14,14,'2023-04-27 15:00:40','2023-04-27 15:00:40','Botble\\ACL\\Models\\User'),(34,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,14,14,'2023-05-02 07:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(35,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,14,14,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(36,'create_from_order','Shipping was created from order %order_id%',0,15,15,'2023-04-30 21:00:40','2023-04-30 21:00:40','Botble\\ACL\\Models\\User'),(37,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,15,15,'2023-05-02 09:00:40','2023-05-02 21:00:40','Botble\\ACL\\Models\\User'),(38,'create_from_order','Shipping was created from order %order_id%',0,16,16,'2023-04-29 13:00:40','2023-04-29 13:00:40','Botble\\ACL\\Models\\User'),(39,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,16,16,'2023-05-02 11:00:41','2023-05-02 21:00:41','Botble\\ACL\\Models\\User'),(40,'create_from_order','Shipping was created from order %order_id%',0,17,17,'2023-04-30 13:00:41','2023-04-30 13:00:41','Botble\\ACL\\Models\\User'),(41,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,17,17,'2023-05-02 13:00:41','2023-05-02 21:00:41','Botble\\ACL\\Models\\User'),(42,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,17,17,'2023-05-02 21:00:41','2023-05-02 21:00:41','Botble\\ACL\\Models\\User'),(43,'create_from_order','Shipping was created from order %order_id%',0,18,18,'2023-05-02 15:00:41','2023-05-02 15:00:41','Botble\\ACL\\Models\\User'),(44,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,18,18,'2023-05-02 15:00:41','2023-05-02 21:00:41','Botble\\ACL\\Models\\User'),(45,'update_cod_status','Updated COD status to Completed . Updated by: %user_name%',0,18,18,'2023-05-02 21:00:41','2023-05-02 21:00:41','Botble\\ACL\\Models\\User'),(46,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,18,18,'2023-05-02 21:00:41','2023-05-02 21:00:41','Botble\\ACL\\Models\\User'),(47,'create_from_order','Shipping was created from order %order_id%',0,19,19,'2023-05-02 05:00:41','2023-05-02 05:00:41','Botble\\ACL\\Models\\User'),(48,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,19,19,'2023-05-02 17:00:41','2023-05-02 21:00:41','Botble\\ACL\\Models\\User'),(49,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,19,19,'2023-05-02 21:00:41','2023-05-02 21:00:41','Botble\\ACL\\Models\\User'),(50,'create_from_order','Shipping was created from order %order_id%',0,20,20,'2023-05-02 13:00:41','2023-05-02 13:00:41','Botble\\ACL\\Models\\User'),(51,'update_status','Changed status of shipping to: Approved. Updated by: %user_name%',0,20,20,'2023-05-02 19:00:41','2023-05-02 21:00:41','Botble\\ACL\\Models\\User'),(52,'update_status','Changed status of shipping to: Delivered. Updated by: %user_name%',0,20,20,'2023-05-02 21:00:41','2023-05-02 21:00:41','Botble\\ACL\\Models\\User');
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double(8,2) DEFAULT '0.00',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
INSERT INTO `ec_shipments` VALUES (1,1,NULL,3990.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','JJD0072112984','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-11 04:00:40',NULL,NULL,NULL),(2,2,NULL,2432.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','JJD0071747000','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-12 04:00:40',NULL,NULL,NULL),(3,3,NULL,6546.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','JJD0040433896','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-11 04:00:40',NULL,NULL,NULL),(4,4,NULL,4637.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','JJD0076485500','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-05 04:00:40',NULL,NULL,NULL),(5,5,NULL,4737.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','JJD0033100915','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-11 04:00:40','2023-05-03 04:00:40',NULL,NULL),(6,6,NULL,3148.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','JJD0065015517','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-10 04:00:40',NULL,NULL,NULL),(7,7,NULL,2705.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','JJD0081511542','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-11 04:00:40',NULL,NULL,NULL),(8,8,NULL,7209.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','JJD0085783852','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-12 04:00:40',NULL,NULL,NULL),(9,9,NULL,4554.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','JJD0030515994','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-10 04:00:40','2023-05-03 04:00:40',NULL,NULL),(10,10,NULL,7920.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','JJD003416501','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-10 04:00:40',NULL,NULL,NULL),(11,11,NULL,5298.00,NULL,NULL,'','delivered',1433.90,'completed','pending',0.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','JJD0071599776','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-07 04:00:40','2023-05-03 04:00:40',NULL,NULL),(12,12,NULL,4402.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','JJD0089504719','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-07 04:00:40','2023-05-03 04:00:40',NULL,NULL),(13,13,NULL,4204.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','JJD0079822233','FastShipping','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-04 04:00:40','2023-05-03 04:00:40',NULL,NULL),(14,14,NULL,2315.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','JJD0059949081','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-05 04:00:40','2023-05-03 04:00:40',NULL,NULL),(15,15,NULL,1507.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:00:40','2023-05-02 21:00:40','JJD003943290','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-06 04:00:40',NULL,NULL,NULL),(16,16,NULL,6522.00,NULL,NULL,'','approved',0.00,'completed','pending',0.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','JJD002877334','DHL','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-12 04:00:41',NULL,NULL,NULL),(17,17,NULL,8184.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','JJD0015041497','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-07 04:00:41','2023-05-03 04:00:41',NULL,NULL),(18,18,NULL,4057.00,NULL,NULL,'','delivered',1386.50,'completed','pending',0.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','JJD0032668195','GHN','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-12 04:00:41','2023-05-03 04:00:41',NULL,NULL),(19,19,NULL,7632.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','JJD0074851711','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-07 04:00:41','2023-05-03 04:00:41',NULL,NULL),(20,20,NULL,3833.00,NULL,NULL,'','delivered',0.00,'completed','pending',0.00,0,'2023-05-02 21:00:41','2023-05-02 21:00:41','JJD0021534817','AliExpress','https://mydhl.express.dhl/us/en/tracking.html#/track-by-reference','2023-05-09 04:00:41','2023-05-03 04:00:41',NULL,NULL);
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',0.00,NULL,0.00,'2023-05-02 21:00:40','2023-05-02 21:00:40');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Shopwise','sales@botble.com','123-456-7890','123 Street, Old Trafford','US','New York','New York',1,1,'2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` double(8,6) DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10.000000,1,'published','2023-05-02 21:00:39','2023-05-02 21:00:39'),(2,'None',0.000000,2,'published','2023-05-02 21:00:39','2023-05-02 21:00:39'),(3,'Import Tax',15.000000,3,'published','2023-05-02 21:00:39','2023-05-02 21:00:39');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_wish_lists_product_id_customer_id_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(2,'Payment',1,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(3,'Order &amp; Returns',2,'published','2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
INSERT INTO `faq_categories_translations` VALUES ('vi',1,'VẬN CHUYỂN'),('vi',2,'THANH TOÁN'),('vi',3,'ĐƠN HÀNG & HOÀN TRẢ');
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
INSERT INTO `faqs_translations` VALUES ('vi',1,'Có những phương thức vận chuyển nào?','Ex Portland Pitchfork irure ria mép. Eutra fap trước khi họ bán hết theo đúng nghĩa đen. Aliquip ugh quyền xe đạp thực sự mlkshk, rượu bia thủ công mực seitan. '),('vi',2,'Bạn có giao hàng quốc tế không?','Áo hoodie túi tote Tofu mixtape. Quần đùi jean đánh chữ Wolf quinoa, túi messenger hữu cơ freegan cray. '),('vi',3,'Mất bao lâu để nhận được gói hàng của tôi?','Bữa nửa buổi ăn sáng bằng bụng heo quay từ máy đánh chữ VHS, cà phê có nguồn gốc đơn Paleo, Wes Anderson. Khoan Pitchfork linh hoạt, theo nghĩa đen là đổ qua fap theo nghĩa đen. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray bền vững slow-carb raw denim Church-key fap chillwave Etsy. +1 bộ dụng cụ đánh máy, đậu phụ Banksy Vice của American Apparel. '),('vi',4,'Phương thức thanh toán nào được chấp nhận?','Fashion Axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Quầy ảnh Voluptate fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur ria mép. Twee chia gian hàng chụp ảnh xe bán đồ ăn sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. '),('vi',5,'Mua trực tuyến có an toàn không?','Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia credit. Tiệc trên mái nhà Neutra Austin Brooklyn, Thundercats swag synth gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. '),('vi',6,'Làm cách nào để đặt hàng?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Định mức seitan trong tương lai. Master làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt chậm carb cấp độ tiếp theo. Vải thô denim polaroid nhạt từ trang trại đến bàn, đặt một con chim trên đó hình xăm lo-fi Wes Anderson Pinterest letterpress. Bậc thầy gian hàng ảnh Schlitz của Fingerstache McSweeney đang làm sạch thẻ bắt đầu bằng hashtag theo yêu cầu riêng, chillwave gentrify. '),('vi',7,'Làm cách nào để tôi có thể hủy hoặc thay đổi đơn hàng của mình?','Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Bữa tiệc nghệ thuật đích thực freegan semiotics jean shorts chia tín. Tiệc trên mái nhà Neutra Austin ở Brooklyn, synth Thundercats có gian hàng ảnh 8-bit. '),('vi',8,'Tôi có cần tài khoản để đặt hàng không?','Thundercats làm lung lay gian hàng ảnh 8-bit. Xà cạp letterpress kẻ sọc thủ công bia meh đạo đức Pinterest. Twee chia ảnh gian hàng xe bán thức ăn làm sẵn, bữa tiệc trên mái áo hoodie swag keytar PBR DIY. Cray ugh 3 wolf moon fap, rìu thời trang mỉa mai người bán thịt máy đánh chữ chambray VHS banjo nghệ thuật đường phố. '),('vi',9,'Làm cách nào để theo dõi đơn hàng của tôi?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Định mức seitan trong tương lai. Bậc thầy làm sạch American Apparel nhẹ nhàng làm sạch râu linh hoạt theo kiểu chậm carb cấp độ tiếp theo. '),('vi',10,'Làm cách nào để trả lại sản phẩm?','Kale chips Truffaut Williamsburg, fixie hashtag Pinterest raw denim c hambray uống giấm Carles street art Bushwick gastropub. Chìa khóa nhà thờ Wolf Tumblr. Xe tải thực phẩm kẻ sọc Echo Park YOLO cắn hella, giao dịch trực tiếp Thundercats legging quinoa trước khi bán hết. Có thể bạn chưa từng nghe nói về họ những người truyền bá vị umami đích thực uống giấm Pinterest Áo len Cosby, fingerstache fap High Life. ');
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','a199ae788c25b96dfa84e22347ded07e',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'vi','a199ae788c25b96dfa84e22347ded07e',2,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(3,'en_US','5a7be244672014ff30ec420f94058d7c',1,'Botble\\Menu\\Models\\MenuLocation'),(4,'en_US','f1ecbda06385b5502531634ac1360f8d',1,'Botble\\Menu\\Models\\Menu'),(5,'en_US','fa22a3e3e3b3a58897134a1960a8681a',2,'Botble\\Menu\\Models\\Menu'),(6,'en_US','a0ec68b6b489715f7a4145e881bbccb6',3,'Botble\\Menu\\Models\\Menu'),(7,'en_US','ea1037eeffb42cc4b095567e90bece70',4,'Botble\\Menu\\Models\\Menu'),(8,'vi','490d47ede771b7c98afcff25e0fa5ecf',2,'Botble\\Menu\\Models\\MenuLocation'),(9,'vi','f1ecbda06385b5502531634ac1360f8d',5,'Botble\\Menu\\Models\\Menu'),(10,'vi','fa22a3e3e3b3a58897134a1960a8681a',6,'Botble\\Menu\\Models\\Menu'),(11,'vi','a0ec68b6b489715f7a4145e881bbccb6',7,'Botble\\Menu\\Models\\Menu'),(12,'vi','ea1037eeffb42cc4b095567e90bece70',8,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0),(2,'Tiếng Việt','vi','vi','vn',0,1,0),(3,'Arabic','ar','ar','ar',0,2,1);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'1','1',1,'image/png',2165,'brands/1.png','[]','2023-05-02 21:00:31','2023-05-02 21:00:31',NULL),(2,0,'2','2',1,'image/png',2165,'brands/2.png','[]','2023-05-02 21:00:31','2023-05-02 21:00:31',NULL),(3,0,'3','3',1,'image/png',2165,'brands/3.png','[]','2023-05-02 21:00:31','2023-05-02 21:00:31',NULL),(4,0,'4','4',1,'image/png',2165,'brands/4.png','[]','2023-05-02 21:00:31','2023-05-02 21:00:31',NULL),(5,0,'5','5',1,'image/png',2165,'brands/5.png','[]','2023-05-02 21:00:31','2023-05-02 21:00:31',NULL),(6,0,'6','6',1,'image/png',2165,'brands/6.png','[]','2023-05-02 21:00:31','2023-05-02 21:00:31',NULL),(7,0,'7','7',1,'image/png',2165,'brands/7.png','[]','2023-05-02 21:00:31','2023-05-02 21:00:31',NULL),(8,0,'p-1','p-1',2,'image/png',2165,'product-categories/p-1.png','[]','2023-05-02 21:00:31','2023-05-02 21:00:31',NULL),(9,0,'p-2','p-2',2,'image/png',2165,'product-categories/p-2.png','[]','2023-05-02 21:00:31','2023-05-02 21:00:31',NULL),(10,0,'p-3','p-3',2,'image/png',2165,'product-categories/p-3.png','[]','2023-05-02 21:00:31','2023-05-02 21:00:31',NULL),(11,0,'p-4','p-4',2,'image/png',2165,'product-categories/p-4.png','[]','2023-05-02 21:00:32','2023-05-02 21:00:32',NULL),(12,0,'p-5','p-5',2,'image/png',2165,'product-categories/p-5.png','[]','2023-05-02 21:00:32','2023-05-02 21:00:32',NULL),(13,0,'p-6','p-6',2,'image/png',2165,'product-categories/p-6.png','[]','2023-05-02 21:00:32','2023-05-02 21:00:32',NULL),(14,0,'p-7','p-7',2,'image/png',2165,'product-categories/p-7.png','[]','2023-05-02 21:00:32','2023-05-02 21:00:32',NULL),(15,0,'1','1',3,'image/jpeg',2165,'customers/1.jpg','[]','2023-05-02 21:00:32','2023-05-02 21:00:32',NULL),(16,0,'10','10',3,'image/jpeg',2165,'customers/10.jpg','[]','2023-05-02 21:00:32','2023-05-02 21:00:32',NULL),(17,0,'2','2',3,'image/jpeg',2165,'customers/2.jpg','[]','2023-05-02 21:00:32','2023-05-02 21:00:32',NULL),(18,0,'3','3',3,'image/jpeg',2165,'customers/3.jpg','[]','2023-05-02 21:00:32','2023-05-02 21:00:32',NULL),(19,0,'4','4',3,'image/jpeg',2165,'customers/4.jpg','[]','2023-05-02 21:00:32','2023-05-02 21:00:32',NULL),(20,0,'5','5',3,'image/jpeg',2165,'customers/5.jpg','[]','2023-05-02 21:00:32','2023-05-02 21:00:32',NULL),(21,0,'6','6',3,'image/jpeg',2165,'customers/6.jpg','[]','2023-05-02 21:00:32','2023-05-02 21:00:32',NULL),(22,0,'7','7',3,'image/jpeg',2165,'customers/7.jpg','[]','2023-05-02 21:00:32','2023-05-02 21:00:32',NULL),(23,0,'8','8',3,'image/jpeg',2165,'customers/8.jpg','[]','2023-05-02 21:00:32','2023-05-02 21:00:32',NULL),(24,0,'9','9',3,'image/jpeg',2165,'customers/9.jpg','[]','2023-05-02 21:00:32','2023-05-02 21:00:32',NULL),(25,0,'1-1','1-1',4,'image/jpeg',2165,'products/1-1.jpg','[]','2023-05-02 21:00:33','2023-05-02 21:00:33',NULL),(26,0,'1-2','1-2',4,'image/jpeg',2165,'products/1-2.jpg','[]','2023-05-02 21:00:33','2023-05-02 21:00:33',NULL),(27,0,'1-3','1-3',4,'image/jpeg',2165,'products/1-3.jpg','[]','2023-05-02 21:00:33','2023-05-02 21:00:33',NULL),(28,0,'1','1',4,'image/jpeg',2165,'products/1.jpg','[]','2023-05-02 21:00:33','2023-05-02 21:00:33',NULL),(29,0,'10-1','10-1',4,'image/jpeg',2165,'products/10-1.jpg','[]','2023-05-02 21:00:33','2023-05-02 21:00:33',NULL),(30,0,'10','10',4,'image/jpeg',2165,'products/10.jpg','[]','2023-05-02 21:00:33','2023-05-02 21:00:33',NULL),(31,0,'11-1','11-1',4,'image/jpeg',2165,'products/11-1.jpg','[]','2023-05-02 21:00:33','2023-05-02 21:00:33',NULL),(32,0,'11','11',4,'image/jpeg',2165,'products/11.jpg','[]','2023-05-02 21:00:33','2023-05-02 21:00:33',NULL),(33,0,'12-1','12-1',4,'image/jpeg',2165,'products/12-1.jpg','[]','2023-05-02 21:00:33','2023-05-02 21:00:33',NULL),(34,0,'12','12',4,'image/jpeg',2165,'products/12.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(35,0,'13-1','13-1',4,'image/jpeg',2165,'products/13-1.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(36,0,'13','13',4,'image/jpeg',2165,'products/13.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(37,0,'14-1','14-1',4,'image/jpeg',2165,'products/14-1.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(38,0,'14','14',4,'image/jpeg',2165,'products/14.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(39,0,'15-1','15-1',4,'image/jpeg',2165,'products/15-1.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(40,0,'15','15',4,'image/jpeg',2165,'products/15.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(41,0,'16','16',4,'image/jpeg',2165,'products/16.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(42,0,'17','17',4,'image/jpeg',2165,'products/17.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(43,0,'18-1','18-1',4,'image/jpeg',2165,'products/18-1.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(44,0,'18-2','18-2',4,'image/jpeg',2165,'products/18-2.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(45,0,'18','18',4,'image/jpeg',2165,'products/18.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(46,0,'19-1','19-1',4,'image/jpeg',2165,'products/19-1.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(47,0,'19','19',4,'image/jpeg',2165,'products/19.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(48,0,'2-1','2-1',4,'image/jpeg',2165,'products/2-1.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(49,0,'2-2','2-2',4,'image/jpeg',2165,'products/2-2.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(50,0,'2-3','2-3',4,'image/jpeg',2165,'products/2-3.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(51,0,'2','2',4,'image/jpeg',2165,'products/2.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(52,0,'20-1','20-1',4,'image/jpeg',2165,'products/20-1.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(53,0,'20','20',4,'image/jpeg',2165,'products/20.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(54,0,'21-1','21-1',4,'image/jpeg',2165,'products/21-1.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(55,0,'21','21',4,'image/jpeg',2165,'products/21.jpg','[]','2023-05-02 21:00:34','2023-05-02 21:00:34',NULL),(56,0,'22-1','22-1',4,'image/jpeg',2165,'products/22-1.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(57,0,'22','22',4,'image/jpeg',2165,'products/22.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(58,0,'23-1','23-1',4,'image/jpeg',2165,'products/23-1.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(59,0,'23','23',4,'image/jpeg',2165,'products/23.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(60,0,'24-1','24-1',4,'image/jpeg',2165,'products/24-1.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(61,0,'24','24',4,'image/jpeg',2165,'products/24.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(62,0,'25-1','25-1',4,'image/jpeg',2165,'products/25-1.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(63,0,'25','25',4,'image/jpeg',2165,'products/25.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(64,0,'26-1','26-1',4,'image/jpeg',2165,'products/26-1.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(65,0,'26-2','26-2',4,'image/jpeg',2165,'products/26-2.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(66,0,'26','26',4,'image/jpeg',2165,'products/26.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(67,0,'27-1','27-1',4,'image/jpeg',2165,'products/27-1.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(68,0,'27','27',4,'image/jpeg',2165,'products/27.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(69,0,'28-1','28-1',4,'image/jpeg',2165,'products/28-1.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(70,0,'28','28',4,'image/jpeg',2165,'products/28.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(71,0,'29-1','29-1',4,'image/jpeg',2165,'products/29-1.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(72,0,'29','29',4,'image/jpeg',2165,'products/29.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(73,0,'3-1','3-1',4,'image/jpeg',2165,'products/3-1.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(74,0,'3-2','3-2',4,'image/jpeg',2165,'products/3-2.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(75,0,'3-3','3-3',4,'image/jpeg',2165,'products/3-3.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(76,0,'3','3',4,'image/jpeg',2165,'products/3.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(77,0,'30-1','30-1',4,'image/jpeg',2165,'products/30-1.jpg','[]','2023-05-02 21:00:35','2023-05-02 21:00:35',NULL),(78,0,'30','30',4,'image/jpeg',2165,'products/30.jpg','[]','2023-05-02 21:00:36','2023-05-02 21:00:36',NULL),(79,0,'31-1','31-1',4,'image/jpeg',2165,'products/31-1.jpg','[]','2023-05-02 21:00:36','2023-05-02 21:00:36',NULL),(80,0,'31','31',4,'image/jpeg',2165,'products/31.jpg','[]','2023-05-02 21:00:36','2023-05-02 21:00:36',NULL),(81,0,'4-1','4-1',4,'image/jpeg',2165,'products/4-1.jpg','[]','2023-05-02 21:00:36','2023-05-02 21:00:36',NULL),(82,0,'4-2','4-2',4,'image/jpeg',2165,'products/4-2.jpg','[]','2023-05-02 21:00:36','2023-05-02 21:00:36',NULL),(83,0,'4-3','4-3',4,'image/jpeg',2165,'products/4-3.jpg','[]','2023-05-02 21:00:36','2023-05-02 21:00:36',NULL),(84,0,'4','4',4,'image/jpeg',2165,'products/4.jpg','[]','2023-05-02 21:00:36','2023-05-02 21:00:36',NULL),(85,0,'5-1','5-1',4,'image/jpeg',2165,'products/5-1.jpg','[]','2023-05-02 21:00:36','2023-05-02 21:00:36',NULL),(86,0,'5-2','5-2',4,'image/jpeg',2165,'products/5-2.jpg','[]','2023-05-02 21:00:36','2023-05-02 21:00:36',NULL),(87,0,'5-3','5-3',4,'image/jpeg',2165,'products/5-3.jpg','[]','2023-05-02 21:00:36','2023-05-02 21:00:36',NULL),(88,0,'5','5',4,'image/jpeg',2165,'products/5.jpg','[]','2023-05-02 21:00:36','2023-05-02 21:00:36',NULL),(89,0,'6-1','6-1',4,'image/jpeg',2165,'products/6-1.jpg','[]','2023-05-02 21:00:36','2023-05-02 21:00:36',NULL),(90,0,'6','6',4,'image/jpeg',2165,'products/6.jpg','[]','2023-05-02 21:00:36','2023-05-02 21:00:36',NULL),(91,0,'7-1','7-1',4,'image/jpeg',2165,'products/7-1.jpg','[]','2023-05-02 21:00:36','2023-05-02 21:00:36',NULL),(92,0,'7','7',4,'image/jpeg',2165,'products/7.jpg','[]','2023-05-02 21:00:36','2023-05-02 21:00:36',NULL),(93,0,'8-1','8-1',4,'image/jpeg',2165,'products/8-1.jpg','[]','2023-05-02 21:00:36','2023-05-02 21:00:36',NULL),(94,0,'8','8',4,'image/jpeg',2165,'products/8.jpg','[]','2023-05-02 21:00:36','2023-05-02 21:00:36',NULL),(95,0,'9-1','9-1',4,'image/jpeg',2165,'products/9-1.jpg','[]','2023-05-02 21:00:37','2023-05-02 21:00:37',NULL),(96,0,'9','9',4,'image/jpeg',2165,'products/9.jpg','[]','2023-05-02 21:00:37','2023-05-02 21:00:37',NULL),(97,0,'1','1',5,'image/jpeg',2165,'news/1.jpg','[]','2023-05-02 21:00:41','2023-05-02 21:00:41',NULL),(98,0,'10','10',5,'image/jpeg',2165,'news/10.jpg','[]','2023-05-02 21:00:41','2023-05-02 21:00:41',NULL),(99,0,'11','11',5,'image/jpeg',2165,'news/11.jpg','[]','2023-05-02 21:00:41','2023-05-02 21:00:41',NULL),(100,0,'2','2',5,'image/jpeg',2165,'news/2.jpg','[]','2023-05-02 21:00:41','2023-05-02 21:00:41',NULL),(101,0,'3','3',5,'image/jpeg',2165,'news/3.jpg','[]','2023-05-02 21:00:41','2023-05-02 21:00:41',NULL),(102,0,'4','4',5,'image/jpeg',2165,'news/4.jpg','[]','2023-05-02 21:00:41','2023-05-02 21:00:41',NULL),(103,0,'5','5',5,'image/jpeg',2165,'news/5.jpg','[]','2023-05-02 21:00:41','2023-05-02 21:00:41',NULL),(104,0,'6','6',5,'image/jpeg',2165,'news/6.jpg','[]','2023-05-02 21:00:41','2023-05-02 21:00:41',NULL),(105,0,'7','7',5,'image/jpeg',2165,'news/7.jpg','[]','2023-05-02 21:00:41','2023-05-02 21:00:41',NULL),(106,0,'8','8',5,'image/jpeg',2165,'news/8.jpg','[]','2023-05-02 21:00:41','2023-05-02 21:00:41',NULL),(107,0,'9','9',5,'image/jpeg',2165,'news/9.jpg','[]','2023-05-02 21:00:41','2023-05-02 21:00:41',NULL),(108,0,'1','1',6,'image/jpeg',2165,'testimonials/1.jpg','[]','2023-05-02 21:00:42','2023-05-02 21:00:42',NULL),(109,0,'2','2',6,'image/jpeg',2165,'testimonials/2.jpg','[]','2023-05-02 21:00:42','2023-05-02 21:00:42',NULL),(110,0,'3','3',6,'image/jpeg',2165,'testimonials/3.jpg','[]','2023-05-02 21:00:42','2023-05-02 21:00:42',NULL),(111,0,'4','4',6,'image/jpeg',2165,'testimonials/4.jpg','[]','2023-05-02 21:00:42','2023-05-02 21:00:42',NULL),(112,0,'1','1',7,'image/jpeg',3063,'sliders/1.jpg','[]','2023-05-02 21:00:42','2023-05-02 21:00:42',NULL),(113,0,'2','2',7,'image/jpeg',3063,'sliders/2.jpg','[]','2023-05-02 21:00:42','2023-05-02 21:00:42',NULL),(114,0,'3','3',7,'image/jpeg',3063,'sliders/3.jpg','[]','2023-05-02 21:00:42','2023-05-02 21:00:42',NULL),(115,0,'american-express','american-express',8,'image/png',3209,'general/american-express.png','[]','2023-05-02 21:00:42','2023-05-02 21:00:42',NULL),(116,0,'b-1','b-1',8,'image/jpeg',1955,'general/b-1.jpg','[]','2023-05-02 21:00:42','2023-05-02 21:00:42',NULL),(117,0,'b-2','b-2',8,'image/jpeg',1955,'general/b-2.jpg','[]','2023-05-02 21:00:43','2023-05-02 21:00:43',NULL),(118,0,'b-3','b-3',8,'image/jpeg',1955,'general/b-3.jpg','[]','2023-05-02 21:00:43','2023-05-02 21:00:43',NULL),(119,0,'discover','discover',8,'image/png',2494,'general/discover.png','[]','2023-05-02 21:00:43','2023-05-02 21:00:43',NULL),(120,0,'favicon','favicon',8,'image/png',1803,'general/favicon.png','[]','2023-05-02 21:00:43','2023-05-02 21:00:43',NULL),(121,0,'logo-light','logo-light',8,'image/png',3736,'general/logo-light.png','[]','2023-05-02 21:00:43','2023-05-02 21:00:43',NULL),(122,0,'logo','logo',8,'image/png',3927,'general/logo.png','[]','2023-05-02 21:00:43','2023-05-02 21:00:43',NULL),(123,0,'master-card','master-card',8,'image/png',3407,'general/master-card.png','[]','2023-05-02 21:00:43','2023-05-02 21:00:43',NULL),(124,0,'newsletter','newsletter',8,'image/jpeg',1248,'general/newsletter.jpg','[]','2023-05-02 21:00:43','2023-05-02 21:00:43',NULL),(125,0,'paypal','paypal',8,'image/png',2670,'general/paypal.png','[]','2023-05-02 21:00:43','2023-05-02 21:00:43',NULL),(126,0,'visa','visa',8,'image/png',2841,'general/visa.png','[]','2023-05-02 21:00:43','2023-05-02 21:00:43',NULL),(127,0,'1','1',9,'image/jpeg',20539,'promotion/1.jpg','[]','2023-05-02 21:00:43','2023-05-02 21:00:43',NULL),(128,0,'2','2',9,'image/jpeg',18320,'promotion/2.jpg','[]','2023-05-02 21:00:43','2023-05-02 21:00:43',NULL),(129,0,'3','3',9,'image/jpeg',42872,'promotion/3.jpg','[]','2023-05-02 21:00:43','2023-05-02 21:00:43',NULL);
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'brands','brands',0,'2023-05-02 21:00:31','2023-05-02 21:00:31',NULL),(2,0,'product-categories','product-categories',0,'2023-05-02 21:00:31','2023-05-02 21:00:31',NULL),(3,0,'customers','customers',0,'2023-05-02 21:00:32','2023-05-02 21:00:32',NULL),(4,0,'products','products',0,'2023-05-02 21:00:33','2023-05-02 21:00:33',NULL),(5,0,'news','news',0,'2023-05-02 21:00:41','2023-05-02 21:00:41',NULL),(6,0,'testimonials','testimonials',0,'2023-05-02 21:00:42','2023-05-02 21:00:42',NULL),(7,0,'sliders','sliders',0,'2023-05-02 21:00:42','2023-05-02 21:00:42',NULL),(8,0,'general','general',0,'2023-05-02 21:00:42','2023-05-02 21:00:42',NULL),(9,0,'promotion','promotion',0,'2023-05-02 21:00:43','2023-05-02 21:00:43',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2023-05-02 21:00:42','2023-05-02 21:00:42'),(2,5,'main-menu','2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,NULL,NULL,'/',NULL,0,'Home',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(2,1,0,NULL,NULL,'/products',NULL,0,'Products',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(3,1,0,NULL,NULL,'#',NULL,0,'Shop',NULL,'_self',1,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(4,1,3,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/television',NULL,0,'Product Category',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(5,1,3,1,'Botble\\Ecommerce\\Models\\Brand','/brands/fashion-live',NULL,0,'Brand',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(6,1,3,1,'Botble\\Ecommerce\\Models\\ProductTag','/product-tags/electronic',NULL,0,'Product Tag',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(7,1,3,NULL,NULL,'products/beat-headphone',NULL,0,'Product Single',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(8,1,0,3,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog',NULL,'_self',1,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(9,1,8,3,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Left Sidebar',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(10,1,8,1,'Botble\\Blog\\Models\\Category','/news/ecommerce',NULL,0,'Blog Category',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(11,1,8,1,'Botble\\Blog\\Models\\Tag','/tags/general',NULL,0,'Blog Tag',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(12,1,8,NULL,NULL,'news/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Blog Single',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(13,1,0,5,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(14,1,0,2,'Botble\\Page\\Models\\Page','/contact-us',NULL,0,'Contact',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(15,2,0,4,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'About Us',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(16,2,0,5,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(17,2,0,6,'Botble\\Page\\Models\\Page','/location',NULL,0,'Location',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(18,2,0,7,'Botble\\Page\\Models\\Page','/affiliates',NULL,0,'Affiliates',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(19,2,0,2,'Botble\\Page\\Models\\Page','/contact-us',NULL,0,'Contact',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(20,3,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/television',NULL,0,'Television',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(21,3,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/home-audio-theaters',NULL,0,'Mobile',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(22,3,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/tv-videos',NULL,0,'Headphone',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(23,3,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/camera-photos-videos',NULL,0,'Watches',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(24,3,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/cellphones-accessories',NULL,0,'Game',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(25,4,0,NULL,NULL,'/customer/overview',NULL,0,'My profile',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(26,4,0,NULL,NULL,'/wishlist',NULL,0,'Wishlist',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(27,4,0,NULL,NULL,'customer/orders',NULL,0,'Orders',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(28,4,0,NULL,NULL,'/orders/tracking',NULL,0,'Order tracking',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(29,5,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(30,5,0,NULL,NULL,'/products',NULL,0,'Sản phẩm',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(31,5,0,NULL,NULL,'#',NULL,0,'Cửa hàng',NULL,'_self',1,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(32,5,31,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/television',NULL,0,'Danh mục sản phẩm',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(33,5,31,1,'Botble\\Ecommerce\\Models\\Brand','/brands/fashion-live',NULL,0,'Thương hiệu',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(34,5,31,1,'Botble\\Ecommerce\\Models\\ProductTag','/product-tags/electronic',NULL,0,'Tag sản phẩm',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(35,5,31,NULL,NULL,'products/beat-headphone',NULL,0,'Sản phẩm chi tiết',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(36,5,0,3,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Tin tức',NULL,'_self',1,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(37,5,36,3,'Botble\\Page\\Models\\Page','/blog',NULL,0,'Blog Left Sidebar',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(38,5,36,5,'Botble\\Blog\\Models\\Category',NULL,NULL,0,'Danh mục',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(39,5,36,6,'Botble\\Blog\\Models\\Tag',NULL,NULL,0,'Tag bài viết',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(40,5,36,NULL,NULL,'news/vi/4-expert-tips-on-how-to-choose-the-right-mens-wallet',NULL,0,'Bài viết chi tiết',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(41,5,0,5,'Botble\\Page\\Models\\Page','/faq',NULL,0,'FAQ',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(42,5,0,2,'Botble\\Page\\Models\\Page','/contact-us',NULL,0,'Liên hệ',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(43,6,0,4,'Botble\\Page\\Models\\Page','/about-us',NULL,0,'Về chúng tôi',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(44,6,0,5,'Botble\\Page\\Models\\Page','/faq',NULL,0,'Hỏi đáp',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(45,6,0,6,'Botble\\Page\\Models\\Page','/location',NULL,0,'Vị trí',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(46,6,0,7,'Botble\\Page\\Models\\Page','/affiliates',NULL,0,'Chi nhánh',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(47,6,0,2,'Botble\\Page\\Models\\Page','/contact-us',NULL,0,'Liên hệ',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(48,7,0,1,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/television',NULL,0,'Tivi',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(49,7,0,2,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/home-audio-theaters',NULL,0,'Di động',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(50,7,0,3,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/tv-videos',NULL,0,'Tai nghe',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(51,7,0,4,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/camera-photos-videos',NULL,0,'Đồng hồ',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(52,7,0,5,'Botble\\Ecommerce\\Models\\ProductCategory','/product-categories/cellphones-accessories',NULL,0,'Trò chơi',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(53,8,0,NULL,NULL,'/customer/overview',NULL,0,'Tài khoản của tôi',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(54,8,0,NULL,NULL,'/wishlist',NULL,0,'Danh sách yêu thích',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(55,8,0,NULL,NULL,'customer/orders',NULL,0,'Đơn hàng',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(56,8,0,NULL,NULL,'/orders/tracking',NULL,0,'Theo dõi đơn hàng',NULL,'_self',0,'2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(2,'Useful Links','useful-links','published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(3,'Categories','categories','published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(4,'My Account','my-account','published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(5,'Menu chính','menu-chinh','published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(6,'Liên kết hữu ích','lien-ket-huu-ich','published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(7,'Danh mục','danh-muc','published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(8,'Tài khoản','tai-khoan','published','2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'icon','[\"flaticon-tv\"]',1,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:00:32','2023-05-02 21:00:32'),(2,'icon','[\"flaticon-responsive\"]',10,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:00:32','2023-05-02 21:00:32'),(3,'icon','[\"flaticon-headphones\"]',14,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:00:32','2023-05-02 21:00:32'),(4,'icon','[\"flaticon-watch\"]',19,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:00:32','2023-05-02 21:00:32'),(5,'icon','[\"flaticon-console\"]',24,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:00:32','2023-05-02 21:00:32'),(6,'icon','[\"flaticon-camera\"]',25,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:00:32','2023-05-02 21:00:32'),(7,'icon','[\"flaticon-music-system\"]',26,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:00:32','2023-05-02 21:00:32'),(8,'icon','[\"flaticon-responsive\"]',27,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:00:32','2023-05-02 21:00:32'),(9,'icon','[\"flaticon-plugins\"]',28,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:00:32','2023-05-02 21:00:32'),(10,'icon','[\"flaticon-music-system\"]',29,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:00:32','2023-05-02 21:00:32'),(11,'icon','[\"flaticon-monitor\"]',30,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:00:32','2023-05-02 21:00:32'),(12,'icon','[\"flaticon-printer\"]',31,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:00:32','2023-05-02 21:00:32'),(13,'icon','[\"flaticon-tv\"]',32,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:00:32','2023-05-02 21:00:32'),(14,'icon','[\"flaticon-fax\"]',33,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:00:32','2023-05-02 21:00:32'),(15,'icon','[\"flaticon-mouse\"]',34,'Botble\\Ecommerce\\Models\\ProductCategory','2023-05-02 21:00:32','2023-05-02 21:00:32'),(16,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',1,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(17,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',2,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(18,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',3,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(19,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',4,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(20,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',5,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(21,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',6,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(22,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',7,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(23,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',8,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(24,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',9,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(25,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',10,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(26,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',11,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(27,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',12,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(28,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',13,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(29,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',14,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(30,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',15,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(31,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',16,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(32,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',17,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(33,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',18,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(34,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',19,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(35,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',20,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(36,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',21,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(37,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',22,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(38,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',23,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(39,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',24,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(40,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',25,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(41,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',26,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(42,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',27,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(43,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',28,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(44,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',29,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(45,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',30,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(46,'faq_schema_config','[[[{\"key\":\"question\",\"value\":\"What Shipping Methods Are Available?\"},{\"key\":\"answer\",\"value\":\"Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.\"}],[{\"key\":\"question\",\"value\":\"Do You Ship Internationally?\"},{\"key\":\"answer\",\"value\":\"Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.\"}],[{\"key\":\"question\",\"value\":\"How Long Will It Take To Get My Package?\"},{\"key\":\"answer\",\"value\":\"Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.\"}],[{\"key\":\"question\",\"value\":\"What Payment Methods Are Accepted?\"},{\"key\":\"answer\",\"value\":\"Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.\"}],[{\"key\":\"question\",\"value\":\"Is Buying On-Line Safe?\"},{\"key\":\"answer\",\"value\":\"Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.\"}]]]',31,'Botble\\Ecommerce\\Models\\Product','2023-05-02 21:00:37','2023-05-02 21:00:37'),(47,'button_text','[\"Shop now\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-05-02 21:00:42','2023-05-02 21:00:42'),(48,'button_text','[\"Discover now\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-05-02 21:00:42','2023-05-02 21:00:42'),(49,'button_text','[\"Shop now\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-05-02 21:00:42','2023-05-02 21:00:42'),(50,'button_text','[\"Mua ngay\"]',4,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-05-02 21:00:42','2023-05-02 21:00:42'),(51,'button_text','[\"Kh\\u00e1m ph\\u00e1 ngay\"]',5,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-05-02 21:00:42','2023-05-02 21:00:42'),(52,'button_text','[\"Mua ngay\"]',6,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_reset_tokens_table',1),(5,'2016_06_10_230148_create_acl_tables',1),(6,'2016_06_14_230857_create_menus_table',1),(7,'2016_06_28_221418_create_pages_table',1),(8,'2016_10_05_074239_create_setting_table',1),(9,'2016_11_28_032840_create_dashboard_widget_tables',1),(10,'2016_12_16_084601_create_widgets_table',1),(11,'2017_05_09_070343_create_media_tables',1),(12,'2017_11_03_070450_create_slug_table',1),(13,'2019_01_05_053554_create_jobs_table',1),(14,'2019_08_19_000000_create_failed_jobs_table',1),(15,'2019_12_14_000001_create_personal_access_tokens_table',1),(16,'2022_04_20_100851_add_index_to_media_table',1),(17,'2022_04_20_101046_add_index_to_menu_table',1),(18,'2022_07_10_034813_move_lang_folder_to_root',1),(19,'2022_08_04_051940_add_missing_column_expires_at',1),(20,'2022_09_01_000001_create_admin_notifications_tables',1),(21,'2022_10_14_024629_drop_column_is_featured',1),(22,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(23,'2022_12_02_093615_update_slug_index_columns',1),(24,'2023_01_30_024431_add_alt_to_media_table',1),(25,'2023_02_16_042611_drop_table_password_resets',1),(26,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(27,'2020_11_18_150916_ads_create_ads_table',2),(28,'2021_12_02_035301_add_ads_translations_table',2),(29,'2023_04_17_062645_add_open_in_new_tab',2),(30,'2015_06_29_025744_create_audit_history',3),(31,'2015_06_18_033822_create_blog_table',4),(32,'2021_02_16_092633_remove_default_value_for_author_type',4),(33,'2021_12_03_030600_create_blog_translations',4),(34,'2022_04_19_113923_add_index_to_table_posts',4),(35,'2016_06_17_091537_create_contacts_table',5),(36,'2020_03_05_041139_create_ecommerce_tables',6),(37,'2021_01_01_044147_ecommerce_create_flash_sale_table',6),(38,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',6),(39,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',6),(40,'2021_02_18_073505_update_table_ec_reviews',6),(41,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',6),(42,'2021_03_10_025153_change_column_tax_amount',6),(43,'2021_03_20_033103_add_column_availability_to_table_ec_products',6),(44,'2021_04_28_074008_ecommerce_create_product_label_table',6),(45,'2021_05_31_173037_ecommerce_create_ec_products_translations',6),(46,'2021_06_28_153141_correct_slugs_data',6),(47,'2021_08_17_105016_remove_column_currency_id_in_some_tables',6),(48,'2021_08_30_142128_add_images_column_to_ec_reviews_table',6),(49,'2021_09_01_115151_remove_unused_fields_in_ec_products',6),(50,'2021_10_04_030050_add_column_created_by_to_table_ec_products',6),(51,'2021_10_05_122616_add_status_column_to_ec_customers_table',6),(52,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',6),(53,'2021_11_23_071403_correct_languages_for_product_variations',6),(54,'2021_11_28_031808_add_product_tags_translations',6),(55,'2021_12_01_031123_add_featured_image_to_ec_products',6),(56,'2022_01_01_033107_update_table_ec_shipments',6),(57,'2022_02_16_042457_improve_product_attribute_sets',6),(58,'2022_03_22_075758_correct_product_name',6),(59,'2022_04_19_113334_add_index_to_ec_products',6),(60,'2022_04_28_144405_remove_unused_table',6),(61,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',6),(62,'2022_05_18_143720_add_index_to_table_ec_product_categories',6),(63,'2022_06_16_095633_add_index_to_some_tables',6),(64,'2022_06_30_035148_create_order_referrals_table',6),(65,'2022_07_24_153815_add_completed_at_to_ec_orders_table',6),(66,'2022_08_14_032836_create_ec_order_returns_table',6),(67,'2022_08_14_033554_create_ec_order_return_items_table',6),(68,'2022_08_15_040324_add_billing_address',6),(69,'2022_08_30_091114_support_digital_products_table',6),(70,'2022_09_13_095744_create_options_table',6),(71,'2022_09_13_104347_create_option_value_table',6),(72,'2022_10_05_163518_alter_table_ec_order_product',6),(73,'2022_10_12_041517_create_invoices_table',6),(74,'2022_10_12_142226_update_orders_table',6),(75,'2022_10_13_024916_update_table_order_returns',6),(76,'2022_10_21_030830_update_columns_in_ec_shipments_table',6),(77,'2022_10_28_021046_update_columns_in_ec_shipments_table',6),(78,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',6),(79,'2022_11_19_041643_add_ec_tax_product_table',6),(80,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',6),(81,'2022_12_17_041532_fix_address_in_order_invoice',6),(82,'2022_12_26_070329_create_ec_product_views_table',6),(83,'2023_01_04_033051_fix_product_categories',6),(84,'2023_01_09_050400_add_ec_global_options_translations_table',6),(85,'2023_01_10_093754_add_missing_option_value_id',6),(86,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',6),(87,'2023_01_26_021854_add_ec_customer_used_coupons_table',6),(88,'2023_02_08_015900_update_options_column_in_ec_order_product_table',6),(89,'2023_02_27_095752_remove_duplicate_reviews',6),(90,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',6),(91,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',6),(92,'2018_07_09_221238_create_faq_table',7),(93,'2021_12_03_082134_create_faq_translations',7),(94,'2016_10_03_032336_create_languages_table',8),(95,'2021_10_25_021023_fix-priority-load-for-language-advanced',9),(96,'2021_12_03_075608_create_page_translations',9),(97,'2019_11_18_061011_create_country_table',10),(98,'2021_12_03_084118_create_location_translations',10),(99,'2021_12_03_094518_migrate_old_location_data',10),(100,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',10),(101,'2022_01_16_085908_improve_plugin_location',10),(102,'2022_08_04_052122_delete_location_backup_tables',10),(103,'2023_04_23_061847_increase_state_translations_abbreviation_column',10),(104,'2017_10_24_154832_create_newsletter_table',11),(105,'2017_05_18_080441_create_payment_tables',12),(106,'2021_03_27_144913_add_customer_type_into_table_payments',12),(107,'2021_05_24_034720_make_column_currency_nullable',12),(108,'2021_08_09_161302_add_metadata_column_to_payments_table',12),(109,'2021_10_19_020859_update_metadata_field',12),(110,'2022_06_28_151901_activate_paypal_stripe_plugin',12),(111,'2022_07_07_153354_update_charge_id_in_table_payments',12),(112,'2017_07_11_140018_create_simple_slider_table',13),(113,'2018_07_09_214610_create_testimonial_table',14),(114,'2021_12_03_083642_create_testimonials_translations',14),(115,'2016_10_07_193005_create_translations_table',15);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Homepage','<div>[simple-slider key=\"home-slider\"][/simple-slider]</div><div>[featured-product-categories title=\"Top Categories\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[flash-sale title=\"Best deals for you\"][/flash-sale]</div><div>[product-collections title=\"Exclusive Products\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[trending-products title=\"Trending Products\"][/trending-products]</div><div>[product-blocks featured_product_title=\"Featured Products\" top_rated_product_title=\"Top Rated Products\" on_sale_product_title=\"On Sale Products\"][/product-blocks]</div><div>[featured-brands title=\"Our Brands\"][/featured-brands]</div><div>[featured-news title=\"Visit Our Blog\" subtitle=\"Our Blog updated the newest trend of the world regularly\"][/featured-news]</div><div>[testimonials title=\"Our Client Say!\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"Free Delivery\" subtitle1=\"Free shipping on all US order or order above $200\" icon2=\"flaticon-money-back\" title2=\"30 Day Returns Guarantee\" subtitle2=\"Simply return it within 30 days for an exchange\" icon3=\"flaticon-support\" title3=\"27/4 Online Support\" subtitle3=\"Contact us 24 hours a day, 7 days a week\"][/our-features]</div><div>[newsletter-form title=\"Join Our Newsletter Now\" subtitle=\"Register now to get updates on promotions.\"][/newsletter-form]</div>',1,NULL,'homepage',NULL,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(2,'Contact us','<p>[contact-form][/contact-form]</p>',1,NULL,'default',NULL,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(3,'Blog','<p>---</p>',1,NULL,'blog-sidebar',NULL,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(4,'About us','<p>I wish I could show you our cat Dinah: I think that proved it at all. \'But perhaps it was as much as serpents do, you know.\' He was an old Turtle--we used to say.\' \'So he did, so he did,\' said the Queen, tossing her head in the after-time, be herself a grown woman; and how she was talking. Alice could not stand, and she sat still and said \'That\'s very important,\' the King eagerly, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the jurymen on to the door, and.</p>',1,NULL,'default',NULL,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(5,'FAQ','<div>[faqs][/faqs]</div>',1,NULL,'default',NULL,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(6,'Location','<p>Mouse to tell me the truth: did you manage on the ground near the door of the sea.\' \'I couldn\'t afford to learn it.\' said the Hatter. \'He won\'t stand beating. Now, if you could see her after the candle is blown out, for she felt certain it must be kind to them,\' thought Alice, \'it\'ll never do to ask: perhaps I shall have to turn into a butterfly, I should think!\' (Dinah was the White Rabbit, with a yelp of delight, and rushed at the Gryphon answered, very nearly carried it out to sea. So they.</p>',1,NULL,'default',NULL,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(7,'Affiliates','<p>O Mouse!\' (Alice thought this must be collected at once crowded round her, calling out in a moment. \'Let\'s go on till you come to the shore, and then quietly marched off after the birds! Why, she\'ll eat a little recovered from the roof. There were doors all round her, calling out in a long, low hall, which was the Duchess\'s cook. She carried the pepper-box in her pocket) till she was quite tired and out of a muchness?\' \'Really, now you ask me,\' said Alice, who was talking. Alice could hear the.</p>',1,NULL,'default',NULL,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(8,'Brands','<p>[all-brands][/all-brands]</p>',1,NULL,'default',NULL,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
INSERT INTO `pages_translations` VALUES ('vi',1,'Trang chủ',NULL,'<div>[simple-slider key=\"slider-trang-chu\"][/simple-slider]</div><div>[featured-product-categories title=\"Danh mục nổi bật\" subtitle=\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus blandit massa enim Nullam nunc varius.\"][/featured-product-categories]</div><div>[flash-sale title=\"Khuyến mãi tốt nhất cho bạn\"][/flash-sale]</div><div>[product-collections title=\"Sản phẩm độc quyền\"][/product-collections]</div><div>[theme-ads key_1=\"IZ6WU8KUALYD\" key_2=\"ILSFJVYFGCPZ\" key_3=\"ZDOZUZZIU7FT\"][/theme-ads]</div><div>[trending-products title=\"Sản phẩm xu hướng\"][/trending-products]</div><div>[product-blocks featured_product_title=\"Nổi bật\" top_rated_product_title=\"Xếp hạng cao nhất\" on_sale_product_title=\"Đang khuyến mãi\"][/product-blocks]</div><div>[featured-brands title=\"Thương hiệu\"][/featured-brands]</div><div>[featured-news title=\"Tin tức\" subtitle=\"Blog của chúng tôi cập nhật các xu hướng mới nhất của thế giới thường xuyên\"][/featured-news]</div><div>[testimonials title=\"Nhận xét từ khách hàng!\"][/testimonials]</div><div>[our-features icon1=\"flaticon-shipped\" title1=\"Miễn phí vận chuyển\" subtitle1=\"Giao hàng miễn phí cho tất cả các đơn đặt hàng tại Hoa Kỳ hoặc đơn hàng trên $200\" icon2=\"flaticon-money-back\" title2=\"Đảm bảo hoàn trả trong 30 ngày\" subtitle2=\"Chỉ cần trả lại nó trong vòng 30 ngày để đổi\" icon3=\"flaticon-support\" title3=\"Hỗ trợ trực tuyến 27/4\" subtitle3=\"Liên hệ với chúng tôi 24 giờ một ngày, 7 ngày một tuần\"][/our-features]</div><div>[newsletter-form title=\"Theo dõi bản tin ngay bây giờ\" subtitle=\"Đăng ký ngay để cập nhật các chương trình khuyến mãi.\"][/newsletter-form]</div>'),('vi',2,'Liên hệ',NULL,'<p>[contact-form][/contact-form]</p>'),('vi',3,'Tin tức',NULL,'<p>---</p>'),('vi',4,'Về chúng tôi',NULL,'<p>Alice put down the bottle, saying to herself that perhaps it was an old Crab took the thimble, saying \'We beg your acceptance of this pool? I am to see the earth takes twenty-four hours to turn into a cucumber-frame, or something of the garden: the roses growing on it but tea. \'I don\'t believe it,\' said Alice, \'I\'ve often seen them so often, of course had to ask help of any good reason, and as it is.\' \'Then you shouldn\'t talk,\' said the Mock Turtle would be like, \'--for they haven\'t got much.</p>'),('vi',5,'Câu hỏi thường gặp',NULL,'<div>[faqs][/faqs]</div>'),('vi',6,'Vị trí',NULL,'<p>Canary called out \'The race is over!\' and they can\'t prove I did: there\'s no harm in trying.\' So she set off at once: one old Magpie began wrapping itself up and throw us, with the game,\' the Queen to-day?\' \'I should think you could draw treacle out of his teacup and bread-and-butter, and went on in a sulky tone, as it was her dream:-- First, she dreamed of little birds and animals that had made out the proper way of nursing it, (which was to find her way into that lovely garden. I think I can.</p>'),('vi',7,'Chi nhánh',NULL,'<p>Duchess said to the game. CHAPTER IX. The Mock Turtle went on all the arches are gone from this morning,\' said Alice a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I hardly know--No more, thank ye; I\'m better now--but I\'m a deal faster than it does.\' \'Which would NOT be an old conger-eel, that used to it in time,\' said the Hatter. \'Stolen!\' the King said to herself, \'I wish I hadn\'t cried so much!\' Alas! it was a dead silence. \'It\'s a pun!\' the King say in a very.</p>'),('vi',8,'Thương hiệu',NULL,'<p>[all-brands][/all-brands]</p>'),('vi',9,'Chính sách cookie',NULL,'<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>');
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'USD',0,'DIW2VB6HXF','paystack',NULL,365.25,1,'completed','confirm',6,NULL,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\Ecommerce\\Models\\Customer',NULL),(2,'USD',0,'KTCYCZCEXA','paypal',NULL,403.73,2,'completed','confirm',3,NULL,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\Ecommerce\\Models\\Customer',NULL),(3,'USD',0,'JGSJ5XDRKD','stripe',NULL,792.25,3,'completed','confirm',11,NULL,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\Ecommerce\\Models\\Customer',NULL),(4,'USD',0,'IS4VBKB99O','sslcommerz',NULL,688.15,4,'completed','confirm',2,NULL,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\Ecommerce\\Models\\Customer',NULL),(5,'USD',0,'EUDA5RCFRB','paypal',NULL,1054.70,5,'completed','confirm',10,NULL,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\Ecommerce\\Models\\Customer',NULL),(6,'USD',0,'GE4OLHF7BQ','razorpay',NULL,1201.73,6,'completed','confirm',10,NULL,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\Ecommerce\\Models\\Customer',NULL),(7,'USD',0,'WZ5F9PYN0S','stripe',NULL,467.30,7,'completed','confirm',5,NULL,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\Ecommerce\\Models\\Customer',NULL),(8,'USD',0,'JVI4GLXYZI','razorpay',NULL,2366.50,8,'completed','confirm',7,NULL,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\Ecommerce\\Models\\Customer',NULL),(9,'USD',0,'TSKPDLWLKE','mollie',NULL,1656.90,9,'completed','confirm',3,NULL,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\Ecommerce\\Models\\Customer',NULL),(10,'USD',0,'9OIMZD1GRO','stripe',NULL,1017.00,10,'completed','confirm',6,NULL,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\Ecommerce\\Models\\Customer',NULL),(11,'USD',0,'88R70SLCY7','cod',NULL,1433.90,11,'pending','confirm',9,NULL,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\Ecommerce\\Models\\Customer',NULL),(12,'USD',0,'JKSYUDN8IF','bank_transfer',NULL,844.90,12,'pending','confirm',11,NULL,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\Ecommerce\\Models\\Customer',NULL),(13,'USD',0,'ICBXI2RYJ5','paystack',NULL,2570.90,13,'completed','confirm',1,NULL,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\Ecommerce\\Models\\Customer',NULL),(14,'USD',0,'VDDQPR9RDI','mollie',NULL,439.90,14,'completed','confirm',4,NULL,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\Ecommerce\\Models\\Customer',NULL),(15,'USD',0,'OJOYJ50WUV','mollie',NULL,174.90,15,'completed','confirm',6,NULL,NULL,'2023-05-02 21:00:40','2023-05-02 21:00:40','Botble\\Ecommerce\\Models\\Customer',NULL),(16,'USD',0,'LBERGRTC4G','sslcommerz',NULL,919.70,16,'completed','confirm',3,NULL,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41','Botble\\Ecommerce\\Models\\Customer',NULL),(17,'USD',0,'E26ED2MGO9','bank_transfer',NULL,1280.30,17,'pending','confirm',9,NULL,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41','Botble\\Ecommerce\\Models\\Customer',NULL),(18,'USD',0,'9MWVBVN3FR','cod',NULL,1386.50,18,'pending','confirm',10,NULL,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41','Botble\\Ecommerce\\Models\\Customer',NULL),(19,'USD',0,'DFKJYEF5SA','stripe',NULL,578.15,19,'completed','confirm',4,NULL,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41','Botble\\Ecommerce\\Models\\Customer',NULL),(20,'USD',0,'IWYWSWDCEZ','razorpay',NULL,392.85,20,'completed','confirm',7,NULL,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41','Botble\\Ecommerce\\Models\\Customer',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,1),(3,1),(1,2),(4,2),(2,3),(4,3),(2,4),(3,4),(1,5),(3,5),(1,6),(4,6),(2,7),(3,7),(1,8),(4,8),(1,9),(3,9),(2,10),(3,10),(1,11),(4,11);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(1,2),(2,2),(3,2),(4,2),(5,2),(1,3),(2,3),(3,3),(4,3),(5,3),(1,4),(2,4),(3,4),(4,4),(5,4),(1,5),(2,5),(3,5),(4,5),(5,5),(1,6),(2,6),(3,6),(4,6),(5,6),(1,7),(2,7),(3,7),(4,7),(5,7),(1,8),(2,8),(3,8),(4,8),(5,8),(1,9),(2,9),(3,9),(4,9),(5,9),(1,10),(2,10),(3,10),(4,10),(5,10),(1,11),(2,11),(3,11),(4,11),(5,11);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `author_id` (`author_id`),
  KEY `author_type` (`author_type`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',283,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1671,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(3,'The Top 2020 Handbag Trends to Know','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',708,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(4,'How to Match the Color of Your Handbag With an Outfit','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1747,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(5,'How to Care for Leather Bags','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',1225,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',2252,NULL,'2023-05-02 21:00:41','2023-05-02 21:00:41'),(7,'Essential Qualities of Highly Successful Music','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',1774,NULL,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(8,'9 Things I Love About Shaving My Head','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1917,NULL,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(9,'Why Teamwork Really Makes The Dream Work','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',2419,NULL,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(10,'The World Caters to Average People','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'news/10.jpg',1232,NULL,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(11,'The litigants on the screen are not actors','You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1776,NULL,'2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
INSERT INTO `posts_translations` VALUES ('vi',1,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',2,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',3,'Xu hướng túi xách hàng đầu năm 2020 cần biết','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',4,'Cách Phối Màu Túi Xách Của Bạn Với Trang Phục','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',5,'Cách Chăm sóc Túi Da','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',6,'Chúng tôi đang nghiền ngẫm 10 xu hướng túi lớn nhất của mùa hè','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',7,'Những phẩm chất cần thiết của âm nhạc thành công cao','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',8,'9 điều tôi thích khi cạo đầu','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',9,'Tại sao làm việc theo nhóm thực sự biến giấc mơ thành công','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',10,'Thế giới phục vụ cho những người trung bình','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n'),('vi',11,'Các đương sự trên màn hình không phải là diễn viên','Bạn nên chú ý hơn khi chọn ví. Có rất nhiều trong số chúng trên thị trường với các mẫu mã và phong cách khác nhau. Khi bạn lựa chọn cẩn thận, bạn sẽ có thể mua một chiếc ví phù hợp với nhu cầu của bạn. Chưa kể nó sẽ giúp nâng tầm phong cách của bạn một cách đáng kể.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n<p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n<p style=\"text-align:center\"><img alt=\"f4\" src=\"/storage/news/1.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men&rsquo;s wallet for you:</em></strong></p>\n\n<h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n<p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even&nbsp;<strong>minimalist style</strong>&nbsp;is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n<p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don&rsquo;t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n<p style=\"text-align:center\"><img alt=\"f5\" src=\"/storage/news/2.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n<hr />\n<h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n<p>You should avoid having an over-sized wallet. Don&rsquo;t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers&rsquo; pocket. In addition, it will create a bulge and ruin your look.</p>\n\n<p>Before you go on to buy a new wallet, clean out your wallet and place all of the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don&rsquo;t need anymore.</p>\n\n<p style=\"text-align:center\"><img alt=\"f1\" src=\"/storage/news/3.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 3: Don&rsquo;t Limit Your Options Of Materials</strong></h4>\n\n<p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n<p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n<p style=\"text-align:center\"><img alt=\"f6\" height=\"375\" src=\"/storage/news/4.jpg\" /></p>\n\n<p><br />\n&nbsp;</p>\n\n<hr />\n<h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n<p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n<p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n<p style=\"text-align:center\"><img alt=\"f2\" height=\"400\" src=\"/storage/news/5.jpg\" /></p>\n\n<p>&nbsp;</p>\n');
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
INSERT INTO `role_users` VALUES (1,2,1,'2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"api.settings\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.destroy\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}',NULL,1,1,1,'2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"location\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"testimonial\",\"translation\",\"mollie\"]',NULL,'2023-05-02 21:00:31'),(4,'language_hide_default','1',NULL,NULL),(5,'language_switcher_display','list',NULL,NULL),(6,'language_display','all',NULL,NULL),(7,'language_hide_languages','[]',NULL,NULL),(8,'media_random_hash','1ed5cbbfafa38cd848861b78bda77f89',NULL,NULL),(9,'simple_slider_using_assets','0',NULL,NULL),(10,'permalink-botble-blog-models-post','news',NULL,NULL),(11,'permalink-botble-blog-models-category','news',NULL,NULL),(12,'permalink-botble-blog-models-tag','tags',NULL,NULL),(13,'payment_cod_status','1',NULL,NULL),(14,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,NULL),(15,'payment_bank_transfer_status','1',NULL,NULL),(16,'payment_bank_transfer_description','Please send money to our bank account: ACB - 8210 4345 19.',NULL,NULL),(17,'plugins_ecommerce_customer_new_order_status','0',NULL,NULL),(18,'plugins_ecommerce_admin_new_order_status','0',NULL,NULL),(19,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,NULL),(20,'payment_stripe_payment_type','stripe_checkout',NULL,NULL),(24,'New York','Singapore',NULL,NULL),(26,'ecommerce_is_enabled_support_digital_products','1',NULL,NULL),(28,'ecommerce_store_name','Shopwise',NULL,NULL),(29,'ecommerce_store_phone','123-456-7890',NULL,NULL),(30,'ecommerce_store_address','123 Street, Old Trafford',NULL,NULL),(31,'ecommerce_store_state','New York',NULL,NULL),(32,'ecommerce_store_city','New York',NULL,NULL),(33,'ecommerce_store_country','US',NULL,NULL),(34,'admin_logo','general/logo-light.png',NULL,NULL),(35,'admin_favicon','general/favicon.png',NULL,NULL),(36,'theme','shopwise',NULL,NULL),(37,'theme-shopwise-site_title','Shopwise - Laravel Ecommerce system',NULL,NULL),(38,'theme-shopwise-seo_description','Shopwise is designed for the eCommerce site. His design is suitable for small and big projects. It was built for your Shopping store, fashion store, clothing store, digital store, watch store, men store, women store, kids store, accessories store, Shoe store and etc.',NULL,NULL),(39,'theme-shopwise-copyright','© 2023 Botble Technologies. All Rights Reserved.',NULL,NULL),(40,'theme-shopwise-favicon','general/favicon.png',NULL,NULL),(41,'theme-shopwise-logo','general/logo.png',NULL,NULL),(42,'theme-shopwise-logo_footer','general/logo-light.png',NULL,NULL),(43,'theme-shopwise-address','123 Street, Old Trafford, NewYork, USA',NULL,NULL),(44,'theme-shopwise-hotline','123-456-7890',NULL,NULL),(45,'theme-shopwise-email','info@sitename.com',NULL,NULL),(46,'theme-shopwise-payment_methods','[\"general\\/visa.png\",\"general\\/paypal.png\",\"general\\/master-card.png\",\"general\\/discover.png\",\"general\\/american-express.png\"]',NULL,NULL),(47,'theme-shopwise-newsletter_image','general/newsletter.jpg',NULL,NULL),(48,'theme-shopwise-homepage_id','1',NULL,NULL),(49,'theme-shopwise-blog_page_id','3',NULL,NULL),(50,'theme-shopwise-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(51,'theme-shopwise-cookie_consent_learn_more_url','https://shopwise.test/cookie-policy',NULL,NULL),(52,'theme-shopwise-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(53,'theme-shopwise-about-us','If you are going to use of Lorem Ipsum need to be sure there isn\'t hidden of text',NULL,NULL),(54,'theme-shopwise-vi-primary_font','Roboto Condensed',NULL,NULL),(55,'theme-shopwise-vi-copyright','© 2021 Botble Technologies. Tất cả quyền đã được bảo hộ.',NULL,NULL),(56,'theme-shopwise-vi-cookie_consent_message','Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ',NULL,NULL),(57,'theme-shopwise-vi-cookie_consent_learn_more_url','https://shopwise.test/cookie-policy',NULL,NULL),(58,'theme-shopwise-vi-cookie_consent_learn_more_text','Chính sách cookie',NULL,NULL),(59,'theme-shopwise-vi-homepage_id','1',NULL,NULL),(60,'theme-shopwise-vi-blog_page_id','3',NULL,NULL),(61,'theme-shopwise-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"ion-social-facebook\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#3b5998\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"ion-social-twitter\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#00acee\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"ion-social-youtube\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#c4302b\"}],[{\"key\":\"social-name\",\"value\":\"Instagram\"},{\"key\":\"social-icon\",\"value\":\"ion-social-instagram\"},{\"key\":\"social-url\",\"value\":\"\"},{\"key\":\"social-color\",\"value\":\"#3f729b\"}]]',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'Woman Fashion','sliders/1.jpg',NULL,'Get up to 50% off Today Only!',1,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(2,1,'Man Fashion','sliders/2.jpg',NULL,'50% off in all products',2,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(3,1,'Summer Sale','sliders/3.jpg',NULL,'Taking your Viewing Experience to Next Level',3,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(4,2,'Thời trang Nam','sliders/1.jpg',NULL,'Được giảm giá tới 50% Chỉ hôm nay!',1,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(5,2,'Thời trang Nữ','sliders/2.jpg',NULL,'Khuyến mãi 50% tất cả sản phẩm',2,'2023-05-02 21:00:42','2023-05-02 21:00:42'),(6,2,'Khuyến mãi hè','sliders/3.jpg',NULL,'Nâng trải nghiệm xem của bạn lên cấp độ tiếp theo',3,'2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider',NULL,'published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(2,'Slider trang chủ','slider-trang-chu',NULL,'published','2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'fashion-live',1,'Botble\\Ecommerce\\Models\\Brand','brands','2023-05-02 21:00:31','2023-05-02 21:00:31'),(2,'hand-crafted',2,'Botble\\Ecommerce\\Models\\Brand','brands','2023-05-02 21:00:31','2023-05-02 21:00:31'),(3,'mestonix',3,'Botble\\Ecommerce\\Models\\Brand','brands','2023-05-02 21:00:31','2023-05-02 21:00:31'),(4,'sunshine',4,'Botble\\Ecommerce\\Models\\Brand','brands','2023-05-02 21:00:31','2023-05-02 21:00:31'),(5,'pure',5,'Botble\\Ecommerce\\Models\\Brand','brands','2023-05-02 21:00:31','2023-05-02 21:00:31'),(6,'anfold',6,'Botble\\Ecommerce\\Models\\Brand','brands','2023-05-02 21:00:31','2023-05-02 21:00:31'),(7,'automotive',7,'Botble\\Ecommerce\\Models\\Brand','brands','2023-05-02 21:00:31','2023-05-02 21:00:31'),(8,'television',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(9,'home-audio-theaters',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(10,'tv-videos',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(11,'camera-photos-videos',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(12,'cellphones-accessories',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(13,'headphones',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(14,'videos-games',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(15,'wireless-speakers',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(16,'office-electronic',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(17,'mobile',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(18,'digital-cables',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(19,'audio-video-cables',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(20,'batteries',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(21,'headphone',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(22,'computer-tablets',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(23,'laptop',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(24,'monitors',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(25,'computer-components',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(26,'watches',19,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(27,'drive-storages',20,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(28,'gaming-laptop',21,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(29,'security-protection',22,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(30,'accessories',23,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(31,'game',24,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(32,'camera',25,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(33,'audio',26,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(34,'mobile-tablet',27,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(35,'accessories',28,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(36,'home-audio-theater',29,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(37,'tv-smart-box',30,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(38,'printer',31,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(39,'computer',32,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(40,'fax-machine',33,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(41,'mouse',34,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2023-05-02 21:00:32','2023-05-02 21:00:32'),(42,'smart-home-speaker',1,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(43,'headphone-ultra-bass',2,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(44,'boxed-bluetooth-headphone',3,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(45,'chikie-bluetooth-speaker',4,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(46,'camera-hikvision-hk-35vs8',5,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(47,'camera-samsung-ss-24',6,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(48,'leather-watch-band',7,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(49,'apple-iphone-13-plus',8,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(50,'macbook-pro-2015',9,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(51,'macbook-air-12-inch',10,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(52,'apple-watch-serial-7',11,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(53,'macbook-pro-13-inch',12,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(54,'apple-keyboard',13,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(55,'macsafe-80w',14,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(56,'hand-playstation',15,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(57,'apple-airpods-serial-3',16,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(58,'cool-smart-watches',17,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(59,'black-smart-watches',18,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(60,'leather-watch-band-serial-3',19,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(61,'macbook-pro-2015-13-inch',20,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(62,'historic-alarm-clock',21,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(63,'black-glasses',22,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(64,'phillips-mouse',23,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(65,'gaming-keyboard',24,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(66,'dual-camera-20mp',25,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(67,'smart-watches',26,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(68,'beat-headphone',27,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(69,'red-black-headphone',28,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(70,'audio-equipment',29,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(71,'smart-televisions',30,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(72,'samsung-smart-tv',31,'Botble\\Ecommerce\\Models\\Product','products','2023-05-02 21:00:37','2023-05-02 21:00:37'),(73,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-05-02 21:00:39','2023-05-02 21:00:39'),(74,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-05-02 21:00:39','2023-05-02 21:00:39'),(75,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-05-02 21:00:39','2023-05-02 21:00:39'),(76,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-05-02 21:00:39','2023-05-02 21:00:39'),(77,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-05-02 21:00:39','2023-05-02 21:00:39'),(78,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2023-05-02 21:00:39','2023-05-02 21:00:39'),(79,'ecommerce',1,'Botble\\Blog\\Models\\Category','news','2023-05-02 21:00:41','2023-05-02 21:00:42'),(80,'fashion',2,'Botble\\Blog\\Models\\Category','news','2023-05-02 21:00:41','2023-05-02 21:00:42'),(81,'electronic',3,'Botble\\Blog\\Models\\Category','news','2023-05-02 21:00:41','2023-05-02 21:00:42'),(82,'commercial',4,'Botble\\Blog\\Models\\Category','news','2023-05-02 21:00:41','2023-05-02 21:00:42'),(83,'general',1,'Botble\\Blog\\Models\\Tag','tags','2023-05-02 21:00:41','2023-05-02 21:00:42'),(84,'design',2,'Botble\\Blog\\Models\\Tag','tags','2023-05-02 21:00:41','2023-05-02 21:00:42'),(85,'fashion',3,'Botble\\Blog\\Models\\Tag','tags','2023-05-02 21:00:41','2023-05-02 21:00:42'),(86,'branding',4,'Botble\\Blog\\Models\\Tag','tags','2023-05-02 21:00:41','2023-05-02 21:00:42'),(87,'modern',5,'Botble\\Blog\\Models\\Tag','tags','2023-05-02 21:00:41','2023-05-02 21:00:42'),(88,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','news','2023-05-02 21:00:41','2023-05-02 21:00:42'),(89,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','news','2023-05-02 21:00:41','2023-05-02 21:00:42'),(90,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','news','2023-05-02 21:00:41','2023-05-02 21:00:42'),(91,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','news','2023-05-02 21:00:41','2023-05-02 21:00:42'),(92,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','news','2023-05-02 21:00:41','2023-05-02 21:00:42'),(93,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','news','2023-05-02 21:00:41','2023-05-02 21:00:42'),(94,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','news','2023-05-02 21:00:42','2023-05-02 21:00:42'),(95,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','news','2023-05-02 21:00:42','2023-05-02 21:00:42'),(96,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','news','2023-05-02 21:00:42','2023-05-02 21:00:42'),(97,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','news','2023-05-02 21:00:42','2023-05-02 21:00:42'),(98,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','news','2023-05-02 21:00:42','2023-05-02 21:00:42'),(99,'homepage',1,'Botble\\Page\\Models\\Page','','2023-05-02 21:00:42','2023-05-02 21:00:42'),(100,'contact-us',2,'Botble\\Page\\Models\\Page','','2023-05-02 21:00:42','2023-05-02 21:00:42'),(101,'blog',3,'Botble\\Page\\Models\\Page','','2023-05-02 21:00:42','2023-05-02 21:00:42'),(102,'about-us',4,'Botble\\Page\\Models\\Page','','2023-05-02 21:00:42','2023-05-02 21:00:42'),(103,'faq',5,'Botble\\Page\\Models\\Page','','2023-05-02 21:00:42','2023-05-02 21:00:42'),(104,'location',6,'Botble\\Page\\Models\\Page','','2023-05-02 21:00:42','2023-05-02 21:00:42'),(105,'affiliates',7,'Botble\\Page\\Models\\Page','','2023-05-02 21:00:42','2023-05-02 21:00:42'),(106,'brands',8,'Botble\\Page\\Models\\Page','','2023-05-02 21:00:42','2023-05-02 21:00:42'),(107,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned NOT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User','','published','2023-05-02 21:00:41','2023-05-02 21:00:41'),(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2023-05-02 21:00:41','2023-05-02 21:00:41'),(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2023-05-02 21:00:41','2023-05-02 21:00:41'),(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2023-05-02 21:00:41','2023-05-02 21:00:41'),(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2023-05-02 21:00:41','2023-05-02 21:00:41');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
INSERT INTO `tags_translations` VALUES ('vi',1,'Chung',NULL),('vi',2,'Thiết kế',NULL),('vi',3,'Thời trang',NULL),('vi',4,'Thương hiệu',NULL),('vi',5,'Hiện đại',NULL);
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'Adam Williams','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/1.jpg','CEO Of Microsoft','published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(2,'Retha Deowalim','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/2.jpg','CEO Of Apple','published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(3,'Sam J. Wasim','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/3.jpg','Pio Founder','published','2023-05-02 21:00:42','2023-05-02 21:00:42'),(4,'Usan Gulwarm','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','testimonials/4.jpg','CEO Of Facewarm','published','2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
INSERT INTO `testimonials_translations` VALUES ('vi',1,'Adam Williams',NULL,'Giám đốc Microsoft'),('vi',2,'Retha Deowalim',NULL,'Giám đốc Apple'),('vi',3,'Sam J. Wasim',NULL,'Nhà sáng lập Pio'),('vi',4,'Usan Gulwarm',NULL,'Giám đốc Facewarm');
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5249 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@botble.com',NULL,'$2y$10$BN7F3Bt9CopjJh.7fFAAMObtS3Z3/1HPaxpuXGMV6w9o5MQwDBgra',NULL,'2023-05-02 21:00:42','2023-05-02 21:00:42','Super','Admin','botble',NULL,1,1,NULL,NULL),(2,'user@botble.com',NULL,'$2y$10$rC7iBpn97PNQQlKWBeGILu3S.ULKluhR9PRK8CIlTIbLizfOdfGNm',NULL,'2023-05-02 21:00:42','2023-05-02 21:00:42','Normal','Admin','admin',NULL,0,0,'{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.manage.license\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"api.settings\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"plugins.ecommerce\":true,\"ecommerce.settings\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.destroy\":true,\"shipping_methods.index\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.invoice-template.index\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"location.bulk-import.index\":true,\"location.export.index\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true}',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','shopwise',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Useful Links\",\"menu_id\":\"useful-links\"}','2023-05-02 21:00:42','2023-05-02 21:00:42'),(2,'CustomMenuWidget','footer_sidebar','shopwise',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"categories\"}','2023-05-02 21:00:42','2023-05-02 21:00:42'),(3,'CustomMenuWidget','footer_sidebar','shopwise',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2023-05-02 21:00:42','2023-05-02 21:00:42'),(4,'CustomMenuWidget','footer_sidebar','shopwise-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft h\\u1eefu \\u00edch\",\"menu_id\":\"lien-ket-huu-ich\"}','2023-05-02 21:00:42','2023-05-02 21:00:42'),(5,'CustomMenuWidget','footer_sidebar','shopwise-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c\",\"menu_id\":\"danh-muc\"}','2023-05-02 21:00:42','2023-05-02 21:00:42'),(6,'CustomMenuWidget','footer_sidebar','shopwise-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"T\\u00e0i kho\\u1ea3n\",\"menu_id\":\"tai-khoan\"}','2023-05-02 21:00:42','2023-05-02 21:00:42');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-03 11:01:15