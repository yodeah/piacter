<?php

class DescriptionCheck extends Checker{
    
    const DESCRIPTION_ID = 0;
    
        function check($values) {
        $description = $_POST[$values[self::DESCRIPTION_ID]];    
            
        if (strlen($description) < 5) {
            echo 'túl rövid a leírás </br>';
            return false;
        } elseif (strlen($description) > 500) {
            echo 'túl hosszú a leírás </br>';
            return false;
        } else {
            return true;
        }
    }
}