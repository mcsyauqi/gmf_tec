<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_super extends CI_Controller {

	function __construct() {
		parent:: __construct();	
	}

	public function index()
	{
		if ($this->session->userdata('isLogin')== TRUE) {

			if ($_SESSION['tipe']=='super_admin') {
				$this->template->load('super_admin/v_static_super','super_admin/v_dashboard_super');
			}

			elseif ($_SESSION['tipe']=='admin'){
				redirect('admin/dashboard_admin');
			}

		} else {
			redirect('login');
		}
	}
}