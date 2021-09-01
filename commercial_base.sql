-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: commercial_base
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contracts` (
  `id_con` int unsigned NOT NULL AUTO_INCREMENT,
  `contract_num` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_id` int unsigned NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `inn` bigint unsigned NOT NULL,
  `managers_id` int unsigned NOT NULL,
  `status` enum('open','closed','attraction','indebtedness') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'attraction',
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_con`),
  UNIQUE KEY `id_UNIQUE` (`id_con`),
  UNIQUE KEY `contrac_num_UNIQUE` (`contract_num`),
  KEY `fk_contractы_inn_idx` (`inn`),
  KEY `fk_contracts_region1_idx` (`region_id`),
  KEY `fk_contracts_managers1_idx` (`managers_id`),
  CONSTRAINT `fk_contracts_inn` FOREIGN KEY (`inn`) REFERENCES `inn` (`inn`),
  CONSTRAINT `fk_contracts_managers1` FOREIGN KEY (`managers_id`) REFERENCES `managers` (`id`),
  CONSTRAINT `fk_contracts_region1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id_region`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts`
--

LOCK TABLES `contracts` WRITE;
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
INSERT INTO `contracts` VALUES (1,'9040930338',4,'2018-03-08 00:00:00',988571597470,1,'open',NULL),(2,'6004903860',10,'1973-11-25 00:00:00',574939251773,2,'indebtedness',NULL),(3,'8179642041',19,'1986-07-20 00:00:00',225535889880,3,'closed',NULL),(4,'4679347583',15,'1977-07-06 00:00:00',529263755513,4,'open',NULL),(5,'898662560',9,'2020-09-25 00:00:00',170306221064,5,'open',NULL),(6,'8438797952',3,'2012-07-16 00:00:00',988571597470,6,'attraction',NULL),(7,'4015883337',5,'2016-01-04 00:00:00',462397447890,7,'closed',NULL),(8,'955195018',7,'1976-08-31 00:00:00',801033039887,8,'closed',NULL),(9,'386829124',14,'1999-10-08 00:00:00',677914132674,9,'open',NULL),(10,'2270719683',11,'2003-07-17 00:00:00',451708053135,10,'indebtedness',NULL),(11,'1930941766',8,'1976-07-22 00:00:00',415134306996,1,'indebtedness',NULL),(12,'3765850146',19,'1982-07-03 00:00:00',529263755513,2,'attraction',NULL),(13,'6701941481',20,'1975-02-17 00:00:00',574939251773,3,'attraction',NULL),(14,'4341741318',4,'1983-04-05 00:00:00',529263755513,4,'indebtedness',NULL),(15,'9175137804',18,'2008-09-11 00:00:00',774325964765,5,'open',NULL),(16,'1356040492',14,'1981-07-26 00:00:00',174227287785,6,'attraction',NULL),(17,'8391072077',17,'1989-04-15 00:00:00',269321598526,7,'open',NULL),(18,'6640600214',14,'2019-04-19 00:00:00',712116339140,8,'open',NULL),(19,'3792203994',7,'2004-09-04 00:00:00',462397447890,9,'open',NULL),(20,'8106477901',4,'2012-06-29 00:00:00',680644452157,10,'open',NULL),(21,'2412888358',9,'1974-01-21 00:00:00',415134306996,1,'open',NULL),(22,'5877437899',14,'2005-05-25 00:00:00',642291821953,2,'open',NULL),(23,'2868385530',15,'1997-11-26 00:00:00',115733432272,3,'attraction',NULL),(24,'4008282637',11,'2015-08-14 00:00:00',459639677984,4,'open',NULL),(25,'4323272454',15,'1974-06-16 00:00:00',170306221064,5,'attraction',NULL),(26,'2027371390',15,'1980-02-09 00:00:00',212084143525,6,'indebtedness',NULL),(27,'2288902014',8,'1974-01-15 00:00:00',642291821953,7,'closed',NULL),(28,'7732829822',11,'2002-06-25 00:00:00',415134306996,8,'open',NULL),(29,'7902638835',6,'2014-05-11 00:00:00',680644452157,9,'indebtedness',NULL),(30,'5901131132',15,'1991-12-31 00:00:00',245213141457,10,'open',NULL),(31,'6267242991',12,'1983-05-26 00:00:00',496288078940,1,'indebtedness',NULL),(32,'5663086963',5,'1976-01-07 00:00:00',462397447890,2,'indebtedness',NULL),(33,'7598491280',12,'2018-02-02 00:00:00',801033039887,3,'indebtedness',NULL),(34,'2462261351',3,'1971-11-24 00:00:00',801033039887,4,'open',NULL),(35,'8893778059',6,'2001-09-10 00:00:00',445180867281,5,'open',NULL),(36,'3239362256',12,'1973-10-18 00:00:00',642291821953,6,'indebtedness',NULL),(37,'8674103325',13,'1971-10-20 00:00:00',406229125956,7,'open',NULL),(38,'3583306567',7,'2016-04-10 00:00:00',445180867281,8,'closed',NULL),(39,'206682722',7,'2006-06-25 00:00:00',801033039887,9,'indebtedness',NULL),(40,'9129513543',15,'1999-11-30 00:00:00',170306221064,10,'open',NULL),(41,'6251783440',19,'1999-09-28 00:00:00',529263755513,1,'indebtedness',NULL),(42,'1686564834',3,'1982-05-09 00:00:00',406229125956,2,'attraction',NULL),(43,'727267326',2,'1996-06-03 00:00:00',662589589340,3,'open',NULL),(44,'7583305767',13,'2012-07-16 00:00:00',445180867281,4,'attraction',NULL),(45,'2545840045',9,'2002-06-17 00:00:00',451708053135,5,'attraction',NULL),(46,'780969892',10,'2001-09-02 00:00:00',115733432272,6,'closed',NULL),(47,'3655485386',16,'2000-12-30 00:00:00',662589589340,7,'closed',NULL),(48,'4727150778',8,'1971-10-29 00:00:00',451708053135,8,'indebtedness',NULL),(49,'3184671275',12,'2016-06-28 00:00:00',548493406010,9,'indebtedness',NULL),(50,'264787932',5,'1994-06-18 00:00:00',748975471489,10,'attraction',NULL);
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `contracts_BEFORE_INSERT` BEFORE INSERT ON `contracts` FOR EACH ROW BEGIN
    IF NEW.created_at > NOW() THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Дата создания должна быть в прошлом';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `contracts_BEFORE_UPDATE` BEFORE UPDATE ON `contracts` FOR EACH ROW BEGIN
	IF NEW.created_at > NOW() THEN
		SET NEW.created_at = OLD.created_at;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `crm`
--

DROP TABLE IF EXISTS `crm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crm` (
  `contracts_id` int unsigned NOT NULL,
  `managers_id` int unsigned NOT NULL,
  `num_call` int DEFAULT '0',
  `num_sale` int DEFAULT '0',
  `num_meeting` int DEFAULT '0',
  `period` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `fk_crm_contracts1_idx` (`contracts_id`),
  KEY `fk_crm_managers1_idx` (`managers_id`),
  CONSTRAINT `fk_crm_contracts1` FOREIGN KEY (`contracts_id`) REFERENCES `contracts` (`id_con`),
  CONSTRAINT `fk_crm_managers1` FOREIGN KEY (`managers_id`) REFERENCES `managers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crm`
--

LOCK TABLES `crm` WRITE;
/*!40000 ALTER TABLE `crm` DISABLE KEYS */;
INSERT INTO `crm` VALUES (29,1,17,10,8,'1999-10-23 00:00:00'),(37,2,7,1,20,'1988-12-26 00:00:00'),(25,3,26,10,7,'2009-09-26 00:00:00'),(22,4,6,7,9,'1970-06-16 00:00:00'),(22,5,19,0,20,'1977-07-17 00:00:00'),(40,6,8,7,2,'1973-05-07 00:00:00'),(36,7,0,3,1,'2011-01-02 00:00:00'),(30,8,11,9,1,'1991-05-21 00:00:00'),(43,9,3,4,7,'1972-11-07 00:00:00'),(21,10,4,8,2,'2011-05-16 00:00:00'),(41,1,28,5,13,'1977-08-31 00:00:00'),(27,2,24,0,16,'1978-08-11 00:00:00'),(22,3,1,4,17,'2017-07-29 00:00:00'),(7,4,8,3,7,'1992-05-29 00:00:00'),(26,5,22,3,10,'1994-02-18 00:00:00'),(1,6,5,7,4,'1974-03-01 00:00:00'),(30,7,15,0,0,'1994-09-04 00:00:00'),(17,8,20,6,0,'1998-12-24 00:00:00'),(16,9,10,2,19,'1974-11-20 00:00:00'),(20,10,19,4,14,'2004-01-30 00:00:00');
/*!40000 ALTER TABLE `crm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inn`
--

DROP TABLE IF EXISTS `inn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inn` (
  `inn` bigint unsigned NOT NULL,
  `status` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `workes_amt` int NOT NULL,
  `profit` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`inn`),
  UNIQUE KEY `inn_UNIQUE` (`inn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inn`
--

LOCK TABLES `inn` WRITE;
/*!40000 ALTER TABLE `inn` DISABLE KEYS */;
INSERT INTO `inn` VALUES (115733432272,' potential',2870,5000),(166762725760,' potential',11,8000),(170306221064,'existing',376,8000),(174227287785,' potential',1261,5000),(194803148921,'existing',2787,3000),(212084143525,' potential',4429,2000),(225535889880,'existing',686,9000),(245213141457,'existing',2537,3000),(269321598526,' potential',4940,1000),(282109055254,' potential',4607,9000),(307931979497,' potential',4760,2000),(308527045779,' potential',3126,6000),(344954316814,' potential',3869,1000),(369291904485,' potential',3521,1000),(406229125956,' potential',2699,2000),(415134306996,'existing',3636,6000),(445180867281,'existing',3523,1000),(451708053135,' potential',2895,7000),(459639677984,' potential',3537,2000),(462397447890,' potential',4092,9000),(496288078940,'existing',3079,2000),(529263755513,'existing',3841,3000),(529636340008,'existing',4355,8000),(532254325846,'existing',1451,6000),(533535440762,' potential',2702,5000),(546933935748,' potential',4347,5000),(548493406010,' potential',163,2000),(571703602870,'existing',4865,4000),(574666007939,'existing',1139,2000),(574939251773,'existing',3666,4000),(588400934719,'existing',3650,5000),(598847661995,' potential',504,2000),(622607300678,'existing',3717,7000),(642291821953,' potential',3055,5000),(662589589340,' potential',174,3000),(677914132674,' potential',3824,3000),(680644452157,'existing',285,9000),(712116339140,' potential',1337,2000),(714973155409,' potential',3947,10500),(729675770219,'existing',3145,1500),(748975471489,'existing',42,35069),(770041445477,'existing',4403,4500),(774325964765,' potential',4689,1500),(801033039887,' potential',526,264987),(810655023902,' potential',817,79878),(816115830507,'existing',3455,4500),(914499815967,' potential',3268,4500),(962741667611,'existing',4019,9000),(988571597470,' potential',1454,62565),(999013873438,' potential',354,1000);
/*!40000 ALTER TABLE `inn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'manager',
  `region_id` int unsigned NOT NULL,
  `dismissal_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_managers_region1_idx` (`region_id`),
  KEY `fio` (`first_name`,`last_name`),
  CONSTRAINT `fk_managers_region1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id_region`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` VALUES (1,'Quinten','Bernier','manager',7,NULL),(2,'Dell','Dibbert','leader',13,NULL),(3,'Elvie','Morissette','trainee',15,NULL),(4,'Dangelo','Spinka','leader',7,NULL),(5,'Euna','Schaden','leader',9,NULL),(6,'Marcelle','Ledner','manager',15,NULL),(7,'Virgie','Kihn','manager',11,NULL),(8,'Norbert','Bartell','trainee',17,NULL),(9,'Ocie','Hermann','manager',7,NULL),(10,'Guillermo','Beier','manager',10,NULL);
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `id_region` int unsigned NOT NULL AUTO_INCREMENT,
  `region_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `macko_region` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_profit` enum('high','low','medium') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_region`),
  UNIQUE KEY `id_UNIQUE` (`id_region`),
  UNIQUE KEY `city_UNIQUE` (`city`),
  UNIQUE KEY `region_name_UNIQUE` (`region_name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Ohio','Saudi Arabia','Port Guy','low'),(2,'Colorado','Georgia','Collinsberg','medium'),(3,'NewMexico','Jersey','North Katelynmouth','high'),(4,'Utah','Peru','East Berthaton','high'),(5,'Louisiana','Isle of Man','Handmouth','high'),(6,'Iowa','Kyrgyz Republic','Eliseoview','low'),(7,'Wyoming','Morocco','Lake Norbertoberg','medium'),(8,'Minnesota','Central African Republic','New Vestamouth','high'),(9,'NewJersey','Bolivia','Kubchester','high'),(10,'Kentucky','Timor-Leste','South Coystad','medium'),(11,'Nevada','Romania','South Zandermouth','high'),(12,'Illinois','Nauru','Birdiehaven','high'),(13,'Michigan','Turks and Caicos Islands','Shanonport','high'),(14,'Massachusetts','South Georgia and the South Sandwich Islands','South Brookeside','low'),(15,'Tennessee','Sierra Leone','East Sarina','medium'),(16,'Wisconsin','Liechtenstein','Lake Ressieburgh','high'),(17,'Delaware','Cocos (Keeling) Islands','North Nikkoland','low'),(18,'Maryland','Georgia','Lake Shayleestad','low'),(19,'Indiana','Tajikistan','Aylinport','high'),(20,'Connecticut','Ghana','Emilyland','low');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('mob','fix','iot') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tariff` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_month` decimal(8,4) unsigned NOT NULL,
  `period` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `tariff_UNIQUE` (`tariff`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'fix','fayblick',3.7970,'2007-08-09 00:00:00'),(2,'fix','carter',9999.9999,'1988-03-31 00:00:00'),(3,'iot','hoeger',0.0000,'2019-03-29 00:00:00'),(4,'iot','ferry',9999.9999,'2007-12-28 00:00:00'),(5,'fix','haley',2316.8773,'1997-01-21 00:00:00');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sim`
--

DROP TABLE IF EXISTS `sim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sim` (
  `id_sim` int unsigned NOT NULL AUTO_INCREMENT,
  `sim_num` bigint unsigned NOT NULL,
  `region_id` int unsigned NOT NULL,
  `service_id` int unsigned NOT NULL,
  `users_id` int unsigned NOT NULL,
  `contract_id` int unsigned NOT NULL,
  PRIMARY KEY (`id_sim`),
  UNIQUE KEY `id_sim_UNIQUE` (`id_sim`),
  UNIQUE KEY `sim_num_UNIQUE` (`sim_num`),
  KEY `fk_sim_region1_idx` (`region_id`),
  KEY `fk_sim_services1_idx` (`service_id`),
  KEY `fk_sim_users1_idx` (`users_id`),
  KEY `fk_sim_contracts1_idx` (`contract_id`),
  CONSTRAINT `fk_sim_contracts1` FOREIGN KEY (`contract_id`) REFERENCES `contracts` (`id_con`),
  CONSTRAINT `fk_sim_region1` FOREIGN KEY (`region_id`) REFERENCES `region` (`id_region`),
  CONSTRAINT `fk_sim_services1` FOREIGN KEY (`service_id`) REFERENCES `service` (`id`),
  CONSTRAINT `fk_sim_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sim`
--

LOCK TABLES `sim` WRITE;
/*!40000 ALTER TABLE `sim` DISABLE KEYS */;
INSERT INTO `sim` VALUES (1,79419341786,8,1,1,15),(2,79107109719,11,2,2,22),(3,79155410829,19,3,3,9),(4,79696806126,12,4,4,20),(5,79599316846,8,5,5,14),(6,79072441297,20,1,6,27),(7,79921125204,3,2,7,12),(8,79210935056,9,3,8,18),(9,79712320181,17,4,9,21),(10,79211035917,18,5,10,7),(11,79092805420,6,1,11,24),(12,79823645885,19,2,12,11),(13,79629907259,18,3,13,48),(14,79010045903,11,4,14,18),(15,79611334212,13,5,15,24),(16,79899119353,19,1,16,2),(17,79780068236,16,2,17,24),(18,79631621807,10,3,18,35),(19,79792935287,13,4,19,2),(20,79488962813,2,5,20,50),(21,79843864964,6,1,21,3),(22,79199969498,11,2,22,22),(23,79312440101,6,3,23,49),(24,79181068106,16,4,24,5),(25,79454998889,8,5,25,34),(26,79854828830,5,1,26,32),(27,79923628826,3,2,27,8),(28,79652623592,17,3,28,49),(29,79437460813,3,4,29,18),(30,79361536753,7,5,30,38),(31,79131699108,17,1,31,13),(32,79465371134,16,2,32,30),(33,79174863696,15,3,33,13),(34,79645238380,6,4,34,19),(35,79018092639,6,5,35,17),(36,79213206253,8,1,36,29),(37,79972894590,8,2,37,45),(38,79896549423,1,3,38,33),(39,79249635696,18,4,39,40),(40,79968764660,15,5,40,12),(41,79584790243,10,1,41,48),(42,79791039685,18,2,42,30),(43,79313446155,3,3,43,35),(44,79757201215,12,4,44,11),(45,79463240372,1,5,45,45),(46,79759595916,20,1,46,44),(47,79729093806,3,2,47,38),(48,79721011999,10,3,48,44),(49,79963570716,20,4,49,37),(50,79100428197,5,5,50,14),(51,79970256675,2,1,51,30),(52,79444973498,17,2,52,23),(53,79487622652,10,3,53,44),(54,79801839546,3,4,54,17),(55,79510131366,14,5,55,43),(56,79153073670,12,1,56,6),(57,79371506877,17,2,57,22),(58,79411770639,14,3,58,46),(59,79097271371,3,4,59,13),(60,79267055987,3,5,60,9),(61,79617972330,3,1,61,5),(62,79750915735,1,2,62,14),(63,79649430423,17,3,63,26),(64,79541898021,3,4,64,42),(65,79248584531,5,5,65,19),(66,79734797113,2,1,66,16),(67,79096450819,20,2,67,48),(68,79816244616,16,3,68,23),(69,79355413283,17,4,69,45),(70,79647472777,16,5,70,23),(71,79038030405,15,1,71,18),(72,79524907054,12,2,72,28),(73,79451577979,16,3,73,13),(74,79019578023,10,4,74,45),(75,79435420960,11,5,75,29),(76,79557955945,1,1,76,32),(77,79848427583,14,2,77,5),(78,79545758284,19,3,78,25),(79,79493424376,12,4,79,4),(80,79883180779,7,5,80,42),(81,79452381158,9,1,81,21),(82,79220567527,3,2,82,21),(83,79981000429,7,3,83,47),(84,79160604990,17,4,84,8),(85,79750602683,17,5,85,31),(86,79671763367,13,1,86,29),(87,79570708977,20,2,87,9),(88,79588784370,3,3,88,37),(89,79156181815,9,4,89,29),(90,79595608236,13,5,90,47),(91,79758784316,4,1,91,33),(92,79574009240,12,2,92,41),(93,79652580098,15,3,93,25),(94,79824273736,7,4,94,16),(95,79039969144,11,5,95,31),(96,79315279371,3,1,96,50),(97,79620293653,1,2,97,15),(98,79024834496,8,3,98,19),(99,79846212024,5,4,99,12),(100,79431692733,11,5,100,2);
/*!40000 ALTER TABLE `sim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tariffication`
--

DROP TABLE IF EXISTS `tariffication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tariffication` (
  `sim_id` int unsigned NOT NULL,
  `num_minutes` int unsigned DEFAULT '0',
  `num_messages` int unsigned DEFAULT '0',
  `internet_traffic` int unsigned DEFAULT '0',
  `period` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `fk_tariffication_sim1_idx` (`sim_id`),
  CONSTRAINT `fk_tariffication_sim1` FOREIGN KEY (`sim_id`) REFERENCES `sim` (`id_sim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tariffication`
--

LOCK TABLES `tariffication` WRITE;
/*!40000 ALTER TABLE `tariffication` DISABLE KEYS */;
INSERT INTO `tariffication` VALUES (60,918,2854,93982,'1999-08-27 00:00:00'),(47,1347,336,93084,'1989-02-02 00:00:00'),(61,793,2787,536834,'1977-06-09 00:00:00'),(31,1016,97,456697,'1991-01-03 00:00:00'),(37,1318,1721,90657,'2007-04-02 00:00:00'),(60,1125,2434,488627,'1978-09-07 00:00:00'),(92,1085,4293,701317,'1987-09-08 00:00:00'),(38,449,826,785428,'2003-10-31 00:00:00'),(16,298,2292,376071,'2016-07-28 00:00:00'),(84,387,2174,922329,'2003-10-13 00:00:00'),(45,1087,2685,625916,'1994-06-18 00:00:00'),(49,1330,199,132565,'2020-12-05 00:00:00'),(65,578,1848,189263,'2003-09-22 00:00:00'),(99,495,3185,199884,'1994-10-21 00:00:00'),(26,635,3845,78315,'2020-06-28 00:00:00'),(25,141,3436,284419,'2021-01-20 00:00:00'),(83,530,1526,248252,'2012-03-02 00:00:00'),(96,939,3638,61444,'1983-06-03 00:00:00'),(10,969,3383,213317,'2011-09-23 00:00:00'),(89,1384,3794,860559,'2007-06-16 00:00:00'),(59,1298,2225,852349,'2018-03-11 00:00:00'),(31,752,2574,756135,'2004-03-12 00:00:00'),(36,356,1088,376094,'1976-02-01 00:00:00'),(90,243,4436,224742,'1992-05-04 00:00:00'),(37,522,4036,451123,'2012-02-15 00:00:00'),(39,129,3723,198950,'2007-12-28 00:00:00'),(39,208,47,707347,'2000-04-05 00:00:00'),(94,855,4384,32536,'2016-05-07 00:00:00'),(81,48,2636,956827,'1987-11-05 00:00:00'),(1,256,1102,460362,'2013-05-21 00:00:00'),(90,259,4425,835623,'1971-11-14 00:00:00'),(41,86,3672,618230,'2011-10-06 00:00:00'),(47,1165,3962,888014,'2005-03-29 00:00:00'),(51,1345,176,566384,'2005-01-23 00:00:00'),(71,1368,4909,719522,'1980-05-24 00:00:00'),(84,240,2256,105245,'1985-02-09 00:00:00'),(11,971,1813,65571,'1976-03-13 00:00:00'),(63,24,549,116296,'2002-03-11 00:00:00'),(22,79,1611,764123,'2001-05-14 00:00:00'),(26,372,2972,992199,'1978-05-30 00:00:00'),(47,840,3552,485557,'1974-01-30 00:00:00'),(67,1403,3010,76936,'1977-01-17 00:00:00'),(75,1262,1175,222546,'1984-09-15 00:00:00'),(11,450,1195,314262,'1983-05-13 00:00:00'),(65,706,4201,591422,'1982-02-21 00:00:00'),(100,569,3277,355311,'1995-07-03 00:00:00'),(35,937,962,452817,'1980-09-20 00:00:00'),(48,1347,1085,258248,'2010-10-15 00:00:00'),(96,169,3637,281272,'2012-05-26 00:00:00'),(44,343,4890,745407,'1979-07-15 00:00:00'),(37,295,1175,901638,'1999-11-25 00:00:00'),(55,335,811,649571,'1975-04-01 00:00:00'),(75,1426,3123,685086,'1985-01-30 00:00:00'),(73,285,2994,147520,'1978-07-31 00:00:00'),(44,147,4086,922162,'2005-09-12 00:00:00'),(11,575,2071,700328,'1978-01-24 00:00:00'),(11,1063,1390,498188,'2007-02-27 00:00:00'),(83,686,4199,586456,'2018-08-17 00:00:00'),(5,1249,4836,869384,'1986-01-09 00:00:00'),(92,146,787,408797,'1983-07-05 00:00:00');
/*!40000 ALTER TABLE `tariffication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `top_5_by_activity`
--

DROP TABLE IF EXISTS `top_5_by_activity`;
/*!50001 DROP VIEW IF EXISTS `top_5_by_activity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_5_by_activity` AS SELECT 
 1 AS `fio`,
 1 AS `activity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('corporate','personal') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `last_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  `org_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'null',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'personal','Evalyn','Wilkinson',NULL),(2,'corporate',NULL,NULL,'Emard and Sons'),(3,'corporate',NULL,NULL,'Legros-Jones'),(4,'personal','Pierce','Konopelski',NULL),(5,'corporate',NULL,NULL,'Ruecker-Senger'),(6,'personal','Madalyn','Armstrong',NULL),(7,'personal','Ada','Hilpert',NULL),(8,'personal','Elinor','Stokes',NULL),(9,'personal','Max','Kreiger',NULL),(10,'corporate',NULL,NULL,'Schmidt, Koch and Jerde'),(11,'corporate',NULL,NULL,'Blick Ltd'),(12,'personal','Marielle','Deckow',NULL),(13,'personal','Germaine','Skiles',NULL),(14,'personal','Anastacio','Kshlerin',NULL),(15,'personal','Rossie','Kuhn',NULL),(16,'personal','Juvenal','Harvey',NULL),(17,'corporate',NULL,NULL,'Streich, Christiansen and Rohan'),(18,'personal','Preston','Dibbert',NULL),(19,'personal','Yasmine','Barrows',NULL),(20,'personal','Eve','Grant',NULL),(21,'corporate',NULL,NULL,'Daugherty, Maggio and Pouros'),(22,'corporate',NULL,NULL,'Altenwerth, White and Wisozk'),(23,'corporate',NULL,NULL,'Bernier Ltd'),(24,'personal','Joshua','Altenwerth',NULL),(25,'corporate',NULL,NULL,'Reichel, Kunze and Jenkins'),(26,'corporate',NULL,NULL,'Wilkinson-Lynch'),(27,'personal','Jocelyn','Upton',NULL),(28,'personal','Keira','Schmeler',NULL),(29,'corporate',NULL,NULL,'Buckridge, Huels and Kling'),(30,'personal','Loy','Runte',NULL),(31,'personal','Kelvin','Ruecker',NULL),(32,'corporate',NULL,NULL,'Dicki, Muller and Feeney'),(33,'personal','Chance','Kutch',NULL),(34,'corporate',NULL,NULL,'Bode, Stanton and Wiegand'),(35,'personal','Kendrick','Lubowitz',NULL),(36,'personal','Lynn','Gerlach',NULL),(37,'personal','Sterling','Herman',NULL),(38,'corporate',NULL,NULL,'Mills, Lesch and Fadel'),(39,'corporate',NULL,NULL,'Dach, Flatley and Friesen'),(40,'corporate',NULL,NULL,'O\'Connell-Dickens'),(41,'personal','Dorcas','Oberbrunner',NULL),(42,'corporate',NULL,NULL,'Marks, Medhurst and Lesch'),(43,'corporate',NULL,NULL,'Harvey-Mosciski'),(44,'personal','Darron','Tremblay',NULL),(45,'corporate',NULL,NULL,'Brown, Streich and Rempel'),(46,'corporate',NULL,NULL,'Schumm PLC'),(47,'personal','Nils','Murazik',NULL),(48,'personal','Tanner','O\'Reilly',NULL),(49,'personal','Violette','Stark',NULL),(50,'personal','Sydney','Eichmann',NULL),(51,'corporate',NULL,NULL,'Kshlerin-Morissette'),(52,'personal','Woodrow','Sanford',NULL),(53,'personal','Alysha','Lowe',NULL),(54,'personal','Darian','Greenfelder',NULL),(55,'corporate',NULL,NULL,'Nicolas-Vandervort'),(56,'corporate',NULL,NULL,'Kemmer Ltd'),(57,'personal','Alia','Jast',NULL),(58,'personal','Corbin','Ortiz',NULL),(59,'personal','Eriberto','Tillman',NULL),(60,'corporate',NULL,NULL,'Terry, Cruickshank and Armstrong'),(61,'corporate',NULL,NULL,'Moen and Sons'),(62,'corporate',NULL,NULL,'Schuppe, Fahey and Hermann'),(63,'personal','Dax','Donnelly',NULL),(64,'personal','Theodore','Sawayn',NULL),(65,'corporate',NULL,NULL,'Bode LLC'),(66,'corporate',NULL,NULL,'Dare-Becker'),(67,'personal','Neha','Lemke',NULL),(68,'corporate',NULL,NULL,'Anderson-Stark'),(69,'personal','Geoffrey','Marquardt',NULL),(70,'corporate',NULL,NULL,'Sporer, Leuschke and Kerluke'),(71,'personal','Jordon','Davis',NULL),(72,'corporate',NULL,NULL,'Mayert, Von and Metz'),(73,'personal','Letitia','Johnson',NULL),(74,'corporate',NULL,NULL,'Torp, Lubowitz and Mills'),(75,'corporate',NULL,NULL,'Strosin Inc'),(76,'corporate',NULL,NULL,'Ebert, McKenzie and Schoen'),(77,'corporate',NULL,NULL,'Roberts, Lynch and Langosh'),(78,'personal','Werner','Greenholt',NULL),(79,'corporate',NULL,NULL,'Collins, Hoeger and Durgan'),(80,'personal','Kenna','Lowe',NULL),(81,'corporate',NULL,NULL,'Schamberger, Macejkovic and Bechtelar'),(82,'personal','America','Waelchi',NULL),(83,'personal','Dane','Shanahan',NULL),(84,'corporate',NULL,NULL,'Reinger-Torphy'),(85,'corporate',NULL,NULL,'Quitzon-Parker'),(86,'corporate',NULL,NULL,'Gerhold, Lubowitz and Block'),(87,'personal','Curt','Fritsch',NULL),(88,'personal','Myrtis','Ondricka',NULL),(89,'corporate',NULL,NULL,'Schaden, Trantow and Nader'),(90,'personal','Randi','Dach',NULL),(91,'personal','Jaleel','Feest',NULL),(92,'corporate',NULL,NULL,'Stanton-Kozey'),(93,'corporate',NULL,NULL,'Wilkinson and Sons'),(94,'corporate',NULL,NULL,'Mertz, Rosenbaum and Fritsch'),(95,'personal','Mikayla','Gleichner',NULL),(96,'personal','Mandy','Schuppe',NULL),(97,'corporate',NULL,NULL,'Rippin Inc'),(98,'corporate',NULL,NULL,'Padberg-Pfeffer'),(99,'personal','Watson','Keeling',NULL),(100,'personal','Fern','Abbott',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'commercial_base'
--
/*!50003 DROP FUNCTION IF EXISTS `con_priority_by_inn` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `con_priority_by_inn`(for_con_id INT) RETURNS text CHARSET utf8mb4
    READS SQL DATA
BEGIN

	DECLARE proceeds float;
        
    SET proceeds = (
		SELECT round(sum(price_month))
		FROM inn t1
		inner join contracts t2 on t1.inn=t2.inn
		left join sim t3 on t2.id_con=t3.id_sim
		left join service t4 on t4.id=t3.service_id
		where t2.id_con = for_con_id
		group by t1.inn);
    


RETURN CASE WHEN proceeds >10000 THEN 'high priority' WHEN proceeds>4000 THEN 'medium priority' ELSE 'low priority' END ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `offer_to_change_tariff` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `offer_to_change_tariff`(IN traffic_size INT, IN minute_size INT, IN message_size INT)
BEGIN
	SELECT sim_num, `type`,
	if (t2.first_name is null, t2.org_name, concat (first_name, ' ', last_name)) as user_name
	FROM sim t1
	left join users t2 on t1.users_id=t2.id
	where id_sim in (select sim_id from  tariffication where internet_traffic > traffic_size)
	union
    SELECT sim_num, `type`,
	if (t2.first_name is null, t2.org_name, concat (first_name, ' ', last_name)) as user_name
	FROM sim t1
	left join users t2 on t1.users_id=t2.id
	where id_sim in (select sim_id from  tariffication where num_minutes > minute_size)
	union
    SELECT sim_num, `type`,
	if (t2.first_name is null, t2.org_name, concat (first_name, ' ', last_name)) as user_name
	FROM sim t1
	left join users t2 on t1.users_id=t2.id
	where id_sim in (select sim_id from  tariffication where num_messages > message_size);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `top_5_by_activity`
--

/*!50001 DROP VIEW IF EXISTS `top_5_by_activity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_5_by_activity` AS select concat(`managers`.`first_name`,' ',`managers`.`last_name`) AS `fio`,((sum(`crm`.`num_call`) + sum(`crm`.`num_sale`)) + sum(`crm`.`num_meeting`)) AS `activity` from (`managers` left join `crm` on((`crm`.`managers_id` = `managers`.`id`))) group by `fio` order by `activity` desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-01 17:48:10
