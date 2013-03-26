<?php

class Login extends CI_Controller 
{

	function index()
	{
		$this->load->view('include/header');
		$this->load->view('include/navigation');

		if ($_SERVER['REQUEST_METHOD'] == 'POST')
		{
			$user = $this->input->post('username');
			$this->load->model('auth_model', 'auth');
			if (!$this->auth->verify($user, $this->input->post('password')))
				$this->load->view('login', array('error' => 'Authentication failed.'));
			else
			{
				// check and add user
				$this->load->model('user_model', 'users');
				if (!$this->users->get_user($user))
					$this->users->add_user($user);

				// set the session
				$this->load->library('session');
				$this->session->set_userdata('user', $user);

				// redirect
				return redirect('/home', 'refresh');
			}
		}
		else
			$this->load->view('login', array('info' => 'Please login.'));
		
		$this->load->view('include/footer');
	}

}