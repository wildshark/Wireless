<?php
session_start();


include("control/global.php");
include("control/control.php");
include("control/function.php");
include("model/student.php");
include("model/account.php");
include("model/transaction.php");
$conn = connection($_dbconn);
    if(!isset($_REQUEST['submit'])){
        if(!isset($_REQUEST['route'])){
            require($_TEMPLATE['login']);
        }else{
            switch($_REQUEST['route']){

                case"dashboard";
                    require($_TEMPLATE['main']);
                break;

                case"student";
                    $table_header ="
                        <tr>
                            <th>Name</th>
                            <th>Admission</th>
                            <th>Mobile</th>
                            <th>Entery Yr.</th>
                            <th>Stream</th>
                            <th>Salary</th>
                        </tr>
                        ";
                    $datasheet = student::fetch_student($conn);
                    $datasheet = _student_data($datasheet);
                    require($_TEMPLATE['table']);
                break;

                case"fees";
                    $table_header="";
                    if($_REQUEST['ui'] == "bill"){
                        $table_header ="
                            <tr>
                                <th>Ref</th>
                                <th>Date</th>
                                <th>Name</th>
                                <th>Admission</th>
                                <th>Yr</th>
                                <th>Level</th>
                                <th>Amount</th>
                            </tr>
                        ";
                        $datasheet = transaction::fetch_bill($conn);
                        $datasheet = _bill_data($datasheet);
                    }elseif($_REQUEST['ui'] == "payment"){
                        $table_header ="
                            <tr>
                                <th>Ref</th>
                                <th>Date</th>
                                <th>Name</th>
                                <th>Admission</th>
                                <th>Yr</th>
                                <th>Level</th>
                                <th>Amount</th>
                            </tr>
                        ";
                        $datasheet = transaction::fetch_payment($conn);
                        $datasheet = _payment_data($datasheet);
                    }elseif($_REQUEST['ui'] == "statement"){
                        $table_header ="
                            <tr>
                                <th>S/N</th>
                                <th>Name</th>
                                <th>Admission</th>
                                <th>Bill</th>
                                <th>Paid</th>
                                <th>Balance</th>
                            </tr>
                        ";
                        $datasheet = transaction::fetch_statement($conn);
                        $datasheet = _statement_data($datasheet);
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