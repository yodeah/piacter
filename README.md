PIACT�R
k�sz�tette:
N�meth Andr�s

Jedlik Iskola
2014

.
�SSZEFOGLAL�S
Szakdolgozat egy Apr�d/Hardverapr�hoz hasonl� weboldalr�l, PHP HTML CSS alapokon. Ahol a felhaszn�l�k k�nnyen �s gyorsan �rt�kes�thetik haszn�lt/megunt t�rgyaikat.


Bevezet�s
T�MAV�LASZT�S
A mai vil�gban az internet sz�les k�rben elterjedt, az emberek �let�nek a szerves r�sz�v� v�lt. A legt�bb felhaszn�l� b�ng�sz�n kereszt�l �ri el az internetet, amely ma m�r minden sz�m�t�g�pen megtal�lhat� �s a mobiltelefonok nagy r�sz�n is. Ez egy olyan multifunkcion�lis eszk�zz� fejl�dik, amelyen kereszt�l a felhaszn�l�k inform�ci�t gy�jthetnek, kommunik�lhatnak, filmeket n�zhetnek. A kis �s nagy v�llalatok sz�m�ra a marketing mind az �rt�kes�t�s ter�let�n elengedhetetlen eszk�z. Sz�val a j�v�nek mindenk�ppen szerves r�sze �s egy olyan eszk�z amire a fejleszt�st mindenk�ppen �rdemes megtanulni �s hossz�t�von j� befektet�s.
Mivel teljesen leny�g�z�tt ez az eszk�z, �gy d�nt�ttem a ny�ron hogy szeretn�k �n is foglalkozni vele, k�s�bb beiratkoztam a Jedlikbe, �s amikor a szakdolgozat t�mav�laszt�s�ra ker�lt a sor a v�laszt�s nem volt t�l neh�z, valami olyat szerettem volna fejleszteni aminek a t�m�ja komolyabb mint egy j�t�k. K�s�bb munkakeres�sn�l referenci�nak vagy egyetemen valamilyen form�ban �jrahasznos�that�. Nem utols� sorban szakmailag kih�v�s �s lehet�s�ged ad ezen a ter�leten val� fejl�d�sre.
�gy gondoltam hogy a logikai r�sz meg�r�s�ra a PHP-t haszn�lom mivel el�g gyorsan lehet vele fejleszteni (dinamikus v�ltoz�k, megenged� syntax). Az oldal megform�z�s�hoz HTML, CSS-re esett a v�laszt�s de err�l majd k�s�bb.

EREDETI SPECIFIK�CI�
Szakdolgozatnak egy piacteret fogok k�sz�teni (vatera, ebay).
Megjelen�t�s: html, css, javascript. Szerveroldalon: php, mysql adatb�zissal.
A felhaszn�l�knak regisztr�lniuk kell (emailes meger�s�t�s).
F�oldalon v�letlen�l kilist�zott term�kek, kateg�ri�k.
A felhaszn�l�k term�keket(hirdet�seket) tudnak felt�lteni c�mszavakkal, k�ppel, kateg�ria, le�r�ssal.
Keres�s: c�mszavakra r�lehet keresni, kilist�zza a tal�latokat.
Sz�r�s bizonyos opci�kra (sz�ll�t�s, �r�)
A term�keknek k�l�n kigener�lt oldala lesz:
* Term�kle�r�s
* K�p
* Term�k helye
* Hirdet�s �rv�nyess�ge
* Kommentek
* Hirdet� profilja
Az �zlet lebonyol�t�sa ut�n lehet �rt�keli egym�snak a feleket.

IRODALOMJEGYZ�K:
* Tanuljuk meg a PHP5 haszn�lat�t 24 �ra alatt - Matt Zandstra
* stackoverflow.com
* caniuse.com
* Tiszta k�d - Az agilis szoftverfejleszt�s k�zik�nyve - Robert C. Martin
* Biztons�gos webalkalmaz�sok PHP nyelven - Tricia Ballad, William Ballad


Fejlesz�i k�rnyezet
NYELVEK KIV�LASZT�SA
Egy piact�r szer� dinamikus oldal fejleszt�s�hez elengedhetetlen egy j� programnyelv v�laszt�sa n�lam a PHP-ra esett a v�laszt�s. A b�ng�sz�ben val� megjelen�t�shez a le�r� nyelvek k�z�l nem ekkora a v�laszt�k, ez�rt a k�t legelterjedtebbre esett a v�laszt�s a HTML5 �s a CSS3-ra.

PHP
A programlogika (buisness logic) meg�r�sa ezen a nyelven folyik. A leg�jabb v�ltozatot haszn�lom mivel ez m�r t�mogatja az objektum orient�lt programoz�st �s az �j f�ggv�nyek is hasznosak. A syntaxisa megenged� nem kis-nagy bet� �rz�keny �s n�h�ny parancs t�bbsz�r is szerepel k�l�nb�z� n�ven, ezenk�v�l az �sszes v�ltoz� dinamikus. Ezek tulajdons�gok lehetnek ugyan�gy el�ny�k mint h�tr�nyok mivel nagy szabads�got ad a programoz�knak k�nnyed�n lehet cs�nya �s �tl�thatatlan k�dot �rni. Ezeket figyelembev�ve pr�b�ltam valami egyszer� konvenci�t kialak�tani hogy az elt�r� id�ben meg�rt k�dok egyform�n n�zzenek ki. A programot szinte teljes eg�sz�ben objektumorient�ltan �rtam meg mivel szerintem ez �tl�that�v� teszi a k�dot �s t�bbszem�lyes fejleszt�s eset�n az procedur�lis programk�d sz�ba sem j�het.
Framework-�k
FAT-FREE
A Programoz�snak okt�ber k�r�l �lltam neki de r�videsen r�j�ttem hogy a programk�d �s a megjelen�t�s �sszevegy�t�se nem a legc�lravezet�bb dolog hossz�t�von. Ekkor a programoz�st egy kis id�re abbahagytam �s j�tt a kutat�s r�sz, ekkoriban botlottam az �MVC� elnevez�sbe ami a Modell-View-Controller r�vid�t�se, ennek az a l�nyege hogy az oldalat 3 r�szre bontjuk:
* Modell: Itt t�rt�nnek a sz�m�t�sok, a vez�rl�t�l megkapott adatok feldolgoz�sa az adatb�zissal val� komunik�ci�, sajnos n�lam ez n�hol egybeolvadt a vez�rl�vel a gyorsabb fejleszt�s �rdek�ben.
* N�zet: ezen a fel�leten t�rt�nik a felhaszn�l�i interakci�, jellemz�en egy felhaszn�l�i fel�let. K�l�nb�z� c�lokra k�l�nb�z� n�zetek l�tezhetnek ugyanahhoz a modellhez.
* Vez�rl�: Ez a r�teg k�ti �ssze a modell-t a n�zettel. A bemeneti adatok ezen kereszt�l jutnak el a modellhez amely azt feldolgozza. A feldolgozott adatot ez adja �t a n�zetnek.
Ez ut�n tov�bb keresg�ltem a megold�s ut�n mivel ezt nem igaz�n tudtam elk�pzelni hogy hogyan programozzam le, ekkor az egyik ismer�s�m aj�nlotta hogy haszn�ljak egy PHP frameworkot, �gy esett a v�laszt�s a Fat-Free frameworkre (k�s�bbiekben csak F3). Ez egy kisebb framework ami t�mogatja az MVC fejleszt�si mint�t. Legfontosabb funkci�i:
URL routing: Ez az �sszes url-t az index.php ra ir�ny�tja egy HTACCESS file seg�ts�g�vel ahol azt�n defeni�lva van ennek egy funkci� ami annak a k�r�snek megjelen�t egy oldalat vagy elv�gez egy feladatot. az ilyen �tvolnalak lehetnek: staikusak �s dinamikusak.
1-1 p�lda mindkett�re:
* Statikus:
$f3->route('GET /Register', 'RegisterController->display');
Amennyiben a felhaszn�l� be�rja az oldal nev�t/register (ez alap esetben GET (request method)) megh�vja a RegisterController oszt�ly display funkci�j�t amely megjelen�ti a regsztr�ci�s oldalat.
* Dinamikus:
$f3->route('GET /Ad/@adid','AdController->specificad');
Amikor a felhaszn�l� oldalneve/Ad/tetsz�leges sz�mot ad meg, megh�v�dik az AdController oszt�ly specificad funkci�ja amely eld�nti hogy l�tezik e ilyen �id�-vel rendelkez� hirdet�s �s ennek f�ggv�ny�ben megjelen�ti a hirdet�st vagy a hiba�zenetet.
Amennyiben a routing list�ban nem defini�lt oldalat h�vunk egy 404 oldalra dob.
Template kezel� rendszer: Sz�momra ez a funkci� is nagyon hasznosnak bizonyult ez k�l�n�ti el a n�zetet a logikai r�szt�l. Az el�z� p�ld�k k�z�l az els�:
    function display($f3) {
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        echo Template::instance()->render('register.tpl');
        echo Template::instance()->render('endofmain.tpl');
    }
Ez egy el�g egyszer� funkci�, az els� sora (NAVBARController::buttons($f3);) megh�v egy button nev� funkci�t ami be�ll�tja az oldal tetej�n l�v� gombok �rt�keit a att�l f�gg�en hogy a felhaszn�l� bevan-e jelentkezve. Ebb�l egy r�szlet:
        if (isset($_SESSION['username'])) {
            $f3->set('signinstatus', 'Hirdet�sfelad�s');
            $f3->set('signinstatuslink', '/adupload');
        } else {
            $f3->set('signinstatus', 'R�lunk');
            $f3->set('signinstatuslink', '/aboutus');
        }
A set nev� funkci� be�ll�t framework v�ltoz�kat bizonyos �rt�kekre.
A display funkci� k�vetkez� sora:
        echo Template::instance()->render('main.tpl');
 kirendereli a main nevezet� templatet:
<!DOCTYPE html>
<html>
    <head>
        <title>Piact�r</title>
    <include href="style.tpl" />
</head>
<body>
<include href="navbar.tpl" />
<div class="wrapperSJ" id="content">
    <div class="row">
        <!-- END OD MAIN TPL -->

Ez a r�vid r�szlet lesz az oldal forr�s�nak az eleje, egy hozz��rt� ember r�gt�n �szreveszi hogy ebben van kett� darab nem ide ill� tag: <include href="style.tpl" /> �s <include href="navbar.tpl" />. Az include tageket a template kezel� rendszer �rtelmezi �s a megadott templateket beilleszti a hely�re. Az els� include a css-eket �s javascripteket illeszti be. A m�sodik pedig a navbart, ebben tal�lhat�ak framework v�ltoz�k, pl:
* {{ @signinstatus }}
* {{ @signinstatuslink }}
ezeknek az �rt�k�t �ll�totta be a NAVBARController::buttons($f3) �gyhogy itt a bejelentkezett felhaszn�l�k, a hirdet�sfelad�s gombot kapj�k �/adupload� linkkel �s nem bejelenkezettek pedig egy R�lunk felirat� gombot kapnak �/about us� linkkel.

K�P J�N IDE A NAVBARR�L

Autoloader egy framework �ltal kezelt t�mb amiben mappanevek vannak elt�rolva ennek k�sz�nhet�en a funkci�kban nem kell require/incude-olni a az oszt�lyokat. Amikor oszt�lyt p�ld�nyos�tunk vagy staikusan h�vunk f�ggv�nyt automatikusan megn�zi a megadott mapp�kat �s amennyiben ugyanolyan n�ven vannak elmentve a file-ok mint a benn�k t�rolt oszt�ly (csak egyoszt�ly lehet egy fileban) az autoloader megtal�lja �ket �s megh�vja �ket helyett�nk.
Hibakezel� rendszer az F3 hibakez� rendszere kigener�lja
FEJLESZT�K�RNYEZET
A programk�dok nagy r�sz�t a Netbeans IDE-ban �rtam meg. (PHP, CSS, HTML)
Az adatb�zis kialak�t�s�hoz �s menedzsel�s�hez a Navicat-ot haszn�ltam.
Helyi h�l�zaton val� tesztel�shez az Easy PHP-t csomagj�t haszn�ltam:
* Apache
* MySQL
Tesztel�shez a google chrome-t haszn�ltam a megjelen�s erre van letesztelve, optimaliz�lva.
AZ ELK�SZ�LT PROGRAM
AZ INTERFACE
A megjelen�t�s mindig 3 r�szb�l tev�dik �ssze:
* Navbar, az oldal tetej�n helyezkedik el,ez tartalmazza a navig�ci�hoz sz�ks�ges gombokat, log�t, k�z�ss�gi oldalra linkeket.
* Tartalom, ez tartalmazza mindig az �ppen aktul�s dolgokat amire a felhaszn�l� kiv�ncsi, itt t�rt�nik az interakci�, adatcsere nagy r�sze.
* Footer, a lap alj�n tal�lhat�, az oldalr�l alapvet� inform�ci�k�







Fejezetek:

� Bevezet�s (1)
� Eredeti specifik�ci� (1.1)
� T�mav�laszt�s (1.2)
� Iroalomjegyz�k (1.3)
� Halszn�lt eszk�z�k/technol�gi�k
� programnyelv
� fejleszt�k�rnyezet
� Az elk�sz�lt program
� Megval�sult dolgok
� Megval�sulatlan funkci�k
� Plussz funkci�k
� Felhaszn�l�i dokument�ci�
� Tesztek, probl�m�k, megold�sok
� �sszefoglal�s, konkl�zi�(v�ge)


