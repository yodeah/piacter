<?php

class SpecSearchController {

    public function index($f3) {
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        echo Template::instance()->render('specsearch.tpl');
        echo Template::instance()->render('endofmain.tpl');
    }
    
    public function process($f3){
        
    }

}
