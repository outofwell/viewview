<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

	<title>MY PAGE</title>


<script>
function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("text");
    ev.target.appendChild(document.getElementById(data));
    //alert(data);
    location.href = 'write';
   
}
</script>
<style>
#div1{
    float: left;
    width: 400px;
    height: 300px;
    margin: 10px;
    padding: 10px;
    border: 1px solid lightgray;
    border-radius: 5px;
}

#div2{
	float: left;
	width: 200px;
    height: 100px;
	margin: 10px;
    padding: 10px;
    border: 1px solid lightgray;
    border-radius: 5px;
}
</style>
</head>

<body class="index-page">
<jsp:include page="navigation.jsp" flush="false"/>

<div class="wrapper">
	<div class="header header-filter" style="background-image: url('resources/assets/img/bg2.jpeg');">
	</div>

	<div class="main main-raised">
		<div class="section section-basic">
	    	<div class="container">
	    		<div class="row">
		    		<div class="col-md-6">
		    		
						<div id="div1" ondragover="allowDrop(event)">
						  <img src="http://placehold.it/380x70" draggable="true" ondragstart="drag(event)" id="drag1">
						  <img src="http://placehold.it/380x70" draggable="true" ondragstart="drag(event)" id="drag2">
						  <img src="http://placehold.it/380x70" draggable="true" ondragstart="drag(event)" id="drag3">
						</div>
						<br>
						<div>
						<span id="div2">ddddwww</span>
						<span id="div2" ondrop="drop(event)" ondragover="allowDrop(event)">Drop Here & write</span>
						</div>
	
					</div>
					<div class="col-md-6">
						<h4>My Boards</h4>
						<img src="http://placehold.it/400x400">
					</div>
				</div>
	    	
			</div>
		</div>
		
	    <footer class="footer">
		    <div class="container">
		    </div>
		</footer>
	</div>
</div>

</body>
	<style>
		.main-raised {
			margin: -550px 30px 0px;
		}
	</style>
</html>
