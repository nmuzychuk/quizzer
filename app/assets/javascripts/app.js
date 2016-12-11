angular.module('quizzer', [])
    .config(["$httpProvider", function (provider) {
        provider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
    }]);

$(document).on('turbolinks:load', function () {
    angular.bootstrap('body', ['quizzer'])
});
