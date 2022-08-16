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

        $sql="SELECT student.student_id, student.fname, student.mname, student.sname, student.admission, student.mobile, student.email FROM student WHERE student.admission LIKE '%$request%'";
         $stmt = $conn->prepare($sql);
         $stmt->execute();
         $data = $stmt->fetch(PDO::FETCH_ASSOC);
 
         return $data;
    }

    public static function addToken($conn,$request){

        $stmt = $conn->prepare($request);
        return $stmt->execute();
    }

    public static function updateToken($conn,$request){

        $sql="UPDATE `internet_token` SET `student_index` =? WHERE `tokenID` =?";
        $stmt = $conn->prepare($sql);
        $stmt->execute($request);
        return $conn->lastInsertId();
    }

    public static function fetchSingleToken($conn){

        $sql="SELECT internet_token.* FROM internet_token WHERE internet_token.student_index IS NULL";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $data = $stmt->fetch(PDO::FETCH_ASSOC);

        return $data;
    }

    public static function fetch_genrated_token($conn){

        $sql="SELECT * FROM `internet_token` LIMIT 0,1000";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $data;
    }

    public static function fetchtoken($conn,$acd_yr,$semester){

        $sql ="SELECT student_index, utoken FROM internet_token WHERE internet_token.acd_yr LIKE '%$acd_yr%' AND internet_token.semester LIKE '%$semester%'";
        $stmt = $conn->prepare($sql);
        $stmt->execute();   
       
        $filename = time()."pwd.csv";
        $list = array ();

          // Append results to array
          array_push($list, array("## START OF USER TABLE ##"));
          while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
              array_push($list, array_values($row));
          }
          array_push($list, array("## END OF USER TABLE ##"));

          // Output array into CSV file
          $fp = fopen('php://output', 'w');
          header('Content-Type: text/csv');
          header('Content-Disposition: attachment; filename="'.$filename.'"');
          foreach ($list as $ferow) {
              fputcsv($fp, $ferow);
          }


    }
}

?>