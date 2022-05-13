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
            $id = $r['student_id'];
            $admission = $r['admission'];
            $mobile = $r['mobile'];
            $stream = $r['stream'];
            $yr = $r['entery_yr'];
            $url = "?route=student&ui=update&student=".$id;
            $data.= "
                <tr>
                    <td>{$name}</td>
                    <td>{$admission}</td>
                    <td>{$mobile}</td>
                    <td>{$yr}</td>
                    <td>{$stream}</td>                
                    <td><a href='{$url}'>view</a></td>
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
            $amt = number_format($r['bill'],2);
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
            $amt = number_format($r['paid'],2);
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
                $bill = number_format($r['bill'],2);
            }

            if(!isset($r['paid'])){
                $paid = 0;
            }else{
                $paid = number_format($r['paid'],2);
            }

            if(!isset($r['bal'])){
                $balance = 0;
            }else{
                $balance = number_format($r['bal'],2);
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

function current_bill_generated($response){
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
            $ref = $r['ref'];
            $admission =$r['admission'];
            $level = $r['level_id'];
            $semester = $r['semester_id'];
            $yr = $r['academic_yr'];
            if(!isset($r['bill'])){
                $amt = 0;
            }else{
                $amt = number_format($r['bill'],2);
            }

            if(!isset($n)){
                $n = 1;
            }else{
                $n = $n + 1;
            }

            $data.= "
                <tr>
                    <th>{$n}</th>
                    <td>{$name}</td>
                    <td>{$admission}</td>
                    <td>{$yr}</td>
                    <td>{$semester}</td>
                    <td>{$level}</td>
                    <td>{$ref}</td>
                    <td class='color-primary'>{$amt}</td>
                </tr>
            ";
        }
    }
    return $data;
}

function current_payment_maked($response){
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
            $ref = $r['ref'];
            $admission =$r['admission'];
            $level = $r['level_id'];
            $semester = $r['semester_id'];
            $yr = $r['academic_yr'];
            if(!isset($r['paid'])){
                $amt = 0;
            }else{
                $amt = number_format($r['paid'],2);
            }

            if(!isset($n)){
                $n = 1;
            }else{
                $n = $n + 1;
            }

            $data.= "
                <tr>
                    <th>{$n}</th>
                    <td>{$name}</td>
                    <td>{$admission}</td>
                    <td>{$yr}</td>
                    <td>{$semester}</td>
                    <td>{$level}</td>
                    <td>{$ref}</td>
                    <td class='color-primary'>{$amt}</td>
                </tr>
            ";
        }
    }
    return $data;
}
?>