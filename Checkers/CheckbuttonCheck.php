<?php

class CheckbuttonCheck extends Checker {

    const FIXPRICECB_ID = 0;
    const AUCTIONCB_ID = 1;

    public function check($values) {
        if(!isset($_POST[$values[self::FIXPRICECB_ID]]) && !isset($_POST[$values[self::AUCTIONCB_ID]])){
            echo 'nincs rendesen beállítva a hirdetés tipusa';
            return false;
        }else{
            return false;
        }
 
    }

}