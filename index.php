<?php
session_start();
$f3 = require('./lib/base.php');
$f3->set('AUTOLOAD', 'Controllers/; Connections/; Connections/; Classes/; Checkers/');
$f3->set('CACHE',FALSE);
$f3->set('UI','View/');
$f3->set('DEBUG',3);
//$f3->set('ESCAPE',FALSE);
error_reporting(E_ALL);

$f3->route('GET /', 'IndexController->display');
$f3->route('GET /Register', 'RegisterController->display');
$f3->route('POST /Register', 'RegisterController->update');
$f3->route('GET /Signin', 'SigninController->display');
$f3->route('POST /Signin', 'SigninController->update');
$f3->route('GET /Logout', 'SigninController->logout');
$f3->route('GET /Adupload', 'AdController->aduploadsite');
$f3->route('GET /Ad/@adid','AdController->specificad');
$f3->route('GET /Profile/@username','IndexController->specificuser');
$f3->route('GET /Profile','IndexController->profile');
$f3->route('POST /Upload_file', 'AdController->adupload');
$f3->route('GET /Search', 'IndexController->search');
$f3->route('GET /Success', 'RegisterController->success');
$f3->route('GET /Item', 'IndexController->item');
$f3->route('GET /Myads', 'AdController->myads');
$f3->route('GET /Newmessage', 'MessageController->newmessage');
$f3->route('GET /Messages', 'MessageController->mymessages');
$f3->route('POST /Upload_message', 'MessageController->upload_message');

$f3->route('GET|HEAD|POST /index', function($f3) {
    $f3->reroute('/');
}
);

$f3->run();
?>
