//Write a Swift function digitDistribution4 that has one argument an Int, which has the same
//role as the second argument of digitDistribution. digitDistribution4 returns a function. The
//return function has one argument an array of integers. When evaluated the returned
//function returns the dictionary of the distribution of digits in the array of numbers. But as in
//digitDistribution2 it only contains the digits that occur as many times as the argument to
//digitDistribution4.


func digitDistribution4(count:Int) -> ([Int]) -> [Int:Int]
{
    func digitDistribution2(arrInt:[Int]) -> [Int:Int]
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
            if value < count
            {
                digitDict.removeValue(forKey: key)
            }
        }
        return digitDict
    }
    return digitDistribution2
}

let testA = digitDistribution4(count: 2)
testA([112, 24, 15])
testA([111, 42, 4005])
let testB = digitDistribution4(count: 3)
testB([111, 42, 4005])
