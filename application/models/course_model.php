<?php

class Course_model extends CI_Model
{

	function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	function get($id)
	{
		$this->db->where('id', $id);
		$query = $this->db->get('courses');

		return $query->row();
	}

}