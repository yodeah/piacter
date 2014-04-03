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

}
