<?php
//Codificacion del link para Reproducirlo
 $vid = $_GET['vid'];    
 parse_str(file_get_contents("http://youtube.com/get_video_info?video_id=" . $vid), $info); //decode the data
 $videoData = json_decode($info['player_response'], true);
 $streamingData = $videoData['streamingData'];
 $streamingDataFormats = $streamingData['formats'];
 echo $streamingDataFormats[0]['url'];
    


?>



