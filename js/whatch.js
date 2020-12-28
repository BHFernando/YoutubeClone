let id=parametroGet('whatch');
linkVideo(id);
llenarSugerencias(id);
cargarVideo(id);
likes(0);
//Trae la informacion del video
function cargarVideo(id){
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
      if (this.readyState == 4 && this.status == 200) {
        var video = JSON.parse(this.responseText);   
      document.getElementById('tituloVideo').innerText=video[0][1]; 
      document.getElementById('descripcionVideo').innerText=video[0][2];
      var datosVideo=video[0][5]+' vistas * '+ video[0][6] ;
      datosVideo+='<a href="javaScript:likes(1)"><span id="likes" class="icon-point-up"><span id="numLikes">'+video[0][3]+'</span></span></a> ';
      datosVideo+='<a href="javaScript:likes(2)"><span  id="dislikes" class="icon-point-down"><span id="numDisikes">'+video[0][4]+'</span></span></a>';
      
      document.getElementById('datosVideo').innerHTML=datosVideo;
     
      traerCanal(video[0][8]);      
    }
    };
    xhr.open("GET", "./php/traerVideos.php?id="+id, true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send();
}
//Trae la informacion Get
function parametroGet(nombre) {
    nombre = nombre.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
    var regex = new RegExp("[\\?&]" + nombre + "=([^&#]*)"),
    resultado = regex.exec(location.search);
    return resultado === null ? "" : decodeURIComponent(resultado[1].replace(/\+/g, " "));
  }
  
//Trae el link de almacenamiento del video
  function linkVideo(id){
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
      if (this.readyState == 4 && this.status == 200) {
        var link = this.responseText;
        var contenido=' <video id="reproductor" class="video-js vjs-default-skin vizualizador" controls preload="none" width="100%" height="100%"';
        contenido+= 'poster="https://i.ytimg.com/vi/'+id+'/hqdefault.jpg"'; 
        contenido+='data-setup="{}">';
        contenido+='<source src="'+link+'" type="video/mp4" />';
        contenido+='<source src="'+link+'" type="video/webm" />';
        contenido+='<source src="'+link+'" type="video/ogg" />';
        contenido+='</video>'
        document.getElementById('contRep').innerHTML+=contenido;
        
      }
    };
    xhr.open("GET", "./php/traerLink.php?vid="+id, true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send();
}

//Trae la informacion del canal
function traerCanal(id){
  
  var canal;
  var xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
       canal = JSON.parse(this.responseText);
       document.getElementById('logoCanal').src=canal[0][3];
       document.getElementById('nombreCanal').innerText=canal[0][1];
       document.getElementById('suscriptoresCanal').innerText=canal[0][2]+' suscriptores';
    }
  };
  xhr.open("GET", "./php/traerCanal.php?id="+id, true);
  xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhr.send(); 
 
}

//Trae y llena las sugerencias del video
function llenarSugerencias(id){
   
  var xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      var videos = JSON.parse(this.responseText);
      var i=0;
      for (var j = 0; i < 5; j++) {
        if(id!=videos[j][0]){
          var titulo="titleVideo"+(i+1);
          var imagen="imgVideo"+(i+1);
          var link="linkVideo"+(i+1);
          var datos="datosVideo"+(i+1);
          suguerenciasCanal(videos[j][8], datos,videos[j][5],videos[j][6]);
          document.getElementById(link).href="whatch.php?whatch="+videos[j][0]
          document.getElementById(imagen).src="https://i.ytimg.com/vi/"+videos[j][0]+"/hqdefault.jpg"
        document.getElementById(titulo).innerText=videos[j][1];
        i++;
        }
      }
     
    }
  };
  xhr.open("GET", "./php/traerVideos.php", true);
  xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhr.send();
}

//Trae la informacion del canal para las sugerencias
function suguerenciasCanal(id, datos, vistas, fecha){
  
  var canal;
  var xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
       canal = JSON.parse(this.responseText);
       document.getElementById(datos).innerHTML=canal[0][1]+"<br>"+vistas+" vistas * "+fecha;
    }
  };
  xhr.open("GET", "./php/traerCanal.php?id="+id, true);
  xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhr.send(); 
 
}

function likes(tipo){
  var xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
       var result = JSON.parse(this.responseText);         
       var ip=result.geoplugin_request
       if(tipo!=0){
         DarlLike( ip,tipo,id);
         BuscarLike(ip,id);
       }else{
         BuscarLike(ip,id);
       }
    
      }    
  };
  xhr.open("GET", " http://www.geoplugin.net/json.gp", true);
  xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhr.send(); 
}
function DarlLike(ip,tipo,id){
  
  var xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
   
    
      }    
  };
  xhr.open("POST", "./php/likes.php", true);
  xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhr.send("id="+id+"&ip="+ip+"&tipo="+tipo); 
}
function BuscarLike(ip,id){
  
  var xhr = new XMLHttpRequest();
  xhr.onreadystatechange = function () {
    if (this.readyState == 4 && this.status == 200) {
      var res = this.responseText;
     
      if(res==1){
        document.getElementById("likes").classList.add("activo");
        document.getElementById("dislikes").classList.remove("activo");
      }else if(res==2){
        document.getElementById("likes").classList.remove("activo");
        document.getElementById("dislikes").classList.add("activo");
      }else if(res==0){
        document.getElementById("likes").classList.remove("activo");
        document.getElementById("dislikes").classList.remove("activo");
      }    
      }    
  };
  xhr.open("GET", "./php/likes.php?id="+id+"&ip="+ip+"", true);
  xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
  xhr.send(); 
}


