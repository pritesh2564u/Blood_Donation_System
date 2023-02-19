<?php
    session_start() ;
    if(isset($_SESSION['username'])){
        $username = $_SESSION['username'];
    }
    else{
        header('location:index.html');
    }
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <nav>
        <div class="nav-bar">
            <i class='bx bx-menu sidebarOpen'></i>
            <div class="menu">
                <div class="logo-toggle">
                    <i class='bx bx-x sidebarClose'></i>
                </div>
                <ul class="nav-links">
                    <li><a href="">Home</a></li>
                    <li><a href="user_donate_blood.php">Donate Blood</a></li>
                    <li><a href="user_receive_blood.php">Receive Blood</a></li>
                    <li><a href="user_cards.php">Blood Event</a></li>
                    <li><a href="logout.php">logout</a></li>
                </ul>
            </div>
            <div class="login-signin">
                <?php
                    echo "Welcome,".$username ;
                ?>
            </div>
        </div>
    </nav>
    <main>
        <div class="images">
            <div class="image1">
                <img src="b_image1.jpg">
            </div>
            <div class="image2">
                <img src="b_image2.jpg">
            </div>
            <div class="image3">
                <img src="b_image3.jpg">
            </div>
        </div>
    </main>
    <hr>
    <section>
        <img src="image1.jpg">
        <div class="blood_descrip">
            <h2>Why should Donate blood?</h2>
            <p>Our nation requires 4 crore Units of Blood while only 40 lakh units
                are available, Every two seconds someone needs Blood there is no
                substitute for Human Blood. It Cannot be manufactured Blood 
                donation is an extremly noble deed, yet there is a scarcity of 
                regular donors across India. We focus on creating & expanding a 
                virtual army of blood donating volunteers who could be searched
                and contacted by family / care givers of a patient in times of need
            </p>
            <a href="cards.html"><button class="section_btn">Be a Donor</button></a>
            <a href="about_us.html"><button class="section_btn">See about us</button></a>
        </div>
    </section>
    <hr>
    <footer>
        <p class="f1">Blood Donation System</p>
        <p class="f2">Made with ❤️ Love</p>
        <p class="f3">Copyright © 2023. All rights reserved by Blood Donation System</p>
    </footer>
    <a href="#" class="to-top">
        <i class='bx bxs-up-arrow-circle'></i>
    </a>
    <script src="script.js"></script>
</body>
</html> 