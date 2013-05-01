<?php 

class Migration_upper extends CI_Migration
{

	function up()
	{
		$fields = array(
			'upper_only' => array(
				'type' => 'INT',
				'constraint' => 1,
				'default' => 0
			)
		);

		$this->dbforge->add_column('courses', $fields);
	}

	function down()
	{
		$this->dbforge->drop_column('courses', 'upper_only');
	}

}