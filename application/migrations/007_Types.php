<?php 

class Migration_types extends CI_Migration
{

	function up()
	{
		$fields = array(
			'type' => array(
				'type' => 'VARCHAR',
				'constraint' => 255,
				'null' => TRUE
			)
		);

		$this->dbforge->add_column('major_courses', $fields);
	}

	function down()
	{
		$this->dbforge->drop_column('major_courses', 'type');
	}

}