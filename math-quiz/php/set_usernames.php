<?php
//  require "permissions.php";
//  $permi = new permissions();
//  if ($permi->lock_user){echo "locked";}else{
//}

//$locked_state = json_decode(file_get_contents("../json/locked.json"),true);

$user_name_score = json_decode(file_get_contents("../json/score.json"),true);
  $user_name = $_POST['user'];
  $user_name_score["$user_name"] = 0;
  file_put_contents("../json/score.json", json_encode($user_name_score));
?>
