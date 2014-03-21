<?php
class Isloggedin{
    public static function loggedin(){//ha nincs belépve visszadobja a főoldalra
        if(!isset($_SESSION['id'])){
            header('location:/index');
            die();
        }
    }
}
