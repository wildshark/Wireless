<?php
class transaction{

    public static function add_bill($conn,$r){

    }

    public static function add_payment($conn,$r){

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


}
?>