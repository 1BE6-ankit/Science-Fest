<?php
  class permissions
  {
    public $current_question_number,$show_answer;
    function __construct()
    {
      $darray = json_decode(file_get_contents("../json/runtime.json"),true);
      $this->current_question_number = $darray['current_question_number'];
      $this->show_answer = $darray['show_answer'];
      }

      function update()
      {
        $darray['current_question_number'] = $this->current_question_number;
        $darray['show_answer'] = $this->show_answer;
        file_put_contents("../json/runtime.json", json_encode($darray));
      }
    }
?>
