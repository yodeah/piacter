<?php
class crawlers{
static function testt(){
	echo"lefutottam!";
}
function vateraCRAWLER(){
	//define('MAX_FILE_SIZE', 9999999); //DOM FILEBA BERAKNI �S J�
set_time_limit ( 300 );
 echo"id�ig lefutottam" ; 
$PAGE=1;
$WHAT='laptop';
 echo"id�ig lefutottam" ; 
$old=1;
$new=2;
      echo"id�ig lefutottam" ; 
$x = 1;
require 'lib/simple_html_dom.php';
$con = mysqli_connect("localhost", "root", "", "piacterdb");
do{
	$old=$new;
	$html = file_get_html("http://www.vatera.hu/listings/index.php?ob=2&obd=2&p=".$PAGE."&q=".$WHAT);
        
	$new='';
	/*foreach($html->find('td[class=listing-item-title]') as $element) 
	echo $element->ret . '<br>';*/
	$ret = $html->find('td[class=listing-item-title]');
        
	foreach($ret as $title){
		echo $x;
		echo '<br>';
		echo $title->plaintext;
		echo '<br>';
		//$titlea = $title->href;
		$titlea = $title->find('a');
		foreach($titlea as $tittylink)
		if($tittylink->title > $title->plaintext){
			mysqli_query($con, "  INSERT INTO linkdb (title,link,database) VALUES ('$tittylink->title','$tittylink->href',1)");
			echo 'TITL�T MENTEM';
			echo '<br>';
		}else{
			mysqli_query($con, "  INSERT INTO linkdb (title,link,database) VALUES ('$tittylink->title','$tittylink->href',1)");
			echo 'SZ�VEGET MENTEM';
			echo '<br>';
		}
		echo $tittylink->title;
		echo '<br>';
		echo $tittylink->href;
		$new=$new.$tittylink->href;

		echo '<br>';
		echo '<br>';
		$x++;
	}
	$PAGE++;
	$html->clear(); 
	unset($html);
}while($old != $new);
        
for($x=1;$x<50;$x++){
	echo 'V�GEZTEM';
	echo '<br>';
}
}	
	
function vateraSC($link){
	//define('MAX_FILE_SIZE', 9999999); //DOM FILEBA BERAKNI �S J�
include 'simple_html_dom.php';
$con = mysqli_connect("localhost", "root", "", "piacterdb");

/*$link='http://muveszet-kezmuvesseg.vatera.hu/kreativ_hobbi/gyongyfuzes_ekszerkeszites/gyongy/shamballa_kristaly_gomb_gyongy_55_szin_akcio_1852026446.html';*/

$villamar=0; // <strong class="fix-product-price">3 300 Ft</strong>
$legkissebajanlhatoar=0;//<strong class="auction-min-price">194 900 Ft</strong>

$html = file_get_html($link);

foreach($html->find('.fix-product-price') as $ret){	
	//echo $ret;
	$villamar = $ret;
	//echo'<br>';
}
foreach($html->find('strong[class=auction-min-price]') as $ret){	
	//echo $ret;
	$legkissebajanlhatoar = $ret;
	//echo'<br>';
}
foreach($html->find('div[class=pvp-leftcontent-row pvp-leftcontent-row-withbackground]') as $ret){	
	foreach($ret->find('div[class=row-content]') as $ret2){
	echo $ret2;
	if(!isset($mennyiseg))
	$mennyiseg = trim($ret2, "\n");////NEMJ����:SSSSS
	
	
	echo'<br>';
	//var_dump($ret);
}
}


echo 'Vill�m�r:'.$villamar.'<br>';
echo 'Legkisebb aj�nlhat� �r:'.$legkissebajanlhatoar.'<br>';
if(isset($mennyiseg))
echo 'Mennyis�g:'.$mennyiseg.'<br>';

/*<div class="pvp-leftcontent-row pvp-leftcontent-row-withbackground">
<div class="row-label color-light-gray">�ru mennyis�ge:</div>
<div class="row-content">
9999 db
</div>
<div class="clear"></div>
</div>
* /
*/
}

	
}
?>