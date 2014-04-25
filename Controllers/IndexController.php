<?php

class IndexController {

    function display($f3) {
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        echo Template::instance()->render('slider.tpl');
        $this->indexContent($f3, 4);
        echo Template::instance()->render('endofmain.tpl');
    }

    function search($f3) {
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        $this->searchContent($f3);
        $pagination = new PaginationController($_GET['searchbox'], $_GET['page'], $f3);
        echo Template::instance()->render('endofmain.tpl');
    }

    private function indexContent($f3, $itemx4) {/// MENNYI SOR TARTALOM LEGYEN A FŐOLDALON
        $connection = new PDOConnection;
        $sor = 1; //sorok vizsgálásához hogy hova rakja az oszlopokat 
        $result = $connection->query("SELECT * FROM items WHERE isopen=1 ORDER BY date DESC LIMIT 0," . (4 * $itemx4))->fetchAll(PDO::FETCH_ASSOC) or $connection->error();
        //print_r($result); die();       
        foreach ($result as $row) {
            if ($sor % $itemx4 == 1) {
                echo'<div class="col-md-3">';
            }
            $title = (strlen($row["title"]) > 20) ? substr($row["title"], 0, 20) . "...  " : $row["title"];
            $f3->set('title', $title);
            $message = (strlen($row["descr"]) > 100) ? substr($row["descr"], 0, 100) . "...  " : $row["descr"];
            $f3->set('text', $message);
            $f3->set('id', $row['id']);
            $this->image($f3, $row);
            //$f3->set('img', $row["image"]);
            $f3->set('user', $this->idtousername($row["owner"]));
            $f3->set('date', $row["date"]);
            echo Template::instance()->render('post2.tpl');
            if ($sor % $itemx4 == 0) {
                echo'</div>';
            }
            $sor++;
        }
    }

    private function image($f3, $row) {
        if (isset($row["image"])) {
            $f3->set('img', $row["image"]);
        } else {
            $f3->set('img', 'NOIMAGE.svg');
        }
    }

    private function idtousername($userid) {
        $connection = new PDOConnection;
        $username = $connection->query("SELECT username FROM users WHERE id=$userid")->fetchAll(PDO::FETCH_ASSOC);
        return $username[0]['username'];
    }

    private function searchContent($f3) {
        $page = (($_GET['page'] * 50) - 50);
        $connection = new PDOConnection;
        $result = $connection->query("SELECT * FROM linkdb
		WHERE title LIKE '%" . $_GET['searchbox'] . "%' LIMIT " . $page . ",50 ");
        while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
            $f3->set('title', $row["title"]);
            $f3->set('link', $row["link"]);
            echo Template::instance()->render('greenbox.tpl');
        }
    }

    private function isopendatacheck($result, $user1, $user2) {
        foreach ($result as $value) {
            if ($value['highestbid'] == $user1 || $value['highestbid'] == $user2 || $value['boughtfixed'] == $user1 || $value['boughtfixed'] == $user2) {
                return true;
            }
        }
    }

    private function isopen($data, $user1, $user2) {///ezt nem csak az emailhoz lehet használni.
        $connection = new PDOConnection;
        $result = $connection->query("SELECT * FROM items WHERE isopen= 0 AND owner = '$user1' OR owner = '$user2'")->fetchAll(PDO::FETCH_ASSOC);
        if (!isset($_SESSION['id'])) {
            return 'Ezek az adatok csak bejelentkezett felhasználók számára elérhetőek';
        } elseif (!$this->isopendatacheck($result, $user1, $user2)) {
            return 'Ezek az adatok csak akkor elérhetőek ha már kereskedtetek';
        } else {
            return $data;
        }
    }

    public function specificUser($f3) {
        $connection = new PDOConnection;
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        $username = $f3->get('PARAMS.username');
        ////KELL FELTÉTEL HOGY MENÉZHETI E A PRIVÁT ADATAIT ATTÓL FÜGGŐEN HOGY KEREKEDTEK-E MÁR
        $result = $connection->query("SELECT * FROM users WHERE username = '$username'")->fetchAll(PDO::FETCH_ASSOC);
        $userid = $result[0]['id'];
        if (isset($_SESSION['id'])) {
            $user1 = $_SESSION['id'];
        } else {
            $user1 = NULL;
        }
        if (count($result) > 0) {
            $row = $result[0];
            $f3->set('name', $row['username']);
            $f3->set('email', $this->isopen($row['email'], $user1, $userid));
            $f3->set('regdate', $row['regdate']);
            $f3->set('lastlogin', $row['lastlogin']);
            UserController::calculaterates($f3, $userid);
            if (isset($row['intro'])) {
                $f3->set('intro', $row['intro']);
            } else {
                $f3->set('intro', 'nincs beállítva bemutatkozás.');
            }
            echo Template::instance()->render('userprofile.tpl');
            // echo Template::instance()->render('good2know.tpl');
        } else {
            echo 'ERROR  nem létezik ilyen felhasználó!';
        }
        echo Template::instance()->render('endofmain.tpl');
    }

    function profile($f3) {
        Isloggedin::loggedin();
        $sessid = $_SESSION['id'];
        $connection = new PDOConnection;
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        $row = $connection->query("SELECT * FROM users WHERE id='$sessid'")->fetch(PDO::FETCH_ASSOC);
        $f3->set('name', $row['username']);
        $f3->set('email', $row['email']);
        $f3->set('regdate', $row['regdate']);
        $f3->set('lastlogin', $row['lastlogin']);
        UserController::calculaterates($f3, $_SESSION['id']);
        if (isset($row['intro'])) {
            $f3->set('intro', $row['intro']);
        } else {
            $f3->set('intro', 'nincs beállítva bemutatkozás.');
        }
        echo Template::instance()->render('profile.tpl');
        echo Template::instance()->render('endofmain.tpl');
    }

}
