<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

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
						<img src="http://placehold.it/120" /><br>
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
					
					<div class="col-md-9" style="border:solid 1px lightgray; padding:25px;">
						<div class="form-group">
    					<input type="text" value="" placeholder="Title" class="form-control" />
						</div>
						<textarea class="form-control" placeholder="Code" rows="5"></textarea>
						<textarea class="form-control" placeholder="Detail" rows="5"></textarea>
						<div style="text-align:right;"><button class="btn btn-primary btn-sm">write</button></div>
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
