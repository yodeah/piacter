<?php

Class AdController {

    private $filename;  ///kigenerált filname  
    private static $toCheckConfig = array(
        'description' => array(
            'description'
        ),
        'region' => array(
            're'
        ),
        'title' => array(
            'title'
        ),
        'condition' => array(
            'condition'
        ),
        'quantity' => array(
            'quantity', 'quantity_ty',
        ),
        'quantity' => array(
            'price', 'price_ty',
        ),
        'quantity' => array(
            'warranty', 'warranty_ty',
        ),
        'availability' => array(
            'availability', 'availability_ty',
        ),
    );

    function aduploadsite($f3) {
        Isloggedin::loggedin();
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        echo Template::instance()->render('adupload.tpl');
        echo Template::instance()->render('endofmain.tpl');
    }

    public function adupload($f3) {
        Isloggedin::loggedin();
        $this->filename = preg_replace('/\s+/', '-', $_POST['title']) . $_SESSION['id'] . $_FILES["file"]["name"]; //filename kigenerálás (spacek kiszedése)
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        if (UploadPostVariables::testUploadPostVariables(self::$toCheckConfig)) {
            if (FileCheckUpload::fileupload($this->filename)) {//azért van 2 egymásban if mer a fileupload csak akkor futhat le ha másik biztos true.
                $this->success($f3);
            }
        } else {
            echo Template::instance()->render('adupload.tpl');
            echo Template::instance()->render('endofmain.tpl');
        }
    }

    private function success($f3) {
        $connection = new PDOConnection;
        $sql = "INSERT INTO items (`owner`,`title`,`descr`,`cond`,`region`,`image`,`date`,`warranty`,`warranty ty`,`price`,`price ty`,`quantity`,`quantity ty`,`availability`)
		VALUES(:id,:title,:description,:condition,:re,:image,:date,:warranty,:warrantyty,:price,:pricety,:quantity,:quantityty,:availability)";
        $q = $connection->prepare($sql); 
        $q->execute(array(
            ':id' => $_SESSION['id'],
            ':title' => $f3->get('POST.title'),
            ':description' => $f3->get('POST.description'),
            ':condition' => $f3->get('POST.condition'),
            ':re' => $f3->get('POST.re'),
            ':image' => $this->filename,
            ':warranty' => $f3->get('POST.warranty'),
            ':warrantyty' => $f3->get('POST.warranty_ty'),
            ':price' => $f3->get('POST.price'),
            ':pricety' => $f3->get('POST.price_ty'),
            ':quantity' => $f3->get('POST.quantity'),
            ':quantityty' => $f3->get('POST.quantity_ty'),
            ':date' => date("Y-m-d H:i:s"),
            ':availability' => AvailabilityCalc::Calc()));
        echo'sikeres feltöltés';
        header('location:myads');
    }

    public function myads($f3) {
        Isloggedin::loggedin();
        $sessionid = $_SESSION['id'];
        NAVBARController::buttons($f3);
        $connection = new PDOConnection;
        echo Template::instance()->render('main.tpl');
        $result = $connection->query("SELECT * FROM items WHERE owner='$sessionid'");
        if ($result) {
            while ($row = $result->fetch(PDO::FETCH_ASSOC)) {
                if($row['seen']==1){
                    $title = $row['title'];
                }else{
                    $title = $row['title'].' (!)';
                }
                $f3->set('id', $row['id']);
                $f3->set('title', $title);
                $f3->set('descr', $row['descr']);
                $f3->set('date', $row['date']);
                echo Template::instance()->render('myad.tpl');
            }
        } else {
            echo 'nincs egyetlen hirdetésed sem';
        }
        echo Template::instance()->render('endofmain.tpl');
    }

    function specificad($f3) {
        self::seenad($f3->get('PARAMS.adid'));
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        $this->specificadcontent($f3);
        echo Template::instance()->render('good2know.tpl');
        echo Template::instance()->render('similar-ad.tpl');
        CommentController::comments($f3, $f3->get('PARAMS.adid'));
        echo Template::instance()->render('endofmain.tpl');
    }

    
    private function specificadcontent($f3) {
        $connection = new PDOConnection;
        $adid = $f3->get('PARAMS.adid');
        $result = $connection->query("SELECT items.*, users.username FROM items 
            INNER JOIN users ON items.`owner` = users.id
            WHERE items.id = '$adid'")->fetchAll(PDO::FETCH_ASSOC);
        if (count($result) > 0) {
            $row = $result[0];
            $f3->set('title', $row["title"]);
            $f3->set('descr', $row["descr"]);
            $f3->set('date', $row["date"]);
            $f3->set('image', $row["image"]);
            $f3->set('owner', $row["username"]);
            $f3->set('availability', $row["availability"]);

            $f3->set('price', $row["price"]);
            $f3->set('price_ty', Values::$PRICE[$row["price ty"]]);

            $f3->set('quantity', $row["quantity"]);
            $f3->set('quantity_ty', Values::$QUANTITY[$row["quantity ty"]]);

            $f3->set('warranty', $row["warranty"]);
            $f3->set('warranty_ty', Values::$WARRANTY[$row["warranty ty"]]);

            echo Template::instance()->render('fullpagead.tpl');
        } else {
            echo 'ERROR  nem létezik ilyen hirdetés';
        }
    }
    
    private static function seenad($adid){
        $connection = new PDOConnection;
        $connection->query("UPDATE items SET seen=1 WHERE id='$adid'");
    }

}
