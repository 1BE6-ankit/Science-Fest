<?php
    $darray['current_question_number'] = 0;
    $darray['show_answer'] = "";
    file_put_contents("json/runtime.json", json_encode($darray));

    $activities['activity-number'] = 0;
    file_put_contents("json/client_activity.json", json_encode($activities));

    $answer_condition['answer_state'] = 0;
    file_put_contents("json/show_answer.json", json_encode($answer_condition));
?>

    <html>

    <head>

        <!--styles-->
        <link rel="stylesheet" href="theme.css">
        <link rel="stylesheet" href="assets/Bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/animate.css">
        <!--scripts-->
        <script src="assets/jquery/jquery.min.js"></script>
        <!--        <script src="assets/Bootstrap/js/bootstrap.min.js"></script>-->
        <script src="js/admin.js"></script>
        <!--end-->
        <title>Mental Ability</title>

    </head>

    <body>
        <!--
       ques-cl : question class
       ans-cl : answer class
       --more
-->
        <!--       message-->


        <div class="container-fluid">
            <div class="row">
                <div class="quiz-and-control col-sm-8 col-md-8 col-lg-8 col-xs-8">
                    <div id="main" class="col-sm-12 col-md-12 col-lg-12 quiz">
                    </div>
                    <div class="col-sm-12 col-md-12 col-lg-12 load-and-send">
                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                            <div id="load" class="load-button hand-cursor">
                                load
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                            <div id="send" class="send-button hand-cursor">
                                send
                            </div>
                        </div>
                        <div class="col-xs-6 col-sm-12 col-md-6 col-lg-6">
                            <div id="timerStop" class="stop-button hand-cursor">
                                STOP
                            </div>
                        </div>

                        <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                            <div id="show-correct-answer" class="show-correct-answer-button hand-cursor">
                                Show correct answer
                            </div>
                        </div>

                    </div>
                    <!-- end:1 -->

                    <div id="score-controls" class="col-xs-12 col-sm-12 col-md-12 col-lg-12 load-and-send">

                    </div>

                </div>

                <div id="main_score" class="col-sm-4 col-md-4 col-lg-4 col-xs-4 score">
                </div>

            </div>

        </div>
    </body>

    </html>
