// //PERSON #4  - GROUP #2
// As a user I want give a program a set of numbers and have it return the sum
// of those numbers
var list = [4,5,6,7,9]

function sum(array) {
  var total = 0;
  for (var i in array){ total += array[i] };
  return total;
}

console.log(sum(list))

// //////STORY 2
// As a user I want to give a program a list of numbers and have it return the
// average of those numbers

var list = [4,5,6,7,9]

function mean(array) {
  var total = 0;

  for (var i in array){ total += array[i];}
  return total / array.length;
}

console.log(mean(list))


// //////STORY 3
// As a user I want to give a program a set of numbers and have it return the
// middle value if there are an even count of numbers, or return the average of
// the two most middle numbers if there are an odd amount of numbers.

var list = [4,5,6,63,12,7,9]

function med(array) {

    var middleIndex = Math.floor(array.length / 2)

    array.sort(function(a, b){return a - b;});

    if (array.length % 2) {
      return array[middleIndex]}
      else {
      return ((array[middleIndex] + array[middleIndex + 1])/ 2)}
}

 console.log(med(list));

