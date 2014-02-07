/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : PostgreSQL
 Source Server Version : 90302
 Source Host           : localhost
 Source Database       : machine_learning
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90302
 File Encoding         : utf-8

 Date: 02/07/2014 12:36:27 PM
*/

-- ----------------------------
--  Table structure for "users"
-- ----------------------------
DROP TABLE IF EXISTS "users";
CREATE TABLE "users" (
	"id" int4,
	"first_name" varchar(255),
	"last_name" varchar(255),
	"current_login_ip" varchar(255),
	"description" varchar(255),
	"person_badges_count" int4,
	"github" varchar(255),
	"reddit" varchar(255),
	"dribbble" varchar(255),
	"twitter" varchar(255),
	"facebook" varchar(255),
	"html_points" int4,
	"css_points" int4,
	"js_points" int4,
	"ruby_points" int4,
	"ios_points" int4,
	"biz_points" int4,
	"android_points" int4,
	"php_points" int4,
	"wp_points" int4,
	"desgin_points" int4,
	"dev_points" int4
)
WITH (OIDS=FALSE);
ALTER TABLE "users" OWNER TO "johnpaul";

-- ----------------------------
--  Records of "users"
-- ----------------------------
BEGIN;
INSERT INTO "users" VALUES ('278', 'Nick', 'Pettit', '2607:f700:8001:1b:de58:5468:639b:8c8f', 'I am a designer, public speaker, teacher at Treehouse, and co-host of The Treehouse Show.', '62', 'nickpettit', '', 'nickpettit', 'nickrp', 'nickpettit', '648', '443', '110', '168', '819', '91', '2', '91', '30', '169', '265');
INSERT INTO "users" VALUES ('1412', 'Jim', 'Hoskins', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '133', 'jimrhoskins', 'jimrhoskins', '', 'jimrhoskins', 'jimrhoskins', '640', '1035', '446', '735', '684', '270', '0', '78', '0', '258', '72');
INSERT INTO "users" VALUES ('1957', 'Alan', 'Johnson', '2607:f700:8001:1b:de58:5468:639b:8c8f', 'I''m co-founder and team leader on the marketing team at Treehouse. I''ll always be a coder at heart. When I''m not trying to make technology education more affordable and accessible I''m probably hanging out with my wife and 3 kids.', '73', 'commondream', 'commondream', '', 'commondream', 'commondream', '574', '839', '181', '108', '48', '180', '0', '25', '91', '108', '132');
INSERT INTO "users" VALUES ('2136', 'Chris', 'Akers', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '40', '', '', '', '', '', '292', '646', '407', '360', '0', '0', '0', '12', '180', '0', '0');
INSERT INTO "users" VALUES ('3173', 'Michael', 'Poley', '24.21.202.181', 'I produce video @treehouse', '117', '', 'mpoley', '', 'michaelpoley', 'michaelpoley', '654', '792', '210', '390', '444', '1393', '24', '204', '66', '228', '528');
INSERT INTO "users" VALUES ('3834', 'Jon', 'Geilen', '142.196.143.8', '', '4', '', '', '', '', '', '0', '0', '0', '0', '0', '48', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('5393', 'Amit', 'Bijlani', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '28', 'abijlani', '', '', 'paradoxed', '', '279', '171', '73', '7', '1681', '174', '55', '151', '0', '84', '79');
INSERT INTO "users" VALUES ('7179', 'Pasan', 'Premaratne', '67.30.140.26', '', '89', 'pasanpr', '', 'pasanpr', 'pasanpr', '', '522', '918', '216', '60', '348', '565', '24', '0', '1', '360', '120');
INSERT INTO "users" VALUES ('7653', 'Ryan', 'Carson', '2607:f700:8001:1b:de58:5468:639b:8c8f', 'I''m the Founder and CEO of Treehouse. I''m also a Father, entrepreneur and lover of movies.', '2', 'ryancarson', '', 'ryancarson', 'ryancarson', 'ryancarson', '39', '39', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('8597', 'Tyson', 'Rosage', '24.7.82.200', '', '14', '', '', 'tyson', 'ty', 'tysonrosage', '129', '72', '3', '48', '102', '0', '12', '0', '0', '108', '18');
INSERT INTO "users" VALUES ('8925', 'Jared', 'Erondu', '50.161.115.21', 'Co-founder and Editor of The Industry. Crafting pixels, shaping words. Worked here in the past.', '25', '', '', 'erondu', 'erondu', 'jared.erondu', '306', '282', '72', '66', '0', '0', '0', '0', '12', '174', '0');
INSERT INTO "users" VALUES ('9185', 'Jason', 'Seifer', '67.30.140.26', '', '15', 'jseifer', '', '', 'jseifer', '', '0', '12', '26', '964', '0', '0', '0', '6', '0', '0', '63');
INSERT INTO "users" VALUES ('9597', 'Rich', 'Pettit', '96.58.166.73', '', '8', '', '', '', 'rwpettit', '', '18', '18', '0', '0', '0', '96', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('10764', 'subuser1', 'subuser1', '97.79.57.135', '', '4', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('10765', 'subuser2', 'subuser2', '24.73.152.82', '', '8', '', '', '', '', '', '120', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('10767', 'subuser3', 'subuser3', '24.73.152.82', '', '5', '', '', '', '', '', '84', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('11234', 'Elizabeth', 'Fawkes', '72.187.36.60', '', '2', '', '', 'theshoutingfox', 'theshoutingfox', '', '1', '2', '0', '0', '0', '0', '0', '0', '0', '1', '0');
INSERT INTO "users" VALUES ('11615', 'Fabi', 'Castillo', '72.238.40.1', '', '118', 'fab9', '', '', 'fab9', '', '504', '959', '741', '342', '396', '1116', '216', '576', '456', '577', '684');
INSERT INTO "users" VALUES ('12926', 'Mat', 'Helme', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '58', 'mathelme', '', 'mathelme', 'mathelme', 'mat.helme', '582', '756', '18', '60', '36', '120', '0', '0', '12', '801', '132');
INSERT INTO "users" VALUES ('12927', 'Kevin', 'Dees', '70.119.27.89', '', '12', 'kevindees', '', 'kevindees', 'kevindees', '', '120', '0', '144', '36', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('14110', 'Ariel', 'Zengotita', '99.72.52.158', '', '5', '', '', '', '', '', '90', '18', '0', '0', '0', '90', '12', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('14111', 'Tommy', 'Wingo', '67.30.140.26', 'I''m a Sound Mixer for Treehouse!', '13', '', '', '', 'tommywingo', 'tommywingo', '246', '6', '0', '0', '0', '0', '0', '6', '6', '0', '216');
INSERT INTO "users" VALUES ('14117', 'Brittney', 'Blews', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '19', '', '', '', '', '', '219', '63', '0', '0', '0', '0', '0', '6', '60', '408', '0');
INSERT INTO "users" VALUES ('14119', 'Fred', 'Zara', '71.47.83.150', '', '73', '', '', '', 'fred_zara', '', '225', '195', '0', '36', '90', '1146', '0', '0', '570', '444', '6');
INSERT INTO "users" VALUES ('14198', 'Chris', 'Zabaleta', '67.30.140.26', '', '49', '', '', '', 'chriszabaleta', 'chriszabaleta', '363', '147', '0', '0', '36', '582', '12', '0', '0', '174', '0');
INSERT INTO "users" VALUES ('14266', 'Justyn', 'Rowe', '71.47.147.112', '', '4', '', '', '', 'justynrowe', 'justynclintonrowe', '75', '39', '0', '0', '13', '0', '0', '0', '60', '6', '0');
INSERT INTO "users" VALUES ('14297', 'Testing', 'Challenges', '97.79.57.135', '', '2', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('14339', 'Testing ', 'Challenges2', '184.91.233.89', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('14623', 'Tommy', 'Morgan', '99.127.214.33', 'Hi! I''m one of the developers at Treehouse. I''ve also done a little bit of teaching.', '69', 'duwanis', '', '', 'duwanis', 'wellbredgrapefruit', '504', '613', '378', '782', '12', '12', '24', '36', '0', '42', '80');
INSERT INTO "users" VALUES ('14957', 'Subuser', '4', '184.91.254.24', '', '3', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('15145', 'Miguel', 'Reyes', '71.46.234.210', '', '7', '', '', '', '', '', '192', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('15569', 'Retaking', 'Challenge', '108.70.236.176', '', '2', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('15570', 'RetakingSelctrs', 'Challenge', '108.70.236.176', '', '2', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('15947', 'Ryan', 'Carson', '81.152.239.201', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('16337', '', '', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('18019', 'Ben', 'Jakuben', '2607:f700:8001:1b:de58:5468:639b:8c8f', 'Mobile development teacher at Treehouse! I spent nine years in software development before finding my dream job here. Trying to be a better father/husband/son/friend/teacher. Firmly committed to the belief that the world is evolving to a better place.', '107', 'bendog24', '', '', 'bendog24', 'ben.jakuben', '434', '476', '397', '120', '1818', '288', '1572', '144', '18', '90', '166');
INSERT INTO "users" VALUES ('18262', 'Jarrett ', 'Gelormini', '166.205.49.77', '', '32', '', '', '', '', '', '594', '630', '0', '0', '0', '0', '0', '0', '0', '270', '0');
INSERT INTO "users" VALUES ('18445', 'Jeremy', 'Jantz', '68.115.251.182', 'Product Designer at @Treehouse. Work at @CoWork.', '75', 'jeremyjantz', '', 'jeremyjantz', 'jeremyjantz', 'jeremy.jantz.1', '507', '303', '36', '0', '18', '1020', '24', '30', '114', '1243', '12');
INSERT INTO "users" VALUES ('18563', 'Michael', 'Watson', '2607:f700:8001:1b:de58:5468:639b:8c8f', 'Labor Omnia Vincit.', '154', '', '', '', 'sfgergasi', '', '640', '1235', '330', '480', '144', '1650', '0', '144', '114', '558', '564');
INSERT INTO "users" VALUES ('18748', 'Faye', 'Bridge', '31.55.29.225', 'Community Manager at Treehouse. :) ', '58', '', '', '', 'fayebridge', '', '351', '147', '0', '24', '0', '1458', '0', '0', '0', '138', '0');
INSERT INTO "users" VALUES ('19643', 'Guil', 'Hernandez', '2607:f700:8001:1b:de58:5468:639b:8c8f', 'I''m a teacher at Treehouse!', '78', '', '', '', 'guilh', 'guiljh', '486', '2254', '324', '60', '0', '270', '0', '6', '12', '331', '126');
INSERT INTO "users" VALUES ('20019', 'Dan', 'Gorgone', '2607:f700:8001:1b:de58:5468:639b:8c8f', 'Dan is a Marketing and Business teacher at Treehouse.', '183', '', '', '', 'dangorgone', 'dangorgone', '692', '1224', '366', '535', '408', '1948', '78', '250', '508', '1071', '442');
INSERT INTO "users" VALUES ('20156', 'Jonathan', 'Dickerson', '68.59.188.141', '', '65', '', '', 'locomotes ', 'locomotes', '', '477', '699', '252', '0', '0', '618', '0', '0', '18', '282', '0');
INSERT INTO "users" VALUES ('20504', 'Sean', 'Gaffney', '24.196.190.13', 'I''m often unsure of what to do with my hair.', '21', 'seangaffney', 'seangaffney', 'seangaffney', 'seangaffney', 'seangaffney', '204', '162', '42', '229', '24', '12', '0', '30', '0', '36', '120');
INSERT INTO "users" VALUES ('20509', 'Rick', 'Harris', '50.161.67.115', '', '46', 'rickharris', '', '', 'iamrickharris', '', '552', '444', '114', '282', '138', '48', '54', '33', '63', '114', '84');
INSERT INTO "users" VALUES ('21740', 'Christopher', 'Peters', '67.193.116.13', 'I''m a data scientist at Treehouse!', '30', 'cpeter9', '', '', 'statwonk', '', '213', '105', '36', '758', '0', '0', '0', '0', '0', '0', '200');
INSERT INTO "users" VALUES ('22633', 'Alan', 'Johnson', '10.62.57.233', '', '3', '', '', '', '', '', '0', '0', '36', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('22837', 'Griffin', 'Moore', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '27', 'griffinmoore', '', '', 'okgriffin', '', '492', '282', '36', '204', '24', '144', '30', '0', '18', '36', '6');
INSERT INTO "users" VALUES ('23576', 'Micah', 'Cooksey', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '73', '', '', '', 'micahcooksey', '', '762', '1212', '78', '174', '66', '132', '24', '6', '72', '114', '12');
INSERT INTO "users" VALUES ('23952', 'Yvette', 'Jacquez', '50.139.32.234', '', '35', '', '', '', '', 'https://www.facebook.com/yvette.jacquez', '336', '372', '252', '0', '0', '6', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('23999', 'Luke', 'DiFiore', '10.248.126.64', '', '36', '', '', '', '', '', '288', '324', '252', '0', '0', '42', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('24174', 'Jake', 'Kemper', '67.30.140.26', '', '6', '', '', '', '', '', '63', '99', '0', '0', '0', '42', '72', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('24267', 'Chris', 'Zabriskie', '67.30.140.26', 'Composer and Producer at Treehouse!', '141', '', '', '', 'chriszabriskie', 'chriszabriskie', '565', '1392', '0', '7', '0', '1809', '139', '289', '655', '1236', '103');
INSERT INTO "users" VALUES ('24591', '', '', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('24919', 'Eric', 'Siu', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '19', '', '', '', 'ericosiu', '', '435', '165', '36', '84', '0', '156', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('25082', 'Daniel', 'Lewis', '2607:f700:8001:1b:de58:5468:639b:8c8f', 'Did you know you can add a description here? Because you can. I''m a Designer at Treehouse!', '15', '', '', 'danrlewis', 'danrlewis', 'danrlewis', '279', '111', '18', '0', '0', '0', '0', '0', '0', '36', '0');
INSERT INTO "users" VALUES ('25153', 'Marshall', 'Huss', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '49', 'mwhuss', 'mwhuss', '', 'mwhuss', '', '319', '156', '144', '577', '339', '109', '24', '19', '0', '108', '115');
INSERT INTO "users" VALUES ('25506', '', '', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('26143', 'Aaron', 'Kalin', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '3', 'martinisoft', 'martinisoft', '', 'martinisoft', '', '18', '48', '0', '12', '78', '6', '0', '12', '0', '0', '12');
INSERT INTO "users" VALUES ('26160', 'Paige', 'Coley', '67.30.140.26', '', '2', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '96', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('26170', 'Andrew', 'Chalkley', '50.139.32.234', '', '91', 'chalkers', 'chalkers', '', 'chalkers', 'andrewchalkley', '752', '700', '899', '551', '242', '96', '48', '525', '18', '144', '461');
INSERT INTO "users" VALUES ('26205', 'Rob', 'Allessi', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '25', '', '', '', 'The_Spirit_Bomb', 'rob.allessi@gmail.com', '556', '562', '30', '36', '25', '13', '24', '12', '0', '12', '0');
INSERT INTO "users" VALUES ('26397', 'Robert S', 'Mozayeni', '96.231.138.118', '', '56', 'rsmoz', '', '', 'rsmoz', '', '399', '321', '144', '462', '522', '420', '102', '0', '0', '108', '66');
INSERT INTO "users" VALUES ('26479', 'Patrick', 'Bell', '2607:f700:8001:1b:de58:5468:639b:8c8f', 'I live in Orlando, Fl and I make photographs, videos and music;
You can check out my work at the website provided below!
I''m also an avid learner and part of the wonderful crew here at Treehouse!', '57', '', '', '', 'PatrickBellS', 'Patrick Scott Bell', '531', '489', '72', '0', '30', '654', '0', '78', '300', '492', '78');
INSERT INTO "users" VALUES ('27106', 'Chris', 'Michel', '67.180.230.71', '', '31', 'zurbchris', '', '', 'hatefulcrawdad', '', '435', '1257', '0', '24', '0', '0', '0', '0', '0', '2', '0');
INSERT INTO "users" VALUES ('27359', 'Zac', 'Gordon', '172.56.2.13', '', '66', '', '', 'zgordon', 'zgordon', '', '435', '496', '145', '36', '0', '156', '1', '570', '1771', '66', '126');
INSERT INTO "users" VALUES ('28897', 'Alan', 'Johnson', '10.28.251.230', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('31257', 'Unsubscribed', 'User', '50.200.5.113', '', '6', '', '', '', '', '', '33', '33', '0', '204', '24', '54', '0', '18', '12', '0', '0');
INSERT INTO "users" VALUES ('33156', 'guest', 'member', '80.171.179.213', '', '3', '', '', '', '', '', '84', '81', '3', '0', '12', '0', '0', '30', '0', '0', '0');
INSERT INTO "users" VALUES ('33367', 'Alan', 'Johnson', '76.115.44.46', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('34904', 'Media', 'Making ', '151.225.82.215', '', '1', '', '', '', '', '', '12', '12', '0', '0', '0', '0', '0', '0', '0', '12', '0');
INSERT INTO "users" VALUES ('34907', 'Online', 'Journalism', '149.170.169.3', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('37687', 'Tim', 'Gaffney', '68.115.251.182', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('38374', 'Adobe', 'Admin', '69.136.58.240', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('39571', 'Jean-Louis', 'Jabouin', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '3', '', '', '', '', '', '33', '33', '0', '0', '0', '0', '0', '0', '60', '0', '0');
INSERT INTO "users" VALUES ('42708', 'Rick', 'Harris', '50.131.222.139', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('42819', 'Demo Account', 'demo', '67.30.140.26', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('45132', 'Test this code', 'Test this code', '24.73.152.82', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('48525', 'The', 'Ambassador', '67.30.140.26', '', '3', '', '', '', '', '', '69', '63', '6', '0', '0', '0', '0', '0', '0', '0', '6');
INSERT INTO "users" VALUES ('48927', 'Demo', 'Demo', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '6', '', '', '', '', '', '129', '129', '36', '12', '12', '6', '24', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('54435', 'Matthew', 'Spiel', '2607:f700:8001:1b:de58:5468:639b:8c8f', 'Designer at Treehouse. Previously designing and developing websites on ExpressionEngine. Lover of branding and illustration. I wish I knew more about print.', '20', '', '', 'matthewspiel', 'thinmatt', '', '147', '327', '0', '162', '0', '36', '0', '0', '66', '48', '180');
INSERT INTO "users" VALUES ('63356', 'Ryan', 'Carson', '', '', '2', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('63357', 'Joe', 'Jangles', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('63358', 'Billy', 'Jean', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('63612', 'chris', 'zabaleta', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('63613', 'Test', 'Account', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('64065', 'Testing', 'Carson', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('69302', 'Alan', 'Johnson', '', '', '2', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('69303', 'Alan', 'Johnson', '', '', '2', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('72097', 'chris', 'Zabaleta', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('72345', 'John', 'Doe', '173.56.7.192', '', '36', '', '', '', '', '', '346', '339', '30', '7', '0', '7', '0', '7', '0', '90', '7');
INSERT INTO "users" VALUES ('73627', 'Etan', 'Berkowitz', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('73798', 'Alan', 'Johnson', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('73940', 'Alan', 'Johnson', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('73943', 'Alan', 'Johnson', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('74463', 'Alan', 'Johnson', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('74485', 'Alan', 'Johnson', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('75009', 'Alan', 'Johnson', '', '', '2', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('75400', 'Robert', 'Rivera', '', '', '2', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('75884', 'Alan', 'Johnson', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('75885', 'Alan', 'Johnson', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('75886', 'Alan', 'Johnson', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('75938', 'Donkey', 'Kong', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('75939', 'Original', 'Gangster', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('76145', 'Alan', 'Johnson', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('76146', 'Alan', 'Johnson', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('76685', 'Alan', 'Johnson', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('76686', 'Alan', 'Johnson', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('77399', 'Buddy', 'Holly', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('77455', 'Demo', 'Demo', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('77753', 'test', 'test', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('79989', 'Heather', 'Jurczyk', '24.21.175.83', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('83600', 'Joe ', 'Smith', '76.115.44.165', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('85954', 'Travis', 'Fadjo', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '4', '', '', '', '', '', '12', '12', '0', '0', '0', '0', '0', '0', '24', '132', '0');
INSERT INTO "users" VALUES ('86418', 'Hampton', 'Paulk', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '33', 'hamptonpaulk', '', '', 'hamptonpaulk', '', '48', '33', '0', '78', '336', '0', '0', '1335', '82', '0', '159');
INSERT INTO "users" VALUES ('87338', 'Joe', 'Steele', '2607:f700:8001:1b:de58:5468:639b:8c8f', 'I''m a developer at Treehouse living in sunny Clearwater, FL. I''m also a father of 2 fun little boys and a former orchestral trombonist.', '45', 'joesteele', '', '', 'joe_steele', '', '33', '33', '144', '12', '789', '0', '954', '0', '24', '0', '588');
INSERT INTO "users" VALUES ('87340', 'Kyle', 'Meyer', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '41', 'kaiuhl', '', '', 'kaiuhl', 'kylemeyer', '9', '57', '0', '1236', '53', '138', '0', '0', '0', '0', '123');
INSERT INTO "users" VALUES ('90101', 'Tim', 'Ritter', '67.30.140.26', '', '2', '', '', '', '', '', '0', '0', '0', '0', '0', '66', '0', '0', '24', '0', '0');
INSERT INTO "users" VALUES ('91454', 'Shawna', 'Poharcyk', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '3', '', '', '', '', '', '63', '63', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('93995', '', '', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('94110', 'Lexington', 'Library', '50.53.132.47', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('98052', 'Eric', 'Hollbach', '75.119.251.71', '', '6', '', '', '', '', '', '153', '153', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('100988', 'Apple', 'Review', '96.243.210.172', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('104587', 'Johnny', 'Wu', '2607:f700:8001:1b:de58:5468:639b:8c8f', 'Video Team Intern. Film Enthusiast. Tinkerer. Part-Time Thinker', '18', '', '', '', '@jonathanpeterwu', '', '471', '192', '36', '120', '0', '96', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('106684', '', '', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('107777', 'Mike', 'the Frog', '142.196.162.85', '', '227', '', '', '', '', '', '510', '1140', '375', '960', '660', '1080', '330', '540', '270', '540', '315');
INSERT INTO "users" VALUES ('107842', 'Eric', 'Smith', '184.97.83.218', 'Graphic design with a smile.', '1', '', '', 'es_ws', 'es_ws', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('107949', 'void', 'void', '50.133.165.105', '', '3', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '138', '0', '0');
INSERT INTO "users" VALUES ('108058', 'Trial', 'SMRLD', '24.21.119.44', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('109369', 'Jonathan', 'Luna', '184.89.5.81', '', '2', '', '', '', '', '', '30', '30', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('111716', 'John Paul', 'Ashenfelter', '166.170.35.168', '', '4', '', '', '', '', '', '7', '0', '0', '94', '60', '7', '1', '19', '0', '0', '19');
INSERT INTO "users" VALUES ('111803', '', '', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('112404', 'Jay', 'Welker', '67.30.140.26', '', '6', '', '', '', 'jpwrock777', 'jay.welker.777', '63', '63', '0', '12', '0', '6', '0', '0', '60', '126', '0');
INSERT INTO "users" VALUES ('114660', 'jonathan', 'dickerson', '66.250.191.192', '', '2', '', '', '', '', '', '30', '30', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('114666', 'The', 'Factory', '68.60.9.141', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('115687', 'MontgomeryCo', 'PublicLibrary', '68.60.9.141', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('116236', 'Kevin', 'King', '24.21.119.44', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('117252', 'Conference', 'Demo', '24.172.46.34', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('117486', 'Brooklyn', 'PublicLibrary', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('117914', 'Chris ', 'Zabaleta', '67.30.140.26', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('118331', 'OCLS', 'TestUser', '50.131.222.139', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('119092', 'Kenton Demo', 'Kenton Demo', '68.60.9.141', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('121162', 'Chelsey', 'V', '50.165.115.74', '', '1', '', '', '', '', '', '0', '0', '0', '12', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('121450', 'Jay', 'McGavren', '2607:f700:8001:1b:de58:5468:639b:8c8f', 'I''ve been a software developer since 2004, and have been involved with online developer training since 2011.  (I have a knack for explaining things, or so I hear.)', '2', 'jaymcgavren', '', '', 'jaymcgavren', '', '9', '45', '0', '54', '0', '0', '24', '0', '0', '0', '54');
INSERT INTO "users" VALUES ('121986', 'Test', 'Tester', '24.20.26.221', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('124200', 'Manchester', 'MetropolitanUniv', '94.14.20.56', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('124676', 'Scott', 'Magdalein', '66.177.170.34', 'Support Developer at Treehouse', '18', 'scottmagdalein', '', 'scottmagdalein', 'scottmagdalein', '', '106', '250', '288', '43', '12', '170', '0', '7', '0', '0', '187');
INSERT INTO "users" VALUES ('125182', 'Billy', 'Bob-test', '50.139.50.91', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('125991', 'Alan', 'Johnson', '50.139.51.142', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('128190', 'blahha', 'Balalhaha', '50.139.50.91', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('128401', 'Test', 'Test', '50.139.50.91', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('128422', 'Lora L.', 'Abe', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '2', 'labe', '', '', 'dottedlinegirl', '', '12', '12', '24', '12', '0', '0', '0', '0', '0', '36', '0');
INSERT INTO "users" VALUES ('129255', 'Ryan', 'Carson', '50.139.50.91', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('129667', 'Ryan', 'Carson', '50.139.50.91', 'I''m Ryan!', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('130795', 'Alex', 'Penny', '174.44.58.93', '', '48', '', '', '', '', '', '525', '741', '522', '0', '0', '306', '0', '0', '0', '108', '126');
INSERT INTO "users" VALUES ('146022', 'Garrett', 'Kuromoto', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('164812', 'chris test', 'test', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('170882', '', '', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('170902', '', '', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('171122', 'Flow', 'Robot', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('188732', 'Micah', 'Cooksey', '2607:f700:8001:1b:de58:5468:639b:8c8f', 'TEst', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('206582', 'Chris Test Test', 'Test ', '2607:f700:8001:1b:de58:5468:639b:8c8f', 'Super cool', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('210812', '', '', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('270942', 'Nate', 'Meyer', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('282592', '', '', '', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('309772', 'Kristen', 'Badal', '71.183.18.17', '', '39', '', '', '', '', '', '0', '0', '0', '0', '0', '1668', '0', '0', '0', '12', '0');
INSERT INTO "users" VALUES ('316592', 'John', 'Doe', '2607:f700:8001:1b:de58:5468:639b:8c8f', '', '1', '', '', '', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('364082', 'Milo', 'Winningham', '71.193.202.124', '', '2', 'quadule', '', '', 'sorghum', 'milo.winningham', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO "users" VALUES ('383072', 'Guest', 'Guest', '207.159.196.253', '', '2', '', '', '', '', '', '33', '33', '0', '0', '0', '0', '0', '0', '0', '0', '0');
COMMIT;

