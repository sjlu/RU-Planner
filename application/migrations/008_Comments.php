<?php 

class Migration_comments extends CI_Migration
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
			'user_id' => array(
				'type' => 'INT'
			),
			'course_id' => array(
				'type' => 'INT',
				'constraint' => 5
			),
			'comment' => array(
				'type' => 'TEXT',
			),
			'timestamp' => array(
                'type' => 'TIMESTAMP DEFAULT CURRENT_TIMESTAMP'
            )
		);

		$this->dbforge->add_field($fields);
		$this->dbforge->add_key('id', TRUE);
		$this->dbforge->create_table('comments');
	}

	function down()
	{
		$this->dbforge->drop_table('comments');
	}

}