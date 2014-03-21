<?php

class QuantityCheck extends Checker {

    const QUANTITY_ID = 0;
    const QUANTITY_TYPE_ID = 1;

    public function check($values) {
        $quantity = $_POST[$values[self::QUANTITY_ID]];
        $quantity_type = $_POST[$values[self::QUANTITY_TYPE_ID]];

        if (!is_numeric($quantity) || !is_numeric($quantity_type)) {
            echo'nem szám van megadva mennyiségnek </br>';
            return false;
        } elseif ($quantity_type > 3 || $quantity_type < 0) {
            echo'rossz típus </br>';
            return false;
        } elseif (strlen($quantity) > 20) {
            echo'túl nagy szám a mennyiség </br>';
            return false;
        } else {
            return true;
        }
    }

}
