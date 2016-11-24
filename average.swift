//Write a Swift function, call it average, that has one argument an array of Ints and returns an
//optional double, which is the average of the inputs ints. If the input array is empty return
//the optional value nil.

func average(arrInts:[Int]) -> Double?
{
    let len = arrInts.count
    if len == 0
    {
        return nil
    }
    var sum:Int = 0
    var average:Double? = 0
    for var num in 0...len-1
    {
        sum += arrInts[num]
    }
    average = Double(sum)/Double(len)
    return average
}

average(arrInts: [10,20,30])
