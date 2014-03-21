<?php

class PaginationController {

    private $item;
    private $current;
    private $itemperpage = 50;
    private $count;
    private $page;

    public function __construct($item, $current, $f3) {
        $this->item = $item;
        $this->current = $current;
        $this->result($f3);
    }

    private function result($f3) {
        $connection = new PDOConnection;
        $result = $connection->query("SELECT * FROM linkdb WHERE title LIKE '%" . $this->item . "%'");
        $this->count = count($result->fetchAll());
        $this->page = ceil($this->count / $this->itemperpage);
        $this->showpage($f3);
        $this->minibuttons($f3);
        echo Template::instance()->render('pagination.tpl');
    }

   private function minibuttons($f3) {///első utolsó gomb
        if ($this->page <= 1) {
            $f3->set('backst', 'style="display:none"');
            $f3->set('forwardst', 'style="display:none"');
            $f3->set('back', 'search?searchbox=' . $this->item . '&page=1');
            $f3->set('forward', 'search?searchbox=' . $this->item . '&page=' . $this->page);
        } else {
            $f3->set('backst', '');
            $f3->set('forwardst', '');
            $f3->set('back', 'search?searchbox=' . $this->item . '&page=1');
            $f3->set('forward', 'search?searchbox=' . $this->item . '&page=' . $this->page);
        }
    }

    private function showpage($f3) {///középső 5 gomb
        for ($x = 0; $x <= 4; $x++) {
            if (($this->current - 2 + $x) > 0 && ($this->current - 2 + $x) <= $this->page) {
                $f3->set('button' . ( 1 + $x) . 'li', 'search?searchbox=' . $this->item . '&page=' . ($this->current - 2 + $x));
                $f3->set('button' . ( 1 + $x) . 'st', '');
                $f3->set('button' . ( 1 + $x) . 'na', ($this->current - 2 + $x));
            } else {
                $f3->set('button' . ( 1 + $x) . 'li', '#');
                $f3->set('button' . ( 1 + $x) . 'st', 'style="display:none"');
                $f3->set('button' . ( 1 + $x) . 'na', '#');
            }
        }
    }

}
