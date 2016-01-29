// function fizzBuzz(x,y,topNum){
//   var fizzString = "";
//   for (var i = 1; i < topNum + 1; i++){
//     if (i % x == 0 && i % y == 0) {
//       fizzString = fizzString + "FB ";
//     } else if (i % x == 0) {
//       fizzString = fizzString + "F ";
//     } else if (i % y == 0) {
//       fizzString = fizzString + "B ";
//     } else {
//       fizzString = fizzString + i + " ";
//     }
//   }
//   return fizzString.slice(0,-1) + "\n";
// }

// console.log(fizzBuzz(3,5,16));
// console.log(Number("22"));

function padRight(num){
  var padded = num.toString();
  while (padded.length < 4) {
    padded = " " + padded;
  }
  return padded;
}

var multipleArray = [[1,2,3,4,5,6,7,8,9,10,11,12]]
for (var i = 0; i < 11; i++){
  var array = [];
  for (var x = 0; x < 12; x++){
    array.push(multipleArray[i][x] + multipleArray[0][x]);
  }
  multipleArray.push(array);
}

var arrayString = ""
for (arr in multipleArray){
  for (i = 0; i < 12; i++){
    arrayString = arrayString + padRight(multipleArray[arr][i])
  }
  arrayString = arrayString + "\n";
}
console.log(arrayString.slice(0,-1));

