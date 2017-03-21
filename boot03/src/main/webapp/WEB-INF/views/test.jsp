<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>

<script>
$(function () {
    toolBox = $('#toolBox'),
    container = $('.container'),

  
    container.sortable({
        revert: false,
        beforeStop: function (event, ui) {
            $(this).data("lastItem", ui.item);
            ;
        },
        receive: function (event, ui) {
            $(this).data("lastItem").find('img').css('opacity', '1');
            ;
            //ui.item.draggable('destroy').css('opacity', '0.2');
        }
    });

   

    toolBox.find('.customeDraggable').draggable({
        connectToSortable: container,
        helper: "clone",
        revert: "invalid",
        stop: handleDragStop
    });
    function handleDragStop(event, ui) {
        var offsetXPos = parseInt(ui.offset.left);
        var offsetYPos = parseInt(ui.offset.top);
        //alert("Drag stopped!\n\nOffset: (" + offsetXPos + ", " + offsetYPos + ")\n");
    }
   
   
});
</script>

<div class="container" style="width:900px;height:400px; border:solid 1px red;">

    drag here

  </div>

 <h2>From this list</h2>
<div id="toolBox" class="linked">

<div class="customeDraggable">
    <div style="border: solid 1px yellow; float: right; height: 150px; width: 50%"> 1 </div>
    <div style="border: solid 1px yellow; float: left; height: 150px; width: 49%"> 2 </div>
</div>

<div class="customeDraggable">
    <div style="border: solid 1px red; float: right; height: 150px; width:     33%"> 1 </div>
    <div style="border: solid 1px red; float: left; height: 150px; width: 33%"> 2 </div>
    <div style="border: solid 1px red; float: left; height: 150px; width: 33%"> 3 </div>
</div>


<div class="customeDraggable">
    <img src="http://icons.iconarchive.com/icons/artua/mac/128/Setting-icon.png" />
</div>


</div>