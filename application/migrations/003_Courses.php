<?php 

class Migration_courses extends CI_Migration
{

	function up()
	{
		$fields = array(
			'id' => array(
	            'type' => 'INT',
	            'constraint' => 5,
	            'unsigned' => true,
	            'auto_increment' => TRUE
	         ),
			'school' => array(
				'type' => 'INT',
				'constraint' => 3
			),
			'course' => array(
				'type' => 'INT',
				'constraint' => 3
			),
			'name' => array(
				'type' => 'VARCHAR',
				'constraint' => 255
			),
			'description' => array(
				'type' => 'TEXT'
			),
			'credits' => array(
				'type' => 'INT',
				'constraint' => 3
			)
		);

		$this->dbforge->add_field($fields);
		$this->dbforge->add_key('id', TRUE);
		$this->dbforge->create_table('courses');
	}

	function down()
	{
		$this->dbforge->drop_table('courses');
	}

}