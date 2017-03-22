<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<title>HiCu Testing</title>
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
					<div class="col-md-6">	<!-- 왼쪽 -->
						<h3>CODING</h3>
						<div class="row">
							<div class="col-md-10">
								<textarea class="form-control" placeholder="run sample" rows="4"></textarea>
							</div>
							<div class="col-md-2">
								<button class="btn btn-primary">▶</button>
								<button class="btn btn-primary">▼</button>
							</div>
						</div>
						<textarea class="form-control" placeholder="code" rows="10"></textarea>
						
						<div class="row">
							<div class="col-md-10">
								<div id="sliderRegular" class="slider"></div>
							</div>
							<div class="col-md-2">
								<button class="btn btn-primary">▶</button>
							</div>
						</div>
					</div>
			    	<div class="col-md-6">	<!-- 오른쪽 -->
			    	<h3>PLAY</h3>
			    	<div><img src="http://placehold.it/450x350" /></div>
			    	<button class="btn btn-primary">Load</button>
					<button class="btn btn-primary">Save</button>
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

<style>
	.main-raised {
		margin: -550px 30px 0px;
	}
</style>

</html>
