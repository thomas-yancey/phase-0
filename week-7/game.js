var readline = require('readline');

var r1 = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

function game(player1,player2){
  this.board = [["E","E","E"],["E","E","E"],["E","E","E"]],
  this.player1 = {
    name: player1,
    marker: "X"
  };
  this.player2 = {
    name: player2,
    marker: "O"
  };

  this.rowLetters = ["A","B","C"];
  this.display = function() {
    var rowLetters = ["A","B","C"];
    var stringBoard = "    1|2|3\n    "
    this.board;
    for (var arr in this.board){
      for (var idx = 0;idx < 3; idx++){
        stringBoard = stringBoard + this.board[arr][idx] + "|";
      }
      stringBoard = stringBoard.slice(0,-1) +" " + rowLetters[arr]+ "\n    ";
    }
  return stringBoard;
  }
};

newGame = new game("Thomas","Steven");
console.log(newGame.player1.name)

var question = r1.question("What Move do you want to make " + newGame.player1.name + ": ", function(answer){
  var answerArr = answer.split("");
  var idx1 = newGame.rowLetters.indexOf(answerArr[0]);
  var idx2 = answerArr[1];
  newGame.board[idx1][idx2] = newGame.player1.marker;
  r1.close();
});

for (var turn = 0; turn < 9; turn++){
  console.log(newGame.display());
  if (turn == 0 || turn % 2 == 0){
    question;
  };
  newGame.display;
}

// THIS IS A WORK IN PROGRESS CANNOT GET THE QUESTION PROMPT TO EVALUATE PRIOR TO RUNNING THE WHOLE LOOP
// PULLED USER INPUT FROM STACKOVERFLOW REQUIRING NODE READLINE, NEED TO WORK ON FUNCTIONALITY, WILL CONTINUE
// AFTER 1PM 1/26/15