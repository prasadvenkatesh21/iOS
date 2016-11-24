//A palindrome is a string that reads the same forwards and backwards. We will call a
//number a palindrome if it reads the same forwards and backwards. So 191 is a palindrome.
//Write a function that returns the number of palindrome numbers between 0 and n. 

func PalindromeCount(n:Int) -> Int
{
    func numReverse( input:inout Int) -> Int
    {
        var backwards:Int = 0
        while input > 0
        {
            backwards *= 10
            backwards += input % 10
            input /= 10
        }
        return backwards
    }
    
    var count:Int = 0
    for var num in 1...n
    {
        if num == numReverse(input: &num)
        {
            count += 1
        }
    }
    return count
}
