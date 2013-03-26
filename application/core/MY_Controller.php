<?php
class MY_Controller extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->library('migration');
		if (!$this->migration->current())
			show_error($this->migration->error_string());
	}
}
