<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Gate {
	public function __construct() {
		$this->CI =& get_instance();
	}
	/*jika dia belum login alihkan ke halaman login*/
	public function cek_login()
	{
		if ($this->CI->session->userdata('isLogin')!=TRUE) {

			echo '<script>alert("Anda Belum Login. kembali ke Halaman Login");</script>';
			redirect (site_url('login'),'refresh');
		}
	}
	/*jika dia tidak super admin, alihkan ke halaman admin*/
	public function role_s_admin()
	{
		if ($this->CI->session->userdata('tipe')!='super_admin') {
			echo '<script>alert("Anda tidak berhak mengakses halaman ini");</script>';
			redirect('admin/Dashboard_admin','refresh');
		}
	}
	/*jika dia tidak admin, alihkan ke halaman super_admin*/
	public function role_admin()
	{
		if ($this->CI->session->userdata('tipe')!='admin') {
			echo '<script>alert("Anda tidak berhak mengakses halaman ini");</script>';
			redirect('super_admin/Dashboard_super','refresh');
		}
	}

}