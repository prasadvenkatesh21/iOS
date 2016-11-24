//Write a Swift function average2 which is the same as average except that the input is
//an array of optional ints.

func average2(arrInt:[Int?]) -> Double?
{
    var count = 0
    var sum = 0
    for num in arrInt
    {
        if let num=num
        {
            sum += num
            count += 1
        }
    }
    if count != 0
    {
        return Double(sum)/Double(count)
    }
    else
    {
        return nil
    }
}

average2(arrInt: [10,20,30,nil])
