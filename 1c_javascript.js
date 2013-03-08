
// Find the sum of all the multiples of 3 or 5 below 1000.
//
//
// ruby version: (inspired by Lfborjas' Ruby Fuckery)
//multi = ->(x) { (x % 3).zero? or (x % 5).zero? }
//puts (1...1000).select{ |x| multi[x] }.inject(:+).to_s
//233168

function arrayFromRange(lo, hi) {
  var collection = [];

  for (var i = lo; i <= hi; i++) {
    collection.push(i);
  }
  return collection;
}

function reduce(array, operation, initial) {
  var results = initial;

  for (var i = 0; i < array.length; i++) {
    results = operation(results, array[i]);
  }
  return results;
}

var hugeArray = arrayFromRange(1, 999);

function addStuff(x,y) {
  return x + y;
}
// Here's a local improvement: multiModFormer returns either 
// n or undefined. Its caller only checks if the result 
// is undefined. So change multiMod to return a boolean, 
// and have the caller use that boolean directly.

function multiModFormer(n) {
  if ((n % 5 === 0) || (n % 3 ===0)) {
    return n;
  };
}

function multiMod(n) {
  return (n % 5 === 0) || (n % 3 ===0);
}

// and have the caller use that boolean directly:

function euler(array) {
  var collection = [];

  for (var i = 0; i < array.length; i++) {
    if (multiMod(array[i])){
      collection.push(array[i]);
    };
  }
  return collection;
}

console.log(reduce(euler(hugeArray), addStuff, 0));

//The obvious solution: no array magic stuff
console.log((function the_sum(min, max) {
  var sum = 0; 
  for(var i= min; i <= max; i++){
    if(i % 5 == 0 || i % 3 == 0){
      sum += i
    }
  } 
  return sum
})(1,1000))
