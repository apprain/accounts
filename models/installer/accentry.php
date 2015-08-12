<?php
/**
 * appRain CMF
 *
 * LICENSE
 *
 * This source file is subject to the MIT license that is bundled
 * with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://www.opensource.org/licenses/mit-license.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@apprain.com so we can send you a copy immediately.
 *
 * @copyright  Copyright (c) 2010 appRain, Team. (http://www.apprain.com)
 * @license    http://www.opensource.org/licenses/mit-license.php MIT license
 *
 * HELP
 *
 * Official Website
 * http://www.apprain.com/
 *
 * Download Link
 * http://www.apprain.com/download
 *
 * Documents Link
 * http ://www.apprain.com/docs
 */


class Component_Accounts_Models_Installer_Accentry extends accentryModel
{

    public function installerResource()
    {
		$Connection =  $this->get_conn();
		
        return  array
        (
            '0.1.0'=>
                    " CREATE TABLE IF NOT EXISTS `{$Connection->prefix}accentry` (
					  `id` int(11) NOT NULL auto_increment,
					  `optgroup` int(11) NOT NULL,
					  `branch` varchar(20) NOT NULL,
					  `entrydate` datetime NOT NULL,
					  `businessdate` date NOT NULL,
					  `code` varchar(50) NOT NULL,
					  `debitaccount` varchar(30) NOT NULL,
					  `creditaccount` varchar(30) NOT NULL,
					  `amount` float NOT NULL,
					  `shortremark` varchar(50) NOT NULL,
					  `fullremark` varchar(100) NOT NULL,
					  `link` varchar(30) NOT NULL,
					  `qty` varchar(20) NOT NULL,
					  PRIMARY KEY  (`id`),
					  KEY `id` (`id`),
					  KEY `debitaccount` (`debitaccount`),
					  KEY `creditaccount` (`creditaccount`)
					) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;					
                  "
        );
    }
}
