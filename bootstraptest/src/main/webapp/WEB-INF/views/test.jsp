<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="row">
	<div class="col-md-6">
	<!-- start music player -->    	
    <div class='jAudio'>	<!-- 오디오 -->

      <audio></audio>

      <div class='jAudio--ui'>

        <div class='jAudio--thumb'></div>

        <div class='jAudio--status-bar'>

          <div class='jAudio--details'></div>
          <div class='jAudio--volume-bar'></div>

          <div class='jAudio--progress-bar'>
            <div class='jAudio--progress-bar-wrapper'>
              <div class='jAudio--progress-bar-played'>
                <span class='jAudio--progress-bar-pointer'></span>
              </div>
            </div>
          </div>

          <div class='jAudio--time'>
            <span class='jAudio--time-elapsed'>00:00</span>
            <span class='jAudio--time-total'>00:00</span>
          </div>

        </div>

      </div>


      <div class='jAudio--playlist'>
      </div>

      <div class='jAudio--controls'>
        <ul>
          <li><button class='jAudio--control jAudio--control-prev' data-action='prev'><span></span></button></li>
          <li><button class='jAudio--control jAudio--control-play' data-action='play'><span></span></button></li>
          <li><button class='jAudio--control jAudio--control-next' data-action='next'><span></span></button></li>
        </ul>
      </div>

    </div>
    </div>
    <!-- end music player -->
    	<div class="col-md-6">
    	2번째 칸
	</div>
</div>


    <script src='https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js'></script>
    <script src='resources/js/jaudio.min.js'></script>
    <script src='resources/js/main.js'></script>
</body>
</html>