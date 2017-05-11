<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--    <link rel="stylesheet" href="css/bootsrap.css">-->
    <link rel="stylesheet" href="css/index.css">
    <title>Kartika Kusuma Sari Hotel</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>

<body>
    <div class="body">
        <div class="logo container">
            <img src="img/logo.png">
        </div>
        <ul class="nav-sign container">
            <li><a href="#">SIGN IN</a></li>
            <li><a href="#">SIGN OUT</a></li>
        </ul>
        <ul class="nav-menu container">
            <li><a href="#">ABOUT US</a></li>
            <li><a href="#">ROOMS</a></li>
            <li><a href="#">FACILITIES</a></li>
            <li><a href="#">PACKAGE</a></li>
            <li><a href="#">CONTACT US</a></li>
        </ul>
        <div id="cari" class="container">

            <fieldset>
                <legend>Login</legend>
                <label for="username">Username</label>
                <input type="text" name="username" id="username">
                <label for="password">Password</label>
                <input type="text" name="password" id="password">
            </fieldset>
        </div>
        <div id="keunggulan" class="container">
            <div class="row">
                <div class="kelebihan col-sm-12">

                    <div id="plus" class="container">
                        <div class="row">
                            <div class="col-sm-4">
                                <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>

                                <form class="hotel_form up6">
                                    <h1 class="title">Find a Hotel</h1>

                                    <label class="label w--whole">Destination</label>
                                    <input type="text" class="text_input w--whole up1" placeholder="State, City, or ZIP Code" />

                                    <label class="label w--thirds">Rooms</label>
                                    <label class="label w--thirds">Adults</label>
                                    <label class="label w--thirds">Kids</label>

                                    <input type="text" class="text_input w--thirds up1" placeholder="-" />
                                    <input type="text" class="text_input w--thirds up1" placeholder="-" />
                                    <input type="text" class="text_input w--thirds up1" placeholder="-" />

                                    <label class="label w--halves">Check in</label>
                                    <label class="label w--halves">Check out</label>

                                    <div class="calender w--halves up1">
                                        <select class="select month" name="month-in">
      <option value="January">January</option>
      <option value="February">February</option>
      <option value="March">March</option>
      <option value="April">April</option>
      <option value="May">May</option>
      <option value="June">June</option>
      <option value="July">July</option>
      <option value="August">August</option>
      <option value="September">September</option>
      <option value="October">October</option>
      <option value="November">November</option>
      <option value="December">December</option>
    </select>

                                        <select class="select day" name="day-in">
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
      <option value="6">6</option>
      <option value="7">7</option>
      <option value="8">8</option>
      <option value="9">9</option>
      <option value="10">10</option>
      <option value="11">11</option>
      <option value="12">12</option>
      <option value="13">13</option>
      <option value="14">14</option>
      <option value="15">15</option>
      <option value="16">16</option>
      <option value="17">17</option>
      <option value="18">18</option>
      <option value="19">19</option>
      <option value="20">20</option>
      <option value="21">21</option>
      <option value="22">22</option>
      <option value="23">23</option>
      <option value="24">24</option>
      <option value="25">25</option>
      <option value="26">26</option>
      <option value="27">27</option>
      <option value="28">28</option>
      <option value="29">29</option>
      <option value="30">30</option>
      <option value="31">31</option>
    </select>
                                    </div>

                                    <div class="calender w--halves up1">
                                        <select class="select month" name="month-out">
      <option value="January">January</option>
      <option value="February">February</option>
      <option value="March">March</option>
      <option value="April">April</option>
      <option value="May">May</option>
      <option value="June">June</option>
      <option value="July">July</option>
      <option value="August">August</option>
      <option value="September">September</option>
      <option value="October">October</option>
      <option value="November">November</option>
      <option value="December">December</option>
    </select>

                                        <select class="select day" name="day-out">
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
      <option value="6">6</option>
      <option value="7">7</option>
      <option value="8">8</option>
      <option value="9">9</option>
      <option value="10">10</option>
      <option value="11">11</option>
      <option value="12">12</option>
      <option value="13">13</option>
      <option value="14">14</option>
      <option value="15">15</option>
      <option value="16">16</option>
      <option value="17">17</option>
      <option value="18">18</option>
      <option value="19">19</option>
      <option value="20">20</option>
      <option value="21">21</option>
      <option value="22">22</option>
      <option value="23">23</option>
      <option value="24">24</option>
      <option value="25">25</option>
      <option value="26">26</option>
      <option value="27">27</option>
      <option value="28">28</option>
      <option value="29">29</option>
      <option value="30">30</option>
      <option value="31">31</option>
    </select>
                                    </div>
                                    <input class="submit w--whole up1" type="submit" value="Search" />
                                </form>
                            </div>
                            <div class="col-sm-8">
                                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                    <!-- Indicators -->
                                    <ol class="carousel-indicators">
                                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                        <li data-target="#myCarousel" data-slide-to="1"></li>
                                        <li data-target="#myCarousel" data-slide-to="2"></li>
                                    </ol>

                                    <!-- Wrapper for slides -->
                                    <div class="carousel-inner">
                                        <div class="item active">
                                            <img src="img/1.jpg" alt="Los Angeles" width="400" height="200">
                                        </div>

                                        <div class="item">
                                            <img src="img/2.jpg" alt="Chicago" width="400" height="200">
                                        </div>
                                    </div>

                                    <!-- Left and right controls -->
                                    <!--
                                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                        <span class="sr-only">Next</span>
                                    </a>
-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!--
    <script src="js/bootstrap.js"></script>
    <script src="js/jquery-3.2.1.min.js"></script>
-->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <!-- <script src="js/bootstrap.min.js"></script> -->
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</body>

</html>
