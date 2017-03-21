
<!DOCTYPE html>
<html>
<head lang="en">
	<meta charset="UTF-8">
	<title>HTML5 Music Player</title>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">


<style>
body{margin-top:20px;}

.panel-title a {
    display: block;
    position: relative;
    padding: 10px 60px 10px 15px;
    font-weight: 400;
    font-size: 18px;
    line-height: 1.6;
    color: #6d7194;
}
a:hover{
    text-decoration:none;    
}
.drop-accordion .panel-default {
    overflow: hidden;
	border: 0;
	border-radius: 0;
	-webkit-box-shadow: none;
	box-shadow: none;
}
.drop-accordion .panel-heading {
	overflow: hidden;
	margin-bottom: 5px;
	padding: 0;
	border: 1px solid #d9d7d7;
	background: #fafafa;
	border-radius: 0;
}
.leaf-ui .drop-accordion .panel-heading,
.circlus-ui .drop-accordion .panel-heading {
	border-radius: 4px;
}
.panel-title a {
	display: block;
	position: relative;
	padding: 10px 60px 10px 15px;
	font-weight: 400;
	font-size: 18px;
	line-height: 1.6;
	color: #6d7194;
}
.panel-title span {
	
}
.panel-title .expand-icon-wrap {
	position: absolute;
	right: 0;
	top: 0;
	bottom: 0;
	border-left: 1px solid #d9d7d7;
	font-size: 24px;
	line-height: 46px;
	color: #03C6FE;
}
.expand-icon-wrap:before {
	content: '';
	display: inline-block;
	height: 100%;
	vertical-align: middle;
}
.panel-title .expand-icon {
	padding: 0 18px;
	vertical-align: middle;
}
.panel-title .expand-icon:before {
	content: "\f055";
}
.drop-accordion .panel-body {
	position: relative;
	border: 1px solid #d9d7d7;
}
.circlus-ui .drop-accordion .panel-body,
.leaf-ui .drop-accordion .panel-body {
	border-radius: 4px;
}
.panel-body-icon {
	width: 75px;
	float: left;
	padding: 10px;
}
.panel-body-icon i {
	font-size: 45px;
	color: #03C6FE;
}
.drop-accordion .tab-collapsed {
	border: transparent;
	background: #03C6FE;
	-webkit-transition: .5s;
	-o-transition: .5s;
	transition: .5s;
}
.tab-collapsed a {
	color: #fff;
}
.tab-collapsed .expand-icon-wrap {
	border-color: #fff;
	color: #fff;
}
.tab-collapsed .expand-icon:before {
	content: "\f056";
}
</style>

</head>
<body>

<div class="container bootstrap snippet">
    <div class="div">
        <div class="col-sm-7">
            <div class="panel-group drop-accordion" id="accordion" role="tablist" aria-multiselectable="true">
                <div class="panel panel-default">
                    <div class="panel-heading tab-collapsed" role="tab" id="headingOne">
                      <h4 class="panel-title">
                        <a class="collapse-controle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            App benifits tittle one goes here
                            <span class="expand-icon-wrap"><i class="fa expand-icon"></i></span>
                        </a>
                      </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne" aria-expanded="true">
                        <div class="panel-body">
                            <div class="panel-body-icon"><i class="fa fa-magic"></i></div>
                            Epsum factorial non deposit quid pro quo hic escorol. Olypian rrels et gorilla congolium sic ad Epsum factorial non deposit quid pro quo hic escorol. Olypian quarrels et gorilla.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                            <a class="collapse-controle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                App benifits tittle two goes here
                                <span class="expand-icon-wrap"><i class="fa expand-icon"></i></span>
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo" aria-expanded="false" style="height: 0px;">
                        <div class="panel-body">
                            <div class="panel-body-icon"><i class="fa fa-crop"></i></div>
                            Epsum factorial non deposit quid pro quo hic escorol. Olypian rrels et gorilla congolium sic ad Epsum factorial non deposit quid pro quo hic escorol. Olypian quarrels et gorilla.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingThree">
                      <h4 class="panel-title">
                        <a class="collapsed collapse-controle" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                            App benifits tittle three goes here
                            <span class="expand-icon-wrap"><i class="fa expand-icon"></i></span>
                        </a>
                      </h4>
                    </div>
                    <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree" aria-expanded="false">
                        <div class="panel-body">
                            <div class="panel-body-icon"><i class="fa fa-cogs"></i></div>
                            Epsum factorial non deposit quid pro quo hic escorol. Olypian rrels et gorilla congolium sic ad Epsum factorial non deposit quid pro quo hic escorol. Olypian quarrels et gorilla.
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingFour">
                      <h4 class="panel-title">
                        <a class="collapsed collapse-controle" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                            App benifits tittle four goes here
                            <span class="expand-icon-wrap"><i class="fa expand-icon"></i></span>
                        </a>
                      </h4>
                    </div>
                    <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour" aria-expanded="false">
                        <div class="panel-body">
                            <div class="panel-body-icon"><i class="fa fa-coffee"></i></div>
                            Epsum factorial non deposit quid pro quo hic escorol. Olypian rrels et gorilla congolium sic ad Epsum factorial non deposit quid pro quo hic escorol. Olypian quarrels et gorilla.
                        </div>
                    </div>
                </div>
            </div>
            <!-- /#accordion -->
        </div>
	</div>
</div>

<script>
$(function(){
    $('.panel-heading').click(function(e) {
        $('.panel-heading').removeClass('tab-collapsed');
        var collapsCrnt = $(this).find('.collapse-controle').attr('aria-expanded');
        if (collapsCrnt != 'true') {
            $(this).addClass('tab-collapsed');
        }
    });
})
</script>


<script src="resources/assets/js/jquery-1.11.2.min.js"></script>
<script src="resources/assets/js/id3-minimized.js"></script>
<script src="resources/assets/js/wavesurfer.min.js"></script>
<script src="resources/assets/js/script.js"></script>

</body>
</html>
