//Create a Name structure. A name has two parts a first name (also called a given
//name or personal name) and a last name (family or surname). The Name structure should
//implement the Comparable protocol.

struct Name: Comparable
{
    let firstName : String
    let lastName : String
    
    init(_ firstName : String, _ lastName : String)
    {
        self.firstName = firstName
        self.lastName = lastName
        
    }
}

func < (nameOne : Name, nameTwo : Name) -> Bool
{
    guard (nameOne.firstName > nameTwo.firstName && nameOne.lastName > nameTwo.lastName) else
    {
        return false
    }
    return true
}


func == (nameOne : Name, nameTwo : Name) -> Bool
{
    guard (nameOne.firstName == nameTwo.firstName && nameOne.lastName==nameTwo.lastName) else
    {
        return false
    }
    return true
}

let name1 = Name.init("Robert", "Downey")
let name2 = Name.init("Robert", "Downey")
name1 == name2
name1 < name2
