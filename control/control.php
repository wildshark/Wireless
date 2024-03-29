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

            header("location: ?route=student&ui=list&status=1");

            //require($template['main']);
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
                $mobile = "";
                $school = "";
                $stream = "";
                $btn = "add-student";
                $page = $template['student-form'];
            }elseif($req['ui'] === "update"){
                $q[] = $_GET['student'];
                $st = student::view($conn,$q);
                $fname = $st['fname'];
                $mname = $st['mname'];
                $sname = $st['sname'];
                $yr = $st['entery_yr'];
                $admission = $st['admission'];
                $dob = $st['dob'];
                $nationality = $st['nationality'];
                $gender = $st['gender'];
                $religion = $st['religion'];
                $email = $st['email'];
                $mobile = $st['mobile'];
                $school = $st['school_id'];
                $stream = $st['stream'];
                $_SESSION['sudent_id'] = $st['student_id'];
                $btn = "update-student";
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
                $datasheet = student::fetch($conn);
                $datasheet = _student_data($datasheet);
                $page = $template['table'];
            }
            require($page);
        break;

        case"transaction";
            if($req['ui'] == "bill"){
                $ref="BL".time();
                $date= date("mm/dd/yyy");
                $student="";
                $year="";
                $semester="";
                $level ="";
                $amount="";
                $btn = "add-bill";
                $datasheet = transaction::fetch_limit_bill($conn);
                $datasheet = current_bill_generated($datasheet);
                $page = $template['bill-form'];
            }elseif($req['ui'] == "payment"){
                $ref="PP".time();
                $date= date("mm/dd/yyy");
                $student="";
                $level ="";
                $year="";
                $semester="";
                $amount="";
                $btn = "add-payment";
                $datasheet = transaction::fetch_limit_payment($conn);
                $datasheet = current_payment_maked($datasheet);
                $page = $template['payment-form'];
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

        case"wifi";
            if($req['ui'] === "pin-generator"){
                $student = $_REQUEST['student'];
                $fname = $student['fname'];
                $mname = $student['mname'];
                $sname = $student['sname'];
                $admission = $student['admission'];
                $mobile = $student['mobile'];
                $email = $student['email'];
                $semester = $student['semester_id'];
                $yrs = $student['academic_yr'];
                
                 
               
                $response = student::fetchSingleToken($conn);
                if($response == false){
                    echo"<h1>System fails to issue token, contact administrator";
                    exit;
                }else{ 
                    $uTKN[] = $admission;
                    //$uTKN[] = '2022/2030';
                    $uTKN[] = $response['tokenID'];

                    $usename = $response['user'];
                    $password = $response['utoken'];
                    $response = student::updateToken($conn,$uTKN);
                    if($response === false){
                        echo"<h1>System error contact administrator";
                        exit;
                    }else{
                        $text = "Your wireless\nusername:".$usename."\nPassword:".$password;
                        $response = SendSMS($mobile,$text);
                        $page = $template['pin-form'];
                    }
                }
            }
            require($page);
        break;

        case"token";
            if($req['ui'] ==="create"){
                $data = student::fetch_genrated_token($conn);
                $datasheet = generation_token_sheet($data);
                $btn ="create-token";
                require($template['genrate']);
            }elseif($req['ui'] ==="export"){
                require($template['export-form']);
            }
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

        case"add-student";
            $q[] = $req['fname'];
            $q[] = $req['mname'];
            $q[] = $req['surname'];
            $q[] = $req['admission'];
            $q[] = $req['dob'];
            $q[] = $req['email'];
            $q[] = $req['mobile'];
            $q[] = $req['religion'];
            $q[] = $req['gender'];
            $q[] = $req['year'];
            $q[] = $req['nationality'];
            $q[] = $req['stream'];
            $q[] = $req['school'];
            $response = student::add($conn,$q);
            if($response == false){
                $url['route']="student";
                $url['ui']="new";
                $url['status']=100;
            }else{
                $url['route']="student";
                $url['ui']="update";
                $url['student']=$response;
                $url['status']=200;
            }
        break;

        case"update-student";
            $q[] = $req['fname'];
            $q[] = $req['mname'];
            $q[] = $req['surname'];
            $q[] = $req['admission'];
            $q[] = $req['dob'];
            $q[] = $req['email'];
            $q[] = $req['mobile'];
            $q[] = $req['religion'];
            $q[] = $req['gender'];
            $q[] = $req['year'];
            $q[] = $req['nationality'];
            $q[] = $req['stream'];
            $q[] = $req['school'];
            $q[] = $_SESSION['sudent_id'];
            $response = student::update($conn,$q);
            if($response == false){
                $url['route']="student";
                $url['ui']="update";
                $url['student']=$_SESSION['sudent_id'];
                $url['status']=100;
            }else{
                $url['route']="student";
                $url['ui']="update";
                $url['student']=$_SESSION['sudent_id'];
                $url['status']=200;
            }
        break;

        case"add-bill";

            $search = student::search($conn,$req['student']);
            if($search == false){
                $url['route'] = "transaction";
                $url['ui'] ="bill";
                $url['status'] ="student not found";
            }else{
                $q[] = $search['student_id'];
                $q[] = date("mm-dd-yy H:i:s");
                $q[] = $req['date'];
                $q[] = $req['semester'];
                $q[] = $req['year'];
                $q[] = $req['level'];
                $q[] = $req['ref'];
                $q[] = $req['amount'];
                $response = transaction::add_bill($conn,$q);
                if($response == false){
                    $url['route'] = "transaction";
                    $url['ui'] ="bill";
                    $url['status'] =100;

                }else{
                    $url['route'] = "transaction";
                    $url['ui'] ="bill";
                    $url['status'] =200;
                }
            }
        break;

        case"add-payment";

            $search = student::search($conn,$req['student']);

            if($search == false){
                $url['route'] = "transaction";
                $url['ui'] ="bill";
                $url['status'] ="student not found";
            }else{
                $q[] = $search['student_id'];
                $q[] = date("mm-dd-yy H:i:s");
                $q[] = $req['date'];
                $q[] = $req['semester'];
                $q[] = $req['year'];
                $q[] = $req['level'];
                $q[] = $req['ref'];
                $q[] = $req['amount'];
                $payment = transaction::add_payment($conn,$q);
                if($payment == false){
                    $url['route'] = "transaction";
                    $url['ui'] ="payment";
                    $url['status'] =100;

                }else{
                    $verify = $search['student_id'];
                    $response = transaction::verification($conn,$verify);
                    if($response === 'below-payment'){
                        $url['route'] = "transaction";
                        $url['ui'] ="payment";
                        $url['status'] ="fees payment is below 70%";  
                    }else{
                        $response = transaction::view_payment_details($conn,$payment);
                        if($response == false){
                            echo "<h1>System Failure Contact Administrator";
                            exit;
                        }else{
                            $url['route'] = "wifi";
                            $url['ui'] ="pin-generator";
                            $url['student'] = $response;
                            $url['token'] = uniqid();
                            $url['status'] =200;
                        }
                    }
                }
            }
        break;

        case"export-csv";
            $yr = $_REQUEST['yrs'];
            $sem = $_REQUEST['sem'];
            $response = student::fetchtoken($conn,$yr,$sem);
            var_dump($response);
            exit;
        break;

        case"create-token";
            $token = GenrateToken($req);
            if(FALSE == student::addToken($conn,$token)){
                $url['route'] = "token";
                $url['ui'] ="create";
                $url['status'] =100;
            }else{
                $url['route'] = "token";
                $url['ui'] ="create";
                $url['status'] =200;
            }
        break;
    }
    return $url;
}
?>