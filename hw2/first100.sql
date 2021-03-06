-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: mysql
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) /*!50100 TABLESPACE `mysql` */ ENGINE=InnoDB DEFAULT CHARSET=utf8 STATS_PERSISTENT=0 COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--
-- WHERE:  1 limit 100

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (694,'(JSON'),(493,'->'),(204,'->>'),(682,'<>'),(529,'ACCOUNT'),(667,'ACTION'),(468,'ADD'),(171,'ADMIN'),(333,'AES_DECRYPT'),(642,'AES_ENCRYPT'),(514,'AFTER'),(413,'AGAINST'),(114,'AGGREGATE'),(473,'ALGORITHM'),(221,'ALL'),(269,'ALTER'),(664,'ANALYZE'),(577,'AND'),(162,'ANY_VALUE'),(470,'ARCHIVE'),(500,'AS'),(671,'ASC'),(3,'AT'),(151,'AUTOCOMMIT'),(49,'AUTOEXTEND_SIZE'),(502,'AUTO_INCREMENT'),(469,'AVG_ROW_LENGTH'),(169,'BACKUP'),(220,'BEFORE'),(636,'BEGIN'),(563,'BETWEEN'),(433,'BIGINT'),(54,'BINARY'),(574,'BINLOG'),(377,'BIN_TO_UUID'),(584,'BOOL'),(74,'BOOLEAN'),(235,'BOTH'),(688,'BTREE'),(363,'BY'),(497,'BYTE'),(138,'CACHE'),(568,'CALL'),(390,'CAN_ACCESS_COLUMN'),(528,'CAN_ACCESS_DATABASE'),(148,'CAN_ACCESS_TABLE'),(593,'CAN_ACCESS_VIEW'),(191,'CASCADE'),(450,'CASE'),(337,'CATALOG_NAME'),(602,'CEIL'),(644,'CEILING'),(205,'CHAIN'),(396,'CHANGE'),(496,'CHANNEL'),(277,'CHAR'),(185,'CHARACTER'),(465,'CHARSET'),(361,'CHECK'),(66,'CHECKSUM'),(451,'CIPHER'),(78,'CLASS_ORIGIN'),(534,'CLIENT'),(39,'CLOSE'),(690,'COALESCE'),(548,'CODE'),(494,'COLLATE'),(686,'COLLATION'),(251,'COLUMN'),(349,'COLUMNS'),(376,'COLUMN_NAME'),(84,'COMMENT'),(486,'COMMIT'),(630,'COMMITTED'),(105,'COMPACT'),(348,'COMPLETION'),(311,'COMPONENT'),(299,'COMPRESSED'),(85,'COMPRESSION'),(587,'CONCURRENT'),(112,'CONDITION'),(38,'CONNECTION'),(591,'CONSISTENT'),(665,'CONSTRAINT'),(479,'CONSTRAINT_CATALOG'),(142,'CONSTRAINT_NAME'),(661,'CONSTRAINT_SCHEMA'),(452,'CONTINUE'),(143,'CONVERT'),(418,'COUNT'),(207,'CREATE'),(172,'CROSS'),(157,'CSV'),(518,'CUME_DIST'),(571,'CURRENT_ROLE'),(55,'CURRENT_USER'),(200,'CURSOR'),(508,'CURSOR_NAME'),(370,'DATA'),(325,'DATABASE');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-14 14:28:32
