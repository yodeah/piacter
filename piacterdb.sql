/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : piacterdb

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2014-04-28 23:52:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adid` int(11) DEFAULT NULL,
  `content` text,
  `userid` int(11) DEFAULT NULL,
  `reply` int(11) DEFAULT NULL,
  `datee` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '15', 'asdasd', '72', '0', null);
INSERT INTO `comments` VALUES ('2', '15', 'REPLY', '76', '1', null);
INSERT INTO `comments` VALUES ('3', '15', 'GÃBORNAK VÃLASZ', '76', '2', null);
INSERT INTO `comments` VALUES ('4', '15', 'nincs behÃºzÃ¡s', '76', '2', null);
INSERT INTO `comments` VALUES ('5', '15', 'remndes Ãºj', '76', '0', null);
INSERT INTO `comments` VALUES ('6', '15', 'mÃ¡r van dÃ¡tum\r\n', '76', '0', '2014-03-26 10:47:32');
INSERT INTO `comments` VALUES ('7', '15', 'ferinn', '76', '0', '2014-03-26 12:04:32');
INSERT INTO `comments` VALUES ('8', '15', 'seen teST', '76', '7', '2014-03-26 15:24:11');
INSERT INTO `comments` VALUES ('9', '15', 'seen teST', '76', '7', '2014-03-26 16:11:34');
INSERT INTO `comments` VALUES ('10', '15', 'seen teST', '76', '7', '2014-03-26 16:14:44');
INSERT INTO `comments` VALUES ('11', '15', 'seen teST', '76', '7', '2014-03-26 16:15:01');
INSERT INTO `comments` VALUES ('12', '15', 'seen teST', '76', '7', '2014-03-26 16:15:42');
INSERT INTO `comments` VALUES ('13', '15', 'uj seen', '76', '0', '2014-03-26 16:31:49');
INSERT INTO `comments` VALUES ('14', '15', 'asfasdfsadfas', '76', '0', '2014-03-26 16:40:11');
INSERT INTO `comments` VALUES ('15', '15', 'sajÃ¡t komment\r\n', '72', '0', '2014-03-26 16:48:57');
INSERT INTO `comments` VALUES ('16', '15', 'seen2', '76', '0', '2014-03-26 16:49:58');
INSERT INTO `comments` VALUES ('17', '16', 'testmegin', '76', '0', '2014-03-26 16:50:33');
INSERT INTO `comments` VALUES ('18', '15', 'asdas', '76', '0', '2014-03-26 16:53:09');
INSERT INTO `comments` VALUES ('19', '15', 'asdfasdfasdfsd', '76', '0', '2014-03-26 16:54:26');
INSERT INTO `comments` VALUES ('20', '15', 'dfghdfghdfghgf', '76', '0', '2014-03-26 19:48:05');
INSERT INTO `comments` VALUES ('21', '16', 'jkjhjk', '76', '0', '2014-03-26 19:48:30');
INSERT INTO `comments` VALUES ('22', '16', 'jkjhjk', '76', '0', '2014-03-26 19:48:32');
INSERT INTO `comments` VALUES ('23', '16', 'tÃ¡jniiint', '76', '0', '2014-03-26 19:52:21');
INSERT INTO `comments` VALUES ('24', '15', 'asdAJJAJAJAJAJA NO BIT ANYMOROOOORRRR', '76', '0', '2014-03-26 19:52:53');
INSERT INTO `comments` VALUES ('25', '16', 'dddddddddddddddddddddddddddddd', '76', '0', '2014-03-26 19:54:00');
INSERT INTO `comments` VALUES ('26', '15', 'dddÃºl rÃ¶vid a hozzÃ¡szÃ³lÃ¡s!\r\nÃšj hozzÃ¡szÃ³lÃ¡s', '76', '0', '2014-03-26 19:54:45');
INSERT INTO `comments` VALUES ('27', '79', 'comment ujratest', '76', '0', '2014-04-04 11:20:03');
INSERT INTO `comments` VALUES ('28', '79', 'huuhhhha', '72', '27', '2014-04-04 11:20:25');
INSERT INTO `comments` VALUES ('29', '89', 'Up! kerÃ©kszett kÃ¼lÃ¶n eladÃ³?', '76', '0', '2014-04-14 10:58:25');
INSERT INTO `comments` VALUES ('31', '89', 'nem kÃ¶szi!', '76', '29', '2014-04-14 11:02:31');
INSERT INTO `comments` VALUES ('32', '92', 'TESZTKOMMENT', '76', '0', '2014-04-21 20:45:39');
INSERT INTO `comments` VALUES ('33', '92', 'vÃ¡lasz', '72', '32', '2014-04-21 20:46:20');
INSERT INTO `comments` VALUES ('34', '92', 'hahÃ³', '76', '33', '2014-04-21 21:07:39');
INSERT INTO `comments` VALUES ('35', '93', 'blabla', '76', '0', '2014-04-21 21:13:56');
INSERT INTO `comments` VALUES ('36', '91', 'nagyon megÃ©rte kÃ¶szi!', '76', '0', '2014-04-24 20:44:26');
INSERT INTO `comments` VALUES ('37', '91', 'szivesen', '76', '36', '2014-04-24 20:44:32');
INSERT INTO `comments` VALUES ('38', '101', 'ko mment', '76', '0', '2014-04-25 07:58:59');
INSERT INTO `comments` VALUES ('39', '101', 'vÃ¡lasz\r\n', '76', '38', '2014-04-25 07:59:06');

-- ----------------------------
-- Table structure for `items`
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `owner` smallint(6) DEFAULT NULL,
  `title` text,
  `descr` text,
  `cond` bit(1) DEFAULT NULL,
  `region` smallint(6) DEFAULT NULL,
  `image` text,
  `date` datetime DEFAULT NULL,
  `quantity` smallint(6) DEFAULT NULL,
  `quantity ty` smallint(6) DEFAULT NULL,
  `fixprice` mediumint(6) DEFAULT NULL,
  `fixprice ty` smallint(6) DEFAULT NULL,
  `warranty` smallint(6) DEFAULT NULL,
  `warranty ty` smallint(6) DEFAULT NULL,
  `availability` datetime DEFAULT NULL,
  `seen` tinyint(1) DEFAULT '1',
  `auctionstart` mediumint(6) DEFAULT NULL,
  `auctionstep` mediumint(6) DEFAULT NULL,
  `auctionprice ty` smallint(6) DEFAULT NULL,
  `lastbidderid` smallint(6) DEFAULT NULL,
  `highestbid` smallint(6) DEFAULT NULL,
  `isopen` tinyint(4) DEFAULT '1',
  `boughtfixed` tinyint(4) DEFAULT NULL,
  `sentmessage` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('89', '76', 'Cinelli Willin', '2010-es Full carbon vÃ¡z, Cinelli stucni kormÃ¡ny, nyeregcsÅ‘. Shimano 105-Ã¶s szett, Mavic kerekek, Schwalbe ultremo kÃ¼lsÅ‘k. Selle Italia SLR carbon nyereg.\r\n\r\nKihasznÃ¡latlansÃ¡g miatt szeretnÃ©m eladni.\r\nTovÃ¡bbi paramÃ©terek	\r\nMÃ¡rka / gyÃ¡rtÃ³: Italia\r\nTÃ­pus / modell: Cinelli\r\nGyÃ¡rtÃ¡si Ã©v: 2010\r\nTÃ¶meg (gramm): 7500\r\nVÃ¡zmÃ©ret: 58\r\n\r\n', '', '9', 'Cinelli-Willin76Cinelli_Willin_orszaguti_kerekpar_elado_3837909923.jpg', '2014-04-14 10:57:11', '1', '0', '4000000', '0', '6', '1', '2015-04-14 10:57:12', '1', null, null, null, null, null, '1', null, '0');
INSERT INTO `items` VALUES ('100', '76', 'Mini kamera', 'KulcstartÃ³ kamera mini rejtett kÃ©m kamera AZONNAL\r\n\r\nKulcstartÃ³ba rejtett mini kÃ©m kamera.\r\n\r\n\r\n\r\nFunkciÃ³i:\r\n\r\nVideo felvÃ©tel: 720x480\r\n\r\nFÃ©nykÃ©p: 1280x1024\r\n\r\nHangfelvÃ©tel\r\n\r\nMÃ©retei: 5 x 3 x 1 cm\r\n\r\nBeÃ©pÃ­tett akkumulÃ¡tor, kb 1,5 Ã³ra Ã¼zemidÅ‘vel', '', '17', 'Mini-kamera76spy.jpg', '2014-04-25 00:15:26', '1', '0', '3000', '0', '1', '0', '2015-04-25 00:15:26', '1', '2000', '100', '0', null, null, '1', null, '0');
INSERT INTO `items` VALUES ('101', '76', 'Nikon - Yongnuo YN-565ex i-TTL', 'Yongnuo YN-565ex rendszer vaku...\r\n\r\nBudapesti Ã¡tvÃ©tel is megoldhatÃ³... :-)\r\n\r\nNikon gÃ©pekhez !!!\r\n\r\n\r\n\r\ni-TTL rendszerÅ±, \r\nLCD kijelzÅ‘vel, \r\nZoom vaku, \r\n- Minden irÃ¡nyba forgÃ³ fej,\r\n- BeÃ©pÃ­tett diffÃºzor.', '', '0', 'Nikon---Yongnuo-YN-565ex-i-TTL76nikon.jpg', '2014-04-25 00:23:27', '1', '0', '70000', '0', '1', '0', '2015-04-25 00:23:27', '1', null, null, null, null, null, '1', null, '0');
INSERT INTO `items` VALUES ('102', '76', 'Toshiba Camileo P10 Full HD kamera', 'oshiba Camileo P10 Full HD kamera\r\n\r\n\r\nEladÃ³  Toshiba Camileo P10 Full hd kamera alig hasznÃ¡ltam talÃ¡n 3-szor\r\n\r\nezÃ©rt az akku gyenge de hÃ¡lÃ³zatrÃ³l tÃ¶kÃ©letes vagyitt vaterrÃ¡n 3000ft egy Ãºj akkumulÃ¡tor.\r\n\r\n\r\nDoboz papÃ­rok kÃ¡belek tok minden megvan.', '', '14', 'Toshiba-Camileo-P10-Full-HD-kamera76e807_3_300.jpg', '2014-04-25 00:26:17', '1', '0', '40000', '0', '2', '0', '2015-04-25 00:26:17', '1', '30000', '2000', '0', '76', '32767', '1', null, '0');
INSERT INTO `items` VALUES ('103', '76', 'Samsung Galaxy Tab P1000', 'EladÃ³ kb. 4 Ã©ve T-MobilnÃ¡l vÃ¡sÃ¡rolt Samsung Galaxy Tab P1000 16 GB belsÅ‘ memÃ³riÃ¡val , gyÃ¡ri hÃ¡lÃ³zati tÃ¶ltÅ‘vel, fejhallgatÃ³val , gyÃ¡ri autÃ³s aktÃ­v dokkolÃ³val Ã©s szivargyÃºjtÃ³ tÃ¶ltÅ‘vel. (Az autÃ³s tÃ¶ltÅ‘ kÃ¡bele kontakt hibÃ¡s, de olcsÃ³n megoldhatÃ³ a cserÃ©je)\r\n\r\nVÃ©gig tokban tartott, karcmentes kijelzÅ‘vel. Android 2.3.6-os rendszer van rajta.\r\n\r\nElsÅ‘  tulajdonosa vagyok a kÃ©szÃ¼lÃ©knek.', '', '18', 'Samsung-Galaxy-Tab-P100076d607_1_300.jpg', '2014-04-25 08:22:53', '1', '0', '40000', '0', '1', '0', '2015-04-25 08:22:53', '1', null, null, null, null, null, '1', null, '0');
INSERT INTO `items` VALUES ('104', '76', 'Samsung ATIV Tab 7 XE700T1C-G01HU 128GB 3G+', '\r\nGyÃ¡rtÃ³	Samsung\r\nProcesszor	IntelÂ® Coreâ„¢ i5-3337U (Dual-Core, 1.8 - 2.7 GHz)\r\nChipkÃ©szlet	Mobile IntelÂ® HM76 Express Chipset\r\nKijelzÅ‘	11,6\" (Multi-touch, 1920x1080, S Pen aktÃ­v toll)\r\nVideÃ³kÃ¡rtya	IntelÂ® HD Graphics 4000\r\nHangkÃ¡rtya	BeÃ©pÃ­tett sztereÃ³ hangszÃ³rÃ³k', '', '0', 'Samsung-ATIV-Tab-7-XE700T1C-G01HU-128GB-3G+764166888387.jpg', '2014-04-25 08:24:04', '1', '0', '120000', '0', '1', '0', '2015-04-25 08:24:04', '1', null, null, null, null, null, '1', null, '0');
INSERT INTO `items` VALUES ('105', '76', 'Samsung Galaxy Note Pro 12.2 P900 32GB WiFi Tablet ', 'GyÃ¡rtÃ³	Samsung\r\nProcesszor	Samsung Exynos 5 Octa 5420 (Octa-Core, 1.9 GHz / 1.3 GHz)\r\nKijelzÅ‘	12,2\" (Multi-touch, 2560x1600, fÃ©nyes, LED)\r\nVideÃ³kÃ¡rtya	ARMÂ® Maliâ„¢-T628 GPU\r\nHangkÃ¡rtya	BeÃ©pÃ­tett sztereÃ³ hangszÃ³rÃ³k\r\nAkkumulÃ¡tor	9500 mAh (Lithium-ion)', '', '14', 'Samsung-Galaxy-Note-Pro-12.2-P900-32GB-WiFi-Tablet-764137193837.jpg', '2014-04-25 08:25:05', '1', '0', '200000', '0', '1', '0', '2015-04-25 08:25:05', '1', '150000', '1000', '0', null, null, '1', null, '0');
INSERT INTO `items` VALUES ('106', '76', 'Samsung N8000 Galaxy Note 10.1 WiFi + 3G', 'Samsung GT-P5100 Galaxy Tab 2 10.1 3G + WIFI 16GB\r\n\r\n\"0\" perces Samsung GT-P5100 Galaxy Tab 2 10.1 3G + WIFI(16GB)(SÃ¶tÃ©tszÃ¼rke) 12 hÃ³nap GSM bolti garanciÃ¡val, kÃ¡rtyafÃ¼ggetlenÃ¼l, magyar nyelvÅ± android menÃ¼vel, fÃ³liÃ¡s kijelzÅ‘vel Ã©s hÃ¡tlappal, gyÃ¡ri hÃ¡lÃ³zati tÃ¶ltÅ‘jÃ©vel, usb kÃ¡bellel, stereo headsettel, papÃ­rjaival, dobozÃ¡ban eladÃ³,BoltbÃ³l. ÃtvehtetÅ‘ szemÃ©lyesen Bp-en vagy utÃ¡nvÃ©ttel is.', '', '0', 'Samsung-N8000-Galaxy-Note-10.1-WiFi-+-3G76aa07_1_300.jpg', '2014-04-25 08:51:44', '1', '0', '100000', '0', '1', '0', '2015-04-25 08:51:44', '1', '70000', '10000', '0', null, null, '1', null, '0');
INSERT INTO `items` VALUES ('107', '76', 'Samsung N8000 Galaxy Note 10.1 WiFi + 3G', 'Note,  az Ãºj irÃ¡ny A Galaxy note 10,1 Ãºj tÃ¡vlatokat nyit meg elÅ‘tted, hogy bÃ¡rhol szabadon alkothass a digitÃ¡lis eszkÃ¶zÃ¶kkel a nagymÃ©retÅ± mÃ©gis kÃ¶nnyen hordozhatÃ³ kijelzÅ‘n. Fedezd fel az intelligens S Penben rejlÅ‘ lehetÅ‘sÃ©geket Ã©s hozz lÃ©tre Ãºj tartalmakat grafika, Ã­rÃ¡s Ã©s fÃ©nykÃ©pek felhasznÃ¡lÃ¡sÃ¡val a webalapÃº multimÃ©diÃ¡val Ã©s Ã©lvezd az egyedi digitÃ¡lis kiadvÃ¡nyok elÅ‘nyeit. A nagy teljesÃ­tmÃ©nyÅ± processzorral Ã©s a strapabÃ­rÃ³ akkumulÃ¡torral ez a legtÃ¶kÃ©letesebb, tÃ¶bb alkalmazÃ¡st egyszerre is futtatÃ³, kreatÃ­v mobil eszkÃ¶z. Alkoss szabadon Ã©s kÃ¶nnyedÃ©n - S Jegyzet Hozd lÃ©tre a sajÃ¡t dokumentumaidat az elÅ‘re telepÃ­tett, profin megtervezett sablonok segÃ­tsÃ©gÃ©vel. VÃ¡lassz a folyÃ³irat, naplÃ³, recept Ã©s egyÃ©b stÃ­lusÃº sablonok kÃ¶zÃ¼l. Illeszd be az Ã¶sszeÃ¡llÃ­tott szÃ¶veget, kÃ©pet Ã©s grafikÃ¡t az egyedi tartalmÃº, professzionÃ¡lis minÅ‘sÃ©gÅ± multimÃ©dia dokumentumba. A legjobb tÃ¡rs az alkotÃ¡sban - Adobe Photoshop Touch Hozz ki mÃ©gtÃ¶bbet a fotÃ³kbÃ³l, rajzokbÃ³l Ã©s a Google keresÃ©ssel talÃ¡lt kÃ©pekbÅ‘l  a Photoshop Touch segÃ­tsÃ©gÃ©vel. A kreatÃ­v eszkÃ¶zÃ¶kkel kÃ©peket egyesÃ­thetsz Ã©s profi effekteket alkalmazhatsz. ', '', '0', 'Samsung-N8000-Galaxy-Note-10.1-WiFi-+-3G76e907_1_300.jpg', '2014-04-25 08:54:25', '1', '0', '90000', '0', '1', '0', '2015-04-25 08:54:25', '1', null, null, null, null, null, '1', null, '0');
INSERT INTO `items` VALUES ('108', '76', 'HTC ONE M7', 'HTC ONE M7 nagyon szÃ©p Ã¡llapotban\r\n\r\nHTC One M7 \r\n\r\nSzolgÃ¡ltatÃ³:T-Mobile \r\n\r\nÃllapot: nagyon szÃ©p, ÃºjszerÅ± \r\n\r\nTartozÃ©kok: doboz,tÃ¶ltÅ‘,adatkÃ¡bel, fliptok\r\n\r\nGarancia: 1 hÃ³nap (1 hÃ©t teljes kÃ¶rÅ± + 3 hÃ©t szoftveres)  \r\n\r\nSzemÃ©lyes Ã¡tvÃ©tel: Budapesten, XIII. kerÃ¼letben\r\n\r\nKiszÃ¡llÃ­tÃ¡s: Budapest hatÃ¡rain belÃ¼l 1 munkanap alatt 1,000 Ft. Budapest hatÃ¡rain kÃ­vÃ¼l Royal Sprint futÃ¡rszolgÃ¡lattal 2,000 Ft. A csomagot kiÃ©rkezÃ©skor a helyszÃ­nen lehet fizetni. POSTÃT MOBILKÃ‰SZÃœLÃ‰K ESETÃ‰N NEM VÃLLALOK!', '', '19', 'HTC-ONE-M776c907_1_big.jpg', '2014-04-25 09:15:56', '1', '0', '60000', '0', '1', '0', '2015-04-25 09:15:56', '1', null, null, null, null, null, '1', null, '0');
INSERT INTO `items` VALUES ('109', '76', 'HTC Desire S HTC S510e ', 'Ãšj HTC Incredible S\r\n\r\nEladÃ³ EGY HTC Incredible S okostelefon  Qualcomm MSM8255 Snapdragon processzorral,1 hÃ©t csere vagy pÃ©nzvisszafizetÃ©si garanciÃ¡val!\r\n\r\nGYÃRILAG MAGYAR MENÃœ!!!\r\n\r\nA telefon kÃ¼lfÃ¶ldrÅ‘l Ã©rkezik, ÃGY a szÃ¡llÃ­tÃ¡si idÅ‘ 20-30 munkanap !\r\n\r\nSzÃ¡rmazÃ¡si hely: Taiwan\r\n\r\nRÃ©szletfizetÃ©s van, LÃ¡sd:SzÃ¡llÃ­tÃ¡si Ã©s garanciÃ¡lis feltÃ©telek!\r\n\r\nAZ ÃR BRUTTÃ“ ÃR, VÃM-ot, ÃFA-t,stb, tartalmazza!\r\n\r\nMÅ±szaki adatok:\r\n\r\nÃltalÃ¡nos 2G HÃ¡lÃ³zat GSM 850/900/1800/1900 3G hÃ¡lÃ³zat HSDPA 900/2100 HSDPA 900/1700/2100\r\n\r\nMegjelent 2011, februÃ¡r\r\n\r\nTest MÃ©retek 120 x 64 x 11.4 mm\r\n\r\nSÃºly 135.5 g -\r\n\r\nÃ‰rintÃ©svezÃ©rlÃ©ssel KijelzÅ‘: Type S-LCD kapacitÃ­v Ã©rintÅ‘kÃ©pernyÅ‘, 16 milliÃ³ szÃ­n\r\n\r\nMÃ©ret: 480 x 800 pixel, 4.0 inches (~ 233 ppi pixel sÅ±rÅ±sÃ©g)\r\n\r\nMultitouch: Igen - HTC Sense UI\r\n\r\nHang: Ã‰bresztÅ‘, RezgÃ©s, MP3, WAV csengÅ‘hangok\r\n\r\nHangszÃ³rÃ³: Igen\r\n\r\n3,5 mm-es jack: Igen\r\n\r\nMemÃ³riakÃ¡rtya slot: microSD, 32GB-ig,\r\n\r\nROM BelsÅ‘: 1,1 GB', '', '10', 'HTC-Desire-S-HTC-S510e-764907_1_big.jpg', '2014-04-25 09:17:30', '1', '0', '90000', '0', '1', '0', '2015-04-25 09:17:30', '1', '70000', '1000', '0', null, null, '1', null, '0');
INSERT INTO `items` VALUES ('110', '76', 'HTC Desire S HTC S510e ', 'Ãšj HTC Desire S HTC S510e Ãºj\r\n\r\nEladÃ³ EGY HTC DESIRE S510e okostelefon  Qualcomm MSM8255 Snapdragon, 1,0 GHz,processzorral,1 hÃ©t csere vagy pÃ©nzvisszafizetÃ©si garanciÃ¡val!\r\n\r\nGYÃRILAG MAGYAR MENÃœ!!!\r\n\r\nA telefon kÃ¼lfÃ¶ldrÅ‘l Ã©rkezik, ÃGY a szÃ¡llÃ­tÃ¡si idÅ‘ 20-30 munkanap !\r\n\r\nSzÃ¡rmazÃ¡si hely: Taiwan\r\n\r\nRÃ©szletfizetÃ©s van, LÃ¡sd:SzÃ¡llÃ­tÃ¡si Ã©s garanciÃ¡lis feltÃ©telek!\r\n\r\nAZ ÃR BRUTTÃ“ ÃR, VÃM-ot, ÃFA-t,stb, tartalmazza!\r\n\r\nMÅ±szaki adatok:\r\n\r\nÃltalÃ¡nos 2G HÃ¡lÃ³zat GSM 850/900/1800/1900 3G hÃ¡lÃ³zat HSDPA 900/2100 HSDPA 900/1700/2100\r\n\r\nMegjelent 2011, mÃ¡rcius', '', '0', 'HTC-Desire-S-HTC-S510e764907_1_300.jpg', '2014-04-25 09:18:27', '1', '0', '30000', '0', '1', '0', '2015-04-25 09:18:27', '1', null, null, null, null, null, '1', null, '1');
INSERT INTO `items` VALUES ('111', '76', 'HTC Touch HD mini T5555', 'HTC Touch HD mini T5555\r\n\r\nEladÃ³ EGY HTC  Touch HD mini T5555 okostelefon  Qualcomm MSM7227 600 MHz,processzorral,1 hÃ³nap csere vagy pÃ©nzvisszafizetÃ©si garanciÃ¡val!\r\n\r\nCsak Angol nyelv!\r\n\r\nA telefon kÃ¼lfÃ¶ldrÅ‘l Ã©rkezik, ÃGY a szÃ¡llÃ­tÃ¡si idÅ‘ 20-30 munkanap!\r\n\r\nSzÃ¡rmazÃ¡si hely: Taiwan\r\n\r\nRÃ©szletfizetÃ©s van, LÃ¡sd:SzÃ¡llÃ­tÃ¡si Ã©s garanciÃ¡lis feltÃ©telek!\r\n\r\nAZ ÃR BRUTTÃ“ ÃR, VÃM-ot, ÃFA-t,stb, tartalmazza!\r\n\r\nINGYEN POSTA!', '', '9', 'HTC-Touch-HD-mini-T5555768207_1_big.jpg', '2014-04-25 09:19:30', '1', '0', '50000', '0', '1', '0', '2015-04-25 09:19:30', '1', null, null, null, null, null, '1', null, '0');
INSERT INTO `items` VALUES ('112', '76', 'HP Envy 17-j010el', 'HP Envy 17-j010el ÃšJ High-End 17,3\" FullHD laptop\r\n\r\n- Intel Core i7-4700MQ QuadCore CPU (4x 2,4 / 3,4 GHz Turbo, 6MB cache)\r\n- 16GB RAM\r\n- 2TB HDD (2db 1TB-os meghajtÃ³)\r\n- nVidia GeForce GT 740M VGA 2GB dedikÃ¡lt RAM-mal\r\n- bluetooth\r\n- vilÃ¡gÃ­tÃ³ billentyÅ±zet\r\n- ujjlenyomat-olvasÃ³\r\n\r\n\r\nMagnÃ©zium-AlumÃ­nium burkolat. ElegÃ¡ns felsÅ‘ kategÃ³riÃ¡s gÃ©p, Ã©lÅ‘ben nagyon jÃ³l nÃ©z ki.\r\n', '', '13', 'HP-Envy-17-j010el76c707_2_300.jpg', '2014-04-25 09:20:50', '1', '0', '300000', '0', '1', '0', '2015-04-25 09:20:50', '1', null, null, null, null, null, '1', null, '0');
INSERT INTO `items` VALUES ('113', '76', 'Sony Vaio Tap 11 (laptop + tablet)', 'KihasznÃ¡latlansÃ¡g miatt eladÃ³ egy Sony Vaio Tap 11 SVT1121B2E tÃ­pusÃº hibrid gÃ©p (tablet + laptop egyben).\r\n2013 decemberÃ©ben vÃ¡sÃ¡rolt, kifogÃ¡stalan ÃºjszerÅ± Ã¡llapotban, dobozÃ¡ban, minden gyÃ¡ri tartozÃ©kÃ¡val.\r\nMÃ©g 2015 decemberÃ©ig Ã©rvÃ©nyes Sony garanciÃ¡val.\r\nAjÃ¡ndÃ©kba adok hozzÃ¡:\r\n- 64GB-os microSD kÃ¡rtyÃ¡t;\r\n- microHDMI-HDMI Ã¡talakÃ­tÃ³t, HDMI kÃ¡belt;\r\n- tÃ¡ska (Hama).\r\nÃšj Ã¡ra: 255e Ft-tÃ³l.\r\nCsere, beszÃ¡mÃ­tÃ¡s: csak IPad Air, IPad Mini Retina, vagy MacBook-ra Ã©rdekel.', '', '2', 'Sony-Vaio-Tap-11-(laptop-+-tablet)766607_1_300.jpg', '2014-04-25 09:21:36', '1', '0', '170000', '0', '1', '0', '2015-04-25 09:21:36', '1', null, null, null, null, null, '1', null, '0');
INSERT INTO `items` VALUES ('114', '76', 'i5 LENOVO LAPTOP', 'LENOVO T-410 i5 LAPTOP KivÃ¡lÃ³ esztÃ©tikai, Ã©s hibÃ¡tlan mÅ±szaki Ã¡llapotban. OrszÃ¡gosan ingyenes hÃ¡zhoz szÃ¡llÃ­tÃ¡s, utÃ¡nvÃ©tes futÃ¡rszolgÃ¡lattal akÃ¡r 1 munkanapon belÃ¼l. 6 hÃ³nap teljeskÃ¶rÅ± garancia. A termÃ©krÅ‘l minden esteben bruttÃ³ magyar szÃ¡mlÃ¡t adunk.\r\n \r\nAJÃNDÃ‰K KINGSTON 8 GB MICRO PENDRIVE + OPTIKAI EGÃ‰R !!!\r\n \r\nKonfigurÃ¡ciÃ³: Processzor: Intel Core i5 520M / 2.40 GHz 3M Cache\r\nMemÃ³ria: 4 GB DDR3\r\nMerevlemez: 160 GB SATA\r\nKijelzÅ‘: 14,1 LED Blacklight - 1280 x 800 (WXGA)\r\nVGA: Mobile Intel QM57 Express\r\nOptikai meghajtÃ³: DVD-RW Chipset:\r\nMobile Intel GM45 Express\r\nAkku: 9 cellÃ¡s Lithium Ion 4x USB 2.0, eSATA, WLAN, LAN,VGA, TÃ¶bb formÃ¡tumÃº kÃ¡rtyaolvasÃ³, billentyÅ±zet vilÃ¡gÃ­tÃ¡s.\r\nÃllapot: SzÃ©p Ã¡llapotÃº, hasznÃ¡lt\r\nAkkumulÃ¡tor kapacitÃ¡s: JÃ³, Kb. 1-1,5 Ã³rÃ¡s, hÃ¡lÃ³zati tÃ¶ltÅ‘\r\nGarancia: 6 hÃ³nap', '', '16', 'i5-LENOVO-LAPTOP764138127397.jpg', '2014-04-25 09:23:13', '1', '0', '90000', '0', '1', '0', '2015-04-25 09:23:13', '1', null, null, null, null, null, '1', null, '0');

-- ----------------------------
-- Table structure for `linkdb`
-- ----------------------------
DROP TABLE IF EXISTS `linkdb`;
CREATE TABLE `linkdb` (
  `title` text NOT NULL,
  `link` text,
  `database` smallint(2) DEFAULT NULL COMMENT '1-vatera 2-apród...stb',
  PRIMARY KEY (`title`(300))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of linkdb
-- ----------------------------
INSERT INTO `linkdb` VALUES ('1 FT! Apple MacBook Pro (Mid 2009) Notebook Laptop1855424090 -szÃ©p Ã¡llapot, jÃ³ akkumulÃ¡tor, minden kiegÃ©szÃ­tÅ‘- ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/apple/macbook_pro/1_ft_apple_macbook_pro_mid_2009_notebook_laptop_1855424090.html', null);
INSERT INTO `linkdb` VALUES ('120W autÃ³s notebook laptop tÃ¶ltÅ‘ adapter Ãºj, gar.1850056676 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/tolto_adapter/univerzalis/120w_autos_notebook_laptop_tolto_adapter_uj_gar_1850056676.html', null);
INSERT INTO `linkdb` VALUES ('120W notebook/laptop adapter tÃ¶ltÅ‘ Ãºj, gar.1856377676 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/tolto_adapter/univerzalis/120w_notebook_laptop_adapter_tolto_uj_gar_1856377676.html', null);
INSERT INTO `linkdb` VALUES ('18,5V 3,5A 65W notebook laptop tÃ¶ltÅ‘ HP COMPAQ Ãºj1851757091 JÃ“ ÃR minÅ‘sÃ©g 12HÃ“ GARI nagy kÃ©szletrÅ‘l ÃšJ 7,4x5,0 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/tolto_adapter/hp_compaq/18_5v_3_5a_65w_notebook_laptop_tolto_hp_compaq_uj_1851757091.html', null);
INSERT INTO `linkdb` VALUES ('19,5V 3,34A notebook laptop tÃ¶ltÅ‘ DELL PA-2E PA-121853002466 JÃ“ ÃR minÅ‘sÃ©g 12HÃ“ JÃ“TÃLLÃS nagy kÃ©szletrÅ‘l ÃšJ ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/tolto_adapter/dell/19_5v_3_34a_notebook_laptop_tolto_dell_pa_2e_pa_12_1853002466.html', null);
INSERT INTO `linkdb` VALUES ('19V 4,74A 90W notebook laptop tÃ¶ltÅ‘ HP COMPAQ Ãºj1851757082 JÃ“ ÃR minÅ‘sÃ©g 12HÃ“ GARI nagy kÃ©szletrÅ‘l ÃšJ 7,4x5,0 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/tolto_adapter/hp_compaq/19v_4_74a_90w_notebook_laptop_tolto_hp_compaq_uj_1851757082.html', null);
INSERT INTO `linkdb` VALUES ('19V 4,74A 90W notebook laptop tÃ¶ltÅ‘ HP COMPAQ Ãºj1851757121 JÃ“ ÃR minÅ‘sÃ©g 12HÃ“ GARI nagy kÃ©szletrÅ‘l ÃšJ 4,8x1,7 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/tolto_adapter/hp_compaq/19v_4_74a_90w_notebook_laptop_tolto_hp_compaq_uj_1851757121.html', null);
INSERT INTO `linkdb` VALUES ('40W-os tablet/EEE PC/laptop adapter Ãºj, gar.1854119777 Remek vÃ¡lasztÃ¡s bÃ¡rmelyik EEE PC-hez ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/tolto_adapter/univerzalis/40w_os_tablet_eee_pc_laptop_adapter_uj_gar_1854119777.html', null);
INSERT INTO `linkdb` VALUES ('7 \"LCD WiFi Mini Netbook Notebook Laptop WindowsCE1855613609 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/egyeb/7_lcd_wifi_mini_netbook_notebook_laptop_windowsce_1855613609.html', null);
INSERT INTO `linkdb` VALUES ('70W notebook laptop adapter  tÃ¶ltÅ‘ Ãºj, garanciÃ¡lis1854119783 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/tolto_adapter/univerzalis/70w_notebook_laptop_adapter_tolto_uj_garancialis_1854119783.html', null);
INSERT INTO `linkdb` VALUES ('90NB00W2-M02540-00 90NB00W2-M02540-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231359', null);
INSERT INTO `linkdb` VALUES ('90W notebook laptop adapter tÃ¶ltÅ‘, Ãºj, gar1854119774 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/tolto_adapter/univerzalis/90w_notebook_laptop_adapter_tolto_uj_gar_1854119774.html', null);
INSERT INTO `linkdb` VALUES ('AApple MacBook Air 13,3&quot; 1,3 GHz Intel Core i5 4 GB 256 GB SSD (MD761D/A) MD761D/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231305', null);
INSERT INTO `linkdb` VALUES ('Acer Aspire A5600U - DQ.SMKEG.001 DQ.SMKEG.001 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541837247', null);
INSERT INTO `linkdb` VALUES ('Acer Aspire A5600U - DQ.SMKEG.002 DQ.SMKEG.002 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1542035616', null);
INSERT INTO `linkdb` VALUES ('Acer Aspire A7600U - DQ.SL6EG.003 DQ.SL6EG.003 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1554319464', null);
INSERT INTO `linkdb` VALUES ('Acer Aspire A7600U - DQ.SL6EG.004 DQ.SL6EG.004 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1554319461', null);
INSERT INTO `linkdb` VALUES ('Acer Aspire A7600U - DQ.SL6EG.011 DQ.SL6EG.011-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276295', null);
INSERT INTO `linkdb` VALUES ('Acer Aspire AZ3280 DQ.SMNEC.002-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276265', null);
INSERT INTO `linkdb` VALUES ('Acer Aspire AZ3770 DQ.SMMEC.004 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1555103232', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE E1-532 - 2955U, 15.6HD, 500 GB, 2GB, HD Graphics, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575406137', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE E1-532 - 2955U, 15.6HD, 500 GB, 4GB, HD Graphics, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1570055481', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE E1-570 - i3-3217U, 15.6HD, 750 GB, 6GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576035567', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE E1-570 - i5-3337U, 15.6HD, 1000 GB, 4GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575406164', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE E1-570 - i5-3337U, 15.6HD, 750 GB, 6GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563710145', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE E1-572G - i3-4010U, 15.6HD, 1000 GB, 4GB, Radeon HD 8750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576035564', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE E1-572G - i7-4500U, 15.6HD, 1000 GB, 4GB, Radeon HD 8750M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926086', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE E1-572G - i7-4500U, 15.6HD, 1000 GB, 4GB, Radeon HD 8750M 2GB, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985444', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE E1-572G - i7-4500U, 15.6HD, 1000 GB, 4GB, Radeon R7 M265, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575406167', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE E1-572G - i7-4500U, 15.6HD, 1000 GB, 8GB, Radeon HD 8750M 2GB, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563710121', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE E1-572G - i7-4500U, 15.6HD, 1000 GB, 8GB, Radeon HD 8750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868845', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE E1-572G - i7-4500U, 15.6HD, 1000 GB, 8GB, Radeon R7 M265, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575406176', null);
INSERT INTO `linkdb` VALUES ('ACER Aspire P3 - i3-3229Y, 11.6HD, 60 GB, 2GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1568719461', null);
INSERT INTO `linkdb` VALUES ('ACER Aspire P3 - i5-3339Y, 11.6HD, 120 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563710046', null);
INSERT INTO `linkdb` VALUES ('ACER Aspire P3 - i5-3339Y, 11.6HD, 120 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572869043', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE R7 - i5-3337U, 15.6FULL HD, 1000 GB, 8GB, Geforce GT 750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059775', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE R7 - i5-3337U, 15.6FULL HD, 256 GB, 8GB, Geforce GT 750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059514', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE R7 - i5-4200U, 15.6FULL HD, 1000 GB+24 GB, 8GB, Geforce GT 750M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563710025', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE R7 - i7-4500U, 15.6FULL HD, 1000 GB+24 GB, 8GB, Geforce GT 750M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563710016', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE S3-371 - i5-3337U, 13.3HD, 500 GB, 4GB, HD Graphics 4000, Linux LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1567490400', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE S3-391 - i5-3337U, 13.3HD, 500 GB+20 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719464', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE S3-391 - i7-3537U, 13.3HD, 500 GB+20 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1568719662', null);
INSERT INTO `linkdb` VALUES ('Acer Aspire S3-951-2464G32 (b&eacute;zs) (Core i5-2467M/4 GB/320 GB/HD Graphics 3000/13.3&quot; HD LED/Win7 HP 64bit) notebook, laptop', 'http://www.grando.hu/product/view/?id=1551863574', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE S5-391 - i5-3317U, 13.3HD, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572868923', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE S7-391 - i5-3317U, 13.3FULL HD, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572060429', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE S7-392 - i7-4500U, 13.3QHD, 256 GB, 8GB, Integ., Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1564642059', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE Timeline Ultra M5-581TG - i7-3537U, 15.6HD, 500 GB+20 GB, 6GB, Geforce GT 730M 1GB, DVD RW, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572868893', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-571G - i7-3632QM, 15.6FULL HD, 1000 GB, 16GB, Geforce GT 730M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575061437', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-571G - i7-3632QM, 15.6FULL HD, 1000 GB, 8GB, Geforce GT 730M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868878', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-571G - i7-3632QM, 15.6FULL HD, 1000 GB, 8GB, Geforce GT 730M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868971', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-771G - i5-3210M, 17.3FULL HD, 1000 GB, 8GB, Geforce GT 650 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868929', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-771G - i5-3230M, 17.3FULL HD, 1000 GB, 4GB, Geforce GT 740M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868833', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-771G -i5 3210 17.3&quot; 4GB/500GB HDD Geforce GT650M Linux NXM1WEG068kiarusit Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059311', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i5-4200M, 17.3FULL HD, 1000 GB+120 GB, 8GB, Geforce GT 750M 4GB, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575061401', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i5-4200M, 17.3FULL HD, 1000 GB+120 GB, 8GB, Geforce GTX 760M 2GB, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575061389', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i5-4200M, 17.3FULL HD, 1000 GB, 8GB, Geforce GT 750M 4GB, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059919', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i5-4200M, 17.3FULL HD, 1000 GB, 8GB, Geforce GT 750M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567491297', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i5-4200M, 17.3FULL HD, 1000 GB, 8GB, Geforce GTX 760M 2GB, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563709989', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i5-4200M, 17.3HD+, 1000 GB, 4GB, Geforce GT 750M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567491279', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i7-4702MQ, 17.3FULL HD, 1000 GB+120 GB, 8GB, Geforce GT 750M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1556235252', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i7-4702MQ, 17.3FULL HD, 1000 GB+120 GB, 8GB, Geforce GTX 760M 2GB 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1552758729', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i7-4702MQ, 17.3FULL HD, 1000 GB+120 GB, 8GB, Geforce GTX 760M 2GB, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575061383', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i7-4702MQ, 17.3FULL HD, 1000 GB+120 GB, 8GB, Geforce GTX 760M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059370', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i7-4702MQ, 17.3FULL HD, 1000 GB+128 GB, 16GB, Geforce GTX 760M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1553684571', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i7-4702MQ, 17.3FULL HD, 1000 GB, 16GB, Geforce GT 750M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1553684577', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i7-4702MQ, 17.3FULL HD, 1000 GB, 16GB, Geforce GTX 760M 2GB, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059925', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i7-4702MQ, 17.3FULL HD, 1000 GB, 8GB, Geforce GT 750M 4GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1556235258', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i7-4702MQ, 17.3FULL HD, 1000 GB, 8GB, Geforce GT 750M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567491258', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i7-4702MQ, 17.3FULL HD, 1000 GB, 8GB, Geforce GTX 760M 2GB, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563709977', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i7-4702MQ, 17.3FULL HD, 1000 GB, 8GB, Geforce GTX 760M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1556235255', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i7-4702MQ, 17.3FULL HD, 500 GB, 8GB, Geforce GTX 760M 2GB 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1552758726', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i7-4702MQ, 17.3HD+, 1000 GB, 16GB, Geforce GTX 760M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567491303', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V3-772G - i7-4702MQ, 17.3HD+, 750 GB, 8GB, Geforce GT 750M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1553684565', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V5-171 - i7-3537U, 11.6HD, 500 GB, 8GB, HD Graphics 4000, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059889', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V5-571P - i3-2375M, 15.6HD, 750 GB, 4GB, HD Graphics 3000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1573566819', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V5-573G - i5-4200U, 15.6FULL HD, 1000 GB, 4GB, Geforce GT 750M 4GB, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575406170', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V5-573G - i5-4200U, 15.6FULL HD, 500 GB, 4GB, Geforce GT 750M 4GB LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1560081657', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V5-573G - i5-4200U, 15.6FULL HD, 500 GB, 8GB, Geforce GT 750M 4GB LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1561541496', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V5-573G - i5-4200U, 15.6FULL HD, 500 GB, 8GB, Geforce GT 750M 4GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926260', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V5-573G - i5-4200U, 15.6HD, 1000 GB, 6GB, Geforce GT 720M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868854', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V5-573G - i7-4500U, 15.6FULL HD, 500 GB, 8GB, Geforce GT 750M 4GB LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926248', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V5-573G - i7-4500U, 15.6FULL HD, 500 GB, 8GB, Geforce GT 750M 4GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1558072623', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V5-573G - i7-4500U, 15.6HD, 1000 GB, 4GB, Geforce GT 750M 4GB, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1573566849', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V5-573PG - i7-4500U, 15.6FULL HD, 500 GB, 8GB, Geforce GT 750M 4GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1560081651', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V7-482P - i3-4010U, 14HD, 500 GB+16 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719668', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V7-482P - i5-4200U, 14FULL HD, 500 GB+16 GB, 6GB, Geforce GT 750M 4GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572869208', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V7-581 - i5-3337U, 15.6, 120 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567490427', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V7-581G - i5-3337U, 15.6FULL HD, 500 GB+16 GB, 4GB, Geforce GT 720M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868980', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V7-581G - i5-3337U, 15.6HD, 1000 GB, 4GB, Geforce GT 720M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563709917', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V7-581G - i5-3337U, 15.6HD, 120 GB, 4GB, Geforce GT 720M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563709908', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V7-581G - i7-3537U, 15.6FULL HD, 120 GB, 8GB, Geforce GT 720M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575061434', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V7-582 - i5-4200U, 15.6FULL HD, 500 GB+16 GB, 6GB, Geforce GT 720M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869151', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V7-582 - i5-4200U, 15.6HD, 1000 GB, 8GB, Geforce GT 750M 4GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575061392', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V7-582 - i7-4500U, 15.6FULL HD, 256 GB, 8GB, Geforce GT 750M 4GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575061380', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V7-582P - i5-4200U, 15.6HD, 500 GB+16 GB, 6GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572868983', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V7-582P - i7-4500U, 15.6FULL HD, 1000 GB, 8GB, Geforce GT 750M 4GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059772', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V7-582P - i7-4500U, 15.6FULL HD, 256 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059391', null);
INSERT INTO `linkdb` VALUES ('ACER ASPIRE V7-582P - i7-4500U, 15.6FULL HD, 500 GB+16 GB, 6GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719533', null);
INSERT INTO `linkdb` VALUES ('Acer Aspire Z3605 DQ.SPAEC.001-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276283', null);
INSERT INTO `linkdb` VALUES ('Acer Aspire Z3605 DQ.SQ3EC.001-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276307', null);
INSERT INTO `linkdb` VALUES ('Acer Aspire Z5600U DQ.SNNEC.001 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1551712119', null);
INSERT INTO `linkdb` VALUES ('Acer Aspire Z7600U DQ.SL6EC.001 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1548980037', null);
INSERT INTO `linkdb` VALUES ('Acer Aspire ZS600 DQ.SLTEG.010 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1554319458', null);
INSERT INTO `linkdb` VALUES ('Acer Aspire ZS600t DQ.SLTEC.001 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1555103238', null);
INSERT INTO `linkdb` VALUES ('ACER eMachines E725 laptop 2GB RAM Dual Core 2GHz3912060453 ', 'http://beta.vatera.hu/-i3912060453.html', null);
INSERT INTO `linkdb` VALUES ('Acer TMP653-MG-53234G50Mtkk LIN fekete notebook (NX.V7FEU.011) notebook, laptop', 'http://www.grando.hu/product/view/?id=1575098388', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE 7750G - i5-2450M, 17.3HD+, 750 GB, 4GB, Radeon HD 7670M 1GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576035615', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE B113 - i5-3317U, 11.6HD, 500 GB, 4GB, Integ., Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1543594245', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE B113 - i5-3337U, 11.6HD, 500 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576035555', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P253 - i3-3120M, 15.6HD, 500 GB, 4GB, HD Graphics, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1542813453', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P253 - i3-3120M, 15.6HD, 750 GB, 4GB, Geforce 710M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1543594305', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P253 - i5-3230M, 15.6HD, 750 GB, 4GB, Integ., DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1543594302', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P255 - 2955U, 15.6HD, 500 GB, 4GB, HD Graphics 4400, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576035561', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P255 - 3556U, 15.6HD, 500 GB, 4GB, HD Graphics 4400, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576035573', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P255 - i3-4010U, 15.6HD, 500 GB, 4GB, HD Graphics 4400, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575406173', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P255 - i3-4010U, 15.6HD, 750 GB, 4GB, HD Graphics 4400, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576035558', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P255 - i5-4200U, 15.6HD, 1000 GB, 6GB, HD Graphics 4400, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576098936', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P255 - i5-4200U, 15.6HD, 750 GB, 4GB, HD Graphics 4400, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576098939', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P273 - 2020M, 17.3HD+, 750 GB, 4GB, Geforce 710M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576035612', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P273 - i5-3230M, 17.3HD+, 750 GB, 8GB, Geforce 710M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1543594332', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P273 - i5-3230M, 17.3HD+, 750 GB, 8GB, Geforce 710M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1543594326', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P455 - i3-4010U, 15.6FULL HD, 500 GB, 4GB, HD Graphics 4400, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926140', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P455 - i5-4200U, 15.6HD, 500 GB, 4GB, Integ., DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060027', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P455 - i5-4200U, 15.6HD, 500 GB, 8GB, Radeon HD 8750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576098927', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P643 - i7-3520M, 14HD, 500 GB, 8GB, Geforce GT 640M 1GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1540086882', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P653 - i5-3210M, 15.6HD, 500 GB, 4GB, Geforce GT 640M 1GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1540086813', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P653 - i5-3230M, 15.6HD, 500 GB, 4GB, Geforce GT 640M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576098930', null);
INSERT INTO `linkdb` VALUES ('ACER TRAVELMATE P653 - i5-3230M, 15.6HD, 750 GB, 4GB, Integ., DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576098933', null);
INSERT INTO `linkdb` VALUES ('Acer V5-571PG-33224G75Mass W8 ez&uuml;st notebook (NX.M8MEU.001) notebook, laptop', 'http://www.grando.hu/product/view/?id=1548763185', null);
INSERT INTO `linkdb` VALUES ('Acer Veriton Z26210G DQ.VEFEC.002-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276415', null);
INSERT INTO `linkdb` VALUES ('Acer Veriton Z2621G DQ.VFREC.001-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276277', null);
INSERT INTO `linkdb` VALUES ('Acer Veriton Z431G DQ.VEFEC.001-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276421', null);
INSERT INTO `linkdb` VALUES ('Acer Veriton Z431G DQ.VH9EC.001-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276457', null);
INSERT INTO `linkdb` VALUES ('AKCI&Oacute; - MSI GT60WSPH-7216257BWi7-3630QM 16GB/256GB SSD+750 39,6cm 15&quot;FHD 0016F3-SKU82 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1547896902', null);
INSERT INTO `linkdb` VALUES ('AKCI&Oacute;! - Asus VivoBook S400CA-CA161H Touch Notebook 90NB0051-M04640-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231332', null);
INSERT INTO `linkdb` VALUES ('AKCI&Oacute;! - HP Envy 6-1100sg Ultrabook i5-3317U 4GB 500GB 39,6cm 15&quot;HD Windows 8 C1X79EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783576', null);
INSERT INTO `linkdb` VALUES ('AKCI&Oacute;! - Lenovo IdeaPad U510 MBM86GE - i3-3227U 4GB 500GB+24SSD Windows 8 MBM86GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558804842', null);
INSERT INTO `linkdb` VALUES ('AKCI&Oacute;! - MSI CR41-i587 - i5-3210M 4GB/500GB 35,8 cm 14&quot;HD+ n/BT W8 + Aj&aacute;nd&eacute;k t&aacute;ska! 1AF+RUCKSACK Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1551995925', null);
INSERT INTO `linkdb` VALUES ('AKCI&Oacute;! - MSI GT70-75X287B - i7-3630QM 8GB 750GB 43,9cm 17&quot; FHD GTX 675MX + Aj&aacute;nd&eacute;k t&aacute;ska! 1C17-1CF Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552063215', null);
INSERT INTO `linkdb` VALUES ('AKCI&Oacute;! - MSI GT70H-75X4817B - i7-3630QM 8GB/750GB+128GB 17&quot;FHD GTX675M + Aj&aacute;nd&eacute;k t&aacute;ska! 1C17-1CG Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552063233', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR - i5 1,70GHz, 11.6HD, 64 GB, 4GB, HD Graphics 4000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1528521249', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR - i5-3317U, 11.6, 128 GB, 4GB, HD Graphics 4000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488601', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 - i5 1,30GHz, 11.6HD, 128 GB, 8GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488571', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 - i5 1,30GHz, 11.6HD, 256 GB, 8GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488568', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 - i5 1,30GHz, 11.6HD, 512 GB, 8GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488541', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 - i5 4.Gen, 11.6HD, 128 GB, 4GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869136', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 - i5 4.Gen, 11.6HD, 256 GB, 4GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059331', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 - i7, 11.6HD, 128 GB, 8GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488559', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 - i7, 11.6HD, 256 GB, 8GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488577', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 - i7, 11.6HD, 512 GB, 4GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488538', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 - i7, 11.6HD, 512 GB, 8GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488565', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 2013 - i5 1,30GHz, 11.6HD, 128 GB, 4GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488514', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 2013 - i5 1,30GHz, 11.6HD, 256 GB, 4GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488511', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 2013 - i5 1,30GHz, 11.6HD, 512 GB, 4GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488508', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 2013 - i5 4.Gen, 11.6HD, 128 GB, 4GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1556235294', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 2013 - i5 4.Gen, 11.6HD, 128 GB, 8GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488505', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 2013 - i5 4.Gen, 11.6HD, 256 GB, 4GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1556235291', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 2013 - i5 4.Gen, 11.6HD, 256 GB, 8GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488502', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 2013 - i5 4.Gen, 11.6HD, 512 GB, 8GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547755', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 2013 - i7, 11.6HD, 128 GB, 4GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547770', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 2013 - i7, 11.6HD, 128 GB, 8GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1556235282', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 2013 - i7, 11.6HD, 256 GB, 4GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1556235285', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 2013 - i7, 11.6HD, 256 GB, 8GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547749', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 2013 - i7, 11.6HD, 512 GB, 4GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547752', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11 2013 - i7, 11.6HD, 512 GB, 8GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547767', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 11,6&quot; 1,3 GHz Intel Core i5 4 GB 128 GB SSD (MD711D/A) MD711D/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560903648', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 11,6&quot; 1,3 GHz Intel Core i5 4GB 256GB SSD MD712D/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560903675', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 11,6&quot; 1,3 GHz Intel Core i5 8 GB 128 GB SSD BTO Z0NX_00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564105185', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 11,6&quot; 1,3 GHz Intel Core i5 8 GB 256 GB SSD BTO Z0NY_o00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231314', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 11,6&quot; 1,3 GHz Intel Core i5 8 GB 512 GB SSD BTO Z0NY_n00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1561055079', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 11,6&quot; 1,7 GHz Intel Core i7 4 GB 128 GB SSD BTO Z0NX00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560903696', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 11,6&quot; 1,7 GHz Intel Core i7 4 GB 256 GB SSD BTO Z0NY00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560903702', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 11,6&quot; 1,7 GHz Intel Core i7 4 GB 256 GB SSD BTO Z0NY_w00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564600266', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 11,6&quot; 1,7 GHz Intel Core i7 4 GB 512 GB SSD BTO Z0NY_p00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231362', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 11,6&quot; 1,7 GHz Intel Core i7 8 GB 128 GB SSD BTO Z0NX_r00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564105200', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 11,6&quot; 1,7 GHz Intel Core i7 8 GB 256 GB SSD BTO Z0NY_00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1561055031', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 11,6&quot; 1,7 GHz Intel Core i7 8 GB 512 GB SSD BTO Z0NY_a00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1563841677', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 11,6&quot; 2,0 GHz Intel Core i7 4 GB 128 GB SSD BTO Z0NB_s00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564105176', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11.6&quot; MD711SL/A - Intel Corei5  11.6&quot; 4GB/128 GB SSD Intel Graphics 5000 MD711SL/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789937', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 11.6&quot; MD712SL/A - Intel Corei5 11.6&quot; 4GB/256GB SSD   MD712SL/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789952', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 13 - i5 1,30GHz, 13.3, 128 GB, 4GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059301', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 13 - i5 4.Gen, 13.3, 128 GB, 4GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547746', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 13 - i5 4.Gen, 13.3, 128 GB, 8GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547740', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 13 - i5 4.Gen, 13.3, 256 GB, 4GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059418', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 13 - i5 4.Gen, 13.3, 256 GB, 8GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488589', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 13 - i5 4.Gen, 13.3, 512 GB, 4GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488550', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 13 - i5 4.Gen, 13.3, 512 GB, 8GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488562', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 13 - i7, 13.3, 128 GB, 4GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547737', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 13 - i7, 13.3, 128 GB, 8GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488580', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 13 - i7, 13.3, 256 GB, 4GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488547', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 13 - i7, 13.3, 256 GB, 8GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488592', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 13 - i7, 13.3, 512 GB, 4GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488544', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 13 - i7, 13.3, 512 GB, 8GB, HD Graphics 5000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488583', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 13&quot; MD760SL/A - Intel Corei5 13.3&quot; 4GB/128GB SSD  MD760SL/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789958', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK AIR 13&quot; MD761SL/A - Intel Corei5; 13.3&quot; 4GB/256GB SSD MD761SL/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789961', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 13,3&quot; 1,3 GHz Intel Core i5 4 GB 128 GB SSD MD760D/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560903654', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 13,3&quot; 1,3 GHz Intel Core i5 4 GB 512 GB SSD BTO Z0P0_n00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1561055067', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 13,3&quot; 1,3 GHz Intel Core i5 8 GB 128 GB SSD BTO Z0NZ_00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564105191', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 13,3&quot; 1,3 GHz Intel Core i5 8 GB 512 GB SSD BTO Z0P0_m00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1561055145', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 13,3&quot; 1,7 GHz Intel Core i7 4 GB 128 GB SSD BTO Z0NZ_k00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231302', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 13,3&quot; 1,7 GHz Intel Core i7 4 GB 256 GB SSD BTO Z0P000 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1561055025', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 13,3&quot; 1,7 GHz Intel Core i7 4 GB 512 GB SSD BTO Z0P0_q00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1561055157', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 13,3&quot; 1,7 GHz Intel Core i7 8 GB 128 GB SSD BTO Z0NZ00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560903705', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 13,3&quot; 1,7 GHz Intel Core i7 8 GB 256 GB SSD BTO Z0P0_00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1561055037', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 13,3&quot; 1,7 GHz Intel Core i7 8 GB 256 GB SSD BTO Z0P0_y00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231338', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Air 13,3&quot; 1,7 GHz Intel Core i7 8 GB 512 GB SSD BTO Z0P0_b00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1563841692', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i5 2,40GHz, 13.3, 256 GB, 16GB, Iris Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547722', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i5 2,50GHz, 13, 128 GB, 8GB, HD Graphics 4000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1540718502', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i5 2,50GHz, 13.3, 128 GB, 4GB, HD Graphics 4000, DVD RW, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488535', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i5 2,50GHz, 13.3, 128 GB, 8GB, HD Graphics 4000, DVD RW, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488526', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i5 2,50GHz, 13.3, 256 GB, 4GB, HD Graphics 4000, DVD RW, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488520', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i5 2,50GHz, 13.3, 500 GB, 4GB, HD Graphics 4000, DVD RW, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1528521267', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i5 2,60GHz / 3,20GHz Turbo, 3MB Cache, 13.3, 512 GB, 8GB, Iris Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488607', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i5 2,60GHz, 13.3, 1000 GB, 16GB, Iris Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547704', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i5 2,60GHz, 13.3, 1000 GB, 8GB, Iris Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547698', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i5 2,60GHz, 13.3, 128 GB, 16GB, Iris Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547707', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i5 2,60GHz, 13.3, 128 GB, 4GB, Iris Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547701', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i5 2,60GHz, 13.3, 256 GB, 8GB, Iris Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547695', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i5 2,60GHz, 13.3, 512 GB, 8GB, Iris Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547692', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i5-4258U, 13.3, 128 GB, 4GB, Iris Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547716', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i5-4258U, 13.3, 128 GB, 8GB, Iris Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547713', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i5-4258U, 13.3, 256 GB, 8GB, Iris Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547710', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i7 2,80GHz, 13.3, 1000 GB, 8GB, Iris Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547677', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i7 2,80GHz, 13.3, 128 GB, 4GB, Iris Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547683', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i7 2,80GHz, 13.3, 128 GB, 8GB, Iris Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547680', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i7 2,80GHz, 13.3, 256 GB, 8GB, Iris Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547674', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i7 2,80GHz, 13.3, 512 GB, 16GB, Iris Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547686', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i7 2,80GHz, 13.3, 512 GB, 8GB, Iris Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547671', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i7 2,90GHz, 13.3, 1000 GB, 8GB, HD Graphics 4000, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488523', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i7 2,90GHz, 13.3, 256 GB, 8GB, HD Graphics 4000, DVD RW, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488517', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i7 2,90GHz, 13.3, 500 GB, 8GB, HD Graphics 4000, DVD RW, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488529', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i7 2,90GHz, 13.3, 750 GB, 8GB, HD Graphics 4000, DVD RW, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488595', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13 - i7-3840QM, 13.3, 256 GB, 16GB, Iris Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547689', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; 2,5 GHz Intel Core i5 4 GB 128 GB SSD BTO Z0MT00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560903708', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; 2,5 GHz Intel Core i5 4 GB 128 GB SSD BTO Z0MT_d00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231320', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; 2,5 GHz Intel Core i5 4 GB 500 GB  MD101D/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560903663', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; 2,5 GHz Intel Core i5 4 GB 750 GB BTO Z0MT_c00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231311', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; 2,5 GHz Intel Core i5 4 GB RAM 256 GB SSD BTO Z0MT_u00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231347', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; 2,5 GHz Intel Core i5 4 GB RAM 512 GB SSD BTO Z0MT_l00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564751589', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; 2,5 GHz Intel Core i5 8 GB RAM 128 GB SSD BTO Z0MT_w00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231329', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; 2,5 GHz Intel Core i5 8 GB RAM 128 GB SSD BTO Z0MT_z00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059329', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; 2,9 GHz Intel Core i7 750 GB + Belkin hordt&aacute;ska MD102D/A+F8N371CWBKW00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1561055055', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; 2,9 GHz Intel Core i7 8 GB 512 GB SSD BTO Z0MU00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1563976602', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; 2,9 GHz Intel Core i7 8 GB 512 GB SSD BTO Z0MU_z00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059371', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; 2,9 GHz Intel Core i7 8 GB RAM 128 GB SSD BTO Z0MU_00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231356', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; 2,9 GHz Intel Core i7 8 GB RAM 750 GB MD102D/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1561055007', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; Retina 2,5 GHz i5 8 GB RAM 128 GB SSD (MD212D/A) MD212D/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231326', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; Retina 2,5 GHz i5 8 GB RAM 768 GB SSD BTO Z0N3_d00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565214582', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; Retina 2,5 GHz i5 8 GB RAM 768 GB SSD BTO Z0N3_h00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1563976608', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; Retina 2,6 GHz i5 8 GB RAM 256 GB SSD (ME662D/A) ME662D/A_00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231368', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; Retina 2,6 GHz i5 8 GB RAM 256 GB SSD ME662D/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1561055091', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; Retina 2,6 GHz i5 8 GB RAM 512 GB SSD BTO  Z0PW_f00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059344', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; Retina 2,9 GHz i7 8 GB RAM 128 GB SSD BTO Z0N3_l00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564600263', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; Retina 2,9 GHz i7 8 GB RAM 256 GB SSD BTO Z0N400 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1563841686', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; Retina 2,9 GHz i7 8 GB RAM 512 GB SSD BTO Z0N3_t00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565214576', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; Retina 2,9 GHz i7 8 GB RAM 768 GB SSD BTO Z0N3_k00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669877', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 13,3&quot; Retina 2,9 GHz i7 8 GB RAM 768 GB SSD BTO Z0N3_r00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1563976632', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13.3&quot; MD101SL/A - Intel Corei5 13.3&quot; 4GB/500GB MD101SL/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789943', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13.3&quot; MD102SL/A - Intel Core i7 13.3&quot; 8GB/750GB HDD MD102SL/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789967', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 13.3&quot; MD212SL/A - Intel Core i5; 13.3&quot; 8GB/128GB SSD MD212SL/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789973', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,00GHz, 15.4, 1000 GB, 16GB, Iris Pro Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547668', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,00GHz, 15.4, 1000 GB, 8GB, Iris Pro Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547659', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,00GHz, 15.4, 256 GB, 16GB, Iris Pro Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547665', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,00GHz, 15.4, 256 GB, 8GB, Iris Pro Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488616', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,00GHz, 15.4, 512 GB, 16GB, Iris Pro Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547662', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,00GHz, 15.4, 512 GB, 8GB, Iris Pro Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547656', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,30GHz, 15.4, 1000 GB, 16GB, Geforce GT 750M 2GB, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547647', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,30GHz, 15.4, 1000 GB, 16GB, Iris Pro Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547644', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,30GHz, 15.4, 1000 GB, 8GB, Iris Pro Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547632', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,30GHz, 15.4, 256 GB, 16GB, Iris Pro Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547641', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,30GHz, 15.4, 256 GB, 8GB, Iris Pro Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547629', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,30GHz, 15.4, 500 GB, 4GB, Geforce GT 650M 512MB, DVD RW, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488598', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,30GHz, 15.4, 512 GB, 16GB, Geforce GT 750M 2GB, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547638', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,30GHz, 15.4, 512 GB, 16GB, Iris Pro Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547635', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,30GHz, 15.4, 512 GB, 8GB, Iris Pro Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547626', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,60GHz, 15.4, 1000 GB, 8GB, Iris Pro Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547611', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,60GHz, 15.4, 256 GB, 16GB, Iris Pro Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547623', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,60GHz, 15.4, 256 GB, 8GB, Iris Pro Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547608', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,60GHz, 15.4, 512 GB, 16GB, Geforce GT 750M 2GB, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547620', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,60GHz, 15.4, 512 GB, 16GB, Iris Pro Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547617', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,60GHz, 15.4, 512 GB, 8GB, Iris Pro Graphics, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547605', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15 - i7 2,70GHz / 3,70GHz Turbo, 6MB Cache, 15.4, 512 GB, 16GB, Geforce GT 650M 1GB, OS X LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059748', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 15,4&quot; 2,3 GHz Intel Core i7 4 GB 500 GB MD103D/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1563841683', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 15,4&quot; Retina 2,4 GHz i7 8 GB 256 GB SSD (ME664D/A) ME664D/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1563976596', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 15,4&quot; Retina 2,4 GHz i7 8 GB 768 GB SSD BTO Z0PY_g00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669940', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 15,4&quot; Retina 2,6 GHz i7 8 GB RAM 768 GB SSD BTO Z0ML00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564105152', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 15,4&quot; Retina 2,7 GHz i7 16 GB 256 GB SSD BTO Z0PY_z00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1563976620', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 15,4&quot; Retina 2,7 GHz i7 16 GB 512 GB SSD (ME665D/A) ME665D/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1563976635', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 15,4&quot; Retina 2,7 GHz i7 8 GB RAM 768 GB SSD BTO Z0PY_y00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059308', null);
INSERT INTO `linkdb` VALUES ('Apple MacBook Pro 15,4&quot; Retina 2,8 GHz i7 16 GB 768 GB SSD BTO Z0PY_p00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564105170', null);
INSERT INTO `linkdb` VALUES ('APPLE MACBOOK PRO 15.4&quot; MD103SL/A - Intel Core i7 15.4&quot;  4GB/500GB HDD  Geforce GT650 512MB +Intel 4000 MD103SL/A00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789976', null);
INSERT INTO `linkdb` VALUES ('ASUS 19V 2.1A Eee PC 1005HA 1008HA 1101HA 1201HA series AD6630 2.3*0.7mm 40w notebook/laptop h&aacute;l&oacute;zati adapter/t&ouml;lt&otilde; ut&aacute;ngy&aacute;rtott', 'http://www.grando.hu/product/view/?id=1529980377', null);
INSERT INTO `linkdb` VALUES ('ASUS A3E hibÃ¡s laptop1854243839 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/asus/asus_a/asus_a3e_hibas_laptop_1854243839.html', null);
INSERT INTO `linkdb` VALUES ('Asus A56CB-XX053H Ultraslim Design Notebook 90NB0151-M00600-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231251', null);
INSERT INTO `linkdb` VALUES ('ASUS A56CB-XX055H Ultraslim Design Notebook 90NB0151-M00620-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059221', null);
INSERT INTO `linkdb` VALUES ('ASUS A56CB-XX058H Ultraslim Design Notebook 90NB0151-M00650-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669838', null);
INSERT INTO `linkdb` VALUES ('ASUS A56CM-XX076H Notebook 90NUHP214N12155D151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059227', null);
INSERT INTO `linkdb` VALUES ('Asus Asus VivoBook S500CA-CJ074H Touch Ultrabook 90NB0061-M02200-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059245', null);
INSERT INTO `linkdb` VALUES ('ASUS B400A-W3041X B400A-W3041X-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567183935', null);
INSERT INTO `linkdb` VALUES ('ASUS B400VC - i3-3217U, 14HD, 500 GB+128 GB, 4GB, HD Graphics 4000, Win7 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572869262', null);
INSERT INTO `linkdb` VALUES ('ASUS B400VC - i5-3317U, 14HD, 256 GB, 4GB, Quadro NVS 5200M 1GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572869220', null);
INSERT INTO `linkdb` VALUES ('ASUS B400VC - i5-3317U, 14HD, 500 GB+128 GB, 4GB, Win7 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1541628150', null);
INSERT INTO `linkdb` VALUES ('ASUS B400VC-W3007G B400VC-W3007G-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567183944', null);
INSERT INTO `linkdb` VALUES ('ASUS B400VC-W3007X B400VC-W3007X-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245102', null);
INSERT INTO `linkdb` VALUES ('ASUS B43A - i3-3110M, 14HD, 500 GB, 4GB, HD Graphics, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567491714', null);
INSERT INTO `linkdb` VALUES ('Asus B43A-CU062G B43A-CU062G-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245225', null);
INSERT INTO `linkdb` VALUES ('ASUS B53 - i5-3210M, 15.6FULL HD, 500 GB, 4GB, HD Graphics, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1543854066', null);
INSERT INTO `linkdb` VALUES ('ASUS B53 - i5-3210M, 15.6HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1543854060', null);
INSERT INTO `linkdb` VALUES ('ASUS BU400A - i5-3317U, 14HD, 500 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1553013807', null);
INSERT INTO `linkdb` VALUES ('ASUS BU400A - i5-3317U, 14HD, 500 GB, 4GB, HD Graphics, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567491735', null);
INSERT INTO `linkdb` VALUES ('ASUS F550CC-XX735H Gaming Notebook Core i5, 8GB, 500 GB HDD, NVIDIA GT 720M, Win 8 F550CC-XX735H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566483762', null);
INSERT INTO `linkdb` VALUES ('ASUS F550VB-XX027H Gaming Notebook Core i5, 8GB RAM, 500GB HDD, NVIDIA GT 740 F550VB-XX027H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566483768', null);
INSERT INTO `linkdb` VALUES ('Asus F75VB-TY041D 90NB00Q1-M01260-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564904802', null);
INSERT INTO `linkdb` VALUES ('Asus F75VB-TY049H Multimedia-Notebook 90NB00Q1-M00630-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565214573', null);
INSERT INTO `linkdb` VALUES ('Asus F75VB-TY076H Multimedia-Notebook F75VB-TY076H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566926409', null);
INSERT INTO `linkdb` VALUES ('Asus F75VC-TY063H 90NB0241-M00920-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564751541', null);
INSERT INTO `linkdb` VALUES ('Asus F75VC-TY142H 90NB0241-M02080-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231323', null);
INSERT INTO `linkdb` VALUES ('ASUS G46VW - i7-3630QM, 14HD, 750 GB+128 GB, 16GB, Geforce GTX 660M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060408', null);
INSERT INTO `linkdb` VALUES ('Asus G53SX gamer laptop1856637080 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/asus/asus_g/asus_g53sx_gamer_laptop_1856637080.html', null);
INSERT INTO `linkdb` VALUES ('ASUS G53SX-SZ102V G53SX-SZ102V-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567183941', null);
INSERT INTO `linkdb` VALUES ('ASUS G55VW - i7-3630QM, 15.6FULL HD, 750 GB, 12GB, Geforce GTX 660M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869259', null);
INSERT INTO `linkdb` VALUES ('ASUS G55VW - i7-3630QM, 15.6FULL HD, 750 GB, 16GB, Geforce GTX 660M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869256', null);
INSERT INTO `linkdb` VALUES ('ASUS G55VW-S1239H G55VW-S1239H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567183932', null);
INSERT INTO `linkdb` VALUES ('Asus G74SX i7 Gamer laptop 17,3\" LED3907098192 ', 'http://beta.vatera.hu/-i3907098192.html', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JH - i7-4700HQ, 17.3FULL HD, 1000 GB+256 GB, 16GB, Geforce GTX 780M 4GB, Blu-Ray, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563171855', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JH - i7-4700HQ, 17.3FULL HD, 1000 GB+256 GB, 8GB, Geforce GTX 780M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567491570', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JH - i7-4700HQ, 17.3FULL HD, 1000 GB, 16GB, Geforce GTX 780M 4GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1570055586', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JH - i7-4700HQ, 17.3FULL HD, 1000 GB, 32GB, Geforce GTX 780M 4GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1570055583', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JH - i7-4700HQ, 17.3FULL HD, 1000 GB, 8GB, Geforce GTX 780M 4GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1570055589', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JH - i7-4700HQ, 17.3FULL HD, 750 GB+256 GB, 8GB, Geforce GTX 780M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926239', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JH-CV011H Gaming Notebook (43cm (17,3&#039;&#039;), 16GB RAM, 1TB HDD, SSD, 4GB GTX 780M) G750JH-CV011H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458276', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JH-T4080H Gaming Notebook (43cm (17,3&#039;&#039;), 8GB RAM, 1TB HDD, SSD, 4GB GTX 780M) G750JH-T4080H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958687', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JW - i7-4700HQ, 17.3FULL HD, 1000 GB, 16GB, Geforce GTX 765M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567491534', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JW - i7-4700HQ, 17.3FULL HD, 1000 GB, 8GB, Geforce GTX 765M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1555533603', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JW - i7-4700HQ, 17.3FULL HD, 750 GB, 16GB, Geforce GTX 765M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563039549', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JW - i7-4700HQ, 17.3FULL HD, 750 GB, 8GB, Geforce GTX 765M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563039552', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JW-T4042H 17,3FHD, 750GB, 6GB, GTX 765M 2GB, DVD, Win8 G750JW-T4042H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574748906', null);
INSERT INTO `linkdb` VALUES ('Asus G750JW-T4057H Full HD Gaming Notebook 90NB00M1-M00720-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958660', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JX - 17,3FHD, 750GB, 8GB, GTX 770M 3GB, DVD, Win8 asusg750JX8G Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568218458', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JX - i7-4700HQ, 17.3FULL HD, 1000 GB, 16GB, Geforce GTX 770M 3GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1569673197', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JX - i7-4700HQ, 17.3FULL HD, 1000 GB, 8GB, Geforce GTX 770M 3GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1555533597', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JX - i7-4700HQ, 17.3FULL HD, 256 GB+1000 GB, 16GB, Geforce GTX 770M 3GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567491516', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JX - i7-4700HQ, 17.3FULL HD, 256 GB+1000 GB, 8GB, Geforce GTX 770M 3GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1555533591', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JX - i7-4700HQ, 17.3FULL HD, 750 GB, 16GB, Geforce GTX 770M 3GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575661008', null);
INSERT INTO `linkdb` VALUES ('ASUS G750JX - i7-4700HQ, 17.3FULL HD, 750 GB, 8GB, Geforce GTX 770M 3GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563039519', null);
INSERT INTO `linkdb` VALUES ('Asus G750JX-T4052H Full HD Gaming Notebook 90NB00N1-M00550-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958678', null);
INSERT INTO `linkdb` VALUES ('Asus G750JX-T4070H Full HD Gaming Notebook 90NB00N1-M00750-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958669', null);
INSERT INTO `linkdb` VALUES ('Asus G750JX-T4166H Full HD Gaming Notebook 90NB00N1-M01820-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958681', null);
INSERT INTO `linkdb` VALUES ('Asus G750JX-T4167H Full HD Gaming Notebook 90NB00N1-M01830-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958666', null);
INSERT INTO `linkdb` VALUES ('Asus G750JX-T4175H Full HD Gaming Notebook G750JX-T4175H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458273', null);
INSERT INTO `linkdb` VALUES ('ASUS G75VX-CV042H 3D - i7-3630QM, 17.3FULL HD, 1000 GB+256 GB, 32GB, Geforce GTX 670M-X 3GB, Blu-Ray, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563039879', null);
INSERT INTO `linkdb` VALUES ('ASUS G75VX-CV042H G75VX-CV042H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245123', null);
INSERT INTO `linkdb` VALUES ('Asus G75VX-T4020H Full HD Gaming Notebook 90NLEC522N31755D151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958603', null);
INSERT INTO `linkdb` VALUES ('ASUS K551LB - i5-4200U, 15.6HD, 750 GB+24 GB, 8GB, Geforce GT 740M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1570055496', null);
INSERT INTO `linkdb` VALUES ('ASUS K56CB - i5-3337U, 15.6HD, 500 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567492467', null);
INSERT INTO `linkdb` VALUES ('ASUS K56CB - i7-3537U, 15.6HD, 1000 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1569673179', null);
INSERT INTO `linkdb` VALUES ('ASUS K56CB - i7-3537U, 15.6HD, 500 GB, 4GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1567491507', null);
INSERT INTO `linkdb` VALUES ('Asus K56CB-XX122H 90NB0151-M07510-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669913', null);
INSERT INTO `linkdb` VALUES ('ASUS K75VM 8240/ASUS Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1530258192', null);
INSERT INTO `linkdb` VALUES ('ASUS K95VB - i3-3120M, 18.4FULL HD, 1000 GB, 4GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1565365590', null);
INSERT INTO `linkdb` VALUES ('ASUS K95VB - i3-3120M, 18.4FULL HD, 1000 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833202', null);
INSERT INTO `linkdb` VALUES ('ASUS K95VB - i5-3230M, 18.4FULL HD, 1000 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1565365584', null);
INSERT INTO `linkdb` VALUES ('ASUS K95VB - i7-3630QM, 18.4FULL HD, 1000 GB, 16GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563553383', null);
INSERT INTO `linkdb` VALUES ('ASUS K95VB - i7-3630QM, 18.4FULL HD, 1000 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563553389', null);
INSERT INTO `linkdb` VALUES ('Asus K95VB-YZ031H 90NB0391-M00330-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789925', null);
INSERT INTO `linkdb` VALUES ('ASUS K95VB-YZ051H Notebook (46cm (18,4?); 8GB RAM; 1000GB HDD; Windows 8) K95VB-YZ051H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566483777', null);
INSERT INTO `linkdb` VALUES ('ASUS K95VJ - i3-3110M, 18.4FULL HD, 1000 GB, 4GB, Geforce GT 635M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1545297969', null);
INSERT INTO `linkdb` VALUES ('ASUS K95VJ - i3-3110M, 18.4FULL HD, 1000 GB, 8GB, Geforce GT 635M 1GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1555533543', null);
INSERT INTO `linkdb` VALUES ('ASUS K95VJ - i3-3110M, 18.4FULL HD, 1000 GB, 8GB, Geforce GT 635M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1554118329', null);
INSERT INTO `linkdb` VALUES ('ASUS N550JV - i7-4700HQ, 15.6FULL HD, 1000 GB, 16GB, Geforce GT 750M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1557028980', null);
INSERT INTO `linkdb` VALUES ('ASUS N550JV - i7-4700HQ, 15.6FULL HD, 1000 GB, 16GB, Geforce GT 750M 4GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060222', null);
INSERT INTO `linkdb` VALUES ('ASUS N550JV - i7-4700HQ, 15.6FULL HD, 1000 GB, 6GB, Geforce GT 750M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1557028986', null);
INSERT INTO `linkdb` VALUES ('ASUS N550JV - i7-4700HQ, 15.6FULL HD, 1000 GB, 8GB, Geforce GT 750M 2GB, Blu-Ray, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1555296915', null);
INSERT INTO `linkdb` VALUES ('ASUS N550JV - i7-4700HQ, 15.6FULL HD, 1000 GB, 8GB, Geforce GT 750M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1557028983', null);
INSERT INTO `linkdb` VALUES ('ASUS N550JV - i7-4700HQ, 15.6FULL HD, 1000 GB, 8GB, Geforce GT 750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567491429', null);
INSERT INTO `linkdb` VALUES ('ASUS N550JV - i7-4700HQ, 15.6FULL HD, 1000 GB, 8GB, Geforce GT 750M 4GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060303', null);
INSERT INTO `linkdb` VALUES ('ASUS N550JV - i7-4700HQ, 15.6FULL HD, 1000 GB, 8GB, Geforce GT 750M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567491438', null);
INSERT INTO `linkdb` VALUES ('ASUS N550JV-CN088H i7-4700HQ 8GB 1TB HDD GT750 4GB Win8 90NB00K1-M02530-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789898', null);
INSERT INTO `linkdb` VALUES ('ASUS N550JV-CN165 i7 6GB 1TB VGA 2GB USB 3.0 HDMI N550JV-CN165-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458231', null);
INSERT INTO `linkdb` VALUES ('ASUS N550JV-CN165H i7 6GB 1TB VGA 2GB USB 3.0 HDMI Win8 N550JV-CN165H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458267', null);
INSERT INTO `linkdb` VALUES ('Asus N550JV-CN199H i7-4700HQ 90NB00K1-M02510-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789985', null);
INSERT INTO `linkdb` VALUES ('Asus N550JV-CN200H 90NB00K1-M02520-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789949', null);
INSERT INTO `linkdb` VALUES ('ASUS N550JV-CN201H Multimedia-Notebook i7-4700HQ, 8GB, 1000GB HDD, GT750 90NB00K1-M02540-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789889', null);
INSERT INTO `linkdb` VALUES ('ASUS N550LF - i7-4500U, 15.6FULL HD, 1000 GB, 6GB, Geforce GT 745 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719542', null);
INSERT INTO `linkdb` VALUES ('ASUS N550LF - i7-4500U, 15.6FULL HD, 1000 GB, 6GB, Geforce GT 750 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1565365575', null);
INSERT INTO `linkdb` VALUES ('ASUS N550LF - i7-4500U, 15.6FULL HD, 1000 GB, 8GB, Geforce GT 745 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869154', null);
INSERT INTO `linkdb` VALUES ('ASUS N550LF - i7-4500U, 15.6FULL HD, 1000 GB, 8GB, Geforce GT 750 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1565365560', null);
INSERT INTO `linkdb` VALUES ('ASUS N550LF - i7-4700HQ, 15.6FULL HD, 1000 GB, 8GB, Geforce GT 745M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1569673071', null);
INSERT INTO `linkdb` VALUES ('ASUS N550LF-CN101 - FULL HD IPS, i7-4500U, 8GB, 1TB, GT745 N550LF-CN101-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568815155', null);
INSERT INTO `linkdb` VALUES ('ASUS N55SF-S1332V-00 N55SF-S1262V-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566926421', null);
INSERT INTO `linkdb` VALUES ('ASUS N55SF-S1332V-00 N55SF-S1332V-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566926418', null);
INSERT INTO `linkdb` VALUES ('ASUS N56JR - i5-4200H, 15.6FULL HD, 1000 GB, 16GB, Geforce GTX 760M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926152', null);
INSERT INTO `linkdb` VALUES ('ASUS N56JR - i5-4200H, 15.6FULL HD, 1000 GB, 4GB, Geforce GTX 760M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926158', null);
INSERT INTO `linkdb` VALUES ('ASUS N56JR - i5-4200H, 15.6FULL HD, 1000 GB, 8GB, Geforce GTX 760M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926155', null);
INSERT INTO `linkdb` VALUES ('ASUS N56JR - i7-4700HQ, 15.6FULL HD, 750 GB, 6GB, Geforce GTX 760M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059379', null);
INSERT INTO `linkdb` VALUES ('ASUS N56JR - i7-4700HQ, 15.6FULL HD, 750 GB, 6GB, Geforce GTX 760M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059385', null);
INSERT INTO `linkdb` VALUES ('ASUS N56JR-S4044H WIN8 N56JR-S4069H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276583', null);
INSERT INTO `linkdb` VALUES ('ASUS N56VB - i5-3230M, 15.6FULL HD, 750 GB, 6GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1569673275', null);
INSERT INTO `linkdb` VALUES ('ASUS N56VB - i5-3230M, 15.6FULL HD, 750 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1552515669', null);
INSERT INTO `linkdb` VALUES ('Asus N56VB-S4038H + 4 GB RAM 90NB0161-M00470+4GB Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571270280', null);
INSERT INTO `linkdb` VALUES ('ASUS N56VV - i5-3230M, 15.6FULL HD, 750 GB, 6GB, Geforce GT 750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1558310397', null);
INSERT INTO `linkdb` VALUES ('ASUS N56VV - i7-3630QM, 15.6FULL HD, 750 GB, 8GB, Geforce GT 750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1558310388', null);
INSERT INTO `linkdb` VALUES ('ASUS N56VZ 7945/ASUS Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1530258285', null);
INSERT INTO `linkdb` VALUES ('ASUS N750JV - i7-4700HQ, 17.3FULL HD, 1500 GB, 8GB, Geforce GT 750M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1555296870', null);
INSERT INTO `linkdb` VALUES ('ASUS N750JV - i7-4700HQ, 17.3FULL HD, 750 GB, 16GB, Geforce GT 750 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1573566798', null);
INSERT INTO `linkdb` VALUES ('ASUS N750JV - i7-4700HQ, 17.3FULL HD, 750 GB, 16GB, Geforce GT 750 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575661005', null);
INSERT INTO `linkdb` VALUES ('ASUS N750JV - i7-4700HQ, 17.3FULL HD, 750 GB, 8GB, Geforce GT 750 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059709', null);
INSERT INTO `linkdb` VALUES ('ASUS N750JV - i7-4700HQ, 17.3FULL HD, 750 GB, 8GB, Geforce GT 750 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059706', null);
INSERT INTO `linkdb` VALUES ('ASUS N750JV - i7-4700HQ, 17.3FULL HD, 750 GB, 8GB, Geforce GT 750M 4GB, Blu-Ray, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1557028962', null);
INSERT INTO `linkdb` VALUES ('Asus N750JV-T4033H 90NB0201-M00330-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789970', null);
INSERT INTO `linkdb` VALUES ('Asus N750JV-T4097H Multimedia-Highlight 90NB0201-M01140-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958657', null);
INSERT INTO `linkdb` VALUES ('Asus N750JV-T4105H Multimedia-Highlight 90NB0201-M01150-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958645', null);
INSERT INTO `linkdb` VALUES ('Asus N750JV-T4106H Multimedia-Highlgiht 90NB0201-M01160-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958663', null);
INSERT INTO `linkdb` VALUES ('Asus N750JV-T4109H 90NB0201-M01200-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789988', null);
INSERT INTO `linkdb` VALUES ('Asus N750JV-T4110H Multimedia Notebook 90NB0201-M01210-00-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565790015', null);
INSERT INTO `linkdb` VALUES ('Asus N76VB-T4002H Multimedia-Highlight Full HD 90NB0131-M00220-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789814', null);
INSERT INTO `linkdb` VALUES ('Asus N76VB-T4022H Multimedia-Highlight + Full HD 90NB0131-M00230-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1572942051', null);
INSERT INTO `linkdb` VALUES ('Asus N76VB-T4065H Multimedia-Highlight Full HD 90NB0131-M00720-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789811', null);
INSERT INTO `linkdb` VALUES ('ASUS N76VZ 8249/ASUS Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1530258330', null);
INSERT INTO `linkdb` VALUES ('ASUS P41 3229/ASUS Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1530258336', null);
INSERT INTO `linkdb` VALUES ('ASUS P41 6105/ASUS Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1530258339', null);
INSERT INTO `linkdb` VALUES ('ASUS P550CA - i5-3337U, 15.6HD, 500 GB, 4GB, HD Graphics, DVD RW, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1567491243', null);
INSERT INTO `linkdb` VALUES ('ASUS P550CA - i5-3337U, 15.6HD, 750 GB, 6GB, HD Graphics 4000, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575660996', null);
INSERT INTO `linkdb` VALUES ('ASUS P550CC - i3-3217U, 15.6HD, 500 GB, 4GB, Geforce GT 720M 2GB, DVD RW, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1569673170', null);
INSERT INTO `linkdb` VALUES ('ASUS P550CC - i5-3337U, 15.6HD, 500 GB, 4GB, Geforce GT 720M 2GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1569673173', null);
INSERT INTO `linkdb` VALUES ('ASUS P550CC - i7-3537U, 15.6HD, 750 GB, 6GB, Geforce GT 720M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868794', null);
INSERT INTO `linkdb` VALUES ('ASUS P550CC-XO1129G Business Notebook (39cm(15,6&quot;); Core i5; 4GB; 500GB; Win8) P550CC-XO1129G-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566096762', null);
INSERT INTO `linkdb` VALUES ('ASUS P550CC-XO989G Business Notebook (39cm(15,6&quot;); Core i3; 4GB; 500GB; Win8) P550CC-XO989G-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566096759', null);
INSERT INTO `linkdb` VALUES ('ASUS P55VA - i3-3120M, 15.6HD, 500 GB, 4GB, HD Graphics, DVD RW, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1567491390', null);
INSERT INTO `linkdb` VALUES ('ASUS P55VA - i5-3210M, 15.6HD, 500 GB, 4GB, HD Graphics 3000, DVD RW, Win7 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1569673065', null);
INSERT INTO `linkdb` VALUES ('ASUS P55VA - i5-3210M, 15.6HD, 500 GB, 4GB, HD Graphics, DVD RW LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1567491381', null);
INSERT INTO `linkdb` VALUES ('Asus Pro B400 / BU400A-CC107P Touch Notebook 90NUBW354N21216Z151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1572942054', null);
INSERT INTO `linkdb` VALUES ('Asus Pro B43A-VO055G 90NBWA638N15517T651Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669832', null);
INSERT INTO `linkdb` VALUES ('Asus Pro B43A-VO055X 90NBWA638N1551XL651Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059263', null);
INSERT INTO `linkdb` VALUES ('Asus Pro B43V-CU024G 90NAYC638N11537T651Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669844', null);
INSERT INTO `linkdb` VALUES ('Asus Pro B43V-CU025G B43V-CU025G-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458252', null);
INSERT INTO `linkdb` VALUES ('Asus Pro B53A-SO056G 90NB5A448N15137T151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669835', null);
INSERT INTO `linkdb` VALUES ('Asus Pro B53A-SO056X 90NB5A448N1513XL151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059254', null);
INSERT INTO `linkdb` VALUES ('Asus Pro B53A-SO058G 90NB5A448N13137T151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789805', null);
INSERT INTO `linkdb` VALUES ('Asus Pro B53A-SO058X 90NB5A448N1313XL151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669841', null);
INSERT INTO `linkdb` VALUES ('Asus Pro B53A-SO064P B53A-SO064P-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458243', null);
INSERT INTO `linkdb` VALUES ('Asus Pro B53A-SO091X 90NB5A428N1313XL151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789919', null);
INSERT INTO `linkdb` VALUES ('Asus Pro B53A-SO098X 90NB5A428N1513XL151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669925', null);
INSERT INTO `linkdb` VALUES ('Asus Pro B53V-S4042X Business Notebook (39cm (15,6?); Core i5; 6GB RAM; Full HD; Win7 Pro) 90N6ZC438N1173XL151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566483696', null);
INSERT INTO `linkdb` VALUES ('Asus Pro B53V-SO041G 90N6ZC428N11727T151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566096696', null);
INSERT INTO `linkdb` VALUES ('Asus Pro B53V-SO041X 90N6ZC428N1172XL151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565214543', null);
INSERT INTO `linkdb` VALUES ('Asus Pro BU400 / B400VC-W3020X Business Ultrabook 90NUEC314N2231XL151-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789829', null);
INSERT INTO `linkdb` VALUES ('Asus Pro BU400 / B400VC-W3022X Business Ultrabook 90NUEC314N2141XL151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1572942048', null);
INSERT INTO `linkdb` VALUES ('Asus Pro BU400 / B400VC-W3101G 90NUBW314N21217T151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789808', null);
INSERT INTO `linkdb` VALUES ('ASUS PRO BU400A-W3101G Business Notebook (35,5cm(14&quot;); Core i5; 4GB; 500GB HDD; Win7 Pro) BU400A-W3101G-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566483705', null);
INSERT INTO `linkdb` VALUES ('Asus Pro P45VA-VO007G 90NB0021-M00710-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564904721', null);
INSERT INTO `linkdb` VALUES ('Asus Pro P45VA-VO008G 90NB0021-M00720-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059242', null);
INSERT INTO `linkdb` VALUES ('Asus Pro P45VJ-VO002G 90NB00P1-M00650-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565214534', null);
INSERT INTO `linkdb` VALUES ('Asus Pro P55VA-SO018G 90NGKA318N37227T151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564751544', null);
INSERT INTO `linkdb` VALUES ('Asus Pro P55VA-SO028D 90NGKA318N322260151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564600305', null);
INSERT INTO `linkdb` VALUES ('Asus Pro P55VA-SO028G 90NGKA318N32227T151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564904727', null);
INSERT INTO `linkdb` VALUES ('ASUS PRO P56CB-XO193G P56CB-XO193G-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566096765', null);
INSERT INTO `linkdb` VALUES ('Asus Pro PU500CA-XO002X 90NB00F1-M00850-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669826', null);
INSERT INTO `linkdb` VALUES ('Asus Pro PU500CA-XO016X 90NB00F1-M00860-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059224', null);
INSERT INTO `linkdb` VALUES ('ASUS PRO64JV-JX557 PRO64JV-JX557-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566926397', null);
INSERT INTO `linkdb` VALUES ('ASUS R501VV - i5-3230M, 15.6HD, 750 GB, 4GB, Geforce GT 750M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1570055490', null);
INSERT INTO `linkdb` VALUES ('ASUS R704 - i5-3230M, 17HD+, 750 GB, 6GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567490025', null);
INSERT INTO `linkdb` VALUES ('Asus R704VC-TY062H R704VC-TY062H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059314', null);
INSERT INTO `linkdb` VALUES ('Asus S300CA-C1015H Touch 90NB00Z1-M01100-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564904736', null);
INSERT INTO `linkdb` VALUES ('ASUS S56CB - i7-3537U, 15.6HD, 1000 GB+24 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1569673152', null);
INSERT INTO `linkdb` VALUES ('ASUS S56CB-XX009H Design Ultrabook 90NB0151-M00720-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059239', null);
INSERT INTO `linkdb` VALUES ('Asus S56CB-XX493H Ultrabook 90NB0151-M07540-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669907', null);
INSERT INTO `linkdb` VALUES ('ASUS TAICHI 21-CW001P-00 TAICHI21-CW001P-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245135', null);
INSERT INTO `linkdb` VALUES ('ASUS TAICHI21 - i5-3317U, 11.6, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1549434843', null);
INSERT INTO `linkdb` VALUES ('ASUS TAICHI21 - i7-3517U, 11.6FULL HD, 256 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1555195710', null);
INSERT INTO `linkdb` VALUES ('ASUS TAICHI21 - i7-3517U, 11.6FULL HD, 256 GB, 4GB, Integ., Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1565365659', null);
INSERT INTO `linkdb` VALUES ('ASUS TAICHI21 - i7-3537U, 11.6FULL HD, 256 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1555192845', null);
INSERT INTO `linkdb` VALUES ('Asus TAICHI21-CW002H Innovativer Ultrabook-Tablet Hybrid 90NTFA122N12215D151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789859', null);
INSERT INTO `linkdb` VALUES ('Asus TAICHI21-CW003H Hybrid Ultrabook-Tablet 90NTFA122N12115D151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1572853686', null);
INSERT INTO `linkdb` VALUES ('ASUS TAICHI21-CW009H Convertible Ultrabook 90NTFA122N11215D351Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789787', null);
INSERT INTO `linkdb` VALUES ('ASUS TAICHI31 - i5-3317U, 13.3FULL HD, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1555533609', null);
INSERT INTO `linkdb` VALUES ('ASUS TAICHI31 - i5-3317U, 13.3FULL HD, 256 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1555195713', null);
INSERT INTO `linkdb` VALUES ('ASUS TAICHI31 - i5-3337U, 13.3FULL HD, 256 GB, 4GB, HD Graphics, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1569673119', null);
INSERT INTO `linkdb` VALUES ('ASUS TAICHI31 - i7-3517U, 13.3FULL HD, 256 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1555533600', null);
INSERT INTO `linkdb` VALUES ('ASUS TAICHI31 - i7-3537U, 13.3FULL HD, 256 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1569673122', null);
INSERT INTO `linkdb` VALUES ('Asus TAICHI31-CX003H Convertible Ultrabook 90NB0081-M01010-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789871', null);
INSERT INTO `linkdb` VALUES ('Asus TAICHI31-CX009H Convertible Ultrabook 90NB0081-M01020-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789865', null);
INSERT INTO `linkdb` VALUES ('Asus TAICHI31-CX010H Convertible Ultrabook 90NB0081-M01430-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958615', null);
INSERT INTO `linkdb` VALUES ('ASUS Transformer Book TX300CA - i5-3337U, 13.3FULL HD, 320 GB+128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1568719608', null);
INSERT INTO `linkdb` VALUES ('ASUS Transformer Book TX300CA - i5-3337U, 13.3FULL HD, 500 GB+128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1555533606', null);
INSERT INTO `linkdb` VALUES ('ASUS Transformer Book TX300CA - i7-3517U, 13.3FULL HD, 500 GB+128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1547717238', null);
INSERT INTO `linkdb` VALUES ('ASUS Transformer Book TX300CA - i7-3537U, 13.3FULL HD, 500 GB+128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1569673080', null);
INSERT INTO `linkdb` VALUES ('Asus Transformer Book TX300CA-C4005H Convertible Ultrabook 90NB0071-M00670-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565790000', null);
INSERT INTO `linkdb` VALUES ('Asus Transformer Book TX300CA-C4006H Convertible Ultrabook 90NB0071-M00660-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789955', null);
INSERT INTO `linkdb` VALUES ('Asus Transformer Book TX300CA-C4006H Ultrabook TX300CA-C4006H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276586', null);
INSERT INTO `linkdb` VALUES ('Asus Transformer Book TX300CA-C4021H Ultrabook 90NB0071-M03160-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958651', null);
INSERT INTO `linkdb` VALUES ('Asus Transformer Book TX300CA-C4025P Ultrabook TX300CA-C4025P-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458345', null);
INSERT INTO `linkdb` VALUES ('Asus Transformer Book TX300CA-C4030H Ultrabook 90NB0071-M03150-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565790018', null);
INSERT INTO `linkdb` VALUES ('Asus Transformer Book TX300CA-C4033P Ultrabook TX300CA-C4033P-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458336', null);
INSERT INTO `linkdb` VALUES ('Asus U32VJ-RO015P (Intel i5/4 GB/750 GB/GeForce GT 635M/13,3&quot;/MS WIN8) notebook, laptop', 'http://www.grando.hu/product/view/?id=1548896019', null);
INSERT INTO `linkdb` VALUES ('ASUS U38DT - A8 4555M, 13.3HD, 500 GB, 4GB, Radeon HD 8550M 1GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1569673116', null);
INSERT INTO `linkdb` VALUES ('ASUS U38N - A8 4555M, 13.3FULL HD, 500 GB, 4GB, Integ., Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1542813432', null);
INSERT INTO `linkdb` VALUES ('ASUS UX21A 8247/ASUS Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1530258408', null);
INSERT INTO `linkdb` VALUES ('ASUS UX51VZ ASUS UX51VZ Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1532651430', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S200E-CT184H 90NFQT194N14225D15DU-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231260', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S300CA-C1003H Touch 90NB00Z1-M00730-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564904730', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S300CA-C1021H Touch Ultrabook 90NB00Z1-M03060-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059374', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S300CA-C1049H Touch Notebook 90NB00Z1-M02320-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059335', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S300CA-C1060P Touch S300CA-C1060P-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566698319', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S300CA-C1064H Touch Ultrabook 90NB00Z1-M02210-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059332', null);
INSERT INTO `linkdb` VALUES ('ASUS VivoBook S400CA - i3-2365M, 14HD, 500 GB, 4GB, HD Graphics 3000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1545297948', null);
INSERT INTO `linkdb` VALUES ('ASUS VivoBook S400CA - i5-3317U, 14HD, 500 GB+24 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1568720280', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S400CA-CA006H Touch Ultrabook S400CA-CA006H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458258', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S400CA-CA071H Touch Notebook S400CA-CA071H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458255', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S400CA-CA093H Touch Ultrabook 90NB0051-M04180-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669880', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S400CA-CA129H Touch Ultrabook 90NB0051-M04160-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059230', null);
INSERT INTO `linkdb` VALUES ('ASUS VivoBook S500CA - i3-2365M, 15.6HD, 500 GB, 4GB, HD Graphics 3000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563039588', null);
INSERT INTO `linkdb` VALUES ('ASUS VivoBook S500CA - i5-3317U, 15.6HD, 500 GB+24 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1543853991', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S500CA-CJ005H S500CA-CJ005H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566698262', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S500CA-CJ010H Touch Ultrabook 90NB0061-M00550-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059236', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S500CA-CJ027P Touch Ultrabook S500CA-CJ027P-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566698331', null);
INSERT INTO `linkdb` VALUES ('ASUS VivoBook S550CA - i5-3317U, 15.6HD, 750 GB+24 GB, 4GB, Integ., DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568720235', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S550CA-CJ020H Touch Ultrabook S550CA-CJ020H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458264', null);
INSERT INTO `linkdb` VALUES ('ASUS VivoBook S550CB - i3-3217U, 15.6HD, 500 GB, 4GB, Geforce GT 740M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1561818891', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S550CB-CJ017H Touch Ultrabook 90NB02D1-M01070-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059260', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S550CB-CJ088H Touch Ultrabook 90NB02D1-M02000-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789904', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S550CB-CJ152H Touch Ultrabook 90NB02D1-M01990-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669922', null);
INSERT INTO `linkdb` VALUES ('ASUS VivoBook S550CM - i3-3217U, 15.6HD, 500 GB, 4GB, Integ., DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563039864', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S550CM-CJ033H Touch Ultrabook 90NB00X1-M00800 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552152366', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S550CM-CJ038H Touch Ultrabook 90NB00X1-M00810-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565214588', null);
INSERT INTO `linkdb` VALUES ('ASUS VivoBook S551LA - i3-4010U, 15.6, 500 GB+24 GB, 4GB, HD Graphics 4400, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926137', null);
INSERT INTO `linkdb` VALUES ('ASUS VivoBook S551LA - i5-4200U, 15.6, 750 GB+24 GB, 6GB, HD Graphics 4400, DVD RW, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572869013', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S551LA-CJ002H Touch Notebook 90NB0261-M00020-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059368', null);
INSERT INTO `linkdb` VALUES ('ASUS VivoBook S551LB - i5-4200U, 15.6, 500 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1569673131', null);
INSERT INTO `linkdb` VALUES ('ASUS VivoBook S551LB - i7-4500U, 15.6, 500 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1569673128', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S551LB-CJ003H Touch Ultrabook S551LB-CJ003H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567183986', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S551LB-CJ004H Touch Notebook S551LB-CJ004H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566581256', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S551LB-CJ005H Touch Notebook 90NB02A1-M00050-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669937', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S551LB-CJ044H Touch Ultrabook 90NB02A1-M00490-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789934', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S551LB-CJ045H Touch Ultrabook S551LB-CJ045H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566581241', null);
INSERT INTO `linkdb` VALUES ('Asus VivoBook S551LB-CJ076H Touch Ultrabook S551LB-CJ076H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567183962', null);
INSERT INTO `linkdb` VALUES ('ASUS VivoBook U38DT-R3001H  90NTHC112N11225D151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565214531', null);
INSERT INTO `linkdb` VALUES ('ASUS VivoBook U38DT-R3002H U38DT-R3002H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458333', null);
INSERT INTO `linkdb` VALUES ('ASUS VivoBook U38N-C4010H Ultrathin Touch Notebook 90NTIA212N12925D151Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565214537', null);
INSERT INTO `linkdb` VALUES ('Asus Vivobook x202e  Ã©rintÅ‘kÃ©pernyÅ‘s laptop1850091446 Ã©rintÅ‘kÃ©pernyÅ‘s touchsceen laptop ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/asus/asus_x/asus_vivobook_x202e_erintokepernyos_laptop_1850091446.html', null);
INSERT INTO `linkdb` VALUES ('ASUS VX7 6127/ASUS Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1530258459', null);
INSERT INTO `linkdb` VALUES ('ASUS X450CC - i3-3217U, 14HD, 500 GB, 4GB, Geforce GT 720M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567491699', null);
INSERT INTO `linkdb` VALUES ('ASUS X450CC - i5-3337U, 14HD, 500 GB, 4GB, Geforce GT 720M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1565835573', null);
INSERT INTO `linkdb` VALUES ('ASUS X450CC - i7-3537U, 14HD, 500 GB, 4GB, Geforce GT 720M 2GB LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562603502', null);
INSERT INTO `linkdb` VALUES ('ASUS X450CC - i7-3537U, 14HD, 750 GB, 4GB, Geforce GT 720M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1573566810', null);
INSERT INTO `linkdb` VALUES ('ASUS X450CC-WX009H X450CC-WX009H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566698304', null);
INSERT INTO `linkdb` VALUES ('ASUS X450CC-WX181H X450CC-WX181H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566698313', null);
INSERT INTO `linkdb` VALUES ('ASUS X502CA - 1007U, 15.6HD, 320 GB, 4GB, HD Graphics LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1561818876', null);
INSERT INTO `linkdb` VALUES ('Asus X550 / F550CA-XX080H 90NB00U2-M01060-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231341', null);
INSERT INTO `linkdb` VALUES ('Asus X550 / F550CC-XX053H 90NB00W2-M01770-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564904784', null);
INSERT INTO `linkdb` VALUES ('Asus X550 / F550DP-XX022H 90NB01N2-M00300-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564751613', null);
INSERT INTO `linkdb` VALUES ('Asus X550 / F550VB-XX011H 90NB00R2-M00140-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564904760', null);
INSERT INTO `linkdb` VALUES ('Asus X550 / F550VB-XX039D 90NB00R2-M00590-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1572233670', null);
INSERT INTO `linkdb` VALUES ('Asus X550 / F550VC-XX035H 90NB00S2-M01050-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564751604', null);
INSERT INTO `linkdb` VALUES ('Asus X550CA-XX092H 90NB00U2-M11190-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231344', null);
INSERT INTO `linkdb` VALUES ('ASUS X550CC - i5-3317U, 15.6HD, 500 GB, 4GB, Geforce GT 720M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564774077', null);
INSERT INTO `linkdb` VALUES ('ASUS X550CC - i5-3337U, 15.6HD, 500 GB, 4GB, Geforce GT 720M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1569673047', null);
INSERT INTO `linkdb` VALUES ('ASUS X550CC - i7-3537U, 15.6HD, 1000 GB, 4GB, Geforce GT 720M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575121551', null);
INSERT INTO `linkdb` VALUES ('ASUS X550CC - i7-3537U, 15.6HD, 1000 GB, 8GB, Geforce GT 720M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059901', null);
INSERT INTO `linkdb` VALUES ('ASUS X550CC-XO072P Multimedia Notebook X550CC-XO072P-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566698310', null);
INSERT INTO `linkdb` VALUES ('ASUS X550CC-XO123H Multimedia Notebook X550CC-XO123H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566698298', null);
INSERT INTO `linkdb` VALUES ('ASUS X550CC-XO175H Multimedia Notebook X550CC-XO175H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566698325', null);
INSERT INTO `linkdb` VALUES ('ASUS X550CC-XO642P Multimedia Notebook X550CC-XO642P-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566698301', null);
INSERT INTO `linkdb` VALUES ('Asus X550CC-XX066H 90NB00W2-M02550-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564904769', null);
INSERT INTO `linkdb` VALUES ('ASUS X550CC-XX086H Multimedia Notebook (39cm (15,6&#039;&#039;), 4GB RAM, 500GB HDD, 2GB GT720M) X75A-TY232H-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566483747', null);
INSERT INTO `linkdb` VALUES ('ASUS X550CC-XX775H Multimedia Notebook X550CC-XX775H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458327', null);
INSERT INTO `linkdb` VALUES ('Asus X550DP - A8-5550M QUAD, 4GB RAM, AMD RADEON 8670M 2GB, 1 TB Win8 90NB01N2-M00290-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231290', null);
INSERT INTO `linkdb` VALUES ('ASUS X550VB - i5-3230M, 15.6HD, 750 GB, 4GB, Geforce GT 740M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1558072647', null);
INSERT INTO `linkdb` VALUES ('ASUS X550VB - i5-3230M, 15.6HD, 750 GB, 8GB, Geforce GT 740M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059613', null);
INSERT INTO `linkdb` VALUES ('ASUS X550VB - i5-3230M, 15.6HD, 750 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568930025', null);
INSERT INTO `linkdb` VALUES ('Asus X550VB-XX046H 90NB00R2-M00720-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059320', null);
INSERT INTO `linkdb` VALUES ('ASUS X550VB-XX047H Notebook (8GB RAM, 500GB HDD, 2GB GT740M) X550VB-XX047H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566483759', null);
INSERT INTO `linkdb` VALUES ('ASUS X550VC - i5-3230M, 15.6HD, 1000 GB, 4GB, Geforce GT 720M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563039525', null);
INSERT INTO `linkdb` VALUES ('ASUS X550VC-XX076H Notebook (4GB RAM, 500GB HDD, 2GB GT720M) X550VC-XX076H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566483753', null);
INSERT INTO `linkdb` VALUES ('ASUS X552VL - i3-3110M, 15.6HD, 750 GB, 4GB, Geforce GT 710M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059358', null);
INSERT INTO `linkdb` VALUES ('Asus X55VD Laptop Ãºj Ã¡llapotban 1 Ã©v gari1854870293 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/asus/asus_x/asus_x55vd_laptop_uj_allapotban_1_ev_gari_1854870293.html', null);
INSERT INTO `linkdb` VALUES ('Asus X55VD-SX202H 90N5OC118N2F3B5D451U-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231263', null);
INSERT INTO `linkdb` VALUES ('Asus X75 / F75VB-TY041H + 4 GB RAM 90NB00Q1-M00500+4GB-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059338', null);
INSERT INTO `linkdb` VALUES ('Asus X75 / F75VB-TY041H Multimedia-Notebook 90NB00Q1-M00500-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059278', null);
INSERT INTO `linkdb` VALUES ('Asus X75 / F75VB-TY042H Notebook 90NB00Q1-M00510-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564231317', null);
INSERT INTO `linkdb` VALUES ('Asus X750 / F750JB-TY010D Multimedia-Notebook 90NB01X1-M01040-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669943', null);
INSERT INTO `linkdb` VALUES ('Asus X750 / F750JB-TY015H Notebook 90NB04A1-M00160-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669865', null);
INSERT INTO `linkdb` VALUES ('Asus X750 / F750JB-TY061D Multimedia-Notebook  90NB01X1-M01030-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565214561', null);
INSERT INTO `linkdb` VALUES ('ASUS X750JB - i7-4700HQ, 17.3HD+, 1000 GB, 6GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1569673089', null);
INSERT INTO `linkdb` VALUES ('ASUS X750JB - i7-4700HQ, 17.3HD+, 1000 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059388', null);
INSERT INTO `linkdb` VALUES ('ASUS X750JB - i7-4700HQ, 17.3HD+, 500 GB, 4GB, Geforce GT 740M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926083', null);
INSERT INTO `linkdb` VALUES ('ASUS X750JB - i7-4700HQ, 17.3HD+, 500 GB, 4GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1569673086', null);
INSERT INTO `linkdb` VALUES ('ASUS X750JB-TY002H Multimedia Notebook (43cm (17,3&#039;&#039;), 8GB RAM, 1TB HDD, 2GB GT740M 90NB01X1-M00360-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1572853785', null);
INSERT INTO `linkdb` VALUES ('Asus X750JB-TY038H 90NB01X1-M00660-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789910', null);
INSERT INTO `linkdb` VALUES ('ASUS X75A-TY108H Notebook X75A-TY108H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566698307', null);
INSERT INTO `linkdb` VALUES ('ASUS X75A-TY232H Notebook (43cm (17,3&quot;); Core i3; 4GB RAM; 750 GB; Win8) X75A-TY232H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566483735', null);
INSERT INTO `linkdb` VALUES ('ASUS X75VB - i5-3230M, 17.3HD+, 750 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567491849', null);
INSERT INTO `linkdb` VALUES ('Asus X75VB-TY010 X75VB-TY010-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566698328', null);
INSERT INTO `linkdb` VALUES ('Asus X75VB-TY038H  90NB00Q1-M00650-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059290', null);
INSERT INTO `linkdb` VALUES ('Asus X75VB-TY047H 90NB00Q1-M00640-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564751559', null);
INSERT INTO `linkdb` VALUES ('Asus X75VB-TY068H 90NB00Q1-M01230-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564751598', null);
INSERT INTO `linkdb` VALUES ('Asus X75VB-TY072H X75VB-TY072H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566926412', null);
INSERT INTO `linkdb` VALUES ('Asus X75VB-TY073H X75VB-TY073H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245216', null);
INSERT INTO `linkdb` VALUES ('ASUS X75VC - i3-3120M, 17.3HD+, 1000 GB, 6GB, Geforce GT 720M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926080', null);
INSERT INTO `linkdb` VALUES ('Asus X75VC-TY023 X75VC-TY023-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458312', null);
INSERT INTO `linkdb` VALUES ('Asus X75VC-TY060 X75VC-TY060-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458321', null);
INSERT INTO `linkdb` VALUES ('Asus X75VC-TY143H Notebook i3 GT720M Windows 8 90NB0241-M02400-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564600278', null);
INSERT INTO `linkdb` VALUES ('ASUS ZENBOOK  UX51VZ-CM042P UX51VZ-CM042P Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558060869', null);
INSERT INTO `linkdb` VALUES ('ASUS Zenbook Prime UX21A - i7-3517U, 11.6FULL HD, 256 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1532395695', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook Prime UX31A-R4003H Ultrabook  Windows 8 90NIOA312N11225D151C-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789847', null);
INSERT INTO `linkdb` VALUES ('ASUS ZENBOOK Prime UX31A-R4003P UX31A-R4003P-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245105', null);
INSERT INTO `linkdb` VALUES ('ASUS ZENBOOK Prime UX31A-R4003X UX31A-R4003X-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245114', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook Prime UX31A-R4005H Ultrabook + Windows 8 90NIOA312N12325D151C-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1573792155', null);
INSERT INTO `linkdb` VALUES ('ASUS ZENBOOK Prime UX32VD-R4002P UX32VD-R4002P-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245126', null);
INSERT INTO `linkdb` VALUES ('ASUS Zenbook UX301LA - i5-4200U, 13.3FULL HD, 128 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1575660993', null);
INSERT INTO `linkdb` VALUES ('ASUS Zenbook UX301LA - i7-4500U, 13.3FULL HD, 256 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1575660987', null);
INSERT INTO `linkdb` VALUES ('ASUS Zenbook UX301LA - i7-4500U, 13.3FULL HD, 512 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1575660981', null);
INSERT INTO `linkdb` VALUES ('ASUS Zenbook UX301LA - i7-4500U, 13.3QHD, 512 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1574926203', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook UX301LA-C4003H Touch Full HD Ultrabook 90NB0191-M00600-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565790006', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook UX301LA-C4013H - Touch Full HD Ultrabook i7 Haswell SSD - K&eacute;k 90NB0191-M00630-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568420661', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook UX301LA-DE022H Ultrabook UX301LA-DE022H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566581271', null);
INSERT INTO `linkdb` VALUES ('ASUS Zenbook UX302LA - i5-4200U, 13.3FULL HD, 500 GB+16 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1575660978', null);
INSERT INTO `linkdb` VALUES ('ASUS Zenbook UX302LA - i5-4200U, 13.3FULL HD, 500 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1574926218', null);
INSERT INTO `linkdb` VALUES ('ASUS Zenbook UX302LA - i7-4500U, 13.3FULL HD, 256 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1575660990', null);
INSERT INTO `linkdb` VALUES ('ASUS Zenbook UX302LA - i7-4500U, 13.3FULL HD, 500 GB+16 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1575660972', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook UX302LA-C4003H - Touch Ultrabook i5-4200U Haswell Windows 8 - K&eacute;k 90NB02P1-M00400-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568420670', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook UX302LA-C4019H - Touch Ultrabook i7-4500U Haswell SSD Windows 8 - K&eacute;k 90NB02P1-M00270-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568420667', null);
INSERT INTO `linkdb` VALUES ('ASUS Zenbook UX302LG - i5-4200U, 13.3FULL HD, 500 GB+16 GB, 4GB, Geforce GT 730M 2GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1574926206', null);
INSERT INTO `linkdb` VALUES ('ASUS Zenbook UX302LG - i7-4500U, 13.3FULL HD, 256 GB, 8GB, Geforce GT 730M 2GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1575660984', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook UX302LG-C4014H - Touch Ultrabook i7-4500U GT730M Windows 8 - K&eacute;k 90NB02Q1-M00310-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568420676', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook UX31A-C4027P Touch Ultrabook UX31A-C4027P-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245219', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook UX31A-C4032H Touch Ultrabook 90NIOA342N12325D151C-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789835', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook UX31A-C4033H Touch Ultrabook 90NIOA342N12225D151C-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789838', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook UX31A-R4002H Ultrabook UX31A-R4002H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566581265', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook UX31A-R4003H Ultrabook 90NIOA312N11225D151-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566581226', null);
INSERT INTO `linkdb` VALUES ('ASUS Zenbook UX31LA - i5-4200U, 13.3HD+, 128 GB, 4GB, HD Graphics 4400 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059988', null);
INSERT INTO `linkdb` VALUES ('ASUS Zenbook UX31LA - i5-4200U, 13FULL HD, 128 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1568719596', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook UX42VS-W3015H Ultrabook UX42VS-W3015H-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567183953', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook UX51VZ-CM098H Touch Notebook 90NWOC222N12B35D251Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958672', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook UX51VZ-CM099H Touch Notebook 90NWOC222N12C35D251Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958684', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook UX51VZ-CN112H High Performance Notebook 90NWOC212N12B35D551Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958612', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook UX51VZ-DB114H High Performance Notebook + WQHD+ Kijelz&otilde; 90NWOC242N12B35D551Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958618', null);
INSERT INTO `linkdb` VALUES ('Asus Zenbook UX51VZ-DB115H High Performance Notebook WQHD+ Kijelz&otilde; 90NWOC242N12C35D551Y-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958621', null);
INSERT INTO `linkdb` VALUES ('ASUSPRO B400VC-W3020X Business Ultrabook (35,5cm(14&quot;); Core i7; 4GB; 256GB SSD; Win7 Pro) B400VC-W3020X-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566483717', null);
INSERT INTO `linkdb` VALUES ('ASUSPRO BU400A-CC107P Business Notebook (35,5cm(14&quot;) Touch; Core i5; 4GB; 500GB; Win8 Pro) BU400A-CC107P-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566483714', null);
INSERT INTO `linkdb` VALUES ('ÃšJ 15.6 LED laptop-notebook kijelzÅ‘ 15,6 LCD szÃ¡ml1855839905 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_alkatresz/kijelzo/uj_15_6_led_laptop_notebook_kijelzo_15_6_lcd_szaml_1855839905.html', null);
INSERT INTO `linkdb` VALUES ('Ãšj Acer laptop akkumulÃ¡tor akku minden modellhez1851315350 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/akkumulator/acer/uj_acer_laptop_akkumulator_akku_minden_modellhez_1851315350.html', null);
INSERT INTO `linkdb` VALUES ('ÃšJ APPLE MACBOOK PRO i7 DEDIKÃLT HD6750M LAPTOP1854760739 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/apple/macbook_pro/uj_apple_macbook_pro_i7_dedikalt_hd6750m_laptop_1854760739.html', null);
INSERT INTO `linkdb` VALUES ('Ãšj Asus laptop akkumulÃ¡tor akku minden modellhez1851315329 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/akkumulator/asus/uj_asus_laptop_akkumulator_akku_minden_modellhez_1851315329.html', null);
INSERT INTO `linkdb` VALUES ('Ãšj Dell laptop akkumulÃ¡tor akku minden modellhez1851315323 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/akkumulator/dell/uj_dell_laptop_akkumulator_akku_minden_modellhez_1851315323.html', null);
INSERT INTO `linkdb` VALUES ('Ãšj HP laptop akkumulÃ¡tor akku minden modellhez1851315365 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/akkumulator/dell/uj_hp_laptop_akkumulator_akku_minden_modellhez_1851315365.html', null);
INSERT INTO `linkdb` VALUES ('ÃšJ Lenovo IdeaPad laptop G580 (59-355628) 15,6\"1852934798 ÃšJ GARANCIÃVAL ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/ibm_lenovo/lenovo_ideapad/uj_lenovo_ideapad_laptop_g580_59_355628_15_6_1852934798.html', null);
INSERT INTO `linkdb` VALUES ('ÃšJ Lenovo Yoga 13 laptop ultrabook tablet,3 Ã©v gar1856943461 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/ibm_lenovo/lenovo_ideapad/uj_lenovo_yoga_13_laptop_ultrabook_tablet_3_ev_gar_1856943461.html', null);
INSERT INTO `linkdb` VALUES ('ÃšJ! 10.1 slim LED laptop notebook kijelzÅ‘ 10,1 lcd1857312323 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_alkatresz/kijelzo/uj_10_1_slim_led_laptop_notebook_kijelzo_10_1_lcd_1857312323.html', null);
INSERT INTO `linkdb` VALUES ('ÃšJ! DELL LAPTOP E5430, CORE i5, INGYEN HÃZHOZ1856960186 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/dell/latitude/uj_dell_laptop_e5430_core_i5_ingyen_hazhoz_1856960186.html', null);
INSERT INTO `linkdb` VALUES ('ÃšJ! DELL LAPTOP E5430, CORE i5, INGYEN HÃZHOZ3925719835 ', 'http://beta.vatera.hu/-i3925719835.html', null);
INSERT INTO `linkdb` VALUES ('Ãšj, Louis Vuitton irattartÃ³ / laptop tÃ¡ska1856153732 Louis Vuitton irattartÃ³ / laptop tÃ¡ska ', 'http://divat-ruha.vatera.hu/noi_taska/noi_aktataska_irattarto/uj_louis_vuitton_irattarto_laptop_taska_1856153732.html', null);
INSERT INTO `linkdb` VALUES ('B14 Sz&aacute;m&iacute;t&oacute;g&eacute;pasztal (laptop asztal)', 'http://www.grando.hu/product/view/?id=1547017653', null);
INSERT INTO `linkdb` VALUES ('B20 Sz&aacute;m&iacute;t&oacute;g&eacute;pasztal (laptop asztal)', 'http://www.grando.hu/product/view/?id=1547775345', null);
INSERT INTO `linkdb` VALUES ('B5W63AW EliteBook 8470w Core i5-3360M 2,8GHz 4GB 500GB 14&quot;HD+ AMD FirePro? M2000 1GB  W7Pro 64 B5W63AW Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1546729596', null);
INSERT INTO `linkdb` VALUES ('B6P96EA EliteBook 8470p Core i7-3520M 2,9GHz 4GB 180GBSSD DVD?RW 14&quot;HD+LED AMD7570M  W7Pro64 B6P96EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1569880752', null);
INSERT INTO `linkdb` VALUES ('B6Q08EA EliteBook 2570p Core i7-3520M 2,9GHz 4G 500G 12,5&quot; W7Pro 64 B6Q08EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558060956', null);
INSERT INTO `linkdb` VALUES ('B6Q11EA EliteBook 2170p Core i7-3667U GHz 4G 256GB  SSD  11,6&quot;HD CAM WL BT W7Pro 64 B6Q11EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1569880749', null);
INSERT INTO `linkdb` VALUES ('C2C00EA HP ENVY C2C00EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1539797706', null);
INSERT INTO `linkdb` VALUES ('C5A34EA EliteBook 2170p Core i7-3667U GHz 4GB 256GB  SSD  11,6&quot;HD  Win 8 Pro C5A34EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1569880746', null);
INSERT INTO `linkdb` VALUES ('C5A40EA EliteBook 2570p Core i5-3210M 2,5GHz 4GB 500GB DVD?RW 12,5&quot;HD Win 8 Pro  C5A40EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1546875489', null);
INSERT INTO `linkdb` VALUES ('C5A42EA EliteBook 2570p Core i7-3520M 2,9GHz 4GB 500GB DVD?RW 12,5&quot;HD  Win 8 Pro  C5A42EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1546875504', null);
INSERT INTO `linkdb` VALUES ('C5A55EA Probook 6475b A6-4400M 3,2GHz 4GB 500GB DVD?RW 14,0&quot;HD+ HD 7520G/1GB Win 8 Pro C5A55EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1546729485', null);
INSERT INTO `linkdb` VALUES ('C5A76EA EliteBook 8470p Core i7-3520M 2,9GHz 4GB 500GB 14&quot;HD+LED AMD7570M/1GB  Win 8 Pro dow C5A76EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1546875447', null);
INSERT INTO `linkdb` VALUES ('C5A87EA EliteBook 8570p Core i7-3540M 3,00GHz 4GB 256 SSD 15.6&quot;HD+ AMD7570M W7Pro+W8P C5A87EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558284654', null);
INSERT INTO `linkdb` VALUES ('Core 2 Duos laptop N.M.Ã!!!!!1856539148 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/toshiba/satellite/core_2_duos_laptop_n_m_a_1856539148.html', null);
INSERT INTO `linkdb` VALUES ('DELL Alienware 14 - i7-4700MQ, 14.4FULL HD, 750 GB+80 GB, 8GB, Geforce GTX 765M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575488619', null);
INSERT INTO `linkdb` VALUES ('DELL Alienware 14 Core i7-4700MQ 8GB, 64GB SSD + 750GB, GeForce GTX 765M 2GB + FULL-HD A 481254 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557525741', null);
INSERT INTO `linkdb` VALUES ('DELL Alienware 14 Core i7-4700MQ 8GB, 64GB SSD + 750GB, NVIDIA GeForce GT 750M 1GB A 481253  Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557525735', null);
INSERT INTO `linkdb` VALUES ('DELL Alienware 17 - i7-3840QM, 17.3FULL HD, 1000 GB+32 GB, 8GB, Geforce GTX 675M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059718', null);
INSERT INTO `linkdb` VALUES ('DELL Alienware 17 - i7-4700MQ, 17.3HD+, 750 GB+64 GB, 8GB, Geforce GTX 765M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563865224', null);
INSERT INTO `linkdb` VALUES ('DELL Alienware 17 - i7-4800MQ, 17.3FULL HD, 256 GB+750 GB, 16GB, Geforce GTX 780M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564000389', null);
INSERT INTO `linkdb` VALUES ('DELL Alienware 17 - i7-4800MQ, 17.3FULL HD, 750 GB+64 GB, 16GB, Geforce GTX 780M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563865341', null);
INSERT INTO `linkdb` VALUES ('DELL Alienware 17 Core i7-4700MQ 8GB, 64GB SSD + 750GB, GeForce GTX 765M 2GB A 481256 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557525744', null);
INSERT INTO `linkdb` VALUES ('DELL Alienware 17 Core i7-4800MQ 16GB, 64GB SSD + 750GB, GTX 770M 3GB, FULL-HD + BLU-RAY A.481257 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557525753', null);
INSERT INTO `linkdb` VALUES ('DELL Alienware 17 Core i7-4800MQ 16GB, 64GB SSD + 750GB, GTX 780M 4GB, FULL-HD + BLU-RAY A 481258  Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1555285632', null);
INSERT INTO `linkdb` VALUES ('DELL Alienware 17 Core i7-4800MQ 16GB, 64GB SSD + 750GB, GTX 780M 4GB, FULL-HD + BLU-RAY A 483113 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557525639', null);
INSERT INTO `linkdb` VALUES ('DELL Alienware 17 Core i7-4900MQ 32GB, 256GB SSD + 750GB, GTX 780M, FULL-HD, BLU-RAY + 3D A 484876 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556598546', null);
INSERT INTO `linkdb` VALUES ('DELL Alienware M17X - i7-3840QM, 17.3FULL HD, 1000 GB+32 GB, 8GB, Geforce GTX 675M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926245', null);
INSERT INTO `linkdb` VALUES ('DELL Alienware M18X AW-18x2 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1551526998', null);
INSERT INTO `linkdb` VALUES ('Dell Inspiron 14z -  i7 3537U 14&quot; 8GB 256SSD  AMDHD7570M 1GB Win8 NJ312x2 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558361985', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 14Z - i5-3337U, 14HD, 500 GB+32 GB, 6GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1574926098', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 14Z - i7-3537U, 14HD, 256 GB, 8GB, Radeon HD 7570 1GB, DVD RW, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572869088', null);
INSERT INTO `linkdb` VALUES ('Dell Inspiron 14z i5-3337U 14&quot; 6GB/500GB +32GB SSD Intel4000 Win8 NJ312w9 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558361964', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 15 - i5-4200U, 15.6HD, 1000 GB, 6GB, Radeon HD 8670M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833268', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 15 - i5-4200U, 15.6HD, 1000 GB, 8GB, Radeon HD 8850M 2GB, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833271', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 15 - i5-4200U, 15.6HD, 750 GB, 4GB, Radeon HD 8670M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833259', null);
INSERT INTO `linkdb` VALUES ('Dell Inspiron 15 - i7 3537 15.6&quot; 4GB/1TB HD8730 1GB Win8 NTD029a	 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558361970', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 15 - i7-4500U, 15.6FULL HD, 1000 GB, 8GB, Radeon HD 8850M 2GB, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833253', null);
INSERT INTO `linkdb` VALUES ('Dell Inspiron 15 laptop 15.6&quot; Intel Core i7-3537U 4GB/1TB/DVDRW/WIFI fekete 3521-10', 'http://www.grando.hu/product/view/?id=1574647047', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 15-3521 - 15&quot;  Intel i5-3337U 6GB 750GB NTD029	 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558361955', null);
INSERT INTO `linkdb` VALUES ('Dell Inspiron 15R  i5-3337U 15.6&quot; 6GB/1TB HD7670M Win8 NTD030s1 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558361958', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 15R - i7-3537U, 15.6HD, 1000 GB, 8GB, Radeon HD 8730M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868890', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 15R - i7-4500U, 15.6FULL HD, 1000 GB, 8GB, Radeon HD 8850M 2GB, DVD RW, Win8 dellinsp15r-grey-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567663977', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 15R - i7-4500U, 15.6FULL HD, 1000 GB, 8GB, Radeon HD 8850M 2GB, DVD RW, Win8 dellinsp15r-red-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567663980', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 15R - i7-4500U, 15.6FULL HD, 1000 GB, 8GB, Radeon HD 8850M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1565835423', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 15R - i7-4500U, 15.6HD, 1000 GB, 8GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926212', null);
INSERT INTO `linkdb` VALUES ('Dell Inspiron 15z -  i5 3337U 15.6&quot; 6GB 500GB +32 GB SSD Win8 NJ315a Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558361982', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 15z - i5-3337U, 15.6HD, 500 GB+32 GB, 6GB, Geforce GT 630M 2GB, DVD RW, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572868821', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 15z - i5-3337U, 15.6HD, 500 GB+32 GB, 6GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1563171753', null);
INSERT INTO `linkdb` VALUES ('Dell Inspiron 15z - i7 3537U 15.6&quot; 8GB 500GB 32GB SSD Nvidia GT630M 2GB Win8 NJ315d Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558361991', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 15z - i7-3537U, 15.6HD, 500 GB+32 GB, 6GB, Geforce GT 630M 2GB, DVD RW, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572868920', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 15z - i7-3537U, 15.6HD, 500 GB+32 GB, 8GB, Geforce GT 630M 2GB, DVD RW, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1563171747', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17 - i5-4200U, 17.3HD+, 1000 GB, 6GB, Geforce GT 750M 2GB, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833235', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17 - i5-4200U, 17.3HD+, 1000 GB, 6GB, Geforce GT 750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564774047', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17 - i5-4200U, 17.3HD+, 1000 GB, 6GB, Radeon HD 8670M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868842', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17 - i7-4500U, 17.3FULL HD, 1000 GB, 16GB, Geforce GT 750M 2GB, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833211', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17 - i7-4500U, 17.3HD+, 1000 GB, 8GB, HD Graphics 4400, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833232', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17-7737 - i5-4200U, 17.3HD+, 1000 GB, 6GB, Geforce GT 750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926224', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17-7737 - i7-4500U, 17.3HD+, 1000 GB, 16GB, Geforce GT 750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926221', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17R - i5-3317U 4GB/500GB 43,9cm(17&quot;)HD+ HD8730M DVD W8Pro Silver 5721-2485S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558284720', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17R - i5-3317U 6GB/750GB 43,9cm(17&quot;)FHD HD8730M DVD W8Pro Blue 5721-2539BL Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558284723', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17R - i5-3317U 6GB/750GB 43,9cm(17&quot;)FHD HD8730M DVD W8Pro Red 5721-2522R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558284732', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17R - i5-3317U 6GB/750GB 43,9cm(17&quot;)FHD HD8730M DVD W8Pro Silver 5721-2515S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558284738', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17R - i5-4200U, 17.3HD+, 500 GB, 4GB, Radeon HD 8870M 2GB, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060210', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17R - i7-3517U 8GB/1TB 43,9cm(17&quot;)FHD HD8730M DVD W8Pro Blue 5721-2591BL Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558284741', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17R - i7-3517U 8GB/1TB 43,9cm(17&quot;)FHD HD8730M DVD W8Pro Red 5721-2584R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558284747', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17R - i7-3517U 8GB/1TB 43,9cm(17&quot;)FHD HD8730M DVD W8Pro Silver 5721-2577S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558284750', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17R - i7-3517U 8GB/1TB 43,9cm(17&quot;)HD+ DVD W8Pro  5721-2546S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558284699', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17R - i7-3517U 8GB/1TB 43,9cm(17&quot;)HD+ DVD W8Pro Blue 5721-2560BL Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558284759', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17R - i7-3517U 8GB/1TB 43,9cm(17&quot;)HD+ DVD W8Pro Red 5721-2553R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558361952', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 17R Full HD Intel Core i7- 8GB 1TB+32GB SSD GT650M W8 SKU-24 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553147373', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 3537 - i5-4200U, 15.6HD, 1000 GB, 6GB, Radeon HD 8670M 2GB, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833274', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 3537 - i5-4200U, 15.6HD, 750 GB, 4GB, Radeon HD 8670M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060213', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 3537 - i7-4500U, 15.6HD, 1000 GB, 8GB, Radeon HD 8850M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564932168', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 5537 15.6\" laptop notebook Szinte ÃšJ1853674496 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/dell/inspiron/dell_inspiron_5537_15_6_laptop_notebook_szinte_uj_1853674496.html', null);
INSERT INTO `linkdb` VALUES ('Dell Inspiron 7520 laptop (Intel Core i5 3210M/4GB/1TB/AMD Radeon HD 7730M/Linux/Fekete galvaniz&aacute;lt alum&iacute;nium, m&eacute;hsejt szerkezettel)', 'http://www.grando.hu/product/view/?id=1540460859', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 7537 - i5-4200U, 15.6HD, 500 GB, 6GB, Geforce GT 750M 2GB, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833238', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 7537 - i5-4200U, 15.6HD, 500 GB, 6GB, Geforce GT 750M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833241', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 7537 - i5-4200U, 15.6HD, 500 GB, 6GB, Quadro K1000M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833289', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 7537 - i5-4200U, 15.6HD, 750 GB, 6GB, HD Graphics 4400, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833244', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 7537 - i7-4500U, 15.6FULL HD, 1000 GB, 16GB, Geforce GT 750M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833286', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 7537 - i7-4500U, 15.6FULL HD, 1000 GB, 8GB, Geforce GT 750M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833223', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 7537 - i7-4500U, 15.6FULL HD, 1000 GB, 8GB, Quadro K1000M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833283', null);
INSERT INTO `linkdb` VALUES ('Dell Inspiron 7720 - i7 3630QM  17.3&quot; 8GB/1TB HDD +32GB SSD Nvidia GT650M 2GB Win8 NTD032a9 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558361994', null);
INSERT INTO `linkdb` VALUES ('Dell Inspiron 7720 - i7 3630QM 17.3&quot; 8GB 1TB Nvidia GT650 2GB Win7 NTD032a5 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558361988', null);
INSERT INTO `linkdb` VALUES ('Dell Inspiron 7720 - i7 3630QM 17.3&quot; 8GB 2x750GB +32GB SSD GT650M  Win7  NTD032e Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558562979', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 7720 - i7-3630QM, 17.3FULL HD, 1000 GB+32 GB, 8GB, Geforce GT 650M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869112', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 7720 - i7-3630QM, 17.3FULL HD, 1000 GB+32 GB, 8GB, Geforce GT 650M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869115', null);
INSERT INTO `linkdb` VALUES ('DELL Inspiron 7720 - i7-3630QM, 17.3FULL HD, 1500 GB+32 GB, 8GB, Geforce GT 650M 2GB, Blu-Ray, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059334', null);
INSERT INTO `linkdb` VALUES ('Dell Inspiron 7720 i7 3610QM 17.3&quot; 8Gb/2x750GB GT650M 2GB Win8 NTD032b Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558562988', null);
INSERT INTO `linkdb` VALUES ('Dell Inspiron 7720 i7 3630QM 8GB/2x750GB GT650M 2GB Win8 NTD032d6 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558562982', null);
INSERT INTO `linkdb` VALUES ('Dell Inspiron M5030 notebook+tÃ¡ska1855041143 Dell notebook,laptop  tÃ¡ska ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/dell/inspiron/dell_inspiron_m5030_notebook_taska_1855041143.html', null);
INSERT INTO `linkdb` VALUES ('Dell Inspiron Queen 17R i7 2670QM 17.3&quot; 8GB/750GB GT525 1GB Win7 NTD030g3a Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558361967', null);
INSERT INTO `linkdb` VALUES ('Dell Latitude C840-2 Ã³rÃ¡s akku-wifi1854319520 Dell Latitude C840  laptop-jÃ³ akku! ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/dell/latitude/dell_latitude_c840_2_oras_akku_wifi_1854319520.html', null);
INSERT INTO `linkdb` VALUES ('Dell Latitude D6201850596658 JÃ³ Ã¡llapotÃº hasznÃ¡lt Laptop ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/dell/latitude/dell_latitude_d620_1850596658.html', null);
INSERT INTO `linkdb` VALUES ('DELL Latitude E5430 - i3-3120M, 14HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, 3G/HSPA+ (DL: 21Mbps, UL: 5.76Mbps) 4G/LTE UL:50 Mbps/DL:100 Mbps, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564641948', null);
INSERT INTO `linkdb` VALUES ('DELL Latitude E5430 - i5-3230M, 14HD+, 500 GB, 4GB, HD Graphics 4000, DVD RW, UMTS, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564932183', null);
INSERT INTO `linkdb` VALUES ('DELL Latitude E5530 - i5-3230M, 15.6HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926146', null);
INSERT INTO `linkdb` VALUES ('DELL Latitude E5530 - i7-3520M, 15.6FULL HD, 128 GB, 8GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1540086897', null);
INSERT INTO `linkdb` VALUES ('Dell Latitude E6410 Ã¼zleti laptop1856116322 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/dell/latitude/dell_latitude_e6410_uzleti_laptop_1856116322.html', null);
INSERT INTO `linkdb` VALUES ('DELL Latitude E6430 - i5-3340M, 13.3HD, 256 GB, 8GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059808', null);
INSERT INTO `linkdb` VALUES ('DELL Latitude E6430 - i5-3340M, 14HD, 256 GB, 8GB, HD Graphics 4000, DVD RW, UMTS, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833193', null);
INSERT INTO `linkdb` VALUES ('DELL Latitude E6430 - i5-3340M, 14HD, 256 GB, 8GB, HD Graphics 4000, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833205', null);
INSERT INTO `linkdb` VALUES ('DELL Latitude E6430 - i5-3427U, 14HD, 128 GB, 8GB, HD Graphics 4000, UMTS, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1565365557', null);
INSERT INTO `linkdb` VALUES ('DELL Latitude E6430 - i7-3540M, 14HD+, 750 GB, 8GB, HD Graphics 4000, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833199', null);
INSERT INTO `linkdb` VALUES ('DELL Latitude E6530 - i7-3540M, 15.6FULL HD, 750 GB, 8GB, HD Graphics 4000, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833196', null);
INSERT INTO `linkdb` VALUES ('Dell RG369 notebook / laptop vÃ¡lltÃ¡ska1854644234 ', 'http://szamitastechnika.vatera.hu/szamitogep_laptop_tablet_kellek/laptop_taska_tok/laptop_valltaska/dell_rg369_notebook_laptop_valltaska_1854644234.html', null);
INSERT INTO `linkdb` VALUES ('DELL Vostro 3360 - i5-3337U, 13.3HD, 500 GB, 4GB, HD Graphics 4000, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564641888', null);
INSERT INTO `linkdb` VALUES ('DELL Vostro 3360 - i5-3337U, 13.3HD, 500 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564773972', null);
INSERT INTO `linkdb` VALUES ('DELL Vostro 3460 - i3-3120M, 14HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564773909', null);
INSERT INTO `linkdb` VALUES ('DELL Vostro 3460 - i5-3230M, 14HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564773951', null);
INSERT INTO `linkdb` VALUES ('DELL Vostro 3460 - i5-3230M, 14HD, 500 GB, 6GB, Geforce GT 630M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564773999', null);
INSERT INTO `linkdb` VALUES ('DELL Vostro 3460 - i7-3632QM, 14HD, 500 GB+32 GB, 8GB, Geforce GT 630M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719896', null);
INSERT INTO `linkdb` VALUES ('DELL Vostro 3560 - i5-3230M, 15.6HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567490094', null);
INSERT INTO `linkdb` VALUES ('DELL Vostro 5470 - i3-4010U, 14HD, 500 GB, 4GB, Geforce GT 740M 2GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572868902', null);
INSERT INTO `linkdb` VALUES ('DELL Vostro 5470 - i3-4010U, 14HD, 500 GB, 4GB, HD Graphics 4400, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060216', null);
INSERT INTO `linkdb` VALUES ('DELL Vostro 5470 - i5-4200U, 14HD, 128 GB, 8GB, Geforce GT 740M 2GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572059985', null);
INSERT INTO `linkdb` VALUES ('DELL Vostro 5470 - i5-4200U, 14HD, 500 GB, 4GB, Geforce GT 740M 2GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1574926134', null);
INSERT INTO `linkdb` VALUES ('DELL XPS 12 Duo - i5-3427U, 12.5FULL HD, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1540087053', null);
INSERT INTO `linkdb` VALUES ('DELL XPS 12 Duo laptop Ã©s tablet egyben - 1Ft NMÃ1854249224 256GB SSD, 8GB, i5, billentyÅ±zetvilÃ¡gÃ­tÃ¡s, Full HD ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/dell/xps/dell_xps_12_duo_laptop_es_tablet_egyben_1ft_nma_1854249224.html', null);
INSERT INTO `linkdb` VALUES ('DELL XPS 12 Ultrabook 2-in-1 - Core i7, 8GB, 512GB SSD FULL-HD Touch-kijelz&otilde; 9Q33-1210-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568420679', null);
INSERT INTO `linkdb` VALUES ('DELL XPS 15 - i7-3632QM, 15.6FULL HD, 1000 GB+32 GB, 16GB, Geforce GT 640M 2GB, Blu-Ray, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572059562', null);
INSERT INTO `linkdb` VALUES ('DELL XPS 15 - i7-4702HQ, 15.6QHD, 1000 GB+32 GB, 16GB, Geforce GT 750M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547653', null);
INSERT INTO `linkdb` VALUES ('DELL XPS 15 - i7-4702HQ, 15.6QHD, 512 GB, 16GB, Geforce GT 750M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547650', null);
INSERT INTO `linkdb` VALUES ('DELL XPS DUO 12 - i7-3537U, 12.5FULL HD, 256 GB, 8GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572059421', null);
INSERT INTO `linkdb` VALUES ('DELL XPS DUO 12 - i7-4500U, 12.5FULL HD, 256 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575833190', null);
INSERT INTO `linkdb` VALUES ('DELL XPS DUO 12 - i7-4500U, 12.5FULL HD, 512 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926236', null);
INSERT INTO `linkdb` VALUES ('Dunlop gurulÃ³s kabin  bÅ‘rÃ¶nd laptop tÃ¡ska1850376167 ', 'http://utazas-szabadido.vatera.hu/borond_utazotaska/gurulos_borond/dunlop_gurulos_kabin_borond_laptop_taska_1850376167.html', null);
INSERT INTO `linkdb` VALUES ('E Table Laptop h&ucirc;t&otilde;, asztal', 'http://www.grando.hu/product/view/?id=1570389909', null);
INSERT INTO `linkdb` VALUES ('Ergotron Neo-Flex Laptop Cart', 'http://www.grando.hu/product/view/?id=1550013000', null);
INSERT INTO `linkdb` VALUES ('Ergotron PS Laptop Charging Cart (EU)', 'http://www.grando.hu/product/view/?id=1567399650', null);
INSERT INTO `linkdb` VALUES ('Fujitsu  AMILO  L1310G Laptop - elment a kÃ©p -1852780085 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/fujitsu_siemens/fujitsu_siemens_amilo/fujitsu_amilo_l1310g_laptop_elment_a_kep_1852780085.html', null);
INSERT INTO `linkdb` VALUES ('Fujitsu Siemens Amilo K7600 laptop Ã¡ron alul!1855596788 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/fujitsu_siemens/fujitsu_siemens_amilo/fujitsu_siemens_amilo_k7600_laptop_aron_alul_1855596788.html', null);
INSERT INTO `linkdb` VALUES ('Fujitsu Siemens Amilo PA 1538 laptop  vÃ¡ltozÃ¡s!1856590406 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/fujitsu_siemens/fujitsu_siemens_amilo/fujitsu_siemens_amilo_pa_1538_laptop_valtozas_1856590406.html', null);
INSERT INTO `linkdb` VALUES ('Fujitsu-Siemens Lifebook P72301850654216 Kicsi Ã©s kÃ¶nnyÅ± notebook / laptop. Nem netbook! ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/fujitsu_siemens/fujitsu_siemens_lifebook/fujitsu_siemens_lifebook_p7230_1850654216.html', null);
INSERT INTO `linkdb` VALUES ('GaranciÃ¡s ÃšJ IDE -s laptop winchester1851131141 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_alkatresz/merevlemez/garancias_uj_ide_s_laptop_winchester_1851131141.html', null);
INSERT INTO `linkdb` VALUES ('Gericom Outdoor Notebook X5,2magos tÃ¶rÃ¶tt laptop!1851178688 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/gericom/gericom_outdoor_notebook_x5_2magos_torott_laptop_1851178688.html', null);
INSERT INTO `linkdb` VALUES ('Gigabyte 15.4\" HDMI vadonatÃºjszerÅ± laptop1852413062 Core 2 Duo 2.2GHz / 4GB / 320GB HDMI 3-4Ã³rÃ¡s akksi ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/egyeb/gigabyte_15_4_hdmi_vadonatujszeru_laptop_1852413062.html', null);
INSERT INTO `linkdb` VALUES ('Gyors HP LAPTOP NOTEBOOK Wifi , GARANCIA! 1FtrÃ³l1855245230 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/hp/hp_compaq/gyors_hp_laptop_notebook_wifi_garancia_1ftrol_1855245230.html', null);
INSERT INTO `linkdb` VALUES ('H0U95EA HP ProBook 450 i5-3230M 15.6 HD CAM, 4GB, 750GB, DVDRW,  Win 8 Pro  H0U95EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553291058', null);
INSERT INTO `linkdb` VALUES ('H0V87EA HP ProBook 470 i5-3230M 17.3 HD+ CAM, AMD8750M/2GB, 4GB, 750GB, DVDRW, Win 8 + T&aacute;ska H0V87EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558060905', null);
INSERT INTO `linkdb` VALUES ('H0V93EA HP ProBook 450 i5-3230M 15.6 HD CAM, AMD8750/2G, 8GB (2x4GB), 750GB, DVDRW,  Win 8 + T&aacute;ska H0V93EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558060911', null);
INSERT INTO `linkdb` VALUES ('H5E70EA Probook 6570b Core-i5-3230M 2,60GHz 4G 500G DVD?RW 15,6&quot;HD Win 8 Pro H5E70EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558060920', null);
INSERT INTO `linkdb` VALUES ('H5E74EA Probook 6570b Core-i5-3230M 4G 500G 15,6&quot;HD+ AMD7570M/1G  Win 8 Pro H5E74EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558060929', null);
INSERT INTO `linkdb` VALUES ('H5F02EA Probook 6470b Core-i5-3230M 2,5GHz 4G 500G7,2k DVD?RW 14,0&quot;HD Win 8 Pro H5F02EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558060926', null);
INSERT INTO `linkdb` VALUES ('H5F03EA EliteBook 2570p Core i7-3520M 2,9GHz 4G 256SSD 12,5&quot; W7Pro H5F03EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558157922', null);
INSERT INTO `linkdb` VALUES ('H5F08EA HP Elitebook Folio 9470m i7-3687U 8G 180GB SSD 14.0&quot;  BT Win 8 Pro64  H5F08EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558157976', null);
INSERT INTO `linkdb` VALUES ('H5F12EA HP EliteBook Revolve 810 i5-3437U 11.6&quot; Touchscreen 8GB, 256GB SSD, Win8 Pro H5F12EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558284645', null);
INSERT INTO `linkdb` VALUES ('H5H86EA ProBook 4340s Core i3-3120M 2,5GHz 4GB 500GB DVD?RW 13,3&quot;HD  Win 8 + T&aacute;ska H5H86EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1546729455', null);
INSERT INTO `linkdb` VALUES ('H5J83EA ProBook 4540s i5-3230M GHz 4GB 750GB DVD?RW 15,6&quot;HD AMD7650/2G CAM WL BT Win 8 H5J83EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1546729245', null);
INSERT INTO `linkdb` VALUES ('H5K41EA ProBook 4740s Core i5-3230M 2,6GHz 6GB 750GB  17,3&quot;HD+ AMD7650M/2GB T Win 8 Pro H5K41EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1546729512', null);
INSERT INTO `linkdb` VALUES ('H6Q03EA ProBook 4340s i5-3230M 13.3 HD CAM, AMD7570/1G, 4GB, 500GB, DVDRW Win 8 H6Q03EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558060899', null);
INSERT INTO `linkdb` VALUES ('HP C3L85EA ENVY C3L85EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1540460997', null);
INSERT INTO `linkdb` VALUES ('HP C9C52EA ENVY C9C52EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1540461006', null);
INSERT INTO `linkdb` VALUES ('HP Coloma P3420 i3-2120M,4GB DDR3,500GB A2J95EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1531964994', null);
INSERT INTO `linkdb` VALUES ('HP Compaq nx6110 P4 laptop 1 hÃ³ gari1853967410 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/hp/hp_compaq/hp_compaq_nx6110_p4_laptop_1_ho_gari_1853967410.html', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 2170p - i5-3427U, 11.6HD, 500 GB, 4GB, HD Graphics 4000, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1550242506', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook 2170p - i7 3667U  11.6&quot; 4GB/256GB SSD Intel4000 Win7 NO604f Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557717597', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 2170p - i7-3667U, 11.6HD, 256 GB, 4GB, HD Graphics 4000, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1528522443', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 2170p - i7-3667U, 11.6HD, 256 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1544720823', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 2170p B6Q13EA- i7-3667U 4GB/256GB 11&quot; W7Pro64 B6Q13EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557211740', null);
INSERT INTO `linkdb` VALUES ('Hp EliteBook 2530p laptop / 6-7 Ã³rÃ¡s akksival!!!1853952287 INGYENES SZÃLLÃTÃSSAL MÃSNAPRA!!! ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/hp/hp_elitebook/hp_elitebook_2530p_laptop_6_7_oras_akksival_1853952287.html', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 2560 - i7-2640M, 12.5HD, 320 GB, 4GB, HD Graphics 3000, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1528517925', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 2570p - i5-3210M, 12.5HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1555193679', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 2570p - i5-3230M, 12.5HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563553221', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 2570p - i7-3520M, 12.5HD, 256 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563710217', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 2570p - i7-3520M, 12.5HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1528522398', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 2570p C0K24EA - i7-3520M 4GB/180GB 12&quot; W7Pro64 C0K24EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557211719', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook 2760p Tablet Outdoor i5-2540M 2,6GHz 4GB 128GB SSD 12,1&quot; WXGA Touch  W7Pro 64 LG682EA#BCM-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571596626', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 820 - i5-4200U, 12.5HD, 180 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060066', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 820 - i5-4200U, 12.5HD, 500 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869193', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 820 - i5-4300U, 12.5HD, 500 GB+32 GB, 4GB, HD Graphics 4400, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060024', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 820 - i7-4600U, 12.5HD, 180 GB, 8GB, HD Graphics 4400, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059970', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 820 - i7-4600U, 12.5HD, 256 GB, 8GB, HD Graphics 4400, 4G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1573566828', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 840 - i5-4200U, 14HD+, 500 GB+32 GB, 4GB, HD Graphics 4400, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059991', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 840 - i5-4200U, 14HD, 500 GB, 4GB, HD Graphics 4400 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575061407', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 840 - i5-4200U, 14HD, 500 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869103', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 840 - i5-4300U, 14HD+, 500 GB+32 GB, 4GB, HD Graphics 4000, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060030', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 840 - i7-4600U, 14FULL HD, 500 GB+32 GB, 4GB, HD Graphics 4400, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059967', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8470p - i5-3380M, 14HD+, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563553212', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook 8470p - i7 3520 14 &quot; 4GB/500GB HD7570M Win8-Win7 HPBN3202 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557717585', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8470p - i7-3520M, 14HD+, 180 GB, 4GB, Radeon HD 7570 1GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1528522395', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8470p - i7-3520M, 14HD+, 500 GB, 4GB, Radeon HD 7570 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1544720841', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8470p - i7-3540M, 14HD+, 500 GB, 4GB, Radeon HD 7570 1GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563553203', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8470p B5W71AW - i5-3320M 4GB/500GB 14&quot; HD4000  W7Pro64 B5W71AW#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557021603', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8470p B6P93EA- i5-3360M 4GB/500GB 14&quot; HD7570M W7Pro64 B6P93EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557021618', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8470p B6Q20EA - i7-3520M 4GB/500GB 14&quot;HD+ HD4000  W7Pro64 B6Q20EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557021630', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8470p B6Q23EA - i7-3520M 4GB/180GB 14&quot; HD7570M  W7Pro64 B6Q23EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557211746', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8470p i5-3360M,4GB DDR3,500GB C5A72EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1546875492', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook 8470p i5-3380M 14.0 HD, 4GB, 500GB 7  Win 8 Pro  H5E19EA#ABB Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558060953', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook 8470p i7 3520M 14&quot; 4GB/500GB HD7570M Win7 NO630x1 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557717573', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook 8470p i7-3540M 14.0 HD+, AMD7570M, 4GB, 256GB SSD W8Pro-W7Pro C5A85EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558157994', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook 8470w - i5 3360 14&quot; 4GB/500GB AMD M2000 Win7 HPBN4001	 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557643704', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8470w - i5-3360M, 14HD+, 500 GB, 8GB, FirePro M2000 1GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567491669', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook 8470w - i7 3610QM 14&quot; 8GB/750GB +24SSD Win7 NO630z2 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557717600', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8470w LY541EA - i7-3610QM 8GB/750GB 14&quot; M2000  W7Pro LY541EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557021633', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 850 - i5-4200U, 15.6HD, 500 GB+32 GB, 4GB, HD Graphics 4400, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719563', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 850 - i5-4200U, 15.6HD, 500 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060228', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 850 - i7-4600U, 15.6HD, 180 GB, 8GB, Radeon HD 8570M, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059781', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 850 - i7-4600U, 15.6HD, 500 GB, 8GB, Radeon HD 8750M 1GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060225', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook 850 i5-4200U 15.6&quot;  4GB, 500GB 7.2 + 32GB  Win8 Pro H5G36EA#BCM00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568324097', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook 850 i7-4600U 15.6&quot; AMD8570M, 8GB (2x4GB), 180GB SSD Win8 Pro HPNBH5G44EA#BCM00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568324103', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook 8560p (Core i5-2520M/4GB DDR3/320GB HDD/HD3000/15,6&quot; HD/WIN7 P-64) (LG737EA) notebook, laptop', 'http://www.grando.hu/product/view/?id=1521265659', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8560p B1J77EA - UMTS + V&iacute;z&aacute;ll&oacute; billenty&ucirc;zet B1J77EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783636', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook 8560w LG660EA i5-2540M 4GB/500GB 15 M5950 W7Pro64 LG660EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557021585', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8570p B6P99EA i5-3360M 4GB/500GB 15,6&quot; HD4000  W7P64 B6P99EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557021615', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8570p B6Q01EA i7-3520M 4GB/500GB 15,6&quot;HD HD7570M  W7P64 B6Q01EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557021636', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8570p WWAN i7-3540M 4GB/500GB 15&quot;  W7Pro64 H5E34EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557021597', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8570w - i5-3360M, 15.6HD+, 500 GB, 4GB, Quadro 1100M 1GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563553587', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8570w - i7-3630QM, 15.6FULL HD, 750 GB+24 GB, 8GB, Quadro K2000M 2GB, Blu-Ray, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1541628228', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8570w B9D07AW-i5-3360M 8GB/256GB 15&quot; K1000M W7Pro64 B9D07AW#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557211770', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook 8570w i5 3360  15.6 &quot; 4GB/500GB Nvidia K1000 Win7 HPBN4101	 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557717606', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8570w LY550EA-i5-3360M 4GB/500GB 15&quot; M4000  DVD W7Pro64 LY550EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557021621', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook 8770W (fekete) (Core i5/4GB/500GB/HDD/SSD/14\\&quot;/WIN7) (B5W63AW)notebook notebook, laptop', 'http://www.grando.hu/product/view/?id=1548968901', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8770w - i5-3380M, 17.3FULL HD, 500 GB, 4GB, FirePro M4000 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563553083', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8770w LY560EA-i5-3360M 4GB/500GB 17&quot; M4000  DVD W7Pro LY560EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557211704', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 8770w LY564EA-i7-3610QM 8GB/750GB 17&quot; K4000M  BR/DVD W7Pro64  LY564EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557211785', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook 9470m H4P02ET Folio Ultrabook i5 4GB 500GB 14&quot; HD4000 Win 7Pro +W8 H4P02ET#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557021612', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook Folio 1040 - i7-4600U, 14FULL HD, 256 GB, 8GB, HD Graphics 4400, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576098900', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook Folio 9470m - i5 3437 14 &quot; 4GB/500GB +32GBSSD Intel4000 Win8+Win7 HPBN2501a Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557717582', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook Folio 9470m - i5-3437U, 14HD, 500 GB+32 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059367', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook Folio 9470m - i5-3437U, 14HD, 500 GB, 4GB, HD Graphics 4000, UMTS, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563553398', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook Folio 9470m - i7-3687U, 14HD+, 256 GB, 8GB, HD Graphics 4000, UMTS, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563710064', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook Folio 9470m - i7-3687U, 14HD+, 256 GB, 8GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1573566834', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook Folio 9470m -i7 3687 14&quot; 8GB/256SSD Intel4000 Win8-Win7 HPBN2501f	 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557717627', null);
INSERT INTO `linkdb` VALUES ('HP Elitebook Folio 9470m H4P02EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1540461012', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook Folio 9470m i5-3437U 14.0 HD, 4GB, 32GB+500GB 7.2 Win 8 Pro  H5E46EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558060959', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook Revolve 810 - i5-3437U, 11.6HD, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1548929769', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook Revolve 810 - i7-3687U, 11.6HD, 256 GB, 8GB, HD Graphics, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1560223845', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook Revolve 810 Touch - i5 3437U 11.6&quot; 4GB/128SSD Intel4000 Win8 HPBN3103b Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556152140', null);
INSERT INTO `linkdb` VALUES ('HP EliteBook Revolve 810 Touch - i7 3687 11.6&quot; 8GB/256B SSD Intel4000 Win8  HPBN3103f Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557717630', null);
INSERT INTO `linkdb` VALUES ('HP ENVY 14 SPECTRE B1J92EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1540460994', null);
INSERT INTO `linkdb` VALUES ('HP ENVY 15 - i7-4702MQ, 15.6FULL HD, 1000 GB+24 GB, 8GB, Geforce GT 750M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719731', null);
INSERT INTO `linkdb` VALUES ('HP Envy 17 - i7-4702MQ, 17.3FULL HD, 1000 GB+24 GB, 8GB, Geforce GT 750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1565365383', null);
INSERT INTO `linkdb` VALUES ('HP Envy 17 ÃšJ High-End 17,3\" Ultra GAMER laptop1850106380 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/hp/egyeb/hp_envy_17_uj_high_end_17_3_ultra_gamer_laptop_1850106380.html', null);
INSERT INTO `linkdb` VALUES ('HP Envy 17 ÃšJ High-End 17,3\" Ultra GAMER laptop1850148182 1920x1080, i7-4702MQ, 16GB RAM, 2 HDD, GT 750 2GB ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/hp/egyeb/hp_envy_17_uj_high_end_17_3_ultra_gamer_laptop_1850148182.html', null);
INSERT INTO `linkdb` VALUES ('HP Envy 17-2100en LS570EA#ABB Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1540049934', null);
INSERT INTO `linkdb` VALUES ('HP ENVY 17-j040ec - Ez&uuml;st F1D46EA#BCM-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669901', null);
INSERT INTO `linkdb` VALUES ('HP ENVY 17-j110eg - i7-4702MQ 8GB 1TB matt FHD GT750M n/BT Win8 - Ez&uuml;st F0F32EA#ABD-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568420658', null);
INSERT INTO `linkdb` VALUES ('HP ENVY 17-j115eg - i7-4702MQ 8GB 1TB matt FHD Touch GT750M n/BT Win8 - Ez&uuml;st E9K41EA#ABD-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568420655', null);
INSERT INTO `linkdb` VALUES ('HP Envy 23-d100ec D2P28EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1555190793', null);
INSERT INTO `linkdb` VALUES ('HP Envy 23-d101ec D2P29EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1555190790', null);
INSERT INTO `linkdb` VALUES ('HP ENVY 4-1150ec C0U65EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1539797703', null);
INSERT INTO `linkdb` VALUES ('HP Envy 4-1160ec C6F02EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1540049895', null);
INSERT INTO `linkdb` VALUES ('HP Envy 6 - i7-3517U, 15.6HD, 500 GB+32 GB, 6GB, Radeon HD 8750M 2GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572869073', null);
INSERT INTO `linkdb` VALUES ('HP Envy 6-1020ec  B8F80EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1539797682', null);
INSERT INTO `linkdb` VALUES ('HP Envy 6-1110ec B6X84EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1539797652', null);
INSERT INTO `linkdb` VALUES ('HP Envy 6-1150ec C0V23EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1540049853', null);
INSERT INTO `linkdb` VALUES ('HP ENVY 6-1255ec Ultrabook - Fekete D3F38EA#BCM-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669892', null);
INSERT INTO `linkdb` VALUES ('HP ENVY dv6-7201eg - i7-3630QM 12GB/750GB 39,6cm/15&quot;HD GT630M &amp; Windows 8 C1Y15EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783588', null);
INSERT INTO `linkdb` VALUES ('HP ENVY dv6-7202eg  C1Y16EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1540461021', null);
INSERT INTO `linkdb` VALUES ('HP ENVY dv6-7240sg - i7-3630QM 4GB/500GB 39,6cm/15&quot;HD GT630M n W8 C4U89EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783582', null);
INSERT INTO `linkdb` VALUES ('HP Envy dv6-7250ec  C0V55EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1540049943', null);
INSERT INTO `linkdb` VALUES ('HP ENVY dv7-7200sg  C1W24EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1540049823', null);
INSERT INTO `linkdb` VALUES ('HP ENVY dv7-7201eg - i7-3630QM 8GB 750GB 43,9cm/17&quot;HD+ GT630M &amp; Windows 8 C1W38EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783585', null);
INSERT INTO `linkdb` VALUES ('HP ENVY dv7-7220sg - i5-3210M 8GB 1TB 43,9cm/17&quot;HD+ GT630M n DVD W8 C6D28EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783630', null);
INSERT INTO `linkdb` VALUES ('HP ENVY dv7-7235ec C6D23EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1547696934', null);
INSERT INTO `linkdb` VALUES ('HP ENVY dv7-7302eg i7-3630QM Quad Core 8GB 1TB HD+ NVIDIA-GT650M BluRay Win8 D4Y90EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1549698327', null);
INSERT INTO `linkdb` VALUES ('HP ENVY m6-1101sg C0Y25EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1540049814', null);
INSERT INTO `linkdb` VALUES ('HP ENVY m6-1105ec C1Z41EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1539797655', null);
INSERT INTO `linkdb` VALUES ('HP ENVY m6-1200sg - 15&quot; i5-3230M 8GB 750GB AMD Radeon Graphics D2X57EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783627', null);
INSERT INTO `linkdb` VALUES ('HP Envy Rove 20-k000en E1L61EA#ABB-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276292', null);
INSERT INTO `linkdb` VALUES ('HP Envy Ultrabook 4-1000SG B3Y36EA#ABD  Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1539797595', null);
INSERT INTO `linkdb` VALUES ('HP ENVY Ultrabook 6-1010ec NO299g1 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1539797664', null);
INSERT INTO `linkdb` VALUES ('HP laptop /hibÃ¡s?/ 1 Ft. NMÃ:!1857312311 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/hp/hp_compaq/hp_laptop_hibas_1_ft_nma_1857312311.html', null);
INSERT INTO `linkdb` VALUES ('HP Omni Coloma P3420 C2Z44EA#AKR-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1569766905', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion 15 - A10 5745M, 15.6HD, 1000 GB, 8GB, Radeon HD 8610G, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575660963', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion 15 - i3-3110M, 15.6HD, 1000 GB, 8GB, Radeon HD 8670M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1556658483', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion 15 - i3-3217U, 15.6HD, 500 GB, 4GB, Radeon HD 8670M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575660957', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion 15 - i3-4005U, 15.6HD, 1000 GB, 8GB, Radeon HD 8670M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575660954', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion 15 - i5-3230M, 15.6HD, 1000 GB, 8GB, Radeon HD 8670M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926290', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion 15 - i5-4200U, 15.6HD, 1000 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926128', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion 15 - i5-4200U, 15.6HD, 500 GB, 4GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059499', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion 15 - i5-4200U, 15.6HD, 500 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926101', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion 15-e006sg Intel Core i7-3632QM 6GB 750GB HD 8670M Win8 D9V69EA#ABD-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567663944', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion 15-n028sg Gaming Notebook [Core i7-4500U-8GB-1TB HDD-GT740M 2GB]   F2U88EA00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568815170', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion dv6-6b30 NO523k6 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1539797676', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion dv7-7000sg B1K29EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1540049820', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion dv7-7100sg  B9A51EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1540049847', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion DV9000 17\" laptop hibÃ¡s1855857938 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/hp/hp_pavilion/hp_pavilion_dv9000_17_laptop_hibas_1855857938.html', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion DV9000 17\" laptop hibÃ¡s3922417754 ', 'http://beta.vatera.hu/-i3922417754.html', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion E2H34EA  g6-e039sc i3-3110M 2,4GHz 8G 1T DVDRW 15,6&quot;HD BV LED HD8670M/1G Win 8 white HPNBE2H34EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556152098', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion G6 i7 3632QM, 4GB, 500GB 2240SH Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541614350', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion G6-2211SG C8Z17EA#ABD  Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1539797622', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion g6-2212sg C6G61EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1539797667', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion G6-2222SG [(15,6&quot;); i7;4GB RAM;500GB HDD; Win8] C8Z22EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1545422904', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion g6-2242sg C6C66EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1539797646', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion g6-2247 C6S86EA#BCM/C6S64EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1539797631', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion g6-2252 C6S87EA#BCM/C6S65EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1540049829', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion g6-2303sg - i7-3632QM 6GB/500GB 39,6cm/15&quot;HD HD7670M Windows8 D2X39EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558157940', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion g6-2348sg - i7-3632QM 6GB/750GB 39,6cm/15&quot;HD HD7670M  230000 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557525609', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion g7-2204sg C1S83EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1539797673', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion g7-2205  C6H70EA#BCM/C4V86EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1539797589', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion g7-2208sg C1Z50EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1540049844', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion g7-2210 HPCN1032b Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1540049859', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion g7-2222sg C8G75EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1539797619', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion g7-2241sg  C1Z68EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1539797592', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion g7-2352sg D3F19EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783594', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion m6-1000sg B7S65EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1539797691', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion Sleekbook 15-b030 C4L71EA#BCM/C6T62EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1539797637', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion Sleekbook 15-b035 C5R52EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1547696928', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion Sleekbook 15-b104sg - i5-3337U 4GB/500GB 39,6cm/15&quot;HD GT630M W8 D2W88EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1548980049', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion TouchSmart 14 - i3-3217U, 14HD, 500 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926200', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion TouchSmart 23-f200ec E3K42EA#BCM-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276322', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion TouchSmart Sleekbook 23-f201ec E3K43EA#BCM-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276319', null);
INSERT INTO `linkdb` VALUES ('HP Pavilion-15  i7-4500U, 8GB, 1TB, GT740M 2GB, NoOS HPPavilion15-n028sg Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568218470', null);
INSERT INTO `linkdb` VALUES ('HP Paviolion DV6- A6P30EA laptop1855161767 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/hp/hp_pavilion/hp_paviolion_dv6_a6p30ea_laptop_1855161767.html', null);
INSERT INTO `linkdb` VALUES ('HP Pro 3520 H4M52EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1555190781', null);
INSERT INTO `linkdb` VALUES ('HP Probook 430 G1 - i5-4200U, 13.3HD, 500 GB, 4GB, HD Graphics 4400, 3G, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572060234', null);
INSERT INTO `linkdb` VALUES ('HP Probook 430 G1 - i5-4200U, 13.3HD, 500 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868788', null);
INSERT INTO `linkdb` VALUES ('HP Probook 430 G1 - i5-4200U, 13.3HD, 500 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1556235264', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 430 G1 H6P58EA i5-4200U 4GB 500GB 4GB 500GB  HD Win8 Pro H6P58EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556868417', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 430 i5 4200 13.3 &quot; 4GB/500GB Intel 4400 Win8 HPBN1005e Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557643629', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 4330s A6D90EA (s&ouml;t&eacute;t sz&uuml;rke) (Core i3-2350M/2GB DDR3/320GB HDD/HD3000/13,3&quot; HD/DOS) (A6D90EA) notebook, laptop', 'http://www.grando.hu/product/view/?id=1521268326', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 4340s (Intel-Core i3/4GB/500GB/HDD/13.3/Win8/linux)notebook (H4R70EA) notebook, laptop', 'http://www.grando.hu/product/view/?id=1570118871', null);
INSERT INTO `linkdb` VALUES ('HP Probook 4340s - i5-3230M, 13.3HD, 500 GB, 4GB, Radeon HD 7570M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1557028992', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 4340s i5 3230M  13.3 &quot; 4GB/500GB HD 7570 Win8 HPBN1004b	 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557643620', null);
INSERT INTO `linkdb` VALUES ('HP Probook 450 - i5-3230M, 15.6HD, 1000 GB, 8GB, Radeon HD 8750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868797', null);
INSERT INTO `linkdb` VALUES ('HP Probook 450 - i5-4200M, 15.6HD, 1000 GB, 4GB, Radeon HD 8750M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719593', null);
INSERT INTO `linkdb` VALUES ('HP Probook 450 - i5-4200M, 15.6HD, 1000 GB, 8GB, Radeon HD 8750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868809', null);
INSERT INTO `linkdb` VALUES ('HP Probook 450 - i5-4200M, 15.6HD, 750 GB, 4GB, HD Graphics 4600, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719590', null);
INSERT INTO `linkdb` VALUES ('HP Probook 450 - i7-4702MQ, 15.6HD, 1000 GB, 8GB, Radeon HD 8750 2GB 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719578', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 450 -i5 3230 15.6 &quot; 8GB/750GB  HD8750M Win8 HPBN1056g Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557643656', null);
INSERT INTO `linkdb` VALUES ('HP Probook 450 G0 - i5-3230M, 15.6HD, 750 GB, 8GB, Radeon HD 8750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1557728841', null);
INSERT INTO `linkdb` VALUES ('HP Probook 450 G0 - i7-3632QM, 15.6HD, 1000 GB, 8GB, Radeon HD 8750M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1557728853', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 450 G0 H6P55EA i7-3632QM 8GB 750GB 15&quot;  HD Windows 7 Pro H6P55EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556957610', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 450 HPBN1056b Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557643644', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 450 i5 3230 15.6&quot; 4GB/750GB HD8750 Linux HPBN1056e	 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557525777', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 450 i7-3632QM 15.6 HD CAM, AMD8750/2G, 8GB (2x4GB), 1TB Win 7 Pro H0V02EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558060947', null);
INSERT INTO `linkdb` VALUES ('HP Probook 4540s - 39,6cm (15&quot;) Intel i3- 3.Generation 500GB HDD Win7Pro + Win8 H5J01EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556868360', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 4540s - i5 3230M  15.6 &quot; 4GB/750GB HD7650M Win8 HPBN1055 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557643614', null);
INSERT INTO `linkdb` VALUES ('HP Probook 4540s C4Y99EA + 4GB C4Y99EA+4GB Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1548912789', null);
INSERT INTO `linkdb` VALUES ('HP Probook 4540s C4Y99EA -i5-3210M 4GB/500GB 39,6cm/15&quot;HD C4Y99EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783678', null);
INSERT INTO `linkdb` VALUES ('HP Probook 4540s C4Y99EA-15,6&quot; matt i5 4GB 500GB Win8  C4Y99EA+UK727E Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556868369', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 4540s i5 3230 15.6&quot; 4GB/750GB HD7650M Linux HPBN1053t Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557525768', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 4545s B6M89EA - 39,6cm (15,6&quot;) 8GB, 500GB WLAN-n/BT Windows 8 Pro B6M89EA + 4GB Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556868354', null);
INSERT INTO `linkdb` VALUES ('HP Probook 455 - A10 5750M, 15.6HD, 1000 GB, 8GB, Radeon HD 8750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926230', null);
INSERT INTO `linkdb` VALUES ('HP Probook 455 G1 - A8 4500M, 15.6HD, 1000 GB, 4GB, Radeon HD 8750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1557728835', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 470  - i5-3230M H0V04EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1572031407', null);
INSERT INTO `linkdb` VALUES ('HP Probook 470 - i5-3230M, 17.3HD+, 1000 GB, 8GB, Radeon HD 8750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1560707109', null);
INSERT INTO `linkdb` VALUES ('HP Probook 470 - i5-3230M, 17.3HD+, 750 GB, 4GB, Radeon HD 8750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1557728847', null);
INSERT INTO `linkdb` VALUES ('HP Probook 470 - i5-3230M, 17.3HD+, 750 GB, 8GB, Radeon HD 8750M 2GB, DVD RW, Linux LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1553013777', null);
INSERT INTO `linkdb` VALUES ('HP Probook 470 - i5-3230M, 17.3HD+, 750 GB, 8GB, Radeon HD 8750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1557728844', null);
INSERT INTO `linkdb` VALUES ('HP Probook 470 - i5-4200M, 17.3HD+, 1000 GB, 4GB, Radeon HD 8750 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868812', null);
INSERT INTO `linkdb` VALUES ('HP Probook 470 - i5-4200M, 17.3HD+, 1000 GB, 8GB, Radeon HD 8750 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985336', null);
INSERT INTO `linkdb` VALUES ('HP Probook 470 - i5-4200M, 17.3HD+, 1000 GB, 8GB, Radeon HD 8750 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868956', null);
INSERT INTO `linkdb` VALUES ('HP Probook 470 - i5-4200M, 17.3HD+, 750 GB, 8GB, Radeon HD 8750 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719569', null);
INSERT INTO `linkdb` VALUES ('HP Probook 470 - i7-4702MQ, 17.3HD+, 1000 GB, 8GB, Radeon HD 8750 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869076', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 470 G0 H0V86EA i5-3230M 4GB 500GB 17&quot; matt HD+ Windows 7 Pro H0V86EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556957577', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 470 G0 H6P56EA i7-3632QM 8GB 750GB 17&quot;  HD+ Windows 7 Pro H6P56EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556957628', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 470 i5 3230 17.3 &quot; 4GB/750GB HD 8750M Win8 HPBN1206d	 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557643641', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 4740s - i5 3210M 17.3&quot; 6GB/750GB HD7650 Win8 NO298c7 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557643653', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 4740s - i5 3230 17.3&quot; 4GB/750GB HD7650 Win8 HPBN1205d	 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557643668', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 4740s - i5 3230 17.3&quot; 6GB/750GB HD7650 Win8 HPBN1205h	 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557643686', null);
INSERT INTO `linkdb` VALUES ('HP Probook 4740s - i5-3230M, 17.3HD+, 750 GB, 4GB, Radeon HD 7650M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1548929766', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 4740s C4Z55EAR - 43,9cm (17&quot;) 4GB / 750GB + Windows 8 C4Z55EAR#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556868402', null);
INSERT INTO `linkdb` VALUES ('HP Probook 4740s H5K36EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1546729491', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 4740s H5K54EA - 17&quot; 4GB 750GB  Windows 8 + T&aacute;ska H5K54EA+TASCHE Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1549110612', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 4740s H5K54EA - 17&quot; 8GB 750GB  Windows 8 + T&aacute;ska H5K54EA+TASCHE+4GB Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1549110627', null);
INSERT INTO `linkdb` VALUES ('HP Probook 4740s H5K54EA - 17&quot;HD+ i5 8GB 750GB Windows8Pro H5K54EA+UK727E+4GB Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556957574', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 4740s H5K54EA - 43,9cm (17&quot;) 8GB / 750GB  + Windows 8 H5K54EA#ABD+4GB Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1549110624', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 4740s H5K54EA - 43,9cm (17&quot;) 8GB / 750GB &amp; Windows 8 H5K54EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556868321', null);
INSERT INTO `linkdb` VALUES ('HP Probook 4740s H5K54EA -i5,4GB,750GB 43,9cm/17&quot;HD+ W8Pro H5K54EA + UK727E Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556868426', null);
INSERT INTO `linkdb` VALUES ('HP Probook 640 - i5-4200M, 14HD+, 500 GB, 4GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868959', null);
INSERT INTO `linkdb` VALUES ('HP Probook 645 - A4 4300M, 14HD, 500 GB, 4GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576098846', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 6470b - i5 3230  14&quot; 4GB/500GB Intel4000 Win8+Win7 HPBN2002 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557643683', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 6470b B5W83AW- i5-3320M 4GB/500GB 14&quot; HD4000  W7Pro64 B5W83AW#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556957646', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6470b B6P70EA - i5-3210M 4GB/500GB 35,6cm/14&quot;HD HD4000 n/BT W7Pro64 B6P70EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783645', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 6470b B6P72EA 35,6cm (14&quot;) Intel Core i5-3210M Processzor 500GB W7Pro B6P72EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783570', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6470b B6P73EA - i5-3210M 4GB/500GB 35,6cm/14&quot;HD+ HD4000 n/BT W7Pro64 B6P73EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783639', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6470b C5A50EA - i5-3210M 4GB 500GB 35,6cm 14&quot;HD+ HD4000  W8Pro C5A50EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556957619', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 6470b C5A52EA - i3-3110M 4GB 320GB  14&quot;HD HD4000 C5A52EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556957580', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6475 - A6 4400M, 14HD+, 500 GB, 4GB, Radeon HD 7520G, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563553614', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6475 - A6 4400M, 14HD+, 500 GB, 4GB, Radeon HD 7520G, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563553158', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 6475b AMD A6-4400 14 &quot; 4GB/500GB HD7520G Win8+Win7 HPBN2031 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557643635', null);
INSERT INTO `linkdb` VALUES ('HP Probook 650 - i3-4000M, 15.6HD, 500 GB, 4GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868851', null);
INSERT INTO `linkdb` VALUES ('HP Probook 650 - i5-4200M, 15.6FULL HD, 128 GB, 4GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575061386', null);
INSERT INTO `linkdb` VALUES ('HP Probook 650 - i5-4200M, 15.6FULL HD, 500 GB+32 GB, 4GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576098849', null);
INSERT INTO `linkdb` VALUES ('HP Probook 650 - i5-4200M, 15.6FULL HD, 500 GB, 4GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575061398', null);
INSERT INTO `linkdb` VALUES ('HP Probook 650 - i5-4200M, 15.6HD, 500 GB, 4GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868932', null);
INSERT INTO `linkdb` VALUES ('HP Probook 650 - i5-4200M, 15.6HD, 500 GB, 4GB, Radeon HD 8570M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869064', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 6550b - i5 450M 15.6&quot;  4GB/500GB HD540v Win7 NO271h Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557643677', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6570b - C5A57EA Intel Core i5-3210M 4GB 500GB Windows 7 Pro + Win8 C5A57EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783684', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 6570b - i5 3230  15.6 &quot; 4GB/500GB HD7570 Win8+Win7 HPBN2102b Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557643692', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6570b - i5-3230M, 15.6HD+, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563553452', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6570b - i5-3230M, 15.6HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563553140', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 6570b -i5 3230  15.6 &quot; 4GB/500GB Intel 4000 Win8+Win7 HPBN2101a Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557643674', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6570b B5V79AW-i5-3320M 2GB/500GB 39,6cm/15&quot;HD HD4000 n/BT W7Pro64 B5V79AW#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783651', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6570b B6P78EA - i3-2370M 4GB 320GB 39,6cm 15&quot;HD HD3000 W7Pro64 B6P78EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556957589', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6570b B6P80EA - i5-3210M 4GB/128GB 39,6cm/15&quot;HD HD4000 n/BT W7Pro64 B6P80EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783654', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6570b B6P81EA - i5-3210M 4GB/500GB 39,6cm/15&quot;HD+ HD4000  W7Pro64 B6P81EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783648', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6570b B6P82EA  HD+ UMTS i5 4GB 500GB Win7 B6P82EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556957616', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6570b B6P83EA -i5-3210M 4GB/500GB 15&quot;HD+ HD4000 UMTS  W7Pro64 B6P83EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556957643', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6570b B6P84EA -i5-3320M 4GB/500GB 15&quot;HD HD4000 W7Pro64 B6P84EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556957634', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 6570b B6P85EA 39,6cm (15&quot;) Intel Core i5-3320M 500GB W7Pro B6P85EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556957652', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6570b B6P86EA -i5-3320M 4GB/500GB 39,6cm/15&quot;HD HD4000 n/BT/U W7Pro64 B6P86EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783657', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6570b B6P88EA-i5-3320M 4GB/500GB 15&quot; HD7570M UMTS  W7Pro64 B6P88EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556957655', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6570b B6P88EA-i5-3320M 4GB/500GB 39,6cm/15&quot;HD+ HD7570M n/BT/U W7Pro64 B6P89EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783663', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6570b B6Q04EA - i5-3210M 4GB/500GB 15&quot; HD7570M  W7Pro64 B6Q04EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556957637', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6570b C5A68EA- i3-3110M 4GB 320GB Windows 7Pro64 C5A68EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556957601', null);
INSERT INTO `linkdb` VALUES ('HP Probook 6570b H5E65EA 15&quot; HD+ i5-3210M 4GB 500GB Windows 7 Pro64 H5E65EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1549698333', null);
INSERT INTO `linkdb` VALUES ('HP ProBook 6570b i5-3230M 15.6 HD+ CAM, 4GB, 500GB  Win 8 Pro  C3D69ES#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558060935', null);
INSERT INTO `linkdb` VALUES ('HP Probook Kit 4340s - 33,8cm (13&quot;) Intel i3-3120M 500GB W7Pro+Win8  3 &eacute;v garancia H4R47EA+UK707A Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556868381', null);
INSERT INTO `linkdb` VALUES ('HP Probook Kit4340s - 33,8cm (13&quot;) Intel i3-3110M 500GB HDD Win7Pro + Win8 C4Y35EA+UK707A Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556868387', null);
INSERT INTO `linkdb` VALUES ('HP Spectre 13 Pro - i5-4200U, 13.3FULL HD, 256 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576098882', null);
INSERT INTO `linkdb` VALUES ('HP Spectre 13 Pro - i7-4500U, 13QHD, 256 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576098876', null);
INSERT INTO `linkdb` VALUES ('HP Spectre 13-3010eg Ultrabook i7-4500U 8GB 256GB SSD  Win8 E7F51EA#ABD00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568324136', null);
INSERT INTO `linkdb` VALUES ('HP Spectre XT 13-2100eg 128GB SSD &amp; Intel Core i5 C1P14EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783633', null);
INSERT INTO `linkdb` VALUES ('HP Spectre XT Pro - i7-3537U, 13.3HD, 256 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1563553359', null);
INSERT INTO `linkdb` VALUES ('HP Spectre XT Pro Ultrabook i5-3317U 4GB/128GB 33,8cm/13&quot;HD HD4000 n/BT W7HP64 B8W13AA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1540461003', null);
INSERT INTO `linkdb` VALUES ('HP Spectre XT Ultrabook Full HD Touch 15-4000eg 256GB SSD Intel Core i5 C1S43EA#ABD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557783660', null);
INSERT INTO `linkdb` VALUES ('HP SPLIT 13 - i5-4200U, 13.3HD, 500 GB+64 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719629', null);
INSERT INTO `linkdb` VALUES ('HP Z1 7577/HP Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1530259962', null);
INSERT INTO `linkdb` VALUES ('HP Z1 7599/HP Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1530259959', null);
INSERT INTO `linkdb` VALUES ('HP Z1 8422/HP Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1530259956', null);
INSERT INTO `linkdb` VALUES ('HP ZBook 14 - i5-4200U, 14HD+, 500 GB, 8GB, FirePro M4100 1GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059319', null);
INSERT INTO `linkdb` VALUES ('HP ZBook 14 - i5-4300U, 14FULL HD, 750 GB, 8GB, FirePro M4100 1GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059451', null);
INSERT INTO `linkdb` VALUES ('HP ZBook 14 - i5-4300U, 14HD+, 500 GB, 8GB, FirePro M4100 1GB, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059394', null);
INSERT INTO `linkdb` VALUES ('HP ZBook 14 - i5-4300U, 14HD+, 500 GB, 8GB, FirePro M4100 1GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059463', null);
INSERT INTO `linkdb` VALUES ('HP ZBook 14 - i7-4600U, 14FULL HD, 256 GB, 8GB, FirePro M4100 1GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059961', null);
INSERT INTO `linkdb` VALUES ('HP ZBook 15 - i7-4700MQ, 15.6FULL HD, 500 GB, 4GB, Quadro K1100M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060054', null);
INSERT INTO `linkdb` VALUES ('HP ZBook 15 - i7-4700MQ, 15.6FULL HD, 750 GB+32 GB, 8GB, Quadro K2100M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562603412', null);
INSERT INTO `linkdb` VALUES ('HP ZBook 15 - i7-4800MQ, 15.6FULL HD, 256 GB, 16GB, Quadro K2100M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059733', null);
INSERT INTO `linkdb` VALUES ('HP ZBook 15, i7-4700MQ, 15.6&quot; , K1100/2GB, 8GB, 750GB+32GB SSD, W7PRO+W8PRO HPNBF0U62EA#BCM00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568324121', null);
INSERT INTO `linkdb` VALUES ('HP ZBook 15, i7-4700MQ, 15.6&quot; FHD, K1100/2GB, 4GB, 500GB,, W7PRO+W8PRO F0U60EA#BCM00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568324133', null);
INSERT INTO `linkdb` VALUES ('HP ZBook 17 - i7-4700MQ, 17.3FULL HD, 128 GB, 8GB, Quadro K3100M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564642098', null);
INSERT INTO `linkdb` VALUES ('HP ZBook 17 - i7-4700MQ, 17.3FULL HD, 256 GB, 8GB, Quadro K3100M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564642095', null);
INSERT INTO `linkdb` VALUES ('HP ZBook 17 - i7-4700MQ, 17.3FULL HD, 500 GB, 4GB, Quadro K3100M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564642104', null);
INSERT INTO `linkdb` VALUES ('HP ZBook 17 - i7-4700MQ, 17.3FULL HD, 750 GB, 4GB, Quadro NVS 3100M, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060048', null);
INSERT INTO `linkdb` VALUES ('HP ZBook 17 - i7-4700MQ, 17.3HD+, 500 GB, 4GB, Quadro K610M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060060', null);
INSERT INTO `linkdb` VALUES ('HP ZBook 17, i7-4700MQ, 17.3&quot; FHD, K3100/4GB, 4GB, 500GB,  W7PRO+W8PRO HPNBF0V52EA#BCM00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568324112', null);
INSERT INTO `linkdb` VALUES ('HP ZBook 17, i7-4900MQ, 17.3&quot; , VPro, Quadro K5100M 8GB, 32G, SSD 512GB  750GB  HDD WIN8P  Win7 HPNBC3E56ES#BCM00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568324106', null);
INSERT INTO `linkdb` VALUES ('IBM ThinkPad T41 Laptop, lenovo, szÃ¡mÃ­tÃ³gÃ©p1855760201 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/ibm_lenovo/lenovo_thinkpad/ibm_thinkpad_t41_laptop_lenovo_szamitogep_1855760201.html', null);
INSERT INTO `linkdb` VALUES ('IBM ThinkPad X60 X60s Lenovo X61 X61s series 92P1171 4400mAh 8 cella notebook/laptop akku/akkumul&aacute;tor ut&aacute;ngy&aacute;rtott', 'http://www.grando.hu/product/view/?id=1518229203', null);
INSERT INTO `linkdb` VALUES ('Laptop   SONY VAIO Laptop SONY SVF-1521V1E', 'http://www.grando.hu/product/view/?id=1561670664', null);
INSERT INTO `linkdb` VALUES ('Laptop   SONY VAIO Laptop SONY SVP-1321M2E', 'http://www.grando.hu/product/view/?id=1561670682', null);
INSERT INTO `linkdb` VALUES ('Laptop hÅ±tÅ‘ 3 ventilÃ¡toros vÃ¡ltozat AkciÃ³s Ã¡ron!!1853603876 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_alkatresz/hutes_ventilator/laptop_huto_3_ventilatoros_valtozat_akcios_aron_1853603876.html', null);
INSERT INTO `linkdb` VALUES ('Laptop hÅ±tÅ‘ 3 ventillÃ¡toros1856443496 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_alkatresz/hutes_ventilator/laptop_huto_3_ventillatoros_1856443496.html', null);
INSERT INTO `linkdb` VALUES ('Laptop hÅ±tÅ‘ kÃ©k led-3 ventillÃ¡tor1854191747 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_alkatresz/hutes_ventilator/laptop_huto_kek_led_3_ventillator_1854191747.html', null);
INSERT INTO `linkdb` VALUES ('Laptop hÅ±tÅ‘ tartÃ³ Ã¡llvÃ¡ny usb-s asztal pad1856075756 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_alkatresz/hutes_ventilator/laptop_huto_tarto_allvany_usb_s_asztal_pad_1856075756.html', null);
INSERT INTO `linkdb` VALUES ('Laptop hÅ±tÅ‘1856440019 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_alkatresz/hutes_ventilator/laptop_huto_1856440019.html', null);
INSERT INTO `linkdb` VALUES ('Laptop hÅ±tÅ‘1856440613 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_alkatresz/hutes_ventilator/laptop_huto_1856440613.html', null);
INSERT INTO `linkdb` VALUES ('Laptop hÅ±tÅ‘1856443217 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_alkatresz/hutes_ventilator/laptop_huto_1856443217.html', null);
INSERT INTO `linkdb` VALUES ('Laptop hÅ±tÅ‘1857041030 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_alkatresz/hutes_ventilator/laptop_huto_1857041030.html', null);
INSERT INTO `linkdb` VALUES ('Laptop notebook akkumulÃ¡tor akku bÃ¡rmely tÃ­pushoz1853793743 Acer Asus HP Lenovo Toshiba Ibm Dell Fujitsu Sams ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/akkumulator/egyeb/laptop_notebook_akkumulator_akku_barmely_tipushoz_1853793743.html', null);
INSERT INTO `linkdb` VALUES ('Laptop notebook hÅ±tÅ‘ hatalmas 22cm! ventilÃ¡torral1850259434 ', 'http://szamitastechnika.vatera.hu/szamitogep_laptop_tablet_kellek/egyeb/laptop_notebook_huto_hatalmas_22cm_ventilatorral_1850259434.html', null);
INSERT INTO `linkdb` VALUES ('Laptop notebook hÅ±tÅ‘ hatalmas ventilÃ¡torral1852724465 ', 'http://szamitastechnika.vatera.hu/szamitogep_laptop_tablet_kellek/egyeb/laptop_notebook_huto_hatalmas_ventilatorral_1852724465.html', null);
INSERT INTO `linkdb` VALUES ('Laptop notebook hÅ±tÅ‘ hatalmas ventilÃ¡torral1855308563 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_alkatresz/hutes_ventilator/laptop_notebook_huto_hatalmas_ventilatorral_1855308563.html', null);
INSERT INTO `linkdb` VALUES ('Laptop notebook hÅ±tÅ‘ nagy ventilÃ¡torral. 17\"-ig1852724264 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_alkatresz/hutes_ventilator/laptop_notebook_huto_nagy_ventilatorral_17_ig_1852724264.html', null);
INSERT INTO `linkdb` VALUES ('Laptop VGA JavÃ­tÃ¡s, BGA Reball, ÃšjragolyÃ³zÃ¡s1850850215 Garancia, tartÃ³s javÃ­tÃ¡s, ingyen posta!!! ', 'http://szamitastechnika.vatera.hu/szerviz_karbantartas/szerviz_szolgaltatas/laptop_vga_javitas_bga_reball_ujragolyozas_1850850215.html', null);
INSERT INTO `linkdb` VALUES ('LAPTOP, HP 6930P, C2D P8700, 2GB, INGYEN HÃZHOZ1855960385 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/hp/hp_elitebook/laptop_hp_6930p_c2d_p8700_2gb_ingyen_hazhoz_1855960385.html', null);
INSERT INTO `linkdb` VALUES ('LAPTOP, HP 6930P, C2D P8700, 2GB, INGYEN HÃZHOZ3925719595 ', 'http://beta.vatera.hu/-i3925719595.html', null);
INSERT INTO `linkdb` VALUES ('Laptop, notebook hÅ±tÅ‘!1855267958 minÅ‘sÃ©g fillÃ©rekÃ©rt! ', 'http://szamitastechnika.vatera.hu/szamitogep_laptop_tablet_kellek/laptop_notebook_tarto/laptop_notebook_huto_1855267958.html', null);
INSERT INTO `linkdb` VALUES ('Laptop/notebook/netbook tartÃ³ kÃ©zi tÃ¡ska,vÃ¡lltÃ¡ska1850964404 ', 'http://szamitastechnika.vatera.hu/szamitogep_laptop_tablet_kellek/laptop_taska_tok/laptop_valltaska/laptop_notebook_netbook_tarto_kezi_taska_valltaska_1850964404.html', null);
INSERT INTO `linkdb` VALUES ('Legjobb aj&aacute;nlat: HP Pavilion 15-n020sg i5-4200U 4GB 500GB HD GT740 Win8 F1X83EA#ABD-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276499', null);
INSERT INTO `linkdb` VALUES ('Legjobb aj&aacute;nlat: MSI GP60-i540M287FD Gaming Notebook 0016GD-SKU100 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568815152', null);
INSERT INTO `linkdb` VALUES ('Legjobb aj&aacute;nlat: MSI GX70 3BE-016XCZ - AMD A10-5750 17.3&quot; 8GB/750GB Radeon Hd8970 2GB No Os GX703BE-016XCZ Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568324067', null);
INSERT INTO `linkdb` VALUES ('Legjobb aj&aacute;nlat: Sony VAIO Fit 15E SV-F1521C6E/W Allround Design Notebook SVF1521C6EW.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976516', null);
INSERT INTO `linkdb` VALUES ('Legjobb ajÃ¡nlat: Ãšj ASUS X550DP 4 magos laptop1856993987 Crossfire grafikus kÃ¡rtyÃ¡s 2014-es ASUS laptop!!! ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/asus/asus_x/legjobb_ajanlat_uj_asus_x550dp_4_magos_laptop_1856993987.html', null);
INSERT INTO `linkdb` VALUES ('Lemezszekr&eacute;ny, kulcsos z&aacute;r, 41 l, 260x500x410 mm, Laptop K (USZPLK)', 'http://www.grando.hu/product/view/?id=1493861778', null);
INSERT INTO `linkdb` VALUES ('Lenovo 3000 N100 N200 C200 series 42T4514 42T4516 42T5212 42T5256 92P1186 4400mAh 6 cella notebook/laptop akku/akkumul&aacute;tor eredeti/gy&aacute;ri', 'http://www.grando.hu/product/view/?id=1542841395', null);
INSERT INTO `linkdb` VALUES ('Lenovo B590 MBX34GE 627434G Intel Core i5-3230M, 4GB DDR3 RAM, 1000GB HDD, Win7Pro64 MBX34GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560696828', null);
INSERT INTO `linkdb` VALUES ('Lenovo B590 MBX37GE 627437G Notebook 39cm (15.6&quot;), Core i5-3230M, 1TB HDD, GeForce GT 720M 1GB, Win8 MBX37GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560696822', null);
INSERT INTO `linkdb` VALUES ('Lenovo G500S Touch 59381618 - Multitouch Notebook i5-3230M 8GB 1TB 593816180 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558942263', null);
INSERT INTO `linkdb` VALUES ('Lenovo G580 59375582 i7-3612QM 8GB 1TB Multimedianotebook Windows 8 593755820 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559101938', null);
INSERT INTO `linkdb` VALUES ('Lenovo G700 59372511 - Intel Pentium 2020M 4GB 500GB HD+ Windows 8 593725110 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558563036', null);
INSERT INTO `linkdb` VALUES ('Lenovo G780 59371527 - i5-3230M 4GB 1TB GT635M Windows 8 593715270 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558942155', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad B590 - i3 3120 15.6&quot; 4GB/500GB Geforce GT720 1GB Win8 NT215c4d0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560072153', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Flex 14 - i3-4010U 14&quot; HD 500GB+8GB 4GB RAM HD Graphics 4400 Win8 lenovoflex14-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458366', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD FLEX 15 - i5-4200U, 15.6, 500 GB+8 GB, 8GB, Geforce GT 720M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564642182', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD G500 - i5-3230M, 15.6HD, 1000 GB+8 GB, 6GB, Radeon HD 8750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1573566822', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD G500 - i7-3612QM, 15.6HD, 1000 GB+8 GB, 4GB, Radeon HD 8750M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719812', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD G500 - i7-3612QM, 15.6HD, 1000 GB+8 GB, 8GB, Radeon HD 8750M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1573566795', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD G500 - i7-3612QM, 15.6HD, 1000 GB, 4GB, Radeon HD 8750M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059799', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD G500s - i5-3230M, 15.6HD, 1000 GB+8 GB, 4GB, Geforce GT 720M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719587', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD G500s - i7-3612QM, 15.6HD, 1000 GB+8 GB, 6GB, Geforce GT 720M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060075', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad G500s Black - i7 3612QM  15.6&quot; 4GB/1TB +8GB SSD Geforce GT720 2GB No Os NT357b6c0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560072207', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD G505s - A8 4500M, 15.6HD, 1000 GB, 4GB, Radeon HD 8570M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1560081636', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD G505s - A8 4500M, 15.6HD, 1000 GB, 8GB, Radeon HD 8570M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1560223821', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD G510 - i5-4200M, 15.6HD, 1000 GB+8 GB, 8GB, Radeon HD 8750 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567491465', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD G510 - i5-4200M, 15.6HD, 1000 GB, 8GB, Radeon HD 8750M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575406131', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad G510 Dark Metal - i7 4700MQ 15.6&quot; 8GB/1TB HDD Radeon HD8750 2GB Win8 NT358f2g0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560216798', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad G510 Dark Metal - Intel Core i5-4200 8GB RAM 1TB SATA 8GB SSD AMD Radeon HD8750 NoOS 593926860 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1572031416', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad G580 59350859 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541614410', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad G700 - i3 3120 17.3&quot; 8GB/1TB Geforce G710 2GB Win8 NT377g0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560072189', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad G700 - i5 3230 17.3&quot; 4GB/1TB Geforce GT720 2GB No Os 59387531 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1564105182', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD G700 - i5-3230M, 17.3HD+, 1000 GB+8 GB, 4GB, Geforce GT 720M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719452', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD G710 - i5-4200M, 17.3HD+, 1000 GB+8 GB, 4GB, Geforce GT 720M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868830', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD G710 - i5-4200M, 17.3HD+, 1000 GB+8 GB, 6GB, Geforce GT 720M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575904293', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD G710 - i5-4200M, 17.3HD+, 1000 GB+8 GB, 8GB, Geforce GT 720M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719581', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD G710 - i7-4702MQ, 17.3HD+, 1000 GB+8 GB, 8GB, Geforce GT 720M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719794', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD G710 - i7-4702MQ, 17.3HD+, 1000 GB+8 GB, 8GB, Geforce GT 720M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868965', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad G780 - i5 3230 17.3&quot; 8GB/1TB Geforce GT635M 2GB Win8 -Dark Metal  NT376e6h0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560147675', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad G780 - i7 3520 17.3&quot; 4GB/1TB Geforce GT635 2GB No Os - Dark Metal NT376f3c0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560147669', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad G780 Dark Metal - i7 3612QM 17.3&quot; 4GB/1TB  HDD Geforce GT635 2GB NoOs NT376f3e0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560147657', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad G780 Dark Metal - i7 3612QM 17.3&quot; 8GB/1TB Geforce GT635 2GB Win8 NT376g6g5g0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560216801', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD M5400 - i5-4200M, 15.6HD, 1000 GB+8 GB, 4GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575904314', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad S210 Touch - i3 2375 11.6&quot; 4GB/500GB Win8 NT311q5c0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1562059890', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD S410 FLEX - i3-4010U, 14HD, 500 GB+8 GB, 4GB, Integ., Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575904239', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad S500 Touch 59372927 i5-3337U 8GB 500GB + 24GB SSD Ultrabook 5937292700 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1563017838', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD S510FLEX - i5-4200U, 15.6HD, 500 GB+8 GB, 8GB, Geforce GT 720M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060231', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD S510p - i3-4010U, 15.6HD, 1000 GB+8 GB, 4GB, Geforce GT 720M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562603337', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD S510p - i5-4200U, 15.6HD, 1000 GB+8 GB, 4GB, Geforce GT 720M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868824', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD S510p - i5-4200U, 15.6HD, 1000 GB+8 GB, 6GB, Geforce GT 720M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060126', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD S510p - i7-4500U, 15.6HD, 1000 GB+8 GB, 8GB, Geforce GT 720M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060123', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD S510p - i7-4500U, 15.6HD, 1000 GB+8 GB, 8GB, Geforce GT 720M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868992', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad S510p Black - i7 4500 15.6&quot; 8GB/1TB +8GB Cache Geforce GT720 2GB Win8 NT315b3d0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560216795', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD U310 - i5-3337U, 13.3HD, 500 GB+24 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1555192677', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad U310 Touch - i5 3337 13.3&quot; 4GB/500GB HDD+24GB SSD WIn8 NT318e20 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560216792', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD U330 - i3-4010U, 13.3FULL HD, 500 GB+8 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1574926131', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD U330 - i5-4200U, 13.3FULL HD, 500 GB+8 GB, 4GB, HD Graphics 4400, DVD RW, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572869094', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD U330 - i7-4500U, 13.3FULL HD, 256 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572059355', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad U330 Touch 59372367 - i5-4200U Ultrabook + Touch + Windows 8 593723670 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558942260', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD U330P - i3-4010U, 13.3HD, 1000 GB, 4GB, HD Graphics, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564642074', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD U330P - i3-4010U, 13.3HD, 500 GB+8 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1573566867', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad U430 - i3 4010 14&quot; 4GB/500GB +8GB Cache Geforce GT730 2GB win8 NT319f4f0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560216753', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD U430 - i3-4010U, 14HD+, 500 GB+8 GB, 4GB, Geforce GT 730M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564642158', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD U430 - i5-4200U, 14FULL HD, 500 GB+8 GB, 4GB, Geforce GT 730M 2GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572869202', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD U430 - i5-4258U, 14HD, 500 GB+8 GB, 8GB, Iris Graphics 5100, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572869058', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD U430 - i7-4500U, 14HD+, 500 GB+8 GB, 8GB, Geforce GT 730M 2GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1574926149', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad U430 Touch 59372369 - i5-4200U 8GB 516GB SSHD 730M Windows 8 593723690 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559101953', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD U430p - i3-4010U, 14HD, 1000 GB, 4GB, Geforce GT 730M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1565083119', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD U430p - i3-4010U, 14HD, 1000 GB, 4GB, HD Graphics, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1565083122', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad U430p - i5 4200 14&quot; 4GB/500GB +8GB Geforce GT730 2GB Win8 -Red NT319f5c0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560216756', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad U430p - i5 4200 14&quot; 8GB/500GB +8GB Cache Gefroce GT730 2GB Win8  NT319f5f0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560216786', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD U430p - i5-4200U, 14HD, 500 GB+8 GB, 4GB, Geforce GT 730M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868911', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD U430p - i5-4200U, 14HD, 500 GB+8 GB, 8GB, Geforce GT 730M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926275', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD U430p - i5-4258U, 14FULL HD, 500 GB+8 GB, 8GB, Iris Graphics 5100, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868968', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad U430p 59372409 - i5-4200U 4GB 508GB SSHD Windows 8 593724090 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558942242', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad U510 -i5 3337 15.6&quot; 4GB/1TB +24GB SSD Geforce GT720 2GB Win8 NT319g6b3d0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560072195', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad U510 Graphite Grey - i7 3537 15.6&quot; 8GB/1TB HDD +24GB SSD Geforce GT720 2GB WIn8 NT319g6c4g0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560280893', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad U510 Graphite Grey NT319g6b2d0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560072156', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad U510 MBM64GE - i7-3517U 8GB 1TB+24SSD GT625M Win8 Ultrabook MBM64GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560696801', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad U510 MBM8LGE i5-3337U 8GB 500GB + 24GB SSD GT720M Multimedia MBM8LGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558942272', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD U530 - i3-4010U, 15.6, 500 GB+8 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1574926116', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Y500 - i5-3230M 8GB 1TB + 256GB SSD, GT650M 2GB Windows 8 MBG3BGE_256GB Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1550451453', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Y500 - i5-3230M 8GB 1TB +120GB SSD, GT650M 2GB Windows 8 MBG3BGE_120GB Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1550451450', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Y500 - i5-3230M, Nvidia GT750M 2GB GDDR5 NT364AS Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553291100', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Y500 MBG3BGE - i5-3230M 8GB 1TB GT650M Windows 8 MBG3BGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558942161', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Y510 - i7-4700MQ, 15.6FULL HD, 1000 GB+24 GB, 8GB, Geforce GT 750M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1570055466', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Y510 - i7-4700MQ, 15.6FULL HD, 1000 GB+8 GB, 16GB, Geforce GT 750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1570055463', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Y510 - i7-4700MQ, 15.6FULL HD, 1000 GB+8 GB, 8GB, Geforce GT 755M 2GB LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059484', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Y510p - i5 4200M  15,6&quot; 4GB/1TB SSHD +8GB SSD GT755M Win8 NT362g60 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560903687', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Y510p - i5 4200M  15.6&quot; 8GB/1TB SSHD +8GB GT755 2GB No Os NT362g50 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560903690', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Y510P - i5-4200M, 15.6FULL HD, 1000 GB+24 GB, 8GB, Geforce GT 750M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059325', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Y510P - i5-4200M, 15.6FULL HD, 1000 GB+8 GB, 4GB, Geforce GT 750M 2GB LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575660942', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Y510p - i7 4700MQ 15.6&quot; 16GB/1TB HDD +24GB SSD 2xGeforce GT750 2GB Win8 NT362h1c0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560395217', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Y510p - i7 4700MQ 15.6&quot; 8GB/1TB SSHD +8GB SSD GT755M 2GB Win8 NT362g80 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560903681', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Y510P - i7-4700MQ, 15.6FULL HD, 1000 GB+8 GB, 16GB, Geforce GT 750M 2GB LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567490982', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Y510P - i7-4700MQ, 15.6FULL HD, 1000 GB+8 GB, 16GB, Geforce GT 755M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563039696', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Y510P - i7-4700MQ, 15.6FULL HD, 1000 GB+8 GB, 4GB, Geforce GT 750M 2GB LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567490997', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Y510P - i7-4700MQ, 15.6FULL HD, 1000 GB+8 GB, 8GB, Geforce GT 750M 2GB LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567490988', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Y510P - i7-4700MQ, 15.6FULL HD, 1000 GB+8 GB, 8GB, Geforce GT 755M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563039699', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Y510P - i7-4700MQ, 15.6FULL HD, 1000 GB, 4GB, Geforce GT 755M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926254', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Y510P - i7-4702MQ, 15.6FULL HD, 1000 GB+8 GB, 16GB, Geforce GT 755M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926176', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Y510P 59367273 Notebook (39cm (15,6&quot;)FullHD-matt; Core i7 4700MQ;2GB GT750; Blu Ray)   593672730 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560696864', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Y510P 59367400 Notebook (39cm (15,6&quot;)FullHD-matt; Core i7 4700MQ; 2x2GB GT750) 593674000 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560696858', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD YOGA 11 - 2129Y, 11.6, 128 GB, 4GB, Integ., Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868899', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD YOGA 11 - i5-3339Y, 11.6, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869025', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD YOGA 11 - i5-4210Y, 11.6, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926185', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Yoga 11 59-356570 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1542103716', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Yoga 11 59-356572 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1548429231', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD YOGA 11s - i3-3229Y, 11.6, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572869034', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Yoga 11S - i5 3339 11.6&quot; 4GB/128GB SSD Win8 NT301c4i0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560280911', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD YOGA 11s - i5-3339Y, 11.6, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572869187', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Yoga 11S 59373206  i5-3339Y 8GB 256GB SSD Notebook Tablet  593732060-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1570477617', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Yoga 11S 59373207  i5-3339Y 8GB 256 GB- Notebook Table 593732070-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1570477620', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Yoga 11S Orange -  i7 3689 11.6&quot; 8GB/256GB SSD Win8 NT301c4j0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560395214', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Yoga 11S Orange - i3 3229 11.6&quot; 4GB/128GB SSD Win8 NT301c4h0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560280896', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD YOGA 13 - i3-3217U, 13.3HD+, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572869037', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD YOGA 13 - i3-3227U, 13.3HD+, 128 GB, 8GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1555788393', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD YOGA 13 - i5-3337U, 13.3HD+, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572869223', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD YOGA 13 - i7-3537U, 13.3HD+, 256 GB, 8GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059400', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD YOGA 13 - i7-3537U, 13.3HD+, 256 GB, 8GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572059403', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD YOGA 13 - i7-3537U, 13.3HD+, 512 GB, 8GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1555788384', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Yoga 13 Grey  - i7 3537 13.3&quot; 8GB/256GB SSD Win8 NT303g6a5f0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560395238', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Yoga 13 MAM4GGE - Ultrabook i7-3537U 8GB 256GB SSD W8 MAM4GGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559475606', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Yoga 13 Orange -  i5 3337 13.3&quot; 4GB/256GB SSD Win8 NT303e5b0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560395223', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Yoga 13 Silver Gray -  i7 3537 13.3&quot; 8GB/256GB SSD Win8 NT303g6a5e0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560395241', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD YOGA 2 PRO - i3-4010U, 13.3QHD, 128 GB, 4GB, Integ., Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1573566852', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD YOGA 2 PRO - i5-4200U, 13.3QHD, 128 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1576098897', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD YOGA 2 PRO - i5-4200U, 13.3QHD, 128 GB, 8GB, Integ., Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1573566843', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD YOGA 2 PRO - i5-4200U, 13.3QHD, 256 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572059760', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD YOGA 2 PRO - i7-4500U, 13.3QHD, 256 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1573566846', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD YOGA 2 PRO - i7-4500U, 13.3QHD, 256 GB, 8GB, Integ., Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1576098921', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD YOGA 2 PRO - i7-4500U, 13.3QHD, 512 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572059763', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Z500 - i3 2348 15.6&quot; 4GB/1TB Geforce GT740 2GB No Os NT335c4d4e0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1562225295', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Z500 - i3 3120 15.6&quot; 4GB/500GB HDD +8GB SSD GT740 2GB No Os White NT335c4d4h0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560072162', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Z500 - i3-3120M, 15.6HD, 1000 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563039708', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Z500 - i5 3230 15.6&quot; 8GB/1TB HDD Geforce GT740 2GB Win8 NT335e7e0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560216789', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Z500 - i5-3230M, 15.6HD, 1000 GB, 8GB, Geforce GT 740M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563039729', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Z500 - i5-3230M, 15.6HD, 1000 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1552515636', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Z500 59367150 - i5-3230M 4GB 1TB Multitouch GT740M W8 593671500 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1562727177', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Z500 59367170 - i7-3632QM 8GB 1TB Multitouch kijelz&otilde; GT740M W8 593671700 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559475624', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Z500 59372844 - i5-3230M 8GB/1TB + 8GB SSD GT740M Windows 8 593728440 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559101941', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Z500 Dark Chocolate - i7 3612QM 15.6&quot; 8GB/1TB +8GB Cache Geforce Gt740 2GB Win8 NT335g7g0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560280890', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Z500 MBYJ7GE - i7-3632QM GT740M Multimedia Notebook + Windows 8 MBYJ7GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559101947', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Z510  - i7 4702MQ 15.6&quot; 8GB/1TB +8GB Cache Geforce GT740 2GB Dark Chocolate NT335j5e0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565669928', null);
INSERT INTO `linkdb` VALUES ('Lenovo IdeaPad Z510  i5-4200M, FULL HD, 8GB, GT740M 2GB 59400165-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567663950', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Z510 - 3550M, 15.6HD, 1000 GB, 4GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575061371', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Z510 - i3-4000M, 15.6HD, 1000 GB, 4GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926215', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Z510 - i5-4200M, 15.6HD, 1000 GB+8 GB, 6GB, Geforce GT 740M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563039606', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Z510 - i5-4200M, 15.6HD, 1000 GB+8 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869040', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Z510 - i5-4200M, 15.6HD, 1000 GB, 4GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575061368', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Z510 - i5-4200M, 15.6HD, 1000 GB, 8GB, Geforce GT 740M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059895', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Z510 - i7-4702MQ, 15.6HD, 1000 GB+8 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869100', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Z710 - i5-4200M, 17.3FULL HD, 1000 GB+8 GB, 4GB, Geforce GT 745M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1565835570', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Z710 - i5-4200M, 17.3FULL HD, 1000 GB+8 GB, 8GB, Geforce GT 745M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1565835564', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Z710 - i7-4700MQ, 17.3FULL HD, 1000 GB+8 GB, 16GB, Geforce GT 745M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563709887', null);
INSERT INTO `linkdb` VALUES ('LENOVO IDEAPAD Z710 - i7-4700MQ, 17.3FULL HD, 1000 GB+8 GB, 8GB, Geforce GT 745M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869190', null);
INSERT INTO `linkdb` VALUES ('LENOVO LAPTOP G5501854838745 MAKULÃTLAN ÃLLAPOTBAN MEGÅRZÃ–TT ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/ibm_lenovo/lenovo_ideapad/lenovo_laptop_g550_1854838745.html', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkCentre 72z - i5-3570 (3,4GHz), 4GB, 1 TB,  20,0? HD+ RCLAUXS Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1547633106', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKCENTRE EDGE 71Z RCLAUXSS Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1547633109', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkCentre Edge 72z RCLY2XS-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276427', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkCentre Edge 92z 3417-BBG RBDBBMC Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1542305940', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkCentre Edge 92z 3417-JFG RBDJFMC-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1569197265', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkCentre Edge 92z RB8BSGE RB8BMGE Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541614365', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkCentre Edge 92z RB8BSGE RB8BSGE Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541614359', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkCentre Edge 92z RB8BSGE RB8C4GE Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1554605997', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkCentre Edge 92z RB8BSGE RBABFMC Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1555285617', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkCentre Edge 92z RB8CSGE RB8CSGE Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1554606006', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkCentre Edge 92z RBAG2MC RBAG2MC Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1555369416', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkCentre Edge 92z RBBD2GE RBBD2GE Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541837220', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkCentre Edge 92z RBBD2GE RBBD2GEE Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1554606015', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkCentre Edge 92z RBDJFXS - i5-3470S 4GB 1TB 21.5? FHD TOUCH RADEON/1GB DVDRW HDMI Win7PRO+Win8PRO RBDJFXS-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276433', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkCentre Edge 92z RC3CYXS RC3CYXS-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276430', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkCentre Edge 92z RC3EHXS RC3EHXS-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276436', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkCentre M72z 3571-L8G RCKL8MC Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1554700839', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkCentre M72z RDSA6GE RDSA6GE Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541503416', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkCentre M72z RDSA7GE RDSA7GE Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541614356', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad E430  N4E3PMC Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565059209', null);
INSERT INTO `linkdb` VALUES ('LENOVO ThinkPad E540 i7-4702MQ 8GB 1TB+16GB SSD 15.6&quot;  GT740M/2GB DVDRW Win8 IBMNB-20C6000HXS00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568324082', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E130 - i3-3227U, 11.6HD, 500 GB, 4GB, HD Graphics 4000, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868800', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E130 3358-AXG -  i3 3227 11.6&quot; 4GB/500GB Win8-Win7 NT161c4a4d0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560147645', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E130 3358-BEG - i3 3217  11.6&quot; 4GB/500GB Win8 NT161c4a2d0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559648091', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E130 NZUAWGE - i3-3227U UMTS mit W7 Pro + W8 Pro NZUAWGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558942173', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E330 - i5-3230M, 13.3HD, 500 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868926', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E330 3354-C8G -  i5 3210 13.3&quot; 4GB/500GB Win8 NT163h4c3f0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560147672', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E330 3354-DSG - i5 3230 13.3&quot; 4GB/500GB Win8-Win7 NT163h4c3i0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560216771', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E330 NZSDSGE i5-3230M Windows 7Pro + W8P UMTS NZSDSGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558942182', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E330 NZSDTGE - i5-3230M 8GB 750GB Windows 8 NZSATGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558942146', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E431 - i3-3110M, 14HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719809', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E431 - i3-3120M, 14HD, 500 GB, 4GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719797', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E431 - i3-3120M, 14HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926119', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E431 - i5 3230 14&quot; 4GB/500GB Win8-Win7 NT164h5d0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560216768', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E431 - i5-3230M, 14HD+, 500 GB, 4GB, Geforce GT 740M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1558310334', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E431 - i5-3230M, 14HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868818', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E431 - i7-3632QM, 14HD+, 1000 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869106', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E431 Black 6277-48G - i7 3632QM 14&quot; 8GB/1000GB HDD Geforce GT740 2GB Win8-Win7 NT164h6d0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560280902', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E530  3366-74G - i3 3110 15.6&quot; 4GB/500GB Win7 NT165j4b2k0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560072186', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E530 - i5-3210M, 15.6HD, 500 GB, 8GB, HD Graphics 4000, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1552595496', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E530 NZQHLGE Ivy Bridge i5-3210M 4GB 500GB NZQHLGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558804830', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E530 NZQHLGE Ivy Bridge i5-3210M 8GB 500GB NZQHLGE+4GB0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558942164', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E530 NZQMGGE - i3-3110M 8GB 500GB &amp; Windows 8 NZQMGGE+4GB0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558804875', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E530c - i5 2520M 15.6&quot; 4GB/500GB Win8 NT165m4a4f0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560072171', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E530c - i5-3230M, 15.6HD, 1000 GB, 4GB, HD Graphics, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868803', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E530c Black 3366-73G -i3 3110 15.6&quot; 4GB/500GB Win8 NT165j3d0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559648094', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E531 -  i5 3230 15.6&quot; 4GB/500GB Geforce GT740 2GB Win8  NT165s4f0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560216759', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E531 - i3-3120M, 15.6HD, 128 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926110', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E531 - i5-3230M, 15.6HD, 128 GB, 4GB, Integ., DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575061395', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E531 - i5-3230M, 15.6HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868884', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E531 - i5-3230M, 15.6HD, 500 GB, 4GB, HD Graphics, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575660945', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E531 - i7-3632QM, 15.6HD, 500 GB, 4GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869085', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E531 6885-2EG -i3 3120 15.6&quot; 4GB/128GB SSD Win8 NT165s3e0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560147654', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E531 6885-67G -  i5 3230 15.6&quot; 4GB/500GB Win7 NT165s4h0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560216765', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E531 6885-6SG - i5 3230 15.6&quot; 4GB/500GB Win8 NT165s4d0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560147651', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E531 6885-9YG- fekete 6885-9YG0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566483783', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E531 Black 6885-29G - i5 3230 15.6&quot; 4GB/500GB Geforce GT740 2GB Win8-Win7 NT165s4j0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560216807', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E531 Black 6885-6FG -Pentium 2030 15.6&quot; 4GB/500GB Win8 NT165s2c0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559648070', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E531 Black 6885-B8G - i5 3230 15.6&quot; 8GB/1TB HDD Geforce GT740 2GB Win8 NT165s4k0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560280884', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E531 N4I27GE - i7-3632QM 8GB 1TB+24 GB SSD FHD+ GT740M Win8 N4I27GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566483780', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E531 N4I29GE - i5-3230M 4GB 500GB HD+ GT740M &amp; Win Pro N4I29GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559101923', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E531 N4I67GE Notebook Core i5-3230M, 4GB, 500GB, Win7/8Pro N4I67GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560696861', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E531 N4I69GE - i3-3120M 4GB/500GB 15&quot;HD n/BT W7P+ W8P N4I69GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558942170', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E531 Red 6885-2GG - i3 3120 15.6&quot; 4GB/500GB Win8 NT165s3c0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560072183', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E531 Red 6885-2GG - i7-3632QM 15.6&quot; 4GB/500GB Win8 N4I26GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559475582', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge E535 NZRFUGE 3260FUG AMD A4-4300M Dual-Core und 500GB NZRFUGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560696849', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E540 - i3-4000M, 15.6HD, 500 GB, 4GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926125', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E540 - i5-4200M, 15.6FULL HD, 500 GB, 4GB, Integ., DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060078', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E540 - i5-4200M, 15.6HD, 1000 GB, 8GB, Geforce GT 740M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868998', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E540 - i5-4200M, 15.6HD, 1000 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060063', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E540 - i5-4200M, 15.6HD, 500 GB+16 GB, 8GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869052', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E540 - i5-4200M, 15.6HD, 500 GB, 4GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869004', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E540 - i5-4200M, 15.6HD, 500 GB, 4GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868887', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E540 - i5-4200M, 15.6HD, 500 GB, 4GB, HD Graphics, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060087', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E540 - i7-4700MQ, 15.6FULL HD, 1000 GB+16 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060021', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E540 - i7-4702MQ, 15.6HD, 1000 GB+16 GB, 8GB, Geforce GT 710M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059283', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E540 - i7-4702MQ, 15.6HD, 500 GB, 4GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869055', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE E545 - A8 5550M, 15.6HD, 1000 GB, 8GB, Radeon HD 8570M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1573566816', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE S230U - i3-3217U, 12.5HD, 320 GB+24 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868914', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge S230u Twist 3347-4NG Mocha - i3 3217  12.5&quot; 4GB/320GB +24GB SSD Win8 NT162o4b2d0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560280872', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge S430 3364-56G - i5 3210M 14&quot; 4GB/500GB HDD+16GB SSD Geforce GT620M 2GB+Intel4000 Win8 - Mocha Black  NT164u4g4d0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560216804', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE S440 - i3-4010U, 14HD, 500 GB+16 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572869019', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE S440 - i5-4200U, 14HD+, 500 GB+16 GB, 8GB, Radeon HD 8670M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869145', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE S440 - i7-4500U, 14HD+, 256 GB, 8GB, Radeon HD 8670M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1566302226', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge S440 Touch Black 20AY0-01C -i7 4500 14&quot; 8GB/256GB SSD Radeon HD 8670M 2GB Win8 NT164w4c0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560395235', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge S531 Black 20B00-008 - i5 3337  15.6&quot; 6GB/128GB SSD Win8-Win7 NT166d3c0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560280899', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE S540 - i5-4200U, 15.6FULL HD, 500 GB+16 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1574926161', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE S540 - i5-4200U, 15.6FULL HD, 500 GB+16 GB, 8GB, Radeon HD 8670M 2GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1574926170', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD EDGE S540 - i7-4500U, 15.6FULL HD, 256 GB, 8GB, Radeon HD 8670M 2GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1574926179', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Edge T430i TopSeller N1TFEGE 2344FEG [14&quot;; i3-3120M; 4GB; 500GB, WIN7/8Pro]   N1TFEGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560789042', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD HELIX - i5-3317U, 11.6FULL HD, 128 GB, 4GB, HD Graphics, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572059619', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD HELIX - i5-3337U, 11.6FULL HD, 180 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1549434858', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD HELIX - i5-3427U, 11.6FULL HD, 180 GB, 4GB, HD Graphics 4000, 3G, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572059724', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD HELIX - i5-3427U, 11.6FULL HD, 256 GB, 4GB, HD Graphics 4000, 3G, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572059691', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD HELIX - i7-3667U, 11.6FULL HD, 256 GB, 8GB, HD Graphics 4000, 3G, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572059745', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad Helix N3Z6DGE- Ultrabook + Multitouch kijelz&otilde; + Windows Pro 8 N3Z6CGE0-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1572743478', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad L430 2468-58G - i5 3230 14&quot; 4GB/500GB Win8-WIn7 NT043e4f3i0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560280881', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad L430 N2L57GE - i5-3230M HD+ UMTS + Win Pro. N2L57GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559101935', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad L430 N2L59GE 246859G (35cm (14&quot;); 4GB RAM; 500GB HDD; Win7 Pro) N2L59GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560696891', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD L440 - i3-4000M, 14HD, 500 GB, 4GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868839', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD L440 - i5-4200M, 14HD+, 500 GB+16 GB, 4GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060069', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD L440 - i5-4200M, 14HD+, 500 GB, 4GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869007', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD L440 - i5-4200M, 14HD, 500 GB, 4GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868950', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD L530 - i3-3120M, 15.6HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1573566807', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad L530 2481-4YG - i5 3230 15.6&quot; 4GB/500GB Win8-Win7 NT045e50 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560280878', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad L530 N2S4XGE - i5-3230M HD+ Windows Pro N2S4XGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559475615', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad L530 N2S4YGE - i5-3230M HD+ &amp; Windows Professional N2S4YGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559101926', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad L530 N2S4ZGE - i5-3230M &amp; Windows Professional N2S4ZGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559101920', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad L530 N2S52GE - i3-3120M &amp; Windows Professional N2S52GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558942185', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD L540 - i5-4200M, 15.6FULL HD, 500 GB, 4GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926143', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad S440 20AY006EGE 20AY006E i3-4010U, 4GB RAM, 128GB SSD, Win8Pro 20AY006EGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560696894', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad S440 TopSeller 20AY001DGE 20AY001D i7-4500U, 8GB RAM, 256GB SSD, Win8Pro 20AY001DGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560789027', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD S531 - i7-3537U, 15.6FULL HD, 256 GB, 10GB, Radeon HD 8670M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1565365380', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad S531 20B00006GE Intel Core i5-3337U, 2+2GB RAM, 500GB HDD, Win7/8Pro 20B00006GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560696876', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad S531 TopSeller 20B0004KGE Intel Core i7-3537U, 2+8GB RAM, 256GB SSD, Win7/8Pro 20B0004KGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560696897', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T430 - i5-3230M, 14HD+, 500 GB, 4GB, DVD RW, UMTS, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567490907', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T430 - i5-3320M, 14HD+, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059322', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T430 - i5-3320M, 14HD+, 500 GB, 4GB, Quadro NVS 5200M 1GB, DVD RW, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059778', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T430 - i7-3520M, 14HD+, 240 GB, 8GB, Quadro NVS 5200M 1GB, DVD RW, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059655', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T430 - i7-3520M, 14HD+, 500 GB, 8GB, Quadro NVS 5400M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059475', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad T430 2344-57G -  i7 3520 14&quot; 8GB/180GB SSD NVIDIA 5400 2GB +Intel4000 WIn7 NT084l4t50 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560395244', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad T430 2349L28 [14&quot;; i5-2520M; 6GB RAM, 320GB HDD; Win7Pro] 2349L280 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560789054', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad T430 N1XKAGE - i7-3520M 4GB 500GB HD+ NVS 5400M UMTS W7P + W8P N1XKAGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554233', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad T430 N1XKBGE - i5-3210M 8GB 500GB HD+ NVS UMTS W7Pro64+W8Pro N1XKBGE+4GB0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559475600', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad T430 N1XN7GE - i5-3230M 4GB/500GB Windows 7 + 8 Professional N1XN7GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559475594', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T430s - i5-3320M, 14HD+, 500 GB, 4GB, HD Graphics, DVD RW, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059397', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T430s - i7-3520M, 14HD+, 180 GB, 8GB, DVD RW, UMTS, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060435', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad T430s N1RLNGE - i7-3520M 4GB 240GB SSD HD+ UMTS W7Pro64+ W8Pro N1RLNGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554266', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad T430s TopSeller N1RLRGE 2356LRG 35cm (14&quot;), i5-3320M, UMTS, Win7/8Pro64   N1RLRGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560789072', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad T430u N3F3NGE 33533NG Ultrabook i5-3337U, GeForce GT620M, 180GB SSD N3F3NGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560789048', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T431s - i5-3337U, 15.6, 128 GB, 4GB, Integ., 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1573566831', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T431s - i5-3437U, 14HD+, 180 GB, 4GB, HD Graphics 4000, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059523', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T431s - i7-3687U, 14HD+, 240 GB, 8GB, HD Graphics 4000, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059679', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad T431s 20AA0012GE - i7-3687U 8GB 240GB SSD Windows 7 Profesionnal 20AA0012GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554308', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad T431s 20AA0016 -i5 3337 14&quot; 4GB/500GB +24GB SSD Win8-Win7 NT085h4d0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560395220', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad T431s 20AA0016GE - i5-3437U 4GB 500GB+24GB SSD HD+ Win Pro 20AA0016GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559475627', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad T431s 20AA0019GE - i5-3437U 4GB 160GB SSD Windows 7 Pro 20AA0019GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554305', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T440 - i5-4200U, 14.1HD+, 500 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059751', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T440 - i5-4200U, 14HD+, 500 GB+16 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059373', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T440 - i5-4300U, 14HD+, 500 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060009', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T440p - i5-4200M, 14HD, 500 GB, 4GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059304', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T440p - i5-4300M, 14HD+, 500 GB, 4GB, Geforce GT 730 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060003', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T440p - i5-4300M, 14HD+, 500 GB, 4GB, Geforce GT 730M 1GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059415', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T440p - i5-4300M, 14HD+, 500 GB, 4GB, HD Graphics 4400, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060015', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T440p - i5-4300M, 14HD+, 500 GB, 4GB, HD Graphics 4600, DVD RW, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059361', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T440p - i7-4600M, 14HD+, 500 GB, 4GB, Geforce GT 730 1GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059544', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T440p - i7-4700MQ, 14FULL HD, 256 GB, 8GB, Geforce GT 730M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575904269', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T440p - i7-4700MQ, 14HD+, 500 GB, 8GB, Geforce GT 730M 1GB, DVD RW, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059517', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T440p - i7-4900MQ, 14HD+, 512 GB, 8GB, Geforce GT 730M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575904260', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T440s - i5-4200U, 14FULL HD, 256 GB, 8GB, HD Graphics 4400, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059640', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T440s - i5-4200U, 14FULL HD, 500 GB+24 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1565835546', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T440s - i5-4300U, 14FULL HD, 128 GB, 4GB, HD Graphics 4400, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059625', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T440s - i5-4300U, 14FULL HD, 500 GB+16 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059997', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T440s - i5-4300U, 14HD+, 500 GB+16 GB, 4GB, HD Graphics 4400, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059478', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T440s - i7-4600U, 14FULL HD, 256 GB, 8GB, HD Graphics 4400, 3G, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572059727', null);
INSERT INTO `linkdb` VALUES ('LENOVO ThinkPad T440S i5-4300U(1.90GHz) 4GB 256GB SSD 14.0&quot; FHD Touch Win8 Pro 20AR001GXS00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568324130', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T530 - i5-3230M, 15.6HD+, 240 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719749', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T530 - i5-3230M, 15.6HD+, 500 GB, 4GB, Quadro NVS 5400M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719755', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T530 - i5-3230M, 15.6HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719770', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T530 - i7-3520M, 15.6HD+, 500 GB, 4GB, HD Graphics 4000, DVD RW, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059430', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T530 - i7-3520M, 15.6HD+, 500 GB, 4GB, Integ., DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719743', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T530 - i7-3520M, 15.6HD+, 500 GB, 8GB, HD Graphics 4000, DVD RW, 3G, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1552595517', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T530 - i7-3630QM, 15.6HD+, 500 GB, 4GB, Quadro NVS 5400M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719752', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T530 - i7-3630QM, 15.6HD, 240 GB, 8GB, Quadro NVS 5400M 1GB, DVD RW, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059667', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad T530 N1E6JGE - i7-3630QM HD+ NVS 5400M UMTS W7P+ W8P N1E6JGE+4GB0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554263', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad T530 N1E6JGE - i7-3630QM HD+ NVS 5400M UMTS W7P+ W8P N1E6JGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554230', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad T530 N1E6KGE - i7-3520M 8GB 500GB HD+ UMTS W7P + W8P N1E6KGE+4GB0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554257', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad T530 N1E6MGE - i5-3210M Windows Professional N1E6MGE Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1544709414', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad T530 N1E7XGE - i7-3630QM 8GB 240GB SSD FHD NVS UMTS W7+W8 Pro N1E7XGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554275', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T530i - i3-3120M, 15.6HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719785', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T540p - i5-4200M, 15.6FULL HD, 500 GB, 4GB, Geforce GT 730M 1GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059364', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T540p - i5-4300M, 15.5QHD, 256 GB, 4GB, Geforce GT 730M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059616', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T540p - i5-4300M, 15.6FULL HD, 256 GB, 4GB, Geforce GT 730M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059556', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T540p - i5-4300M, 15.6FULL HD, 256 GB, 4GB, HD Graphics 4600, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059481', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T540p - i7-4600M, 15.5QHD, 256 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059964', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T540p - i7-4600M, 15.6FULL HD, 256 GB, 8GB, Geforce GT 730M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059787', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD T540p - i7-4700MQ, 15.6FULL HD, 500 GB, 8GB, Geforce 730M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575904272', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad W520 NY43CGE Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1542231696', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad W530 N1K4GGE - i7-3820QM 8GB 500GB+SSD FHD K2000M W7P+W8P N1K4GGE  Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1542231714', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad W530 N1K4HGE - i7-3720QM 8GB 240SSD FHD K2000M W7P + W8P N1K4HGE Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1542231717', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad W530 N1K4KGE - i7-3630QM HD+ K1000M n/BT W7P + W8P N1K4KGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554302', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad W530 N1K4LGE - i5-3320M 4GB 500GB 15&quot;FHD K1000M W7P + W8P N1K4LGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559475576', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad W530 N1K54GE - i7-3840QM 8GB 500GB+SSD FHD K2000M W7P+W8P N1K54GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554287', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad W530 N1K59GE - i7-3820QM 8GB 240SSD+1TB FHD K2000M W7P + W8P N1K59GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554290', null);
INSERT INTO `linkdb` VALUES ('LENOVO ThinkPad W540 i7-4800QM 8GB 500GB 15.6&quot; K2100M/2GB  Win7 Pro &amp; Win8 Pro IBMNB-20BG001BXS00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568324109', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD X1 - i5-3427U, 14HD+, 180 GB, 4GB, HD Graphics 4000, 3G, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059628', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD X1 Carbon - i5-3427U, 14HD+, 180 GB, 8GB, HD Graphics 4000, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059646', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD X1 Carbon - i5-3427U, 14HD+, 256 GB, 4GB, HD Graphics 4000, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059715', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD X1 Carbon - i7-3667U, 14HD+, 240 GB, 8GB, HD Graphics 4000, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059730', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD X1 Carbon - i7-3667U, 14HD+, 256 GB, 8GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059712', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X1 Carbon 3444-79G NT077e6g4ebe Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1554193839', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X1 Carbon 3444-7MG NT077e6g5ebe Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1554110088', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X1 Carbon 3444-B8G NT077e4e3fbe Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1554263718', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X1 Carbon 3444-FHG NT077g6g6fbe Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1554110073', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X1 carbon N3N82GE -Business Notebook UMTS N3N82GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554245', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X1 Carbon N3NCJGE- Business Notebook  N3NCJGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554278', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X1 Carbon Touch 3444-DBG i7-3667U 8GB 256 SSD NT077g6g7ebe Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1554193782', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X1 carbon Touch N3NAQGE - i7-3667U 8GB 240GB SSD UMTS W8Pro N3NAQGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554224', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X1 carbon Touch N3ND5GE - i7-3667U 8GB 240GB SSD UMTS W8Pro N3ND5GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554284', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X1 Carbon Ultrabook N3N7ZGE 34607ZG Intel Core i7-3667U, UMTS  180GB SSD   N3N7ZGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1563681576', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X1 Carbon Ultrabook N3NCLGE 3460CLG Intel Core i7-3667U, UMTS  240GB SSD N3NCLGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1563681573', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X1 N3NANGE - Carbon Notebook + Touch kijelz&otilde; + UMTS + Windows Pro N3NANGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554248', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X1 N3ND3GE - Carbon Notebook + Touch kijelz&otilde; UMTS + Windows Pro N3ND3GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554281', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X1 Ultrabook N3N4MGE i5-3427U 8GB 180GB SSD HD+ matt N3N4MGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554242', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD X230 - i5-3230M, 12.5HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567490505', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD X230 - i7-3520M, 12.5HD, 256 GB, 8GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059586', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD X230 - i7-3520M, 12.5HD, 500 GB, 4GB, HD Graphics 4000, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059472', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X230 2320-JNG - i5 3230 12.5&quot; 4GB/500GB Win8-Win7 NT072r4c0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1560280908', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X230 NZD77GE - i7-3520M IPS UMTS W7P + W8P + Dokkol&oacute; NZD77GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554236', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X230 NZD78GE - i7-3520M 8GB 180GB Intel SSD UMTS &amp; Win Prof. NZD78GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554251', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X230 NZDAEGE 2325AEG Intel Core i5-3230M, IPS, 500GB   NZDAEGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1563681579', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X230 NZDAJGE- i5-3230M 4GB 180GB SSD UMTS W7P + W8P NZDAJGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559475603', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X230i NZC95GE - Business Subnotebook i3-3120M &amp; Windows Prof NZC95GE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559101929', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X230t Tablet N2C2AGE - Ivy Bridge i5-3320M 180GB SSD IPS &amp; UMTS N2C2AGE+4GB0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554272', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X230t Tablet N2C2AGE - Ivy Bridge i5-3320M 180GB SSD IPS &amp; UMTS N2C2AGE0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554239', null);
INSERT INTO `linkdb` VALUES ('Lenovo ThinkPad X230t Tablet N2C2BGE - Ivy Bridge i5-3320M 8GB IPS UMTS Win7 Pro N2C2BGE+4GB0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1559554260', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD X240 - i5-4300U, 12.5, 128 GB, 4GB, HD Graphics 4400, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926191', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD X240 - i7-4600U, 12.5, 256 GB, 8GB, HD Graphics 4400, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926242', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD YOGA - i3-4010U, 12.5HD, 500 GB+16 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869109', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD YOGA - i5-4200U, 12.5FULL HD, 1000 GB+16 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926209', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD YOGA - i5-4200U, 12.5FULL HD, 500 GB+16 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059340', null);
INSERT INTO `linkdb` VALUES ('LENOVO THINKPAD YOGA - i5-4200U, 12.5FULL HD, 500 GB+16 GB, 4GB, Integ., Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059979', null);
INSERT INTO `linkdb` VALUES ('Lenovo TP W530 N1K43MC Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541837277', null);
INSERT INTO `linkdb` VALUES ('Lenovo x200 tablet laptop Dualcore T9400 windows 71856296871 Ã‰rintÅ‘kÃ©pernyÅ‘, 2-3Ã³rÃ¡s akku, 4gb RAM,szÃ©p kijelzÅ‘ ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/ibm_lenovo/lenovo_thinkpad/lenovo_x200_tablet_laptop_dualcore_t9400_windows_7_1856296871.html', null);
INSERT INTO `linkdb` VALUES ('LG R31 (R310-K) Laptop (3db hibÃ¡s, alkatrÃ©sznek)1855285871 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/lg/lg_r31_r310_k_laptop_3db_hibas_alkatresznek_1855285871.html', null);
INSERT INTO `linkdb` VALUES ('LG680EA EliteBook 2760p Tablet i5-2410M 2,3GHz 2GB 320GB 12,1&quot;WXGA Touch CAM WL BT W7Pro 32 LG680EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1531965003', null);
INSERT INTO `linkdb` VALUES ('LY428EA EliteBook  2560p i7-2640M 2,8GHz 4GB 320GB 12,5&quot; W7Pro 64 LY428EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558060962', null);
INSERT INTO `linkdb` VALUES ('LY542EA EliteBook 8470w Core i7-3630QM 2,5GHz 4GB 750GB +24GBSSD 14&quot;HD+ AMD FirePro? M2000/1G  W7Pro 64 LY542EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1546875501', null);
INSERT INTO `linkdb` VALUES ('LY554EA EliteBook 8570w Core i7-3610QM 2,3GHz 8GB 24GB+750GB 15,6&quot;  Quadro K2000M  W7Pro 64 LY554EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558361934', null);
INSERT INTO `linkdb` VALUES ('LY556EA EliteBook 8570w Core i7-3630QM 2,4GHz 4GB 24GB 500GB 15,6&quot; Quadro K1000M2G Win 8 Pro  LY556EA#BCM Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558284660', null);
INSERT INTO `linkdb` VALUES ('LY558EA EliteBook 8570w Core i7-3630QM 2,4GHz 8GB 24GBSSD 750GB 15,6&quot; K2000M/2 Win 8 Pro LY558EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1546975941', null);
INSERT INTO `linkdb` VALUES ('LY566EA EliteBook 8770w i7-3630QM 2,5GHz 4G 24g flash+750G7,2k DVD?RW 17,3&quot; FHD NVIDIA K3000M/2G WL BT W7Pro+Win8Pro LY566EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1546975938', null);
INSERT INTO `linkdb` VALUES ('LY568EA EliteBook 8770w i7-3630QM 2,5GHz 8G 24GBflas+750GB 17,3&quot; K4000M/4G W7Pro+ Win8 Pro LY568EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1547402457', null);
INSERT INTO `linkdb` VALUES ('LY574EA EliteBook 8570w Core i7-3840QM 2,8GHz 8GB 24GBSSD 750GB BD/DVD?RW 15,6&quot; Quadro K2000M  Win 8 Pro LY574EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1546975944', null);
INSERT INTO `linkdb` VALUES ('LY584EA EliteBook 8770w i7-3840QM 2,8GHz 8GB 24gbflas+750GB17,3&quot; NVIDIA K3000M/2G  W7Pro+ Win8 Pro LY584EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1546975947', null);
INSERT INTO `linkdb` VALUES ('MacBook Air - Intel Core i5  13.3&quot; 4GB/256GB SSD NL242j4m00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958648', null);
INSERT INTO `linkdb` VALUES ('MacBook Air 11 -  Intel Core i5  13.3&quot; 4GB/128GB SSD NL242j4k00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789994', null);
INSERT INTO `linkdb` VALUES ('MacBook Air 11 - Intel Core i5  11.6 &quot; 4GB/256GB SSD NL241j4l00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565790003', null);
INSERT INTO `linkdb` VALUES ('MacBook Air 11 - Intel Core i5  11.6&quot; 4GB/128GB  NL241j4j00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789991', null);
INSERT INTO `linkdb` VALUES ('MacBook Air 11 - Intel Core i5 11.6&quot; 4GB/128GB SSD NL241j4h00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565789982', null);
INSERT INTO `linkdb` VALUES ('MacBook Air 11 -Intel Core i7  11.6&quot; 8GB/128GB SSD NL241j4lxx00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565790009', null);
INSERT INTO `linkdb` VALUES ('MacBook Pro - Intel Core i5  13.3&quot; 8GB/256GB SSD Nl252r8c600 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958639', null);
INSERT INTO `linkdb` VALUES ('MacBook Pro - Intel Core i7 15.4&quot; 16GB/512G SSD GT650 1GB +Intel4000 NL255r8g200 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958642', null);
INSERT INTO `linkdb` VALUES ('MacBook Pro -Intel Core i7  15.4&quot; 4GB/500GB GT650 512 MB +Intel 4000 NL255j8c00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958654', null);
INSERT INTO `linkdb` VALUES ('MacBook Pro 13&quot; Retina - Intel i5 13.3&quot; 8GB/128GB SSD  Nl252r8c200 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1565958636', null);
INSERT INTO `linkdb` VALUES ('MasszÃ­v Laptop HÅ±tÅ‘ Hatalmas Ventivel, laptophÅ±tÅ‘1856578076 ', 'http://szamitastechnika.vatera.hu/szamitogep_laptop_tablet_kellek/egyeb/massziv_laptop_huto_hatalmas_ventivel_laptophuto_1856578076.html', null);
INSERT INTO `linkdb` VALUES ('MasszÃ­v Laptop HÅ±tÅ‘ Hatalmas Ventivel, MIKULÃSRA1854171896 ', 'http://szamitastechnika.vatera.hu/szamitogep_laptop_tablet_kellek/egyeb/massziv_laptop_huto_hatalmas_ventivel_mikulasra_1854171896.html', null);
INSERT INTO `linkdb` VALUES ('MEDION 12\"-os kis Ã¼gyes laptop!1856155289 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/medion/medion_12_os_kis_ugyes_laptop_1856155289.html', null);
INSERT INTO `linkdb` VALUES ('Mini vezetÃ©kes OPTIKAI EGÃ‰R RAKTÃRON fekete piros1853523983 laptop notebook PC szÃ¡mÃ­tÃ³gÃ©p tablet POSTA AZONNAL ', 'http://szamitastechnika.vatera.hu/szamitogep_laptop_tablet_kellek/billentyuzet_eger/eger/mini_vezetekes_optikai_eger_raktaron_fekete_piros_1853523983.html', null);
INSERT INTO `linkdb` VALUES ('MinÅ‘sÃ©gi gyÃ¡ri laptop tÃ¶ltÅ‘k 3hÃ³ GARIVAL!1851473243 TermÃ©keim kÃ¶zÃ¶tt egyÃ©b tÃ¶ltÅ‘k is megtalÃ¡lhatÃ³k! ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/tolto_adapter/egyeb/minosegi_gyari_laptop_toltok_3ho_garival_1851473243.html', null);
INSERT INTO `linkdb` VALUES ('MinÅ‘sÃ©gi Laptop, notebook hÅ±tÅ‘! AKCIÃ“S ÃRON!!1855267766 A LEGJOBB ÃRON LEGJOBB MINÅSÃ‰G!!!!!!!! ', 'http://szamitastechnika.vatera.hu/szamitogep_laptop_tablet_kellek/laptop_notebook_tarto/minosegi_laptop_notebook_huto_akcios_aron_1855267766.html', null);
INSERT INTO `linkdb` VALUES ('MSI Adora 24 0M-001EU Touch Adora240M-001EU-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276331', null);
INSERT INTO `linkdb` VALUES ('MSI Adora 24 0M-005EU Touch Adora240M-005EU-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276337', null);
INSERT INTO `linkdb` VALUES ('MSI CR41-i587 - i5-3210M 4GB/500GB 35,8 cm 14&quot;HD+ n/BT W8 001485-SKU1  Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541412264', null);
INSERT INTO `linkdb` VALUES ('MSI CR70-i545 - i5-3230M 4GB/500GB 43,9cm 17&quot;HD+ n/BT Win7 HP 001755-SKU8 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1551995922', null);
INSERT INTO `linkdb` VALUES ('MSI CX61 - i3-4000M, 15.6FULL HD, 500 GB, 8GB, Geforce GT 720M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575904248', null);
INSERT INTO `linkdb` VALUES ('MSI CX61 - i3-4000M, 15.6FULL HD, 500 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575904245', null);
INSERT INTO `linkdb` VALUES ('MSI CX70 - i5-4200M, 17.3HD+, 750 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575904263', null);
INSERT INTO `linkdb` VALUES ('MSI CX70 - i7-4702MQ, 17.3HD+, 1000 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575904257', null);
INSERT INTO `linkdb` VALUES ('MSI CX70 0NF-204 - i5-3230M 8GB/750GB 43,9cm 17&quot; FHD+ GT645M n/BT W8 001755-SKU6 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1551995937', null);
INSERT INTO `linkdb` VALUES ('MSI CX70 0NF-204CZ NB118y Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541412285', null);
INSERT INTO `linkdb` VALUES ('MSI CX70-I740M281 - i7- 4700MQ 8GB/1TB 43,9cm NVIDIA GeForce GT 740M Grafik n/BT W7HP 001755-SKU7 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1551995973', null);
INSERT INTO `linkdb` VALUES ('MSI GE40 - i7-4702MQ, 14HD+, 1000 GB+128 GB, 8GB, Geforce GTX 760M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563039654', null);
INSERT INTO `linkdb` VALUES ('MSI GE40 - i7-4702MQ, 14HD+, 1000 GB, 8GB, Geforce GTX 760M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1553570100', null);
INSERT INTO `linkdb` VALUES ('MSI GE40 - i7-4702MQ, 14HD+, 500 GB, 8GB, Geforce GTX 760M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575904296', null);
INSERT INTO `linkdb` VALUES ('MSI GE40-i760M245FD Gaming Notebook [35,6cm (14&quot;) / i7-4702MQ / 4GB / 500GB / 760M] 001492-3 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557643662', null);
INSERT INTO `linkdb` VALUES ('MSI GE40-i760M2811 [35,56cm (14&quot;) / i7-4702MQ / 8GB / SSD+HDD / 760M / Win8] 001492-SKU1 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552742829', null);
INSERT INTO `linkdb` VALUES ('MSI GE40-i760M285W7 Gaming Notebook [35,6cm (14&quot;) / i7-4702MQ / 8GB / 500GB / 760M / Win7] 001492-7 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557643671', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 - i5-3230M, 15.6FULL HD, 500 GB, 4GB, Geforce GT 750M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562752137', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 - i5-4200M, 15.6FULL HD, 500 GB, 4GB, Geforce GT 750M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985426', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 - i5-4200M, 15.6FULL HD, 500 GB, 4GB, Geforce GTX 765M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562752134', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 - i5-4200M, 15.6FULL HD, 500 GB, 4GB, Geforce GTX 765M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562752131', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 - i5-4200M, 15.6FULL HD, 500 GB, 8GB, Geforce GTX 765M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1565835405', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 - i7-3630QM, 15.6FULL HD, 750 GB, 8GB, Geforce GT 650M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985417', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 - i7-4700MQ, 15.6FULL HD, 1000 GB+128 GB, 12GB, Geforce GTX 765M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562752092', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 - i7-4700MQ, 15.6FULL HD, 1000 GB+128 GB, 8GB, Geforce GTX 765M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985459', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 - i7-4700MQ, 15.6FULL HD, 1000 GB, 8GB, Geforce GT 750M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562752122', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 - i7-4700MQ, 15.6FULL HD, 1000 GB, 8GB, Geforce GTX 765M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985408', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 - i7-4700MQ, 15.6FULL HD, 500 GB, 4GB, Geforce GT 750M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985423', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 - i7-4700MQ, 15.6FULL HD, 500 GB, 4GB, Geforce GT 750M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562752125', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 - i7-4700MQ, 15.6FULL HD, 500 GB, 4GB, Geforce GTX 765M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985414', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 - i7-4700MQ, 15.6FULL HD, 500 GB, 4GB, Geforce GTX 765M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985411', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 0NC-059CZ NB068a1 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552506408', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 0NC-059CZ NB068fa5 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552506420', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 0NC-482CZ NB068fa4 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552506441', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 0ND-464CZ NB068fa2 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552582653', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 0ND-465XCZ NB068fa3 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552582623', null);
INSERT INTO `linkdb` VALUES ('MSI GE60 i7-3630QM,4GB DDR3, GTX660 MSI GE60-i760M24 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1536004476', null);
INSERT INTO `linkdb` VALUES ('MSI GE60-i550M245- i5-3210M 4GB/500GB 39,6cm 15&quot; 0016GA-SKU4 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541233206', null);
INSERT INTO `linkdb` VALUES ('MSI GE60-i550M245- i5-3210M 8GB/500GB 39,6cm 15&quot;FHD GT650M n/BT W8 1C17-1C8 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1551995946', null);
INSERT INTO `linkdb` VALUES ('MSI GE60-i565M245FD Gaming Notebook [39,6cm (15.6&quot;) / i5-4200M / 4GB / 500GB / 765M] 0016GC-SKU6 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568324058', null);
INSERT INTO `linkdb` VALUES ('MSI GE60-i750M281FD Gaming Notebook [39,6cm (15.6&quot;) / i7-4700MQ / 8GB / 1TB / 750M] 0016GC-SKU4 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556152125', null);
INSERT INTO `linkdb` VALUES ('MSI GE60-i750M287- i7-3630QM 8GB/750GB 39,6cm 15&quot;FHD GT650M Windows8 0016GA-SKU3 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541233224', null);
INSERT INTO `linkdb` VALUES ('MSI GE60-i760M245 - i7-3630QM 4GB 500GB FHD 1C17-1CE Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552063167', null);
INSERT INTO `linkdb` VALUES ('MSI GE60-i760M245 - i7-3630QM 4GB/500GB 39,6cm 15&quot;FHD GTX660M n/BT W8 0016GA-SKU11 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552063161', null);
INSERT INTO `linkdb` VALUES ('MSI GE60-i760M245 - i7-3630QM 4GB/500GB 39,6cm 15&quot;FHD GTX660M n/BT W8 1C17-1C0 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552063164', null);
INSERT INTO `linkdb` VALUES ('MSI GE60-i760M245FD- i7-3630QM 8GB/500GB 39,6cm 15&quot;FHD GTX660M DOS 1C17-1AT Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1551995982', null);
INSERT INTO `linkdb` VALUES ('MSI GE60-i760M281FD 0016GA-SKU20 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552063179', null);
INSERT INTO `linkdb` VALUES ('MSI GE60-i765M245FD Gaming Notebook [39,6cm (15.6&quot;) / i7-4700MQ / 4GB / 500GB / 765M] 0016GC-SKU8 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568324061', null);
INSERT INTO `linkdb` VALUES ('MSI GE60-i765M281B [39,6cm (15.6&quot;) / i7-4700MQ / 8GB / 1TB / 765M / Win8] 0016GC-SKU14 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552742844', null);
INSERT INTO `linkdb` VALUES ('MSI GE60H-i560M2865FD i5-3210M 8GB/500GB+64GBSSD 39,6cm 15&quot; 0016GA-SKU7 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541233209', null);
INSERT INTO `linkdb` VALUES ('MSI GE60H-i760M2865FD i7-3630QM 8GB/500GB+64GB SSD 39,6cm 15&quot; 0016GA-SKU8 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541233221', null);
INSERT INTO `linkdb` VALUES ('MSI GE60H-i765M2811B [39,6cm (15.6&quot;) / i7-4700MQ / 8GB / SSD+HDD / 765M / Win8] 0016GC-SKU12 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552742862', null);
INSERT INTO `linkdb` VALUES ('MSI GE60PH-i765M21211 [39,6cm (15.6&quot;) / i7-4700MQ / 12GB / 2xSSD+HDD / 765M / Win8] 0016GC-SKU10 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552742868', null);
INSERT INTO `linkdb` VALUES ('MSI GE620DX-456CS NB067l Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552582620', null);
INSERT INTO `linkdb` VALUES ('MSI GE620DX-457CS NB067k Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541412279', null);
INSERT INTO `linkdb` VALUES ('MSI GE70 - i5-4200M, 17.3FULL HD, 1000 GB, 8GB, Geforce GT 750M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562752080', null);
INSERT INTO `linkdb` VALUES ('MSI GE70 - i5-4200M, 17.3FULL HD, 1000 GB, 8GB, Geforce GT 750M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985405', null);
INSERT INTO `linkdb` VALUES ('MSI GE70 - i5-4200M, 17.3FULL HD, 750 GB, 8GB, Geforce GT 750M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562752071', null);
INSERT INTO `linkdb` VALUES ('MSI GE70 - i5-4200M, 17.3FULL HD, 750 GB, 8GB, Geforce GT 750M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562752062', null);
INSERT INTO `linkdb` VALUES ('MSI GE70 - i5-4200M, 17.3FULL HD, 750 GB, 8GB, Geforce GTX 765M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1565835471', null);
INSERT INTO `linkdb` VALUES ('MSI GE70 - i7-4700MQ, 17.3FULL HD, 1000 GB, 8GB, Geforce GTX 765M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562897253', null);
INSERT INTO `linkdb` VALUES ('MSI GE70 - i7-4700MQ, 17.3FULL HD, 500 GB, 8GB, Geforce GT 750M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562752041', null);
INSERT INTO `linkdb` VALUES ('MSI GE70 0NC-260CZ NB068j4 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552582638', null);
INSERT INTO `linkdb` VALUES ('MSI GE70 0ND-289CZ NB068n Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552582644', null);
INSERT INTO `linkdb` VALUES ('MSI GE70 2OE-029CZ GE70 2OE-029CZ Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556027502', null);
INSERT INTO `linkdb` VALUES ('MSI GE70-i760M245 - i5-3230M 8GB 500GB 43,9cm 17&quot;FHD GTX660M n/BT DOS 001756-SKU9 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1551995952', null);
INSERT INTO `linkdb` VALUES ('MSI GE70-i760M245 - i7-3630QM 4GB/500GB 43,9cm 17&quot;FHD GTX660M n/BT W8 001756-SKU10 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552063185', null);
INSERT INTO `linkdb` VALUES ('MSI GE70-i760M287B - i7-3630QM 8GB/750GB Blu-ray 43,9cm 17&quot;FHD GTX660M n/BT W8 001756-SKU6 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552063200', null);
INSERT INTO `linkdb` VALUES ('MSI GE70-i765M245FD Gaming Notebook [43,9cm (17.3&quot;) / i7-4700MQ / 4GB / 500GB / 765M]   001757-8 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557717621', null);
INSERT INTO `linkdb` VALUES ('MSI GE70-i765M287 [43,9cm (17.3&quot;) / i7-4700MQ / 8GB / 750GB / 765M / Win8] 001757-SKU12 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552742856', null);
INSERT INTO `linkdb` VALUES ('MSI GE70H-i760M2817B - i7-3630QM 8GB/750GB+SSD 17&quot;FHD GTX660M Windows8 001756-SKU188 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552063206', null);
INSERT INTO `linkdb` VALUES ('MSI GE70PH - i7-4700MQ, 17.3FULL HD, 1000 GB+128 GB, 16GB, Geforce GTX 765M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562897250', null);
INSERT INTO `linkdb` VALUES ('MSI GE70PH-i765M21611B [43,9cm (17.3&quot;) / i7-4700MQ / 16GB / 2xSSD+HDD / 765M / Win8] 001757-SKU10 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552742871', null);
INSERT INTO `linkdb` VALUES ('MSI GP60 - i5-4200M, 15.6FULL HD, 750 GB, 8GB, Geforce GT 740M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562752086', null);
INSERT INTO `linkdb` VALUES ('MSI GP60 - i5-4200M, 15.6FULL HD, 750 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562752089', null);
INSERT INTO `linkdb` VALUES ('MSI GP60 - i7-4700MQ, 15.6FULL HD, 500 GB, 4GB, Geforce GT 740M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562897181', null);
INSERT INTO `linkdb` VALUES ('MSI GP60 - i7-4700MQ, 15.6FULL HD, 500 GB, 4GB, Geforce GT 740M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985402', null);
INSERT INTO `linkdb` VALUES ('MSI GP60 - i7-4700MQ, 15.6FULL HD, 500 GB, 8GB, Geforce GT 740M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926074', null);
INSERT INTO `linkdb` VALUES ('MSI GP70 - i7-4700MQ, 17.3FULL HD, 750 GB, 8GB, Geforce GT 740M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562245044', null);
INSERT INTO `linkdb` VALUES ('MSI GP70 - i7-4700MQ, 17.3FULL HD, 750 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985399', null);
INSERT INTO `linkdb` VALUES ('MSI GS70 - i5-4200M, 17.3FULL HD, 1000 GB, 8GB, Geforce GTX 765M 2GB LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985396', null);
INSERT INTO `linkdb` VALUES ('MSI GS70 - i5-4200M, 17.3FULL HD, 1000 GB, 8GB, Geforce GTX 765M 2GB, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985393', null);
INSERT INTO `linkdb` VALUES ('MSI GS70 - i7-4700HQ, 17.3FULL HD, 1000 GB+128 GB, 16GB, Geforce GTX 765M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985390', null);
INSERT INTO `linkdb` VALUES ('MSI GS70 - i7-4700HQ, 17.3FULL HD, 1000 GB, 8GB, Geforce GTX 765M 2GB LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985387', null);
INSERT INTO `linkdb` VALUES ('MSI GS70 - i7-4700HQ, 17.3FULL HD, 1000 GB, 8GB, Geforce GTX 765M 2GB, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985384', null);
INSERT INTO `linkdb` VALUES ('MSI GS70 - i7-4700MQ, 17.3FULL HD, 1000 GB+128 GB, 16GB, Geforce GTX 765M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563171741', null);
INSERT INTO `linkdb` VALUES ('MSI GS70 - i7-4700MQ, 17.3FULL HD, 1000 GB+128 GB, 8GB, Geforce GTX 765M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059436', null);
INSERT INTO `linkdb` VALUES ('MSI GS70 - i7-4700MQ, 17.3FULL HD, 256 GB+1000 GB, 16GB, Geforce GTX 765M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562245035', null);
INSERT INTO `linkdb` VALUES ('MSI GS70 - i7-4700MQ, 17.3FULL HD, 750 GB+128 GB, 8GB, Geforce GTX 765M 2GB LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060375', null);
INSERT INTO `linkdb` VALUES ('MSI GS70 - i7-4700MQ, 17.3FULL HD, 750 GB+128 GB, 8GB, Geforce GTX 765M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563171777', null);
INSERT INTO `linkdb` VALUES ('MSI GT60 - i5-4200M, 15.6FULL HD, 1000 GB, 8GB, Geforce GTX 770M 3GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059346', null);
INSERT INTO `linkdb` VALUES ('MSI GT60 - i5-4200M, 15.6FULL HD, 750 GB, 8GB, Geforce GTX 770M 3GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059337', null);
INSERT INTO `linkdb` VALUES ('MSI GT60 - i5-4200M, 15.6FULL HD, 750 GB, 8GB, Geforce GTX 770M 3GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719422', null);
INSERT INTO `linkdb` VALUES ('MSI GT60 - i7-4700MQ, 15.6FULL HD, 750 GB+128 GB, 16GB, Geforce GTX 780M 4GB, Blu-Ray, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059742', null);
INSERT INTO `linkdb` VALUES ('MSI GT60 2OC-040CZ NB116m1c Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552657284', null);
INSERT INTO `linkdb` VALUES ('MSI GT60 2OC-041CZ NB116m1b Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552657275', null);
INSERT INTO `linkdb` VALUES ('MSI GT60 2OC-042CZ NB116m1a Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552657290', null);
INSERT INTO `linkdb` VALUES ('MSI GT60 2OD-043CZ MSI GT60 2OD-043CZ Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556027493', null);
INSERT INTO `linkdb` VALUES ('MSI GT660-475CS NB066y Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552506390', null);
INSERT INTO `linkdb` VALUES ('MSI GT683-656CS NB115d2 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552582647', null);
INSERT INTO `linkdb` VALUES ('MSI GT683DXR-650CS NB115b4 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552582656', null);
INSERT INTO `linkdb` VALUES ('MSI GT70 - i7-3630QM, 17.3FULL HD, 750 GB+128 GB, 8GB, Geforce GTX 680M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985453', null);
INSERT INTO `linkdb` VALUES ('MSI GT70 - i7-4700MQ, 17.3FULL HD, 1000 GB+128 GB, 16GB, Geforce GTX 770M 3GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562897217', null);
INSERT INTO `linkdb` VALUES ('MSI GT70 - i7-4700MQ, 17.3FULL HD, 1000 GB+128 GB, 8GB, Geforce GTX 770M 3GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562897214', null);
INSERT INTO `linkdb` VALUES ('MSI GT70 - i7-4700MQ, 17.3FULL HD, 1000 GB+128 GB, 8GB, Geforce GTX 780M 4GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985381', null);
INSERT INTO `linkdb` VALUES ('MSI GT70 - i7-4700MQ, 17.3FULL HD, 1000 GB+128 GB, 8GB, Geforce GTX 780M 4GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985378', null);
INSERT INTO `linkdb` VALUES ('MSI GT70 - i7-4700MQ, 17.3FULL HD, 1000 GB+128 GB, 8GB, Geforce GTX 780M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562897211', null);
INSERT INTO `linkdb` VALUES ('MSI GT70 - i7-4700MQ, 17.3FULL HD, 1000 GB+256 GB, 12GB, Geforce GTX 780M 4GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985372', null);
INSERT INTO `linkdb` VALUES ('MSI GT70 - i7-4700MQ, 17.3FULL HD, 1000 GB+384 GB, 16GB, Geforce GTX 780M 4GB, Blu-Ray, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985369', null);
INSERT INTO `linkdb` VALUES ('MSI GT70-70M387B [43,9cm (17.3&quot;) / i7-4700MQ / 8GB / 750GB / 770M / Win8] 001763-SKU26 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552742880', null);
INSERT INTO `linkdb` VALUES ('MSI GT70-75X287B - i7-3630QM 8GB 750GB 43,9cm 17&quot;FHD GTX675MX W8 001762-SKU10 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552063227', null);
INSERT INTO `linkdb` VALUES ('MSI GT70H-70M3811B [43,9cm (17.3&quot;) / i7-4700MQ / 8GB / SSD+HDD / 770M / Win8] 001763-SKU24 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552742883', null);
INSERT INTO `linkdb` VALUES ('MSI GT70H-75X4817B Gaming Notebook [43,9cm (17.3&quot;) /i7-3630QM /8GB /SSD+HDD /675MX /Win8] 001762-SKU11 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556152128', null);
INSERT INTO `linkdb` VALUES ('MSI GT70H-804817B - i7-3630QM 8GB/750GB+128GB 17&quot; 001762-SKU25 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541412252', null);
INSERT INTO `linkdb` VALUES ('MSI GT70H-80M4811B [43,9cm (17.3&quot;) / i7-4700MQ / 8GB / SSD+HDD / 780M / Win8] 001763-SKU20 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552742898', null);
INSERT INTO `linkdb` VALUES ('MSI GT70PH-70M3827B [43,9cm (17.3&quot;) / i7-4700MQ / 8GB / 2xSSD+HDD / 770M / Win8] 001763-SKU22 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552742892', null);
INSERT INTO `linkdb` VALUES ('MSI GT70PH-75X41217B-R - Dragon-Edition + Aj&aacute;nd&eacute;k t&aacute;ska! 1C17-1AW Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552063239', null);
INSERT INTO `linkdb` VALUES ('MSI GT70PH-75X41217B-R Dragon Edition 001762-SKU30 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541233194', null);
INSERT INTO `linkdb` VALUES ('MSI GT70PH-75X41617B - i7-3630QM 16GB/750GB+128GB 17&quot; 001762-SKU7 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541233191', null);
INSERT INTO `linkdb` VALUES ('MSI GT70PH-8041627W - i7-3630QM 16GB/750GB+256GB 17&quot; 001762-SKU21 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541233203', null);
INSERT INTO `linkdb` VALUES ('MSI GT70PH-8041627WR - i7-3630QM 16GB/750GB+256GB 17&quot; 001762-SKU22 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541233200', null);
INSERT INTO `linkdb` VALUES ('MSI GT70PH-804167B - i7-3630QM 16GB/750GB+128GB 43,9cm 17&quot; 001762-SKU24 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541233197', null);
INSERT INTO `linkdb` VALUES ('MSI GT70SR2-80M41637BW [43,9cm (17.3&quot;) / i7-4700MQ / 16GB / 3xSSD+HDD / 780M / Win8] 001763-SKU16 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552742904', null);
INSERT INTO `linkdb` VALUES ('MSI GT70SR2-80M41637BWR Dragon Edition [43,9cm (17.3&quot;) / i7-4700MQ / 16GB / 3xSSD+HDD / 780M / Win8] 001763-SKU17 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552742913', null);
INSERT INTO `linkdb` VALUES ('MSI GT70SR2-x80M43237BW [43,9cm (17.3&quot;) / i7-4930MX / 32GB / 3xSSD+HDD / 780M / Win8] 001763-SKU11 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552742916', null);
INSERT INTO `linkdb` VALUES ('MSI GT70SR2-x80M43237BWR Dragon Edition [43,9cm (17.3&quot;) / i7-4930MX / 32GB / 3xSSD+HDD / 780M / Win8] 001763-SKU10 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552742919', null);
INSERT INTO `linkdb` VALUES ('MSI GT740-053XCZ NB067o Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552582659', null);
INSERT INTO `linkdb` VALUES ('MSI GX60 - A10 5750M, 15.6FULL HD, 1000 GB+128 GB, 8GB, Radeon HD 8970 2GB, Blu-Ray, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563171771', null);
INSERT INTO `linkdb` VALUES ('MSI GX60 - A10 5750M, 15.6FULL HD, 1000 GB, 8GB, Radeon HD 8970M 2GB, Blu-Ray LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926164', null);
INSERT INTO `linkdb` VALUES ('MSI GX60 - A10 5750M, 15.6FULL HD, 750 GB, 8GB, Radeon HD 8970M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985366', null);
INSERT INTO `linkdb` VALUES ('MSI GX60 - A10 5750M, 15.6FULL HD, 750 GB, 8GB, Radeon HD 8970M 2GB, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574985363', null);
INSERT INTO `linkdb` VALUES ('MSI GX60 1AC-058CZ GX60 1AC-058CZ Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556027490', null);
INSERT INTO `linkdb` VALUES ('MSI GX60 3AE-214XCZ GX60 3AE-214XCZ Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556027532', null);
INSERT INTO `linkdb` VALUES ('MSI GX70 - A10 5750, 17.3FULL HD, 1000 GB+128 GB, 12GB, Radeon HD 8970M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719584', null);
INSERT INTO `linkdb` VALUES ('MSI GX70 - A10 5750M, 17.3FULL HD, 750 GB, 8GB, Radeon HD 8970M 2GB, DVD RW LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575904305', null);
INSERT INTO `linkdb` VALUES ('MSI GX70 3BE-016XCZ GX70 3BE-016XCZ. Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1568324049', null);
INSERT INTO `linkdb` VALUES ('MSI GX70 3BE-027CZ GX70 3BE-027CZ Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556027520', null);
INSERT INTO `linkdb` VALUES ('MSI GX70H - A10 5750M, 17.3FULL HD, 1000 GB+128 GB, 8GB, Radeon HD 8970M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1562897184', null);
INSERT INTO `linkdb` VALUES ('MSI GX70H-A108972811B - Gaming-Power AMD Radeon HD 8970M Full-HD Display  00176K-SKU1 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557211815', null);
INSERT INTO `linkdb` VALUES ('MSI S20-i541 - i5-3337U 4GB/128GB SSD 11&quot;FHD n/BT W8 001161-SKU1 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1541233176', null);
INSERT INTO `linkdb` VALUES ('MSI VR-601 laptop akkuhibÃ¡s. szÃ©p Ã¡llapot1854288266 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/msi/msi_classic/msi_vr_601_laptop_akkuhibas_szep_allapot_1854288266.html', null);
INSERT INTO `linkdb` VALUES ('MSI Wind Top AE1921-WD5252G32S7VSX 00A92313-SKU2P Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1554700842', null);
INSERT INTO `linkdb` VALUES ('MSI WIND TOP AE2031-006EU AE2031-003EU Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1542103734', null);
INSERT INTO `linkdb` VALUES ('MSI WIND TOP AE220-002EU - Feh&eacute;r AE220-002EU-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276262', null);
INSERT INTO `linkdb` VALUES ('MSI WIND TOP AP2021-016XEU AP2021-016XEU Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1555453950', null);
INSERT INTO `linkdb` VALUES ('MSI WIND TOP AP2021-017XEU AP2021-017XEU Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1555369449', null);
INSERT INTO `linkdb` VALUES ('MSI Wind Top AP2021-B33224G50S7VMX 00AA7211-SKU1P Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1554700863', null);
INSERT INTO `linkdb` VALUES ('MSI Wind Top AP2021-W33224G50S7VMX 00AA7212-SKU1P Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1554700860', null);
INSERT INTO `linkdb` VALUES ('Notebook - laptop h&ucirc;t&otilde; 3 ventill&aacute;torral', 'http://www.grando.hu/product/view/?id=1567198941', null);
INSERT INTO `linkdb` VALUES ('Notebook - laptop h&ucirc;t&otilde; E-TABLE', 'http://www.grando.hu/product/view/?id=1567198944', null);
INSERT INTO `linkdb` VALUES ('Notebook - laptop t&aacute;ska / 7 f&eacute;le design kivitel, 14&quot; vagy 16&quot; /', 'http://www.grando.hu/product/view/?id=1561667805', null);
INSERT INTO `linkdb` VALUES ('Notebook h&ucirc;t&otilde; / Laptop tart&oacute; kompakt &ouml;sszecsukhat&oacute; asztalka / E-TABLE', 'http://www.grando.hu/product/view/?id=1557937662', null);
INSERT INTO `linkdb` VALUES ('NOTEBOOK SAMSUNG ATIV BOOK NP450R5E-X01CZ WIN8 NP450R5E-X01CZ00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276382', null);
INSERT INTO `linkdb` VALUES ('Notebook,laptop 15.6? t&aacute;ska v&aacute;llp&aacute;nttal', 'http://www.grando.hu/product/view/?id=1568824665', null);
INSERT INTO `linkdb` VALUES ('Optibay laptop notebook keret HDD SSD DVD helyÃ©re1851781289 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_alkatresz/laptop_notebook_keret/optibay_laptop_notebook_keret_hdd_ssd_dvd_helyere_1851781289.html', null);
INSERT INTO `linkdb` VALUES ('P550CA-XO330G Business Notebook (39cm(15,6&quot;); Core i5; 4GB; 500GB; Win7) P550CA-XO330G-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1566096756', null);
INSERT INTO `linkdb` VALUES ('Packard Bell EasyNote LV11HC-137GE i5-3210M Ivy Bridge 500GB GT630M Win8  NX.C1DEG.079 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1556957640', null);
INSERT INTO `linkdb` VALUES ('Packard Bell EasyNote TV11HC-157GE i5-3210M 8GB GT630M Win8 NX.C0KEG.037+4GB Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557211761', null);
INSERT INTO `linkdb` VALUES ('Packard Bell EasyNote TV44HC-32344G50Mnwb Intel Core i3 8GB/500GB Win8 NX.C24EG.001+4GB Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557211749', null);
INSERT INTO `linkdb` VALUES ('ProBook 4740s Core i5-3230M 2,6GHz 4GB 750GB DVD?RW 17,3&quot;HD+ AMD7650M/1GB CAM WL BT Win 8 Pro H5K51EA Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1546729527', null);
INSERT INTO `linkdb` VALUES ('Retro 486 DX2-50MHz,Compaq,szÃ­nes laptop,mÅ±kÃ¶dik!!1856643995 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/egyeb/retro_486_dx2_50mhz_compaq_szines_laptop_mukodik_1856643995.html', null);
INSERT INTO `linkdb` VALUES ('REVIEW - Samsung Notebook Serie 3 350V5C S07 350v5c/SAMSUNG Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1550236242', null);
INSERT INTO `linkdb` VALUES ('Samsung 540U Touch - i5 3317  13.3&quot; 4GB/500GB  +24GB WIn8 NS535b100 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458294', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 270E - i5 3230 15.6&quot; 8GB/750GB HDD Geforce 710M 2GB Win8 SANB0201e00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458270', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 4 NP400B2B A01 - i5-2450M, 12.5HD, 500 GB, 4GB, HD Graphics 3000, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719728', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 4 NP450R5E X01 - i3-3120M, 15.6HD, 500 GB, 4GB, Geforce 710M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1552515453', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 4 NP470R4E K01 - i5-3230M, 14HD, 500 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719455', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV BOOK 5 (NP470R4E-K01CZ) WIN8 NP470R4E-K01CZ00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1569197319', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 5 530U3C K01 Ultrabook Core i7 Windows 8 NP530U3C-K01DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245153', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 5 530U3C K02  Core i5, 4GB, 500GB, + Windows 8   NP530U3C-K02DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276412', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 530U Black SANB0501h00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458309', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 530U SANB0501e00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458306', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 6 670Z5E X01 Notebook i5 HD8850M Windows 8 NP670Z5E-X01DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245171', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV BOOK 6 NP670Z5E-X01CZ WIN8 NP670Z5E-X01CZ00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276379', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 670Z SANB060100 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458318', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 7 730U3E X03 Ultrabook NP730U3E-X03DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245150', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 7 730U3E X04 Ultrabook NP730U3E-X04DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458237', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 7 730U3E X05 Ultrabook NP730U3E-X05DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245174', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 7 730U3E X06 Ultrabook NP730U3E-X06DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1569766929', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 7 740U3E Touch Ultrabook NP740U3E-X01DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245192', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 7 NP730U3E X01 - i5-3337U, 13.3FULL HD, 128 GB, 4GB, Radeon HD 8570M 1GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1568719431', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 7 NP730U3E X02 - i5-3337U, 13.3FULL HD, 128 GB, 4GB, Radeon HD 8570M 1GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1558173483', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 7 NP730U3E X03 - i5-3337U, 13.3FULL HD, 128 GB, 4GB, Radeon HD 8570M 1GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1566302121', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 7 NP730U3E X04 - i7-3537U, 13.3FULL HD, 256 GB, 4GB, Radeon HD 8570M 1GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1566302118', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 7 NP730U3E X05 - i5-3337U, 13.3FULL HD, 128 GB, 4GB, Radeon HD 8570M 1GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1558072620', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 7 NP730U3E X06 - i7-3537U, 13.3FULL HD, 256 GB, 4GB, Radeon HD 8570M 1GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1558072611', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 7 NP740U3E X02 - i5-3337U, 13.3FULL HD, 128 GB, 4GB, Radeon HD 8570M 1GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568720091', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV BOOK 7 NP740U3E-X02CZ WIN8 NP740U3E-X02CZ00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276376', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 730U Black SANB0701a00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458339', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 740U Touch SANB0701e00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458348', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 8 870Z5E X04 NP870Z5E-X04DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245210', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 8 NP870Z5E X04 - i7-3635QM, 15.6FULL HD, 1000 GB, 8GB, Radeon HD 8870M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1566302112', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 8 NP880Z5E X01 - i7-3635QM, 15.6FULL HD, 1000 GB, 8GB, Radeon HD 8870M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1558072614', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 8 Touch 880Z5E X01 NP880Z5E-X01DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1569766926', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 870Z Bare Metal SANB0801c00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458360', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 870Z i7-3635QM 8GB 1TB 15.6&quot; HD8870M/2GB Win8 Pro NP870Z5E-X03CZ00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276397', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 9 900X3E K06 Premium Ultrabook NP900X3E-K06DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458261', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 9 900X3F G01 Premium Ultrabook + LTE / UMTS NP900X3F-G01DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245222', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 9 900X3F K01 Premium Ultrabook NP900X3F-K01DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245165', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 9 900X4D K01 Premium Ultrabook NP900X4D-K01DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245189', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 9 Lite 905S3G K01 NP905S3G-K01100 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1569410982', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 9 Lite 905S3G K01 NP905S3G-K01DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567183971', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 9 Lite 905S3G K02 + AMD QuadCore, 4GB, 128GB SSD NP905S3G-K02DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276472', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 9 Lite 915S3G K01 Touch Notebook NP915S3G-K01DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567183977', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 9 Lite Black SANB0902a00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458288', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 9 Lite NP915S3G K01 - A6 1450, 13.3HD, 128 GB, 4GB, Radeon HD 8250, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1566302109', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 9 Lite Touch 915S3G K02 Touch Notebook NP915S3G-K02DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567183989', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 9 Lite White - SANB0902b00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458279', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 9 NP900X3E K02 - i5-3337U, 13.3FULL HD, 256 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1566302145', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 9 NP900X3E K06 - i7-3537U, 13.3FULL HD, 512 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1558072602', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 9 NP900X3F G01 - i5-3337U, 13.3FULL HD, 256 GB, 4GB, HD Graphics 4000, 3G/HSPA+ (DL: 21Mbps, UL: 5.76Mbps) 4G/LTE UL:50 Mbps/DL:100 Mbps, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1558072617', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 9 NP900X3F K01 - i5-3337U, 13.3FULL HD, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1560707130', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 9 NP900X4D K01 - i5-3337U, 15HD+, 128 GB, 8GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1557728889', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 9 Plus 940X3G K01 Premium Touch Ultrabook NP940X3G-K01DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1569766923', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 9 Plus 940X3G K03 Premium Touch Ultrabook NP940X3G-K03DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458240', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 9 Plus 940X3G K05 + Core i7, 256GB SSD, Touchscreen  Windows 8 Pro NP940X3G-K05DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276478', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Book 9 Plus NP940X3G K03 - i5-4200U, 13.3QHD, 128 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1558072608', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 900X  Black SANB0901d100 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458351', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 900X i5-3337U(1.80GHz) 8GB 128GB SSD 15.0&quot; HD+ Win8 Pro NP900X4D-K03CZ00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276391', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 900X SANB0901d00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458342', null);
INSERT INTO `linkdb` VALUES ('Samsung ATIV Book 915S Black SANB0902c00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458300', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG ATIV Tab 7 XE700T1C G02 - 2117U, 11.6FULL HD, 128 GB, 4GB, HD Graphics 4000, UMTS, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567490952', null);
INSERT INTO `linkdb` VALUES ('Samsung laptop szÃ¼rke NP470R5E-X01HU1850948888 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/samsung/samsung_laptop_szurke_np470r5e_x01hu_1850948888.html', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG NOTEBOOK 370R NP370R5E-S01CZ WIN8 NP370R5E-S01CZ00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1571276385', null);
INSERT INTO `linkdb` VALUES ('Samsung Notebook Serie 4 410B2B A02 NP410B2B-A02DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567183983', null);
INSERT INTO `linkdb` VALUES ('Samsung Notebook Serie 4 410B2B H02 NP410B2B-H02DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245177', null);
INSERT INTO `linkdb` VALUES ('Samsung Notebook Serie 5 532U3C A01 NP532U3C-A01DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567183959', null);
INSERT INTO `linkdb` VALUES ('Samsung Notebook Serie 5 550P7C T0A Core i7 GT630M Windows 8 NP550P7C-T0ADE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245156', null);
INSERT INTO `linkdb` VALUES ('Samsung Notebook Serie 5 Ultra 530U3C A03 Ultrabook NP530U3C-A03DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567183974', null);
INSERT INTO `linkdb` VALUES ('Samsung Notebook Serie 5 Ultra 530U3C A0V NP530U3C-A0VV00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1569410949', null);
INSERT INTO `linkdb` VALUES ('Samsung Notebook Serie 6 600B4B AZ2 NP600B4B-AZ2DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567183950', null);
INSERT INTO `linkdb` VALUES ('Samsung Notebook Serie 6 600B4B HC2 NP600B4B-HC2DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567183968', null);
INSERT INTO `linkdb` VALUES ('Samsung Notebook Serie 7 Chronos 770Z5E S01 NP770Z5E-S01100 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1569766908', null);
INSERT INTO `linkdb` VALUES ('Samsung Notebook Serie 9 900X3C A05 Premium Ultrabook NP900X3C-A05DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245198', null);
INSERT INTO `linkdb` VALUES ('Samsung Notebook Serie 9 900X3E A01 Premium Ultrabook NP900X3E-A01DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458246', null);
INSERT INTO `linkdb` VALUES ('Samsung Notebook Serie 9 900X3E A03 Premium Ultrabook NP900X3E-A03DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245201', null);
INSERT INTO `linkdb` VALUES ('Samsung Notebook Serie 9 900X3E A05 Premium Ultrabook NP900X3E-A05DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567458249', null);
INSERT INTO `linkdb` VALUES ('Samsung NP-NC20 Laptop1853851058 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/samsung/samsung_np_nc20_laptop_1853851058.html', null);
INSERT INTO `linkdb` VALUES ('Samsung NP-NC20 Laptop1856333936 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/samsung/samsung_np_nc20_laptop_1856333936.html', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG NP-R60 Laptop 2GB RAM, 500GB HDD1856977919 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/samsung/samsung_np_r60_laptop_2gb_ram_500gb_hdd_1856977919.html', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG NP370R5E-S01 - i5-3210M, 15.6HD, 1000 GB, 4GB, Radeon HD 8750M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567491933', null);
INSERT INTO `linkdb` VALUES ('Samsung NP400B2B (Core i5-2450M/4GB DDR3/500GB HDD/HD3000/12.5&quot; LED/WIN7 HP-64) (NP400B2B-A01HU) notebook, laptop', 'http://www.grando.hu/product/view/?id=1521275322', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG NP410 Laptop NP410B2B H02 - i5-2450M, 12.5HD, 256 GB, 4GB, HD Graphics 3000, DVD RW, Win7 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1566302244', null);
INSERT INTO `linkdb` VALUES ('Samsung NP470R5E-X01HU (bare metal) (Core i5 3230M/15,6&quot; LED/8GB/1TB/Radeon 8750M/WIN8) notebook, laptop', 'http://www.grando.hu/product/view/?id=1574961441', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG NP530U3C-A033 NP530U3C-A03300 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1569410907', null);
INSERT INTO `linkdb` VALUES ('Samsung NP530U4E-X01HU (mineral ash black) (Core i5 3337U/14&quot; LED/4GB/500GB/Radeon 8750M/WIN8) notebook, laptop', 'http://www.grando.hu/product/view/?id=1575320196', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG NP540 Laptop NP540U4E K01 - i5-3337U, 14HD, 500 GB+24 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1566302148', null);
INSERT INTO `linkdb` VALUES ('Samsung NP540U4E-K01HU (mineral ash black) (Core i5 3337U/14&quot; LED/4GB/500GB/Intel HD/WIN8) notebook, laptop', 'http://www.grando.hu/product/view/?id=1550147226', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG NP670 Laptop NP670Z5E-X01 - i5-3230M, 15.6HD, 1000 GB, 8GB, Radeon HD 8850M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1553509482', null);
INSERT INTO `linkdb` VALUES ('Samsung NP740U3E-X01HU (mineral ash black) (Core i5 3337U/13,3&quot; LED/4GB/128 GB SSD/Radeon 8570M/WIN8) notebook, laptop', 'http://www.grando.hu/product/view/?id=1550147229', null);
INSERT INTO `linkdb` VALUES ('SAMSUNG NP900 Laptop NP900X3E A03 - i5-3317U, 13.3FULL HD, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1550242467', null);
INSERT INTO `linkdb` VALUES ('Samsung NP900X3E-K01HU (mineral ash black) (Core i7 3537U/13,3&quot; LED/4GB/256GB SSD/Intel HD/WIN8) notebook, laptop', 'http://www.grando.hu/product/view/?id=1550147238', null);
INSERT INTO `linkdb` VALUES ('Samsung NP900X3E-K02HU (mineral ash black) (Core i5 3337U/13,3&quot; LED/4GB/256GB SSD/Intel HD/WIN8) notebook, laptop', 'http://www.grando.hu/product/view/?id=1550147235', null);
INSERT INTO `linkdb` VALUES ('Samsung Serie 5 Ultra 530U3C A0N NP530U3C-A0DD Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1557717660', null);
INSERT INTO `linkdb` VALUES ('Samsung Serie 7 740U3E S01 Touch Ultrabook NP740U3E-S01DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1567245207', null);
INSERT INTO `linkdb` VALUES ('Samsung Serie 7 Slate PC XE700T1A H01 XE700T1A-H01DE00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1569410913', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Duo 11 SV-D1121P2E/B Hybrid Touch Ultrabook SVD1121P2EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976537', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Duo 13 SV-D1321M2E/W Hybrid Ultrabook SVD1321M2EW.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050493', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Duo 13 SV-D1321M2E/W Hybrid Ultrabook SVD1322X2EW.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050553', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Duo 13 SV-D1321M9E/B Hybrid Ultrabook SVD1321M9EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050496', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Duo 13 SV-D1321X9E/W Hybrid Ultrabook SVD1321X9EW.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050502', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Duo 13 SV-D1321Z9E/B Hybrid Touch Ultrabook  SVD1321Z9EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050544', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO DUO 13 SV-D1322U9E/B Hybrid Touch Ultrabook SVD1322U9EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050538', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO Duo 13 SVD1321M2E/W - i5-4200U, 13.3FULL HD, 128 GB, 4GB, HD Graphics 4400, UMTS, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1553684598', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO Duo 13 SVD1321X9E/W - i7-4500U, 13.3FULL HD, 128 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1553684595', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO Duo 13 SVD1321Z9E/B - i7-4500U, 13.3FULL HD, 256 GB, 8GB, HD Graphics 4400, 4G, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1576098885', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO Duo 13 SVD1321Z9E/B - i7-4500U, 13.3FULL HD, 256 GB, 8GB, HD Graphics 4400, UMTS, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1557728934', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO Duo 13 SVD1322U2E/W - i5-4200U, 13.3FULL HD, 128 GB, 8GB, HD Graphics 4400, 4G, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1576098879', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO Duo 13 SVD1322U9E/B - i5-4200U, 13.3FULL HD, 128 GB, 8GB, HD Graphics 4400, UMTS, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1576098873', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO Duo 13 SVD1322X2E/W - i5-4200U, 13.3FULL HD, 128 GB, 8GB, HD Graphics 4400, UMTS, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1576098870', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO FIT 11A - N2920, 11.6, 128 GB, 4GB, Integ., Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576098864', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO FIT 11A - N3520, 11.6, 128 GB, 4GB, Integ., Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576098858', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO FIT 14 SVF14N1E2E/S - 3556U, 14FULL HD, 500 GB, 4GB, Integ., Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576098918', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Fit 14E SV-F1421A4E/P Lifestyle Touch-Notebook SVF1421A4EP.AE1-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976462', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO FIT 14E SVF1421A4E/P - 987, 14HD, 500 GB, 4GB, HD Graphics, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1555192665', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO FIT 15 SVF1521F2E/W - i3-3217U, 15.5HD, 500 GB, 6GB, Geforce GT 740M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576098855', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO FIT 15 SVF1521I6E/W - 2117U, 15.5HD, 1000 GB, 8GB, Integ., DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576098852', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO FIT 15 SVF1521V1E/B - i5-3337U, 15.5HD, 1000 GB, 6GB, Geforce GT 740M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1557728925', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO FIT 15 SVF15N1Z2E/B - i7-4500U, 15.5QHD, 1000 GB+16 GB, 12GB, Geforce GT 735M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575968715', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Fit 15E SV-F1521E6E/B Allround Design Notebook SVF1521E6EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976519', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Fit 15E SV-F1521E6E/B Allround Design Notebook SVF1521E6EW.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976522', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Fit 15E SV-F1521F2E/W Allround Design Notebook SVF1521F2EW.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976528', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Fit 15E SV-F1521G1E/W Allround Design Notebook SVF1521G1EW.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976468', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Fit 15E SV-F1521I6E/W Notebook SVF1521I6EW.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976513', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Fit 15E SV-F1521O4E/B Notebook SVF1521O4EB.AE1-02 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976525', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Fit 15E SV-F1521V6E/B Allround Design Notebook SVF1521V6EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976531', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO FIT 15E SVF1521G6E/W - i3-3217U, 15.5HD, 500 GB, 4GB, Geforce GT 740M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567491135', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO FIT multi-flip 13 SVF13N1J2E/S - i3-4010U, 13.3FULL HD, 128 GB, 4GB, HD Graphics, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869244', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO Fit multi-flip 13 SVF13N1L2E/S  - i5-4200U, 13.3FULL HD, 128 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869241', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO FIT multi-flip 15 SVF15N1X2E/B - i5-4200U, 15.5QHD, 1000 GB+16 GB, 8GB, Geforce GT 735M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575968718', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO FIT multi-flip15 SVF15N1S2E/S - i5-4200U, 15.5FULL HD, 1000 GB+16 GB, 8GB, Geforce GT 735M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926188', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO FIT multi-flip15 SVF15N1S2E/S - i5-4200U, 15.5FULL HD, 1000 GB+16 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564642002', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO FIT SVF13N1X2E/S - i7-4500U, 13.3FULL HD, 128 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576098906', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO FIT SVF13N1Y9E/S - i7-4500U, 13.3FULL HD, 256 GB, 8GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869232', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Pro 11 SV-P1121M2E/B Ultrabook SVP1121M2EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050484', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO PRO 11 SV-P1121W9E/B Touch Ultrabook SVP1121W9EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050526', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Pro 11 SV-P1121Z9E/B Ultrabook SVP1121Z9EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050487', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO Pro 11 SVP1121M2E/B - i5-4200U, 11.6FULL HD, 128 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1553570112', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO Pro 11 SVP1121X9E/B - i5-4200U, 11.6FULL HD, 128 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1557728922', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Pro 11 SVP1121X9EB Ultrabook SVP1121X9EB-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050508', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO Pro 11 SVP1121Z9E/B - i7-4500U, 11.6FULL HD, 128 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1553570115', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO PRO 13 SV-P1321C6E/BI Subnotebook i5 Haswell SSD Windows 7 Pro SVP1321C6EBI.AE1-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050532', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO PRO 13 SV-P1321J1E/BI Subnotebook SVP1321J1EBI.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976534', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO PRO 13 SV-P1321M8EBI  SVP1321M8EBI-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050556', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Pro 13 SV-P1321M9E/B Pro Ultrabook SVP1321M9EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976489', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO PRO 13 SV-P1321S1E/BI Subnotebook SVP1321S1EBI.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050523', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO PRO 13 SV-P1321S9E/B Touch Ultrabook SVP1321S9EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050529', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO PRO 13 SV-P1321V9E/B Touch Ultrabook SVP1321V9EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050535', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Pro 13 SV-P1321X9E/B Pro Ultrabook SVP1321X9EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050490', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO Pro 13 SVP1321M2E/B - i5-4200U, 13.3FULL HD, 128 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1562113728', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Pro 13 SVP1321M2EB Pro Ultrabook SVP1321M2EB-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050511', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO Pro 13 SVP1321M8E/BI - i5-4200U, 13.3FULL HD, 128 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1570055517', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO Pro 13 SVP1321S1E/BI - i5-4200U, 13.3FULL HD, 128 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1570055523', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO Pro 13 SVP1321SiE/BI - i5-4200U, 13.3FULL HD, 128 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567491072', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO Pro 13 SVP1321X9E/B - i7-4500U, 13.3FULL HD, 128 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1553684592', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Pro Ultrabook SVP1321Y9EB 33,7cm (13,3&quot;) Full HD TRILUMINOS? Touch kijelz&otilde; SVP1321Y9EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050520', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO SV-E1713A1E/B Multimedia-Notebook SVE1713A1EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976465', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO SV-E1713A1E/B Multimedia-Notebook SVE1713A1EW.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976474', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO SV-E1713A4E/B SVE1713A4EB.AE1-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976471', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO SV-E1713C1E/B Multimedia-Notebook SVE1713C1EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976477', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO SV-E1713E1E/W Multimedia-Notebook SVE1713E1EW.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050478', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO SV-E1713Q1E/B Multimedia-Notebook SVE1713Q1EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976483', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO SV-E1713U1E/B VAIO Multimedia-Notebook SVE1713U1EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976486', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO SV-E1713X1E/B Notebook i7-3632QM Full HD HD7650M Blu-ray Windows 8 SVE1713X1EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976459', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO SV-E1713Y1E/B Multimedia-Notebook SVE1713Y1EB.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050481', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO SV-S1513V9E/B Notebook SVS1513V9EB.G4-00 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1569880743', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO SV-T1313S1E/S Touch Ultrabook SVT1313S1ES.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976480', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO SVE1712C224/B 17,3\" GAMER laptop1851458657 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/sony/sony_vaio_sve1712c224_b_17_3_gamer_laptop_1851458657.html', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO SVE1712V1E/B - i7-3632QM, 17.3FULL HD, 750 GB, 6GB, Radeon HD 7650M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576098963', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO SVE1712Z1EB 17,3\" FullHD Core i7 laptop1850705756 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/sony/sony_vaio_sve1712z1eb_17_3_fullhd_core_i7_laptop_1850705756.html', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO SVE1713A1E/B - 2020M, 17.3HD+, 500 GB, 4GB, Radeon HD 7650M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564642128', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO SVE1713A1E/W - 2020M, 17.3HD+, 500 GB, 4GB, Radeon HD 7650M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1560707124', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO SVE1713A4E/B - 2020M, 17.3HD+, 500 GB, 4GB, HD Graphics, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1551910569', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO SVE1713C222B 17,3\" FullHD Core i7 laptop1850312357 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/sony/sony_vaio_sve1713c222b_17_3_fullhd_core_i7_laptop_1850312357.html', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO SVE1713Q1E/B - i7-3632QM, 17.3HD+, 750 GB, 6GB, Radeon HD 7650M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564642107', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO SVE1713U1E/B - i7-3632QM, 17.3FULL HD, 750 GB, 4GB, Radeon HD 7650M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1564642101', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO SVE1713X1E/B - i7-3632QM, 17.3FULL HD, 750 GB, 8GB, Radeon HD 7650M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1551910542', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO SVE1713Y1E/B - i7-3632QM, 17.3FULL HD, 1000 GB, 8GB, Radeon HD 7650M 2GB, Blu-Ray, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1556967603', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO SVE1713Z1EB 17,3\" FullHD Core i7 laptop1850312369 2GB VGA, BLURAY-Ã­rÃ³, 1TB HDD, 1920x1080 felb. ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/sony/sony_vaio_sve1713z1eb_17_3_fullhd_core_i7_laptop_1850312369.html', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO SVF1521N4EW.AE1 SVF1521N4EW.AE1-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1574976540', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO SVT1121B2E/W - 3560Y, 11.6HD, 128 GB, 4GB, HD Graphics, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1576098888', null);
INSERT INTO `linkdb` VALUES ('SONY VAIO SVT1313S1ES - i5-3337U, 13.3HD, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1550702442', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Tap 11 SVT1121B2EW SVT1121A4EW.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050550', null);
INSERT INTO `linkdb` VALUES ('Sony VAIO Tap 11 SVT1121B2EW SVT1121B2EW.G4-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575050547', null);
INSERT INTO `linkdb` VALUES ('Table mate laptop asztal Ã¡llÃ­thatÃ³ asztal 3890.-Ft1856928263 ', 'http://butor-lakberendezes.vatera.hu/butor/asztal/szamitogepasztal/table_mate_laptop_asztal_allithato_asztal_3890_ft_1856928263.html', null);
INSERT INTO `linkdb` VALUES ('Toshiba laptop kÃ©tmagos Magyar 250gb hdd 1.5gb ram1856445236 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/toshiba/tecra/toshiba_laptop_ketmagos_magyar_250gb_hdd_1_5gb_ram_1856445236.html', null);
INSERT INTO `linkdb` VALUES ('Toshiba P770R nagykijelzÅ‘s gamer laptop csere is!!1851996992 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/toshiba/satellite/toshiba_p770r_nagykijelzos_gamer_laptop_csere_is_1851996992.html', null);
INSERT INTO `linkdb` VALUES ('Toshiba P770R nagykijelzÅ‘s gamer laptop csere is!3878924111 ', 'http://beta.vatera.hu/-i3878924111.html', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Port&eacute;g&eacute; Z10T-A-103 - i5-3339Y, 11.6, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567490838', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Port&eacute;g&eacute; Z10T-A-104 - i5-3339Y, 11.6, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1560707142', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Port&eacute;g&eacute; Z10T-A-10M - i5-3439Y, 11.6, 256 GB, 4GB, HD Graphics 4000, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926233', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Port&eacute;g&eacute; Z10T-A-111 - i5-3339Y, 11.6, 128 GB, 4GB, HD Graphics 4000, 3G, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059460', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Port&eacute;g&eacute; Z930 - i3-3227U, 13.3HD, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059994', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Port&eacute;g&eacute; Z930 - i3-3227U, 13.3HD, 128 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572868974', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Port&eacute;g&eacute; Z930 - i5-3337U, 13.3HD, 128 GB, 6GB, HD Graphics 4000, 3G, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572059280', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Port&eacute;g&eacute; Z930 - i5-3437U, 13.3HD, 128 GB, 6GB, HD Graphics 4000, 3G, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572059310', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Port&eacute;g&eacute; Z930 - i5-3437U, 13.3HD, 128 GB, 6GB, HD Graphics 4000, 3G/HSPA+ (DL: 21Mbps, UL: 5.76Mbps) 4G/LTE UL:50 Mbps/DL:100 Mbps, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1568719428', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Port&eacute;g&eacute; Z930 - i7-3687U, 13.3HD, 256 GB, 8GB, HD Graphics 4000, UMTS, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572060018', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Port&eacute;ge R930 - i5-3340M, 13.3HD, 256 GB, 4GB, HD Graphics 4000, DVD RW, UMTS, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059343', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Port&eacute;ge R930 - i5-3340M, 13.3HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1568719680', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Port&eacute;ge R930 - i5-3340M, 13.3HD, 500 GB, 4GB, HD Graphics 4000, UMTS, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567490832', null);
INSERT INTO `linkdb` VALUES ('Toshiba Portege M200 P4 laptop tablet  1ftrÃ³l! NMÃ1853671757 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/toshiba/portege/toshiba_portege_m200_p4_laptop_tablet_1ftrol_nma_1853671757.html', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Qosmio X70 - i7-4700MQ, 17.3FULL HD, 2000 GB, 32GB, Geforce GTX 770M 3GB, Blu-Ray, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567490895', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Qosmio X70 - i7-4700MQ, 17.3FULL HD, 256 GB+1000 GB, 32GB, Geforce GTX 770M 3GB, Blu-Ray, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059634', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Qosmio X70 - i7-4700MQ, 17.3FULL HD, 512 GB+1000 GB, 32GB, Geforce GTX 770M, Blu-Ray, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060147', null);
INSERT INTO `linkdb` VALUES ('Toshiba Sat C855-1QC (PSCBYE-00E009HU) (Intel i5/4 GB/500 GB/Radeon HD 7610M/15,6&quot;/WIN8) notebook, laptop', 'http://www.grando.hu/product/view/?id=1549831878', null);
INSERT INTO `linkdb` VALUES ('Toshiba Sat U940-100 (PSU6SE-00G00EHU) (Intel i3/4 GB/500 GB HDD + 32 GB SSD/HD Graphics 4000/14&quot;/WIN8) notebook, laptop', 'http://www.grando.hu/product/view/?id=1550082012', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite C50-A - i5-3230M, 15.6HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1573566813', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite C55-A - i5-3230M, 15.6HD, 500 GB, 4GB, Geforce 710M, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567490637', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite C55-A - i5-3230M, 15.6HD, 750 GB, 4GB, Geforce 710M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719692', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA SATELLITE C855D-136 laptop1850497085 MINÅSÃ‰GI TERMÃ‰K ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/toshiba/satellite/toshiba_satellite_c855d_136_laptop_1850497085.html', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite L50-A - i7-4700MQ, 15.6HD, 750 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572059982', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite L50-A - i7-4700QM, 15.6HD, 750 GB, 8GB, Geforce GT 740M, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060150', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite M50-A - i5-4200U, 15.6HD, 750 GB, 4GB, Geforce GT 740M 2GB, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572868782', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite M50-A - i5-4200U, 15.6HD, 750 GB, 4GB, Geforce GT 740M, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572060153', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite P50-A - i7-3630QM, 15.6FULL HD, 1000 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567490745', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite P50-A - i7-4700MQ, 15.6FULL HD, 1000 GB, 8GB, Geforce GT 740M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1572869067', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite P70-A - i7-4700MQ, 17.3FULL HD, 500 GB, 8GB, Geforce GT 745M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1575547614', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite P845t - i5-3337U, 14HD, 750 GB, 8GB, Geforce GT 630M 2GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719434', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite P845t-10C PSPJ6E-00T00RSK-01 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1575884748', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite P855 - i7-3630QM, 15.6HD, 1000 GB, 8GB, Geforce GT 640M 2GB, Blu-Ray, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567490799', null);
INSERT INTO `linkdb` VALUES ('Toshiba Satellite P855-33U (ez&uuml;st) (Core i7 3630QM/8GB HDD/1TB HDD/GT640M/15.6&quot; LED/WIN8-64) (PSPKFE-03N02UHU) notebook, laptop', 'http://www.grando.hu/product/view/?id=1546873158', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite U50T - i5-4200U, 15.6HD, 750 GB+32 GB, 4GB, HD Graphics 4400, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1572868962', null);
INSERT INTO `linkdb` VALUES ('Toshiba Satellite U840-113 (ez&uuml;st) (Core i3-2377M/4 GB/500 GB/GMA HD3000/14&quot; LED/Win7 HP 64bit) (PSU4SE-00W01CHU) notebook, laptop', 'http://www.grando.hu/product/view/?id=1536086832', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite U920t - i3-3227U, 12.5HD, 128 GB, 4GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1567490730', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite U920t - i5-3337U, 12.5HD, 128 GB, 4GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1567490751', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite U940 - i3-3217U, 14HD, 500 GB+32 GB, 4GB, Win8 LAPTOP, ULTRABOOK', 'http://www.grando.hu/product/view/?id=1567490646', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite U940 - i5-3317U, 14HD, 500 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1537555425', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Satellite U940 - i5-3337U, 14HD, 500 GB+32 GB, 4GB, HD Graphics 4000, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567490685', null);
INSERT INTO `linkdb` VALUES ('Toshiba Satellite U940-11F (j&eacute;gk&eacute;k) (Core i3 3227U/4GB DDR3/500GB HDD/GMA HD4000/14.0&quot; HD LED/WIN8-64) (PSU6SE-01W01GHU) notebook, laptop', 'http://www.grando.hu/product/view/?id=1546873173', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Tecra R940 - i5-3340M, 14HD+, 500 GB, 4GB, HD Graphics 4000, UMTS, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1567490817', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Tecra R940 - i5-3340M, 14HD+, 500 GB, 4GB, Radeon HD 7570M 1GB, DVD RW, UMTS, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1563865269', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Tecra R950 - i3-3120M, 15.6HD+, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719638', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Tecra R950 - i3-3120M, 15.6HD, 320 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1574926107', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Tecra R950 - i5-3230M, 15.6HD, 500 GB, 4GB, HD Graphics 4000, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719683', null);
INSERT INTO `linkdb` VALUES ('TOSHIBA Tecra R950 - i5-3340M, 15.6HD+, 500 GB, 4GB, Radeon HD 7570M 1GB, DVD RW, Win8 LAPTOP, NOTEBOOK', 'http://www.grando.hu/product/view/?id=1568719575', null);
INSERT INTO `linkdb` VALUES ('UniverzÃ¡lis autÃ³s laptop tÃ¶ltÅ‘1855602002 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/tolto_adapter/univerzalis/univerzalis_autos_laptop_tolto_1855602002.html', null);
INSERT INTO `linkdb` VALUES ('UniverzÃ¡lis autÃ³s laptop tÃ¶ltÅ‘1855733627 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/tolto_adapter/univerzalis/univerzalis_autos_laptop_tolto_1855733627.html', null);
INSERT INTO `linkdb` VALUES ('UniverzÃ¡lis Laptop tÃ¶ltÅ‘ autÃ³s Ã©s hÃ¡lÃ³zati! +USB1850360279 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/tolto_adapter/univerzalis/univerzalis_laptop_tolto_autos_es_halozati_usb_1850360279.html', null);
INSERT INTO `linkdb` VALUES ('UniverzÃ¡lis Laptop tÃ¶ltÅ‘ autÃ³s Ã©s hÃ¡lÃ³zati! +USB3915242068 ', 'http://beta.vatera.hu/-i3915242068.html', null);
INSERT INTO `linkdb` VALUES ('UniverzÃ¡lis Laptop tÃ¶ltÅ‘, Inverteres-AUTÃ“BAN IS!1852941185 minÅ‘sÃ©g fillÃ©rekÃ©rt!  12 voltrÃ³l is ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_tolto_akkumulator/tolto_adapter/univerzalis/univerzalis_laptop_tolto_inverteres_autoban_is_1852941185.html', null);
INSERT INTO `linkdb` VALUES ('USB vezetÃ©k nÃ©lkÃ¼li optikai egÃ©r laptop pc fehÃ©r1856478083 RaktÃ¡ron! Nem kell rÃ¡ heteket vÃ¡rni. ', 'http://szamitastechnika.vatera.hu/szamitogep_laptop_tablet_kellek/billentyuzet_eger/eger/usb_vezetek_nelkuli_optikai_eger_laptop_pc_feher_1856478083.html', null);
INSERT INTO `linkdb` VALUES ('Ut&aacute;ngy&aacute;rtott laptop t&ouml;lt&otilde; 19V 3,42A 65W 5,5mm x 2,5mm ASUS notebook adapter &Uacute;J', 'http://www.grando.hu/product/view/?id=1544396181', null);
INSERT INTO `linkdb` VALUES ('Ut&aacute;ngy&aacute;rtott laptop t&ouml;lt&otilde; 19V 3,42A 65W 5,5mm x 2,5mm TOSHIBA notebook adapter &Uacute;J', 'http://www.grando.hu/product/view/?id=1544390832', null);
INSERT INTO `linkdb` VALUES ('VÃ©kony fehÃ©r vezetÃ©k nÃ©lkÃ¼li optikai egÃ©r RAKTÃRON1855916936 laptop, notebook , PC szÃ¡mÃ­tÃ³gÃ©p vezetÃ©knÃ©lkÃ¼li ', 'http://szamitastechnika.vatera.hu/szamitogep_laptop_tablet_kellek/billentyuzet_eger/eger/vekony_feher_vezetek_nelkuli_optikai_eger_raktaron_1855916936.html', null);
INSERT INTO `linkdb` VALUES ('VÃ©kony pink vezetÃ©k nÃ©lkÃ¼li optikai egÃ©r RAKTÃRON1853925266 laptop notebook PC vezetÃ©knÃ©lkÃ¼li rÃ³szaszÃ­n ', 'http://szamitastechnika.vatera.hu/szamitogep_laptop_tablet_kellek/billentyuzet_eger/eger/vekony_pink_vezetek_nelkuli_optikai_eger_raktaron_1853925266.html', null);
INSERT INTO `linkdb` VALUES ('VÃ©kony vezetÃ©k nÃ©lkÃ¼li optikai egÃ©r RAKTÃRON feket1851611465 laptop, notebook , PC szÃ¡mÃ­tÃ³gÃ©p vezetÃ©knÃ©lkÃ¼li ', 'http://szamitastechnika.vatera.hu/szamitogep_laptop_tablet_kellek/billentyuzet_eger/eger/vekony_vezetek_nelkuli_optikai_eger_raktaron_feket_1851611465.html', null);
INSERT INTO `linkdb` VALUES ('Vostro 3560  - i7-3612QM 6GB/500GB + 32GB SSD 15&quot; W7Pro Bronz 3560-1833BR Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553147325', null);
INSERT INTO `linkdb` VALUES ('Vostro 3560  - i7-3612QM 6GB/500GB + 32GB SSD 15&quot; W7Pro Red 3560-1826R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553082408', null);
INSERT INTO `linkdb` VALUES ('Vostro 3560  - i7-3612QM 6GB/500GB + 32GB SSD 15&quot; W8Pro Bronz 3560-4412BR Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553082402', null);
INSERT INTO `linkdb` VALUES ('Vostro 3560  - i7-3612QM 6GB/500GB + 32GB SSD 15&quot; W8Pro Red 3560-4405R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553147352', null);
INSERT INTO `linkdb` VALUES ('Web kamera Laptop/notebook/PC webkamera ÃœZLETBÅL1850445728 ', 'http://szamitastechnika.vatera.hu/webkamera/web_kamera_laptop_notebook_pc_webkamera_uzletbol_1850445728.html', null);
INSERT INTO `linkdb` VALUES ('WESTERN DIGITAL 2,5\" SATA LAPTOP HDD, WINCHESTER!1855863530 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook_alkatresz/merevlemez/western_digital_2_5_sata_laptop_hdd_winchester_1855863530.html', null);
INSERT INTO `linkdb` VALUES ('WiFi android laptop notebook Ãšj 2GB 7\" mini1855432289 ', 'http://szamitastechnika.vatera.hu/laptop_notebook_netbook/egyeb/wifi_android_laptop_notebook_uj_2gb_7_mini_1855432289.html', null);
INSERT INTO `linkdb` VALUES ('_DELL  Vostro 3360 - i5-3317U 4GB/128GB SSD 13&quot; HD4000  W8Pro Red 3360-8543R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553000538', null);
INSERT INTO `linkdb` VALUES ('_DELL  Vostro 3460 - i5-3210M 6GB/500GB 14&quot; HD4000  W7Pro64 SIlver 3460-1802S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553000508', null);
INSERT INTO `linkdb` VALUES ('_DELL  Vostro 3560  - i7-3612QM 4GB/500GB 15&quot; HD7670M W8Pro Bronz 3560-4382BR Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553082351', null);
INSERT INTO `linkdb` VALUES ('_DELL  Vostro 3560  - i7-3612QM 6GB/500GB + 32GB SSD 15&quot; W8Pro Silver 3560-4399S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553082399', null);
INSERT INTO `linkdb` VALUES ('_DELL  Vostro 3560  - i7-3612QM 8GB/750GB 15&quot; HD7670M  W8Pro Bronz 3560-4443BR Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553082396', null);
INSERT INTO `linkdb` VALUES ('_DELL  Vostro 3560  - i7-3612QM 8GB/750GB 15&quot; HD7670M  W8Pro Red 3560-4436R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553082405', null);
INSERT INTO `linkdb` VALUES ('_DELL  Vostro 3560  - i7-3612QM 8GB/750GB 15&quot; HD7670M  W8Pro Silver 3560-4429S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553082393', null);
INSERT INTO `linkdb` VALUES ('_DELL  Vostro 3560 - i5-3210M 6GB/500GB 15&quot; HD7670M  W7Pro64 Red 3560-6661R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552814016', null);
INSERT INTO `linkdb` VALUES ('_DELL  Vostro 3560 - i7-3612QM 4GB/500GB 15&quot; HD7670M  W8Pro Red 3560-4375R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553082378', null);
INSERT INTO `linkdb` VALUES ('_DELL  Vostro 3560 - i7-3612QM 4GB/500GB 15&quot; HD7670M  W8Pro Silver 3560-4368S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553082342', null);
INSERT INTO `linkdb` VALUES ('_DELL  Vostro 3560 - i7-3612QM 4GB/500GB 15&quot;FHD HD7670M W7Pro64 Bronze 3560-6708BR Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553082321', null);
INSERT INTO `linkdb` VALUES ('_DELL  Vostro 3560 - i7-3612QM 4GB/500GB 15&quot;FHD HD7670M W7Pro64 Red 3560-6692R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553000550', null);
INSERT INTO `linkdb` VALUES ('_DELL  Vostro 3560 - i7-3612QM 4GB/500GB 15&quot;FHD HD7670M W7Pro64 Silver 3560-6685S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553082336', null);
INSERT INTO `linkdb` VALUES ('_DELL  Vostro 3560 - i7-3612QM 8GB/750GB 15&quot; HD7670M  W7Pro64 Red 3560-6722R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1532651469', null);
INSERT INTO `linkdb` VALUES ('_DELL  Vostro 3560 - i7-3612QM 8GB/750GB 15&quot; HD7670M  W7Pro64 Silver 3560-6715S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553082384', null);
INSERT INTO `linkdb` VALUES ('_DELL  Vostro 3560 - i7-3612QM 8GB/750GB 15&quot;FHD HD7670M W7Pro64 Bronz 3560-6739BR Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553082387', null);
INSERT INTO `linkdb` VALUES ('_DELL Inspiron 15-3521 - 15&quot; Touchscreen Intel i5-3337U 4GB 750GB 3521-0507 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552657104', null);
INSERT INTO `linkdb` VALUES ('_DELL Inspiron 17R - i5-3317U 4GB/500GB 43,9cm(17&quot;)HD+ HD8730M DVD W8Pro Blue 5721-2508BL Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558284702', null);
INSERT INTO `linkdb` VALUES ('_DELL Inspiron 17R - i5-3317U 4GB/500GB 43,9cm(17&quot;)HD+ HD8730M DVD W8Pro Red 5721-2492R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558284714', null);
INSERT INTO `linkdb` VALUES ('_DELL Latitude E5430 - i5-3320M 4GB/320GB 14&quot;HD HD4000   W7Pro64 5430-1857 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553147364', null);
INSERT INTO `linkdb` VALUES ('_DELL Latitude E5530 - i5-3320M 4GB/320GB 15,6&quot;HD HD4000  W7Pro64 5530-1918 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553147385', null);
INSERT INTO `linkdb` VALUES ('_DELL Latitude E5530 - i7-3520M 8GB/500GB 15,6&quot;FHD HD4000  W7Pro64 5530-1925 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558804914', null);
INSERT INTO `linkdb` VALUES ('_DELL Latitude E6230 - i5-3360M 6GB/320GB 12&quot;HD HD4000  W7Pro64 6230-1956 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553227371', null);
INSERT INTO `linkdb` VALUES ('_DELL Latitude E6230 - i7-3520M 4GB/256GB 12&quot;HD HD4000 n/BT W7U64 26892998 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553492382', null);
INSERT INTO `linkdb` VALUES ('_DELL Latitude E6330 - i5-3320M 6GB/500GB 13&quot;HD  W7Pro64 210-39891-2 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553227368', null);
INSERT INTO `linkdb` VALUES ('_DELL Latitude E6430 - i5-3360M 8GB/500GB 14&quot;HD NVS5200M  W7Pro64 6430-2014 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553227380', null);
INSERT INTO `linkdb` VALUES ('_DELL Latitude E6430 - i7-3520M 8GB/500GB 14&quot;HD+ NVS5200M  W7Pro64 6430-2021 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553227383', null);
INSERT INTO `linkdb` VALUES ('_DELL Latitude E6530 - i7-3520M 8GB/750GB 15,6&quot;FHD NVS5200  W7Pro64 6530-2090 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553227386', null);
INSERT INTO `linkdb` VALUES ('_DELL Latitude XT3  i7-2640M 13&quot; 8GB/320GB Intel3000 WinPro7 26327588 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553492373', null);
INSERT INTO `linkdb` VALUES ('_DELL Latitude XT3 - i7-2640M 4GB/256GB 13&quot;HD HD3000 n/BT/ 3Y W7Pro 26674405 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553227407', null);
INSERT INTO `linkdb` VALUES ('_DELL Studio XPS 13 - Core 2 Duo P8400 13.3&quot; 2GB/250GB HDD Nvidia9400M WinVista NJ302a4	 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558804938', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360  - i3-3217U 4GB/320GB 13&quot; HD4000  W8Pro Bronz 3360-8499BR Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558563009', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360  - i3-3217U 4GB/320GB 13&quot; HD4000  W8Pro Red 3360-8482R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558563012', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360  - i3-3217U 4GB/320GB 13&quot; HD4000  W8Pro Silver 3360-8475S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552657188', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360  - i5-3317U 4GB/128GB 13&quot; HD4000  W7Pro64 Bronz 3360-6136BR Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553000532', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360  - i5-3317U 4GB/128GB 13&quot; HD4000  W7Pro64 Red 3360-6129R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558563039', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360  - i5-3317U 4GB/128GB 13&quot; HD4000  W7Pro64 Silver 26864453 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553000523', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360  - i5-3317U 4GB/128GB 13&quot; HD4000  W7Pro64 Silver 3360-6112S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553000529', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360  i5 3317 13.3&quot; 4GB/500GB Intel4000 Win7 NJ142d Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558804899', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360  i5 3317 13.3&quot; 4GB/500GB Intel4000 Win7 NJ142f	 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558804896', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360 - i3-3217U 4GB/320GB 13+ HD4000 W7Pro64 Bronz 3360-2249BR Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552657176', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360 - i3-3217U 4GB/320GB 13+ HD4000 W7Pro64 Red 3360-2232R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552657200', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360 - i3-3217U 4GB/320GB 13+ HD4000 W7Pro64 Silver 3360-2225S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558563000', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360 - i3-3217U 4GB/500GB 13&quot; HD4000  W7Pro64 Bronz 3360-2270BR Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558563015', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360 - i3-3217U 4GB/500GB 13&quot; HD4000  W7Pro64 Red 3360-2263R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558563021', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360 - i3-3217U 4GB/500GB 13&quot; HD4000  W8Pro64 Bronz 3360-8529BR Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552742808', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360 - i3-3217U 4GB/500GB 13&quot; HD4000  W8Pro64 Silver 3360-8505S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552742937', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360 - i5-3317U 4GB/532 GB Hybrid 13&quot; HD4000  W7Pro64 Silver 3360-6143S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552814001', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360 - i5-3317U 4GB/532GB Hybrid 13&quot; HD4000  W7Pro64 Bronz 3360-6167BR Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552813995', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3360 - i5-3317U 4GB/532GB Hybrid 13&quot; HD4000  W7Pro64 Red 3360-6150R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552814010', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3460  - i3-3110M 4GB/320GB 14&quot; HD HD4000  W8Pro Bronz 3460-8659BR Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552657143', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3460  - i3-3110M 4GB/320GB 14&quot; HD HD4000  W8Pro Red 3460-8642R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552657149', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3460  - i3-3110M 4GB/320GB 14&quot; HD HD4000  W8Pro Silver 3460-8635S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558562997', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560  - i5-3210M 4GB/500GB 15&quot; HD4000  W7Pro64 Silver 3560-6623S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552813956', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560  - i5-3210M 4GB/500GB 15&quot;HD HD4000  W7Pro64 Bronz 3560-6647BR Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552813932', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560  - i5-3210M 4GB/500GB 15&quot;HD HD4000  W7Pro64 Red 3560-6630R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552813944', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560  - i5-3210M 6GB/500GB 15&quot; HD7670M W8Pro Silver 3560-4337S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553000511', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560  - i7-3612QM 6GB/32/500GB 15&quot; HD7670M  W7Pro64 Silver 3560-1819S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553147322', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560 - i3-3110M 4GB/320GB 15&quot; HD4000 W8Pro Silver 3560-4276S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552657074', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560 - i5-3210M 4GB/500GB 15&quot; HD4000  W8Pro Bronz 3560-4320BR Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552813962', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560 - i5-3210M 4GB/500GB 15&quot; HD4000  W8Pro Red 3560-4313R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552813974', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560 - i5-3210M 4GB/500GB 15&quot; HD4000  W8Pro Silver 3560-4306S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552813983', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560 - i5-3210M 6GB/500GB 15&quot; HD7670M  W8Pro 3560-4351BR Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553000514', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560 - i5-3210M 6GB/500GB 15&quot; HD7670M  W8Pro Red 3560-4344R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553000520', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560 - i5-3210M 6GB/500GB 15&quot;HD HD7670M  W7Pro64 Silver 3560-6654S Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553000505', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560 - i5-3210M 6GB/500GB 15&quot;HD HD7670M  W7Pro64 Silver 3560-6678BR Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1553000499', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560 i3-3110M 15&quot; 4GB/320GB HDD Intel4000 Win8 3560-4283R Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552657083', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560 i3-3110M 15&quot; 4GB/320GB HDD Intel4000 Win8 3560-4290BR Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1552582668', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560 i5 3230  15.6&quot; 4GB/500GB Intel4000 Win7 Red NJ144n6o Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558697343', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560 i5 3230  15.6&quot; 4GB/500GB Intel4000 Win7 Silver NJ144n6n Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558697346', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560 i5 3230 15.6&quot; 4GB/1TB +32GB SSD AMD7670 1GB Win7Pro NJ144n6s Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558804902', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560 i5 3230 15.6&quot; 4GB/1TB +32GB SSD AMD7670 1GB Win7Pro Silver NJ144n6r	 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558804905', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560 i5 3230M  15.6&quot; Intel4000 Win7 NJ144n6p	 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558697337', null);
INSERT INTO `linkdb` VALUES ('_DELL Vostro 3560 i7 3632QM 15.6&quot; 8GB/1TB+32GB SSD AMD7670 1GB Win7 NJ144n6l	 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558804908', null);
INSERT INTO `linkdb` VALUES ('_DELLl XPS 13 -  i7 3667 13.3&quot; 8GB/256GB SSD Intel4000 WinPro8 NJ312v6 Laptop, Notebook', 'http://www.grando.hu/product/view/?id=1558804950', null);

-- ----------------------------
-- Table structure for `messages`
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `toid` tinyint(4) DEFAULT NULL,
  `fromid` tinyint(4) DEFAULT NULL,
  `title` text,
  `message` text,
  `sent` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `seen` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('1', '73', '74', 'teafasdf', 'asdfasdfasdf', '2014-03-20 21:50:16', '1');
INSERT INTO `messages` VALUES ('2', '73', '74', 'test Ã¼zi 2', 'test Ã¼zi 2test Ã¼zi 2test Ã¼zi 2test Ã¼zi 2', '2014-03-20 21:52:01', '1');
INSERT INTO `messages` VALUES ('3', '73', '74', 'asdfasdfa', 'sdfasdfasfd', '2014-03-20 21:53:11', '1');
INSERT INTO `messages` VALUES ('4', '73', '74', 'asdfasdfa', 'sdfasdfasfd', '2014-03-20 21:54:43', '1');
INSERT INTO `messages` VALUES ('5', '73', '74', 'asdfasdfa', 'sdfasdfasfd', '2014-03-20 21:55:20', '1');
INSERT INTO `messages` VALUES ('6', '72', '73', 'dasda', 'sfdasdfasdfasf', '2014-03-21 09:43:24', '1');
INSERT INTO `messages` VALUES ('7', '75', '75', 'cimdsafs', 'cÃ­mkhjjkh', '2014-03-23 16:30:27', '1');
INSERT INTO `messages` VALUES ('8', '72', '72', 'magamnak', 'TESTESTETSTETSTESTTESTETSTESTEST', '2014-03-25 08:35:21', '1');
INSERT INTO `messages` VALUES ('9', '72', '72', 'c s ss s ssss', 'sc s ss s ssssc s ss s ssss', '2014-03-26 21:53:21', '1');
INSERT INTO `messages` VALUES ('10', '72', '72', 'sdfsdfsd', 'fsdfsdfsdfsdfsdfsf', '2014-03-26 21:59:18', '1');
INSERT INTO `messages` VALUES ('11', '0', '1', 'Sikeres vÃ¡sÃ¡rlÃ¡s', 'Sikeresen megnyerted/vetted a <a href=\"/ad/88\"><h3>aukciÃ³</h3></a> t', '2014-04-04 12:36:41', '0');
INSERT INTO `messages` VALUES ('12', '72', '1', 'Sikeres vÃ¡sÃ¡rlÃ¡s', 'Sikeresen megnyerted/vetted a <a href=\"/ad/88\"><h3>aukciÃ³</h3></a> t', '2014-04-04 12:40:31', '1');
INSERT INTO `messages` VALUES ('13', '72', '1', 'Sikeres vÃ¡sÃ¡rlÃ¡s!', 'Sikeres vÃ¡sÃ¡rlÃ¡s!', '2014-04-04 12:42:04', '1');
INSERT INTO `messages` VALUES ('14', '76', '1', 'Sikeres eladÃ¡s!', 'Sikeres sikeresen eladtad az 88szÃ¡mÃº aukciÃ³dat!', '2014-04-19 17:44:47', '1');
INSERT INTO `messages` VALUES ('15', '72', '1', 'Sikeres vÃ¡sÃ¡rlÃ¡s!', 'Sikeres vÃ¡sÃ¡rlÃ¡s, megnÃ©zheted az eladÃ³ privÃ¡tadat, a profiljÃ¡n!', '2014-04-04 12:46:01', '0');
INSERT INTO `messages` VALUES ('16', '76', '1', 'Sikeres eladÃ¡s!', 'Sikeres sikeresen eladtad az 89szÃ¡mÃº aukciÃ³dat!', '2014-04-15 12:32:13', '0');
INSERT INTO `messages` VALUES ('17', '72', '1', 'Sikeres vÃ¡sÃ¡rlÃ¡s!', 'Sikeres vÃ¡sÃ¡rlÃ¡s, megnÃ©zheted az eladÃ³ privÃ¡tadat, a profiljÃ¡n!', '2014-04-15 12:35:14', '1');
INSERT INTO `messages` VALUES ('18', '76', '1', 'Sikeres eladÃ¡s!', 'Sikeres sikeresen eladtad az 89szÃ¡mÃº aukciÃ³dat!', '2014-04-15 12:34:59', '0');
INSERT INTO `messages` VALUES ('19', '72', '1', 'Sikeres vÃ¡sÃ¡rlÃ¡s!', 'Sikeres vÃ¡sÃ¡rlÃ¡s, megnÃ©zheted az eladÃ³ privÃ¡tadat, a profiljÃ¡n!', '2014-04-15 12:34:59', '0');
INSERT INTO `messages` VALUES ('20', '76', '1', 'Sikeres eladÃ¡s!  Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', 'Sikeres sikeresen eladtad az 91szÃ¡mÃº aukciÃ³dat!', '2014-04-19 18:41:01', '0');
INSERT INTO `messages` VALUES ('21', '72', '1', 'Sikeres vÃ¡sÃ¡rlÃ¡s!', 'Sikeres vÃ¡sÃ¡rlÃ¡s, megnÃ©zheted az eladÃ³ privÃ¡tadatait, a profiljÃ¡n! Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', '2014-04-19 18:44:07', '1');
INSERT INTO `messages` VALUES ('22', '76', '1', 'Sikeres eladÃ¡s!  Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', 'Sikeres sikeresen eladtad az 89szÃ¡mÃº aukciÃ³dat!', '2014-04-21 20:44:44', '0');
INSERT INTO `messages` VALUES ('23', '76', '1', 'Sikeres vÃ¡sÃ¡rlÃ¡s!', 'Sikeres vÃ¡sÃ¡rlÃ¡s, megnÃ©zheted az eladÃ³ privÃ¡tadatait, a profiljÃ¡n! Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', '2014-04-21 20:44:45', '0');
INSERT INTO `messages` VALUES ('24', '76', '1', 'Sikeres eladÃ¡s!  Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', 'Sikeres sikeresen eladtad az 92szÃ¡mÃº aukciÃ³dat!', '2014-04-21 21:07:12', '1');
INSERT INTO `messages` VALUES ('25', '72', '1', 'Sikeres vÃ¡sÃ¡rlÃ¡s!', 'Sikeres vÃ¡sÃ¡rlÃ¡s, megnÃ©zheted az eladÃ³ privÃ¡tadatait, a profiljÃ¡n! Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', '2014-04-21 20:46:41', '0');
INSERT INTO `messages` VALUES ('26', '76', '1', 'Sikeres eladÃ¡s!  Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', 'Sikeres sikeresen eladtad az 93szÃ¡mÃº aukciÃ³dat!', '2014-04-21 21:16:36', '1');
INSERT INTO `messages` VALUES ('27', '72', '1', 'Sikeres vÃ¡sÃ¡rlÃ¡s!', 'Sikeres vÃ¡sÃ¡rlÃ¡s, megnÃ©zheted az eladÃ³ privÃ¡tadatait, a profiljÃ¡n! Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', '2014-04-21 21:15:20', '0');
INSERT INTO `messages` VALUES ('28', '76', '1', 'Sikeres eladÃ¡s!  Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', 'Sikeres sikeresen eladtad az 94szÃ¡mÃº aukciÃ³dat!', '2014-04-21 23:44:35', '0');
INSERT INTO `messages` VALUES ('29', '76', '1', 'Sikeres eladÃ¡s!  Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', 'Sikeres sikeresen eladtad az 94szÃ¡mÃº aukciÃ³dat!', '2014-04-21 23:46:00', '0');
INSERT INTO `messages` VALUES ('30', '76', '1', 'Sikeres eladÃ¡s!  Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', 'Sikeres sikeresen eladtad az 94szÃ¡mÃº aukciÃ³dat!', '2014-04-21 23:46:16', '0');
INSERT INTO `messages` VALUES ('31', '76', '1', 'Sikeres eladÃ¡s!  Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', 'Sikeres sikeresen eladtad az 94szÃ¡mÃº aukciÃ³dat!', '2014-04-24 20:43:48', '1');
INSERT INTO `messages` VALUES ('32', '72', '1', 'Sikeres vÃ¡sÃ¡rlÃ¡s!', 'Sikeres vÃ¡sÃ¡rlÃ¡s, megnÃ©zheted az eladÃ³ privÃ¡tadatait, a profiljÃ¡n! Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', '2014-04-21 23:47:03', '0');
INSERT INTO `messages` VALUES ('33', '76', '1', 'Sikeres eladÃ¡s!  Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', 'Sikeres sikeresen eladtad az 94szÃ¡mÃº aukciÃ³dat!', '2014-04-24 20:43:45', '1');
INSERT INTO `messages` VALUES ('34', '72', '1', 'Sikeres vÃ¡sÃ¡rlÃ¡s!', 'Sikeres vÃ¡sÃ¡rlÃ¡s, megnÃ©zheted az eladÃ³ privÃ¡tadatait, a profiljÃ¡n! Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', '2014-04-21 23:47:38', '0');
INSERT INTO `messages` VALUES ('35', '72', '1', 'Sikeres eladÃ¡s!  Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', 'Sikeres sikeresen eladtad az 95szÃ¡mÃº aukciÃ³dat!', '2014-04-22 18:34:37', '0');
INSERT INTO `messages` VALUES ('36', '72', '1', 'Sikeres vÃ¡sÃ¡rlÃ¡s!', 'Sikeres vÃ¡sÃ¡rlÃ¡s, megnÃ©zheted az eladÃ³ privÃ¡tadatait, a profiljÃ¡n! Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', '2014-04-22 18:34:37', '0');
INSERT INTO `messages` VALUES ('37', '76', '1', 'Sikeres eladÃ¡s!  Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', 'Sikeres sikeresen eladtad az 101szÃ¡mÃº aukciÃ³dat!', '2014-04-25 07:59:27', '1');
INSERT INTO `messages` VALUES ('38', '76', '1', 'Sikeres vÃ¡sÃ¡rlÃ¡s!', 'Sikeres vÃ¡sÃ¡rlÃ¡s, megnÃ©zheted az eladÃ³ privÃ¡tadatait, a profiljÃ¡n! Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', '2014-04-25 07:58:38', '0');
INSERT INTO `messages` VALUES ('39', '76', '1', 'Sikeres eladÃ¡s!  Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', 'Sikeres sikeresen eladtad az 114szÃ¡mÃº aukciÃ³dat!', '2014-04-25 09:26:49', '0');
INSERT INTO `messages` VALUES ('40', '76', '1', 'Sikeres vÃ¡sÃ¡rlÃ¡s!', 'Sikeres vÃ¡sÃ¡rlÃ¡s, megnÃ©zheted az eladÃ³ privÃ¡tadatait, a profiljÃ¡n! Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', '2014-04-25 09:26:49', '0');
INSERT INTO `messages` VALUES ('41', '76', '1', 'Sikeres eladÃ¡s!  Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', 'Sikeres sikeresen eladtad az 110szÃ¡mÃº aukciÃ³dat!', '2014-04-25 10:00:21', '1');
INSERT INTO `messages` VALUES ('42', '76', '1', 'Sikeres vÃ¡sÃ¡rlÃ¡s!', 'Sikeres vÃ¡sÃ¡rlÃ¡s, megnÃ©zheted az eladÃ³ privÃ¡tadatait, a profiljÃ¡n! Ã‰rtÃ©keld az adÃ¡svÃ©telt(itt)!', '2014-04-25 10:00:28', '1');

-- ----------------------------
-- Table structure for `posts`
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` tinyint(10) NOT NULL AUTO_INCREMENT,
  `text` longtext CHARACTER SET utf8,
  `img` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `title` text CHARACTER SET utf8,
  `user` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of posts
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
INSERT INTO `posts` VALUES ('30', 'asdcasdcfasdfatermÃ©kleÃ­rÃ¡s...\r\n                        ', 'helmszurdok.jpg', '2013-11-08 19:33:38', 'ujhirdetes', 'NEANDRW');
INSERT INTO `posts` VALUES ('31', 'safdasfasdfasdf\r\n                        ', 'tumblr_lvd0f1MbNf1qzdi59o1_500.jpg', '2013-11-11 20:03:31', 'HirdeÃ©s', 'NEANDRW');
INSERT INTO `posts` VALUES ('33', 'Jony Ive, az Apple fÅ‘dizÃ¡jnere kamerÃ¡t tervezett a LeicÃ¡nak egy jÃ³tÃ©konysÃ¡gi esemÃ©nyre. Marc Newson dizÃ¡jnerrel egyÃ¼tt 85 napot tÃ¶ltÃ¶ttek a modellek megtervezÃ©sÃ©re Ã©s megalkotÃ¡sÃ¡ra. A fÃ©nykÃ©pezÅ‘gÃ©pet egy november 23-ai jÃ³tÃ©konysÃ¡gi esemÃ©nyen fogjÃ¡k elÃ¡rverezni, a befolyÃ³ Ã¶sszegbÅ‘l a malÃ¡ria, AIDS Ã©s tuberkolÃ³zis elleni harcot tÃ¡mogatjÃ¡k majd.', 'jonyive.jpg', null, 'Jony Ive Leica kamerÃ¡ja', 'NEANDRW');
INSERT INTO `posts` VALUES ('34', '150 ezer legÃ³kocka, 1700 figura, csodÃ¡latos rÃ©szletessÃ©g. A GyÅ±rÅ±k ura egyik leglÃ¡tvÃ¡nyosabb csatÃ¡jÃ¡t Ã©pÃ­tettÃ©k meg', 'helmszurdok.jpg', null, 'Battle of Helm', 'NEANDRW');
INSERT INTO `posts` VALUES ('35', 'A plafonon foszforeszkÃ¡lÃ³ csillagok Ã©s Å±rhajÃ³k lebegnek, az Ã¡gyban foszforeszkÃ¡lÃ³ bolygÃ³k kÃ¶zÃ¶tt alszunk.', 'foszfleped.jpg', null, 'Csillagos foszforeszkÃ¡lÃ³s Ã¡gynemÅ±', 'NEANDRW');
INSERT INTO `posts` VALUES ('36', 'Ma mÃ¡r nem Ã©rdemes olyan tÃ©vÃ©t venni, amely nem full hd. De nem is nagyon lehet olyan full hd tÃ©vÃ©t vÃ¡sÃ¡rolni, amely ne ugyanÃºgy nÃ©zzen ki: lapos, fekete (esetleg fehÃ©r vagy Ã¡tlÃ¡tszÃ³) keret, vÃ©kony, futurisztikus lÃ¡bakon. Pedig nem mindegyik nappaliba illik ez a szemÃ©lytelen dizÃ¡jn.\r\n\r\nLehet, hogy erre gondolt a Seiki is, amikor megalkotta a retro dizÃ¡jn hd tÃ©vÃ©t. A 22 hÃ¼velykes tÃ©vÃ© tÃ¶bb szÃ­nben is kaphatÃ³, kÃ¶ztÃ¼k piros, sÃ¡rga, kÃ©k, rÃ³zsaszÃ­n Ã©s lila (persze sokkal hangzatosabb nevei vannak a szÃ­neknek: Retro Red, Mid-century Yellow, Electric Blue, Doo-wop Purple Ã©s Cadillac Pink). ElÃ©g dolgot belepakoltak ahhoz, hogy Ã©lvezhetÅ‘ legyen a tÃ©vÃ©zÃ©s ebben a formÃ¡ban is, valÃ³di hd tÃ©vÃ©hez mÃ©ltÃ³an hdmi-csatlakozÃ³ja is van. Az Ã¡ra ehhez kÃ©pes nem is sok, 329 dollÃ¡rt kÃ©rnek Ã©rte, persze nem itthon.', 'retrohdtv.jpg', null, 'Retro Ã©s hd', 'NEANDRW');
INSERT INTO `posts` VALUES ('37', 'JÃ¶n a hideg, kell a sÃ¡l. Na de milyen? HÃ¡t a DNS-es. BÃ¡r ember legyen a talpÃ¡n, aki a nyak kÃ¶rÃ© tekert sÃ¡lbÃ³l kitalÃ¡lja, hogy az egy DNS-lÃ¡ncot akar Ã¡brÃ¡zolni.', 'dnssal.jpg', null, 'DNS-sÃ¡l', 'NEANDRW');
INSERT INTO `posts` VALUES ('38', 'termÃ©kleÃ­rÃ¡s...datetestttttt\r\n                        ', 'foszfleped.jpg', '2013-11-08 00:00:00', 'hirdetÃ©s cÃ­me asdasd', 'NEANDRW');
INSERT INTO `posts` VALUES ('39', 'termÃ©kleÃ­rÃ¡s...datetestttttt\r\n                        ', 'foszfleped.jpg', '2013-11-08 19:28:29', 'hirdetÃ©s cÃ­me asdasd', 'NEANDRW');

-- ----------------------------
-- Table structure for `unrated`
-- ----------------------------
DROP TABLE IF EXISTS `unrated`;
CREATE TABLE `unrated` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `ownerid` tinyint(4) DEFAULT NULL,
  `customerid` tinyint(4) DEFAULT NULL,
  `itemid` tinyint(4) DEFAULT NULL,
  `ownersrate` tinyint(4) DEFAULT '0' COMMENT '0 ha 0 ember ratert 1 ha eggy és utána delete',
  `customersrate` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of unrated
-- ----------------------------
INSERT INTO `unrated` VALUES ('1', '76', '72', '89', '1', '3');
INSERT INTO `unrated` VALUES ('2', '76', '72', '91', '4', '2');
INSERT INTO `unrated` VALUES ('4', '76', '72', '92', '5', '5');
INSERT INTO `unrated` VALUES ('5', '76', '72', '93', '5', '5');
INSERT INTO `unrated` VALUES ('6', '76', '72', '94', '0', null);
INSERT INTO `unrated` VALUES ('7', '76', '72', '94', '0', null);
INSERT INTO `unrated` VALUES ('8', '76', '72', '94', '0', null);
INSERT INTO `unrated` VALUES ('9', '76', '72', '94', '0', null);
INSERT INTO `unrated` VALUES ('10', '76', '72', '94', '0', null);
INSERT INTO `unrated` VALUES ('11', '76', '72', '94', '0', null);
INSERT INTO `unrated` VALUES ('12', '76', '72', '94', '0', null);
INSERT INTO `unrated` VALUES ('13', '76', '72', '94', '0', null);
INSERT INTO `unrated` VALUES ('14', '76', '72', '94', '0', null);
INSERT INTO `unrated` VALUES ('15', '76', '72', '94', '0', null);
INSERT INTO `unrated` VALUES ('16', '76', '72', '94', '0', null);
INSERT INTO `unrated` VALUES ('17', '76', '72', '94', '0', null);
INSERT INTO `unrated` VALUES ('18', '76', '72', '94', '0', null);
INSERT INTO `unrated` VALUES ('19', '76', '72', '94', '0', null);
INSERT INTO `unrated` VALUES ('20', '72', '72', '95', '0', null);
INSERT INTO `unrated` VALUES ('21', '76', '76', '101', '0', null);
INSERT INTO `unrated` VALUES ('22', '76', '76', '110', '5', null);

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` tinyint(3) NOT NULL AUTO_INCREMENT,
  `username` mediumtext CHARACTER SET utf8,
  `password` mediumtext CHARACTER SET utf8,
  `email` mediumtext CHARACTER SET utf8,
  `regdate` datetime DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Piactér', null, null, null, null);
INSERT INTO `users` VALUES ('64', 'neandrw', '6ec07f25c3f5147a8a22e7f72b7690ea', 'neandrw@gmail.com', null, null);
INSERT INTO `users` VALUES ('65', 'ventress', 'c8d4008b4af58faae139d464e3e791a5', 'ventress@gmail.com', null, null);
INSERT INTO `users` VALUES ('66', 'borsodi', 'dde372914bc0d284b18855a943265031', 'borsodi@borsodi.hu', null, null);
INSERT INTO `users` VALUES ('67', 'sorsorsorsor', 'da4e8577962111db0bd38e651462b6a4', 'sorsor@sorsor.hu', null, null);
INSERT INTO `users` VALUES ('68', 'grapefruit', '651b72f400464afe086a5e5ef60b812e', 'grapefruit@grape.hu', null, null);
INSERT INTO `users` VALUES ('69', 'ogreorange', '85cec79d5bd161e47981947f08b51fe1', 'ogreorange@orange.hu', null, null);
INSERT INTO `users` VALUES ('70', 'swagjolo', '945be150bcff052ba06cff6aa8b87d32', 'swagjolo@swagg.li', null, null);
INSERT INTO `users` VALUES ('71', 'nagyistvan', '1e81e4e58b873d8e4e60c8a1ccceffc7', 'nagyistvas@stewie.com', null, null);
INSERT INTO `users` VALUES ('72', 'darthbane', '8941d2e7ee4569aea3f3e2658a251e50', 'darthbane@darthbane.hu', null, '2014-04-22 18:34:06');
INSERT INTO `users` VALUES ('73', 'newuser1', 'bddff65e4a2aafd9f432e097e25f9bdd', 'newuser1@newuser.com', '2014-03-18 10:56:48', '2014-03-20 22:27:32');
INSERT INTO `users` VALUES ('74', 'test2222', 'fda11200c7593928c946fac203619c69', 'test2222@gmail.com', '2014-03-18 12:15:20', '2014-03-18 13:02:05');
INSERT INTO `users` VALUES ('75', 'test', '9c7801a346a71781fe7c5df7dfb30233', 'test@gmail.com', '2014-03-23 16:24:04', '2014-03-23 16:25:50');
INSERT INTO `users` VALUES ('76', 'Andrew', '606f6b980d216b5948b0194601a7c3a6', 'andras2@citromail.hu', '2014-03-26 09:26:13', '2014-04-25 21:12:52');
INSERT INTO `users` VALUES ('77', 'yodeah', '4e05ccfd4c2574b5f894194dbffb1e9d', 'yodeah@gmail.com', '2014-04-25 09:31:12', '2014-04-25 09:31:27');
INSERT INTO `users` VALUES ('78', 'peterpeter', '4474b08c5d1bd42db77d8550c9620903', 'peter@peter.hu', '2014-04-28 23:40:30', '2014-04-28 23:40:43');

-- ----------------------------
-- Event structure for `AD100`
-- ----------------------------
DROP EVENT IF EXISTS `AD100`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD100` ON SCHEDULE AT '2015-04-25 00:15:26' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-25 00:15:26'
;
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD101`
-- ----------------------------
DROP EVENT IF EXISTS `AD101`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD101` ON SCHEDULE AT '2015-04-25 00:23:27' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-25 00:23:27'
;
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD102`
-- ----------------------------
DROP EVENT IF EXISTS `AD102`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD102` ON SCHEDULE AT '2015-04-25 00:26:17' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-25 00:26:17'
;
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD103`
-- ----------------------------
DROP EVENT IF EXISTS `AD103`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD103` ON SCHEDULE AT '2015-04-25 08:22:53' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-25 08:22:53'
;
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD104`
-- ----------------------------
DROP EVENT IF EXISTS `AD104`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD104` ON SCHEDULE AT '2015-04-25 08:24:04' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-25 08:24:04'
;
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD105`
-- ----------------------------
DROP EVENT IF EXISTS `AD105`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD105` ON SCHEDULE AT '2015-04-25 08:25:05' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-25 08:25:05'
;
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD106`
-- ----------------------------
DROP EVENT IF EXISTS `AD106`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD106` ON SCHEDULE AT '2015-04-25 08:51:44' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-25 08:51:44'
;
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD107`
-- ----------------------------
DROP EVENT IF EXISTS `AD107`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD107` ON SCHEDULE AT '2015-04-25 08:54:25' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-25 08:54:25'
;
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD108`
-- ----------------------------
DROP EVENT IF EXISTS `AD108`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD108` ON SCHEDULE AT '2015-04-25 09:15:56' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-25 09:15:56'
;
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD109`
-- ----------------------------
DROP EVENT IF EXISTS `AD109`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD109` ON SCHEDULE AT '2015-04-25 09:17:30' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-25 09:17:30'
;
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD110`
-- ----------------------------
DROP EVENT IF EXISTS `AD110`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD110` ON SCHEDULE AT '2015-04-25 09:18:27' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-25 09:18:27'
;
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD111`
-- ----------------------------
DROP EVENT IF EXISTS `AD111`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD111` ON SCHEDULE AT '2015-04-25 09:19:30' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-25 09:19:30'
;
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD112`
-- ----------------------------
DROP EVENT IF EXISTS `AD112`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD112` ON SCHEDULE AT '2015-04-25 09:20:50' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-25 09:20:50'
;
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD113`
-- ----------------------------
DROP EVENT IF EXISTS `AD113`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD113` ON SCHEDULE AT '2015-04-25 09:21:36' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-25 09:21:36'
;
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD114`
-- ----------------------------
DROP EVENT IF EXISTS `AD114`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD114` ON SCHEDULE AT '2015-04-25 09:23:13' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-25 09:23:13'
;
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD115`
-- ----------------------------
DROP EVENT IF EXISTS `AD115`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD115` ON SCHEDULE AT '2015-04-28 23:42:39' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='78' AND availability='2015-04-28 23:42:39'
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD116`
-- ----------------------------
DROP EVENT IF EXISTS `AD116`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD116` ON SCHEDULE AT '2015-04-28 23:49:47' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='78' AND availability='2015-04-28 23:49:47'
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD117`
-- ----------------------------
DROP EVENT IF EXISTS `AD117`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD117` ON SCHEDULE AT '2015-04-28 23:51:25' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='78' AND availability='2015-04-28 23:51:25'
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD70`
-- ----------------------------
DROP EVENT IF EXISTS `AD70`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD70` ON SCHEDULE AT '2017-04-01 12:27:48' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2017-04-01 12:27:48'
;
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD87`
-- ----------------------------
DROP EVENT IF EXISTS `AD87`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD87` ON SCHEDULE AT '2015-04-04 12:12:11' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-04 12:12:11'
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD88`
-- ----------------------------
DROP EVENT IF EXISTS `AD88`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD88` ON SCHEDULE AT '2015-04-04 12:14:36' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-04 12:14:36'
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD89`
-- ----------------------------
DROP EVENT IF EXISTS `AD89`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD89` ON SCHEDULE AT '2015-04-14 10:57:12' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-14 10:57:12'
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD90`
-- ----------------------------
DROP EVENT IF EXISTS `AD90`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD90` ON SCHEDULE AT '2034-04-19 18:33:55' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2034-04-19 18:33:55'
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD91`
-- ----------------------------
DROP EVENT IF EXISTS `AD91`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD91` ON SCHEDULE AT '2015-04-19 18:35:21' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-19 18:35:21'
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD92`
-- ----------------------------
DROP EVENT IF EXISTS `AD92`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD92` ON SCHEDULE AT '2015-04-21 20:45:22' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2015-04-21 20:45:22'
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD93`
-- ----------------------------
DROP EVENT IF EXISTS `AD93`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD93` ON SCHEDULE AT '2014-05-01 21:10:14' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2014-05-01 21:10:14'
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD94`
-- ----------------------------
DROP EVENT IF EXISTS `AD94`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD94` ON SCHEDULE AT '2014-04-22 22:18:52' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='76' AND availability='2014-04-22 22:18:52'
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `AD95`
-- ----------------------------
DROP EVENT IF EXISTS `AD95`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `AD95` ON SCHEDULE AT '2025-04-22 18:34:29' ON COMPLETION NOT PRESERVE ENABLE DO UPDATE `items` SET isopen=0 WHERE owner='72' AND availability='2025-04-22 18:34:29'
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `test_event_02`
-- ----------------------------
DROP EVENT IF EXISTS `test_event_02`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `test_event_02` ON SCHEDULE AT '2014-03-30 22:16:24' ON COMPLETION PRESERVE DISABLE DO INSERT INTO messages2(message,created_at)
   VALUES('Test MySQL Event 2',NOW())
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `test_event_03`
-- ----------------------------
DROP EVENT IF EXISTS `test_event_03`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `test_event_03` ON SCHEDULE EVERY 1 SECOND STARTS '2014-04-01 10:28:40' ENDS '2014-04-01 11:28:40' ON COMPLETION NOT PRESERVE ENABLE DO INSERT INTO messages2(message,created_at)
   VALUES('Test MySQL Event 2',NOW())
;;
DELIMITER ;
