<?php

class Comments extends Main_Controller {
	
	function show($course_id)
	{
		$this->load->model('user_model', 'users');
		$this->load->model('course_model', 'courses');
		$this->load->model('comment_model', 'comments');

		$course = $this->courses->get($course_id);
		$user = $this->users->get_user($this->_user());
		$comments = $this->comments->get($course_id);

		$this->load->view('include/header');
		$this->load->view('include/navigation');

		$this->load->view('comments', array(
			'user' => $user,
			'course' => $course,
			'comments' => $comments
		));

		$this->load->view('include/footer');
	}

	function add($course_id)
	{
		$this->load->model('user_model', 'users');
		$this->load->model('comment_model', 'comments');
		$user = $this->users->get_user($this->_user());

		$comment = $this->input->post('comment');

		$this->comments->add($course_id, $user->id, $comment);
		redirect('comments/show/'.$course_id, 'refresh');
	}

}