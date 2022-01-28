CREATE DATABASE  IF NOT EXISTS `AutNode` 
USE `AutNode`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: AutNode
-- ------------------------------------------------------
-- Server version	5.7.17-log

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
CREATE TABLE `servico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `usuarioId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_8cc43c2c686eb764e95a9a32d5f` (`usuarioId`),
  CONSTRAINT `FK_8cc43c2c686eb764e95a9a32d5f` FOREIGN KEY (`usuarioId`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
INSERT INTO `servico` VALUES (1,'manutenção em motos','consertos em geral e manutenção eletrica e mecaniuca',3);
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
INSERT INTO `token` VALUES (1,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImVkc29uYXJhdWpvMUBvdXRsb29rLmNvbSIsInN1YiI6MiwiaWF0IjoxNjQzMzk1OTIwLCJleHAiOjE2NDMzOTU5ODB9.kMwFkO1oqpqU61_5aQNnqomvJiTgckroeJHlofyyRxQ','edsonaraujo1@outlook.com'),(2,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImV1QHVvbC5jb20iLCJzdWIiOjMsImlhdCI6MTYzNzM0ODU0NywiZXhwIjoxNjM3MzQ4NjA3fQ.BcP8mQXml44HbJwfsqHvZqBJlMpVeYNarRa3UIdqXH4','eu@uol.com'),(3,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImVkc29uYXJhdWpvMUBob3RtYWlsLmNvbSIsInN1YiI6NCwiaWF0IjoxNjM3OTg3ODQyLCJleHAiOjE2Mzc5ODc5MDJ9.0dXg1-EF2Gs9ZruqBXOJ_5KH0i7fdpgPl1ZH3Frwrng','novoemail@hotfix.com');
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
INSERT INTO `usuario` VALUES (1,'Antonio Holides','antoholides@gmail.com','12345','(11)99471-0230','13552119809'),(2,'dsdsdsdsd','edsonaraujo1@outlook.com','$2b$08$weqSWcapd43BE4WD35XwSetUgOtNXhTv3N0E.9kpc8.DNEO/VeW.i','(11) 11111-1111','123.456.789-09'),(3,'eu','eu@uol.com','$2b$08$vvytjdYk/LpCYSn6mVW22.wiWmbD2PH/gypjOjcIuKOkN1iWlgo2O','(11) 11111-1111','123.456.789-09'),(4,'Holodek Araujo','edsonaraujo1@hotfix.com','$2b$08$kOmjF2ze72nGRS5/OvmfzuHVOYc2.oMEBAKojeMzINZhl1IR1v1QG','(11) 11111-1111','123.456.789-09');
UNLOCK TABLES;
