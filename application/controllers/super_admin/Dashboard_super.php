<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard_super extends CI_Controller {

	function __construct() {
		parent:: __construct();
		$this->load->model('m_training');	
	}

	public function index()
	{
		if ($this->session->userdata('isLogin')== TRUE) {

			if ($_SESSION['tipe']=='super_admin') {

				date_default_timezone_set('Asia/Jakarta');
				$tgl_sekarang = date('Y-m-d');
				$dua_bulan = date('Y-m-d', strtotime('+2 month', strtotime( $tgl_sekarang )));
				
				$par = array(
					'date1' => $tgl_sekarang,
					'date2' => $dua_bulan
				);
				$tra='due_human';
				$tra1='due_cas';
				//echo $param;
				$data['hum'] = $this->m_training->training_reminder($tra,$par);
				$data['ca'] = $this->m_training->training_reminder($tra1,$par);
				$this->template->load('super_admin/v_static_super','super_admin/v_dashboard_super',$data);
			}

			elseif ($_SESSION['tipe']=='admin'){
				redirect('admin/dashboard_admin');
			}

		} else {
			redirect('login');
		}
	}
}