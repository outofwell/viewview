<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import=" java.util.*, java.io.*"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
  <link href="https://bootswatch.com/paper/bootstrap.min.css" rel="stylesheet">
  <script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="resources/css/prism.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/prism/0.0.1/prism.min.js" charset="utf-8"></script>
  <link href="resources/css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/github-fork-ribbon-css/0.1.1/gh-fork-ribbon.min.css" />
	<title>MY PAGE</title>
</head>

<body class="index-page">
<jsp:include page="navigation.jsp" flush="false"/>

<div class="wrapper">
	<div class="header header-filter" style="background-image: url('resources/assets/img/bg2.jpeg');">
	</div>

	<div class="main main-raised">
		<div class="section section-basic">
	    	<div class="container"><h3>write</h3>
	    		<div class="row">
		    		<div class="col-md-3">
		    		<center><br>
		    		<form class="form" action="writing" enctype="multipart/form-data" method="post">
					    <div style="display: inline-block" id="content"></div>
						<button class="btn btn-primary btn-sm">get Cover</button>
						<hr>
						<br>
						
						<div class="togglebutton">
							<label>
						    	<input type="checkbox">
								share
							</label>
						</div>
					</center>	
					</div>
					
					<div class="col-md-9" style="border:solid 1px lightgray; padding:25px; border-radius: 5px;">
						<div class="form-group">
    					<input type="text" value="" placeholder="Title" class="form-control" name="title" />
						</div>
						<textarea class="form-control" placeholder="code" rows="5" name="code">${param.file}에서 가져온 코드가 여기에 들어간다 <br> code c = new code();</textarea>
						<textarea class="form-control" placeholder="Detail" rows="5" name="content"></textarea>
						<div style="text-align:right;"><button class="btn btn-primary btn-sm">write</button></div>
					</form>	    

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
	  <script type="text/javascript" src="resources/smoothScroll.min.js"></script>
  <script src="resources/bundle.js"></script>
</html>
