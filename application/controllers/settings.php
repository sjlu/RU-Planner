<?php

class Settings extends Main_Controller {

	function index()
	{
		$this->load->view('include/header');
		$this->load->view('include/navigation');

		$this->load->model('user_model', 'users');
		$user = $this->users->get_user($this->_user());

		$this->load->view('settings');

		$this->load->view('include/footer');
	}

	function clear()
	{
		$this->load->model('user_model', 'users');
		$user = $this->users->get_user($this->_user());	

		$this->users->set_major($user->netid, null);
		$this->users->clear_courses($user->id);
		redirect('settings', 'refresh');
	}

}