<?php
  require "permissions.php";
  $per = new permissions();
  if ($_POST['first_send']){$per->current_question_number = 1;}else{$per->current_question_number++;}
  $per->update();
?>
