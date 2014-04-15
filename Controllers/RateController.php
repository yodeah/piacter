<?php
class RateController{
    public static function newrate($ownerid,$customerid,$itemid) {
        $connection = new PDOConnection;
        $connection->query("INSERT INTO unrated (ownerid,customerid,itemid) VALUES ($ownerid,$customerid,$itemid)"); 
    }
    
    public function ratesite($f3) {
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        $rateid = $f3->get('PARAMS.rateid');
        $connection= new PDOConnection;
        $result = $connection->query("SELECT * FROM unrated WHERE id=$rateid")->fetchAll(PDO::FETCH_ASSOC);
        echo Template::instance()->render('endofmain.tpl');
    }
    
    
}