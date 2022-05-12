<?php
class account{

    public static function login($conn,$request){

        $sql ="SELECT
        admin_account.*
    FROM
        admin_account
    WHERE
        admin_account.email = ? AND
        admin_account.`password` = ?";
        $stmt = $conn->prepare($sql);
        $stmt->execute($request);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}
?>