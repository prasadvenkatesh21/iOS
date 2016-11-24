//Write a Swift function digitDistribution with on argument an array of numbers integers and
//returns a dictionary of the distribution of digits in the array of numbers.

func digitDistribution(arrInt:[Int]) -> [Int:Int]
{
    var digitDict: [Int:Int] = [ : ]
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
                digitDict[num2] = digitDict[num2]! + 1
            }
        }
    }
    return digitDict
}

digitDistribution(arrInt: [112, 24, 15])
