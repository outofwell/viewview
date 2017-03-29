<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import=" java.util.*, java.io.*"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
	});
	
	$(function() {
		
		//이미지
	    $("#imgInp").on('change', function(){
	        readURL(this);
	    });
	    
	    //체크박스
	    var count = 0;
	    $("input:checkbox").on('click', function(){
	   	  	if(count>0){
		    	$("#share").html("unshare");
		    	count=0;
	   	  	}else{
		   	  	$("#share").html("share");
		    	count++;
	   	  	}
	    });
	});

  function readURL(input) {
      if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {
              $('#imgView').attr('src', e.target.result);
          }

        reader.readAsDataURL(input.files[0]);
      }
  }

</script>
<style>
	img{
		width: 120px; height:120px;
		border-radius: 5px;
	}
</style>
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
	    		<form id="form1" runat="server" action="writing" method="post" enctype="multipart/form-data">
	    			<input type="hidden" name="userid" value="${loginId}" />
		    		<div class="col-md-3">
		    		<center><br>
		    				
				        <img id="imgView" src="resources/covers/${boardFile.cover_re}" onERROR="this.src='resources/assets/img/robot.png'"/>
				        <br>
				   		 <label class="btn btn-primary btn-sm">
			                get Cover&hellip; <input type="file" style="display: none;" id="imgInp" name="upload" />
			            </label>
						<hr>

						<div class="togglebutton">
							<label>
						    	<input type="checkbox" id="checkbox" value="shared">
								<span id="share">unshare</span>
							</label>
						</div>
					</center>	
					</div>
					
					<div class="col-md-9" style="border:solid 1px lightgray; padding:25px; border-radius: 5px;">
						<div class="form-group">
    					<input type="text" placeholder="Title" class="form-control" name="title" value="${boardFile.file_title}"/>
						</div>
						<textarea class="form-control" placeholder="code" rows="5" readonly>${boardFile.file_ori}</textarea>
						<textarea class="form-control" placeholder="detail" rows="5" name="content"></textarea>
						<div style="text-align:right;"><button class="btn btn-primary btn-sm">write</button></div>
					</div>
				</form>	    
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
