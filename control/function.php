<?

function _bill_data($conn){

    $data ="";
    if($response == false){
        $data ="";
    }else{
        foreach($response as $r){
            $i = "
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
            </tr>
            ";
            $data[] = $i;
        }
    }
    return $data;
}


function _payment_data($conn){

    $data ="";
    if($response == false){
        $data ="";
    }else{
        foreach($response as $r){
            $i = "
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
            </tr>
            ";
            $data[] = $i;
        }
    }
    return $data;
}


function _statement_data($conn){

    $data ="";
    if($response == false){
        $data ="";
    }else{
        foreach($response as $r){
            $i = "
            <tr>
                <td>Tiger Nixon</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>2011/04/25</td>
                <td>$320,800</td>
            </tr>
            ";
            $data[] = $i;
        }
    }
    return $data;
}
?>