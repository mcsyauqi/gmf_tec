<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_admin extends CI_Controller {

	function __construct() {
		parent:: __construct();
		
	}

	public function index()
	{
		if ($this->session->userdata('isLogin')== TRUE) {
			
			if ($_SESSION['tipe']=='super_admin') {
				redirect('super_admin/dashboard_super');
			}

			elseif ($_SESSION['tipe']=='admin'){
				$this->template->load('admin/v_static_admin','admin/v_dashboard_admin');
			}

		} else {
			redirect('Login');
		}
	}
}