<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pegawai_super extends CI_Controller {

	function __construct() {
		parent:: __construct();
		$this->load->model('m_pegawai');
		$this->load->model('m_training');
		$this->gate->cek_login();
		$this->gate->role_s_admin();
	}

	public function index()
	{
		$data['pegawai'] = $this->m_pegawai->getAll('pegawai');
		$this->template->load('super_admin/v_static_super','super_admin/v_pegawai_super',$data);
	}
	
	public function add_pegawai()
	{
		$this->template->load('super_admin/v_static_super','super_admin/v_add_pegawai_super');
	}

	public function input_pegawai()
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

		$this->m_pegawai->input_pegawai($data);
		$this->m_training->input_training($dta);

		redirect (site_url('super_admin/pegawai_super'));
	}
	
	public function delete_pegawai()
	{
		$id = array('no_peg' => $this->uri->segment(4));
		$this->m_pegawai->delete_pegawai($id);
		$this->m_training->delete_training($id);
		redirect (site_url('super_admin/pegawai_super'));
	}

	public function edit_pegawai()
	{
		$id = $this->uri->segment(4);
		$data['pegawai'] = $this->m_pegawai->edit_pegawai($id);
		$this->template->load('super_admin/v_static_super','super_admin/v_edit_pegawai_super',$data);
	}

	public function update_pegawai()
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

		$this->m_pegawai->update_pegawai($data, $id);

		redirect (site_url('super_admin/pegawai_super'));
	}

	public function edit()
	{
		$this->load->model('m_pegawai');
		$no_peg = $this->uri->segment(4);
		$data['uname'] = $this->uri->segment(3);
		$username = $data['uname'];
		$data['profil'] = $this->m_pegawai->loadprofil($username);
		$data['tipe'] = $this->m_pegawai->tipe($username);
		$data['unit'] = $this->m_pegawai->loadunit();
		$data['pegawai'] = $this->m_pegawai->getpegawai($no_peg)->result();
		foreach($data['tipe'] as $record)
		{
			$tipe = $record->tipe;
			if($tipe == 'super_admin')
			{
				$this->load->view('super_admin/v_edit_pegawai_super',$data);
			}
			else
			{
				$this->load->view('admin/v_edit_pegawai_admin',$data);
			}
		}
	}

	
}

?>
