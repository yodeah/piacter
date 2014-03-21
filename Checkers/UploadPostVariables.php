<?php

class UploadPostVariables{
    
        public static function testUploadPostVariables($toCheckConfig) {
        $error = true;

        foreach ($toCheckConfig as $key => $value) {
            $className = ucfirst($key) . 'Check';
            $checker = new $className;

            if (!$checker->check($value)) {
                $error = false;
            }
        }
        return $error;
    }
}
