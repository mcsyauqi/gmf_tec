<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_user extends CI_Model{

	public function getAll() {
		
		return $this->db->select('pegawai.no_peg, pegawai.nama_peg, user.username, user.password')
		->from('pegawai')
		->join('user', 'pegawai.no_peg=user.no_peg')
		->get();
	}
	
}