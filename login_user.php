<?php
include "db.php";


if(isset($_POST['but_submit'])){

    $uname = validate($_POST['username']);
    $password = validate($_POST['password']);


    if ($uname != "" && $password != ""){

        $sql = "SELECT * FROM users WHERE username='$uname' AND password='$pass'";
        $result = mysqli_query($con,$sql_query);
        $row = mysqli_fetch_array($result);

        $count = $row['cntUser'];

        if($count > 0){
            $_SESSION['uname'] = $uname;
            header('Location: chestionar.php');
        }else{
            echo "Invalid username and password";
        }

    }

}
?>
<html>
    <head>
        <title>Login Elev</title>
        <link href="css/style.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="container">
            <form method="post" action="">
                <div id="div_login">
                    <h1>Login Elev</h1>
                    <div>
                        <input type="text" class="textbox" id="username" name="username" placeholder="Username" />
                    </div>
                    <div>
                        <input type="password" class="textbox" id="password" name="password" placeholder="Password"/>
                    </div>
                    <div>
                        <input type="submit" value="Submit" name="but_submit" id="but_submit" />
                    </div>
                    <a href="chestionar.php" class="button">Salt peste login(eroare login)</a>
                </div>
            </form>
        </div>
    </body>
</html>

