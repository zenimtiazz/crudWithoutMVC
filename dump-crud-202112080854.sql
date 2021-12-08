CREATE DATABASE `crud` ;

CREATE TABLE `CLASS` (
  `name` varchar(100)  DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `c_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`c_id`)
) ;

INSERT INTO `CLASS` VALUES ('Lammar','Antwerp',1),('Giertz','Gent',2),('Giertz','Antwerp',3),('Lammar','Brussels',4);

CREATE TABLE `STUDENT` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100)  DEFAULT NULL,
  `email` varchar(100)  DEFAULT NULL,
  `c_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `STUDENT_FK` (`c_id`),
  CONSTRAINT `STUDENT_FK` FOREIGN KEY (`c_id`) REFERENCES `CLASS` (`c_id`)
) 

INSERT INTO `STUDENT` VALUES (1,'zain','zenimtiaz@gmail.com',1),(2,'Daryle','darylbecode@gmail.com',1),(3,'sofiane','sofianebecode@gmail.com',1),(4,'neha','nehabecode@gmail.com',1),(5,'nama','namabecode@gmail.com',2),(7,'iara','iarakhan@gmail.com',3),(9,'sonia','sonia@gmail.com',3),(12,'xioqi','xiaoqiki@gmail.com',2),(13,'ali','ali@gmail.com',3);

CREATE TABLE `TEACHER` (
  `name` varchar(100)  DEFAULT NULL,
  `email` varchar(100)  DEFAULT NULL,
  `id` int DEFAULT NULL,
  `c_id` int DEFAULT NULL,
  KEY `TEACHER_FK_1` (`c_id`),
  CONSTRAINT `TEACHER_FK_1` FOREIGN KEY (`c_id`) REFERENCES `CLASS` (`c_id`)
) ;

INSERT INTO `TEACHER` VALUES ('Tim','timbroos@gmail.com',1,NULL),('sicco','siccosmith@gmail.com',2,NULL),('sharron','sharon@gmail.com',3,NULL),('Nick','nickbecode.com',4,NULL);
