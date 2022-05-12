<?php

function connection($_dbconn){
    $servername = $_dbconn['host'];
    $username = $_dbconn['usr'];
    $password = $_dbconn['pwd'];
    $_CONN = new PDO("mysql:host=$servername;dbname=wireless", $username, $password);
    return $_CONN;
}

?>