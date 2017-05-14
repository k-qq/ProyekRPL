<?php

session_start();

if( isset($_SESSION['user_id']) ){
    echo"a";
	header("Location: index.php");
}

require 'database.php';

if(!empty($_POST['email']) && !empty($_POST['password'])):
	
	$records = $conn->prepare('SELECT id,email,password FROM login WHERE email = :email');
echo"0";
	$records->bindParam(':email', $_POST['email']);
echo"1";
	$records->execute();
echo"2";
	$results = $records->fetch(PDO::FETCH_ASSOC);
echo"3";

	$message = '';
echo"4";
echo count($results); 
echo $results['password'];
//	if(count($results) > 0 && password_verify($_POST['password'], $results['password']) ){
	if(count($results) > 0 && ($_POST['password'] = $results['password']) ){

echo"5";
		$_SESSION['user_id'] = $results['id'];
        echo"6";
		header("Location: index.php");
echo"7";
	} else {
        echo"8";
		$message = 'Sorry, those credentials do not match';
        echo"9";
	}

endif;

?>


    <!DOCTYPE html>
    <html lang="en">

    <head>
        <title>Kusuma Kartikasari Hotel | Locations</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
        <link rel="stylesheet" type="text/css" href="css/php.css">
        <script type="text/javascript" src="js/jquery-1.6.js"></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/cufon-replace.js"></script>
        <script type="text/javascript" src="js/Adamina_400.font.js"></script>
        <script type="text/javascript" src="js/jquery.jqtransform.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" src="js/atooltip.jquery.js"></script>
        <!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<link rel="stylesheet" href="css/ie.css" type="text/css" media="all">
<![endif]-->
    </head>

    <body id="page5">
        <div class="bg1">
            <div class="bg2">
                <div class="main">
                    <!-- header -->
                    <header>
                        <h1><a href="index.php" id="logo">Kusuma Kartika Sari Hotel</a></h1>
                        <div class="department"> <a href="sign.php" style="text-decoration:none">Sign in</a> | <a href="signup.php" style="text-decoration:none">Sign up</a></div>
                    </header>
                    <div class="box">
                        <nav>
                            <ul id="menu">
                                <li><a href="index.php">About Us</a></li>
                                <li><a href="services.php">Facilities</a></li>
                                <li><a href="rooms.php">Rooms</a></li>
                                <li><a href="package.php">Package</a></li>
                                <li><a href="contact.php">Contact</a></li>
                            </ul>
                        </nav>
                        <!-- header end -->
                        <!-- content -->
                        <article id="content">
                            <div class="box1">
                                <div class="kotak1">
                                    <?php if(!empty($message)): ?>
                                    <p>
                                        <?= $message ?>
                                    </p>
                                    <?php endif; ?>

                                    <h4 id="log"><strong>Login</strong></h4>

                                    <form action="sign.php" method="POST">
                                        <input type="text" placeholder="Enter your email" name="email">
                                        <input type="password" placeholder="and password" name="password">
                                        <input type="submit">
                                    </form>
                                    <span>or <a href="signup.php">register here</a></span>
                                </div>

                            </div>

                        </article>
                    </div>
                    <div class="main">
                        <!-- footer -->
                        <footer>
                            <div class="col2">
                                <nav>
                                    <ul id="footer_menu">
                                        <li><a href="index.php">About Us</a></li>
                                        <li><a href="services.php">Facilities</a></li>
                                        <li><a href="rooms.php">Rooms</a></li>
                                        <li><a href="Package.php">Package</a></li>
                                        <li><a href="contact.php">Contact</a></li>
                                    </ul>
                                </nav>
                            </div>


                            <!-- {%FOOTER_LINK} -->
                        </footer>
                        <!-- footer end -->
                    </div>
                    <script type="text/javascript">
                        Cufon.now();

                    </script>
                </div>
            </div>
        </div>
    </body>

    </html>
