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
 
class Component_Accounts_Helpers_Account extends appRain_Base_Objects
{
	public function Transfer($amount=null){						
			
			try{
				if(!is_numeric($amount)){
					throw new AppException($this->__("Value is not numeric"));
				}
				
				if($amount <= 0){
					throw new AppException($this->__("Value cannot zero or negative"));
				}				
				
				$DrAcc = App::Model('Accchart')->findByNo($this->getDebitaccount());
				if(empty($DrAcc)) {
					throw new AppException($this->__("Invalid Debit Account"));
				}
				
				$CrAcc = App::Model('Accchart')->findByNo($this->getCreditaccount());
				if(empty($CrAcc)) {
					throw new AppException($this->__("Invalid Credit Account"));
				}
				
				$CreditBalanceEntry = App::Model('Accentry')->find("creditaccount='" . $this->getCreditaccount() . "' OR debitaccount='" . $this->getCreditaccount() . "' ORDER BY id DESC");

				$creditPrevBalance = 0;
				if(!empty($CreditBalanceEntry)){	
					
					$creditPrevBalance = ($CreditBalanceEntry['creditaccount'] == $this->getCreditaccount()) ? 
					$CreditBalanceEntry['crbalance'] : $CreditBalanceEntry['drbalance'];
				}
				
				$DebitBalanceEntry = App::Model('Accentry')->find("creditaccount='" . $this->getDebitaccount() . "' OR debitaccount='" . $this->getDebitaccount() . "' ORDER BY id DESC");
				$debitPrevBalance = 0;
				if(!empty($DebitBalanceEntry)){	
					$debitPrevBalance = ($DebitBalanceEntry['debitaccount'] == $this->getDebitaccount()) ? 
					$DebitBalanceEntry['drbalance'] : $DebitBalanceEntry['crbalance'];
				}								
				
				$crbalance = $creditPrevBalance-$amount;
				$drbalance = $debitPrevBalance+$amount;
											
				App::Model('Accentry')
					->setId(null)
					->setEntryDate(date('Y-m-d H:i:s'))
					->setBusinessdate(date('Y-m-d H:i:s'))
					->setOptGroup($this->getOptGroup())
					->setCode($this->getCode())
					->setDebitaccount($this->getDebitaccount())
					->setCreditaccount($this->getCreditaccount())
					->setCRBalance($crbalance)
					->setDRBalance($drbalance)
					->setAmount($amount)
					->setFullremark($this->getFullremark())
					->setLink($this->getLink())
					->setQty($this->getQty())
					->Save();
					
				return array('status'=>'Success');	
			}
            catch (AppException $e) {
				return array(
					'status'=>'Error',
					'message' => $e->getMessage()
				);
			}
	}
	
	public function transferbytemplate($template=array(),$amount=0){
	
		if($template['method'] == 'Percentage'){
			if($template['value'] > 0){
				$tamount = ($template['value']/100) * $amount;
			}
			else{
				$tamount = 0;
			}
		}
		else{
			$tamount = $template['value'];
		}
		
		return $this->setOptGroup($template['id'])
			->setCode($template['code'])
			->setDebitaccount($template['debitaccount'])
			->setCreditaccount($template['creditaccount'])
			->setShortremark($template['shortremark'])
			->setFullremark($template['fullremark'])
			->Transfer($tamount);
	}
	
	public function record($no=null){
		return  App::Model('Accchart')->findByNo($no);
	}
}