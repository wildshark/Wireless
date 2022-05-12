<?php
class student{

    public static function fetch_student($conn){

        $sql ="SELECT * FROM `student` LIMIT 0,1000";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $data;
    }
}

?>