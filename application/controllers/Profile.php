<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller {

	public function index()
	{
		$this->template->load('super_admin/v_static','super_admin/v_profile_super');
	}

}

?>