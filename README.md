# Wireless
 School Wireless Token Genrator
switch($request['submit']){

        case"sign-in";
            $response = account::login($conn,$request);
            if($response == false){
                $d['usr'] ="login";
            }else{
                $d = $response;
            }
        break;
    }

    return $d;