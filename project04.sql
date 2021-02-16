-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: project04
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

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
-- Table structure for table `mlp`
--

DROP TABLE IF EXISTS `mlp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mlp` (
  `episodeName` varchar(256) DEFAULT NULL,
  `time` varchar(256) DEFAULT NULL,
  `season` int(11) DEFAULT NULL,
  `episode` int(11) DEFAULT NULL,
  `duration` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mlp`
--

LOCK TABLES `mlp` WRITE;
/*!40000 ALTER TABLE `mlp` DISABLE KEYS */;
INSERT INTO `mlp` VALUES ('Friendship is Magic - Part 2','2010-10-22T12:00:00.000Z',1,2,'22'),('The Ticket Master','2010-10-29T12:00:00.000Z',1,3,'22'),('Applebuck Season','2010-11-05T12:00:00.000Z',1,4,'22'),('Griffon the Brush-Off','2010-11-12T12:00:00.000Z',1,5,'22'),('Boast Busters','2010-11-19T12:00:00.000Z',1,6,'22'),('Dragonshy','2010-11-26T12:00:00.000Z',1,7,'22'),('Look Before You Sleep','2010-12-03T12:00:00.000Z',1,8,'22'),('Bridle Gossip','2010-12-10T12:00:00.000Z',1,9,'22'),('Swarm of the Century','2010-12-17T12:00:00.000Z',1,10,'22'),('Winter Wrap Up','2010-12-24T12:00:00.000Z',1,11,'22'),('Call of the Cutie','2011-01-07T12:00:00.000Z',1,12,'22'),('Fall Weather Friends','2011-01-28T12:00:00.000Z',1,13,'22'),('Suited for Success','2011-02-04T12:00:00.000Z',1,14,'22'),('Feeling Pinkie Keen','2011-02-11T12:00:00.000Z',1,15,'22'),('Sonic Rainboom','2011-02-18T12:00:00.000Z',1,16,'22'),('Stare Master','2011-02-25T12:00:00.000Z',1,17,'22'),('The Show Stoppers','2011-03-04T12:00:00.000Z',1,18,'22'),('A Dog and Pony Show','2011-03-11T12:00:00.000Z',1,19,'22'),('Over a Barrel','2011-03-25T12:00:00.000Z',1,21,'22'),('A Bird in the Hoof','2011-04-08T12:00:00.000Z',1,22,'22'),('The Cutie Mark Chronicles','2011-04-15T12:00:00.000Z',1,23,'22'),('Party of One','2011-04-29T12:00:00.000Z',1,25,'22'),('The Best Night Ever','2011-05-06T12:00:00.000Z',1,26,'22'),('The Return of Harmony - Part 1','2011-09-17T12:00:00.000Z',2,1,'22'),('The Return of Harmony - Part 2','2011-09-24T13:00:00.000Z',2,2,'22'),('Lesson Zero','2011-10-15T13:00:00.000Z',2,3,'22'),('Luna Eclipsed','2011-10-22T13:00:00.000Z',2,4,'22'),('Sisterhooves Social','2011-11-05T14:00:00.000Z',2,5,'22'),('The Cutie Pox','2011-11-12T15:00:00.000Z',2,6,'22'),('May the Best Pet Win!','2011-11-19T15:00:00.000Z',2,7,'22'),('The Mysterious Mare Do Well','2011-11-26T15:00:00.000Z',2,8,'22'),('Sweet and Elite','2011-12-03T15:00:00.000Z',2,9,'22'),('Secret of My Excess','2011-12-10T15:00:00.000Z',2,10,'22'),('Family Appreciation Day','2012-01-07T15:00:00.000Z',2,12,'22'),('Baby Cakes','2012-01-14T15:00:00.000Z',2,13,'22'),('The Last Roundup','2012-01-21T15:00:00.000Z',2,14,'22'),('The Super Speedy Cider Squeezy 6000','2012-01-28T15:00:00.000Z',2,15,'22'),('Read It and Weep','2012-02-04T15:00:00.000Z',2,16,'22'),('Hearts and Hooves Day','2012-02-11T15:30:00.000Z',2,17,'22'),('A Friend in Deed','2012-02-18T15:00:00.000Z',2,18,'22'),('Putting Your Hoof Down','2012-03-03T18:00:00.000Z',2,19,'22'),('Dragon Quest','2012-03-17T17:00:00.000Z',2,21,'22'),('Hurricane Fluttershy','2012-03-24T17:00:00.000Z',2,22,'22'),('Ponyville Confidential','2012-03-31T16:00:00.000Z',2,23,'22'),('MMMystery on the Friendship Express','2012-04-07T16:00:00.000Z',2,24,'22'),('A Canterlot Wedding - Part 1','2012-04-21T16:00:00.000Z',2,25,'22'),('A Canterlot Wedding - Part 2','2012-04-21T16:30:00.000Z',2,26,'22'),('The Crystal Empire - Part 1','2012-11-10T15:00:00.000Z',3,1,'22'),('The Crystal Empire - Part 2','2012-11-10T15:30:00.000Z',3,2,'22'),('Too Many Pinkie Pies','2012-11-17T15:30:00.000Z',3,3,'22'),('One Bad Apple','2012-11-24T15:30:00.000Z',3,4,'22'),('Magic Duel','2012-12-01T15:30:00.000Z',3,5,'22'),('Sleepless in Ponyville','2012-12-08T15:30:00.000Z',3,6,'22'),('Wonderbolt Academy','2012-12-15T15:30:00.000Z',3,7,'22'),('Apple Family Reunion','2012-12-22T15:30:00.000Z',3,8,'22'),('Spike at Your Service','2012-12-29T15:30:00.000Z',3,9,'22'),('Keep Calm and Flutter On','2013-01-19T15:30:00.000Z',3,10,'22'),('Just For Sidekicks','2013-01-26T15:30:00.000Z',3,11,'22'),('Games Ponies Play','2013-02-09T15:30:00.000Z',3,12,'22'),('Magical Mystery Cure','2013-02-16T15:30:00.000Z',3,13,'22'),('Princess Twilight - Part 1','2013-11-23T15:00:00.000Z',4,1,'22'),('Princess Twilight - Part 2','2013-11-23T15:30:00.000Z',4,2,'22'),('Castle Mane-ia','2013-11-30T15:30:00.000Z',4,3,'22'),('Flight to the Finish','2013-12-14T15:30:00.000Z',4,5,'22'),('Power Ponies','2013-12-21T15:30:00.000Z',4,6,'22'),('Bats!','2013-12-28T15:30:00.000Z',4,7,'22'),('Rarity Takes Manehattan','2014-01-04T15:30:00.000Z',4,8,'22'),('Pinkie Apple Pie','2014-01-11T15:30:00.000Z',4,9,'22'),('Rainbow Falls','2014-01-18T15:30:00.000Z',4,10,'22'),('Pinkie Pride','2014-02-01T15:30:00.000Z',4,12,'22'),('Simple Ways','2014-02-08T15:30:00.000Z',4,13,'22'),('Filli Vanilli','2014-02-15T15:30:00.000Z',4,14,'22'),('Twilight Time','2014-02-22T15:30:00.000Z',4,15,'22'),('Somepony to Watch Over Me','2014-03-08T15:30:00.000Z',4,17,'22'),('Maud Pie','2014-03-15T14:30:00.000Z',4,18,'22'),('For Whom the Sweetie Belle Toils','2014-03-22T14:30:00.000Z',4,19,'22'),('Leap of Faith','2014-03-29T14:30:00.000Z',4,20,'22'),('Testing, Testing, 1, 2, 3','2014-04-05T14:30:00.000Z',4,21,'22'),('Trade Ya','2014-04-19T14:30:00.000Z',4,22,'22'),('Inspiration Manifestation','2014-04-26T14:30:00.000Z',4,23,'22'),('Equestria Games','2014-05-03T14:30:00.000Z',4,24,'22'),('Cutie Markless - Part 1','2015-04-04T15:00:00.000Z',5,1,'22'),('Cutie Markless - Part 2','2015-04-04T15:30:00.000Z',5,2,'22'),('Castle Sweet Castle','2015-04-11T15:30:00.000Z',5,3,'22'),('Bloom and Gloom','2015-04-18T15:30:00.000Z',5,4,'22'),('Tanks for the Memories','2015-04-25T15:30:00.000Z',5,5,'22'),('Make New Friends but Keep Discord','2015-05-16T15:30:00.000Z',5,7,'22'),('The Lost Treasure of Griffonstone','2015-05-23T15:30:00.000Z',5,8,'22'),('Slice of Life','2015-06-13T15:30:00.000Z',5,9,'22'),('Princess Spike','2015-06-20T15:30:00.000Z',5,10,'22'),('Party Pooped','2015-06-27T15:30:00.000Z',5,11,'22'),('Amending Fences','2015-07-04T15:30:00.000Z',5,12,'22'),('Do Princesses Dream of Magic Sheep?','2015-07-11T15:30:00.000Z',5,13,'22'),('Canterlot Boutique','2015-09-12T15:30:00.000Z',5,14,'22'),('Rarity Investigates!','2015-09-19T15:30:00.000Z',5,15,'22'),('Made in Manehattan','2015-09-26T15:30:00.000Z',5,16,'22'),('Brotherhooves Social','2015-10-03T15:30:00.000Z',5,17,'22'),('Crusaders of the Lost Mark','2015-10-10T15:30:00.000Z',5,18,'22'),('The One Where Pinkie Pie Knows','2015-10-17T15:30:00.000Z',5,20,'22'),('Hearthbreakers','2015-10-24T15:30:00.000Z',5,19,'22'),('Scare Master','2015-10-31T15:30:00.000Z',5,21,'22'),('What About Discord','2015-11-07T16:30:00.000Z',5,22,'22'),('The Hooffields and McColts','2015-11-14T16:30:00.000Z',5,23,'22'),('The Mane Attraction','2015-11-21T16:30:00.000Z',5,24,'22'),('The Cutie Re-Mark Part 1','2015-11-28T16:00:00.000Z',5,25,'22'),('The Cutie Re-Mark Part 2','2015-11-28T16:30:00.000Z',5,26,'22'),('The Crystalling - Part 1','2016-03-26T15:00:00.000Z',6,1,'22'),('The Crystalling - Part 2','2016-03-26T15:30:00.000Z',6,2,'22'),('The Gift of the Maud Pie','2016-04-02T15:30:00.000Z',6,3,'22'),('On Your Marks','2016-04-09T15:30:00.000Z',6,4,'22'),('Gauntlet of Fire','2016-04-16T15:30:00.000Z',6,5,'22'),('No Second Prances','2016-04-30T15:30:00.000Z',6,6,'22'),('Newbie Dash','2016-05-07T15:30:00.000Z',6,7,'22'),('Saddle Row & Rec','2016-05-21T15:30:00.000Z',6,9,'22'),('Flutter Brutter','2016-06-04T15:30:00.000Z',6,11,'22'),('Spice Up Your Life','2016-06-11T15:30:00.000Z',6,12,'22'),('Stranger Then Fan Fiction','2016-07-30T15:30:00.000Z',6,13,'22'),('The Cart Before The Ponies','2016-08-06T15:30:00.000Z',6,14,'22'),('28 Pranks Later','2016-08-13T15:30:00.000Z',6,15,'22'),('The Times Are a Changeling','2016-08-20T15:30:00.000Z',6,16,'22'),('Dungeons And Discords','2016-08-27T15:30:00.000Z',6,17,'22'),('Buck Ball Season','2016-09-03T15:30:00.000Z',6,18,'22'),('The Fault in our Cutie Marks','2016-09-10T15:30:00.000Z',6,19,'22'),('Viva Las Pegasus','2016-09-17T15:30:00.000Z',6,20,'22'),('Every Little Thing She Does','2016-09-24T15:30:00.000Z',6,21,'22'),('P.P.O.V. (Pony Point of View)','2016-10-01T15:30:00.000Z',6,22,'22'),('Where the Apple Lies','2016-10-08T15:30:00.000Z',6,23,'22'),('Celestial Advice','2017-04-15T15:30:00.000Z',7,1,'22'),('All Bottled Up','2017-04-15T16:00:00.000Z',7,2,'22'),('A Flurry of Emotions','2017-04-22T15:30:00.000Z',7,3,'22'),('Rock Solid Friendship','2017-04-29T15:30:00.000Z',7,4,'22'),('Fluttershy Leans In','2017-05-06T15:30:00.000Z',7,5,'22'),('Forever Filly','2017-05-13T15:30:00.000Z',7,6,'22'),('Parental Glideance','2017-05-20T15:30:00.000Z',7,7,'22'),('Hard to Say Anything','2017-05-27T15:30:00.000Z',7,8,'22'),('Honest Apple','2017-06-03T15:30:00.000Z',7,9,'22'),('A Royal Problem','2017-06-10T15:30:00.000Z',7,10,'22'),('Not Asking For Trouble','2017-06-17T15:30:00.000Z',7,11,'22'),('Discordant Harmony','2017-08-05T15:30:00.000Z',7,12,'22'),('The Perfect Pear','2017-08-05T16:00:00.000Z',7,13,'22'),('Fame and Misfortune','2017-08-12T15:30:00.000Z',7,14,'22'),('Triple Threat','2017-08-19T15:30:00.000Z',7,15,'22'),('To Change a Changeling','2017-09-02T15:30:00.000Z',7,16,'22'),('Daring Done','2017-09-09T15:30:00.000Z',7,17,'22'),('A Health of Information','2017-09-23T15:30:00.000Z',7,19,'22'),('Marks and Recreation','2017-09-30T15:30:00.000Z',7,20,'22'),('Once Upon a Zeppelin','2017-10-07T15:30:00.000Z',7,21,'22'),('Secrets and Pies','2017-10-14T15:30:00.000Z',7,22,'22'),('Uncommon Bond','2017-14-21T15:30:00.000Z',7,23,'22'),('Shadow Play (Part 1)','2017-10-28T15:00:00.000Z',7,24,'22'),('Shadow Play (Part 2)','2017-10-28T15:30:00.000Z',7,25,'22'),('Friendship is Magic - Part 1',NULL,1,1,NULL);
/*!40000 ALTER TABLE `mlp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-04 22:44:34
