<?php
//Trear la informacion del video
require_once("conexion.php");
$mysqli=getConn();
$id="";
$condicion="";
//crea la condicion si se encuentra un id Get
if(isset($_GET['id'])){
    $id=$_GET['id'];
$condicion=" where Id='".$id."'";
}
//crea la condicion si se encuentra una busqueda  Get
if(isset($_GET['busqueda'])){
    $busqueda=$_GET['busqueda'];
$condicion=" where nombre like '%".$busqueda."%'";
}
$a=array();
 $query=$mysqli->query("Select * from video".$condicion);
while($info=mysqli_fetch_array($query)){
    $a[]=$info;    
}
//Retorna el JSON
echo json_encode($a);
 
?>