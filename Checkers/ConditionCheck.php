<?php

class ConditionCheck extends Checker{
    
    const CONDITION_ID = 0;
    
       function check($values) {
        $condition = $_POST[$values[self::CONDITION_ID]];
        
        if ($condition == 1 OR $condition == 0) {
            return true;
        } else {
            echo 'nincs jól megadva az állapot </br>';
            return false;
        }
    }
}
