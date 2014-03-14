game = game or {}


game.ticTacToe = angular.module 'ticTacToe', []

game.ticTacToe.controller 'gameController',
  ($scope) ->
    $scope.board = [0..8]
    return 