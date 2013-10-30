app.controller 'MessageCtrl', ['$scope', '$events', 'Home', ($scope, $events, Home)->
  $scope.messages = [{message: "start"}]

  $scope.sendMessage = ->
    $events.trigger("test.client", {message: "from client"})

  $events.bind "test.server", (data)->
    console.log "receive: "
    console.debug data
    $scope.messages.push data

  $scope.$on '$destroy', ->
    console.log "destroy"
]
app.config ['$routeProvider', ($routeProvider) ->
  $routeProvider
  .when '/messages',
      templateUrl: "/assets/angular/messages/templates/index.html"
]
