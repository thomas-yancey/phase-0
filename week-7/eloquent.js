
// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var excitementLevel = "Let's conatenate";
excitementLevel = excitementLevel + " this sentence";
console.log(excitementLevel);

// var favoriteFood = prompt("What's your favorite food?", "");
// console.log(favoriteFood + "! that's my favorite too!");
// alert(favoriteFood + "! that's my favorite too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

for (var str = "#"; str.length < 7; str = str + "#") console.log(str);

for (var i = 1; i < 101; i++) {
  if (i % 3 == 0 && i % 5 == 0)
    console.log("FizzBuzz");
  else if (i % 3 == 0)
    console.log("Fizz");
  else if (i % 5 == 0)
    console.log("Buzz");
  else
    console.log(i);
}

var line1 = " # # # #\n";
var line2 = "# # # # \n";
var chessboard = "";
var size = 8;
for (var i = 0; i < size; i++) {
  if (i % 2 == 0 || i == 0)
    chessboard += line1;
  else
    chessboard += line2;
}
console.log(chessboard);

// Functions

// Complete the `minimum` exercise.
function minimum(num1, num2) {
  return (num1 > num2 ? num2 : num1)
};

console.log(minimum(19,19));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
var me = {
  name: "Thomas Yancey",
  favoriteFoods: ["Pizza", "Pasta", "Bread"],
  quirk: "One of my three favorite foods is bread"
};