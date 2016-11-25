//Create a ContactList class. Internally the ContactList maintains one list of your contacts. 
//Your class should have at least the following methods.
//addPerson(Person) --Add a Person object to the list.
//orderedByName() -> Array --Returns an Array of all your contacts ordered by last name.
//phoneNumberFor(String) -> PhoneNumber? --Given the lastName return phone numbers for the first person in the list that has
//that last name. Return nil if no such person exists.
//nameForNumber: (String) -> Person? --Return the person with the given phone number. Return nil if no one has the
//phone number.

class PersonA
{
    var firstName: String = ""
    var lastName: String = ""
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
        self.phNum = phNum
        self.phNum.number.phoneFormat()
    }
}

class ContactList
{
    var list:[PersonA] = []
    
    func addPerson(input:PersonA) -> Void
    {
        self.list.append(input)
    }
    
    func orderedByName() -> [PersonA]
    {
        let orderedList = self.list.sorted{ $0.lastName < $1.lastName }
        return orderedList
    }
    
    func phoneNumberFor(input:String) -> PhoneNumber?
    {
        let givenLastName = self.list.filter{ $0.lastName == input }.first
        guard givenLastName?.lastName == input else
        {
            return nil
        }
        return givenLastName!.phNum
    }
    
    func nameForNumber(input:String) -> PersonA?
    {
        let personPhNum = self.list.filter{ $0.phNum.number == input }.first
        if personPhNum?.phNum.number == input
        {
            return personPhNum!
        }
        return nil
    }
    
}

var item = ContactList()
var person2 = PersonA.init(firstName: "Tom", lastName: "Cruise", phNum: PhoneNumber.init(number: "6193395295", type: phType.mobile))
var person3 = PersonA.init(firstName: "Johnny", lastName: "Depp", phNum: PhoneNumber.init(number: "1234567890", type: phType.mobile))
var person4 = PersonA.init(firstName: "Robert", lastName: "Downey", phNum: PhoneNumber.init(number: "8489389659", type: phType.mobile))

item.addPerson(input: person2)
item.addPerson(input: person3)
item.addPerson(input: person4)

item.orderedByName()
item.phoneNumberFor(input: "avr")
