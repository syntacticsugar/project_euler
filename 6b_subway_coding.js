// Find the difference between the sum of the sqaures of the first 100 ntural numbers and the square of the sum
//
//
//


// arrayFromRange(5,15)
function arrayFromRange(lo, hi) {
  array = [];
  for (i = lo; i <= hi; i++){
    array.push(i);
  }
  return array;
}

function map(array, operation) {
  collection = [];
  for (var i = 0; i <= array.length; i++) {
    collection.shift(operation(array[i]));
  }
  return collection;
}

function add1(x) { return x + 1 };
function addStuff(x,y) { return x + y };
console.log(map([1,2,3,4,5], add1));
//console.log(arrayFromRange(5,15));

function sumOfSquares(array) {
}

