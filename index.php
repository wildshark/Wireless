<?php
session_start();
include("control/global.php");
include("model/account.php");
include("model/transaction.php");
include("control/function.php");

$servername = $_dbconn['host'];
$username = $_dbconn['usr'];
$password = $_dbconn['pwd'];

try {
        $_CONN = new PDO("mysql:host=$servername;dbname=wireless", $username, $password);
        // set the PDO error mode to exception
        $_CONN->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch(PDOException $e) {
        echo "Connection failed: " . $e->getMessage();
        die();
    }

    if(!isset($_REQUEST['submit'])){
        if(!isset($_REQUEST['route'])){
            require($_TEMPLATE['login']);
        }else{
            switch($_REQUEST['route']){

                case"dashboard";
                    require($_TEMPLATE['main']);
                break;

                case"fees";
                    $table_header="";
                    if($_REQUEST['ui'] == "bill"){
                        $table_header ="
                            <tr>
                                <th>Name</th>
                                <th>Position</th>
                                <th>Office</th>
                                <th>Age</th>
                                <th>Start date</th>
                                <th>Salary</th>
                            </tr>
                        ";
                        $view = _bill_data($_CONN);
                    }elseif($_REQUEST['ui'] == "payment"){
                        $table_header ="
                        <tr>
                            <th>Name</th>
                            <th>Position</th>
                            <th>Office</th>
                            <th>Age</th>
                            <th>Start date</th>
                            <th>Salary</th>
                        </tr>
                    ";
                        $view = _payment_data($_CONN);
                    }elseif($_REQUEST['ui'] == "statement"){
                        $table_header ="
                            <tr>
                                <th>Name</th>
                                <th>Position</th>
                                <th>Office</th>
                                <th>Age</th>
                                <th>Start date</th>
                                <th>Salary</th>
                            </tr>
                        ";
                        $view = _statment_data($_CONN);
                    }
                    require($_TEMPLATE['table']);
                break;

                case"wireless-token";

                break;




            }
        }
    }else{
        switch($_REQUEST['submit']){

            case"sign-in";
                $q[] = $_REQUEST['email'];
                $q[] = $_REQUEST['password'];
                $response = account::login($_CONN,$q);
            break;
        }
        header("location: ?".http_build_query($response));
    }
$_CONN=null;    
?>