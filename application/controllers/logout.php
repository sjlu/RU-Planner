<?php

class Logout extends MY_Controller
{

	function index()
	{
		$this->load->library('session');
		$this->session->sess_destroy();
		return redirect('/', 'refresh');
	}

}