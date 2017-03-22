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
	    		<div class="col-md-12">
				<!--                 collapse -->
	            <div id="collapse">
	                <div class="title">
	                    <h3>Board</h3>
	                </div>
	                <center>
	                <div class="row" style="width:600px;">
	                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
	                          <div class="panel panel-default">
	                            <div class="panel-heading" role="tab" id="headingOne" style="background-color:white;">
	                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
	                                    <h4 class="panel-title">
	                                    	<img src="http://placehold.it/100" /> 게시물 제목 1
	                                    <i class="material-icons">keyboard_arrow_down</i>
	                                    </h4>
	                                </a>
	                            </div>
	                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
	                              <div class="panel-body">
	                              	게시물 내용 1 <img src="resources/assets/img/mic.png"> 
	                              	<button class="btn btn-primary btn-fab btn-fab-mini btn-round">
	<i class="material-icons">favorite</i>
</button>
	                              </div>
	                            </div>
	                          </div>
	                          <div class="panel panel-default">
	                            <div class="panel-heading" role="tab" id="headingTwo" style="background-color:white;">
	                              <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
	                                <h4 class="panel-title">
	                                  Collapsible Group Item #2
	                                  <i class="material-icons">keyboard_arrow_down</i>
	                                </h4>
	                              </a>
	                            </div>
	                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
	                              <div class="panel-body">
	                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
	                              </div>
	                            </div>
	                          </div>
	                          <div class="panel panel-default">
	                            <div class="panel-heading" role="tab" id="headingThree" style="background-color:white;">
	                              <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
	                                <h4 class="panel-title">
	                                  Collapsible Group Item #3
	                                  <i class="material-icons">keyboard_arrow_down</i>
	                                </h4>
	                              </a>
	                            </div>
	                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
	                              <div class="panel-body">
	                                Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
	                              </div>
	                            </div>
	                          </div>
	                        </div>
	                </div>
	                <center>
	            </div>
	<!--                 end collapse -->
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
		.panel-heading{
		background-color: white;}
		
	</style>
</html>
