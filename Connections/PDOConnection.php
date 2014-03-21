<?php

class PDOConnection {
	private $PDO;
	
	public function __construct($host = PDOConfig::PDO_HOST, $user = PDOConfig::PDO_USER, $password = PDOConfig::PDO_PASSWORD, $database = PDOConfig::PDO_DATABASE){
	try{
            $this->PDO = new PDO('mysql:host='.$host.';dbname='.$database, $user, $password);
            $this->PDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $error) {
            echo $error->getMessage();
        }		
	}
	
        public function prepare($query) {
		return $this->PDO->prepare($query);
	}
        
	public function query($query) {
		return $this->PDO->query($query);
	}
        
        public function error(){
            die(print_r(PDO::errorInfo));
        }
}