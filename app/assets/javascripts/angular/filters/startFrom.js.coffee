#app.filter('startFrom', function() {
#return function(input, start) {
#start = +start; //parse to int
#return input.slice(start);
#}
#});

app.filter 'startFrom', ->
  (input, start)->
    start = parseInt(start)
    if start <= 0
      start = 0
    input.slice(start)
