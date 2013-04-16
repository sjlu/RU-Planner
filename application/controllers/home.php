<?php

class Home extends Main_Controller 
{

	function index()
	{
		$this->load->view('include/header');
		$this->load->view('include/navigation');

		$this->load->model('user_model', 'users');
		$user = $this->users->get_user($this->_user());

		$this->load->model('major_model', 'majors');
		if (empty($user->major))
		{
			$majors = $this->majors->get();
			$this->load->view('majors', array(
				'majors' => $majors
			));
		}
		else
		{
			$major_courses = $this->majors->get_courses($user->major);
			$user_courses = $this->users->get_courses($user->id);


			$courses_taken = array();
			foreach ($user_courses as $uc)
				$courses_taken[$uc->course_id] = true;

			$course_ids = array();
			$all_courses = array();
			foreach ($major_courses as &$mc)
			{
				if (isset($courses_taken[$mc->course_id]))
					$mc->completed = true;

				$course_ids[] = $mc->course_id;
				$all_courses[$mc->course_id] = $mc;
			}

			$this->load->model('course_model', 'courses');
			$coreqs = $this->courses->get_prereqs($course_ids);

			foreach ($coreqs as $course_id => $course)
			{
				$req = 0;
				foreach ($course as $prereq)
				{
					if (isset($courses_taken[$prereq]))
						$req++;
				}

				if ($req == count($course))
					$all_courses[$course_id]->can_take = true;
			}

			$this->load->view('home', array(
				'major_courses' => $all_courses,
				'major_credits' => $this->majors->credits($user->major),
				'user_credits' => $this->users->credits($user->id)
			));	
		}

		$this->load->view('include/footer');
	}

	function choose_major()
	{
		$major = $this->input->post('major');
		if (empty($major))
			redirect('home/index', 'refresh');
			
		$this->load->model('major_model', 'majors');

		if (!$this->majors->get_one($major))
			redirect('home/index', 'refresh');

		$this->load->model('user_model', 'users');

		$this->users->set_major($this->_user(), $major);
		redirect('home/index', 'refresh');	
	}

	function complete_course($id)
	{
		$this->load->model('user_model', 'users');
		$user = $this->users->get_user($this->_user());

		$this->users->add_course($user->id, $id);
		redirect('home', 'refresh');
	}

	function remove_course($id)
	{
		$this->load->model('user_model', 'users');
		$user = $this->users->get_user($this->_user());

		$this->users->remove_course($user->id, $id);
		redirect('home', 'refresh');
	}

}
