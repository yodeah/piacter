<?php

Class AjaxController{
    
    public function loadmoreitems($f3){
        IndexController::indexContent($f3, 1);
    }
    
}
