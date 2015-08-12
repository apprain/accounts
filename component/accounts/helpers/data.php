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
 
class Component_Accounts_Helpers_Data extends appRain_Base_Objects
{
	/**
	 * HTML Tag for Account type drop down
	 * return String
	 */	 
    public function getAcctypeListTag($name='',$selected='',$options=array()){
		
		$pt_str = !empty($options) ? App::Html()->options2str($options) : '';	
		$List = App::InformationSet('Acctype')->findAll();		

		$element = "<select name=\"$name\" $pt_str ><option value=\"\"></option>";
		foreach ($List['data'] as $key => $val) {
            if (in_array($val['id'], explode(',', $selected))) {
                $element .= "<option selected=\"selected\" scheme=\"{$val['scheme']}\" value=\"{$val['id']}\">{$val['name']}</option>";
            }
            else {
                $element .= "<option value=\"{$val['id']}\" scheme=\"{$val['scheme']}\">{$val['name']}</option>";
            }
        }		
		$element .= "</select>";
		
		return $element;
	}
	
	/**
	 * Crate Account
	 */
	 public function createAccount(){
		$data = $this->getPostData();
		$Accchart = App::Model('Accchart')->Save($data);
		$accNo = $this->generateAccountNoByType($data['Accchart']['acctype'],$Accchart->getId());
		$obj = App::Model('Accchart')
			->setId($Accchart->getId())
			->setNo($accNo)
			->setOperator(App::Module('Admin')->thisAdminInfo('id'))
			->setEntryDate(date('Y-m-d H:i:s'))
			->Save();
			
		return $accNo;
	 }
	 
	 public function generateAccountNoByType($type=null,$UniqueID=null){
		$TypeRecord = App::InformationSet('acctype')->findById($type);
		$GeneratorRecord = App::InformationSet('accgenerator')->findById($TypeRecord['accgenerator']);
		
		$rndLength = ($GeneratorRecord['length'] - (strlen($GeneratorRecord['constant'])+strlen($UniqueID)));
		$rndStart = str_pad('1',$rndLength,'0');
		$rndEnd = str_pad('9',$rndLength,'9');
		
		$rand = rand($rndStart,$rndEnd);
		
		return ($GeneratorRecord['constant'] . $UniqueID . $rand);
	 }
	 
	 public function AccountListTag($name='',$selected='',$options=array(),$title=''){
		$pt_str = !empty($options) ? App::Html()->options2str($options) : '';
		if($this->getAccmethod()){
			$List = App::Model('Accchart')->findAllByMethod($this->getAccmethod());	
		}
		else{
			$List = App::Model('Accchart')->findAll();	
		}
		$element = "<select name=\"$name\" $pt_str ><option value=\"\" style=\"font-weight:bold\">{$title}</option>";
		foreach ($List['data'] as $key => $val) {
			if($this->getSkippedid() != $val['id']){
			
				$value = ($this->getReturnAccountNo()) ?  $val['no'] : $val['id'];
				
				if (in_array($value, explode(',', $selected))) {
					$element .= "<option selected=\"selected\" value=\"{$value}\">{$val['name']}</option>";
				}
				else {
					$element .= "<option value=\"{$value}\" >{$val['name']}</option>";
				}
			}
        }		
		$element .= "</select>";
		
		return $element;
	 }
	 
	 public function numberformate($value=null,$prec=2){
		if(!isset($value) || !is_numeric($value)){
			return "0.00";
		}
		
		return number_format($value,$prec);
	 }
	 
	 public function accountnotoname($no=null){
		$Entry = App::Model('Accchart')->findByNo($no);
		return isset($Entry['name']) ? $Entry['name'] : $Entry['name'];
	 }
	 
	 public function renderTxnGrid($entries=array()){
		
	 }
	 
	 public function getEntryCodeListTag($name='',$selected='',$options=array(),$title=''){		
		$pt_str = !empty($options) ? App::Html()->options2str($options) : '';	
		
		$method = $this->getAccMethod();
		if(strtolower($method) == 'quantifier'){ 
			$List = App::InformationSet('Entrycode')->findAll("financial='No' and inverntory='Yes' ORDER BY name ASC");	
		}
		else if(strtolower($method) == 'financial'){
			$List = App::InformationSet('Entrycode')->findAll("financial='Yes' and inverntory='No' ORDER BY name ASC");	
		}
		else if(strtolower($method) == 'both'){
			$List = App::InformationSet('Entrycode')->findAll("financial='Yes' and inverntory='Yes' ORDER BY name ASC");	
		}
		else{
			$List = App::InformationSet('Entrycode')->findAll("1=1 ORDER BY name ASC");	
		}
		
		$element = "<select name=\"$name\" $pt_str ><option value=\"\">{$title}</option>";
		foreach ($List['data'] as $key => $val) {
			if($this->getSkippedid() != $val['code']){
				if (in_array($val['code'], explode(',', $selected))) {
					$element .= "<option selected=\"selected\" inverntory=\"{$val['inverntory']}\" financial=\"{$val['financial']}\"  value=\"{$val['code']}\">{$val['name']}</option>";
				}
				else {
					$element .= "<option value=\"{$val['code']}\" inverntory=\"{$val['inverntory']}\" financial=\"{$val['financial']}\">{$val['name']}</option>";
				}
			}
        }		
		$element .= "</select>";
		
		return $element;
	 }
	 
	 public function txnDirection($row,$Account,$ReplyMode='CRDR'){
		
		$dir = 'CR';
		
		if($Account == $row['debitaccount']){
			$dir = 'DR';
		}
		
		switch(strtolower($ReplyMode)){
			case 'sign': 
			    return ($dir=='DR') ? '' : '-';
				break;	
							 
			case 'boolean': 
			    return ($dir=='DR') ? true : false;
				break;
			
			case 'balance': 
			    return ($dir=='DR') ? $row['drbalance'] : $row['crbalance'];
				break;			
				
			case 'accountno': 
			    return ($dir=='DR') ? $row['debitaccount'] : $row['creditaccount'];
				break;			
							 
			default: 
				return $dir;
		}	
	 }
	 
	 public function PrevBalance($row,$accountno=null){
		$record = App::Model('Accentry')->find("(debitaccount='{$accountno}' OR creditaccount='{$accountno}') AND id < {$row['id']}  ORDER BY id DESC");

		if(!empty($record)){
			return $this->txnDirection($record,$accountno,'balance');
		}
		else{
			return 0;
		}
	 }
	 
	 public function currentBalance($accountno=null){
		$record = App::Model('Accentry')->find("(debitaccount='{$accountno}' OR creditaccount='{$accountno}') ORDER BY id DESC");

		if(!empty($record)){
			return $this->txnDirection($record,$accountno,'balance');
		}
		else{
			return 0;
		}
	 }
	 
	 public function templates($id=null){
		
		if(isset($id)){
			return App::Model('AccOptTemplate')->findById($id);
		}
	 
		return App::Model('AccOptTemplate')->paging();
	 }

	 public function templateGroups($id=null){
		
		if(isset($id)){
			return App::CategorySet('Accopttemplategrp')->findById($id);
		}
	 
		return App::CategorySet('Accopttemplategrp')->findAll();
	 }
}