// If we list all the natural numbers below 10 that are multiples of 3 or 5, 
// we get 3, 5, 6 and 9. The sum of these multiples is 23.
//
// Find the sum of all the multiples of 3 or 5 below 1000.


function arrayFromRange(lo, hi){
  var collection = [];
  for ( var i = lo; i <= hi; i++ ) {
    collection.push(i);
  }
  return collection;
}

function reduce(array, operation, initial ){
  var results = initial;

  for ( var i = 0; i < array.length; i++ ){
    results = operation(results, array[i]);
  };
  return results;
};

var array = [1,2,3,4];
reduce( array, addThem, 0 );

function addThem(x, y){
  return x + y;
}
arrayFromRange(1, 999);

function mod(n, divisor){
}
