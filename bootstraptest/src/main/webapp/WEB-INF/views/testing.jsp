<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>playerTEST</title>
</head>
<body>
<div id="container" class="disabled">

	<div id="cover-art">
		<div id="cover-art-big"></div>
		<img id="cover-art-small" alt="cover-art-small" src="assets/img/default.png">
		<div class="instructions">Drop your audio files here.</div>
	</div>

	<div id="wave"></div>

	<div id="control-bar">

		<div class="player-control">
			<div id="previous-button" title="Previous"><i class="fa fa-fast-backward"></i></div>
			<div id="play-button" title="Play"><i class="fa fa-play"></i></div>
			<div id="pause-button" title="Pause"><i class="fa fa-pause"></i></div>
			<div id="stop-button" title="Stop"><i class="fa fa-stop"></i></div>
			<div id="next-button" title="Next"><i class="fa fa-fast-forward"></i></div>
			<div id="shuffle-button" title="Shuffle Off"><i class="fa fa-random"></i></div>
			<div id="repeat-button" title="Repeat Off"><i class="fa fa-refresh"><span>1</span></i></div>
		</div>

		<div id="playlist">

			<div id="track-details" title="Show playlist">
				<i class="fa fa-sort"></i>
				<p id="track-desc">There are no tracks loaded in the player.</p>
				<p id="track-time">
					<span id="current">-</span> / <span id="total">-</span>
				</p>
			</div>

			<div id="expand-bar" class="hidden">

				<form>
					<label for="searchBox">Search</label><div><input id="searchBox" type="search" name="search"></div>
				</form>
				<ul id="list"></ul>
			</div>

		</div>

	</div>

	<div id="drop-zone" class="hidden">Drag &amp; Drop Files Here</div>

</div>

<script src="assets/js/jquery-1.11.2.min.js"></script>
<script src="assets/js/id3-minimized.js"></script>
<script src="assets/js/wavesurfer.min.js"></script>
<script src="assets/js/script.js"></script>
</body>
</html>