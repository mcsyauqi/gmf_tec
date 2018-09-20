<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Training_super extends CI_Controller {

	function __construct() {
		parent:: __construct();
		$this->load->model('m_pegawai');
		$this->load->model('m_training');
		$this->gate->cek_login();
		$this->gate->role_s_admin();
	}
	public function index()
	{
		$data['training'] = $this->m_training->getAll('training');
		$this->template->load('super_admin/v_static_super','super_admin/v_training_super',$data);
	}

	public function edit_training()
	{
		$id = $this->uri->segment(4);
		$data['training'] = $this->m_training->edit_training($id);
		$this->template->load('super_admin/v_static_super','super_admin/v_edit_training_super',$data);
		
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

			$this->m_training->update_training($dta, $id, $due_human);
		} 

		$due = array(
			'due_human' => $due_human,  );

		$this->m_training->update_training($data, $id, $due);
		$this->m_training->update_due($id, $due);

		redirect (site_url('super_admin/training_super'));
	}
}