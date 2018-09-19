<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Training extends CI_Controller {

	function __construct() {
		parent:: __construct();
		$this->load->model('Db_pegawai');
		$this->load->model('Db_training');
		$this->gate->cek_login();
		$this->gate->role_admin();
	}
	public function index()
	{
		$par = array('bidang' =>$this->session->userdata('bidang')); 
		$data['training'] = $this->Db_training->get_tra_adm($par);
		$this->template->load('admin/static','admin/training_admin',$data);
	}

	public function edit_training()
	{
		$id = $this->uri->segment(4);
		$data['training'] = $this->Db_training->edit_training($id);
		$this->template->load('admin/static','admin/edit_training',$data);
	
	}

	public function update_training()
	{
		$data = array(
			'done_human' => $this->input->post('done_human'),
			'done_cas' => $this->input->post('done_cas'),
			'done_fts' => $this->input->post('done_fts'),
			'done_sms' => $this->input->post('done_sms'),
			'done_ewis' => $this->input->post('done_ewis'),
			'done_module' => $this->input->post('done_module'),
			'done_gqs' => $this->input->post('done_gqs'),
			'done_batk' => $this->input->post('done_batk'),
			'done_basic' => $this->input->post('done_basic'),
			'done_cont' => $this->input->post('done_cont'),
			'stat_typer1' => $this->input->post('stat_typer1'),
		);
		$id = $this->input->post('no_peg');

		$due_human = date('Y-m-d', strtotime('+2 years', strtotime($this->input->post('done_human')))); 


		date_default_timezone_set('Asia/Jakarta');
		$tgl_sekarang = date('Y-m-d');
		$pattern = '/([^0-9]+)/';
		$sekarang = preg_replace($pattern,'',$tgl_sekarang);
		$done = preg_replace($pattern,'',$this->input->post('done_sms'));
		$cek = $sekarang - $done; 
		$done_bener = strtotime($this->input->post('done_sms'));
		

		if ($done_bener!=0000-00-00) {

			if ($cek >= 0) { 
				$done_bener = strtotime($this->input->post('done_sms'));
				echo date("d-M-Y",$done_bener); 

				$due_human = date('Y-m-d', strtotime('+2 years', strtotime($this->input->post('done_human')))); 
		 	} else { 
				$done_bener = strtotime($train->done_sms); 
				echo date("d-M-Y",$done_bener); 

				$due_human = date('Y-m-d', strtotime('+2 years', strtotime($this->input->post('done_human')))); 
			}

		} else { 
			
			$dta = array(
			'done_human' => $this->input->post('done_human'),
			'done_cas' => $this->input->post('done_cas'),
			'done_fts' => $this->input->post('done_fts'),
			'done_sms' => $this->input->post('done_sms'),
			'done_ewis' => $this->input->post('done_ewis'),
			'done_module' => $this->input->post('done_module'),
			'done_gqs' => $this->input->post('done_gqs'),
			'done_batk' => $this->input->post('done_batk'),
			'done_basic' => $this->input->post('done_basic'),
			'done_cont' => $this->input->post('done_cont'),
			'stat_typer1' => $this->input->post('stat_typer1'),
		);

 			$this->Db_training->update_training($dta, $id, $due_human);
		} 

		$due = array(
			'due_human' => $due_human,  );

		$this->Db_training->update_training($data, $id, $due);
		$this->Db_training->update_due($id, $due);

		redirect (site_url('admin/Training'));
	}
}