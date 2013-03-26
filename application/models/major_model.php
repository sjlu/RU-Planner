<?php

class Major_model extends CI_Model
{

	function get()
	{
		$query = $this->db->get('majors');
		return $query->result();
	}

}