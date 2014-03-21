<?php

class AvailabilityCalc {

    static function Calc() {
        $type = Values::$AVAILBILITY_EN[$_POST['availability_ty']];
        $quantity = $_POST['availability'];
        return date("Y-m-d H:i:s", strtotime('+'.$quantity.' '.$type ));
    }

}
