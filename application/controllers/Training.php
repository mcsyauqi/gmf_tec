<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Training extends CI_Controller {

	function __construct() {
		parent:: __construct();
		$this->load->model('m_pegawai');
		$this->load->model('m_training');
	}
	public function index()
	{
		$data['pegawai'] = $this->m_pegawai->getAll('pegawai');
		$data['training'] = $this->m_training->getAll('training');		
		$this->template->load('v_static','v_training',$data);
	}

}