<?php
    
    $darray = json_decode(file_get_contents("../json/client_activity.json"),true);
    
    if($darray["activity-number"] != $_POST['activity_number']){
        echo 1;
    }

?>
