<?php

class Frontpage extends MY_Controller
{

	function index()
	{
		$this->load->view('include/header');
		$this->load->view('include/navigation');
		$this->load->view('frontpage');
		$this->load->view('include/footer');
	}

}
