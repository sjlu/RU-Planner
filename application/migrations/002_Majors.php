<?php 

class Migration_majors extends CI_Migration
{

	function up()
	{
		$fields = array(
			'id' => array(
				'type' => 'INT',
				'constraint' => 5
			),
			'name' => array(
				'type' => 'VARCHAR',
				'constraint' => 255
			)
		);

		$this->dbforge->add_field($fields);
		$this->dbforge->add_key('id', TRUE);
		$this->dbforge->create_table('majors');
	}

	function down()
	{
		$this->dbforge->drop_table('majors');
	}

}