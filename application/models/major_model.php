<?php

class Major_model extends CI_Model
{

	function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

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

	function get_courses($id)
	{
		$this->db->where('major_id', $id)
			->join('courses', 'major_courses.course_id = courses.id');

		$query = $this->db->get('major_courses');

		return $query->result();
	}

	function credits($id)
	{
		$credits = 0;
		foreach ($this->get_courses($id) as $course)
			$credits += $course->credits;

		return $credits;
	}

}