<?php
require_once("conexion.php");
$mysqli=getConn();
if(isset($_GET['id'])){
     $id=$_GET['id'];
     $ip=$_GET['ip'];

    $query=$mysqli->query("Select count(*) from likes where Id_video='".$id."' AND Ip='".$ip."'");
    $info=mysqli_fetch_array($query) ;  
    if($info[0] !=0){
        $query2=$mysqli->query("Select Tipo from likes where Id_video='".$id."' AND Ip='".$ip."'");
    $info2=mysqli_fetch_array($query2) ;  
    echo $info2[0];
    }else{
        echo $info[0];
    }

}
if(isset($_POST['tipo'])){
    $id=$_POST['id'];
    $ip=$_POST['ip'];
    $tipo=$_POST['tipo'];
    $query=$mysqli->query("Select count(*) from likes where Id_video='".$id."' AND Ip='".$ip."'");
    $info=mysqli_fetch_array($query) ;  
    if($info[0] !=0){
        $query2=$mysqli->query("SELECT Tipo from likes where Id_video='".$id."' AND Ip='".$ip."'");
    $info2=mysqli_fetch_array($query2) ;  
    
     if($info2[0]==$tipo){        
        $mysqli->query("DELETE from likes where Id_video='".$id."' AND Ip='".$ip."'");
        cargarLikes($tipo,-1,$id);
     }else{
        $mysqli->query("UPDATE likes SET Tipo=".$tipo." where Id_video='".$id."' AND Ip='".$ip."'");     
        if($tipo==2){
            cargarLikes(1,-1,$id);
            cargarLikes(2,1,$id);
        }elseif($tipo==1){
            cargarLikes(1,1,$id);
            cargarLikes(2,-1,$id);
        }   
    }
    }else{
        $mysqli->query("INSERT INTO likes VALUES('".$ip."',".$tipo.",'".$id."' )");
        cargarLikes($tipo,1,$id);
    }
}
function cargarLikes($tipo, $cantidad,$id){
    $mysqli=getConn();
if($tipo==1){
    $query3=$mysqli->query("SELECT Likes from video where Id='".$id."'");
    $info3=mysqli_fetch_array($query3) ;
    
    $agregar=$info3[0]+$cantidad;
    $mysqli->query("UPDATE video SET Likes=".$agregar." where Id='".$id."'");     
}
if($tipo==2){
    $query3=$mysqli->query("SELECT Dislikes from video where Id='".$id."'");
     $info3=mysqli_fetch_array($query3) ;
     
     $agregar=$info3[0]+$cantidad;
    $mysqli->query("UPDATE video SET Disikes=".$agregar." where Id='".$id."'");     
}
}
?>