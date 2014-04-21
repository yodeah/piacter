<?php

class CronController {

    public function cron1($f3) {
        //ide majd az üzenetek kiküldése és a newrate
        $connection = new PDOConnection;
        $result = $connection->query("SELECT * FROM items WHERE isopen = 0 AND sentmessage = 0")->fetchAll(PDO::FETCH_ASSOC);
        //print_r($result);
        foreach ($result as $item) {
            RateController::newrate($item['owner'], $item['lastbidderid'], $item['id']);
            $newtitle = $item['title'] . ' (LEZÁRT AUKCIÓ, ELADVA)';
            $adid = $item['id'];
            $connection->query("UPDATE items SET title = '$newtitle' WHERE id = $adid");         
            SalesController::sendmessage($item['owner'], $adid, 'Sikeres sikeresen eladtad az ' . $adid . 'számú aukciódat!', 'Sikeres eladás!  Értékeld az adásvételt(itt)!');
            SalesController::sendmessage($item['lastbidderid'], $adid, 'Sikeres vásárlás, megnézheted az eladó privátadatait, a profilján! Értékeld az adásvételt(itt)!', 'Sikeres vásárlás!');
        }
        echo 'SIKERESEN LEFUTOTT';
    }

}
