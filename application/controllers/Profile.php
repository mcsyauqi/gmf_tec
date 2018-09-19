<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Profile extends CI_Controller {

	public function index()
	{
		$this->template->load('super_admin/static','super_admin/profile_super');
	}


}

?>