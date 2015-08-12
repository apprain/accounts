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
 
class Component_Accounts_Helpers_UI extends appRain_Base_Objects
{
	public function RenderEntries($Acc=null){

		// View Report
		$Connection =  $this->get_conn();
		$Entries = App::Model('Accentry')->custom_query("SELECT *,t1.id id, t2.name as creditname,t3.name as debitname FROM   {$Connection->prefix}accentry t1 left join ({$Connection->prefix}accountchart t2,{$Connection->prefix}accountchart t3) ON (t2.no = t1.creditaccount and t3.no = t1.debitaccount) where t1.debitaccount='{$Acc['no']}' or t1.creditaccount='{$Acc['no']}' ORDER BY t1.id ASC");
		
		// Init Grid
		$DataGrid = App::Module('DataGrid')
			->clear()
			->setHeader(array('ID','Date','Amount','Balance','Qty','Balance','Corr. Acct','Code','Description'));			

		// Print Transaction Grid	
		$balance = 0;
		$balance_qty = 0;
		foreach($Entries as $row){
            //pre($row);
			$corspondaccount = $row['creditaccount'];
			$corspondaccountname = $row['creditname'];
			$balance = $row['drbalance'];

			if($Acc['no'] == $row['creditaccount']){
				$row['amount'] = $row['amount'] * -1;
				$row['qty'] = $row['qty'] * -1;
				$corspondaccount = $row['debitaccount'];
				$corspondaccountname = $row['debitname'];
				$balance = $row['crbalance'];
			}
			$balance_qty += $row['qty'];
			
			
			
			if($Acc['method'] == 'Quantifier'){
				$DataGrid->addRow(
					"{$row['id']}" . (empty($row['link']) ? '' : "-> {$row['link']}"),
					$row['businessdate'],
					App::Component('Accounts')->Helper('Data')->numberformate($row['qty'],0),
					App::Component('Accounts')->Helper('Data')->numberformate($balance_qty,0),
                    App::Html()->linkTag(App::Config()->baseUrl("/accounts/accountbyno/{$corspondaccount}"),
                        App::Html()->getTag('span',array('title'=>$corspondaccount),$corspondaccountname)
                    ),
					$row['code'],
					$row['fullremark']
					
				);
			}
			else if($Acc['method'] == 'Financial'){
				$DataGrid->addRow(
					"{$row['id']}" . (empty($row['link']) ? '' : "-> {$row['link']}"),
					$row['businessdate'],
					App::Component('Accounts')->Helper('Data')->numberformate($row['amount']),
					App::Component('Accounts')->Helper('Data')->numberformate($balance),
					 App::Html()->linkTag(App::Config()->baseUrl("/accounts/accountbyno/{$corspondaccount}"),
                        App::Html()->getTag('span',array('title'=>$corspondaccount),$corspondaccountname)
                    ),
					$row['code'],
					$row['fullremark']
				);
			}
			else{
				$DataGrid->addRow(
					"{$row['id']}" . (empty($row['link']) ? '' : "-> {$row['link']}"),
					$row['businessdate'],
					App::Component('Accounts')->Helper('Data')->numberformate($row['amount']),
					App::Component('Accounts')->Helper('Data')->numberformate($balance),
					App::Component('Accounts')->Helper('Data')->numberformate($row['qty'],0),
					App::Component('Accounts')->Helper('Data')->numberformate($balance_qty,0),
					 App::Html()->linkTag(App::Config()->baseUrl("/accounts/accountbyno/{$corspondaccount}"),
                        App::Html()->getTag('span',array('title'=>$corspondaccount),$corspondaccountname)
                    ),
					$row['code'],
					$row['fullremark']
				);
			}
		}			

		if($Acc['method'] == 'Quantifier'){
			$DataGrid->setHeader(array('ID','Date','Qty','Balance','Corr. Acct','Code','Description'));
			echo App::Html()->getTag("h3",array("class"=>"first"),"FINAL BALANCE: " . $balance_qty);
		}
		else if($Acc['method'] == 'Financial'){
			$DataGrid->setHeader(array('ID','Date','Amount','Balance','Corr. Acct','Code','Description'));
			echo App::Html()->getTag("h3",array("class"=>"first"),"FINAL BALANCE: " . $balance);
		}
		
		
			
		echo '<div  style="height:300px;overflow:auto">';
		// Display Grid
		$DataGrid->Render();
		echo '</div>';
	}
	
	public function renderOperationFieldsByTempalte($gid=null){
		
		$List = App::Model('Accopttemplate')->findAll("{$gid} in (Groupid)");
		$autoselection = false;
		foreach($List['data'] as $template){		
			
			$str = '';
			if(empty($template['code'])){
				$str .= App::Component('Accounts')->Helper('Data')->getEntryCodeListTag("data[Transaction][code_{$template['id']}]",'',array('class'=>'check_notempty select-entry-code'),'-- PURPOSE --');
			}
			
			if(empty($template['debitaccount']) && $template['debitautoselection'] != '1'){
				$str .= ' '. App::Component('Accounts')->Helper('Data')->setReturnAccountNo(true)->AccountListTag("data[Transaction][debitaccount_{$template['id']}]",'',array('style'=>'width:200px','class'=>'check_notempty'),'-- Account --');
			}
			
			if(empty($template['creditaccount']) && $template['creditautoselection'] != '1'){
				$str .= ' '. App::Component('Accounts')->Helper('Data')->setReturnAccountNo(true)->AccountListTag("data[Transaction][creditaccount_{$template['id']}]",'',array('style'=>'width:200px','class'=>'check_notempty'),'-- Account --');				
			}
			
			if(!empty($str)){
				echo '<h6>' . $template['name'] . '<h6>' . $str ; 
			}
			
			if( $template['creditautoselection'] == '1' || $template['debitautoselection'] == '1'){
				$autoselection = true;
			}
		}
		
		if($autoselection){
			echo '<h6>Account<h6>';
			echo App::Component('Accounts')->Helper('Data')->setReturnAccountNo(true)->AccountListTag("data[Transaction][accountautoselection]",'',array('style'=>'width:200px','class'=>'check_notempty'),'-- Account --');
		}
	}
}