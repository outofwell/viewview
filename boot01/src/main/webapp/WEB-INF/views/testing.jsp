
<!DOCTYPE html>
<html>
<head lang="en">
	<meta charset="UTF-8">
	<title>HTML5 Music Player</title>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">


<style>$red: #FF0000;
$white: #FFFFFF;
$green: #1abc9c;
$grey: #888888;
.block {
  background: #f2f2f2;
  position: relative;
  padding: 15px;
  border: 1px solid #ccc;
  &:not(:first-child) {
    margin-top: 10px;
  }
}

.modifier {
  float: right;
  margin-left: 8px;
  font-size: 14px;
}

.action {
  color: $green;
}

.edit {
  color: $grey;
}

.column-selector {
  position: relative;
}

.remove {
  color: $red;
}

.column-option {
  float: left;
}

.dropdown-menu {
  top: inherit;
}

.blocks {
  margin-bottom: 0;
}

.panel {
  border-radius: 0;
}

.row > .panel {
  background-color: #f2f2f2;
}

.builder {
  padding: 20px;
}

.block-placeholder {
  background: #DADADA;
  position: relative;
}

.block-placeholder:after {
  content: " ";
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  height: 15px;
  background-color: #FFF;
}

</style>

</head>
<body>
<div class="builder">
  <div class="container">
    <div class="builder-toolbar">
      <div class="row-add">
        <i class="fa fa-plus-circle"></i>
      </div>
    </div>
  </div>
  <div class="builder-body container">
    <div class="row">
      <div class="row-toolbar unsortable">

        <div class="column-selector">
          <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown"><i class="fa fa-columns"></i></button>
          <ul class="dropdown-menu row-columns dropdown">
            <li class="column-option" data-split="1">12</li>
            <li class="column-option" data-split="2,2">6/6</li>
            <li class="column-option" data-split="3,3,3">4/4/4</li>
          </ul>
        </div>
        <div class="row-actions pull-right">
          <div class="remove remove-row">
            <i class="fa fa-times"></i>
          </div>
          <div class="action copy-row">
            <i class="fa fa-repeat"></i>
          </div>
          <div class="edit edit-row">
            <i class="fa fa-cog"></i>
          </div>
        </div>
      </div>
      <div class="panel panel-default panel-body sortable">
        <div class="column-container">
          <div class="col-xs-6 column sortable">
            <div class="column-toolbar">
              <div class="block-add">
                <i class="fa fa-plus-circle"></i>
              </div>
            </div>
            <div class="blocks panel panel-default panel-body">
              <div class="block clearfix">
                <div class="block-actions pull-right">
                  <div class="remove modifier remove-block">
                    <i class="fa fa-times"></i>
                  </div>
                  <div class="action modifier copy-block">
                    <i class="fa fa-repeat"></i>
                  </div>
                  <div class="edit modifier edit-block">
                    <i class="fa fa-pencil"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xs-6 column sortable">
            <div class="column-toolbar">
              <div class="block-add">
                <i class="fa fa-plus-circle"></i>
              </div>
            </div>
            <div class="blocks panel panel-default panel-body">
              <div class="block clearfix">
                <div class="block-actions pull-right">
                  <div class="remove modifier remove-block">
                    <i class="fa fa-times"></i>
                  </div>
                  <div class="action modifier copy-block">
                    <i class="fa fa-repeat"></i>
                  </div>
                  <div class="edit modifier edit-block">
                    <i class="fa fa-pencil"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="panel panel-default panel-body sortable">
        <div class="col-xs-6 column sortable">
          <div class="column-toolbar">
            <div class="block-add">
              <i class="fa fa-plus-circle"></i>
            </div>
          </div>
          <div class="blocks panel panel-default panel-body">
            <div class="block clearfix">
              <div class="block-actions pull-right">
                <div class="remove modifier remove-block">
                  <i class="fa fa-times"></i>
                </div>
                <div class="action modifier copy-block">
                  <i class="fa fa-repeat"></i>
                </div>
                <div class="edit modifier edit-block">
                  <i class="fa fa-pencil"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xs-6 column sortable">
          <div class="column-toolbar">
            <div class="block-add">
              <i class="fa fa-plus-circle"></i>
            </div>
          </div>
          <div class="blocks panel panel-default panel-body">
            <div class="block clearfix">
              <div class="block-actions pull-right">
                <div class="remove modifier remove-block">
                  <i class="fa fa-times"></i>
                </div>
                <div class="action modifier copy-block">
                  <i class="fa fa-repeat"></i>
                </div>
                <div class="edit modifier edit-block">
                  <i class="fa fa-pencil"></i>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>


<script>
$(".row").sortable({
	  axis: "x",
	  items: ".column"
	});
	$(".container").sortable({
	  axis: "y",
	  items: ".row",
	  placeholder: 'block-placeholder',
	  revert: 150,
	  start: function(e, ui) {

	    placeholderHeight = ui.item.outerHeight();
	    ui.placeholder.height(placeholderHeight + 15);
	    $('<div class="block-placeholder-animator" data-height="' + placeholderHeight + '"></div>').insertAfter(ui.placeholder);

	  },
	  change: function(event, ui) {

	    ui.placeholder.stop().height(0).animate({
	      height: ui.item.outerHeight() + 15
	    }, 300);

	    placeholderAnimatorHeight = parseInt($(".block-placeholder-animator").attr("data-height"));

	    $(".block-placeholder-animator").stop().height(placeholderAnimatorHeight + 15).animate({
	      height: 0
	    }, 300, function() {
	      $(this).remove();
	      placeholderHeight = ui.item.outerHeight();
	      $('<div class="block-placeholder-animator" data-height="' + placeholderHeight + '"></div>').insertAfter(ui.placeholder);
	    });

	  },
	  stop: function(e, ui) {

	    $(".block-placeholder-animator").remove();

	  },
	});

	// Block Controls
	$(".blocks").sortable({
	  connectWith: '.blocks',
	  placeholder: 'block-placeholder',
	  revert: 150,
	  start: function(e, ui) {

	    placeholderHeight = ui.item.outerHeight();
	    ui.placeholder.height(placeholderHeight + 15);
	    $('<div class="block-placeholder-animator" data-height="' + placeholderHeight + '"></div>').insertAfter(ui.placeholder);

	  },
	  change: function(event, ui) {

	    ui.placeholder.stop().height(0).animate({
	      height: ui.item.outerHeight() + 15
	    }, 300);

	    placeholderAnimatorHeight = parseInt($(".block-placeholder-animator").attr("data-height"));

	    $(".block-placeholder-animator").stop().height(placeholderAnimatorHeight + 15).animate({
	      height: 0
	    }, 300, function() {
	      $(this).remove();
	      placeholderHeight = ui.item.outerHeight();
	      $('<div class="block-placeholder-animator" data-height="' + placeholderHeight + '"></div>').insertAfter(ui.placeholder);
	    });

	  },
	  stop: function(e, ui) {

	    $(".block-placeholder-animator").remove();

	  },
	});
	$('.block-add').click(function() {
	  $(this).closest('.column').find('.blocks').append('<div class="block clearfix"><div class="block-actions pull-right"><div class="remove modifier remove-block"><i class="fa fa-times"></i></div><div class="action modifier copy-block"><i class="fa fa-repeat"></i></div><div class="edit modifier edit-block"><i class="fa fa-pencil"></i></div></div></div>');
	});

	// Rows
	$('.row-add').click(function() {
	  $('.builder-body').append('<div class="row well sortable"><div class="col-xs-6 column well sortable"></div><div class="col-xs-6 column well sortable"></div></div>');
	});
	$.fn.extend({
	  removeclasser: function(re) {
	    return this.each(function() {
	      var c = this.classList
	      for (var i = c.length - 1; i >= 0; i--) {
	        var classe = "" + c[i]
	        if (classe.match(re)) c.remove(classe)
	      }
	    })
	    return re;
	  },
	  translatecolumn: function(columns) {
	    var grid = [];
	    var items = columns.split(',');
	    for (i = 0; i < items.length; ++i) {
	      if (items[i] == '1') {
	        grid.push(12);
	      }
	      if (items[i] == '2') {
	        grid.push(6);
	      }
	      if (items[i] == '3') {
	        grid.push(4);
	      }
	    }
	    return grid;
	  }
	});

	// Column Controls
	$(".row-toolbar").disableSelection();

	$('.column-option').click(function() {
	  var grid = $.fn.translatecolumn($(this).data('split').toString());
	  var columns = $(this).closest('.row').find('.column');
	  for (i = 0; i < grid.length; ++i) {
	    if (columns[i]) {
	      $(columns[i]).removeclasser('col-');
	      $(columns[i]).addClass('col-xs-' + grid[i]);
	    } else {
	      // Create column with class
	      $(columns[i]).append('<div class="col-xs-6 column well sortable"><div class="blocks">');
	    }
	    // If less columns than existing then merge
	  }
	});

</script>


<script src="resources/assets/js/jquery-1.11.2.min.js"></script>
<script src="resources/assets/js/id3-minimized.js"></script>
<script src="resources/assets/js/wavesurfer.min.js"></script>
<script src="resources/assets/js/script.js"></script>

</body>
</html>
