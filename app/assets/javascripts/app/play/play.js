angular.module('quizzer')
    .controller('PlayCtrl', ['$scope', '$http',
        function ($scope, $http) {
            $scope.quiz = [];

            var getQuizId = function () {
                var pathname = window.location.pathname.split("/");

                return pathname[pathname.length - 1];
            };

            $http.get(getQuizId() + '.json').then(function (response) {
                $scope.quiz = response.data;
            });

            $scope.score = 0;
            $scope.showScore = false;

            var showScore = function () {
                $scope.showScore = true;
            };

            $scope.currentQuestion = 0;

            $scope.nextQuestion = function (answer) {
                if (answer.correct == true) {
                    $scope.score = $scope.score + 1;
                }

                if ($scope.quiz.questions.length == ($scope.currentQuestion + 1)) {
                    $scope.currentQuestion = null;
                    showScore();

                } else {
                    $scope.currentQuestion = $scope.currentQuestion + 1;
                }
            };

            $scope.retryQuiz = function () {
                location.reload();
            };
        }]);
