<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller{
	
	function __construct() {
		parent:: __construct();
		$this->load->model('Db_login');

	}

	public function index()
	{
		if ($this->session->userdata('isLogin')==TRUE) { //ngecek udah login belum, kalau sudah kembali ke halaman admin

			if ($_SESSION['tipe']=='super_admin') {
				redirect('super_admin/Dashboard_super');
			}

			elseif ($_SESSION['tipe']=='admin'){
				redirect('admin/Dashboard_admin');
			}
			
		} else {
			$this->load->view('login'); 
		} 
	}

	function do_login() {
		include 'Koneksi.php';
		$username = $this->input->post('username');
		$password = $this->input->post('password');
		$cek = $this->Db_login->cek_user($username, $password);
		if (count($cek) > 0 ) { 
			$cek_type = $this->db->get_where('user', array('username'=> $username,'password'=>$password));
			foreach ($cek_type->result() as $cek) {
				if ($cek->tipe=='super_admin') {

					$this->session->set_userdata(array(
					'isLogin' => TRUE, //set data telah login atau belum
					'username' => $username, //set session username
					'password' => $password,
					'tipe' => $cek->tipe,
					'no_peg' => $cek->no_peg,

				));

					redirect('auper_admin/Dashboard_super');
				}

				elseif ($cek->tipe=='admin'){
					$bidang = $this->db->get_where('pegawai', array('no_peg'=> $cek->no_peg))->row();
					$this->session->set_userdata(array(
					'isLogin' => TRUE, //set data telah login atau belum
					'username' => $username, //set session username
					'password' => $password,
					'tipe' => $cek->tipe,
					'no_peg' => $cek->no_peg,
					'bidang' => $bidang->bidang,

				));

					redirect('admin/Dashboard_admin');
				}	

			}	
		}
		else {
			$this->session->set_flashdata('gagallogin','Maaf, Username atau Password yang anda masukkan salah');
			redirect('Login');
			/*$this->load->view('login');*/
		}

	}

}