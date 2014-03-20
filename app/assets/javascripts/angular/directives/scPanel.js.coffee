angular.module('Scheduler')
.directive('scPanel', ['$http', ->
  {
    restrict : 'A',
    transclude : true,
    replace : true,
    scope : {
      title : '@',
      footer : '@',
      size : '@'
    }, 
    compile : (tElement, tAttr)->
      tElement.find('header').addClass('panel-header')
      tElement.find('footer').addClass('panel-footer')
      return      

    template : """
  <div class="panel panel-default" data-ng-transclude>
    <section class="panel-body"></section>
  </div>"""
  }
])