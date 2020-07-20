-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: hostel_management1
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `student_id` int(11) NOT NULL,
  `attendance_date` date NOT NULL,
  `present_absent` char(1) DEFAULT NULL,
  PRIMARY KEY (`student_id`,`attendance_date`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,'2019-10-12','A'),(1,'2019-10-13','A'),(1,'2019-10-14','A'),(1,'2019-10-15','A'),(1,'2019-10-16','A'),(1,'2019-10-17','A'),(1,'2019-10-18','A'),(1,'2019-10-19','A'),(2,'2019-10-12','A'),(3,'2019-10-12','P'),(4,'2019-10-12','P'),(6,'2019-10-12','P'),(7,'2019-10-12','P');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gaurdian`
--

DROP TABLE IF EXISTS `gaurdian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gaurdian` (
  `gaurdian_id` int(11) NOT NULL,
  `gaurdian_name` varchar(30) DEFAULT NULL,
  `student_id` int(11) NOT NULL,
  `gaurdian_mobile` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`student_id`,`gaurdian_id`),
  CONSTRAINT `gaurdian_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gaurdian`
--

LOCK TABLES `gaurdian` WRITE;
/*!40000 ALTER TABLE `gaurdian` DISABLE KEYS */;
INSERT INTO `gaurdian` VALUES (1,'abcd',1,'8888403407',NULL),(2,'abcdef',2,'8888403407',NULL),(3,'abcdefg',3,'8888403407',NULL),(4,'Suraj Jeswani',4,'9373222127',NULL);
/*!40000 ALTER TABLE `gaurdian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel`
--

DROP TABLE IF EXISTS `hostel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hostel` (
  `hostel_id` int(11) NOT NULL,
  `hostel_name` varchar(30) DEFAULT NULL,
  `hostel_address` varchar(50) DEFAULT NULL,
  `hostel_contact` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`hostel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel`
--

LOCK TABLES `hostel` WRITE;
/*!40000 ALTER TABLE `hostel` DISABLE KEYS */;
INSERT INTO `hostel` VALUES (1,'Boys Hostel','PICT','999999999');
/*!40000 ALTER TABLE `hostel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `late`
--

DROP TABLE IF EXISTS `late`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `late` (
  `late_id` int(11) NOT NULL,
  `late_date` date DEFAULT NULL,
  `late_time` time DEFAULT NULL,
  `late_reason` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`late_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `late`
--

LOCK TABLES `late` WRITE;
/*!40000 ALTER TABLE `late` DISABLE KEYS */;
INSERT INTO `late` VALUES (1,'2019-10-15','17:45:00','laziness'),(2,'2019-10-16','17:06:00','laziness'),(3,'2019-10-07','11:11:00','None'),(4,'2019-10-07','11:11:00','None'),(5,'2019-10-09','04:46:00','None');
/*!40000 ALTER TABLE `late` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave2`
--

DROP TABLE IF EXISTS `leave2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave2` (
  `leave_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  PRIMARY KEY (`leave_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `leave2_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave2`
--

LOCK TABLES `leave2` WRITE;
/*!40000 ALTER TABLE `leave2` DISABLE KEYS */;
INSERT INTO `leave2` VALUES (1,1,'2019-10-12','2019-10-19');
/*!40000 ALTER TABLE `leave2` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`yash`@`localhost`*/ /*!50003 TRIGGER `leave_affects_attendance` AFTER INSERT ON `leave2` FOR EACH ROW begin
    declare datediff integer;
    declare i integer;
    declare date1 date;
    select DATEDIFF(new.end,new.start) into datediff;
    set i=0;
    set date1=new.start;
    while i<=datediff do
        insert into attendance values(new.student_id,date1,'A');
        select DATE_ADD(date1,INTERVAL 1 day) into date1;
         set i=i+1;
    end while;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `login_signup`
--

DROP TABLE IF EXISTS `login_signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_signup` (
  `login_id` varchar(30) DEFAULT NULL,
  `email_id` varchar(30) NOT NULL,
  `login_pass` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_signup`
--

LOCK TABLES `login_signup` WRITE;
/*!40000 ALTER TABLE `login_signup` DISABLE KEYS */;
INSERT INTO `login_signup` VALUES ('Yash Jeswani','yashjeswani2420@gmail.com','Yash@2420');
/*!40000 ALTER TABLE `login_signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int(10) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,3,'2000-04-02',100000,'YES');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `room_no` int(11) NOT NULL,
  `room_type` varchar(20) DEFAULT NULL,
  `room_capacity` int(11) DEFAULT NULL,
  `room_availability` int(11) DEFAULT NULL,
  `hostel_id` int(11) NOT NULL,
  PRIMARY KEY (`room_no`,`hostel_id`),
  KEY `hostel_id` (`hostel_id`),
  CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`hostel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (101,'Un-Furnished',3,0,1),(102,'Un-Furnished',3,2,1),(103,'Un-Furnished',3,1,1),(201,'Furnished',3,3,1),(203,'Furnished',3,2,1);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(30) DEFAULT NULL,
  `student_address` varchar(50) DEFAULT NULL,
  `adhaarno` varchar(12) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `hostel_id` int(11) DEFAULT NULL,
  `reg_id` varchar(12) DEFAULT NULL,
  `year_of_engg` int(11) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `deposit` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `room_no` (`room_no`),
  KEY `hostel_id` (`hostel_id`,`room_no`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`hostel_id`, `room_no`) REFERENCES `rooms` (`hostel_id`, `room_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'Soham Kotalwar','Nanded','8888888888','soham.kotalwar10@gmail.com',101,1,'I2k17102307',3,'2019-10-09',10000),(2,'kunal sachdev','Nashik','8888888888','kunalsachdev456@gmail.com',101,1,'I2k17102359',3,'2019-10-09',10000),(3,'888888888888888888','Akola','8888888889','yashjeswani2420@gmail.com',101,1,'I2k17102353',3,'2018-10-10',10000),(4,'yash jeswani','PICT PUNE','677292089033','yash@gmail.com',103,1,'I2k17102353',3,'2019-10-11',10000),(6,'sumit jadhwani','akot Dist Akola','677292089034','sumit@gmail.com',203,1,'I2K17102356',3,'2000-03-05',10000),(7,'Ankush Rathi','Akot','677292089045','ankush@gmail.com',103,1,'I2K17102348',3,'2000-02-04',10000),(8,'Hrusi Makode','akola','677292089056','hrushi@gmail.com',102,1,'I2K17102398',4,'1999-03-04',10000);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `add_student` BEFORE INSERT ON `student` FOR EACH ROW begin
    if((select room_no from rooms where room_no=new.room_no and hostel_id=new.hostel_id)is null) then
        if(new.room_no=101 OR new.room_no=102 OR new.room_no=103)then
            insert into rooms values(new.room_no,'Un-Furnished',3,2,new.hostel_id);
        else
            insert into rooms values(new.room_no,'Furnished',3,2,new.hostel_id);
        end if;
    else 
        update rooms set room_availability=room_availability-1 where room_no=new.room_no and hostel_id=new.hostel_id;
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_student` BEFORE DELETE ON `student` FOR EACH ROW begin
    delete from leave2 where student_id=old.student_id;
    delete from attendance where student_id=old.student_id;
    delete from payment where student_id=old.student_id;
    delete from student_mobile where student_id=old.student_id;
    delete from student_arrives_late where student_id=old.student_id;
    delete from gaurdian where student_id=old.student_id;
    if((select room_availability from rooms where room_no=old.room_no and hostel_id=old.hostel_id)<(select room_capacity from rooms where room_no=old.room_no and hostel_id=old.hostel_id))then
    update rooms set room_availability=room_availability+1 where room_no=old.room_no and hostel_id=old.hostel_id;
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `student_arrives_late`
--

DROP TABLE IF EXISTS `student_arrives_late`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_arrives_late` (
  `student_id` int(11) NOT NULL,
  `late_id` int(11) NOT NULL,
  PRIMARY KEY (`student_id`,`late_id`),
  KEY `late_id` (`late_id`),
  CONSTRAINT `student_arrives_late_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`),
  CONSTRAINT `student_arrives_late_ibfk_2` FOREIGN KEY (`late_id`) REFERENCES `late` (`late_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_arrives_late`
--

LOCK TABLES `student_arrives_late` WRITE;
/*!40000 ALTER TABLE `student_arrives_late` DISABLE KEYS */;
INSERT INTO `student_arrives_late` VALUES (2,5);
/*!40000 ALTER TABLE `student_arrives_late` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_mobile`
--

DROP TABLE IF EXISTS `student_mobile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_mobile` (
  `student_id` int(11) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  PRIMARY KEY (`student_id`,`mobile_no`),
  CONSTRAINT `student_mobile_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_mobile`
--

LOCK TABLES `student_mobile` WRITE;
/*!40000 ALTER TABLE `student_mobile` DISABLE KEYS */;
INSERT INTO `student_mobile` VALUES (1,'7276703686'),(2,'8411016653'),(3,'9028952127'),(4,'9028952127');
/*!40000 ALTER TABLE `student_mobile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-16 15:17:05
