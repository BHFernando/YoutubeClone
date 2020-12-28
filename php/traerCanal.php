<?php
require_once("conexion.php");
//Traer informacion del canal
$mysqli=getConn();
$id=$_GET['id'];
$a=array();
$query=$mysqli->query("Select * from canal where Id='".$id."'");
while($info=mysqli_fetch_array($query)){
    $a[]=$info;    
}
//Retorno del JSON
echo json_encode($a);
?>