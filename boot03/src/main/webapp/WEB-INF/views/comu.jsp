<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
<title>HiCu Testing</title>
<script type="text/javascript" src="resources/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('#under').click(function(){
		jQuery.fn.extend({
			setCursorPosition: function(position){
			    if(this.length == 0) return this;
			    return $(this).setSelection(position, position);
			},

			setSelection: function(selectionStart, selectionEnd) {
			    if(this.length == 0) return this;
			    input = this[0];

			    if (input.createTextRange) {
			        var range = input.createTextRange();
			        range.collapse(true);
			        range.moveEnd('character', selectionEnd);
			        range.moveStart('character', selectionStart);
			        range.select();
			    } else if (input.setSelectionRange) {
			        input.focus();
			        input.setSelectionRange(selectionStart, selectionEnd);
			    }

			    return this;
			},

			focusEnd: function(){
			    this.setCursorPosition(this.val().length);
			            return this;
			},

			getCursorPosition: function() {
		        var el = $(this).get(0);
		        var pos = 0;
		        if('selectionStart' in el) {
		            pos = el.selectionStart;
		        } else if('selection' in document) {
		            el.focus();
		            var Sel = document.selection.createRange();
		            var SelLength = document.selection.createRange().text.length;
		            Sel.moveStart('character', -el.value.length);
		            pos = Sel.text.length - SelLength;
		        }
		        return pos;
		    },

		    insertAtCursor: function(myValue) {
		    	return this.each(function(i) {
				    if (document.selection) {
				      //For browsers like Internet Explorer
				      this.focus();
				      sel = document.selection.createRange();
				      sel.text = myValue;
				      this.focus();
				    }
				    else if (this.selectionStart || this.selectionStart == '0') {
				      //For browsers like Firefox and Webkit based
				      var startPos = this.selectionStart;
				      var endPos = this.selectionEnd;
				      var scrollTop = this.scrollTop;
				      this.value = this.value.substring(0, startPos) + myValue + 
	                                this.value.substring(endPos,this.value.length);
				      this.focus();
				      this.selectionStart = startPos + myValue.length;
				      this.selectionEnd = startPos + myValue.length;
				      this.scrollTop = scrollTop;
				    } else {
				      this.value += myValue;
				      this.focus();
				    }
			  	})
		    }
	    
		})
	var sample = $('#sample').val();
	var position = $("#code").getCursorPosition();
	$("#code").setCursorPosition(position);
	$("#code").insertAtCursor(sample);
	$('#sample').val('');
	});
	});
</script>
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
								<textarea class="form-control" placeholder="run sample" rows="4" name="sample" id="sample"></textarea>
							</div>
							<div class="col-md-2">
								<button class="btn btn-primary">▶</button>
								<button class="btn btn-primary" name="under" id="under">▼</button>
							</div>
						</div>
						<textarea class="form-control" placeholder="code" rows="10" name="code" id="code"></textarea>
						
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
