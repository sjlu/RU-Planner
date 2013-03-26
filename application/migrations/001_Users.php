<?php 

class Migration_users extends CI_Migration
{

	function up()
	{
		$fields = array(
			'netid' => array(
				'type' => 'VARCHAR',
				'constraint' => 64
			),
			'major' => array(
				'type' => 'INT',
				'constraint' => 5,
				'null' => TRUE
			)
		);

		$this->dbforge->add_field($fields);
		$this->dbforge->add_key('netid', TRUE);
		$this->dbforge->create_table('users');
	}

	function down()
	{
		$this->dbforge->drop_table('users');
	}

}