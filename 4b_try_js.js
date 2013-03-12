// Find the largest palindrome made from the product of two 3-digit numbers.
//
// ex) 91 * 99 == 9009
//
//
//   xyz * abc == iopoi

function isPalindrome(integer) {
  if (integer.toString.split("").join("")  == integer.toString.split("").join("").reverse()) {
    return true;
  }
}

isPalindrome(400);

function isPalindrome(integer) {
  var string = integer.toString();
  for (var i=0; i <= string.length/2; i++) {
    if (string[0] != str[(string.length - i) -1]) {
      return false;
      }
  }
  return true;
}

function largestPalindromeOfNDigits(integer) {
  var min = Math.pow(10, x - 1);
  var max = Math.pow(10, x) - 1;
  var current = 0;

}
