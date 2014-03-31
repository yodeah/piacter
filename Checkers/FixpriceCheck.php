<?php

class FixpriceCheck extends Checker {

    const FIXPRICECB_ID = 0;
    const FIXPRICE_ID = 1;
    const FIXPRICETY_ID = 2;

    public function check($values) {
        $fixprice = $_POST[$values[self::FIXPRICE_ID]];
        $fixprice_type = $_POST[$values[self::FIXPRICETY_ID]];

        if (isset($_POST[$values[self::FIXPRICECB_ID]])) {
            if (!is_numeric($fixprice) || !is_numeric($fixprice_type)) {
                echo'nem szám van megadva mennyiségnek </br>';
                return false;
            } elseif ($fixprice_type > 3 || $fixprice_type < 0) {
                echo'rossz típus </br>';
                return false;
            } elseif (strlen($fixprice) > 20) {
                echo'túl nagy szám a mennyiség </br>';
                return false;
            } else {
                return true;
            }
        }
    }

}
