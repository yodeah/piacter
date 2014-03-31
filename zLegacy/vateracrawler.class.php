<?php
class vateracrawler{
	private $html;
	function ini(){
		//set_time_limit ( 300 );
		require 'lib/simple_html_dom.php';
		$html = file_get_html('http://www.vatera.hu/listings/map.php');
		$ret = $html->find('div[class=map]'); 
		foreach($ret as $retek){
			echo $retek;
		}
		echo'idáig lefutottam';
	}
	function select(){
		$html = $this->html;
		$ret = $html->find('div[class=map]'); 
		echo $ret;
	}
}
?>