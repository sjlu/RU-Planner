<?php

class Main_Controller extends MY_Controller 
{

	function __construct()
	{
		parent::__construct();
		$this->load->library('session');

		if (!$this->_user())
			redirect('login', 'refresh');

		$this->load->library('migration');
		if (!$this->migration->current())
		   show_error($this->migration->error_string());
	}

	function _user()
	{
		$this->load->library('session');
		return $this->session->userdata('user');
	}

}
