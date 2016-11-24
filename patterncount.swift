//Write a function patternCount with two arguments. The first arguments is a string, lets call it
//text, and the second argument is also a string, call it pattern. The function patternCount
//returns the number of times the pattern occurs in the text.

func patternCount(text: String,pattern: String) -> Int
{
    let stringText:String = text
    let arrayText = Array(stringText.characters)
    let textCount = arrayText.count
    
    let stringPattern:String = pattern
    let arrayPattern = Array(stringPattern.characters)
    let patternCount = arrayPattern.count
    
    var total:Int = 0
    var count:Int = 0
    
    for num in 1...textCount-patternCount+1
    {
        for num1 in 0...patternCount-1
        {
            if arrayText[num1+num-1] == arrayPattern[num1]
            {
                total += 1
            }
            if total == patternCount
            {
                count += 1
                total = 0
            }
        }
    }
    return count
}

patternCount(text: "abababa", pattern: "aba")
