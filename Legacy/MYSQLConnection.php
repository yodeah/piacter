<?php
require 'Connections/MYSQLconfig.php';
class MYSQLConnection {
	private $mysqli;
	
	public function __construct($host = MYSQLConfig::MYSQL_HOST, $user = MYSQLConfig::MYSQL_USER, $password = MYSQLConfig::MYSQL_PASSWORD, $database = MYSQLConfig::MYSQL_DATABASE){
		$this->mysqli = new mysqli($host, $user, $password, $database);

		if($this->mysqli->connect_errno){
			printf("Connect failed: %s\n", $mysqli->connect_error);
			die();
		}
	}
	
	public function query($query) {
		return $this->mysqli->query($query)/*or die(mysqli_error($this->mysqli))*/;
	}
        
        public function error(){
            die(mysqli_error($this->mysqli));
        }
}

