<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pegawai extends CI_Model{

	public function getAll($table) {

		return $this->db->get($table)->result();
	}

	public function getpegawai($no_peg)
	{
		$this->db->select('*');
		$this->db->from('pegawai');
		$this->db->where('no_peg', $no_peg);
		return $this->db->get();		
	}

	public function input_pegawai($data) //input data baru
	{
		$this->db->insert('pegawai', $data);
		return TRUE;
	}

	public function delete_pegawai($id){
		$this->db->delete('pegawai', $id);
	}

	public function edit_pegawai($id){
		$this->db->select('*');
		$this->db->from('pegawai');
		$this->db->where('no_peg', $id);
		return $this->db->get();
	}

	public function update_pegawai($data,$id){
		$this->db->where('no_peg', $id)->update('pegawai', $data);
	}

	public function get_peg_adm($table,$par){
		return $this->db->get_where($table,$par)->result();
	}
	
}