<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pegawai extends CI_Controller {

	function __construct() {
		parent:: __construct();
		$this->load->model('Db_pegawai');
		$this->load->model('Db_training');
	}

	public function index()
	{
		$data['pegawai'] = $this->Db_pegawai->getAll('pegawai');
		$data['training'] = $this->Db_training->getAll('training');
		$this->template->load('static','pegawai',$data);
	}

	
	public function edit()
	{
		$this->load->model('Db_pegawai');
		$no_peg = $this->uri->segment(4);
		$data['uname'] = $this->uri->segment(3);
		$username = $data['uname'];
		$data['profil'] = $this->Db_pegawai->loadprofil($username);
		$data['tipe'] = $this->Db_pegawai->tipe($username);
		$data['unit'] = $this->Db_pegawai->loadunit();
		$data['pegawai'] = $this->Db_pegawai->getpegawai($no_peg)->result();
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
