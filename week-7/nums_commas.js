
 // Separate Numbers with Commas in JavaScript **Pairing Challenge**


 // I worked on this challenge with: Carl Conroy

 // Pseudocode

// Take an integer as input
// Convert integer to string
 // Convert that integer to an array
  // If the integer has a length of 3 or less, return the original input
  // Else Reverse and Split the integer into groups of 3
  // Rejoin it with commas at every group of 3
  // return the number string with commas joined
// Initial Solution

function separateComma (num){
  if (num < 1000){ return num;}

  var numArr = num.toString().split("").reverse();
  var commaArr = [];
  for (var i = 0; i < numArr.length; i+= 3) {
    commaArr.push(numArr.slice(i,i + 3).reverse().join(""));
  }

  return commaArr.reverse().join(",");
}

console.log(separateComma(111111));

 // Reflection
// What was it like to approach the problem from the perspective of JavaScript?
// Did you approach the problem differently?
// No used my previous approach, it worked well I think

// What did you learn about iterating over arrays in JavaScript?
// Not as easy as ruby but for loops aren't too bad either

// What was different about solving this problem in JavaScript?
// Not much honestly, used pretty much the same methods as in ruby

// What built-in methods did you find to incorporate in your refactored solution?
// We did not refactor, I think the solution is pretty clean