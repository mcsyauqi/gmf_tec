<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_training extends CI_Model{

	public function getAll($table) {
		
		return $this->db->select('*')
		->from('training')
		->join('pegawai', 'pegawai.no_peg=training.no_peg')
		->get();
	}

	public function edit_training($id){
		
		return $this->db->select('pegawai.no_peg, pegawai.nama_peg, training.done_human, training.done_cas, training.done_fts, training.done_sms, training.done_ewis, training.done_module, training.done_gqs, training.done_batk, training.done_basic, training.done_cont, training.stat_typer1')
		->from('pegawai')
		->join('training', 'pegawai.no_peg=training.no_peg')
		->where('pegawai.no_peg',$id)
		->get();
	}

	public function input_training($data) //input data baru
	{
		$this->db->insert('training', $data);
		return TRUE;
	}

	public function update_training($data,$id){
		$this->db->where('no_peg', $id)->update('training', $data);
	}

	public function update_unit_training($dta, $id){
		$this->db->where('no_peg', $id)->update('training', $dta);
	}

	public function update_due($id,$due){
		$this->db->where('no_peg', $id)->update('training', $due);
	}

	public function delete_training($id){
		$this->db->delete('training', $id);
	}

	public function get_tra_adm($par) {
		
		return $this->db->select('*')
		->from('training')
		->join('pegawai', 'pegawai.no_peg=training.no_peg')
		->where($par)
		->get();
	}

	public function training_reminder($tra,$par){

		$param = $tra." BETWEEN " . "'" . $par['date1'] . "'" . " AND " . "'" . $par['date2'] . "'";
		return $this->db->select('training.no_peg, pegawai.nama_peg, training.unit, training.due_human, training.due_cas, training.done_fts, training.done_sms, training.done_ewis, training.done_module, training.done_gqs, training.done_batk, training.done_basic, training.done_cont, training.stat_typer1')
		->from('training')
		->join('pegawai', 'training.no_peg=pegawai.no_peg')
		->where($param)
		->order_by($tra,'ASC')
		->get();
	}
	
}