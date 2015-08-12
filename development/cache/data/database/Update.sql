-- query
DROP TABLE IF EXISTS app_accentry;
-- query
CREATE TABLE `app_accentry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optgroup` int(11) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `entrydate` datetime NOT NULL,
  `businessdate` date NOT NULL,
  `code` varchar(100) NOT NULL,
  `debitaccount` varchar(100) NOT NULL,
  `creditaccount` varchar(100) NOT NULL,
  `crbalance` float NOT NULL,
  `drbalance` float NOT NULL,
  `amount` float NOT NULL,
  `shortremark` varchar(100) NOT NULL,
  `fullremark` varchar(255) NOT NULL,
  `link` varchar(200) NOT NULL,
  `qty` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `debitaccount` (`debitaccount`),
  KEY `creditaccount` (`creditaccount`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
-- query
INSERT INTO app_accentry VALUES ('1', '0', '', '2015-07-20 20:40:54', '2015-07-20', 'LOAN', '2011158392268', '2021138832569', '-3000', '3000', '3000', '', 'Partner Investment', '', '');
-- query
INSERT INTO app_accentry VALUES ('2', '0', '', '2015-07-20 20:41:29', '2015-07-20', 'RECEIPT', '2011158392268', '2031395761673', '-14000', '17000', '14000', '', 'Partial Payment Month July 2015', '', '');
-- query
INSERT INTO app_accentry VALUES ('3', '0', '', '2015-07-20 20:45:48', '2015-07-20', 'TIPS', '2091124566377', '2011158392268', '9000', '8000', '8000', '', 'Loan Taken(3000 Prev+5000)', '', '');
-- query
INSERT INTO app_accentry VALUES ('8', '0', '', '2015-07-20 21:47:59', '2015-07-20', 'PAYMENT', '2011590347290', '2011158392268', '8000', '500', '500', '', 'First Payment Tips', '', '');
-- query
INSERT INTO app_accentry VALUES ('7', '0', '', '2015-07-20 21:45:28', '2015-07-20', 'PAYMENT', '2051171031614', '2011158392268', '8500', '500', '500', '', 'First Payment Tips', '', '');
-- query
INSERT INTO app_accentry VALUES ('9', '0', '', '2015-07-20 21:50:17', '2015-07-20', 'ADJUSTMENT', '2010883654785', '2051171031614', '0', '500', '500', '', 'Cash Adjustment', '', '');
-- query
INSERT INTO app_accentry VALUES ('10', '0', '', '2015-07-20 21:50:53', '2015-07-20', 'ADJUSTMENT', '2010883654785', '2011590347290', '0', '1000', '500', '', 'Cash Adjustment', '', '');
-- query
INSERT INTO app_accentry VALUES ('14', '0', '', '2015-07-22 12:15:34', '2015-07-22', 'ADJUSTMENT', '2071068477719', '2011158392268', '4000', '4000', '4000', '', 'Purchase', '', '');
-- query
INSERT INTO app_accentry VALUES ('15', '0', '', '2015-07-22 18:50:28', '2015-07-22', 'RECEIPT', '2011158392268', '2041161721046', '-400', '4400', '400', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('16', '0', '', '2015-07-22 18:51:05', '2015-07-22', 'RECEIPT', '2011158392268', '2081139946333', '-400', '4800', '400', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('17', '0', '', '2015-07-22 18:52:54', '2015-07-22', 'RECEIPT', '2011158392268', '2051171031614', '-5555', '10355', '5555', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('18', '0', '', '2015-07-22 18:52:56', '2015-07-22', 'RECEIPT', '2011158392268', '2051171031614', '-11110', '15910', '5555', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('19', '0', '', '2015-07-22 18:53:20', '2015-07-22', 'RECEIPT', '2011158392268', '2051171031614', '-11510', '16310', '400', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('20', '0', '', '2015-07-22 18:53:57', '2015-07-22', 'RECEIPT', '2011158392268', '2021138832569', '-3333', '16643', '333', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('21', '0', '', '2015-07-22 18:54:28', '2015-07-22', 'RECEIPT', '2011158392268', '2071068477719', '3500', '17143', '500', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('22', '0', '', '2015-07-22 18:54:35', '2015-07-22', 'RECEIPT', '2011158392268', '2041161721046', '-900', '17643', '500', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('23', '0', '', '2015-07-22 19:10:44', '2015-07-22', 'PAYMENT', '2011158392268', '2061024202468', '-500', '18143', '500', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('24', '0', '', '2015-07-22 19:31:26', '2015-07-22', 'ADJUSTMENT', '2011158392268', '2081139946333', '-1200', '18943', '800', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('25', '0', '', '2015-07-22 19:31:52', '2015-07-22', 'RECEIPT', '2011158392268', '2081139946333', '-1900', '19643', '700', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('26', '0', '', '2015-07-22 19:32:17', '2015-07-22', 'STAFF_LOAN', '2011158392268', '2081139946333', '-1990', '19733', '90', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('27', '2', '', '2015-07-22 20:07:13', '2015-07-22', '', '2011158392268', '2081139946333', '-2990', '20733', '1000', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('28', '2', '', '2015-07-22 20:07:20', '2015-07-22', 'PAYMENT', '2011158392268', '2081139946333', '-5990', '23733', '3000', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('29', '3', '', '2015-07-22 20:10:38', '2015-07-22', 'SOAP', '2011158392268', '2071068477719', '-500', '27733', '4000', '', 'Dayle', '', '');
-- query
INSERT INTO app_accentry VALUES ('30', '3', '', '2015-07-22 20:10:45', '2015-07-22', 'SOAP2', '2011158392268', '2071068477719', '-800', '28033', '300', '', 'Dayle', '', '');
-- query
INSERT INTO app_accentry VALUES ('31', '3', '', '2015-07-22 20:12:20', '2015-07-22', 'RECEIPT', '2011158392268', '2021138832569', '-4133', '28833', '800', '', 'Dayle', '', '');
-- query
INSERT INTO app_accentry VALUES ('32', '3', '', '2015-07-22 20:13:43', '2015-07-22', 'RECEIPT', '2011158392268', '2031395761673', '-14500', '29333', '500', '', 'Dayle', '', '');
-- query
INSERT INTO app_accentry VALUES ('33', '2', '', '2015-07-22 20:24:54', '2015-07-22', 'STAFF_LOAN', '2011158392268', '2081139946333', '-6790', '30133', '800', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('34', '2', '', '2015-07-22 20:26:30', '2015-07-22', 'LOAN', '2011158392268', '2081139946333', '-6850', '30193', '60', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('35', '3', '', '2015-07-22 20:27:16', '2015-07-22', 'RECEIPT', '2011158392268', '2031395761673', '-14580', '30273', '80', '', 'Dayle', '', '');
-- query
INSERT INTO app_accentry VALUES ('36', '3', '', '2015-07-22 20:27:24', '2015-07-22', 'RECEIPT', '2011158392268', '2031395761673', '-14679', '30372', '99', '', 'Dayle', '', '');
-- query
INSERT INTO app_accentry VALUES ('37', '2', '', '2015-07-22 20:36:39', '2015-07-22', 'RECEIPT', '2011158392268', '2081139946333', '-7350', '30872', '500', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('38', '2', '', '2015-07-22 20:36:47', '2015-07-22', 'STAFF_LOAN', '2011158392268', '2081139946333', '-7950', '31472', '600', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('39', '2', '', '2015-07-23 18:31:34', '2015-07-23', 'LOAN', '2011158392268', '2031395761673', '-14707', '31500', '28', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('40', '2', '', '2015-07-23 18:31:51', '2015-07-23', 'LOAN', '2011158392268', '2031395761673', '-14735', '31528', '28', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('41', '2', '', '2015-07-23 18:33:47', '2015-07-23', 'LOAN', '2011158392268', '2031395761673', '-14763', '31556', '28', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('42', '3', '', '2015-07-23 18:33:47', '2015-07-23', 'LOAN', '2021138832569', '2031395761673', '-14813', '-4083', '50', '', 'Dayle', '', '');
-- query
INSERT INTO app_accentry VALUES ('43', '4', '', '2015-07-23 18:33:47', '2015-07-23', 'PAYMENT', '2021138832569', '2031395761673', '-14814.4', '-4081.6', '1.4', '', 'Montly', '', '');
-- query
INSERT INTO app_accentry VALUES ('44', '0', '', '2015-07-23 18:56:42', '2015-07-23', 'SALARY', '2051171031614', '2061024202468', '-11500', '-510', '11000', '', 'Posting', '', '');
-- query
INSERT INTO app_accentry VALUES ('45', '0', '', '2015-07-23 18:58:12', '2015-07-23', 'ADJUSTMENT', '2012467163085', '2051171031614', '-1510', '1000', '1000', '', 'VAT', '', '');
-- query
INSERT INTO app_accentry VALUES ('46', '0', '', '2015-07-23 18:59:28', '2015-07-23', 'ADJUSTMENT', '2051171031614', '2011158392268', '30046', '0', '1510', '', 'Posting', '45', '');
-- query
INSERT INTO app_accentry VALUES ('51', '0', '', '2015-07-23 19:04:06', '2015-07-23', 'SALARY', '2061024202468', '2051171031614', '-11000', '-500', '11000', '', 'salary', '', '');
-- query
INSERT INTO app_accentry VALUES ('52', '0', '', '2015-07-23 19:04:36', '2015-07-23', 'ADJUSTMENT', '2051171031614', '2012467163085', '-650', '-9350', '1650', '', 'Posting', '', '');
-- query
INSERT INTO app_accentry VALUES ('53', '0', '', '2015-07-23 19:05:00', '2015-07-23', 'PAYMENT', '2051171031614', '2011158392268', '20696', '0', '9350', '', 'salary', '52', '');
-- query
INSERT INTO app_accentry VALUES ('54', '2', '', '2015-07-23 19:12:11', '2015-07-23', 'SALARY', '2061024202468', '2051171031614', '-11000', '10500', '11000', '', '', '', '');
-- query
INSERT INTO app_accentry VALUES ('55', '3', '', '2015-07-23 19:12:11', '2015-07-23', 'PAYMENT', '2051171031614', '2011158392268', '11346', '-1650', '9350', '', '', '', '');
-- query
INSERT INTO app_accentry VALUES ('56', '4', '', '2015-07-23 19:12:11', '2015-07-23', 'ADJUSTMENT', '2051171031614', '2012467163085', '-2300', '0', '1650', '', 'VAT AMOUNT', '', '');
-- query
INSERT INTO app_accentry VALUES ('57', '2', '', '2015-07-23 19:33:43', '2015-07-23', 'SALARY', '2061024202468', '2051171031614', '-10000', '20500', '10000', '', '', '', '');
-- query
INSERT INTO app_accentry VALUES ('58', '3', '', '2015-07-23 19:33:43', '2015-07-23', 'PAYMENT', '2051171031614', '2011158392268', '2846', '-1500', '8500', '', '', '', '');
-- query
INSERT INTO app_accentry VALUES ('59', '4', '', '2015-07-23 19:33:43', '2015-07-23', 'ADJUSTMENT', '2051171031614', '2012467163085', '-3800', '0', '1500', '', 'VAT AMOUNT', '', '');
-- query
INSERT INTO app_accentry VALUES ('60', '2', '', '2015-07-23 20:34:43', '2015-07-23', 'SALARY', '2061024202468', '2051171031614', '-300', '20800', '300', '', '', '', '');
-- query
INSERT INTO app_accentry VALUES ('61', '3', '', '2015-07-23 20:34:43', '2015-07-23', 'PAYMENT', '2051171031614', '2011158392268', '2591', '-45', '255', '', '', '', '');
-- query
INSERT INTO app_accentry VALUES ('62', '4', '', '2015-07-23 20:34:43', '2015-07-23', 'ADJUSTMENT', '2051171031614', '2012467163085', '-3845', '0', '45', '', 'VAT AMOUNT', '', '');
-- query
INSERT INTO app_accentry VALUES ('63', '2', '', '2015-07-23 20:34:58', '2015-07-23', 'SALARY', '2061024202468', '2051171031614', '-10000', '30800', '10000', '', '', '', '');
-- query
INSERT INTO app_accentry VALUES ('64', '3', '', '2015-07-23 20:34:58', '2015-07-23', 'PAYMENT', '2051171031614', '2011158392268', '-5909', '-1500', '8500', '', '', '', '');
-- query
INSERT INTO app_accentry VALUES ('65', '4', '', '2015-07-23 20:34:58', '2015-07-23', 'ADJUSTMENT', '2051171031614', '2012467163085', '-5345', '0', '1500', '', 'VAT AMOUNT', '', '');
-- query
INSERT INTO app_accentry VALUES ('66', '2', '', '2015-07-23 20:41:19', '2015-07-23', 'SALARY', '2061024202468', '2051171031614', '-11000', '41800', '11000', '', '', '', '');
-- query
INSERT INTO app_accentry VALUES ('67', '3', '', '2015-07-23 20:41:19', '2015-07-23', 'PAYMENT', '2051171031614', '2011158392268', '-15259', '-1650', '9350', '', '', '', '');
-- query
INSERT INTO app_accentry VALUES ('68', '4', '', '2015-07-23 20:41:19', '2015-07-23', 'ADJUSTMENT', '2051171031614', '2012467163085', '-6995', '0', '1650', '', 'VAT AMOUNT', '', '');
-- query
DROP TABLE IF EXISTS app_accgenerator;
-- query
CREATE TABLE `app_accgenerator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminref` int(11) NOT NULL,
  `entrydate` datetime NOT NULL DEFAULT '2015-07-16 23:54:42',
  `lastmodified` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `constant` varchar(255) NOT NULL,
  `length` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
-- query
INSERT INTO app_accgenerator VALUES ('1', '1', '2015-07-16 23:54:42', '2015-07-16 23:55:43', 'Generator', '20', '13');
-- query
INSERT INTO app_accgenerator VALUES ('2', '1', '2015-07-16 23:54:42', '2015-07-22 12:18:05', 'Generator', '20', '13');
-- query
DROP TABLE IF EXISTS app_accoperationtemplates;
-- query
CREATE TABLE `app_accoperationtemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `debitaccount` varchar(100) NOT NULL,
  `creditaccount` varchar(100) NOT NULL,
  `debitautoselection` enum('1','0') NOT NULL,
  `creditautoselection` enum('1','0') NOT NULL,
  `code` varchar(100) NOT NULL,
  `groupid` varchar(100) NOT NULL,
  `method` varchar(10) NOT NULL,
  `value` float NOT NULL,
  `shortremark` varchar(100) NOT NULL,
  `fullremark` varchar(255) NOT NULL,
  `entrydate` datetime NOT NULL,
  `createdby` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
-- query
INSERT INTO app_accoperationtemplates VALUES ('2', 'Salary Pay TO', '2061024202468', '', '0', '1', 'SALARY', '1', 'Percentage', '100', 'SALARY POSTING', '', '2015-07-23 08:13:27', '1');
-- query
INSERT INTO app_accoperationtemplates VALUES ('3', 'Payment', '', '2011158392268', '1', '0', 'PAYMENT', '1', 'Percentage', '85', 'Payment', '', '2015-07-23 08:17:24', '1');
-- query
INSERT INTO app_accoperationtemplates VALUES ('4', 'VAT Pay From', '', '2012467163085', '1', '0', 'ADJUSTMENT', '1', 'Percentage', '15', 'Vat', 'VAT AMOUNT', '2015-07-23 08:17:44', '1');
-- query
INSERT INTO app_accoperationtemplates VALUES ('6', 'Test', '2031395761673', '', '0', '1', 'LOAN', '2', 'Percentage', '100', 'Payment', 'Montly', '2015-07-23 08:11:07', '1');
-- query
DROP TABLE IF EXISTS app_accountchart;
-- query
CREATE TABLE `app_accountchart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entityid` int(11) NOT NULL,
  `no` varchar(100) NOT NULL,
  `acctype` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `operator` int(11) NOT NULL,
  `entrydate` datetime NOT NULL,
  `method` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
-- query
INSERT INTO app_accountchart VALUES ('1', '0', '2011158392268', '6', 'Cash A/C', '1', '2015-07-18 20:37:03', 'Financial');
-- query
INSERT INTO app_accountchart VALUES ('2', '0', '2021138832569', '11', 'REZA''S CAPITAL A/C', '1', '2015-07-18 20:38:16', 'Financial');
-- query
INSERT INTO app_accountchart VALUES ('3', '0', '2031395761673', '7', 'ABC Rent Car', '1', '2015-07-18 20:47:22', 'Financial');
-- query
INSERT INTO app_accountchart VALUES ('4', '0', '2041161721046', '11', 'Rent Income', '1', '2015-07-18 21:03:51', 'Financial');
-- query
INSERT INTO app_accountchart VALUES ('5', '0', '2051171031614', '8', 'Dulal Driver', '1', '2015-07-18 21:11:42', 'Financial');
-- query
INSERT INTO app_accountchart VALUES ('6', '0', '2061024202468', '11', 'Salary Account', '1', '2015-07-18 21:23:15', 'Financial');
-- query
INSERT INTO app_accountchart VALUES ('7', '0', '2071068477719', '6', 'Eauiptment', '1', '2015-07-18 21:33:52', 'Financial');
-- query
INSERT INTO app_accountchart VALUES ('8', '0', '2081139946333', '8', 'General Expense', '1', '2015-07-18 21:42:59', 'Financial');
-- query
INSERT INTO app_accountchart VALUES ('9', '0', '2091124566377', '6', 'Dulal Loan A/C', '1', '2015-07-18 21:55:18', 'Financial');
-- query
INSERT INTO app_accountchart VALUES ('10', '0', '2010883654785', '8', 'Employee Motivation Expense (TIPS)', '1', '2015-07-20 20:52:45', 'Financial');
-- query
INSERT INTO app_accountchart VALUES ('11', '0', '2011590347290', '8', 'Rubel - Rent Car Representation', '1', '2015-07-20 21:47:08', 'Financial');
-- query
INSERT INTO app_accountchart VALUES ('12', '0', '2012467163085', '7', 'VAT', '1', '2015-07-23 18:57:31', 'Financial');
-- query
DROP TABLE IF EXISTS app_acctype;
-- query
CREATE TABLE `app_acctype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminref` int(11) NOT NULL,
  `entrydate` datetime NOT NULL DEFAULT '2015-07-16 23:55:52',
  `lastmodified` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `tier` enum('ASSET','LIABILITY','INCOME','EXPENSE') NOT NULL,
  `accgenerator` varchar(255) NOT NULL,
  `scheme` enum('CONSOLIDATED','NONCONSOLIDATED') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
-- query
INSERT INTO app_acctype VALUES ('11', '1', '2015-07-16 23:55:52', '2015-07-18 20:36:07', 'OWNERSEQUITY', 'ASSET', '1', 'CONSOLIDATED');
-- query
INSERT INTO app_acctype VALUES ('6', '1', '2015-07-16 23:55:52', '2015-07-18 20:34:57', 'ASSET', 'ASSET', '1', 'CONSOLIDATED');
-- query
INSERT INTO app_acctype VALUES ('7', '1', '2015-07-16 23:55:52', '2015-07-18 20:35:08', 'LIABILITY ', 'LIABILITY', '1', 'CONSOLIDATED');
-- query
INSERT INTO app_acctype VALUES ('8', '1', '2015-07-16 23:55:52', '2015-07-18 20:35:23', 'EXPENSE', 'EXPENSE', '1', 'CONSOLIDATED');
-- query
INSERT INTO app_acctype VALUES ('10', '1', '2015-07-16 23:55:52', '2015-07-18 20:35:41', 'INCOME', 'INCOME', '1', 'CONSOLIDATED');
-- query
INSERT INTO app_acctype VALUES ('12', '1', '2015-07-16 23:55:52', '2015-07-22 12:18:22', 'OWNERSEQUITY', 'ASSET', '1', 'CONSOLIDATED');
-- query
DROP TABLE IF EXISTS app_administrators;
-- query
CREATE TABLE `app_administrators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `createdate` datetime NOT NULL,
  `latestlogin` int(11) NOT NULL,
  `lastlogin` int(11) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `type` enum('Super','Normal') NOT NULL DEFAULT 'Normal',
  `acl` text NOT NULL,
  `aclobject` text NOT NULL,
  `description` text NOT NULL,
  `resetsid` varchar(200) NOT NULL,
  `lastresettime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
-- query
INSERT INTO app_administrators VALUES ('1', 'Website', 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'info@site.com', '2015-07-16 19:35:39', '1437652452', '1437623393', 'Active', 'Super', '', '', '', '', '1437068139');
-- query
DROP TABLE IF EXISTS app_appslide;
-- query
CREATE TABLE `app_appslide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminref` int(11) NOT NULL,
  `entrydate` datetime NOT NULL DEFAULT '2012-08-18 10:08:56',
  `lastmodified` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
-- query
INSERT INTO app_appslide VALUES ('3', '1', '2015-06-18 12:25:11', '2015-07-06 13:30:54', 'VERSION', 'pagemanager.png', '<p>&nbsp;</p>

<p>&nbsp;</p>

<h1>appRain Version 3.0.4</h1>

<h2>For Endless Rapid Development!</h2>
', 'Active');
-- query
DROP TABLE IF EXISTS app_categories;
-- query
CREATE TABLE `app_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkey` int(11) NOT NULL DEFAULT '0',
  `adminref` int(11) NOT NULL DEFAULT '0',
  `parentid` int(11) NOT NULL DEFAULT '0',
  `image` varchar(200) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `generic` varchar(250) NOT NULL,
  `entrydate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastmodified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
-- query
INSERT INTO app_categories VALUES ('1', '0', '1', '0', 'color_wheel_730.png', 'Salary', '', 'accopttemplategrp', '10', '2015-07-23 18:34:33', '2015-07-23 18:34:33');
-- query
INSERT INTO app_categories VALUES ('2', '0', '1', '0', 'color_wheel_730_14376277858536.png', 'Group 2', '', 'accopttemplategrp', '11', '2015-07-23 12:03:05', '2015-07-23 12:03:05');
-- query
INSERT INTO app_categories VALUES ('3', '0', '1', '0', 'color_wheel_730_14376278096354.png', 'Group 3', '', 'accopttemplategrp', '12', '2015-07-23 12:03:29', '2015-07-23 12:03:29');
-- query
DROP TABLE IF EXISTS app_coreresources;
-- query
CREATE TABLE `app_coreresources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `type` enum('Model','Module','Plugin','Component') NOT NULL DEFAULT 'Model',
  `version` varchar(200) NOT NULL DEFAULT '',
  `status` enum('Active','Inactive') NOT NULL,
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
-- query
INSERT INTO app_coreresources VALUES ('1', 'Admin', 'Model', '0.1.0', 'Active', '');
-- query
INSERT INTO app_coreresources VALUES ('2', 'Category', 'Model', '0.1.0', 'Active', '');
-- query
INSERT INTO app_coreresources VALUES ('3', 'Config', 'Model', '0.1.0', 'Active', '');
-- query
INSERT INTO app_coreresources VALUES ('4', 'Coreresource', 'Model', '0.1.0', 'Active', '');
-- query
INSERT INTO app_coreresources VALUES ('5', 'Developer', 'Model', '0.1.0', 'Active', '');
-- query
INSERT INTO app_coreresources VALUES ('6', 'Home', 'Model', '0.1.0', 'Active', '');
-- query
INSERT INTO app_coreresources VALUES ('7', 'Information', 'Model', '0.1.0', 'Active', '');
-- query
INSERT INTO app_coreresources VALUES ('8', 'Log', 'Model', '0.1.0', 'Active', '');
-- query
INSERT INTO app_coreresources VALUES ('9', 'Page', 'Model', '0.1.0', 'Active', '');
-- query
INSERT INTO app_coreresources VALUES ('10', 'appeditor', 'Component', '0.1.7', 'Active', 'a:1:{s:11:"installdate";s:19:"2015-07-14 15:02:02";}');
-- query
INSERT INTO app_coreresources VALUES ('11', 'appslide', 'Component', '0.1.0', 'Active', 'a:1:{s:11:"installdate";s:19:"2015-07-14 15:02:04";}');
-- query
INSERT INTO app_coreresources VALUES ('12', 'dbexpert', 'Component', '0.1.2', 'Active', 'a:1:{s:11:"installdate";s:19:"2015-07-14 15:02:07";}');
-- query
INSERT INTO app_coreresources VALUES ('13', 'accounts', 'Component', '0.1.0', 'Active', 'a:1:{s:11:"installdate";s:19:"2015-07-16 23:54:30";}');
-- query
INSERT INTO app_coreresources VALUES ('14', 'Accchart', 'Model', '0.1.0', 'Active', '');
-- query
INSERT INTO app_coreresources VALUES ('15', 'Accentry', 'Model', '0.1.0', 'Active', '');
-- query
INSERT INTO app_coreresources VALUES ('16', 'Accopttemplate', 'Model', '0.1.0', 'Active', '');
-- query
DROP TABLE IF EXISTS app_emailtemplate;
-- query
CREATE TABLE `app_emailtemplate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminref` int(11) NOT NULL,
  `entrydate` datetime NOT NULL DEFAULT '2012-08-22 15:59:32',
  `lastmodified` datetime NOT NULL,
  `templatetype` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
-- query
DROP TABLE IF EXISTS app_entrycode;
-- query
CREATE TABLE `app_entrycode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminref` int(11) NOT NULL,
  `entrydate` datetime NOT NULL DEFAULT '2015-07-16 23:58:58',
  `lastmodified` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `shortcomment` varchar(255) NOT NULL,
  `linked` enum('Yes','No') NOT NULL,
  `inverntory` enum('Yes','No') NOT NULL DEFAULT 'No',
  `financial` enum('Yes','No') NOT NULL DEFAULT 'Yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
-- query
INSERT INTO app_entrycode VALUES ('1', '1', '2015-07-16 23:58:58', '2015-07-16 23:59:30', 'Salary', 'SALARY', 'SALARY', 'No', 'No', 'Yes');
-- query
INSERT INTO app_entrycode VALUES ('2', '1', '2015-07-16 23:58:58', '2015-07-17 00:00:50', 'Payment', 'PAYMENT', 'Payment', 'No', 'No', 'Yes');
-- query
INSERT INTO app_entrycode VALUES ('3', '1', '2015-07-16 23:58:58', '2015-07-17 00:19:03', 'Tips', 'TIPS', 'TIPS', 'No', 'No', 'Yes');
-- query
INSERT INTO app_entrycode VALUES ('12', '1', '2015-07-16 23:58:58', '2015-07-20 20:44:47', 'STAFF_LOAN', 'STAFF_LOAN', 'STAFF_LOAN', 'No', 'No', 'Yes');
-- query
INSERT INTO app_entrycode VALUES ('11', '1', '2015-07-16 23:58:58', '2015-07-20 20:25:45', 'LOAN', 'LOAN', 'LOAN', 'No', 'No', 'Yes');
-- query
INSERT INTO app_entrycode VALUES ('7', '1', '2015-07-16 23:58:58', '2015-07-18 21:27:45', 'RECEIPT', 'RECEIPT', 'RECEIPT', 'No', 'No', 'Yes');
-- query
INSERT INTO app_entrycode VALUES ('13', '1', '2015-07-16 23:58:58', '2015-07-20 21:49:05', 'ADJUSTMENT', 'ADJUSTMENT', 'ADJUSTMENT', 'No', 'No', 'Yes');
-- query
INSERT INTO app_entrycode VALUES ('14', '1', '2015-07-16 23:58:58', '2015-07-20 22:01:52', 'STAFF_LOAN_PAYMENT', 'STAFF_LOAN_PAYMENT', 'STAFF_LOAN_PAYMENT', 'No', 'No', 'Yes');
-- query
INSERT INTO app_entrycode VALUES ('15', '1', '2015-07-16 23:58:58', '2015-07-22 20:09:50', 'SOAP', 'SOAP', 'SOAP', 'No', 'No', 'Yes');
-- query
INSERT INTO app_entrycode VALUES ('16', '1', '2015-07-16 23:58:58', '2015-07-22 20:10:14', 'SOAP2', 'SOAP2', 'SOAP2', 'No', 'No', 'Yes');
-- query
DROP TABLE IF EXISTS app_gamecomment;
-- query
CREATE TABLE `app_gamecomment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `gameid` int(11) NOT NULL,
  `entrydate` datetime NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL,
  `image` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
-- query
INSERT INTO app_gamecomment VALUES ('1', '0', '0', '0000-00-00 00:00:00', 'আমাদের দেশে', '', '');
-- query
DROP TABLE IF EXISTS app_log;
-- query
CREATE TABLE `app_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkey` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `dated` datetime NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
-- query
INSERT INTO app_log VALUES ('1', '1', 'DataDeleted', '2015-07-16 23:58:52', 'a:1:{i:0;a:8:{s:2:"id";s:1:"2";s:8:"adminref";s:1:"1";s:9:"entrydate";s:19:"2015-07-16 23:55:52";s:12:"lastmodified";s:19:"2015-07-16 23:56:17";s:4:"name";s:6:"Income";s:4:"tier";s:6:"INCOME";s:12:"accgenerator";s:1:"1";s:6:"scheme";s:12:"CONSOLIDATED";}}');
-- query
INSERT INTO app_log VALUES ('2', '1', 'DataDeleted', '2015-07-18 20:34:20', 'a:1:{i:0;a:8:{s:2:"id";s:1:"1";s:8:"adminref";s:1:"1";s:9:"entrydate";s:19:"2015-07-16 23:55:52";s:12:"lastmodified";s:19:"2015-07-16 23:57:18";s:4:"name";s:7:"Company";s:4:"tier";s:9:"LIABILITY";s:12:"accgenerator";s:1:"1";s:6:"scheme";s:12:"CONSOLIDATED";}}');
-- query
INSERT INTO app_log VALUES ('3', '1', 'DataDeleted', '2015-07-18 20:35:30', 'a:1:{i:0;a:8:{s:2:"id";s:1:"9";s:8:"adminref";s:1:"1";s:9:"entrydate";s:19:"2015-07-16 23:55:52";s:12:"lastmodified";s:19:"2015-07-18 20:35:24";s:4:"name";s:7:"EXPENSE";s:4:"tier";s:7:"EXPENSE";s:12:"accgenerator";s:1:"1";s:6:"scheme";s:12:"CONSOLIDATED";}}');
-- query
INSERT INTO app_log VALUES ('4', '1', 'DataDeleted', '2015-07-18 20:35:51', 'a:1:{i:0;a:8:{s:2:"id";s:1:"5";s:8:"adminref";s:1:"1";s:9:"entrydate";s:19:"2015-07-16 23:55:52";s:12:"lastmodified";s:19:"2015-07-18 20:34:44";s:4:"name";s:6:"Income";s:4:"tier";s:6:"INCOME";s:12:"accgenerator";s:1:"1";s:6:"scheme";s:12:"CONSOLIDATED";}}');
-- query
INSERT INTO app_log VALUES ('5', '1', 'DataDeleted', '2015-07-20 20:25:22', 'a:1:{i:0;a:10:{s:2:"id";s:1:"5";s:8:"adminref";s:1:"1";s:9:"entrydate";s:19:"2015-07-16 23:58:58";s:12:"lastmodified";s:19:"2015-07-17 00:41:23";s:4:"name";s:11:"Casual Loan";s:4:"code";s:11:"CASUAL_LOAN";s:12:"shortcomment";s:11:"Casual Loan";s:6:"linked";s:2:"No";s:10:"inverntory";s:2:"No";s:9:"financial";s:3:"Yes";}}');
-- query
INSERT INTO app_log VALUES ('6', '1', 'DataDeleted', '2015-07-20 20:25:56', 'a:1:{i:0;a:10:{s:2:"id";s:1:"6";s:8:"adminref";s:1:"1";s:9:"entrydate";s:19:"2015-07-16 23:58:58";s:12:"lastmodified";s:19:"2015-07-18 20:45:04";s:4:"name";s:10:"Investment";s:4:"code";s:3:"CAR";s:12:"shortcomment";s:3:"CAR";s:6:"linked";s:2:"No";s:10:"inverntory";s:2:"No";s:9:"financial";s:3:"Yes";}}');
-- query
INSERT INTO app_log VALUES ('7', '1', 'DataDeleted', '2015-07-20 20:26:05', 'a:1:{i:0;a:10:{s:2:"id";s:2:"10";s:8:"adminref";s:1:"1";s:9:"entrydate";s:19:"2015-07-16 23:58:58";s:12:"lastmodified";s:19:"2015-07-18 22:06:30";s:4:"name";s:15:"LOAN_ADJUSTMENT";s:4:"code";s:15:"LOAN_ADJUSTMENT";s:12:"shortcomment";s:15:"LOAN_ADJUSTMENT";s:6:"linked";s:2:"No";s:10:"inverntory";s:2:"No";s:9:"financial";s:3:"Yes";}}');
-- query
INSERT INTO app_log VALUES ('8', '1', 'DataDeleted', '2015-07-20 20:26:12', 'a:1:{i:0;a:10:{s:2:"id";s:1:"4";s:8:"adminref";s:1:"1";s:9:"entrydate";s:19:"2015-07-16 23:58:58";s:12:"lastmodified";s:19:"2015-07-17 00:37:39";s:4:"name";s:8:"Withdraw";s:4:"code";s:8:"WITHDRAW";s:12:"shortcomment";s:8:"WITHDRAW";s:6:"linked";s:2:"No";s:10:"inverntory";s:2:"No";s:9:"financial";s:3:"Yes";}}');
-- query
INSERT INTO app_log VALUES ('9', '1', 'DataDeleted', '2015-07-22 14:34:11', 'a:1:{i:0;a:9:{s:2:"id";s:1:"1";s:4:"name";s:13:"LAUNGE INCOME";s:12:"debitaccount";s:13:"2011158392268";s:13:"creditaccount";s:13:"2041161721046";s:4:"code";s:7:"RECEIPT";s:11:"shortremark";s:6:"INCOME";s:10:"fullremark";s:6:"Montly";s:9:"entrydate";s:19:"2015-07-22 02:32:56";s:9:"createdby";s:1:"1";}}');
-- query
INSERT INTO app_log VALUES ('10', '1', 'DataDeleted', '2015-07-23 19:11:25', 'a:1:{i:0;a:12:{s:2:"id";s:1:"5";s:4:"name";s:13:"LAUNGE INCOME";s:12:"debitaccount";s:13:"2021138832569";s:13:"creditaccount";s:13:"2031395761673";s:4:"code";s:7:"PAYMENT";s:7:"groupid";s:1:"3";s:6:"method";s:10:"Percentage";s:5:"value";s:3:"100";s:11:"shortremark";s:6:"INCOME";s:10:"fullremark";s:6:"Montly";s:9:"entrydate";s:19:"2015-07-23 02:48:48";s:9:"createdby";s:1:"1";}}');
-- query
DROP TABLE IF EXISTS app_pages;
-- query
CREATE TABLE `app_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkey` int(11) NOT NULL DEFAULT '0',
  `page_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `hook` varchar(255) NOT NULL,
  `userdefinehook` varchar(256) NOT NULL,
  `richtexteditor` enum('Yes','No') NOT NULL,
  `rendertype` enum('h_link','smart_h_link','text') NOT NULL,
  `contenttype` enum('Content','Snip') NOT NULL DEFAULT 'Content',
  `sort_order` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fkey` (`fkey`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
-- query
INSERT INTO app_pages VALUES ('9', '0', 'About appRain Content Management Framework', '', '', 'aboutus', 'About Us', '<p>appRain is one of the first, officially-released, open source Content Management Frameworks (CMF). CMF is a new, web engineering concept where a Content Management System (CMS) and a rapid development framework perform side-by-side to produce endless varieties of output in a very limited time.</p>

<p>appRain is developed on a daily basis, drawing on extensive project experience. A common problem that we all face in a framework is that we need to re-develop some common modules in each project. With Content Management Systems, we sometimes get stuck driving our development based on strict development conventions the system enforces. Why is there no CMS integrated with a framework? This is the question that gave birth to appRain.</p>

<p>Content Management Systems and frameworks are very popular in web development. These two technologies work in different ways. One is used for rapid development, the other for more customized output. appRain merges these two technologies. appRain is fast, flexible, and makes it easy to complete tasks in a very short time period. It can be expanded and scaled.</p>

<p>The tools in the CMS component of appRain are all configurable, making development faster. It helps to avoid repeating tasks. The framework component is used when it becomes too difficult to complete your requirements using the CMS tools. The framework contains all of the core programming tools.</p>

<p>appRain aims to make creating web technology simplified and easlily optimized.</p>
', 'sitemenu,quicklinks', '', 'Yes', 'text', 'Content', '9');
-- query
INSERT INTO app_pages VALUES ('5', '0', 'InformationSet and CategorySet', 'InformationSet and CategorySet', 'InformationSet and CategorySet', 'informationset-categoryset', 'InformationSet and CategorySet', '<p>InformationSet and CategorySet are prominent methods work with database. This to special tool keep you hassle free to manage database table. It create interface automatically for data import, control by auto validation also interact with database to fetch data without writing. &nbsp;These two methods time of development significantly.</p>

<p>An InformationSet manage a single database table. All database fields defined separately with addition parameter like</p>

<ol>
	<li>Database attributes</li>
	<li>Data Input type (text box, text area, file input etc.)</li>
	<li>Define the validation during data input</li>
	<li>Render interface in admin panel for Add, Modify and View.</li>
</ol>

<p>InformationSet can adjust field modification when a definition change or add. In that case, necessary permission is required for the database user. For Oracle Database, InformationSet creates created a sequence automatically to manage the auto increment value for Primary Key.<br />
<br />
InformationSet can be linked with other InformationSet or CategorySet for joining, also, it created link input tag like Drop Down, Check Box in the interface.<br />
<br />
CategorySet works similar to InformationSet but it specially works to manage recursive Parent Child relation. Generally it uses to categorize any InformationSet. &nbsp;</p>

<p>A rich library of functions has been developed to interact with database to server necessary purpose.</p>
', 'quicklinks', '', 'Yes', 'smart_h_link', 'Content', '5');
-- query
INSERT INTO app_pages VALUES ('6', '0', 'Theme Development', 'Theme Development', 'Theme Development', 'theme-development', 'Theme Development', '<p>Theme development is one of the common requirements during a new website development. appRain has a theme gallery to select theme. Gallery is available in below location:</p>

<p>Login Admin Panel &gt; Preferences &gt; Theme</p>

<p>You can choose a theme or add a new theme in the gallery.&nbsp; Theme can be installed by clicking &ldquo;Install New Theme&rdquo; button. In that case you have to upload theme files in Zip format.</p>

<p>To develop a new theme common practice is to copy an existing theme (except &ldquo;admin&rdquo; folder) in below location:</p>

<p><strong>development/view<br />
webroot/themeroot</strong></p>

<p>After copy first edit files <strong>info.xml </strong>and register.php as per appRain conversion to add developer credits and perform default options.<br />
<br />
A theme as some basic requirements to adjust with appRain environment</p>

<ol>
	<li>Folder structures</li>
	<li>UI Hooks</li>
	<li>Layouts</li>
	<li>Style Sheets(CSS)</li>
</ol>

<p>Folder structure you will get easily by coping existing one. UI Hooks is an anchor to place content from external modules like Component, Page Manager so on. Default themes contain basic UI Hooks but theme developer can add more Hooks to serve advanced purpose.</p>

<p>In info.xml file you can defile a hook to display in PageManger to render content also a setting file can add to create theme setup. Also you can install/uninstall a particular component during theme activation.</p>

<p>In register.php you can do some work during different event. These events really helpful to prepare environment for theme during first installation.</p>

<p>A vast area of work remains for admin interface development.&nbsp; Admin design generally depends on the controller action to set the design.&nbsp; Most of the time you have to work with Toolbar, Data Grid and Row Manage to display and manage data.</p>
', 'quicklinks', '', 'Yes', 'smart_h_link', 'Content', '6');
-- query
INSERT INTO app_pages VALUES ('8', '0', 'General Help Center', 'General Help Center', 'General Help Center', 'general-help-center', 'General Help Center', '<p>Read appRain manual online, this is a HTML based manual for User, Developer and learners. We always encourage sending your valuable feedback.</p>

<p><a href="http://docs.apprain.com">Online Manual</a></p>

<p>CHM is the standard help format for a windows desktop application. The output is a single file with extension *.chm.</p>

<p><a href="http://www.apprain.com/help/chm">Download</a></p>

<p>Adobe Portable Document Format (PDF) is a platform independent file format. This is ideal for Device and Print.</p>

<p><a href="http://www.apprain.com/help/pdf">Download</a></p>

<p>This type is a cross-platform e-book standard created by the <a href="www.openebook.org">IDPF</a>, which is supported by Apple iBooks, Andriod Tablets/smartphones and many other e-readers on windows, Mac OSX, iOS and Linux.</p>

<p><a href="http://www.apprain.com/help/epub">Download</a></p>

<p>This format is an ideal to illustrate web-based application, to publish documentation to the internet, intranet or CD-ROM</p>

<p><a href="http://www.apprain.com/help/html">Download</a></p>

<p>Windows e-books are stand-alone Windows executable with HTML formatted texts and images. This output format is great for CD-ROM presentations.</p>

<p><a href="http://www.apprain.com/help/ebook">Download</a></p>
', 'quicklinks', '', 'Yes', 'smart_h_link', 'Content', '8');
-- query
INSERT INTO app_pages VALUES ('11', '0', '', '', '', 'home-page-summary', '', '<?php 
    // Enter List of page name
    $pages= array(
        ''quick-start'',
        ''page-manager'',
        ''plugin-component'',
        ''concept-of-development'',
        ''informationset-categoryset'',
        ''theme-development'',
        ''general-help-center''
    );
?>
    
<?php   
    // Run loop to print HTML
    // We can do had code in Static page as well
    foreach($pages as $name): ?>
    <h4>
        <span class="glyphicon glyphicon-circle-arrow-right"></span>
        <a href="<?php echo App::Config()->baseUrl("/{$name}"); ?>">
            <?php echo App::Module(''Page'')->getData($name,''title''); ?>
        </a>
    </h4>
<?php 
    // End of Loop
    endforeach; ?>    ', '', '', 'Yes', 'h_link', 'Snip', '0');
-- query
INSERT INTO app_pages VALUES ('7', '0', 'Terms of Use: appRain Content Management Framework', 'Terms, Condition, Copy Right', '', 'terms-of-use', 'Terms of Use', '<p>Copyright (c) appRain CMF (http://www.apprain.com)<br />
<br />
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the &quot;Software&quot;), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:<br />
<br />
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.<br />
<br />
THE SOFTWARE IS PROVIDED &quot;AS IS&quot;, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.</p>
', 'sitemenu,quicklinks,template_footer_B', '', 'Yes', 'h_link', 'Content', '7');
-- query
INSERT INTO app_pages VALUES ('12', '0', '', '', '', 'samplephp', '', '<?php
    $pages= array(''quick-start'',''page-manager'');
    
    foreach($pageList as $name){
        pr(App::Module(''Page''));
    }
?>', '', '', 'Yes', 'h_link', 'Snip', '0');
-- query
INSERT INTO app_pages VALUES ('10', '0', 'appRain:  Content  Management Framework is a combination of Content Management System and Rapid Development Framework', 'Content Management System, PHP Framework, PHP Content Management System, PHP CMS, Web Development Tool, Project Development Tool', 'A PHP Content Management Framework combining  CMS(Content Management System) and Framework (Rapid Development Framework) to enable fast Web Developmen', 'home-page', 'What is appRain  Content Management Framework?', '<h1>What is appRain&nbsp; Content Management Framework?</h1>

<p>appRain is one of the first officially released Opensource Content Management Framework (CMF). CMF is a new web engineering concept where &quot;CMS (Content Management System)&quot; and &quot;Framework&quot; perform together to produce endless varieties of output in a very limited time.</p>

<p>appRain, published with lots of extensive features to reduce our development work time. It satisfies both Client and Developers with a safe and quality output.</p>

<hr />
<h3><a href="{baseurl}/quick-start">Quick Start</a></h3>
', 'home_content_area_A', '', 'Yes', 'text', 'Content', '0');
-- query
INSERT INTO app_pages VALUES ('2', '0', 'Page Manager', '', '', 'page-manager', 'Page Manager', '<p><strong>Page Manger</strong> is a frequently used module to create new pages in the website. You will get it in first Tab after login Admin Panel.</p>

<p>Use link page section to assign your page in different place in the website. You will get different selected section to assign the page in Menu, Quick Links. You can select multiple hooks by holding CTRL key and Mouse left Click.</p>

<p>The presentation of the page can be text or hyper link. You can select the option from drop down beneath the hook list. Text option will place the page content in a particular area of a page. Hyper link can be two type, one is Smart Link which generates a page with optimized URL. Other one is a direct link of the page.</p>

<p>A large text box is available to renter a page in a User Defile Hook defined in the theme, each hook name must be comma separated.</p>

<p>It is really important to present the page well formatted. Use common field section to set Page Title and other Meta information.</p>

<p>Sort Order, is helpful to manage the order of the page in website menu and quick links.</p>

<p>Dynamic pages are great features in Page Manager to write Server Side Coding. All resource should be access through App factory. Because, this factory will bring all your resource available in the script. To work in dynamic page you need little ideal of <a href="http://docs.apprain.com/index.html?chapter_2.htm">internal structure</a> of appRain. One important tips, Dynamic page render only under static page. Click on &quot;Page Code List&quot; button and the list will popup. Also, a static page can be rendered in side other static page. Just paste the Page Code inside the content.</p>

<p>For developers, there is a detailed module to execute all operations. This module helps to work with Pages in MVC model. Moreover, it has different hooks to register Page Manager in Component in different events.</p>
', 'quicklinks', '', 'Yes', 'smart_h_link', 'Content', '2');
-- query
INSERT INTO app_pages VALUES ('1', '0', 'Quick Start', 'Quick Start', 'Quick Start', 'quick-start', 'Quick Start', '<p>appRain has multidimensional approach to serve a purpose in web based software development. Specifically, Use as Content Management System or utilized the framework layer only.</p>

<p>For a quick start, CMS would be a great area to choose.</p>

<p>appRain has an attractive Admin panel, you must login there first. Go the page manager to has a look around and add some content in the website. You can put the content of a page in different location in website by User Hook. If you wish, can see all location by enabling the flag &ldquo;Show Hook Positions&rdquo; in Preference &gt; Configuration<br />
If you love to write some PHP, you can create dynamic pages. A dynamic page can render under a static page only.</p>

<p>Next, you might need a Blog or Contact Us page, may be other features for your site. Just install component! It will enable addition functionality. Go in Application tab to add new components.</p>

<p>appRain has a wide range of configurable parameters. You can setup some of them from Preference.</p>

<p>Now, for an expert developer, It is easy to start your development by creating new Components. It will keep your code separate, plug-able and distributable. Any core resource can inherit by related hook. Also, development can be done from &ldquo;development&rdquo; folder, especially theme. It&rsquo;s advisable to use UI Hook to make the theme more accessible by external plug-ins.</p>

<p>Database! Never be tired by redundant work. Use InformationSet and CategorySet. appRain takes care of interface development, validation also auto made your query.</p>

<p>Further more, you are open for extensive development with different type of databases and Web Service layer.</p>
', 'sitemenu,quicklinks', '', 'Yes', 'smart_h_link', 'Content', '1');
-- query
INSERT INTO app_pages VALUES ('4', '0', 'Concept of Development', 'Concept of Development', 'Concept of Development', 'concept-of-development', 'Concept of Development', '<p>appRain is a robust platform for development which optimized the effort and time.</p>

<p>First setup appRain, then start development with all interface based tool like Page Manager, Theme etc.&nbsp; This is a very preliminary stage of you start up.</p>

<p>After that, find components that fit for you and install it. This will save lots of you time.</p>

<p>On next level appRain always advice to avoid making your hand dirty with lots of hard coding and database query management. Just configure some XML and..</p>

<ul>
	<li>Use InformationSet, CategorySet to develop interface quickly for data management</li>
	<li>Create different type of setting for your project by &ldquo;Site Settings&rdquo;</li>
	<li>Create menu and render interface in admin panel by &ldquo;Interface Builder&rdquo;</li>
	<li>Mange website routing</li>
	<li>Work with language</li>
	<li>Integrate external plug-ins</li>
	<li>Web Service</li>
</ul>

<p>By doing configuration we can cover a large part of your project.</p>

<p>Now start to work with MVC pattern to meet up any expectation. Configure one or multiple database to work with simultaneously.<br />
This is highly recommended, develop new components for a specify requirements. Each component will enrich your personal archive because it is in-stable. A component uses any core resource by using hook. Moreover, It can be keep away from main system by&nbsp;&nbsp; deactivating by a simple click.</p>

<p>However, appRain has both ready-made and un-stitched tool, we just have to use it as per need.</p>
', 'quicklinks', '', 'Yes', 'smart_h_link', 'Content', '4');
-- query
INSERT INTO app_pages VALUES ('3', '0', 'Component Installation', 'Component Installation', 'Component Installation', 'component-installation', 'Component Installation', '<p>Component is a pluggable module, the main logic of it to connect to core system with different hook and add new features. Let&rsquo;s say you want a blog in your website. Just download the component from the archive and install.</p>

<p>Your entire component list can be seen in &quot;Applications&quot; tab after login Admin Panel.</p>

<p>There are few simple steps to install a component. appRain has an installer to add new component.</p>

<ol>
	<li>First login to Admin Panel</li>
	<li>Click on <strong>Application tab</strong> then <strong>Install New Component </strong>button</li>
	<li>Select Component source file in Zip format</li>
	<li>Click on <strong>Install</strong> Button</li>
</ol>

<p>After a successful installation the component will be available in the list. Find your installed Component check and click on ACTIVATE link to enable the component.</p>

<p>If you feel any component is not fit for you, just deactivate it. The component will stop functioning instantly.</p>

<p>Generally all components isolate the code in &ldquo;component&rdquo; folder. If auto installation process does not work you can copy the code in that folder. However, always follow developer&rsquo;s instruction in any exception.<br />
<br />
&nbsp;After installation, new tab or menu can be seen in admin panel and website. It&rsquo;s depending on the architecture of the component development.</p>

<p>A component is always an external resource. If it has been deactivated all resources will be out of the overall system.</p>
', 'quicklinks', '', 'Yes', 'smart_h_link', 'Content', '3');
-- query
DROP TABLE IF EXISTS app_sconfigs;
-- query
CREATE TABLE `app_sconfigs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkey` int(11) NOT NULL DEFAULT '0',
  `soption` text NOT NULL,
  `svalue` text NOT NULL,
  `sort_order` varchar(5) NOT NULL,
  `section` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
-- query
INSERT INTO app_sconfigs VALUES ('1', '0', 'theme', 'bootstrap', '0', 'hidden');
-- query
INSERT INTO app_sconfigs VALUES ('2', '0', 'site_logo', 'logo.jpg', '', 'themesettings');
-- query
INSERT INTO app_sconfigs VALUES ('3', '0', 'default_pagination', '15', '19', 'general');
-- query
INSERT INTO app_sconfigs VALUES ('4', '0', 'time_zone', 'Asia/Dhaka', '23', 'general');
-- query
INSERT INTO app_sconfigs VALUES ('20', '0', 'copy_right_text', 'Copy Right [year] [website]', '', 'general');
-- query
INSERT INTO app_sconfigs VALUES ('21', '0', 'site_title', 'My Business', '', '');
-- query
INSERT INTO app_sconfigs VALUES ('22', '0', 'admin_title', 'My Business Admin', '', '');
-- query
INSERT INTO app_sconfigs VALUES ('23', '0', 'admin_email', 'info@site.com', '', '');
