<?php

class SigninController {

    function display($f3) {
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        echo Template::instance()->render('signin.tpl');
        echo Template::instance()->render('endofmain.tpl');
    }

    function update($f3) {
        $login = new Signin($_POST['email'], $_POST['password1'], $f3);
    }

    function logout() {
        if (isset($_SESSION['id'])) {
            session_destroy();
        }
        header('Location: index');
    }

}
