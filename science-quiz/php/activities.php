<?php
    $darray["activity-number"] = $_POST['activity_number'];
    file_put_contents("../json/client_activity.json", json_encode($darray));
?>
