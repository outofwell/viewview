<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />

<title>MY PAGE</title>
<script type="text/javascript" src="resources/jquery-3.1.1.min.js"></script>
<script src="resources/js/Readmore.js"></script>
<script src="/node_modules/readmore-js/readmore.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7/html5shiv.min.js"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {

						$('[data-toggle="popover"]').popover();

						$
								.ajax({
									type : "get",
									url : "fileList",
									success : function(resp) {

										var msg = "<table class='table' id='loadlist'><tr>";

										$
												.each(
														resp,
														function(index, item) {
															//img 주소 : 테스트용 임시 주소!!
															msg += '<td data-toggle="popover" data-placement="top" title="Popover on top" data-content=""><img src="resources/covers/'
																	+ item.cover_re
																	+ '" style="width:60px; height:60px; border-radius:100px;" draggable="true" ondragstart="drag(event)" id='
																	+ item.filenum
																	+ '><br>';
															msg += '<button class="btn btn-primary btn-xs">'
																	+ item.file_title
																	+ '</button></td>';
															if ((index + 5) % 4 == 0) {
																msg += "</tr><tr>";
															}
														});

										msg += "</tr><table>";

										$("#loader").html(msg);
									}
								});
					});

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
		location.href = 'write?filenum=' + data;
	}
</script>
<style>
#div1, #div2, #div3 {
	float: left;
	margin: 10px;
	padding: 10px;
	border: 1px solid lightgray;
	border-radius: 5px;
	overflow: auto;
}

#div1 {
	width: 450px;
	height: 300px;
}

#div2 {
	width: 280px;
	height: 110px;
	/*background-image: url("resources/assets/img/bg.jpg");*/
}

#div3 {
	width: 130px;
	height: 110px;
}

#board {
	border: solid lightgray 1px;
	padding: 10px;
	border-radius: 5px;
}

td, img {
	text-align: center;
	margin: auto;
}
</style>
</head>

<body class="index-page">
	<jsp:include page="navigation.jsp" flush="false" />

	<div class="wrapper">
		<div class="header header-filter"
			style="background-image: url('resources/assets/img/bg2.jpeg');">
		</div>

		<div class="main main-raised">
			<div class="section section-basic">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<h4>My Files</h4>
							<div id="div1" ondragover="allowDrop(event)">
								<div id="loader"></div>
							</div>
							<br>
							<div>
								<span id="div2"><a href="write">&lt; go write</a></span> <span
									id="div3" ondrop="drop(event)" ondragover="allowDrop(event)">Drop
									Here & write</span>
							</div>

						</div>
						<div class="col-md-6">
							<!-- 게시글 시작-->
							<h4>My Boards</h4>
							<div class="row" id="board">
								<div class="col-md-3">
									<img src="http://placehold.it/80"
										style="width: 80px; height: 80px;" />
									<button class="btn btn-primary btn-xs">Song1</button>
								</div>
								<div class="col-md-6">
									<button class="btn btn-primary btn-xs">board title</button>
									<article>
										<p>From this distant vantage point, the Earth might not
											seem of any particular interest. But for us, it's different.
											Consider again that dot. That's here. That's home. That's us.
											On it everyone you love, everyone you know, everyone you ever
											heard of, every human being who ever was, lived out their
											lives. The aggregate of our joy and suffering, thousands of
											confident religions, ideologies, and economic doctrines,
										</p>
										<button class="btn btn-primary btn-sm">구독</button>
										<button class="btn btn-primary btn-sm">♥</button>
										<br>
										<table>
											<tr>
												<td>idid :</td>
												<td>댓글내용~~~~~~~~~~~~~~~</td>
											</tr>
										</table>
										<input type="text" placeholder="reply">
										<button class="btn btn-primary btn-sm">등록</button>
									</article>
								</div>
								<div class="col-md-3"></div>
									<div class="checkbox">
									<label>
										<input type="checkbox" name="optionsCheckboxes">
										Unchecked
									</label>
									</div>
							</div>
						</div>
						<!-- 게시글 끝 -->
					</div>
				</div>

			</div>
		</div>

		<footer class="footer">
			<div class="container"></div>
		</footer>
	</div>
	</div>

</body>
<style>
.main-raised {
	margin: -550px 30px 0px;
}
</style>
<script src="resources/js/Readmore.js"></script>
<script>
	$('#info').readmore({
		moreLink : '<a href="#">Usage, examples, and options</a>',
		collapsedHeight : 384,
		afterToggle : function(trigger, element, expanded) {
			if (!expanded) { // The "Close" link was clicked
				$('html, body').animate({
					scrollTop : element.offset().top
				}, {
					duration : 100
				});
			}
		}
	});
	$('article').readmore({
		speed : 500
	});
</script>
</html>