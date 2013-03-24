<?php 

class Auth_model extends CI_Model
{
	function verify($username, $password)
	{
		$this->load->library('curl');
		$contents = $this->curl->simple_post(
			'https://rumobile.rutgers.edu/beta/beta.php', 
			array(
				'netid' => $username, 
				'password' => $password
			)
		);

		if (preg_match('/Authentication failed./', $contents))
			return false;

		return true;
	}
}