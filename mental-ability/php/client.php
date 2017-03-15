<html>

<head>
    <!--styles-->
    <link rel="stylesheet" href="../theme.css">
    <link rel="stylesheet" href="../assets/Bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/animate.css">
    <link rel="stylesheet" href="../timer.css">
    <link rel="stylesheet" href="pop-up.css">
    <!-- style for pop up rules --!>
    
    <!-- style for timer -->
    <!--scripts-->
    <script src="../assets/jquery/jquery.min.js"></script>
    <!--        <script src="../assets/Bootstrap/js/bootstrap.min.js"></script>-->
    <script src="../js/client.js"></script>
    <!--end-->
    <title>MCQ for BNKS</title>
</head>

<body>

    <!-- Display the pop up rules for the zumble-up round -->
    <div class="container popup-windows" id="zumble-container">
        <button class="btn btn-danger close-popup1">CLOSE</button>
        <div class="rules animated bounceIn">
            <h3> Rules for the <strong>JUMBLE-UP ROUND</strong></h3>
            <h5> This is a General Round and the questions won't be passed </h5>
            <ul>
                <li> A total of 4 questions will be asked, 1 question for each participant </li>

                <li> A total of 25 seconds will be given to answer a question. </li>

                <li> A picture, which consists of 6 different objects will be shown for 5 seconds</li>

                <li>After 5 seconds the objects in the picture will be jumbled up, and one object will be replaced by a new object</li>

                <li>Indentifying the new object will grant <strong>10 points</strong> and finding the replaced object <em>another</em> <strong>10 points</strong>. So a total of 20 points can be obtained</li>
            </ul>
        </div>
    </div>

    <div class="container popup-windows" id="zoomin-container">
        <button class="btn btn-danger close-popup2">CLOSE</button>
        <div class="rules animated bounceIn">
            <h3> Rules for the <strong>Zoomed-In round</strong></h3>
            <h5> This is a general round and only one team will be able to answer the question </h5>
            <ul>
                <li>A total of 8 questions will be asked</li>

                <li>A picture will be displayed, which is a zoomed in part of an object</li>

                <li>Looking at the picture displayed on the screen the participant has to tell the main object</li>

                <li>Correctly answering the <strong>Big Picture</strong> will grant 10 points</li>

            </ul>
        </div>
    </div>

    <!--
    <div class="container popup-windows" id="zoomin-container">
        <button class="btn btn-danger close-popup2">CLOSE</button>
        <div class="rules animated bounceIn">
            <h3> Rules for the <strong>Zoomed-In round</strong></h3>
            <h5> This is a buzzer round and only one team will be able to answer the question </h5>
            <ul>
                <li>A total of 8 questions will be asked</li>

                <li>A picture will be displayed, which is a zoomed in part of an object</li>

                <li>The participant should press the buzzer to answer the question</li>

                <li>After pressing the buzzer, the participant can answer only when the Quiz-Master tells to do so.</li>

                <li>After pressing the buzzer, the participant will get 25seconds to answer the question</li>

                <li>Correct answer will grant 10 points and an incorrect -10 points</li>

                <li>Answering the question before the approval of Quiz-Master will not be entertained</li>
            </ul>
        </div>
    </div>
-->


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
