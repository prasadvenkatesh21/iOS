//Write a Swift function digitDistribution3 that has the same arguments as digitDistribution2 and returns the same result. 
//However give the second argument a default value of 2 so we can call the function with one or two arguments as shown below.

func digitDistribution3(arrInt:[Int],count:Int?) -> [Int:Int]
{
    var digitDict:[Int:Int] = [:]
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
        if value < count!
        {
            digitDict.removeValue(forKey: key)
        }
    }
    return digitDict
}

func digitDistribution3(arrInt:[Int]) -> [Int:Int]
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
        if value < 2
        {
            digitDict.removeValue(forKey: key)
        }
    }
    return digitDict
}


digitDistribution3(arrInt: [101,20,30],count: 3)
digitDistribution3(arrInt: [101,20,30])
