<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

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
					redirect('admin/dashboard_admin');
				}

		} else {

			$this->template->load('v_static','v_dashboard');
		}
	}
}