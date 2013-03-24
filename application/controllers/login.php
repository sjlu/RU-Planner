<?php

class Login extends CI_Controller 
{

	function index()
	{
		$this->load->view('include/header');
		$this->load->view('include/navigation');

		if ($_SERVER['REQUEST_METHOD'] == 'POST')
		{
			$this->load->model('auth_model', 'auth');
			if (!$this->auth->verify($this->input->post('username'), $this->input->post('password')))
				$this->load->view('login', array('error' => 'Authentication failed.'));
			else
				return redirect('/home', 'refresh');
		}
		else
			$this->load->view('login', array('info' => 'Please login.'));
		
		$this->load->view('include/footer');
	}

}