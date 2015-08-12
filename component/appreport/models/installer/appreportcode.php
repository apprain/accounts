<?php
/**
 * appRain v 0.1.x
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

/**
 * Create Model installer to create report table automatically
 */
class Component_AppReport_Models_Installer_appReportCode extends appReportCodeModel
{

    public function installerResource(){   
	    $obj = $this->get_conn();
        return  array(
            '0.1.0'=>
				"
				CREATE TABLE IF NOT EXISTS `{$obj->prefix}appreportcodes` (
				  `id` int(11) NOT NULL auto_increment,
				  `adminid` int(11) NOT NULL,
				  `name` varchar(255) NOT NULL,
				  `groups` varchar(100) NOT NULL,
				  `code` text NOT NULL,
				  `dated` datetime NOT NULL,
				  PRIMARY KEY  (`id`)
				) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;					  
				"
        );
    }
}
