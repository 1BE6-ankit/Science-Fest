var first_load = 1;
var question_number = 0;
var activity_number = 0;
var answer_state = 0;
var var_get_content, var_get_activities, var_show_answer;
var set_time = 500;
var socreBoardCount = 1,
    totalPlayers = 5;
var secondaryTimer = 1,
    secondaryCounter = 0; //store the time of the  second clock

var round = "general"; //round should be general for the final round

var popupDisplayed = false; //track whether popup is displayed or not

$(document).ready(function () {
    $("#buzzer-container").hide();
    $(".close-popup1").click(function () {
        $("#buzzer-container").hide();
        popupDisplayed = true;
    });
});




// Start code for timer
function startTimer() {
    sec--;
    progressTime();
    if (sec < 10) sec = "0" + sec;
    $("#seconds").text(sec);
    changeColor();
}

function stopTimer() {
    //    $("#mainCircle").css({
    //        'transition': 'all 0s linear',
    //        'stroke-dashoffset': 0
    //    });
    clearInterval(var_get_activities);
    ++activity_number;
    $('.enabled').off();
    $('.enabled').removeClass('enabled').addClass('disabled');

    if (question_number == 9) round = "buzzer";

    if (sec != 0 && round != "general") {

        offsetValue = offsetValue - offsetValueCounter;

        $("#mainCircle").css({
            'transition': 'all 8s linear',
            'stroke-dashoffset': -376,
            'stroke': 'red'
        });
    }
    call_show_answer();
    //    $(".enabled").attr("disabled", "disabled");
}

function setTimer() {
    //initialize timer object: it controls the execution of the function - startTimer - each second
    timer = setInterval(startTimer(), 1000);
}

//$("#seconds").text(secInitial); //set the tspan value to initial
//        setTimer(); //*first point to start the Timer function

//set function to show the correct answer

function show_answer() {
    secondaryCounter++;
    if (secondaryTimer < 9 && secondaryCounter % 2 == 0 && round != "general" && sec != 0) {
        $("#seconds").text("0" + (secondaryTimer++));
    }
    $.ajax({
        url: 'show_answer.php',
        type: 'post',
        async: true,
        data: {
            answer_state: answer_state
        },
        cache: false,
        success: function (warlock) {
            if (warlock) {
                $(".circle").hide();
                $(".circle2").hide();
                $("#answer-container").html("<span style='color:black;'>ANSWER<span/>: <br/> <span class = 'animated tada small-answer'>" + warlock + "</span>");
                console.log("I'm here");
                clearInterval(var_show_answer);
                ++answer_state;
                //                showScore(); //after the answer is displayed call the function show answer to update the questions
                call_get_content();
            }

        }
    });
}

function changeColor() {

    if (sec == Math.floor(secInitial / 1.5)) {
        $("#seconds").css({
            'fill': 'orange',
            'transition': 'all 1s linear'
        });
        $("#mainCircle").css({
            'stroke': 'orange',
            'transition': 'all 1s linear'
        });
    }
    if (sec == Math.floor(secInitial / 3)) {
        $("#seconds").css({
            'fill': 'rgb(255,100,100)',
            'transition': 'all 1s linear'
        });
        $("#mainCircle").css({
            'stroke': 'rgb(255,100,100)',
            'transition': 'all 1s linear'
        });
    }
    if (sec == 4) {
        $("#seconds").css({
            'fill': 'rgb(225,0,0)',
            'transition': 'all 1s linear'
        });
        $("#mainCircle").css({
            'stroke': 'rgb(225,0,0)',
            'transition': 'all 1s linear'
        });
    }
}

function progressTime() {
    //    $('.circleFill').attr('class', 'circleFill filled');
    $("#mainCircle").css({
        'stroke-dashoffset': offsetValue,
        'transition': 'all 1s linear'
    });
    offsetValue += offsetValueCounter;
}

function showCurrentUser() {
    $(".user-card:nth-child(1)").css("background", "green");
}

var get_activities = function () {
    if (sec != 0) {
        if (timerCalls++ % 2 == 0) startTimer();
    }
    $.ajax({
        type: 'post',
        url: 'client_activity.php',
        data: {
            activity_number: activity_number
        },
        async: true,
        cache: false,
        success: function (ratm) {
            if (ratm)
                stopTimer();
        }
    });
}

var get_content = function (param) {

    if (popupDisplayed == false && round == "general" && question_number == 8) {
        $("#buzzer-container").show();
        popupDisplayed = true;
    } else {
        $(".popup-windows").hide();
    }

    $.ajax({
        type: 'post',
        url: 'client_get_content.php',
        data: {
            question_number: question_number
        },
        async: true,
        cache: false,
        success: function (data) {
            console.log("Activity number:" + activity_number);
            showScore();
            if (data) {
                question_number++;
                $('#main').html(data);

                //these two variables are for keeping track of time of the second timer and since get_answers run in 500ms, second on the secondary timer should be updated at 1000ms. SO modulus of  secondaryCounter is used for kepping track of seconds
                secondaryTimer = 1;
                secondaryCounter = 0;

                secInitial = 31;
                sec = secInitial;
                circum = Math.floor(2 * Math.PI * 60) + 7;
                offsetValueCounter = circum / secInitial, offsetValue = offsetValueCounter;
                timerCalls = 0;
                $("#mainCircle").css({
                    'stroke': '#15ad15',
                    'stroke-dashoffset': '0',
                    'stroke-dasharray': '380'
                });

                if (first_load) {
                    showScore();
                    showCurrentUser();
                }

                $(document).ready(function () {
                    $(".enabled").off().on('click', function () {
                        $('.enabled').removeClass('enabled').addClass('disabled');

                        $.ajax({
                            type: 'post',
                            url: 'check_answer.php',
                            data: {
                                answer: $.trim($(this).text()),
                                user: user,
                                question_number: question_number
                            },
                            async: true,
                            cache: false,
                            success: function () {}
                        });
                    });

                });
                clearInterval(var_get_content);
                call_get_activities();
            }

        }
    });
}

function showScore() {
    $.ajax({
        type: 'post',
        url: 'score.php',
        async: true,
        cache: false,
        success: function (tux) {
            $('#main_score').html(tux);
            first_load = 0;
            //set variables for timer and reset

        }
    });
}

call_get_content();

function call_show_answer() {
    var_show_answer = setInterval('show_answer()', set_time);
}

function call_get_content() {
    var_get_content = setInterval('get_content()', set_time);
}

function call_get_activities() {
    var_get_activities = setInterval('get_activities()', set_time);
}
