<?php

function combobox($str){

    $out ="<option></option>";
    foreach($str as $i){
        $out.= "<option>".$i."</option>";
    }
    return $out;
}

function _student_data($response){
    $data ="";
    if($response == false){
        $data ="";
    }else{
        foreach($response as $r){
            if((!isset($r['mname']))||($r['mname'] =='')){
                $name = $r['fname']." ".$r['sname'];
            }else{
                $name = $r['fname']." ".$r['mname']." ".$r['sname'];
            }
            $admission = $r['admission'];
            $mobile = $r['mobile'];
            $stream = $r['stream'];
            $yr = $r['entery_yr'];
            $data.= "
                <tr>
                    <td>{$name}</td>
                    <td>{$admission}</td>
                    <td>{$mobile}</td>
                    <td>{$yr}</td>
                    <td>{$stream}</td>                
                    <td>$320,800</td>
                </tr>
            ";
        }
    }
    return $data;
}

function _bill_data($response){

    $data ="";
    if($response == false){
        $data ="";
    }else{
        foreach($response as $r){
            if((!isset($r['mname']))||($r['mname'] =='')){
                $name = $r['fname']." ".$r['sname'];
            }else{
                $name = $r['fname']." ".$r['mname']." ".$r['sname'];
            }
            $admission = $r['admission'];
            $ref = $r['ref'];
            $date = $r['tran_date'];
            $semester = $r['semester_id'];
            $yr = $r['academic_yr'];
            $level = $r['level_id'];
            $amt = $r['bill'];
            $data.= "
            <tr>
                <td>{$ref}</td>
                <td>{$date}</td>
                <td>{$name}</td>
                <td>{$admission}</td>
                <td>{$yr}</td>
                <td>{$level}</td>                
                <td>{$amt}</td>
            </tr>
            ";
        }
    }
    return $data;
}


function _payment_data($response){

    $data ="";
    if($response == false){
        $data ="";
    }else{
        foreach($response as $r){
            if((!isset($r['mname']))||($r['mname'] =='')){
                $name = $r['fname']." ".$r['sname'];
            }else{
                $name = $r['fname']." ".$r['mname']." ".$r['sname'];
            }
            $admission = $r['admission'];
            $ref = $r['ref'];
            $date = $r['tran_date'];
            $semester = $r['semester_id'];
            $yr = $r['academic_yr'];
            $level = $r['level_id'];
            $amt = $r['bill'];
            $data.= "
            <tr>
                <td>{$ref}</td>
                <td>{$date}</td>
                <td>{$name}</td>
                <td>{$admission}</td>
                <td>{$yr}</td>
                <td>{$level}</td>                
                <td>{$amt}</td>
            </tr>
            ";
        }
    }
    return $data;
}


function _statement_data($response){

    $data ="";
    if($response == false){
        $data ="";
    }else{
        foreach($response as $r){
            if((!isset($r['mname']))||($r['mname'] =='')){
                $name = $r['fname']." ".$r['sname'];
            }else{
                $name = $r['fname']." ".$r['mname']." ".$r['sname'];
            }

            $admission =$r['admission'];
            
            if(!isset($r['bill'])){
                $bill = 0;
            }else{
                $bill = $r['bill'];
            }

            if(!isset($r['paid'])){
                $paid = 0;
            }else{
                $paid = $r['paid'];
            }

            if(!isset($r['bal'])){
                $balance = 0;
            }else{
                $balance = $r['bal'];
            }

            if(!isset($n)){
                $n = 1;
            }else{
                $n = $n + 1;
            }

            $data.= "
            <tr>
                <td>{$n}</td>
                <td>{$name}</td>
                <td>{$admission}</td>
                <td>{$bill}</td>
                <td>{$paid}</td>
                <td>{$balance}</td>
            </tr>
            ";
        }
    }
    return $data;
}
?>