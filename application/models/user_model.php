<?php 

class User_model extends CI_Model {

	function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	function get_user($user)
	{
		$this->db->where('netid', $user)
			->from('users');

		$query = $this->db->get();

		if (!$query->num_rows())
			return false;

		return $query->row();
	}

	function add_user($user)
	{
		$data = array(
			'netid' => $user
		);

		$this->db->insert('users', $data);
	}

	function set_major($user, $major)
	{
		$this->db->set('major', $major)
			->where('netid', $user);

		$this->db->update('users');
	}
	
	function get_courses($user)
	{
		$this->db->where('user_id', $user)
			->join('courses', 'user_courses.course_id = courses.id');

		$query = $this->db->get('user_courses');

		return $query->result();
	}

	function add_course($user, $course_id)
	{
		$row = array(
			'user_id' => $user,
			'course_id' => $course_id
		);

		$this->db->insert('user_courses', $row);
	}

	function remove_course($user, $course_id)
	{
		$this->db->where('user_id', $user)
			->where('course_id', $course_id);

		$this->db->delete('user_courses');
	}

	function credits($user)
	{
		$credits = 0;
		foreach ($this->get_courses($user) as $course)
			$credits += $course->credits;

		return $credits;
	}

}