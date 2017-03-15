<?php
  require_once "define_mcq.php";
  $gabs = new mcq($question_number);
?>

    <div class="like-main-card animated bounceInDown col-sm-12 col-md-12 col-lg-12">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                <div class="ques-card card">
                    <span class="question">
                         <? echo $gabs->question_number.") " ?>
                         <? echo $gabs->question."?" ;?>
                    </span>
                </div>
            </div>
        </div>

        <?
            $media_url = $gabs->media_name;
            if($media_url != NULL or $media_url!="") {
                if(substr( $media_url, 7, 3 ) === "vid"){
                  // <video width="320" height="240" autoplay controls>
                  //   <source src="../traveling_flame.m4v" type="video/mp4">
                  // </video>
                  echo " <div id='media-holder' class='col-xs-12 col-sm-12 col-md-12 col-lg-12'> ".
                    "<video width='450' height='310' autoplay loop muted>".
                    "<source src='../media/$media_url'>".
                    "</video>".
                    "</div>";
                }else{
                      echo " <div id='media-holder'> ".
                        "<img src='../media/$media_url' width'500' height='310'>".
                        "</div>";
                }

            }

        ?>



            <!--
<div style="position:relative;" id="media-holder">
    <img src="../pic.jpg" width="50%" height="50%" />
</div>
-->


            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="timerHolder">
                <div class="circle">
                    <svg>
                        <g>
                            <circle cx="50%" cy="50%" r="60" id="ghostCircle">
                            </circle>
                            <circle cx="50%" cy="50%" r="60" id="mainCircle">
                            </circle>
                            <text  id="seconds" x="44%" y="58%" font-family="Verdana" font-size="35px" fill="black">
                                <!-- <tspan id="seconds"></tspan> -->
                            </text>
                        </g>
                    </svg>
                </div>
            </div>

            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="answer-container">

            </div>

    </div>

    <!-- <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" id="answer-container">

    </div> -->
