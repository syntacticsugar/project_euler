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

