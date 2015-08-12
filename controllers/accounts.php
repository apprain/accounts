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
 * @copyright  Copyright (c) 2010 appRain, Inc. (http://www.apprain.com)
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
 * http ://www.apprain.com/documents
 */
class accountsController extends appRain_Base_Core
{
    public $name = 'Accounts';

    /**
     * Execute before the action
     */
    public function __preDispatch()
    {
		$this->setAdminTab('accounts');
		
        $this->set("section_title","Accounts");
        $this->set("selected","Accounts");
    }

    /**
     * Index of Accounts
     */
    public function indexAction()
    {       
    }
	
    /**
     * Index of Accounts
     */	
	public function accountchartAction($action=null){
		
		// Create Account
		if(!empty($this->data)){
			App::Component('Accounts')				
				->Helper('Data')
				->setPostData($this->data)
				->CreateAccount();
				
			// Redirect to listing page	
			echo App::Load("Module/Cryptography")
                    ->jsonEncode(
                    array(
                        "_status" => 'Redirect',
                        "_location" => App::Config()->baseUrl("/accounts/accountchart")
                    )
                );	
			exit;
		}
		
		$Acccharts = App::Model('Accchart')->findAll("1 ORDER BY id DESC");
		$this->set('Acccharts',$Acccharts);
		
		/* Send status flag to template */
		$this->set('action',$action);
	}

	public function accountAction($id=null,$entrytype='View'){
	
		if(!isset($id)){
			exit;
		}
		
		$CurrentAccount = App::Model('Accchart')->findById($id);
		$this->set('CurrentAccount',$CurrentAccount);
		
		/* Save transaction in account */
		if(!empty($this->data)){	
			
			//Clear Template buffer
			$this->layout='empty';

			if($this->data['Accentry']['txntype'] == 'Credit'){
				$creditacc = App::Model('Accchart')->findById($id);
				$debitacc = App::Model('Accchart')->findById($this->data['Accentry']['account']);
			}
			else {
				$creditacc = App::Model('Accchart')->findById($this->data['Accentry']['account']);
				$debitacc = App::Model('Accchart')->findById($id);
			}	
			
			$AccObj = App::Component('Accounts')
				->Helper('Account')
				->setCode($this->data['Accentry']['code'])
				->setDebitaccount($debitacc['no'])
				->setCreditaccount($creditacc['no'])
				->setFullremark($this->data['Accentry']['comment'])
				->setLink($this->data['Accentry']['link']);				
				
			if(isset($this->data['Accentry']['qty'])){
				$AccObj->setQty($this->data['Accentry']['qty']);
			}				
			$AccObj->Transfer($this->data['Accentry']['amount']);		
				
			echo App::Load("Module/Cryptography")
				->jsonEncode(
                    array(
                        "_status" => 'Redirect',
                        "_location" => App::Config()->baseUrl("/accounts/account/{$id}")
                    )
				);	
			exit;
		}		
		
		if($entrytype == 'View'){	
			
		}
		else{
			// Read Accounts common attributes
			$Account = App::Model('Accchart')->findById($id);
			$this->set('Account',$Account);
		}
		
		// Manage linked entry
		$linkentryid = null;
		if(isset($this->get['tlinked'])){
			$linkentryid = $this->get['tlinked'];
			$prefix['primary'] =  'app_';//App::get("db_prefix");
            $sql = "SELECT *,t1.id id, t2.name as creditname,t3.name as debitname FROM   {$prefix['primary']}accentry t1 left join ({$prefix['primary']}accountchart t2,{$prefix['primary']}accountchart t3) ON (t2.no = t1.creditaccount and t3.no = t1.debitaccount) where t1.id='{$this->get['tlinked']}'";
            
            
			$LinkTxn = App::Model('Accentry')->custom_query($sql);
			$this->set('LinkTxn',$LinkTxn);
			$linkentryid = $this->get['tlinked'];
		}
		$this->set('linkentryid',$linkentryid);
			
		// set common vars
		$this->set('id',$id);
		$this->set('entrytype',$entrytype);
	}

	public function transactionviewerAction(){			
		$condition = '1=1 ';
		if(isset($this->get['sdate']) && isset($this->get['edate']) && !empty($this->get['sdate']) && !empty($this->get['edate'])){
			$condition .= " AND businessdate BETWEEN '{$this->get['sdate']}' and '{$this->get['edate']}'";
		}
		
		if(isset($this->get['cacc']) && !empty($this->get['cacc']) && isset($this->get['dacc']) && !empty($this->get['dacc'])){
			$dacc = App::Model('Accchart')->findById($this->get['dacc']);
			$cacc = App::Model('Accchart')->findById($this->get['cacc']); 
			$condition .= " AND ( debitaccount='{$dacc['no']}' OR creditaccount='{$cacc['no']}' ) ";
		}
		else if(isset($this->get['cacc']) && !empty($this->get['cacc'])){
			$cacc = App::Model('Accchart')->findById($this->get['cacc']);
			$condition .= " AND creditaccount='{$cacc['no']}'";
		}
		else if(isset($this->get['dacc']) && !empty($this->get['dacc'])){
			$dacc = App::Model('Accchart')->findById($this->get['dacc']);
			$condition .= " AND debitaccount='{$dacc['no']}'";
		}
		
		
		
		if(isset($this->get['code']) && !empty($this->get['code'])){
			$condition .= " AND code='{$this->get['code']}'";
		}		
		$Entries = App::Model('Accentry')->Paging("{$condition} ORDER BY id DESC");
		$this->set('Entries',$Entries);
	}	
	
	public function accountbynoAction($no=null){
		$Account = App::Model('Accchart')->findByNo($no);
		$this->redirect("/accounts/account/{$Account['id']}");		
	}
	
	public function printstatementAction($accountno){
		$this->layout = 'blank';
		
		$Account = App::Model('Accchart')->findByNo($accountno);
		$this->set('Account',$Account);
		$fromeDate = isset($this->get['f']) ? $this->get['f'] : date('Y-m-d');
		$toDate = isset($this->get['t']) ? $this->get['t'] : date('Y-m-d');
		$pm = isset($this->get['pm']) ? $this->get['pm'] : 'statement';
		if($pm == 'statement'){
			$condition = "(debitaccount='{$accountno}' OR creditaccount='{$accountno}') and date(entrydate) between '{$fromeDate}' and '{$toDate}' ORDER BY id ASC";		
		}
		else{
			$condition = "(creditaccount='{$accountno}') and date(entrydate) between '{$fromeDate}' and '{$toDate}' ORDER BY id ASC";		
		}
		$List = App::Model('Accentry')->findAll($condition);
		$this->set('List',$List);
		
		$this->set('pm',$pm);
		$this->set('fromeDate',$fromeDate);
		$this->set('toDate',$toDate);
	}
	
	public function operationtemplateAction($action=null,$id=null){
		
		 $this->addons = array('row_manager');
		
		if(!empty($this->data)){
			try{
				if(!isset($this->data['AccOptTemplate']['groupid'])){
					 throw new AppException($this->__("Select at least on group"));
				}
				
				$User = App::Session()->read('User');
				$this->data['AccOptTemplate']['entrydate'] = date('Y-m-d h:i:s');
				$this->data['AccOptTemplate']['createdby'] = $User['adminref'];
				$this->data['AccOptTemplate']['debitautoselection'] = isset($this->data['AccOptTemplate']['debitautoselection']) ? $this->data['AccOptTemplate']['debitautoselection'] : '0';
				$this->data['AccOptTemplate']['creditautoselection'] = isset($this->data['AccOptTemplate']['creditautoselection']) ? $this->data['AccOptTemplate']['creditautoselection'] : '0';
				$this->data['AccOptTemplate']['groupid'] = implode(',',$this->data['AccOptTemplate']['groupid']['checkbox']);
				$obj = App::Model('AccOptTemplate')->Save($this->data);

				echo App::Load("Module/Cryptography")
					->jsonEncode(
						array(
							"_status" => 'Redirect',
							"_location" => App::Config()->baseUrl("/accounts/operationtemplate" ) ///update/ . $obj->getId()
						)
					);
			}
			catch (AppException $e){
				echo App::Load("Module/Cryptography")
					->jsonEncode(
						array(
							"_status" =>'Error',
							"_message"=> '<strong style="color:red">' . $e->getMessage() . '</strong>'
						)
					);
			}
			exit;
		}
		
		$template = array();
		if(isset($id)){
			$template = App::Component('Accounts')->Helper('Data')->templates($id);
			
		}		
		$this->set('id',$id);
		$this->set('action',$action);
		$this->set('template',$template);
	}
    
    public function inoutAction($id=null){
		
		if(!empty($this->data)){
			try{
				if(!is_numeric($this->data['Transaction']['amount'])){
					throw new AppException($this->__("Enter numeric value")); 
				}
				
				$List = App::Model('Accopttemplate')->findAll("{$id} in (Groupid)");
				$accountautoselection = isset($this->data['Transaction']['accountautoselection']) ? $this->data['Transaction']['accountautoselection'] : null;
				foreach($List['data'] as $row){
				
					if(empty($row['code'])){
						$row['code'] = $this->data['Transaction']['code_' . $row['id']];
					}
					
					if($row['debitautoselection'] == '1'){
						$row['debitaccount'] = $accountautoselection;
					}
					elseif(empty($row['debitaccount'])){
						$row['debitaccount'] = $this->data['Transaction']['debitaccount_' . $row['id']];
					}
					
					if($row['creditautoselection'] == '1'){
						$row['creditaccount'] = $accountautoselection;
					}
					elseif(empty($row['creditaccount'])){
						$row['creditaccount'] = $this->data['Transaction']['creditaccount_' . $row['id']];
					}

					App::Component('Accounts')->Helper('Account')->transferbytemplate($row,$this->data['Transaction']['amount']);
				}
				
				echo App::Load("Module/Cryptography")
				->jsonEncode(
                    array(
                        "_status" => 'Redirect',
                        "_location" => App::Config()->baseUrl("/accounts/inout/{$id}")
                    )
				);	
				
			}
			catch (AppException $e){
				echo App::Load("Module/Cryptography")
					->jsonEncode(
						array(
							"_status" =>'Error',
							"_message"=> '<strong style="color:red">' . $e->getMessage() . '</strong>'
						)
					);
			}
			exit;			
		}
	
		$template = array();
		if(isset($id)){
			$template = App::Component('Accounts')->Helper('Data')->templateGroups($id);
			$List = App::Model('Accopttemplate')->findAll("{$id} in (Groupid)",null,'id myid');
			$str = '';
			foreach($List['data'] as $r){
				if(empty($str)){
					$str .=  $r['myid'];
				}
				else{
					$str .= ',' . $r['myid'];
				}
			}

			$GroupTransactions = App::Model('Accentry')->paging("optgroup in ({$str}) and businessdate='" . date('Y-m-d') . "' order by id DESC");
			$this->set('GroupTransactions',$GroupTransactions);
		}
		$this->set('template',$template);
        $this->set('id',$id);
    }
}
