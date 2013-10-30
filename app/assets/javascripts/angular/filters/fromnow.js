app.filter('fromnow', function() {
    return function(date) {
        return moment(date).fromNow();
    }
});
