game = game or {}


game.ticTacToe = angular.module 'ticTacToe', []

game.ticTacToe.controller 'gameController', [ "$scope",
  ($scope) ->
    $scope.board = [0..8]

    $scope.players = [
              name: "Ernie"
              marker: "X"
              img_url: "img/ernie.jpg"
              indicator: "current"
            , 
              name: "Bert"
              marker: "O"
              img_url: "img/bert.jpg"
              indicator: null
    ]

    $scope.currentPlayer = $scope.players[0]

    $scope.changeCurrentPlayer = ->
      $scope.currentPlayer.indicator = null

      if $scope.currentPlayer == $scope.players[0]
        $scope.currentPlayer = $scope.players[1]
      else
        $scope.currentPlayer = $scope.players[0]
      
      $scope.currentPlayer.indicator = "current"
      return
    
    $scope.selectTile = (tile) ->
      alert("Tile #"+ tile + " was clicked")
      $scope.changeCurrentPlayer()

    return
]