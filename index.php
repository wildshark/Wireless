<?php
session_start();

include("control/global.php");
include("control/function.php");
include("control/control.php");
include("model/student.php");
include("model/account.php");
include("model/transaction.php");
$_CONN = connection($_dbconn);
    if(!isset($_REQUEST['submit'])){
        if(!isset($_REQUEST['route'])){
            require($_TEMPLATE['login']);
        }else{
            __webpage($_CONN,$_TEMPLATE,$_CAPTION,$_REQUEST);
        }
    }else{
        $response = __moducles($_CONN,$_TEMPLATE,$_CAPTION,$_REQUEST);
        header("location: ?".http_build_query($response));
    }
$_CONN=null;    
?>