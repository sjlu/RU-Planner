<?php 

class Migration_user_courses extends CI_Migration
{

	function up()
	{
		$fields = array(
			'user_id' => array(
				'type' => 'INT',
				'constraint' => 5
			),
			'course_id' => array(
				'type' => 'INT',
				'constraint' => 5
			)
		);

		$this->dbforge->add_field($fields);
		$this->dbforge->create_table('user_courses');
	}

	function down()
	{
		$this->dbforge->drop_table('user_courses');
	}

}