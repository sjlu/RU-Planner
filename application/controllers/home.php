<?php

class Home extends Main_Controller 
{

	function index()
	{
		$this->load->view('include/header');
		$this->load->view('include/navigation');

		$this->load->model('user_model', 'users');
		$user = $this->users->get_user($this->_user());

		if (empty($user->major))
		{
			$this->load->model('major_model', 'majors');
			$majors = $this->majors->get();

			$this->load->view('majors', array('majors' => $majors));
		}
		else
			$this->load->view('home');

		$this->load->view('include/footer');
	}

	function choose_major()
	{
		$major = $this->input->post('major');
		if (empty($major))
			redirect('home/index', 'refresh');
			
		$this->load->model('major_model', 'majors');

		if (!$this->majors->get_one($major))
			redirect('home/index', 'refresh');

		$this->load->model('user_model', 'users');

		$this->users->set_major($this->_user(), $major);
		redirect('home/index', 'refresh');	
	}

}
