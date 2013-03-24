<?php

class Login extends CI_Controller 
{

	function index()
	{
		$this->load->view('include/header');
		$this->load->view('include/navigation');
		$this->load->view('login');
		$this->load->view('include/footer');
	}

}