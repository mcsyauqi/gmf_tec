<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pegawai_admin extends CI_Controller {

	function __construct() {
		parent:: __construct();
		$this->load->model('Db_pegawai');
		$this->load->model('Db_training');
		$this->gate->cek_login();
		$this->gate->role_admin();

	}

	public function index()
	{
		$table='pegawai';
		$par = array('bidang' =>$this->session->userdata('bidang')); 
		$data['pegawai'] = $this->Db_pegawai->get_peg_adm($table,$par);
		$this->template->load('admin/v_static_admin','admin/v_pegawai_admin',$data);
	}

	public function add_peg_admin()
	{
		$this->template->load('admin/v_static_admin','admin/v_add_peg_admin');
	}

	public function edit_peg_admin()
	{
		$id = $this->uri->segment(4);
		$data['pegawai'] = $this->Db_pegawai->edit_pegawai($id);
		$this->template->load('admin/v_static_admin','admin/v_edit_peg_admin',$data);
	}

	public function input_peg_admin()
	{
		$data = array(
			'no_peg' => $this->input->post('no_peg'),
			'nama_peg' => $this->input->post('nama_peg'),
			'dinas' => $this->input->post('dinas'),
			'bidang' => $this->input->post('bidang'),
			'unit' => $this->input->post('unit'),
			'jabatan' => $this->input->post('jabatan'),
			'pendidikan' => $this->input->post('pendidikan'),
			'tgl_masuk' => $this->input->post('tgl_masuk'),
			'tgl_lahir' => $this->input->post('tgl_lahir'),
		);
		$dta = array('no_peg' => $this->input->post('no_peg'));

		$this->Db_pegawai->input_pegawai($data);
		$this->Db_training->input_training($dta);

		redirect (site_url('admin/pegawai_admin'));
	}

	public function delete_peg_admin()
	{
		$id = array('no_peg' => $this->uri->segment(4));
		$this->Db_pegawai->delete_pegawai($id);
		redirect (site_url('admin/pegawai_admin'));
	}

	public function update_peg_admin()
	{
		$data = array(
			'no_peg' => $this->input->post('no_peg'),
			'nama_peg' => $this->input->post('nama_peg'),
			'dinas' => $this->input->post('dinas'),
			'bidang' => $this->input->post('bidang'),
			'unit' => $this->input->post('unit'),
			'jabatan' => $this->input->post('jabatan'),
			'pendidikan' => $this->input->post('pendidikan'),
			'tgl_masuk' => $this->input->post('tgl_masuk'),
			'tgl_lahir' => $this->input->post('tgl_lahir'),
		);
		$id = $this->input->post('no_peg');

		$this->Db_pegawai->update_pegawai($data, $id);

		redirect (site_url('admin/pegawai_admin'));
	}
}

?>
