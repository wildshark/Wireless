<?php

function connection($_dbconn){
    $servername = $_dbconn['host'];
    $username = $_dbconn['usr'];
    $password = $_dbconn['pwd'];
    $_CONN = new PDO("mysql:host=$servername;dbname=wireless", $username, $password);
    return $_CONN;
}

function __webpage($conn,$template,$lbl,$req){
    
    $_GENDER =[
        "Male",
        "Female",
        "Others"
    ];
    
    $_STREAM = [
        'Regular',
        'Weekend'
    ];
    
    $_SEMESTER =[
        "1st Semester",
        "2nd Semester"
    ];
    
    $_LEVEL = [
        100,
        200,
        300,
        400
    ];

    $_SCHOOL = [
        "STM",
        "SST",
        "SPS",
        "SDM"
    ];

    switch($req['route']){

        case"dashboard";
            require($template['main']);
        break;

        case"student";
            if($req['ui'] === "new"){
                $fname = "";
                $mname = "";
                $sname = "";
                $yr = "";
                $admission = "";
                $dob = "";
                $nationality = "";
                $gender = "";
                $religion = "";
                $email = "";
                $password = "";
                $school = "";
                $stream = "";
                $page = $template['student-form'];
            }elseif($req['ui'] ==="list"){
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
                $page = $template['table'];
            }
            require($page);
        break;

        case"fees";
            $table_header="";
            if($req['ui'] == "bill"){
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
            }elseif($req['ui'] == "payment"){
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
            }elseif($req['ui'] == "statement"){
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
            require($template['table']);
        break;

        case"wireless-token";

        break;
    }
}

function __moducles($conn,$template,$lbl,$req){

    switch($req['submit']){

        case"sign-in";
            $q[] = $req['email'];
            $q[] = $req['password'];

            $response = account::login($conn,$q);
            if($response == false){
                $url['user']="user-log-zero";
            }else{
                $url['route'] = "dashboard";
                $url['status'] = true;
            }   
        break;
    }

    return $url;
}
?>