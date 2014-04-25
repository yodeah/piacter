<?php
session_start();
$f3 = require('./lib/base.php');
$f3->set('AUTOLOAD', 'Controllers/; Connections/; Connections/; Classes/; Checkers/');
$f3->set('CACHE',FALSE);
$f3->set('UI','View/');
$f3->set('DEBUG',3);
//$f3->set('ESCAPE',FALSE);
error_reporting(E_ALL);
//set_time_limit(2);

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
$f3->route('GET /Message/@messageid', 'MessageController->specificmessage');
$f3->route('POST /Upload_message', 'MessageController->upload_message');
$f3->route('POST /Upload_comment', 'CommentController->upload_comment');
$f3->route('GET /Newcomment', 'CommentController->newcommentcall');
$f3->route('GET /Replycomment', 'CommentController->replycomment');
$f3->route('GET /Comment/@commentid','CommentController->specificcomment');
$f3->route('POST /Asapbuy','SalesController->asapbuy');
$f3->route('POST /Newbid','SalesController->newbid');
$f3->route('GET /Cron1','CronController->cron1');
$f3->route('GET /Rate/@rateid','RateController->ratesite');
$f3->route('GET /Succesfullrate','RateController->ratesuccess');
$f3->route('POST /Ratecheck','RateController->ratecheck');
$f3->route('POST /Special','SpecSearchController->index');
$f3->route('POST /Special_process','SpecSearchController->process');

$f3->route('GET|HEAD|POST /index', function($f3) {
    $f3->reroute('/');
}
);

$f3->run();
?>
