<?php

class UserController {

    public static function calculaterates($f3, $userid) {
        $connection = new PDOConnection;
        $result = $connection->query("SELECT * FROM unrated WHERE customerid=$userid OR ownerid=$userid")->fetchAll(PDO::FETCH_ASSOC);
        $f3->set('totaltrades', count($result));
        $totalrates = 0;
        $totalratevalue = 0;
        foreach ($result as $item) {
            if ($userid == $item['ownerid']) {
                $totalratevalue = $totalratevalue + $item['customersrate'];
                if ($item['customersrate'] != 0)
                    $totalrates++;
            } else {
                $totalratevalue = $totalratevalue + $item['ownersrate'];
                if ($item['ownersrate'] != 0)
                    $totalrates++;
            }
        }
        if ($totalrates == 0) {
            $f3->set('totalrates', 'Jelenleg még nincsenek értékelései ennek a felhasználónak');
            $f3->set('avgrate', 'Jelenleg még nincsenek értékelései ennek a felhasználónak');
        } else {
            $f3->set('totalrates', $totalrates);
            $averagerate = $totalratevalue / $totalrates;
            $f3->set('avgrate', $averagerate);
        }
    }

}
