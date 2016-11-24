//Write a Swift function, call it popularClasses, that has one argument an array of sets of
//courses and returns the intersection of all the sets in the array.

func popularClasses(studentSets:[Set<String>]) -> String
{
    let len = studentSets.count
    var intersection = studentSets[0].intersection(studentSets[1])
    for num in 1...len-2
    {
        intersection = intersection.intersection(studentSets[num+1])
    }
    return String(describing: intersection)
}

let studentA: Set = ["CS101", "CS237", "CS520"]
let studentB: Set = ["CS101", "Math245", "CS237"]
let studentC: Set = ["CS237", "CS560"]
popularClasses(studentSets: [studentA, studentB, studentC])
