
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8"> 
        <meta charset="utf-8">
        <title>Bootply snippet - Bootstrap Angular dual list example (d&amp;d)</title>
        <meta name="generator" content="Bootply" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta name="description" content="Bootstrap Angular dual list example (d&amp;d) example." />
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet">
        
        <!--[if lt IE 9]>
          <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <link rel="apple-touch-icon" href="/bootstrap/img/apple-touch-icon.png">
        <link rel="apple-touch-icon" sizes="72x72" href="/bootstrap/img/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="114x114" href="/bootstrap/img/apple-touch-icon-114x114.png">

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" type="text/css" rel="stylesheet">








        <!-- CSS code from Bootply.com editor -->
        
        <style type="text/css">
            .lvl-over {
  border: 1px dashed #555 !important;
}

.lvl-target {
  background-color: #ddd; 
  opacity: .5;
}

[draggable] {
  cursor: move;
}
        </style>
    </head>
    
    <!-- HTML code from Bootply.com editor -->
    
    <body  >
        
        <hr>
<div class="container-fluid" ng-app="myApp"> 
    <div class="container" ng-controller="ctrlDualList">
      <div class="row">
            <div class="col-md-12 text-center"><h3>Drag &amp; Drop Pick List</h3></div>
            <div class="col-sm-4 col-sm-offset-1">
              <div class="list-group" id="list1" x-lvl-drop-target="true" x-on-drop="drop(dragEl, dropEl, bToA)">
                <a href="javascript:;" class="list-group-item active">Staff
                  <input title="Toggle all" ng-click="toggleA()" ng-model="toggle" value="{{toggle}}" type="checkbox" class="pull-right"></a>
                <span ng-repeat="user in listA">
                  <a href="javascript:;" data-id="{{user.id}}" x-lvl-draggable="true" class="list-group-item">{{user.firstName}}
                    <small class="text-muted"><em>{{user.role}}</em></small>                    
                    <input id="{{user.id}}" ng-click="selectedA.push(user.id)" name="selectedA[]" value="{{user.id}}" ng-checked="selectedA.indexOf(user.id) > -1" type="checkbox" class="pull-right">
                  </a>
                </span>
              </div>
            </div><!--/col-4-->
            <div class="col-md-2 v-center text-center">
              <div class="btn-group">
                <button title="Send to list 1" class="btn btn-default" ng-click="bToA()" id="btnA"><i class="glyphicon glyphicon-chevron-left"></i></button>
                <button title="Send to list 2" class="btn btn-default" ng-click="aToB()" id="btnB"><i class="glyphicon glyphicon-chevron-right"></i></button>
              </div>
              <h6 class="text-center">move from list-to-list</h6>
            </div><!--/col-2-->
            <div class="col-sm-4">
              <div class="list-group" id="list2" x-lvl-drop-target="true" x-on-drop="drop(dragEl, dropEl, aToB)">
                <a href="javascript:;" class="list-group-item active">Team Members
                  <input title="Toggle all" ng-click="toggleB()" ng-model="toggle" value="{{toggle}}" type="checkbox" class="pull-right">
                </a>
                <span ng-repeat="user in listB">
                  <a href="javascript:;" data-id="{{user.id}}" class="list-group-item" x-lvl-draggable="true">{{user.firstName}}
                    <small class="text-muted"><em>{{user.role}}</em></small>
                    <input id="{{user.id}}" ng-click="selectedB.push(user.id)" name="selectedB[]" value="{{user.id}}" ng-checked="selectedB.indexOf(user.id) > -1" type="checkbox" class="pull-right">
                  </a>
                </span>
              </div>
            </div><!--/col-4-->
      </div><!--/row-->
    </div><!--/container-->
   
  <hr>
  <a href="http://www.bootply.com/mW09b0bQcE">Edit on Bootply</a> 
  
  </div><!--/container-fluid-->
  



        
        <script type='text/javascript' src="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>


        <script type='text/javascript' src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>



<script type='text/javascript' src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.1/angular.min.js"></script>


        
        <!-- JavaScript jQuery code from Bootply.com editor  -->
        
        <script type='text/javascript'>
        
            /* load drag-and-drop directives -- credit: http://logicbomb.github.io/ng-directives/script/lvl-drag-drop.js */
angular
.module('lvl.services',[])
.factory('uuid', function() {
    var svc = {
        new: function() {
            function _p8(s) {
                var p = (Math.random().toString(16)+"000000000").substr(2,8);
                return s ? "-" + p.substr(0,4) + "-" + p.substr(4,4) : p ;
            }
            return _p8() + _p8(true) + _p8(true) + _p8();
        },
         
        empty: function() {
          return '00000000-0000-0000-0000-000000000000';
        }
    };
     
    return svc;
});

var module = angular.module("lvl.directives.dragdrop", ['lvl.services']);

module.directive('lvlDraggable', ['$rootScope', 'uuid', function($rootScope, uuid) {
  return {
    restrict: 'A',
    link: function(scope, el, attrs, controller) {
      angular.element(el).attr("draggable", "true");
      
      var id = angular.element(el).attr("id");
      
      if (!id) {
        id = uuid.new()
        angular.element(el).attr("id", id);
      }
      
      el.bind("dragstart", function(e) {
        e.dataTransfer.setData('text', id);
        $rootScope.$emit("LVL-DRAG-START");
      });
      
      el.bind("dragend", function(e) {
        $rootScope.$emit("LVL-DRAG-END");
      });
    }
  }
}]);
module.directive('lvlDropTarget', ['$rootScope', 'uuid', function($rootScope, uuid) {
  return {
    restrict: 'A',
    scope: {
      onDrop: '&'
    },
    link: function(scope, el, attrs, controller) {
      
      var id = angular.element(el).attr("id");
      
      if (!id) {
        id = uuid.new();
        angular.element(el).attr("id", id);
      }
      
      el.bind("dragover", function(e) {
        if (e.preventDefault) {
          e.preventDefault();
        }
        
        e.dataTransfer.dropEffect = 'move';
        return false;
      });
      
      el.bind("dragenter", function(e) {
        // this / e.target is the current hover target.
        angular.element(e.target).addClass('lvl-over');
      });
      
      el.bind("dragleave", function(e) {
        angular.element(e.target).removeClass('lvl-over');  // this / e.target is previous target element.
      });
      
      el.bind("drop", function(e) {
        if (e.preventDefault) {
          e.preventDefault();
        }
        
        if (e.stopPropagation) {
          e.stopPropagation();
        }
        var data = e.dataTransfer.getData("text");
        var dest = document.getElementById(id);
        var src = document.getElementById(data);
        
        scope.onDrop({dragEl: src, dropEl: dest});
        $rootScope.$emit("LVL-DRAG-END");
      });
      
      $rootScope.$on("LVL-DRAG-START", function() {
        var el = document.getElementById(id);
        angular.element(el).addClass("lvl-target");
      });
      
      $rootScope.$on("LVL-DRAG-END", function() {
        var el = document.getElementById(id);
        angular.element(el).removeClass("lvl-target");
        
        var els = document.getElementsByClassName("lvl-over");
        for (var e in els) {
          angular.element(els[e]).removeClass("lvl-over");
        }
      });
    }
  }
}]);
/*end directives*/

var userData = [
  {id:1,firstName:'Mary',lastName:'Goodman',role:'manager',approved:true,points:34},
  {id:2,firstName:'Mark',lastName:'Wilson',role:'developer',approved:true,points:4},
  {id:3,firstName:'Alex',lastName:'Davies',role:'admin',approved:true,points:56},
  {id:4,firstName:'Bob',lastName:'Banks',role:'manager',approved:false,points:14},
  {id:5,firstName:'David',lastName:'Stevens',role:'developer',approved:false,points:100},
  {id:6,firstName:'Jason',lastName:'Durham',role:'developer',approved:false,points:0},
  {id:7,firstName:'Jeff',lastName:'Marks',role:'manager',approved:true,points:8},
  {id:8,firstName:'Betty',lastName:'Abercrombie',role:'manager',approved:true,points:18},
  {id:9,firstName:'Krista',lastName:'Michaelson',role:'developer',approved:true,points:10},
  {id:11,firstName:'Devin',lastName:'Sumner',role:'manager',approved:false,points:3},
  {id:12,firstName:'Navid',lastName:'Palit',role:'manager',approved:true,points:57},
  {id:13,firstName:'Bhat',lastName:'Phuart',role:'developer',approved:false,points:314},
  {id:14,firstName:'Nuper',lastName:'Galzona',role:'admin',approved:true,points:94}
];

function ctrlDualList($scope) {
 
  // init
  $scope.selectedA = [];
  $scope.selectedB = [];
   
  $scope.listA = userData.slice(0,5);
  $scope.listB = userData.slice(6,10);
  $scope.items = userData;
  
  $scope.checkedA = false;
  $scope.checkedB = false;
  
  function arrayObjectIndexOf(myArray, searchTerm, property) {
      for(var i = 0, len = myArray.length; i < len; i++) {
          if (myArray[i][property] === searchTerm) return i;
      }
      return -1;
  }
  
  $scope.aToB = function() {
    for (i in $scope.selectedA) {
      var moveId = arrayObjectIndexOf($scope.items, $scope.selectedA[i], "id"); 
      $scope.listB.push($scope.items[moveId]);
      var delId = arrayObjectIndexOf($scope.listA, $scope.selectedA[i], "id"); 
      $scope.listA.splice(delId,1);
    }
    reset();
  };
  
  $scope.bToA = function() {
    for (i in $scope.selectedB) {
      var moveId = arrayObjectIndexOf($scope.items, $scope.selectedB[i], "id"); 
      $scope.listA.push($scope.items[moveId]);
      var delId = arrayObjectIndexOf($scope.listB, $scope.selectedB[i], "id"); 
      $scope.listB.splice(delId,1);
    }
    reset();
  };
  
  function reset(){
  	$scope.selectedA=[];
    $scope.selectedB=[];
    $scope.toggle=0;
  }
  
  $scope.toggleA = function() {
    
    if ($scope.selectedA.length>0) {
      $scope.selectedA=[];
    }
    else {
      for (i in $scope.listA) {
        $scope.selectedA.push($scope.listA[i].id);
      }
    }
  }
  
  $scope.toggleB = function() {
    
    if ($scope.selectedB.length>0) {
      $scope.selectedB=[];
    }
    else {
      for (i in $scope.listB) {
        $scope.selectedB.push($scope.listB[i].id);
      }
    }
  }
 
  $scope.drop = function(dragEl, dropEl, direction) {
    
    var drag = angular.element(dragEl);
    var drop = angular.element(dropEl);
    var id = drag.attr("data-id");
    var el = document.getElementById(id);
    
    if(!angular.element(el).attr("checked")){
      angular.element(el).triggerHandler('click');
    }
    
    direction();
    $scope.$digest();
  };
  
};
  
angular
  .module('myApp', ['lvl.directives.dragdrop']) 
  .controller('ctrlDualList', ['$scope', ctrlDualList]);
  
$(document).ready(function() {
	jQuery.event.props.push('dataTransfer'); //prevent conflict with drag-drop
});
        
        </script>
        
        <script>
          (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
          (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
          m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
          })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
          ga('create', 'UA-40413119-1', 'bootply.com');
          ga('send', 'pageview');
        </script>
        
        
    </body>
</html>