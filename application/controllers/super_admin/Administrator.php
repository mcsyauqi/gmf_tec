<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Administrator extends CI_Controller {

	function __construct() {
		parent:: __construct();
		$this->load->model('Db_user');
		$this->load->model('Db_admin');
		$this->gate->cek_login();
		$this->gate->role_s_admin();
	}
	public function index()
	{
		$data['user'] = $this->Db_user->getAll();
		$this->template->load('super_admin/static','super_admin/administrator', $data);
	}

	public function Add_admin()
	{
		$data['user'] = $this->Db_user->getAll('user');
		$this->template->load('super_admin/static','super_admin/add_admin', $data);
	}

	public function Edit_admin()
	{
		$data['user'] = $this->Db_user->getAll('user');
		$this->template->load('super_admin/static','super_admin/edit_admin', $data);
	}

	public function input_admin()
	{
		$cek = $this->db->select('no_peg')->from('pegawai')
      ->where('no_peg',$this->input->post('no_peg'))->get()->row();
		if ($cek->no_peg) {
			$data = array(
				'no_peg' => $this->input->post('no_peg'),
				'tipe' => $this->input->post('tipe'),
				'username' => $this->input->post('username'),
				'password' => $this->input->post('password'),
			);
			$this->Db_admin->input_admin($data);
			redirect (site_url('super_admin/Administrator'));
		} else {
			echo '<script>alert("Number of Employee Not Avalaible");</script>';
			redirect (site_url('super_admin/Administrator'),'refresh');
		}
	}

	public function update_admin()
	{
		$id = $this->input->post('no_peg');
		$data = array(
			'no_peg' => $this->input->post('no_peg'),
			'username' => $this->input->post('username'),
			'password' => $this->input->post('password'),

		);

		$this->Db_admin->update_admin($data, $id);

		redirect (site_url('super_admin/Administrator'));
	}

	public function delete_admin(){
		$id = array('no_peg' => $this->uri->segment(4));
		$this->Db_admin->delete_admin($id);
		redirect (site_url('super_admin/Administrator'));
	}

}

?>