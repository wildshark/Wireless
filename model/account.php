<?php
class account{

    public static function login($conn,$r){

        if($r[0] !== "admin@admin.com" && $r[1] !== "pass"){
            return false;
        }else{
            return array(
                "user_id"=>1,
                "route"=>"dashboard",
                "token"=> uniqid()
            );
        }
    }
}
?>