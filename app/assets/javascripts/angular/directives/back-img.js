app.directive('backImg', function(){
    return function(scope, element, attrs){
        attrs.$observe('backImg', function(value) {
            if(value !== undefined) {
                element.css({
                    'background': 'url(' + value +') top center',
                });
            }
        });
    };
});
