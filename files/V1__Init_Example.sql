DROP TABLE IF EXISTS `demo_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `demo_users` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `ci` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `email` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `role` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `school` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='demo_users';
/*!40101 SET character_set_client = @saved_cs_client */;
