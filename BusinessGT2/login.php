<?php
/*              MOD LOG                             
            added login page 9/12
 *          added function to add data to the database 9/12
 *          refactored functions and relevant code to the database folder 9/12
 *          added navigation links to the admin page 9/12
 *          added a function to delete data from the admin page 9/13
 *          minor aesthetic updates 9/13
 *  */

//$username = filter_input(INPUT_POST, 'username');
//$password = filter_input(INPUT_POST, 'password');
//
//if(empty($username) || empty($password)){
//    header("Location:adminLogin.html");
//}

$username = filter_input(INPUT_POST, 'username');
$password = filter_input(INPUT_POST, 'password');

if(empty($username) || empty($password)){
    
    header("Location:adminLogin.html");
    
} else {
    header("Location:admin.php");
   
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
            </ul>
        </nav>
        <header>
            <h1>contact <span class="fancy">Eva Jones</span></h1>
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
