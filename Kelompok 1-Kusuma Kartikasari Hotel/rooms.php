<?php require_once 'session.php'; ?>


<!DOCTYPE html>
<html lang="en">

<head>
    <title>Kusuma Kartikasari Hotel | Rooms</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
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

<body id="page4">
    <div class="bg1">
        <div class="bg2">
            <div class="main">
                <!-- header -->
                <header>
                    <h1><a href="index.php" id="logo">Kusuma Kartikasari Hotel</a></h1>
                    <?php include 'login_out.php'; ?>
                    <!-- <div class="department"> <a href="sign.php" style="text-decoration:none">Sign in</a> | <a href="signup.php" style="text-decoration:none">Sign up</a></div> -->
                </header>
                <div class="box">
                    <nav>
                        <ul id="menu">
                            <li><a href="index.php">About Us</a></li>
                            <li><a href="services.php">Facilities</a></li>
                            <li class="active"><a href="rooms.php">Rooms</a></li>
                            <li><a href="package.php">Package</a></li>
                            <li><a href="contact.php">Contact</a></li>
                        </ul>
                    </nav>
                    <!-- header end -->
                    <!-- content -->
                    <article id="content">
                        <div class="box1">
                            <div class="wrapper">
                                <form action="#" id="form1">
                                    <h2>Book a Room</h2>
                                    <fieldset>
                                        <div class="row">
                                            <input type="text" class="input"> Your Name: </div>
                                        <div class="row">
                                            <input type="text" class="input"> E-Mail Address: </div>
                                        <div class="row">
                                            <input type="text" class="input"> Home Phone: </div>
                                        <div class="row">
                                            <div class="select1">
                                                <select>
                        <option>&nbsp;</option>
                        <option>...</option>
                      </select>
                                            </div>
                                            Length of Stay: </div>
                                        <div class="row">
                                            <div class="select1">
                                                <select>
                        <option>&nbsp;</option>
                        <option>...</option>
                      </select>
                                            </div>
                                            Number in Party: </div>
                                        <div class="row">
                                            <div class="select2">
                                                <select>
                        <option>&nbsp;</option>
                        <option>...</option>
                      </select>
                                            </div>
                                            <div class="select2">
                                                <select>
                        <option>&nbsp;</option>
                        <option>...</option>
                      </select>
                                            </div>
                                            <div class="select2">
                                                <select>
                        <option>&nbsp;</option>
                        <option>...</option>
                      </select>
                                            </div>
                                            Arrival Date: </div>
                                        <div class="row_textarea"> Additional Comments:
                                            <textarea cols="1" rows="1"></textarea>
                                        </div>
                                        <div class="wrapper"> <a href="#" class="button1">Send</a> <a href="#" class="button1">Clear</a> </div>
                                    </fieldset>
                                </form>
                                <div class="col2 pad">
                                    <h2>Pilihan Tipe Kamar di Hotel Kusuma Kartikasari</h2>
                                    <div class="wrapper line1">
                                        <div class="col3">
                                            <figure class="pad_bot3"><img src="gambar/execuitive%20suite%201.png" alt="exe-1" width="250" height="150"></figure>
                                            <p class="pad_bot1"><strong class="color3">Executive Suite 1</strong></p>
                                            <p>Tipe kamar ini merupakan tipe kamar eksklusif yang berada di lantai 1, terdapat 1 ruang tamu untuk privasi yang lebih saat anda menerima tamu, beserta disediakan set meja makan lengkap sesuai keinginan anda untuk menjamu teman atau kerabat,dan juga bathub.</p>

                                            <h3><strong>Harga = Rp. 550.000 nett/kamar/malam</strong></h3>

                                            <a href="order1.php" class="button2">Book Room</a> </div>

                                        <div class="col3 pad_left2">
                                            <figure class="pad_bot3"><img src="gambar/execuitive%20suite%202.png" alt="exe-2" width="250" height="150"></figure>
                                            <p class="pad_bot1"><strong class="color3">Executive Suite 2</strong></p>
                                            <p>Tipe kamar ini merupakan tipe kamar eksklusif yang berada di lantai 1, terdapat 1 ruang tamu untuk privasi yang lebih saat anda menerima tamu.</p>

                                            <br>
                                            <br>
                                            <br>
                                            <h3><strong>Harga = Rp. 385.000 nett/kamar/malam</strong></h3>

                                            <a href="order1.php" class="button2">Book Room</a>
                                        </div>
                                    </div>
                                       <div class="wrapper line1">
                                        <div class="col3">
                                            <figure class="pad_bot3"><img src="gambar/executive%20cottage.png" alt="exe-1" width="250" height="150"></figure>
                                            <p class="pad_bot1"><strong class="color3">Executive Cottage</strong></p>
                                            <p>Tipe kamar ini merupakan tipe kamar eksklusif yang berada di lantai 2,dengan kamar luas serta satu king bed.</p>


                                           <br>
                                           <br>
                                            <h3><strong>Harga = Rp. 250.000 nett/kamar/malam</strong></h3>

                                            <a href="order1.php" class="button2">Book Room</a> </div>

                                        <div class="col3 pad_left2">
                                            <figure class="pad_bot3"><img src="gambar/executive.png" alt="exe-2" width="250" height="150"></figure>
                                            <p class="pad_bot1"><strong class="color3">Executive</strong></p>
                                            <p>Tipe kamar ini merupakan tipe kamar eksklusif yang berada di lantai 2, dengan kamar luas, serta dua single bed.</p>

                                            <br>
                                            <br>
                                            <h3><strong>Harga = Rp. 275.000 nett/kamar/malam</strong></h3>
                                            <a href="order1.php" class="button2">Book Room</a>
                                        </div>
                                    </div>

                                    <div class="wrapper line1">
                                        <div class="col3">
                                            <figure class="pad_bot3"><img src="gambar/deluxe.png" alt="deluxe" width="250" height="150"></figure>
                                            <p class="pad_bot1"><strong class="color3">Deluxe</strong></p>
                                            <p>Tipe kamar ini merupakan tipe kamar deluxe di lantai 2,dengan dua single bed.</p>


                                           <br>
                                           <br>
                                            <h3><strong>Harga = Rp. 200.000 nett/kamar/malam</strong></h3>

                                            <a href="order1.php" class="button2">Book Room</a> </div>

                                        <div class="col3 pad_left2">
                                            <figure class="pad_bot3"><img src="gambar/bussiness%20standart.png" alt="exe-2" width="250" height="150"></figure>
                                            <p class="pad_bot1"><strong class="color3">Bussiness Standart</strong></p>
                                            <p>Tipe kamar ini merupakan tipe kamar deluxe di lantai 3,dengan dua single bed.</p>

                                            <br>
                                            <br>
                                            <h3><strong>Harga = Rp. 175.000 nett/kamar/malam</strong></h3>
                                            <a href="order1.php" class="button2">Book Room</a>
                                        </div>
                                    </div>

                                    </div>
                                </div>
                            </div>

<!--
                        <div class="pad">
                            <div class="wrapper line3">
                                <div class="col2">
                                    <h2>Quality Standards</h2>
                                    <p class="pad_bot1"><strong class="color2">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo</strong> </p>
                                    <p class="pad_bot1"> Inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enigm ipsam voluptatem nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus quia voluptas sit aspernatur aut odit aut fugit.</p>
                                    <div class="wrapper pad_bot2">
                                        <div class="col1">
                                            <ul class="list1">
                                                <li><a href="#">Inventore veritatis et quasi architecto</a></li>
                                                <li><a href="#">Nemo enim ipsam voluptatem quivolupta</a></li>
                                                <li><a href="#">Sit aspernatur aut odit aut fugit sed</a></li>
                                            </ul>
                                        </div>
                                        <div class="col1 pad_left1">
                                            <ul class="list1">
                                                <li><a href="#">Neque porro quisquam est, qui dolorem</a></li>
                                                <li><a href="#">Ipsum quia dolor amet consectetur</a></li>
                                                <li><a href="#">Adipisci velit, sed quia non numquam</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <p class="pad_bot1"><strong class="color2">Duis aute irure dolorin reprehenderit in voluptate velit esse cillum dolore eu fugiat pariatur</strong></p>
                                    Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam. </div>
                                <div class="col1 pad_left1">
                                    <h2>The Rooms</h2>
                                    <p class="pad_bot1"><strong class="color2">Nemo enim ipsam voluptatem</strong><br> Quia voluptas sit aspernatur aut odit autugit sed quia ne voluptatem nesciunt. </p>
                                    <figure class="pad_bot3"><img src="images/page4_img1.jpg" alt=""></figure>
                                    <ul class="list1 pad_bot3">
                                        <li><a href="#">Neque porro quisquam est qui</a></li>
                                        <li><a href="#">Dolorem ipsum quia dolor sit amet</a></li>
                                        <li><a href="#">Consectetur adipisci velit sed</a></li>
                                    </ul>
                                    <a href="#" class="button1">Read More</a> </div>
                            </div>
                        </div>
-->
                    </article>
                    <!--content end-->
                </div>
            </div>
        </div>
    </div>
    <div class="main">
        <!-- footer -->
        <footer>
            <div class="col2">
                <nav>
                    <ul id="footer_menu">
                        <li><a href="index.php">About Us</a></li>
                        <li><a href="services.php">Facilities</a></li>
                        <li class="active"><a href="rooms.php">Rooms</a></li>
                        <li><a href="Package.php">Package</a></li>
                        <li class="last"><a href="contact.php">Contact</a></li>
                    </ul>
                </nav>
            </div>
            <!--
            <div class="col1 pad_left1">
                <ul id="icons">
                    <li>
                        <a href="#" class="normaltip"><img src="images/icon1.jpg" alt=""></a>
                    </li>
                    <li>
                        <a href="#" class="normaltip"><img src="images/icon2.jpg" alt=""></a>
                    </li>
                    <li>
                        <a href="#" class="normaltip"><img src="images/icon3.jpg" alt=""></a>
                    </li>
                    <li>
                        <a href="#" class="normaltip"><img src="images/icon4.jpg" alt=""></a>
                    </li>
                </ul>
            </div>
-->
            <!-- {%FOOTER_LINK} -->
        </footer>
        <!-- footer end -->
    </div>
    <script type="text/javascript">
        Cufon.now();

    </script>
</body>

</html>
