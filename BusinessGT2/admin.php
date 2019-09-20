<?php

//echo "you are here";
/*              MOD LOG                             
            added login page 9/12
 *          added function to add data to the database 9/12
 *          refactored functions and relevant code to the database folder 9/12
 *          added navigation links to the admin page 9/12
 *          added a function to delete data from the admin page 9/13
 *          minor aesthetic updates 9/13
 * 
 *          changed references to other files from "../" to "./" this allowed error messages and pages to trigger correctly 9/19
 *  */
//
//$username = filter_input(INPUT_POST, 'username');
//$password = filter_input(INPUT_POST, 'password');
//
//if(empty($username) || empty($password)){
//    header("Location:adminLogin.html");
//}

try{
    //$error_test = "you are here";
    //echo $error_test;
    include_once './Database/database.php';
    //echo $error_test."2";
    $db = Database::getDB();
   //echo $error_test."22";
} catch (Exception $ex) {
   // echo $error_test."3";
    echo 'Connection error: ' . $ex->getMessage();
    
    exit();
}
//echo $error_test."4";

//$dsn = 'mysql:host=localhost;dbname=megaglassincdb';
//$username = 'root';
//$password = 'Pa$$w0rd';



$action = filter_input(INPUT_POST, 'action');
if ($action == NULL) {
    $action = 'list_visitors';
}
  // Add the product to the database  
    
    
if ($action == 'list_visitors') {
// Read visitors 
    
    $query = 'SELECT * FROM qccvisitor
                         
                      ORDER BY visitor_fname';
    $statement = $db->prepare($query);
    $statement->execute();
    $qccvisitors = $statement->fetchAll();
    $statement->closeCursor();
    /* echo "Fields: " . $visitor_name . $visitor_email . $visitor_msg; */
} else if ($action == 'delete_visitor') {
    try {
        include_once './Database/add.php';
        changeDB::delToDB();
    } catch (Exception $ex) {
        echo 'Connection error: ' . $e->getMessage();
        exit();
    }
//    $visitor_id = filter_input(INPUT_POST, 'QCCvisitor_ID', FILTER_VALIDATE_INT);
//
//    $query = 'DELETE FROM qccvisitor
//                         
//                      WHERE QCCvisitor_id = :QCCvisitor_ID';
//    $statement = $db->prepare($query);
//    $statement->bindValue(':QCCvisitor_ID', $visitor_id);
//    $statement->execute();
//   
//    $statement->closeCursor();
//    //echo "Fields: " . $visitor_fname; 
//    header("Location: admin.php");
}
?>


<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <title>Hi, Admin!</title>
        <style type="text/css">
            @import url("CSS/stylesheet.css");
            body {
                background-image: url(images/bkgdContact.jpg);
            }
        </style>
        <!-- Mobile -->
        <link href="css/bp_styles1.css" rel="stylesheet" />
        <script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
    </head>

    <body>
<!--        <div id="logo"><img src="images/logo.png" width="220" height="103" alt="Eva Jones Design"></div>-->
        <nav>
            <ul>
                <li><a href="home.html">Home</a></li>
                <li><a href="newsletter.html">Subscribe to our Newsletter!</a></li>
                <li><a href="contact.html">Questions, Comments, or Concerns?</a></li>
            </ul>
        </nav>
        <header>
            <h1>Adminisrator!</h1>
        </header>
        <section>
            <h2>Administration page</h2>

            <table>
                <tr>
                    <th>First name</th>
                    <th>Last Name</th>
                    <th>email</th>
                    <th>question comment or concern</th>
                    <th> message </th>
                    <th>Employee Responsible</th>
                </tr>
<?php foreach ($qccvisitors as $qccvisitor) : ?>
                    <tr>
                        <td><?php echo $qccvisitor['visitor_fname']; ?></td>
                        <td><?php echo $qccvisitor['visitor_lname']; ?></td>
                        <td><?php echo $qccvisitor['visitor_email']; ?></td>
                        <td><?php echo $qccvisitor['visitor_reason']; ?></td>
                        <td><?php echo $qccvisitor['visitor_msg']; ?></td>
                        <td><?php echo $qccvisitor['employeeID']; ?></td>

                        <td><form action="admin.php" method="post">
                                <input type="hidden" name="action" value="delete_visitor">
                                <input type="hidden" name="QCCvisitor_ID"
                                       value="<?php echo $qccvisitor['QCCvisitor_ID']; ?>">
                                <input type="submit" value="Delete">

                            </form></td>
                    </tr>

<?php endforeach; ?>



                <!-- add code for the rest of the table here -->

            </table>

            <p>&nbsp;</p>
            <p>&nbsp;</p>

            <p>&nbsp;</p>
        </section>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <h1>&nbsp;</h1>
        <h2>&nbsp;</h2>
        <script type="text/javascript">
            var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown: "SpryAssets/SpryMenuBarDownHover.gif", imgRight: "SpryAssets/SpryMenuBarRightHover.gif"});
        </script>
    </body>
</html>
