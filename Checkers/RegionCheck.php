<?php

class RegionCheck extends Checker {

    const REGION_ID = 0;
    
    public function check($values) {
        $region = $_POST[$values[self::REGION_ID]];
        
        if ($region > 22 || $region < 0) {
            echo 'nem megfelelő a régió </br>';
            return false;
        } else {
            return true;
        }
    }

}
