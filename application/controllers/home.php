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
				foreach ($course as $prereq)
					if (!isset($courses_taken[$prereq]))
						$all_courses[$course_id]->cannot_take = true;

			$grouped_courses = array(
				'can_take' => array(),
				'cannot_take' => array(),
				'completed' => array(),
			);

			foreach ($all_courses as $course)
			{
				if (isset($course->completed) && $course->completed)
					$grouped_courses['completed'][] = $course;
				else if (isset($course->cannot_take) && $course->cannot_take)
					$grouped_courses['cannot_take'][] = $course;
				else
					$grouped_courses['can_take'][] = $course;
			}

			$returned_courses = array();
			foreach ($grouped_courses as $key => $courses)
			{
				foreach ($courses as $course)
					$returned_courses[] = $course;
			}

			$major_grouped_courses = array('999' => array());
			foreach ($returned_courses as $course)
			{
				if (isset($course->type) && $course->type == 'CAP')
					$major_grouped_courses[1000][] = $course;
				else if (isset($course->type) && $course->type != 'MAJOR' && $course->type != 'SME')
					$major_grouped_courses[999][] = $course;
				else
				{
					if (!isset($major_grouped_courses[$course->major_id]))
						$major_grouped_courses[$course->major_id] = array();

					$major_grouped_courses[$course->major_id][] = $course;
				}
			}

			$capstone_courses = $major_grouped_courses[1000];
			unset($major_grouped_courses[1000]);

			$elective_courses = $major_grouped_courses[999];
			unset($major_grouped_courses[999]);

			$humanities_courses = $major_grouped_courses[12];
			unset($major_grouped_courses[12]);

			$sme_courses = $major_grouped_courses[13];
			unset($major_grouped_courses[13]);

			$humanities_300_taken = 0;
			$humanities_100_taken = 0;
			foreach ($humanities_courses as $course)
			{
				if (!isset($course->completed))
					continue;

				if ($course->course >= 300)
					$humanities_300_taken++;
				else
					$humanities_100_taken++;
			}

			$this->load->view('home', array(
				'major_courses' => $major_grouped_courses,
				'major_credits' => $this->majors->credits($user->major),
				'user_credits' => $this->users->credits($user->id)
			));

			$this->load->view('humanities', array(
				'taken_300' => $humanities_300_taken,
				'taken_100' => $humanities_100_taken,
				'courses' => $humanities_courses
			));

			$electives_taken = array();
			foreach ($elective_courses as $course)
			{
				if (!isset($electives_taken[$course->type]))
					$electives_taken[$course->type] = 0;

				if (isset($course->completed) && $course->completed)
					$electives_taken[$course->type]++;
			}

			if ($user->major == 1)
				$this->load->view('ce_electives', array(
					'courses' => $elective_courses,
					'taken' => $electives_taken
				));
			else if ($user->major == 2)
				$this->load->view('ee_electives', array(
					'courses' => $elective_courses,
					'taken' => $electives_taken
				));

			$capstone_taken = false;
			foreach ($capstone_courses as $course)
			{
				if (isset($course->completed) && $course->completed)
				{
					$capstone_taken = true;
					break;
				}
			}

			$this->load->view('capstone', array(
				'courses' => $capstone_courses,
				'finished' => $capstone_taken
			));

			$sme_taken = false;
			foreach ($sme_courses as $course)
			{
				if (isset($course->completed) && $course->completed)
				{
					$sme_taken = true;
					break;
				}
			}

			$this->load->view('sme', array(
				'courses' => $sme_courses,
				'finished' => $sme_taken
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
