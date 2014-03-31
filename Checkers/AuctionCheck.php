<?php

class AuctionCheck extends Checker {

    const AUCTIONCB_ID = 0;
    const AUCTIONSTART_ID = 1;
    const AUCTIONSTEP_ID = 2;
    const AUCTIONPRICE_TYPE_ID = 3;// 'auctioncb', 'auctionstart', 'auctionstep', 'auctionprice ty',

    public function check($values) {
        
        $auctioncb = $_POST[$values[self::AUCTIONCB_ID]];
        $auctionstart = $_POST[$values[self::AUCTIONSTART_ID]];
        $auctionstep = $_POST[$values[self::AUCTIONSTEP_ID]];
        $auctionpricety = $_POST[$values[self::AUCTIONPRICE_TYPE_ID]];
        
        if(!$auctioncb=='true'){
            return false;
        }
        
        if(!is_numeric($auctionstart) || !is_numeric($auctionstep) || !is_numeric($auctionpricety)){
            echo'hibás mennyiség az aukciónál </br>';
            return false;
        }
        
        (if)
        if(strlen($auctionstart)=0){
            echo'nem adtál meg értéket az aukciókezdőárnak</br>';
            return false;
        }elseif(strlen($auctionstart)>20){
            echo'hibás az aukciókezdőár (túl nagy) </br>';
            return false;
        }
        
    }

}

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

