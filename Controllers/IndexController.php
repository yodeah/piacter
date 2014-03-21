<?php
//BOKODI <3
class IndexController {

    function display($f3) {
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        $this->indexContent($f3, 2);
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
        $result = $connection->query("SELECT * FROM posts ORDER BY date DESC LIMIT 0," . (4 * $itemx4)) or $connection->error();
        while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
            if ($sor % $itemx4 == 1) {
                echo'<div class="col-md-3">';
            }
            $f3->set('title', $row["title"]);
            $f3->set('text', $row["text"]);
            $f3->set('img', $row["img"]);
            $f3->set('user', $row["user"]);
            $f3->set('date', $row["date"]);
            echo Template::instance()->render('post2.tpl');
            if ($sor % $itemx4 == 0) {
                echo'</div>';
            }
            $sor++;
        }
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

    function specificUser($f3) {
        $connection = new PDOConnection;
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        $username = $f3->get('PARAMS.username');
        $result = $connection->query("SELECT * FROM users WHERE username = '$username'")->fetchAll(PDO::FETCH_ASSOC);
        if (count($result) > 0) {
            $row = $result[0];
            $f3->set('name', $row['username']);
            $f3->set('email', $row['email']);
            $f3->set('regdate', $row['regdate']);
            $f3->set('lastlogin', $row['lastlogin']);

            if (isset($row['intro'])) {
                $f3->set('intro', $row['intro']);
            } else {
                $f3->set('intro', 'nincs beállítva bemutatkozás.');
            }
            echo Template::instance()->render('userprofile.tpl');
            echo Template::instance()->render('good2know.tpl');
        } else {
            echo 'ERROR  nem létezik ilyen felhasználó!';
        }
        echo Template::instance()->render('endofmain.tpl');
    }

    function profile($f3) {
        if (isset($_SESSION['id'])) {
            $sessid = $_SESSION['id'];
            $connection = new PDOConnection;
            NAVBARController::buttons($f3);
            echo Template::instance()->render('main.tpl');
            $row = $connection->query("SELECT * FROM users WHERE id='$sessid'")->fetch(PDO::FETCH_ASSOC);
            $f3->set('name', $row['username']);
            $f3->set('email', $row['email']);
            $f3->set('regdate', $row['regdate']);
            $f3->set('lastlogin', $row['lastlogin']);

            if (isset($row['intro'])) {
                $f3->set('intro', $row['intro']);
            } else {
                $f3->set('intro', 'nincs beállítva bemutatkozás.');
            }
            echo Template::instance()->render('profile.tpl');
            echo Template::instance()->render('good2know.tpl');
            echo Template::instance()->render('endofmain.tpl');
        } else {
            header('location:/index');
        }
    }

}
