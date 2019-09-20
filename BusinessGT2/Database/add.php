<?php 
/*              MOD LOG                             
            added login page 9/12
 *          added function to add data to the database 9/12
 *          refactored functions and relevant code to the database folder 9/12
 *          added navigation links to the admin page 9/12
 *          added a function to delete data from the admin page 9/13
 *          minor aesthetic updates 9/13
 *  */

class changeDB{
    
    

     public static function addToDB() {
         
         $visitor_reason = filter_input(INPUT_POST, 'reason');
$visitor_fname = filter_input(INPUT_POST, 'firstName');
$visitor_lname = filter_input(INPUT_POST, 'lastName');
$visitor_email = filter_input(INPUT_POST, 'electronicMailAddress');
$visitor_msg = filter_input(INPUT_POST, 'custExp');
$employeeID = 1;

         include_once 'database.php';
         //include_once 'thankyou.php';
         
         $db = Database::getDB();
       
        $query = 'INSERT INTO qccvisitor
                         (visitor_reason, visitor_fname, visitor_lname, visitor_email, visitor_msg, employeeID)
                      VALUES
                         (:reason, :firstName, :lastName, :electronicMailAddress, :custExp, 1)';
        $statement = $db->prepare($query);
        $statement->bindValue(':reason', $visitor_reason);
        $statement->bindValue(':firstName', $visitor_fname);
        $statement->bindValue(':lastName', $visitor_lname);
        $statement->bindValue(':electronicMailAddress', $visitor_email);
        $statement->bindValue(':custExp', $visitor_msg);
        //$statement->bindValue(1, $employeeID);
        $statement->execute();
        $statement->closeCursor();
    }
    
    public static function delToDB() {
         include_once 'database.php';
         //include_once 'thankyou.php';
         
         $db = Database::getDB();
        $action = filter_input(INPUT_POST, 'action');
        if ($action == 'delete_visitor') {
    $visitor_id = filter_input(INPUT_POST, 'QCCvisitor_ID', FILTER_VALIDATE_INT);

    $query = 'DELETE FROM qccvisitor
                         
                      WHERE QCCvisitor_id = :QCCvisitor_ID';
    $statement = $db->prepare($query);
    $statement->bindValue(':QCCvisitor_ID', $visitor_id);
    $statement->execute();
   
    $statement->closeCursor();
    //echo "Fields: " . $visitor_fname; 
    header("Location: admin.php");
        }
    }
}
?>

  
   

