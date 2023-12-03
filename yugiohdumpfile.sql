-- MySQL dump 10.13  Distrib 5.7.24, for osx11.1 (x86_64)
--
-- Host: localhost    Database: yugioh
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card` (
  `joint_id` varchar(55) NOT NULL,
  `set_id` int NOT NULL,
  `prefix` varchar(4) NOT NULL,
  `card_type` varchar(50) DEFAULT NULL,
  `card_attribute` varchar(50) DEFAULT NULL,
  `card_name` varchar(55) DEFAULT NULL,
  `card_level` int DEFAULT NULL,
  `card_ATK` int DEFAULT NULL,
  `card_DEF` int DEFAULT NULL,
  `is_owned` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`joint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES ('100C',100,'BLCR','Spell','SPELL','Super Polymerization',0,0,0,0),('100M',100,'BLMR','Trap','TRAP','Macro Cosmos',0,0,0,1),('101C',101,'BLCR','Spellcaster','DARK','Exodia the Forbidden One',3,1000,1000,0),('101M',101,'BLMR','Trap','TRAP','Thunder Discharge',0,0,0,1),('102C',102,'BLCR','Spellcaster','DARK','Right Leg of the Forbidden One',1,200,300,0),('102M',102,'BLMR','Trap','TRAP','Welcome Labrynth',0,0,0,0),('103C',103,'BLCR','Spellcaster','DARK','Left Leg of the Forbidden One',1,200,300,0),('103M',103,'BLMR','Dragon','LIGHT','The Bystial Lubellion',8,2500,3000,0),('104C',104,'BLCR','Spellcaster','DARK','Right Arm of the Forbidden One',1,200,300,0),('104M',104,'BLMR','Fiend','DARK','Lady Labrynth of the Silver Castle',8,3000,2900,0),('105C',105,'BLCR','Spellcaster','DARK','Left Arm of the Forbidden One',1,200,300,0),('10C',10,'BLCR','Fairy','LIGHT','Advanced Crystal Beast Ruby Carbuncle',3,300,300,0),('10M',10,'BLMR','Spell','SPELL','Don’t Slip, the Dogs of War',0,0,0,1),('11C',11,'BLCR','Beast','EARTH','Advanced Crystal Beast Amethyst Cat',3,1200,400,0),('11M',11,'BLMR','Trap','TRAP','RGB Rainbowlution',0,0,0,1),('12C',12,'BLCR','Aqua','WATER','Advanced Crystal Beast Emerald Tortoise',3,600,2000,0),('12M',12,'BLMR','Warrior','WIND','Elemental HERO Flame Wingman - Infernal Rage',8,2100,1200,1),('13C',13,'BLCR','Beast','EARTH','Advanced Crystal Beast Topaz Tiger',4,1600,1000,0),('13M',13,'BLMR','Cyberse','DARK','Link Decoder',1,300,0,1),('14C',14,'BLCR','Beast','EARTH','Advanced Crystal Beast Amber Mammoth',4,1700,1600,0),('14M',14,'BLMR','Warrior','FIRE','Courageous Crimson Chevalier Bradamante',1,500,200,0),('15C',15,'BLCR','Winged Beast','WIND','Advanced Crystal Beast Cobalt Eagle',4,1400,800,0),('15M',15,'BLMR','Warrior','EARTH','Puppet Pawn',3,800,1200,1),('16C',16,'BLCR','Beast','WIND','Advanced Crystal Beast Sapphire Pegasus',4,1800,1200,0),('16M',16,'BLMR','Warrior','EARTH','Puppet Rook',4,1200,1800,1),('17C',17,'BLCR','Machine','EARTH','Dyna Base',4,0,2100,0),('17M',17,'BLMR','Spell','SPELL','Promotion',0,0,0,1),('18C',18,'BLCR','Machine','EARTH','Dyna Tank',7,0,2100,0),('18M',18,'BLMR','Spell','SPELL','Battlefield Tragedy',0,0,0,1),('19C',19,'BLCR','Spell','SPELL','Gadget Box',0,0,0,1),('19M',19,'BLMR','Reptile','DARK','Black Mamba',3,1300,1000,1),('1C',1,'BLCR','﻿Warrior','﻿LIGHT','﻿Royal Straight Slasher',6,2400,1350,0),('1M',1,'BLMR','﻿Dragon','﻿DARK','﻿Dark Magician the Knight of Dragon Magic',8,2900,2400,0),('20C',20,'BLCR','Trap','TRAP','Morphtronic Impact Return',0,0,0,0),('20M',20,'BLMR','Reptile','DARK','Urubonus, the Avatar of Malice',5,2000,800,1),('21C',21,'BLCR','Spell','SPELL','Tool Box',0,0,0,0),('21M',21,'BLMR','Reptile','DARK','Lamia',4,1300,1500,1),('22C',22,'BLCR','Rock','WATER','Crystal Skull',1,0,0,0),('22M',22,'BLMR','Trap','TRAP','Viper’s Grudge',0,0,0,1),('23C',23,'BLCR','Spell','SPELL','Curse Reflection Doll',0,0,0,0),('23M',23,'BLMR','Zombie','DARK','Ghost Lancer, the Underworld Spearman',5,2000,0,1),('24C',24,'BLCR','Spell','SPELL','Stonehenge',0,0,0,0),('24M',24,'BLMR','Zombie','DARK','Ghost Sleeper, the Underworld Princess',3,1300,0,1),('25C',25,'BLCR','Fish','WATER','Dream Shark',5,0,2600,0),('25M',25,'BLMR','Zombie','DARK','Ghost Wyvern, the Underworld Dragon',4,1700,0,1),('26C',26,'BLCR','Spell','SPELL','Heroic Call',0,0,0,0),('26M',26,'BLMR','Spell','SPELL','Ghost Fusion',0,0,0,1),('27C',27,'BLCR','Insect','WIND','Oily Cicada',3,1000,1000,0),('27M',27,'BLMR','Trap','TRAP','Xyz Bento',0,0,0,1),('28C',28,'BLCR','Insect','WIND','Dream Cicada',3,300,1300,0),('28M',28,'BLMR','Spellcaster','DARK','Performapal odd-Eyes Butler',5,1000,2100,1),('29C',29,'BLCR','Insect','WIND','Number 2: Ninja Shadow Mosquito',2,0,0,0),('29M',29,'BLMR','Spellcaster','LIGHT','Performapal Odd-Eyes Valet',1,100,200,1),('2C',2,'BLCR','Spell','SPELL','Royal Straight',0,0,0,0),('2M',2,'BLMR','Warrior','WIND','Armed Neos',10,3500,3000,0),('30C',30,'BLCR','Spell','SPELL','Ninjitsu Art of Mosquito Marching',0,0,0,0),('30M',30,'BLMR','Fiend','DARK','Performapal Barokuriboh',8,300,3000,1),('31C',31,'BLCR','Spellcaster','DARK','Performapal Odd-Eyes Seer',6,100,1800,0),('31M',31,'BLMR','Fiend','DARK','Performapal Classikuriboh',1,300,200,1),('32C',32,'BLCR','Dinosaur','EARTH','Doodle Beast - Stage',5,1200,1800,0),('32M',32,'BLMR','Spell','SPELL','Arms Regeneration',0,0,0,0),('33C',33,'BLCR','Dinosaur','EARTH','Doodle Beast - Tyranno',8,2400,1200,0),('33M',33,'BLMR','Insect','WIND','Praying Mantis',4,1500,1200,1),('34C',34,'BLCR','Trap','TRAP','Doodlebook - Uh uh uh!',0,0,0,0),('34M',34,'BLMR','Insect','WIND','Guard Mantis',4,1000,2400,1),('35C',35,'BLCR','Warrior','EARTH','Todoroki the Earthbolt Star',6,2100,0,0),('35M',35,'BLMR','Spell','SPELL','Golden Rule',0,0,0,1),('36C',36,'BLCR','Warrior','LIGHT','Seiko the Skybolt Star',7,2400,0,0),('36M',36,'BLMR','Spell','SPELL','Duality',0,0,0,1),('37C',37,'BLCR','Warrior','LIGHT','Raijin the Breakbolt Star',10,3000,2200,0),('37M',37,'BLMR','Spell','SPELL','Shadow’s Light',0,0,0,0),('38C',38,'BLCR','Trap','TRAP','Amazoness Hall',0,0,0,0),('38M',38,'BLMR','Trap','TRAP','Protection of the Elements',0,0,0,1),('39C',39,'BLCR','Trap','TRAP','Amazoness Hot Spring',0,0,0,1),('39M',39,'BLMR','Winged Beast','DARK','Blackwing - Sharnga the Waning Moon',2,500,500,0),('3C',3,'BLCR','Spell','SPELL','Dragon Nails',0,0,0,0),('3M',3,'BLMR','Machine','DARK','Assault Synchron',2,700,0,1),('40C',40,'BLCR','Cyberse','EARTH','G Golem Rock Hammer',6,1800,2400,0),('40M',40,'BLMR','Warrior','EARTH','Rose Shaman',4,1700,200,1),('41C',41,'BLCR','Cyberse','EARTH','G Golem Pebble Dog',2,300,1000,0),('41M',41,'BLMR','Spell','SPELL','Final Cross',0,0,0,1),('42C',42,'BLCR','Cyberse','WATER','G Golem Crystal Heart',2,0,0,0),('42M',42,'BLMR','Plant','EARTH','Cattycorn',4,1500,500,1),('43C',43,'BLCR','Cyberse','EARTH','G Golem Stubborn Menhir',2,1500,0,0),('43M',43,'BLMR','Warrior','LIGHT','Photon Jumper’',4,0,0,1),('44C',44,'BLCR','Cyberse','EARTH','G Golem Invalid Dolmen',3,2800,0,0),('44M',44,'BLMR','Insect','DARK ','Mother Spider Splitter',5,0,2300,1),('45C',45,'BLCR','Cyberse','EARTH','G Golem Dignified Tradition',4,3200,0,0),('45M',45,'BLMR','Insect','DARK','Baby Spider',3,0,0,1),('46C',46,'BLCR','Spell','SPELL','Gravity Balance',0,0,0,0),('46M',46,'BLMR','Fiend','DARK','DDDD Super-Dimens. Sovereign Emperor Zero Paradox',12,3000,3000,1),('47C',47,'BLCR','Fairy','LIGHT','Crystal Beast Ruby Carbuncle',3,300,300,0),('47M',47,'BLMR','Spell','SPELL','Additional Mirror Level 7',0,0,0,1),('48C',48,'BLCR','Beast','EARTH','Crystal Beast Amethyst Cat',3,1200,400,0),('48M',48,'BLMR','Trap','TRAP','Synchro Zone',0,0,0,0),('49C',49,'BLCR','Aqua','WATER','Crystal Beast Emerald Tortoise',3,600,2000,0),('49M',49,'BLMR','Machine','FIRE','Sage of Strength - Akash',5,2400,200,1),('4C',4,'BLCR','Fiend','DARK','Thunder Ball',3,450,400,0),('4M',4,'BLMR','Spell','SPELL','Numbers Last Hope',0,0,0,1),('50C',50,'BLCR','Beast','EARTH','Crystal Beast Topaz Tiger',4,1600,1000,0),('50M',50,'BLMR','Machine','EARTH','Sage of Wisdom - Himmel',5,500,2500,1),('51C',51,'BLCR','Beast','EARTH','Crystal Beast Amber Mammoth',4,1700,1600,0),('51M',51,'BLMR','Machine','WATER','Sage of Benevolence - Ciela',6,2200,1000,1),('52C',52,'BLCR','Winged Beast','WIND','Crystal Beast Cobalt Eagle',4,1400,800,0),('52M',52,'BLMR','Machine','DARK','Sky Striker Ace - Azalea',2,1500,0,0),('53C',53,'BLCR','Beast','WIND','Crystal Beast Sapphire Pegasus',4,1800,1200,0),('53M',53,'BLMR','Pyro','FIRE','Volcanic Shell',1,100,0,0),('54C',54,'BLCR','Spell','SPELL','Advanced Dark',0,0,0,0),('54M',54,'BLMR','Dragon','DARK','Dark Armed Dragon',7,2800,1000,1),('55C',55,'BLCR','Spell','SPELL','Rainbow Bridge',0,0,0,0),('55M',55,'BLMR','Fiend','DARK','Aratama',4,800,1800,1),('56C',56,'BLCR','Winged Beast','DARK','Blackwing - Gale the Whirlwind',3,1300,400,0),('56M',56,'BLMR','Machine','EARTH','SYPRAL Quik-Fix',1,500,400,1),('57C',57,'BLCR','Winged Beast','DARK','Blackwing - Bora the Spear',4,1700,800,0),('57M',57,'BLMR','Cyberse','DARK','Knightmare Corrupter Iblee',2,0,0,0),('58C',58,'BLCR','Winged Beast','DARK','Blackwing - Sirocco the Dawn',5,2000,900,0),('58M',58,'BLMR','Warrior','LIGHT','Photon Vanisher',4,2000,0,1),('59C',59,'BLCR','Winged Beast','DARK','Blackwing - Blizzard the Far North',2,1300,0,0),('59M',59,'BLMR','Aqua','DARK','Danger! Nessie!',7,1600,2800,1),('5C',5,'BLCR','Spell','SPELL','Dice Dungeon',0,0,0,0),('5M',5,'BLMR','Dragon','DARK','Odd-Eyes Rebellion Xyz Dragon',7,3000,2500,1),('60C',60,'BLCR','Winged Beast','DARK','Blackwing - Vayu the Emblem of Honor',1,800,0,0),('60M',60,'BLMR','Cyberse','LIGHT','Mathmech Sigma',4,1000,1500,1),('61C',61,'BLCR','Winged Beast','DARK','Blackwing - Breeze the Zephyr',3,1100,300,0),('61M',61,'BLMR','Psychic','EARTH','Ukiyoe-P.U.N.K. Sharakusai',3,1200,600,1),('62C',62,'BLCR','Winged Beast','DARK','Blackwing - Simon the Poison Wind',6,1600,2000,0),('62M',62,'BLMR','Psychic','EARTH','Noh-P.UN.K. Ze Amin',3,600,600,1),('63C',63,'BLCR','Winged Beast','DARK','Blackwing - Gram the Shining Star',5,2200,1500,0),('63M',63,'BLMR','Beast','LIGHT','Noh-P.UN.K. Foxy Tune',8,2300,2600,0),('64C',64,'BLCR','Winged Beast','DARK','Blackwing Full Armor Master',10,3000,3000,0),('64M',64,'BLMR','Fiend','DARK','Noh-P.UN.K. Ogre Dance',8,2500,2000,1),('65C',65,'BLCR','Warrior','EARTH','Toon Black Luster Soldier',8,3000,2500,0),('65M',65,'BLMR','Spellcaster','WATER','Water Enchantress of the Temple',3,1500,1200,1),('66C',66,'BLCR','Winged Beast','WIND','Toon Harpie Lady',4,1300,1400,0),('66M',66,'BLMR','Warrior','EARTH','Noh-P.UN.K. Deer Note',5,2100,1800,1),('67C',67,'BLCR','Spell','SPELL','Toon Bookmark',0,0,0,0),('67M',67,'BLMR','Thunder','FIRE','Spright Carrot',2,1000,1900,0),('68C',68,'BLCR','Spell','SPELL','Toon Page-Flip',0,0,0,0),('68M',68,'BLMR','Fairy','EARTH','Celestial Apparatus Tesea',4,1000,1000,1),('69C',69,'BLCR','Trap','TRAP','Toon Terror',0,0,0,0),('69M',69,'BLMR','Dragon','DARK','Bystial Baldrake',6,2500,2000,1),('6C',6,'BLCR','Spell','SPELL','Dimension Dice',0,0,0,0),('6M',6,'BLMR','Cyberse','DARK','Rokket Coder',4,1700,300,1),('70C',70,'BLCR','Thunder','DARK','The Chaos Creator',8,2300,3000,0),('70M',70,'BLMR','Fairy','LIGHT','Sakitama',4,400,900,1),('71C',71,'BLCR','Sea Serpent','DARK','Chaos Daedalus',7,2600,1500,0),('71M',71,'BLMR','Spellcaster','LIGHT','Mysterion the Dragon Crown',8,3000,1500,1),('72C',72,'BLCR','Fairy','LIGHT','Chaos Valkyria',4,1800,1050,0),('72M',72,'BLMR','Fish','WATER','Ukiyoe-P.UN.K. Rising Carp',8,1000,2600,1),('73C',73,'BLCR','Spell','SPELL','Chaos Space',0,0,0,0),('73M',73,'BLMR','Warrior','EARTH','Junk Archer',7,2300,2000,1),('74C',74,'BLCR','Dragon','DARK','Odd-Eyes Persona Dragon',5,1200,2400,1),('74M',74,'BLMR','Wyrm','DARK','Draco Berserker of the Tenyi',8,3000,0,1),('75C',75,'BLCR','Dragon','DARK','Odd-Eyes Phantasma Dragon',8,3000,2500,0),('75M',75,'BLMR','Sea Serpent','WIND','Ukiyoe-P.UN.K. Amazing Dragon',11,3000,2800,1),('76C',76,'BLCR','Dragon','DARK','Odd-Eyes Rebellion Dragon',7,3000,2500,0),('76M',76,'BLMR','Fairy','EARTH','Madolche Queen Tiaramisu',4,2200,2100,0),('77C',77,'BLCR','Winged Beast','DARK','D.D. Crow',1,100,100,0),('77M',77,'BLMR','Dragon','DARK','Number 92: Heart-eartH Dragon',9,0,0,1),('78C',78,'BLCR','Fiend','DARK','Edge Imp Chain',4,1200,1800,0),('78M',78,'BLMR','Fairy','LIGHT','Herald of Pure Light',2,600,1000,0),('79C',79,'BLCR','Fiend','EARTH','Token Collector',4,0,2000,0),('79M',79,'BLMR','Fiend','DARK','Number 65: Djinn Buster',2,1300,0,0),('7C',7,'BLCR','Spell','SPELL','Clockwork Night',0,0,0,0),('7M',7,'BLMR','Reptile','WATER','Extox Hydra',4,2000,2000,0),('80C',80,'BLCR','Rock','EARTH','Koa’ki Meiru Supplier',4,1400,1600,0),('80M',80,'BLMR','Beast-Warrior','EARTH','Number 72: Shogi Rook',6,2500,1200,1),('81C',81,'BLCR','Zombie','FIRE','Doomkaiser Dragon',6,2400,1500,0),('81M',81,'BLMR','Warrior','LIGHT','Dante, Traveler of the Burning Abyss',3,1000,2500,1),('82C',82,'BLCR','Zombie','DARK','Revived King Ha Des',6,2450,0,0),('82M',82,'BLMR','Wyrm','LIGHT','Stellarknight Constellar Diamond',5,2700,2000,1),('83C',83,'BLCR','Dragon','DARK','Borreload Savage Dragon',8,3000,2500,0),('83M',83,'BLMR','Warrior','LIGHT','Tellarknight Ptolemaeus',4,550,2600,1),('84C',84,'BLCR','Dragon','LIGHT','Number 100: Numeron Dragon',1,0,0,0),('84M',84,'BLMR','Machine','LIGHT','Divine Arsenal AA-ZEUS - Sky Thunder',12,3000,3000,0),('85C',85,'BLCR','Warrior','LIGHT','Number F0: Utopic Draco Future',0,3000,2000,0),('85M',85,'BLMR','Cyberse','DARK','I:P Masquerena',2,800,0,0),('86C',86,'BLCR','Spell','SPELL','Frightfur Patchwork',0,0,0,1),('86M',86,'BLMR','Spell','SPELL','Dark Hole',0,0,0,1),('87C',87,'BLCR','Spell','SPELL','Salamangreat Circle',0,0,0,0),('87M',87,'BLMR','Spell','SPELL','Terraforming',0,0,0,0),('88C',88,'BLCR','Spell','SPELL','Fusion Destiny',0,0,0,0),('88M',88,'BLMR','Spell','SPELL','Dimensional Fissure',0,0,0,0),('89C',89,'BLCR','Spell','SPELL','Emblem of the Plunder Patrol',0,0,0,0),('89M',89,'BLMR','Spell','SPELL','Polymerization',0,0,0,0),('8C',8,'BLCR','Spell','SPELL','EN Shuffle',0,0,0,0),('8M',8,'BLMR','Warrior','LIGHT','Tri-Edge Master',6,2100,1800,1),('90C',90,'BLCR','Dragon','LIGHT','Hieratic Seal of the Heavenly Spheres',2,0,0,1),('90M',90,'BLMR','Spell','SPELL','Book of Eclipse',0,0,0,1),('91C',91,'BLCR','Zombie','DARK','Avendread Savior',2,1600,0,0),('91M',91,'BLMR','Spell','SPELL','Sky Striker Mobilize - Engage!',0,0,0,0),('92C',92,'BLCR','Spellcaster','LIGHT','Selene, Queen of the Master Magicians',3,1850,0,0),('92M',92,'BLMR','Spell','SPELL','Mathmech Equation',0,0,0,0),('93C',93,'BLCR','Cyberse','DARK','Accesscode Talker',4,2300,0,0),('93M',93,'BLMR','Spell','SPELL','Rite of Aramesir',0,0,0,0),('94C',94,'BLCR','Fiend','WATER','Blackbeard, the Plunder Patrol Captain',2,1600,0,0),('94M',94,'BLMR','Spell','SPELL','Dunnell, the Noble Arms of Light',0,0,0,1),('95C',95,'BLCR','Spellcaster','LIGHT','Artemis, the Magistus Moon Maiden',1,800,0,0),('95M',95,'BLMR','Spell','SPELL','Starlit Papillon',0,0,0,1),('96C',96,'BLCR','Fiend','LIGHT','Evil Twin Ki-sikil',2,1100,0,0),('96M',96,'BLMR','Spell','SPELL','Zaralaam the Dark Palace',0,0,0,0),('97C',97,'BLCR','Fiend','DARK','Evil Twin Lil-la',2,1100,0,0),('97M',97,'BLMR','Spell','SPELL','Forest of Lost Flowers',0,0,0,1),('98C',98,'BLCR','Fiend','WIND','Yata-Garasu',2,200,100,0),('98M',98,'BLMR','Spell','SPELL','Spright Smashers',0,0,0,1),('99C',99,'BLCR','Winged Beast','DARK','Blackwing Armor Master',7,2500,1500,0),('99M',99,'BLMR','Spell','SPELL','Curse of Aramatir',0,0,0,0),('9C',9,'BLCR','Spell','SPELL','Battle of Sleeping Spirits',0,0,0,0),('9M',9,'BLMR','Zombie','WATER','Daidaratant the Ooze Giant',4,2400,400,0),('FDFM1',0,'FDFM','Spell','SPELL','Fake Spell',0,0,0,0),('FDFM2',2,'FDFM','Trap','TRAP','Fake Trap',0,0,0,0);
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_seq`
--

DROP TABLE IF EXISTS `card_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_seq`
--

LOCK TABLES `card_seq` WRITE;
/*!40000 ALTER TABLE `card_seq` DISABLE KEYS */;
INSERT INTO `card_seq` VALUES (1);
/*!40000 ALTER TABLE `card_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_set`
--

DROP TABLE IF EXISTS `card_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_set` (
  `prefix` varchar(4) NOT NULL,
  `set_size` int DEFAULT NULL,
  `set_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_set`
--

LOCK TABLES `card_set` WRITE;
/*!40000 ALTER TABLE `card_set` DISABLE KEYS */;
INSERT INTO `card_set` VALUES ('BLCR',105,'Battles of Legend: Crystal Revenge'),('BLMR',104,'Battles of Legend: Monstrous Revenge'),('MD02',60,'My Deck 2');
/*!40000 ALTER TABLE `card_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_spell`
--

DROP TABLE IF EXISTS `card_spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_spell` (
  `card_name` varchar(255) NOT NULL,
  `joint_id` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `set_id` int NOT NULL,
  `spell_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`card_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_spell`
--

LOCK TABLES `card_spell` WRITE;
/*!40000 ALTER TABLE `card_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_trap`
--

DROP TABLE IF EXISTS `card_trap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card_trap` (
  `card_name` varchar(255) NOT NULL,
  `joint_id` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `set_id` int NOT NULL,
  `spell_type` varchar(255) DEFAULT NULL,
  `trap_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`card_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_trap`
--

LOCK TABLES `card_trap` WRITE;
/*!40000 ALTER TABLE `card_trap` DISABLE KEYS */;
/*!40000 ALTER TABLE `card_trap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster`
--

DROP TABLE IF EXISTS `monster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monster` (
  `card_name` varchar(100) NOT NULL,
  `card_level` int DEFAULT NULL,
  `card_ATK` int DEFAULT NULL,
  `card_DEF` int DEFAULT NULL,
  `is_owned` bit(1) NOT NULL,
  PRIMARY KEY (`card_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster`
--

LOCK TABLES `monster` WRITE;
/*!40000 ALTER TABLE `monster` DISABLE KEYS */;
INSERT INTO `monster` VALUES ('Aratama',4,800,1800,_binary ''),('Armed Neos',10,3500,3000,_binary '\0'),('Assault Synchron',2,700,0,_binary ''),('Baby Spider',3,0,0,_binary ''),('Black Mamba',3,1300,1000,_binary ''),('Blackwing - Sharnga the Waning Moon',2,500,500,_binary '\0'),('Bystial Baldrake',6,2500,2000,_binary ''),('Cattycorn',4,1500,500,_binary ''),('Celestial Apparatus Tesea',4,1000,1000,_binary ''),('Courageous Crimson Chevalier Bradamante',1,500,200,_binary '\0'),('Daidaratant the Ooze Giant',4,2400,400,_binary '\0'),('Danger! Nessie!',7,1600,2800,_binary ''),('Dante, Traveler of the Burning Abyss',3,1000,2500,_binary ''),('Dark Armed Dragon',7,2800,1000,_binary ''),('Dark Magician',8,2500,2100,_binary '\0'),('﻿Dark Magician the Knight of Dragon Magic',8,2900,2400,_binary '\0'),('DDDD Super-Dimens. Sovereign Emperor Zero Paradox',12,3000,3000,_binary ''),('Divine Arsenal AA-ZEUS - Sky Thunder',12,3000,3000,_binary '\0'),('Draco Berserker of the Tenyi',8,3000,0,_binary ''),('Elemental HERO Flame Wingman - Infernal Rage',8,2100,1200,_binary ''),('Extox Hydra',4,2000,2000,_binary '\0'),('Ghost Lancer, the Underworld Spearman',5,2000,0,_binary ''),('Ghost Sleeper, the Underworld Princess',3,1300,0,_binary ''),('Ghost Wyvern, the Underworld Dragon',4,1700,0,_binary ''),('Guard Mantis',4,1000,2400,_binary ''),('Herald of Pure Light',2,600,1000,_binary '\0'),('I:P Masquerena',2,800,0,_binary '\0'),('Junk Archer',7,2300,2000,_binary ''),('Knightmare Corrupter Iblee',2,0,0,_binary '\0'),('Kuriboh',1,300,200,_binary '\0'),('Lady Labrynth of the Silver Castle',8,3000,2900,_binary '\0'),('Lamia',4,1300,1500,_binary ''),('Link Decoder',1,300,0,_binary ''),('Madolche Queen Tiaramisu',4,2200,2100,_binary '\0'),('Mathmech Sigma',4,1000,1500,_binary ''),('Mother Spider Splitter',5,0,2300,_binary ''),('Mysterion the Dragon Crown',8,3000,1500,_binary ''),('Noh-P.UN.K. Deer Note',5,2100,1800,_binary ''),('Noh-P.UN.K. Foxy Tune',8,2300,2600,_binary '\0'),('Noh-P.UN.K. Ogre Dance',8,2500,2000,_binary ''),('Noh-P.UN.K. Ze Amin',3,600,600,_binary ''),('Number 65: Djinn Buster',2,1300,0,_binary '\0'),('Number 72: Shogi Rook',6,2500,1200,_binary ''),('Number 92: Heart-eartH Dragon',9,0,0,_binary ''),('Odd-Eyes Rebellion Xyz Dragon',7,3000,2500,_binary ''),('Performapal Barokuriboh',8,300,3000,_binary ''),('Performapal Classikuriboh',1,300,200,_binary ''),('Performapal odd-Eyes Butler',5,1000,2100,_binary ''),('Performapal Odd-Eyes Valet',1,100,200,_binary ''),('Photon Jumper’',4,0,0,_binary ''),('Photon Vanisher',4,2000,0,_binary ''),('Praying Mantis',4,1500,1200,_binary ''),('Puppet Pawn',3,800,1200,_binary ''),('Puppet Rook',4,1200,1800,_binary ''),('Rokket Coder',4,1700,300,_binary ''),('Rose Shaman',4,1700,200,_binary ''),('Sage of Benevolence - Ciela',6,2200,1000,_binary ''),('Sage of Strength - Akash',5,2400,200,_binary ''),('Sage of Wisdom - Himmel',5,500,2500,_binary ''),('Sakitama',4,400,900,_binary ''),('Sky Striker Ace - Azalea',2,1500,0,_binary '\0'),('Spright Carrot',2,1000,1900,_binary '\0'),('Stellarknight Constellar Diamond',5,2700,2000,_binary ''),('SYPRAL Quik-Fix',1,500,400,_binary ''),('Tellarknight Ptolemaeus',4,550,2600,_binary ''),('The Bystial Lubellion',8,2500,3000,_binary '\0'),('Tri-Edge Master',6,2100,1800,_binary ''),('Ukiyoe-P.U.N.K. Sharakusai',3,1200,600,_binary ''),('Ukiyoe-P.UN.K. Amazing Dragon',11,3000,2800,_binary ''),('Ukiyoe-P.UN.K. Rising Carp',8,1000,2600,_binary ''),('Urubonus, the Avatar of Malice',5,2000,800,_binary ''),('Volcanic Shell',1,100,0,_binary '\0'),('Water Enchantress of the Temple',3,1500,1200,_binary '');
/*!40000 ALTER TABLE `monster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell`
--

DROP TABLE IF EXISTS `spell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell` (
  `card_name` varchar(150) NOT NULL,
  `spell_type` varchar(55) DEFAULT NULL,
  `is_owned` bit(1) NOT NULL,
  PRIMARY KEY (`card_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell`
--

LOCK TABLES `spell` WRITE;
/*!40000 ALTER TABLE `spell` DISABLE KEYS */;
INSERT INTO `spell` VALUES ('Additional Mirror Level 7','Quick-Play',_binary '\0'),('Advanced Dark','Field',_binary '\0'),('Arms Regeneration','Quick-Play',_binary '\0'),('Battle of Sleeping Spirits','Quick-Play',_binary '\0'),('Battlefield Tragedy','Continuous',_binary '\0'),('Book of Eclipse','Quick-Play',_binary '\0'),('Chaos Space','Basic',_binary '\0'),('Clockwork Night','Continuous',_binary '\0'),('Curse of Aramatir','Continuous',_binary '\0'),('Curse Reflection Doll','Quick-Play',_binary '\0'),('Dark Hole','Basic',_binary '\0'),('Dice Dungeon','Field',_binary '\0'),('Dimension Dice','Basic',_binary '\0'),('Dimensional Fissure','Continuous',_binary '\0'),('Don’t Slip, the Dogs of War','Field',_binary '\0'),('Dragon Nails','Equip',_binary '\0'),('Duality','Quick-Play',_binary '\0'),('Dunnell, the Noble Arms of Light','Equip',_binary '\0'),('Emblem of the Plunder Patrol','Equip',_binary '\0'),('EN Shuffle','Basic',_binary '\0'),('Fake Spell','Basic',_binary '\0'),('Final Cross','Quick-Play',_binary '\0'),('Forest of Lost Flowers','Field',_binary '\0'),('Frightfur Patchwork','Basic',_binary '\0'),('Fusion Destiny','Basic',_binary '\0'),('Gadget Box','Continuous',_binary '\0'),('Ghost Fusion','Basic',_binary '\0'),('Golden Rule','Equip',_binary '\0'),('Gravity Balance','Basic',_binary '\0'),('Heroic Call','Basic',_binary '\0'),('Mathmech Equation','Basic',_binary '\0'),('Ninjitsu Art of Mosquito Marching','Basic',_binary '\0'),('Numbers Last Hope','Basic',_binary '\0'),('Polymerization','Quick-Play',_binary '\0'),('Promotion','Basic',_binary '\0'),('Rainbow Bridge','Basic',_binary '\0'),('Rite of Aramesir','Basic',_binary '\0'),('Royal Straight','Quick-Play',_binary '\0'),('Salamangreat Circle','Quick-Play',_binary '\0'),('Shadow’s Light','Basic',_binary '\0'),('Sky Striker Mobilize - Engage!','Basic',_binary '\0'),('Spright Smashers','Quick-Play',_binary '\0'),('Starlit Papillon','Equip',_binary '\0'),('Stonehenge','Equip',_binary '\0'),('Super Polymerization','Quick-Play',_binary '\0'),('Terraforming','Basic',_binary '\0'),('Tool Box','Continuous',_binary '\0'),('Toon Bookmark','Basic',_binary '\0'),('Toon Page-Flip','Quick-Play',_binary '\0'),('Zaralaam the Dark Palace','Field',_binary '\0');
/*!40000 ALTER TABLE `spell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trap`
--

DROP TABLE IF EXISTS `trap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trap` (
  `card_name` varchar(100) NOT NULL,
  `trap_type` varchar(55) DEFAULT NULL,
  `is_owned` bit(1) NOT NULL,
  PRIMARY KEY (`card_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trap`
--

LOCK TABLES `trap` WRITE;
/*!40000 ALTER TABLE `trap` DISABLE KEYS */;
INSERT INTO `trap` VALUES ('Amazoness Hall','Continuous',_binary '\0'),('Amazoness Hot Spring','Continuous',_binary '\0'),('Doodlebook - Uh uh uh!','Basic',_binary '\0'),('Fake Trap','Basic',_binary '\0'),('Macro Cosmos','Continuous',_binary '\0'),('Morphtronic Impact Return','Basic',_binary '\0'),('Protection of the Elements','Counter',_binary '\0'),('RGB Rainbowlution','Continuous',_binary '\0'),('Synchro Zone','Continuous',_binary '\0'),('Thunder Discharge','Basic',_binary '\0'),('Toon Terror','Counter',_binary '\0'),('Viper’s Grudge','Continuous',_binary '\0'),('Welcome Labrynth','Basic',_binary '\0'),('Xyz Bento','Basic',_binary '\0');
/*!40000 ALTER TABLE `trap` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-03 18:29:45
