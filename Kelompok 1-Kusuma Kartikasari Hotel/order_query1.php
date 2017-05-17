<?php
  require 'db_oop.php';
  class Order{
    protected $idOrder;
    protected $check_in;
    protected $check_out;
    protected $roomType;
    protected $totalRoom;

    public function __construct(){
      $this->check_in = $_POST['tanggalin'];
      $this->check_out = $_POST['tanggalout'];
      $this->roomType = $_POST['rooms'];
      $this->totalRoom = $_POST['jumlah'];

    }

    public function order(){
      $this->db = new Database();
      $db = $this->db->query();
      $sql = "INSERT INTO order1 (check_in, check_out, tipeKamar, jumlahKamar) values ('$this->check_in','$this->check_out','$this->roomType','$this->totalRoom')";

      $result = mysqli_query($db,$sql);
      if(!$result){
        echo "Kamar tidak bisa ditambah";
      }
      header ('Location: order2.php');
    }

    public function selectIdOrder(){
      $data = mysqli_fetch_array($sql,MYSQLI_ASSOC);
      $sql2 = "SELECT idOrder FROM order1 WHERE idOrder = '$this->isOrder'";
      $result2 = mysqli_query($db, $sql);
      return $result2;
    }

  }

  $order = new Order();
  $order->order();

?>
