<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	function __construct() {
		parent:: __construct();
		/*$this->load->model('M_crud');*/
	
	}

	public function index()
	{
		if ($this->session->userdata('isLogin')== TRUE) {
					
				if ($_SESSION['tipe']=='super_admin') {
					redirect('Dashboard_super');
				}

				elseif ($_SESSION['tipe']=='admin'){
					redirect('Dashboard_admin');
				}

		} else {
			//presentase pagawai
			/*$data['de'] = $this->db->select('no_peg')->from('pegawai')
			->where('jabatan','Development Engineer')->get()->num_rows();
			$ee = $this->db->select('no_peg')->from('pegawai')
			->where('jabatan','Engineering Expert')->get()->num_rows();
			$gm = $this->db->select('no_peg')->from('pegawai')
			->where('jabatan','General Manager')->get()->num_rows();
			$m = $this->db->select('no_peg')->from('pegawai')
			->where('jabatan','Manager')->get()->num_rows();
			$sec = $this->db->select('no_peg')->from('pegawai')
			->where('jabatan','Secretary')->get()->num_rows();
			$sado = $this->db->select('no_peg')->from('pegawai')
			->where('jabatan','Senior Aircraft Data Officer')->get()->num_rows();
			$sde = $this->db->select('no_peg')->from('pegawai')
			->where('jabatan','Senior Development Engineer')->get()->num_rows();
			$stpo = $this->db->select('no_peg')->from('pegawai')
			->where('jabatan','Senior Technical Publication Officer')->get()->num_rows();
			$tpo = $this->db->select('no_peg')->from('pegawai')
			->where('jabatan','Technical Publication Officer')->get()->num_rows();
			$tde = $this->db->select('no_peg')->from('pegawai')
			->where('jabatan','Trainee for Development Engineer')->get()->num_rows();
			$vp = $this->db->select('no_peg')->from('pegawai')
			->where('jabatan','Vice President')->get()->num_rows();

			$all = $this->db->select('no_peg')->from('pegawai')->get()->num_rows();	*/		

			$this->template->load('static','dashboard');
		}
	}
}