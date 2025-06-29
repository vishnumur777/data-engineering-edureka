
use varunm15t38hedu;
DROP TABLE IF EXISTS `regions`;
CREATE TABLE `regions` (
  `region_id` int NOT NULL,
  `region_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`region_id`),
  UNIQUE KEY `reg_id_pk` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
LOCK TABLES `regions` WRITE;
INSERT INTO `regions` VALUES (1,'Europe'),(2,'Americas'),(3,'Asia'),(4,'Middle East and Africa');
UNLOCK TABLES;
