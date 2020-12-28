<!DOCTYPE html>
<html lang="en">
  
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reproductor</title>
    <link rel="stylesheet" href="./css/video-js.css">
    <link rel="stylesheet" href="./css/whatch.css">
    <link rel="stylesheet" href="./css/fonts.css">
    <link rel="stylesheet" href="./css/header.css">
    <script src="./js/video.js"></script>
    <script src="./js/whatch.js"></script>
</head>
<body>
  <?php require_once('./complementos/header.php')?>
  <!--Visualizador del video-->
<div id="infoVideo" class="infoVideo">
   <div id="contRep">

   </div>
   <!--Informacion del video-->
 <div>
 <h1 id="tituloVideo"></h1>
 <p id="datosVideo"> </p>
 <hr>
 <!---Informacion del Canal-->
 <nav id="infoCanal">
    <img id="logoCanal" src="" alt="">
    <div>
    <h4 id="nombreCanal"></h4>
    <h5 id="suscriptoresCanal"></h5>
</div>

<button id="suscribirse">Suscribirse</button>
</nav>
<hr>
<!--Descripcion del video-->
<p id="descripcionVideo"></p> <hr> </div>

    </div>
<!--Sugerencias de los video-->
    <div id="sugerencias">
    <a href="" id="linkVideo1">
  <nav class="video">    
    <img id="imgVideo1" class="miniatura" src="" alt="">
    <div>
    <h2 id="titleVideo1" class="titleVideo" ></h2> 
    <p id="datosVideo1"></p>
    </div>
  </nav>
  </a>
  <a href="" id="linkVideo2"> 
  <nav class="video">
    <img id="imgVideo2" class="miniatura" src="" alt="">
    <div>
    <h2 id="titleVideo2" class="titleVideo"></h2> 
    <p id="datosVideo2"></p>
</div>
  </nav>
</a>
<a href="" id="linkVideo3">
  <nav class="video">
    <img id="imgVideo3" class="miniatura" src="" alt="">
    <div>
    <h2 id="titleVideo3" class="titleVideo"></h2> 
    <p id="datosVideo3"></p>
    </div>
  </nav>
</a>
<a href="" id="linkVideo4">
  <nav class="video">
    <img id="imgVideo4" class="miniatura" src="" alt="">
    <div>
    <h2 id="titleVideo4" class="titleVideo"></h2> 
    <p id="datosVideo4"></p>
</div>
  </nav>
</a>
<a href="" id="linkVideo5">
  <nav class="video">
    <img id="imgVideo5" class="miniatura" src="" alt="">
    <div>
    <h2 id="titleVideo5" class="titleVideo"></h2> 
    <p id="datosVideo5"></p>
    </div>  
  </nav>
</a>

    </div>
</body>
</html>


