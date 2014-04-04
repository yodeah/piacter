<?php

class SalesController {

    public function asapbuy($f3) {
        Isloggedin::loggedin();
        $connection = new PDOConnection;
        $adid = $f3->get('POST.adid');
        $result = $connection->query("SELECT * FROM items WHERE id='$adid'")->fetchAll(PDO::FETCH_ASSOC);
        $result = $result[0];
        $sessid=$_SESSION['id'];
        $owner = $result['owner'];
        if ($result['isopen'] == 0) {
            //echo 'lezárt hirdetés?';
            header('location:ad/' . $adid);
            return;
        }else{
            $newtitle = $result['title'].' (LEZÁRT AUKCIÓ, ELADVA)';
            $connection->query("UPDATE items SET isopen=0, boughtfixed=$sessid, title='$newtitle' WHERE id=$adid");
            $this->sendmessagesell($owner, $adid);
            $this->sendmessagebuy($_SESSION['id'], $adid);
            header('location:ad/' . $adid);

        }
    }

    public function newbid($f3) {
        Isloggedin::loggedin();
        $connection = new PDOConnection;
        $adid = $f3->get('POST.adid');
        $newbid = $f3->get('POST.newbid');
        $result = $connection->query("SELECT * FROM items WHERE id='$adid'")->fetchAll(PDO::FETCH_ASSOC);
        $result = $result[0];
        if ($result['isopen'] == 0) {
            //echo 'lezárt hirdetés?';
            header('location:ad/' . $adid);
        } elseif (!is_numeric($newbid)) {
            echo 'hibás adattipus';
        } elseif (AdController::minimumprice($result) > $newbid) {
            echo 'Túl kicsi az ajánlatod';
        } else {
            $sql = "UPDATE items SET lastbidderid=:lastbidderid, highestbid=:highestbid WHERE id=:adid";
            $q = $connection->prepare($sql);
            $q->execute(array(
                ':lastbidderid' => $_SESSION['id'],
                ':highestbid' => $newbid,
                ':adid' => $adid
            ));

            header('location:ad/' . $adid);
        }
    }
    
    private function sendmessagesell($user,$auctionid){
        $connection = new PDOConnection;
        $sql = "INSERT INTO messages (toid,fromid,title,message,sent,seen)
		VALUES(:toid,:fromid,:title,:message,:sent,:seen)";
        $q = $connection->prepare($sql);
        $q->execute(array(
            ':toid' => $user,
            ':fromid' => 1,
            ':title' => 'Sikeres eladás!',
            ':message' => 'Sikeres sikeresen eladtad az '.$auctionid.'számú aukciódat!',
            ':sent' => date("Y-m-d H:i:s"),
            ':seen' => 0
            ));
    }
    
        private function sendmessagebuy($user,$auctionid){
        $connection = new PDOConnection;
        $sql = "INSERT INTO messages (toid,fromid,title,message,sent,seen)
		VALUES(:toid,:fromid,:title,:message,:sent,:seen)";
        $q = $connection->prepare($sql);
        $q->execute(array(
            ':toid' => $user,
            ':fromid' => 1,
            ':title' => 'Sikeres vásárlás!',
            ':message' => 'Sikeres vásárlás, megnézheted az eladó privátadat, a profilján!',
            ':sent' => date("Y-m-d H:i:s"),
            ':seen' => 0
            ));
    }
    
        private function success($f3) {
        $connection = new PDOConnection;
        $touser = $f3->get('POST.touser');
        $result = $connection->query("SELECT * FROM users WHERE username='$touser'")->fetchAll(PDO::FETCH_ASSOC);
        if (count($result) == 1) {
            $toid = $result[0]['id'];
        } else {
            echo 'error, nincs ilyen user';
//header('location:newmessage');
            die();
        }
        $sql = "INSERT INTO messages (toid,fromid,title,message,sent,seen)
		VALUES(:toid,:fromid,:title,:message,:sent,:seen)";
        $q = $connection->prepare($sql);
        $q->execute(array(
            ':toid' => $toid,
            ':fromid' => $_SESSION['id'],
            ':title' => $_POST['title'],
            ':message' => $_POST['message'],
            ':sent' => date("Y-m-d H:i:s"),
            ':seen' => 0
            ));

        echo 'Üzenete sikeresen továbbítva';
    }

}
