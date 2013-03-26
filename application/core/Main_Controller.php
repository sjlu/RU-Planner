<?php

class Main_Controller extends MY_Controller 
{

	function __construct()
	{
		parent::__construct();
		$this->load->library('session');

		if (!$this->_user())
			redirect('login', 'refresh');
	}

	function _user()
	{
		$this->load->library('session');
		return $this->session->userdata('user');
	}

}
