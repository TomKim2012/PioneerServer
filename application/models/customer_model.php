<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Customer_Model extends CI_Model {

	function getCustomer($parameter, $value){
		$this->db->where(
				array($parameter=>$value,
				));
		$query=$this->db->get('customer');
		
// 		echo $this->db->last_query();
		$custData=$query->result_array();
		return $custData;
	}
	
	
	/*
	 * Repetition -Should find a solution to this immediately
	 */
	function getSingleCustomer($parameter, $value){
		$this->db->where(
				array($parameter=>$value,
				));
		$query=$this->db->get('customer');
		$custData= $query->row();
		return $custData;
	}
	
}