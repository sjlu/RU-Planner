<?php

function is_logged_in()
{
	$CI =& get_instance();
	$CI->load->library('session');
	if (!$CI->session->userdata('user'))
		return false;

	return true;
}