<?php

class UploadPostVariables{
    
        public static function testUploadPostVariables($toCheckConfig) {
        $error = true;

        foreach ($toCheckConfig as $key => $value) {
            $className = ucfirst($key) . 'Check';
            $checker = new $className;

            if (!$checker->check($value)) {
                $error = false;
                
                            echo $error.'van error<br>';
            }
            
            echo $error.'nincs error<br>';
        }
        return $error;
    }
}
