<?php 

class Migration_major_courses extends CI_Migration
{

	function up()
	{
		$fields = array(
			'major_id' => array(
				'type' => 'INT',
				'constraint' => 5
			),
			'course_id' => array(
				'type' => 'INT',
				'constraint' => 5
			)
		);

		$this->dbforge->add_field($fields);
		$this->dbforge->create_table('major_courses');
	}

	function down()
	{
		$this->dbforge->drop_table('major_courses');
	}

}