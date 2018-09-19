<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Db_user extends CI_Model{
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

	public function getAll() {
		
		return $this->db->select('pegawai.no_peg, pegawai.nama_peg, user.username, user.password')
		->from('pegawai')
		->join('user', 'pegawai.no_peg=user.no_peg')
		->get();
	}
	
}