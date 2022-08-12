<?php
class transaction{

    public static function generate_pin($conn,$request){

        $stmt = $conn->prepare($sql);
        return $stmt->execute();
    }

    public static function add_bill($conn,$request){

        $sql ="INSERT INTO `fees_ledger`(`student_id`, `tran_clock`, `tran_date`, `semester_id`, `academic_yr`, `level_id`, `ref`, `bill`) VALUES (? ,?, ?, ?, ?, ?, ?,?)";
        $stmt = $conn->prepare($sql);
        return $stmt->execute($request);
    }

    public static function add_payment($conn,$request){
        $sql ="INSERT INTO `fees_ledger`(`student_id`, `tran_clock`, `tran_date`, `semester_id`, `academic_yr`, `level_id`, `ref`, `paid`) VALUES (? ,?, ?, ?, ?, ?, ?,?)";
        $stmt = $conn->prepare($sql);
        if(false == $stmt->execute($request)){
            return false;
        }else{
            return $conn->lastInsertId();
        }
    }

    public static function fetch_bill($conn){

        $sql ="SELECT
        fees_ledger.*, 
        student.fname, 
        student.mname, 
        student.sname, 
        student.admission
    FROM
        fees_ledger
        INNER JOIN
        student
        ON 
            fees_ledger.student_id = student.student_id
    WHERE
        fees_ledger.bill > 0
    ORDER BY
        fees_ledger.ledger_id DESC";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $data;

    }

    public static function fetch_limit_bill($conn){

        $sql ="SELECT
        fees_ledger.*, 
        student.fname, 
        student.mname, 
        student.sname, 
        student.admission
    FROM
        fees_ledger
        INNER JOIN
        student
        ON 
            fees_ledger.student_id = student.student_id
    WHERE
        fees_ledger.bill > 0
    ORDER BY
        fees_ledger.ledger_id DESC
    LIMIT 0, 10";
     $stmt = $conn->prepare($sql);
     $stmt->execute();
     $data = $stmt->fetchAll(PDO::FETCH_ASSOC);

     return $data;

    }


    public static function fetch_payment($conn){
        
        $sql ="SELECT
        fees_ledger.*, 
        student.fname, 
        student.mname, 
        student.sname, 
        student.admission
    FROM
        fees_ledger
        INNER JOIN
        student
        ON 
            fees_ledger.student_id = student.student_id
    WHERE
        fees_ledger.paid > 0
    ORDER BY
        fees_ledger.ledger_id DESC";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);

        return $data;
    }

    public static function fetch_limit_payment($conn){

        $sql ="SELECT
        fees_ledger.*, 
        student.fname, 
        student.mname, 
        student.sname, 
        student.admission
    FROM
        fees_ledger
        INNER JOIN
        student
        ON 
            fees_ledger.student_id = student.student_id
    WHERE
        fees_ledger.paid > 0
    ORDER BY
        fees_ledger.ledger_id DESC
    LIMIT 0, 10";
     $stmt = $conn->prepare($sql);
     $stmt->execute();
     $data = $stmt->fetchAll(PDO::FETCH_ASSOC);

     return $data;

    }

    public static function fetch_statement($conn){

        $sql ="SELECT
        student.fname, 
        student.mname, 
        student.sname, 
        student.admission, 
        sum(fees_ledger.bill) AS bill, 
        sum(fees_ledger.paid) AS paid, 
        sum(fees_ledger.bill - fees_ledger.paid) AS bal, 
        count(fees_ledger.student_id) AS total
    FROM
        fees_ledger
        INNER JOIN
        student
        ON 
            fees_ledger.student_id = student.student_id
    GROUP BY
        fees_ledger.student_id
    ORDER BY
        student.fname ASC";
         $stmt = $conn->prepare($sql);
         $stmt->execute();
         $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
 
         return $data;
    }

    public static function verification($conn,$request){

        $sql ="SELECT
        student_id, 
        sum(fees_ledger.bill) AS bill, 
        sum(fees_ledger.paid) AS paid, 
        sum( fees_ledger.bill - fees_ledger.paid ) AS bal
    FROM
        fees_ledger
    WHERE
        fees_ledger.student_id =:id
    GROUP BY
        fees_ledger.student_id";
        $stmt = $conn->prepare($sql);
        $stmt->execute([':id'=>$request]);
        $data = $stmt->fetch(PDO::FETCH_ASSOC);

        $percentage = $data['bill'] * 0.7;
        $payment = $data['paid'];
        if($percentage > $payment){
            $response = "below-payment"; 
        }else{
            $response = "above-payment";
        }
        return $response;
    }

    public static function view_payment_details($conn,$request){

        $sql = "SELECT
        fees_ledger.ledger_id, 
        fees_ledger.student_id, 
        fees_ledger.semester_id, 
        fees_ledger.academic_yr, 
        fees_ledger.level_id, 
        student.fname, 
        student.mname, 
        student.sname, 
        student.admission,
        student.email, 
	    student.mobile
    FROM
        fees_ledger
        INNER JOIN
        student
        ON 
            fees_ledger.student_id = student.student_id
    WHERE
        fees_ledger.ledger_id = :id";
        $stmt = $conn->prepare($sql);
        $stmt->execute([':id'=>$request]);
        $data = $stmt->fetch(PDO::FETCH_ASSOC);
 
        return $data;
    }
}
?>