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

			foreach ($major_courses as &$mc)
			{
				foreach ($user_courses as $uc)
				{
					if ($mc->course_id == $uc->course_id)
					{
						$mc->completed = true;
						break;
					}
				}
			}

			$this->load->view('home', array(
				'major_courses' => $major_courses,
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
