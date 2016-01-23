var makeNoise = function() {
  console.log("Noise");
}
makeNoise();

var power = function(base, exponent) {
  var num = 1;
  for (var i = 0; i < exponent; i++) num *= 2;
    console.log(num);
}
power(2,10);

var landscape = function() {
  var result = "";
  var flat = function(size) {
    for (var count =  0; count < size; count++)
      result += "_";
  };
  var mountain = function(size) {
    result += "/";
    for (var count = 0; count < size; count++ )
      result += "!";
    result += "\\";
  };

  flat(3);
  flat(3);
  flat(3);
  mountain(5);
  flat(3);
  return result;
}

// console.log(landscape());

// function chicken() {
//   return egg();
// }

// function egg() {
//   return chicken();
// }

// console.log(chicken() + " came first.");

function padding(size,current) {
  for (var i = String(current).length; i < size; i++)
    current = "0" + current;
  return current;
}

function printFarmInventory(cows, chickens) {
  console.log(padding(4,cows));
  console.log(padding(3,chickens));
}
printFarmInventory(10,12);

function minimum(num1, num2) {
  return (num1 > num2 ? num2 : num1)
}

console.log(minimum(19,19))