<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

	<script src="resources/assets/js/fileinput.js"></script>
	<script src="resources/assets/js/plugins/sortable.js"></script>
	<link href="resources/assets/themes/explorer/theme.css" media="all" rel="stylesheet" type="text/css"/>
	<link media="all" rel="stylesheet" type="text/css" href="resources/assets/css/fileinput.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <script src="resources/assets/themes/explorer/theme.js" type="text/javascript"></script>



	<title>HiCu Testing</title>

<style>
.kv-avatar .file-preview-frame,.kv-avatar .file-preview-frame:hover {
    margin: 0;
    padding: 0;
    border: none;
    box-shadow: none;
    text-align: center;
}
.kv-avatar .file-input {
    display: table-cell;
    max-width: 220px;
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
	    		<div class="col-md-12">
				<h3>ABOUT US</h3>
				
	<form enctype="multipart/form-data">
        <div class="form-group">
            <input id="file-4" type="file" class="file" data-upload-url="#">
        </div>
        <hr>
        <div class="form-group">
            <button class="btn btn-warning" type="button">Disable Test</button>
            <button class="btn btn-info" type="reset">Refresh Test</button>
            <button class="btn btn-primary">Submit</button>
            <button class="btn btn-default" type="reset">Reset</button>
        </div>
        <hr>
    </form>
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
