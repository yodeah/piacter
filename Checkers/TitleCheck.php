<?php

class TitleCheck extends Checker {

    const TITLE_ID = 0;

    function check($values) {
        $title = $_POST[$values[self::TITLE_ID]];

        if (strlen($title) < 5) {
            echo 'túl rövid a cím </br>';
            return FALSE;
        } elseif (strlen($title) > 100) {
            echo 'túl hosszú a cím </br>';
            return FALSE;
        } else {
            return TRUE;
        }
    }

}
