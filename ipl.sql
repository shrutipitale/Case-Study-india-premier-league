-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ipl
-- ------------------------------------------------------
-- Server version	8.4.0

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
-- Table structure for table `ipl`
--

DROP TABLE IF EXISTS `ipl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ipl` (
  `match_number` int NOT NULL,
  `Date_of_the_match` date DEFAULT NULL,
  `Name_of_venue` varchar(100) DEFAULT NULL,
  `Playing_team_1` varchar(4) DEFAULT NULL,
  `Playing_team_2` varchar(4) DEFAULT NULL,
  `Toss_Winning_team` varchar(4) DEFAULT NULL,
  `First_Innings_Score` int DEFAULT NULL,
  `First_Innings_Wickets` int DEFAULT NULL,
  `Second_Innings_Score` int DEFAULT NULL,
  `Second_Innings_Wickets` int DEFAULT NULL,
  `Win_match` varchar(100) DEFAULT NULL,
  UNIQUE KEY `match_number` (`match_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipl`
--

LOCK TABLES `ipl` WRITE;
/*!40000 ALTER TABLE `ipl` DISABLE KEYS */;
INSERT INTO `ipl` VALUES (1,'2024-03-22','MA Chidambaram Stadium','RCB','CSK','RCB',173,6,176,4,'CSK'),(2,'2024-03-23','Maharaja Yadavindra Singh International Cricket Stadium','DC','PBKS','PKBS',174,9,177,6,'PBKS'),(3,'2024-03-23','Eden Gardens','KKR','SRH','SRH',208,7,204,7,'KKR'),(4,'2024-03-24','Sawai Mansingh Stadium','RR','LSG','RR',193,4,173,6,'RR'),(5,'2024-03-24','Narendra Modi Stadium','GT','MI','GT',168,6,162,9,'GT'),(6,'2024-03-25','M. Chinnaswamy Studium','PBKS','RCB','RCB',176,6,178,6,'RCB'),(7,'2024-03-26','MA Chidambaram Stadium','CSK','GT','GT',206,6,143,8,'CSK'),(8,'2024-03-27','Rajiv Gandhi International Stadium','SRH','MI','MI',277,3,246,5,'SRH'),(9,'2024-03-28','Sawai Mansingh Stasdium','RR','DCG','DC',185,5,173,5,'RR'),(10,'2024-03-29','M. Chinnaswamy Studium','RCB','KKR','KKR',182,6,186,3,'KKR'),(11,'2024-03-30','Ekana Sports City','LSG','PBKS','LSG',199,8,178,5,'LSG'),(12,'2024-03-31','Narendra Modi Stadium','SRH','GT','SRH',162,8,168,3,'GT'),(13,'2024-03-31','ACA-VDCA Cricket Stadium','DC','CSK','DC',191,5,171,6,'DC'),(14,'2024-04-01','Wankhede Stadium','MI','RR','RR',173,6,176,4,'CSK'),(15,'2024-04-02','M. Chinnaswamy Stadium','LSG','RCB','RCB',173,6,176,4,'LSG'),(16,'2024-04-03','ACA-VDCA Cricket Stadium','KKR','DC','KKR',173,6,176,4,'KKR'),(17,'2024-04-04','Narendra Modi Stadium','GT','PBKS','PBKS',173,6,176,4,'PBKS'),(18,'2024-04-05','Rajiv Gandhi International Stadium','SRH','CSK','SRH',173,6,176,4,'SRH'),(19,'2024-04-06','Sawai Mansingh Stadium','RCB','RR','RR',183,3,189,4,'RR'),(20,'2024-04-07','Wankhede Stadium','MI','DC','DC',234,5,205,8,'MI'),(21,'2024-04-06','Ekana Sports City','LSG','GT','LSG',163,5,130,10,'LSG'),(22,'2024-04-07','MA Chidambaram Stadium','SRH','GT','CSK',137,9,141,3,'CSK'),(23,'2024-04-08','Maharaja Yadavindra Singh International Cricket Stadium','SRH','PBKS','PBKS',182,9,180,6,'SRH'),(24,'2024-04-09','Sawai Mansingh Stadium','RR','GT','GT',196,3,199,7,'GT'),(25,'2024-04-10','Wankhede Stadium','RCB','MI','MI',196,6,199,3,'MI'),(26,'2024-04-11','Ekana Sports City','LSG','DC','LSG',167,7,170,4,'DC'),(27,'2024-04-12','Maharaja Yadavindra Singh International Cricket Stadium','PBKS','RR','RR',147,8,152,7,'RR'),(28,'2024-04-13','Eden Garderns','LSG','KKR','KKR',161,7,162,2,'KKR'),(29,'2024-04-14','Wankhede Stadium','CSK','MI','MI',206,4,186,6,'CSK'),(30,'2024-04-15','\'M. Chinnaswamy Stadium\'','SRH','RCB','RCB',287,3,262,7,'SRH'),(31,'2024-04-16','Eden Garderns','KKR','RR','RR',223,6,224,8,'RR'),(32,'2024-04-17','Narendra Modi Stadium','GT','DC','DC',89,10,92,4,'DC'),(33,'2024-04-18','Maharaja Yadavindra Singh International Cricket Stadium','MI','PBKS','PBKS',192,7,183,10,'MI'),(34,'2024-04-19','Ekana Sports City','CSK','LSG','LSG',176,6,180,2,'LSG'),(35,'2024-04-20','Arun Jaitley','SRH','DC','DC',266,7,199,10,'SRH'),(36,'2024-04-21','Eden Gardens','KKR','RCB','RCB',222,6,221,10,'KKR'),(37,'2024-04-21','Maharaja Yadavindra Singh International Cricket Stadium','PBKS','GT','PBKS',142,10,146,7,'GT'),(38,'2024-04-22','Sawai Mansingh Stadium','MI','RR','MI',179,9,183,1,'RR'),(39,'2024-04-23','MA Chidambaram Stadium','CSK','LSG','LSG',210,4,213,4,'LSG'),(40,'2024-04-24','Arun Jaitley','DC','GT','GT',224,4,220,8,'DC'),(41,'2024-04-25','Eden Garderns','RCB','SRH','RCB',206,7,171,8,'RCB'),(42,'2024-04-26','Eden Garderns','KKR','PBKS','PBKS',261,6,262,2,'PBKS'),(43,'2024-04-27','Arun Jaitley','DC','MI','MI',257,4,247,9,'DC'),(44,'2024-04-27','Ekana Sports City','LSG','RR','RR',196,5,199,3,'RR'),(45,'2024-04-28','Narendra Modi Stadium','GT','RCB','RCB',200,3,206,1,'RCB'),(46,'2024-04-28','MA Chidambaram Stadium','CSK','SRH','SRH',212,3,134,10,'CSK'),(47,'2024-04-29','Eden Garderns','DC','KKR','DC',153,9,157,3,'KKR'),(48,'2024-04-30','Ekana Sports City','MI','LSG','LSG',144,7,145,6,'LSG'),(49,'2024-04-01','MA Chidambaram Stadium','CSK','PBKS','PBKS',162,7,163,3,'PBKS'),(50,'2024-04-02','Rajiv Gandhi International Stadium','SRH','RR','SRH',201,3,200,7,'SRH'),(61,'2024-05-12','MA Chidambaram Stadium','RR','CSK','RR',141,5,145,5,'CSK'),(62,'2024-05-12','M. Chinnaswamy Stadium','RCB','DC','DC',187,9,140,10,'RCB'),(63,'2024-05-13','Narendra Modi Stadium','GT','KKR','0',0,0,0,0,'Match abandomed without a ball bowled'),(64,'2024-05-14','Arun Jaitley','DC','LSG','LSG',208,4,189,9,'LSG'),(65,'2024-05-15','Barsapara Stadium','RR','PBKS','RR',144,9,145,5,'PBKS'),(66,'2024-05-16','Rajiv Gandhi International Stadium','SRH','GT','0',0,0,0,0,'Match abandomed without a ball bowled'),(67,'2024-05-17','Wankhede Stadium','LSG','MI','MI',214,6,196,6,'LSG'),(68,'2024-05-18','M. Chinnaswamy Stadium','RCB','CSK','CSK',218,5,191,7,'RCB'),(69,'2024-05-19','Rajiv Gandhi International Stadium','PBKS','SRH','PBKS',214,5,215,6,'SRH'),(70,'2024-05-19','Barsapara Stadium','RR','KKR','KKR',0,0,0,0,'NO RESULT'),(71,'2024-05-21','Narendra Modi Stadium','SRH','KKR','SRH',159,10,164,2,'KKR'),(72,'2024-05-22','Narendra Modi Stadium','RCB','RR','RR',172,8,174,6,'RR'),(73,'2024-05-24','MA Chidambaram Stadium','SRH','RR','RR',175,9,139,7,'SRH'),(74,'2024-05-26','MA Chidambaram Stadium','SRH','KKR','SRH',113,10,114,2,'KKR');
/*!40000 ALTER TABLE `ipl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-17 21:17:39
