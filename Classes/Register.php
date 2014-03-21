<?php
class Register {

    private $username;
    private $password;
    private $password2;
    private $email;
    private $regex = '/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/';

    public function __construct($usn, $pw1, $pw2, $mail, $f3) {
        $this->username = $usn;
        $this->password = $pw1;
        $this->password2 = $pw2;
        $this->email = $mail;
        $this->update($f3);
    }

    private function passwordCheck() {
        // leellenőrzi a jelszóeggyezést, hosszt.
        if ($this->password !== $this->password2) {
            echo "Nem eggyeznek a jelszavak amiket megadtál <br>";
            return false;
        } elseif (strlen($this->password) > 20) {
            echo "Túl hosszú a jelszó <br>";
            return false;
        } elseif (strlen($this->password) < 6) {
            echo "Túl rövid a jelszó <br>";
            return false;
        } else {
            echo "Minden feltételnek megfelel a jelszó <br>";
            return true;
        }
    }

    private function usernameCheck() {
        $connection = new PDOConnection;
        $result = $connection->query("SELECT * FROM users WHERE username='$this->username'") or $connection->error();
        $row_cnt = count($result->fetchAll());
        if (strlen($this->username) > 20) {
            echo"Túl hosszú a felhasználónév <br>";
            return false;
        } elseif (strlen($this->username) < 6) {
            echo"Túl rövid a felhasználónév <br>";
            return false;
        } elseif ($row_cnt != 0) {
            echo"Már használatban a felhasználónév <br>";
            return false;
        } else {
            echo"Minden feltételnek megfelel a felhasználónév <br>";
            return true;
        }
    }

    private function mailCheck() {
        $connection = new PDOConnection;
        $result = $connection->query("SELECT * FROM users WHERE email='$this->email'") or $connection->error();
        $row_cnt = count($result->fetchAll());
        if (!preg_match($this->regex, $this->email)) {
            echo "Rossz az email <br>";
            return FALSE;
        } elseif ($row_cnt != 0) {
            echo "Már használatban az email <br>";
            return FALSE;
        } else {
            echo "Jó az email <br>";
            return TRUE;
        }
    }

    private function update($f3) {
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        $connection = new PDOConnection();
        if ($this->passwordCheck() && $this->usernameCheck() && $this->mailCheck()) {
            $this->password = md5($this->password); 
            $sql = "INSERT INTO users (username,password,email,regdate)
                    VALUES(:username,:password,:email,:regdate)";
        $q = $connection->prepare($sql);
        $q->execute(array(
            ':username' => $this->username,
            ':password' => $this->password,
            ':email' => $this->email,
            ':regdate' => date("Y-m-d H:i:s")));
            
            header('location:success');
        } else {
            echo"Sikertelen regisztráció";
            echo Template::instance()->render('register.tpl');
            echo Template::instance()->render('endofmain.tpl');
        }
    }
}