-- query
DROP TABLE IF EXISTS {_prefix_}accentry;
-- query
CREATE TABLE `{_prefix_}accentry` (
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
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
-- query
INSERT INTO {_prefix_}accentry VALUES ('1', '0', '', '2015-07-24 14:48:19', '2015-07-24', 'LOAN', '2011158392268', '2021138832569', '-3000', '3000', '3000', '', 'COMPANY LOAN', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('2', '2', '', '2015-07-24 14:48:49', '2015-07-24', 'RECEIPT', '2011158392268', '2031395761673', '-14000', '17000', '14000', '', '', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('3', '8', '', '2015-07-24 14:52:08', '2015-07-24', 'TIPS', '2010883654785', '2011590347290', '-500', '500', '500', '', '', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('4', '7', '', '2015-07-24 14:52:08', '2015-07-24', 'PAYMENT', '2011590347290', '2011158392268', '16500', '0', '500', '', 'TIPS', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('5', '8', '', '2015-07-24 14:52:41', '2015-07-24', 'TIPS', '2010883654785', '2051171031614', '-500', '1000', '500', '', '', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('6', '7', '', '2015-07-24 14:52:41', '2015-07-24', 'PAYMENT', '2051171031614', '2011158392268', '16000', '0', '500', '', 'TIPS', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('7', '9', '', '2015-07-24 14:56:05', '2015-07-24', 'STAFF_LOAN', '2091124566377', '2011158392268', '13000', '3000', '3000', '', 'SHORTTERM', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('8', '9', '', '2015-07-24 14:56:28', '2015-07-24', 'STAFF_LOAN', '2091124566377', '2011158392268', '8000', '8000', '5000', '', 'SHORTTERM', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('9', '10', '', '2015-07-24 15:03:10', '2015-07-24', 'CAR_FUEL', '2081139946333', '2011158392268', '7500', '500', '500', '', '', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('10', '10', '', '2015-07-24 15:04:11', '2015-07-24', 'CAR_WASH', '2081139946333', '2011158392268', '6900', '1100', '600', '', '', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('11', '10', '', '2015-07-24 15:06:13', '2015-07-24', 'MOBIL_CHANGE', '2081139946333', '2011158392268', '3500', '4500', '3400', '', '', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('12', '0', '', '2015-07-24 15:07:04', '2015-07-24', 'PAYMENT', '2021138832569', '2011158392268', '500', '0', '3000', '', 'Return Loan', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('13', '10', '', '2015-07-31 18:08:51', '2015-07-31', 'CAR_MAINTENANCE', '2081139946333', '2011158392268', '-1600', '6600', '2100', '', '', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('22', '13', '', '2015-08-02 09:04:08', '2015-08-02', 'PAYMENT', '2051171031614', '2011158392268', '-10600', '0', '9000', '', 'Cash Payment', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('21', '12', '', '2015-08-02 09:03:36', '2015-08-02', 'ADJUSTMENT', '2051171031614', '2091124566377', '6000', '-9000', '2000', '', 'Adjust ment', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('20', '11', '', '2015-08-02 09:01:58', '2015-08-02', 'SALARY', '2061024202468', '2051171031614', '-11000', '11000', '11000', '', 'Monthly', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('23', '10', '', '2015-08-05 10:58:38', '2015-08-05', 'CAR_FUEL', '2081139946333', '2011158392268', '-11000', '7000', '400', '', '', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('27', '10', '', '2015-08-06 22:00:18', '2015-08-06', 'CAR_MAINTENANCE', '2081139946333', '2011158392268', '-11250', '7250', '250', '', '', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('28', '2', '', '2015-08-07 17:59:15', '2015-08-07', 'RECEIPT', '2011158392268', '2031395761673', '-29500', '4250', '15500', '', '', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('29', '8', '', '2015-08-07 17:59:58', '2015-08-07', 'TIPS', '2010883654785', '2051171031614', '-500', '1500', '500', '', '', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('30', '7', '', '2015-08-07 17:59:58', '2015-08-07', 'PAYMENT', '2051171031614', '2011158392268', '3750', '0', '500', '', 'TIPS', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('31', '10', '', '2015-08-12 08:38:03', '2015-08-12', 'TIRE_CHANGE', '2081139946333', '2011158392268', '-3250', '14250', '7000', 'Tire', '', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('37', '10', '', '2015-08-22 16:44:00', '2015-08-22', 'PARTS', '2081139946333', '2011158392268', '-6950', '17950', '3700', 'Site Mirror', 'Site Mirror', '', '');
-- query
INSERT INTO {_prefix_}accentry VALUES ('39', '10', '', '2015-08-22 16:58:58', '2015-08-22', 'PARTS', '2081139946333', '2011158392268', '-10950', '21950', '4000', 'Battery', 'Battery', '', '');
-- query
DROP TABLE IF EXISTS {_prefix_}accgenerator;
-- query
CREATE TABLE `{_prefix_}accgenerator` (
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
INSERT INTO {_prefix_}accgenerator VALUES ('1', '1', '2015-07-16 23:54:42', '2015-07-16 23:55:43', 'Generator', '20', '13');
-- query
INSERT INTO {_prefix_}accgenerator VALUES ('2', '1', '2015-07-16 23:54:42', '2015-07-22 12:18:05', 'Generator', '20', '13');
-- query
DROP TABLE IF EXISTS {_prefix_}accoperationtemplates;
-- query
CREATE TABLE `{_prefix_}accoperationtemplates` (
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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
-- query
INSERT INTO {_prefix_}accoperationtemplates VALUES ('2', 'Money Receipt', '2011158392268', '', '0', '0', 'RECEIPT', '2', 'Percentage', '100', 'CASH_IN', '', '2015-07-24 02:45:29', '1');
-- query
INSERT INTO {_prefix_}accoperationtemplates VALUES ('8', 'TIPS WIDTHRAW', '2010883654785', '', '0', '1', 'TIPS', '3', 'Percentage', '100', 'RECEIVED TIPS', '', '2015-07-24 02:51:41', '1');
-- query
INSERT INTO {_prefix_}accoperationtemplates VALUES ('7', 'PAY TIPS', '', '2011158392268', '1', '0', 'PAYMENT', '3', 'Percentage', '100', 'CASH_OUT', 'TIPS', '2015-07-24 02:50:36', '1');
-- query
INSERT INTO {_prefix_}accoperationtemplates VALUES ('9', 'STAFF LOAN', '', '2011158392268', '0', '0', 'STAFF_LOAN', '1', 'Percentage', '100', 'PAY FOR STAFF LOAN', 'SHORTTERM', '2015-07-24 02:55:18', '1');
-- query
INSERT INTO {_prefix_}accoperationtemplates VALUES ('10', 'General Expens', '2081139946333', '2011158392268', '0', '0', '', '4', 'Percentage', '100', 'Cash Out', '', '2015-08-06 09:59:55', '1');
-- query
INSERT INTO {_prefix_}accoperationtemplates VALUES ('11', 'Salary Posting', '2061024202468', '', '0', '0', 'SALARY', '5', 'Percentage', '100', 'Salary', 'Monthly', '2015-08-02 09:00:45', '1');
-- query
INSERT INTO {_prefix_}accoperationtemplates VALUES ('12', 'Staff Loan Adjustment', '', '2091124566377', '0', '0', 'ADJUSTMENT', '6', 'Percentage', '100', 'Staff Loan', 'Adjust ment', '2015-08-02 09:03:19', '1');
-- query
INSERT INTO {_prefix_}accoperationtemplates VALUES ('13', 'Payment', '', '2011158392268', '0', '0', 'PAYMENT', '7', 'Percentage', '100', 'Cash Out', 'Cash Payment', '2015-08-02 08:52:13', '1');
-- query
DROP TABLE IF EXISTS {_prefix_}accountchart;
-- query
CREATE TABLE `{_prefix_}accountchart` (
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
INSERT INTO {_prefix_}accountchart VALUES ('1', '0', '2011158392268', '6', 'Cash A/C', '1', '2015-07-18 20:37:03', 'Financial');
-- query
INSERT INTO {_prefix_}accountchart VALUES ('2', '0', '2021138832569', '11', 'REZA''S CAPITAL A/C', '1', '2015-07-18 20:38:16', 'Financial');
-- query
INSERT INTO {_prefix_}accountchart VALUES ('3', '0', '2031395761673', '7', 'ABC Rent Car', '1', '2015-07-18 20:47:22', 'Financial');
-- query
INSERT INTO {_prefix_}accountchart VALUES ('4', '0', '2041161721046', '11', 'Rent Income', '1', '2015-07-18 21:03:51', 'Financial');
-- query
INSERT INTO {_prefix_}accountchart VALUES ('5', '0', '2051171031614', '8', 'Dulal Driver', '1', '2015-07-18 21:11:42', 'Financial');
-- query
INSERT INTO {_prefix_}accountchart VALUES ('6', '0', '2061024202468', '11', 'Salary Account', '1', '2015-07-18 21:23:15', 'Financial');
-- query
INSERT INTO {_prefix_}accountchart VALUES ('7', '0', '2071068477719', '6', 'Eauiptment', '1', '2015-07-18 21:33:52', 'Financial');
-- query
INSERT INTO {_prefix_}accountchart VALUES ('8', '0', '2081139946333', '8', 'General Expense', '1', '2015-07-18 21:42:59', 'Financial');
-- query
INSERT INTO {_prefix_}accountchart VALUES ('9', '0', '2091124566377', '6', 'Dulal Loan A/C', '1', '2015-07-18 21:55:18', 'Financial');
-- query
INSERT INTO {_prefix_}accountchart VALUES ('10', '0', '2010883654785', '8', 'Employee Motivation Expense (TIPS)', '1', '2015-07-20 20:52:45', 'Financial');
-- query
INSERT INTO {_prefix_}accountchart VALUES ('11', '0', '2011590347290', '8', 'Rubel - Rent Car Representation', '1', '2015-07-20 21:47:08', 'Financial');
-- query
INSERT INTO {_prefix_}accountchart VALUES ('12', '0', '2012467163085', '7', 'VAT', '1', '2015-07-23 18:57:31', 'Financial');
-- query
DROP TABLE IF EXISTS {_prefix_}acctemplates;
-- query
CREATE TABLE `{_prefix_}acctemplates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` int(50) NOT NULL,
  `code` int(40) NOT NULL,
  `debitaccount` int(30) NOT NULL,
  `creditaccount` int(30) NOT NULL,
  `shortremark` int(50) NOT NULL,
  `fullremark` int(100) NOT NULL,
  `createdate` datetime NOT NULL,
  `createdby` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- query
DROP TABLE IF EXISTS {_prefix_}acctype;
-- query
CREATE TABLE `{_prefix_}acctype` (
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
INSERT INTO {_prefix_}acctype VALUES ('11', '1', '2015-07-16 23:55:52', '2015-07-18 20:36:07', 'OWNERSEQUITY', 'ASSET', '1', 'CONSOLIDATED');
-- query
INSERT INTO {_prefix_}acctype VALUES ('6', '1', '2015-07-16 23:55:52', '2015-07-18 20:34:57', 'ASSET', 'ASSET', '1', 'CONSOLIDATED');
-- query
INSERT INTO {_prefix_}acctype VALUES ('7', '1', '2015-07-16 23:55:52', '2015-07-18 20:35:08', 'LIABILITY ', 'LIABILITY', '1', 'CONSOLIDATED');
-- query
INSERT INTO {_prefix_}acctype VALUES ('8', '1', '2015-07-16 23:55:52', '2015-07-18 20:35:23', 'EXPENSE', 'EXPENSE', '1', 'CONSOLIDATED');
-- query
INSERT INTO {_prefix_}acctype VALUES ('10', '1', '2015-07-16 23:55:52', '2015-07-18 20:35:41', 'INCOME', 'INCOME', '1', 'CONSOLIDATED');
-- query
INSERT INTO {_prefix_}acctype VALUES ('12', '1', '2015-07-16 23:55:52', '2015-07-22 12:18:22', 'OWNERSEQUITY', 'ASSET', '1', 'CONSOLIDATED');
-- query
DROP TABLE IF EXISTS {_prefix_}appreportcodes;
-- query
CREATE TABLE `{_prefix_}appreportcodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `groups` varchar(100) NOT NULL,
  `code` text NOT NULL,
  `dated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
-- query
INSERT INTO {_prefix_}appreportcodes VALUES ('7', '1', 'Journal Detail Report', '9', '1437998385.arbt', '2015-08-12 14:51:11');
-- query
INSERT INTO {_prefix_}appreportcodes VALUES ('6', '1', 'Journal', '9', '1437996380.arbt', '2015-08-12 14:51:19');
-- query
INSERT INTO {_prefix_}appreportcodes VALUES ('8', '1', 'Trial Balance', '9', '1437998421.arbt', '2015-08-12 14:51:26');
-- query
INSERT INTO {_prefix_}categories VALUES ('1', '0', '1', '0', '', 'STAFF LOAN', '', 'accopttemplategrp', '10', '2015-07-24 14:43:25', '2015-07-24 14:43:25');
-- query
INSERT INTO {_prefix_}categories VALUES ('2', '0', '1', '0', '', 'MONEY RECEIPT', '', 'accopttemplategrp', '11', '2015-07-24 14:45:57', '2015-07-24 14:45:57');
-- query
INSERT INTO {_prefix_}categories VALUES ('3', '0', '1', '0', '', 'GIVE TIPS', '', 'accopttemplategrp', '12', '2015-07-24 14:42:53', '2015-07-24 14:42:53');
-- query
INSERT INTO {_prefix_}categories VALUES ('4', '0', '1', '0', '', 'GENERAL EXPENSE', '', 'accopttemplategrp', '14', '2015-07-24 14:57:37', '2015-07-24 14:57:37');
-- query
INSERT INTO {_prefix_}categories VALUES ('5', '0', '1', '0', '', 'Salary Posting', '', 'accopttemplategrp', '13', '2015-08-02 08:41:34', '2015-08-02 08:41:34');
-- query
INSERT INTO {_prefix_}categories VALUES ('6', '0', '1', '0', '', 'Loan Adjustment', '', 'accopttemplategrp', '', '2015-08-02 08:44:39', '2015-08-02 08:44:39');
-- query
INSERT INTO {_prefix_}categories VALUES ('7', '0', '1', '0', '', 'Payment', '', 'accopttemplategrp', '10', '2015-08-02 08:51:22', '2015-08-02 08:51:22');
-- query
INSERT INTO {_prefix_}categories VALUES ('8', '0', '1', '0', '', 'Production', '', 'accopttemplategrp', '10', '2015-08-06 16:33:00', '2015-08-06 16:33:00');
-- query
INSERT INTO {_prefix_}categories VALUES ('9', '0', '1', '0', '', 'Account Related Report', '', 'appreportgroup', '', '2015-08-12 14:46:07', '2015-08-12 14:46:07');
-- query
DROP TABLE IF EXISTS {_prefix_}entrycode;
-- query
CREATE TABLE `{_prefix_}entrycode` (
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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
-- query
INSERT INTO {_prefix_}entrycode VALUES ('1', '1', '2015-07-16 23:58:58', '2015-07-16 23:59:30', 'Salary', 'SALARY', 'SALARY', 'No', 'No', 'Yes');
-- query
INSERT INTO {_prefix_}entrycode VALUES ('2', '1', '2015-07-16 23:58:58', '2015-07-17 00:00:50', 'Payment', 'PAYMENT', 'Payment', 'No', 'No', 'Yes');
-- query
INSERT INTO {_prefix_}entrycode VALUES ('3', '1', '2015-07-16 23:58:58', '2015-07-17 00:19:03', 'Tips', 'TIPS', 'TIPS', 'No', 'No', 'Yes');
-- query
INSERT INTO {_prefix_}entrycode VALUES ('12', '1', '2015-07-16 23:58:58', '2015-07-20 20:44:47', 'STAFF_LOAN', 'STAFF_LOAN', 'STAFF_LOAN', 'No', 'No', 'Yes');
-- query
INSERT INTO {_prefix_}entrycode VALUES ('11', '1', '2015-07-16 23:58:58', '2015-07-20 20:25:45', 'LOAN', 'LOAN', 'LOAN', 'No', 'No', 'Yes');
-- query
INSERT INTO {_prefix_}entrycode VALUES ('7', '1', '2015-07-16 23:58:58', '2015-07-18 21:27:45', 'RECEIPT', 'RECEIPT', 'RECEIPT', 'No', 'No', 'Yes');
-- query
INSERT INTO {_prefix_}entrycode VALUES ('13', '1', '2015-07-16 23:58:58', '2015-07-20 21:49:05', 'ADJUSTMENT', 'ADJUSTMENT', 'ADJUSTMENT', 'No', 'No', 'Yes');
-- query
INSERT INTO {_prefix_}entrycode VALUES ('14', '1', '2015-07-16 23:58:58', '2015-07-20 22:01:52', 'STAFF_LOAN_PAYMENT', 'STAFF_LOAN_PAYMENT', 'STAFF_LOAN_PAYMENT', 'No', 'No', 'Yes');
-- query
INSERT INTO {_prefix_}entrycode VALUES ('17', '1', '2015-07-16 23:58:58', '2015-07-24 15:00:00', 'MOBIL CHANGE', 'MOBIL_CHANGE', 'MOBIL_CHANGE', 'No', 'No', 'Yes');
-- query
INSERT INTO {_prefix_}entrycode VALUES ('18', '1', '2015-07-16 23:58:58', '2015-07-24 15:01:24', 'CAR WASH', 'CAR_WASH', 'CAR_WASH', 'No', 'No', 'Yes');
-- query
INSERT INTO {_prefix_}entrycode VALUES ('19', '1', '2015-07-16 23:58:58', '2015-07-24 15:02:29', 'CAR FUEL', 'CAR_FUEL', 'CAR_FUEL', 'No', 'No', 'Yes');
-- query
INSERT INTO {_prefix_}entrycode VALUES ('22', '1', '2015-07-16 23:58:58', '2015-08-12 08:37:41', 'TIRE CHANGE', 'TIRE_CHANGE', 'TIRE_CHANGE', 'No', 'No', 'Yes');
-- query
INSERT INTO {_prefix_}entrycode VALUES ('21', '1', '2015-07-16 23:58:58', '2015-07-31 18:07:29', 'CAR MAINTENANCE', 'CAR_MAINTENANCE', 'CAR_MAINTENANCE', 'No', 'No', 'Yes');
-- query
INSERT INTO {_prefix_}entrycode VALUES ('23', '1', '2015-07-16 23:58:58', '2015-08-22 15:42:16', 'Parts ', 'PARTS', 'PARTS', 'No', 'No', 'Yes');
