<?php

class Signin {

    private $email;
    private $password;
    private $result;

    public function __construct($mail, $pw, $f3) {
        $this->email = $mail;
        $this->password = $pw;
        $this->exist($f3);
    }

    private function exist($f3) {///megnézi hogy létezik-e a felhasználó
        $connection = new PDOConnection();
        $this->result = $connection->query("SELECT * FROM users WHERE email='$this->email'")->fetchAll(PDO::FETCH_ASSOC);
        if (count($this->result) == 1) {
            $this->result = $this->result[0];

            $this->pwcheck($f3);
        } else {
            NAVBARController::buttons($f3);
            echo Template::instance()->render('main.tpl');
            echo'<h6 align="center">nem létezik ilyen felhasználó vagy jelszó</h6>';
            echo Template::instance()->render('signin.tpl');
            echo Template::instance()->render('endofmain.tpl');
        }
    }

    private function pwcheck($f3) {//jelszóellenőrzés és belépés
        if ($this->result['password'] == md5($this->password)) {
            $_SESSION['id'] = $this->result['id'];
            $_SESSION['username'] = $this->result['username'];
                        $this->lastlogin();
            header('Location: index');
        } else {
            NAVBARController::buttons($f3);
            echo Template::instance()->render('main.tpl');
            var_dump($this->result);
            echo'<h6 align="center">nem létezik ilyen felhasználó vagy jelszó</h6>';
            echo Template::instance()->render('signin.tpl');
            echo Template::instance()->render('endofmain.tpl');
        }
    }

    private function lastlogin() {
        $connection = new PDOConnection;
        $sql = "UPDATE users SET lastlogin=:lastlogin WHERE email='$this->email'";
        $q = $connection->prepare($sql);
        $q->execute(array(
            ':lastlogin' => date("Y-m-d H:i:s")));
    }

}
