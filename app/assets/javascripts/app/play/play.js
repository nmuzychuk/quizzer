angular.module('quizzer')
    .controller('PlayCtrl', ['$scope', '$http',
        function ($scope, $http) {
            $scope.test = 42;

            $scope.quiz = [];
            $http.get('1.json').then(function (response) {
                $scope.quiz = response.data;
            });

            $scope.currentQuestion = 0;
            $scope.nextQuestion = function () {
                $scope.currentQuestion = $scope.currentQuestion + 1;
            }
        }]);
