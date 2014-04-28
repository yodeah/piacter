<?php

class SpecSearchController {

    public function index($f3) {
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        echo Template::instance()->render('specsearch.tpl');
        echo Template::instance()->render('endofmain.tpl');
    }

    public function process($f3) {
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        $connection = new PDOConnection;
        //echo "SELECT * FROM items WHERE " . $this->querygen() . '<br><br>';
        $result = $connection->query("SELECT * FROM items WHERE " . $this->querygen())->fetchAll(PDO::FETCH_ASSOC);
        //Sprint_r($result);
        foreach ($result as $row) {
            $f3->set('title', $row["title"]);
            $f3->set('link', "/ad/" . $row["id"]);
            $f3->set('img', $row["image"]);
            echo Template::instance()->render('specsrc.tpl');
        }
        echo Template::instance()->render('endofmain.tpl');
    }

    private function querygen() {
        if (isset($_GET['searchintitle'])) {
            $searchintitle = "`title` LIKE '%" . $_GET['keyword'] . "%'";
        } else {
            $searchintitle = NULL;
        }

        if (isset($_GET['searchindesc'])) {
            $searchindesc = "`descr` LIKE '%" . $_GET['keyword'] . "%'";
        } else {
            $searchindesc = NULL;
        }

        if (isset($_GET['searchindesc']) && isset($_GET['searchintitle'])) {
            $isOR = " OR ";
        } else {
            $isOR = NULL;
        }

        if ($_GET['condition'] != 2) {
            $condition = " AND `cond` = " . $_GET['condition'];
        } else {
            $condition = NULL;
        }

        if ($_GET['re'] != 0) {
            $region = " AND `region` =" . $_GET['re'];
        } else {
            $region = NULL;
        }

        return $searchintitle . $isOR . $searchindesc . $condition . $region;
    }

}
