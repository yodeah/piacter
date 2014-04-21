<?php

class RateController {

    public static function newrate($ownerid, $customerid, $itemid) {
        $connection = new PDOConnection;
        $connection->query("INSERT INTO unrated (ownerid,customerid,itemid) VALUES ($ownerid,$customerid,$itemid)");
    }

    public static function raterbuttons($itemid, $f3) {
        $itemid = $f3->get('PARAMS.adid');
        if (isset($_SESSION['id'])) {
            $sessid = $_SESSION['id'];
        } else {
            $sessid = null;
        }
        $connection = new PDOConnection;
        $resultraw = $connection->query("SELECT * FROM unrated WHERE itemid=$itemid")->fetchAll(PDO::FETCH_ASSOC);
        if (isset($resultraw[0])) {
            $result = $resultraw[0];
            if (($result['ownerid'] == $sessid && $result['ownersrate']==0 )|| ($result['customerid'] == $sessid && $result['customersrate']==0 )) {
                $f3->set('itemid',$itemid);
                echo Template::instance()->render('ratesite.tpl');
            }
        }
    }

    public function ratecheck($f3) {
        $connection = new PDOConnection;
                if (isset($_SESSION['id'])) {
            $sessid = $_SESSION['id'];
        } else {
            header('location:/index');
        }
        $itemid = $_POST['itemid'];
        $resultraw = $connection->query("SELECT * FROM unrated WHERE itemid=$itemid")->fetchAll(PDO::FETCH_ASSOC); 
        $result = $resultraw[0];
        $rate = $_POST['rate'];
        if($sessid == $result['ownerid']){
                 $connection->query("UPDATE unrated SET ownersrate=$rate WHERE itemid=$itemid ");
        }elseif($sessid == $result['customerid']){
                 $connection->query("UPDATE unrated SET customersrate=$rate WHERE itemid=$itemid ");
        }else{
            header('location:/index');
        }
                  header('location:/succesfullrate');  
    }
    
    public function ratesuccess($f3){
                NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        echo 'Sikeres értékelés!';
        echo Template::instance()->render('endofmain.tpl');
    }

}
