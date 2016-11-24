//Write a Swift function digitDistribution2 that has two arguments, a string and an Int. The
//function does the same thing as digitdistribution except that the dictionary that
//it returns only contains the digits that occur at least as many times as the second argument.

func digitDistribution(arrInt:[Int],count:Int) -> [Int:Int]
{
    var digitDict: [Int:Int] = [:]
    let len:Int = arrInt.count
    for num in 0...len-1
    {
        let numArr = String(arrInt[num]).characters.map { Int(String($0))! }
        for var num2 in numArr
        {
            if digitDict[num2] == nil
            {
                digitDict[num2] = 1
            }
            else
            {
                digitDict[num2]! += 1
            }
        }
    }
    for (key, value) in digitDict
    {
        if value < count
        {
            digitDict.removeValue(forKey: key)
        }
    }
    return digitDict
}

digitDistribution(arrInt: [101,20,30],count:2)
