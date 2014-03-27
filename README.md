PIACTÉR
készítette:
Németh András

Jedlik Iskola
2014

.
ÖSSZEFOGLALÁS
Szakdolgozat egy Apród/Hardverapróhoz hasonló weboldalról, PHP HTML CSS alapokon. Ahol a felhasználók könnyen és gyorsan értékesíthetik használt/megunt tárgyaikat.


Bevezetés
TÉMAVÁLASZTÁS
A mai világban az internet széles körben elterjedt, az emberek életének a szerves részévé vált. A legtöbb felhasználó böngészõn keresztül éri el az internetet, amely ma már minden számítógépen megtalálható és a mobiltelefonok nagy részén is. Ez egy olyan multifunkcionális eszközzé fejlõdik, amelyen keresztül a felhasználók információt gyûjthetnek, kommunikálhatnak, filmeket nézhetnek. A kis és nagy vállalatok számára a marketing mind az értékesítés területén elengedhetetlen eszköz. Szóval a jövõnek mindenképpen szerves része és egy olyan eszköz amire a fejlesztést mindenképpen érdemes megtanulni és hosszútávon jó befektetés.
Mivel teljesen lenyûgözött ez az eszköz, úgy döntöttem a nyáron hogy szeretnék én is foglalkozni vele, késõbb beiratkoztam a Jedlikbe, és amikor a szakdolgozat témaválasztására került a sor a választás nem volt túl nehéz, valami olyat szerettem volna fejleszteni aminek a témája komolyabb mint egy játék. Késõbb munkakeresésnél referenciának vagy egyetemen valamilyen formában újrahasznosítható. Nem utolsó sorban szakmailag kihívás és lehetõséged ad ezen a területen való fejlõdésre.
Úgy gondoltam hogy a logikai rész megírására a PHP-t használom mivel elég gyorsan lehet vele fejleszteni (dinamikus változók, megengedõ syntax). Az oldal megformázásához HTML, CSS-re esett a választás de errõl majd késöbb.

EREDETI SPECIFIKÁCIÓ
Szakdolgozatnak egy piacteret fogok készíteni (vatera, ebay).
Megjelenítés: html, css, javascript. Szerveroldalon: php, mysql adatbázissal.
A felhasználóknak regisztrálniuk kell (emailes megerõsítés).
Fõoldalon véletlenül kilistázott termékek, kategóriák.
A felhasználók termékeket(hirdetéseket) tudnak feltölteni címszavakkal, képpel, kategória, leírással.
Keresés: címszavakra rálehet keresni, kilistázza a találatokat.
Szûrés bizonyos opciókra (szállítás, ár…)
A termékeknek külön kigenerált oldala lesz:
* Termékleírás
* Kép
* Termék helye
* Hirdetés érvényessége
* Kommentek
* Hirdetõ profilja
Az üzlet lebonyolítása után lehet értékeli egymásnak a feleket.

IRODALOMJEGYZÉK:
* Tanuljuk meg a PHP5 használatát 24 óra alatt - Matt Zandstra
* stackoverflow.com
* caniuse.com
* Tiszta kód - Az agilis szoftverfejlesztés kézikönyve - Robert C. Martin
* Biztonságos webalkalmazások PHP nyelven - Tricia Ballad, William Ballad


Fejleszõi környezet
NYELVEK KIVÁLASZTÁSA
Egy piactér szerû dinamikus oldal fejlesztéséhez elengedhetetlen egy jó programnyelv választása nálam a PHP-ra esett a választás. A böngészõben való megjelenítéshez a leíró nyelvek közül nem ekkora a választék, ezért a két legelterjedtebbre esett a választás a HTML5 és a CSS3-ra.

PHP
A programlogika (buisness logic) megírása ezen a nyelven folyik. A legújabb változatot használom mivel ez már támogatja az objektum orientált programozást és az új függvények is hasznosak. A syntaxisa megengedõ nem kis-nagy betû érzékeny és néhány parancs többször is szerepel különbözõ néven, ezenkívül az összes változó dinamikus. Ezek tulajdonságok lehetnek ugyanúgy elõnyök mint hátrányok mivel nagy szabadságot ad a programozóknak könnyedén lehet csúnya és átláthatatlan kódot írni. Ezeket figyelembevéve próbáltam valami egyszerû konvenciót kialakítani hogy az eltérõ idõben megírt kódok egyformán nézzenek ki. A programot szinte teljes egészében objektumorientáltan írtam meg mivel szerintem ez átláthatóvá teszi a kódot és többszemélyes fejlesztés esetén az procedurális programkód szóba sem jöhet.
Framework-ök
FAT-FREE
A Programozásnak október körül álltam neki de rövidesen rájöttem hogy a programkód és a megjelenítés összevegyítése nem a legcélravezetõbb dolog hosszútávon. Ekkor a programozást egy kis idõre abbahagytam és jött a kutatás rész, ekkoriban botlottam az „MVC” elnevezésbe ami a Modell-View-Controller rövidítése, ennek az a lényege hogy az oldalat 3 részre bontjuk:
* Modell: Itt történnek a számítások, a vezérlõtöl megkapott adatok feldolgozása az adatbázissal való komunikáció, sajnos nálam ez néhol egybeolvadt a vezérlõvel a gyorsabb fejlesztés érdekében.
* Nézet: ezen a felületen történik a felhasználói interakció, jellemzõen egy felhasználói felület. Különbözõ célokra különbözõ nézetek létezhetnek ugyanahhoz a modellhez.
* Vezérlõ: Ez a réteg köti össze a modell-t a nézettel. A bemeneti adatok ezen keresztül jutnak el a modellhez amely azt feldolgozza. A feldolgozott adatot ez adja át a nézetnek.
Ez után tovább keresgéltem a megoldás után mivel ezt nem igazán tudtam elképzelni hogy hogyan programozzam le, ekkor az egyik ismerõsöm ajánlotta hogy használjak egy PHP frameworkot, így esett a választás a Fat-Free frameworkre (késöbbiekben csak F3). Ez egy kisebb framework ami támogatja az MVC fejlesztési mintát. Legfontosabb funkciói:
URL routing: Ez az összes url-t az index.php ra irányítja egy HTACCESS file segítségével ahol aztán defeniálva van ennek egy funkció ami annak a kérésnek megjelenít egy oldalat vagy elvégez egy feladatot. az ilyen útvolnalak lehetnek: staikusak és dinamikusak.
1-1 példa mindkettõre:
* Statikus:
$f3->route('GET /Register', 'RegisterController->display');
Amennyiben a felhasználó beírja az oldal nevét/register (ez alap esetben GET (request method)) meghívja a RegisterController osztály display funkcióját amely megjeleníti a regsztrációs oldalat.
* Dinamikus:
$f3->route('GET /Ad/@adid','AdController->specificad');
Amikor a felhasználó oldalneve/Ad/tetszõleges számot ad meg, meghívódik az AdController osztály specificad funkciója amely eldönti hogy létezik e ilyen ’id’-vel rendelkezõ hirdetés és ennek függvényében megjeleníti a hirdetést vagy a hibaüzenetet.
Amennyiben a routing listában nem definiált oldalat hívunk egy 404 oldalra dob.
Template kezelõ rendszer: Számomra ez a funkció is nagyon hasznosnak bizonyult ez különíti el a nézetet a logikai résztõl. Az elõzõ példák közül az elsõ:
    function display($f3) {
        NAVBARController::buttons($f3);
        echo Template::instance()->render('main.tpl');
        echo Template::instance()->render('register.tpl');
        echo Template::instance()->render('endofmain.tpl');
    }
Ez egy elég egyszerû funkció, az elsõ sora (NAVBARController::buttons($f3);) meghív egy button nevû funkciót ami beállítja az oldal tetején lévõ gombok értékeit a attól függöen hogy a felhasználó bevan-e jelentkezve. Ebbõl egy részlet:
        if (isset($_SESSION['username'])) {
            $f3->set('signinstatus', 'Hirdetésfeladás');
            $f3->set('signinstatuslink', '/adupload');
        } else {
            $f3->set('signinstatus', 'Rólunk');
            $f3->set('signinstatuslink', '/aboutus');
        }
A set nevû funkció beállít framework változókat bizonyos értékekre.
A display funkció következõ sora:
        echo Template::instance()->render('main.tpl');
 kirendereli a main nevezetû templatet:
<!DOCTYPE html>
<html>
    <head>
        <title>Piactér</title>
    <include href="style.tpl" />
</head>
<body>
<include href="navbar.tpl" />
<div class="wrapperSJ" id="content">
    <div class="row">
        <!-- END OD MAIN TPL -->

Ez a rövid részlet lesz az oldal forrásának az eleje, egy hozzáértõ ember rögtön észreveszi hogy ebben van kettõ darab nem ide illõ tag: <include href="style.tpl" /> és <include href="navbar.tpl" />. Az include tageket a template kezelõ rendszer értelmezi és a megadott templateket beilleszti a helyére. Az elsõ include a css-eket és javascripteket illeszti be. A második pedig a navbart, ebben találhatóak framework változók, pl:
* {{ @signinstatus }}
* {{ @signinstatuslink }}
ezeknek az értékét állította be a NAVBARController::buttons($f3) úgyhogy itt a bejelentkezett felhasználók, a hirdetésfeladás gombot kapják „/adupload” linkkel és nem bejelenkezettek pedig egy Rólunk feliratú gombot kapnak „/about us” linkkel.

KÉP JÖN IDE A NAVBARRÓL

Autoloader egy framework által kezelt tömb amiben mappanevek vannak eltárolva ennek köszönhetõen a funkciókban nem kell require/incude-olni a az osztályokat. Amikor osztályt példányosítunk vagy staikusan hívunk függvényt automatikusan megnézi a megadott mappákat és amennyiben ugyanolyan néven vannak elmentve a file-ok mint a bennük tárolt osztály (csak egyosztály lehet egy fileban) az autoloader megtalálja õket és meghívja õket helyettünk.
Hibakezelõ rendszer az F3 hibakezõ rendszere kigenerálja
FEJLESZTÕKÖRNYEZET
A programkódok nagy részét a Netbeans IDE-ban írtam meg. (PHP, CSS, HTML)
Az adatbázis kialakításához és menedzseléséhez a Navicat-ot használtam.
Helyi hálózaton való teszteléshez az Easy PHP-t csomagját használtam:
* Apache
* MySQL
Teszteléshez a google chrome-t használtam a megjelenés erre van letesztelve, optimalizálva.
AZ ELKÉSZÜLT PROGRAM
AZ INTERFACE
A megjelenítés mindig 3 részbõl tevõdik össze:
* Navbar, az oldal tetején helyezkedik el,ez tartalmazza a navigációhoz szükséges gombokat, logót, közösségi oldalra linkeket.
* Tartalom, ez tartalmazza mindig az éppen aktulás dolgokat amire a felhasználó kiváncsi, itt történik az interakció, adatcsere nagy része.
* Footer, a lap alján található, az oldalról alapvetõ információk…







Fejezetek:

• Bevezetés (1)
• Eredeti specifikáció (1.1)
• Témaválasztás (1.2)
• Iroalomjegyzék (1.3)
• Halsznált eszközök/technológiák
• programnyelv
• fejlesztõkörnyezet
• Az elkészült program
• Megvalósult dolgok
• Megvalósulatlan funkciók
• Plussz funkciók
• Felhasználói dokumentáció
• Tesztek, problémák, megoldások
• Összefoglalás, konklúzió(vége)


