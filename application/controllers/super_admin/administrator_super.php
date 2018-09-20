<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Administrator_super extends CI_Controller {

	function __construct() {
		parent:: __construct();
		$this->load->model('m_user');
		$this->load->model('m_admin');
		$this->gate->cek_login();
		$this->gate->role_s_admin();
	}
	public function index()
	{
		$data['user'] = $this->m_user->getAll();
		$this->template->load('super_admin/v_static_super','super_admin/v_administrator_super', $data);
	}

	public function Add_admin()
	{
		$data['user'] = $this->m_user->getAll('user');
		$this->template->load('super_admin/v_static_super','super_admin/v_add_admin_super', $data);
	}

	public function Edit_admin()
	{
		$data['user'] = $this->m_user->getAll('user');
		$this->template->load('super_admin/v_static_super','super_admin/v_edit_admin_super', $data);
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
			$this->m_admin->input_admin($data);
			redirect (site_url('super_admin/administrator_super'));
		} else {
			echo '<script>alert("Number of Employee Not Avalaible");</script>';
			redirect (site_url('super_admin/administrator_super'),'refresh');
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

		$this->m_admin->update_admin($data, $id);

		redirect (site_url('super_admin/administrator_super'));
	}

	public function delete_admin(){
		$id = array('no_peg' => $this->uri->segment(4));
		$this->m_admin->delete_admin($id);
		redirect (site_url('super_admin/administrator_super'));
	}

}

?>