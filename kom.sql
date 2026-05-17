/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.6-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: kom
-- ------------------------------------------------------
-- Server version	11.8.6-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `AURAS`
--

DROP TABLE IF EXISTS `AURAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `AURAS` (
  `jogador` varchar(200) DEFAULT NULL,
  `aura` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AURAS`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `AURAS` WRITE;
/*!40000 ALTER TABLE `AURAS` DISABLE KEYS */;
/*!40000 ALTER TABLE `AURAS` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Almas`
--

DROP TABLE IF EXISTS `Almas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Almas` (
  `jogador` varchar(200) NOT NULL,
  `max` int(11) DEFAULT NULL,
  `tem` int(11) DEFAULT NULL,
  PRIMARY KEY (`jogador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Almas`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Almas` WRITE;
/*!40000 ALTER TABLE `Almas` DISABLE KEYS */;
INSERT INTO `Almas` VALUES
('bcbc434f-6a51-425c-8db2-9277bbce4c59',2,2);
/*!40000 ALTER TABLE `Almas` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Arena_Elo`
--

DROP TABLE IF EXISTS `Arena_Elo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Arena_Elo` (
  `tag` varchar(200) NOT NULL,
  `elo` int(11) DEFAULT NULL,
  PRIMARY KEY (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Arena_Elo`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Arena_Elo` WRITE;
/*!40000 ALTER TABLE `Arena_Elo` DISABLE KEYS */;
/*!40000 ALTER TABLE `Arena_Elo` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Arena_GStats`
--

DROP TABLE IF EXISTS `Arena_GStats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Arena_GStats` (
  `tag` varchar(200) NOT NULL,
  `vitorias` int(11) DEFAULT NULL,
  `derrotas` int(11) DEFAULT NULL,
  PRIMARY KEY (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Arena_GStats`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Arena_GStats` WRITE;
/*!40000 ALTER TABLE `Arena_GStats` DISABLE KEYS */;
/*!40000 ALTER TABLE `Arena_GStats` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Arena_Historico`
--

DROP TABLE IF EXISTS `Arena_Historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Arena_Historico` (
  `tagWin` varchar(100) DEFAULT NULL,
  `tagLoose` varchar(100) DEFAULT NULL,
  `hora` datetime DEFAULT NULL,
  `jogadoresWin` varchar(200) DEFAULT NULL,
  `jogadoresLoose` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Arena_Historico`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Arena_Historico` WRITE;
/*!40000 ALTER TABLE `Arena_Historico` DISABLE KEYS */;
/*!40000 ALTER TABLE `Arena_Historico` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Arena_Jogadores`
--

DROP TABLE IF EXISTS `Arena_Jogadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Arena_Jogadores` (
  `jogador` varchar(200) NOT NULL,
  `gameId` int(11) DEFAULT NULL,
  `tag` varchar(200) DEFAULT NULL,
  `morto` int(11) DEFAULT NULL,
  PRIMARY KEY (`jogador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Arena_Jogadores`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Arena_Jogadores` WRITE;
/*!40000 ALTER TABLE `Arena_Jogadores` DISABLE KEYS */;
/*!40000 ALTER TABLE `Arena_Jogadores` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Arena_Jogos`
--

DROP TABLE IF EXISTS `Arena_Jogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Arena_Jogos` (
  `gameId` int(11) NOT NULL AUTO_INCREMENT,
  `tag1` varchar(50) DEFAULT NULL,
  `tag2` varchar(50) DEFAULT NULL,
  `ranked` int(11) DEFAULT NULL,
  `arenaId` int(11) DEFAULT NULL,
  PRIMARY KEY (`gameId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Arena_Jogos`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Arena_Jogos` WRITE;
/*!40000 ALTER TABLE `Arena_Jogos` DISABLE KEYS */;
/*!40000 ALTER TABLE `Arena_Jogos` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Arena_Lista`
--

DROP TABLE IF EXISTS `Arena_Lista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Arena_Lista` (
  `arenaId` int(11) NOT NULL AUTO_INCREMENT,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `z` int(11) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `spawn1` varchar(100) DEFAULT NULL,
  `spawn2` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`arenaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Arena_Lista`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Arena_Lista` WRITE;
/*!40000 ALTER TABLE `Arena_Lista` DISABLE KEYS */;
/*!40000 ALTER TABLE `Arena_Lista` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Arena_Matcher`
--

DROP TABLE IF EXISTS `Arena_Matcher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Arena_Matcher` (
  `tag` varchar(200) NOT NULL,
  `hora` datetime DEFAULT NULL,
  `ranked` int(11) DEFAULT NULL,
  PRIMARY KEY (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Arena_Matcher`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Arena_Matcher` WRITE;
/*!40000 ALTER TABLE `Arena_Matcher` DISABLE KEYS */;
/*!40000 ALTER TABLE `Arena_Matcher` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Arena_Stats`
--

DROP TABLE IF EXISTS `Arena_Stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Arena_Stats` (
  `jogador` varchar(200) NOT NULL,
  `vitorias` int(11) DEFAULT NULL,
  `derrotas` int(11) DEFAULT NULL,
  `matou` int(11) DEFAULT NULL,
  `morreu` int(11) DEFAULT NULL,
  PRIMARY KEY (`jogador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Arena_Stats`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Arena_Stats` WRITE;
/*!40000 ALTER TABLE `Arena_Stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `Arena_Stats` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Atributo`
--

DROP TABLE IF EXISTS `Atributo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Atributo` (
  `jogador` varchar(200) NOT NULL,
  `pontos` int(11) DEFAULT NULL,
  `nivelMax` int(11) DEFAULT NULL,
  `str` int(11) DEFAULT NULL,
  `dex` int(11) DEFAULT NULL,
  `inte` int(11) DEFAULT NULL,
  `cons` int(11) DEFAULT NULL,
  `vit` int(11) DEFAULT NULL,
  `agi` int(11) DEFAULT NULL,
  `luck` int(11) DEFAULT NULL,
  `wis` int(11) DEFAULT NULL,
  `pres` int(11) DEFAULT NULL,
  PRIMARY KEY (`jogador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Atributo`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Atributo` WRITE;
/*!40000 ALTER TABLE `Atributo` DISABLE KEYS */;
/*!40000 ALTER TABLE `Atributo` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `BLOCOS`
--

DROP TABLE IF EXISTS `BLOCOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `BLOCOS` (
  `local` varchar(100) NOT NULL,
  `comandos` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`local`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BLOCOS`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `BLOCOS` WRITE;
/*!40000 ALTER TABLE `BLOCOS` DISABLE KEYS */;
/*!40000 ALTER TABLE `BLOCOS` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `CLASSES`
--

DROP TABLE IF EXISTS `CLASSES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLASSES` (
  `jogador` varchar(200) NOT NULL,
  `skills` varchar(10) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `slotsbanco` int(11) DEFAULT NULL,
  `cabeca` int(11) DEFAULT NULL,
  `resets` int(11) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  PRIMARY KEY (`jogador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLASSES`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `CLASSES` WRITE;
/*!40000 ALTER TABLE `CLASSES` DISABLE KEYS */;
INSERT INTO `CLASSES` VALUES
('bcbc434f-6a51-425c-8db2-9277bbce4c59','0200002110','Irrita__',0,1,0,8);
/*!40000 ALTER TABLE `CLASSES` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Estatistica_AJUDANTE`
--

DROP TABLE IF EXISTS `Estatistica_AJUDANTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estatistica_AJUDANTE` (
  `uuid` varchar(100) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `pontos` int(11) DEFAULT NULL,
  `posicaoRank` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estatistica_AJUDANTE`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Estatistica_AJUDANTE` WRITE;
/*!40000 ALTER TABLE `Estatistica_AJUDANTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `Estatistica_AJUDANTE` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Estatistica_ALQUIMISTA`
--

DROP TABLE IF EXISTS `Estatistica_ALQUIMISTA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estatistica_ALQUIMISTA` (
  `uuid` varchar(100) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `pontos` int(11) DEFAULT NULL,
  `posicaoRank` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estatistica_ALQUIMISTA`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Estatistica_ALQUIMISTA` WRITE;
/*!40000 ALTER TABLE `Estatistica_ALQUIMISTA` DISABLE KEYS */;
/*!40000 ALTER TABLE `Estatistica_ALQUIMISTA` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Estatistica_ARENA`
--

DROP TABLE IF EXISTS `Estatistica_ARENA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estatistica_ARENA` (
  `uuid` varchar(100) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `pontos` int(11) DEFAULT NULL,
  `posicaoRank` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estatistica_ARENA`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Estatistica_ARENA` WRITE;
/*!40000 ALTER TABLE `Estatistica_ARENA` DISABLE KEYS */;
/*!40000 ALTER TABLE `Estatistica_ARENA` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Estatistica_BUILDER`
--

DROP TABLE IF EXISTS `Estatistica_BUILDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estatistica_BUILDER` (
  `uuid` varchar(100) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `pontos` int(11) DEFAULT NULL,
  `posicaoRank` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estatistica_BUILDER`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Estatistica_BUILDER` WRITE;
/*!40000 ALTER TABLE `Estatistica_BUILDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `Estatistica_BUILDER` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Estatistica_DOMINADOR`
--

DROP TABLE IF EXISTS `Estatistica_DOMINADOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estatistica_DOMINADOR` (
  `uuid` varchar(100) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `pontos` int(11) DEFAULT NULL,
  `posicaoRank` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estatistica_DOMINADOR`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Estatistica_DOMINADOR` WRITE;
/*!40000 ALTER TABLE `Estatistica_DOMINADOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `Estatistica_DOMINADOR` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Estatistica_DUNGEONS`
--

DROP TABLE IF EXISTS `Estatistica_DUNGEONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estatistica_DUNGEONS` (
  `uuid` varchar(100) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `pontos` int(11) DEFAULT NULL,
  `posicaoRank` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estatistica_DUNGEONS`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Estatistica_DUNGEONS` WRITE;
/*!40000 ALTER TABLE `Estatistica_DUNGEONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `Estatistica_DUNGEONS` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Estatistica_FAZENDEIRO`
--

DROP TABLE IF EXISTS `Estatistica_FAZENDEIRO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estatistica_FAZENDEIRO` (
  `uuid` varchar(100) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `pontos` int(11) DEFAULT NULL,
  `posicaoRank` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estatistica_FAZENDEIRO`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Estatistica_FAZENDEIRO` WRITE;
/*!40000 ALTER TABLE `Estatistica_FAZENDEIRO` DISABLE KEYS */;
/*!40000 ALTER TABLE `Estatistica_FAZENDEIRO` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Estatistica_FERREIRO`
--

DROP TABLE IF EXISTS `Estatistica_FERREIRO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estatistica_FERREIRO` (
  `uuid` varchar(100) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `pontos` int(11) DEFAULT NULL,
  `posicaoRank` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estatistica_FERREIRO`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Estatistica_FERREIRO` WRITE;
/*!40000 ALTER TABLE `Estatistica_FERREIRO` DISABLE KEYS */;
/*!40000 ALTER TABLE `Estatistica_FERREIRO` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Estatistica_LENHADOR`
--

DROP TABLE IF EXISTS `Estatistica_LENHADOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estatistica_LENHADOR` (
  `uuid` varchar(100) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `pontos` int(11) DEFAULT NULL,
  `posicaoRank` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estatistica_LENHADOR`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Estatistica_LENHADOR` WRITE;
/*!40000 ALTER TABLE `Estatistica_LENHADOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `Estatistica_LENHADOR` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Estatistica_MINERADOR`
--

DROP TABLE IF EXISTS `Estatistica_MINERADOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estatistica_MINERADOR` (
  `uuid` varchar(100) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `pontos` int(11) DEFAULT NULL,
  `posicaoRank` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estatistica_MINERADOR`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Estatistica_MINERADOR` WRITE;
/*!40000 ALTER TABLE `Estatistica_MINERADOR` DISABLE KEYS */;
/*!40000 ALTER TABLE `Estatistica_MINERADOR` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Estatistica_MOB_KILLS`
--

DROP TABLE IF EXISTS `Estatistica_MOB_KILLS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Estatistica_MOB_KILLS` (
  `uuid` varchar(100) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `pontos` int(11) DEFAULT NULL,
  `posicaoRank` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Estatistica_MOB_KILLS`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Estatistica_MOB_KILLS` WRITE;
/*!40000 ALTER TABLE `Estatistica_MOB_KILLS` DISABLE KEYS */;
INSERT INTO `Estatistica_MOB_KILLS` VALUES
('bcbc434f-6a51-425c-8db2-9277bbce4c59','Irrita__',0,0);
/*!40000 ALTER TABLE `Estatistica_MOB_KILLS` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Karma`
--

DROP TABLE IF EXISTS `Karma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Karma` (
  `jogador` varchar(200) NOT NULL,
  `karma` int(11) DEFAULT NULL,
  `fama` int(11) DEFAULT NULL,
  PRIMARY KEY (`jogador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Karma`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Karma` WRITE;
/*!40000 ALTER TABLE `Karma` DISABLE KEYS */;
INSERT INTO `Karma` VALUES
('bcbc434f-6a51-425c-8db2-9277bbce4c59',0,5);
/*!40000 ALTER TABLE `Karma` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `LOCAIS`
--

DROP TABLE IF EXISTS `LOCAIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOCAIS` (
  `nome` varchar(100) DEFAULT NULL,
  `local` varchar(100) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOCAIS`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `LOCAIS` WRITE;
/*!40000 ALTER TABLE `LOCAIS` DISABLE KEYS */;
/*!40000 ALTER TABLE `LOCAIS` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `LOOTS`
--

DROP TABLE IF EXISTS `LOOTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOOTS` (
  `uuid` varchar(100) NOT NULL,
  `items` blob DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOOTS`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `LOOTS` WRITE;
/*!40000 ALTER TABLE `LOOTS` DISABLE KEYS */;
/*!40000 ALTER TABLE `LOOTS` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `PRODUTOS`
--

DROP TABLE IF EXISTS `PRODUTOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUTOS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `preco` double NOT NULL,
  `cash` int(11) NOT NULL DEFAULT 0,
  `nickowner` varchar(50) NOT NULL,
  `itemstack` blob NOT NULL,
  `data` date DEFAULT NULL,
  `customname` varchar(255) NOT NULL DEFAULT '',
  `quantidade` int(11) NOT NULL DEFAULT 1,
  `pt_BR` varchar(255) NOT NULL DEFAULT '',
  `local` varchar(255) NOT NULL DEFAULT '',
  `tipo` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3066 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUTOS`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `PRODUTOS` WRITE;
/*!40000 ALTER TABLE `PRODUTOS` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRODUTOS` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Pixel_Perguntas`
--

DROP TABLE IF EXISTS `Pixel_Perguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pixel_Perguntas` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `UUID` varchar(100) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `pergunta` text DEFAULT NULL,
  `servidor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pixel_Perguntas`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Pixel_Perguntas` WRITE;
/*!40000 ALTER TABLE `Pixel_Perguntas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pixel_Perguntas` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Pixel_Respostas`
--

DROP TABLE IF EXISTS `Pixel_Respostas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pixel_Respostas` (
  `numero` mediumint(9) NOT NULL AUTO_INCREMENT,
  `UUID` varchar(100) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `id` mediumint(9) DEFAULT NULL,
  `pergunta` text DEFAULT NULL,
  `resposta` text DEFAULT NULL,
  `playerOffline` varchar(100) DEFAULT NULL,
  `servidor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pixel_Respostas`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Pixel_Respostas` WRITE;
/*!40000 ALTER TABLE `Pixel_Respostas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pixel_Respostas` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Players`
--

DROP TABLE IF EXISTS `Players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Players` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `uuid` varchar(36) DEFAULT NULL,
  `sexo` tinyint(1) DEFAULT NULL,
  `titulo` varchar(20) DEFAULT NULL,
  `cortitulo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Players`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Players` WRITE;
/*!40000 ALTER TABLE `Players` DISABLE KEYS */;
INSERT INTO `Players` VALUES
(1,'Irrita__','bcbc434f-6a51-425c-8db2-9277bbce4c59',0,'','AQUA');
/*!40000 ALTER TABLE `Players` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `RETORNO`
--

DROP TABLE IF EXISTS `RETORNO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RETORNO` (
  `uuid` varchar(100) NOT NULL,
  `qtd` int(11) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RETORNO`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `RETORNO` WRITE;
/*!40000 ALTER TABLE `RETORNO` DISABLE KEYS */;
/*!40000 ALTER TABLE `RETORNO` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `SPECS`
--

DROP TABLE IF EXISTS `SPECS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `SPECS` (
  `jogador` varchar(200) NOT NULL,
  `skills` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`jogador`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPECS`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `SPECS` WRITE;
/*!40000 ALTER TABLE `SPECS` DISABLE KEYS */;
/*!40000 ALTER TABLE `SPECS` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `STAGES`
--

DROP TABLE IF EXISTS `STAGES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `STAGES` (
  `uuid` varchar(50) DEFAULT NULL,
  `stage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STAGES`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `STAGES` WRITE;
/*!40000 ALTER TABLE `STAGES` DISABLE KEYS */;
/*!40000 ALTER TABLE `STAGES` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `TitulosNew`
--

DROP TABLE IF EXISTS `TitulosNew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `TitulosNew` (
  `uuid` varchar(200) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `cor` varchar(20) NOT NULL,
  PRIMARY KEY (`uuid`,`titulo`,`cor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TitulosNew`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `TitulosNew` WRITE;
/*!40000 ALTER TABLE `TitulosNew` DISABLE KEYS */;
/*!40000 ALTER TABLE `TitulosNew` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `Torres`
--

DROP TABLE IF EXISTS `Torres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Torres` (
  `tag` varchar(200) NOT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `z` int(11) DEFAULT NULL,
  `world` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Torres`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `Torres` WRITE;
/*!40000 ALTER TABLE `Torres` DISABLE KEYS */;
/*!40000 ALTER TABLE `Torres` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `banco`
--

DROP TABLE IF EXISTS `banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `banco` (
  `uuid` varchar(50) NOT NULL,
  `items` blob DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `economy`
--

DROP TABLE IF EXISTS `economy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `economy` (
  `uuid` varchar(100) NOT NULL,
  `nick` varchar(100) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `lastLogin` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `economy`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `economy` WRITE;
/*!40000 ALTER TABLE `economy` DISABLE KEYS */;
/*!40000 ALTER TABLE `economy` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `glds`
--

DROP TABLE IF EXISTS `glds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `glds` (
  `tag` varchar(10) NOT NULL,
  `qtd` int(11) DEFAULT NULL,
  PRIMARY KEY (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `glds`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `glds` WRITE;
/*!40000 ALTER TABLE `glds` DISABLE KEYS */;
/*!40000 ALTER TABLE `glds` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `holograms`
--

DROP TABLE IF EXISTS `holograms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `holograms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loc` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holograms`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `holograms` WRITE;
/*!40000 ALTER TABLE `holograms` DISABLE KEYS */;
/*!40000 ALTER TABLE `holograms` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `kk`
--

DROP TABLE IF EXISTS `kk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `kk` (
  `tag` varchar(10) NOT NULL,
  `world` varchar(20) DEFAULT NULL,
  `x` int(11) DEFAULT NULL,
  `z` int(11) DEFAULT NULL,
  `owner` varchar(200) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  PRIMARY KEY (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `kk` WRITE;
/*!40000 ALTER TABLE `kk` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `komquistas`
--

DROP TABLE IF EXISTS `komquistas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `komquistas` (
  `Date` date DEFAULT NULL,
  `tag` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `komquistas`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `komquistas` WRITE;
/*!40000 ALTER TABLE `komquistas` DISABLE KEYS */;
/*!40000 ALTER TABLE `komquistas` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `last`
--

DROP TABLE IF EXISTS `last`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `last` (
  `tag` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `last`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `last` WRITE;
/*!40000 ALTER TABLE `last` DISABLE KEYS */;
/*!40000 ALTER TABLE `last` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `poder`
--

DROP TABLE IF EXISTS `poder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `poder` (
  `minhaTag` varchar(10) NOT NULL,
  `qtd` int(11) DEFAULT NULL,
  PRIMARY KEY (`minhaTag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poder`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `poder` WRITE;
/*!40000 ALTER TABLE `poder` DISABLE KEYS */;
/*!40000 ALTER TABLE `poder` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `ptosPilhagem`
--

DROP TABLE IF EXISTS `ptosPilhagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ptosPilhagem` (
  `minhaTag` varchar(10) NOT NULL,
  `tagInimiga` varchar(3) DEFAULT NULL,
  `ptos` int(11) DEFAULT NULL,
  PRIMARY KEY (`minhaTag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptosPilhagem`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `ptosPilhagem` WRITE;
/*!40000 ALTER TABLE `ptosPilhagem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ptosPilhagem` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-05-17 15:23:08
