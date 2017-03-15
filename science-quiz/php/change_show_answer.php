<?php
      require "permissions.php";
      $check = new permissions();
   
      $check->update();

    $darray["answer_state"] = $_POST['answer_state'];
    file_put_contents("../json/show_answer.json", json_encode($darray));
?>
