<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Db_admin extends CI_Model{

	public function input_admin($data) //input data baru
	{
		$this->db->insert('user', $data);
		return TRUE;
	}

	public function update_admin($data,$id){
		$this->db->where('no_peg',$id)->update('user', $data);
	}

	public function delete_admin($id){
		$this->db->delete('user', $id);
	}
	
}