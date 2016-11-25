//Create a Person class. A Person has a first name, last (or family) name and 0 or
//more phone numbers. The person class should have the following methods 
//addPhoneNumber(String,PhoneType) --Adds a string representing phone number with given type, which has default type home
//addPhoneNumber(PhoneNumber) --Add the PhoneNumber.
//phoneNumber(PhoneType)->PhoneNumber? --Returns the person's phone number of the given type. Or nil if number does not exist.
//hasNumber(String) -> Bool --Returns true if person has given phoneNumber.

class Person
{
    var firstName = ""
    var lastName = ""
    var phNum:PhoneNumber = PhoneNumber(number: "", type: phType.init())
    
    init(firstName: String, lastName: String)
    {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    init(firstName: String, lastName: String, phNum:PhoneNumber)
    {
        self.firstName = firstName
        self.lastName = lastName
        self.phNum.number.phoneFormat()
        self.phNum = phNum
    }
    
    func addPhoneNumber(number:String,type:phType) -> PhoneNumber
    {
        self.phNum.number = number.phoneFormat()
        self.phNum.type = type
        return self.phNum
    }
    
    func addPhoneNumber(number:String) -> PhoneNumber
    {
        self.phNum.number = number.phoneFormat()
        self.phNum.type = phType.init()
        return self.phNum
    }
    
    func phoneNumber(type1:phType) -> String?
    {
        guard self.phNum.type == type1 else
        {
            return nil
        }
        return self.phNum.number
    }
    
    func hasNumber(number1: String) -> Bool
    {
        guard number1 == self.phNum.number else
        {
            return false
        }
        return true
    }
    
}

var person1 = Person.init(firstName: "Robert", lastName: "Downey")
person1.addPhoneNumber(number: "1234567890",type: phType.other)
person1.phoneNumber(type1: phType.home)
person1.hasNumber(number1: "1523")
