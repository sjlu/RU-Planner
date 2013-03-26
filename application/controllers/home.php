<?php

class Home extends Main_Controller 
{

   function index()
   {
		$this->load->view('include/header');
		$this->load->view('include/navigation');

		$this->load->model('user_model', 'users');
		$user = $this->users->get($this->_user());

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

}
