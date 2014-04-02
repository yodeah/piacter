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
        'auction' => array(
            'auctioncb', 'auctionstart', 'auctionstep', 'auctionprice_ty',
        ),
        'checkbutton' => array(
            'fixpricecb', 'auctioncb',
        ),
        'quantity' => array(
            'quantity', 'quantity_ty',
        ),
        'fixprice' => array(
            'fixpricecb', 'fixprice', 'fixprice_ty',
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
        }
        echo Template::instance()->render('adupload.tpl');
        echo Template::instance()->render('endofmain.tpl');
    }

    private function success($f3) {
        $connection = new PDOConnection;
        $sql = "INSERT INTO items (`owner`,`title`,`descr`,`cond`,`region`,`image`,`date`,`warranty`,`warranty ty`,`fixprice`,`fixprice ty`,`quantity`,`quantity ty`,`availability`,`auctionstart`,`auctionstep`,`auctionprice ty`)
		VALUES(:id,:title,:description,:condition,:re,:image,:date,:warranty,:warrantyty,:fixprice,:fixpricety,:quantity,:quantityty,:availability,:auctionstart,:auctionstep,:auctionpricety)";
        $q = $connection->prepare($sql);
        $q->execute($this->datagen($f3));
        $this->auctionevent($f3);
        echo'sikeres feltöltés';
        header('location:myads');
    }

    private function auctionevent($f3) {
        if (isset($_POST['auctioncb'])) {
            $eventname = $_POST['title'] . $_SESSION['id'];
            $sessid = $_SESSION['id'];
            $connection = new PDOConnection;
            $result = $connection->query("SELECT availability, id FROM items WHERE owner='$sessid' ORDER BY date DESC ")->fetchAll(PDO::FETCH_ASSOC);
            $expire = $result[0]['availability'];
            $adid = 'AD' . $result[0]['id'];

            $connection->query("CREATE EVENT IF NOT EXISTS $adid
ON SCHEDULE AT '2014-04-01 12:29:48'
DO
   UPDATE `items` SET isopen=0 WHERE owner='$sessid' AND availability='$expire';"); ///lezárja az aukciót
        }
    }

    private function datagen($f3) {
        if (isset($_POST['fixpricecb'])) {
            $fixprice = $f3->get('POST.fixprice');
            $fixpricety = $f3->get('POST.fixprice_ty');
        } else {
            $fixprice = NULL;
            $fixpricety = NULL;
        }

        if (isset($_POST['auctioncb'])) {
            $auctionstart = $f3->get('POST.auctionstart');
            $auctionstep = $f3->get('POST.auctionstep');
            $auctionpricety = $f3->get('POST.auctionprice_ty');
        } else {
            $auctionstart = NULL;
            $auctionstep = NULL;
            $auctionpricety = NULL;
        }

        return array(
            ':id' => $_SESSION['id'],
            ':title' => $f3->get('POST.title'),
            ':description' => $f3->get('POST.description'),
            ':condition' => $f3->get('POST.condition'),
            ':re' => $f3->get('POST.re'),
            ':image' => $this->filename,
            ':warranty' => $f3->get('POST.warranty'),
            ':warrantyty' => $f3->get('POST.warranty_ty'),
            ':quantity' => $f3->get('POST.quantity'),
            ':quantityty' => $f3->get('POST.quantity_ty'),
            ':date' => date("Y-m-d H:i:s"),
            ':availability' => AvailabilityCalc::Calc(),
            ':fixprice' => $fixprice,
            ':fixpricety' => $fixpricety,
            ':auctionstart' => $auctionstart,
            ':auctionstep' => $auctionstep,
            ':auctionpricety' => $auctionpricety
        );
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
                if ($row['seen'] == 1) {
                    $title = $row['title'];
                } else {
                    $title = $row['title'] . ' (!)';
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

    private function templateselector($f3) {
        $connection = new PDOConnection;
        $adid = $f3->get('PARAMS.adid');
        $result = $connection->query("SELECT * FROM items WHERE id=$adid")->fetchAll(PDO::FETCH_ASSOC);
        if (!$result[0]['fixprice'] == NULL && !$result[0]['auctionstart'] == NULL) {
            $this->auctionfixpricetmp($f3);
        } elseif ($result[0]['fixprice'] == NULL && !$result[0]['auctionstart'] == NULL) {
            $this->auctiontmp($f3);
        } elseif (!$result[0]['fixprice'] == NULL && $result[0]['auctionstart'] == NULL) {
            $this->fixpricetmp($f3);
        } else {
            echo 'HIBÁS HIRDETÉS!';
        }
    }
    
    private function minimumprice($row){
        if($row['highestbid']==NULL){
                    $minimumprice = $row["auctionstart"] + $row["auctionstep"];
        }else{
                    $minimumprice = $row["highestbid"] + $row["auctionstep"];
        }
        return $minimumprice;
    }

    private function auctionfixpricetmp($f3) {
        $row = $this->specadquery($f3);
        $f3->set('price', $row["fixprice"]);
        $f3->set('price_ty', Values::$PRICE[$row["fixprice ty"]]);
        $f3->set('placeholder', $this->minimumprice($row));
        $f3->set('auctionprice_ty', Values::$PRICE[$row["auctionprice ty"]]);
        echo Template::instance()->render('auctionfixpricead.tpl');
    }

    private function auctiontmp($f3) {
        $row = $this->specadquery($f3);
        $f3->set('placeholder', $this->minimumprice($row));
        $f3->set('auctionprice_ty', Values::$PRICE[$row["auctionprice ty"]]);
        echo Template::instance()->render('auctionad.tpl');
    }

    private function fixpricetmp($f3) {
        $row = $this->specadquery($f3);
        $f3->set('price', $row["fixprice"]);
        $f3->set('price_ty', Values::$PRICE[$row["fixprice ty"]]);
        echo Template::instance()->render('fixpricead.tpl');
    }

    private function specadquery($f3) {
        $connection = new PDOConnection;
        $adid = $f3->get('PARAMS.adid');
        $result = $connection->query("SELECT items.*, users.username FROM items 
            INNER JOIN users ON items.`owner` = users.id
            WHERE items.id = '$adid'")->fetchAll(PDO::FETCH_ASSOC);
        return $row = $result[0];
    }

    private function specificadcontent($f3) {
        $row = $this->specadquery($f3);
        if (count($row) > 0) {
            $f3->set('title', $row["title"]);
            $f3->set('descr', $row["descr"]);
            $f3->set('date', $row["date"]);
            $f3->set('image', $row["image"]);
            $f3->set('owner', $row["username"]);
            $f3->set('availability', $row["availability"]);
            $f3->set('adid', $f3->get('PARAMS.adid'));

            $f3->set('quantity', $row["quantity"]);
            $f3->set('quantity_ty', Values::$QUANTITY[$row["quantity ty"]]);

            $f3->set('warranty', $row["warranty"]);
            $f3->set('warranty_ty', Values::$WARRANTY[$row["warranty ty"]]);

            $this->templateselector($f3); //ez fogja a rendelelést befejzni attól függöen hogy milyen tipusú a hirdetés
        } else {
            echo 'ERROR  nem létezik ilyen hirdetés';
        }
    }

    private static function seenad($adid) {
        $connection = new PDOConnection;
        $connection->query("UPDATE items SET seen=1 WHERE id='$adid'");
    }

}