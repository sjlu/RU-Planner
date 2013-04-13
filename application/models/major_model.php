<?php

class Major_model extends CI_Model
{

	function get()
	{
		$query = $this->db->get('majors');
		return $query->result();
	}

	function get_one($id) 
	{
		$this->db->where('id', $id);
		$query = $this->db->get('majors');

		if (!$query->num_rows())
			return FALSE;

		return $query->row();
	}

}