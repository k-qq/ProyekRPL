<?php

  include 'include/database.php';

  class DeletePesan{
    protected $idPesan;

    public function __construct(){
      $this->idPesan = $_GET['id'];
      $this->db = new DB;
      $db = $this->db->query();
      $sql = "DELETE FROM pesan WHERE idPesan = '$this->idPesan'";
      $result = mysqli_query($db,$sql);
      echo ".$sql";
      if(!$result){
        echo "Data tidak bisa terhapus";
      }
      header ('Location : user.php');
    }

    public function delete(){

    }
  }

  $obj = new DeletePesan();
  $obj->delete();

?>
