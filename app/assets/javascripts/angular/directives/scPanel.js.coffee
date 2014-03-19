angular.module('Scheduler')
.directive('scPanel', ['$http', ->
  {
    restrict : 'A',
    transclude : true,
    replace : true,
    scope : {
      title : '@',
      buttons : '@',
      footer : '@',
      size : '@'
    }, 
    link : (scope, element, attr) ->
      # Hide our footer if not requested
      if scope.footer && scope.footer is "false" or not scope.buttons
        element.find('footer').hide()

      group = $('.btn-group', element)

      if scope.size
        group.addClass('btn-group-' + scope.size)
        group.removeClass('btn-group')
      # Parse button JSON only if it's available
      if scope.buttons 
        json = scope.$eval(scope.buttons)
        buttons = []
        btn = $('<button class="btn btn-default">')
        spn = $('<span class="glyphicon">')
        for key of json
          cb = btn.clone()
          cs = spn.clone()

          cs.addClass("glyphicon-" + key.toLowerCase())
          cb.append(cs)
          cb.append(document.createTextNode(" " + json[key]))

          buttons.push(cb)
      
        $('footer > div', element).append(buttons)

      # Stupid implicit return
      true

    template : """
  <div class="panel panel-default">
    <header class="panel-heading" ng-hide="!title">
      {{title}}
    </header>
    <section class="panel-body" data-ng-transclude></section>
    <footer class="panel-footer">
      <div class="btn-group">
        {{scope.buttons}}
      </div>
    </footer>
  </div>"""
  }
])