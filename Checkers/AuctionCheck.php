<?php

class AuctionCheck extends Checker {

    const AUCTIONCB_ID = 0;
    const AUCTIONSTART_ID = 1;
    const AUCTIONSTEP_ID = 2;
    const AUCTIONPRICE_TYPE_ID = 3; // 'auctioncb', 'auctionstart', 'auctionstep', 'auctionprice ty',

    public function check($values) {
        $auctionstart = $_POST[$values[self::AUCTIONSTART_ID]];
        $auctionstep = $_POST[$values[self::AUCTIONSTEP_ID]];
        $auctionpricety = $_POST[$values[self::AUCTIONPRICE_TYPE_ID]];

        if (isset($_POST[$values[self::AUCTIONCB_ID]])) {
            if (!is_numeric($auctionstart) || !is_numeric($auctionstep) || !is_numeric($auctionpricety)) {
                echo'hibás mennyiség az aukciónál </br>';
                return false;
            } elseif (strlen($auctionstart) == 0) {
                echo'nem adtál meg értéket az aukciókezdőárnak</br>';
                return false;
            } elseif (strlen($auctionstart) > 20) {
                echo'hibás az aukciókezdőár (túl nagy) </br>';
                return false;
            } elseif (strlen($auctionstep) == 0) {
                echo'nem adtál meg értéket az aukciókezdőárnak</br>';
                return false;
            } elseif (strlen($auctionstep) > 20) {
                echo'hibás az aukciókezdőár (túl nagy) </br>';
                return false;
            } elseif ($auctionpricety > 3 || $auctionpricety < 0) {
                echo'rossz típus </br>';
                return false;
            }else{
                return true;
            }
        }
    }

}
