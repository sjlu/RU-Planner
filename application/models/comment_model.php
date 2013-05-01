<?php

class Comment_model extends CI_Model {

	function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	function get($course_id)
	{
		$this->db->where('course_id', $course_id)
			->order_by('timestamp', 'desc');

		$query = $this->db->get('comments');

		return $query->result();
	}

	function add($course_id, $user_id, $comment)
	{
		$data = array(
			'course_id' => $course_id,
			'user_id' => $user_id,
			'comment' => $comment
		);

		$this->db->insert('comments', $data);
	}

	function delete($comment_id)
	{
		$this->db->where('comment_id', $comment_id);
		$this->db->delete('comments');
	}

}