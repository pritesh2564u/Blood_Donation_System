<?php
    session_start() ;
    if(isset($_SESSION['username'])){
        $username = $_SESSION['username'] ;
    }
    else{
        header('location:login_form.php');
    }
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="">
    </head>
    <body>
        <?php
            echo "Welcome,".$username ;
        ?>
        <button type="button" > <a href="logout.php">logout</a></button>
        <script src="" async defer></script>
    </body>
</html>