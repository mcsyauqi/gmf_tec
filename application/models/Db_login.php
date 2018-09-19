<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Db_login extends CI_Model{
	// public function __construct()
	// {
	// 	$this->load->database();
	// }
	// public function login()
	// {
	// 	$username = $this->input->post('username', TRUE);
	// 	$password = $thiss->input->post('password', TRUE);
	// 	$data = $this->db->query("SELECT * from admin where username = '$username' and password = '$password' LIMIT 1");
	// 	return $data->row();
	// }

	function cek_user($username="",$password="") {

		$query = $this->db->get_where('user',array('username' => $username, 'password' => $password));
		$query2 = $query->result_array();
		return $query2;
	}
	
}