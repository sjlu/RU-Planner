<?php

class Home extends Main_Controller 
{

   function index()
   {
		$this->load->view('include/header');
		$this->load->view('include/navigation');
		$this->load->view('home');
		$this->load->view('include/footer');
   }

}
