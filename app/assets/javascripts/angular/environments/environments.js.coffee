app.controller 'EnvironmentsCtrl', ['$scope', '$routeParams', '$location', 'Environment', ($scope, $routeParams, $location, Environment) ->
  $scope.data = Environment.query {}, ->
    $scope.environments = $scope.data
]
app.controller 'EnvironmentViewCtrl', ['$scope', '$routeParams', '$location', 'Environment', ($scope, $routeParams, $location, Environment) ->
  $scope.environment = Environment.get {id: $routeParams.id}
]
app.config ['$routeProvider', ($routeProvider) ->
  $routeProvider
  .when '/environments',
      templateUrl: "/assets/angular/environments/templates/index.html"
  .when '/environments/:id',
      templateUrl: "/assets/angular/environments/templates/show.html"
]
app.factory 'Environment', ['$resource', ($resource) ->
  $resource '/environments/:id', {id: '@id'}, {
    update: { method: 'PUT' }
  }
]
