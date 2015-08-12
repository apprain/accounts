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

/**
 * Component Name: 
 * Auther: Reazaul Karim
 * Email: info@apprain.com
 */
class Component_Accounts_Register extends appRain_Base_Component
{ 
	public function init()
	{ 
		/* Create Admin Panel Menu */
        App::Module('Hook')
            ->setHookName('InterfaceBuilder')
            ->setAction("register_definition")
            ->Register(get_class($this),"register_interface_builder_defination");	
			
		/* Register Controller */	
        App::Module('Hook')
            ->setHookName('Controller')
            ->setAction("register_controller")
            ->Register(get_class($this),"register_controller");			
			
		/* Register InformationSet */	
        App::Module('Hook')
            ->setHookName('InformationSet')
            ->setAction("register_definition")
            ->Register(get_class($this),"register_informationset_defination");		
		
		/* Register CategorySet */	
        App::Module('Hook')
            ->setHookName('CategorySet')
            ->setAction("register_definition")
            ->Register(get_class($this),"register_categoryset_defination");
			
		/* Register Model */		
		App::Module('Hook')->setHookName('Model')
            ->setAction("register_model")
			->Register(get_class($this),"register_model");				
    }

    public function init_on_install()
    {
    }

    public function init_on_uninstall()
    {
    }
	
	/**
	 * Admin Panel Call Back Function
	 */	 
    public function register_interface_builder_defination()
    {
        $srcpaths = Array();
        $srcpaths[] = $this->attachMyPath('interface_builder/menu.xml');
        return array('filepaths'=>$srcpaths);
    }	
	
	/**
	 * Call Back to Register Controllers
	 */	 	
    public function register_controller()
    {
        $srcpaths = Array();
        $srcpaths[] =   array(
			'name'=>'Accounts',
            'controller_path'=>$this->attachMyPath('controllers')
		);
        return $srcpaths;
    }	

	/**
	 * Call Back to Register InformationSet
	 */	 		
    public function register_informationset_defination()
    {
        $srcpaths = Array();
        $srcpaths[] =   array(
			'type'=>'accgenerator',
            'path'=>$this->attachMyPath('information_set/accgenerator.xml')
		);
        $srcpaths[] =   array(
			'type'=>'acctype',
            'path'=>$this->attachMyPath('information_set/acctype.xml')
		); 
		$srcpaths[] =   array(
			'type'=>'entrycode',
            'path'=>$this->attachMyPath('information_set/entrycode.xml')
		);
        return $srcpaths;
    }	
	
	/**
	 * Call Back to Register Model
	 */	 			
	public function register_model()
    {
        $srcpaths = Array();
		$srcpaths[] =   array(
			'name'=>'Accchart',
            'model_path'=>$this->attachMyPath('models')
		);
		$srcpaths[] =   array(
			'name'=>'Accentry',
            'model_path'=>$this->attachMyPath('models')
		);
		$srcpaths[] =   array(
			'name'=>'AccOptTemplate',
            'model_path'=>$this->attachMyPath('models')
		);
        return $srcpaths;
    }	
	
	public function register_categoryset_defination()
    {
        $srcpaths = Array();
        $srcpaths[] =   array(
			'type'=>'accopttemplategrp',
            'path'=>$this->attachMyPath('category_set/accopttemplategrp.xml')
		);
        return $srcpaths;
    }
}