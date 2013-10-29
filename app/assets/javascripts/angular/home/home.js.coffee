app.controller 'HomeCtrl', ['$scope', 'Home', ($scope, Home)->

]
app.config ['$routeProvider', ($routeProvider) ->
  $routeProvider
  .when '/',
      templateUrl: "/assets/angular/home/templates/index.html"
  .when '/home/index',
      templateUrl: "/assets/angular/home/templates/index.html"
]
app.factory 'Home', ['$resource', ($resource) ->
  $resource '/home/:id', {id: '@id'}, {
    query: {method: 'GET', isArray: false},
    update: { method: 'PUT' },
  }
]
