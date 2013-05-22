var coins = [1,2,5,10,20,50,100,200];

function recur(goal, maxCoin) {
  if (goal == 0) {return 1};
  else if(goal < 0) {
    return 0;}
  else
}


// COINS.select do |c|
//   c <= maxcoin
// end.map do |x|
//     recur(goal-x, x)
// end.inject(:+)
