<?php
/*              MOD LOG                             
            added login page 9/12
 *          added function to add data to the database 9/12
 *          refactored functions and relevant code to the database folder 9/12
 *          added navigation links to the admin page 9/12
 *          added a function to delete data from the admin page 9/13
 *          minor aesthetic updates 9/13
 * 
 *          added include database error php to try catch block 9/19
 *          removed unsightly error messages from try catch block pertaining to grabbing the DB 9/19
 *          Updated navigation to access admin page thru footer 9/19
 *  */

$visitor_reason = filter_input(INPUT_POST, 'reason');
$visitor_fname = filter_input(INPUT_POST, 'firstName');
$visitor_lname = filter_input(INPUT_POST, 'lastName');
$visitor_email = filter_input(INPUT_POST, 'electronicMailAddress');
$visitor_msg = filter_input(INPUT_POST, 'custExp');
$employeeID = 1;
/* echo "Fields: " . $visitor_name . $visitor_email . $visitor_msg;  */

// Validate inputs
if ($visitor_fname == null) {
    $error = "Invalid input data. Check firstname and try again.";
    /* include('error.php'); */
    echo "Form Data Error: " . $error;
}
if ($visitor_lname == null) {
    $error = "Invalid lastname. Check all fields and try again.";
    /* include('error.php'); */
    echo "Form Data Error: " . $error;
}
if ($visitor_email == null) {
    $error = "Invalid email. Check all fields and try again.";
    /* include('error.php'); */
    echo "Form Data Error: " . $error;
}
if ($visitor_msg == null) {
    $error = "Invalid input data. Check comment and try again.";
    /* include('error.php'); */
    echo "Form Data Error: " . $error;
} else {
    try{
    $dsn = 'mysql:host=localhost;dbname=megaglassincdb';
    $username = 'root';
    $password = 'Pa$$w0rd';
    } catch (conException $e) {
        $error_message = "We are experiencing technical difficulties";
        echo $error_message;
    }
    try {
        $db = new PDO($dsn, $username, $password);
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        include('database_error.php'); 
        //include('contact.html');
        //echo "DB Error: " .$error_message."Check this out!";
        //echo "CHECK THIS OUT!!!";
        exit();
    }

    // Add the product to the database  
    try {
        include_once './Database/add.php';
        $db = changeDB::addToDB();
    } catch (Exception $ex) {
        echo 'Connection error: ' . $ex->getMessage();
        exit();
    }
//    $query = 'INSERT INTO qccvisitor
//                         (visitor_reason, visitor_fname, visitor_lname, visitor_email, visitor_msg, employeeID)
//                      VALUES
//                         (:reason, :firstName, :lastName, :electronicMailAddress, :custExp, 1)';
//    $statement = $db->prepare($query);
//    $statement->bindValue(':reason', $visitor_reason);
//    $statement->bindValue(':firstName', $visitor_fname);
//    $statement->bindValue(':lastName', $visitor_lname);
//    $statement->bindValue(':electronicMailAddress', $visitor_email);
//    $statement->bindValue(':custExp', $visitor_msg);
//    //$statement->bindValue(1, $employeeID);
//    $statement->execute();
//    $statement->closeCursor();
    /* echo "Fields: " . $visitor_name . $visitor_email . $visitor_msg; */
}
?>


<!doctype html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <title>Thank you!</title>
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
                <li><a href=adminLogin.html>Admin</a></li>
            </ul>
        </nav>
        <header>
            <h1>Thank you!</h1>
        </header>
        <section>
            <h2>Thank you for contacting me! I will get back to you shortly.</h2>
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
