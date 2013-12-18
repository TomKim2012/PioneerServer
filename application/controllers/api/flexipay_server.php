<?php defined('BASEPATH') OR exit('No direct script access allowed');

/**
 * Example
 *
 * This is an example of a few basic user interaction methods you could use
 * all done with a hardcoded array.
 *
 * @package		CodeIgniter
 * @subpackage	Rest Server
 * @category	Controller
 * @author		Tom Kimani
*/

// This can be removed if you use __autoload() in config.php OR use Modular Extensions
require APPPATH.'/libraries/REST_Controller.php';

class Flexipay_server extends REST_Controller
{
	private $isLoggedIn=false;
	 
    function __construct(){
//     	header("Access-Control-Allow-Origin: http://192.168.0.106");
//    	header("Access-Control-Allow-Origin:".$_SERVER['REMOTE_ADDR'].":".$_SERVER['SERVER_PORT']);
    	header("Access-Control-Allow-Origin: http://127.0.0.1:8888");
    	header("Access-Control-Allow-Credentials:true");
    	header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
    	header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
//     	header("Content-Type: application/json");
    	$method = $_SERVER['REQUEST_METHOD'];
    	if($method == "OPTIONS") {
    		die();
    	}
    	parent::__construct();
    	date_default_timezone_set('Africa/Nairobi');
    	
    	$this->load->library('curl');
        $this->load->model('Users_Model', 'users');
        $this->load->model('Transactions_Model', 'transactions');
        $this->load->model('Customer_Model', 'customers');
        $this->load->model('Terminal_Model', 'terminals');
        
    }
    
    function authorize(){
       
       	if($this->users->user)
    	{
    	 return true;
    	}else{
    		$this->response(array('message' => 'Not Logged In',
	            				  'error' =>false, 
    							  'isLogged' => false), 200
    						);
    	}
    }
 
    /*
     * Get customer Transactions
     */
    function custTransactions_get()
    {
    	if($this->get('customerId')){
	    	//Check if user is Logged In
	    	if($this->authorize())
	    	{
	    		$transactions = $this->transactions->getCustTransaction($this->get('customerId'));
	    		if($transactions)
	    		{
	    			$counter=1;
	    			$message = null;
	    			foreach ($transactions as $row) {
	    				$message .=$counter.". ".$row['transaction_date'].":".$row['transaction_type']." -".
	    						   "Ksh ". number_format($row['transaction_amount'])." || ";
	    				$counter++;
	    			}
	    			
	    			$customerData=$this->customers->getSingleCustomer("customerId", $this->get('customerId'));
	    			
	    			$save = $this->saveMiniStatement($this->get('customerId'), "Mini-Statement", 10);
	    			
	    			if($save){
	    				$response=$this->_send_sms($customerData->mobileNo, $message);
	    			}
	    			
			        if($response){
			        	$clientResponse['sms']=$response;
			        	$clientResponse['success']=true;
			        	$this->response($clientResponse, 200); // 200 being the HTTP response code
			        }
	    		}else
	    		{
	    			$this->response(array('message' => 'No transactions set returned',
	    					'error' =>true), 404
	    			);
	    		}
	    	}
    	}else{
    		$this->response(array('message' => 'CustomerId not sent in the request',
    				'error' =>true), 404
    			);
    	}
    }
    
    
	function transactions_get()
    {
		//Check if user is Logged In
	   	if($this->authorize())
     	{
	        $transactions = $this->transactions->getTransactions();
	        
	        if($transactions)
	        {	
	        	//Get the Customer Details
	        	$counter=0;
	        	foreach ($transactions as $row) {
	        		///Get Customer Data 
		        	$customerData=$this->customers->getSingleCustomer("customerId", $row['customerId']);
		            $customer['custNames']= $customerData->firstName." ".$customerData->lastName;
		            $mergedTransaction[] = array_merge($transactions[$counter], $customer);
		            $counter+=1;
	        	}
	        	//$this->response($mergedTransaction, 200); // 200 being the HTTP response code
	        	header('content-type: application/json; charset=utf-8');
	        	
	        	$json = json_encode($mergedTransaction);
	        	
	        	echo isset($_GET['callback'])
	        	? "{$_GET['callback']}($json)"
	        	: $json;
	        	
	        }else
	        {
	            $this->response(array('message' => 'No transactions set returned',
	            					   'error' =>true), 200
	            			    );
	        }
    	}
    }
    
    function transactions_post(){
      if($this->authorize())
      {     
	      $inp= array(
	        	'customerId' => $this->post('customerId'),
	            'transaction_amount' => $this->post('transaction_amount'),
	            'transaction_type' => $this->post('transaction_type')
	          );
		

	      $customer = $this->customers->getSingleCustomer('customerId', $inp['customerId']);
		  if($customer)	{	      
		      $response = $this->transactions->createTransaction($inp); 
		      if ($response['success']){
		      		$message = "Transaction ". $response['transaction_code']. " confirmed on ". 
			        		  	 date("d/m/Y",strtotime($response['transaction_date']))." at ".$response['transaction_time'].
			        		   ". Ksh ".number_format($inp['transaction_amount']). " has been deposited to Account ".
				        		   $customer->refNo. "- ".$customer->firstName." ".$customer->lastName.
			        		    " by ".$response['officer_names'].".Thank-you for banking with us.";

		      		
		      		//$message=$this->_send_sms($customer->mobileNo, $message);
					
			        if($message){
			        	$clientResponse['sms']=true;
			        	$clientResponse['success']=true;
			        	$this->response($clientResponse, 200); // 200 being the HTTP response code
			        }
		        } else {
		             $this->response($response, 404);//Reject code
		        }
		  }
      }
    }
    
    
    function saveMiniStatement($customerId, $transactionType, $transactionAmount){
    	if($this->authorize())
    	{
    		$inp= array(
    				'customerId' => $customerId,
    				'transaction_amount' => $transactionAmount,
    				'transaction_type' => $transactionType
    		);
    		
    		$response = $this->transactions->createTransaction($inp);
    	
    		return $response['success'];
    		
    		//$this->response($clientResponse, 200); // 200 being the HTTP response code
    	}
    }
    
    /*
     * Get customer details from parameter value
     */
    
    function custDetails_get(){
    	$parameter = $this->get('parameter');
    	$value=$this->get('value');
    	
    	if($this->authorize()){
	    	if(!empty($parameter) && !empty($value)){
	    		$customers=$this->customers->getCustomer($parameter,$value);
	
	    		if($customers)
	    		{
	    			$this->response($customers, 200); // 200 being the HTTP response code
	    		}else
	    		{
	    			/* echo 'resultEmpty'; */
	    			$this->response(null, 200);
	    		}
	    	}else{
	    		/* echo 'NotLogged'; */
	    		/* $this->response(array('isLogged'=>false), 200); */
	    	}
    	}
    }


	//-------Function to login user ------------------
    function login_post() {
        if($this->post('userName')){
	    	$UserName=$this->post('userName');      
	        $password= $this->post('password');
	        $imeiCode= $this->post('imeiCode');
        }
        
		if((!empty($UserName))&&!(empty($imeiCode))) {       
			// $login_ok is true or false depending on user login information
	        $login_ok = $this->users->login($UserName,$password,$imeiCode); 
	        if($login_ok['authorize'] == true) {
	        	/*UserName For testing */
	        	if(!(isset($username))){
	        	 $this->response($login_ok, 200);
	        	}else{
	        		return true;
	        	}
	        }else {
	         $response=$login_ok;  
	         $this->response($response, 200);
	        }
		}else{
			$response = array(
					'message'=>'UserName OR ImeiCode Missing',
					'success'=>false
			);
			$this->response($response, 200);
		}
    }

    //--------------Function to logout user----------------------------
    function logout_get() {
        $response=$this->users->logout();
        if($response['success']){
        	$this->response($response, 200);
        }else{
        	$this->response($response, 404);
        }
    }
    
    //--------Function to get All Users -------
    function users_get() {
    	$response=$this->users->getUsers();
    
    	$this->response($response, 200);
    }
	
    function terminal_post(){
    	if($this->post('terminalName')){
    		$terminalName=$this->post('terminalName');
    		$imeiCode= $this->post('imeiCode');
    	}
    	
    	if((!empty($terminalName))&&!(empty($imeiCode))) {
    		$terminalDetails = array('imeiCode'=>$imeiCode,
    								 'terminalName'=>$terminalName
    		);
    		$response = $this->terminals->createTerminal($terminalDetails);
    		if($response['success']) {
    			echo $response['terminalId'];
    		}else {
    			//echo "";
    			echo $response['terminalId'];
    		}
    	}else{
    		$response = array(
    				'message'=>'Missing parameters',
    				'success'=>false
    		);
    		$this->response($response, 200);
    	}
    }
    
    //----Check Allocation
    function allocation_get(){
    	
    	if($this->get('imeiCode')){
    		//Check if user is Logged In
    		if($this->authorize())
    		{
    			$allocation = $this->users->check_allocation(NULL,$this->get('imeiCode'));
    			if($allocation)
    			{
    				$userDetails = $this->users->getUserById($allocation['allocatedTo']);
    				$allocateeDetails = $this->users->getUserById($allocation['allocatedBy']);
    				
    				$allocation['allocatedName']= $userDetails['firstName']." ".$userDetails['lastName'];
    				$allocation['allocateeName']= $allocateeDetails['firstName']." ".$allocateeDetails['lastName'];
    				$allocation['isAllocated']= true;
    				$this->response($allocation, 200);
    				
    			}else
    			{	
    				$this->response(array('isAllocated'=>false),200);
    			}
    		}
    	}else{
    		$this->response(array('message' => 'ImeiCode not sent in the request',
    				'error' =>true), 200
    		);
    	}
    }
    
    
    function allocation_post(){
    	if($this->post('allocatedTo')){
    		$input = array(
    				'allocatedTo' => $this->post('allocatedTo'),
    				'allocatedBy' => $this->post('allocatedBy'),
    				'deallocationDate'=>NULL,
    				'deallocationTime' =>NULL,
    				'deallocatedBy' =>NULL,
    				'terminalId'=> $this->post('terminalId')
    		);
    	}
    	 
    	if((!empty($input['allocatedTo']))) {
    		$response = $this->users->createAllocation($input);
    		if($response) {
    			echo "Saved";
    		}else {
    			echo "UnSaved";
    		}
    	}else{
    		$response = array(
    				'message'=>'Missing parameters',
    				'success'=>false
    		);
    		$this->response($response, 200);
    	}
    }
    
    function deallocation_post(){
    	if($this->post('allocationId')){
	    	$input = array(
	    			'deallocationDate' =>date("Y-m-d H:i:s"),
	    			'deallocationTime' =>date("G:i:s"),
	    			'deallocatedBy' =>$this->post('deallocatedBy'),
	    	);
    	}
    	
    	if((!empty($input['deallocatedBy']))) {
    		$response = $this->users->createDeallocation($input,$this->post('allocationId'));
    		if($response) {
    			echo "Saved";
    		}else {
    			echo "UnSaved";
    		}
    	}else{
    		$response = array(
    				'message'=>'Missing parameters',
    				'success'=>false
    		);
    		$this->response($response, 200);
    	}
    	 
    }
    
	//----------Function to send sms-------------------
    function _send_sms($recipient,$message){
    	$serverUrl= "http://31.222.168.80/smartsms/sms_ext.jsp";
    	
    	$recipient = "+254".substr($recipient, 1);
    	
    	$parameters= array( 'code'=>'MGRD19',
    						'task'=>'send',
    					    'msisdn'=>$recipient,
    					  	'message'=>$message
    					  );
    	
    	$response = $this->curl->simple_get($serverUrl,$parameters);
    	return true;
    }
       
}