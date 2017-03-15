<html>

<head>
    <!--styles-->
    <link rel="stylesheet" href="../theme.css">
    <link rel="stylesheet" href="../assets/Bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/animate.css">
    <link rel="stylesheet" href="../timer.css">
    <link rel="stylesheet" href="../pop-up.css">
    <!-- style for timer -->
    <!--scripts-->
    <script src="../assets/jquery/jquery.min.js"></script>
    <!--        <script src="../assets/Bootstrap/js/bootstrap.min.js"></script>-->
    <script src="../js/client.js"></script>
    <!--end-->
    <title>MCQ for BNKS</title>
</head>

<body>
    <!--
       ques-cl : question class
       ans-cl : answer class
       --more
-->

    <!-- Display the pop up rules for the general round -->
    <div class="container popup-windows" id="buzzer-container">
        <button class="btn btn-danger close-popup1">CLOSE</button>
        <div class="rules animated bounceIn">
            <h3> Rules for the <strong>BUZZER ROUND</strong></h3>
            <h5> This is a buzzer round and only one team will be able to answer the question </h5>
            <ul>
                <li>A total of 8 questions will be asked</li>

                <li>The questions asked will be based on pictures or videos</li>

                <li>The participants should press the buzzer to answer the questions</li>

                <li>The participant can answer, only when the Quiz-Master tells to do so.</li>

                <li>After pressing the buzzer, the participant will get 30 seconds to answer the question</li>

                <li>Correct answer will grant 10 points and an incorrect -10 points</li>

                <li>Answering the question before the approval of Quiz-Master will not be entertained</li>
            </ul>
        </div>
    </div>

    <div class="msg modal text-success h1">Hello and welcome</div>
    <!--       message-->
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-md-8 col-lg-8 col-xs-8 quiz">

                <div id="main" class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
                </div>

            </div>
            <div id="main_score" class="col-sm-4 col-md-4 col-lg-4 score">
            </div>
        </div>
    </div>
</body>

</html>
