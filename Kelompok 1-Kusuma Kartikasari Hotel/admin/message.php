<?php
if(!isset($_SESSION))
{
		session_start();
}

if(!isset($_SESSION['user_id']) ){
	header("Location: login.php");
}
?>

<?php include 'include/header.php'; ?>
<div class="row">
    <!-- uncomment code for absolute positioning tweek see top comment in css -->
    <!-- <div class="absolute-wrapper"> </div> -->
    <!-- Menu -->
    <div class="side-menu">

    <nav class="navbar navbar-default" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <div class="brand-wrapper">
            <!-- Hamburger -->
            <button type="button" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <!-- Brand -->
            <div class="brand-name-wrapper">
                <a class="navbar-brand" href=" index.php">
                    KUSUMA KARTIKASARI HOTEL
                </a>
            </div>
        </div>
    </div>

    <!-- Main Menu -->
    <div class="side-menu-container">
        <ul class="nav navbar-nav">

            <li><a href="room_data.php"><span class="glyphicon glyphicon-bed"></span> Data Kamar</a></li>
            <li><a href="user.php"><span class="glyphicon glyphicon-user"></span> Data User</a></li>
            <li class="active"><a href="javascript:"><span class="glyphicon glyphicon-envelope"></span> Pesan User</a></li>
            <li><a href="logout.php"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>

        </ul>
    </div><!-- /.navbar-collapse -->

  </nav>
  </div>
  <div class="body">
      <?php


          require 'include/database.php';

          class Message{

            protected $header = '<table style="margin-left: 400px;" border=1>
              <tr>
                <th>No</th>
                <th>Nama</th>
                <th>Email</th>
                <th>Pesan</th>
                <th>Setting</th>
              </tr>';

            protected $body = '';

            protected $footer = '</table>';
            public function __construct(){

        			// $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
           	}

            public function IncomingMessage(){
              $this->db = new DB;
        			$db = $this->db->query();
        			$sql = "SELECT nama, alamat, email, pesan FROM pesan";
        			$result = mysqli_query($db,$sql);

              $number = 1;
              while($data = mysqli_fetch_array($result,MYSQLI_ASSOC)){
                $this->body.=  '<tr>
                    <td>'.$number.'</td>
                    <td>'.$data['nama'].'</td>
                    <td>'.$data['alamat'].'</td>
                    <td>'.$data['email'].'</td>
                    <td>'.$data['pesan'].'</td>
                  </tr>';
                  $number++;
              }

              echo $this->header.$this->body.$this->footer;
            }


          }
          $user = new Message();
          $user->IncomingMessage();

      ?>
  </div>
</div>
</body>
</html>
