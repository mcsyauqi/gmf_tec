<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pegawai extends CI_Controller {

	function __construct() {
		parent:: __construct();
		$this->load->model('m_pegawai');
		$this->load->model('m_training');
	}

	public function index()
	{
		$data['pegawai'] = $this->m_pegawai->getAll('pegawai');
		$data['training'] = $this->m_training->getAll('training');
		$this->template->load('v_static','v_pegawai',$data);
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
				$this->load->view('super_admin/edit_pegawai',$data);
			}
			else
			{
				$this->load->view('admin/edit_pegawai',$data);
			}
		}
	}

	
}

?>
