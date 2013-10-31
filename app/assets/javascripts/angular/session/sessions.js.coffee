app.controller 'SessionCtrl', ['$scope', 'Session', ($scope, Session)->
  $scope.org = null

]
app.factory 'Session', ['$resource', ($resource)->
  $resource '/session/:id', {id: '@id'}, {
    query: {method: 'GET', isArray: false},
    update: { method: 'PUT' },
  }
]