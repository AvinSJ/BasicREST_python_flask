-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: database_of_movies
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `movie_list`
--

DROP TABLE IF EXISTS `movie_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_list` (
  `ID` int NOT NULL,
  `Title` text NOT NULL,
  `Director` text NOT NULL,
  `Year_of_release` year NOT NULL,
  `Genre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_list`
--

LOCK TABLES `movie_list` WRITE;
/*!40000 ALTER TABLE `movie_list` DISABLE KEYS */;
INSERT INTO `movie_list` (`ID`, `Title`, `Director`, `Year_of_release`, `Genre`) VALUES (1,'Harry Potter and the Philosopher\'s Stone','Chris Columbus',2001,'Fantasy'),(2,'Pulp Fiction','Quintin Tarantino',1994,'Dark Comedy'),(3,'Fight Club','David Fischer',1999,'Dark Comedy'),(4,'Titanic','James Cameron',1997,'Romance'),(5,'The Lord of The Rings','Peter Jackson',2003,'Fantast'),(6,'Jurassic Park','Steven Spielberg',1993,'Sci-Fi'),(7,'Goodfellas','Martin Scorsese',1990,'Crime'),(8,'The Terminator','James Cameron',1984,'Sci-Fi'),(9,'American Beauty','Sam Mendes',1999,'Drama'),(10,'The Revenant','Alejandro González Iñárritu',2015,'Avdventure'),(11,' Prisoners','Denis Villeneuve',2013,'Thriller');
/*!40000 ALTER TABLE `movie_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-02 16:33:06
