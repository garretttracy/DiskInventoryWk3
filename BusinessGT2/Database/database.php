<?php 
/*              MOD LOG                             
            added login page 9/12
 *          added function to add data to the database 9/12
 *          refactored functions and relevant code to the database folder 9/12
 *          added navigation links to the admin page 9/12
 *          added a function to delete data from the admin page 9/13
 *          minor aesthetic updates 9/13
 * 
 *          Removed try catch block that was preventing correct functioning; specifically allowing the include to trigger corrrectly 9/19
 *  */
class Database {
    
    private static $dsn = 'mysql:host=localhost;dbname=megaglassincdb';
    private static $username = 'root';
    private static $password = 'Pa$$w0rd';
    private static $db;

    private function __construct() {}

    public static function getDB () {
        if (!isset(self::$db)) {
            try {
                self::$db = new PDO(self::$dsn,
                                     self::$username,
                                     self::$password);
                //echo "you are running through the getdb function";
            } catch (PDOException $e) {
                //$error_message = "We are experiencing technical difficulties";//
                $e->getMessage();
                
                //include('../errors/database_error.php');
                include('./database_error.php');
                exit();
            }
        } 
       
        
        return self::$db;
    }
//    
//    public static function addToDB() {
//        $query = 'INSERT INTO qccvisitor
//                         (visitor_reason, visitor_fname, visitor_lname, visitor_email, visitor_msg, employeeID)
//                      VALUES
//                         (:reason, :firstName, :lastName, :electronicMailAddress, :custExp, 1)';
//        $statement = self::$db->prepare($query);
//        $statement->bindValue(':reason', $visitor_reason);
//        $statement->bindValue(':firstName', $visitor_fname);
//        $statement->bindValue(':lastName', $visitor_lname);
//        $statement->bindValue(':electronicMailAddress', $visitor_email);
//        $statement->bindValue(':custExp', $visitor_msg);
//        //$statement->bindValue(1, $employeeID);
//        $statement->execute();
//        $statement->closeCursor();
//    }
}


//try {
//    $db = new PDO($dsn, $username, $password);            taken from admin php, removed!
//} catch (PDOException $e) {
//    $error_message = $e->getMessage();
//    /* include('database_error.php'); */
//    echo "DB Error: " . $error_message;
//    exit();
//}

?>