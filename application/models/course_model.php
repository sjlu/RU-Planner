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

	function get_prereqs($ids)
	{
		$this->db->where_in('course_id', $ids);
		
		$query = $this->db->get('prerequisites');

		$prereqs = array();
		foreach ($query->result() as $result)
		{
			if (!isset($prereqs[$result->course_id]))
				$prereqs[$result->course_id] = array();

			$prereqs[$result->course_id][] = $result->depends_on;
		}

		return $prereqs;
	}

}