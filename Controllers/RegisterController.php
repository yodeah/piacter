<?php

class RegisterController {

    function display($f3) {
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        echo Template::instance()->render('register.tpl');
        echo Template::instance()->render('endofmain.tpl');
    }

    function update($f3) {
        $register = new Register($_POST['username'], $_POST['password1'], $_POST['password2'], $_POST['email'], $f3);
    }

    function success($f3) {
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        echo '<h5 align="center">Sikeres regisztráció, jelentkezz be!</h5>';
        echo Template::instance()->render('signin.tpl');
        echo Template::instance()->render('endofmain.tpl');
    }

}
