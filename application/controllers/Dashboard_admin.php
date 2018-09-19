<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_admin extends CI_Controller {

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
					$this->template->load('admin/static','admin/dashboard_admin');
				}

		} else {
			redirect('Login');
		}
	}
}