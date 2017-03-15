<?php

    require "permissions.php";
    require "define_mcq.php";

    $darray = json_decode(file_get_contents("../json/show_answer.json"),true);
    if($darray["answer_state"]!=$_POST['answer_state']){
        $show = new permissions();
        $answer = new mcq($show->current_question_number);
        $media_url = $answer->media_ans;


        $true_answer = $answer->correct_answer;
        if($true_answer != NULL or $true_answer!="") {
          echo "<span class = 'animated tada small-answer'> $true_answer </span>";
        }else{
            echo "_";
        }

        // echo $answer->correct_answer;
        //
        // <span class = 'animated tada small-answer'> + warlock + "</span>"



        //pulse  wobble
        if($media_url !=NULL or $media_url!=""){
          echo  " <div class='animated zoomIn'> ".
            "<img src='../media/$media_url' width'450' height='310'>".
            "</div> <br/>";
        }

    }

?>
