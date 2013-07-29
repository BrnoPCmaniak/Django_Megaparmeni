-- MySQL dump 10.14  Distrib 5.5.29-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: main
-- ------------------------------------------------------
-- Server version	5.5.29-MariaDB-log

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
-- Current Database: `main`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `main` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `main`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add user social auth',8,'add_usersocialauth'),(23,'Can change user social auth',8,'change_usersocialauth'),(24,'Can delete user social auth',8,'delete_usersocialauth'),(25,'Can add nonce',9,'add_nonce'),(26,'Can change nonce',9,'change_nonce'),(27,'Can delete nonce',9,'delete_nonce'),(28,'Can add association',10,'add_association'),(29,'Can change association',10,'change_association'),(30,'Can delete association',10,'delete_association'),(31,'Can add Category',11,'add_category'),(32,'Can change Category',11,'change_category'),(33,'Can delete Category',11,'delete_category'),(34,'Can add Forum',12,'add_forum'),(35,'Can change Forum',12,'change_forum'),(36,'Can delete Forum',12,'delete_forum'),(37,'Can add Topic',13,'add_topic'),(38,'Can change Topic',13,'change_topic'),(39,'Can delete Topic',13,'delete_topic'),(40,'Can add Post',14,'add_post'),(41,'Can change Post',14,'change_post'),(42,'Can delete Post',14,'delete_post'),(43,'Can add Reputation',15,'add_reputation'),(44,'Can change Reputation',15,'change_reputation'),(45,'Can delete Reputation',15,'delete_reputation'),(46,'Can add Profile',16,'add_profile'),(47,'Can change Profile',16,'change_profile'),(48,'Can delete Profile',16,'delete_profile'),(49,'Can add Post tracking',17,'add_posttracking'),(50,'Can change Post tracking',17,'change_posttracking'),(51,'Can delete Post tracking',17,'delete_posttracking'),(52,'Can add Report',18,'add_report'),(53,'Can change Report',18,'change_report'),(54,'Can delete Report',18,'delete_report'),(55,'Can add Ban',19,'add_ban'),(56,'Can change Ban',19,'change_ban'),(57,'Can delete Ban',19,'delete_ban'),(58,'Can add attachment',20,'add_attachment'),(59,'Can change attachment',20,'change_attachment'),(60,'Can delete attachment',20,'delete_attachment'),(61,'Can add poll',21,'add_poll'),(62,'Can change poll',21,'change_poll'),(63,'Can delete poll',21,'delete_poll'),(64,'Can add poll choice',22,'add_pollchoice'),(65,'Can change poll choice',22,'change_pollchoice'),(66,'Can delete poll choice',22,'delete_pollchoice');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$10000$Vw9Vc5TiPJ82$sTgRSKYH0q10OePH/F/Spv/kk4rGSAee59vA7zXKYv4=','2013-07-29 15:59:02',1,'filip','','','brnopcman@gmail.com',1,1,'2013-07-29 09:56:03');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`),
  CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'user social auth','social_auth','usersocialauth'),(9,'nonce','social_auth','nonce'),(10,'association','social_auth','association'),(11,'Category','djangobb_forum','category'),(12,'Forum','djangobb_forum','forum'),(13,'Topic','djangobb_forum','topic'),(14,'Post','djangobb_forum','post'),(15,'Reputation','djangobb_forum','reputation'),(16,'Profile','djangobb_forum','profile'),(17,'Post tracking','djangobb_forum','posttracking'),(18,'Report','djangobb_forum','report'),(19,'Ban','djangobb_forum','ban'),(20,'attachment','djangobb_forum','attachment'),(21,'poll','djangobb_forum','poll'),(22,'poll choice','djangobb_forum','pollchoice');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('j5e9zi602j2cawiak8l14updjgluknrn','ZGQwMzVmYzNjNjA2YWVmYmI0NGFjMDU1MmM2N2EzM2I4ZWUxZmJhZjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-08-12 15:59:02');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangobb_forum_attachment`
--

DROP TABLE IF EXISTS `djangobb_forum_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangobb_forum_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `name` longtext NOT NULL,
  `hash` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djangobb_forum_attachment_87a49a9a` (`post_id`),
  KEY `djangobb_forum_attachment_a48079cd` (`hash`),
  CONSTRAINT `post_id_refs_id_83519aef` FOREIGN KEY (`post_id`) REFERENCES `djangobb_forum_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangobb_forum_attachment`
--

LOCK TABLES `djangobb_forum_attachment` WRITE;
/*!40000 ALTER TABLE `djangobb_forum_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangobb_forum_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangobb_forum_ban`
--

DROP TABLE IF EXISTS `djangobb_forum_ban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangobb_forum_ban` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ban_start` datetime NOT NULL,
  `ban_end` datetime DEFAULT NULL,
  `reason` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_refs_id_e12ba1a2` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangobb_forum_ban`
--

LOCK TABLES `djangobb_forum_ban` WRITE;
/*!40000 ALTER TABLE `djangobb_forum_ban` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangobb_forum_ban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangobb_forum_category`
--

DROP TABLE IF EXISTS `djangobb_forum_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangobb_forum_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangobb_forum_category`
--

LOCK TABLES `djangobb_forum_category` WRITE;
/*!40000 ALTER TABLE `djangobb_forum_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangobb_forum_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangobb_forum_category_groups`
--

DROP TABLE IF EXISTS `djangobb_forum_category_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangobb_forum_category_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `category_id` (`category_id`,`group_id`),
  KEY `djangobb_forum_category_groups_6f33f001` (`category_id`),
  KEY `djangobb_forum_category_groups_5f412f9a` (`group_id`),
  CONSTRAINT `category_id_refs_id_ae243868` FOREIGN KEY (`category_id`) REFERENCES `djangobb_forum_category` (`id`),
  CONSTRAINT `group_id_refs_id_87254909` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangobb_forum_category_groups`
--

LOCK TABLES `djangobb_forum_category_groups` WRITE;
/*!40000 ALTER TABLE `djangobb_forum_category_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangobb_forum_category_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangobb_forum_forum`
--

DROP TABLE IF EXISTS `djangobb_forum_forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangobb_forum_forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `position` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `updated` datetime NOT NULL,
  `post_count` int(11) NOT NULL,
  `topic_count` int(11) NOT NULL,
  `last_post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `djangobb_forum_forum_6f33f001` (`category_id`),
  KEY `djangobb_forum_forum_9e222a3a` (`last_post_id`),
  CONSTRAINT `last_post_id_refs_id_b59d3bfc` FOREIGN KEY (`last_post_id`) REFERENCES `djangobb_forum_post` (`id`),
  CONSTRAINT `category_id_refs_id_bcfa7f56` FOREIGN KEY (`category_id`) REFERENCES `djangobb_forum_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangobb_forum_forum`
--

LOCK TABLES `djangobb_forum_forum` WRITE;
/*!40000 ALTER TABLE `djangobb_forum_forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangobb_forum_forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangobb_forum_forum_moderators`
--

DROP TABLE IF EXISTS `djangobb_forum_forum_moderators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangobb_forum_forum_moderators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forum_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forum_id` (`forum_id`,`user_id`),
  KEY `djangobb_forum_forum_moderators_f979685d` (`forum_id`),
  KEY `djangobb_forum_forum_moderators_6340c63c` (`user_id`),
  CONSTRAINT `forum_id_refs_id_bae35d0d` FOREIGN KEY (`forum_id`) REFERENCES `djangobb_forum_forum` (`id`),
  CONSTRAINT `user_id_refs_id_7c3f4925` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangobb_forum_forum_moderators`
--

LOCK TABLES `djangobb_forum_forum_moderators` WRITE;
/*!40000 ALTER TABLE `djangobb_forum_forum_moderators` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangobb_forum_forum_moderators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangobb_forum_poll`
--

DROP TABLE IF EXISTS `djangobb_forum_poll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangobb_forum_poll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `question` varchar(200) NOT NULL,
  `choice_count` smallint(5) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL,
  `deactivate_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `djangobb_forum_poll_76f18ad3` (`topic_id`),
  CONSTRAINT `topic_id_refs_id_8288bfa2` FOREIGN KEY (`topic_id`) REFERENCES `djangobb_forum_topic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangobb_forum_poll`
--

LOCK TABLES `djangobb_forum_poll` WRITE;
/*!40000 ALTER TABLE `djangobb_forum_poll` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangobb_forum_poll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangobb_forum_poll_users`
--

DROP TABLE IF EXISTS `djangobb_forum_poll_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangobb_forum_poll_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `poll_id` (`poll_id`,`user_id`),
  KEY `djangobb_forum_poll_users_70f78e6b` (`poll_id`),
  KEY `djangobb_forum_poll_users_6340c63c` (`user_id`),
  CONSTRAINT `poll_id_refs_id_72ea35b9` FOREIGN KEY (`poll_id`) REFERENCES `djangobb_forum_poll` (`id`),
  CONSTRAINT `user_id_refs_id_bc93d703` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangobb_forum_poll_users`
--

LOCK TABLES `djangobb_forum_poll_users` WRITE;
/*!40000 ALTER TABLE `djangobb_forum_poll_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangobb_forum_poll_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangobb_forum_pollchoice`
--

DROP TABLE IF EXISTS `djangobb_forum_pollchoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangobb_forum_pollchoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poll_id` int(11) NOT NULL,
  `choice` varchar(200) NOT NULL,
  `votes` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djangobb_forum_pollchoice_70f78e6b` (`poll_id`),
  CONSTRAINT `poll_id_refs_id_9b895642` FOREIGN KEY (`poll_id`) REFERENCES `djangobb_forum_poll` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangobb_forum_pollchoice`
--

LOCK TABLES `djangobb_forum_pollchoice` WRITE;
/*!40000 ALTER TABLE `djangobb_forum_pollchoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangobb_forum_pollchoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangobb_forum_post`
--

DROP TABLE IF EXISTS `djangobb_forum_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangobb_forum_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT NULL,
  `markup` varchar(15) NOT NULL,
  `body` longtext NOT NULL,
  `body_html` longtext NOT NULL,
  `user_ip` char(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `djangobb_forum_post_76f18ad3` (`topic_id`),
  KEY `djangobb_forum_post_6340c63c` (`user_id`),
  KEY `djangobb_forum_post_3aeaff6a` (`updated_by_id`),
  CONSTRAINT `updated_by_id_refs_id_3c382ebb` FOREIGN KEY (`updated_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `topic_id_refs_id_8b7acee5` FOREIGN KEY (`topic_id`) REFERENCES `djangobb_forum_topic` (`id`),
  CONSTRAINT `user_id_refs_id_3c382ebb` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangobb_forum_post`
--

LOCK TABLES `djangobb_forum_post` WRITE;
/*!40000 ALTER TABLE `djangobb_forum_post` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangobb_forum_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangobb_forum_posttracking`
--

DROP TABLE IF EXISTS `djangobb_forum_posttracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangobb_forum_posttracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `topics` longtext,
  `last_read` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_refs_id_b16a51b1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangobb_forum_posttracking`
--

LOCK TABLES `djangobb_forum_posttracking` WRITE;
/*!40000 ALTER TABLE `djangobb_forum_posttracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangobb_forum_posttracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangobb_forum_profile`
--

DROP TABLE IF EXISTS `djangobb_forum_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangobb_forum_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `site` varchar(200) NOT NULL,
  `jabber` varchar(80) NOT NULL,
  `icq` varchar(12) NOT NULL,
  `msn` varchar(80) NOT NULL,
  `aim` varchar(80) NOT NULL,
  `yahoo` varchar(80) NOT NULL,
  `location` varchar(30) NOT NULL,
  `signature` longtext NOT NULL,
  `signature_html` longtext NOT NULL,
  `time_zone` double NOT NULL,
  `language` varchar(5) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `theme` varchar(80) NOT NULL,
  `show_avatar` tinyint(1) NOT NULL,
  `show_signatures` tinyint(1) NOT NULL,
  `show_smilies` tinyint(1) NOT NULL,
  `privacy_permission` int(11) NOT NULL,
  `auto_subscribe` tinyint(1) NOT NULL,
  `markup` varchar(15) NOT NULL,
  `post_count` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `user_id_refs_id_de526a3c` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangobb_forum_profile`
--

LOCK TABLES `djangobb_forum_profile` WRITE;
/*!40000 ALTER TABLE `djangobb_forum_profile` DISABLE KEYS */;
INSERT INTO `djangobb_forum_profile` VALUES (1,1,'','','','','','','','','','',3,'','','default',1,1,1,1,0,'bbcode',0);
/*!40000 ALTER TABLE `djangobb_forum_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangobb_forum_report`
--

DROP TABLE IF EXISTS `djangobb_forum_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangobb_forum_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reported_by_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `zapped` tinyint(1) NOT NULL,
  `zapped_by_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `reason` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djangobb_forum_report_552efcda` (`reported_by_id`),
  KEY `djangobb_forum_report_87a49a9a` (`post_id`),
  KEY `djangobb_forum_report_aafb0a5c` (`zapped_by_id`),
  CONSTRAINT `zapped_by_id_refs_id_dee58fdb` FOREIGN KEY (`zapped_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `post_id_refs_id_487b5ff4` FOREIGN KEY (`post_id`) REFERENCES `djangobb_forum_post` (`id`),
  CONSTRAINT `reported_by_id_refs_id_dee58fdb` FOREIGN KEY (`reported_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangobb_forum_report`
--

LOCK TABLES `djangobb_forum_report` WRITE;
/*!40000 ALTER TABLE `djangobb_forum_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangobb_forum_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangobb_forum_reputation`
--

DROP TABLE IF EXISTS `djangobb_forum_reputation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangobb_forum_reputation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `sign` int(11) NOT NULL,
  `reason` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `from_user_id` (`from_user_id`,`post_id`),
  KEY `djangobb_forum_reputation_0e7efed3` (`from_user_id`),
  KEY `djangobb_forum_reputation_bc172800` (`to_user_id`),
  KEY `djangobb_forum_reputation_87a49a9a` (`post_id`),
  CONSTRAINT `to_user_id_refs_id_aa9e9d15` FOREIGN KEY (`to_user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `from_user_id_refs_id_aa9e9d15` FOREIGN KEY (`from_user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `post_id_refs_id_8fbaa0d5` FOREIGN KEY (`post_id`) REFERENCES `djangobb_forum_post` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangobb_forum_reputation`
--

LOCK TABLES `djangobb_forum_reputation` WRITE;
/*!40000 ALTER TABLE `djangobb_forum_reputation` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangobb_forum_reputation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangobb_forum_topic`
--

DROP TABLE IF EXISTS `djangobb_forum_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangobb_forum_topic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forum_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `sticky` tinyint(1) NOT NULL,
  `closed` tinyint(1) NOT NULL,
  `post_count` int(11) NOT NULL,
  `last_post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `djangobb_forum_topic_f979685d` (`forum_id`),
  KEY `djangobb_forum_topic_6340c63c` (`user_id`),
  KEY `djangobb_forum_topic_9e222a3a` (`last_post_id`),
  CONSTRAINT `last_post_id_refs_id_bf6b50fc` FOREIGN KEY (`last_post_id`) REFERENCES `djangobb_forum_post` (`id`),
  CONSTRAINT `forum_id_refs_id_3db76ac0` FOREIGN KEY (`forum_id`) REFERENCES `djangobb_forum_forum` (`id`),
  CONSTRAINT `user_id_refs_id_e2a35a91` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangobb_forum_topic`
--

LOCK TABLES `djangobb_forum_topic` WRITE;
/*!40000 ALTER TABLE `djangobb_forum_topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangobb_forum_topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangobb_forum_topic_subscribers`
--

DROP TABLE IF EXISTS `djangobb_forum_topic_subscribers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangobb_forum_topic_subscribers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `topic_id` (`topic_id`,`user_id`),
  KEY `djangobb_forum_topic_subscribers_76f18ad3` (`topic_id`),
  KEY `djangobb_forum_topic_subscribers_6340c63c` (`user_id`),
  CONSTRAINT `topic_id_refs_id_e058f2d0` FOREIGN KEY (`topic_id`) REFERENCES `djangobb_forum_topic` (`id`),
  CONSTRAINT `user_id_refs_id_939e8682` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangobb_forum_topic_subscribers`
--

LOCK TABLES `djangobb_forum_topic_subscribers` WRITE;
/*!40000 ALTER TABLE `djangobb_forum_topic_subscribers` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangobb_forum_topic_subscribers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_association`
--

DROP TABLE IF EXISTS `social_auth_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `server_url` (`server_url`,`handle`),
  KEY `social_auth_association_93d95bdf` (`issued`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_association`
--

LOCK TABLES `social_auth_association` WRITE;
/*!40000 ALTER TABLE `social_auth_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_nonce`
--

DROP TABLE IF EXISTS `social_auth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `server_url` (`server_url`,`timestamp`,`salt`),
  KEY `social_auth_nonce_d80b9c9a` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_nonce`
--

LOCK TABLES `social_auth_nonce` WRITE;
/*!40000 ALTER TABLE `social_auth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_auth_usersocialauth`
--

DROP TABLE IF EXISTS `social_auth_usersocialauth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provider` (`provider`,`uid`),
  KEY `social_auth_usersocialauth_6340c63c` (`user_id`),
  CONSTRAINT `user_id_refs_id_e6cbdf29` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_auth_usersocialauth`
--

LOCK TABLES `social_auth_usersocialauth` WRITE;
/*!40000 ALTER TABLE `social_auth_usersocialauth` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_auth_usersocialauth` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-07-29 21:25:28
