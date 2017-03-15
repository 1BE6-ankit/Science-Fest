<?php
    $all_users = $_POST['users'];
    
    $temp_array = array();
    
     foreach ($all_users as $current_name) {
        $temp_array[$current_name] = 0;     
     }

    file_put_contents("../json/score.json", json_encode($temp_array));

?>
