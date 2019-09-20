<?php
/*

 * added try catch block to connect to the database error php file
 *  */
$NLvisitor_fname = filter_input(INPUT_POST, 'firstName');
$NLvisitor_lname = filter_input(INPUT_POST, 'lastName');
$visitor_address = filter_input(INPUT_POST, 'physAddress');
$NLvisitor_email = filter_input(INPUT_POST, 'email');
$employeeID = 1;
/* echo "Fields: " . $visitor_name . $visitor_email . $visitor_msg;  */

// Validate inputs
if ($NLvisitor_fname == null) {
    $error = "Invalid input data. Check firstname and try again.";
    /* include('error.php'); */
    echo "Form Data Error: " . $error;
    
}
if ($NLvisitor_lname == null) {
    $error = "Invalid lastname. Check all fields and try again.";
    /* include('error.php'); */
    echo "Form Data Error: " . $error;
    
}
if ($NLvisitor_email == null) {
    $error = "Invalid email. Check all fields and try again.";
    /* include('error.php'); */
    echo "Form Data Error: " . $error;
    
}
if ($visitor_address == null) {
    $error = "Invalid input data. Check address and try again.";
    /* include('error.php'); */
    echo "Form Data Error: " . $error;
    
} else {
    $dsn = 'mysql:host=localhost;dbname=megaglassincdb';
    $username = 'root';
    $password = 'Pa$$w0rd';

    try {
        $db = new PDO($dsn, $username, $password);
    } catch (PDOException $e) {
        $error_message = $e->getMessage();
        include('database_error.php'); 
        //echo "DB Error: " . $error_message;
        exit();
    }

    // Add the product to the database  
    $query = 'INSERT INTO nlvisitor
                         ( NLvisitor_fname, NLvisitor_lname, NLvisitor_email, visitor_address, employeeID)
                      VALUES
                         (:firstName, :lastName, :email, :physAddress, 1)';
    $statement = $db->prepare($query);
    $statement->bindValue(':firstName', $NLvisitor_fname);
    $statement->bindValue(':lastName', $NLvisitor_lname);
    $statement->bindValue(':email', $NLvisitor_email);
    $statement->bindValue(':physAddress', $visitor_address);
    //$statement->bindValue(1, $employeeID);
    $statement->execute();
    $statement->closeCursor();
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
            <h2>Thank you for signing up! You will receive an email confirmation shortly!</h2>
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
