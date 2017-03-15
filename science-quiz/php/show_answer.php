<?php
  
    require "permissions.php";
    require "define_mcq.php";

    $darray = json_decode(file_get_contents("../json/show_answer.json"),true);
    if($darray["answer_state"]!=$_POST['answer_state']){
        $show = new permissions();
        $answer = new mcq($show->current_question_number);
        echo $answer->correct_answer;
    }

?>
