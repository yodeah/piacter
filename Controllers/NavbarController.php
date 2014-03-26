<?php
class NAVBARController {

    public static function buttons($f3) {
///BUTTON 1
        if (isset($_SESSION['username'])) {
            $f3->set('signinstatus', 'Hirdetésfeladás');
            $f3->set('signinstatuslink', '/adupload');
        } else {
            $f3->set('signinstatus', 'Rólunk');
            $f3->set('signinstatuslink', '/aboutus');
        }


///BUTTON 2
        if (isset($_SESSION['username'])) {
            $f3->set('signinstatus2', 'Profil');
            $f3->set('signinstatuslink2', '/profile');
        } else {
            $f3->set('signinstatus2', 'Speciális Keresés');
            $f3->set('signinstatuslink2', '/special');
        }


///BUTTON 3
        if (isset($_SESSION['username'])) {
            $f3->set('signinstatus3', 'Üzenetek');
                        $f3->set('signinstatus3after', self::unseenmessages());
            $f3->set('signinstatuslink3', '/messages');
        } else {
            $f3->set('signinstatus3', 'Belépés');
                                    $f3->set('signinstatus3after', '');
            $f3->set('signinstatuslink3', '/signin');
        }


///BUTTON 4
        if (isset($_SESSION['username'])) {            
            $f3->set('signinstatus4', 'Hirdetéseim');
            $f3->set('signinstatus4after', self::unseenads());
            $f3->set('signinstatuslink4', '/myads');
        } else {
            $f3->set('signinstatus4', 'Regisztráció');
            $f3->set('signinstatus4after', '');
            $f3->set('signinstatuslink4', '/register');
        }
    }
    
    private static function unseenads(){
            $sessid = $_SESSION['id'];
            $connection = new PDOConnection;
            $result = $connection->query("SELECT * FROM items WHERE owner=$sessid AND seen=0")->fetchAll(PDO::FETCH_ASSOC);
            if(count($result)==0){
                return NULL;
            }else{
                return'('.count($result).')';
            }
    }
    
    private static function unseenmessages(){
        $sessid = $_SESSION['id'];
            $connection = new PDOConnection;
            $result = $connection->query("SELECT * FROM messages WHERE toid=$sessid AND seen=0")->fetchAll(PDO::FETCH_ASSOC);
            if(count($result)==0){
                return NULL;
            }else{
                return'('.count($result).')';
            }
    }

}
