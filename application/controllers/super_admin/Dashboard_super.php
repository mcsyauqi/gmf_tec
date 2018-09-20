<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_super extends CI_Controller {

	function __construct() {
		parent:: __construct();
		/*$this->load->model('M_crud');*/
	
	}

	public function index()
	{
		if ($this->session->userdata('isLogin')== TRUE) {
					
				if ($_SESSION['tipe']=='super_admin') {
					$this->template->load('super_admin/static','super_admin/dashboard_super');
				}

				elseif ($_SESSION['tipe']=='admin'){
					redirect('admin/Dashboard_admin');
				}

		} else {
			redirect('Login');
		}
	}
}