<?php

Class MessageController {

    private static $toCheckConfig = array(
        'title' => array(
            'title'
        ),
        'description' => array(
            'message'
        ),
    );

    public function newmessage($f3) {
        Isloggedin::loggedin();
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        $f3->set('touser', $_GET['user']);
        echo Template::instance()->render('message.tpl');
        echo Template::instance()->render('endofmain.tpl');
    }

    public function upload_message($f3) {
        Isloggedin::loggedin();
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        if (UploadPostVariables::testUploadPostVariables(self::$toCheckConfig)) {
            $this->success($f3);
        }
        echo Template::instance()->render('endofmain.tpl');
    }

    private function success($f3) {
        $connection = new PDOConnection;
        $touser = $f3->get('POST.touser');
        $result = $connection->query("SELECT * FROM users WHERE username='$touser'")->fetchAll(PDO::FETCH_ASSOC);
        if (count($result) == 1) {
            $toid = $result[0]['id'];
        } else {
            echo 'error, nincs ilyen user';
//header('location:newmessage');
            die();
        }
        $sql = "INSERT INTO messages (toid,fromid,title,message,sent,seen)
		VALUES(:toid,:fromid,:title,:message,:sent,:seen)";
        $q = $connection->prepare($sql);
        $q->execute(array(
            ':toid' => $toid,
            ':fromid' => $_SESSION['id'],
            ':title' => $_POST['title'],
            ':message' => $_POST['message'],
            ':sent' => date("Y-m-d H:i:s"),
            ':seen' => 0
            ));

        echo 'Üzenete sikeresen továbbítva';
    }

    public function mymessages($f3) {
        $connection = new PDOConnection;
        $sessid = $_SESSION['id'];
        Isloggedin::loggedin();
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        $result = $connection->query("SELECT * FROM users 
                INNER JOIN messages ON users.id=messages.toid WHERE users.id = '$sessid' ORDER BY sent DESC;")->fetchAll(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
            if($row['seen']==0){
                $title = $row["title"].' (!)';
            }else{
                $title = $row["title"];
            } 
            $message = (strlen($row["message"]) > 100) ? substr($row["message"], 0, 100) . "...  " . "<a href=message/" . $row['id'] . ">tovább</a>" : $row["message"] . "  <a href=message/" . $row['id'] . ">tovább</a>";
            $f3->set('from', $row["username"]);
            $f3->set('title', $title);
            $f3->set('message', $message);
            echo Template::instance()->render('messagefront.tpl');
        }

        echo Template::instance()->render('endofmain.tpl');
    }

    public function specificmessage($f3) {
        $messageid = $f3->get('PARAMS.messageid');
        $sessid = $_SESSION['id'];
        $connection = new PDOConnection;
        self::unseenmessage($messageid);
        Isloggedin::loggedin();
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        $result = $connection->query("SELECT * FROM users 
                INNER JOIN messages ON users.id=messages.toid WHERE messages.id='$messageid'")->fetchAll(PDO::FETCH_ASSOC);
        if (count($result) != 1) {
            echo 'nem létezik ilyen üzenet';
        } elseif ($result[0]['toid'] != $sessid) {
            echo 'ez nem a te üzeneted';
            $connection->query("UPDATE messages SET seen=1 WHERE toid='$messageid'");
        } else {
            $row = $result[0];
            $f3->set('from', $row["username"]);
            $f3->set('title', $row["title"]);
            $f3->set('message', $row["message"]);
            echo Template::instance()->render('messagefront.tpl');
        }
        echo Template::instance()->render('endofmain.tpl');
    }
    
    private static function unseenmessage($messageid){
                $connection = new PDOConnection;
                $connection->query("UPDATE messages SET seen=1 WHERE id='$messageid'");
    }

}
