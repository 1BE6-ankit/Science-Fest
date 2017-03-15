<?php
    $user_name = $_POST['user_name'];
    $user_points = $_POST['user_points'];

    $score_array = json_decode(file_get_contents("../json/score.json", true));
//    $score_array["$user_name"] = 10;


    foreach ($score_array as $user => $score) {
        $temp = $score;
        if($user==$user_name){
            $temp = $score + $user_points;
        }
        $random_array[$user] = $temp;
    }

    file_put_contents("../json/score.json", json_encode($random_array));


?>
