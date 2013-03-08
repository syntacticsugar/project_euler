//If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

// Find the sum of all the multiples of 3 or 5 below 1000.

<?php

$threes = 0;
$fives = 0;

$sum = 0;

while ($threes < 1000) {
				$threes += 3;
				$sum += $threes;
}

while ($fives < 1000) {
				$fives += 5;
				$sum += $fives;
}

print $sum;

?>
