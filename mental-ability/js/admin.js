var users_number = prompt("How many users to play");
var users_names = [];

var user = "admin";
var first_send = 1;
var activity_number = 0;
var answer_state = 0;

var getContent = function (param) {
    $.ajax({
        type: 'post',
        url: 'php/admin_get_content.php',
        data: {
            user: user,
            first_send: first_send,
            user_who_will_play: param
        },
        async: true,
        cache: false,
        success: function (data) {
            $('#main').html(data);
            $(".circle").hide();
            $("#media-holder").hide();
            $("#media-holder2").hide();
        }
    });
};

var send = function (param) {
    $.ajax({
        type: 'post',
        url: 'php/admin_send.php',
        data: {
            user: user,
            first_send: first_send
        },
        async: true,
        cache: false,
        success: function (data) {

        }
    });
};


$(document).ready(function () {

    $("#send").hide();
    $("#timerStop").hide();
    $("#show-correct-answer").hide();

    var j = 0;
    for (var i = 0; i < users_number; i++) {
        j = i + 1;
        users_names[i] = prompt("User:" + j);
    }

    $.ajax({
        url: 'php/putusers.php',
        type: 'post',
        data: {
            users: users_names
        },
        async: true,
        cache: false,
        success: function (data) {
            console.log(data);
        }
    });

    if (first_send)
        $(".score").addClass("animated bounce score");
    controlScores(); //call the function to set all the score updating tools ready
    scoreBoard(); //call the function, which displays the latest scores

    $("#load").click(function () {
        //        $.ajax({
        //            url: 'php/change_show_answer.php',
        //            type: 'post',
        //            data: {
        //                status: ""
        //            },
        //            async: true,
        //            cache: false,
        //            success: function () {}
        //        });
        $("#load").hide();
        $("#send").show();
        //        $("#timerStop").hide();
        //        $("#show-correct-answer").hide();
        getContent();
    });

    $("#send").click(function () {
        //        $("#load").hide();
        $("#send").hide();
        $("#timerStop").show();
        //        $("#show-correct-answer").hide();
        send();
        first_send = 0;
    });

    $("#timerStop").click(function () {
        ++activity_number;
        $.ajax({
            url: 'php/activities.php',
            type: 'post',
            data: {
                activity_number: activity_number
            },
            async: true,
            cache: false,
            success: function () {
                $("#timerStop").hide();
                $("#show-correct-answer").show();
            }
        });
    });

    $("#show-correct-answer").click(function () {
        ++answer_state;
        $.ajax({
            url: 'php/change_show_answer.php',
            type: 'post',
            data: {
                answer_state: answer_state
            },
            async: true,
            cache: false,
            success: function () {
                $("#show-correct-answer").hide();
                $("#load").show();
            }
        });
    });


    $(".update-button").click(function () {
        var buttonId = $(this).attr('id');
        var userName = buttonId; //name of the user to increase points

        var points = parseInt($("input[id=" + buttonId + "]").val()); //value of points from the input field to increase the point

        if (points == "" || isNaN(points)) points = 0;
        console.log(points);

        $.ajax({
            url: 'php/update_score.php',
            type: 'post',
            data: {
                user_name: userName,
                user_points: points
            },
            async: true,
            cache: false,
            success: function (data) {
                scoreBoard();
            }
        });
        scoreBoard();
    });

    $("#clear-fields").click(function () {
        $(".score-field").val("");
    });

});


function scoreBoard() {
    $.ajax({
        url: 'php/score.php',
        type: 'post',
        async: false,
        cache: false,
        success: function (data) {
            $('#main_score').html(data);
            //            $(".user-card:nth-child(1)").css("background-color", "#00aa00");
        }
    });
}


function controlScores() {
    /*
    The following should be added
    <div class='eachUser'>
        <span class='col-xs-6 col-sm-6 col-md-4 col-lg-4'>Name of the user</span>
        <input type='text' class='col-xs-6 col-sm-6 col-md-4 col-lg-4'>
        <button id=' |name of hte user| ' class="col-xs-12 col-sm-12 col-md-4 col-lg-4 btn btn-primary' Update Score </button>
    </div>

    */
    for (var i = 0; i < users_number; i++) {
        $("#score-controls").append("<div class='eachUser col-xs-12 col-sm-12 col-md-12 col-lg-12'>" +
            "<span class = 'col-xs-6 col-sm-6 col-md-4 col-lg-4'>" + users_names[i] + "</span>" +
            "<input type = 'text' class = 'col-xs-6 col-sm-6 col-md-4 col-lg-4 score-field' id = '" + users_names[i] + "'>" +
            "<button id = '" + users_names[i] + "' class = 'col-xs-12 col-sm-12 col-md-4 col-lg-4 btn btn-primary " +
            "update-button'> Update Score </button>" +
            "</div>");
    }
    $("#score-controls").append("<button class='col-xs-12 col-sm-12 col-md-12 col-lg-12 btn btn-danger' id='clear-fields'>" +
        "Clear All Fields</button>");
}
