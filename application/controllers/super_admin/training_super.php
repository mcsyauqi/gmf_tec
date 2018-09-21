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
		$connect = mysqli_connect('localhost','root','','db_gmf');
		$id = $this->input->post('no_peg');
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
		
		$done_bener = strtotime($this->input->post('done_human'));
		if ($done_bener!=0000-00-00) {
			$due_human = date('Y-m-d', strtotime('+2 years', strtotime($this->input->post('done_human')))); 
			mysqli_query($connect,"UPDATE training set stat_human=5 where no_peg='$id' ");
		} else {
			mysqli_query($connect,"UPDATE training set stat_human=0 where no_peg='$id' ");
		}

		$done_bener = strtotime($this->input->post('done_human'));
		if ($done_bener!=0000-00-00) {
			$due_cas = date('Y-m-d', strtotime('+2 years', strtotime($this->input->post('done_cas')))); 
			mysqli_query($connect,"UPDATE training set stat_cas=5 where no_peg='$id' ");	
		}  else {
			mysqli_query($connect,"UPDATE training set stat_cas=0 where no_peg='$id' ");
		}

		$due = array(
			'due_human' => $due_human,
			'due_cas' => $due_cas,  );

		$done_bener = strtotime($this->input->post('done_fts'));
		if ($done_bener!=0000-00-00) {
			mysqli_query($connect,"UPDATE training set stat_fts=5 where no_peg='$id' ");
		} else {
			mysqli_query($connect,"UPDATE training set stat_fts=0 where no_peg='$id' ");
		}

		$done_bener = strtotime($this->input->post('done_sms'));
		if ($done_bener!=0000-00-00) {
			mysqli_query($connect,"UPDATE training set stat_sms=5 where no_peg='$id' ");
		} else {
			mysqli_query($connect,"UPDATE training set stat_sms=0 where no_peg='$id' ");
		}

		$done_bener = strtotime($this->input->post('done_ewis'));
		if ($done_bener!=0000-00-00) {
			mysqli_query($connect,"UPDATE training set stat_ewis=5 where no_peg='$id' ");
		} else {
			mysqli_query($connect,"UPDATE training set stat_ewis=0 where no_peg='$id' ");
		}

		$done_bener = strtotime($this->input->post('done_module'));
		if ($done_bener!=0000-00-00) {
			mysqli_query($connect,"UPDATE training set stat_module=5 where no_peg='$id' ");
		} else {
			mysqli_query($connect,"UPDATE training set stat_module=0 where no_peg='$id' ");
		}

		$done_bener = strtotime($this->input->post('done_gqs'));
		if ($done_bener!=0000-00-00) {
			mysqli_query($connect,"UPDATE training set stat_gqs=5 where no_peg='$id' ");
		} else {
			mysqli_query($connect,"UPDATE training set stat_gqs=0 where no_peg='$id' ");
		}

		$done_bener = strtotime($this->input->post('done_batk'));
		if ($done_bener!=0000-00-00) {
			mysqli_query($connect,"UPDATE training set stat_batk=5 where no_peg='$id' ");
		} else {
			mysqli_query($connect,"UPDATE training set stat_batk=0 where no_peg='$id' ");
		}
		
		$done_bener = strtotime($this->input->post('done_basic'));
		if ($done_bener!=0000-00-00) {
			mysqli_query($connect,"UPDATE training set stat_basic=5 where no_peg='$id' ");
		} else {
			mysqli_query($connect,"UPDATE training set stat_basic=0 where no_peg='$id' ");
		}

		$done_bener = strtotime($this->input->post('done_cont'));
		if ($done_bener!=0000-00-00) {
			mysqli_query($connect,"UPDATE training set stat_cont=5 where no_peg='$id' ");
		} else {
			mysqli_query($connect,"UPDATE training set stat_cont=0 where no_peg='$id' ");
		}


		$this->m_training->update_training($data, $id, $due);
		$this->m_training->update_due($id, $due);

		redirect (site_url('super_admin/training_super'));
	}
}