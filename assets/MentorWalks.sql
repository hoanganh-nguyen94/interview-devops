-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 192.168.56.56    Database: laravel
-- ------------------------------------------------------
-- Server version	8.0.26-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `m_countries`
--

DROP TABLE IF EXISTS `m_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_countries` (
                               `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
                               `parent_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                               `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                               `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                               `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                               `created_at` timestamp NULL DEFAULT NULL,
                               `updated_at` timestamp NULL DEFAULT NULL,
                               PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_countries`
--

LOCK TABLES `m_countries` WRITE;
/*!40000 ALTER TABLE `m_countries` DISABLE KEYS */;
INSERT INTO `m_countries` VALUES ('VN',NULL,'Việt Nam',NULL,NULL,'2021-01-01 00:00:00',NULL);
/*!40000 ALTER TABLE `m_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_experlence`
--

DROP TABLE IF EXISTS `m_experlence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_experlence` (
                                `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
                                `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                                `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                `created_at` timestamp NULL DEFAULT NULL,
                                `updated_at` timestamp NULL DEFAULT NULL,
                                PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_experlence`
--

LOCK TABLES `m_experlence` WRITE;
/*!40000 ALTER TABLE `m_experlence` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_experlence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_expertlse`
--

DROP TABLE IF EXISTS `m_expertlse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_expertlse` (
                               `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
                               `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                               `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                               `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                               `created_at` timestamp NULL DEFAULT NULL,
                               `updated_at` timestamp NULL DEFAULT NULL,
                               PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_expertlse`
--

LOCK TABLES `m_expertlse` WRITE;
/*!40000 ALTER TABLE `m_expertlse` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_expertlse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_industries`
--

DROP TABLE IF EXISTS `m_industries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_industries` (
                                `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
                                `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                                `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                `created_at` timestamp NULL DEFAULT NULL,
                                `updated_at` timestamp NULL DEFAULT NULL,
                                PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_industries`
--

LOCK TABLES `m_industries` WRITE;
/*!40000 ALTER TABLE `m_industries` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_industries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_languages`
--

DROP TABLE IF EXISTS `m_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_languages` (
                               `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
                               `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                               `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                               `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                               `created_at` timestamp NULL DEFAULT NULL,
                               `updated_at` timestamp NULL DEFAULT NULL,
                               PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_languages`
--

LOCK TABLES `m_languages` WRITE;
/*!40000 ALTER TABLE `m_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_skills`
--

DROP TABLE IF EXISTS `m_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_skills` (
                            `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
                            `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                            `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                            `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                            `created_at` timestamp NULL DEFAULT NULL,
                            `updated_at` timestamp NULL DEFAULT NULL,
                            PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_skills`
--

LOCK TABLES `m_skills` WRITE;
/*!40000 ALTER TABLE `m_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_suvery_reason_dislike`
--

DROP TABLE IF EXISTS `m_suvery_reason_dislike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_suvery_reason_dislike` (
                                           `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                           `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                           `status` tinyint unsigned DEFAULT NULL,
                                           `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                           `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                           `created_at` timestamp NULL DEFAULT NULL,
                                           `updated_at` timestamp NULL DEFAULT NULL,
                                           PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_suvery_reason_dislike`
--

LOCK TABLES `m_suvery_reason_dislike` WRITE;
/*!40000 ALTER TABLE `m_suvery_reason_dislike` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_suvery_reason_dislike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_walk_format`
--

DROP TABLE IF EXISTS `m_walk_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m_walk_format` (
                                 `code` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                 `format` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `created_at` timestamp NULL DEFAULT NULL,
                                 `updated_at` timestamp NULL DEFAULT NULL,
                                 PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_walk_format`
--

LOCK TABLES `m_walk_format` WRITE;
/*!40000 ALTER TABLE `m_walk_format` DISABLE KEYS */;
/*!40000 ALTER TABLE `m_walk_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
                              `id` int unsigned NOT NULL AUTO_INCREMENT,
                              `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                              `batch` int NOT NULL,
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2016_06_01_000001_create_oauth_auth_codes_table',1),(3,'2016_06_01_000002_create_oauth_access_tokens_table',1),(4,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(5,'2016_06_01_000004_create_oauth_clients_table',1),(6,'2016_06_01_000005_create_oauth_personal_access_clients_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificaitons`
--

DROP TABLE IF EXISTS `notificaitons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificaitons` (
                                 `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                 `user_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                 `noti_user_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                 `type` tinyint unsigned NOT NULL,
                                 `message` text COLLATE utf8mb4_unicode_ci,
                                 `status` tinyint unsigned DEFAULT NULL,
                                 `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `created_at` timestamp NULL DEFAULT NULL,
                                 `updated_at` timestamp NULL DEFAULT NULL,
                                 PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaitons`
--

LOCK TABLES `notificaitons` WRITE;
/*!40000 ALTER TABLE `notificaitons` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificaitons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
                                       `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                                       `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                       `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                       `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                       `scopes` text COLLATE utf8mb4_unicode_ci,
                                       `revoked` tinyint(1) NOT NULL,
                                       `created_at` timestamp NULL DEFAULT NULL,
                                       `updated_at` timestamp NULL DEFAULT NULL,
                                       `expires_at` datetime DEFAULT NULL,
                                       PRIMARY KEY (`id`),
                                       KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('6256942cc1ef89791d1bf785fe352eeda57f401f20d4b86efe3c3a5b3249cfa6af087a92fc39e648','954ae19a-8aad-4ea9-a7d5-bd12b77c1bd7','954ae1df-9f23-48a3-a3ff-0f8a557cc440',NULL,'[\"*\"]',0,'2022-01-06 17:01:54','2022-01-06 17:01:54','2023-01-06 17:01:54');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
                                    `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                                    `user_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                    `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                    `scopes` text COLLATE utf8mb4_unicode_ci,
                                    `revoked` tinyint(1) NOT NULL,
                                    `expires_at` datetime DEFAULT NULL,
                                    PRIMARY KEY (`id`),
                                    KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
                                 `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                 `user_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                                 `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
                                 `personal_access_client` tinyint(1) NOT NULL,
                                 `password_client` tinyint(1) NOT NULL,
                                 `revoked` tinyint(1) NOT NULL,
                                 `created_at` timestamp NULL DEFAULT NULL,
                                 `updated_at` timestamp NULL DEFAULT NULL,
                                 KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES ('954ae1df-9f23-48a3-a3ff-0f8a557cc440',NULL,'Lumen Password Grant Client','yoUB9fN327tSYNs74lszrqDQXTSSRJ4ZkzzPRBba','users','http://localhost',0,1,0,'2022-01-06 17:01:36','2022-01-06 17:01:36');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
                                                 `id` bigint unsigned NOT NULL AUTO_INCREMENT,
                                                 `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                                 `created_at` timestamp NULL DEFAULT NULL,
                                                 `updated_at` timestamp NULL DEFAULT NULL,
                                                 PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
                                        `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                                        `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                                        `revoked` tinyint(1) NOT NULL,
                                        `expires_at` datetime DEFAULT NULL,
                                        PRIMARY KEY (`id`),
                                        KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('548d1debb097bd49d1caae27a14c670123b518f7abbe8b6cc4f47397ad3cb28b3d44a82af7380c00','6256942cc1ef89791d1bf785fe352eeda57f401f20d4b86efe3c3a5b3249cfa6af087a92fc39e648',0,'2023-01-06 17:01:54');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_walks`
--

DROP TABLE IF EXISTS `request_walks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_walks` (
                                 `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                 `user_request_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                 `user_mentor_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                 `request_date` timestamp NOT NULL,
                                 `big_question` text COLLATE utf8mb4_unicode_ci,
                                 `personal_message` text COLLATE utf8mb4_unicode_ci,
                                 `request_location` text COLLATE utf8mb4_unicode_ci,
                                 `log` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `meetup_at` text COLLATE utf8mb4_unicode_ci,
                                 `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `created_at` timestamp NULL DEFAULT NULL,
                                 `updated_at` timestamp NULL DEFAULT NULL,
                                 PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_walks`
--

LOCK TABLES `request_walks` WRITE;
/*!40000 ALTER TABLE `request_walks` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_walks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tribes`
--

DROP TABLE IF EXISTS `tribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tribes` (
                          `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                          `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                          `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                          `status` tinyint unsigned NOT NULL,
                          `logo` text COLLATE utf8mb4_unicode_ci,
                          `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                          `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                          `created_at` timestamp NULL DEFAULT NULL,
                          `updated_at` timestamp NULL DEFAULT NULL,
                          PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tribes`
--

LOCK TABLES `tribes` WRITE;
/*!40000 ALTER TABLE `tribes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_expertise`
--

DROP TABLE IF EXISTS `user_expertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_expertise` (
                                  `user_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                  `expertise_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
                                  `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `created_at` timestamp NULL DEFAULT NULL,
                                  `updated_at` timestamp NULL DEFAULT NULL,
                                  PRIMARY KEY (`user_uuid`,`expertise_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_expertise`
--

LOCK TABLES `user_expertise` WRITE;
/*!40000 ALTER TABLE `user_expertise` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_expertise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_followes`
--

DROP TABLE IF EXISTS `user_followes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_followes` (
                                 `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                 `user_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                 `follower_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                 `date_followed` timestamp NOT NULL,
                                 `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                 `created_at` timestamp NULL DEFAULT NULL,
                                 `updated_at` timestamp NULL DEFAULT NULL,
                                 PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_followes`
--

LOCK TABLES `user_followes` WRITE;
/*!40000 ALTER TABLE `user_followes` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_followes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_languages`
--

DROP TABLE IF EXISTS `user_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_languages` (
                                  `user_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                  `language_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
                                  `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                  `created_at` timestamp NULL DEFAULT NULL,
                                  `updated_at` timestamp NULL DEFAULT NULL,
                                  PRIMARY KEY (`user_uuid`,`language_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_languages`
--

LOCK TABLES `user_languages` WRITE;
/*!40000 ALTER TABLE `user_languages` DISABLE KEYS */;
INSERT INTO `user_languages` VALUES ('954ae19a-8aad-4ea9-a7d5-bd12b77c1bd7','EN',NULL,NULL,NULL,NULL),('954ae19a-8aad-4ea9-a7d5-bd12b77c1bd7','VN',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_request_big_quesstions`
--

DROP TABLE IF EXISTS `user_request_big_quesstions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_request_big_quesstions` (
                                               `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                               `user_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                               `question` text COLLATE utf8mb4_unicode_ci,
                                               `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                               `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                               `created_at` timestamp NULL DEFAULT NULL,
                                               `updated_at` timestamp NULL DEFAULT NULL,
                                               PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_request_big_quesstions`
--

LOCK TABLES `user_request_big_quesstions` WRITE;
/*!40000 ALTER TABLE `user_request_big_quesstions` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_request_big_quesstions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_reviews`
--

DROP TABLE IF EXISTS `user_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_reviews` (
                                `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                `user_reviewer_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                `user_reviewed_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                `rate` tinyint unsigned NOT NULL,
                                `note` text COLLATE utf8mb4_unicode_ci,
                                `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                `created_at` timestamp NULL DEFAULT NULL,
                                `updated_at` timestamp NULL DEFAULT NULL,
                                PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_reviews`
--

LOCK TABLES `user_reviews` WRITE;
/*!40000 ALTER TABLE `user_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_skills`
--

DROP TABLE IF EXISTS `user_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_skills` (
                               `user_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                               `skill_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
                               `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                               `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                               `created_at` timestamp NULL DEFAULT NULL,
                               `updated_at` timestamp NULL DEFAULT NULL,
                               PRIMARY KEY (`user_uuid`,`skill_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_skills`
--

LOCK TABLES `user_skills` WRITE;
/*!40000 ALTER TABLE `user_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tribes`
--

DROP TABLE IF EXISTS `user_tribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_tribes` (
                               `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                               `user_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                               `tribe_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                               `is_leader` tinyint unsigned NOT NULL,
                               `status` tinyint unsigned NOT NULL,
                               `join_date` timestamp NOT NULL,
                               `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                               `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                               `created_at` timestamp NULL DEFAULT NULL,
                               `updated_at` timestamp NULL DEFAULT NULL,
                               PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tribes`
--

LOCK TABLES `user_tribes` WRITE;
/*!40000 ALTER TABLE `user_tribes` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_walk_histories`
--

DROP TABLE IF EXISTS `user_walk_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_walk_histories` (
                                       `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                       `user_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                       `walk_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                       `big_quesstion_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                       `join_date` timestamp NOT NULL,
                                       `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                       `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                       `created_at` timestamp NULL DEFAULT NULL,
                                       `updated_at` timestamp NULL DEFAULT NULL,
                                       PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_walk_histories`
--

LOCK TABLES `user_walk_histories` WRITE;
/*!40000 ALTER TABLE `user_walk_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_walk_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
                         `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `bio` text COLLATE utf8mb4_unicode_ci,
                         `type` tinyint unsigned NOT NULL,
                         `covid_flag` tinyint unsigned DEFAULT NULL,
                         `country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `city_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `experience_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `job_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `gender` tinyint unsigned DEFAULT NULL,
                         `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `languages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `industries` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `expertises` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `skills` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `verify_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `verify_otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `status` tinyint unsigned DEFAULT NULL,
                         `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `created_at` timestamp NULL DEFAULT NULL,
                         `updated_at` timestamp NULL DEFAULT NULL,
                         PRIMARY KEY (`uuid`),
                         UNIQUE KEY `users_code_unique` (`code`),
                         UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('954ae19a-8aad-4ea9-a7d5-bd12b77c1bd7','XNGUF88FDP','binhlvit@gmail.com','binhlvit@gmail.com','Binh1111','Binh Test1','test test',1,1,'VN','VN',NULL,NULL,1,NULL,'[\"VN\",\"EN\"]','xxx',NULL,NULL,'$2y$10$CwERBf7jL9qLswiyRD0fpekHtlbYQRsKjtZ0/pxJMp3Fbc.sW9.5W','TSarf2UF9hUptnHaSMHQ78afofZpB1OUyiQUvRv41641488451',NULL,NULL,1,NULL,NULL,'2022-01-06 17:00:51','2022-01-06 17:04:21');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `walk_chat_details`
--

DROP TABLE IF EXISTS `walk_chat_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `walk_chat_details` (
                                     `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                     `walk_chat_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                     `user_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                     `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                     `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                     `created_at` timestamp NULL DEFAULT NULL,
                                     `updated_at` timestamp NULL DEFAULT NULL,
                                     PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `walk_chat_details`
--

LOCK TABLES `walk_chat_details` WRITE;
/*!40000 ALTER TABLE `walk_chat_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `walk_chat_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `walk_chats`
--

DROP TABLE IF EXISTS `walk_chats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `walk_chats` (
                              `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                              `walk_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                              `conversation_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                              `conversation_sid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                              `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                              `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                              `created_at` timestamp NULL DEFAULT NULL,
                              `updated_at` timestamp NULL DEFAULT NULL,
                              PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `walk_chats`
--

LOCK TABLES `walk_chats` WRITE;
/*!40000 ALTER TABLE `walk_chats` DISABLE KEYS */;
/*!40000 ALTER TABLE `walk_chats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `walk_reason_dislikes`
--

DROP TABLE IF EXISTS `walk_reason_dislikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `walk_reason_dislikes` (
                                        `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                        `user_reviewer_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                        `walk_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                        `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
                                        `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
                                        `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                        `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                        `created_at` timestamp NULL DEFAULT NULL,
                                        `updated_at` timestamp NULL DEFAULT NULL,
                                        PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `walk_reason_dislikes`
--

LOCK TABLES `walk_reason_dislikes` WRITE;
/*!40000 ALTER TABLE `walk_reason_dislikes` DISABLE KEYS */;
/*!40000 ALTER TABLE `walk_reason_dislikes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `walk_recurring_settings`
--

DROP TABLE IF EXISTS `walk_recurring_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `walk_recurring_settings` (
                                           `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                           `walk_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                           `recurring_week_number` int unsigned NOT NULL,
                                           `recurring_date_number` json NOT NULL,
                                           `end_by_date` timestamp NOT NULL,
                                           `end_by_number_of_occurrences` int unsigned NOT NULL,
                                           `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                           `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                           `created_at` timestamp NULL DEFAULT NULL,
                                           `updated_at` timestamp NULL DEFAULT NULL,
                                           PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `walk_recurring_settings`
--

LOCK TABLES `walk_recurring_settings` WRITE;
/*!40000 ALTER TABLE `walk_recurring_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `walk_recurring_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `walk_reviews`
--

DROP TABLE IF EXISTS `walk_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `walk_reviews` (
                                `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                `user_reviewer_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                `walk_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                `rate` tinyint unsigned DEFAULT NULL,
                                `note` text COLLATE utf8mb4_unicode_ci,
                                `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                `created_at` timestamp NULL DEFAULT NULL,
                                `updated_at` timestamp NULL DEFAULT NULL,
                                PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `walk_reviews`
--

LOCK TABLES `walk_reviews` WRITE;
/*!40000 ALTER TABLE `walk_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `walk_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `walks`
--

DROP TABLE IF EXISTS `walks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `walks` (
                         `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
                         `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
                         `start_date` timestamp NOT NULL,
                         `end_date` timestamp NOT NULL,
                         `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `log` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `meetup_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `format` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `is_auto_approve_request` tinyint unsigned DEFAULT NULL,
                         `is_reccuring_walk` tinyint unsigned DEFAULT NULL,
                         `status` tinyint unsigned DEFAULT NULL,
                         `user_create_uuid` tinyint unsigned DEFAULT NULL,
                         `location_image` text COLLATE utf8mb4_unicode_ci,
                         `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                         `created_at` timestamp NULL DEFAULT NULL,
                         `updated_at` timestamp NULL DEFAULT NULL,
                         PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `walks`
--

LOCK TABLES `walks` WRITE;
/*!40000 ALTER TABLE `walks` DISABLE KEYS */;
/*!40000 ALTER TABLE `walks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `walks_waitlists`
--

DROP TABLE IF EXISTS `walks_waitlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `walks_waitlists` (
                                   `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                   `user_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                   `walk_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
                                   `status` tinyint unsigned DEFAULT NULL,
                                   `note` text COLLATE utf8mb4_unicode_ci,
                                   `created_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                   `updated_by` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
                                   `created_at` timestamp NULL DEFAULT NULL,
                                   `updated_at` timestamp NULL DEFAULT NULL,
                                   PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `walks_waitlists`
--

LOCK TABLES `walks_waitlists` WRITE;
/*!40000 ALTER TABLE `walks_waitlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `walks_waitlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'laravel'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-07 22:54:02
