/*
MySQL Data Transfer
Source Host: localhost
Source Database: piacterdb
Target Host: localhost
Target Database: piacterdb
Date: 2013.11.12. 9:08:53
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` tinyint(10) NOT NULL AUTO_INCREMENT,
  `text` longtext,
  `img` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `title` text,
  `user` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `Username` mediumtext,
  `Password` mediumtext,
  `Email` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `posts` VALUES ('13', 'Jony Ive, az Apple fÅ‘dizÃ¡jnere kamerÃ¡t tervezett a LeicÃ¡nak egy jÃ³tÃ©konysÃ¡gi esemÃ©nyre. Marc Newson dizÃ¡jnerrel egyÃ¼tt 85 napot tÃ¶ltÃ¶ttek a modellek megtervezÃ©sÃ©re Ã©s megalkotÃ¡sÃ¡ra. A fÃ©nykÃ©pezÅ‘gÃ©pet egy november 23-ai jÃ³tÃ©konysÃ¡gi esemÃ©nyen fogjÃ¡k elÃ¡rverezni, a befolyÃ³ Ã¶sszegbÅ‘l a malÃ¡ria, AIDS Ã©s tuberkolÃ³zis elleni harcot tÃ¡mogatjÃ¡k majd.', 'jonyive.jpg', null, 'Jony Ive Leica kamerÃ¡ja', 'NEANDRW');
INSERT INTO `posts` VALUES ('14', '150 ezer legÃ³kocka, 1700 figura, csodÃ¡latos rÃ©szletessÃ©g. A GyÅ±rÅ±k ura egyik leglÃ¡tvÃ¡nyosabb csatÃ¡jÃ¡t Ã©pÃ­tettÃ©k meg', 'helmszurdok.jpg', null, 'Battle of Helm', 'NEANDRW');
INSERT INTO `posts` VALUES ('15', 'A plafonon foszforeszkÃ¡lÃ³ csillagok Ã©s Å±rhajÃ³k lebegnek, az Ã¡gyban foszforeszkÃ¡lÃ³ bolygÃ³k kÃ¶zÃ¶tt alszunk.', 'foszfleped.jpg', null, 'Csillagos foszforeszkÃ¡lÃ³s Ã¡gynemÅ±', 'NEANDRW');
INSERT INTO `posts` VALUES ('16', 'Ma mÃ¡r nem Ã©rdemes olyan tÃ©vÃ©t venni, amely nem full hd. De nem is nagyon lehet olyan full hd tÃ©vÃ©t vÃ¡sÃ¡rolni, amely ne ugyanÃºgy nÃ©zzen ki: lapos, fekete (esetleg fehÃ©r vagy Ã¡tlÃ¡tszÃ³) keret, vÃ©kony, futurisztikus lÃ¡bakon. Pedig nem mindegyik nappaliba illik ez a szemÃ©lytelen dizÃ¡jn.\r\n\r\nLehet, hogy erre gondolt a Seiki is, amikor megalkotta a retro dizÃ¡jn hd tÃ©vÃ©t. A 22 hÃ¼velykes tÃ©vÃ© tÃ¶bb szÃ­nben is kaphatÃ³, kÃ¶ztÃ¼k piros, sÃ¡rga, kÃ©k, rÃ³zsaszÃ­n Ã©s lila (persze sokkal hangzatosabb nevei vannak a szÃ­neknek: Retro Red, Mid-century Yellow, Electric Blue, Doo-wop Purple Ã©s Cadillac Pink). ElÃ©g dolgot belepakoltak ahhoz, hogy Ã©lvezhetÅ‘ legyen a tÃ©vÃ©zÃ©s ebben a formÃ¡ban is, valÃ³di hd tÃ©vÃ©hez mÃ©ltÃ³an hdmi-csatlakozÃ³ja is van. Az Ã¡ra ehhez kÃ©pes nem is sok, 329 dollÃ¡rt kÃ©rnek Ã©rte, persze nem itthon.', 'retrohdtv.jpg', null, 'Retro Ã©s hd', 'NEANDRW');
INSERT INTO `posts` VALUES ('17', 'JÃ¶n a hideg, kell a sÃ¡l. Na de milyen? HÃ¡t a DNS-es. BÃ¡r ember legyen a talpÃ¡n, aki a nyak kÃ¶rÃ© tekert sÃ¡lbÃ³l kitalÃ¡lja, hogy az egy DNS-lÃ¡ncot akar Ã¡brÃ¡zolni.', 'dnssal.jpg', null, 'DNS-sÃ¡l', 'NEANDRW');
INSERT INTO `posts` VALUES ('18', 'termÃ©kleÃ­rÃ¡s...datetestttttt\r\n                        ', 'foszfleped.jpg', '2013-11-08 00:00:00', 'hirdetÃ©s cÃ­me asdasd', 'NEANDRW');
INSERT INTO `posts` VALUES ('19', 'termÃ©kleÃ­rÃ¡s...datetestttttt\r\n                        ', 'foszfleped.jpg', '2013-11-08 19:28:29', 'hirdetÃ©s cÃ­me asdasd', 'NEANDRW');
INSERT INTO `posts` VALUES ('20', 'asdcasdcfasdfatermÃ©kleÃ­rÃ¡s...\r\n                        ', 'helmszurdok.jpg', '2013-11-08 19:33:38', 'ujhirdetes', 'NEANDRW');
INSERT INTO `posts` VALUES ('21', 'safdasfasdfasdf\r\n                        ', 'tumblr_lvd0f1MbNf1qzdi59o1_500.jpg', '2013-11-11 20:03:31', 'HirdeÃ©s', 'NEANDRW');
INSERT INTO `users` VALUES ('43', 'Helloo55', 'Helloo55Hell', 'jkhjkhjkj@loll.oo');
INSERT INTO `users` VALUES ('44', 'Hellooujra', 'Hellooujra9', 'jkhjkhjkj@loll.oo');
INSERT INTO `users` VALUES ('45', 'iknewuweretr', 'iknewuweretr', 'sjlkdfkjsd@trouble.lll');
INSERT INTO `users` VALUES ('46', 'NEANDRW', 'valami', 'neandrw@gmail.com');
INSERT INTO `users` VALUES ('47', 'sdfasdfas678', 'sdfasdfas67', 'sfasdf@sdfasdf.hu');
INSERT INTO `users` VALUES ('48', 'qwefasdf', 'qwefasdf', 'sadasdfasdf@asds.hu');
INSERT INTO `users` VALUES ('49', 'asdfasdf', 'asdfasdfasdf', 'jkhkjhjk@ggggg.kk');
INSERT INTO `users` VALUES ('50', 'testtest', 'testtest', 'testtest@testtest.hu');
