
var busqueda=parametroGet('b');
traerVideos(busqueda);
//trae el Id del metodo Get
function parametroGet(nombre) {
    nombre = nombre.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + nombre + "=([^&#]*)"),
    resultado = regex.exec(location.search);
    return resultado === null ? "" : decodeURIComponent(resultado[1].replace(/\+/g, " "));
  }
  //busca y llena la informacion del Video
  function traerVideos(busqueda){       
    var xhr = new XMLHttpRequest();
    var contenido='';
    xhr.onreadystatechange = function () {
      if (this.readyState == 4 && this.status == 200) {
        var videos = JSON.parse(this.responseText);
        console.log(videos.length)
        for (var i = 0; i < videos.length && i < 6; i++) {
            contenido='';
           
           contenido+='<a href="whatch.php?b='+videos[i][0]+'">';
           contenido+='<nav class="video">    ';
           contenido+='  <img  class="miniatura" src="https://i.ytimg.com/vi/'+videos[i][0]+'/hqdefault.jpg" alt="">';
           contenido+='  <div>';
           contenido+='  <h2 class="titleVideo" >'+videos[i][1]+'</h2> ';
 
          traerCanal(videos[i][8],videos[i][5],videos[i][6],contenido);
         
        }
       
      }
    };
    xhr.open("GET", "./php/traerVideos.php?busqueda="+busqueda, true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send();
}
  //busca y llena la informacion del canal
function traerCanal(id, vistas, fecha, contenido){
  
    var canal;
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
      if (this.readyState == 4 && this.status == 200) {
         canal = JSON.parse(this.responseText);
         contenido+='  <p >'+canal[0][1]+' <br> 20/20/2020</p><br>'+vistas+' vistas * '+fecha;;
         contenido+='  </div>';
         contenido+='</nav>';
         contenido+='</a>';
         console.log(contenido);
         document.getElementById('sugerencias').innerHTML+=contenido;
      }
     
    };
    xhr.open("GET", "./php/traerCanal.php?id="+id, true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send(); 
    return contenido;
   
}