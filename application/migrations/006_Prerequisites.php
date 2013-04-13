<?php 

class Migration_prerequisites extends CI_Migration
{

	function up()
	{
		$fields = array(
			'course_id' => array(
				'type' => 'INT',
				'constraint' => 5
			),
			'depends_on' => array(
				'type' => 'INT',
				'constraint' => 5
			)
		);

		$this->dbforge->add_field($fields);
		$this->dbforge->create_table('prerequisites');
	}

	function down()
	{
		$this->dbforge->drop_table('prerequisites');
	}

}