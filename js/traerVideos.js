traerVideos();
//Trae y llena la informacion de los video en el index
function traerVideos(){  
    
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
      if (this.readyState == 4 && this.status == 200) {
        var videos = JSON.parse(this.responseText);
        
        for (var i = 0; i < videos.length && i < 6; i++) {
            var titulo="titleVideo"+(i+1);
            var imagen="imgVideo"+(i+1);
            var link="linkVideo"+(i+1);
            var datos="datosVideo"+(i+1);
            traerCanal(videos[i][8], datos,videos[i][5],videos[i][6]);
            document.getElementById(link).href="whatch.php?whatch="+videos[i][0]
            document.getElementById(imagen).src="https://i.ytimg.com/vi/"+videos[i][0]+"/hqdefault.jpg"
          document.getElementById(titulo).innerText=videos[i][1];
         
        }
       
      }
    };
    xhr.open("GET", "./php/traerVideos.php", true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhr.send();
}

//Trae y llena la informacion del Canal en el index
function traerCanal(id, datos, vistas, fecha){
  
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

