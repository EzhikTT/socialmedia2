-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: socialmedia
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `friend` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES (2,1,3),(3,1,2),(4,1,4);
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `title` varchar(64) NOT NULL,
  `desc` varchar(256) NOT NULL,
  `author` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'2020-07-04 09:01:29','Найден первый случай COVID19','В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши','Министерство здравоохранения КНР'),(2,'2020-07-04 09:01:29','Найден второй случай COVID19','В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши','Министерство здравоохранения КНР'),(3,'2020-07-04 09:01:29','Найден третий случай COVID19','В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши','Министерство здравоохранения КНР'),(4,'2020-07-04 09:01:29','Найден четвертый случай COVID19','В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши','Министерство здравоохранения КНР'),(5,'2020-07-04 09:01:29','Найден пятый случай COVID19','В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши','Министерство здравоохранения КНР'),(6,'2020-07-04 09:01:29','Найден шестой случай COVID19','В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши','Министерство здравоохранения КНР'),(7,'2020-07-04 09:01:29','Найден седьмой случай COVID19','В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши','Министерство здравоохранения КНР'),(8,'2020-07-04 09:01:29','Найден восьмой случай COVID19','В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши','Министерство здравоохранения КНР'),(9,'2020-07-04 09:01:29','Найден девятый случай COVID19','В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши','Министерство здравоохранения КНР'),(10,'2020-07-04 09:01:29','Найден десятый случай COVID19','В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши','Министерство здравоохранения КНР'),(11,'2020-07-04 09:01:29','Найден одиннадцатый случай COVID19','В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши','Министерство здравоохранения КНР'),(12,'2020-07-04 09:01:29','Найден двеннадцатый случай COVID19','В ноябре в Китае был выявлен первй случай заражения COVID-19 из-за съеденной летучей мыши','Министерство здравоохранения КНР'),(13,'2020-07-04 10:42:10','Нас стало больше!','Ура! Нас теперь Array на нашем дружном вирусном портале!','Команда Bacterium, Inc'),(14,'2020-07-04 10:42:11','Нас стало больше!','Ура! Нас теперь Array на нашем дружном вирусном портале!','Команда Bacterium, Inc'),(15,'2020-07-04 10:43:33','Нас стало больше!','Ура! Нас теперь 2 на нашем дружном вирусном портале!','Команда Bacterium, Inc'),(16,'2020-07-04 10:43:33','Нас стало больше!','Ура! Нас теперь 3 на нашем дружном вирусном портале!','Команда Bacterium, Inc'),(17,'2020-07-04 10:58:21','Нас стало больше!','Ура! Нас теперь 4 на нашем дружном вирусном портале!','Команда Bacterium, Inc');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(16) NOT NULL,
  `userId` int(11) NOT NULL,
  `otherId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (4,'ADD_FRIEND',1,2);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(16) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (1,'online',1),(2,'online',1),(3,'online',1),(4,'online',1),(5,'online',1),(6,'online',1),(7,'online',1),(8,'offline',1);
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `type` varchar(256) NOT NULL,
  `dateOpen` varchar(16) NOT NULL,
  `password` varchar(256) NOT NULL,
  `login` varchar(256) NOT NULL,
  `avatar` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Корона вирус 1','SARS-nCoV-2','1571270400','password','covid19','//192.168.64.3/uploads/covid19avatar.jpg'),(2,'Грипп','J11','-2177452800','gripp','gripp',NULL),(3,'Грипп','J110','-2177452800','gripp1','gripp1',NULL),(4,'1','1','-27080352000','1','1',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-22 10:19:22
