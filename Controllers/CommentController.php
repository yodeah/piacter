<?php

class CommentController {

    public static function comments($f3, $adid) {
        $connection = new PDOConnection;
        $result = $connection->query("SELECT * FROM comments WHERE adid='$adid'")->fetchAll(PDO::FETCH_ASSOC);
        if (count($result) == 0) {
            $f3->set('adid', $adid);
            echo Template::instance()->render('nocomment.tpl');
        } else {
            foreach ($result as $comment) {
                $userid = $comment['userid'];
                $user = $connection->query("SELECT * FROM users WHERE id='$userid'")->fetchAll(PDO::FETCH_ASSOC);
                $f3->set('owner', $user[0]['username']);
                $f3->set('comment', $comment['content']);
                $f3->set('commentid', $comment['id']);
                $f3->set('date', $comment['datee']);
                $f3->set('adid', $adid);
                if ($comment['reply'] == 0) {
                    echo Template::instance()->render('comment.tpl');
                } else {
                    $f3->set('reply', $comment['reply']);
                    echo Template::instance()->render('replycomment.tpl');
                }
            }
        }
    }

    public function newcommentcall($f3) {///lecserélni nem tudja a másiknak az index rendesen átadni a paramétert
        $this->newcomment($f3, '', 0);
    }

    private static function unseen($id) {
        $connection = new PDOConnection;
        $connection->query("UPDATE items SET seen=0 WHERE id='$id'");
    }

    public function newcomment($f3, $error = '', $reply = '', $adid= '') {
        if ($f3->get('GET.adid')==NULL){
            $toad = $adid;
        }else{
            $toad = $f3->get('GET.adid');
        }           
        Isloggedin::loggedin();
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        $f3->set('reply', $reply);
        $f3->set('error', $error);
        $f3->set('toad', $toad);
        echo Template::instance()->render('writecomment.tpl');
        echo Template::instance()->render('endofmain.tpl');
    }

    public function upload_comment($f3) {
        Isloggedin::loggedin();
        $adid = $f3->get('POST.toad');
        $comment = $f3->get('POST.comment');
        $reply = $f3->get('POST.reply');
        $connection = new PDOConnection;
        $result = $connection->query("SELECT * FROM items WHERE id='$adid'")->fetchAll(PDO::FETCH_ASSOC);
        if (!count($result) == 1) {
            header('location:index');
        } elseif (strlen($comment) < 5) {
            $this->newcomment($f3, 'túl rövid a hozzászólás!',$reply,$adid);
        } elseif (strlen($comment) > 500) {
            $this->newcomment($f3, 'túl hosszú a hozzászólás!',$reply,$adid);
        } else {
            $sql = "INSERT INTO comments (adid,content,userid,reply,datee) VALUES (:adid,:comment,:userid,:reply,:date)";
            $q = $connection->prepare($sql);
            $q->execute(array(
                ':adid' => $adid,
                ':comment' => $comment,
                ':userid' => $_SESSION['id'],
                ':reply' => $reply,
                ':date' => date("Y-m-d H:i:s")
            ));
            self::unseen($adid);
            header('location:ad/' . $adid);
        }
    }

    public function replycomment($f3) {
        $reply = $f3->get('GET.commentid');
        $this->newcomment($f3, NULL, $reply);
    }

    public function specificComment($f3) {
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        $commentid = $f3->get('PARAMS.commentid');
        $connection = new PDOConnection;
        $result = $connection->query("SELECT * FROM comments WHERE id='$commentid'")->fetchAll(PDO::FETCH_ASSOC);
        if (count($result) == 0) {
            echo 'Ez a hozzászólás nem található';
        } else {
            $comment = $result[0];
            $userid = $comment['userid'];
            $user = $connection->query("SELECT * FROM users WHERE id='$userid'")->fetchAll(PDO::FETCH_ASSOC);
            $f3->set('owner', $user[0]['username']);
            $f3->set('comment', $comment['content']);
            $f3->set('commentid', $comment['id']);
            $f3->set('adid', $comment['adid']);
            $f3->set('date', $comment['datee']);
            if ($comment['reply'] == 0) {
                echo Template::instance()->render('comment.tpl');
            } else {
                $f3->set('reply', $comment['reply']);
                echo Template::instance()->render('replycomment.tpl');
            }
        }
        echo Template::instance()->render('endofmain.tpl');
    }

}
