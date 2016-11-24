//If we list all the natural numbers below 20 that are multiples of 3 or 5 but not multiples both
//of 3 and 5, we get 3, 5, 6, 9, 10, 12, 18. The sum of these multiples is 63. Write a function,
//sumMultiples3_5, that returns the sum of the multiples of 3 and 5 less than N.

func sumMultiples3_5(N: Int) -> Int
{
    var sum:Int = 0
    for num in 0...N-1
    {
        if (num%3==0 || num%5==0)
        {
            sum += num
        }
    }
    if N > 15
    {
        sum -= 15  //LCM of 3 & 5
    }
    return sum
}
