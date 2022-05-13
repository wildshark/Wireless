<?php
class student{

    public static function fetch($conn){

        $sql ="SELECT * FROM `student` LIMIT 0,1000";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $data;
    }

    public static function view($conn,$request){
        $sql ="SELECT * FROM `student` WHERE `student_id` =?";
        $stmt = $conn->prepare($sql);
        $stmt->execute($request);
        $data = $stmt->fetch(PDO::FETCH_ASSOC);

        return $data;
    }

    public static function add($conn,$request){
        $sql ="INSERT INTO `student`(`fname`, `mname`, `sname`, `admission`, `dob`, `email`, `mobile`, `religion`, `gender`, `entery_yr`, `nationality`, `stream`, `school_id`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
        $stmt = $conn->prepare($sql);
        $data = $stmt->execute($request);
        if($data == false){
            $data = false;
        }else{
            $data = $conn->lastInsertId();
        }
        return $data;
    }

    public static function update($conn,$request){

        $sql ="UPDATE `student` SET `fname` = ?, `mname` = ?, `sname` = ?, `admission` = ?, `dob` = ?, `email` = ?, `mobile` = ?, `religion` = ?, `gender` = ?, `entery_yr` = ?, `nationality` = ?, `stream` = ?, `school_id` = ? WHERE `student_id` =?";
        $stmt = $conn->prepare($sql);
        return  $stmt->execute($request);
        
    }

    public static function search($conn,$request){

        $sql="SELECT
        student.student_id, 
        student.fname, 
        student.mname, 
        student.sname, 
        student.admission
    FROM
        student
    WHERE
        student.admission LIKE '%$request%'";
         $stmt = $conn->prepare($sql);
         $stmt->execute();
         $data = $stmt->fetch(PDO::FETCH_ASSOC);
 
         return $data;
    }


}

?>